; ModuleID = 'coreutils-8.30/src/whoami.bc'
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
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Usage: %s [OPTION]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [85 x i8] c"Print the user name associated with the current effective user ID.\0ASame as id -un.\0A\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.13 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"whoami\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.22 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.24 = private unnamed_addr constant [70 x i8] c"Report %s translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.25 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.26 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"Richard Mlynarik\00", align 1
@long_options = internal constant [1 x %struct.option] zeroinitializer, align 16, !dbg !0
@optind = external local_unnamed_addr global i32, align 4
@.str.11 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"cannot find name for user ID %lu\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0), align 8, !dbg !25
@.str.28 = private unnamed_addr constant [5 x i8] c"8.30\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !30
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !35
@.str.31 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.32 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.33 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !39
@opterr = external local_unnamed_addr global i32, align 4
@.str.38 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@long_options.39 = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1.40, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.41, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option zeroinitializer], align 16, !dbg !46
@.str.1.40 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.2.41 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !62
@.str.46 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.47 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.48 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.50, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.51, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.52, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.53, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.54, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.55, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.56, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.57, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.58, i32 0, i32 0), i8* null], align 16, !dbg !70
@.str.49 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.50 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.51 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.52 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.53 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.54 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.55 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.56 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.57 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.58 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !115
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !122
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !134
@.str.11.59 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.60 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.61 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.62 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.63 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.64 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.65 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !141
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !148
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !136
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !150
@.str.70 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.71 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.72 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.73 = private unnamed_addr constant [204 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.74 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.75 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.76 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.77 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.78 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.79 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.80 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.81 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.82 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.83 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.86 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.87 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.88 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.89 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.90 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.19.91 = private unnamed_addr constant [65 x i8] c"General help using GNU software: <https://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !156
@.str.1.102 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.103 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.112 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.113 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.116 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.117 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32) #0 !dbg !602 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !607, metadata !DIExpression()), !dbg !626
  call void @llvm.dbg.value(metadata i32 %0, metadata !606, metadata !DIExpression()), !dbg !630
  %3 = icmp eq i32 %0, 0, !dbg !631
  br i1 %3, label %9, label %4, !dbg !632

; <label>:4:                                      ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !633, !tbaa !635
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #10, !dbg !633
  %7 = load i8*, i8** @program_name, align 8, !dbg !633, !tbaa !635
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #10, !dbg !633
  br label %57, !dbg !633

; <label>:9:                                      ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 5) #10, !dbg !639
  %11 = load i8*, i8** @program_name, align 8, !dbg !639, !tbaa !635
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #10, !dbg !639
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.2, i64 0, i64 0), i32 5) #10, !dbg !640
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !640, !tbaa !635
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !640
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #10, !dbg !641
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !641, !tbaa !635
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17), !dbg !641
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 5) #10, !dbg !642
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !642, !tbaa !635
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !642
  %22 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !643
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %22) #10, !dbg !643
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %22, i8* align 16 bitcast ([7 x %struct.infomap]* @emit_ancillary_info.infomap to i8*), i64 112, i1 false) #10, !dbg !626
  %23 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !644
  call void @llvm.dbg.value(metadata %struct.infomap* %23, metadata !615, metadata !DIExpression()) #10, !dbg !645
  br label %24, !dbg !646

; <label>:24:                                     ; preds = %29, %9
  %25 = phi i8* [ %32, %29 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), %9 ]
  %26 = phi %struct.infomap* [ %30, %29 ], [ %23, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %26, metadata !615, metadata !DIExpression()) #10, !dbg !645
  %27 = tail call i32 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* nonnull %25) #14, !dbg !646
  %28 = icmp eq i32 %27, 0, !dbg !646
  br i1 %28, label %34, label %29, !dbg !647

; <label>:29:                                     ; preds = %24
  %30 = getelementptr inbounds %struct.infomap, %struct.infomap* %26, i64 1, !dbg !648
  call void @llvm.dbg.value(metadata %struct.infomap* %30, metadata !615, metadata !DIExpression()) #10, !dbg !645
  %31 = getelementptr inbounds %struct.infomap, %struct.infomap* %30, i64 0, i32 0, !dbg !649
  %32 = load i8*, i8** %31, align 8, !dbg !649, !tbaa !650
  %33 = icmp eq i8* %32, null, !dbg !652
  br i1 %33, label %34, label %24, !dbg !653, !llvm.loop !654

; <label>:34:                                     ; preds = %29, %24
  %35 = phi %struct.infomap* [ %30, %29 ], [ %26, %24 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %35, metadata !615, metadata !DIExpression()) #10, !dbg !645
  call void @llvm.dbg.value(metadata %struct.infomap* %35, metadata !615, metadata !DIExpression()) #10, !dbg !645
  %36 = getelementptr inbounds %struct.infomap, %struct.infomap* %35, i64 0, i32 1, !dbg !657
  %37 = load i8*, i8** %36, align 8, !dbg !657, !tbaa !659
  %38 = icmp eq i8* %37, null, !dbg !660
  %39 = select i1 %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* %37, !dbg !661
  call void @llvm.dbg.value(metadata i8* %39, metadata !614, metadata !DIExpression()) #10, !dbg !662
  %40 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i64 0, i64 0), i32 5) #10, !dbg !663
  %41 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.22, i64 0, i64 0)) #10, !dbg !663
  %42 = tail call i8* @setlocale(i32 5, i8* null) #10, !dbg !664
  call void @llvm.dbg.value(metadata i8* %42, metadata !622, metadata !DIExpression()) #10, !dbg !665
  %43 = icmp eq i8* %42, null, !dbg !666
  br i1 %43, label %50, label %44, !dbg !668

; <label>:44:                                     ; preds = %34
  %45 = tail call i32 @strncmp(i8* nonnull %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0), i64 3) #14, !dbg !669
  %46 = icmp eq i32 %45, 0, !dbg !669
  br i1 %46, label %50, label %47, !dbg !670

; <label>:47:                                     ; preds = %44
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.24, i64 0, i64 0), i32 5) #10, !dbg !671
  %49 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)) #10, !dbg !671
  br label %50, !dbg !673

; <label>:50:                                     ; preds = %34, %44, %47
  %51 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.25, i64 0, i64 0), i32 5) #10, !dbg !674
  %52 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %51, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)) #10, !dbg !674
  %53 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.26, i64 0, i64 0), i32 5) #10, !dbg !675
  %54 = icmp eq i8* %39, getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), !dbg !675
  %55 = select i1 %54, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), !dbg !675
  %56 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %53, i8* %39, i8* %55) #10, !dbg !675
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %22) #10, !dbg !676
  br label %57

; <label>:57:                                     ; preds = %50, %4
  tail call void @exit(i32 %0) #15, !dbg !677
  unreachable, !dbg !677
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
define dso_local i32 @main(i32, i8**) local_unnamed_addr #7 !dbg !678 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !683, metadata !DIExpression()), !dbg !704
  call void @llvm.dbg.value(metadata i8** %1, metadata !684, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata i32 -1, metadata !703, metadata !DIExpression()), !dbg !706
  %3 = load i8*, i8** %1, align 8, !dbg !707, !tbaa !635
  tail call void @set_program_name(i8* %3) #10, !dbg !708
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)) #10, !dbg !709
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !710
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)) #10, !dbg !711
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #10, !dbg !712
  %8 = load i8*, i8** @Version, align 8, !dbg !713, !tbaa !635
  tail call void (i32, i8**, i8*, i8*, i8*, void (i32)*, ...) @parse_long_options(i32 %0, i8** %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* %8, void (i32)* nonnull @usage, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i8* null) #10, !dbg !714
  %9 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), %struct.option* getelementptr inbounds ([1 x %struct.option], [1 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #10, !dbg !715
  %10 = icmp eq i32 %9, -1, !dbg !717
  br i1 %10, label %12, label %11, !dbg !718

; <label>:11:                                     ; preds = %2
  tail call void @usage(i32 1) #16, !dbg !719
  unreachable, !dbg !719

; <label>:12:                                     ; preds = %2
  %13 = load i32, i32* @optind, align 4, !dbg !720, !tbaa !722
  %14 = icmp eq i32 %13, %0, !dbg !724
  br i1 %14, label %22, label %15, !dbg !725

; <label>:15:                                     ; preds = %12
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i32 5) #10, !dbg !726
  %17 = load i32, i32* @optind, align 4, !dbg !728, !tbaa !722
  %18 = sext i32 %17 to i64, !dbg !729
  %19 = getelementptr inbounds i8*, i8** %1, i64 %18, !dbg !729
  %20 = load i8*, i8** %19, align 8, !dbg !729, !tbaa !635
  %21 = tail call i8* @quote(i8* %20) #10, !dbg !730
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %16, i8* %21) #10, !dbg !731
  tail call void @usage(i32 1) #16, !dbg !732
  unreachable, !dbg !732

; <label>:22:                                     ; preds = %12
  %23 = tail call i32* @__errno_location() #17, !dbg !733
  store i32 0, i32* %23, align 4, !dbg !734, !tbaa !722
  %24 = tail call i32 @geteuid() #10, !dbg !735
  call void @llvm.dbg.value(metadata i32 %24, metadata !700, metadata !DIExpression()), !dbg !736
  %25 = icmp eq i32 %24, -1, !dbg !737
  br i1 %25, label %26, label %29, !dbg !738

; <label>:26:                                     ; preds = %22
  %27 = load i32, i32* %23, align 4, !dbg !739, !tbaa !722
  %28 = icmp eq i32 %27, 0, !dbg !739
  br i1 %28, label %29, label %34, !dbg !740

; <label>:29:                                     ; preds = %22, %26
  %30 = tail call %struct.passwd* @getpwuid(i32 %24) #10, !dbg !741
  call void @llvm.dbg.value(metadata %struct.passwd* %30, metadata !685, metadata !DIExpression()), !dbg !742
  %31 = icmp eq %struct.passwd* %30, null, !dbg !743
  br i1 %31, label %32, label %38, !dbg !745

; <label>:32:                                     ; preds = %29
  %33 = load i32, i32* %23, align 4, !dbg !746, !tbaa !722
  br label %34, !dbg !745

; <label>:34:                                     ; preds = %32, %26
  %35 = phi i32 [ %33, %32 ], [ %27, %26 ], !dbg !746
  %36 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0), i32 5) #10, !dbg !746
  %37 = zext i32 %24 to i64, !dbg !746
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %35, i8* %36, i64 %37) #10, !dbg !746
  unreachable, !dbg !746

; <label>:38:                                     ; preds = %29
  %39 = getelementptr inbounds %struct.passwd, %struct.passwd* %30, i64 0, i32 0, !dbg !747
  %40 = load i8*, i8** %39, align 8, !dbg !747, !tbaa !748
  %41 = tail call i32 @puts(i8* %40), !dbg !750
  ret i32 0, !dbg !751
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
declare i32 @geteuid() local_unnamed_addr #2

declare %struct.passwd* @getpwuid(i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_file_name(i8*) local_unnamed_addr #7 !dbg !752 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !754, metadata !DIExpression()), !dbg !755
  store i8* %0, i8** @file_name, align 8, !dbg !756, !tbaa !635
  ret void, !dbg !757
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #7 !dbg !758 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i1 %0, metadata !762, metadata !DIExpression()), !dbg !763
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !764, !tbaa !765
  ret void, !dbg !767
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #7 !dbg !768 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !775, !tbaa !635
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #10, !dbg !776
  %3 = icmp eq i32 %2, 0, !dbg !777
  br i1 %3, label %22, label %4, !dbg !778

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !779, !tbaa !765, !range !780
  %6 = icmp eq i8 %5, 0, !dbg !779
  br i1 %6, label %11, label %7, !dbg !781

; <label>:7:                                      ; preds = %4
  %8 = tail call i32* @__errno_location() #17, !dbg !782
  %9 = load i32, i32* %8, align 4, !dbg !782, !tbaa !722
  %10 = icmp eq i32 %9, 32, !dbg !783
  br i1 %10, label %22, label %11, !dbg !784

; <label>:11:                                     ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i64 0, i64 0), i32 5) #10, !dbg !785
  call void @llvm.dbg.value(metadata i8* %12, metadata !772, metadata !DIExpression()), !dbg !786
  %13 = load i8*, i8** @file_name, align 8, !dbg !787, !tbaa !635
  %14 = icmp eq i8* %13, null, !dbg !787
  %15 = tail call i32* @__errno_location() #17, !dbg !789
  %16 = load i32, i32* %15, align 4, !dbg !789, !tbaa !722
  br i1 %14, label %19, label %17, !dbg !790

; <label>:17:                                     ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #10, !dbg !791
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.32, i64 0, i64 0), i8* %18, i8* %12) #10, !dbg !792
  br label %20, !dbg !792

; <label>:19:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.33, i64 0, i64 0), i8* %12) #10, !dbg !793
  br label %20

; <label>:20:                                     ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !794, !tbaa !722
  tail call void @_exit(i32 %21) #15, !dbg !795
  unreachable, !dbg !795

; <label>:22:                                     ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !796, !tbaa !635
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #10, !dbg !798
  %25 = icmp eq i32 %24, 0, !dbg !799
  br i1 %25, label %28, label %26, !dbg !800

; <label>:26:                                     ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !801, !tbaa !722
  tail call void @_exit(i32 %27) #15, !dbg !802
  unreachable, !dbg !802

; <label>:28:                                     ; preds = %22
  ret void, !dbg !803
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @parse_long_options(i32, i8**, i8*, i8*, i8*, void (i32)* nocapture, ...) local_unnamed_addr #7 !dbg !804 {
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !809, metadata !DIExpression()), !dbg !834
  call void @llvm.dbg.value(metadata i8** %1, metadata !810, metadata !DIExpression()), !dbg !835
  call void @llvm.dbg.value(metadata i8* %2, metadata !811, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata i8* %3, metadata !812, metadata !DIExpression()), !dbg !837
  call void @llvm.dbg.value(metadata i8* %4, metadata !813, metadata !DIExpression()), !dbg !838
  call void @llvm.dbg.value(metadata void (i32)* %5, metadata !814, metadata !DIExpression()), !dbg !839
  %8 = load i32, i32* @opterr, align 4, !dbg !840, !tbaa !722
  call void @llvm.dbg.value(metadata i32 %8, metadata !816, metadata !DIExpression()), !dbg !841
  store i32 0, i32* @opterr, align 4, !dbg !842, !tbaa !722
  %9 = icmp eq i32 %0, 2, !dbg !843
  br i1 %9, label %10, label %17, !dbg !844

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 @getopt_long(i32 2, i8** %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0), %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options.39, i64 0, i64 0), i32* null) #10, !dbg !845
  call void @llvm.dbg.value(metadata i32 %11, metadata !815, metadata !DIExpression()), !dbg !846
  switch i32 %11, label %17 [
    i32 118, label %13
    i32 104, label %12
  ], !dbg !847

; <label>:12:                                     ; preds = %10
  tail call void %5(i32 0) #10, !dbg !848
  br label %17, !dbg !849

; <label>:13:                                     ; preds = %10
  %14 = bitcast [1 x %struct.__va_list_tag]* %7 to i8*, !dbg !850
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %14) #10, !dbg !850
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %7, metadata !817, metadata !DIExpression()), !dbg !851
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0, !dbg !852
  call void @llvm.va_start(i8* nonnull %14), !dbg !852
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !853, !tbaa !635
  call void @version_etc_va(%struct._IO_FILE* %16, i8* %2, i8* %3, i8* %4, %struct.__va_list_tag* nonnull %15) #10, !dbg !854
  call void @exit(i32 0) #15, !dbg !855
  unreachable, !dbg !855

; <label>:17:                                     ; preds = %10, %12, %6
  store i32 %8, i32* @opterr, align 4, !dbg !856, !tbaa !722
  store i32 0, i32* @optind, align 4, !dbg !857, !tbaa !722
  ret void, !dbg !858
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8*) local_unnamed_addr #7 !dbg !859 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !861, metadata !DIExpression()), !dbg !864
  %2 = icmp eq i8* %0, null, !dbg !865
  br i1 %2, label %3, label %6, !dbg !867

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !868, !tbaa !635
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.46, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !870
  tail call void @abort() #15, !dbg !871
  unreachable, !dbg !871

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !872
  call void @llvm.dbg.value(metadata i8* %7, metadata !862, metadata !DIExpression()), !dbg !873
  %8 = icmp eq i8* %7, null, !dbg !874
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !875
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !876
  call void @llvm.dbg.value(metadata i8* %10, metadata !863, metadata !DIExpression()), !dbg !877
  %11 = ptrtoint i8* %10 to i64, !dbg !878
  %12 = ptrtoint i8* %0 to i64, !dbg !878
  %13 = sub i64 %11, %12, !dbg !878
  %14 = icmp sgt i64 %13, 6, !dbg !880
  br i1 %14, label %15, label %24, !dbg !881

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !882
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.47, i64 0, i64 0), i64 7) #14, !dbg !883
  %18 = icmp eq i32 %17, 0, !dbg !884
  br i1 %18, label %19, label %24, !dbg !885

; <label>:19:                                     ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !861, metadata !DIExpression()), !dbg !864
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.48, i64 0, i64 0), i64 3) #14, !dbg !886
  %21 = icmp eq i32 %20, 0, !dbg !889
  br i1 %21, label %22, label %24, !dbg !890

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !891
  call void @llvm.dbg.value(metadata i8* %23, metadata !861, metadata !DIExpression()), !dbg !864
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !893, !tbaa !635
  br label %24, !dbg !894

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !861, metadata !DIExpression()), !dbg !864
  store i8* %25, i8** @program_name, align 8, !dbg !895, !tbaa !635
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !896, !tbaa !635
  ret void, !dbg !897
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #10

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #7 !dbg !898 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !903, metadata !DIExpression()), !dbg !906
  %2 = tail call i32* @__errno_location() #17, !dbg !907
  %3 = load i32, i32* %2, align 4, !dbg !907, !tbaa !722
  call void @llvm.dbg.value(metadata i32 %3, metadata !904, metadata !DIExpression()), !dbg !908
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !909
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !909
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !909
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #10, !dbg !910
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !910
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !905, metadata !DIExpression()), !dbg !911
  store i32 %3, i32* %2, align 4, !dbg !912, !tbaa !722
  ret %struct.quoting_options* %8, !dbg !913
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !914 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !920, metadata !DIExpression()), !dbg !921
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !922
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !922
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !923
  %5 = load i32, i32* %4, align 8, !dbg !923, !tbaa !924
  ret i32 %5, !dbg !926
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !927 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !931, metadata !DIExpression()), !dbg !933
  call void @llvm.dbg.value(metadata i32 %1, metadata !932, metadata !DIExpression()), !dbg !934
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !935
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !935
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !936
  store i32 %1, i32* %5, align 8, !dbg !937, !tbaa !924
  ret void, !dbg !938
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #7 !dbg !939 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !943, metadata !DIExpression()), !dbg !952
  call void @llvm.dbg.value(metadata i8 %1, metadata !944, metadata !DIExpression()), !dbg !953
  call void @llvm.dbg.value(metadata i32 %2, metadata !945, metadata !DIExpression()), !dbg !954
  call void @llvm.dbg.value(metadata i8 %1, metadata !946, metadata !DIExpression()), !dbg !955
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !956
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !956
  %6 = lshr i8 %1, 5, !dbg !957
  %7 = zext i8 %6 to i64, !dbg !957
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !958
  call void @llvm.dbg.value(metadata i32* %8, metadata !948, metadata !DIExpression()), !dbg !959
  %9 = and i8 %1, 31, !dbg !960
  %10 = zext i8 %9 to i32, !dbg !960
  call void @llvm.dbg.value(metadata i32 %10, metadata !950, metadata !DIExpression()), !dbg !961
  %11 = load i32, i32* %8, align 4, !dbg !962, !tbaa !722
  %12 = lshr i32 %11, %10, !dbg !963
  %13 = and i32 %12, 1, !dbg !964
  call void @llvm.dbg.value(metadata i32 %13, metadata !951, metadata !DIExpression()), !dbg !965
  %14 = and i32 %2, 1, !dbg !966
  %15 = xor i32 %13, %14, !dbg !967
  %16 = shl i32 %15, %10, !dbg !968
  %17 = xor i32 %16, %11, !dbg !969
  store i32 %17, i32* %8, align 4, !dbg !969, !tbaa !722
  ret i32 %13, !dbg !970
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !971 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !975, metadata !DIExpression()), !dbg !978
  call void @llvm.dbg.value(metadata i32 %1, metadata !976, metadata !DIExpression()), !dbg !979
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !980
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !982
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !975, metadata !DIExpression()), !dbg !978
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !983
  %6 = load i32, i32* %5, align 4, !dbg !983, !tbaa !984
  call void @llvm.dbg.value(metadata i32 %6, metadata !977, metadata !DIExpression()), !dbg !985
  store i32 %1, i32* %5, align 4, !dbg !986, !tbaa !984
  ret i32 %6, !dbg !987
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #7 !dbg !988 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !992, metadata !DIExpression()), !dbg !995
  call void @llvm.dbg.value(metadata i8* %1, metadata !993, metadata !DIExpression()), !dbg !996
  call void @llvm.dbg.value(metadata i8* %2, metadata !994, metadata !DIExpression()), !dbg !997
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !998
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1000
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !992, metadata !DIExpression()), !dbg !995
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1001
  store i32 10, i32* %6, align 8, !dbg !1002, !tbaa !924
  %7 = icmp ne i8* %1, null, !dbg !1003
  %8 = icmp ne i8* %2, null, !dbg !1005
  %9 = and i1 %7, %8, !dbg !1006
  br i1 %9, label %11, label %10, !dbg !1006

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !1007
  unreachable, !dbg !1007

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1008
  store i8* %1, i8** %12, align 8, !dbg !1009, !tbaa !1010
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1011
  store i8* %2, i8** %13, align 8, !dbg !1012, !tbaa !1013
  ret void, !dbg !1014
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #7 !dbg !1015 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1019, metadata !DIExpression()), !dbg !1027
  call void @llvm.dbg.value(metadata i64 %1, metadata !1020, metadata !DIExpression()), !dbg !1028
  call void @llvm.dbg.value(metadata i8* %2, metadata !1021, metadata !DIExpression()), !dbg !1029
  call void @llvm.dbg.value(metadata i64 %3, metadata !1022, metadata !DIExpression()), !dbg !1030
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1023, metadata !DIExpression()), !dbg !1031
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1032
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1032
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1024, metadata !DIExpression()), !dbg !1033
  %8 = tail call i32* @__errno_location() #17, !dbg !1034
  %9 = load i32, i32* %8, align 4, !dbg !1034, !tbaa !722
  call void @llvm.dbg.value(metadata i32 %9, metadata !1025, metadata !DIExpression()), !dbg !1035
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1036
  %11 = load i32, i32* %10, align 8, !dbg !1036, !tbaa !924
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1037
  %13 = load i32, i32* %12, align 4, !dbg !1037, !tbaa !984
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1038
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1039
  %16 = load i8*, i8** %15, align 8, !dbg !1039, !tbaa !1010
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1040
  %18 = load i8*, i8** %17, align 8, !dbg !1040, !tbaa !1013
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1041
  call void @llvm.dbg.value(metadata i64 %19, metadata !1026, metadata !DIExpression()), !dbg !1042
  store i32 %9, i32* %8, align 4, !dbg !1043, !tbaa !722
  ret i64 %19, !dbg !1044
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #7 !dbg !1045 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1051, metadata !DIExpression()), !dbg !1115
  call void @llvm.dbg.value(metadata i64 %1, metadata !1052, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i8* %2, metadata !1053, metadata !DIExpression()), !dbg !1117
  call void @llvm.dbg.value(metadata i64 %3, metadata !1054, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata i32 %4, metadata !1055, metadata !DIExpression()), !dbg !1119
  call void @llvm.dbg.value(metadata i32 %5, metadata !1056, metadata !DIExpression()), !dbg !1120
  call void @llvm.dbg.value(metadata i32* %6, metadata !1057, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.value(metadata i8* %7, metadata !1058, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata i8* %8, metadata !1059, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata i64 0, metadata !1061, metadata !DIExpression()), !dbg !1124
  call void @llvm.dbg.value(metadata i64 0, metadata !1062, metadata !DIExpression()), !dbg !1125
  call void @llvm.dbg.value(metadata i8* null, metadata !1063, metadata !DIExpression()), !dbg !1126
  call void @llvm.dbg.value(metadata i64 0, metadata !1064, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata i8 0, metadata !1065, metadata !DIExpression()), !dbg !1128
  %13 = tail call i64 @__ctype_get_mb_cur_max() #10, !dbg !1129
  %14 = icmp eq i64 %13, 1, !dbg !1130
  %15 = lshr i32 %5, 1, !dbg !1131
  %16 = trunc i32 %15 to i8, !dbg !1131
  %17 = and i8 %16, 1, !dbg !1131
  call void @llvm.dbg.value(metadata i8 %17, metadata !1067, metadata !DIExpression()), !dbg !1131
  call void @llvm.dbg.value(metadata i8 0, metadata !1068, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata i8 0, metadata !1069, metadata !DIExpression()), !dbg !1133
  call void @llvm.dbg.value(metadata i8 1, metadata !1070, metadata !DIExpression()), !dbg !1134
  %18 = icmp ne i32* %6, null
  %19 = bitcast i64* %10 to i8*
  %20 = icmp eq i32* %6, null
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 4
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr inbounds i8, i8* %2, i64 1
  %26 = bitcast i32* %12 to i8*
  br label %27, !dbg !1135

; <label>:27:                                     ; preds = %634, %9
  %28 = phi i32 [ %4, %9 ], [ %94, %634 ]
  %29 = phi i8* [ %7, %9 ], [ %95, %634 ]
  %30 = phi i8* [ %8, %9 ], [ %96, %634 ]
  %31 = phi i64 [ 0, %9 ], [ %124, %634 ], !dbg !1125
  %32 = phi i8* [ null, %9 ], [ %98, %634 ], !dbg !1126
  %33 = phi i64 [ 0, %9 ], [ %99, %634 ], !dbg !1127
  %34 = phi i8 [ 0, %9 ], [ %100, %634 ], !dbg !1128
  %35 = phi i64 [ %3, %9 ], [ %618, %634 ]
  %36 = phi i8 [ %17, %9 ], [ %101, %634 ], !dbg !1136
  %37 = phi i8 [ 0, %9 ], [ %126, %634 ], !dbg !1132
  %38 = phi i8 [ 0, %9 ], [ %127, %634 ], !dbg !1133
  %39 = phi i8 [ 1, %9 ], [ %128, %634 ], !dbg !1134
  %40 = phi i64 [ %1, %9 ], [ %124, %634 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !1052, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i8 %39, metadata !1070, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata i8 %38, metadata !1069, metadata !DIExpression()), !dbg !1133
  call void @llvm.dbg.value(metadata i8 %37, metadata !1068, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata i8 %36, metadata !1067, metadata !DIExpression()), !dbg !1131
  call void @llvm.dbg.value(metadata i64 %35, metadata !1054, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata i8 %34, metadata !1065, metadata !DIExpression()), !dbg !1128
  call void @llvm.dbg.value(metadata i64 %33, metadata !1064, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata i8* %32, metadata !1063, metadata !DIExpression()), !dbg !1126
  call void @llvm.dbg.value(metadata i64 %31, metadata !1062, metadata !DIExpression()), !dbg !1125
  call void @llvm.dbg.value(metadata i64 0, metadata !1061, metadata !DIExpression()), !dbg !1124
  call void @llvm.dbg.value(metadata i8* %30, metadata !1059, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata i8* %29, metadata !1058, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata i32 %28, metadata !1055, metadata !DIExpression()), !dbg !1119
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
  ], !dbg !1138

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, metadata !1055, metadata !DIExpression()), !dbg !1119
  call void @llvm.dbg.value(metadata i8 1, metadata !1067, metadata !DIExpression()), !dbg !1131
  call void @llvm.dbg.value(metadata i8 %36, metadata !1067, metadata !DIExpression()), !dbg !1131
  call void @llvm.dbg.value(metadata i32 5, metadata !1055, metadata !DIExpression()), !dbg !1119
  br label %93, !dbg !1139

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, metadata !1067, metadata !DIExpression()), !dbg !1131
  call void @llvm.dbg.value(metadata i32 5, metadata !1055, metadata !DIExpression()), !dbg !1119
  %43 = and i8 %36, 1, !dbg !1140
  %44 = icmp eq i8 %43, 0, !dbg !1140
  br i1 %44, label %45, label %93, !dbg !1139

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1142
  br i1 %46, label %93, label %47, !dbg !1145

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1142, !tbaa !1146
  br label %93, !dbg !1142

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.59, i64 0, i64 0), i32 %28), !dbg !1147
  call void @llvm.dbg.value(metadata i8* %49, metadata !1058, metadata !DIExpression()), !dbg !1122
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.60, i64 0, i64 0), i32 %28), !dbg !1151
  call void @llvm.dbg.value(metadata i8* %50, metadata !1059, metadata !DIExpression()), !dbg !1123
  br label %51, !dbg !1152

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, metadata !1059, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata i8* %52, metadata !1058, metadata !DIExpression()), !dbg !1122
  %54 = and i8 %36, 1, !dbg !1153
  %55 = icmp eq i8 %54, 0, !dbg !1153
  br i1 %55, label %56, label %71, !dbg !1155

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, metadata !1063, metadata !DIExpression()), !dbg !1126
  call void @llvm.dbg.value(metadata i64 0, metadata !1061, metadata !DIExpression()), !dbg !1124
  %57 = load i8, i8* %52, align 1, !dbg !1156, !tbaa !1146
  %58 = icmp eq i8 %57, 0, !dbg !1159
  br i1 %58, label %71, label %59, !dbg !1159

; <label>:59:                                     ; preds = %56, %66
  %60 = phi i8 [ %69, %66 ], [ %57, %56 ]
  %61 = phi i8* [ %68, %66 ], [ %52, %56 ]
  %62 = phi i64 [ %67, %66 ], [ 0, %56 ]
  call void @llvm.dbg.value(metadata i8* %61, metadata !1063, metadata !DIExpression()), !dbg !1126
  call void @llvm.dbg.value(metadata i64 %62, metadata !1061, metadata !DIExpression()), !dbg !1124
  %63 = icmp ult i64 %62, %40, !dbg !1160
  br i1 %63, label %64, label %66, !dbg !1163

; <label>:64:                                     ; preds = %59
  %65 = getelementptr inbounds i8, i8* %0, i64 %62, !dbg !1160
  store i8 %60, i8* %65, align 1, !dbg !1160, !tbaa !1146
  br label %66, !dbg !1160

; <label>:66:                                     ; preds = %64, %59
  %67 = add i64 %62, 1, !dbg !1163
  %68 = getelementptr inbounds i8, i8* %61, i64 1, !dbg !1164
  call void @llvm.dbg.value(metadata i8* %68, metadata !1063, metadata !DIExpression()), !dbg !1126
  call void @llvm.dbg.value(metadata i64 %67, metadata !1061, metadata !DIExpression()), !dbg !1124
  %69 = load i8, i8* %68, align 1, !dbg !1156, !tbaa !1146
  %70 = icmp eq i8 %69, 0, !dbg !1159
  br i1 %70, label %71, label %59, !dbg !1159, !llvm.loop !1165

; <label>:71:                                     ; preds = %66, %56, %51
  %72 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %67, %66 ], !dbg !1124
  call void @llvm.dbg.value(metadata i64 %72, metadata !1061, metadata !DIExpression()), !dbg !1124
  call void @llvm.dbg.value(metadata i8 1, metadata !1065, metadata !DIExpression()), !dbg !1128
  call void @llvm.dbg.value(metadata i8* %53, metadata !1063, metadata !DIExpression()), !dbg !1126
  %73 = call i64 @strlen(i8* %53) #14, !dbg !1167
  call void @llvm.dbg.value(metadata i64 %73, metadata !1064, metadata !DIExpression()), !dbg !1127
  br label %93, !dbg !1168

; <label>:74:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !1065, metadata !DIExpression()), !dbg !1128
  br label %75, !dbg !1169

; <label>:75:                                     ; preds = %27, %74
  %76 = phi i8 [ %34, %27 ], [ 1, %74 ], !dbg !1136
  call void @llvm.dbg.value(metadata i8 %76, metadata !1065, metadata !DIExpression()), !dbg !1128
  call void @llvm.dbg.value(metadata i8 1, metadata !1067, metadata !DIExpression()), !dbg !1131
  br label %77, !dbg !1170

; <label>:77:                                     ; preds = %27, %75
  %78 = phi i8 [ %34, %27 ], [ %76, %75 ], !dbg !1128
  %79 = phi i8 [ %36, %27 ], [ 1, %75 ], !dbg !1136
  call void @llvm.dbg.value(metadata i8 %79, metadata !1067, metadata !DIExpression()), !dbg !1131
  call void @llvm.dbg.value(metadata i8 %78, metadata !1065, metadata !DIExpression()), !dbg !1128
  %80 = and i8 %79, 1, !dbg !1171
  %81 = icmp eq i8 %80, 0, !dbg !1171
  %82 = select i1 %81, i8 1, i8 %78, !dbg !1173
  br label %83, !dbg !1173

; <label>:83:                                     ; preds = %77, %27
  %84 = phi i8 [ %34, %27 ], [ %82, %77 ], !dbg !1174
  %85 = phi i8 [ %36, %27 ], [ %79, %77 ], !dbg !1131
  call void @llvm.dbg.value(metadata i8 %85, metadata !1067, metadata !DIExpression()), !dbg !1131
  call void @llvm.dbg.value(metadata i8 %84, metadata !1065, metadata !DIExpression()), !dbg !1128
  call void @llvm.dbg.value(metadata i32 2, metadata !1055, metadata !DIExpression()), !dbg !1119
  %86 = and i8 %85, 1, !dbg !1175
  %87 = icmp eq i8 %86, 0, !dbg !1175
  br i1 %87, label %88, label %93, !dbg !1177

; <label>:88:                                     ; preds = %83
  %89 = icmp eq i64 %40, 0, !dbg !1178
  br i1 %89, label %93, label %90, !dbg !1181

; <label>:90:                                     ; preds = %88
  store i8 39, i8* %0, align 1, !dbg !1178, !tbaa !1146
  br label %93, !dbg !1178

; <label>:91:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !1067, metadata !DIExpression()), !dbg !1131
  br label %93, !dbg !1182

; <label>:92:                                     ; preds = %27
  call void @abort() #15, !dbg !1183
  unreachable, !dbg !1183

; <label>:93:                                     ; preds = %41, %83, %88, %90, %27, %42, %45, %47, %91, %71
  %94 = phi i32 [ 0, %91 ], [ %28, %71 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ %28, %27 ], [ 2, %90 ], [ 2, %88 ], [ 2, %83 ], [ 5, %41 ]
  %95 = phi i8* [ %29, %91 ], [ %52, %71 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %90 ], [ %29, %88 ], [ %29, %83 ], [ %29, %41 ]
  %96 = phi i8* [ %30, %91 ], [ %53, %71 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %90 ], [ %30, %88 ], [ %30, %83 ], [ %30, %41 ]
  %97 = phi i64 [ 0, %91 ], [ %72, %71 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %90 ], [ 1, %88 ], [ 0, %83 ], [ 0, %41 ], !dbg !1124
  %98 = phi i8* [ %32, %91 ], [ %53, %71 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.61, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.61, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.61, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.60, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.60, i64 0, i64 0), %88 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.60, i64 0, i64 0), %83 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.61, i64 0, i64 0), %41 ], !dbg !1136
  %99 = phi i64 [ %33, %91 ], [ %73, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %90 ], [ 1, %88 ], [ 1, %83 ], [ 1, %41 ], !dbg !1136
  %100 = phi i8 [ %34, %91 ], [ 1, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %84, %90 ], [ %84, %88 ], [ %84, %83 ], [ 1, %41 ], !dbg !1136
  %101 = phi i8 [ 0, %91 ], [ %36, %71 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %85, %90 ], [ %85, %88 ], [ %85, %83 ], [ 1, %41 ], !dbg !1184
  call void @llvm.dbg.value(metadata i8 %101, metadata !1067, metadata !DIExpression()), !dbg !1131
  call void @llvm.dbg.value(metadata i8 %100, metadata !1065, metadata !DIExpression()), !dbg !1128
  call void @llvm.dbg.value(metadata i64 %99, metadata !1064, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata i8* %98, metadata !1063, metadata !DIExpression()), !dbg !1126
  call void @llvm.dbg.value(metadata i64 %97, metadata !1061, metadata !DIExpression()), !dbg !1124
  call void @llvm.dbg.value(metadata i8* %96, metadata !1059, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata i8* %95, metadata !1058, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata i32 %94, metadata !1055, metadata !DIExpression()), !dbg !1119
  call void @llvm.dbg.value(metadata i64 0, metadata !1060, metadata !DIExpression()), !dbg !1185
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
  br label %121, !dbg !1186

; <label>:121:                                    ; preds = %607, %93
  %122 = phi i64 [ 0, %93 ], [ %616, %607 ], !dbg !1187
  %123 = phi i64 [ %97, %93 ], [ %609, %607 ], !dbg !1124
  %124 = phi i64 [ %31, %93 ], [ %610, %607 ], !dbg !1125
  %125 = phi i64 [ %35, %93 ], [ %611, %607 ]
  %126 = phi i8 [ %37, %93 ], [ %612, %607 ], !dbg !1132
  %127 = phi i8 [ %38, %93 ], [ %613, %607 ], !dbg !1133
  %128 = phi i8 [ %39, %93 ], [ %614, %607 ], !dbg !1134
  %129 = phi i64 [ %40, %93 ], [ %615, %607 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !1052, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i8 %128, metadata !1070, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata i8 %127, metadata !1069, metadata !DIExpression()), !dbg !1133
  call void @llvm.dbg.value(metadata i8 %126, metadata !1068, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata i64 %125, metadata !1054, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata i64 %124, metadata !1062, metadata !DIExpression()), !dbg !1125
  call void @llvm.dbg.value(metadata i64 %123, metadata !1061, metadata !DIExpression()), !dbg !1124
  call void @llvm.dbg.value(metadata i64 %122, metadata !1060, metadata !DIExpression()), !dbg !1185
  %130 = icmp eq i64 %125, -1, !dbg !1188
  br i1 %130, label %131, label %135, !dbg !1189

; <label>:131:                                    ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1190
  %133 = load i8, i8* %132, align 1, !dbg !1190, !tbaa !1146
  %134 = icmp eq i8 %133, 0, !dbg !1191
  br i1 %134, label %617, label %137, !dbg !1192

; <label>:135:                                    ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !1193
  br i1 %136, label %617, label %137, !dbg !1192

; <label>:137:                                    ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !1076, metadata !DIExpression()), !dbg !1194
  call void @llvm.dbg.value(metadata i8 0, metadata !1077, metadata !DIExpression()), !dbg !1195
  call void @llvm.dbg.value(metadata i8 0, metadata !1078, metadata !DIExpression()), !dbg !1196
  br i1 %107, label %138, label %153, !dbg !1197

; <label>:138:                                    ; preds = %137
  %139 = add i64 %122, %99, !dbg !1199
  %140 = and i1 %108, %130, !dbg !1200
  br i1 %140, label %141, label %143, !dbg !1200

; <label>:141:                                    ; preds = %138
  %142 = call i64 @strlen(i8* %2) #14, !dbg !1201
  call void @llvm.dbg.value(metadata i64 %142, metadata !1054, metadata !DIExpression()), !dbg !1118
  br label %143, !dbg !1202

; <label>:143:                                    ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ]
  call void @llvm.dbg.value(metadata i64 %144, metadata !1054, metadata !DIExpression()), !dbg !1118
  %145 = icmp ugt i64 %139, %144, !dbg !1203
  br i1 %145, label %153, label %146, !dbg !1204

; <label>:146:                                    ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1205
  %148 = call i32 @memcmp(i8* %147, i8* %98, i64 %99) #14, !dbg !1206
  %149 = icmp ne i32 %148, 0, !dbg !1207
  %150 = or i1 %149, %110, !dbg !1208
  %151 = xor i1 %149, true, !dbg !1208
  %152 = zext i1 %151 to i8, !dbg !1208
  br i1 %150, label %153, label %661, !dbg !1208

; <label>:153:                                    ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !1209
  call void @llvm.dbg.value(metadata i8 %155, metadata !1076, metadata !DIExpression()), !dbg !1194
  call void @llvm.dbg.value(metadata i64 %154, metadata !1054, metadata !DIExpression()), !dbg !1118
  %156 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1210
  %157 = load i8, i8* %156, align 1, !dbg !1210, !tbaa !1146
  call void @llvm.dbg.value(metadata i8 %157, metadata !1071, metadata !DIExpression()), !dbg !1211
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
  ], !dbg !1212

; <label>:158:                                    ; preds = %153
  br i1 %103, label %159, label %207, !dbg !1213

; <label>:159:                                    ; preds = %158
  br i1 %110, label %160, label %661, !dbg !1214

; <label>:160:                                    ; preds = %159
  call void @llvm.dbg.value(metadata i8 1, metadata !1077, metadata !DIExpression()), !dbg !1195
  %161 = and i8 %126, 1, !dbg !1218
  %162 = icmp eq i8 %161, 0, !dbg !1218
  %163 = and i1 %114, %162, !dbg !1218
  br i1 %163, label %164, label %180, !dbg !1218

; <label>:164:                                    ; preds = %160
  %165 = icmp ult i64 %123, %129, !dbg !1220
  br i1 %165, label %166, label %168, !dbg !1224

; <label>:166:                                    ; preds = %164
  %167 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1220
  store i8 39, i8* %167, align 1, !dbg !1220, !tbaa !1146
  br label %168, !dbg !1220

; <label>:168:                                    ; preds = %166, %164
  %169 = add i64 %123, 1, !dbg !1224
  call void @llvm.dbg.value(metadata i64 %169, metadata !1061, metadata !DIExpression()), !dbg !1124
  %170 = icmp ult i64 %169, %129, !dbg !1225
  br i1 %170, label %171, label %173, !dbg !1228

; <label>:171:                                    ; preds = %168
  %172 = getelementptr inbounds i8, i8* %0, i64 %169, !dbg !1225
  store i8 36, i8* %172, align 1, !dbg !1225, !tbaa !1146
  br label %173, !dbg !1225

; <label>:173:                                    ; preds = %171, %168
  %174 = add i64 %123, 2, !dbg !1228
  call void @llvm.dbg.value(metadata i64 %174, metadata !1061, metadata !DIExpression()), !dbg !1124
  %175 = icmp ult i64 %174, %129, !dbg !1229
  br i1 %175, label %176, label %178, !dbg !1232

; <label>:176:                                    ; preds = %173
  %177 = getelementptr inbounds i8, i8* %0, i64 %174, !dbg !1229
  store i8 39, i8* %177, align 1, !dbg !1229, !tbaa !1146
  br label %178, !dbg !1229

; <label>:178:                                    ; preds = %176, %173
  %179 = add i64 %123, 3, !dbg !1232
  call void @llvm.dbg.value(metadata i64 %179, metadata !1061, metadata !DIExpression()), !dbg !1124
  call void @llvm.dbg.value(metadata i8 1, metadata !1068, metadata !DIExpression()), !dbg !1132
  br label %180, !dbg !1233

; <label>:180:                                    ; preds = %160, %178
  %181 = phi i64 [ %179, %178 ], [ %123, %160 ], !dbg !1184
  %182 = phi i8 [ 1, %178 ], [ %126, %160 ], !dbg !1184
  call void @llvm.dbg.value(metadata i8 %182, metadata !1068, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata i64 %181, metadata !1061, metadata !DIExpression()), !dbg !1124
  %183 = icmp ult i64 %181, %129, !dbg !1234
  br i1 %183, label %184, label %186, !dbg !1237

; <label>:184:                                    ; preds = %180
  %185 = getelementptr inbounds i8, i8* %0, i64 %181, !dbg !1234
  store i8 92, i8* %185, align 1, !dbg !1234, !tbaa !1146
  br label %186, !dbg !1234

; <label>:186:                                    ; preds = %184, %180
  %187 = add i64 %181, 1, !dbg !1237
  call void @llvm.dbg.value(metadata i64 %187, metadata !1061, metadata !DIExpression()), !dbg !1124
  br i1 %104, label %188, label %478, !dbg !1238

; <label>:188:                                    ; preds = %186
  %189 = add i64 %122, 1, !dbg !1240
  %190 = icmp ult i64 %189, %154, !dbg !1241
  br i1 %190, label %191, label %467, !dbg !1242

; <label>:191:                                    ; preds = %188
  %192 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !1243
  %193 = load i8, i8* %192, align 1, !dbg !1243, !tbaa !1146
  %194 = add i8 %193, -48, !dbg !1244
  %195 = icmp ult i8 %194, 10, !dbg !1244
  br i1 %195, label %196, label %467, !dbg !1244

; <label>:196:                                    ; preds = %191
  %197 = icmp ult i64 %187, %129, !dbg !1245
  br i1 %197, label %198, label %200, !dbg !1249

; <label>:198:                                    ; preds = %196
  %199 = getelementptr inbounds i8, i8* %0, i64 %187, !dbg !1245
  store i8 48, i8* %199, align 1, !dbg !1245, !tbaa !1146
  br label %200, !dbg !1245

; <label>:200:                                    ; preds = %198, %196
  %201 = add i64 %181, 2, !dbg !1249
  call void @llvm.dbg.value(metadata i64 %201, metadata !1061, metadata !DIExpression()), !dbg !1124
  %202 = icmp ult i64 %201, %129, !dbg !1250
  br i1 %202, label %203, label %205, !dbg !1253

; <label>:203:                                    ; preds = %200
  %204 = getelementptr inbounds i8, i8* %0, i64 %201, !dbg !1250
  store i8 48, i8* %204, align 1, !dbg !1250, !tbaa !1146
  br label %205, !dbg !1250

; <label>:205:                                    ; preds = %203, %200
  %206 = add i64 %181, 3, !dbg !1253
  call void @llvm.dbg.value(metadata i64 %206, metadata !1061, metadata !DIExpression()), !dbg !1124
  br label %467, !dbg !1254

; <label>:207:                                    ; preds = %158
  br i1 %22, label %478, label %607, !dbg !1255

; <label>:208:                                    ; preds = %153
  switch i32 %94, label %467 [
    i32 2, label %209
    i32 5, label %210
  ], !dbg !1256

; <label>:209:                                    ; preds = %208
  br i1 %110, label %467, label %661, !dbg !1257

; <label>:210:                                    ; preds = %208
  br i1 %24, label %467, label %211, !dbg !1259

; <label>:211:                                    ; preds = %210
  %212 = add i64 %122, 2, !dbg !1261
  %213 = icmp ult i64 %212, %154, !dbg !1262
  br i1 %213, label %214, label %467, !dbg !1263

; <label>:214:                                    ; preds = %211
  %215 = add i64 %122, 1, !dbg !1264
  %216 = getelementptr inbounds i8, i8* %2, i64 %215, !dbg !1265
  %217 = load i8, i8* %216, align 1, !dbg !1265, !tbaa !1146
  %218 = icmp eq i8 %217, 63, !dbg !1266
  br i1 %218, label %219, label %467, !dbg !1267

; <label>:219:                                    ; preds = %214
  %220 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !1268
  %221 = load i8, i8* %220, align 1, !dbg !1268, !tbaa !1146
  %222 = sext i8 %221 to i32, !dbg !1268
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
  ], !dbg !1269

; <label>:223:                                    ; preds = %219, %219, %219, %219, %219, %219, %219, %219, %219
  br i1 %110, label %224, label %661, !dbg !1270

; <label>:224:                                    ; preds = %223
  call void @llvm.dbg.value(metadata i8 %221, metadata !1071, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.value(metadata i64 %212, metadata !1060, metadata !DIExpression()), !dbg !1185
  %225 = icmp ult i64 %123, %129, !dbg !1272
  br i1 %225, label %226, label %228, !dbg !1275

; <label>:226:                                    ; preds = %224
  %227 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1272
  store i8 63, i8* %227, align 1, !dbg !1272, !tbaa !1146
  br label %228, !dbg !1272

; <label>:228:                                    ; preds = %226, %224
  %229 = add i64 %123, 1, !dbg !1275
  call void @llvm.dbg.value(metadata i64 %229, metadata !1061, metadata !DIExpression()), !dbg !1124
  %230 = icmp ult i64 %229, %129, !dbg !1276
  br i1 %230, label %231, label %233, !dbg !1279

; <label>:231:                                    ; preds = %228
  %232 = getelementptr inbounds i8, i8* %0, i64 %229, !dbg !1276
  store i8 34, i8* %232, align 1, !dbg !1276, !tbaa !1146
  br label %233, !dbg !1276

; <label>:233:                                    ; preds = %231, %228
  %234 = add i64 %123, 2, !dbg !1279
  call void @llvm.dbg.value(metadata i64 %234, metadata !1061, metadata !DIExpression()), !dbg !1124
  %235 = icmp ult i64 %234, %129, !dbg !1280
  br i1 %235, label %236, label %238, !dbg !1283

; <label>:236:                                    ; preds = %233
  %237 = getelementptr inbounds i8, i8* %0, i64 %234, !dbg !1280
  store i8 34, i8* %237, align 1, !dbg !1280, !tbaa !1146
  br label %238, !dbg !1280

; <label>:238:                                    ; preds = %236, %233
  %239 = add i64 %123, 3, !dbg !1283
  call void @llvm.dbg.value(metadata i64 %239, metadata !1061, metadata !DIExpression()), !dbg !1124
  %240 = icmp ult i64 %239, %129, !dbg !1284
  br i1 %240, label %241, label %243, !dbg !1287

; <label>:241:                                    ; preds = %238
  %242 = getelementptr inbounds i8, i8* %0, i64 %239, !dbg !1284
  store i8 63, i8* %242, align 1, !dbg !1284, !tbaa !1146
  br label %243, !dbg !1284

; <label>:243:                                    ; preds = %241, %238
  %244 = add i64 %123, 4, !dbg !1287
  call void @llvm.dbg.value(metadata i64 %244, metadata !1061, metadata !DIExpression()), !dbg !1124
  br label %467, !dbg !1288

; <label>:245:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !1075, metadata !DIExpression()), !dbg !1289
  br label %255, !dbg !1290

; <label>:246:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !1075, metadata !DIExpression()), !dbg !1289
  br label %255, !dbg !1291

; <label>:247:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !1075, metadata !DIExpression()), !dbg !1289
  br label %253, !dbg !1292

; <label>:248:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !1075, metadata !DIExpression()), !dbg !1289
  br label %253, !dbg !1293

; <label>:249:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !1075, metadata !DIExpression()), !dbg !1289
  br label %255, !dbg !1294

; <label>:250:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 %157, metadata !1075, metadata !DIExpression()), !dbg !1289
  br i1 %114, label %251, label %252, !dbg !1295

; <label>:251:                                    ; preds = %250
  br i1 %110, label %562, label %661, !dbg !1296

; <label>:252:                                    ; preds = %250
  br i1 %120, label %562, label %253, !dbg !1299

; <label>:253:                                    ; preds = %252, %153, %248, %247
  %254 = phi i8 [ 92, %252 ], [ 116, %248 ], [ 114, %247 ], [ 110, %153 ], !dbg !1301
  call void @llvm.dbg.value(metadata i8 %254, metadata !1075, metadata !DIExpression()), !dbg !1289
  br i1 %113, label %255, label %661, !dbg !1302

; <label>:255:                                    ; preds = %253, %153, %249, %246, %245
  %256 = phi i8 [ %254, %253 ], [ 118, %249 ], [ 102, %246 ], [ 98, %245 ], [ 97, %153 ], !dbg !1301
  call void @llvm.dbg.value(metadata i8 %256, metadata !1075, metadata !DIExpression()), !dbg !1289
  br i1 %103, label %524, label %478, !dbg !1304

; <label>:257:                                    ; preds = %153, %153
  %258 = icmp eq i64 %154, -1, !dbg !1305
  br i1 %258, label %259, label %264, !dbg !1307

; <label>:259:                                    ; preds = %257
  %260 = load i8, i8* %25, align 1, !dbg !1308, !tbaa !1146
  %261 = icmp ne i8 %260, 0, !dbg !1309
  %262 = icmp ne i64 %122, 0, !dbg !1310
  %263 = or i1 %262, %261, !dbg !1312
  br i1 %263, label %467, label %270, !dbg !1312

; <label>:264:                                    ; preds = %257
  %265 = icmp ne i64 %154, 1, !dbg !1313
  %266 = icmp ne i64 %122, 0, !dbg !1310
  %267 = or i1 %266, %265, !dbg !1307
  br i1 %267, label %467, label %270, !dbg !1307

; <label>:268:                                    ; preds = %153, %153
  %269 = icmp eq i64 %122, 0, !dbg !1310
  br i1 %269, label %270, label %467, !dbg !1314

; <label>:270:                                    ; preds = %268, %264, %259, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1078, metadata !DIExpression()), !dbg !1196
  br label %271, !dbg !1315

; <label>:271:                                    ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %270
  %272 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %270 ], !dbg !1301
  call void @llvm.dbg.value(metadata i8 %272, metadata !1078, metadata !DIExpression()), !dbg !1196
  br i1 %113, label %467, label %661, !dbg !1316

; <label>:273:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1069, metadata !DIExpression()), !dbg !1133
  call void @llvm.dbg.value(metadata i8 1, metadata !1078, metadata !DIExpression()), !dbg !1196
  br i1 %114, label %274, label %467, !dbg !1318

; <label>:274:                                    ; preds = %273
  br i1 %110, label %275, label %661, !dbg !1319

; <label>:275:                                    ; preds = %274
  %276 = icmp eq i64 %129, 0, !dbg !1322
  %277 = icmp ne i64 %124, 0, !dbg !1324
  %278 = or i1 %277, %276, !dbg !1325
  %279 = select i1 %278, i64 %124, i64 %129, !dbg !1325
  %280 = select i1 %278, i64 %129, i64 0, !dbg !1325
  call void @llvm.dbg.value(metadata i64 %280, metadata !1052, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i64 %279, metadata !1062, metadata !DIExpression()), !dbg !1125
  %281 = icmp ult i64 %123, %280, !dbg !1326
  br i1 %281, label %282, label %284, !dbg !1329

; <label>:282:                                    ; preds = %275
  %283 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1326
  store i8 39, i8* %283, align 1, !dbg !1326, !tbaa !1146
  br label %284, !dbg !1326

; <label>:284:                                    ; preds = %282, %275
  %285 = add i64 %123, 1, !dbg !1329
  call void @llvm.dbg.value(metadata i64 %285, metadata !1061, metadata !DIExpression()), !dbg !1124
  %286 = icmp ult i64 %285, %280, !dbg !1330
  br i1 %286, label %287, label %289, !dbg !1333

; <label>:287:                                    ; preds = %284
  %288 = getelementptr inbounds i8, i8* %0, i64 %285, !dbg !1330
  store i8 92, i8* %288, align 1, !dbg !1330, !tbaa !1146
  br label %289, !dbg !1330

; <label>:289:                                    ; preds = %287, %284
  %290 = add i64 %123, 2, !dbg !1333
  call void @llvm.dbg.value(metadata i64 %290, metadata !1061, metadata !DIExpression()), !dbg !1124
  %291 = icmp ult i64 %290, %280, !dbg !1334
  br i1 %291, label %292, label %294, !dbg !1337

; <label>:292:                                    ; preds = %289
  %293 = getelementptr inbounds i8, i8* %0, i64 %290, !dbg !1334
  store i8 39, i8* %293, align 1, !dbg !1334, !tbaa !1146
  br label %294, !dbg !1334

; <label>:294:                                    ; preds = %292, %289
  %295 = add i64 %123, 3, !dbg !1337
  call void @llvm.dbg.value(metadata i64 %295, metadata !1061, metadata !DIExpression()), !dbg !1124
  call void @llvm.dbg.value(metadata i8 0, metadata !1068, metadata !DIExpression()), !dbg !1132
  br label %467, !dbg !1338

; <label>:296:                                    ; preds = %153
  br i1 %14, label %297, label %306, !dbg !1339

; <label>:297:                                    ; preds = %296
  call void @llvm.dbg.value(metadata i64 1, metadata !1079, metadata !DIExpression()), !dbg !1340
  %298 = tail call i16** @__ctype_b_loc() #17, !dbg !1341
  %299 = load i16*, i16** %298, align 8, !dbg !1341, !tbaa !635
  %300 = zext i8 %157 to i64, !dbg !1341
  %301 = getelementptr inbounds i16, i16* %299, i64 %300, !dbg !1341
  %302 = load i16, i16* %301, align 2, !dbg !1341, !tbaa !1343
  %303 = lshr i16 %302, 14, !dbg !1345
  %304 = trunc i16 %303 to i8, !dbg !1345
  %305 = and i8 %304, 1, !dbg !1345
  call void @llvm.dbg.value(metadata i8 %305, metadata !1082, metadata !DIExpression()), !dbg !1346
  br label %359, !dbg !1347

; <label>:306:                                    ; preds = %296
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %19) #10, !dbg !1348
  store i64 0, i64* %10, align 8, !dbg !1349
  call void @llvm.dbg.value(metadata i64 0, metadata !1079, metadata !DIExpression()), !dbg !1340
  call void @llvm.dbg.value(metadata i8 1, metadata !1082, metadata !DIExpression()), !dbg !1346
  %307 = icmp eq i64 %154, -1, !dbg !1350
  br i1 %307, label %308, label %310, !dbg !1352

; <label>:308:                                    ; preds = %306
  %309 = call i64 @strlen(i8* nonnull %2) #14, !dbg !1353
  call void @llvm.dbg.value(metadata i64 %309, metadata !1054, metadata !DIExpression()), !dbg !1118
  br label %310, !dbg !1354

; <label>:310:                                    ; preds = %308, %306
  %311 = phi i64 [ %309, %308 ], [ %154, %306 ], !dbg !1355
  call void @llvm.dbg.value(metadata i64 %311, metadata !1054, metadata !DIExpression()), !dbg !1118
  br label %312, !dbg !1356

; <label>:312:                                    ; preds = %347, %310
  %313 = phi i64 [ 0, %310 ], [ %352, %347 ], !dbg !1357
  %314 = phi i8 [ 1, %310 ], [ %351, %347 ], !dbg !1358
  call void @llvm.dbg.value(metadata i8 %314, metadata !1082, metadata !DIExpression()), !dbg !1346
  call void @llvm.dbg.value(metadata i64 %313, metadata !1079, metadata !DIExpression()), !dbg !1340
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #10, !dbg !1359
  %315 = add i64 %313, %122, !dbg !1360
  %316 = getelementptr inbounds i8, i8* %2, i64 %315, !dbg !1361
  %317 = sub i64 %311, %315, !dbg !1362
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !1083, metadata !DIExpression(DW_OP_deref)), !dbg !1363
  call void @llvm.dbg.value(metadata i32* %12, metadata !1101, metadata !DIExpression(DW_OP_deref)), !dbg !1364
  %318 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %316, i64 %317, %struct.__mbstate_t* nonnull %11) #10, !dbg !1365
  call void @llvm.dbg.value(metadata i64 %318, metadata !1104, metadata !DIExpression()), !dbg !1366
  switch i64 %318, label %331 [
    i64 0, label %343
    i64 -1, label %344
    i64 -2, label %319
  ], !dbg !1367

; <label>:319:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !1079, metadata !DIExpression()), !dbg !1340
  call void @llvm.dbg.value(metadata i64 %313, metadata !1079, metadata !DIExpression()), !dbg !1340
  call void @llvm.dbg.value(metadata i64 %313, metadata !1079, metadata !DIExpression()), !dbg !1340
  call void @llvm.dbg.value(metadata i64 %313, metadata !1079, metadata !DIExpression()), !dbg !1340
  call void @llvm.dbg.value(metadata i64 %313, metadata !1079, metadata !DIExpression()), !dbg !1340
  call void @llvm.dbg.value(metadata i64 %313, metadata !1079, metadata !DIExpression()), !dbg !1340
  %320 = icmp ugt i64 %311, %315, !dbg !1368
  br i1 %320, label %321, label %344, !dbg !1370

; <label>:321:                                    ; preds = %319, %327
  %322 = phi i64 [ %329, %327 ], [ %315, %319 ]
  %323 = phi i64 [ %328, %327 ], [ %313, %319 ]
  call void @llvm.dbg.value(metadata i64 %323, metadata !1079, metadata !DIExpression()), !dbg !1340
  %324 = getelementptr inbounds i8, i8* %2, i64 %322, !dbg !1371
  %325 = load i8, i8* %324, align 1, !dbg !1371, !tbaa !1146
  %326 = icmp eq i8 %325, 0, !dbg !1370
  br i1 %326, label %344, label %327, !dbg !1372

; <label>:327:                                    ; preds = %321
  %328 = add i64 %323, 1, !dbg !1373
  call void @llvm.dbg.value(metadata i64 %328, metadata !1079, metadata !DIExpression()), !dbg !1340
  %329 = add i64 %328, %122, !dbg !1374
  %330 = icmp ult i64 %329, %311, !dbg !1368
  br i1 %330, label %321, label %344, !dbg !1370, !llvm.loop !1375

; <label>:331:                                    ; preds = %312
  %332 = icmp ugt i64 %318, 1, !dbg !1376
  %333 = and i1 %116, %332, !dbg !1379
  call void @llvm.dbg.value(metadata i64 1, metadata !1105, metadata !DIExpression()), !dbg !1380
  br i1 %333, label %334, label %347, !dbg !1379

; <label>:334:                                    ; preds = %331, %340
  %335 = phi i64 [ %341, %340 ], [ 1, %331 ]
  call void @llvm.dbg.value(metadata i64 %335, metadata !1105, metadata !DIExpression()), !dbg !1380
  %336 = add i64 %335, %315, !dbg !1381
  %337 = getelementptr inbounds i8, i8* %2, i64 %336, !dbg !1382
  %338 = load i8, i8* %337, align 1, !dbg !1382, !tbaa !1146
  %339 = sext i8 %338 to i32, !dbg !1382
  switch i32 %339, label %340 [
    i32 91, label %358
    i32 92, label %358
    i32 94, label %358
    i32 96, label %358
    i32 124, label %358
  ], !dbg !1383

; <label>:340:                                    ; preds = %334
  %341 = add nuw i64 %335, 1, !dbg !1384
  call void @llvm.dbg.value(metadata i64 %341, metadata !1105, metadata !DIExpression()), !dbg !1380
  %342 = icmp ult i64 %341, %318, !dbg !1376
  br i1 %342, label %334, label %347, !dbg !1385, !llvm.loop !1386

; <label>:343:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !1079, metadata !DIExpression()), !dbg !1340
  call void @llvm.dbg.value(metadata i8 %314, metadata !1082, metadata !DIExpression()), !dbg !1346
  call void @llvm.dbg.value(metadata i64 %313, metadata !1079, metadata !DIExpression()), !dbg !1340
  call void @llvm.dbg.value(metadata i8 %314, metadata !1082, metadata !DIExpression()), !dbg !1346
  br label %344, !dbg !1388

; <label>:344:                                    ; preds = %327, %321, %312, %343, %319
  %345 = phi i64 [ %313, %319 ], [ %313, %343 ], [ %313, %312 ], [ %323, %321 ], [ %328, %327 ]
  %346 = phi i8 [ 0, %319 ], [ %314, %343 ], [ 0, %312 ], [ 0, %321 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i8 %351, metadata !1082, metadata !DIExpression()), !dbg !1346
  call void @llvm.dbg.value(metadata i64 %352, metadata !1079, metadata !DIExpression()), !dbg !1340
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #10, !dbg !1388
  br label %355

; <label>:347:                                    ; preds = %340, %331
  %348 = load i32, i32* %12, align 4, !dbg !1389, !tbaa !722
  call void @llvm.dbg.value(metadata i32 %348, metadata !1101, metadata !DIExpression()), !dbg !1364
  %349 = call i32 @iswprint(i32 %348) #10, !dbg !1391
  %350 = icmp eq i32 %349, 0, !dbg !1391
  %351 = select i1 %350, i8 0, i8 %314, !dbg !1392
  call void @llvm.dbg.value(metadata i8 %351, metadata !1082, metadata !DIExpression()), !dbg !1346
  %352 = add i64 %318, %313, !dbg !1393
  call void @llvm.dbg.value(metadata i64 %352, metadata !1079, metadata !DIExpression()), !dbg !1340
  call void @llvm.dbg.value(metadata i8 %351, metadata !1082, metadata !DIExpression()), !dbg !1346
  call void @llvm.dbg.value(metadata i64 %352, metadata !1079, metadata !DIExpression()), !dbg !1340
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #10, !dbg !1388
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !1083, metadata !DIExpression(DW_OP_deref)), !dbg !1363
  %353 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !1394
  %354 = icmp eq i32 %353, 0, !dbg !1395
  br i1 %354, label %312, label %355, !dbg !1396, !llvm.loop !1397

; <label>:355:                                    ; preds = %347, %344
  %356 = phi i8 [ %346, %344 ], [ %351, %347 ]
  %357 = phi i64 [ %345, %344 ], [ %352, %347 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #10, !dbg !1399
  br label %359

; <label>:358:                                    ; preds = %334, %334, %334, %334, %334
  call void @llvm.dbg.value(metadata i8* %95, metadata !1058, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata i8* %95, metadata !1058, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata i8* %95, metadata !1058, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata i8* %95, metadata !1058, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata i8* %95, metadata !1058, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata i8* %96, metadata !1059, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata i8* %96, metadata !1059, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata i8* %96, metadata !1059, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata i8* %96, metadata !1059, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata i8* %96, metadata !1059, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata i64 %129, metadata !1052, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i64 %129, metadata !1052, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i64 %129, metadata !1052, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i64 %129, metadata !1052, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i64 %129, metadata !1052, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i64 %311, metadata !1054, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata i64 %311, metadata !1054, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata i64 %311, metadata !1054, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata i64 %311, metadata !1054, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata i64 %311, metadata !1054, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata i8* %95, metadata !1058, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata i8* %95, metadata !1058, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata i8* %95, metadata !1058, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata i8* %95, metadata !1058, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata i8* %95, metadata !1058, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata i8* %96, metadata !1059, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata i8* %96, metadata !1059, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata i8* %96, metadata !1059, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata i8* %96, metadata !1059, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata i8* %96, metadata !1059, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata i64 %129, metadata !1052, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i64 %129, metadata !1052, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i64 %129, metadata !1052, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i64 %129, metadata !1052, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i64 %129, metadata !1052, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i64 %311, metadata !1054, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata i64 %311, metadata !1054, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata i64 %311, metadata !1054, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata i64 %311, metadata !1054, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata i64 %311, metadata !1054, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata i8* %95, metadata !1058, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata i8* %95, metadata !1058, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata i8* %95, metadata !1058, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata i8* %95, metadata !1058, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata i8* %95, metadata !1058, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata i8* %96, metadata !1059, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata i8* %96, metadata !1059, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata i8* %96, metadata !1059, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata i8* %96, metadata !1059, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata i8* %96, metadata !1059, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata i64 %129, metadata !1052, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i64 %129, metadata !1052, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i64 %129, metadata !1052, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i64 %129, metadata !1052, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i64 %129, metadata !1052, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i64 %311, metadata !1054, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata i64 %311, metadata !1054, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata i64 %311, metadata !1054, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata i64 %311, metadata !1054, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata i64 %311, metadata !1054, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata i8* %95, metadata !1058, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata i8* %95, metadata !1058, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata i8* %95, metadata !1058, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata i8* %95, metadata !1058, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata i8* %95, metadata !1058, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata i8* %96, metadata !1059, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata i8* %96, metadata !1059, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata i8* %96, metadata !1059, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata i8* %96, metadata !1059, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata i8* %96, metadata !1059, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata i64 %129, metadata !1052, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i64 %129, metadata !1052, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i64 %129, metadata !1052, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i64 %129, metadata !1052, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i64 %129, metadata !1052, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i64 %311, metadata !1054, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata i64 %311, metadata !1054, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata i64 %311, metadata !1054, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata i64 %311, metadata !1054, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata i64 %311, metadata !1054, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata i32 2, metadata !1055, metadata !DIExpression()), !dbg !1119
  call void @llvm.dbg.value(metadata i32 2, metadata !1055, metadata !DIExpression()), !dbg !1119
  call void @llvm.dbg.value(metadata i32 2, metadata !1055, metadata !DIExpression()), !dbg !1119
  call void @llvm.dbg.value(metadata i32 2, metadata !1055, metadata !DIExpression()), !dbg !1119
  call void @llvm.dbg.value(metadata i32 2, metadata !1055, metadata !DIExpression()), !dbg !1119
  call void @llvm.dbg.value(metadata i8* %95, metadata !1058, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata i8* %95, metadata !1058, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata i8* %95, metadata !1058, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata i8* %95, metadata !1058, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata i8* %95, metadata !1058, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata i8* %96, metadata !1059, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata i8* %96, metadata !1059, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata i8* %96, metadata !1059, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata i8* %96, metadata !1059, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata i8* %96, metadata !1059, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata i8 %100, metadata !1065, metadata !DIExpression()), !dbg !1128
  call void @llvm.dbg.value(metadata i8 %100, metadata !1065, metadata !DIExpression()), !dbg !1128
  call void @llvm.dbg.value(metadata i8 %100, metadata !1065, metadata !DIExpression()), !dbg !1128
  call void @llvm.dbg.value(metadata i8 %100, metadata !1065, metadata !DIExpression()), !dbg !1128
  call void @llvm.dbg.value(metadata i8 %100, metadata !1065, metadata !DIExpression()), !dbg !1128
  call void @llvm.dbg.value(metadata i64 %129, metadata !1052, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i64 %129, metadata !1052, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i64 %129, metadata !1052, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i64 %129, metadata !1052, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i64 %129, metadata !1052, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i64 %311, metadata !1054, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata i64 %311, metadata !1054, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata i64 %311, metadata !1054, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata i64 %311, metadata !1054, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata i64 %311, metadata !1054, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata i32 %94, metadata !1055, metadata !DIExpression()), !dbg !1119
  call void @llvm.dbg.value(metadata i32 %94, metadata !1055, metadata !DIExpression()), !dbg !1119
  call void @llvm.dbg.value(metadata i32 %94, metadata !1055, metadata !DIExpression()), !dbg !1119
  call void @llvm.dbg.value(metadata i32 %94, metadata !1055, metadata !DIExpression()), !dbg !1119
  call void @llvm.dbg.value(metadata i32 %94, metadata !1055, metadata !DIExpression()), !dbg !1119
  call void @llvm.dbg.value(metadata i8* %95, metadata !1058, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata i8* %95, metadata !1058, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata i8* %95, metadata !1058, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata i8* %95, metadata !1058, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata i8* %95, metadata !1058, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata i8* %96, metadata !1059, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata i8* %96, metadata !1059, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata i8* %96, metadata !1059, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata i8* %96, metadata !1059, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata i8* %96, metadata !1059, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata i8 %100, metadata !1065, metadata !DIExpression()), !dbg !1128
  call void @llvm.dbg.value(metadata i8 %100, metadata !1065, metadata !DIExpression()), !dbg !1128
  call void @llvm.dbg.value(metadata i8 %100, metadata !1065, metadata !DIExpression()), !dbg !1128
  call void @llvm.dbg.value(metadata i8 %100, metadata !1065, metadata !DIExpression()), !dbg !1128
  call void @llvm.dbg.value(metadata i8 %100, metadata !1065, metadata !DIExpression()), !dbg !1128
  call void @llvm.dbg.value(metadata i64 %129, metadata !1052, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i64 %129, metadata !1052, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i64 %129, metadata !1052, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i64 %129, metadata !1052, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i64 %129, metadata !1052, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i64 %311, metadata !1054, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata i64 %311, metadata !1054, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata i64 %311, metadata !1054, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata i64 %311, metadata !1054, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata i64 %311, metadata !1054, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata i8 %351, metadata !1082, metadata !DIExpression()), !dbg !1346
  call void @llvm.dbg.value(metadata i64 %352, metadata !1079, metadata !DIExpression()), !dbg !1340
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #10, !dbg !1388
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #10, !dbg !1399
  br label %661

; <label>:359:                                    ; preds = %355, %297
  %360 = phi i64 [ %154, %297 ], [ %311, %355 ], !dbg !1400
  %361 = phi i64 [ 1, %297 ], [ %357, %355 ], !dbg !1401
  %362 = phi i8 [ %305, %297 ], [ %356, %355 ], !dbg !1401
  call void @llvm.dbg.value(metadata i8 %362, metadata !1082, metadata !DIExpression()), !dbg !1346
  call void @llvm.dbg.value(metadata i64 %361, metadata !1079, metadata !DIExpression()), !dbg !1340
  call void @llvm.dbg.value(metadata i64 %360, metadata !1054, metadata !DIExpression()), !dbg !1118
  %363 = and i8 %362, 1, !dbg !1402
  %364 = icmp ne i8 %363, 0, !dbg !1402
  call void @llvm.dbg.value(metadata i8 %363, metadata !1078, metadata !DIExpression()), !dbg !1196
  %365 = icmp ult i64 %361, 2, !dbg !1403
  %366 = or i1 %364, %115, !dbg !1404
  %367 = and i1 %365, %366, !dbg !1405
  br i1 %367, label %467, label %368, !dbg !1405

; <label>:368:                                    ; preds = %359
  %369 = add i64 %361, %122, !dbg !1406
  call void @llvm.dbg.value(metadata i64 %369, metadata !1112, metadata !DIExpression()), !dbg !1407
  br label %370, !dbg !1408

; <label>:370:                                    ; preds = %463, %368
  %371 = phi i64 [ %122, %368 ], [ %438, %463 ], !dbg !1409
  %372 = phi i64 [ %123, %368 ], [ %464, %463 ], !dbg !1413
  %373 = phi i8 [ %126, %368 ], [ %459, %463 ], !dbg !1132
  %374 = phi i8 [ %157, %368 ], [ %466, %463 ], !dbg !1409
  %375 = phi i8 [ %155, %368 ], [ %436, %463 ], !dbg !1415
  %376 = phi i8 [ 0, %368 ], [ %437, %463 ], !dbg !1195
  call void @llvm.dbg.value(metadata i8 %376, metadata !1077, metadata !DIExpression()), !dbg !1195
  call void @llvm.dbg.value(metadata i8 %375, metadata !1076, metadata !DIExpression()), !dbg !1194
  call void @llvm.dbg.value(metadata i8 %374, metadata !1071, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.value(metadata i8 %373, metadata !1068, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata i64 %372, metadata !1061, metadata !DIExpression()), !dbg !1124
  call void @llvm.dbg.value(metadata i64 %371, metadata !1060, metadata !DIExpression()), !dbg !1185
  br i1 %366, label %423, label %377, !dbg !1419

; <label>:377:                                    ; preds = %370
  br i1 %110, label %378, label %661, !dbg !1420

; <label>:378:                                    ; preds = %377
  call void @llvm.dbg.value(metadata i8 1, metadata !1077, metadata !DIExpression()), !dbg !1195
  %379 = and i8 %373, 1, !dbg !1423
  %380 = icmp eq i8 %379, 0, !dbg !1423
  %381 = and i1 %114, %380, !dbg !1423
  br i1 %381, label %382, label %398, !dbg !1423

; <label>:382:                                    ; preds = %378
  %383 = icmp ult i64 %372, %129, !dbg !1425
  br i1 %383, label %384, label %386, !dbg !1429

; <label>:384:                                    ; preds = %382
  %385 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !1425
  store i8 39, i8* %385, align 1, !dbg !1425, !tbaa !1146
  br label %386, !dbg !1425

; <label>:386:                                    ; preds = %384, %382
  %387 = add i64 %372, 1, !dbg !1429
  call void @llvm.dbg.value(metadata i64 %387, metadata !1061, metadata !DIExpression()), !dbg !1124
  %388 = icmp ult i64 %387, %129, !dbg !1430
  br i1 %388, label %389, label %391, !dbg !1433

; <label>:389:                                    ; preds = %386
  %390 = getelementptr inbounds i8, i8* %0, i64 %387, !dbg !1430
  store i8 36, i8* %390, align 1, !dbg !1430, !tbaa !1146
  br label %391, !dbg !1430

; <label>:391:                                    ; preds = %389, %386
  %392 = add i64 %372, 2, !dbg !1433
  call void @llvm.dbg.value(metadata i64 %392, metadata !1061, metadata !DIExpression()), !dbg !1124
  %393 = icmp ult i64 %392, %129, !dbg !1434
  br i1 %393, label %394, label %396, !dbg !1437

; <label>:394:                                    ; preds = %391
  %395 = getelementptr inbounds i8, i8* %0, i64 %392, !dbg !1434
  store i8 39, i8* %395, align 1, !dbg !1434, !tbaa !1146
  br label %396, !dbg !1434

; <label>:396:                                    ; preds = %394, %391
  %397 = add i64 %372, 3, !dbg !1437
  call void @llvm.dbg.value(metadata i64 %397, metadata !1061, metadata !DIExpression()), !dbg !1124
  call void @llvm.dbg.value(metadata i8 1, metadata !1068, metadata !DIExpression()), !dbg !1132
  br label %398, !dbg !1438

; <label>:398:                                    ; preds = %378, %396
  %399 = phi i64 [ %397, %396 ], [ %372, %378 ], !dbg !1184
  %400 = phi i8 [ 1, %396 ], [ %373, %378 ], !dbg !1184
  call void @llvm.dbg.value(metadata i8 %400, metadata !1068, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata i64 %399, metadata !1061, metadata !DIExpression()), !dbg !1124
  %401 = icmp ult i64 %399, %129, !dbg !1439
  br i1 %401, label %402, label %404, !dbg !1442

; <label>:402:                                    ; preds = %398
  %403 = getelementptr inbounds i8, i8* %0, i64 %399, !dbg !1439
  store i8 92, i8* %403, align 1, !dbg !1439, !tbaa !1146
  br label %404, !dbg !1439

; <label>:404:                                    ; preds = %402, %398
  %405 = add i64 %399, 1, !dbg !1442
  call void @llvm.dbg.value(metadata i64 %405, metadata !1061, metadata !DIExpression()), !dbg !1124
  %406 = icmp ult i64 %405, %129, !dbg !1443
  br i1 %406, label %407, label %411, !dbg !1446

; <label>:407:                                    ; preds = %404
  %408 = lshr i8 %374, 6, !dbg !1443
  %409 = or i8 %408, 48, !dbg !1443
  %410 = getelementptr inbounds i8, i8* %0, i64 %405, !dbg !1443
  store i8 %409, i8* %410, align 1, !dbg !1443, !tbaa !1146
  br label %411, !dbg !1443

; <label>:411:                                    ; preds = %407, %404
  %412 = add i64 %399, 2, !dbg !1446
  call void @llvm.dbg.value(metadata i64 %412, metadata !1061, metadata !DIExpression()), !dbg !1124
  %413 = icmp ult i64 %412, %129, !dbg !1447
  br i1 %413, label %414, label %419, !dbg !1450

; <label>:414:                                    ; preds = %411
  %415 = lshr i8 %374, 3, !dbg !1447
  %416 = and i8 %415, 7, !dbg !1447
  %417 = or i8 %416, 48, !dbg !1447
  %418 = getelementptr inbounds i8, i8* %0, i64 %412, !dbg !1447
  store i8 %417, i8* %418, align 1, !dbg !1447, !tbaa !1146
  br label %419, !dbg !1447

; <label>:419:                                    ; preds = %414, %411
  %420 = add i64 %399, 3, !dbg !1450
  call void @llvm.dbg.value(metadata i64 %420, metadata !1061, metadata !DIExpression()), !dbg !1124
  %421 = and i8 %374, 7, !dbg !1451
  %422 = or i8 %421, 48, !dbg !1452
  call void @llvm.dbg.value(metadata i8 %422, metadata !1071, metadata !DIExpression()), !dbg !1211
  br label %432, !dbg !1453

; <label>:423:                                    ; preds = %370
  %424 = and i8 %375, 1, !dbg !1454
  %425 = icmp eq i8 %424, 0, !dbg !1454
  br i1 %425, label %432, label %426, !dbg !1455

; <label>:426:                                    ; preds = %423
  %427 = icmp ult i64 %372, %129, !dbg !1456
  br i1 %427, label %428, label %430, !dbg !1459

; <label>:428:                                    ; preds = %426
  %429 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !1456
  store i8 92, i8* %429, align 1, !dbg !1456, !tbaa !1146
  br label %430, !dbg !1456

; <label>:430:                                    ; preds = %428, %426
  %431 = add i64 %372, 1, !dbg !1459
  call void @llvm.dbg.value(metadata i64 %431, metadata !1061, metadata !DIExpression()), !dbg !1124
  call void @llvm.dbg.value(metadata i8 0, metadata !1076, metadata !DIExpression()), !dbg !1194
  br label %432, !dbg !1460

; <label>:432:                                    ; preds = %423, %430, %419
  %433 = phi i64 [ %431, %430 ], [ %372, %423 ], [ %420, %419 ], !dbg !1461
  %434 = phi i8 [ %373, %430 ], [ %373, %423 ], [ %400, %419 ], !dbg !1132
  %435 = phi i8 [ %374, %430 ], [ %374, %423 ], [ %422, %419 ], !dbg !1462
  %436 = phi i8 [ 0, %430 ], [ %375, %423 ], [ %375, %419 ], !dbg !1463
  %437 = phi i8 [ %376, %430 ], [ %376, %423 ], [ 1, %419 ], !dbg !1465
  call void @llvm.dbg.value(metadata i8 %437, metadata !1077, metadata !DIExpression()), !dbg !1195
  call void @llvm.dbg.value(metadata i8 %436, metadata !1076, metadata !DIExpression()), !dbg !1194
  call void @llvm.dbg.value(metadata i8 %435, metadata !1071, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.value(metadata i8 %434, metadata !1068, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata i64 %433, metadata !1061, metadata !DIExpression()), !dbg !1124
  %438 = add i64 %371, 1, !dbg !1466
  %439 = icmp ugt i64 %369, %438, !dbg !1468
  br i1 %439, label %440, label %562, !dbg !1469

; <label>:440:                                    ; preds = %432
  %441 = and i8 %434, 1, !dbg !1470
  %442 = icmp ne i8 %441, 0, !dbg !1470
  %443 = and i8 %437, 1, !dbg !1470
  %444 = icmp eq i8 %443, 0, !dbg !1470
  %445 = and i1 %442, %444, !dbg !1470
  br i1 %445, label %446, label %457, !dbg !1470

; <label>:446:                                    ; preds = %440
  %447 = icmp ult i64 %433, %129, !dbg !1473
  br i1 %447, label %448, label %450, !dbg !1477

; <label>:448:                                    ; preds = %446
  %449 = getelementptr inbounds i8, i8* %0, i64 %433, !dbg !1473
  store i8 39, i8* %449, align 1, !dbg !1473, !tbaa !1146
  br label %450, !dbg !1473

; <label>:450:                                    ; preds = %448, %446
  %451 = add i64 %433, 1, !dbg !1477
  call void @llvm.dbg.value(metadata i64 %451, metadata !1061, metadata !DIExpression()), !dbg !1124
  %452 = icmp ult i64 %451, %129, !dbg !1478
  br i1 %452, label %453, label %455, !dbg !1481

; <label>:453:                                    ; preds = %450
  %454 = getelementptr inbounds i8, i8* %0, i64 %451, !dbg !1478
  store i8 39, i8* %454, align 1, !dbg !1478, !tbaa !1146
  br label %455, !dbg !1478

; <label>:455:                                    ; preds = %453, %450
  %456 = add i64 %433, 2, !dbg !1481
  call void @llvm.dbg.value(metadata i64 %456, metadata !1061, metadata !DIExpression()), !dbg !1124
  call void @llvm.dbg.value(metadata i8 0, metadata !1068, metadata !DIExpression()), !dbg !1132
  br label %457, !dbg !1482

; <label>:457:                                    ; preds = %440, %455
  %458 = phi i64 [ %456, %455 ], [ %433, %440 ], !dbg !1483
  %459 = phi i8 [ 0, %455 ], [ %434, %440 ], !dbg !1184
  call void @llvm.dbg.value(metadata i8 %459, metadata !1068, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata i64 %458, metadata !1061, metadata !DIExpression()), !dbg !1124
  %460 = icmp ult i64 %458, %129, !dbg !1484
  br i1 %460, label %461, label %463, !dbg !1486

; <label>:461:                                    ; preds = %457
  %462 = getelementptr inbounds i8, i8* %0, i64 %458, !dbg !1484
  store i8 %435, i8* %462, align 1, !dbg !1484, !tbaa !1146
  br label %463, !dbg !1484

; <label>:463:                                    ; preds = %461, %457
  %464 = add i64 %458, 1, !dbg !1486
  call void @llvm.dbg.value(metadata i64 %464, metadata !1061, metadata !DIExpression()), !dbg !1124
  call void @llvm.dbg.value(metadata i64 %438, metadata !1060, metadata !DIExpression()), !dbg !1185
  %465 = getelementptr inbounds i8, i8* %2, i64 %438, !dbg !1487
  %466 = load i8, i8* %465, align 1, !dbg !1487, !tbaa !1146
  call void @llvm.dbg.value(metadata i8 %466, metadata !1071, metadata !DIExpression()), !dbg !1211
  br label %370, !dbg !1488, !llvm.loop !1489

; <label>:467:                                    ; preds = %359, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %271, %188, %191, %205, %209, %210, %268, %264, %259, %273, %294, %243, %219, %214, %211, %208
  %468 = phi i64 [ %122, %294 ], [ %122, %273 ], [ %122, %271 ], [ %122, %268 ], [ %122, %259 ], [ %122, %264 ], [ %122, %208 ], [ %122, %219 ], [ %212, %243 ], [ %122, %214 ], [ %122, %211 ], [ %122, %210 ], [ %122, %209 ], [ %122, %205 ], [ %122, %191 ], [ %122, %188 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %359 ], !dbg !1492
  %469 = phi i64 [ %295, %294 ], [ %123, %273 ], [ %123, %271 ], [ %123, %268 ], [ %123, %259 ], [ %123, %264 ], [ %123, %208 ], [ %123, %219 ], [ %244, %243 ], [ %123, %214 ], [ %123, %211 ], [ %123, %210 ], [ %123, %209 ], [ %206, %205 ], [ %187, %191 ], [ %187, %188 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %359 ], !dbg !1184
  %470 = phi i64 [ %279, %294 ], [ %124, %273 ], [ %124, %271 ], [ %124, %268 ], [ %124, %259 ], [ %124, %264 ], [ %124, %208 ], [ %124, %219 ], [ %124, %243 ], [ %124, %214 ], [ %124, %211 ], [ %124, %210 ], [ %124, %209 ], [ %124, %205 ], [ %124, %191 ], [ %124, %188 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %359 ], !dbg !1125
  %471 = phi i64 [ %154, %294 ], [ %154, %273 ], [ %154, %271 ], [ %154, %268 ], [ -1, %259 ], [ %154, %264 ], [ %154, %208 ], [ %154, %219 ], [ %154, %243 ], [ %154, %214 ], [ %154, %211 ], [ %154, %210 ], [ %154, %209 ], [ %154, %205 ], [ %154, %191 ], [ %154, %188 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %360, %359 ], !dbg !1493
  %472 = phi i8 [ 0, %294 ], [ %126, %273 ], [ %126, %271 ], [ %126, %268 ], [ %126, %259 ], [ %126, %264 ], [ %126, %208 ], [ %126, %219 ], [ %126, %243 ], [ %126, %214 ], [ %126, %211 ], [ %126, %210 ], [ %126, %209 ], [ %182, %205 ], [ %182, %191 ], [ %182, %188 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %359 ], !dbg !1184
  %473 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %127, %271 ], [ %127, %268 ], [ %127, %259 ], [ %127, %264 ], [ %127, %208 ], [ %127, %219 ], [ %127, %243 ], [ %127, %214 ], [ %127, %211 ], [ %127, %210 ], [ %127, %209 ], [ %127, %205 ], [ %127, %191 ], [ %127, %188 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %359 ], !dbg !1184
  %474 = phi i8 [ 39, %294 ], [ 39, %273 ], [ %157, %271 ], [ %157, %268 ], [ %157, %259 ], [ %157, %264 ], [ 63, %208 ], [ 63, %219 ], [ %221, %243 ], [ 63, %214 ], [ 63, %211 ], [ 63, %210 ], [ 63, %209 ], [ 48, %205 ], [ 48, %191 ], [ 48, %188 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %359 ], !dbg !1209
  %475 = phi i8 [ 0, %294 ], [ 0, %273 ], [ 0, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 1, %205 ], [ 1, %191 ], [ 1, %188 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %359 ], !dbg !1209
  %476 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %272, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 0, %205 ], [ 0, %191 ], [ 0, %188 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %363, %359 ], !dbg !1209
  %477 = phi i64 [ %280, %294 ], [ %129, %273 ], [ %129, %271 ], [ %129, %268 ], [ %129, %259 ], [ %129, %264 ], [ %129, %208 ], [ %129, %219 ], [ %129, %243 ], [ %129, %214 ], [ %129, %211 ], [ %129, %210 ], [ %129, %209 ], [ %129, %205 ], [ %129, %191 ], [ %129, %188 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %359 ]
  call void @llvm.dbg.value(metadata i64 %477, metadata !1052, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i8 %476, metadata !1078, metadata !DIExpression()), !dbg !1196
  call void @llvm.dbg.value(metadata i8 %475, metadata !1077, metadata !DIExpression()), !dbg !1195
  call void @llvm.dbg.value(metadata i8 %155, metadata !1076, metadata !DIExpression()), !dbg !1194
  call void @llvm.dbg.value(metadata i8 %474, metadata !1071, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.value(metadata i8 %473, metadata !1069, metadata !DIExpression()), !dbg !1133
  call void @llvm.dbg.value(metadata i8 %472, metadata !1068, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata i64 %471, metadata !1054, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata i64 %470, metadata !1062, metadata !DIExpression()), !dbg !1125
  call void @llvm.dbg.value(metadata i64 %469, metadata !1061, metadata !DIExpression()), !dbg !1124
  call void @llvm.dbg.value(metadata i64 %468, metadata !1060, metadata !DIExpression()), !dbg !1185
  br i1 %105, label %489, label %478, !dbg !1494

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
  br i1 %112, label %490, label %512, !dbg !1496

; <label>:489:                                    ; preds = %467
  br i1 %20, label %512, label %490, !dbg !1497

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
  %501 = lshr i8 %494, 5, !dbg !1498
  %502 = zext i8 %501 to i64, !dbg !1498
  %503 = getelementptr inbounds i32, i32* %6, i64 %502, !dbg !1499
  %504 = load i32, i32* %503, align 4, !dbg !1499, !tbaa !722
  %505 = and i8 %494, 31, !dbg !1500
  %506 = zext i8 %505 to i32, !dbg !1500
  %507 = shl i32 1, %506, !dbg !1501
  %508 = and i32 %504, %507, !dbg !1501
  %509 = icmp eq i32 %508, 0, !dbg !1501
  %510 = icmp eq i8 %155, 0, !dbg !1502
  %511 = and i1 %510, %509, !dbg !1503
  br i1 %511, label %562, label %524, !dbg !1503

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
  %523 = icmp eq i8 %155, 0, !dbg !1502
  br i1 %523, label %562, label %524, !dbg !1504

; <label>:524:                                    ; preds = %255, %490, %512
  %525 = phi i64 [ %500, %490 ], [ %522, %512 ], [ %122, %255 ], !dbg !1505
  %526 = phi i64 [ %499, %490 ], [ %521, %512 ], [ %123, %255 ], !dbg !1184
  %527 = phi i64 [ %498, %490 ], [ %520, %512 ], [ %124, %255 ], !dbg !1125
  %528 = phi i64 [ %497, %490 ], [ %519, %512 ], [ %154, %255 ], !dbg !1493
  %529 = phi i8 [ %496, %490 ], [ %518, %512 ], [ %126, %255 ], !dbg !1132
  %530 = phi i8 [ %495, %490 ], [ %517, %512 ], [ %127, %255 ], !dbg !1133
  %531 = phi i8 [ %494, %490 ], [ %516, %512 ], [ %256, %255 ], !dbg !1506
  %532 = phi i8 [ %492, %490 ], [ %514, %512 ], [ 0, %255 ], !dbg !1209
  %533 = phi i64 [ %491, %490 ], [ %513, %512 ], [ %129, %255 ]
  call void @llvm.dbg.value(metadata i64 %533, metadata !1052, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i8 %532, metadata !1078, metadata !DIExpression()), !dbg !1196
  call void @llvm.dbg.value(metadata i8 %531, metadata !1071, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.value(metadata i8 %530, metadata !1069, metadata !DIExpression()), !dbg !1133
  call void @llvm.dbg.value(metadata i8 %529, metadata !1068, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata i64 %528, metadata !1054, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata i64 %527, metadata !1062, metadata !DIExpression()), !dbg !1125
  call void @llvm.dbg.value(metadata i64 %526, metadata !1061, metadata !DIExpression()), !dbg !1124
  call void @llvm.dbg.value(metadata i64 %525, metadata !1060, metadata !DIExpression()), !dbg !1185
  br i1 %110, label %534, label %661, !dbg !1509

; <label>:534:                                    ; preds = %524
  call void @llvm.dbg.value(metadata i8 1, metadata !1077, metadata !DIExpression()), !dbg !1195
  %535 = and i8 %529, 1, !dbg !1511
  %536 = icmp eq i8 %535, 0, !dbg !1511
  %537 = and i1 %114, %536, !dbg !1511
  br i1 %537, label %538, label %554, !dbg !1511

; <label>:538:                                    ; preds = %534
  %539 = icmp ult i64 %526, %533, !dbg !1513
  br i1 %539, label %540, label %542, !dbg !1517

; <label>:540:                                    ; preds = %538
  %541 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !1513
  store i8 39, i8* %541, align 1, !dbg !1513, !tbaa !1146
  br label %542, !dbg !1513

; <label>:542:                                    ; preds = %540, %538
  %543 = add i64 %526, 1, !dbg !1517
  call void @llvm.dbg.value(metadata i64 %543, metadata !1061, metadata !DIExpression()), !dbg !1124
  %544 = icmp ult i64 %543, %533, !dbg !1518
  br i1 %544, label %545, label %547, !dbg !1521

; <label>:545:                                    ; preds = %542
  %546 = getelementptr inbounds i8, i8* %0, i64 %543, !dbg !1518
  store i8 36, i8* %546, align 1, !dbg !1518, !tbaa !1146
  br label %547, !dbg !1518

; <label>:547:                                    ; preds = %545, %542
  %548 = add i64 %526, 2, !dbg !1521
  call void @llvm.dbg.value(metadata i64 %548, metadata !1061, metadata !DIExpression()), !dbg !1124
  %549 = icmp ult i64 %548, %533, !dbg !1522
  br i1 %549, label %550, label %552, !dbg !1525

; <label>:550:                                    ; preds = %547
  %551 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !1522
  store i8 39, i8* %551, align 1, !dbg !1522, !tbaa !1146
  br label %552, !dbg !1522

; <label>:552:                                    ; preds = %550, %547
  %553 = add i64 %526, 3, !dbg !1525
  call void @llvm.dbg.value(metadata i64 %553, metadata !1061, metadata !DIExpression()), !dbg !1124
  call void @llvm.dbg.value(metadata i8 1, metadata !1068, metadata !DIExpression()), !dbg !1132
  br label %554, !dbg !1526

; <label>:554:                                    ; preds = %534, %552
  %555 = phi i64 [ %553, %552 ], [ %526, %534 ], !dbg !1483
  %556 = phi i8 [ 1, %552 ], [ %529, %534 ], !dbg !1184
  call void @llvm.dbg.value(metadata i8 %556, metadata !1068, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata i64 %555, metadata !1061, metadata !DIExpression()), !dbg !1124
  %557 = icmp ult i64 %555, %533, !dbg !1527
  br i1 %557, label %558, label %560, !dbg !1530

; <label>:558:                                    ; preds = %554
  %559 = getelementptr inbounds i8, i8* %0, i64 %555, !dbg !1527
  store i8 92, i8* %559, align 1, !dbg !1527, !tbaa !1146
  br label %560, !dbg !1527

; <label>:560:                                    ; preds = %554, %558
  %561 = add i64 %555, 1, !dbg !1530
  call void @llvm.dbg.value(metadata i64 %561, metadata !1061, metadata !DIExpression()), !dbg !1124
  call void @llvm.dbg.value(metadata i64 %572, metadata !1052, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i8 %571, metadata !1078, metadata !DIExpression()), !dbg !1196
  call void @llvm.dbg.value(metadata i8 %570, metadata !1077, metadata !DIExpression()), !dbg !1195
  call void @llvm.dbg.value(metadata i8 %569, metadata !1071, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.value(metadata i8 %568, metadata !1069, metadata !DIExpression()), !dbg !1133
  call void @llvm.dbg.value(metadata i8 %567, metadata !1068, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata i64 %566, metadata !1054, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata i64 %565, metadata !1062, metadata !DIExpression()), !dbg !1125
  call void @llvm.dbg.value(metadata i64 %564, metadata !1061, metadata !DIExpression()), !dbg !1124
  call void @llvm.dbg.value(metadata i64 %563, metadata !1060, metadata !DIExpression()), !dbg !1185
  br label %589, !dbg !1531

; <label>:562:                                    ; preds = %432, %252, %490, %251, %512
  %563 = phi i64 [ %522, %512 ], [ %122, %251 ], [ %500, %490 ], [ %122, %252 ], [ %371, %432 ], !dbg !1505
  %564 = phi i64 [ %521, %512 ], [ %123, %251 ], [ %499, %490 ], [ %123, %252 ], [ %433, %432 ], !dbg !1184
  %565 = phi i64 [ %520, %512 ], [ %124, %251 ], [ %498, %490 ], [ %124, %252 ], [ %124, %432 ], !dbg !1125
  %566 = phi i64 [ %519, %512 ], [ %154, %251 ], [ %497, %490 ], [ %154, %252 ], [ %360, %432 ], !dbg !1493
  %567 = phi i8 [ %518, %512 ], [ %126, %251 ], [ %496, %490 ], [ %126, %252 ], [ %434, %432 ], !dbg !1132
  %568 = phi i8 [ %517, %512 ], [ %127, %251 ], [ %495, %490 ], [ %127, %252 ], [ %127, %432 ], !dbg !1133
  %569 = phi i8 [ %516, %512 ], [ 92, %251 ], [ %494, %490 ], [ 92, %252 ], [ %435, %432 ], !dbg !1534
  %570 = phi i8 [ %515, %512 ], [ 0, %251 ], [ %493, %490 ], [ 0, %252 ], [ %437, %432 ], !dbg !1209
  %571 = phi i8 [ %514, %512 ], [ 0, %251 ], [ %492, %490 ], [ 0, %252 ], [ %363, %432 ], !dbg !1209
  %572 = phi i64 [ %513, %512 ], [ %129, %251 ], [ %491, %490 ], [ %129, %252 ], [ %129, %432 ]
  call void @llvm.dbg.value(metadata i64 %572, metadata !1052, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i8 %571, metadata !1078, metadata !DIExpression()), !dbg !1196
  call void @llvm.dbg.value(metadata i8 %570, metadata !1077, metadata !DIExpression()), !dbg !1195
  call void @llvm.dbg.value(metadata i8 %569, metadata !1071, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.value(metadata i8 %568, metadata !1069, metadata !DIExpression()), !dbg !1133
  call void @llvm.dbg.value(metadata i8 %567, metadata !1068, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata i64 %566, metadata !1054, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata i64 %565, metadata !1062, metadata !DIExpression()), !dbg !1125
  call void @llvm.dbg.value(metadata i64 %564, metadata !1061, metadata !DIExpression()), !dbg !1124
  call void @llvm.dbg.value(metadata i64 %563, metadata !1060, metadata !DIExpression()), !dbg !1185
  %573 = and i8 %567, 1, !dbg !1531
  %574 = icmp ne i8 %573, 0, !dbg !1531
  %575 = and i8 %570, 1, !dbg !1531
  %576 = icmp eq i8 %575, 0, !dbg !1531
  %577 = and i1 %574, %576, !dbg !1531
  br i1 %577, label %578, label %589, !dbg !1531

; <label>:578:                                    ; preds = %562
  %579 = icmp ult i64 %564, %572, !dbg !1535
  br i1 %579, label %580, label %582, !dbg !1539

; <label>:580:                                    ; preds = %578
  %581 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !1535
  store i8 39, i8* %581, align 1, !dbg !1535, !tbaa !1146
  br label %582, !dbg !1535

; <label>:582:                                    ; preds = %580, %578
  %583 = add i64 %564, 1, !dbg !1539
  call void @llvm.dbg.value(metadata i64 %583, metadata !1061, metadata !DIExpression()), !dbg !1124
  %584 = icmp ult i64 %583, %572, !dbg !1540
  br i1 %584, label %585, label %587, !dbg !1543

; <label>:585:                                    ; preds = %582
  %586 = getelementptr inbounds i8, i8* %0, i64 %583, !dbg !1540
  store i8 39, i8* %586, align 1, !dbg !1540, !tbaa !1146
  br label %587, !dbg !1540

; <label>:587:                                    ; preds = %585, %582
  %588 = add i64 %564, 2, !dbg !1543
  call void @llvm.dbg.value(metadata i64 %588, metadata !1061, metadata !DIExpression()), !dbg !1124
  call void @llvm.dbg.value(metadata i8 0, metadata !1068, metadata !DIExpression()), !dbg !1132
  br label %589, !dbg !1544

; <label>:589:                                    ; preds = %560, %562, %587
  %590 = phi i64 [ %572, %587 ], [ %572, %562 ], [ %533, %560 ]
  %591 = phi i8 [ %571, %587 ], [ %571, %562 ], [ %532, %560 ]
  %592 = phi i8 [ %569, %587 ], [ %569, %562 ], [ %531, %560 ]
  %593 = phi i8 [ %568, %587 ], [ %568, %562 ], [ %530, %560 ]
  %594 = phi i64 [ %566, %587 ], [ %566, %562 ], [ %528, %560 ]
  %595 = phi i64 [ %565, %587 ], [ %565, %562 ], [ %527, %560 ]
  %596 = phi i64 [ %563, %587 ], [ %563, %562 ], [ %525, %560 ]
  %597 = phi i64 [ %588, %587 ], [ %564, %562 ], [ %561, %560 ], !dbg !1483
  %598 = phi i8 [ 0, %587 ], [ %567, %562 ], [ %556, %560 ], !dbg !1184
  call void @llvm.dbg.value(metadata i8 %598, metadata !1068, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata i64 %597, metadata !1061, metadata !DIExpression()), !dbg !1124
  %599 = icmp ult i64 %597, %590, !dbg !1545
  br i1 %599, label %600, label %602, !dbg !1548

; <label>:600:                                    ; preds = %589
  %601 = getelementptr inbounds i8, i8* %0, i64 %597, !dbg !1545
  store i8 %592, i8* %601, align 1, !dbg !1545, !tbaa !1146
  br label %602, !dbg !1545

; <label>:602:                                    ; preds = %600, %589
  %603 = add i64 %597, 1, !dbg !1548
  call void @llvm.dbg.value(metadata i64 %603, metadata !1061, metadata !DIExpression()), !dbg !1124
  %604 = and i8 %591, 1, !dbg !1549
  %605 = icmp eq i8 %604, 0, !dbg !1549
  %606 = select i1 %605, i8 0, i8 %128, !dbg !1551
  call void @llvm.dbg.value(metadata i8 %606, metadata !1070, metadata !DIExpression()), !dbg !1134
  br label %607, !dbg !1552

; <label>:607:                                    ; preds = %602, %207
  %608 = phi i64 [ %596, %602 ], [ %122, %207 ], !dbg !1505
  %609 = phi i64 [ %603, %602 ], [ %123, %207 ], !dbg !1184
  %610 = phi i64 [ %595, %602 ], [ %124, %207 ], !dbg !1125
  %611 = phi i64 [ %594, %602 ], [ %154, %207 ], !dbg !1493
  %612 = phi i8 [ %598, %602 ], [ %126, %207 ], !dbg !1132
  %613 = phi i8 [ %593, %602 ], [ %127, %207 ], !dbg !1184
  %614 = phi i8 [ %606, %602 ], [ %128, %207 ], !dbg !1134
  %615 = phi i64 [ %590, %602 ], [ %129, %207 ]
  call void @llvm.dbg.value(metadata i64 %615, metadata !1052, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i8 %614, metadata !1070, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata i8 %613, metadata !1069, metadata !DIExpression()), !dbg !1133
  call void @llvm.dbg.value(metadata i8 %612, metadata !1068, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata i64 %611, metadata !1054, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata i64 %610, metadata !1062, metadata !DIExpression()), !dbg !1125
  call void @llvm.dbg.value(metadata i64 %609, metadata !1061, metadata !DIExpression()), !dbg !1124
  call void @llvm.dbg.value(metadata i64 %608, metadata !1060, metadata !DIExpression()), !dbg !1185
  %616 = add i64 %608, 1, !dbg !1553
  call void @llvm.dbg.value(metadata i64 %616, metadata !1060, metadata !DIExpression()), !dbg !1185
  br label %121, !dbg !1554, !llvm.loop !1555

; <label>:617:                                    ; preds = %131, %135
  %618 = phi i64 [ -1, %131 ], [ %122, %135 ]
  call void @llvm.dbg.value(metadata i64 %123, metadata !1061, metadata !DIExpression()), !dbg !1124
  call void @llvm.dbg.value(metadata i64 %123, metadata !1061, metadata !DIExpression()), !dbg !1124
  call void @llvm.dbg.value(metadata i64 %124, metadata !1062, metadata !DIExpression()), !dbg !1125
  call void @llvm.dbg.value(metadata i64 %124, metadata !1062, metadata !DIExpression()), !dbg !1125
  call void @llvm.dbg.value(metadata i8 %126, metadata !1068, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata i8 %126, metadata !1068, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata i8 %127, metadata !1069, metadata !DIExpression()), !dbg !1133
  call void @llvm.dbg.value(metadata i8 %127, metadata !1069, metadata !DIExpression()), !dbg !1133
  call void @llvm.dbg.value(metadata i8 %128, metadata !1070, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata i8 %128, metadata !1070, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata i64 %129, metadata !1052, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i64 %129, metadata !1052, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i64 %123, metadata !1061, metadata !DIExpression()), !dbg !1124
  call void @llvm.dbg.value(metadata i64 %123, metadata !1061, metadata !DIExpression()), !dbg !1124
  call void @llvm.dbg.value(metadata i64 %124, metadata !1062, metadata !DIExpression()), !dbg !1125
  call void @llvm.dbg.value(metadata i64 %124, metadata !1062, metadata !DIExpression()), !dbg !1125
  call void @llvm.dbg.value(metadata i8 %126, metadata !1068, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata i8 %126, metadata !1068, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata i8 %127, metadata !1069, metadata !DIExpression()), !dbg !1133
  call void @llvm.dbg.value(metadata i8 %127, metadata !1069, metadata !DIExpression()), !dbg !1133
  call void @llvm.dbg.value(metadata i8 %128, metadata !1070, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata i8 %128, metadata !1070, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata i64 %129, metadata !1052, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i64 %129, metadata !1052, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i64 %123, metadata !1061, metadata !DIExpression()), !dbg !1124
  call void @llvm.dbg.value(metadata i64 %123, metadata !1061, metadata !DIExpression()), !dbg !1124
  call void @llvm.dbg.value(metadata i64 %124, metadata !1062, metadata !DIExpression()), !dbg !1125
  call void @llvm.dbg.value(metadata i64 %124, metadata !1062, metadata !DIExpression()), !dbg !1125
  call void @llvm.dbg.value(metadata i8 %126, metadata !1068, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata i8 %126, metadata !1068, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata i8 %127, metadata !1069, metadata !DIExpression()), !dbg !1133
  call void @llvm.dbg.value(metadata i8 %127, metadata !1069, metadata !DIExpression()), !dbg !1133
  call void @llvm.dbg.value(metadata i8 %128, metadata !1070, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata i8 %128, metadata !1070, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata i64 %129, metadata !1052, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i64 %129, metadata !1052, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i64 %123, metadata !1061, metadata !DIExpression()), !dbg !1124
  call void @llvm.dbg.value(metadata i64 %123, metadata !1061, metadata !DIExpression()), !dbg !1124
  call void @llvm.dbg.value(metadata i64 %124, metadata !1062, metadata !DIExpression()), !dbg !1125
  call void @llvm.dbg.value(metadata i64 %124, metadata !1062, metadata !DIExpression()), !dbg !1125
  call void @llvm.dbg.value(metadata i8 %126, metadata !1068, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata i8 %126, metadata !1068, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata i8 %127, metadata !1069, metadata !DIExpression()), !dbg !1133
  call void @llvm.dbg.value(metadata i8 %127, metadata !1069, metadata !DIExpression()), !dbg !1133
  call void @llvm.dbg.value(metadata i8 %128, metadata !1070, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata i8 %128, metadata !1070, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata i64 %129, metadata !1052, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i64 %129, metadata !1052, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i64 %123, metadata !1061, metadata !DIExpression()), !dbg !1124
  call void @llvm.dbg.value(metadata i64 %123, metadata !1061, metadata !DIExpression()), !dbg !1124
  call void @llvm.dbg.value(metadata i64 %124, metadata !1062, metadata !DIExpression()), !dbg !1125
  call void @llvm.dbg.value(metadata i64 %124, metadata !1062, metadata !DIExpression()), !dbg !1125
  call void @llvm.dbg.value(metadata i64 %618, metadata !1054, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata i64 %618, metadata !1054, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata i8 %126, metadata !1068, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata i8 %126, metadata !1068, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata i8 %127, metadata !1069, metadata !DIExpression()), !dbg !1133
  call void @llvm.dbg.value(metadata i8 %127, metadata !1069, metadata !DIExpression()), !dbg !1133
  call void @llvm.dbg.value(metadata i8 %128, metadata !1070, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata i8 %128, metadata !1070, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata i64 %129, metadata !1052, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i64 %129, metadata !1052, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i64 %123, metadata !1061, metadata !DIExpression()), !dbg !1124
  call void @llvm.dbg.value(metadata i64 %123, metadata !1061, metadata !DIExpression()), !dbg !1124
  call void @llvm.dbg.value(metadata i64 %124, metadata !1062, metadata !DIExpression()), !dbg !1125
  call void @llvm.dbg.value(metadata i64 %124, metadata !1062, metadata !DIExpression()), !dbg !1125
  call void @llvm.dbg.value(metadata i64 %125, metadata !1054, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata i64 %125, metadata !1054, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata i8 %126, metadata !1068, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata i8 %126, metadata !1068, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata i8 %127, metadata !1069, metadata !DIExpression()), !dbg !1133
  call void @llvm.dbg.value(metadata i8 %127, metadata !1069, metadata !DIExpression()), !dbg !1133
  call void @llvm.dbg.value(metadata i8 %128, metadata !1070, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata i8 %128, metadata !1070, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata i64 %129, metadata !1052, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i64 %129, metadata !1052, metadata !DIExpression()), !dbg !1116
  %619 = icmp eq i64 %123, 0, !dbg !1557
  %620 = and i1 %114, %619, !dbg !1559
  %621 = xor i1 %620, true, !dbg !1559
  %622 = or i1 %110, %621, !dbg !1559
  br i1 %622, label %623, label %661, !dbg !1559

; <label>:623:                                    ; preds = %617
  %624 = and i1 %114, %110, !dbg !1560
  %625 = xor i1 %624, true, !dbg !1560
  %626 = and i8 %127, 1, !dbg !1562
  %627 = icmp eq i8 %626, 0, !dbg !1562
  %628 = or i1 %627, %625, !dbg !1560
  br i1 %628, label %638, label %629, !dbg !1560

; <label>:629:                                    ; preds = %623
  %630 = and i8 %128, 1, !dbg !1563
  %631 = icmp eq i8 %630, 0, !dbg !1563
  br i1 %631, label %634, label %632, !dbg !1566

; <label>:632:                                    ; preds = %629
  call void @llvm.dbg.value(metadata i64 %618, metadata !1054, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata i8* %95, metadata !1058, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata i8* %96, metadata !1059, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata i64 %124, metadata !1062, metadata !DIExpression()), !dbg !1125
  call void @llvm.dbg.value(metadata i64 %618, metadata !1054, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata i8* %95, metadata !1058, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata i8* %96, metadata !1059, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata i64 %124, metadata !1062, metadata !DIExpression()), !dbg !1125
  call void @llvm.dbg.value(metadata i64 %618, metadata !1054, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata i8* %95, metadata !1058, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata i8* %96, metadata !1059, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata i64 %124, metadata !1062, metadata !DIExpression()), !dbg !1125
  call void @llvm.dbg.value(metadata i64 %618, metadata !1054, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata i8* %95, metadata !1058, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata i8* %96, metadata !1059, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata i64 %124, metadata !1062, metadata !DIExpression()), !dbg !1125
  call void @llvm.dbg.value(metadata i8* %95, metadata !1058, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata i8* %96, metadata !1059, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata i64 %124, metadata !1062, metadata !DIExpression()), !dbg !1125
  call void @llvm.dbg.value(metadata i64 %618, metadata !1054, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata i8* %95, metadata !1058, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata i8* %96, metadata !1059, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata i64 %124, metadata !1062, metadata !DIExpression()), !dbg !1125
  call void @llvm.dbg.value(metadata i64 %125, metadata !1054, metadata !DIExpression()), !dbg !1118
  %633 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %618, i32 5, i32 %5, i32* %6, i8* %95, i8* %96), !dbg !1567
  br label %671, !dbg !1568

; <label>:634:                                    ; preds = %629
  %635 = icmp eq i64 %129, 0, !dbg !1569
  %636 = icmp ne i64 %124, 0, !dbg !1571
  %637 = and i1 %636, %635, !dbg !1572
  br i1 %637, label %27, label %638, !dbg !1572

; <label>:638:                                    ; preds = %623, %634
  call void @llvm.dbg.value(metadata i8* %98, metadata !1063, metadata !DIExpression()), !dbg !1126
  call void @llvm.dbg.value(metadata i8* %98, metadata !1063, metadata !DIExpression()), !dbg !1126
  call void @llvm.dbg.value(metadata i64 %123, metadata !1061, metadata !DIExpression()), !dbg !1124
  call void @llvm.dbg.value(metadata i64 %123, metadata !1061, metadata !DIExpression()), !dbg !1124
  call void @llvm.dbg.value(metadata i64 %129, metadata !1052, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i64 %129, metadata !1052, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i8* %98, metadata !1063, metadata !DIExpression()), !dbg !1126
  call void @llvm.dbg.value(metadata i8* %98, metadata !1063, metadata !DIExpression()), !dbg !1126
  call void @llvm.dbg.value(metadata i64 %123, metadata !1061, metadata !DIExpression()), !dbg !1124
  call void @llvm.dbg.value(metadata i64 %123, metadata !1061, metadata !DIExpression()), !dbg !1124
  call void @llvm.dbg.value(metadata i64 %129, metadata !1052, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i64 %129, metadata !1052, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i8* %98, metadata !1063, metadata !DIExpression()), !dbg !1126
  call void @llvm.dbg.value(metadata i8* %98, metadata !1063, metadata !DIExpression()), !dbg !1126
  call void @llvm.dbg.value(metadata i64 %123, metadata !1061, metadata !DIExpression()), !dbg !1124
  call void @llvm.dbg.value(metadata i64 %123, metadata !1061, metadata !DIExpression()), !dbg !1124
  call void @llvm.dbg.value(metadata i64 %129, metadata !1052, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i64 %129, metadata !1052, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i8* %98, metadata !1063, metadata !DIExpression()), !dbg !1126
  call void @llvm.dbg.value(metadata i8* %98, metadata !1063, metadata !DIExpression()), !dbg !1126
  call void @llvm.dbg.value(metadata i64 %123, metadata !1061, metadata !DIExpression()), !dbg !1124
  call void @llvm.dbg.value(metadata i64 %123, metadata !1061, metadata !DIExpression()), !dbg !1124
  call void @llvm.dbg.value(metadata i64 %129, metadata !1052, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i64 %129, metadata !1052, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i8* %98, metadata !1063, metadata !DIExpression()), !dbg !1126
  call void @llvm.dbg.value(metadata i8* %98, metadata !1063, metadata !DIExpression()), !dbg !1126
  call void @llvm.dbg.value(metadata i64 %123, metadata !1061, metadata !DIExpression()), !dbg !1124
  call void @llvm.dbg.value(metadata i64 %123, metadata !1061, metadata !DIExpression()), !dbg !1124
  call void @llvm.dbg.value(metadata i64 %129, metadata !1052, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i64 %129, metadata !1052, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i8* %98, metadata !1063, metadata !DIExpression()), !dbg !1126
  call void @llvm.dbg.value(metadata i8* %98, metadata !1063, metadata !DIExpression()), !dbg !1126
  call void @llvm.dbg.value(metadata i64 %123, metadata !1061, metadata !DIExpression()), !dbg !1124
  call void @llvm.dbg.value(metadata i64 %123, metadata !1061, metadata !DIExpression()), !dbg !1124
  call void @llvm.dbg.value(metadata i64 %129, metadata !1052, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i64 %129, metadata !1052, metadata !DIExpression()), !dbg !1116
  %639 = icmp ne i8* %98, null, !dbg !1573
  %640 = and i1 %639, %110, !dbg !1575
  br i1 %640, label %641, label %656, !dbg !1575

; <label>:641:                                    ; preds = %638
  call void @llvm.dbg.value(metadata i8* %98, metadata !1063, metadata !DIExpression()), !dbg !1126
  call void @llvm.dbg.value(metadata i64 %123, metadata !1061, metadata !DIExpression()), !dbg !1124
  %642 = load i8, i8* %98, align 1, !dbg !1576, !tbaa !1146
  %643 = icmp eq i8 %642, 0, !dbg !1579
  br i1 %643, label %656, label %644, !dbg !1579

; <label>:644:                                    ; preds = %641, %651
  %645 = phi i8 [ %654, %651 ], [ %642, %641 ]
  %646 = phi i8* [ %653, %651 ], [ %98, %641 ]
  %647 = phi i64 [ %652, %651 ], [ %123, %641 ]
  call void @llvm.dbg.value(metadata i8* %646, metadata !1063, metadata !DIExpression()), !dbg !1126
  call void @llvm.dbg.value(metadata i64 %647, metadata !1061, metadata !DIExpression()), !dbg !1124
  %648 = icmp ult i64 %647, %129, !dbg !1580
  br i1 %648, label %649, label %651, !dbg !1583

; <label>:649:                                    ; preds = %644
  %650 = getelementptr inbounds i8, i8* %0, i64 %647, !dbg !1580
  store i8 %645, i8* %650, align 1, !dbg !1580, !tbaa !1146
  br label %651, !dbg !1580

; <label>:651:                                    ; preds = %649, %644
  %652 = add i64 %647, 1, !dbg !1583
  %653 = getelementptr inbounds i8, i8* %646, i64 1, !dbg !1584
  call void @llvm.dbg.value(metadata i8* %653, metadata !1063, metadata !DIExpression()), !dbg !1126
  call void @llvm.dbg.value(metadata i64 %652, metadata !1061, metadata !DIExpression()), !dbg !1124
  %654 = load i8, i8* %653, align 1, !dbg !1576, !tbaa !1146
  %655 = icmp eq i8 %654, 0, !dbg !1579
  br i1 %655, label %656, label %644, !dbg !1579, !llvm.loop !1585

; <label>:656:                                    ; preds = %651, %641, %638
  %657 = phi i64 [ %123, %638 ], [ %123, %641 ], [ %652, %651 ], !dbg !1124
  call void @llvm.dbg.value(metadata i64 %657, metadata !1061, metadata !DIExpression()), !dbg !1124
  %658 = icmp ult i64 %657, %129, !dbg !1587
  br i1 %658, label %659, label %671, !dbg !1589

; <label>:659:                                    ; preds = %656
  %660 = getelementptr inbounds i8, i8* %0, i64 %657, !dbg !1590
  store i8 0, i8* %660, align 1, !dbg !1591, !tbaa !1146
  br label %671, !dbg !1590

; <label>:661:                                    ; preds = %617, %524, %274, %271, %253, %251, %223, %209, %159, %146, %377, %358
  %662 = phi i32 [ 2, %358 ], [ %94, %377 ], [ %94, %146 ], [ %94, %159 ], [ 2, %209 ], [ 5, %223 ], [ 2, %251 ], [ 2, %253 ], [ 2, %271 ], [ 2, %274 ], [ %94, %524 ], [ %94, %617 ]
  %663 = phi i64 [ %311, %358 ], [ %360, %377 ], [ %144, %146 ], [ %154, %159 ], [ %154, %209 ], [ %154, %223 ], [ %154, %251 ], [ %154, %253 ], [ %154, %271 ], [ %154, %274 ], [ %528, %524 ], [ %618, %617 ]
  %664 = phi i64 [ %129, %358 ], [ %129, %377 ], [ %129, %146 ], [ %129, %159 ], [ %129, %209 ], [ %129, %223 ], [ %129, %251 ], [ %129, %253 ], [ %129, %271 ], [ %129, %274 ], [ %533, %524 ], [ %129, %617 ]
  call void @llvm.dbg.value(metadata i64 %664, metadata !1052, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i64 %663, metadata !1054, metadata !DIExpression()), !dbg !1118
  %665 = icmp ne i32 %662, 2, !dbg !1592
  %666 = icmp eq i8 %102, 0, !dbg !1594
  %667 = or i1 %665, %666, !dbg !1595
  call void @llvm.dbg.value(metadata i32 4, metadata !1055, metadata !DIExpression()), !dbg !1119
  %668 = select i1 %667, i32 %662, i32 4, !dbg !1595
  call void @llvm.dbg.value(metadata i32 %668, metadata !1055, metadata !DIExpression()), !dbg !1119
  %669 = and i32 %5, -3, !dbg !1596
  %670 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %664, i8* %2, i64 %663, i32 %668, i32 %669, i32* null, i8* %95, i8* %96), !dbg !1597
  br label %671, !dbg !1598

; <label>:671:                                    ; preds = %656, %659, %661, %632
  %672 = phi i64 [ %670, %661 ], [ %633, %632 ], [ %657, %659 ], [ %657, %656 ]
  ret i64 %672, !dbg !1599
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #7 !dbg !1600 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1604, metadata !DIExpression()), !dbg !1608
  call void @llvm.dbg.value(metadata i32 %1, metadata !1605, metadata !DIExpression()), !dbg !1609
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #10, !dbg !1610
  call void @llvm.dbg.value(metadata i8* %3, metadata !1606, metadata !DIExpression()), !dbg !1611
  %4 = icmp eq i8* %3, %0, !dbg !1612
  br i1 %4, label %5, label %71, !dbg !1614

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #10, !dbg !1615
  call void @llvm.dbg.value(metadata i8* %6, metadata !1607, metadata !DIExpression()), !dbg !1616
  call void @llvm.dbg.value(metadata i8* %6, metadata !1617, metadata !DIExpression()), !dbg !1633
  call void @llvm.dbg.value(metadata i8* null, metadata !1623, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i8 85, metadata !1624, metadata !DIExpression()), !dbg !1637
  call void @llvm.dbg.value(metadata i8 84, metadata !1625, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 70, metadata !1626, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i8 45, metadata !1627, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata i8 56, metadata !1628, metadata !DIExpression()), !dbg !1641
  call void @llvm.dbg.value(metadata i8 0, metadata !1629, metadata !DIExpression()), !dbg !1642
  call void @llvm.dbg.value(metadata i8 0, metadata !1630, metadata !DIExpression()), !dbg !1643
  call void @llvm.dbg.value(metadata i8 0, metadata !1631, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i8 0, metadata !1632, metadata !DIExpression()), !dbg !1645
  %7 = load i8, i8* %6, align 1, !dbg !1646, !tbaa !1146
  %8 = and i8 %7, -33, !dbg !1646
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !1646

; <label>:9:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1648, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8* null, metadata !1653, metadata !DIExpression()), !dbg !1666
  call void @llvm.dbg.value(metadata i8 84, metadata !1654, metadata !DIExpression()), !dbg !1667
  call void @llvm.dbg.value(metadata i8 70, metadata !1655, metadata !DIExpression()), !dbg !1668
  call void @llvm.dbg.value(metadata i8 45, metadata !1656, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i8 56, metadata !1657, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata i8 0, metadata !1658, metadata !DIExpression()), !dbg !1671
  call void @llvm.dbg.value(metadata i8 0, metadata !1659, metadata !DIExpression()), !dbg !1672
  call void @llvm.dbg.value(metadata i8 0, metadata !1660, metadata !DIExpression()), !dbg !1673
  call void @llvm.dbg.value(metadata i8 0, metadata !1661, metadata !DIExpression()), !dbg !1674
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1675
  %11 = load i8, i8* %10, align 1, !dbg !1675, !tbaa !1146
  %12 = and i8 %11, -33, !dbg !1675
  %13 = icmp eq i8 %12, 84, !dbg !1675
  br i1 %13, label %14, label %68, !dbg !1675

; <label>:14:                                     ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !1677, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.value(metadata i8* null, metadata !1682, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata i8 70, metadata !1683, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata i8 45, metadata !1684, metadata !DIExpression()), !dbg !1696
  call void @llvm.dbg.value(metadata i8 56, metadata !1685, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.value(metadata i8 0, metadata !1686, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8 0, metadata !1687, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata i8 0, metadata !1688, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata i8 0, metadata !1689, metadata !DIExpression()), !dbg !1701
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1702
  %16 = load i8, i8* %15, align 1, !dbg !1702, !tbaa !1146
  %17 = and i8 %16, -33, !dbg !1702
  %18 = icmp eq i8 %17, 70, !dbg !1702
  br i1 %18, label %19, label %68, !dbg !1702

; <label>:19:                                     ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !1704, metadata !DIExpression()), !dbg !1716
  call void @llvm.dbg.value(metadata i8* null, metadata !1709, metadata !DIExpression()), !dbg !1720
  call void @llvm.dbg.value(metadata i8 45, metadata !1710, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i8 56, metadata !1711, metadata !DIExpression()), !dbg !1722
  call void @llvm.dbg.value(metadata i8 0, metadata !1712, metadata !DIExpression()), !dbg !1723
  call void @llvm.dbg.value(metadata i8 0, metadata !1713, metadata !DIExpression()), !dbg !1724
  call void @llvm.dbg.value(metadata i8 0, metadata !1714, metadata !DIExpression()), !dbg !1725
  call void @llvm.dbg.value(metadata i8 0, metadata !1715, metadata !DIExpression()), !dbg !1726
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1727
  %21 = load i8, i8* %20, align 1, !dbg !1727, !tbaa !1146
  %22 = icmp eq i8 %21, 45, !dbg !1727
  br i1 %22, label %23, label %68, !dbg !1729

; <label>:23:                                     ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !1730, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.value(metadata i8* null, metadata !1735, metadata !DIExpression()), !dbg !1745
  call void @llvm.dbg.value(metadata i8 56, metadata !1736, metadata !DIExpression()), !dbg !1746
  call void @llvm.dbg.value(metadata i8 0, metadata !1737, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 0, metadata !1738, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i8 0, metadata !1739, metadata !DIExpression()), !dbg !1749
  call void @llvm.dbg.value(metadata i8 0, metadata !1740, metadata !DIExpression()), !dbg !1750
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1751
  %25 = load i8, i8* %24, align 1, !dbg !1751, !tbaa !1146
  %26 = icmp eq i8 %25, 56, !dbg !1751
  br i1 %26, label %27, label %68, !dbg !1753

; <label>:27:                                     ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !1754, metadata !DIExpression()), !dbg !1764
  call void @llvm.dbg.value(metadata i8* null, metadata !1759, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i8 0, metadata !1760, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.value(metadata i8 0, metadata !1761, metadata !DIExpression()), !dbg !1770
  call void @llvm.dbg.value(metadata i8 0, metadata !1762, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i8 0, metadata !1763, metadata !DIExpression()), !dbg !1772
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1773
  %29 = load i8, i8* %28, align 1, !dbg !1773, !tbaa !1146
  %30 = icmp eq i8 %29, 0, !dbg !1773
  br i1 %30, label %31, label %68, !dbg !1775

; <label>:31:                                     ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !1776, !tbaa !1146
  %33 = icmp eq i8 %32, 96, !dbg !1777
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.62, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.63, i64 0, i64 0), !dbg !1776
  br label %71, !dbg !1778

; <label>:35:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1648, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i8* null, metadata !1653, metadata !DIExpression()), !dbg !1783
  call void @llvm.dbg.value(metadata i8 66, metadata !1654, metadata !DIExpression()), !dbg !1784
  call void @llvm.dbg.value(metadata i8 49, metadata !1655, metadata !DIExpression()), !dbg !1785
  call void @llvm.dbg.value(metadata i8 56, metadata !1656, metadata !DIExpression()), !dbg !1786
  call void @llvm.dbg.value(metadata i8 48, metadata !1657, metadata !DIExpression()), !dbg !1787
  call void @llvm.dbg.value(metadata i8 51, metadata !1658, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i8 48, metadata !1659, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata i8 0, metadata !1660, metadata !DIExpression()), !dbg !1790
  call void @llvm.dbg.value(metadata i8 0, metadata !1661, metadata !DIExpression()), !dbg !1791
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1792
  %37 = load i8, i8* %36, align 1, !dbg !1792, !tbaa !1146
  %38 = and i8 %37, -33, !dbg !1792
  %39 = icmp eq i8 %38, 66, !dbg !1792
  br i1 %39, label %40, label %68, !dbg !1792

; <label>:40:                                     ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !1677, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i8* null, metadata !1682, metadata !DIExpression()), !dbg !1795
  call void @llvm.dbg.value(metadata i8 49, metadata !1683, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i8 56, metadata !1684, metadata !DIExpression()), !dbg !1797
  call void @llvm.dbg.value(metadata i8 48, metadata !1685, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 51, metadata !1686, metadata !DIExpression()), !dbg !1799
  call void @llvm.dbg.value(metadata i8 48, metadata !1687, metadata !DIExpression()), !dbg !1800
  call void @llvm.dbg.value(metadata i8 0, metadata !1688, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i8 0, metadata !1689, metadata !DIExpression()), !dbg !1802
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1803
  %42 = load i8, i8* %41, align 1, !dbg !1803, !tbaa !1146
  %43 = icmp eq i8 %42, 49, !dbg !1803
  br i1 %43, label %44, label %68, !dbg !1804

; <label>:44:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !1704, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i8* null, metadata !1709, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i8 56, metadata !1710, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i8 48, metadata !1711, metadata !DIExpression()), !dbg !1809
  call void @llvm.dbg.value(metadata i8 51, metadata !1712, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i8 48, metadata !1713, metadata !DIExpression()), !dbg !1811
  call void @llvm.dbg.value(metadata i8 0, metadata !1714, metadata !DIExpression()), !dbg !1812
  call void @llvm.dbg.value(metadata i8 0, metadata !1715, metadata !DIExpression()), !dbg !1813
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1814
  %46 = load i8, i8* %45, align 1, !dbg !1814, !tbaa !1146
  %47 = icmp eq i8 %46, 56, !dbg !1814
  br i1 %47, label %48, label %68, !dbg !1815

; <label>:48:                                     ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !1730, metadata !DIExpression()), !dbg !1816
  call void @llvm.dbg.value(metadata i8* null, metadata !1735, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8 48, metadata !1736, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata i8 51, metadata !1737, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.value(metadata i8 48, metadata !1738, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata i8 0, metadata !1739, metadata !DIExpression()), !dbg !1822
  call void @llvm.dbg.value(metadata i8 0, metadata !1740, metadata !DIExpression()), !dbg !1823
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1824
  %50 = load i8, i8* %49, align 1, !dbg !1824, !tbaa !1146
  %51 = icmp eq i8 %50, 48, !dbg !1824
  br i1 %51, label %52, label %68, !dbg !1825

; <label>:52:                                     ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !1754, metadata !DIExpression()), !dbg !1826
  call void @llvm.dbg.value(metadata i8* null, metadata !1759, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i8 51, metadata !1760, metadata !DIExpression()), !dbg !1829
  call void @llvm.dbg.value(metadata i8 48, metadata !1761, metadata !DIExpression()), !dbg !1830
  call void @llvm.dbg.value(metadata i8 0, metadata !1762, metadata !DIExpression()), !dbg !1831
  call void @llvm.dbg.value(metadata i8 0, metadata !1763, metadata !DIExpression()), !dbg !1832
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1833
  %54 = load i8, i8* %53, align 1, !dbg !1833, !tbaa !1146
  %55 = icmp eq i8 %54, 51, !dbg !1833
  br i1 %55, label %56, label %68, !dbg !1834

; <label>:56:                                     ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !1835, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i8* null, metadata !1840, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i8 48, metadata !1841, metadata !DIExpression()), !dbg !1849
  call void @llvm.dbg.value(metadata i8 0, metadata !1842, metadata !DIExpression()), !dbg !1850
  call void @llvm.dbg.value(metadata i8 0, metadata !1843, metadata !DIExpression()), !dbg !1851
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !1852
  %58 = load i8, i8* %57, align 1, !dbg !1852, !tbaa !1146
  %59 = icmp eq i8 %58, 48, !dbg !1852
  br i1 %59, label %60, label %68, !dbg !1854

; <label>:60:                                     ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !1855, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i8* null, metadata !1860, metadata !DIExpression()), !dbg !1867
  call void @llvm.dbg.value(metadata i8 0, metadata !1861, metadata !DIExpression()), !dbg !1868
  call void @llvm.dbg.value(metadata i8 0, metadata !1862, metadata !DIExpression()), !dbg !1869
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !1870
  %62 = load i8, i8* %61, align 1, !dbg !1870, !tbaa !1146
  %63 = icmp eq i8 %62, 0, !dbg !1870
  br i1 %63, label %64, label %68, !dbg !1872

; <label>:64:                                     ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !1873, !tbaa !1146
  %66 = icmp eq i8 %65, 96, !dbg !1874
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.64, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.65, i64 0, i64 0), !dbg !1873
  br label %71, !dbg !1875

; <label>:68:                                     ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !1876
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.61, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.60, i64 0, i64 0), !dbg !1877
  br label %71, !dbg !1878

; <label>:71:                                     ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !1879
  ret i8* %72, !dbg !1880
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
define dso_local i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #7 !dbg !1881 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1885, metadata !DIExpression()), !dbg !1888
  call void @llvm.dbg.value(metadata i64 %1, metadata !1886, metadata !DIExpression()), !dbg !1889
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1887, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8* %0, metadata !1891, metadata !DIExpression()) #10, !dbg !1904
  call void @llvm.dbg.value(metadata i64 %1, metadata !1896, metadata !DIExpression()) #10, !dbg !1906
  call void @llvm.dbg.value(metadata i64* null, metadata !1897, metadata !DIExpression()) #10, !dbg !1907
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1898, metadata !DIExpression()) #10, !dbg !1908
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !1909
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !1909
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1899, metadata !DIExpression()) #10, !dbg !1910
  %6 = tail call i32* @__errno_location() #17, !dbg !1911
  %7 = load i32, i32* %6, align 4, !dbg !1911, !tbaa !722
  call void @llvm.dbg.value(metadata i32 %7, metadata !1900, metadata !DIExpression()) #10, !dbg !1912
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !1913
  %9 = load i32, i32* %8, align 4, !dbg !1913, !tbaa !984
  %10 = or i32 %9, 1, !dbg !1914
  call void @llvm.dbg.value(metadata i32 %10, metadata !1901, metadata !DIExpression()) #10, !dbg !1915
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1916
  %12 = load i32, i32* %11, align 8, !dbg !1916, !tbaa !924
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !1917
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1918
  %15 = load i8*, i8** %14, align 8, !dbg !1918, !tbaa !1010
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1919
  %17 = load i8*, i8** %16, align 8, !dbg !1919, !tbaa !1013
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #10, !dbg !1920
  %19 = add i64 %18, 1, !dbg !1921
  call void @llvm.dbg.value(metadata i64 %19, metadata !1902, metadata !DIExpression()) #10, !dbg !1922
  call void @llvm.dbg.value(metadata i64 %19, metadata !1923, metadata !DIExpression()) #10, !dbg !1928
  %20 = tail call noalias i8* @xmalloc(i64 %19) #10, !dbg !1930
  call void @llvm.dbg.value(metadata i8* %20, metadata !1903, metadata !DIExpression()) #10, !dbg !1931
  %21 = load i32, i32* %11, align 8, !dbg !1932, !tbaa !924
  %22 = load i8*, i8** %14, align 8, !dbg !1933, !tbaa !1010
  %23 = load i8*, i8** %16, align 8, !dbg !1934, !tbaa !1013
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #10, !dbg !1935
  store i32 %7, i32* %6, align 4, !dbg !1936, !tbaa !722
  ret i8* %20, !dbg !1937
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #7 !dbg !1892 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1891, metadata !DIExpression()), !dbg !1938
  call void @llvm.dbg.value(metadata i64 %1, metadata !1896, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i64* %2, metadata !1897, metadata !DIExpression()), !dbg !1940
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1898, metadata !DIExpression()), !dbg !1941
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !1942
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !1942
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1899, metadata !DIExpression()), !dbg !1943
  %7 = tail call i32* @__errno_location() #17, !dbg !1944
  %8 = load i32, i32* %7, align 4, !dbg !1944, !tbaa !722
  call void @llvm.dbg.value(metadata i32 %8, metadata !1900, metadata !DIExpression()), !dbg !1945
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !1946
  %10 = load i32, i32* %9, align 4, !dbg !1946, !tbaa !984
  %11 = icmp ne i64* %2, null, !dbg !1947
  %12 = xor i1 %11, true, !dbg !1947
  %13 = zext i1 %12 to i32, !dbg !1947
  %14 = or i32 %10, %13, !dbg !1948
  call void @llvm.dbg.value(metadata i32 %14, metadata !1901, metadata !DIExpression()), !dbg !1949
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !1950
  %16 = load i32, i32* %15, align 8, !dbg !1950, !tbaa !924
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !1951
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !1952
  %19 = load i8*, i8** %18, align 8, !dbg !1952, !tbaa !1010
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !1953
  %21 = load i8*, i8** %20, align 8, !dbg !1953, !tbaa !1013
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !1954
  %23 = add i64 %22, 1, !dbg !1955
  call void @llvm.dbg.value(metadata i64 %23, metadata !1902, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i64 %23, metadata !1923, metadata !DIExpression()) #10, !dbg !1957
  %24 = tail call noalias i8* @xmalloc(i64 %23) #10, !dbg !1959
  call void @llvm.dbg.value(metadata i8* %24, metadata !1903, metadata !DIExpression()), !dbg !1960
  %25 = load i32, i32* %15, align 8, !dbg !1961, !tbaa !924
  %26 = load i8*, i8** %18, align 8, !dbg !1962, !tbaa !1010
  %27 = load i8*, i8** %20, align 8, !dbg !1963, !tbaa !1013
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !1964
  store i32 %8, i32* %7, align 4, !dbg !1965, !tbaa !722
  br i1 %11, label %29, label %30, !dbg !1966

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !1967, !tbaa !1969
  br label %30, !dbg !1971

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !1972
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #7 !dbg !1973 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !1977, !tbaa !635
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !1975, metadata !DIExpression()), !dbg !1978
  call void @llvm.dbg.value(metadata i32 1, metadata !1976, metadata !DIExpression()), !dbg !1979
  %2 = load i32, i32* @nslots, align 4, !dbg !1980, !tbaa !722
  %3 = icmp sgt i32 %2, 1, !dbg !1983
  br i1 %3, label %4, label %12, !dbg !1984

; <label>:4:                                      ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !1976, metadata !DIExpression()), !dbg !1979
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !1985
  %7 = load i8*, i8** %6, align 8, !dbg !1985, !tbaa !1986
  tail call void @free(i8* %7) #10, !dbg !1988
  %8 = add nuw nsw i64 %5, 1, !dbg !1989
  call void @llvm.dbg.value(metadata i32 undef, metadata !1976, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1979
  %9 = load i32, i32* @nslots, align 4, !dbg !1980, !tbaa !722
  %10 = sext i32 %9 to i64, !dbg !1983
  %11 = icmp slt i64 %8, %10, !dbg !1983
  br i1 %11, label %4, label %12, !dbg !1984, !llvm.loop !1990

; <label>:12:                                     ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !1992
  %14 = load i8*, i8** %13, align 8, !dbg !1992, !tbaa !1986
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !1994
  br i1 %15, label %17, label %16, !dbg !1995

; <label>:16:                                     ; preds = %12
  tail call void @free(i8* %14) #10, !dbg !1996
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !1998, !tbaa !1999
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2000, !tbaa !1986
  br label %17, !dbg !2001

; <label>:17:                                     ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2002
  br i1 %18, label %21, label %19, !dbg !2004

; <label>:19:                                     ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2005
  tail call void @free(i8* %20) #10, !dbg !2007
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2008, !tbaa !635
  br label %21, !dbg !2009

; <label>:21:                                     ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !2010, !tbaa !722
  ret void, !dbg !2011
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32, i8*) local_unnamed_addr #7 !dbg !2012 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2016, metadata !DIExpression()), !dbg !2018
  call void @llvm.dbg.value(metadata i8* %1, metadata !2017, metadata !DIExpression()), !dbg !2019
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2020
  ret i8* %3, !dbg !2021
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #7 !dbg !2022 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2026, metadata !DIExpression()), !dbg !2041
  call void @llvm.dbg.value(metadata i8* %1, metadata !2027, metadata !DIExpression()), !dbg !2042
  call void @llvm.dbg.value(metadata i64 %2, metadata !2028, metadata !DIExpression()), !dbg !2043
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2029, metadata !DIExpression()), !dbg !2044
  %5 = tail call i32* @__errno_location() #17, !dbg !2045
  %6 = load i32, i32* %5, align 4, !dbg !2045, !tbaa !722
  call void @llvm.dbg.value(metadata i32 %6, metadata !2030, metadata !DIExpression()), !dbg !2046
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2047, !tbaa !635
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2031, metadata !DIExpression()), !dbg !2048
  %8 = icmp slt i32 %0, 0, !dbg !2049
  br i1 %8, label %9, label %10, !dbg !2051

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2052
  unreachable, !dbg !2052

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2053, !tbaa !722
  %12 = icmp sgt i32 %11, %0, !dbg !2054
  br i1 %12, label %34, label %13, !dbg !2055

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2056
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2035, metadata !DIExpression()), !dbg !2057
  %15 = icmp eq i32 %0, 2147483647, !dbg !2058
  br i1 %15, label %16, label %17, !dbg !2060

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2061
  unreachable, !dbg !2061

; <label>:17:                                     ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2062
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2062
  %20 = add nsw i32 %0, 1, !dbg !2063
  %21 = sext i32 %20 to i64, !dbg !2064
  %22 = shl nsw i64 %21, 4, !dbg !2065
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #10, !dbg !2066
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2066
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2031, metadata !DIExpression()), !dbg !2048
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2067, !tbaa !635
  br i1 %14, label %25, label %26, !dbg !2068

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2069, !tbaa.struct !2071
  br label %26, !dbg !2072

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2073, !tbaa !722
  %28 = sext i32 %27 to i64, !dbg !2074
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2074
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2075
  %31 = sub nsw i32 %20, %27, !dbg !2076
  %32 = sext i32 %31 to i64, !dbg !2077
  %33 = shl nsw i64 %32, 4, !dbg !2078
  tail call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 %33, i1 false), !dbg !2075
  store i32 %20, i32* @nslots, align 4, !dbg !2079, !tbaa !722
  br label %34, !dbg !2080

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2081
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2031, metadata !DIExpression()), !dbg !2048
  %36 = sext i32 %0 to i64, !dbg !2082
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2083
  %38 = load i64, i64* %37, align 8, !dbg !2083, !tbaa !1999
  call void @llvm.dbg.value(metadata i64 %38, metadata !2036, metadata !DIExpression()), !dbg !2084
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2085
  %40 = load i8*, i8** %39, align 8, !dbg !2085, !tbaa !1986
  call void @llvm.dbg.value(metadata i8* %40, metadata !2038, metadata !DIExpression()), !dbg !2086
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2087
  %42 = load i32, i32* %41, align 4, !dbg !2087, !tbaa !984
  %43 = or i32 %42, 1, !dbg !2088
  call void @llvm.dbg.value(metadata i32 %43, metadata !2039, metadata !DIExpression()), !dbg !2089
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2090
  %45 = load i32, i32* %44, align 8, !dbg !2090, !tbaa !924
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2091
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2092
  %48 = load i8*, i8** %47, align 8, !dbg !2092, !tbaa !1010
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2093
  %50 = load i8*, i8** %49, align 8, !dbg !2093, !tbaa !1013
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2094
  call void @llvm.dbg.value(metadata i64 %51, metadata !2040, metadata !DIExpression()), !dbg !2095
  %52 = icmp ugt i64 %38, %51, !dbg !2096
  br i1 %52, label %63, label %53, !dbg !2098

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2099
  call void @llvm.dbg.value(metadata i64 %54, metadata !2036, metadata !DIExpression()), !dbg !2084
  store i64 %54, i64* %37, align 8, !dbg !2101, !tbaa !1999
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2102
  br i1 %55, label %57, label %56, !dbg !2104

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #10, !dbg !2105
  br label %57, !dbg !2105

; <label>:57:                                     ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !1923, metadata !DIExpression()) #10, !dbg !2106
  %58 = tail call noalias i8* @xmalloc(i64 %54) #10, !dbg !2108
  call void @llvm.dbg.value(metadata i8* %58, metadata !2038, metadata !DIExpression()), !dbg !2086
  store i8* %58, i8** %39, align 8, !dbg !2109, !tbaa !1986
  %59 = load i32, i32* %44, align 8, !dbg !2110, !tbaa !924
  %60 = load i8*, i8** %47, align 8, !dbg !2111, !tbaa !1010
  %61 = load i8*, i8** %49, align 8, !dbg !2112, !tbaa !1013
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2113
  br label %63, !dbg !2114

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2115
  call void @llvm.dbg.value(metadata i8* %64, metadata !2038, metadata !DIExpression()), !dbg !2086
  store i32 %6, i32* %5, align 4, !dbg !2116, !tbaa !722
  ret i8* %64, !dbg !2117
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2118 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2122, metadata !DIExpression()), !dbg !2125
  call void @llvm.dbg.value(metadata i8* %1, metadata !2123, metadata !DIExpression()), !dbg !2126
  call void @llvm.dbg.value(metadata i64 %2, metadata !2124, metadata !DIExpression()), !dbg !2127
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2128
  ret i8* %4, !dbg !2129
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8*) local_unnamed_addr #7 !dbg !2130 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2134, metadata !DIExpression()), !dbg !2135
  call void @llvm.dbg.value(metadata i32 0, metadata !2016, metadata !DIExpression()) #10, !dbg !2136
  call void @llvm.dbg.value(metadata i8* %0, metadata !2017, metadata !DIExpression()) #10, !dbg !2138
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2139
  ret i8* %2, !dbg !2140
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8*, i64) local_unnamed_addr #7 !dbg !2141 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2145, metadata !DIExpression()), !dbg !2147
  call void @llvm.dbg.value(metadata i64 %1, metadata !2146, metadata !DIExpression()), !dbg !2148
  call void @llvm.dbg.value(metadata i32 0, metadata !2122, metadata !DIExpression()) #10, !dbg !2149
  call void @llvm.dbg.value(metadata i8* %0, metadata !2123, metadata !DIExpression()) #10, !dbg !2151
  call void @llvm.dbg.value(metadata i64 %1, metadata !2124, metadata !DIExpression()) #10, !dbg !2152
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2153
  ret i8* %3, !dbg !2154
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #7 !dbg !2155 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2159, metadata !DIExpression()), !dbg !2163
  call void @llvm.dbg.value(metadata i32 %1, metadata !2160, metadata !DIExpression()), !dbg !2164
  call void @llvm.dbg.value(metadata i8* %2, metadata !2161, metadata !DIExpression()), !dbg !2165
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2166
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2166
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2162, metadata !DIExpression(DW_OP_deref)), !dbg !2167
  call void @llvm.dbg.value(metadata i32 %1, metadata !2168, metadata !DIExpression()) #10, !dbg !2174
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #10, !dbg !2176, !alias.scope !2177
  %6 = icmp eq i32 %1, 10, !dbg !2180
  br i1 %6, label %7, label %8, !dbg !2182

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2183, !noalias !2177
  unreachable, !dbg !2183

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2184
  store i32 %1, i32* %9, align 8, !dbg !2185, !tbaa !924, !alias.scope !2177
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2162, metadata !DIExpression(DW_OP_deref)), !dbg !2167
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2173, metadata !DIExpression(DW_OP_deref)), !dbg !2176
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2186
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2187
  ret i8* %10, !dbg !2188
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #7 !dbg !2189 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2193, metadata !DIExpression()), !dbg !2198
  call void @llvm.dbg.value(metadata i32 %1, metadata !2194, metadata !DIExpression()), !dbg !2199
  call void @llvm.dbg.value(metadata i8* %2, metadata !2195, metadata !DIExpression()), !dbg !2200
  call void @llvm.dbg.value(metadata i64 %3, metadata !2196, metadata !DIExpression()), !dbg !2201
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2202
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2202
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2197, metadata !DIExpression(DW_OP_deref)), !dbg !2203
  call void @llvm.dbg.value(metadata i32 %1, metadata !2168, metadata !DIExpression()) #10, !dbg !2204
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %6, i8 0, i64 56, i1 false) #10, !dbg !2206, !alias.scope !2207
  %7 = icmp eq i32 %1, 10, !dbg !2210
  br i1 %7, label %8, label %9, !dbg !2211

; <label>:8:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2212, !noalias !2207
  unreachable, !dbg !2212

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2213
  store i32 %1, i32* %10, align 8, !dbg !2214, !tbaa !924, !alias.scope !2207
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2197, metadata !DIExpression(DW_OP_deref)), !dbg !2203
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2173, metadata !DIExpression(DW_OP_deref)), !dbg !2206
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2215
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2216
  ret i8* %11, !dbg !2217
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32, i8*) local_unnamed_addr #7 !dbg !2218 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2222, metadata !DIExpression()), !dbg !2224
  call void @llvm.dbg.value(metadata i8* %1, metadata !2223, metadata !DIExpression()), !dbg !2225
  call void @llvm.dbg.value(metadata i32 0, metadata !2159, metadata !DIExpression()) #10, !dbg !2226
  call void @llvm.dbg.value(metadata i32 %0, metadata !2160, metadata !DIExpression()) #10, !dbg !2228
  call void @llvm.dbg.value(metadata i8* %1, metadata !2161, metadata !DIExpression()) #10, !dbg !2229
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2230
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2230
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2162, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2231
  call void @llvm.dbg.value(metadata i32 %0, metadata !2168, metadata !DIExpression()) #10, !dbg !2232
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %4, i8 0, i64 56, i1 false) #10, !dbg !2234, !alias.scope !2235
  %5 = icmp eq i32 %0, 10, !dbg !2238
  br i1 %5, label %6, label %7, !dbg !2239

; <label>:6:                                      ; preds = %2
  tail call void @abort() #15, !dbg !2240, !noalias !2235
  unreachable, !dbg !2240

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2241
  store i32 %0, i32* %8, align 8, !dbg !2242, !tbaa !924, !alias.scope !2235
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2162, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2231
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2173, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2234
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !2243
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2244
  ret i8* %9, !dbg !2245
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2246 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2250, metadata !DIExpression()), !dbg !2253
  call void @llvm.dbg.value(metadata i8* %1, metadata !2251, metadata !DIExpression()), !dbg !2254
  call void @llvm.dbg.value(metadata i64 %2, metadata !2252, metadata !DIExpression()), !dbg !2255
  call void @llvm.dbg.value(metadata i32 0, metadata !2193, metadata !DIExpression()) #10, !dbg !2256
  call void @llvm.dbg.value(metadata i32 %0, metadata !2194, metadata !DIExpression()) #10, !dbg !2258
  call void @llvm.dbg.value(metadata i8* %1, metadata !2195, metadata !DIExpression()) #10, !dbg !2259
  call void @llvm.dbg.value(metadata i64 %2, metadata !2196, metadata !DIExpression()) #10, !dbg !2260
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2261
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2261
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2197, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2262
  call void @llvm.dbg.value(metadata i32 %0, metadata !2168, metadata !DIExpression()) #10, !dbg !2263
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #10, !dbg !2265, !alias.scope !2266
  %6 = icmp eq i32 %0, 10, !dbg !2269
  br i1 %6, label %7, label %8, !dbg !2270

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2271, !noalias !2266
  unreachable, !dbg !2271

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2272
  store i32 %0, i32* %9, align 8, !dbg !2273, !tbaa !924, !alias.scope !2266
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2197, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2262
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2173, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2265
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #10, !dbg !2274
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2275
  ret i8* %10, !dbg !2276
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #7 !dbg !2277 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2281, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i64 %1, metadata !2282, metadata !DIExpression()), !dbg !2286
  call void @llvm.dbg.value(metadata i8 %2, metadata !2283, metadata !DIExpression()), !dbg !2287
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2288
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2288
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2289, !tbaa.struct !2290
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2284, metadata !DIExpression(DW_OP_deref)), !dbg !2291
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !943, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i8 %2, metadata !944, metadata !DIExpression()), !dbg !2294
  call void @llvm.dbg.value(metadata i32 1, metadata !945, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata i8 %2, metadata !946, metadata !DIExpression()), !dbg !2296
  %6 = lshr i8 %2, 5, !dbg !2297
  %7 = zext i8 %6 to i64, !dbg !2297
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2298
  call void @llvm.dbg.value(metadata i32* %8, metadata !948, metadata !DIExpression()), !dbg !2299
  %9 = and i8 %2, 31, !dbg !2300
  %10 = zext i8 %9 to i32, !dbg !2300
  call void @llvm.dbg.value(metadata i32 %10, metadata !950, metadata !DIExpression()), !dbg !2301
  %11 = load i32, i32* %8, align 4, !dbg !2302, !tbaa !722
  %12 = lshr i32 %11, %10, !dbg !2303
  %13 = and i32 %12, 1, !dbg !2304
  call void @llvm.dbg.value(metadata i32 %13, metadata !951, metadata !DIExpression()), !dbg !2305
  %14 = xor i32 %13, 1, !dbg !2306
  %15 = shl i32 %14, %10, !dbg !2307
  %16 = xor i32 %15, %11, !dbg !2308
  store i32 %16, i32* %8, align 4, !dbg !2308, !tbaa !722
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2284, metadata !DIExpression(DW_OP_deref)), !dbg !2291
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2309
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2310
  ret i8* %17, !dbg !2311
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #7 !dbg !2312 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2316, metadata !DIExpression()), !dbg !2318
  call void @llvm.dbg.value(metadata i8 %1, metadata !2317, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata i8* %0, metadata !2281, metadata !DIExpression()) #10, !dbg !2320
  call void @llvm.dbg.value(metadata i64 -1, metadata !2282, metadata !DIExpression()) #10, !dbg !2322
  call void @llvm.dbg.value(metadata i8 %1, metadata !2283, metadata !DIExpression()) #10, !dbg !2323
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2324
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2324
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2325, !tbaa.struct !2290
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2284, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2326
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !943, metadata !DIExpression()) #10, !dbg !2327
  call void @llvm.dbg.value(metadata i8 %1, metadata !944, metadata !DIExpression()) #10, !dbg !2329
  call void @llvm.dbg.value(metadata i32 1, metadata !945, metadata !DIExpression()) #10, !dbg !2330
  call void @llvm.dbg.value(metadata i8 %1, metadata !946, metadata !DIExpression()) #10, !dbg !2331
  %5 = lshr i8 %1, 5, !dbg !2332
  %6 = zext i8 %5 to i64, !dbg !2332
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2333
  call void @llvm.dbg.value(metadata i32* %7, metadata !948, metadata !DIExpression()) #10, !dbg !2334
  %8 = and i8 %1, 31, !dbg !2335
  %9 = zext i8 %8 to i32, !dbg !2335
  call void @llvm.dbg.value(metadata i32 %9, metadata !950, metadata !DIExpression()) #10, !dbg !2336
  %10 = load i32, i32* %7, align 4, !dbg !2337, !tbaa !722
  %11 = lshr i32 %10, %9, !dbg !2338
  %12 = and i32 %11, 1, !dbg !2339
  call void @llvm.dbg.value(metadata i32 %12, metadata !951, metadata !DIExpression()) #10, !dbg !2340
  %13 = xor i32 %12, 1, !dbg !2341
  %14 = shl i32 %13, %9, !dbg !2342
  %15 = xor i32 %14, %10, !dbg !2343
  store i32 %15, i32* %7, align 4, !dbg !2343, !tbaa !722
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2284, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2326
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !2344
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2345
  ret i8* %16, !dbg !2346
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8*) local_unnamed_addr #7 !dbg !2347 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2349, metadata !DIExpression()), !dbg !2350
  call void @llvm.dbg.value(metadata i8* %0, metadata !2316, metadata !DIExpression()) #10, !dbg !2351
  call void @llvm.dbg.value(metadata i8 58, metadata !2317, metadata !DIExpression()) #10, !dbg !2353
  call void @llvm.dbg.value(metadata i8* %0, metadata !2281, metadata !DIExpression()) #10, !dbg !2354
  call void @llvm.dbg.value(metadata i64 -1, metadata !2282, metadata !DIExpression()) #10, !dbg !2356
  call void @llvm.dbg.value(metadata i8 58, metadata !2283, metadata !DIExpression()) #10, !dbg !2357
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2358
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #10, !dbg !2358
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2359, !tbaa.struct !2290
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2284, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2360
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !943, metadata !DIExpression()) #10, !dbg !2361
  call void @llvm.dbg.value(metadata i8 58, metadata !944, metadata !DIExpression()) #10, !dbg !2363
  call void @llvm.dbg.value(metadata i32 1, metadata !945, metadata !DIExpression()) #10, !dbg !2364
  call void @llvm.dbg.value(metadata i8 58, metadata !946, metadata !DIExpression()) #10, !dbg !2365
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2366
  call void @llvm.dbg.value(metadata i32* %4, metadata !948, metadata !DIExpression()) #10, !dbg !2367
  call void @llvm.dbg.value(metadata i32 26, metadata !950, metadata !DIExpression()) #10, !dbg !2368
  %5 = load i32, i32* %4, align 4, !dbg !2369, !tbaa !722
  %6 = or i32 %5, 67108864, !dbg !2370
  store i32 %6, i32* %4, align 4, !dbg !2370, !tbaa !722
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2284, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2360
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #10, !dbg !2371
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #10, !dbg !2372
  ret i8* %7, !dbg !2373
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #7 !dbg !2374 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2376, metadata !DIExpression()), !dbg !2378
  call void @llvm.dbg.value(metadata i64 %1, metadata !2377, metadata !DIExpression()), !dbg !2379
  call void @llvm.dbg.value(metadata i8* %0, metadata !2281, metadata !DIExpression()) #10, !dbg !2380
  call void @llvm.dbg.value(metadata i64 %1, metadata !2282, metadata !DIExpression()) #10, !dbg !2382
  call void @llvm.dbg.value(metadata i8 58, metadata !2283, metadata !DIExpression()) #10, !dbg !2383
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2384
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2384
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2385, !tbaa.struct !2290
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2284, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2386
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !943, metadata !DIExpression()) #10, !dbg !2387
  call void @llvm.dbg.value(metadata i8 58, metadata !944, metadata !DIExpression()) #10, !dbg !2389
  call void @llvm.dbg.value(metadata i32 1, metadata !945, metadata !DIExpression()) #10, !dbg !2390
  call void @llvm.dbg.value(metadata i8 58, metadata !946, metadata !DIExpression()) #10, !dbg !2391
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2392
  call void @llvm.dbg.value(metadata i32* %5, metadata !948, metadata !DIExpression()) #10, !dbg !2393
  call void @llvm.dbg.value(metadata i32 26, metadata !950, metadata !DIExpression()) #10, !dbg !2394
  %6 = load i32, i32* %5, align 4, !dbg !2395, !tbaa !722
  %7 = or i32 %6, 67108864, !dbg !2396
  store i32 %7, i32* %5, align 4, !dbg !2396, !tbaa !722
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2284, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2386
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #10, !dbg !2397
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2398
  ret i8* %8, !dbg !2399
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #7 !dbg !2400 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2173, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2406
  call void @llvm.dbg.value(metadata i32 %0, metadata !2402, metadata !DIExpression()), !dbg !2408
  call void @llvm.dbg.value(metadata i32 %1, metadata !2403, metadata !DIExpression()), !dbg !2409
  call void @llvm.dbg.value(metadata i8* %2, metadata !2404, metadata !DIExpression()), !dbg !2410
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2411
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2411
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2412
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2412
  call void @llvm.dbg.value(metadata i32 %1, metadata !2168, metadata !DIExpression()) #10, !dbg !2413
  call void @llvm.dbg.value(metadata i32 0, metadata !2173, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2406
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 %7, i8 0, i64 52, i1 false), !dbg !2406, !alias.scope !2414
  %8 = icmp eq i32 %1, 10, !dbg !2417
  br i1 %8, label %9, label %10, !dbg !2418

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2419, !noalias !2414
  unreachable, !dbg !2419

; <label>:10:                                     ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2173, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2406
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2412
  store i32 %1, i32* %11, align 8, !dbg !2412
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2412
  %13 = bitcast i32* %12 to i8*, !dbg !2412
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %13, i8* nonnull align 4 %7, i64 52, i1 false), !dbg !2412
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2412
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2405, metadata !DIExpression(DW_OP_deref)), !dbg !2420
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !943, metadata !DIExpression()), !dbg !2421
  call void @llvm.dbg.value(metadata i8 58, metadata !944, metadata !DIExpression()), !dbg !2423
  call void @llvm.dbg.value(metadata i32 1, metadata !945, metadata !DIExpression()), !dbg !2424
  call void @llvm.dbg.value(metadata i8 58, metadata !946, metadata !DIExpression()), !dbg !2425
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2426
  call void @llvm.dbg.value(metadata i32* %14, metadata !948, metadata !DIExpression()), !dbg !2427
  call void @llvm.dbg.value(metadata i32 26, metadata !950, metadata !DIExpression()), !dbg !2428
  %15 = load i32, i32* %14, align 4, !dbg !2429, !tbaa !722
  %16 = or i32 %15, 67108864, !dbg !2430
  store i32 %16, i32* %14, align 4, !dbg !2430, !tbaa !722
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2405, metadata !DIExpression(DW_OP_deref)), !dbg !2420
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2431
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2432
  ret i8* %17, !dbg !2433
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #7 !dbg !2434 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2438, metadata !DIExpression()), !dbg !2442
  call void @llvm.dbg.value(metadata i8* %1, metadata !2439, metadata !DIExpression()), !dbg !2443
  call void @llvm.dbg.value(metadata i8* %2, metadata !2440, metadata !DIExpression()), !dbg !2444
  call void @llvm.dbg.value(metadata i8* %3, metadata !2441, metadata !DIExpression()), !dbg !2445
  call void @llvm.dbg.value(metadata i32 %0, metadata !2446, metadata !DIExpression()) #10, !dbg !2456
  call void @llvm.dbg.value(metadata i8* %1, metadata !2451, metadata !DIExpression()) #10, !dbg !2458
  call void @llvm.dbg.value(metadata i8* %2, metadata !2452, metadata !DIExpression()) #10, !dbg !2459
  call void @llvm.dbg.value(metadata i8* %3, metadata !2453, metadata !DIExpression()) #10, !dbg !2460
  call void @llvm.dbg.value(metadata i64 -1, metadata !2454, metadata !DIExpression()) #10, !dbg !2461
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2462
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2462
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2463, !tbaa.struct !2290
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2455, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2464
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !992, metadata !DIExpression()) #10, !dbg !2465
  call void @llvm.dbg.value(metadata i8* %1, metadata !993, metadata !DIExpression()) #10, !dbg !2467
  call void @llvm.dbg.value(metadata i8* %2, metadata !994, metadata !DIExpression()) #10, !dbg !2468
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !992, metadata !DIExpression()) #10, !dbg !2465
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2469
  store i32 10, i32* %7, align 8, !dbg !2470, !tbaa !924
  %8 = icmp ne i8* %1, null, !dbg !2471
  %9 = icmp ne i8* %2, null, !dbg !2472
  %10 = and i1 %8, %9, !dbg !2473
  br i1 %10, label %12, label %11, !dbg !2473

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2474
  unreachable, !dbg !2474

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2475
  store i8* %1, i8** %13, align 8, !dbg !2476, !tbaa !1010
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2477
  store i8* %2, i8** %14, align 8, !dbg !2478, !tbaa !1013
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2455, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2464
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #10, !dbg !2479
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2480
  ret i8* %15, !dbg !2481
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !2447 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2446, metadata !DIExpression()), !dbg !2482
  call void @llvm.dbg.value(metadata i8* %1, metadata !2451, metadata !DIExpression()), !dbg !2483
  call void @llvm.dbg.value(metadata i8* %2, metadata !2452, metadata !DIExpression()), !dbg !2484
  call void @llvm.dbg.value(metadata i8* %3, metadata !2453, metadata !DIExpression()), !dbg !2485
  call void @llvm.dbg.value(metadata i64 %4, metadata !2454, metadata !DIExpression()), !dbg !2486
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2487
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2487
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %7, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2488, !tbaa.struct !2290
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2455, metadata !DIExpression(DW_OP_deref)), !dbg !2489
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !992, metadata !DIExpression()) #10, !dbg !2490
  call void @llvm.dbg.value(metadata i8* %1, metadata !993, metadata !DIExpression()) #10, !dbg !2492
  call void @llvm.dbg.value(metadata i8* %2, metadata !994, metadata !DIExpression()) #10, !dbg !2493
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !992, metadata !DIExpression()) #10, !dbg !2490
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2494
  store i32 10, i32* %8, align 8, !dbg !2495, !tbaa !924
  %9 = icmp ne i8* %1, null, !dbg !2496
  %10 = icmp ne i8* %2, null, !dbg !2497
  %11 = and i1 %9, %10, !dbg !2498
  br i1 %11, label %13, label %12, !dbg !2498

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !2499
  unreachable, !dbg !2499

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2500
  store i8* %1, i8** %14, align 8, !dbg !2501, !tbaa !1010
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2502
  store i8* %2, i8** %15, align 8, !dbg !2503, !tbaa !1013
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2455, metadata !DIExpression(DW_OP_deref)), !dbg !2489
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2504
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2505
  ret i8* %16, !dbg !2506
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #7 !dbg !2507 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2511, metadata !DIExpression()), !dbg !2514
  call void @llvm.dbg.value(metadata i8* %1, metadata !2512, metadata !DIExpression()), !dbg !2515
  call void @llvm.dbg.value(metadata i8* %2, metadata !2513, metadata !DIExpression()), !dbg !2516
  call void @llvm.dbg.value(metadata i32 0, metadata !2438, metadata !DIExpression()) #10, !dbg !2517
  call void @llvm.dbg.value(metadata i8* %0, metadata !2439, metadata !DIExpression()) #10, !dbg !2519
  call void @llvm.dbg.value(metadata i8* %1, metadata !2440, metadata !DIExpression()) #10, !dbg !2520
  call void @llvm.dbg.value(metadata i8* %2, metadata !2441, metadata !DIExpression()) #10, !dbg !2521
  call void @llvm.dbg.value(metadata i32 0, metadata !2446, metadata !DIExpression()) #10, !dbg !2522
  call void @llvm.dbg.value(metadata i8* %0, metadata !2451, metadata !DIExpression()) #10, !dbg !2524
  call void @llvm.dbg.value(metadata i8* %1, metadata !2452, metadata !DIExpression()) #10, !dbg !2525
  call void @llvm.dbg.value(metadata i8* %2, metadata !2453, metadata !DIExpression()) #10, !dbg !2526
  call void @llvm.dbg.value(metadata i64 -1, metadata !2454, metadata !DIExpression()) #10, !dbg !2527
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2528
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2528
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2529, !tbaa.struct !2290
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2455, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2530
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !992, metadata !DIExpression()) #10, !dbg !2531
  call void @llvm.dbg.value(metadata i8* %0, metadata !993, metadata !DIExpression()) #10, !dbg !2533
  call void @llvm.dbg.value(metadata i8* %1, metadata !994, metadata !DIExpression()) #10, !dbg !2534
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !992, metadata !DIExpression()) #10, !dbg !2531
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2535
  store i32 10, i32* %6, align 8, !dbg !2536, !tbaa !924
  %7 = icmp ne i8* %0, null, !dbg !2537
  %8 = icmp ne i8* %1, null, !dbg !2538
  %9 = and i1 %7, %8, !dbg !2539
  br i1 %9, label %11, label %10, !dbg !2539

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2540
  unreachable, !dbg !2540

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2541
  store i8* %0, i8** %12, align 8, !dbg !2542, !tbaa !1010
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2543
  store i8* %1, i8** %13, align 8, !dbg !2544, !tbaa !1013
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2455, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2530
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !2545
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2546
  ret i8* %14, !dbg !2547
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !2548 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2552, metadata !DIExpression()), !dbg !2556
  call void @llvm.dbg.value(metadata i8* %1, metadata !2553, metadata !DIExpression()), !dbg !2557
  call void @llvm.dbg.value(metadata i8* %2, metadata !2554, metadata !DIExpression()), !dbg !2558
  call void @llvm.dbg.value(metadata i64 %3, metadata !2555, metadata !DIExpression()), !dbg !2559
  call void @llvm.dbg.value(metadata i32 0, metadata !2446, metadata !DIExpression()) #10, !dbg !2560
  call void @llvm.dbg.value(metadata i8* %0, metadata !2451, metadata !DIExpression()) #10, !dbg !2562
  call void @llvm.dbg.value(metadata i8* %1, metadata !2452, metadata !DIExpression()) #10, !dbg !2563
  call void @llvm.dbg.value(metadata i8* %2, metadata !2453, metadata !DIExpression()) #10, !dbg !2564
  call void @llvm.dbg.value(metadata i64 %3, metadata !2454, metadata !DIExpression()) #10, !dbg !2565
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2566
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2566
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2567, !tbaa.struct !2290
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2455, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2568
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !992, metadata !DIExpression()) #10, !dbg !2569
  call void @llvm.dbg.value(metadata i8* %0, metadata !993, metadata !DIExpression()) #10, !dbg !2571
  call void @llvm.dbg.value(metadata i8* %1, metadata !994, metadata !DIExpression()) #10, !dbg !2572
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !992, metadata !DIExpression()) #10, !dbg !2569
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2573
  store i32 10, i32* %7, align 8, !dbg !2574, !tbaa !924
  %8 = icmp ne i8* %0, null, !dbg !2575
  %9 = icmp ne i8* %1, null, !dbg !2576
  %10 = and i1 %8, %9, !dbg !2577
  br i1 %10, label %12, label %11, !dbg !2577

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2578
  unreachable, !dbg !2578

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2579
  store i8* %0, i8** %13, align 8, !dbg !2580, !tbaa !1010
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2581
  store i8* %1, i8** %14, align 8, !dbg !2582, !tbaa !1013
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2455, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2568
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #10, !dbg !2583
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2584
  ret i8* %15, !dbg !2585
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2586 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2590, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i8* %1, metadata !2591, metadata !DIExpression()), !dbg !2594
  call void @llvm.dbg.value(metadata i64 %2, metadata !2592, metadata !DIExpression()), !dbg !2595
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2596
  ret i8* %4, !dbg !2597
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8*, i64) local_unnamed_addr #7 !dbg !2598 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2602, metadata !DIExpression()), !dbg !2604
  call void @llvm.dbg.value(metadata i64 %1, metadata !2603, metadata !DIExpression()), !dbg !2605
  call void @llvm.dbg.value(metadata i32 0, metadata !2590, metadata !DIExpression()) #10, !dbg !2606
  call void @llvm.dbg.value(metadata i8* %0, metadata !2591, metadata !DIExpression()) #10, !dbg !2608
  call void @llvm.dbg.value(metadata i64 %1, metadata !2592, metadata !DIExpression()) #10, !dbg !2609
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2610
  ret i8* %3, !dbg !2611
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32, i8*) local_unnamed_addr #7 !dbg !2612 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2616, metadata !DIExpression()), !dbg !2618
  call void @llvm.dbg.value(metadata i8* %1, metadata !2617, metadata !DIExpression()), !dbg !2619
  call void @llvm.dbg.value(metadata i32 %0, metadata !2590, metadata !DIExpression()) #10, !dbg !2620
  call void @llvm.dbg.value(metadata i8* %1, metadata !2591, metadata !DIExpression()) #10, !dbg !2622
  call void @llvm.dbg.value(metadata i64 -1, metadata !2592, metadata !DIExpression()) #10, !dbg !2623
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2624
  ret i8* %3, !dbg !2625
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8*) local_unnamed_addr #7 !dbg !2626 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2630, metadata !DIExpression()), !dbg !2631
  call void @llvm.dbg.value(metadata i32 0, metadata !2616, metadata !DIExpression()) #10, !dbg !2632
  call void @llvm.dbg.value(metadata i8* %0, metadata !2617, metadata !DIExpression()) #10, !dbg !2634
  call void @llvm.dbg.value(metadata i32 0, metadata !2590, metadata !DIExpression()) #10, !dbg !2635
  call void @llvm.dbg.value(metadata i8* %0, metadata !2591, metadata !DIExpression()) #10, !dbg !2637
  call void @llvm.dbg.value(metadata i64 -1, metadata !2592, metadata !DIExpression()) #10, !dbg !2638
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2639
  ret i8* %2, !dbg !2640
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #7 !dbg !2641 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2698, metadata !DIExpression()), !dbg !2704
  call void @llvm.dbg.value(metadata i8* %1, metadata !2699, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i8* %2, metadata !2700, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.value(metadata i8* %3, metadata !2701, metadata !DIExpression()), !dbg !2707
  call void @llvm.dbg.value(metadata i8** %4, metadata !2702, metadata !DIExpression()), !dbg !2708
  call void @llvm.dbg.value(metadata i64 %5, metadata !2703, metadata !DIExpression()), !dbg !2709
  %7 = icmp eq i8* %1, null, !dbg !2710
  br i1 %7, label %10, label %8, !dbg !2712

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.70, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10, !dbg !2713
  br label %12, !dbg !2713

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.71, i64 0, i64 0), i8* %2, i8* %3) #10, !dbg !2714
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.72, i64 0, i64 0), i32 5) #10, !dbg !2715
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2018) #10, !dbg !2715
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([204 x i8], [204 x i8]* @.str.3.73, i64 0, i64 0), i32 5) #10, !dbg !2716
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0), !dbg !2716
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
  ], !dbg !2717

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !2718
  unreachable, !dbg !2718

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.74, i64 0, i64 0), i32 5) #10, !dbg !2720
  %20 = load i8*, i8** %4, align 8, !dbg !2720, !tbaa !635
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #10, !dbg !2720
  br label %146, !dbg !2721

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.75, i64 0, i64 0), i32 5) #10, !dbg !2722
  %24 = load i8*, i8** %4, align 8, !dbg !2722, !tbaa !635
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2722
  %26 = load i8*, i8** %25, align 8, !dbg !2722, !tbaa !635
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #10, !dbg !2722
  br label %146, !dbg !2723

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.76, i64 0, i64 0), i32 5) #10, !dbg !2724
  %30 = load i8*, i8** %4, align 8, !dbg !2724, !tbaa !635
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2724
  %32 = load i8*, i8** %31, align 8, !dbg !2724, !tbaa !635
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2724
  %34 = load i8*, i8** %33, align 8, !dbg !2724, !tbaa !635
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #10, !dbg !2724
  br label %146, !dbg !2725

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.77, i64 0, i64 0), i32 5) #10, !dbg !2726
  %38 = load i8*, i8** %4, align 8, !dbg !2726, !tbaa !635
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2726
  %40 = load i8*, i8** %39, align 8, !dbg !2726, !tbaa !635
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2726
  %42 = load i8*, i8** %41, align 8, !dbg !2726, !tbaa !635
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2726
  %44 = load i8*, i8** %43, align 8, !dbg !2726, !tbaa !635
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #10, !dbg !2726
  br label %146, !dbg !2727

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.78, i64 0, i64 0), i32 5) #10, !dbg !2728
  %48 = load i8*, i8** %4, align 8, !dbg !2728, !tbaa !635
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2728
  %50 = load i8*, i8** %49, align 8, !dbg !2728, !tbaa !635
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2728
  %52 = load i8*, i8** %51, align 8, !dbg !2728, !tbaa !635
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2728
  %54 = load i8*, i8** %53, align 8, !dbg !2728, !tbaa !635
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2728
  %56 = load i8*, i8** %55, align 8, !dbg !2728, !tbaa !635
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #10, !dbg !2728
  br label %146, !dbg !2729

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.79, i64 0, i64 0), i32 5) #10, !dbg !2730
  %60 = load i8*, i8** %4, align 8, !dbg !2730, !tbaa !635
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2730
  %62 = load i8*, i8** %61, align 8, !dbg !2730, !tbaa !635
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2730
  %64 = load i8*, i8** %63, align 8, !dbg !2730, !tbaa !635
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2730
  %66 = load i8*, i8** %65, align 8, !dbg !2730, !tbaa !635
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2730
  %68 = load i8*, i8** %67, align 8, !dbg !2730, !tbaa !635
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2730
  %70 = load i8*, i8** %69, align 8, !dbg !2730, !tbaa !635
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #10, !dbg !2730
  br label %146, !dbg !2731

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.80, i64 0, i64 0), i32 5) #10, !dbg !2732
  %74 = load i8*, i8** %4, align 8, !dbg !2732, !tbaa !635
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2732
  %76 = load i8*, i8** %75, align 8, !dbg !2732, !tbaa !635
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2732
  %78 = load i8*, i8** %77, align 8, !dbg !2732, !tbaa !635
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2732
  %80 = load i8*, i8** %79, align 8, !dbg !2732, !tbaa !635
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2732
  %82 = load i8*, i8** %81, align 8, !dbg !2732, !tbaa !635
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2732
  %84 = load i8*, i8** %83, align 8, !dbg !2732, !tbaa !635
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2732
  %86 = load i8*, i8** %85, align 8, !dbg !2732, !tbaa !635
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #10, !dbg !2732
  br label %146, !dbg !2733

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.81, i64 0, i64 0), i32 5) #10, !dbg !2734
  %90 = load i8*, i8** %4, align 8, !dbg !2734, !tbaa !635
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2734
  %92 = load i8*, i8** %91, align 8, !dbg !2734, !tbaa !635
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2734
  %94 = load i8*, i8** %93, align 8, !dbg !2734, !tbaa !635
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2734
  %96 = load i8*, i8** %95, align 8, !dbg !2734, !tbaa !635
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2734
  %98 = load i8*, i8** %97, align 8, !dbg !2734, !tbaa !635
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2734
  %100 = load i8*, i8** %99, align 8, !dbg !2734, !tbaa !635
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2734
  %102 = load i8*, i8** %101, align 8, !dbg !2734, !tbaa !635
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2734
  %104 = load i8*, i8** %103, align 8, !dbg !2734, !tbaa !635
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #10, !dbg !2734
  br label %146, !dbg !2735

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.82, i64 0, i64 0), i32 5) #10, !dbg !2736
  %108 = load i8*, i8** %4, align 8, !dbg !2736, !tbaa !635
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2736
  %110 = load i8*, i8** %109, align 8, !dbg !2736, !tbaa !635
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2736
  %112 = load i8*, i8** %111, align 8, !dbg !2736, !tbaa !635
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2736
  %114 = load i8*, i8** %113, align 8, !dbg !2736, !tbaa !635
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2736
  %116 = load i8*, i8** %115, align 8, !dbg !2736, !tbaa !635
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2736
  %118 = load i8*, i8** %117, align 8, !dbg !2736, !tbaa !635
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2736
  %120 = load i8*, i8** %119, align 8, !dbg !2736, !tbaa !635
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2736
  %122 = load i8*, i8** %121, align 8, !dbg !2736, !tbaa !635
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2736
  %124 = load i8*, i8** %123, align 8, !dbg !2736, !tbaa !635
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #10, !dbg !2736
  br label %146, !dbg !2737

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.83, i64 0, i64 0), i32 5) #10, !dbg !2738
  %128 = load i8*, i8** %4, align 8, !dbg !2738, !tbaa !635
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2738
  %130 = load i8*, i8** %129, align 8, !dbg !2738, !tbaa !635
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2738
  %132 = load i8*, i8** %131, align 8, !dbg !2738, !tbaa !635
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2738
  %134 = load i8*, i8** %133, align 8, !dbg !2738, !tbaa !635
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2738
  %136 = load i8*, i8** %135, align 8, !dbg !2738, !tbaa !635
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2738
  %138 = load i8*, i8** %137, align 8, !dbg !2738, !tbaa !635
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2738
  %140 = load i8*, i8** %139, align 8, !dbg !2738, !tbaa !635
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2738
  %142 = load i8*, i8** %141, align 8, !dbg !2738, !tbaa !635
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2738
  %144 = load i8*, i8** %143, align 8, !dbg !2738, !tbaa !635
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #10, !dbg !2738
  br label %146, !dbg !2739

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !2740
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #7 !dbg !2741 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2745, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i8* %1, metadata !2746, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.value(metadata i8* %2, metadata !2747, metadata !DIExpression()), !dbg !2753
  call void @llvm.dbg.value(metadata i8* %3, metadata !2748, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8** %4, metadata !2749, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata i64 0, metadata !2750, metadata !DIExpression()), !dbg !2756
  br label %6, !dbg !2757

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2759
  call void @llvm.dbg.value(metadata i64 %7, metadata !2750, metadata !DIExpression()), !dbg !2756
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2761
  %9 = load i8*, i8** %8, align 8, !dbg !2761, !tbaa !635
  %10 = icmp eq i8* %9, null, !dbg !2762
  %11 = add i64 %7, 1, !dbg !2763
  call void @llvm.dbg.value(metadata i64 %11, metadata !2750, metadata !DIExpression()), !dbg !2756
  br i1 %10, label %12, label %6, !dbg !2762, !llvm.loop !2764

; <label>:12:                                     ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !2750, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata i64 %7, metadata !2750, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata i64 %7, metadata !2750, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata i64 %7, metadata !2750, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata i64 %7, metadata !2750, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata i64 %7, metadata !2750, metadata !DIExpression()), !dbg !2756
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2766
  ret void, !dbg !2767
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #7 !dbg !2768 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2779, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata i8* %1, metadata !2780, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i8* %2, metadata !2781, metadata !DIExpression()), !dbg !2789
  call void @llvm.dbg.value(metadata i8* %3, metadata !2782, metadata !DIExpression()), !dbg !2790
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !2783, metadata !DIExpression()), !dbg !2791
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2792
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #10, !dbg !2792
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2785, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata i64 0, metadata !2784, metadata !DIExpression()), !dbg !2794
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  call void @llvm.dbg.value(metadata i64 0, metadata !2784, metadata !DIExpression()), !dbg !2794
  %11 = load i32, i32* %8, align 8, !dbg !2795
  %12 = icmp ult i32 %11, 41, !dbg !2795
  br i1 %12, label %13, label %18, !dbg !2795

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !2795
  %15 = sext i32 %11 to i64, !dbg !2795
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !2795
  %17 = add i32 %11, 8, !dbg !2795
  store i32 %17, i32* %8, align 8, !dbg !2795
  br label %21, !dbg !2795

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !2795
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !2795
  store i8* %20, i8** %10, align 8, !dbg !2795
  br label %21, !dbg !2795

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !2795
  %25 = load i8*, i8** %24, align 8, !dbg !2795
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2798
  store i8* %25, i8** %26, align 16, !dbg !2799, !tbaa !635
  %27 = icmp eq i8* %25, null, !dbg !2800
  br i1 %27, label %30, label %28, !dbg !2801

; <label>:28:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !2784, metadata !DIExpression()), !dbg !2794
  call void @llvm.dbg.value(metadata i64 1, metadata !2784, metadata !DIExpression()), !dbg !2794
  %29 = icmp ult i32 %22, 41, !dbg !2795
  br i1 %29, label %35, label %32, !dbg !2795

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !2802
  call void @llvm.dbg.value(metadata i64 %31, metadata !2784, metadata !DIExpression()), !dbg !2794
  call void @llvm.dbg.value(metadata i64 %31, metadata !2784, metadata !DIExpression()), !dbg !2794
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !2803
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #10, !dbg !2804
  ret void, !dbg !2804

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !2795
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !2795
  store i8* %34, i8** %10, align 8, !dbg !2795
  br label %40, !dbg !2795

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !2795
  %37 = sext i32 %22 to i64, !dbg !2795
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !2795
  %39 = add i32 %22, 8, !dbg !2795
  store i32 %39, i32* %8, align 8, !dbg !2795
  br label %40, !dbg !2795

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !2795
  %44 = load i8*, i8** %43, align 8, !dbg !2795
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2798
  store i8* %44, i8** %45, align 8, !dbg !2799, !tbaa !635
  %46 = icmp eq i8* %44, null, !dbg !2800
  br i1 %46, label %30, label %47, !dbg !2801

; <label>:47:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !2784, metadata !DIExpression()), !dbg !2794
  call void @llvm.dbg.value(metadata i64 2, metadata !2784, metadata !DIExpression()), !dbg !2794
  %48 = icmp ult i32 %41, 41, !dbg !2795
  br i1 %48, label %52, label %49, !dbg !2795

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !2795
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !2795
  store i8* %51, i8** %10, align 8, !dbg !2795
  br label %57, !dbg !2795

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !2795
  %54 = sext i32 %41 to i64, !dbg !2795
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !2795
  %56 = add i32 %41, 8, !dbg !2795
  store i32 %56, i32* %8, align 8, !dbg !2795
  br label %57, !dbg !2795

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !2795
  %61 = load i8*, i8** %60, align 8, !dbg !2795
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2798
  store i8* %61, i8** %62, align 16, !dbg !2799, !tbaa !635
  %63 = icmp eq i8* %61, null, !dbg !2800
  br i1 %63, label %30, label %64, !dbg !2801

; <label>:64:                                     ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !2784, metadata !DIExpression()), !dbg !2794
  call void @llvm.dbg.value(metadata i64 3, metadata !2784, metadata !DIExpression()), !dbg !2794
  %65 = icmp ult i32 %58, 41, !dbg !2795
  br i1 %65, label %69, label %66, !dbg !2795

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !2795
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !2795
  store i8* %68, i8** %10, align 8, !dbg !2795
  br label %74, !dbg !2795

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !2795
  %71 = sext i32 %58 to i64, !dbg !2795
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !2795
  %73 = add i32 %58, 8, !dbg !2795
  store i32 %73, i32* %8, align 8, !dbg !2795
  br label %74, !dbg !2795

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !2795
  %78 = load i8*, i8** %77, align 8, !dbg !2795
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2798
  store i8* %78, i8** %79, align 8, !dbg !2799, !tbaa !635
  %80 = icmp eq i8* %78, null, !dbg !2800
  br i1 %80, label %30, label %81, !dbg !2801

; <label>:81:                                     ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !2784, metadata !DIExpression()), !dbg !2794
  call void @llvm.dbg.value(metadata i64 4, metadata !2784, metadata !DIExpression()), !dbg !2794
  %82 = icmp ult i32 %75, 41, !dbg !2795
  br i1 %82, label %86, label %83, !dbg !2795

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !2795
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !2795
  store i8* %85, i8** %10, align 8, !dbg !2795
  br label %91, !dbg !2795

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !2795
  %88 = sext i32 %75 to i64, !dbg !2795
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !2795
  %90 = add i32 %75, 8, !dbg !2795
  store i32 %90, i32* %8, align 8, !dbg !2795
  br label %91, !dbg !2795

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !2795
  %95 = load i8*, i8** %94, align 8, !dbg !2795
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2798
  store i8* %95, i8** %96, align 16, !dbg !2799, !tbaa !635
  %97 = icmp eq i8* %95, null, !dbg !2800
  br i1 %97, label %30, label %98, !dbg !2801

; <label>:98:                                     ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !2784, metadata !DIExpression()), !dbg !2794
  call void @llvm.dbg.value(metadata i64 5, metadata !2784, metadata !DIExpression()), !dbg !2794
  %99 = icmp ult i32 %92, 41, !dbg !2795
  br i1 %99, label %103, label %100, !dbg !2795

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !2795
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !2795
  store i8* %102, i8** %10, align 8, !dbg !2795
  br label %108, !dbg !2795

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !2795
  %105 = sext i32 %92 to i64, !dbg !2795
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !2795
  %107 = add i32 %92, 8, !dbg !2795
  store i32 %107, i32* %8, align 8, !dbg !2795
  br label %108, !dbg !2795

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !2795
  %111 = load i8*, i8** %110, align 8, !dbg !2795
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2798
  store i8* %111, i8** %112, align 8, !dbg !2799, !tbaa !635
  %113 = icmp eq i8* %111, null, !dbg !2800
  br i1 %113, label %30, label %114, !dbg !2801

; <label>:114:                                    ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !2784, metadata !DIExpression()), !dbg !2794
  call void @llvm.dbg.value(metadata i64 6, metadata !2784, metadata !DIExpression()), !dbg !2794
  %115 = load i8*, i8** %10, align 8, !dbg !2795
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !2795
  store i8* %116, i8** %10, align 8, !dbg !2795
  %117 = bitcast i8* %115 to i8**, !dbg !2795
  %118 = load i8*, i8** %117, align 8, !dbg !2795
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2798
  store i8* %118, i8** %119, align 16, !dbg !2799, !tbaa !635
  %120 = icmp eq i8* %118, null, !dbg !2800
  br i1 %120, label %30, label %121, !dbg !2801

; <label>:121:                                    ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !2784, metadata !DIExpression()), !dbg !2794
  call void @llvm.dbg.value(metadata i64 7, metadata !2784, metadata !DIExpression()), !dbg !2794
  %122 = load i8*, i8** %10, align 8, !dbg !2795
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !2795
  store i8* %123, i8** %10, align 8, !dbg !2795
  %124 = bitcast i8* %122 to i8**, !dbg !2795
  %125 = load i8*, i8** %124, align 8, !dbg !2795
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2798
  store i8* %125, i8** %126, align 8, !dbg !2799, !tbaa !635
  %127 = icmp eq i8* %125, null, !dbg !2800
  br i1 %127, label %30, label %128, !dbg !2801

; <label>:128:                                    ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !2784, metadata !DIExpression()), !dbg !2794
  call void @llvm.dbg.value(metadata i64 8, metadata !2784, metadata !DIExpression()), !dbg !2794
  %129 = load i8*, i8** %10, align 8, !dbg !2795
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !2795
  store i8* %130, i8** %10, align 8, !dbg !2795
  %131 = bitcast i8* %129 to i8**, !dbg !2795
  %132 = load i8*, i8** %131, align 8, !dbg !2795
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2798
  store i8* %132, i8** %133, align 16, !dbg !2799, !tbaa !635
  %134 = icmp eq i8* %132, null, !dbg !2800
  br i1 %134, label %30, label %135, !dbg !2801

; <label>:135:                                    ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !2784, metadata !DIExpression()), !dbg !2794
  call void @llvm.dbg.value(metadata i64 9, metadata !2784, metadata !DIExpression()), !dbg !2794
  %136 = load i8*, i8** %10, align 8, !dbg !2795
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !2795
  store i8* %137, i8** %10, align 8, !dbg !2795
  %138 = bitcast i8* %136 to i8**, !dbg !2795
  %139 = load i8*, i8** %138, align 8, !dbg !2795
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2798
  store i8* %139, i8** %140, align 8, !dbg !2799, !tbaa !635
  %141 = icmp eq i8* %139, null, !dbg !2800
  %142 = select i1 %141, i64 9, i64 10, !dbg !2801
  br label %30, !dbg !2801
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #7 !dbg !2805 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2809, metadata !DIExpression()), !dbg !2818
  call void @llvm.dbg.value(metadata i8* %1, metadata !2810, metadata !DIExpression()), !dbg !2819
  call void @llvm.dbg.value(metadata i8* %2, metadata !2811, metadata !DIExpression()), !dbg !2820
  call void @llvm.dbg.value(metadata i8* %3, metadata !2812, metadata !DIExpression()), !dbg !2821
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !2822
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #10, !dbg !2822
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !2813, metadata !DIExpression()), !dbg !2823
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !2824
  call void @llvm.va_start(i8* nonnull %6), !dbg !2824
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !2825
  call void @llvm.va_end(i8* nonnull %6), !dbg !2826
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #10, !dbg !2827
  ret void, !dbg !2827
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #7 !dbg !2828 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.86, i64 0, i64 0), i32 5) #10, !dbg !2829
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.87, i64 0, i64 0)) #10, !dbg !2829
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.88, i64 0, i64 0), i32 5) #10, !dbg !2830
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.89, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18.90, i64 0, i64 0)) #10, !dbg !2830
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.19.91, i64 0, i64 0), i32 5) #10, !dbg !2831
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2831, !tbaa !635
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6), !dbg !2831
  ret void, !dbg !2832
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !2833 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2837, metadata !DIExpression()), !dbg !2839
  call void @llvm.dbg.value(metadata i64 %1, metadata !2838, metadata !DIExpression()), !dbg !2840
  %3 = udiv i64 9223372036854775807, %1, !dbg !2841
  %4 = icmp ult i64 %3, %0, !dbg !2841
  br i1 %4, label %5, label %6, !dbg !2843

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !2844
  unreachable, !dbg !2844

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !2845
  call void @llvm.dbg.value(metadata i64 %7, metadata !2846, metadata !DIExpression()) #10, !dbg !2853
  %8 = tail call noalias i8* @malloc(i64 %7) #10, !dbg !2855
  call void @llvm.dbg.value(metadata i8* %8, metadata !2852, metadata !DIExpression()) #10, !dbg !2856
  %9 = icmp eq i8* %8, null, !dbg !2857
  %10 = icmp ne i64 %7, 0, !dbg !2859
  %11 = and i1 %10, %9, !dbg !2860
  br i1 %11, label %12, label %13, !dbg !2860

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !2861
  unreachable, !dbg !2861

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !2862
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64) local_unnamed_addr #7 !dbg !2847 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2846, metadata !DIExpression()), !dbg !2863
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !2864
  call void @llvm.dbg.value(metadata i8* %2, metadata !2852, metadata !DIExpression()), !dbg !2865
  %3 = icmp eq i8* %2, null, !dbg !2866
  %4 = icmp ne i64 %0, 0, !dbg !2867
  %5 = and i1 %4, %3, !dbg !2868
  br i1 %5, label %6, label %7, !dbg !2868

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !2869
  unreachable, !dbg !2869

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !2870
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !2871 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2875, metadata !DIExpression()), !dbg !2878
  call void @llvm.dbg.value(metadata i64 %1, metadata !2876, metadata !DIExpression()), !dbg !2879
  call void @llvm.dbg.value(metadata i64 %2, metadata !2877, metadata !DIExpression()), !dbg !2880
  %4 = udiv i64 9223372036854775807, %2, !dbg !2881
  %5 = icmp ult i64 %4, %1, !dbg !2881
  br i1 %5, label %6, label %7, !dbg !2883

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !2884
  unreachable, !dbg !2884

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !2885
  call void @llvm.dbg.value(metadata i8* %0, metadata !2886, metadata !DIExpression()) #10, !dbg !2892
  call void @llvm.dbg.value(metadata i64 %8, metadata !2891, metadata !DIExpression()) #10, !dbg !2894
  %9 = icmp eq i64 %8, 0, !dbg !2895
  %10 = icmp ne i8* %0, null, !dbg !2897
  %11 = and i1 %10, %9, !dbg !2898
  br i1 %11, label %12, label %13, !dbg !2898

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #10, !dbg !2899
  br label %19, !dbg !2901

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #10, !dbg !2902
  call void @llvm.dbg.value(metadata i8* %14, metadata !2886, metadata !DIExpression()) #10, !dbg !2892
  %15 = icmp eq i8* %14, null, !dbg !2903
  %16 = icmp ne i64 %8, 0, !dbg !2905
  %17 = and i1 %16, %15, !dbg !2906
  br i1 %17, label %18, label %19, !dbg !2906

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2907
  unreachable, !dbg !2907

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !2908
  ret i8* %20, !dbg !2909
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #7 !dbg !2887 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2886, metadata !DIExpression()), !dbg !2910
  call void @llvm.dbg.value(metadata i64 %1, metadata !2891, metadata !DIExpression()), !dbg !2911
  %3 = icmp eq i64 %1, 0, !dbg !2912
  %4 = icmp ne i8* %0, null, !dbg !2913
  %5 = and i1 %4, %3, !dbg !2914
  br i1 %5, label %6, label %7, !dbg !2914

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #10, !dbg !2915
  br label %13, !dbg !2916

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #10, !dbg !2917
  call void @llvm.dbg.value(metadata i8* %8, metadata !2886, metadata !DIExpression()), !dbg !2910
  %9 = icmp eq i8* %8, null, !dbg !2918
  %10 = icmp ne i64 %1, 0, !dbg !2919
  %11 = and i1 %10, %9, !dbg !2920
  br i1 %11, label %12, label %13, !dbg !2920

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !2921
  unreachable, !dbg !2921

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !2922
  ret i8* %14, !dbg !2923
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !178 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !183, metadata !DIExpression()), !dbg !2924
  call void @llvm.dbg.value(metadata i64* %1, metadata !184, metadata !DIExpression()), !dbg !2925
  call void @llvm.dbg.value(metadata i64 %2, metadata !185, metadata !DIExpression()), !dbg !2926
  %4 = load i64, i64* %1, align 8, !dbg !2927, !tbaa !1969
  call void @llvm.dbg.value(metadata i64 %4, metadata !186, metadata !DIExpression()), !dbg !2928
  %5 = icmp eq i8* %0, null, !dbg !2929
  br i1 %5, label %6, label %20, !dbg !2931

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !2932
  br i1 %7, label %8, label %13, !dbg !2935

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !2936
  call void @llvm.dbg.value(metadata i64 %9, metadata !186, metadata !DIExpression()), !dbg !2928
  %10 = icmp ugt i64 %2, 128, !dbg !2938
  %11 = zext i1 %10 to i64, !dbg !2938
  %12 = add nuw nsw i64 %9, %11, !dbg !2939
  call void @llvm.dbg.value(metadata i64 %12, metadata !186, metadata !DIExpression()), !dbg !2928
  br label %13, !dbg !2940

; <label>:13:                                     ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !2941
  call void @llvm.dbg.value(metadata i64 %14, metadata !186, metadata !DIExpression()), !dbg !2928
  %15 = udiv i64 9223372036854775807, %2, !dbg !2942
  %16 = icmp ult i64 %15, %14, !dbg !2942
  br i1 %16, label %19, label %17, !dbg !2944

; <label>:17:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !186, metadata !DIExpression()), !dbg !2928
  store i64 %14, i64* %1, align 8, !dbg !2945, !tbaa !1969
  %18 = mul i64 %14, %2, !dbg !2946
  call void @llvm.dbg.value(metadata i8* %0, metadata !2886, metadata !DIExpression()) #10, !dbg !2947
  call void @llvm.dbg.value(metadata i64 %28, metadata !2891, metadata !DIExpression()) #10, !dbg !2949
  br label %31, !dbg !2950

; <label>:19:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2951
  unreachable, !dbg !2951

; <label>:20:                                     ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !2952
  %22 = icmp ugt i64 %21, %4, !dbg !2955
  br i1 %22, label %24, label %23, !dbg !2956

; <label>:23:                                     ; preds = %20
  tail call void @xalloc_die() #15, !dbg !2957
  unreachable, !dbg !2957

; <label>:24:                                     ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !2958
  %26 = add i64 %4, 1, !dbg !2959
  %27 = add i64 %26, %25, !dbg !2960
  call void @llvm.dbg.value(metadata i64 %27, metadata !186, metadata !DIExpression()), !dbg !2928
  call void @llvm.dbg.value(metadata i64 %27, metadata !186, metadata !DIExpression()), !dbg !2928
  store i64 %27, i64* %1, align 8, !dbg !2945, !tbaa !1969
  %28 = mul i64 %27, %2, !dbg !2946
  call void @llvm.dbg.value(metadata i8* %0, metadata !2886, metadata !DIExpression()) #10, !dbg !2947
  call void @llvm.dbg.value(metadata i64 %28, metadata !2891, metadata !DIExpression()) #10, !dbg !2949
  %29 = icmp eq i64 %28, 0, !dbg !2961
  br i1 %29, label %30, label %31, !dbg !2950

; <label>:30:                                     ; preds = %24
  tail call void @free(i8* nonnull %0) #10, !dbg !2962
  br label %38, !dbg !2963

; <label>:31:                                     ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #10, !dbg !2964
  call void @llvm.dbg.value(metadata i8* %33, metadata !2886, metadata !DIExpression()) #10, !dbg !2947
  %34 = icmp eq i8* %33, null, !dbg !2965
  %35 = icmp ne i64 %32, 0, !dbg !2966
  %36 = and i1 %35, %34, !dbg !2967
  br i1 %36, label %37, label %38, !dbg !2967

; <label>:37:                                     ; preds = %31
  tail call void @xalloc_die() #15, !dbg !2968
  unreachable, !dbg !2968

; <label>:38:                                     ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !2969
  ret i8* %39, !dbg !2970
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !2971 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2973, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.value(metadata i64 %0, metadata !2846, metadata !DIExpression()) #10, !dbg !2975
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !2977
  call void @llvm.dbg.value(metadata i8* %2, metadata !2852, metadata !DIExpression()) #10, !dbg !2978
  %3 = icmp eq i8* %2, null, !dbg !2979
  %4 = icmp ne i64 %0, 0, !dbg !2980
  %5 = and i1 %4, %3, !dbg !2981
  br i1 %5, label %6, label %7, !dbg !2981

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !2982
  unreachable, !dbg !2982

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !2983
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #7 !dbg !2984 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2988, metadata !DIExpression()), !dbg !2990
  call void @llvm.dbg.value(metadata i64* %1, metadata !2989, metadata !DIExpression()), !dbg !2991
  call void @llvm.dbg.value(metadata i8* %0, metadata !183, metadata !DIExpression()) #10, !dbg !2992
  call void @llvm.dbg.value(metadata i64* %1, metadata !184, metadata !DIExpression()) #10, !dbg !2994
  call void @llvm.dbg.value(metadata i64 1, metadata !185, metadata !DIExpression()) #10, !dbg !2995
  %3 = load i64, i64* %1, align 8, !dbg !2996, !tbaa !1969
  call void @llvm.dbg.value(metadata i64 %3, metadata !186, metadata !DIExpression()) #10, !dbg !2997
  %4 = icmp eq i8* %0, null, !dbg !2998
  br i1 %4, label %5, label %12, !dbg !2999

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3000
  br i1 %6, label %9, label %7, !dbg !3001

; <label>:7:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !186, metadata !DIExpression()) #10, !dbg !2997
  %8 = icmp slt i64 %3, 0, !dbg !3002
  br i1 %8, label %11, label %9, !dbg !3003

; <label>:9:                                      ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !186, metadata !DIExpression()) #10, !dbg !2997
  store i64 %10, i64* %1, align 8, !dbg !3004, !tbaa !1969
  call void @llvm.dbg.value(metadata i8* %0, metadata !2886, metadata !DIExpression()) #10, !dbg !3005
  call void @llvm.dbg.value(metadata i64 %18, metadata !2891, metadata !DIExpression()) #10, !dbg !3007
  br label %21, !dbg !3008

; <label>:11:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3009
  unreachable, !dbg !3009

; <label>:12:                                     ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !3010
  br i1 %13, label %15, label %14, !dbg !3011

; <label>:14:                                     ; preds = %12
  tail call void @xalloc_die() #15, !dbg !3012
  unreachable, !dbg !3012

; <label>:15:                                     ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !3013
  %17 = add i64 %3, 1, !dbg !3014
  %18 = add i64 %17, %16, !dbg !3015
  call void @llvm.dbg.value(metadata i64 %18, metadata !186, metadata !DIExpression()) #10, !dbg !2997
  call void @llvm.dbg.value(metadata i64 %18, metadata !186, metadata !DIExpression()) #10, !dbg !2997
  store i64 %18, i64* %1, align 8, !dbg !3004, !tbaa !1969
  call void @llvm.dbg.value(metadata i8* %0, metadata !2886, metadata !DIExpression()) #10, !dbg !3005
  call void @llvm.dbg.value(metadata i64 %18, metadata !2891, metadata !DIExpression()) #10, !dbg !3007
  %19 = icmp eq i64 %18, 0, !dbg !3016
  br i1 %19, label %20, label %21, !dbg !3008

; <label>:20:                                     ; preds = %15
  tail call void @free(i8* nonnull %0) #10, !dbg !3017
  br label %28, !dbg !3018

; <label>:21:                                     ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #10, !dbg !3019
  call void @llvm.dbg.value(metadata i8* %23, metadata !2886, metadata !DIExpression()) #10, !dbg !3005
  %24 = icmp eq i8* %23, null, !dbg !3020
  %25 = icmp ne i64 %22, 0, !dbg !3021
  %26 = and i1 %25, %24, !dbg !3022
  br i1 %26, label %27, label %28, !dbg !3022

; <label>:27:                                     ; preds = %21
  tail call void @xalloc_die() #15, !dbg !3023
  unreachable, !dbg !3023

; <label>:28:                                     ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !3024
  ret i8* %29, !dbg !3025
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64) local_unnamed_addr #7 !dbg !3026 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3028, metadata !DIExpression()), !dbg !3029
  call void @llvm.dbg.value(metadata i64 %0, metadata !2846, metadata !DIExpression()) #10, !dbg !3030
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3032
  call void @llvm.dbg.value(metadata i8* %2, metadata !2852, metadata !DIExpression()) #10, !dbg !3033
  %3 = icmp eq i8* %2, null, !dbg !3034
  %4 = icmp ne i64 %0, 0, !dbg !3035
  %5 = and i1 %4, %3, !dbg !3036
  br i1 %5, label %6, label %7, !dbg !3036

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3037
  unreachable, !dbg !3037

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* align 1 %2, i8 0, i64 %0, i1 false), !dbg !3038
  ret i8* %2, !dbg !3039
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64, i64) local_unnamed_addr #7 !dbg !3040 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3042, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.value(metadata i64 %1, metadata !3043, metadata !DIExpression()), !dbg !3046
  %3 = udiv i64 9223372036854775807, %1, !dbg !3047
  %4 = icmp ult i64 %3, %0, !dbg !3047
  br i1 %4, label %8, label %5, !dbg !3049

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #10, !dbg !3050
  call void @llvm.dbg.value(metadata i8* %6, metadata !3044, metadata !DIExpression()), !dbg !3051
  %7 = icmp eq i8* %6, null, !dbg !3052
  br i1 %7, label %8, label %9, !dbg !3053

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !3054
  unreachable, !dbg !3054

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3055
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #7 !dbg !3056 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3062, metadata !DIExpression()), !dbg !3064
  call void @llvm.dbg.value(metadata i64 %1, metadata !3063, metadata !DIExpression()), !dbg !3065
  call void @llvm.dbg.value(metadata i64 %1, metadata !2846, metadata !DIExpression()) #10, !dbg !3066
  %3 = tail call noalias i8* @malloc(i64 %1) #10, !dbg !3068
  call void @llvm.dbg.value(metadata i8* %3, metadata !2852, metadata !DIExpression()) #10, !dbg !3069
  %4 = icmp eq i8* %3, null, !dbg !3070
  %5 = icmp ne i64 %1, 0, !dbg !3071
  %6 = and i1 %5, %4, !dbg !3072
  br i1 %6, label %7, label %8, !dbg !3072

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3073
  unreachable, !dbg !3073

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 %0, i64 %1, i1 false), !dbg !3074
  ret i8* %3, !dbg !3075
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #7 !dbg !3076 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3078, metadata !DIExpression()), !dbg !3079
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !3080
  %3 = add i64 %2, 1, !dbg !3081
  call void @llvm.dbg.value(metadata i8* %0, metadata !3062, metadata !DIExpression()) #10, !dbg !3082
  call void @llvm.dbg.value(metadata i64 %3, metadata !3063, metadata !DIExpression()) #10, !dbg !3084
  call void @llvm.dbg.value(metadata i64 %3, metadata !2846, metadata !DIExpression()) #10, !dbg !3085
  %4 = tail call noalias i8* @malloc(i64 %3) #10, !dbg !3087
  call void @llvm.dbg.value(metadata i8* %4, metadata !2852, metadata !DIExpression()) #10, !dbg !3088
  %5 = icmp eq i8* %4, null, !dbg !3089
  %6 = icmp ne i64 %3, 0, !dbg !3090
  %7 = and i1 %6, %5, !dbg !3091
  br i1 %7, label %8, label %9, !dbg !3091

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3092
  unreachable, !dbg !3092

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %0, i64 %3, i1 false) #10, !dbg !3093
  ret i8* %4, !dbg !3094
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3095 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3097, !tbaa !722
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.102, i64 0, i64 0), i32 5) #10, !dbg !3098
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.103, i64 0, i64 0), i8* %2) #10, !dbg !3099
  tail call void @abort() #15, !dbg !3100
  unreachable, !dbg !3100
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #7 !dbg !3101 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3104, metadata !DIExpression()), !dbg !3110
  call void @llvm.dbg.value(metadata i64 %1, metadata !3105, metadata !DIExpression()), !dbg !3111
  %3 = icmp eq i64 %0, 0, !dbg !3112
  %4 = icmp eq i64 %1, 0, !dbg !3113
  %5 = or i1 %3, %4, !dbg !3114
  br i1 %5, label %12, label %6, !dbg !3114

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3115
  call void @llvm.dbg.value(metadata i64 %7, metadata !3107, metadata !DIExpression()), !dbg !3116
  %8 = udiv i64 %7, %1, !dbg !3117
  %9 = icmp eq i64 %8, %0, !dbg !3119
  br i1 %9, label %12, label %10, !dbg !3120

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !3121
  store i32 12, i32* %11, align 4, !dbg !3123, !tbaa !722
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %14, metadata !3104, metadata !DIExpression()), !dbg !3110
  call void @llvm.dbg.value(metadata i64 %13, metadata !3105, metadata !DIExpression()), !dbg !3111
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #10, !dbg !3124
  call void @llvm.dbg.value(metadata i8* %15, metadata !3106, metadata !DIExpression()), !dbg !3125
  br label %16, !dbg !3126

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ], !dbg !3127
  ret i8* %17, !dbg !3128
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #7 !dbg !3129 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !3146, metadata !DIExpression()), !dbg !3155
  call void @llvm.dbg.value(metadata i8* %1, metadata !3147, metadata !DIExpression()), !dbg !3156
  call void @llvm.dbg.value(metadata i64 %2, metadata !3148, metadata !DIExpression()), !dbg !3157
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3149, metadata !DIExpression()), !dbg !3158
  %6 = bitcast i32* %5 to i8*, !dbg !3159
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #10, !dbg !3159
  %7 = icmp eq i32* %0, null, !dbg !3160
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3162
  call void @llvm.dbg.value(metadata i32* %8, metadata !3146, metadata !DIExpression()), !dbg !3155
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #10, !dbg !3163
  call void @llvm.dbg.value(metadata i64 %9, metadata !3150, metadata !DIExpression()), !dbg !3164
  %10 = icmp ugt i64 %9, -3, !dbg !3165
  %11 = icmp ne i64 %2, 0, !dbg !3166
  %12 = and i1 %11, %10, !dbg !3167
  br i1 %12, label %13, label %18, !dbg !3167

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #10, !dbg !3168
  br i1 %14, label %18, label %15, !dbg !3169

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3170, !tbaa !1146
  call void @llvm.dbg.value(metadata i8 %16, metadata !3152, metadata !DIExpression()), !dbg !3171
  %17 = zext i8 %16 to i32, !dbg !3172
  store i32 %17, i32* %8, align 4, !dbg !3173, !tbaa !722
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !3174
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #10, !dbg !3175
  ret i64 %19, !dbg !3175
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !3176 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3215, metadata !DIExpression()), !dbg !3220
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #10, !dbg !3221
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3222, metadata !DIExpression()), !dbg !3226
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3228
  %4 = load i32, i32* %3, align 8, !dbg !3228, !tbaa !3229
  %5 = and i32 %4, 32, !dbg !3228
  %6 = icmp eq i32 %5, 0, !dbg !3231
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #10, !dbg !3232
  %8 = icmp ne i32 %7, 0, !dbg !3233
  br i1 %6, label %9, label %19, !dbg !3234

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3236
  %11 = xor i1 %8, true, !dbg !3237
  %12 = or i1 %10, %11, !dbg !3237
  %13 = sext i1 %8 to i32, !dbg !3237
  br i1 %12, label %22, label %14, !dbg !3237

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !3238
  %16 = load i32, i32* %15, align 4, !dbg !3238, !tbaa !722
  %17 = icmp ne i32 %16, 9, !dbg !3239
  %18 = sext i1 %17 to i32, !dbg !3240
  br label %22, !dbg !3240

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3241

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !3243
  store i32 0, i32* %21, align 4, !dbg !3245, !tbaa !722
  br label %22, !dbg !3243

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3246
  ret i32 %23, !dbg !3247
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32) local_unnamed_addr #7 !dbg !3248 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3253, metadata !DIExpression()), !dbg !3256
  call void @llvm.dbg.value(metadata i8 1, metadata !3254, metadata !DIExpression()), !dbg !3257
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #10, !dbg !3258
  call void @llvm.dbg.value(metadata i8* %2, metadata !3255, metadata !DIExpression()), !dbg !3259
  %3 = icmp eq i8* %2, null, !dbg !3260
  br i1 %3, label %11, label %4, !dbg !3262

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.112, i64 0, i64 0)) #14, !dbg !3263
  %6 = icmp eq i32 %5, 0, !dbg !3268
  br i1 %6, label %10, label %7, !dbg !3269

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.113, i64 0, i64 0)) #14, !dbg !3270
  %9 = icmp eq i32 %8, 0, !dbg !3271
  br i1 %9, label %10, label %11, !dbg !3272

; <label>:10:                                     ; preds = %7, %4
  call void @llvm.dbg.value(metadata i8 0, metadata !3254, metadata !DIExpression()), !dbg !3257
  br label %11, !dbg !3273

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !3274
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #7 !dbg !3275 {
  %1 = tail call i8* @nl_langinfo(i32 14) #10, !dbg !3281
  call void @llvm.dbg.value(metadata i8* %1, metadata !3280, metadata !DIExpression()), !dbg !3282
  %2 = icmp eq i8* %1, null, !dbg !3283
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.116, i64 0, i64 0), i8* %1, !dbg !3285
  call void @llvm.dbg.value(metadata i8* %3, metadata !3280, metadata !DIExpression()), !dbg !3282
  %4 = load i8, i8* %3, align 1, !dbg !3286, !tbaa !1146
  %5 = icmp eq i8 %4, 0, !dbg !3290
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.117, i64 0, i64 0), i8* %3, !dbg !3291
  call void @llvm.dbg.value(metadata i8* %6, metadata !3280, metadata !DIExpression()), !dbg !3282
  ret i8* %6, !dbg !3292
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #7 !dbg !3293 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3332, metadata !DIExpression()), !dbg !3336
  call void @llvm.dbg.value(metadata i32 0, metadata !3333, metadata !DIExpression()), !dbg !3337
  call void @llvm.dbg.value(metadata i32 0, metadata !3335, metadata !DIExpression()), !dbg !3338
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3339
  call void @llvm.dbg.value(metadata i32 %2, metadata !3334, metadata !DIExpression()), !dbg !3340
  %3 = icmp slt i32 %2, 0, !dbg !3341
  br i1 %3, label %4, label %6, !dbg !3343

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3344
  br label %24, !dbg !3345

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !3346
  %8 = icmp eq i32 %7, 0, !dbg !3346
  br i1 %8, label %13, label %9, !dbg !3348

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3349
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #10, !dbg !3350
  %12 = icmp eq i64 %11, -1, !dbg !3351
  br i1 %12, label %16, label %13, !dbg !3352

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #10, !dbg !3353
  %15 = icmp eq i32 %14, 0, !dbg !3353
  br i1 %15, label %16, label %18, !dbg !3354

; <label>:16:                                     ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3333, metadata !DIExpression()), !dbg !3337
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3355
  call void @llvm.dbg.value(metadata i32 %21, metadata !3335, metadata !DIExpression()), !dbg !3338
  br label %24, !dbg !3356

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !3357
  %20 = load i32, i32* %19, align 4, !dbg !3357, !tbaa !722
  call void @llvm.dbg.value(metadata i32 %20, metadata !3333, metadata !DIExpression()), !dbg !3337
  call void @llvm.dbg.value(metadata i32 %20, metadata !3333, metadata !DIExpression()), !dbg !3337
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3355
  call void @llvm.dbg.value(metadata i32 %21, metadata !3335, metadata !DIExpression()), !dbg !3338
  %22 = icmp eq i32 %20, 0, !dbg !3358
  br i1 %22, label %24, label %23, !dbg !3356

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3360, !tbaa !722
  call void @llvm.dbg.value(metadata i32 -1, metadata !3335, metadata !DIExpression()), !dbg !3338
  br label %24, !dbg !3362

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3363
  ret i32 %25, !dbg !3364
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
define dso_local i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !3365 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3404, metadata !DIExpression()), !dbg !3405
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3406
  br i1 %2, label %6, label %3, !dbg !3408

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !3409
  %5 = icmp eq i32 %4, 0, !dbg !3409
  br i1 %5, label %6, label %8, !dbg !3410

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3411
  br label %17, !dbg !3412

; <label>:8:                                      ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3413, metadata !DIExpression()) #10, !dbg !3418
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3420
  %10 = load i32, i32* %9, align 8, !dbg !3420, !tbaa !3229
  %11 = and i32 %10, 256, !dbg !3422
  %12 = icmp eq i32 %11, 0, !dbg !3422
  br i1 %12, label %15, label %13, !dbg !3423

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #10, !dbg !3424
  br label %15, !dbg !3424

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3425
  br label %17, !dbg !3426

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3427
  ret i32 %18, !dbg !3428
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #7 !dbg !3429 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3469, metadata !DIExpression()), !dbg !3475
  call void @llvm.dbg.value(metadata i64 %1, metadata !3470, metadata !DIExpression()), !dbg !3476
  call void @llvm.dbg.value(metadata i32 %2, metadata !3471, metadata !DIExpression()), !dbg !3477
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3478
  %5 = load i8*, i8** %4, align 8, !dbg !3478, !tbaa !3479
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3480
  %7 = load i8*, i8** %6, align 8, !dbg !3480, !tbaa !3481
  %8 = icmp eq i8* %5, %7, !dbg !3482
  br i1 %8, label %9, label %28, !dbg !3483

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3484
  %11 = load i8*, i8** %10, align 8, !dbg !3484, !tbaa !3485
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3486
  %13 = load i8*, i8** %12, align 8, !dbg !3486, !tbaa !3487
  %14 = icmp eq i8* %11, %13, !dbg !3488
  br i1 %14, label %15, label %28, !dbg !3489

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3490
  %17 = load i8*, i8** %16, align 8, !dbg !3490, !tbaa !3491
  %18 = icmp eq i8* %17, null, !dbg !3492
  br i1 %18, label %19, label %28, !dbg !3493

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3494
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #10, !dbg !3495
  call void @llvm.dbg.value(metadata i64 %21, metadata !3472, metadata !DIExpression()), !dbg !3496
  %22 = icmp eq i64 %21, -1, !dbg !3497
  br i1 %22, label %30, label %23, !dbg !3499

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3500
  %25 = load i32, i32* %24, align 8, !dbg !3501, !tbaa !3229
  %26 = and i32 %25, -17, !dbg !3501
  store i32 %26, i32* %24, align 8, !dbg !3501, !tbaa !3229
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3502
  store i64 %21, i64* %27, align 8, !dbg !3503, !tbaa !3504
  br label %30, !dbg !3505

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3506
  br label %30, !dbg !3507

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3508
  ret i32 %31, !dbg !3509
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

!llvm.dbg.cu = !{!2, !27, !32, !41, !48, !64, !72, !165, !158, !173, !190, !192, !194, !197, !199, !201, !590, !592, !594}
!llvm.ident = !{!596, !596, !596, !596, !596, !596, !596, !596, !596, !596, !596, !596, !596, !596, !596, !596, !596, !596, !596}
!llvm.module.flags = !{!597, !598, !599, !600, !601}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !3, line: 38, type: !12, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !11)
!3 = !DIFile(filename: "src/whoami.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4 = !{}
!5 = !{!6, !9, !10}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!10 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!11 = !{!0}
!12 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 256, elements: !23)
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !15, line: 50, size: 256, elements: !16)
!15 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!16 = !{!17, !18, !20, !22}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !14, file: !15, line: 52, baseType: !6, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !14, file: !15, line: 55, baseType: !19, size: 32, offset: 64)
!19 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !14, file: !15, line: 56, baseType: !21, size: 64, offset: 128)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !14, file: !15, line: 57, baseType: !19, size: 32, offset: 192)
!23 = !{!24}
!24 = !DISubrange(count: 1)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(name: "Version", scope: !27, file: !28, line: 2, type: !6, isLocal: false, isDefinition: true)
!27 = distinct !DICompileUnit(language: DW_LANG_C99, file: !28, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !29)
!28 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!29 = !{!25}
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(name: "file_name", scope: !32, file: !37, line: 46, type: !6, isLocal: true, isDefinition: true)
!32 = distinct !DICompileUnit(language: DW_LANG_C99, file: !33, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !34)
!33 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!34 = !{!30, !35}
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !32, file: !37, line: 56, type: !38, isLocal: true, isDefinition: true)
!37 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!38 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(name: "exit_failure", scope: !41, file: !44, line: 24, type: !45, isLocal: false, isDefinition: true)
!41 = distinct !DICompileUnit(language: DW_LANG_C99, file: !42, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !43)
!42 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!43 = !{!39}
!44 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!45 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !19)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(name: "long_options", scope: !48, file: !51, line: 33, type: !52, isLocal: true, isDefinition: true)
!48 = distinct !DICompileUnit(language: DW_LANG_C99, file: !49, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !50)
!49 = !DIFile(filename: "./lib/long-options.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!50 = !{!46}
!51 = !DIFile(filename: "lib/long-options.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 768, elements: !60)
!53 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !15, line: 50, size: 256, elements: !55)
!55 = !{!56, !57, !58, !59}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !54, file: !15, line: 52, baseType: !6, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !54, file: !15, line: 55, baseType: !19, size: 32, offset: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !54, file: !15, line: 56, baseType: !21, size: 64, offset: 128)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !54, file: !15, line: 57, baseType: !19, size: 32, offset: 192)
!60 = !{!61}
!61 = !DISubrange(count: 3)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(name: "program_name", scope: !64, file: !69, line: 33, type: !6, isLocal: false, isDefinition: true)
!64 = distinct !DICompileUnit(language: DW_LANG_C99, file: !65, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !66, globals: !68)
!65 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!66 = !{!9, !67}
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!68 = !{!62}
!69 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!70 = !DIGlobalVariableExpression(var: !71, expr: !DIExpression())
!71 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !72, file: !117, line: 85, type: !152, isLocal: false, isDefinition: true)
!72 = distinct !DICompileUnit(language: DW_LANG_C99, file: !73, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !74, retainedTypes: !110, globals: !114)
!73 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!74 = !{!75, !90, !95}
!75 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !76, line: 32, baseType: !77, size: 32, elements: !78)
!76 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!77 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!78 = !{!79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89}
!79 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!80 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!81 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!82 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!83 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!84 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!85 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!86 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!87 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!88 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!89 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!90 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !76, line: 242, baseType: !77, size: 32, elements: !91)
!91 = !{!92, !93, !94}
!92 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!93 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!94 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!95 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !96, line: 46, baseType: !77, size: 32, elements: !97)
!96 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!97 = !{!98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109}
!98 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!99 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!100 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!101 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!102 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!103 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!104 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!105 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!106 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!107 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!108 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!109 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!110 = !{!19, !111, !112, !67}
!111 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !113, line: 62, baseType: !10)
!113 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!114 = !{!70, !115, !122, !134, !136, !141, !148, !150}
!115 = !DIGlobalVariableExpression(var: !116, expr: !DIExpression())
!116 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !72, file: !117, line: 101, type: !118, isLocal: false, isDefinition: true)
!117 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 320, elements: !120)
!119 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !75)
!120 = !{!121}
!121 = !DISubrange(count: 10)
!122 = !DIGlobalVariableExpression(var: !123, expr: !DIExpression())
!123 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !72, file: !117, line: 1052, type: !124, isLocal: false, isDefinition: true)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !117, line: 65, size: 448, elements: !125)
!125 = !{!126, !127, !128, !132, !133}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !124, file: !117, line: 68, baseType: !75, size: 32)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !124, file: !117, line: 71, baseType: !19, size: 32, offset: 32)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !124, file: !117, line: 75, baseType: !129, size: 256, offset: 64)
!129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 256, elements: !130)
!130 = !{!131}
!131 = !DISubrange(count: 8)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !124, file: !117, line: 78, baseType: !6, size: 64, offset: 320)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !124, file: !117, line: 81, baseType: !6, size: 64, offset: 384)
!134 = !DIGlobalVariableExpression(var: !135, expr: !DIExpression())
!135 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !72, file: !117, line: 116, type: !124, isLocal: true, isDefinition: true)
!136 = !DIGlobalVariableExpression(var: !137, expr: !DIExpression())
!137 = distinct !DIGlobalVariable(name: "slot0", scope: !72, file: !117, line: 842, type: !138, isLocal: true, isDefinition: true)
!138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2048, elements: !139)
!139 = !{!140}
!140 = !DISubrange(count: 256)
!141 = !DIGlobalVariableExpression(var: !142, expr: !DIExpression())
!142 = distinct !DIGlobalVariable(name: "slotvec", scope: !72, file: !117, line: 845, type: !143, isLocal: true, isDefinition: true)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !117, line: 834, size: 128, elements: !145)
!145 = !{!146, !147}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !144, file: !117, line: 836, baseType: !112, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !144, file: !117, line: 837, baseType: !67, size: 64, offset: 64)
!148 = !DIGlobalVariableExpression(var: !149, expr: !DIExpression())
!149 = distinct !DIGlobalVariable(name: "nslots", scope: !72, file: !117, line: 843, type: !19, isLocal: true, isDefinition: true)
!150 = !DIGlobalVariableExpression(var: !151, expr: !DIExpression())
!151 = distinct !DIGlobalVariable(name: "slotvec0", scope: !72, file: !117, line: 844, type: !144, isLocal: true, isDefinition: true)
!152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 704, elements: !154)
!153 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!154 = !{!155}
!155 = !DISubrange(count: 11)
!156 = !DIGlobalVariableExpression(var: !157, expr: !DIExpression())
!157 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !158, file: !161, line: 26, type: !162, isLocal: false, isDefinition: true)
!158 = distinct !DICompileUnit(language: DW_LANG_C99, file: !159, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !160)
!159 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!160 = !{!156}
!161 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 376, elements: !163)
!163 = !{!164}
!164 = !DISubrange(count: 47)
!165 = distinct !DICompileUnit(language: DW_LANG_C99, file: !166, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !167, retainedTypes: !172)
!166 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!167 = !{!168}
!168 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !169, line: 41, baseType: !77, size: 32, elements: !170)
!169 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!170 = !{!171}
!171 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2018, isUnsigned: true)
!172 = !{!9}
!173 = distinct !DICompileUnit(language: DW_LANG_C99, file: !174, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !175, retainedTypes: !189)
!174 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!175 = !{!176}
!176 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !178, file: !177, line: 186, baseType: !77, size: 32, elements: !187)
!177 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!178 = distinct !DISubprogram(name: "x2nrealloc", scope: !177, file: !177, line: 174, type: !179, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !182)
!179 = !DISubroutineType(types: !180)
!180 = !{!9, !9, !181, !112}
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!182 = !{!183, !184, !185, !186}
!183 = !DILocalVariable(name: "p", arg: 1, scope: !178, file: !177, line: 174, type: !9)
!184 = !DILocalVariable(name: "pn", arg: 2, scope: !178, file: !177, line: 174, type: !181)
!185 = !DILocalVariable(name: "s", arg: 3, scope: !178, file: !177, line: 174, type: !112)
!186 = !DILocalVariable(name: "n", scope: !178, file: !177, line: 176, type: !112)
!187 = !{!188}
!188 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!189 = !{!112, !67, !9}
!190 = distinct !DICompileUnit(language: DW_LANG_C99, file: !191, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!191 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!192 = distinct !DICompileUnit(language: DW_LANG_C99, file: !193, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !172)
!193 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!194 = distinct !DICompileUnit(language: DW_LANG_C99, file: !195, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !196)
!195 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!196 = !{!112}
!197 = distinct !DICompileUnit(language: DW_LANG_C99, file: !198, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!198 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!199 = distinct !DICompileUnit(language: DW_LANG_C99, file: !200, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!200 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!201 = distinct !DICompileUnit(language: DW_LANG_C99, file: !202, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !203, retainedTypes: !172)
!202 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!203 = !{!204}
!204 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !205, line: 41, baseType: !77, size: 32, elements: !206)
!205 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!206 = !{!207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589}
!207 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!208 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!209 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!210 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!211 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!212 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!213 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!214 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!215 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!216 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!217 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!218 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!219 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!220 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!221 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!222 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!223 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!224 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!225 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!226 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!227 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!228 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!229 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!230 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!231 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!232 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!233 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!234 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!235 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!236 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!237 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!238 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!239 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!240 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!241 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!242 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!243 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!244 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!245 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!246 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!247 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!248 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!249 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!250 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!251 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!252 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!253 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!254 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!255 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!256 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!257 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!258 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!259 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!260 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!261 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!262 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!263 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!264 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!265 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!266 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!267 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!268 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!269 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!270 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!271 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!272 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!273 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!274 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!275 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!276 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!277 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!278 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!279 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!280 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!281 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!282 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!283 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!284 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!285 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!286 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!287 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!288 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!289 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!290 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!291 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!292 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!293 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!294 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!295 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!296 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!297 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!298 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!299 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!300 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!301 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!302 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!303 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!304 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!305 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!306 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!307 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!308 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!309 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!310 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!311 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!312 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!313 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!314 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!315 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!316 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!317 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!318 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!319 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!320 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!321 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!322 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!323 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!324 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!325 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!326 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!327 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!328 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!329 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!330 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!331 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!332 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!333 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!334 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!335 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!336 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!337 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!338 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!339 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!340 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!341 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!342 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!343 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!344 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!345 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!346 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!347 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!348 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!349 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!350 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!351 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!352 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!353 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!354 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!355 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!356 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!357 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!358 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!359 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!360 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!361 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!362 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!363 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!364 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!365 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!366 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!367 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!368 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!369 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!370 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!371 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!372 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!373 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!374 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!375 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!376 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!377 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!378 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!379 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!380 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!381 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!382 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!383 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!384 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!385 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!386 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!387 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!388 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!389 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!390 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!391 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!392 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!393 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!394 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!395 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!396 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!400 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!402 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!405 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!406 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!408 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!409 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!410 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!411 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!412 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!413 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!414 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!415 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!416 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!417 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!418 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!419 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!420 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!421 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!435 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!456 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!457 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!458 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!459 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!460 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!461 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!462 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!463 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!465 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!466 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!468 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!469 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!473 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!474 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!475 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!476 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!477 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!478 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!479 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!480 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!481 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!482 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!483 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!484 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!485 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!486 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!487 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!488 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!489 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!490 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!491 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!492 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!493 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!494 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!495 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!496 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!497 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!498 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!499 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!500 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!501 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!502 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!503 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!504 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!505 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!506 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!507 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!508 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!509 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!510 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!511 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!512 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!513 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!514 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!515 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!516 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!517 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!519 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!520 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!521 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!522 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!523 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!524 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!525 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!526 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!527 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!528 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!529 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!530 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!531 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!532 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!533 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!534 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!535 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!536 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!537 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!540 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!541 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!542 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!543 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!544 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!545 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!546 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!547 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!549 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!550 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!551 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!552 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!553 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!559 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!560 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!567 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!568 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!571 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!572 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!573 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!574 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!575 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!576 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!577 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!578 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!579 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!580 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!581 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!582 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!583 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!584 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!585 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!586 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!587 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!588 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!589 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!590 = distinct !DICompileUnit(language: DW_LANG_C99, file: !591, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!591 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!592 = distinct !DICompileUnit(language: DW_LANG_C99, file: !593, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !172)
!593 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!594 = distinct !DICompileUnit(language: DW_LANG_C99, file: !595, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !172)
!595 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!596 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!597 = !{i32 2, !"Dwarf Version", i32 4}
!598 = !{i32 2, !"Debug Info Version", i32 3}
!599 = !{i32 1, !"wchar_size", i32 4}
!600 = !{i32 7, !"PIC Level", i32 2}
!601 = !{i32 7, !"PIE Level", i32 2}
!602 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 44, type: !603, isLocal: false, isDefinition: true, scopeLine: 45, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, retainedNodes: !605)
!603 = !DISubroutineType(types: !604)
!604 = !{null, !19}
!605 = !{!606}
!606 = !DILocalVariable(name: "status", arg: 1, scope: !602, file: !3, line: 44, type: !19)
!607 = !DILocalVariable(name: "infomap", scope: !608, file: !609, line: 632, type: !623)
!608 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !609, file: !609, line: 630, type: !610, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !612)
!609 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!610 = !DISubroutineType(types: !611)
!611 = !{null, !6}
!612 = !{!613, !607, !614, !615, !622}
!613 = !DILocalVariable(name: "program", arg: 1, scope: !608, file: !609, line: 630, type: !6)
!614 = !DILocalVariable(name: "node", scope: !608, file: !609, line: 642, type: !6)
!615 = !DILocalVariable(name: "map_prog", scope: !608, file: !609, line: 643, type: !616)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !618)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !608, file: !609, line: 632, size: 128, elements: !619)
!619 = !{!620, !621}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !618, file: !609, line: 632, baseType: !6, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !618, file: !609, line: 632, baseType: !6, size: 64, offset: 64)
!622 = !DILocalVariable(name: "lc_messages", scope: !608, file: !609, line: 655, type: !6)
!623 = !DICompositeType(tag: DW_TAG_array_type, baseType: !617, size: 896, elements: !624)
!624 = !{!625}
!625 = !DISubrange(count: 7)
!626 = !DILocation(line: 632, column: 67, scope: !608, inlinedAt: !627)
!627 = distinct !DILocation(line: 58, column: 7, scope: !628)
!628 = distinct !DILexicalBlock(scope: !629, file: !3, line: 49, column: 5)
!629 = distinct !DILexicalBlock(scope: !602, file: !3, line: 46, column: 7)
!630 = !DILocation(line: 44, column: 12, scope: !602)
!631 = !DILocation(line: 46, column: 14, scope: !629)
!632 = !DILocation(line: 46, column: 7, scope: !602)
!633 = !DILocation(line: 47, column: 5, scope: !634)
!634 = distinct !DILexicalBlock(scope: !629, file: !3, line: 47, column: 5)
!635 = !{!636, !636, i64 0}
!636 = !{!"any pointer", !637, i64 0}
!637 = !{!"omnipotent char", !638, i64 0}
!638 = !{!"Simple C/C++ TBAA"}
!639 = !DILocation(line: 50, column: 7, scope: !628)
!640 = !DILocation(line: 51, column: 7, scope: !628)
!641 = !DILocation(line: 56, column: 7, scope: !628)
!642 = !DILocation(line: 57, column: 7, scope: !628)
!643 = !DILocation(line: 632, column: 3, scope: !608, inlinedAt: !627)
!644 = !DILocation(line: 643, column: 36, scope: !608, inlinedAt: !627)
!645 = !DILocation(line: 643, column: 25, scope: !608, inlinedAt: !627)
!646 = !DILocation(line: 645, column: 33, scope: !608, inlinedAt: !627)
!647 = !DILocation(line: 645, column: 3, scope: !608, inlinedAt: !627)
!648 = !DILocation(line: 646, column: 13, scope: !608, inlinedAt: !627)
!649 = !DILocation(line: 645, column: 20, scope: !608, inlinedAt: !627)
!650 = !{!651, !636, i64 0}
!651 = !{!"infomap", !636, i64 0, !636, i64 8}
!652 = !DILocation(line: 645, column: 10, scope: !608, inlinedAt: !627)
!653 = !DILocation(line: 645, column: 28, scope: !608, inlinedAt: !627)
!654 = distinct !{!654, !655, !656}
!655 = !DILocation(line: 645, column: 3, scope: !608)
!656 = !DILocation(line: 646, column: 13, scope: !608)
!657 = !DILocation(line: 648, column: 17, scope: !658, inlinedAt: !627)
!658 = distinct !DILexicalBlock(scope: !608, file: !609, line: 648, column: 7)
!659 = !{!651, !636, i64 8}
!660 = !DILocation(line: 648, column: 7, scope: !658, inlinedAt: !627)
!661 = !DILocation(line: 648, column: 7, scope: !608, inlinedAt: !627)
!662 = !DILocation(line: 642, column: 15, scope: !608, inlinedAt: !627)
!663 = !DILocation(line: 651, column: 3, scope: !608, inlinedAt: !627)
!664 = !DILocation(line: 655, column: 29, scope: !608, inlinedAt: !627)
!665 = !DILocation(line: 655, column: 15, scope: !608, inlinedAt: !627)
!666 = !DILocation(line: 656, column: 7, scope: !667, inlinedAt: !627)
!667 = distinct !DILexicalBlock(scope: !608, file: !609, line: 656, column: 7)
!668 = !DILocation(line: 656, column: 19, scope: !667, inlinedAt: !627)
!669 = !DILocation(line: 656, column: 22, scope: !667, inlinedAt: !627)
!670 = !DILocation(line: 656, column: 7, scope: !608, inlinedAt: !627)
!671 = !DILocation(line: 662, column: 7, scope: !672, inlinedAt: !627)
!672 = distinct !DILexicalBlock(scope: !667, file: !609, line: 657, column: 5)
!673 = !DILocation(line: 664, column: 5, scope: !672, inlinedAt: !627)
!674 = !DILocation(line: 665, column: 3, scope: !608, inlinedAt: !627)
!675 = !DILocation(line: 667, column: 3, scope: !608, inlinedAt: !627)
!676 = !DILocation(line: 669, column: 1, scope: !608, inlinedAt: !627)
!677 = !DILocation(line: 60, column: 3, scope: !602)
!678 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 64, type: !679, isLocal: false, isDefinition: true, scopeLine: 65, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !682)
!679 = !DISubroutineType(types: !680)
!680 = !{!19, !19, !681}
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!682 = !{!683, !684, !685, !700, !703}
!683 = !DILocalVariable(name: "argc", arg: 1, scope: !678, file: !3, line: 64, type: !19)
!684 = !DILocalVariable(name: "argv", arg: 2, scope: !678, file: !3, line: 64, type: !681)
!685 = !DILocalVariable(name: "pw", scope: !678, file: !3, line: 66, type: !686)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !688, line: 49, size: 384, elements: !689)
!688 = !DIFile(filename: "/usr/include/pwd.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!689 = !{!690, !691, !692, !695, !697, !698, !699}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !687, file: !688, line: 51, baseType: !67, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !687, file: !688, line: 52, baseType: !67, size: 64, offset: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !687, file: !688, line: 54, baseType: !693, size: 32, offset: 128)
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !694, line: 144, baseType: !77)
!694 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!695 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !687, file: !688, line: 55, baseType: !696, size: 32, offset: 160)
!696 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !694, line: 145, baseType: !77)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !687, file: !688, line: 56, baseType: !67, size: 64, offset: 192)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !687, file: !688, line: 57, baseType: !67, size: 64, offset: 256)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !687, file: !688, line: 58, baseType: !67, size: 64, offset: 320)
!700 = !DILocalVariable(name: "uid", scope: !678, file: !3, line: 67, type: !701)
!701 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !702, line: 79, baseType: !693)
!702 = !DIFile(filename: "/usr/include/sys/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!703 = !DILocalVariable(name: "NO_UID", scope: !678, file: !3, line: 68, type: !701)
!704 = !DILocation(line: 64, column: 11, scope: !678)
!705 = !DILocation(line: 64, column: 24, scope: !678)
!706 = !DILocation(line: 68, column: 9, scope: !678)
!707 = !DILocation(line: 71, column: 21, scope: !678)
!708 = !DILocation(line: 71, column: 3, scope: !678)
!709 = !DILocation(line: 72, column: 3, scope: !678)
!710 = !DILocation(line: 73, column: 3, scope: !678)
!711 = !DILocation(line: 74, column: 3, scope: !678)
!712 = !DILocation(line: 76, column: 3, scope: !678)
!713 = !DILocation(line: 78, column: 63, scope: !678)
!714 = !DILocation(line: 78, column: 3, scope: !678)
!715 = !DILocation(line: 80, column: 7, scope: !716)
!716 = distinct !DILexicalBlock(scope: !678, file: !3, line: 80, column: 7)
!717 = !DILocation(line: 80, column: 56, scope: !716)
!718 = !DILocation(line: 80, column: 7, scope: !678)
!719 = !DILocation(line: 81, column: 5, scope: !716)
!720 = !DILocation(line: 83, column: 7, scope: !721)
!721 = distinct !DILexicalBlock(scope: !678, file: !3, line: 83, column: 7)
!722 = !{!723, !723, i64 0}
!723 = !{!"int", !637, i64 0}
!724 = !DILocation(line: 83, column: 14, scope: !721)
!725 = !DILocation(line: 83, column: 7, scope: !678)
!726 = !DILocation(line: 85, column: 20, scope: !727)
!727 = distinct !DILexicalBlock(scope: !721, file: !3, line: 84, column: 5)
!728 = !DILocation(line: 85, column: 55, scope: !727)
!729 = !DILocation(line: 85, column: 50, scope: !727)
!730 = !DILocation(line: 85, column: 43, scope: !727)
!731 = !DILocation(line: 85, column: 7, scope: !727)
!732 = !DILocation(line: 86, column: 7, scope: !727)
!733 = !DILocation(line: 89, column: 3, scope: !678)
!734 = !DILocation(line: 89, column: 9, scope: !678)
!735 = !DILocation(line: 90, column: 9, scope: !678)
!736 = !DILocation(line: 67, column: 9, scope: !678)
!737 = !DILocation(line: 91, column: 13, scope: !678)
!738 = !DILocation(line: 91, column: 23, scope: !678)
!739 = !DILocation(line: 91, column: 26, scope: !678)
!740 = !DILocation(line: 91, column: 9, scope: !678)
!741 = !DILocation(line: 91, column: 41, scope: !678)
!742 = !DILocation(line: 66, column: 18, scope: !678)
!743 = !DILocation(line: 92, column: 8, scope: !744)
!744 = distinct !DILexicalBlock(scope: !678, file: !3, line: 92, column: 7)
!745 = !DILocation(line: 92, column: 7, scope: !678)
!746 = !DILocation(line: 93, column: 5, scope: !744)
!747 = !DILocation(line: 95, column: 13, scope: !678)
!748 = !{!749, !636, i64 0}
!749 = !{!"passwd", !636, i64 0, !636, i64 8, !723, i64 16, !723, i64 20, !636, i64 24, !636, i64 32, !636, i64 40}
!750 = !DILocation(line: 95, column: 3, scope: !678)
!751 = !DILocation(line: 96, column: 3, scope: !678)
!752 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !37, file: !37, line: 51, type: !610, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !32, retainedNodes: !753)
!753 = !{!754}
!754 = !DILocalVariable(name: "file", arg: 1, scope: !752, file: !37, line: 51, type: !6)
!755 = !DILocation(line: 51, column: 41, scope: !752)
!756 = !DILocation(line: 53, column: 13, scope: !752)
!757 = !DILocation(line: 54, column: 1, scope: !752)
!758 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !37, file: !37, line: 88, type: !759, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !32, retainedNodes: !761)
!759 = !DISubroutineType(types: !760)
!760 = !{null, !38}
!761 = !{!762}
!762 = !DILocalVariable(name: "ignore", arg: 1, scope: !758, file: !37, line: 88, type: !38)
!763 = !DILocation(line: 88, column: 37, scope: !758)
!764 = !DILocation(line: 90, column: 16, scope: !758)
!765 = !{!766, !766, i64 0}
!766 = !{!"_Bool", !637, i64 0}
!767 = !DILocation(line: 91, column: 1, scope: !758)
!768 = distinct !DISubprogram(name: "close_stdout", scope: !37, file: !37, line: 117, type: !769, isLocal: false, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: true, unit: !32, retainedNodes: !771)
!769 = !DISubroutineType(types: !770)
!770 = !{null}
!771 = !{!772}
!772 = !DILocalVariable(name: "write_error", scope: !773, file: !37, line: 122, type: !6)
!773 = distinct !DILexicalBlock(scope: !774, file: !37, line: 121, column: 5)
!774 = distinct !DILexicalBlock(scope: !768, file: !37, line: 119, column: 7)
!775 = !DILocation(line: 119, column: 21, scope: !774)
!776 = !DILocation(line: 119, column: 7, scope: !774)
!777 = !DILocation(line: 119, column: 29, scope: !774)
!778 = !DILocation(line: 120, column: 7, scope: !774)
!779 = !DILocation(line: 120, column: 12, scope: !774)
!780 = !{i8 0, i8 2}
!781 = !DILocation(line: 120, column: 25, scope: !774)
!782 = !DILocation(line: 120, column: 28, scope: !774)
!783 = !DILocation(line: 120, column: 34, scope: !774)
!784 = !DILocation(line: 119, column: 7, scope: !768)
!785 = !DILocation(line: 122, column: 33, scope: !773)
!786 = !DILocation(line: 122, column: 19, scope: !773)
!787 = !DILocation(line: 123, column: 11, scope: !788)
!788 = distinct !DILexicalBlock(scope: !773, file: !37, line: 123, column: 11)
!789 = !DILocation(line: 0, scope: !788)
!790 = !DILocation(line: 123, column: 11, scope: !773)
!791 = !DILocation(line: 124, column: 36, scope: !788)
!792 = !DILocation(line: 124, column: 9, scope: !788)
!793 = !DILocation(line: 127, column: 9, scope: !788)
!794 = !DILocation(line: 129, column: 14, scope: !773)
!795 = !DILocation(line: 129, column: 7, scope: !773)
!796 = !DILocation(line: 134, column: 42, scope: !797)
!797 = distinct !DILexicalBlock(scope: !768, file: !37, line: 134, column: 7)
!798 = !DILocation(line: 134, column: 28, scope: !797)
!799 = !DILocation(line: 134, column: 50, scope: !797)
!800 = !DILocation(line: 134, column: 7, scope: !768)
!801 = !DILocation(line: 135, column: 12, scope: !797)
!802 = !DILocation(line: 135, column: 5, scope: !797)
!803 = !DILocation(line: 136, column: 1, scope: !768)
!804 = distinct !DISubprogram(name: "parse_long_options", scope: !51, file: !51, line: 44, type: !805, isLocal: false, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: true, unit: !48, retainedNodes: !808)
!805 = !DISubroutineType(types: !806)
!806 = !{null, !19, !681, !6, !6, !6, !807, null}
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!808 = !{!809, !810, !811, !812, !813, !814, !815, !816, !817}
!809 = !DILocalVariable(name: "argc", arg: 1, scope: !804, file: !51, line: 44, type: !19)
!810 = !DILocalVariable(name: "argv", arg: 2, scope: !804, file: !51, line: 45, type: !681)
!811 = !DILocalVariable(name: "command_name", arg: 3, scope: !804, file: !51, line: 46, type: !6)
!812 = !DILocalVariable(name: "package", arg: 4, scope: !804, file: !51, line: 47, type: !6)
!813 = !DILocalVariable(name: "version", arg: 5, scope: !804, file: !51, line: 48, type: !6)
!814 = !DILocalVariable(name: "usage_func", arg: 6, scope: !804, file: !51, line: 49, type: !807)
!815 = !DILocalVariable(name: "c", scope: !804, file: !51, line: 52, type: !19)
!816 = !DILocalVariable(name: "saved_opterr", scope: !804, file: !51, line: 53, type: !19)
!817 = !DILocalVariable(name: "authors", scope: !818, file: !51, line: 71, type: !822)
!818 = distinct !DILexicalBlock(scope: !819, file: !51, line: 70, column: 11)
!819 = distinct !DILexicalBlock(scope: !820, file: !51, line: 64, column: 9)
!820 = distinct !DILexicalBlock(scope: !821, file: !51, line: 62, column: 5)
!821 = distinct !DILexicalBlock(scope: !804, file: !51, line: 60, column: 7)
!822 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !823, line: 52, baseType: !824)
!823 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!824 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !825, line: 48, baseType: !826)
!825 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!826 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !49, line: 71, baseType: !827)
!827 = !DICompositeType(tag: DW_TAG_array_type, baseType: !828, size: 192, elements: !23)
!828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !49, line: 71, size: 192, elements: !829)
!829 = !{!830, !831, !832, !833}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !828, file: !49, line: 71, baseType: !77, size: 32)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !828, file: !49, line: 71, baseType: !77, size: 32, offset: 32)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !828, file: !49, line: 71, baseType: !9, size: 64, offset: 64)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !828, file: !49, line: 71, baseType: !9, size: 64, offset: 128)
!834 = !DILocation(line: 44, column: 25, scope: !804)
!835 = !DILocation(line: 45, column: 28, scope: !804)
!836 = !DILocation(line: 46, column: 33, scope: !804)
!837 = !DILocation(line: 47, column: 33, scope: !804)
!838 = !DILocation(line: 48, column: 33, scope: !804)
!839 = !DILocation(line: 49, column: 28, scope: !804)
!840 = !DILocation(line: 55, column: 18, scope: !804)
!841 = !DILocation(line: 53, column: 7, scope: !804)
!842 = !DILocation(line: 58, column: 10, scope: !804)
!843 = !DILocation(line: 60, column: 12, scope: !821)
!844 = !DILocation(line: 61, column: 7, scope: !821)
!845 = !DILocation(line: 61, column: 15, scope: !821)
!846 = !DILocation(line: 52, column: 7, scope: !804)
!847 = !DILocation(line: 60, column: 7, scope: !804)
!848 = !DILocation(line: 66, column: 11, scope: !819)
!849 = !DILocation(line: 67, column: 11, scope: !819)
!850 = !DILocation(line: 71, column: 13, scope: !818)
!851 = !DILocation(line: 71, column: 21, scope: !818)
!852 = !DILocation(line: 72, column: 13, scope: !818)
!853 = !DILocation(line: 73, column: 29, scope: !818)
!854 = !DILocation(line: 73, column: 13, scope: !818)
!855 = !DILocation(line: 74, column: 13, scope: !818)
!856 = !DILocation(line: 84, column: 10, scope: !804)
!857 = !DILocation(line: 88, column: 10, scope: !804)
!858 = !DILocation(line: 89, column: 1, scope: !804)
!859 = distinct !DISubprogram(name: "set_program_name", scope: !69, file: !69, line: 39, type: !610, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !64, retainedNodes: !860)
!860 = !{!861, !862, !863}
!861 = !DILocalVariable(name: "argv0", arg: 1, scope: !859, file: !69, line: 39, type: !6)
!862 = !DILocalVariable(name: "slash", scope: !859, file: !69, line: 46, type: !6)
!863 = !DILocalVariable(name: "base", scope: !859, file: !69, line: 47, type: !6)
!864 = !DILocation(line: 39, column: 31, scope: !859)
!865 = !DILocation(line: 51, column: 13, scope: !866)
!866 = distinct !DILexicalBlock(scope: !859, file: !69, line: 51, column: 7)
!867 = !DILocation(line: 51, column: 7, scope: !859)
!868 = !DILocation(line: 55, column: 14, scope: !869)
!869 = distinct !DILexicalBlock(scope: !866, file: !69, line: 52, column: 5)
!870 = !DILocation(line: 54, column: 7, scope: !869)
!871 = !DILocation(line: 56, column: 7, scope: !869)
!872 = !DILocation(line: 59, column: 11, scope: !859)
!873 = !DILocation(line: 46, column: 15, scope: !859)
!874 = !DILocation(line: 60, column: 17, scope: !859)
!875 = !DILocation(line: 60, column: 33, scope: !859)
!876 = !DILocation(line: 60, column: 11, scope: !859)
!877 = !DILocation(line: 47, column: 15, scope: !859)
!878 = !DILocation(line: 61, column: 12, scope: !879)
!879 = distinct !DILexicalBlock(scope: !859, file: !69, line: 61, column: 7)
!880 = !DILocation(line: 61, column: 20, scope: !879)
!881 = !DILocation(line: 61, column: 25, scope: !879)
!882 = !DILocation(line: 61, column: 42, scope: !879)
!883 = !DILocation(line: 61, column: 28, scope: !879)
!884 = !DILocation(line: 61, column: 61, scope: !879)
!885 = !DILocation(line: 61, column: 7, scope: !859)
!886 = !DILocation(line: 64, column: 11, scope: !887)
!887 = distinct !DILexicalBlock(scope: !888, file: !69, line: 64, column: 11)
!888 = distinct !DILexicalBlock(scope: !879, file: !69, line: 62, column: 5)
!889 = !DILocation(line: 64, column: 36, scope: !887)
!890 = !DILocation(line: 64, column: 11, scope: !888)
!891 = !DILocation(line: 66, column: 24, scope: !892)
!892 = distinct !DILexicalBlock(scope: !887, file: !69, line: 65, column: 9)
!893 = !DILocation(line: 70, column: 41, scope: !892)
!894 = !DILocation(line: 72, column: 9, scope: !892)
!895 = !DILocation(line: 84, column: 16, scope: !859)
!896 = !DILocation(line: 90, column: 27, scope: !859)
!897 = !DILocation(line: 92, column: 1, scope: !859)
!898 = distinct !DISubprogram(name: "clone_quoting_options", scope: !117, file: !117, line: 122, type: !899, isLocal: false, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, unit: !72, retainedNodes: !902)
!899 = !DISubroutineType(types: !900)
!900 = !{!901, !901}
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!902 = !{!903, !904, !905}
!903 = !DILocalVariable(name: "o", arg: 1, scope: !898, file: !117, line: 122, type: !901)
!904 = !DILocalVariable(name: "e", scope: !898, file: !117, line: 124, type: !19)
!905 = !DILocalVariable(name: "p", scope: !898, file: !117, line: 125, type: !901)
!906 = !DILocation(line: 122, column: 48, scope: !898)
!907 = !DILocation(line: 124, column: 11, scope: !898)
!908 = !DILocation(line: 124, column: 7, scope: !898)
!909 = !DILocation(line: 125, column: 40, scope: !898)
!910 = !DILocation(line: 125, column: 31, scope: !898)
!911 = !DILocation(line: 125, column: 27, scope: !898)
!912 = !DILocation(line: 127, column: 9, scope: !898)
!913 = !DILocation(line: 128, column: 3, scope: !898)
!914 = distinct !DISubprogram(name: "get_quoting_style", scope: !117, file: !117, line: 133, type: !915, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !72, retainedNodes: !919)
!915 = !DISubroutineType(types: !916)
!916 = !{!75, !917}
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !124)
!919 = !{!920}
!920 = !DILocalVariable(name: "o", arg: 1, scope: !914, file: !117, line: 133, type: !917)
!921 = !DILocation(line: 133, column: 50, scope: !914)
!922 = !DILocation(line: 135, column: 11, scope: !914)
!923 = !DILocation(line: 135, column: 46, scope: !914)
!924 = !{!925, !637, i64 0}
!925 = !{!"quoting_options", !637, i64 0, !723, i64 4, !637, i64 8, !636, i64 40, !636, i64 48}
!926 = !DILocation(line: 135, column: 3, scope: !914)
!927 = distinct !DISubprogram(name: "set_quoting_style", scope: !117, file: !117, line: 141, type: !928, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: true, unit: !72, retainedNodes: !930)
!928 = !DISubroutineType(types: !929)
!929 = !{null, !901, !75}
!930 = !{!931, !932}
!931 = !DILocalVariable(name: "o", arg: 1, scope: !927, file: !117, line: 141, type: !901)
!932 = !DILocalVariable(name: "s", arg: 2, scope: !927, file: !117, line: 141, type: !75)
!933 = !DILocation(line: 141, column: 44, scope: !927)
!934 = !DILocation(line: 141, column: 66, scope: !927)
!935 = !DILocation(line: 143, column: 4, scope: !927)
!936 = !DILocation(line: 143, column: 39, scope: !927)
!937 = !DILocation(line: 143, column: 45, scope: !927)
!938 = !DILocation(line: 144, column: 1, scope: !927)
!939 = distinct !DISubprogram(name: "set_char_quoting", scope: !117, file: !117, line: 152, type: !940, isLocal: false, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, unit: !72, retainedNodes: !942)
!940 = !DISubroutineType(types: !941)
!941 = !{!19, !901, !8, !19}
!942 = !{!943, !944, !945, !946, !948, !950, !951}
!943 = !DILocalVariable(name: "o", arg: 1, scope: !939, file: !117, line: 152, type: !901)
!944 = !DILocalVariable(name: "c", arg: 2, scope: !939, file: !117, line: 152, type: !8)
!945 = !DILocalVariable(name: "i", arg: 3, scope: !939, file: !117, line: 152, type: !19)
!946 = !DILocalVariable(name: "uc", scope: !939, file: !117, line: 154, type: !947)
!947 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!948 = !DILocalVariable(name: "p", scope: !939, file: !117, line: 155, type: !949)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!950 = !DILocalVariable(name: "shift", scope: !939, file: !117, line: 157, type: !19)
!951 = !DILocalVariable(name: "r", scope: !939, file: !117, line: 158, type: !19)
!952 = !DILocation(line: 152, column: 43, scope: !939)
!953 = !DILocation(line: 152, column: 51, scope: !939)
!954 = !DILocation(line: 152, column: 58, scope: !939)
!955 = !DILocation(line: 154, column: 17, scope: !939)
!956 = !DILocation(line: 156, column: 6, scope: !939)
!957 = !DILocation(line: 156, column: 62, scope: !939)
!958 = !DILocation(line: 156, column: 57, scope: !939)
!959 = !DILocation(line: 155, column: 17, scope: !939)
!960 = !DILocation(line: 157, column: 15, scope: !939)
!961 = !DILocation(line: 157, column: 7, scope: !939)
!962 = !DILocation(line: 158, column: 12, scope: !939)
!963 = !DILocation(line: 158, column: 15, scope: !939)
!964 = !DILocation(line: 158, column: 25, scope: !939)
!965 = !DILocation(line: 158, column: 7, scope: !939)
!966 = !DILocation(line: 159, column: 13, scope: !939)
!967 = !DILocation(line: 159, column: 18, scope: !939)
!968 = !DILocation(line: 159, column: 23, scope: !939)
!969 = !DILocation(line: 159, column: 6, scope: !939)
!970 = !DILocation(line: 160, column: 3, scope: !939)
!971 = distinct !DISubprogram(name: "set_quoting_flags", scope: !117, file: !117, line: 168, type: !972, isLocal: false, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true, unit: !72, retainedNodes: !974)
!972 = !DISubroutineType(types: !973)
!973 = !{!19, !901, !19}
!974 = !{!975, !976, !977}
!975 = !DILocalVariable(name: "o", arg: 1, scope: !971, file: !117, line: 168, type: !901)
!976 = !DILocalVariable(name: "i", arg: 2, scope: !971, file: !117, line: 168, type: !19)
!977 = !DILocalVariable(name: "r", scope: !971, file: !117, line: 170, type: !19)
!978 = !DILocation(line: 168, column: 44, scope: !971)
!979 = !DILocation(line: 168, column: 51, scope: !971)
!980 = !DILocation(line: 171, column: 8, scope: !981)
!981 = distinct !DILexicalBlock(scope: !971, file: !117, line: 171, column: 7)
!982 = !DILocation(line: 171, column: 7, scope: !971)
!983 = !DILocation(line: 173, column: 10, scope: !971)
!984 = !{!925, !723, i64 4}
!985 = !DILocation(line: 170, column: 7, scope: !971)
!986 = !DILocation(line: 174, column: 12, scope: !971)
!987 = !DILocation(line: 175, column: 3, scope: !971)
!988 = distinct !DISubprogram(name: "set_custom_quoting", scope: !117, file: !117, line: 179, type: !989, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !72, retainedNodes: !991)
!989 = !DISubroutineType(types: !990)
!990 = !{null, !901, !6, !6}
!991 = !{!992, !993, !994}
!992 = !DILocalVariable(name: "o", arg: 1, scope: !988, file: !117, line: 179, type: !901)
!993 = !DILocalVariable(name: "left_quote", arg: 2, scope: !988, file: !117, line: 180, type: !6)
!994 = !DILocalVariable(name: "right_quote", arg: 3, scope: !988, file: !117, line: 180, type: !6)
!995 = !DILocation(line: 179, column: 45, scope: !988)
!996 = !DILocation(line: 180, column: 33, scope: !988)
!997 = !DILocation(line: 180, column: 57, scope: !988)
!998 = !DILocation(line: 182, column: 8, scope: !999)
!999 = distinct !DILexicalBlock(scope: !988, file: !117, line: 182, column: 7)
!1000 = !DILocation(line: 182, column: 7, scope: !988)
!1001 = !DILocation(line: 184, column: 6, scope: !988)
!1002 = !DILocation(line: 184, column: 12, scope: !988)
!1003 = !DILocation(line: 185, column: 8, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !988, file: !117, line: 185, column: 7)
!1005 = !DILocation(line: 185, column: 23, scope: !1004)
!1006 = !DILocation(line: 185, column: 19, scope: !1004)
!1007 = !DILocation(line: 186, column: 5, scope: !1004)
!1008 = !DILocation(line: 187, column: 6, scope: !988)
!1009 = !DILocation(line: 187, column: 17, scope: !988)
!1010 = !{!925, !636, i64 40}
!1011 = !DILocation(line: 188, column: 6, scope: !988)
!1012 = !DILocation(line: 188, column: 18, scope: !988)
!1013 = !{!925, !636, i64 48}
!1014 = !DILocation(line: 189, column: 1, scope: !988)
!1015 = distinct !DISubprogram(name: "quotearg_buffer", scope: !117, file: !117, line: 784, type: !1016, isLocal: false, isDefinition: true, scopeLine: 787, flags: DIFlagPrototyped, isOptimized: true, unit: !72, retainedNodes: !1018)
!1016 = !DISubroutineType(types: !1017)
!1017 = !{!112, !67, !112, !6, !112, !917}
!1018 = !{!1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026}
!1019 = !DILocalVariable(name: "buffer", arg: 1, scope: !1015, file: !117, line: 784, type: !67)
!1020 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1015, file: !117, line: 784, type: !112)
!1021 = !DILocalVariable(name: "arg", arg: 3, scope: !1015, file: !117, line: 785, type: !6)
!1022 = !DILocalVariable(name: "argsize", arg: 4, scope: !1015, file: !117, line: 785, type: !112)
!1023 = !DILocalVariable(name: "o", arg: 5, scope: !1015, file: !117, line: 786, type: !917)
!1024 = !DILocalVariable(name: "p", scope: !1015, file: !117, line: 788, type: !917)
!1025 = !DILocalVariable(name: "e", scope: !1015, file: !117, line: 789, type: !19)
!1026 = !DILocalVariable(name: "r", scope: !1015, file: !117, line: 790, type: !112)
!1027 = !DILocation(line: 784, column: 24, scope: !1015)
!1028 = !DILocation(line: 784, column: 39, scope: !1015)
!1029 = !DILocation(line: 785, column: 30, scope: !1015)
!1030 = !DILocation(line: 785, column: 42, scope: !1015)
!1031 = !DILocation(line: 786, column: 48, scope: !1015)
!1032 = !DILocation(line: 788, column: 37, scope: !1015)
!1033 = !DILocation(line: 788, column: 33, scope: !1015)
!1034 = !DILocation(line: 789, column: 11, scope: !1015)
!1035 = !DILocation(line: 789, column: 7, scope: !1015)
!1036 = !DILocation(line: 791, column: 43, scope: !1015)
!1037 = !DILocation(line: 791, column: 53, scope: !1015)
!1038 = !DILocation(line: 791, column: 60, scope: !1015)
!1039 = !DILocation(line: 792, column: 43, scope: !1015)
!1040 = !DILocation(line: 792, column: 58, scope: !1015)
!1041 = !DILocation(line: 790, column: 14, scope: !1015)
!1042 = !DILocation(line: 790, column: 10, scope: !1015)
!1043 = !DILocation(line: 793, column: 9, scope: !1015)
!1044 = !DILocation(line: 794, column: 3, scope: !1015)
!1045 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !117, file: !117, line: 256, type: !1046, isLocal: true, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: true, unit: !72, retainedNodes: !1050)
!1046 = !DISubroutineType(types: !1047)
!1047 = !{!112, !67, !112, !6, !112, !75, !19, !1048, !6, !6}
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !77)
!1050 = !{!1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1075, !1076, !1077, !1078, !1079, !1082, !1083, !1101, !1104, !1105, !1112}
!1051 = !DILocalVariable(name: "buffer", arg: 1, scope: !1045, file: !117, line: 256, type: !67)
!1052 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1045, file: !117, line: 256, type: !112)
!1053 = !DILocalVariable(name: "arg", arg: 3, scope: !1045, file: !117, line: 257, type: !6)
!1054 = !DILocalVariable(name: "argsize", arg: 4, scope: !1045, file: !117, line: 257, type: !112)
!1055 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1045, file: !117, line: 258, type: !75)
!1056 = !DILocalVariable(name: "flags", arg: 6, scope: !1045, file: !117, line: 258, type: !19)
!1057 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1045, file: !117, line: 259, type: !1048)
!1058 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1045, file: !117, line: 260, type: !6)
!1059 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1045, file: !117, line: 261, type: !6)
!1060 = !DILocalVariable(name: "i", scope: !1045, file: !117, line: 263, type: !112)
!1061 = !DILocalVariable(name: "len", scope: !1045, file: !117, line: 264, type: !112)
!1062 = !DILocalVariable(name: "orig_buffersize", scope: !1045, file: !117, line: 265, type: !112)
!1063 = !DILocalVariable(name: "quote_string", scope: !1045, file: !117, line: 266, type: !6)
!1064 = !DILocalVariable(name: "quote_string_len", scope: !1045, file: !117, line: 267, type: !112)
!1065 = !DILocalVariable(name: "backslash_escapes", scope: !1045, file: !117, line: 268, type: !38)
!1066 = !DILocalVariable(name: "unibyte_locale", scope: !1045, file: !117, line: 269, type: !38)
!1067 = !DILocalVariable(name: "elide_outer_quotes", scope: !1045, file: !117, line: 270, type: !38)
!1068 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1045, file: !117, line: 271, type: !38)
!1069 = !DILocalVariable(name: "encountered_single_quote", scope: !1045, file: !117, line: 272, type: !38)
!1070 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1045, file: !117, line: 273, type: !38)
!1071 = !DILocalVariable(name: "c", scope: !1072, file: !117, line: 402, type: !947)
!1072 = distinct !DILexicalBlock(scope: !1073, file: !117, line: 401, column: 5)
!1073 = distinct !DILexicalBlock(scope: !1074, file: !117, line: 400, column: 3)
!1074 = distinct !DILexicalBlock(scope: !1045, file: !117, line: 400, column: 3)
!1075 = !DILocalVariable(name: "esc", scope: !1072, file: !117, line: 403, type: !947)
!1076 = !DILocalVariable(name: "is_right_quote", scope: !1072, file: !117, line: 404, type: !38)
!1077 = !DILocalVariable(name: "escaping", scope: !1072, file: !117, line: 405, type: !38)
!1078 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1072, file: !117, line: 406, type: !38)
!1079 = !DILocalVariable(name: "m", scope: !1080, file: !117, line: 610, type: !112)
!1080 = distinct !DILexicalBlock(scope: !1081, file: !117, line: 608, column: 11)
!1081 = distinct !DILexicalBlock(scope: !1072, file: !117, line: 426, column: 9)
!1082 = !DILocalVariable(name: "printable", scope: !1080, file: !117, line: 612, type: !38)
!1083 = !DILocalVariable(name: "mbstate", scope: !1084, file: !117, line: 621, type: !1086)
!1084 = distinct !DILexicalBlock(scope: !1085, file: !117, line: 620, column: 15)
!1085 = distinct !DILexicalBlock(scope: !1080, file: !117, line: 614, column: 17)
!1086 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1087, line: 6, baseType: !1088)
!1087 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1088 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1089, line: 21, baseType: !1090)
!1089 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1090 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1089, line: 13, size: 64, elements: !1091)
!1091 = !{!1092, !1093}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1090, file: !1089, line: 15, baseType: !19, size: 32)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1090, file: !1089, line: 20, baseType: !1094, size: 32, offset: 32)
!1094 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1090, file: !1089, line: 16, size: 32, elements: !1095)
!1095 = !{!1096, !1097}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1094, file: !1089, line: 18, baseType: !77, size: 32)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1094, file: !1089, line: 19, baseType: !1098, size: 32)
!1098 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 32, elements: !1099)
!1099 = !{!1100}
!1100 = !DISubrange(count: 4)
!1101 = !DILocalVariable(name: "w", scope: !1102, file: !117, line: 631, type: !1103)
!1102 = distinct !DILexicalBlock(scope: !1084, file: !117, line: 630, column: 19)
!1103 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !113, line: 90, baseType: !19)
!1104 = !DILocalVariable(name: "bytes", scope: !1102, file: !117, line: 632, type: !112)
!1105 = !DILocalVariable(name: "j", scope: !1106, file: !117, line: 657, type: !112)
!1106 = distinct !DILexicalBlock(scope: !1107, file: !117, line: 656, column: 27)
!1107 = distinct !DILexicalBlock(scope: !1108, file: !117, line: 654, column: 29)
!1108 = distinct !DILexicalBlock(scope: !1109, file: !117, line: 649, column: 23)
!1109 = distinct !DILexicalBlock(scope: !1110, file: !117, line: 641, column: 30)
!1110 = distinct !DILexicalBlock(scope: !1111, file: !117, line: 636, column: 30)
!1111 = distinct !DILexicalBlock(scope: !1102, file: !117, line: 634, column: 25)
!1112 = !DILocalVariable(name: "ilim", scope: !1113, file: !117, line: 684, type: !112)
!1113 = distinct !DILexicalBlock(scope: !1114, file: !117, line: 681, column: 15)
!1114 = distinct !DILexicalBlock(scope: !1080, file: !117, line: 680, column: 17)
!1115 = !DILocation(line: 256, column: 33, scope: !1045)
!1116 = !DILocation(line: 256, column: 48, scope: !1045)
!1117 = !DILocation(line: 257, column: 39, scope: !1045)
!1118 = !DILocation(line: 257, column: 51, scope: !1045)
!1119 = !DILocation(line: 258, column: 46, scope: !1045)
!1120 = !DILocation(line: 258, column: 65, scope: !1045)
!1121 = !DILocation(line: 259, column: 47, scope: !1045)
!1122 = !DILocation(line: 260, column: 39, scope: !1045)
!1123 = !DILocation(line: 261, column: 39, scope: !1045)
!1124 = !DILocation(line: 264, column: 10, scope: !1045)
!1125 = !DILocation(line: 265, column: 10, scope: !1045)
!1126 = !DILocation(line: 266, column: 15, scope: !1045)
!1127 = !DILocation(line: 267, column: 10, scope: !1045)
!1128 = !DILocation(line: 268, column: 8, scope: !1045)
!1129 = !DILocation(line: 269, column: 25, scope: !1045)
!1130 = !DILocation(line: 269, column: 36, scope: !1045)
!1131 = !DILocation(line: 270, column: 8, scope: !1045)
!1132 = !DILocation(line: 271, column: 8, scope: !1045)
!1133 = !DILocation(line: 272, column: 8, scope: !1045)
!1134 = !DILocation(line: 273, column: 8, scope: !1045)
!1135 = !DILocation(line: 273, column: 3, scope: !1045)
!1136 = !DILocation(line: 0, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1045, file: !117, line: 317, column: 5)
!1138 = !DILocation(line: 316, column: 3, scope: !1045)
!1139 = !DILocation(line: 323, column: 11, scope: !1137)
!1140 = !DILocation(line: 323, column: 12, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1137, file: !117, line: 323, column: 11)
!1142 = !DILocation(line: 324, column: 9, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !1144, file: !117, line: 324, column: 9)
!1144 = distinct !DILexicalBlock(scope: !1141, file: !117, line: 324, column: 9)
!1145 = !DILocation(line: 324, column: 9, scope: !1144)
!1146 = !{!637, !637, i64 0}
!1147 = !DILocation(line: 362, column: 26, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1149, file: !117, line: 340, column: 11)
!1149 = distinct !DILexicalBlock(scope: !1150, file: !117, line: 339, column: 13)
!1150 = distinct !DILexicalBlock(scope: !1137, file: !117, line: 338, column: 7)
!1151 = !DILocation(line: 363, column: 27, scope: !1148)
!1152 = !DILocation(line: 364, column: 11, scope: !1148)
!1153 = !DILocation(line: 365, column: 14, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1150, file: !117, line: 365, column: 13)
!1155 = !DILocation(line: 365, column: 13, scope: !1150)
!1156 = !DILocation(line: 366, column: 43, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1158, file: !117, line: 366, column: 11)
!1158 = distinct !DILexicalBlock(scope: !1154, file: !117, line: 366, column: 11)
!1159 = !DILocation(line: 366, column: 11, scope: !1158)
!1160 = !DILocation(line: 367, column: 13, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1162, file: !117, line: 367, column: 13)
!1162 = distinct !DILexicalBlock(scope: !1157, file: !117, line: 367, column: 13)
!1163 = !DILocation(line: 367, column: 13, scope: !1162)
!1164 = !DILocation(line: 366, column: 70, scope: !1157)
!1165 = distinct !{!1165, !1159, !1166}
!1166 = !DILocation(line: 367, column: 13, scope: !1158)
!1167 = !DILocation(line: 370, column: 28, scope: !1150)
!1168 = !DILocation(line: 372, column: 7, scope: !1137)
!1169 = !DILocation(line: 376, column: 7, scope: !1137)
!1170 = !DILocation(line: 379, column: 7, scope: !1137)
!1171 = !DILocation(line: 381, column: 12, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1137, file: !117, line: 381, column: 11)
!1173 = !DILocation(line: 381, column: 11, scope: !1137)
!1174 = !DILocation(line: 0, scope: !1172)
!1175 = !DILocation(line: 386, column: 12, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1137, file: !117, line: 386, column: 11)
!1177 = !DILocation(line: 386, column: 11, scope: !1137)
!1178 = !DILocation(line: 387, column: 9, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1180, file: !117, line: 387, column: 9)
!1180 = distinct !DILexicalBlock(scope: !1176, file: !117, line: 387, column: 9)
!1181 = !DILocation(line: 387, column: 9, scope: !1180)
!1182 = !DILocation(line: 394, column: 7, scope: !1137)
!1183 = !DILocation(line: 397, column: 7, scope: !1137)
!1184 = !DILocation(line: 0, scope: !1045)
!1185 = !DILocation(line: 263, column: 10, scope: !1045)
!1186 = !DILocation(line: 400, column: 8, scope: !1074)
!1187 = !DILocation(line: 0, scope: !1073)
!1188 = !DILocation(line: 400, column: 27, scope: !1073)
!1189 = !DILocation(line: 400, column: 19, scope: !1073)
!1190 = !DILocation(line: 400, column: 41, scope: !1073)
!1191 = !DILocation(line: 400, column: 48, scope: !1073)
!1192 = !DILocation(line: 400, column: 3, scope: !1074)
!1193 = !DILocation(line: 400, column: 60, scope: !1073)
!1194 = !DILocation(line: 404, column: 12, scope: !1072)
!1195 = !DILocation(line: 405, column: 12, scope: !1072)
!1196 = !DILocation(line: 406, column: 12, scope: !1072)
!1197 = !DILocation(line: 409, column: 11, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1072, file: !117, line: 408, column: 11)
!1199 = !DILocation(line: 411, column: 17, scope: !1198)
!1200 = !DILocation(line: 412, column: 39, scope: !1198)
!1201 = !DILocation(line: 416, column: 32, scope: !1198)
!1202 = !DILocation(line: 412, column: 19, scope: !1198)
!1203 = !DILocation(line: 412, column: 15, scope: !1198)
!1204 = !DILocation(line: 417, column: 11, scope: !1198)
!1205 = !DILocation(line: 417, column: 26, scope: !1198)
!1206 = !DILocation(line: 417, column: 14, scope: !1198)
!1207 = !DILocation(line: 417, column: 63, scope: !1198)
!1208 = !DILocation(line: 408, column: 11, scope: !1072)
!1209 = !DILocation(line: 0, scope: !1072)
!1210 = !DILocation(line: 424, column: 11, scope: !1072)
!1211 = !DILocation(line: 402, column: 21, scope: !1072)
!1212 = !DILocation(line: 425, column: 7, scope: !1072)
!1213 = !DILocation(line: 428, column: 15, scope: !1081)
!1214 = !DILocation(line: 430, column: 15, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1216, file: !117, line: 430, column: 15)
!1216 = distinct !DILexicalBlock(scope: !1217, file: !117, line: 429, column: 13)
!1217 = distinct !DILexicalBlock(scope: !1081, file: !117, line: 428, column: 15)
!1218 = !DILocation(line: 430, column: 15, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1215, file: !117, line: 430, column: 15)
!1220 = !DILocation(line: 430, column: 15, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1222, file: !117, line: 430, column: 15)
!1222 = distinct !DILexicalBlock(scope: !1223, file: !117, line: 430, column: 15)
!1223 = distinct !DILexicalBlock(scope: !1219, file: !117, line: 430, column: 15)
!1224 = !DILocation(line: 430, column: 15, scope: !1222)
!1225 = !DILocation(line: 430, column: 15, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1227, file: !117, line: 430, column: 15)
!1227 = distinct !DILexicalBlock(scope: !1223, file: !117, line: 430, column: 15)
!1228 = !DILocation(line: 430, column: 15, scope: !1227)
!1229 = !DILocation(line: 430, column: 15, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1231, file: !117, line: 430, column: 15)
!1231 = distinct !DILexicalBlock(scope: !1223, file: !117, line: 430, column: 15)
!1232 = !DILocation(line: 430, column: 15, scope: !1231)
!1233 = !DILocation(line: 430, column: 15, scope: !1223)
!1234 = !DILocation(line: 430, column: 15, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1236, file: !117, line: 430, column: 15)
!1236 = distinct !DILexicalBlock(scope: !1215, file: !117, line: 430, column: 15)
!1237 = !DILocation(line: 430, column: 15, scope: !1236)
!1238 = !DILocation(line: 438, column: 19, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1216, file: !117, line: 437, column: 19)
!1240 = !DILocation(line: 438, column: 24, scope: !1239)
!1241 = !DILocation(line: 438, column: 28, scope: !1239)
!1242 = !DILocation(line: 438, column: 38, scope: !1239)
!1243 = !DILocation(line: 438, column: 48, scope: !1239)
!1244 = !DILocation(line: 438, column: 59, scope: !1239)
!1245 = !DILocation(line: 440, column: 19, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1247, file: !117, line: 440, column: 19)
!1247 = distinct !DILexicalBlock(scope: !1248, file: !117, line: 440, column: 19)
!1248 = distinct !DILexicalBlock(scope: !1239, file: !117, line: 439, column: 17)
!1249 = !DILocation(line: 440, column: 19, scope: !1247)
!1250 = !DILocation(line: 441, column: 19, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1252, file: !117, line: 441, column: 19)
!1252 = distinct !DILexicalBlock(scope: !1248, file: !117, line: 441, column: 19)
!1253 = !DILocation(line: 441, column: 19, scope: !1252)
!1254 = !DILocation(line: 442, column: 17, scope: !1248)
!1255 = !DILocation(line: 449, column: 20, scope: !1217)
!1256 = !DILocation(line: 454, column: 11, scope: !1081)
!1257 = !DILocation(line: 457, column: 19, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !1081, file: !117, line: 455, column: 13)
!1259 = !DILocation(line: 463, column: 19, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1258, file: !117, line: 462, column: 19)
!1261 = !DILocation(line: 463, column: 24, scope: !1260)
!1262 = !DILocation(line: 463, column: 28, scope: !1260)
!1263 = !DILocation(line: 463, column: 38, scope: !1260)
!1264 = !DILocation(line: 463, column: 47, scope: !1260)
!1265 = !DILocation(line: 463, column: 41, scope: !1260)
!1266 = !DILocation(line: 463, column: 52, scope: !1260)
!1267 = !DILocation(line: 462, column: 19, scope: !1258)
!1268 = !DILocation(line: 464, column: 25, scope: !1260)
!1269 = !DILocation(line: 464, column: 17, scope: !1260)
!1270 = !DILocation(line: 471, column: 25, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1260, file: !117, line: 465, column: 19)
!1272 = !DILocation(line: 475, column: 21, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1274, file: !117, line: 475, column: 21)
!1274 = distinct !DILexicalBlock(scope: !1271, file: !117, line: 475, column: 21)
!1275 = !DILocation(line: 475, column: 21, scope: !1274)
!1276 = !DILocation(line: 476, column: 21, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1278, file: !117, line: 476, column: 21)
!1278 = distinct !DILexicalBlock(scope: !1271, file: !117, line: 476, column: 21)
!1279 = !DILocation(line: 476, column: 21, scope: !1278)
!1280 = !DILocation(line: 477, column: 21, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1282, file: !117, line: 477, column: 21)
!1282 = distinct !DILexicalBlock(scope: !1271, file: !117, line: 477, column: 21)
!1283 = !DILocation(line: 477, column: 21, scope: !1282)
!1284 = !DILocation(line: 478, column: 21, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1286, file: !117, line: 478, column: 21)
!1286 = distinct !DILexicalBlock(scope: !1271, file: !117, line: 478, column: 21)
!1287 = !DILocation(line: 478, column: 21, scope: !1286)
!1288 = !DILocation(line: 479, column: 21, scope: !1271)
!1289 = !DILocation(line: 403, column: 21, scope: !1072)
!1290 = !DILocation(line: 492, column: 31, scope: !1081)
!1291 = !DILocation(line: 493, column: 31, scope: !1081)
!1292 = !DILocation(line: 495, column: 31, scope: !1081)
!1293 = !DILocation(line: 496, column: 31, scope: !1081)
!1294 = !DILocation(line: 497, column: 31, scope: !1081)
!1295 = !DILocation(line: 500, column: 15, scope: !1081)
!1296 = !DILocation(line: 502, column: 19, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1298, file: !117, line: 501, column: 13)
!1298 = distinct !DILexicalBlock(scope: !1081, file: !117, line: 500, column: 15)
!1299 = !DILocation(line: 509, column: 33, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1081, file: !117, line: 509, column: 15)
!1301 = !DILocation(line: 0, scope: !1081)
!1302 = !DILocation(line: 514, column: 15, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1081, file: !117, line: 513, column: 15)
!1304 = !DILocation(line: 518, column: 15, scope: !1081)
!1305 = !DILocation(line: 526, column: 26, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1081, file: !117, line: 526, column: 15)
!1307 = !DILocation(line: 526, column: 15, scope: !1081)
!1308 = !DILocation(line: 526, column: 40, scope: !1306)
!1309 = !DILocation(line: 526, column: 47, scope: !1306)
!1310 = !DILocation(line: 530, column: 17, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1081, file: !117, line: 530, column: 15)
!1312 = !DILocation(line: 526, column: 18, scope: !1306)
!1313 = !DILocation(line: 526, column: 65, scope: !1306)
!1314 = !DILocation(line: 530, column: 15, scope: !1081)
!1315 = !DILocation(line: 535, column: 11, scope: !1081)
!1316 = !DILocation(line: 549, column: 15, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1081, file: !117, line: 548, column: 15)
!1318 = !DILocation(line: 556, column: 15, scope: !1081)
!1319 = !DILocation(line: 558, column: 19, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1321, file: !117, line: 557, column: 13)
!1321 = distinct !DILexicalBlock(scope: !1081, file: !117, line: 556, column: 15)
!1322 = !DILocation(line: 561, column: 19, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1320, file: !117, line: 561, column: 19)
!1324 = !DILocation(line: 561, column: 35, scope: !1323)
!1325 = !DILocation(line: 561, column: 30, scope: !1323)
!1326 = !DILocation(line: 570, column: 15, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1328, file: !117, line: 570, column: 15)
!1328 = distinct !DILexicalBlock(scope: !1320, file: !117, line: 570, column: 15)
!1329 = !DILocation(line: 570, column: 15, scope: !1328)
!1330 = !DILocation(line: 571, column: 15, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1332, file: !117, line: 571, column: 15)
!1332 = distinct !DILexicalBlock(scope: !1320, file: !117, line: 571, column: 15)
!1333 = !DILocation(line: 571, column: 15, scope: !1332)
!1334 = !DILocation(line: 572, column: 15, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1336, file: !117, line: 572, column: 15)
!1336 = distinct !DILexicalBlock(scope: !1320, file: !117, line: 572, column: 15)
!1337 = !DILocation(line: 572, column: 15, scope: !1336)
!1338 = !DILocation(line: 574, column: 13, scope: !1320)
!1339 = !DILocation(line: 614, column: 17, scope: !1080)
!1340 = !DILocation(line: 610, column: 20, scope: !1080)
!1341 = !DILocation(line: 617, column: 29, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1085, file: !117, line: 615, column: 15)
!1343 = !{!1344, !1344, i64 0}
!1344 = !{!"short", !637, i64 0}
!1345 = !DILocation(line: 617, column: 27, scope: !1342)
!1346 = !DILocation(line: 612, column: 18, scope: !1080)
!1347 = !DILocation(line: 618, column: 15, scope: !1342)
!1348 = !DILocation(line: 621, column: 17, scope: !1084)
!1349 = !DILocation(line: 622, column: 17, scope: !1084)
!1350 = !DILocation(line: 626, column: 29, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1084, file: !117, line: 626, column: 21)
!1352 = !DILocation(line: 626, column: 21, scope: !1084)
!1353 = !DILocation(line: 627, column: 29, scope: !1351)
!1354 = !DILocation(line: 627, column: 19, scope: !1351)
!1355 = !DILocation(line: 0, scope: !1198)
!1356 = !DILocation(line: 629, column: 17, scope: !1084)
!1357 = !DILocation(line: 624, column: 19, scope: !1084)
!1358 = !DILocation(line: 625, column: 27, scope: !1084)
!1359 = !DILocation(line: 631, column: 21, scope: !1102)
!1360 = !DILocation(line: 632, column: 56, scope: !1102)
!1361 = !DILocation(line: 632, column: 50, scope: !1102)
!1362 = !DILocation(line: 633, column: 53, scope: !1102)
!1363 = !DILocation(line: 621, column: 27, scope: !1084)
!1364 = !DILocation(line: 631, column: 29, scope: !1102)
!1365 = !DILocation(line: 632, column: 36, scope: !1102)
!1366 = !DILocation(line: 632, column: 28, scope: !1102)
!1367 = !DILocation(line: 634, column: 25, scope: !1102)
!1368 = !DILocation(line: 644, column: 38, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1109, file: !117, line: 642, column: 23)
!1370 = !DILocation(line: 644, column: 48, scope: !1369)
!1371 = !DILocation(line: 644, column: 51, scope: !1369)
!1372 = !DILocation(line: 644, column: 25, scope: !1369)
!1373 = !DILocation(line: 645, column: 28, scope: !1369)
!1374 = !DILocation(line: 644, column: 34, scope: !1369)
!1375 = distinct !{!1375, !1372, !1373}
!1376 = !DILocation(line: 658, column: 43, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1378, file: !117, line: 658, column: 29)
!1378 = distinct !DILexicalBlock(scope: !1106, file: !117, line: 658, column: 29)
!1379 = !DILocation(line: 655, column: 29, scope: !1107)
!1380 = !DILocation(line: 657, column: 36, scope: !1106)
!1381 = !DILocation(line: 659, column: 49, scope: !1377)
!1382 = !DILocation(line: 659, column: 39, scope: !1377)
!1383 = !DILocation(line: 659, column: 31, scope: !1377)
!1384 = !DILocation(line: 658, column: 53, scope: !1377)
!1385 = !DILocation(line: 658, column: 29, scope: !1378)
!1386 = distinct !{!1386, !1385, !1387}
!1387 = !DILocation(line: 667, column: 33, scope: !1378)
!1388 = !DILocation(line: 674, column: 19, scope: !1084)
!1389 = !DILocation(line: 670, column: 41, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1108, file: !117, line: 670, column: 29)
!1391 = !DILocation(line: 670, column: 31, scope: !1390)
!1392 = !DILocation(line: 670, column: 29, scope: !1108)
!1393 = !DILocation(line: 672, column: 27, scope: !1108)
!1394 = !DILocation(line: 675, column: 26, scope: !1084)
!1395 = !DILocation(line: 675, column: 24, scope: !1084)
!1396 = !DILocation(line: 674, column: 19, scope: !1102)
!1397 = distinct !{!1397, !1356, !1398}
!1398 = !DILocation(line: 675, column: 44, scope: !1084)
!1399 = !DILocation(line: 676, column: 15, scope: !1085)
!1400 = !DILocation(line: 0, scope: !1351)
!1401 = !DILocation(line: 0, scope: !1084)
!1402 = !DILocation(line: 678, column: 40, scope: !1080)
!1403 = !DILocation(line: 680, column: 19, scope: !1114)
!1404 = !DILocation(line: 680, column: 45, scope: !1114)
!1405 = !DILocation(line: 680, column: 23, scope: !1114)
!1406 = !DILocation(line: 684, column: 33, scope: !1113)
!1407 = !DILocation(line: 684, column: 24, scope: !1113)
!1408 = !DILocation(line: 686, column: 17, scope: !1113)
!1409 = !DILocation(line: 0, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1411, file: !117, line: 687, column: 19)
!1411 = distinct !DILexicalBlock(scope: !1412, file: !117, line: 686, column: 17)
!1412 = distinct !DILexicalBlock(scope: !1113, file: !117, line: 686, column: 17)
!1413 = !DILocation(line: 0, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1410, file: !117, line: 703, column: 21)
!1415 = !DILocation(line: 0, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1417, file: !117, line: 696, column: 23)
!1417 = distinct !DILexicalBlock(scope: !1418, file: !117, line: 695, column: 30)
!1418 = distinct !DILexicalBlock(scope: !1410, file: !117, line: 688, column: 25)
!1419 = !DILocation(line: 688, column: 43, scope: !1418)
!1420 = !DILocation(line: 690, column: 25, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1422, file: !117, line: 690, column: 25)
!1422 = distinct !DILexicalBlock(scope: !1418, file: !117, line: 689, column: 23)
!1423 = !DILocation(line: 690, column: 25, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1421, file: !117, line: 690, column: 25)
!1425 = !DILocation(line: 690, column: 25, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1427, file: !117, line: 690, column: 25)
!1427 = distinct !DILexicalBlock(scope: !1428, file: !117, line: 690, column: 25)
!1428 = distinct !DILexicalBlock(scope: !1424, file: !117, line: 690, column: 25)
!1429 = !DILocation(line: 690, column: 25, scope: !1427)
!1430 = !DILocation(line: 690, column: 25, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1432, file: !117, line: 690, column: 25)
!1432 = distinct !DILexicalBlock(scope: !1428, file: !117, line: 690, column: 25)
!1433 = !DILocation(line: 690, column: 25, scope: !1432)
!1434 = !DILocation(line: 690, column: 25, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !1436, file: !117, line: 690, column: 25)
!1436 = distinct !DILexicalBlock(scope: !1428, file: !117, line: 690, column: 25)
!1437 = !DILocation(line: 690, column: 25, scope: !1436)
!1438 = !DILocation(line: 690, column: 25, scope: !1428)
!1439 = !DILocation(line: 690, column: 25, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1441, file: !117, line: 690, column: 25)
!1441 = distinct !DILexicalBlock(scope: !1421, file: !117, line: 690, column: 25)
!1442 = !DILocation(line: 690, column: 25, scope: !1441)
!1443 = !DILocation(line: 691, column: 25, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1445, file: !117, line: 691, column: 25)
!1445 = distinct !DILexicalBlock(scope: !1422, file: !117, line: 691, column: 25)
!1446 = !DILocation(line: 691, column: 25, scope: !1445)
!1447 = !DILocation(line: 692, column: 25, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1449, file: !117, line: 692, column: 25)
!1449 = distinct !DILexicalBlock(scope: !1422, file: !117, line: 692, column: 25)
!1450 = !DILocation(line: 692, column: 25, scope: !1449)
!1451 = !DILocation(line: 693, column: 38, scope: !1422)
!1452 = !DILocation(line: 693, column: 33, scope: !1422)
!1453 = !DILocation(line: 694, column: 23, scope: !1422)
!1454 = !DILocation(line: 695, column: 30, scope: !1417)
!1455 = !DILocation(line: 695, column: 30, scope: !1418)
!1456 = !DILocation(line: 697, column: 25, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !1458, file: !117, line: 697, column: 25)
!1458 = distinct !DILexicalBlock(scope: !1416, file: !117, line: 697, column: 25)
!1459 = !DILocation(line: 697, column: 25, scope: !1458)
!1460 = !DILocation(line: 699, column: 23, scope: !1416)
!1461 = !DILocation(line: 0, scope: !1449)
!1462 = !DILocation(line: 0, scope: !1422)
!1463 = !DILocation(line: 0, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1198, file: !117, line: 418, column: 9)
!1465 = !DILocation(line: 0, scope: !1421)
!1466 = !DILocation(line: 700, column: 35, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1410, file: !117, line: 700, column: 25)
!1468 = !DILocation(line: 700, column: 30, scope: !1467)
!1469 = !DILocation(line: 700, column: 25, scope: !1410)
!1470 = !DILocation(line: 702, column: 21, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1472, file: !117, line: 702, column: 21)
!1472 = distinct !DILexicalBlock(scope: !1410, file: !117, line: 702, column: 21)
!1473 = !DILocation(line: 702, column: 21, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1475, file: !117, line: 702, column: 21)
!1475 = distinct !DILexicalBlock(scope: !1476, file: !117, line: 702, column: 21)
!1476 = distinct !DILexicalBlock(scope: !1471, file: !117, line: 702, column: 21)
!1477 = !DILocation(line: 702, column: 21, scope: !1475)
!1478 = !DILocation(line: 702, column: 21, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !1480, file: !117, line: 702, column: 21)
!1480 = distinct !DILexicalBlock(scope: !1476, file: !117, line: 702, column: 21)
!1481 = !DILocation(line: 702, column: 21, scope: !1480)
!1482 = !DILocation(line: 702, column: 21, scope: !1476)
!1483 = !DILocation(line: 0, scope: !1458)
!1484 = !DILocation(line: 703, column: 21, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1414, file: !117, line: 703, column: 21)
!1486 = !DILocation(line: 703, column: 21, scope: !1414)
!1487 = !DILocation(line: 704, column: 25, scope: !1410)
!1488 = !DILocation(line: 686, column: 17, scope: !1411)
!1489 = distinct !{!1489, !1490, !1491}
!1490 = !DILocation(line: 686, column: 17, scope: !1412)
!1491 = !DILocation(line: 705, column: 19, scope: !1412)
!1492 = !DILocation(line: 0, scope: !1074)
!1493 = !DILocation(line: 416, column: 30, scope: !1198)
!1494 = !DILocation(line: 712, column: 34, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1072, file: !117, line: 712, column: 11)
!1496 = !DILocation(line: 714, column: 14, scope: !1495)
!1497 = !DILocation(line: 715, column: 14, scope: !1495)
!1498 = !DILocation(line: 715, column: 35, scope: !1495)
!1499 = !DILocation(line: 715, column: 17, scope: !1495)
!1500 = !DILocation(line: 715, column: 47, scope: !1495)
!1501 = !DILocation(line: 715, column: 65, scope: !1495)
!1502 = !DILocation(line: 716, column: 15, scope: !1495)
!1503 = !DILocation(line: 716, column: 11, scope: !1495)
!1504 = !DILocation(line: 712, column: 11, scope: !1072)
!1505 = !DILocation(line: 400, column: 10, scope: !1074)
!1506 = !DILocation(line: 0, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1508, file: !117, line: 519, column: 13)
!1508 = distinct !DILexicalBlock(scope: !1081, file: !117, line: 518, column: 15)
!1509 = !DILocation(line: 720, column: 7, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1072, file: !117, line: 720, column: 7)
!1511 = !DILocation(line: 720, column: 7, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !1510, file: !117, line: 720, column: 7)
!1513 = !DILocation(line: 720, column: 7, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1515, file: !117, line: 720, column: 7)
!1515 = distinct !DILexicalBlock(scope: !1516, file: !117, line: 720, column: 7)
!1516 = distinct !DILexicalBlock(scope: !1512, file: !117, line: 720, column: 7)
!1517 = !DILocation(line: 720, column: 7, scope: !1515)
!1518 = !DILocation(line: 720, column: 7, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1520, file: !117, line: 720, column: 7)
!1520 = distinct !DILexicalBlock(scope: !1516, file: !117, line: 720, column: 7)
!1521 = !DILocation(line: 720, column: 7, scope: !1520)
!1522 = !DILocation(line: 720, column: 7, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1524, file: !117, line: 720, column: 7)
!1524 = distinct !DILexicalBlock(scope: !1516, file: !117, line: 720, column: 7)
!1525 = !DILocation(line: 720, column: 7, scope: !1524)
!1526 = !DILocation(line: 720, column: 7, scope: !1516)
!1527 = !DILocation(line: 720, column: 7, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1529, file: !117, line: 720, column: 7)
!1529 = distinct !DILexicalBlock(scope: !1510, file: !117, line: 720, column: 7)
!1530 = !DILocation(line: 720, column: 7, scope: !1529)
!1531 = !DILocation(line: 723, column: 7, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1533, file: !117, line: 723, column: 7)
!1533 = distinct !DILexicalBlock(scope: !1072, file: !117, line: 723, column: 7)
!1534 = !DILocation(line: 424, column: 9, scope: !1072)
!1535 = !DILocation(line: 723, column: 7, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1537, file: !117, line: 723, column: 7)
!1537 = distinct !DILexicalBlock(scope: !1538, file: !117, line: 723, column: 7)
!1538 = distinct !DILexicalBlock(scope: !1532, file: !117, line: 723, column: 7)
!1539 = !DILocation(line: 723, column: 7, scope: !1537)
!1540 = !DILocation(line: 723, column: 7, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1542, file: !117, line: 723, column: 7)
!1542 = distinct !DILexicalBlock(scope: !1538, file: !117, line: 723, column: 7)
!1543 = !DILocation(line: 723, column: 7, scope: !1542)
!1544 = !DILocation(line: 723, column: 7, scope: !1538)
!1545 = !DILocation(line: 724, column: 7, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1547, file: !117, line: 724, column: 7)
!1547 = distinct !DILexicalBlock(scope: !1072, file: !117, line: 724, column: 7)
!1548 = !DILocation(line: 724, column: 7, scope: !1547)
!1549 = !DILocation(line: 726, column: 13, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1072, file: !117, line: 726, column: 11)
!1551 = !DILocation(line: 726, column: 11, scope: !1072)
!1552 = !DILocation(line: 728, column: 5, scope: !1073)
!1553 = !DILocation(line: 400, column: 75, scope: !1073)
!1554 = !DILocation(line: 400, column: 3, scope: !1073)
!1555 = distinct !{!1555, !1192, !1556}
!1556 = !DILocation(line: 728, column: 5, scope: !1074)
!1557 = !DILocation(line: 730, column: 11, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1045, file: !117, line: 730, column: 7)
!1559 = !DILocation(line: 730, column: 16, scope: !1558)
!1560 = !DILocation(line: 738, column: 51, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1045, file: !117, line: 738, column: 7)
!1562 = !DILocation(line: 739, column: 10, scope: !1561)
!1563 = !DILocation(line: 741, column: 11, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1565, file: !117, line: 741, column: 11)
!1565 = distinct !DILexicalBlock(scope: !1561, file: !117, line: 740, column: 5)
!1566 = !DILocation(line: 741, column: 11, scope: !1565)
!1567 = !DILocation(line: 742, column: 16, scope: !1564)
!1568 = !DILocation(line: 742, column: 9, scope: !1564)
!1569 = !DILocation(line: 746, column: 18, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1564, file: !117, line: 746, column: 16)
!1571 = !DILocation(line: 746, column: 32, scope: !1570)
!1572 = !DILocation(line: 746, column: 29, scope: !1570)
!1573 = !DILocation(line: 755, column: 7, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1045, file: !117, line: 755, column: 7)
!1575 = !DILocation(line: 755, column: 20, scope: !1574)
!1576 = !DILocation(line: 756, column: 12, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1578, file: !117, line: 756, column: 5)
!1578 = distinct !DILexicalBlock(scope: !1574, file: !117, line: 756, column: 5)
!1579 = !DILocation(line: 756, column: 5, scope: !1578)
!1580 = !DILocation(line: 757, column: 7, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1582, file: !117, line: 757, column: 7)
!1582 = distinct !DILexicalBlock(scope: !1577, file: !117, line: 757, column: 7)
!1583 = !DILocation(line: 757, column: 7, scope: !1582)
!1584 = !DILocation(line: 756, column: 39, scope: !1577)
!1585 = distinct !{!1585, !1579, !1586}
!1586 = !DILocation(line: 757, column: 7, scope: !1578)
!1587 = !DILocation(line: 759, column: 11, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1045, file: !117, line: 759, column: 7)
!1589 = !DILocation(line: 759, column: 7, scope: !1045)
!1590 = !DILocation(line: 760, column: 5, scope: !1588)
!1591 = !DILocation(line: 760, column: 17, scope: !1588)
!1592 = !DILocation(line: 766, column: 21, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1045, file: !117, line: 766, column: 7)
!1594 = !DILocation(line: 766, column: 54, scope: !1593)
!1595 = !DILocation(line: 766, column: 51, scope: !1593)
!1596 = !DILocation(line: 770, column: 42, scope: !1045)
!1597 = !DILocation(line: 768, column: 10, scope: !1045)
!1598 = !DILocation(line: 768, column: 3, scope: !1045)
!1599 = !DILocation(line: 772, column: 1, scope: !1045)
!1600 = distinct !DISubprogram(name: "gettext_quote", scope: !117, file: !117, line: 207, type: !1601, isLocal: true, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: true, unit: !72, retainedNodes: !1603)
!1601 = !DISubroutineType(types: !1602)
!1602 = !{!6, !6, !75}
!1603 = !{!1604, !1605, !1606, !1607}
!1604 = !DILocalVariable(name: "msgid", arg: 1, scope: !1600, file: !117, line: 207, type: !6)
!1605 = !DILocalVariable(name: "s", arg: 2, scope: !1600, file: !117, line: 207, type: !75)
!1606 = !DILocalVariable(name: "translation", scope: !1600, file: !117, line: 209, type: !6)
!1607 = !DILocalVariable(name: "locale_code", scope: !1600, file: !117, line: 210, type: !6)
!1608 = !DILocation(line: 207, column: 28, scope: !1600)
!1609 = !DILocation(line: 207, column: 54, scope: !1600)
!1610 = !DILocation(line: 209, column: 29, scope: !1600)
!1611 = !DILocation(line: 209, column: 15, scope: !1600)
!1612 = !DILocation(line: 212, column: 19, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1600, file: !117, line: 212, column: 7)
!1614 = !DILocation(line: 212, column: 7, scope: !1600)
!1615 = !DILocation(line: 233, column: 17, scope: !1600)
!1616 = !DILocation(line: 210, column: 15, scope: !1600)
!1617 = !DILocalVariable(name: "s1", arg: 1, scope: !1618, file: !1619, line: 160, type: !6)
!1618 = distinct !DISubprogram(name: "strcaseeq0", scope: !1619, file: !1619, line: 160, type: !1620, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !72, retainedNodes: !1622)
!1619 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1620 = !DISubroutineType(types: !1621)
!1621 = !{!19, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8, !8}
!1622 = !{!1617, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632}
!1623 = !DILocalVariable(name: "s2", arg: 2, scope: !1618, file: !1619, line: 160, type: !6)
!1624 = !DILocalVariable(name: "s20", arg: 3, scope: !1618, file: !1619, line: 160, type: !8)
!1625 = !DILocalVariable(name: "s21", arg: 4, scope: !1618, file: !1619, line: 160, type: !8)
!1626 = !DILocalVariable(name: "s22", arg: 5, scope: !1618, file: !1619, line: 160, type: !8)
!1627 = !DILocalVariable(name: "s23", arg: 6, scope: !1618, file: !1619, line: 160, type: !8)
!1628 = !DILocalVariable(name: "s24", arg: 7, scope: !1618, file: !1619, line: 160, type: !8)
!1629 = !DILocalVariable(name: "s25", arg: 8, scope: !1618, file: !1619, line: 160, type: !8)
!1630 = !DILocalVariable(name: "s26", arg: 9, scope: !1618, file: !1619, line: 160, type: !8)
!1631 = !DILocalVariable(name: "s27", arg: 10, scope: !1618, file: !1619, line: 160, type: !8)
!1632 = !DILocalVariable(name: "s28", arg: 11, scope: !1618, file: !1619, line: 160, type: !8)
!1633 = !DILocation(line: 160, column: 25, scope: !1618, inlinedAt: !1634)
!1634 = distinct !DILocation(line: 234, column: 7, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1600, file: !117, line: 234, column: 7)
!1636 = !DILocation(line: 160, column: 41, scope: !1618, inlinedAt: !1634)
!1637 = !DILocation(line: 160, column: 50, scope: !1618, inlinedAt: !1634)
!1638 = !DILocation(line: 160, column: 60, scope: !1618, inlinedAt: !1634)
!1639 = !DILocation(line: 160, column: 70, scope: !1618, inlinedAt: !1634)
!1640 = !DILocation(line: 160, column: 80, scope: !1618, inlinedAt: !1634)
!1641 = !DILocation(line: 160, column: 90, scope: !1618, inlinedAt: !1634)
!1642 = !DILocation(line: 160, column: 100, scope: !1618, inlinedAt: !1634)
!1643 = !DILocation(line: 160, column: 110, scope: !1618, inlinedAt: !1634)
!1644 = !DILocation(line: 160, column: 120, scope: !1618, inlinedAt: !1634)
!1645 = !DILocation(line: 160, column: 130, scope: !1618, inlinedAt: !1634)
!1646 = !DILocation(line: 162, column: 7, scope: !1647, inlinedAt: !1634)
!1647 = distinct !DILexicalBlock(scope: !1618, file: !1619, line: 162, column: 7)
!1648 = !DILocalVariable(name: "s1", arg: 1, scope: !1649, file: !1619, line: 146, type: !6)
!1649 = distinct !DISubprogram(name: "strcaseeq1", scope: !1619, file: !1619, line: 146, type: !1650, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !72, retainedNodes: !1652)
!1650 = !DISubroutineType(types: !1651)
!1651 = !{!19, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8}
!1652 = !{!1648, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661}
!1653 = !DILocalVariable(name: "s2", arg: 2, scope: !1649, file: !1619, line: 146, type: !6)
!1654 = !DILocalVariable(name: "s21", arg: 3, scope: !1649, file: !1619, line: 146, type: !8)
!1655 = !DILocalVariable(name: "s22", arg: 4, scope: !1649, file: !1619, line: 146, type: !8)
!1656 = !DILocalVariable(name: "s23", arg: 5, scope: !1649, file: !1619, line: 146, type: !8)
!1657 = !DILocalVariable(name: "s24", arg: 6, scope: !1649, file: !1619, line: 146, type: !8)
!1658 = !DILocalVariable(name: "s25", arg: 7, scope: !1649, file: !1619, line: 146, type: !8)
!1659 = !DILocalVariable(name: "s26", arg: 8, scope: !1649, file: !1619, line: 146, type: !8)
!1660 = !DILocalVariable(name: "s27", arg: 9, scope: !1649, file: !1619, line: 146, type: !8)
!1661 = !DILocalVariable(name: "s28", arg: 10, scope: !1649, file: !1619, line: 146, type: !8)
!1662 = !DILocation(line: 146, column: 25, scope: !1649, inlinedAt: !1663)
!1663 = distinct !DILocation(line: 167, column: 16, scope: !1664, inlinedAt: !1634)
!1664 = distinct !DILexicalBlock(scope: !1665, file: !1619, line: 164, column: 11)
!1665 = distinct !DILexicalBlock(scope: !1647, file: !1619, line: 163, column: 5)
!1666 = !DILocation(line: 146, column: 41, scope: !1649, inlinedAt: !1663)
!1667 = !DILocation(line: 146, column: 50, scope: !1649, inlinedAt: !1663)
!1668 = !DILocation(line: 146, column: 60, scope: !1649, inlinedAt: !1663)
!1669 = !DILocation(line: 146, column: 70, scope: !1649, inlinedAt: !1663)
!1670 = !DILocation(line: 146, column: 80, scope: !1649, inlinedAt: !1663)
!1671 = !DILocation(line: 146, column: 90, scope: !1649, inlinedAt: !1663)
!1672 = !DILocation(line: 146, column: 100, scope: !1649, inlinedAt: !1663)
!1673 = !DILocation(line: 146, column: 110, scope: !1649, inlinedAt: !1663)
!1674 = !DILocation(line: 146, column: 120, scope: !1649, inlinedAt: !1663)
!1675 = !DILocation(line: 148, column: 7, scope: !1676, inlinedAt: !1663)
!1676 = distinct !DILexicalBlock(scope: !1649, file: !1619, line: 148, column: 7)
!1677 = !DILocalVariable(name: "s1", arg: 1, scope: !1678, file: !1619, line: 132, type: !6)
!1678 = distinct !DISubprogram(name: "strcaseeq2", scope: !1619, file: !1619, line: 132, type: !1679, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !72, retainedNodes: !1681)
!1679 = !DISubroutineType(types: !1680)
!1680 = !{!19, !6, !6, !8, !8, !8, !8, !8, !8, !8}
!1681 = !{!1677, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689}
!1682 = !DILocalVariable(name: "s2", arg: 2, scope: !1678, file: !1619, line: 132, type: !6)
!1683 = !DILocalVariable(name: "s22", arg: 3, scope: !1678, file: !1619, line: 132, type: !8)
!1684 = !DILocalVariable(name: "s23", arg: 4, scope: !1678, file: !1619, line: 132, type: !8)
!1685 = !DILocalVariable(name: "s24", arg: 5, scope: !1678, file: !1619, line: 132, type: !8)
!1686 = !DILocalVariable(name: "s25", arg: 6, scope: !1678, file: !1619, line: 132, type: !8)
!1687 = !DILocalVariable(name: "s26", arg: 7, scope: !1678, file: !1619, line: 132, type: !8)
!1688 = !DILocalVariable(name: "s27", arg: 8, scope: !1678, file: !1619, line: 132, type: !8)
!1689 = !DILocalVariable(name: "s28", arg: 9, scope: !1678, file: !1619, line: 132, type: !8)
!1690 = !DILocation(line: 132, column: 25, scope: !1678, inlinedAt: !1691)
!1691 = distinct !DILocation(line: 153, column: 16, scope: !1692, inlinedAt: !1663)
!1692 = distinct !DILexicalBlock(scope: !1693, file: !1619, line: 150, column: 11)
!1693 = distinct !DILexicalBlock(scope: !1676, file: !1619, line: 149, column: 5)
!1694 = !DILocation(line: 132, column: 41, scope: !1678, inlinedAt: !1691)
!1695 = !DILocation(line: 132, column: 50, scope: !1678, inlinedAt: !1691)
!1696 = !DILocation(line: 132, column: 60, scope: !1678, inlinedAt: !1691)
!1697 = !DILocation(line: 132, column: 70, scope: !1678, inlinedAt: !1691)
!1698 = !DILocation(line: 132, column: 80, scope: !1678, inlinedAt: !1691)
!1699 = !DILocation(line: 132, column: 90, scope: !1678, inlinedAt: !1691)
!1700 = !DILocation(line: 132, column: 100, scope: !1678, inlinedAt: !1691)
!1701 = !DILocation(line: 132, column: 110, scope: !1678, inlinedAt: !1691)
!1702 = !DILocation(line: 134, column: 7, scope: !1703, inlinedAt: !1691)
!1703 = distinct !DILexicalBlock(scope: !1678, file: !1619, line: 134, column: 7)
!1704 = !DILocalVariable(name: "s1", arg: 1, scope: !1705, file: !1619, line: 118, type: !6)
!1705 = distinct !DISubprogram(name: "strcaseeq3", scope: !1619, file: !1619, line: 118, type: !1706, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !72, retainedNodes: !1708)
!1706 = !DISubroutineType(types: !1707)
!1707 = !{!19, !6, !6, !8, !8, !8, !8, !8, !8}
!1708 = !{!1704, !1709, !1710, !1711, !1712, !1713, !1714, !1715}
!1709 = !DILocalVariable(name: "s2", arg: 2, scope: !1705, file: !1619, line: 118, type: !6)
!1710 = !DILocalVariable(name: "s23", arg: 3, scope: !1705, file: !1619, line: 118, type: !8)
!1711 = !DILocalVariable(name: "s24", arg: 4, scope: !1705, file: !1619, line: 118, type: !8)
!1712 = !DILocalVariable(name: "s25", arg: 5, scope: !1705, file: !1619, line: 118, type: !8)
!1713 = !DILocalVariable(name: "s26", arg: 6, scope: !1705, file: !1619, line: 118, type: !8)
!1714 = !DILocalVariable(name: "s27", arg: 7, scope: !1705, file: !1619, line: 118, type: !8)
!1715 = !DILocalVariable(name: "s28", arg: 8, scope: !1705, file: !1619, line: 118, type: !8)
!1716 = !DILocation(line: 118, column: 25, scope: !1705, inlinedAt: !1717)
!1717 = distinct !DILocation(line: 139, column: 16, scope: !1718, inlinedAt: !1691)
!1718 = distinct !DILexicalBlock(scope: !1719, file: !1619, line: 136, column: 11)
!1719 = distinct !DILexicalBlock(scope: !1703, file: !1619, line: 135, column: 5)
!1720 = !DILocation(line: 118, column: 41, scope: !1705, inlinedAt: !1717)
!1721 = !DILocation(line: 118, column: 50, scope: !1705, inlinedAt: !1717)
!1722 = !DILocation(line: 118, column: 60, scope: !1705, inlinedAt: !1717)
!1723 = !DILocation(line: 118, column: 70, scope: !1705, inlinedAt: !1717)
!1724 = !DILocation(line: 118, column: 80, scope: !1705, inlinedAt: !1717)
!1725 = !DILocation(line: 118, column: 90, scope: !1705, inlinedAt: !1717)
!1726 = !DILocation(line: 118, column: 100, scope: !1705, inlinedAt: !1717)
!1727 = !DILocation(line: 120, column: 7, scope: !1728, inlinedAt: !1717)
!1728 = distinct !DILexicalBlock(scope: !1705, file: !1619, line: 120, column: 7)
!1729 = !DILocation(line: 120, column: 7, scope: !1705, inlinedAt: !1717)
!1730 = !DILocalVariable(name: "s1", arg: 1, scope: !1731, file: !1619, line: 104, type: !6)
!1731 = distinct !DISubprogram(name: "strcaseeq4", scope: !1619, file: !1619, line: 104, type: !1732, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !72, retainedNodes: !1734)
!1732 = !DISubroutineType(types: !1733)
!1733 = !{!19, !6, !6, !8, !8, !8, !8, !8}
!1734 = !{!1730, !1735, !1736, !1737, !1738, !1739, !1740}
!1735 = !DILocalVariable(name: "s2", arg: 2, scope: !1731, file: !1619, line: 104, type: !6)
!1736 = !DILocalVariable(name: "s24", arg: 3, scope: !1731, file: !1619, line: 104, type: !8)
!1737 = !DILocalVariable(name: "s25", arg: 4, scope: !1731, file: !1619, line: 104, type: !8)
!1738 = !DILocalVariable(name: "s26", arg: 5, scope: !1731, file: !1619, line: 104, type: !8)
!1739 = !DILocalVariable(name: "s27", arg: 6, scope: !1731, file: !1619, line: 104, type: !8)
!1740 = !DILocalVariable(name: "s28", arg: 7, scope: !1731, file: !1619, line: 104, type: !8)
!1741 = !DILocation(line: 104, column: 25, scope: !1731, inlinedAt: !1742)
!1742 = distinct !DILocation(line: 125, column: 16, scope: !1743, inlinedAt: !1717)
!1743 = distinct !DILexicalBlock(scope: !1744, file: !1619, line: 122, column: 11)
!1744 = distinct !DILexicalBlock(scope: !1728, file: !1619, line: 121, column: 5)
!1745 = !DILocation(line: 104, column: 41, scope: !1731, inlinedAt: !1742)
!1746 = !DILocation(line: 104, column: 50, scope: !1731, inlinedAt: !1742)
!1747 = !DILocation(line: 104, column: 60, scope: !1731, inlinedAt: !1742)
!1748 = !DILocation(line: 104, column: 70, scope: !1731, inlinedAt: !1742)
!1749 = !DILocation(line: 104, column: 80, scope: !1731, inlinedAt: !1742)
!1750 = !DILocation(line: 104, column: 90, scope: !1731, inlinedAt: !1742)
!1751 = !DILocation(line: 106, column: 7, scope: !1752, inlinedAt: !1742)
!1752 = distinct !DILexicalBlock(scope: !1731, file: !1619, line: 106, column: 7)
!1753 = !DILocation(line: 106, column: 7, scope: !1731, inlinedAt: !1742)
!1754 = !DILocalVariable(name: "s1", arg: 1, scope: !1755, file: !1619, line: 90, type: !6)
!1755 = distinct !DISubprogram(name: "strcaseeq5", scope: !1619, file: !1619, line: 90, type: !1756, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !72, retainedNodes: !1758)
!1756 = !DISubroutineType(types: !1757)
!1757 = !{!19, !6, !6, !8, !8, !8, !8}
!1758 = !{!1754, !1759, !1760, !1761, !1762, !1763}
!1759 = !DILocalVariable(name: "s2", arg: 2, scope: !1755, file: !1619, line: 90, type: !6)
!1760 = !DILocalVariable(name: "s25", arg: 3, scope: !1755, file: !1619, line: 90, type: !8)
!1761 = !DILocalVariable(name: "s26", arg: 4, scope: !1755, file: !1619, line: 90, type: !8)
!1762 = !DILocalVariable(name: "s27", arg: 5, scope: !1755, file: !1619, line: 90, type: !8)
!1763 = !DILocalVariable(name: "s28", arg: 6, scope: !1755, file: !1619, line: 90, type: !8)
!1764 = !DILocation(line: 90, column: 25, scope: !1755, inlinedAt: !1765)
!1765 = distinct !DILocation(line: 111, column: 16, scope: !1766, inlinedAt: !1742)
!1766 = distinct !DILexicalBlock(scope: !1767, file: !1619, line: 108, column: 11)
!1767 = distinct !DILexicalBlock(scope: !1752, file: !1619, line: 107, column: 5)
!1768 = !DILocation(line: 90, column: 41, scope: !1755, inlinedAt: !1765)
!1769 = !DILocation(line: 90, column: 50, scope: !1755, inlinedAt: !1765)
!1770 = !DILocation(line: 90, column: 60, scope: !1755, inlinedAt: !1765)
!1771 = !DILocation(line: 90, column: 70, scope: !1755, inlinedAt: !1765)
!1772 = !DILocation(line: 90, column: 80, scope: !1755, inlinedAt: !1765)
!1773 = !DILocation(line: 92, column: 7, scope: !1774, inlinedAt: !1765)
!1774 = distinct !DILexicalBlock(scope: !1755, file: !1619, line: 92, column: 7)
!1775 = !DILocation(line: 92, column: 7, scope: !1755, inlinedAt: !1765)
!1776 = !DILocation(line: 235, column: 12, scope: !1635)
!1777 = !DILocation(line: 235, column: 21, scope: !1635)
!1778 = !DILocation(line: 235, column: 5, scope: !1635)
!1779 = !DILocation(line: 146, column: 25, scope: !1649, inlinedAt: !1780)
!1780 = distinct !DILocation(line: 167, column: 16, scope: !1664, inlinedAt: !1781)
!1781 = distinct !DILocation(line: 236, column: 7, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1600, file: !117, line: 236, column: 7)
!1783 = !DILocation(line: 146, column: 41, scope: !1649, inlinedAt: !1780)
!1784 = !DILocation(line: 146, column: 50, scope: !1649, inlinedAt: !1780)
!1785 = !DILocation(line: 146, column: 60, scope: !1649, inlinedAt: !1780)
!1786 = !DILocation(line: 146, column: 70, scope: !1649, inlinedAt: !1780)
!1787 = !DILocation(line: 146, column: 80, scope: !1649, inlinedAt: !1780)
!1788 = !DILocation(line: 146, column: 90, scope: !1649, inlinedAt: !1780)
!1789 = !DILocation(line: 146, column: 100, scope: !1649, inlinedAt: !1780)
!1790 = !DILocation(line: 146, column: 110, scope: !1649, inlinedAt: !1780)
!1791 = !DILocation(line: 146, column: 120, scope: !1649, inlinedAt: !1780)
!1792 = !DILocation(line: 148, column: 7, scope: !1676, inlinedAt: !1780)
!1793 = !DILocation(line: 132, column: 25, scope: !1678, inlinedAt: !1794)
!1794 = distinct !DILocation(line: 153, column: 16, scope: !1692, inlinedAt: !1780)
!1795 = !DILocation(line: 132, column: 41, scope: !1678, inlinedAt: !1794)
!1796 = !DILocation(line: 132, column: 50, scope: !1678, inlinedAt: !1794)
!1797 = !DILocation(line: 132, column: 60, scope: !1678, inlinedAt: !1794)
!1798 = !DILocation(line: 132, column: 70, scope: !1678, inlinedAt: !1794)
!1799 = !DILocation(line: 132, column: 80, scope: !1678, inlinedAt: !1794)
!1800 = !DILocation(line: 132, column: 90, scope: !1678, inlinedAt: !1794)
!1801 = !DILocation(line: 132, column: 100, scope: !1678, inlinedAt: !1794)
!1802 = !DILocation(line: 132, column: 110, scope: !1678, inlinedAt: !1794)
!1803 = !DILocation(line: 134, column: 7, scope: !1703, inlinedAt: !1794)
!1804 = !DILocation(line: 134, column: 7, scope: !1678, inlinedAt: !1794)
!1805 = !DILocation(line: 118, column: 25, scope: !1705, inlinedAt: !1806)
!1806 = distinct !DILocation(line: 139, column: 16, scope: !1718, inlinedAt: !1794)
!1807 = !DILocation(line: 118, column: 41, scope: !1705, inlinedAt: !1806)
!1808 = !DILocation(line: 118, column: 50, scope: !1705, inlinedAt: !1806)
!1809 = !DILocation(line: 118, column: 60, scope: !1705, inlinedAt: !1806)
!1810 = !DILocation(line: 118, column: 70, scope: !1705, inlinedAt: !1806)
!1811 = !DILocation(line: 118, column: 80, scope: !1705, inlinedAt: !1806)
!1812 = !DILocation(line: 118, column: 90, scope: !1705, inlinedAt: !1806)
!1813 = !DILocation(line: 118, column: 100, scope: !1705, inlinedAt: !1806)
!1814 = !DILocation(line: 120, column: 7, scope: !1728, inlinedAt: !1806)
!1815 = !DILocation(line: 120, column: 7, scope: !1705, inlinedAt: !1806)
!1816 = !DILocation(line: 104, column: 25, scope: !1731, inlinedAt: !1817)
!1817 = distinct !DILocation(line: 125, column: 16, scope: !1743, inlinedAt: !1806)
!1818 = !DILocation(line: 104, column: 41, scope: !1731, inlinedAt: !1817)
!1819 = !DILocation(line: 104, column: 50, scope: !1731, inlinedAt: !1817)
!1820 = !DILocation(line: 104, column: 60, scope: !1731, inlinedAt: !1817)
!1821 = !DILocation(line: 104, column: 70, scope: !1731, inlinedAt: !1817)
!1822 = !DILocation(line: 104, column: 80, scope: !1731, inlinedAt: !1817)
!1823 = !DILocation(line: 104, column: 90, scope: !1731, inlinedAt: !1817)
!1824 = !DILocation(line: 106, column: 7, scope: !1752, inlinedAt: !1817)
!1825 = !DILocation(line: 106, column: 7, scope: !1731, inlinedAt: !1817)
!1826 = !DILocation(line: 90, column: 25, scope: !1755, inlinedAt: !1827)
!1827 = distinct !DILocation(line: 111, column: 16, scope: !1766, inlinedAt: !1817)
!1828 = !DILocation(line: 90, column: 41, scope: !1755, inlinedAt: !1827)
!1829 = !DILocation(line: 90, column: 50, scope: !1755, inlinedAt: !1827)
!1830 = !DILocation(line: 90, column: 60, scope: !1755, inlinedAt: !1827)
!1831 = !DILocation(line: 90, column: 70, scope: !1755, inlinedAt: !1827)
!1832 = !DILocation(line: 90, column: 80, scope: !1755, inlinedAt: !1827)
!1833 = !DILocation(line: 92, column: 7, scope: !1774, inlinedAt: !1827)
!1834 = !DILocation(line: 92, column: 7, scope: !1755, inlinedAt: !1827)
!1835 = !DILocalVariable(name: "s1", arg: 1, scope: !1836, file: !1619, line: 76, type: !6)
!1836 = distinct !DISubprogram(name: "strcaseeq6", scope: !1619, file: !1619, line: 76, type: !1837, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !72, retainedNodes: !1839)
!1837 = !DISubroutineType(types: !1838)
!1838 = !{!19, !6, !6, !8, !8, !8}
!1839 = !{!1835, !1840, !1841, !1842, !1843}
!1840 = !DILocalVariable(name: "s2", arg: 2, scope: !1836, file: !1619, line: 76, type: !6)
!1841 = !DILocalVariable(name: "s26", arg: 3, scope: !1836, file: !1619, line: 76, type: !8)
!1842 = !DILocalVariable(name: "s27", arg: 4, scope: !1836, file: !1619, line: 76, type: !8)
!1843 = !DILocalVariable(name: "s28", arg: 5, scope: !1836, file: !1619, line: 76, type: !8)
!1844 = !DILocation(line: 76, column: 25, scope: !1836, inlinedAt: !1845)
!1845 = distinct !DILocation(line: 97, column: 16, scope: !1846, inlinedAt: !1827)
!1846 = distinct !DILexicalBlock(scope: !1847, file: !1619, line: 94, column: 11)
!1847 = distinct !DILexicalBlock(scope: !1774, file: !1619, line: 93, column: 5)
!1848 = !DILocation(line: 76, column: 41, scope: !1836, inlinedAt: !1845)
!1849 = !DILocation(line: 76, column: 50, scope: !1836, inlinedAt: !1845)
!1850 = !DILocation(line: 76, column: 60, scope: !1836, inlinedAt: !1845)
!1851 = !DILocation(line: 76, column: 70, scope: !1836, inlinedAt: !1845)
!1852 = !DILocation(line: 78, column: 7, scope: !1853, inlinedAt: !1845)
!1853 = distinct !DILexicalBlock(scope: !1836, file: !1619, line: 78, column: 7)
!1854 = !DILocation(line: 78, column: 7, scope: !1836, inlinedAt: !1845)
!1855 = !DILocalVariable(name: "s1", arg: 1, scope: !1856, file: !1619, line: 62, type: !6)
!1856 = distinct !DISubprogram(name: "strcaseeq7", scope: !1619, file: !1619, line: 62, type: !1857, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !72, retainedNodes: !1859)
!1857 = !DISubroutineType(types: !1858)
!1858 = !{!19, !6, !6, !8, !8}
!1859 = !{!1855, !1860, !1861, !1862}
!1860 = !DILocalVariable(name: "s2", arg: 2, scope: !1856, file: !1619, line: 62, type: !6)
!1861 = !DILocalVariable(name: "s27", arg: 3, scope: !1856, file: !1619, line: 62, type: !8)
!1862 = !DILocalVariable(name: "s28", arg: 4, scope: !1856, file: !1619, line: 62, type: !8)
!1863 = !DILocation(line: 62, column: 25, scope: !1856, inlinedAt: !1864)
!1864 = distinct !DILocation(line: 83, column: 16, scope: !1865, inlinedAt: !1845)
!1865 = distinct !DILexicalBlock(scope: !1866, file: !1619, line: 80, column: 11)
!1866 = distinct !DILexicalBlock(scope: !1853, file: !1619, line: 79, column: 5)
!1867 = !DILocation(line: 62, column: 41, scope: !1856, inlinedAt: !1864)
!1868 = !DILocation(line: 62, column: 50, scope: !1856, inlinedAt: !1864)
!1869 = !DILocation(line: 62, column: 60, scope: !1856, inlinedAt: !1864)
!1870 = !DILocation(line: 64, column: 7, scope: !1871, inlinedAt: !1864)
!1871 = distinct !DILexicalBlock(scope: !1856, file: !1619, line: 64, column: 7)
!1872 = !DILocation(line: 236, column: 7, scope: !1600)
!1873 = !DILocation(line: 237, column: 12, scope: !1782)
!1874 = !DILocation(line: 237, column: 21, scope: !1782)
!1875 = !DILocation(line: 237, column: 5, scope: !1782)
!1876 = !DILocation(line: 239, column: 13, scope: !1600)
!1877 = !DILocation(line: 239, column: 11, scope: !1600)
!1878 = !DILocation(line: 239, column: 3, scope: !1600)
!1879 = !DILocation(line: 0, scope: !1600)
!1880 = !DILocation(line: 240, column: 1, scope: !1600)
!1881 = distinct !DISubprogram(name: "quotearg_alloc", scope: !117, file: !117, line: 799, type: !1882, isLocal: false, isDefinition: true, scopeLine: 801, flags: DIFlagPrototyped, isOptimized: true, unit: !72, retainedNodes: !1884)
!1882 = !DISubroutineType(types: !1883)
!1883 = !{!67, !6, !112, !917}
!1884 = !{!1885, !1886, !1887}
!1885 = !DILocalVariable(name: "arg", arg: 1, scope: !1881, file: !117, line: 799, type: !6)
!1886 = !DILocalVariable(name: "argsize", arg: 2, scope: !1881, file: !117, line: 799, type: !112)
!1887 = !DILocalVariable(name: "o", arg: 3, scope: !1881, file: !117, line: 800, type: !917)
!1888 = !DILocation(line: 799, column: 29, scope: !1881)
!1889 = !DILocation(line: 799, column: 41, scope: !1881)
!1890 = !DILocation(line: 800, column: 47, scope: !1881)
!1891 = !DILocalVariable(name: "arg", arg: 1, scope: !1892, file: !117, line: 812, type: !6)
!1892 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !117, file: !117, line: 812, type: !1893, isLocal: false, isDefinition: true, scopeLine: 814, flags: DIFlagPrototyped, isOptimized: true, unit: !72, retainedNodes: !1895)
!1893 = !DISubroutineType(types: !1894)
!1894 = !{!67, !6, !112, !181, !917}
!1895 = !{!1891, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903}
!1896 = !DILocalVariable(name: "argsize", arg: 2, scope: !1892, file: !117, line: 812, type: !112)
!1897 = !DILocalVariable(name: "size", arg: 3, scope: !1892, file: !117, line: 812, type: !181)
!1898 = !DILocalVariable(name: "o", arg: 4, scope: !1892, file: !117, line: 813, type: !917)
!1899 = !DILocalVariable(name: "p", scope: !1892, file: !117, line: 815, type: !917)
!1900 = !DILocalVariable(name: "e", scope: !1892, file: !117, line: 816, type: !19)
!1901 = !DILocalVariable(name: "flags", scope: !1892, file: !117, line: 818, type: !19)
!1902 = !DILocalVariable(name: "bufsize", scope: !1892, file: !117, line: 819, type: !112)
!1903 = !DILocalVariable(name: "buf", scope: !1892, file: !117, line: 823, type: !67)
!1904 = !DILocation(line: 812, column: 33, scope: !1892, inlinedAt: !1905)
!1905 = distinct !DILocation(line: 802, column: 10, scope: !1881)
!1906 = !DILocation(line: 812, column: 45, scope: !1892, inlinedAt: !1905)
!1907 = !DILocation(line: 812, column: 62, scope: !1892, inlinedAt: !1905)
!1908 = !DILocation(line: 813, column: 51, scope: !1892, inlinedAt: !1905)
!1909 = !DILocation(line: 815, column: 37, scope: !1892, inlinedAt: !1905)
!1910 = !DILocation(line: 815, column: 33, scope: !1892, inlinedAt: !1905)
!1911 = !DILocation(line: 816, column: 11, scope: !1892, inlinedAt: !1905)
!1912 = !DILocation(line: 816, column: 7, scope: !1892, inlinedAt: !1905)
!1913 = !DILocation(line: 818, column: 18, scope: !1892, inlinedAt: !1905)
!1914 = !DILocation(line: 818, column: 24, scope: !1892, inlinedAt: !1905)
!1915 = !DILocation(line: 818, column: 7, scope: !1892, inlinedAt: !1905)
!1916 = !DILocation(line: 819, column: 69, scope: !1892, inlinedAt: !1905)
!1917 = !DILocation(line: 820, column: 53, scope: !1892, inlinedAt: !1905)
!1918 = !DILocation(line: 821, column: 49, scope: !1892, inlinedAt: !1905)
!1919 = !DILocation(line: 822, column: 49, scope: !1892, inlinedAt: !1905)
!1920 = !DILocation(line: 819, column: 20, scope: !1892, inlinedAt: !1905)
!1921 = !DILocation(line: 822, column: 62, scope: !1892, inlinedAt: !1905)
!1922 = !DILocation(line: 819, column: 10, scope: !1892, inlinedAt: !1905)
!1923 = !DILocalVariable(name: "n", arg: 1, scope: !1924, file: !177, line: 216, type: !112)
!1924 = distinct !DISubprogram(name: "xcharalloc", scope: !177, file: !177, line: 216, type: !1925, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !72, retainedNodes: !1927)
!1925 = !DISubroutineType(types: !1926)
!1926 = !{!67, !112}
!1927 = !{!1923}
!1928 = !DILocation(line: 216, column: 20, scope: !1924, inlinedAt: !1929)
!1929 = distinct !DILocation(line: 823, column: 15, scope: !1892, inlinedAt: !1905)
!1930 = !DILocation(line: 218, column: 10, scope: !1924, inlinedAt: !1929)
!1931 = !DILocation(line: 823, column: 9, scope: !1892, inlinedAt: !1905)
!1932 = !DILocation(line: 824, column: 60, scope: !1892, inlinedAt: !1905)
!1933 = !DILocation(line: 826, column: 32, scope: !1892, inlinedAt: !1905)
!1934 = !DILocation(line: 826, column: 47, scope: !1892, inlinedAt: !1905)
!1935 = !DILocation(line: 824, column: 3, scope: !1892, inlinedAt: !1905)
!1936 = !DILocation(line: 827, column: 9, scope: !1892, inlinedAt: !1905)
!1937 = !DILocation(line: 802, column: 3, scope: !1881)
!1938 = !DILocation(line: 812, column: 33, scope: !1892)
!1939 = !DILocation(line: 812, column: 45, scope: !1892)
!1940 = !DILocation(line: 812, column: 62, scope: !1892)
!1941 = !DILocation(line: 813, column: 51, scope: !1892)
!1942 = !DILocation(line: 815, column: 37, scope: !1892)
!1943 = !DILocation(line: 815, column: 33, scope: !1892)
!1944 = !DILocation(line: 816, column: 11, scope: !1892)
!1945 = !DILocation(line: 816, column: 7, scope: !1892)
!1946 = !DILocation(line: 818, column: 18, scope: !1892)
!1947 = !DILocation(line: 818, column: 27, scope: !1892)
!1948 = !DILocation(line: 818, column: 24, scope: !1892)
!1949 = !DILocation(line: 818, column: 7, scope: !1892)
!1950 = !DILocation(line: 819, column: 69, scope: !1892)
!1951 = !DILocation(line: 820, column: 53, scope: !1892)
!1952 = !DILocation(line: 821, column: 49, scope: !1892)
!1953 = !DILocation(line: 822, column: 49, scope: !1892)
!1954 = !DILocation(line: 819, column: 20, scope: !1892)
!1955 = !DILocation(line: 822, column: 62, scope: !1892)
!1956 = !DILocation(line: 819, column: 10, scope: !1892)
!1957 = !DILocation(line: 216, column: 20, scope: !1924, inlinedAt: !1958)
!1958 = distinct !DILocation(line: 823, column: 15, scope: !1892)
!1959 = !DILocation(line: 218, column: 10, scope: !1924, inlinedAt: !1958)
!1960 = !DILocation(line: 823, column: 9, scope: !1892)
!1961 = !DILocation(line: 824, column: 60, scope: !1892)
!1962 = !DILocation(line: 826, column: 32, scope: !1892)
!1963 = !DILocation(line: 826, column: 47, scope: !1892)
!1964 = !DILocation(line: 824, column: 3, scope: !1892)
!1965 = !DILocation(line: 827, column: 9, scope: !1892)
!1966 = !DILocation(line: 828, column: 7, scope: !1892)
!1967 = !DILocation(line: 829, column: 11, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1892, file: !117, line: 828, column: 7)
!1969 = !{!1970, !1970, i64 0}
!1970 = !{!"long", !637, i64 0}
!1971 = !DILocation(line: 829, column: 5, scope: !1968)
!1972 = !DILocation(line: 830, column: 3, scope: !1892)
!1973 = distinct !DISubprogram(name: "quotearg_free", scope: !117, file: !117, line: 848, type: !769, isLocal: false, isDefinition: true, scopeLine: 849, flags: DIFlagPrototyped, isOptimized: true, unit: !72, retainedNodes: !1974)
!1974 = !{!1975, !1976}
!1975 = !DILocalVariable(name: "sv", scope: !1973, file: !117, line: 850, type: !143)
!1976 = !DILocalVariable(name: "i", scope: !1973, file: !117, line: 851, type: !19)
!1977 = !DILocation(line: 850, column: 24, scope: !1973)
!1978 = !DILocation(line: 850, column: 19, scope: !1973)
!1979 = !DILocation(line: 851, column: 7, scope: !1973)
!1980 = !DILocation(line: 852, column: 19, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !1982, file: !117, line: 852, column: 3)
!1982 = distinct !DILexicalBlock(scope: !1973, file: !117, line: 852, column: 3)
!1983 = !DILocation(line: 852, column: 17, scope: !1981)
!1984 = !DILocation(line: 852, column: 3, scope: !1982)
!1985 = !DILocation(line: 853, column: 17, scope: !1981)
!1986 = !{!1987, !636, i64 8}
!1987 = !{!"slotvec", !1970, i64 0, !636, i64 8}
!1988 = !DILocation(line: 853, column: 5, scope: !1981)
!1989 = !DILocation(line: 852, column: 28, scope: !1981)
!1990 = distinct !{!1990, !1984, !1991}
!1991 = !DILocation(line: 853, column: 20, scope: !1982)
!1992 = !DILocation(line: 854, column: 13, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1973, file: !117, line: 854, column: 7)
!1994 = !DILocation(line: 854, column: 17, scope: !1993)
!1995 = !DILocation(line: 854, column: 7, scope: !1973)
!1996 = !DILocation(line: 856, column: 7, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !1993, file: !117, line: 855, column: 5)
!1998 = !DILocation(line: 857, column: 21, scope: !1997)
!1999 = !{!1987, !1970, i64 0}
!2000 = !DILocation(line: 858, column: 20, scope: !1997)
!2001 = !DILocation(line: 859, column: 5, scope: !1997)
!2002 = !DILocation(line: 860, column: 10, scope: !2003)
!2003 = distinct !DILexicalBlock(scope: !1973, file: !117, line: 860, column: 7)
!2004 = !DILocation(line: 860, column: 7, scope: !1973)
!2005 = !DILocation(line: 862, column: 13, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !2003, file: !117, line: 861, column: 5)
!2007 = !DILocation(line: 862, column: 7, scope: !2006)
!2008 = !DILocation(line: 863, column: 15, scope: !2006)
!2009 = !DILocation(line: 864, column: 5, scope: !2006)
!2010 = !DILocation(line: 865, column: 10, scope: !1973)
!2011 = !DILocation(line: 866, column: 1, scope: !1973)
!2012 = distinct !DISubprogram(name: "quotearg_n", scope: !117, file: !117, line: 931, type: !2013, isLocal: false, isDefinition: true, scopeLine: 932, flags: DIFlagPrototyped, isOptimized: true, unit: !72, retainedNodes: !2015)
!2013 = !DISubroutineType(types: !2014)
!2014 = !{!67, !19, !6}
!2015 = !{!2016, !2017}
!2016 = !DILocalVariable(name: "n", arg: 1, scope: !2012, file: !117, line: 931, type: !19)
!2017 = !DILocalVariable(name: "arg", arg: 2, scope: !2012, file: !117, line: 931, type: !6)
!2018 = !DILocation(line: 931, column: 17, scope: !2012)
!2019 = !DILocation(line: 931, column: 32, scope: !2012)
!2020 = !DILocation(line: 933, column: 10, scope: !2012)
!2021 = !DILocation(line: 933, column: 3, scope: !2012)
!2022 = distinct !DISubprogram(name: "quotearg_n_options", scope: !117, file: !117, line: 877, type: !2023, isLocal: true, isDefinition: true, scopeLine: 879, flags: DIFlagPrototyped, isOptimized: true, unit: !72, retainedNodes: !2025)
!2023 = !DISubroutineType(types: !2024)
!2024 = !{!67, !19, !6, !112, !917}
!2025 = !{!2026, !2027, !2028, !2029, !2030, !2031, !2032, !2035, !2036, !2038, !2039, !2040}
!2026 = !DILocalVariable(name: "n", arg: 1, scope: !2022, file: !117, line: 877, type: !19)
!2027 = !DILocalVariable(name: "arg", arg: 2, scope: !2022, file: !117, line: 877, type: !6)
!2028 = !DILocalVariable(name: "argsize", arg: 3, scope: !2022, file: !117, line: 877, type: !112)
!2029 = !DILocalVariable(name: "options", arg: 4, scope: !2022, file: !117, line: 878, type: !917)
!2030 = !DILocalVariable(name: "e", scope: !2022, file: !117, line: 880, type: !19)
!2031 = !DILocalVariable(name: "sv", scope: !2022, file: !117, line: 882, type: !143)
!2032 = !DILocalVariable(name: "preallocated", scope: !2033, file: !117, line: 889, type: !38)
!2033 = distinct !DILexicalBlock(scope: !2034, file: !117, line: 888, column: 5)
!2034 = distinct !DILexicalBlock(scope: !2022, file: !117, line: 887, column: 7)
!2035 = !DILocalVariable(name: "nmax", scope: !2033, file: !117, line: 890, type: !19)
!2036 = !DILocalVariable(name: "size", scope: !2037, file: !117, line: 903, type: !112)
!2037 = distinct !DILexicalBlock(scope: !2022, file: !117, line: 902, column: 3)
!2038 = !DILocalVariable(name: "val", scope: !2037, file: !117, line: 904, type: !67)
!2039 = !DILocalVariable(name: "flags", scope: !2037, file: !117, line: 906, type: !19)
!2040 = !DILocalVariable(name: "qsize", scope: !2037, file: !117, line: 907, type: !112)
!2041 = !DILocation(line: 877, column: 25, scope: !2022)
!2042 = !DILocation(line: 877, column: 40, scope: !2022)
!2043 = !DILocation(line: 877, column: 52, scope: !2022)
!2044 = !DILocation(line: 878, column: 51, scope: !2022)
!2045 = !DILocation(line: 880, column: 11, scope: !2022)
!2046 = !DILocation(line: 880, column: 7, scope: !2022)
!2047 = !DILocation(line: 882, column: 24, scope: !2022)
!2048 = !DILocation(line: 882, column: 19, scope: !2022)
!2049 = !DILocation(line: 884, column: 9, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !2022, file: !117, line: 884, column: 7)
!2051 = !DILocation(line: 884, column: 7, scope: !2022)
!2052 = !DILocation(line: 885, column: 5, scope: !2050)
!2053 = !DILocation(line: 887, column: 7, scope: !2034)
!2054 = !DILocation(line: 887, column: 14, scope: !2034)
!2055 = !DILocation(line: 887, column: 7, scope: !2022)
!2056 = !DILocation(line: 889, column: 31, scope: !2033)
!2057 = !DILocation(line: 890, column: 11, scope: !2033)
!2058 = !DILocation(line: 892, column: 16, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !2033, file: !117, line: 892, column: 11)
!2060 = !DILocation(line: 892, column: 11, scope: !2033)
!2061 = !DILocation(line: 893, column: 9, scope: !2059)
!2062 = !DILocation(line: 895, column: 32, scope: !2033)
!2063 = !DILocation(line: 895, column: 61, scope: !2033)
!2064 = !DILocation(line: 895, column: 58, scope: !2033)
!2065 = !DILocation(line: 895, column: 66, scope: !2033)
!2066 = !DILocation(line: 895, column: 22, scope: !2033)
!2067 = !DILocation(line: 895, column: 15, scope: !2033)
!2068 = !DILocation(line: 896, column: 11, scope: !2033)
!2069 = !DILocation(line: 897, column: 15, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !2033, file: !117, line: 896, column: 11)
!2071 = !{i64 0, i64 8, !1969, i64 8, i64 8, !635}
!2072 = !DILocation(line: 897, column: 9, scope: !2070)
!2073 = !DILocation(line: 898, column: 20, scope: !2033)
!2074 = !DILocation(line: 898, column: 18, scope: !2033)
!2075 = !DILocation(line: 898, column: 7, scope: !2033)
!2076 = !DILocation(line: 898, column: 38, scope: !2033)
!2077 = !DILocation(line: 898, column: 31, scope: !2033)
!2078 = !DILocation(line: 898, column: 48, scope: !2033)
!2079 = !DILocation(line: 899, column: 14, scope: !2033)
!2080 = !DILocation(line: 900, column: 5, scope: !2033)
!2081 = !DILocation(line: 0, scope: !2022)
!2082 = !DILocation(line: 903, column: 19, scope: !2037)
!2083 = !DILocation(line: 903, column: 25, scope: !2037)
!2084 = !DILocation(line: 903, column: 12, scope: !2037)
!2085 = !DILocation(line: 904, column: 23, scope: !2037)
!2086 = !DILocation(line: 904, column: 11, scope: !2037)
!2087 = !DILocation(line: 906, column: 26, scope: !2037)
!2088 = !DILocation(line: 906, column: 32, scope: !2037)
!2089 = !DILocation(line: 906, column: 9, scope: !2037)
!2090 = !DILocation(line: 908, column: 55, scope: !2037)
!2091 = !DILocation(line: 909, column: 46, scope: !2037)
!2092 = !DILocation(line: 910, column: 55, scope: !2037)
!2093 = !DILocation(line: 911, column: 55, scope: !2037)
!2094 = !DILocation(line: 907, column: 20, scope: !2037)
!2095 = !DILocation(line: 907, column: 12, scope: !2037)
!2096 = !DILocation(line: 913, column: 14, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !2037, file: !117, line: 913, column: 9)
!2098 = !DILocation(line: 913, column: 9, scope: !2037)
!2099 = !DILocation(line: 915, column: 35, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !2097, file: !117, line: 914, column: 7)
!2101 = !DILocation(line: 915, column: 20, scope: !2100)
!2102 = !DILocation(line: 916, column: 17, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !2100, file: !117, line: 916, column: 13)
!2104 = !DILocation(line: 916, column: 13, scope: !2100)
!2105 = !DILocation(line: 917, column: 11, scope: !2103)
!2106 = !DILocation(line: 216, column: 20, scope: !1924, inlinedAt: !2107)
!2107 = distinct !DILocation(line: 918, column: 27, scope: !2100)
!2108 = !DILocation(line: 218, column: 10, scope: !1924, inlinedAt: !2107)
!2109 = !DILocation(line: 918, column: 19, scope: !2100)
!2110 = !DILocation(line: 919, column: 69, scope: !2100)
!2111 = !DILocation(line: 921, column: 44, scope: !2100)
!2112 = !DILocation(line: 922, column: 44, scope: !2100)
!2113 = !DILocation(line: 919, column: 9, scope: !2100)
!2114 = !DILocation(line: 923, column: 7, scope: !2100)
!2115 = !DILocation(line: 0, scope: !2037)
!2116 = !DILocation(line: 925, column: 11, scope: !2037)
!2117 = !DILocation(line: 926, column: 5, scope: !2037)
!2118 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !117, file: !117, line: 937, type: !2119, isLocal: false, isDefinition: true, scopeLine: 938, flags: DIFlagPrototyped, isOptimized: true, unit: !72, retainedNodes: !2121)
!2119 = !DISubroutineType(types: !2120)
!2120 = !{!67, !19, !6, !112}
!2121 = !{!2122, !2123, !2124}
!2122 = !DILocalVariable(name: "n", arg: 1, scope: !2118, file: !117, line: 937, type: !19)
!2123 = !DILocalVariable(name: "arg", arg: 2, scope: !2118, file: !117, line: 937, type: !6)
!2124 = !DILocalVariable(name: "argsize", arg: 3, scope: !2118, file: !117, line: 937, type: !112)
!2125 = !DILocation(line: 937, column: 21, scope: !2118)
!2126 = !DILocation(line: 937, column: 36, scope: !2118)
!2127 = !DILocation(line: 937, column: 48, scope: !2118)
!2128 = !DILocation(line: 939, column: 10, scope: !2118)
!2129 = !DILocation(line: 939, column: 3, scope: !2118)
!2130 = distinct !DISubprogram(name: "quotearg", scope: !117, file: !117, line: 943, type: !2131, isLocal: false, isDefinition: true, scopeLine: 944, flags: DIFlagPrototyped, isOptimized: true, unit: !72, retainedNodes: !2133)
!2131 = !DISubroutineType(types: !2132)
!2132 = !{!67, !6}
!2133 = !{!2134}
!2134 = !DILocalVariable(name: "arg", arg: 1, scope: !2130, file: !117, line: 943, type: !6)
!2135 = !DILocation(line: 943, column: 23, scope: !2130)
!2136 = !DILocation(line: 931, column: 17, scope: !2012, inlinedAt: !2137)
!2137 = distinct !DILocation(line: 945, column: 10, scope: !2130)
!2138 = !DILocation(line: 931, column: 32, scope: !2012, inlinedAt: !2137)
!2139 = !DILocation(line: 933, column: 10, scope: !2012, inlinedAt: !2137)
!2140 = !DILocation(line: 945, column: 3, scope: !2130)
!2141 = distinct !DISubprogram(name: "quotearg_mem", scope: !117, file: !117, line: 949, type: !2142, isLocal: false, isDefinition: true, scopeLine: 950, flags: DIFlagPrototyped, isOptimized: true, unit: !72, retainedNodes: !2144)
!2142 = !DISubroutineType(types: !2143)
!2143 = !{!67, !6, !112}
!2144 = !{!2145, !2146}
!2145 = !DILocalVariable(name: "arg", arg: 1, scope: !2141, file: !117, line: 949, type: !6)
!2146 = !DILocalVariable(name: "argsize", arg: 2, scope: !2141, file: !117, line: 949, type: !112)
!2147 = !DILocation(line: 949, column: 27, scope: !2141)
!2148 = !DILocation(line: 949, column: 39, scope: !2141)
!2149 = !DILocation(line: 937, column: 21, scope: !2118, inlinedAt: !2150)
!2150 = distinct !DILocation(line: 951, column: 10, scope: !2141)
!2151 = !DILocation(line: 937, column: 36, scope: !2118, inlinedAt: !2150)
!2152 = !DILocation(line: 937, column: 48, scope: !2118, inlinedAt: !2150)
!2153 = !DILocation(line: 939, column: 10, scope: !2118, inlinedAt: !2150)
!2154 = !DILocation(line: 951, column: 3, scope: !2141)
!2155 = distinct !DISubprogram(name: "quotearg_n_style", scope: !117, file: !117, line: 955, type: !2156, isLocal: false, isDefinition: true, scopeLine: 956, flags: DIFlagPrototyped, isOptimized: true, unit: !72, retainedNodes: !2158)
!2156 = !DISubroutineType(types: !2157)
!2157 = !{!67, !19, !75, !6}
!2158 = !{!2159, !2160, !2161, !2162}
!2159 = !DILocalVariable(name: "n", arg: 1, scope: !2155, file: !117, line: 955, type: !19)
!2160 = !DILocalVariable(name: "s", arg: 2, scope: !2155, file: !117, line: 955, type: !75)
!2161 = !DILocalVariable(name: "arg", arg: 3, scope: !2155, file: !117, line: 955, type: !6)
!2162 = !DILocalVariable(name: "o", scope: !2155, file: !117, line: 957, type: !918)
!2163 = !DILocation(line: 955, column: 23, scope: !2155)
!2164 = !DILocation(line: 955, column: 45, scope: !2155)
!2165 = !DILocation(line: 955, column: 60, scope: !2155)
!2166 = !DILocation(line: 957, column: 3, scope: !2155)
!2167 = !DILocation(line: 957, column: 32, scope: !2155)
!2168 = !DILocalVariable(name: "style", arg: 1, scope: !2169, file: !117, line: 193, type: !75)
!2169 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !117, file: !117, line: 193, type: !2170, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !72, retainedNodes: !2172)
!2170 = !DISubroutineType(types: !2171)
!2171 = !{!124, !75}
!2172 = !{!2168, !2173}
!2173 = !DILocalVariable(name: "o", scope: !2169, file: !117, line: 195, type: !124)
!2174 = !DILocation(line: 193, column: 48, scope: !2169, inlinedAt: !2175)
!2175 = distinct !DILocation(line: 957, column: 36, scope: !2155)
!2176 = !DILocation(line: 195, column: 26, scope: !2169, inlinedAt: !2175)
!2177 = !{!2178}
!2178 = distinct !{!2178, !2179, !"quoting_options_from_style: argument 0"}
!2179 = distinct !{!2179, !"quoting_options_from_style"}
!2180 = !DILocation(line: 196, column: 13, scope: !2181, inlinedAt: !2175)
!2181 = distinct !DILexicalBlock(scope: !2169, file: !117, line: 196, column: 7)
!2182 = !DILocation(line: 196, column: 7, scope: !2169, inlinedAt: !2175)
!2183 = !DILocation(line: 197, column: 5, scope: !2181, inlinedAt: !2175)
!2184 = !DILocation(line: 198, column: 5, scope: !2169, inlinedAt: !2175)
!2185 = !DILocation(line: 198, column: 11, scope: !2169, inlinedAt: !2175)
!2186 = !DILocation(line: 958, column: 10, scope: !2155)
!2187 = !DILocation(line: 959, column: 1, scope: !2155)
!2188 = !DILocation(line: 958, column: 3, scope: !2155)
!2189 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !117, file: !117, line: 962, type: !2190, isLocal: false, isDefinition: true, scopeLine: 964, flags: DIFlagPrototyped, isOptimized: true, unit: !72, retainedNodes: !2192)
!2190 = !DISubroutineType(types: !2191)
!2191 = !{!67, !19, !75, !6, !112}
!2192 = !{!2193, !2194, !2195, !2196, !2197}
!2193 = !DILocalVariable(name: "n", arg: 1, scope: !2189, file: !117, line: 962, type: !19)
!2194 = !DILocalVariable(name: "s", arg: 2, scope: !2189, file: !117, line: 962, type: !75)
!2195 = !DILocalVariable(name: "arg", arg: 3, scope: !2189, file: !117, line: 963, type: !6)
!2196 = !DILocalVariable(name: "argsize", arg: 4, scope: !2189, file: !117, line: 963, type: !112)
!2197 = !DILocalVariable(name: "o", scope: !2189, file: !117, line: 965, type: !918)
!2198 = !DILocation(line: 962, column: 27, scope: !2189)
!2199 = !DILocation(line: 962, column: 49, scope: !2189)
!2200 = !DILocation(line: 963, column: 35, scope: !2189)
!2201 = !DILocation(line: 963, column: 47, scope: !2189)
!2202 = !DILocation(line: 965, column: 3, scope: !2189)
!2203 = !DILocation(line: 965, column: 32, scope: !2189)
!2204 = !DILocation(line: 193, column: 48, scope: !2169, inlinedAt: !2205)
!2205 = distinct !DILocation(line: 965, column: 36, scope: !2189)
!2206 = !DILocation(line: 195, column: 26, scope: !2169, inlinedAt: !2205)
!2207 = !{!2208}
!2208 = distinct !{!2208, !2209, !"quoting_options_from_style: argument 0"}
!2209 = distinct !{!2209, !"quoting_options_from_style"}
!2210 = !DILocation(line: 196, column: 13, scope: !2181, inlinedAt: !2205)
!2211 = !DILocation(line: 196, column: 7, scope: !2169, inlinedAt: !2205)
!2212 = !DILocation(line: 197, column: 5, scope: !2181, inlinedAt: !2205)
!2213 = !DILocation(line: 198, column: 5, scope: !2169, inlinedAt: !2205)
!2214 = !DILocation(line: 198, column: 11, scope: !2169, inlinedAt: !2205)
!2215 = !DILocation(line: 966, column: 10, scope: !2189)
!2216 = !DILocation(line: 967, column: 1, scope: !2189)
!2217 = !DILocation(line: 966, column: 3, scope: !2189)
!2218 = distinct !DISubprogram(name: "quotearg_style", scope: !117, file: !117, line: 970, type: !2219, isLocal: false, isDefinition: true, scopeLine: 971, flags: DIFlagPrototyped, isOptimized: true, unit: !72, retainedNodes: !2221)
!2219 = !DISubroutineType(types: !2220)
!2220 = !{!67, !75, !6}
!2221 = !{!2222, !2223}
!2222 = !DILocalVariable(name: "s", arg: 1, scope: !2218, file: !117, line: 970, type: !75)
!2223 = !DILocalVariable(name: "arg", arg: 2, scope: !2218, file: !117, line: 970, type: !6)
!2224 = !DILocation(line: 970, column: 36, scope: !2218)
!2225 = !DILocation(line: 970, column: 51, scope: !2218)
!2226 = !DILocation(line: 955, column: 23, scope: !2155, inlinedAt: !2227)
!2227 = distinct !DILocation(line: 972, column: 10, scope: !2218)
!2228 = !DILocation(line: 955, column: 45, scope: !2155, inlinedAt: !2227)
!2229 = !DILocation(line: 955, column: 60, scope: !2155, inlinedAt: !2227)
!2230 = !DILocation(line: 957, column: 3, scope: !2155, inlinedAt: !2227)
!2231 = !DILocation(line: 957, column: 32, scope: !2155, inlinedAt: !2227)
!2232 = !DILocation(line: 193, column: 48, scope: !2169, inlinedAt: !2233)
!2233 = distinct !DILocation(line: 957, column: 36, scope: !2155, inlinedAt: !2227)
!2234 = !DILocation(line: 195, column: 26, scope: !2169, inlinedAt: !2233)
!2235 = !{!2236}
!2236 = distinct !{!2236, !2237, !"quoting_options_from_style: argument 0"}
!2237 = distinct !{!2237, !"quoting_options_from_style"}
!2238 = !DILocation(line: 196, column: 13, scope: !2181, inlinedAt: !2233)
!2239 = !DILocation(line: 196, column: 7, scope: !2169, inlinedAt: !2233)
!2240 = !DILocation(line: 197, column: 5, scope: !2181, inlinedAt: !2233)
!2241 = !DILocation(line: 198, column: 5, scope: !2169, inlinedAt: !2233)
!2242 = !DILocation(line: 198, column: 11, scope: !2169, inlinedAt: !2233)
!2243 = !DILocation(line: 958, column: 10, scope: !2155, inlinedAt: !2227)
!2244 = !DILocation(line: 959, column: 1, scope: !2155, inlinedAt: !2227)
!2245 = !DILocation(line: 972, column: 3, scope: !2218)
!2246 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !117, file: !117, line: 976, type: !2247, isLocal: false, isDefinition: true, scopeLine: 977, flags: DIFlagPrototyped, isOptimized: true, unit: !72, retainedNodes: !2249)
!2247 = !DISubroutineType(types: !2248)
!2248 = !{!67, !75, !6, !112}
!2249 = !{!2250, !2251, !2252}
!2250 = !DILocalVariable(name: "s", arg: 1, scope: !2246, file: !117, line: 976, type: !75)
!2251 = !DILocalVariable(name: "arg", arg: 2, scope: !2246, file: !117, line: 976, type: !6)
!2252 = !DILocalVariable(name: "argsize", arg: 3, scope: !2246, file: !117, line: 976, type: !112)
!2253 = !DILocation(line: 976, column: 40, scope: !2246)
!2254 = !DILocation(line: 976, column: 55, scope: !2246)
!2255 = !DILocation(line: 976, column: 67, scope: !2246)
!2256 = !DILocation(line: 962, column: 27, scope: !2189, inlinedAt: !2257)
!2257 = distinct !DILocation(line: 978, column: 10, scope: !2246)
!2258 = !DILocation(line: 962, column: 49, scope: !2189, inlinedAt: !2257)
!2259 = !DILocation(line: 963, column: 35, scope: !2189, inlinedAt: !2257)
!2260 = !DILocation(line: 963, column: 47, scope: !2189, inlinedAt: !2257)
!2261 = !DILocation(line: 965, column: 3, scope: !2189, inlinedAt: !2257)
!2262 = !DILocation(line: 965, column: 32, scope: !2189, inlinedAt: !2257)
!2263 = !DILocation(line: 193, column: 48, scope: !2169, inlinedAt: !2264)
!2264 = distinct !DILocation(line: 965, column: 36, scope: !2189, inlinedAt: !2257)
!2265 = !DILocation(line: 195, column: 26, scope: !2169, inlinedAt: !2264)
!2266 = !{!2267}
!2267 = distinct !{!2267, !2268, !"quoting_options_from_style: argument 0"}
!2268 = distinct !{!2268, !"quoting_options_from_style"}
!2269 = !DILocation(line: 196, column: 13, scope: !2181, inlinedAt: !2264)
!2270 = !DILocation(line: 196, column: 7, scope: !2169, inlinedAt: !2264)
!2271 = !DILocation(line: 197, column: 5, scope: !2181, inlinedAt: !2264)
!2272 = !DILocation(line: 198, column: 5, scope: !2169, inlinedAt: !2264)
!2273 = !DILocation(line: 198, column: 11, scope: !2169, inlinedAt: !2264)
!2274 = !DILocation(line: 966, column: 10, scope: !2189, inlinedAt: !2257)
!2275 = !DILocation(line: 967, column: 1, scope: !2189, inlinedAt: !2257)
!2276 = !DILocation(line: 978, column: 3, scope: !2246)
!2277 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !117, file: !117, line: 982, type: !2278, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !72, retainedNodes: !2280)
!2278 = !DISubroutineType(types: !2279)
!2279 = !{!67, !6, !112, !8}
!2280 = !{!2281, !2282, !2283, !2284}
!2281 = !DILocalVariable(name: "arg", arg: 1, scope: !2277, file: !117, line: 982, type: !6)
!2282 = !DILocalVariable(name: "argsize", arg: 2, scope: !2277, file: !117, line: 982, type: !112)
!2283 = !DILocalVariable(name: "ch", arg: 3, scope: !2277, file: !117, line: 982, type: !8)
!2284 = !DILocalVariable(name: "options", scope: !2277, file: !117, line: 984, type: !124)
!2285 = !DILocation(line: 982, column: 32, scope: !2277)
!2286 = !DILocation(line: 982, column: 44, scope: !2277)
!2287 = !DILocation(line: 982, column: 58, scope: !2277)
!2288 = !DILocation(line: 984, column: 3, scope: !2277)
!2289 = !DILocation(line: 985, column: 13, scope: !2277)
!2290 = !{i64 0, i64 4, !1146, i64 4, i64 4, !722, i64 8, i64 32, !1146, i64 40, i64 8, !635, i64 48, i64 8, !635}
!2291 = !DILocation(line: 984, column: 26, scope: !2277)
!2292 = !DILocation(line: 152, column: 43, scope: !939, inlinedAt: !2293)
!2293 = distinct !DILocation(line: 986, column: 3, scope: !2277)
!2294 = !DILocation(line: 152, column: 51, scope: !939, inlinedAt: !2293)
!2295 = !DILocation(line: 152, column: 58, scope: !939, inlinedAt: !2293)
!2296 = !DILocation(line: 154, column: 17, scope: !939, inlinedAt: !2293)
!2297 = !DILocation(line: 156, column: 62, scope: !939, inlinedAt: !2293)
!2298 = !DILocation(line: 156, column: 57, scope: !939, inlinedAt: !2293)
!2299 = !DILocation(line: 155, column: 17, scope: !939, inlinedAt: !2293)
!2300 = !DILocation(line: 157, column: 15, scope: !939, inlinedAt: !2293)
!2301 = !DILocation(line: 157, column: 7, scope: !939, inlinedAt: !2293)
!2302 = !DILocation(line: 158, column: 12, scope: !939, inlinedAt: !2293)
!2303 = !DILocation(line: 158, column: 15, scope: !939, inlinedAt: !2293)
!2304 = !DILocation(line: 158, column: 25, scope: !939, inlinedAt: !2293)
!2305 = !DILocation(line: 158, column: 7, scope: !939, inlinedAt: !2293)
!2306 = !DILocation(line: 159, column: 18, scope: !939, inlinedAt: !2293)
!2307 = !DILocation(line: 159, column: 23, scope: !939, inlinedAt: !2293)
!2308 = !DILocation(line: 159, column: 6, scope: !939, inlinedAt: !2293)
!2309 = !DILocation(line: 987, column: 10, scope: !2277)
!2310 = !DILocation(line: 988, column: 1, scope: !2277)
!2311 = !DILocation(line: 987, column: 3, scope: !2277)
!2312 = distinct !DISubprogram(name: "quotearg_char", scope: !117, file: !117, line: 991, type: !2313, isLocal: false, isDefinition: true, scopeLine: 992, flags: DIFlagPrototyped, isOptimized: true, unit: !72, retainedNodes: !2315)
!2313 = !DISubroutineType(types: !2314)
!2314 = !{!67, !6, !8}
!2315 = !{!2316, !2317}
!2316 = !DILocalVariable(name: "arg", arg: 1, scope: !2312, file: !117, line: 991, type: !6)
!2317 = !DILocalVariable(name: "ch", arg: 2, scope: !2312, file: !117, line: 991, type: !8)
!2318 = !DILocation(line: 991, column: 28, scope: !2312)
!2319 = !DILocation(line: 991, column: 38, scope: !2312)
!2320 = !DILocation(line: 982, column: 32, scope: !2277, inlinedAt: !2321)
!2321 = distinct !DILocation(line: 993, column: 10, scope: !2312)
!2322 = !DILocation(line: 982, column: 44, scope: !2277, inlinedAt: !2321)
!2323 = !DILocation(line: 982, column: 58, scope: !2277, inlinedAt: !2321)
!2324 = !DILocation(line: 984, column: 3, scope: !2277, inlinedAt: !2321)
!2325 = !DILocation(line: 985, column: 13, scope: !2277, inlinedAt: !2321)
!2326 = !DILocation(line: 984, column: 26, scope: !2277, inlinedAt: !2321)
!2327 = !DILocation(line: 152, column: 43, scope: !939, inlinedAt: !2328)
!2328 = distinct !DILocation(line: 986, column: 3, scope: !2277, inlinedAt: !2321)
!2329 = !DILocation(line: 152, column: 51, scope: !939, inlinedAt: !2328)
!2330 = !DILocation(line: 152, column: 58, scope: !939, inlinedAt: !2328)
!2331 = !DILocation(line: 154, column: 17, scope: !939, inlinedAt: !2328)
!2332 = !DILocation(line: 156, column: 62, scope: !939, inlinedAt: !2328)
!2333 = !DILocation(line: 156, column: 57, scope: !939, inlinedAt: !2328)
!2334 = !DILocation(line: 155, column: 17, scope: !939, inlinedAt: !2328)
!2335 = !DILocation(line: 157, column: 15, scope: !939, inlinedAt: !2328)
!2336 = !DILocation(line: 157, column: 7, scope: !939, inlinedAt: !2328)
!2337 = !DILocation(line: 158, column: 12, scope: !939, inlinedAt: !2328)
!2338 = !DILocation(line: 158, column: 15, scope: !939, inlinedAt: !2328)
!2339 = !DILocation(line: 158, column: 25, scope: !939, inlinedAt: !2328)
!2340 = !DILocation(line: 158, column: 7, scope: !939, inlinedAt: !2328)
!2341 = !DILocation(line: 159, column: 18, scope: !939, inlinedAt: !2328)
!2342 = !DILocation(line: 159, column: 23, scope: !939, inlinedAt: !2328)
!2343 = !DILocation(line: 159, column: 6, scope: !939, inlinedAt: !2328)
!2344 = !DILocation(line: 987, column: 10, scope: !2277, inlinedAt: !2321)
!2345 = !DILocation(line: 988, column: 1, scope: !2277, inlinedAt: !2321)
!2346 = !DILocation(line: 993, column: 3, scope: !2312)
!2347 = distinct !DISubprogram(name: "quotearg_colon", scope: !117, file: !117, line: 997, type: !2131, isLocal: false, isDefinition: true, scopeLine: 998, flags: DIFlagPrototyped, isOptimized: true, unit: !72, retainedNodes: !2348)
!2348 = !{!2349}
!2349 = !DILocalVariable(name: "arg", arg: 1, scope: !2347, file: !117, line: 997, type: !6)
!2350 = !DILocation(line: 997, column: 29, scope: !2347)
!2351 = !DILocation(line: 991, column: 28, scope: !2312, inlinedAt: !2352)
!2352 = distinct !DILocation(line: 999, column: 10, scope: !2347)
!2353 = !DILocation(line: 991, column: 38, scope: !2312, inlinedAt: !2352)
!2354 = !DILocation(line: 982, column: 32, scope: !2277, inlinedAt: !2355)
!2355 = distinct !DILocation(line: 993, column: 10, scope: !2312, inlinedAt: !2352)
!2356 = !DILocation(line: 982, column: 44, scope: !2277, inlinedAt: !2355)
!2357 = !DILocation(line: 982, column: 58, scope: !2277, inlinedAt: !2355)
!2358 = !DILocation(line: 984, column: 3, scope: !2277, inlinedAt: !2355)
!2359 = !DILocation(line: 985, column: 13, scope: !2277, inlinedAt: !2355)
!2360 = !DILocation(line: 984, column: 26, scope: !2277, inlinedAt: !2355)
!2361 = !DILocation(line: 152, column: 43, scope: !939, inlinedAt: !2362)
!2362 = distinct !DILocation(line: 986, column: 3, scope: !2277, inlinedAt: !2355)
!2363 = !DILocation(line: 152, column: 51, scope: !939, inlinedAt: !2362)
!2364 = !DILocation(line: 152, column: 58, scope: !939, inlinedAt: !2362)
!2365 = !DILocation(line: 154, column: 17, scope: !939, inlinedAt: !2362)
!2366 = !DILocation(line: 156, column: 57, scope: !939, inlinedAt: !2362)
!2367 = !DILocation(line: 155, column: 17, scope: !939, inlinedAt: !2362)
!2368 = !DILocation(line: 157, column: 7, scope: !939, inlinedAt: !2362)
!2369 = !DILocation(line: 158, column: 12, scope: !939, inlinedAt: !2362)
!2370 = !DILocation(line: 159, column: 6, scope: !939, inlinedAt: !2362)
!2371 = !DILocation(line: 987, column: 10, scope: !2277, inlinedAt: !2355)
!2372 = !DILocation(line: 988, column: 1, scope: !2277, inlinedAt: !2355)
!2373 = !DILocation(line: 999, column: 3, scope: !2347)
!2374 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !117, file: !117, line: 1003, type: !2142, isLocal: false, isDefinition: true, scopeLine: 1004, flags: DIFlagPrototyped, isOptimized: true, unit: !72, retainedNodes: !2375)
!2375 = !{!2376, !2377}
!2376 = !DILocalVariable(name: "arg", arg: 1, scope: !2374, file: !117, line: 1003, type: !6)
!2377 = !DILocalVariable(name: "argsize", arg: 2, scope: !2374, file: !117, line: 1003, type: !112)
!2378 = !DILocation(line: 1003, column: 33, scope: !2374)
!2379 = !DILocation(line: 1003, column: 45, scope: !2374)
!2380 = !DILocation(line: 982, column: 32, scope: !2277, inlinedAt: !2381)
!2381 = distinct !DILocation(line: 1005, column: 10, scope: !2374)
!2382 = !DILocation(line: 982, column: 44, scope: !2277, inlinedAt: !2381)
!2383 = !DILocation(line: 982, column: 58, scope: !2277, inlinedAt: !2381)
!2384 = !DILocation(line: 984, column: 3, scope: !2277, inlinedAt: !2381)
!2385 = !DILocation(line: 985, column: 13, scope: !2277, inlinedAt: !2381)
!2386 = !DILocation(line: 984, column: 26, scope: !2277, inlinedAt: !2381)
!2387 = !DILocation(line: 152, column: 43, scope: !939, inlinedAt: !2388)
!2388 = distinct !DILocation(line: 986, column: 3, scope: !2277, inlinedAt: !2381)
!2389 = !DILocation(line: 152, column: 51, scope: !939, inlinedAt: !2388)
!2390 = !DILocation(line: 152, column: 58, scope: !939, inlinedAt: !2388)
!2391 = !DILocation(line: 154, column: 17, scope: !939, inlinedAt: !2388)
!2392 = !DILocation(line: 156, column: 57, scope: !939, inlinedAt: !2388)
!2393 = !DILocation(line: 155, column: 17, scope: !939, inlinedAt: !2388)
!2394 = !DILocation(line: 157, column: 7, scope: !939, inlinedAt: !2388)
!2395 = !DILocation(line: 158, column: 12, scope: !939, inlinedAt: !2388)
!2396 = !DILocation(line: 159, column: 6, scope: !939, inlinedAt: !2388)
!2397 = !DILocation(line: 987, column: 10, scope: !2277, inlinedAt: !2381)
!2398 = !DILocation(line: 988, column: 1, scope: !2277, inlinedAt: !2381)
!2399 = !DILocation(line: 1005, column: 3, scope: !2374)
!2400 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !117, file: !117, line: 1009, type: !2156, isLocal: false, isDefinition: true, scopeLine: 1010, flags: DIFlagPrototyped, isOptimized: true, unit: !72, retainedNodes: !2401)
!2401 = !{!2402, !2403, !2404, !2405}
!2402 = !DILocalVariable(name: "n", arg: 1, scope: !2400, file: !117, line: 1009, type: !19)
!2403 = !DILocalVariable(name: "s", arg: 2, scope: !2400, file: !117, line: 1009, type: !75)
!2404 = !DILocalVariable(name: "arg", arg: 3, scope: !2400, file: !117, line: 1009, type: !6)
!2405 = !DILocalVariable(name: "options", scope: !2400, file: !117, line: 1011, type: !124)
!2406 = !DILocation(line: 195, column: 26, scope: !2169, inlinedAt: !2407)
!2407 = distinct !DILocation(line: 1012, column: 13, scope: !2400)
!2408 = !DILocation(line: 1009, column: 29, scope: !2400)
!2409 = !DILocation(line: 1009, column: 51, scope: !2400)
!2410 = !DILocation(line: 1009, column: 66, scope: !2400)
!2411 = !DILocation(line: 1011, column: 3, scope: !2400)
!2412 = !DILocation(line: 1012, column: 13, scope: !2400)
!2413 = !DILocation(line: 193, column: 48, scope: !2169, inlinedAt: !2407)
!2414 = !{!2415}
!2415 = distinct !{!2415, !2416, !"quoting_options_from_style: argument 0"}
!2416 = distinct !{!2416, !"quoting_options_from_style"}
!2417 = !DILocation(line: 196, column: 13, scope: !2181, inlinedAt: !2407)
!2418 = !DILocation(line: 196, column: 7, scope: !2169, inlinedAt: !2407)
!2419 = !DILocation(line: 197, column: 5, scope: !2181, inlinedAt: !2407)
!2420 = !DILocation(line: 1011, column: 26, scope: !2400)
!2421 = !DILocation(line: 152, column: 43, scope: !939, inlinedAt: !2422)
!2422 = distinct !DILocation(line: 1013, column: 3, scope: !2400)
!2423 = !DILocation(line: 152, column: 51, scope: !939, inlinedAt: !2422)
!2424 = !DILocation(line: 152, column: 58, scope: !939, inlinedAt: !2422)
!2425 = !DILocation(line: 154, column: 17, scope: !939, inlinedAt: !2422)
!2426 = !DILocation(line: 156, column: 57, scope: !939, inlinedAt: !2422)
!2427 = !DILocation(line: 155, column: 17, scope: !939, inlinedAt: !2422)
!2428 = !DILocation(line: 157, column: 7, scope: !939, inlinedAt: !2422)
!2429 = !DILocation(line: 158, column: 12, scope: !939, inlinedAt: !2422)
!2430 = !DILocation(line: 159, column: 6, scope: !939, inlinedAt: !2422)
!2431 = !DILocation(line: 1014, column: 10, scope: !2400)
!2432 = !DILocation(line: 1015, column: 1, scope: !2400)
!2433 = !DILocation(line: 1014, column: 3, scope: !2400)
!2434 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !117, file: !117, line: 1018, type: !2435, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !72, retainedNodes: !2437)
!2435 = !DISubroutineType(types: !2436)
!2436 = !{!67, !19, !6, !6, !6}
!2437 = !{!2438, !2439, !2440, !2441}
!2438 = !DILocalVariable(name: "n", arg: 1, scope: !2434, file: !117, line: 1018, type: !19)
!2439 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2434, file: !117, line: 1018, type: !6)
!2440 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2434, file: !117, line: 1019, type: !6)
!2441 = !DILocalVariable(name: "arg", arg: 4, scope: !2434, file: !117, line: 1019, type: !6)
!2442 = !DILocation(line: 1018, column: 24, scope: !2434)
!2443 = !DILocation(line: 1018, column: 39, scope: !2434)
!2444 = !DILocation(line: 1019, column: 32, scope: !2434)
!2445 = !DILocation(line: 1019, column: 57, scope: !2434)
!2446 = !DILocalVariable(name: "n", arg: 1, scope: !2447, file: !117, line: 1026, type: !19)
!2447 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !117, file: !117, line: 1026, type: !2448, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !72, retainedNodes: !2450)
!2448 = !DISubroutineType(types: !2449)
!2449 = !{!67, !19, !6, !6, !6, !112}
!2450 = !{!2446, !2451, !2452, !2453, !2454, !2455}
!2451 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2447, file: !117, line: 1026, type: !6)
!2452 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2447, file: !117, line: 1027, type: !6)
!2453 = !DILocalVariable(name: "arg", arg: 4, scope: !2447, file: !117, line: 1028, type: !6)
!2454 = !DILocalVariable(name: "argsize", arg: 5, scope: !2447, file: !117, line: 1028, type: !112)
!2455 = !DILocalVariable(name: "o", scope: !2447, file: !117, line: 1030, type: !124)
!2456 = !DILocation(line: 1026, column: 28, scope: !2447, inlinedAt: !2457)
!2457 = distinct !DILocation(line: 1021, column: 10, scope: !2434)
!2458 = !DILocation(line: 1026, column: 43, scope: !2447, inlinedAt: !2457)
!2459 = !DILocation(line: 1027, column: 36, scope: !2447, inlinedAt: !2457)
!2460 = !DILocation(line: 1028, column: 36, scope: !2447, inlinedAt: !2457)
!2461 = !DILocation(line: 1028, column: 48, scope: !2447, inlinedAt: !2457)
!2462 = !DILocation(line: 1030, column: 3, scope: !2447, inlinedAt: !2457)
!2463 = !DILocation(line: 1030, column: 30, scope: !2447, inlinedAt: !2457)
!2464 = !DILocation(line: 1030, column: 26, scope: !2447, inlinedAt: !2457)
!2465 = !DILocation(line: 179, column: 45, scope: !988, inlinedAt: !2466)
!2466 = distinct !DILocation(line: 1031, column: 3, scope: !2447, inlinedAt: !2457)
!2467 = !DILocation(line: 180, column: 33, scope: !988, inlinedAt: !2466)
!2468 = !DILocation(line: 180, column: 57, scope: !988, inlinedAt: !2466)
!2469 = !DILocation(line: 184, column: 6, scope: !988, inlinedAt: !2466)
!2470 = !DILocation(line: 184, column: 12, scope: !988, inlinedAt: !2466)
!2471 = !DILocation(line: 185, column: 8, scope: !1004, inlinedAt: !2466)
!2472 = !DILocation(line: 185, column: 23, scope: !1004, inlinedAt: !2466)
!2473 = !DILocation(line: 185, column: 19, scope: !1004, inlinedAt: !2466)
!2474 = !DILocation(line: 186, column: 5, scope: !1004, inlinedAt: !2466)
!2475 = !DILocation(line: 187, column: 6, scope: !988, inlinedAt: !2466)
!2476 = !DILocation(line: 187, column: 17, scope: !988, inlinedAt: !2466)
!2477 = !DILocation(line: 188, column: 6, scope: !988, inlinedAt: !2466)
!2478 = !DILocation(line: 188, column: 18, scope: !988, inlinedAt: !2466)
!2479 = !DILocation(line: 1032, column: 10, scope: !2447, inlinedAt: !2457)
!2480 = !DILocation(line: 1033, column: 1, scope: !2447, inlinedAt: !2457)
!2481 = !DILocation(line: 1021, column: 3, scope: !2434)
!2482 = !DILocation(line: 1026, column: 28, scope: !2447)
!2483 = !DILocation(line: 1026, column: 43, scope: !2447)
!2484 = !DILocation(line: 1027, column: 36, scope: !2447)
!2485 = !DILocation(line: 1028, column: 36, scope: !2447)
!2486 = !DILocation(line: 1028, column: 48, scope: !2447)
!2487 = !DILocation(line: 1030, column: 3, scope: !2447)
!2488 = !DILocation(line: 1030, column: 30, scope: !2447)
!2489 = !DILocation(line: 1030, column: 26, scope: !2447)
!2490 = !DILocation(line: 179, column: 45, scope: !988, inlinedAt: !2491)
!2491 = distinct !DILocation(line: 1031, column: 3, scope: !2447)
!2492 = !DILocation(line: 180, column: 33, scope: !988, inlinedAt: !2491)
!2493 = !DILocation(line: 180, column: 57, scope: !988, inlinedAt: !2491)
!2494 = !DILocation(line: 184, column: 6, scope: !988, inlinedAt: !2491)
!2495 = !DILocation(line: 184, column: 12, scope: !988, inlinedAt: !2491)
!2496 = !DILocation(line: 185, column: 8, scope: !1004, inlinedAt: !2491)
!2497 = !DILocation(line: 185, column: 23, scope: !1004, inlinedAt: !2491)
!2498 = !DILocation(line: 185, column: 19, scope: !1004, inlinedAt: !2491)
!2499 = !DILocation(line: 186, column: 5, scope: !1004, inlinedAt: !2491)
!2500 = !DILocation(line: 187, column: 6, scope: !988, inlinedAt: !2491)
!2501 = !DILocation(line: 187, column: 17, scope: !988, inlinedAt: !2491)
!2502 = !DILocation(line: 188, column: 6, scope: !988, inlinedAt: !2491)
!2503 = !DILocation(line: 188, column: 18, scope: !988, inlinedAt: !2491)
!2504 = !DILocation(line: 1032, column: 10, scope: !2447)
!2505 = !DILocation(line: 1033, column: 1, scope: !2447)
!2506 = !DILocation(line: 1032, column: 3, scope: !2447)
!2507 = distinct !DISubprogram(name: "quotearg_custom", scope: !117, file: !117, line: 1036, type: !2508, isLocal: false, isDefinition: true, scopeLine: 1038, flags: DIFlagPrototyped, isOptimized: true, unit: !72, retainedNodes: !2510)
!2508 = !DISubroutineType(types: !2509)
!2509 = !{!67, !6, !6, !6}
!2510 = !{!2511, !2512, !2513}
!2511 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2507, file: !117, line: 1036, type: !6)
!2512 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2507, file: !117, line: 1036, type: !6)
!2513 = !DILocalVariable(name: "arg", arg: 3, scope: !2507, file: !117, line: 1037, type: !6)
!2514 = !DILocation(line: 1036, column: 30, scope: !2507)
!2515 = !DILocation(line: 1036, column: 54, scope: !2507)
!2516 = !DILocation(line: 1037, column: 30, scope: !2507)
!2517 = !DILocation(line: 1018, column: 24, scope: !2434, inlinedAt: !2518)
!2518 = distinct !DILocation(line: 1039, column: 10, scope: !2507)
!2519 = !DILocation(line: 1018, column: 39, scope: !2434, inlinedAt: !2518)
!2520 = !DILocation(line: 1019, column: 32, scope: !2434, inlinedAt: !2518)
!2521 = !DILocation(line: 1019, column: 57, scope: !2434, inlinedAt: !2518)
!2522 = !DILocation(line: 1026, column: 28, scope: !2447, inlinedAt: !2523)
!2523 = distinct !DILocation(line: 1021, column: 10, scope: !2434, inlinedAt: !2518)
!2524 = !DILocation(line: 1026, column: 43, scope: !2447, inlinedAt: !2523)
!2525 = !DILocation(line: 1027, column: 36, scope: !2447, inlinedAt: !2523)
!2526 = !DILocation(line: 1028, column: 36, scope: !2447, inlinedAt: !2523)
!2527 = !DILocation(line: 1028, column: 48, scope: !2447, inlinedAt: !2523)
!2528 = !DILocation(line: 1030, column: 3, scope: !2447, inlinedAt: !2523)
!2529 = !DILocation(line: 1030, column: 30, scope: !2447, inlinedAt: !2523)
!2530 = !DILocation(line: 1030, column: 26, scope: !2447, inlinedAt: !2523)
!2531 = !DILocation(line: 179, column: 45, scope: !988, inlinedAt: !2532)
!2532 = distinct !DILocation(line: 1031, column: 3, scope: !2447, inlinedAt: !2523)
!2533 = !DILocation(line: 180, column: 33, scope: !988, inlinedAt: !2532)
!2534 = !DILocation(line: 180, column: 57, scope: !988, inlinedAt: !2532)
!2535 = !DILocation(line: 184, column: 6, scope: !988, inlinedAt: !2532)
!2536 = !DILocation(line: 184, column: 12, scope: !988, inlinedAt: !2532)
!2537 = !DILocation(line: 185, column: 8, scope: !1004, inlinedAt: !2532)
!2538 = !DILocation(line: 185, column: 23, scope: !1004, inlinedAt: !2532)
!2539 = !DILocation(line: 185, column: 19, scope: !1004, inlinedAt: !2532)
!2540 = !DILocation(line: 186, column: 5, scope: !1004, inlinedAt: !2532)
!2541 = !DILocation(line: 187, column: 6, scope: !988, inlinedAt: !2532)
!2542 = !DILocation(line: 187, column: 17, scope: !988, inlinedAt: !2532)
!2543 = !DILocation(line: 188, column: 6, scope: !988, inlinedAt: !2532)
!2544 = !DILocation(line: 188, column: 18, scope: !988, inlinedAt: !2532)
!2545 = !DILocation(line: 1032, column: 10, scope: !2447, inlinedAt: !2523)
!2546 = !DILocation(line: 1033, column: 1, scope: !2447, inlinedAt: !2523)
!2547 = !DILocation(line: 1039, column: 3, scope: !2507)
!2548 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !117, file: !117, line: 1043, type: !2549, isLocal: false, isDefinition: true, scopeLine: 1045, flags: DIFlagPrototyped, isOptimized: true, unit: !72, retainedNodes: !2551)
!2549 = !DISubroutineType(types: !2550)
!2550 = !{!67, !6, !6, !6, !112}
!2551 = !{!2552, !2553, !2554, !2555}
!2552 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2548, file: !117, line: 1043, type: !6)
!2553 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2548, file: !117, line: 1043, type: !6)
!2554 = !DILocalVariable(name: "arg", arg: 3, scope: !2548, file: !117, line: 1044, type: !6)
!2555 = !DILocalVariable(name: "argsize", arg: 4, scope: !2548, file: !117, line: 1044, type: !112)
!2556 = !DILocation(line: 1043, column: 34, scope: !2548)
!2557 = !DILocation(line: 1043, column: 58, scope: !2548)
!2558 = !DILocation(line: 1044, column: 34, scope: !2548)
!2559 = !DILocation(line: 1044, column: 46, scope: !2548)
!2560 = !DILocation(line: 1026, column: 28, scope: !2447, inlinedAt: !2561)
!2561 = distinct !DILocation(line: 1046, column: 10, scope: !2548)
!2562 = !DILocation(line: 1026, column: 43, scope: !2447, inlinedAt: !2561)
!2563 = !DILocation(line: 1027, column: 36, scope: !2447, inlinedAt: !2561)
!2564 = !DILocation(line: 1028, column: 36, scope: !2447, inlinedAt: !2561)
!2565 = !DILocation(line: 1028, column: 48, scope: !2447, inlinedAt: !2561)
!2566 = !DILocation(line: 1030, column: 3, scope: !2447, inlinedAt: !2561)
!2567 = !DILocation(line: 1030, column: 30, scope: !2447, inlinedAt: !2561)
!2568 = !DILocation(line: 1030, column: 26, scope: !2447, inlinedAt: !2561)
!2569 = !DILocation(line: 179, column: 45, scope: !988, inlinedAt: !2570)
!2570 = distinct !DILocation(line: 1031, column: 3, scope: !2447, inlinedAt: !2561)
!2571 = !DILocation(line: 180, column: 33, scope: !988, inlinedAt: !2570)
!2572 = !DILocation(line: 180, column: 57, scope: !988, inlinedAt: !2570)
!2573 = !DILocation(line: 184, column: 6, scope: !988, inlinedAt: !2570)
!2574 = !DILocation(line: 184, column: 12, scope: !988, inlinedAt: !2570)
!2575 = !DILocation(line: 185, column: 8, scope: !1004, inlinedAt: !2570)
!2576 = !DILocation(line: 185, column: 23, scope: !1004, inlinedAt: !2570)
!2577 = !DILocation(line: 185, column: 19, scope: !1004, inlinedAt: !2570)
!2578 = !DILocation(line: 186, column: 5, scope: !1004, inlinedAt: !2570)
!2579 = !DILocation(line: 187, column: 6, scope: !988, inlinedAt: !2570)
!2580 = !DILocation(line: 187, column: 17, scope: !988, inlinedAt: !2570)
!2581 = !DILocation(line: 188, column: 6, scope: !988, inlinedAt: !2570)
!2582 = !DILocation(line: 188, column: 18, scope: !988, inlinedAt: !2570)
!2583 = !DILocation(line: 1032, column: 10, scope: !2447, inlinedAt: !2561)
!2584 = !DILocation(line: 1033, column: 1, scope: !2447, inlinedAt: !2561)
!2585 = !DILocation(line: 1046, column: 3, scope: !2548)
!2586 = distinct !DISubprogram(name: "quote_n_mem", scope: !117, file: !117, line: 1061, type: !2587, isLocal: false, isDefinition: true, scopeLine: 1062, flags: DIFlagPrototyped, isOptimized: true, unit: !72, retainedNodes: !2589)
!2587 = !DISubroutineType(types: !2588)
!2588 = !{!6, !19, !6, !112}
!2589 = !{!2590, !2591, !2592}
!2590 = !DILocalVariable(name: "n", arg: 1, scope: !2586, file: !117, line: 1061, type: !19)
!2591 = !DILocalVariable(name: "arg", arg: 2, scope: !2586, file: !117, line: 1061, type: !6)
!2592 = !DILocalVariable(name: "argsize", arg: 3, scope: !2586, file: !117, line: 1061, type: !112)
!2593 = !DILocation(line: 1061, column: 18, scope: !2586)
!2594 = !DILocation(line: 1061, column: 33, scope: !2586)
!2595 = !DILocation(line: 1061, column: 45, scope: !2586)
!2596 = !DILocation(line: 1063, column: 10, scope: !2586)
!2597 = !DILocation(line: 1063, column: 3, scope: !2586)
!2598 = distinct !DISubprogram(name: "quote_mem", scope: !117, file: !117, line: 1067, type: !2599, isLocal: false, isDefinition: true, scopeLine: 1068, flags: DIFlagPrototyped, isOptimized: true, unit: !72, retainedNodes: !2601)
!2599 = !DISubroutineType(types: !2600)
!2600 = !{!6, !6, !112}
!2601 = !{!2602, !2603}
!2602 = !DILocalVariable(name: "arg", arg: 1, scope: !2598, file: !117, line: 1067, type: !6)
!2603 = !DILocalVariable(name: "argsize", arg: 2, scope: !2598, file: !117, line: 1067, type: !112)
!2604 = !DILocation(line: 1067, column: 24, scope: !2598)
!2605 = !DILocation(line: 1067, column: 36, scope: !2598)
!2606 = !DILocation(line: 1061, column: 18, scope: !2586, inlinedAt: !2607)
!2607 = distinct !DILocation(line: 1069, column: 10, scope: !2598)
!2608 = !DILocation(line: 1061, column: 33, scope: !2586, inlinedAt: !2607)
!2609 = !DILocation(line: 1061, column: 45, scope: !2586, inlinedAt: !2607)
!2610 = !DILocation(line: 1063, column: 10, scope: !2586, inlinedAt: !2607)
!2611 = !DILocation(line: 1069, column: 3, scope: !2598)
!2612 = distinct !DISubprogram(name: "quote_n", scope: !117, file: !117, line: 1073, type: !2613, isLocal: false, isDefinition: true, scopeLine: 1074, flags: DIFlagPrototyped, isOptimized: true, unit: !72, retainedNodes: !2615)
!2613 = !DISubroutineType(types: !2614)
!2614 = !{!6, !19, !6}
!2615 = !{!2616, !2617}
!2616 = !DILocalVariable(name: "n", arg: 1, scope: !2612, file: !117, line: 1073, type: !19)
!2617 = !DILocalVariable(name: "arg", arg: 2, scope: !2612, file: !117, line: 1073, type: !6)
!2618 = !DILocation(line: 1073, column: 14, scope: !2612)
!2619 = !DILocation(line: 1073, column: 29, scope: !2612)
!2620 = !DILocation(line: 1061, column: 18, scope: !2586, inlinedAt: !2621)
!2621 = distinct !DILocation(line: 1075, column: 10, scope: !2612)
!2622 = !DILocation(line: 1061, column: 33, scope: !2586, inlinedAt: !2621)
!2623 = !DILocation(line: 1061, column: 45, scope: !2586, inlinedAt: !2621)
!2624 = !DILocation(line: 1063, column: 10, scope: !2586, inlinedAt: !2621)
!2625 = !DILocation(line: 1075, column: 3, scope: !2612)
!2626 = distinct !DISubprogram(name: "quote", scope: !117, file: !117, line: 1079, type: !2627, isLocal: false, isDefinition: true, scopeLine: 1080, flags: DIFlagPrototyped, isOptimized: true, unit: !72, retainedNodes: !2629)
!2627 = !DISubroutineType(types: !2628)
!2628 = !{!6, !6}
!2629 = !{!2630}
!2630 = !DILocalVariable(name: "arg", arg: 1, scope: !2626, file: !117, line: 1079, type: !6)
!2631 = !DILocation(line: 1079, column: 20, scope: !2626)
!2632 = !DILocation(line: 1073, column: 14, scope: !2612, inlinedAt: !2633)
!2633 = distinct !DILocation(line: 1081, column: 10, scope: !2626)
!2634 = !DILocation(line: 1073, column: 29, scope: !2612, inlinedAt: !2633)
!2635 = !DILocation(line: 1061, column: 18, scope: !2586, inlinedAt: !2636)
!2636 = distinct !DILocation(line: 1075, column: 10, scope: !2612, inlinedAt: !2633)
!2637 = !DILocation(line: 1061, column: 33, scope: !2586, inlinedAt: !2636)
!2638 = !DILocation(line: 1061, column: 45, scope: !2586, inlinedAt: !2636)
!2639 = !DILocation(line: 1063, column: 10, scope: !2586, inlinedAt: !2636)
!2640 = !DILocation(line: 1081, column: 3, scope: !2626)
!2641 = distinct !DISubprogram(name: "version_etc_arn", scope: !169, file: !169, line: 62, type: !2642, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !165, retainedNodes: !2697)
!2642 = !DISubroutineType(types: !2643)
!2643 = !{null, !2644, !6, !6, !6, !2696, !112}
!2644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2645, size: 64)
!2645 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2646, line: 7, baseType: !2647)
!2646 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2648, line: 49, size: 1728, elements: !2649)
!2648 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2649 = !{!2650, !2651, !2652, !2653, !2654, !2655, !2656, !2657, !2658, !2659, !2660, !2661, !2662, !2665, !2667, !2668, !2669, !2672, !2673, !2675, !2677, !2680, !2682, !2685, !2688, !2689, !2690, !2691, !2692}
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2647, file: !2648, line: 51, baseType: !19, size: 32)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2647, file: !2648, line: 54, baseType: !67, size: 64, offset: 64)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2647, file: !2648, line: 55, baseType: !67, size: 64, offset: 128)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2647, file: !2648, line: 56, baseType: !67, size: 64, offset: 192)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2647, file: !2648, line: 57, baseType: !67, size: 64, offset: 256)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2647, file: !2648, line: 58, baseType: !67, size: 64, offset: 320)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2647, file: !2648, line: 59, baseType: !67, size: 64, offset: 384)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2647, file: !2648, line: 60, baseType: !67, size: 64, offset: 448)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2647, file: !2648, line: 61, baseType: !67, size: 64, offset: 512)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2647, file: !2648, line: 64, baseType: !67, size: 64, offset: 576)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2647, file: !2648, line: 65, baseType: !67, size: 64, offset: 640)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2647, file: !2648, line: 66, baseType: !67, size: 64, offset: 704)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2647, file: !2648, line: 68, baseType: !2663, size: 64, offset: 768)
!2663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2664, size: 64)
!2664 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2648, line: 36, flags: DIFlagFwdDecl)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2647, file: !2648, line: 70, baseType: !2666, size: 64, offset: 832)
!2666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2647, size: 64)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2647, file: !2648, line: 72, baseType: !19, size: 32, offset: 896)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2647, file: !2648, line: 73, baseType: !19, size: 32, offset: 928)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2647, file: !2648, line: 74, baseType: !2670, size: 64, offset: 960)
!2670 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !694, line: 150, baseType: !2671)
!2671 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2647, file: !2648, line: 77, baseType: !111, size: 16, offset: 1024)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2647, file: !2648, line: 78, baseType: !2674, size: 8, offset: 1040)
!2674 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2647, file: !2648, line: 79, baseType: !2676, size: 8, offset: 1048)
!2676 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8, elements: !23)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2647, file: !2648, line: 81, baseType: !2678, size: 64, offset: 1088)
!2678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2679, size: 64)
!2679 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2648, line: 43, baseType: null)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2647, file: !2648, line: 89, baseType: !2681, size: 64, offset: 1152)
!2681 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !694, line: 151, baseType: !2671)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2647, file: !2648, line: 91, baseType: !2683, size: 64, offset: 1216)
!2683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2684, size: 64)
!2684 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !2648, line: 37, flags: DIFlagFwdDecl)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2647, file: !2648, line: 92, baseType: !2686, size: 64, offset: 1280)
!2686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2687, size: 64)
!2687 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !2648, line: 38, flags: DIFlagFwdDecl)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2647, file: !2648, line: 93, baseType: !2666, size: 64, offset: 1344)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2647, file: !2648, line: 94, baseType: !9, size: 64, offset: 1408)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2647, file: !2648, line: 95, baseType: !112, size: 64, offset: 1472)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2647, file: !2648, line: 96, baseType: !19, size: 32, offset: 1536)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2647, file: !2648, line: 98, baseType: !2693, size: 160, offset: 1568)
!2693 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 160, elements: !2694)
!2694 = !{!2695}
!2695 = !DISubrange(count: 20)
!2696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!2697 = !{!2698, !2699, !2700, !2701, !2702, !2703}
!2698 = !DILocalVariable(name: "stream", arg: 1, scope: !2641, file: !169, line: 62, type: !2644)
!2699 = !DILocalVariable(name: "command_name", arg: 2, scope: !2641, file: !169, line: 63, type: !6)
!2700 = !DILocalVariable(name: "package", arg: 3, scope: !2641, file: !169, line: 63, type: !6)
!2701 = !DILocalVariable(name: "version", arg: 4, scope: !2641, file: !169, line: 64, type: !6)
!2702 = !DILocalVariable(name: "authors", arg: 5, scope: !2641, file: !169, line: 65, type: !2696)
!2703 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2641, file: !169, line: 65, type: !112)
!2704 = !DILocation(line: 62, column: 24, scope: !2641)
!2705 = !DILocation(line: 63, column: 30, scope: !2641)
!2706 = !DILocation(line: 63, column: 56, scope: !2641)
!2707 = !DILocation(line: 64, column: 30, scope: !2641)
!2708 = !DILocation(line: 65, column: 39, scope: !2641)
!2709 = !DILocation(line: 65, column: 55, scope: !2641)
!2710 = !DILocation(line: 67, column: 7, scope: !2711)
!2711 = distinct !DILexicalBlock(scope: !2641, file: !169, line: 67, column: 7)
!2712 = !DILocation(line: 67, column: 7, scope: !2641)
!2713 = !DILocation(line: 68, column: 5, scope: !2711)
!2714 = !DILocation(line: 70, column: 5, scope: !2711)
!2715 = !DILocation(line: 84, column: 3, scope: !2641)
!2716 = !DILocation(line: 86, column: 3, scope: !2641)
!2717 = !DILocation(line: 95, column: 3, scope: !2641)
!2718 = !DILocation(line: 99, column: 7, scope: !2719)
!2719 = distinct !DILexicalBlock(scope: !2641, file: !169, line: 96, column: 5)
!2720 = !DILocation(line: 102, column: 7, scope: !2719)
!2721 = !DILocation(line: 103, column: 7, scope: !2719)
!2722 = !DILocation(line: 106, column: 7, scope: !2719)
!2723 = !DILocation(line: 107, column: 7, scope: !2719)
!2724 = !DILocation(line: 110, column: 7, scope: !2719)
!2725 = !DILocation(line: 112, column: 7, scope: !2719)
!2726 = !DILocation(line: 117, column: 7, scope: !2719)
!2727 = !DILocation(line: 119, column: 7, scope: !2719)
!2728 = !DILocation(line: 124, column: 7, scope: !2719)
!2729 = !DILocation(line: 126, column: 7, scope: !2719)
!2730 = !DILocation(line: 131, column: 7, scope: !2719)
!2731 = !DILocation(line: 134, column: 7, scope: !2719)
!2732 = !DILocation(line: 139, column: 7, scope: !2719)
!2733 = !DILocation(line: 142, column: 7, scope: !2719)
!2734 = !DILocation(line: 147, column: 7, scope: !2719)
!2735 = !DILocation(line: 151, column: 7, scope: !2719)
!2736 = !DILocation(line: 156, column: 7, scope: !2719)
!2737 = !DILocation(line: 160, column: 7, scope: !2719)
!2738 = !DILocation(line: 167, column: 7, scope: !2719)
!2739 = !DILocation(line: 171, column: 7, scope: !2719)
!2740 = !DILocation(line: 173, column: 1, scope: !2641)
!2741 = distinct !DISubprogram(name: "version_etc_ar", scope: !169, file: !169, line: 180, type: !2742, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !165, retainedNodes: !2744)
!2742 = !DISubroutineType(types: !2743)
!2743 = !{null, !2644, !6, !6, !6, !2696}
!2744 = !{!2745, !2746, !2747, !2748, !2749, !2750}
!2745 = !DILocalVariable(name: "stream", arg: 1, scope: !2741, file: !169, line: 180, type: !2644)
!2746 = !DILocalVariable(name: "command_name", arg: 2, scope: !2741, file: !169, line: 181, type: !6)
!2747 = !DILocalVariable(name: "package", arg: 3, scope: !2741, file: !169, line: 181, type: !6)
!2748 = !DILocalVariable(name: "version", arg: 4, scope: !2741, file: !169, line: 182, type: !6)
!2749 = !DILocalVariable(name: "authors", arg: 5, scope: !2741, file: !169, line: 182, type: !2696)
!2750 = !DILocalVariable(name: "n_authors", scope: !2741, file: !169, line: 184, type: !112)
!2751 = !DILocation(line: 180, column: 23, scope: !2741)
!2752 = !DILocation(line: 181, column: 29, scope: !2741)
!2753 = !DILocation(line: 181, column: 55, scope: !2741)
!2754 = !DILocation(line: 182, column: 29, scope: !2741)
!2755 = !DILocation(line: 182, column: 59, scope: !2741)
!2756 = !DILocation(line: 184, column: 10, scope: !2741)
!2757 = !DILocation(line: 186, column: 8, scope: !2758)
!2758 = distinct !DILexicalBlock(scope: !2741, file: !169, line: 186, column: 3)
!2759 = !DILocation(line: 0, scope: !2760)
!2760 = distinct !DILexicalBlock(scope: !2758, file: !169, line: 186, column: 3)
!2761 = !DILocation(line: 186, column: 23, scope: !2760)
!2762 = !DILocation(line: 186, column: 3, scope: !2758)
!2763 = !DILocation(line: 186, column: 52, scope: !2760)
!2764 = distinct !{!2764, !2762, !2765}
!2765 = !DILocation(line: 187, column: 5, scope: !2758)
!2766 = !DILocation(line: 188, column: 3, scope: !2741)
!2767 = !DILocation(line: 189, column: 1, scope: !2741)
!2768 = distinct !DISubprogram(name: "version_etc_va", scope: !169, file: !169, line: 196, type: !2769, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !165, retainedNodes: !2778)
!2769 = !DISubroutineType(types: !2770)
!2770 = !{null, !2644, !6, !6, !6, !2771}
!2771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2772, size: 64)
!2772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !166, line: 189, size: 192, elements: !2773)
!2773 = !{!2774, !2775, !2776, !2777}
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2772, file: !166, line: 189, baseType: !77, size: 32)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2772, file: !166, line: 189, baseType: !77, size: 32, offset: 32)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2772, file: !166, line: 189, baseType: !9, size: 64, offset: 64)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2772, file: !166, line: 189, baseType: !9, size: 64, offset: 128)
!2778 = !{!2779, !2780, !2781, !2782, !2783, !2784, !2785}
!2779 = !DILocalVariable(name: "stream", arg: 1, scope: !2768, file: !169, line: 196, type: !2644)
!2780 = !DILocalVariable(name: "command_name", arg: 2, scope: !2768, file: !169, line: 197, type: !6)
!2781 = !DILocalVariable(name: "package", arg: 3, scope: !2768, file: !169, line: 197, type: !6)
!2782 = !DILocalVariable(name: "version", arg: 4, scope: !2768, file: !169, line: 198, type: !6)
!2783 = !DILocalVariable(name: "authors", arg: 5, scope: !2768, file: !169, line: 198, type: !2771)
!2784 = !DILocalVariable(name: "n_authors", scope: !2768, file: !169, line: 200, type: !112)
!2785 = !DILocalVariable(name: "authtab", scope: !2768, file: !169, line: 201, type: !2786)
!2786 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 640, elements: !120)
!2787 = !DILocation(line: 196, column: 23, scope: !2768)
!2788 = !DILocation(line: 197, column: 29, scope: !2768)
!2789 = !DILocation(line: 197, column: 55, scope: !2768)
!2790 = !DILocation(line: 198, column: 29, scope: !2768)
!2791 = !DILocation(line: 198, column: 46, scope: !2768)
!2792 = !DILocation(line: 201, column: 3, scope: !2768)
!2793 = !DILocation(line: 201, column: 15, scope: !2768)
!2794 = !DILocation(line: 200, column: 10, scope: !2768)
!2795 = !DILocation(line: 205, column: 35, scope: !2796)
!2796 = distinct !DILexicalBlock(scope: !2797, file: !169, line: 203, column: 3)
!2797 = distinct !DILexicalBlock(scope: !2768, file: !169, line: 203, column: 3)
!2798 = !DILocation(line: 205, column: 14, scope: !2796)
!2799 = !DILocation(line: 205, column: 33, scope: !2796)
!2800 = !DILocation(line: 205, column: 67, scope: !2796)
!2801 = !DILocation(line: 203, column: 3, scope: !2797)
!2802 = !DILocation(line: 0, scope: !2796)
!2803 = !DILocation(line: 208, column: 3, scope: !2768)
!2804 = !DILocation(line: 210, column: 1, scope: !2768)
!2805 = distinct !DISubprogram(name: "version_etc", scope: !169, file: !169, line: 227, type: !2806, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !165, retainedNodes: !2808)
!2806 = !DISubroutineType(types: !2807)
!2807 = !{null, !2644, !6, !6, !6, null}
!2808 = !{!2809, !2810, !2811, !2812, !2813}
!2809 = !DILocalVariable(name: "stream", arg: 1, scope: !2805, file: !169, line: 227, type: !2644)
!2810 = !DILocalVariable(name: "command_name", arg: 2, scope: !2805, file: !169, line: 228, type: !6)
!2811 = !DILocalVariable(name: "package", arg: 3, scope: !2805, file: !169, line: 228, type: !6)
!2812 = !DILocalVariable(name: "version", arg: 4, scope: !2805, file: !169, line: 229, type: !6)
!2813 = !DILocalVariable(name: "authors", scope: !2805, file: !169, line: 231, type: !2814)
!2814 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !823, line: 52, baseType: !2815)
!2815 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !825, line: 48, baseType: !2816)
!2816 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !166, line: 231, baseType: !2817)
!2817 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2772, size: 192, elements: !23)
!2818 = !DILocation(line: 227, column: 20, scope: !2805)
!2819 = !DILocation(line: 228, column: 26, scope: !2805)
!2820 = !DILocation(line: 228, column: 52, scope: !2805)
!2821 = !DILocation(line: 229, column: 26, scope: !2805)
!2822 = !DILocation(line: 231, column: 3, scope: !2805)
!2823 = !DILocation(line: 231, column: 11, scope: !2805)
!2824 = !DILocation(line: 233, column: 3, scope: !2805)
!2825 = !DILocation(line: 234, column: 3, scope: !2805)
!2826 = !DILocation(line: 235, column: 3, scope: !2805)
!2827 = !DILocation(line: 236, column: 1, scope: !2805)
!2828 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !169, file: !169, line: 239, type: !769, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !165, retainedNodes: !4)
!2829 = !DILocation(line: 245, column: 3, scope: !2828)
!2830 = !DILocation(line: 251, column: 3, scope: !2828)
!2831 = !DILocation(line: 256, column: 3, scope: !2828)
!2832 = !DILocation(line: 258, column: 1, scope: !2828)
!2833 = distinct !DISubprogram(name: "xnmalloc", scope: !177, file: !177, line: 99, type: !2834, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !2836)
!2834 = !DISubroutineType(types: !2835)
!2835 = !{!9, !112, !112}
!2836 = !{!2837, !2838}
!2837 = !DILocalVariable(name: "n", arg: 1, scope: !2833, file: !177, line: 99, type: !112)
!2838 = !DILocalVariable(name: "s", arg: 2, scope: !2833, file: !177, line: 99, type: !112)
!2839 = !DILocation(line: 99, column: 18, scope: !2833)
!2840 = !DILocation(line: 99, column: 28, scope: !2833)
!2841 = !DILocation(line: 101, column: 7, scope: !2842)
!2842 = distinct !DILexicalBlock(scope: !2833, file: !177, line: 101, column: 7)
!2843 = !DILocation(line: 101, column: 7, scope: !2833)
!2844 = !DILocation(line: 102, column: 5, scope: !2842)
!2845 = !DILocation(line: 103, column: 21, scope: !2833)
!2846 = !DILocalVariable(name: "n", arg: 1, scope: !2847, file: !2848, line: 39, type: !112)
!2847 = distinct !DISubprogram(name: "xmalloc", scope: !2848, file: !2848, line: 39, type: !2849, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !2851)
!2848 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2849 = !DISubroutineType(types: !2850)
!2850 = !{!9, !112}
!2851 = !{!2846, !2852}
!2852 = !DILocalVariable(name: "p", scope: !2847, file: !2848, line: 41, type: !9)
!2853 = !DILocation(line: 39, column: 17, scope: !2847, inlinedAt: !2854)
!2854 = distinct !DILocation(line: 103, column: 10, scope: !2833)
!2855 = !DILocation(line: 41, column: 13, scope: !2847, inlinedAt: !2854)
!2856 = !DILocation(line: 41, column: 9, scope: !2847, inlinedAt: !2854)
!2857 = !DILocation(line: 42, column: 8, scope: !2858, inlinedAt: !2854)
!2858 = distinct !DILexicalBlock(scope: !2847, file: !2848, line: 42, column: 7)
!2859 = !DILocation(line: 42, column: 15, scope: !2858, inlinedAt: !2854)
!2860 = !DILocation(line: 42, column: 10, scope: !2858, inlinedAt: !2854)
!2861 = !DILocation(line: 43, column: 5, scope: !2858, inlinedAt: !2854)
!2862 = !DILocation(line: 103, column: 3, scope: !2833)
!2863 = !DILocation(line: 39, column: 17, scope: !2847)
!2864 = !DILocation(line: 41, column: 13, scope: !2847)
!2865 = !DILocation(line: 41, column: 9, scope: !2847)
!2866 = !DILocation(line: 42, column: 8, scope: !2858)
!2867 = !DILocation(line: 42, column: 15, scope: !2858)
!2868 = !DILocation(line: 42, column: 10, scope: !2858)
!2869 = !DILocation(line: 43, column: 5, scope: !2858)
!2870 = !DILocation(line: 44, column: 3, scope: !2847)
!2871 = distinct !DISubprogram(name: "xnrealloc", scope: !177, file: !177, line: 112, type: !2872, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !2874)
!2872 = !DISubroutineType(types: !2873)
!2873 = !{!9, !9, !112, !112}
!2874 = !{!2875, !2876, !2877}
!2875 = !DILocalVariable(name: "p", arg: 1, scope: !2871, file: !177, line: 112, type: !9)
!2876 = !DILocalVariable(name: "n", arg: 2, scope: !2871, file: !177, line: 112, type: !112)
!2877 = !DILocalVariable(name: "s", arg: 3, scope: !2871, file: !177, line: 112, type: !112)
!2878 = !DILocation(line: 112, column: 18, scope: !2871)
!2879 = !DILocation(line: 112, column: 28, scope: !2871)
!2880 = !DILocation(line: 112, column: 38, scope: !2871)
!2881 = !DILocation(line: 114, column: 7, scope: !2882)
!2882 = distinct !DILexicalBlock(scope: !2871, file: !177, line: 114, column: 7)
!2883 = !DILocation(line: 114, column: 7, scope: !2871)
!2884 = !DILocation(line: 115, column: 5, scope: !2882)
!2885 = !DILocation(line: 116, column: 25, scope: !2871)
!2886 = !DILocalVariable(name: "p", arg: 1, scope: !2887, file: !2848, line: 51, type: !9)
!2887 = distinct !DISubprogram(name: "xrealloc", scope: !2848, file: !2848, line: 51, type: !2888, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !2890)
!2888 = !DISubroutineType(types: !2889)
!2889 = !{!9, !9, !112}
!2890 = !{!2886, !2891}
!2891 = !DILocalVariable(name: "n", arg: 2, scope: !2887, file: !2848, line: 51, type: !112)
!2892 = !DILocation(line: 51, column: 17, scope: !2887, inlinedAt: !2893)
!2893 = distinct !DILocation(line: 116, column: 10, scope: !2871)
!2894 = !DILocation(line: 51, column: 27, scope: !2887, inlinedAt: !2893)
!2895 = !DILocation(line: 53, column: 8, scope: !2896, inlinedAt: !2893)
!2896 = distinct !DILexicalBlock(scope: !2887, file: !2848, line: 53, column: 7)
!2897 = !DILocation(line: 53, column: 13, scope: !2896, inlinedAt: !2893)
!2898 = !DILocation(line: 53, column: 10, scope: !2896, inlinedAt: !2893)
!2899 = !DILocation(line: 57, column: 7, scope: !2900, inlinedAt: !2893)
!2900 = distinct !DILexicalBlock(scope: !2896, file: !2848, line: 54, column: 5)
!2901 = !DILocation(line: 58, column: 7, scope: !2900, inlinedAt: !2893)
!2902 = !DILocation(line: 61, column: 7, scope: !2887, inlinedAt: !2893)
!2903 = !DILocation(line: 62, column: 8, scope: !2904, inlinedAt: !2893)
!2904 = distinct !DILexicalBlock(scope: !2887, file: !2848, line: 62, column: 7)
!2905 = !DILocation(line: 62, column: 13, scope: !2904, inlinedAt: !2893)
!2906 = !DILocation(line: 62, column: 10, scope: !2904, inlinedAt: !2893)
!2907 = !DILocation(line: 63, column: 5, scope: !2904, inlinedAt: !2893)
!2908 = !DILocation(line: 0, scope: !2887, inlinedAt: !2893)
!2909 = !DILocation(line: 116, column: 3, scope: !2871)
!2910 = !DILocation(line: 51, column: 17, scope: !2887)
!2911 = !DILocation(line: 51, column: 27, scope: !2887)
!2912 = !DILocation(line: 53, column: 8, scope: !2896)
!2913 = !DILocation(line: 53, column: 13, scope: !2896)
!2914 = !DILocation(line: 53, column: 10, scope: !2896)
!2915 = !DILocation(line: 57, column: 7, scope: !2900)
!2916 = !DILocation(line: 58, column: 7, scope: !2900)
!2917 = !DILocation(line: 61, column: 7, scope: !2887)
!2918 = !DILocation(line: 62, column: 8, scope: !2904)
!2919 = !DILocation(line: 62, column: 13, scope: !2904)
!2920 = !DILocation(line: 62, column: 10, scope: !2904)
!2921 = !DILocation(line: 63, column: 5, scope: !2904)
!2922 = !DILocation(line: 0, scope: !2887)
!2923 = !DILocation(line: 65, column: 1, scope: !2887)
!2924 = !DILocation(line: 174, column: 19, scope: !178)
!2925 = !DILocation(line: 174, column: 30, scope: !178)
!2926 = !DILocation(line: 174, column: 41, scope: !178)
!2927 = !DILocation(line: 176, column: 14, scope: !178)
!2928 = !DILocation(line: 176, column: 10, scope: !178)
!2929 = !DILocation(line: 178, column: 9, scope: !2930)
!2930 = distinct !DILexicalBlock(scope: !178, file: !177, line: 178, column: 7)
!2931 = !DILocation(line: 178, column: 7, scope: !178)
!2932 = !DILocation(line: 180, column: 13, scope: !2933)
!2933 = distinct !DILexicalBlock(scope: !2934, file: !177, line: 180, column: 11)
!2934 = distinct !DILexicalBlock(scope: !2930, file: !177, line: 179, column: 5)
!2935 = !DILocation(line: 180, column: 11, scope: !2934)
!2936 = !DILocation(line: 188, column: 30, scope: !2937)
!2937 = distinct !DILexicalBlock(scope: !2933, file: !177, line: 181, column: 9)
!2938 = !DILocation(line: 189, column: 16, scope: !2937)
!2939 = !DILocation(line: 189, column: 13, scope: !2937)
!2940 = !DILocation(line: 190, column: 9, scope: !2937)
!2941 = !DILocation(line: 0, scope: !2937)
!2942 = !DILocation(line: 191, column: 11, scope: !2943)
!2943 = distinct !DILexicalBlock(scope: !2934, file: !177, line: 191, column: 11)
!2944 = !DILocation(line: 191, column: 11, scope: !2934)
!2945 = !DILocation(line: 206, column: 7, scope: !178)
!2946 = !DILocation(line: 207, column: 25, scope: !178)
!2947 = !DILocation(line: 51, column: 17, scope: !2887, inlinedAt: !2948)
!2948 = distinct !DILocation(line: 207, column: 10, scope: !178)
!2949 = !DILocation(line: 51, column: 27, scope: !2887, inlinedAt: !2948)
!2950 = !DILocation(line: 53, column: 10, scope: !2896, inlinedAt: !2948)
!2951 = !DILocation(line: 192, column: 9, scope: !2943)
!2952 = !DILocation(line: 200, column: 69, scope: !2953)
!2953 = distinct !DILexicalBlock(scope: !2954, file: !177, line: 200, column: 11)
!2954 = distinct !DILexicalBlock(scope: !2930, file: !177, line: 195, column: 5)
!2955 = !DILocation(line: 201, column: 11, scope: !2953)
!2956 = !DILocation(line: 200, column: 11, scope: !2954)
!2957 = !DILocation(line: 202, column: 9, scope: !2953)
!2958 = !DILocation(line: 203, column: 14, scope: !2954)
!2959 = !DILocation(line: 203, column: 18, scope: !2954)
!2960 = !DILocation(line: 203, column: 9, scope: !2954)
!2961 = !DILocation(line: 53, column: 8, scope: !2896, inlinedAt: !2948)
!2962 = !DILocation(line: 57, column: 7, scope: !2900, inlinedAt: !2948)
!2963 = !DILocation(line: 58, column: 7, scope: !2900, inlinedAt: !2948)
!2964 = !DILocation(line: 61, column: 7, scope: !2887, inlinedAt: !2948)
!2965 = !DILocation(line: 62, column: 8, scope: !2904, inlinedAt: !2948)
!2966 = !DILocation(line: 62, column: 13, scope: !2904, inlinedAt: !2948)
!2967 = !DILocation(line: 62, column: 10, scope: !2904, inlinedAt: !2948)
!2968 = !DILocation(line: 63, column: 5, scope: !2904, inlinedAt: !2948)
!2969 = !DILocation(line: 0, scope: !2887, inlinedAt: !2948)
!2970 = !DILocation(line: 207, column: 3, scope: !178)
!2971 = distinct !DISubprogram(name: "xcharalloc", scope: !177, file: !177, line: 216, type: !1925, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !2972)
!2972 = !{!2973}
!2973 = !DILocalVariable(name: "n", arg: 1, scope: !2971, file: !177, line: 216, type: !112)
!2974 = !DILocation(line: 216, column: 20, scope: !2971)
!2975 = !DILocation(line: 39, column: 17, scope: !2847, inlinedAt: !2976)
!2976 = distinct !DILocation(line: 218, column: 10, scope: !2971)
!2977 = !DILocation(line: 41, column: 13, scope: !2847, inlinedAt: !2976)
!2978 = !DILocation(line: 41, column: 9, scope: !2847, inlinedAt: !2976)
!2979 = !DILocation(line: 42, column: 8, scope: !2858, inlinedAt: !2976)
!2980 = !DILocation(line: 42, column: 15, scope: !2858, inlinedAt: !2976)
!2981 = !DILocation(line: 42, column: 10, scope: !2858, inlinedAt: !2976)
!2982 = !DILocation(line: 43, column: 5, scope: !2858, inlinedAt: !2976)
!2983 = !DILocation(line: 218, column: 3, scope: !2971)
!2984 = distinct !DISubprogram(name: "x2realloc", scope: !2848, file: !2848, line: 74, type: !2985, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !2987)
!2985 = !DISubroutineType(types: !2986)
!2986 = !{!9, !9, !181}
!2987 = !{!2988, !2989}
!2988 = !DILocalVariable(name: "p", arg: 1, scope: !2984, file: !2848, line: 74, type: !9)
!2989 = !DILocalVariable(name: "pn", arg: 2, scope: !2984, file: !2848, line: 74, type: !181)
!2990 = !DILocation(line: 74, column: 18, scope: !2984)
!2991 = !DILocation(line: 74, column: 29, scope: !2984)
!2992 = !DILocation(line: 174, column: 19, scope: !178, inlinedAt: !2993)
!2993 = distinct !DILocation(line: 76, column: 10, scope: !2984)
!2994 = !DILocation(line: 174, column: 30, scope: !178, inlinedAt: !2993)
!2995 = !DILocation(line: 174, column: 41, scope: !178, inlinedAt: !2993)
!2996 = !DILocation(line: 176, column: 14, scope: !178, inlinedAt: !2993)
!2997 = !DILocation(line: 176, column: 10, scope: !178, inlinedAt: !2993)
!2998 = !DILocation(line: 178, column: 9, scope: !2930, inlinedAt: !2993)
!2999 = !DILocation(line: 178, column: 7, scope: !178, inlinedAt: !2993)
!3000 = !DILocation(line: 180, column: 13, scope: !2933, inlinedAt: !2993)
!3001 = !DILocation(line: 180, column: 11, scope: !2934, inlinedAt: !2993)
!3002 = !DILocation(line: 191, column: 11, scope: !2943, inlinedAt: !2993)
!3003 = !DILocation(line: 191, column: 11, scope: !2934, inlinedAt: !2993)
!3004 = !DILocation(line: 206, column: 7, scope: !178, inlinedAt: !2993)
!3005 = !DILocation(line: 51, column: 17, scope: !2887, inlinedAt: !3006)
!3006 = distinct !DILocation(line: 207, column: 10, scope: !178, inlinedAt: !2993)
!3007 = !DILocation(line: 51, column: 27, scope: !2887, inlinedAt: !3006)
!3008 = !DILocation(line: 53, column: 10, scope: !2896, inlinedAt: !3006)
!3009 = !DILocation(line: 192, column: 9, scope: !2943, inlinedAt: !2993)
!3010 = !DILocation(line: 201, column: 11, scope: !2953, inlinedAt: !2993)
!3011 = !DILocation(line: 200, column: 11, scope: !2954, inlinedAt: !2993)
!3012 = !DILocation(line: 202, column: 9, scope: !2953, inlinedAt: !2993)
!3013 = !DILocation(line: 203, column: 14, scope: !2954, inlinedAt: !2993)
!3014 = !DILocation(line: 203, column: 18, scope: !2954, inlinedAt: !2993)
!3015 = !DILocation(line: 203, column: 9, scope: !2954, inlinedAt: !2993)
!3016 = !DILocation(line: 53, column: 8, scope: !2896, inlinedAt: !3006)
!3017 = !DILocation(line: 57, column: 7, scope: !2900, inlinedAt: !3006)
!3018 = !DILocation(line: 58, column: 7, scope: !2900, inlinedAt: !3006)
!3019 = !DILocation(line: 61, column: 7, scope: !2887, inlinedAt: !3006)
!3020 = !DILocation(line: 62, column: 8, scope: !2904, inlinedAt: !3006)
!3021 = !DILocation(line: 62, column: 13, scope: !2904, inlinedAt: !3006)
!3022 = !DILocation(line: 62, column: 10, scope: !2904, inlinedAt: !3006)
!3023 = !DILocation(line: 63, column: 5, scope: !2904, inlinedAt: !3006)
!3024 = !DILocation(line: 0, scope: !2887, inlinedAt: !3006)
!3025 = !DILocation(line: 76, column: 3, scope: !2984)
!3026 = distinct !DISubprogram(name: "xzalloc", scope: !2848, file: !2848, line: 84, type: !2849, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !3027)
!3027 = !{!3028}
!3028 = !DILocalVariable(name: "s", arg: 1, scope: !3026, file: !2848, line: 84, type: !112)
!3029 = !DILocation(line: 84, column: 17, scope: !3026)
!3030 = !DILocation(line: 39, column: 17, scope: !2847, inlinedAt: !3031)
!3031 = distinct !DILocation(line: 86, column: 18, scope: !3026)
!3032 = !DILocation(line: 41, column: 13, scope: !2847, inlinedAt: !3031)
!3033 = !DILocation(line: 41, column: 9, scope: !2847, inlinedAt: !3031)
!3034 = !DILocation(line: 42, column: 8, scope: !2858, inlinedAt: !3031)
!3035 = !DILocation(line: 42, column: 15, scope: !2858, inlinedAt: !3031)
!3036 = !DILocation(line: 42, column: 10, scope: !2858, inlinedAt: !3031)
!3037 = !DILocation(line: 43, column: 5, scope: !2858, inlinedAt: !3031)
!3038 = !DILocation(line: 86, column: 10, scope: !3026)
!3039 = !DILocation(line: 86, column: 3, scope: !3026)
!3040 = distinct !DISubprogram(name: "xcalloc", scope: !2848, file: !2848, line: 93, type: !2834, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !3041)
!3041 = !{!3042, !3043, !3044}
!3042 = !DILocalVariable(name: "n", arg: 1, scope: !3040, file: !2848, line: 93, type: !112)
!3043 = !DILocalVariable(name: "s", arg: 2, scope: !3040, file: !2848, line: 93, type: !112)
!3044 = !DILocalVariable(name: "p", scope: !3040, file: !2848, line: 95, type: !9)
!3045 = !DILocation(line: 93, column: 17, scope: !3040)
!3046 = !DILocation(line: 93, column: 27, scope: !3040)
!3047 = !DILocation(line: 100, column: 7, scope: !3048)
!3048 = distinct !DILexicalBlock(scope: !3040, file: !2848, line: 100, column: 7)
!3049 = !DILocation(line: 101, column: 7, scope: !3048)
!3050 = !DILocation(line: 101, column: 18, scope: !3048)
!3051 = !DILocation(line: 95, column: 9, scope: !3040)
!3052 = !DILocation(line: 101, column: 16, scope: !3048)
!3053 = !DILocation(line: 100, column: 7, scope: !3040)
!3054 = !DILocation(line: 102, column: 5, scope: !3048)
!3055 = !DILocation(line: 103, column: 3, scope: !3040)
!3056 = distinct !DISubprogram(name: "xmemdup", scope: !2848, file: !2848, line: 111, type: !3057, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !3061)
!3057 = !DISubroutineType(types: !3058)
!3058 = !{!9, !3059, !112}
!3059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3060, size: 64)
!3060 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3061 = !{!3062, !3063}
!3062 = !DILocalVariable(name: "p", arg: 1, scope: !3056, file: !2848, line: 111, type: !3059)
!3063 = !DILocalVariable(name: "s", arg: 2, scope: !3056, file: !2848, line: 111, type: !112)
!3064 = !DILocation(line: 111, column: 22, scope: !3056)
!3065 = !DILocation(line: 111, column: 32, scope: !3056)
!3066 = !DILocation(line: 39, column: 17, scope: !2847, inlinedAt: !3067)
!3067 = distinct !DILocation(line: 113, column: 18, scope: !3056)
!3068 = !DILocation(line: 41, column: 13, scope: !2847, inlinedAt: !3067)
!3069 = !DILocation(line: 41, column: 9, scope: !2847, inlinedAt: !3067)
!3070 = !DILocation(line: 42, column: 8, scope: !2858, inlinedAt: !3067)
!3071 = !DILocation(line: 42, column: 15, scope: !2858, inlinedAt: !3067)
!3072 = !DILocation(line: 42, column: 10, scope: !2858, inlinedAt: !3067)
!3073 = !DILocation(line: 43, column: 5, scope: !2858, inlinedAt: !3067)
!3074 = !DILocation(line: 113, column: 10, scope: !3056)
!3075 = !DILocation(line: 113, column: 3, scope: !3056)
!3076 = distinct !DISubprogram(name: "xstrdup", scope: !2848, file: !2848, line: 119, type: !2131, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !3077)
!3077 = !{!3078}
!3078 = !DILocalVariable(name: "string", arg: 1, scope: !3076, file: !2848, line: 119, type: !6)
!3079 = !DILocation(line: 119, column: 22, scope: !3076)
!3080 = !DILocation(line: 121, column: 27, scope: !3076)
!3081 = !DILocation(line: 121, column: 43, scope: !3076)
!3082 = !DILocation(line: 111, column: 22, scope: !3056, inlinedAt: !3083)
!3083 = distinct !DILocation(line: 121, column: 10, scope: !3076)
!3084 = !DILocation(line: 111, column: 32, scope: !3056, inlinedAt: !3083)
!3085 = !DILocation(line: 39, column: 17, scope: !2847, inlinedAt: !3086)
!3086 = distinct !DILocation(line: 113, column: 18, scope: !3056, inlinedAt: !3083)
!3087 = !DILocation(line: 41, column: 13, scope: !2847, inlinedAt: !3086)
!3088 = !DILocation(line: 41, column: 9, scope: !2847, inlinedAt: !3086)
!3089 = !DILocation(line: 42, column: 8, scope: !2858, inlinedAt: !3086)
!3090 = !DILocation(line: 42, column: 15, scope: !2858, inlinedAt: !3086)
!3091 = !DILocation(line: 42, column: 10, scope: !2858, inlinedAt: !3086)
!3092 = !DILocation(line: 43, column: 5, scope: !2858, inlinedAt: !3086)
!3093 = !DILocation(line: 113, column: 10, scope: !3056, inlinedAt: !3083)
!3094 = !DILocation(line: 121, column: 3, scope: !3076)
!3095 = distinct !DISubprogram(name: "xalloc_die", scope: !3096, file: !3096, line: 32, type: !769, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !190, retainedNodes: !4)
!3096 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3097 = !DILocation(line: 34, column: 10, scope: !3095)
!3098 = !DILocation(line: 34, column: 33, scope: !3095)
!3099 = !DILocation(line: 34, column: 3, scope: !3095)
!3100 = !DILocation(line: 40, column: 3, scope: !3095)
!3101 = distinct !DISubprogram(name: "rpl_calloc", scope: !3102, file: !3102, line: 42, type: !2834, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !192, retainedNodes: !3103)
!3102 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3103 = !{!3104, !3105, !3106, !3107}
!3104 = !DILocalVariable(name: "n", arg: 1, scope: !3101, file: !3102, line: 42, type: !112)
!3105 = !DILocalVariable(name: "s", arg: 2, scope: !3101, file: !3102, line: 42, type: !112)
!3106 = !DILocalVariable(name: "result", scope: !3101, file: !3102, line: 44, type: !9)
!3107 = !DILocalVariable(name: "bytes", scope: !3108, file: !3102, line: 56, type: !112)
!3108 = distinct !DILexicalBlock(scope: !3109, file: !3102, line: 53, column: 5)
!3109 = distinct !DILexicalBlock(scope: !3101, file: !3102, line: 47, column: 7)
!3110 = !DILocation(line: 42, column: 20, scope: !3101)
!3111 = !DILocation(line: 42, column: 30, scope: !3101)
!3112 = !DILocation(line: 47, column: 9, scope: !3109)
!3113 = !DILocation(line: 47, column: 19, scope: !3109)
!3114 = !DILocation(line: 47, column: 14, scope: !3109)
!3115 = !DILocation(line: 56, column: 24, scope: !3108)
!3116 = !DILocation(line: 56, column: 14, scope: !3108)
!3117 = !DILocation(line: 57, column: 17, scope: !3118)
!3118 = distinct !DILexicalBlock(scope: !3108, file: !3102, line: 57, column: 11)
!3119 = !DILocation(line: 57, column: 21, scope: !3118)
!3120 = !DILocation(line: 57, column: 11, scope: !3108)
!3121 = !DILocation(line: 59, column: 11, scope: !3122)
!3122 = distinct !DILexicalBlock(scope: !3118, file: !3102, line: 58, column: 9)
!3123 = !DILocation(line: 59, column: 17, scope: !3122)
!3124 = !DILocation(line: 65, column: 12, scope: !3101)
!3125 = !DILocation(line: 44, column: 9, scope: !3101)
!3126 = !DILocation(line: 72, column: 3, scope: !3101)
!3127 = !DILocation(line: 0, scope: !3122)
!3128 = !DILocation(line: 73, column: 1, scope: !3101)
!3129 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !3130, file: !3130, line: 385, type: !3131, isLocal: false, isDefinition: true, scopeLine: 386, flags: DIFlagPrototyped, isOptimized: true, unit: !194, retainedNodes: !3145)
!3130 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3131 = !DISubroutineType(types: !3132)
!3132 = !{!112, !3133, !6, !112, !3134}
!3133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!3134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3135, size: 64)
!3135 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1087, line: 6, baseType: !3136)
!3136 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1089, line: 21, baseType: !3137)
!3137 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1089, line: 13, size: 64, elements: !3138)
!3138 = !{!3139, !3140}
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3137, file: !1089, line: 15, baseType: !19, size: 32)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3137, file: !1089, line: 20, baseType: !3141, size: 32, offset: 32)
!3141 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3137, file: !1089, line: 16, size: 32, elements: !3142)
!3142 = !{!3143, !3144}
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3141, file: !1089, line: 18, baseType: !77, size: 32)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3141, file: !1089, line: 19, baseType: !1098, size: 32)
!3145 = !{!3146, !3147, !3148, !3149, !3150, !3151, !3152}
!3146 = !DILocalVariable(name: "pwc", arg: 1, scope: !3129, file: !3130, line: 385, type: !3133)
!3147 = !DILocalVariable(name: "s", arg: 2, scope: !3129, file: !3130, line: 385, type: !6)
!3148 = !DILocalVariable(name: "n", arg: 3, scope: !3129, file: !3130, line: 385, type: !112)
!3149 = !DILocalVariable(name: "ps", arg: 4, scope: !3129, file: !3130, line: 385, type: !3134)
!3150 = !DILocalVariable(name: "ret", scope: !3129, file: !3130, line: 387, type: !112)
!3151 = !DILocalVariable(name: "wc", scope: !3129, file: !3130, line: 388, type: !1103)
!3152 = !DILocalVariable(name: "uc", scope: !3153, file: !3130, line: 449, type: !947)
!3153 = distinct !DILexicalBlock(scope: !3154, file: !3130, line: 448, column: 5)
!3154 = distinct !DILexicalBlock(scope: !3129, file: !3130, line: 447, column: 7)
!3155 = !DILocation(line: 385, column: 23, scope: !3129)
!3156 = !DILocation(line: 385, column: 40, scope: !3129)
!3157 = !DILocation(line: 385, column: 50, scope: !3129)
!3158 = !DILocation(line: 385, column: 64, scope: !3129)
!3159 = !DILocation(line: 388, column: 3, scope: !3129)
!3160 = !DILocation(line: 404, column: 9, scope: !3161)
!3161 = distinct !DILexicalBlock(scope: !3129, file: !3130, line: 404, column: 7)
!3162 = !DILocation(line: 404, column: 7, scope: !3129)
!3163 = !DILocation(line: 439, column: 9, scope: !3129)
!3164 = !DILocation(line: 387, column: 10, scope: !3129)
!3165 = !DILocation(line: 447, column: 19, scope: !3154)
!3166 = !DILocation(line: 447, column: 31, scope: !3154)
!3167 = !DILocation(line: 447, column: 26, scope: !3154)
!3168 = !DILocation(line: 447, column: 41, scope: !3154)
!3169 = !DILocation(line: 447, column: 7, scope: !3129)
!3170 = !DILocation(line: 449, column: 26, scope: !3153)
!3171 = !DILocation(line: 449, column: 21, scope: !3153)
!3172 = !DILocation(line: 450, column: 14, scope: !3153)
!3173 = !DILocation(line: 450, column: 12, scope: !3153)
!3174 = !DILocation(line: 0, scope: !3153)
!3175 = !DILocation(line: 456, column: 1, scope: !3129)
!3176 = distinct !DISubprogram(name: "close_stream", scope: !3177, file: !3177, line: 56, type: !3178, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !197, retainedNodes: !3214)
!3177 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3178 = !DISubroutineType(types: !3179)
!3179 = !{!19, !3180}
!3180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3181, size: 64)
!3181 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2646, line: 7, baseType: !3182)
!3182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2648, line: 49, size: 1728, elements: !3183)
!3183 = !{!3184, !3185, !3186, !3187, !3188, !3189, !3190, !3191, !3192, !3193, !3194, !3195, !3196, !3197, !3199, !3200, !3201, !3202, !3203, !3204, !3205, !3206, !3207, !3208, !3209, !3210, !3211, !3212, !3213}
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3182, file: !2648, line: 51, baseType: !19, size: 32)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3182, file: !2648, line: 54, baseType: !67, size: 64, offset: 64)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3182, file: !2648, line: 55, baseType: !67, size: 64, offset: 128)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3182, file: !2648, line: 56, baseType: !67, size: 64, offset: 192)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3182, file: !2648, line: 57, baseType: !67, size: 64, offset: 256)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3182, file: !2648, line: 58, baseType: !67, size: 64, offset: 320)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3182, file: !2648, line: 59, baseType: !67, size: 64, offset: 384)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3182, file: !2648, line: 60, baseType: !67, size: 64, offset: 448)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3182, file: !2648, line: 61, baseType: !67, size: 64, offset: 512)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3182, file: !2648, line: 64, baseType: !67, size: 64, offset: 576)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3182, file: !2648, line: 65, baseType: !67, size: 64, offset: 640)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3182, file: !2648, line: 66, baseType: !67, size: 64, offset: 704)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3182, file: !2648, line: 68, baseType: !2663, size: 64, offset: 768)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3182, file: !2648, line: 70, baseType: !3198, size: 64, offset: 832)
!3198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3182, size: 64)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3182, file: !2648, line: 72, baseType: !19, size: 32, offset: 896)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3182, file: !2648, line: 73, baseType: !19, size: 32, offset: 928)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3182, file: !2648, line: 74, baseType: !2670, size: 64, offset: 960)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3182, file: !2648, line: 77, baseType: !111, size: 16, offset: 1024)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3182, file: !2648, line: 78, baseType: !2674, size: 8, offset: 1040)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3182, file: !2648, line: 79, baseType: !2676, size: 8, offset: 1048)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3182, file: !2648, line: 81, baseType: !2678, size: 64, offset: 1088)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3182, file: !2648, line: 89, baseType: !2681, size: 64, offset: 1152)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3182, file: !2648, line: 91, baseType: !2683, size: 64, offset: 1216)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3182, file: !2648, line: 92, baseType: !2686, size: 64, offset: 1280)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3182, file: !2648, line: 93, baseType: !3198, size: 64, offset: 1344)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3182, file: !2648, line: 94, baseType: !9, size: 64, offset: 1408)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3182, file: !2648, line: 95, baseType: !112, size: 64, offset: 1472)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3182, file: !2648, line: 96, baseType: !19, size: 32, offset: 1536)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3182, file: !2648, line: 98, baseType: !2693, size: 160, offset: 1568)
!3214 = !{!3215, !3216, !3218, !3219}
!3215 = !DILocalVariable(name: "stream", arg: 1, scope: !3176, file: !3177, line: 56, type: !3180)
!3216 = !DILocalVariable(name: "some_pending", scope: !3176, file: !3177, line: 58, type: !3217)
!3217 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!3218 = !DILocalVariable(name: "prev_fail", scope: !3176, file: !3177, line: 59, type: !3217)
!3219 = !DILocalVariable(name: "fclose_fail", scope: !3176, file: !3177, line: 60, type: !3217)
!3220 = !DILocation(line: 56, column: 21, scope: !3176)
!3221 = !DILocation(line: 58, column: 30, scope: !3176)
!3222 = !DILocalVariable(name: "__stream", arg: 1, scope: !3223, file: !3224, line: 135, type: !3180)
!3223 = distinct !DISubprogram(name: "ferror_unlocked", scope: !3224, file: !3224, line: 135, type: !3178, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !197, retainedNodes: !3225)
!3224 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3225 = !{!3222}
!3226 = !DILocation(line: 135, column: 1, scope: !3223, inlinedAt: !3227)
!3227 = distinct !DILocation(line: 59, column: 27, scope: !3176)
!3228 = !DILocation(line: 137, column: 10, scope: !3223, inlinedAt: !3227)
!3229 = !{!3230, !723, i64 0}
!3230 = !{!"_IO_FILE", !723, i64 0, !636, i64 8, !636, i64 16, !636, i64 24, !636, i64 32, !636, i64 40, !636, i64 48, !636, i64 56, !636, i64 64, !636, i64 72, !636, i64 80, !636, i64 88, !636, i64 96, !636, i64 104, !723, i64 112, !723, i64 116, !1970, i64 120, !1344, i64 128, !637, i64 130, !637, i64 131, !636, i64 136, !1970, i64 144, !636, i64 152, !636, i64 160, !636, i64 168, !636, i64 176, !1970, i64 184, !723, i64 192, !637, i64 196}
!3231 = !DILocation(line: 59, column: 43, scope: !3176)
!3232 = !DILocation(line: 60, column: 29, scope: !3176)
!3233 = !DILocation(line: 60, column: 45, scope: !3176)
!3234 = !DILocation(line: 70, column: 17, scope: !3235)
!3235 = distinct !DILexicalBlock(scope: !3176, file: !3177, line: 70, column: 7)
!3236 = !DILocation(line: 58, column: 50, scope: !3176)
!3237 = !DILocation(line: 70, column: 33, scope: !3235)
!3238 = !DILocation(line: 70, column: 53, scope: !3235)
!3239 = !DILocation(line: 70, column: 59, scope: !3235)
!3240 = !DILocation(line: 70, column: 7, scope: !3176)
!3241 = !DILocation(line: 72, column: 11, scope: !3242)
!3242 = distinct !DILexicalBlock(scope: !3235, file: !3177, line: 71, column: 5)
!3243 = !DILocation(line: 73, column: 9, scope: !3244)
!3244 = distinct !DILexicalBlock(scope: !3242, file: !3177, line: 72, column: 11)
!3245 = !DILocation(line: 73, column: 15, scope: !3244)
!3246 = !DILocation(line: 0, scope: !3176)
!3247 = !DILocation(line: 78, column: 1, scope: !3176)
!3248 = distinct !DISubprogram(name: "hard_locale", scope: !3249, file: !3249, line: 38, type: !3250, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !199, retainedNodes: !3252)
!3249 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3250 = !DISubroutineType(types: !3251)
!3251 = !{!38, !19}
!3252 = !{!3253, !3254, !3255}
!3253 = !DILocalVariable(name: "category", arg: 1, scope: !3248, file: !3249, line: 38, type: !19)
!3254 = !DILocalVariable(name: "hard", scope: !3248, file: !3249, line: 40, type: !38)
!3255 = !DILocalVariable(name: "p", scope: !3248, file: !3249, line: 41, type: !6)
!3256 = !DILocation(line: 38, column: 18, scope: !3248)
!3257 = !DILocation(line: 40, column: 8, scope: !3248)
!3258 = !DILocation(line: 41, column: 19, scope: !3248)
!3259 = !DILocation(line: 41, column: 15, scope: !3248)
!3260 = !DILocation(line: 43, column: 7, scope: !3261)
!3261 = distinct !DILexicalBlock(scope: !3248, file: !3249, line: 43, column: 7)
!3262 = !DILocation(line: 43, column: 7, scope: !3248)
!3263 = !DILocation(line: 47, column: 15, scope: !3264)
!3264 = distinct !DILexicalBlock(scope: !3265, file: !3249, line: 47, column: 15)
!3265 = distinct !DILexicalBlock(scope: !3266, file: !3249, line: 46, column: 9)
!3266 = distinct !DILexicalBlock(scope: !3267, file: !3249, line: 45, column: 11)
!3267 = distinct !DILexicalBlock(scope: !3261, file: !3249, line: 44, column: 5)
!3268 = !DILocation(line: 47, column: 31, scope: !3264)
!3269 = !DILocation(line: 47, column: 36, scope: !3264)
!3270 = !DILocation(line: 47, column: 39, scope: !3264)
!3271 = !DILocation(line: 47, column: 59, scope: !3264)
!3272 = !DILocation(line: 47, column: 15, scope: !3265)
!3273 = !DILocation(line: 48, column: 13, scope: !3264)
!3274 = !DILocation(line: 71, column: 3, scope: !3248)
!3275 = distinct !DISubprogram(name: "locale_charset", scope: !3276, file: !3276, line: 687, type: !3277, isLocal: false, isDefinition: true, scopeLine: 688, flags: DIFlagPrototyped, isOptimized: true, unit: !201, retainedNodes: !3279)
!3276 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3277 = !DISubroutineType(types: !3278)
!3278 = !{!6}
!3279 = !{!3280}
!3280 = !DILocalVariable(name: "codeset", scope: !3275, file: !3276, line: 689, type: !6)
!3281 = !DILocation(line: 696, column: 13, scope: !3275)
!3282 = !DILocation(line: 689, column: 15, scope: !3275)
!3283 = !DILocation(line: 754, column: 15, scope: !3284)
!3284 = distinct !DILexicalBlock(scope: !3275, file: !3276, line: 754, column: 7)
!3285 = !DILocation(line: 754, column: 7, scope: !3275)
!3286 = !DILocation(line: 907, column: 13, scope: !3287)
!3287 = distinct !DILexicalBlock(scope: !3288, file: !3276, line: 907, column: 13)
!3288 = distinct !DILexicalBlock(scope: !3289, file: !3276, line: 897, column: 7)
!3289 = distinct !DILexicalBlock(scope: !3275, file: !3276, line: 856, column: 3)
!3290 = !DILocation(line: 907, column: 24, scope: !3287)
!3291 = !DILocation(line: 907, column: 13, scope: !3288)
!3292 = !DILocation(line: 995, column: 3, scope: !3275)
!3293 = distinct !DISubprogram(name: "rpl_fclose", scope: !3294, file: !3294, line: 58, type: !3295, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !590, retainedNodes: !3331)
!3294 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3295 = !DISubroutineType(types: !3296)
!3296 = !{!19, !3297}
!3297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3298, size: 64)
!3298 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2646, line: 7, baseType: !3299)
!3299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2648, line: 49, size: 1728, elements: !3300)
!3300 = !{!3301, !3302, !3303, !3304, !3305, !3306, !3307, !3308, !3309, !3310, !3311, !3312, !3313, !3314, !3316, !3317, !3318, !3319, !3320, !3321, !3322, !3323, !3324, !3325, !3326, !3327, !3328, !3329, !3330}
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3299, file: !2648, line: 51, baseType: !19, size: 32)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3299, file: !2648, line: 54, baseType: !67, size: 64, offset: 64)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3299, file: !2648, line: 55, baseType: !67, size: 64, offset: 128)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3299, file: !2648, line: 56, baseType: !67, size: 64, offset: 192)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3299, file: !2648, line: 57, baseType: !67, size: 64, offset: 256)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3299, file: !2648, line: 58, baseType: !67, size: 64, offset: 320)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3299, file: !2648, line: 59, baseType: !67, size: 64, offset: 384)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3299, file: !2648, line: 60, baseType: !67, size: 64, offset: 448)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3299, file: !2648, line: 61, baseType: !67, size: 64, offset: 512)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3299, file: !2648, line: 64, baseType: !67, size: 64, offset: 576)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3299, file: !2648, line: 65, baseType: !67, size: 64, offset: 640)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3299, file: !2648, line: 66, baseType: !67, size: 64, offset: 704)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3299, file: !2648, line: 68, baseType: !2663, size: 64, offset: 768)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3299, file: !2648, line: 70, baseType: !3315, size: 64, offset: 832)
!3315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3299, size: 64)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3299, file: !2648, line: 72, baseType: !19, size: 32, offset: 896)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3299, file: !2648, line: 73, baseType: !19, size: 32, offset: 928)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3299, file: !2648, line: 74, baseType: !2670, size: 64, offset: 960)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3299, file: !2648, line: 77, baseType: !111, size: 16, offset: 1024)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3299, file: !2648, line: 78, baseType: !2674, size: 8, offset: 1040)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3299, file: !2648, line: 79, baseType: !2676, size: 8, offset: 1048)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3299, file: !2648, line: 81, baseType: !2678, size: 64, offset: 1088)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3299, file: !2648, line: 89, baseType: !2681, size: 64, offset: 1152)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3299, file: !2648, line: 91, baseType: !2683, size: 64, offset: 1216)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3299, file: !2648, line: 92, baseType: !2686, size: 64, offset: 1280)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3299, file: !2648, line: 93, baseType: !3315, size: 64, offset: 1344)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3299, file: !2648, line: 94, baseType: !9, size: 64, offset: 1408)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3299, file: !2648, line: 95, baseType: !112, size: 64, offset: 1472)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3299, file: !2648, line: 96, baseType: !19, size: 32, offset: 1536)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3299, file: !2648, line: 98, baseType: !2693, size: 160, offset: 1568)
!3331 = !{!3332, !3333, !3334, !3335}
!3332 = !DILocalVariable(name: "fp", arg: 1, scope: !3293, file: !3294, line: 58, type: !3297)
!3333 = !DILocalVariable(name: "saved_errno", scope: !3293, file: !3294, line: 60, type: !19)
!3334 = !DILocalVariable(name: "fd", scope: !3293, file: !3294, line: 61, type: !19)
!3335 = !DILocalVariable(name: "result", scope: !3293, file: !3294, line: 62, type: !19)
!3336 = !DILocation(line: 58, column: 19, scope: !3293)
!3337 = !DILocation(line: 60, column: 7, scope: !3293)
!3338 = !DILocation(line: 62, column: 7, scope: !3293)
!3339 = !DILocation(line: 65, column: 8, scope: !3293)
!3340 = !DILocation(line: 61, column: 7, scope: !3293)
!3341 = !DILocation(line: 66, column: 10, scope: !3342)
!3342 = distinct !DILexicalBlock(scope: !3293, file: !3294, line: 66, column: 7)
!3343 = !DILocation(line: 66, column: 7, scope: !3293)
!3344 = !DILocation(line: 67, column: 12, scope: !3342)
!3345 = !DILocation(line: 67, column: 5, scope: !3342)
!3346 = !DILocation(line: 72, column: 9, scope: !3347)
!3347 = distinct !DILexicalBlock(scope: !3293, file: !3294, line: 72, column: 7)
!3348 = !DILocation(line: 72, column: 23, scope: !3347)
!3349 = !DILocation(line: 72, column: 33, scope: !3347)
!3350 = !DILocation(line: 72, column: 26, scope: !3347)
!3351 = !DILocation(line: 72, column: 59, scope: !3347)
!3352 = !DILocation(line: 73, column: 7, scope: !3347)
!3353 = !DILocation(line: 73, column: 10, scope: !3347)
!3354 = !DILocation(line: 72, column: 7, scope: !3293)
!3355 = !DILocation(line: 100, column: 12, scope: !3293)
!3356 = !DILocation(line: 105, column: 7, scope: !3293)
!3357 = !DILocation(line: 74, column: 19, scope: !3347)
!3358 = !DILocation(line: 105, column: 19, scope: !3359)
!3359 = distinct !DILexicalBlock(scope: !3293, file: !3294, line: 105, column: 7)
!3360 = !DILocation(line: 107, column: 13, scope: !3361)
!3361 = distinct !DILexicalBlock(scope: !3359, file: !3294, line: 106, column: 5)
!3362 = !DILocation(line: 109, column: 5, scope: !3361)
!3363 = !DILocation(line: 0, scope: !3293)
!3364 = !DILocation(line: 112, column: 1, scope: !3293)
!3365 = distinct !DISubprogram(name: "rpl_fflush", scope: !3366, file: !3366, line: 129, type: !3367, isLocal: false, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, unit: !592, retainedNodes: !3403)
!3366 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3367 = !DISubroutineType(types: !3368)
!3368 = !{!19, !3369}
!3369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3370, size: 64)
!3370 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2646, line: 7, baseType: !3371)
!3371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2648, line: 49, size: 1728, elements: !3372)
!3372 = !{!3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3388, !3389, !3390, !3391, !3392, !3393, !3394, !3395, !3396, !3397, !3398, !3399, !3400, !3401, !3402}
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3371, file: !2648, line: 51, baseType: !19, size: 32)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3371, file: !2648, line: 54, baseType: !67, size: 64, offset: 64)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3371, file: !2648, line: 55, baseType: !67, size: 64, offset: 128)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3371, file: !2648, line: 56, baseType: !67, size: 64, offset: 192)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3371, file: !2648, line: 57, baseType: !67, size: 64, offset: 256)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3371, file: !2648, line: 58, baseType: !67, size: 64, offset: 320)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3371, file: !2648, line: 59, baseType: !67, size: 64, offset: 384)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3371, file: !2648, line: 60, baseType: !67, size: 64, offset: 448)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3371, file: !2648, line: 61, baseType: !67, size: 64, offset: 512)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3371, file: !2648, line: 64, baseType: !67, size: 64, offset: 576)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3371, file: !2648, line: 65, baseType: !67, size: 64, offset: 640)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3371, file: !2648, line: 66, baseType: !67, size: 64, offset: 704)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3371, file: !2648, line: 68, baseType: !2663, size: 64, offset: 768)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3371, file: !2648, line: 70, baseType: !3387, size: 64, offset: 832)
!3387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3371, size: 64)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3371, file: !2648, line: 72, baseType: !19, size: 32, offset: 896)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3371, file: !2648, line: 73, baseType: !19, size: 32, offset: 928)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3371, file: !2648, line: 74, baseType: !2670, size: 64, offset: 960)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3371, file: !2648, line: 77, baseType: !111, size: 16, offset: 1024)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3371, file: !2648, line: 78, baseType: !2674, size: 8, offset: 1040)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3371, file: !2648, line: 79, baseType: !2676, size: 8, offset: 1048)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3371, file: !2648, line: 81, baseType: !2678, size: 64, offset: 1088)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3371, file: !2648, line: 89, baseType: !2681, size: 64, offset: 1152)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3371, file: !2648, line: 91, baseType: !2683, size: 64, offset: 1216)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3371, file: !2648, line: 92, baseType: !2686, size: 64, offset: 1280)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3371, file: !2648, line: 93, baseType: !3387, size: 64, offset: 1344)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3371, file: !2648, line: 94, baseType: !9, size: 64, offset: 1408)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3371, file: !2648, line: 95, baseType: !112, size: 64, offset: 1472)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3371, file: !2648, line: 96, baseType: !19, size: 32, offset: 1536)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3371, file: !2648, line: 98, baseType: !2693, size: 160, offset: 1568)
!3403 = !{!3404}
!3404 = !DILocalVariable(name: "stream", arg: 1, scope: !3365, file: !3366, line: 129, type: !3369)
!3405 = !DILocation(line: 129, column: 19, scope: !3365)
!3406 = !DILocation(line: 150, column: 14, scope: !3407)
!3407 = distinct !DILexicalBlock(scope: !3365, file: !3366, line: 150, column: 7)
!3408 = !DILocation(line: 150, column: 22, scope: !3407)
!3409 = !DILocation(line: 150, column: 27, scope: !3407)
!3410 = !DILocation(line: 150, column: 7, scope: !3365)
!3411 = !DILocation(line: 151, column: 12, scope: !3407)
!3412 = !DILocation(line: 151, column: 5, scope: !3407)
!3413 = !DILocalVariable(name: "fp", arg: 1, scope: !3414, file: !3366, line: 41, type: !3369)
!3414 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !3366, file: !3366, line: 41, type: !3415, isLocal: true, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !592, retainedNodes: !3417)
!3415 = !DISubroutineType(types: !3416)
!3416 = !{null, !3369}
!3417 = !{!3413}
!3418 = !DILocation(line: 41, column: 48, scope: !3414, inlinedAt: !3419)
!3419 = distinct !DILocation(line: 156, column: 3, scope: !3365)
!3420 = !DILocation(line: 43, column: 11, scope: !3421, inlinedAt: !3419)
!3421 = distinct !DILexicalBlock(scope: !3414, file: !3366, line: 43, column: 7)
!3422 = !DILocation(line: 43, column: 18, scope: !3421, inlinedAt: !3419)
!3423 = !DILocation(line: 43, column: 7, scope: !3414, inlinedAt: !3419)
!3424 = !DILocation(line: 45, column: 5, scope: !3421, inlinedAt: !3419)
!3425 = !DILocation(line: 158, column: 10, scope: !3365)
!3426 = !DILocation(line: 158, column: 3, scope: !3365)
!3427 = !DILocation(line: 0, scope: !3365)
!3428 = !DILocation(line: 232, column: 1, scope: !3365)
!3429 = distinct !DISubprogram(name: "rpl_fseeko", scope: !3430, file: !3430, line: 28, type: !3431, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !594, retainedNodes: !3468)
!3430 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3431 = !DISubroutineType(types: !3432)
!3432 = !{!19, !3433, !3467, !19}
!3433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3434, size: 64)
!3434 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2646, line: 7, baseType: !3435)
!3435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2648, line: 49, size: 1728, elements: !3436)
!3436 = !{!3437, !3438, !3439, !3440, !3441, !3442, !3443, !3444, !3445, !3446, !3447, !3448, !3449, !3450, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465, !3466}
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3435, file: !2648, line: 51, baseType: !19, size: 32)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3435, file: !2648, line: 54, baseType: !67, size: 64, offset: 64)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3435, file: !2648, line: 55, baseType: !67, size: 64, offset: 128)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3435, file: !2648, line: 56, baseType: !67, size: 64, offset: 192)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3435, file: !2648, line: 57, baseType: !67, size: 64, offset: 256)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3435, file: !2648, line: 58, baseType: !67, size: 64, offset: 320)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3435, file: !2648, line: 59, baseType: !67, size: 64, offset: 384)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3435, file: !2648, line: 60, baseType: !67, size: 64, offset: 448)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3435, file: !2648, line: 61, baseType: !67, size: 64, offset: 512)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3435, file: !2648, line: 64, baseType: !67, size: 64, offset: 576)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3435, file: !2648, line: 65, baseType: !67, size: 64, offset: 640)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3435, file: !2648, line: 66, baseType: !67, size: 64, offset: 704)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3435, file: !2648, line: 68, baseType: !2663, size: 64, offset: 768)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3435, file: !2648, line: 70, baseType: !3451, size: 64, offset: 832)
!3451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3435, size: 64)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3435, file: !2648, line: 72, baseType: !19, size: 32, offset: 896)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3435, file: !2648, line: 73, baseType: !19, size: 32, offset: 928)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3435, file: !2648, line: 74, baseType: !2670, size: 64, offset: 960)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3435, file: !2648, line: 77, baseType: !111, size: 16, offset: 1024)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3435, file: !2648, line: 78, baseType: !2674, size: 8, offset: 1040)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3435, file: !2648, line: 79, baseType: !2676, size: 8, offset: 1048)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3435, file: !2648, line: 81, baseType: !2678, size: 64, offset: 1088)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3435, file: !2648, line: 89, baseType: !2681, size: 64, offset: 1152)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3435, file: !2648, line: 91, baseType: !2683, size: 64, offset: 1216)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3435, file: !2648, line: 92, baseType: !2686, size: 64, offset: 1280)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3435, file: !2648, line: 93, baseType: !3451, size: 64, offset: 1344)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3435, file: !2648, line: 94, baseType: !9, size: 64, offset: 1408)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3435, file: !2648, line: 95, baseType: !112, size: 64, offset: 1472)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3435, file: !2648, line: 96, baseType: !19, size: 32, offset: 1536)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3435, file: !2648, line: 98, baseType: !2693, size: 160, offset: 1568)
!3467 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !823, line: 63, baseType: !2670)
!3468 = !{!3469, !3470, !3471, !3472}
!3469 = !DILocalVariable(name: "fp", arg: 1, scope: !3429, file: !3430, line: 28, type: !3433)
!3470 = !DILocalVariable(name: "offset", arg: 2, scope: !3429, file: !3430, line: 28, type: !3467)
!3471 = !DILocalVariable(name: "whence", arg: 3, scope: !3429, file: !3430, line: 28, type: !19)
!3472 = !DILocalVariable(name: "pos", scope: !3473, file: !3430, line: 117, type: !3467)
!3473 = distinct !DILexicalBlock(scope: !3474, file: !3430, line: 113, column: 5)
!3474 = distinct !DILexicalBlock(scope: !3429, file: !3430, line: 52, column: 7)
!3475 = !DILocation(line: 28, column: 15, scope: !3429)
!3476 = !DILocation(line: 28, column: 25, scope: !3429)
!3477 = !DILocation(line: 28, column: 37, scope: !3429)
!3478 = !DILocation(line: 52, column: 11, scope: !3474)
!3479 = !{!3230, !636, i64 16}
!3480 = !DILocation(line: 52, column: 31, scope: !3474)
!3481 = !{!3230, !636, i64 8}
!3482 = !DILocation(line: 52, column: 24, scope: !3474)
!3483 = !DILocation(line: 53, column: 7, scope: !3474)
!3484 = !DILocation(line: 53, column: 14, scope: !3474)
!3485 = !{!3230, !636, i64 40}
!3486 = !DILocation(line: 53, column: 35, scope: !3474)
!3487 = !{!3230, !636, i64 32}
!3488 = !DILocation(line: 53, column: 28, scope: !3474)
!3489 = !DILocation(line: 54, column: 7, scope: !3474)
!3490 = !DILocation(line: 54, column: 14, scope: !3474)
!3491 = !{!3230, !636, i64 72}
!3492 = !DILocation(line: 54, column: 28, scope: !3474)
!3493 = !DILocation(line: 52, column: 7, scope: !3429)
!3494 = !DILocation(line: 117, column: 26, scope: !3473)
!3495 = !DILocation(line: 117, column: 19, scope: !3473)
!3496 = !DILocation(line: 117, column: 13, scope: !3473)
!3497 = !DILocation(line: 118, column: 15, scope: !3498)
!3498 = distinct !DILexicalBlock(scope: !3473, file: !3430, line: 118, column: 11)
!3499 = !DILocation(line: 118, column: 11, scope: !3473)
!3500 = !DILocation(line: 129, column: 11, scope: !3473)
!3501 = !DILocation(line: 129, column: 18, scope: !3473)
!3502 = !DILocation(line: 130, column: 11, scope: !3473)
!3503 = !DILocation(line: 130, column: 19, scope: !3473)
!3504 = !{!3230, !1970, i64 144}
!3505 = !DILocation(line: 161, column: 7, scope: !3473)
!3506 = !DILocation(line: 163, column: 10, scope: !3429)
!3507 = !DILocation(line: 163, column: 3, scope: !3429)
!3508 = !DILocation(line: 0, scope: !3429)
!3509 = !DILocation(line: 164, column: 1, scope: !3429)
