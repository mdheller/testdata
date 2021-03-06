; ModuleID = 'coreutils-8.30/src/logname.bc'
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
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Usage: %s [OPTION]\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Print the name of the current user.\0A\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.13 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"logname\00", align 1
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
@.str.10 = private unnamed_addr constant [15 x i8] c"FIXME: unknown\00", align 1
@long_options = internal constant [1 x %struct.option] zeroinitializer, align 16, !dbg !0
@optind = external local_unnamed_addr global i32, align 4
@.str.11 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"no login name\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0), align 8, !dbg !24
@.str.28 = private unnamed_addr constant [5 x i8] c"8.30\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !29
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !34
@.str.31 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.32 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.33 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !38
@opterr = external local_unnamed_addr global i32, align 4
@.str.38 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@long_options.39 = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1.40, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.41, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option zeroinitializer], align 16, !dbg !45
@.str.1.40 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.2.41 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !61
@.str.46 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.47 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.48 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.50, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.51, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.52, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.53, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.54, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.55, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.56, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.57, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.58, i32 0, i32 0), i8* null], align 16, !dbg !69
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
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 5) #10, !dbg !639
  %11 = load i8*, i8** @program_name, align 8, !dbg !639, !tbaa !635
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #10, !dbg !639
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 5) #10, !dbg !640
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
  %27 = tail call i32 @strcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* nonnull %25) #14, !dbg !646
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
  %39 = select i1 %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* %37, !dbg !661
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
  %49 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)) #10, !dbg !671
  br label %50, !dbg !673

; <label>:50:                                     ; preds = %34, %44, %47
  %51 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.25, i64 0, i64 0), i32 5) #10, !dbg !674
  %52 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %51, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)) #10, !dbg !674
  %53 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.26, i64 0, i64 0), i32 5) #10, !dbg !675
  %54 = icmp eq i8* %39, getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), !dbg !675
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
  call void @llvm.dbg.value(metadata i32 %0, metadata !683, metadata !DIExpression()), !dbg !686
  call void @llvm.dbg.value(metadata i8** %1, metadata !684, metadata !DIExpression()), !dbg !687
  %3 = load i8*, i8** %1, align 8, !dbg !688, !tbaa !635
  tail call void @set_program_name(i8* %3) #10, !dbg !689
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)) #10, !dbg !690
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !691
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)) #10, !dbg !692
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #10, !dbg !693
  %8 = load i8*, i8** @Version, align 8, !dbg !694, !tbaa !635
  tail call void (i32, i8**, i8*, i8*, i8*, void (i32)*, ...) @parse_long_options(i32 %0, i8** %1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* %8, void (i32)* nonnull @usage, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i8* null) #10, !dbg !695
  %9 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), %struct.option* getelementptr inbounds ([1 x %struct.option], [1 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #10, !dbg !696
  %10 = icmp eq i32 %9, -1, !dbg !698
  br i1 %10, label %12, label %11, !dbg !699

; <label>:11:                                     ; preds = %2
  tail call void @usage(i32 1) #16, !dbg !700
  unreachable, !dbg !700

; <label>:12:                                     ; preds = %2
  %13 = load i32, i32* @optind, align 4, !dbg !701, !tbaa !703
  %14 = icmp slt i32 %13, %0, !dbg !705
  br i1 %14, label %15, label %22, !dbg !706

; <label>:15:                                     ; preds = %12
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i32 5) #10, !dbg !707
  %17 = load i32, i32* @optind, align 4, !dbg !709, !tbaa !703
  %18 = sext i32 %17 to i64, !dbg !710
  %19 = getelementptr inbounds i8*, i8** %1, i64 %18, !dbg !710
  %20 = load i8*, i8** %19, align 8, !dbg !710, !tbaa !635
  %21 = tail call i8* @quote(i8* %20) #10, !dbg !711
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %16, i8* %21) #10, !dbg !712
  tail call void @usage(i32 1) #16, !dbg !713
  unreachable, !dbg !713

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @getlogin() #10, !dbg !714
  call void @llvm.dbg.value(metadata i8* %23, metadata !685, metadata !DIExpression()), !dbg !715
  %24 = icmp eq i8* %23, null, !dbg !716
  br i1 %24, label %25, label %27, !dbg !718

; <label>:25:                                     ; preds = %22
  %26 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i32 5) #10, !dbg !719
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %26) #10, !dbg !719
  unreachable, !dbg !719

; <label>:27:                                     ; preds = %22
  %28 = tail call i32 @puts(i8* nonnull %23), !dbg !720
  ret i32 0, !dbg !721
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

declare i8* @getlogin() local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_file_name(i8*) local_unnamed_addr #7 !dbg !722 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !724, metadata !DIExpression()), !dbg !725
  store i8* %0, i8** @file_name, align 8, !dbg !726, !tbaa !635
  ret void, !dbg !727
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #7 !dbg !728 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i1 %0, metadata !732, metadata !DIExpression()), !dbg !733
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !734, !tbaa !735
  ret void, !dbg !737
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #7 !dbg !738 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !745, !tbaa !635
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #10, !dbg !746
  %3 = icmp eq i32 %2, 0, !dbg !747
  br i1 %3, label %22, label %4, !dbg !748

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !749, !tbaa !735, !range !750
  %6 = icmp eq i8 %5, 0, !dbg !749
  br i1 %6, label %11, label %7, !dbg !751

; <label>:7:                                      ; preds = %4
  %8 = tail call i32* @__errno_location() #17, !dbg !752
  %9 = load i32, i32* %8, align 4, !dbg !752, !tbaa !703
  %10 = icmp eq i32 %9, 32, !dbg !753
  br i1 %10, label %22, label %11, !dbg !754

; <label>:11:                                     ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i64 0, i64 0), i32 5) #10, !dbg !755
  call void @llvm.dbg.value(metadata i8* %12, metadata !742, metadata !DIExpression()), !dbg !756
  %13 = load i8*, i8** @file_name, align 8, !dbg !757, !tbaa !635
  %14 = icmp eq i8* %13, null, !dbg !757
  %15 = tail call i32* @__errno_location() #17, !dbg !759
  %16 = load i32, i32* %15, align 4, !dbg !759, !tbaa !703
  br i1 %14, label %19, label %17, !dbg !760

; <label>:17:                                     ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #10, !dbg !761
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.32, i64 0, i64 0), i8* %18, i8* %12) #10, !dbg !762
  br label %20, !dbg !762

; <label>:19:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.33, i64 0, i64 0), i8* %12) #10, !dbg !763
  br label %20

; <label>:20:                                     ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !764, !tbaa !703
  tail call void @_exit(i32 %21) #15, !dbg !765
  unreachable, !dbg !765

; <label>:22:                                     ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !766, !tbaa !635
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #10, !dbg !768
  %25 = icmp eq i32 %24, 0, !dbg !769
  br i1 %25, label %28, label %26, !dbg !770

; <label>:26:                                     ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !771, !tbaa !703
  tail call void @_exit(i32 %27) #15, !dbg !772
  unreachable, !dbg !772

; <label>:28:                                     ; preds = %22
  ret void, !dbg !773
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @parse_long_options(i32, i8**, i8*, i8*, i8*, void (i32)* nocapture, ...) local_unnamed_addr #7 !dbg !774 {
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !779, metadata !DIExpression()), !dbg !804
  call void @llvm.dbg.value(metadata i8** %1, metadata !780, metadata !DIExpression()), !dbg !805
  call void @llvm.dbg.value(metadata i8* %2, metadata !781, metadata !DIExpression()), !dbg !806
  call void @llvm.dbg.value(metadata i8* %3, metadata !782, metadata !DIExpression()), !dbg !807
  call void @llvm.dbg.value(metadata i8* %4, metadata !783, metadata !DIExpression()), !dbg !808
  call void @llvm.dbg.value(metadata void (i32)* %5, metadata !784, metadata !DIExpression()), !dbg !809
  %8 = load i32, i32* @opterr, align 4, !dbg !810, !tbaa !703
  call void @llvm.dbg.value(metadata i32 %8, metadata !786, metadata !DIExpression()), !dbg !811
  store i32 0, i32* @opterr, align 4, !dbg !812, !tbaa !703
  %9 = icmp eq i32 %0, 2, !dbg !813
  br i1 %9, label %10, label %17, !dbg !814

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 @getopt_long(i32 2, i8** %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0), %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options.39, i64 0, i64 0), i32* null) #10, !dbg !815
  call void @llvm.dbg.value(metadata i32 %11, metadata !785, metadata !DIExpression()), !dbg !816
  switch i32 %11, label %17 [
    i32 118, label %13
    i32 104, label %12
  ], !dbg !817

; <label>:12:                                     ; preds = %10
  tail call void %5(i32 0) #10, !dbg !818
  br label %17, !dbg !819

; <label>:13:                                     ; preds = %10
  %14 = bitcast [1 x %struct.__va_list_tag]* %7 to i8*, !dbg !820
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %14) #10, !dbg !820
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %7, metadata !787, metadata !DIExpression()), !dbg !821
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0, !dbg !822
  call void @llvm.va_start(i8* nonnull %14), !dbg !822
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !823, !tbaa !635
  call void @version_etc_va(%struct._IO_FILE* %16, i8* %2, i8* %3, i8* %4, %struct.__va_list_tag* nonnull %15) #10, !dbg !824
  call void @exit(i32 0) #15, !dbg !825
  unreachable, !dbg !825

; <label>:17:                                     ; preds = %10, %12, %6
  store i32 %8, i32* @opterr, align 4, !dbg !826, !tbaa !703
  store i32 0, i32* @optind, align 4, !dbg !827, !tbaa !703
  ret void, !dbg !828
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8*) local_unnamed_addr #7 !dbg !829 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !831, metadata !DIExpression()), !dbg !834
  %2 = icmp eq i8* %0, null, !dbg !835
  br i1 %2, label %3, label %6, !dbg !837

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !838, !tbaa !635
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.46, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !840
  tail call void @abort() #15, !dbg !841
  unreachable, !dbg !841

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !842
  call void @llvm.dbg.value(metadata i8* %7, metadata !832, metadata !DIExpression()), !dbg !843
  %8 = icmp eq i8* %7, null, !dbg !844
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !845
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !846
  call void @llvm.dbg.value(metadata i8* %10, metadata !833, metadata !DIExpression()), !dbg !847
  %11 = ptrtoint i8* %10 to i64, !dbg !848
  %12 = ptrtoint i8* %0 to i64, !dbg !848
  %13 = sub i64 %11, %12, !dbg !848
  %14 = icmp sgt i64 %13, 6, !dbg !850
  br i1 %14, label %15, label %24, !dbg !851

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !852
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.47, i64 0, i64 0), i64 7) #14, !dbg !853
  %18 = icmp eq i32 %17, 0, !dbg !854
  br i1 %18, label %19, label %24, !dbg !855

; <label>:19:                                     ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !831, metadata !DIExpression()), !dbg !834
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.48, i64 0, i64 0), i64 3) #14, !dbg !856
  %21 = icmp eq i32 %20, 0, !dbg !859
  br i1 %21, label %22, label %24, !dbg !860

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !861
  call void @llvm.dbg.value(metadata i8* %23, metadata !831, metadata !DIExpression()), !dbg !834
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !863, !tbaa !635
  br label %24, !dbg !864

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !831, metadata !DIExpression()), !dbg !834
  store i8* %25, i8** @program_name, align 8, !dbg !865, !tbaa !635
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !866, !tbaa !635
  ret void, !dbg !867
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #10

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #7 !dbg !868 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !873, metadata !DIExpression()), !dbg !876
  %2 = tail call i32* @__errno_location() #17, !dbg !877
  %3 = load i32, i32* %2, align 4, !dbg !877, !tbaa !703
  call void @llvm.dbg.value(metadata i32 %3, metadata !874, metadata !DIExpression()), !dbg !878
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !879
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !879
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !879
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #10, !dbg !880
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !880
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !875, metadata !DIExpression()), !dbg !881
  store i32 %3, i32* %2, align 4, !dbg !882, !tbaa !703
  ret %struct.quoting_options* %8, !dbg !883
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !884 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !890, metadata !DIExpression()), !dbg !891
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !892
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !892
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !893
  %5 = load i32, i32* %4, align 8, !dbg !893, !tbaa !894
  ret i32 %5, !dbg !896
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !897 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !901, metadata !DIExpression()), !dbg !903
  call void @llvm.dbg.value(metadata i32 %1, metadata !902, metadata !DIExpression()), !dbg !904
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !905
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !905
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !906
  store i32 %1, i32* %5, align 8, !dbg !907, !tbaa !894
  ret void, !dbg !908
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #7 !dbg !909 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !913, metadata !DIExpression()), !dbg !922
  call void @llvm.dbg.value(metadata i8 %1, metadata !914, metadata !DIExpression()), !dbg !923
  call void @llvm.dbg.value(metadata i32 %2, metadata !915, metadata !DIExpression()), !dbg !924
  call void @llvm.dbg.value(metadata i8 %1, metadata !916, metadata !DIExpression()), !dbg !925
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !926
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !926
  %6 = lshr i8 %1, 5, !dbg !927
  %7 = zext i8 %6 to i64, !dbg !927
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !928
  call void @llvm.dbg.value(metadata i32* %8, metadata !918, metadata !DIExpression()), !dbg !929
  %9 = and i8 %1, 31, !dbg !930
  %10 = zext i8 %9 to i32, !dbg !930
  call void @llvm.dbg.value(metadata i32 %10, metadata !920, metadata !DIExpression()), !dbg !931
  %11 = load i32, i32* %8, align 4, !dbg !932, !tbaa !703
  %12 = lshr i32 %11, %10, !dbg !933
  %13 = and i32 %12, 1, !dbg !934
  call void @llvm.dbg.value(metadata i32 %13, metadata !921, metadata !DIExpression()), !dbg !935
  %14 = and i32 %2, 1, !dbg !936
  %15 = xor i32 %13, %14, !dbg !937
  %16 = shl i32 %15, %10, !dbg !938
  %17 = xor i32 %16, %11, !dbg !939
  store i32 %17, i32* %8, align 4, !dbg !939, !tbaa !703
  ret i32 %13, !dbg !940
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !941 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !945, metadata !DIExpression()), !dbg !948
  call void @llvm.dbg.value(metadata i32 %1, metadata !946, metadata !DIExpression()), !dbg !949
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !950
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !952
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !945, metadata !DIExpression()), !dbg !948
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !953
  %6 = load i32, i32* %5, align 4, !dbg !953, !tbaa !954
  call void @llvm.dbg.value(metadata i32 %6, metadata !947, metadata !DIExpression()), !dbg !955
  store i32 %1, i32* %5, align 4, !dbg !956, !tbaa !954
  ret i32 %6, !dbg !957
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #7 !dbg !958 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !962, metadata !DIExpression()), !dbg !965
  call void @llvm.dbg.value(metadata i8* %1, metadata !963, metadata !DIExpression()), !dbg !966
  call void @llvm.dbg.value(metadata i8* %2, metadata !964, metadata !DIExpression()), !dbg !967
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !968
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !970
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !962, metadata !DIExpression()), !dbg !965
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !971
  store i32 10, i32* %6, align 8, !dbg !972, !tbaa !894
  %7 = icmp ne i8* %1, null, !dbg !973
  %8 = icmp ne i8* %2, null, !dbg !975
  %9 = and i1 %7, %8, !dbg !976
  br i1 %9, label %11, label %10, !dbg !976

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !977
  unreachable, !dbg !977

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !978
  store i8* %1, i8** %12, align 8, !dbg !979, !tbaa !980
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !981
  store i8* %2, i8** %13, align 8, !dbg !982, !tbaa !983
  ret void, !dbg !984
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #7 !dbg !985 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !989, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata i64 %1, metadata !990, metadata !DIExpression()), !dbg !998
  call void @llvm.dbg.value(metadata i8* %2, metadata !991, metadata !DIExpression()), !dbg !999
  call void @llvm.dbg.value(metadata i64 %3, metadata !992, metadata !DIExpression()), !dbg !1000
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !993, metadata !DIExpression()), !dbg !1001
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1002
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1002
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !994, metadata !DIExpression()), !dbg !1003
  %8 = tail call i32* @__errno_location() #17, !dbg !1004
  %9 = load i32, i32* %8, align 4, !dbg !1004, !tbaa !703
  call void @llvm.dbg.value(metadata i32 %9, metadata !995, metadata !DIExpression()), !dbg !1005
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1006
  %11 = load i32, i32* %10, align 8, !dbg !1006, !tbaa !894
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1007
  %13 = load i32, i32* %12, align 4, !dbg !1007, !tbaa !954
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1008
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1009
  %16 = load i8*, i8** %15, align 8, !dbg !1009, !tbaa !980
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1010
  %18 = load i8*, i8** %17, align 8, !dbg !1010, !tbaa !983
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1011
  call void @llvm.dbg.value(metadata i64 %19, metadata !996, metadata !DIExpression()), !dbg !1012
  store i32 %9, i32* %8, align 4, !dbg !1013, !tbaa !703
  ret i64 %19, !dbg !1014
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #7 !dbg !1015 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1021, metadata !DIExpression()), !dbg !1085
  call void @llvm.dbg.value(metadata i64 %1, metadata !1022, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i8* %2, metadata !1023, metadata !DIExpression()), !dbg !1087
  call void @llvm.dbg.value(metadata i64 %3, metadata !1024, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i32 %4, metadata !1025, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata i32 %5, metadata !1026, metadata !DIExpression()), !dbg !1090
  call void @llvm.dbg.value(metadata i32* %6, metadata !1027, metadata !DIExpression()), !dbg !1091
  call void @llvm.dbg.value(metadata i8* %7, metadata !1028, metadata !DIExpression()), !dbg !1092
  call void @llvm.dbg.value(metadata i8* %8, metadata !1029, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata i64 0, metadata !1031, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 0, metadata !1032, metadata !DIExpression()), !dbg !1095
  call void @llvm.dbg.value(metadata i8* null, metadata !1033, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 0, metadata !1034, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.value(metadata i8 0, metadata !1035, metadata !DIExpression()), !dbg !1098
  %13 = tail call i64 @__ctype_get_mb_cur_max() #10, !dbg !1099
  %14 = icmp eq i64 %13, 1, !dbg !1100
  %15 = lshr i32 %5, 1, !dbg !1101
  %16 = trunc i32 %15 to i8, !dbg !1101
  %17 = and i8 %16, 1, !dbg !1101
  call void @llvm.dbg.value(metadata i8 %17, metadata !1037, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i8 0, metadata !1038, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i8 0, metadata !1039, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i8 1, metadata !1040, metadata !DIExpression()), !dbg !1104
  %18 = icmp ne i32* %6, null
  %19 = bitcast i64* %10 to i8*
  %20 = icmp eq i32* %6, null
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 4
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr inbounds i8, i8* %2, i64 1
  %26 = bitcast i32* %12 to i8*
  br label %27, !dbg !1105

; <label>:27:                                     ; preds = %634, %9
  %28 = phi i32 [ %4, %9 ], [ %94, %634 ]
  %29 = phi i8* [ %7, %9 ], [ %95, %634 ]
  %30 = phi i8* [ %8, %9 ], [ %96, %634 ]
  %31 = phi i64 [ 0, %9 ], [ %124, %634 ], !dbg !1095
  %32 = phi i8* [ null, %9 ], [ %98, %634 ], !dbg !1096
  %33 = phi i64 [ 0, %9 ], [ %99, %634 ], !dbg !1097
  %34 = phi i8 [ 0, %9 ], [ %100, %634 ], !dbg !1098
  %35 = phi i64 [ %3, %9 ], [ %618, %634 ]
  %36 = phi i8 [ %17, %9 ], [ %101, %634 ], !dbg !1106
  %37 = phi i8 [ 0, %9 ], [ %126, %634 ], !dbg !1102
  %38 = phi i8 [ 0, %9 ], [ %127, %634 ], !dbg !1103
  %39 = phi i8 [ 1, %9 ], [ %128, %634 ], !dbg !1104
  %40 = phi i64 [ %1, %9 ], [ %124, %634 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !1022, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i8 %39, metadata !1040, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i8 %38, metadata !1039, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i8 %37, metadata !1038, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i8 %36, metadata !1037, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i64 %35, metadata !1024, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i8 %34, metadata !1035, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i64 %33, metadata !1034, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.value(metadata i8* %32, metadata !1033, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %31, metadata !1032, metadata !DIExpression()), !dbg !1095
  call void @llvm.dbg.value(metadata i64 0, metadata !1031, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i8* %30, metadata !1029, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata i8* %29, metadata !1028, metadata !DIExpression()), !dbg !1092
  call void @llvm.dbg.value(metadata i32 %28, metadata !1025, metadata !DIExpression()), !dbg !1089
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
  ], !dbg !1108

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, metadata !1025, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata i8 1, metadata !1037, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i8 %36, metadata !1037, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i32 5, metadata !1025, metadata !DIExpression()), !dbg !1089
  br label %93, !dbg !1109

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, metadata !1037, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i32 5, metadata !1025, metadata !DIExpression()), !dbg !1089
  %43 = and i8 %36, 1, !dbg !1110
  %44 = icmp eq i8 %43, 0, !dbg !1110
  br i1 %44, label %45, label %93, !dbg !1109

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1112
  br i1 %46, label %93, label %47, !dbg !1115

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1112, !tbaa !1116
  br label %93, !dbg !1112

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.59, i64 0, i64 0), i32 %28), !dbg !1117
  call void @llvm.dbg.value(metadata i8* %49, metadata !1028, metadata !DIExpression()), !dbg !1092
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.60, i64 0, i64 0), i32 %28), !dbg !1121
  call void @llvm.dbg.value(metadata i8* %50, metadata !1029, metadata !DIExpression()), !dbg !1093
  br label %51, !dbg !1122

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, metadata !1029, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata i8* %52, metadata !1028, metadata !DIExpression()), !dbg !1092
  %54 = and i8 %36, 1, !dbg !1123
  %55 = icmp eq i8 %54, 0, !dbg !1123
  br i1 %55, label %56, label %71, !dbg !1125

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, metadata !1033, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 0, metadata !1031, metadata !DIExpression()), !dbg !1094
  %57 = load i8, i8* %52, align 1, !dbg !1126, !tbaa !1116
  %58 = icmp eq i8 %57, 0, !dbg !1129
  br i1 %58, label %71, label %59, !dbg !1129

; <label>:59:                                     ; preds = %56, %66
  %60 = phi i8 [ %69, %66 ], [ %57, %56 ]
  %61 = phi i8* [ %68, %66 ], [ %52, %56 ]
  %62 = phi i64 [ %67, %66 ], [ 0, %56 ]
  call void @llvm.dbg.value(metadata i8* %61, metadata !1033, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %62, metadata !1031, metadata !DIExpression()), !dbg !1094
  %63 = icmp ult i64 %62, %40, !dbg !1130
  br i1 %63, label %64, label %66, !dbg !1133

; <label>:64:                                     ; preds = %59
  %65 = getelementptr inbounds i8, i8* %0, i64 %62, !dbg !1130
  store i8 %60, i8* %65, align 1, !dbg !1130, !tbaa !1116
  br label %66, !dbg !1130

; <label>:66:                                     ; preds = %64, %59
  %67 = add i64 %62, 1, !dbg !1133
  %68 = getelementptr inbounds i8, i8* %61, i64 1, !dbg !1134
  call void @llvm.dbg.value(metadata i8* %68, metadata !1033, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %67, metadata !1031, metadata !DIExpression()), !dbg !1094
  %69 = load i8, i8* %68, align 1, !dbg !1126, !tbaa !1116
  %70 = icmp eq i8 %69, 0, !dbg !1129
  br i1 %70, label %71, label %59, !dbg !1129, !llvm.loop !1135

; <label>:71:                                     ; preds = %66, %56, %51
  %72 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %67, %66 ], !dbg !1094
  call void @llvm.dbg.value(metadata i64 %72, metadata !1031, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i8 1, metadata !1035, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i8* %53, metadata !1033, metadata !DIExpression()), !dbg !1096
  %73 = call i64 @strlen(i8* %53) #14, !dbg !1137
  call void @llvm.dbg.value(metadata i64 %73, metadata !1034, metadata !DIExpression()), !dbg !1097
  br label %93, !dbg !1138

; <label>:74:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !1035, metadata !DIExpression()), !dbg !1098
  br label %75, !dbg !1139

; <label>:75:                                     ; preds = %27, %74
  %76 = phi i8 [ %34, %27 ], [ 1, %74 ], !dbg !1106
  call void @llvm.dbg.value(metadata i8 %76, metadata !1035, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i8 1, metadata !1037, metadata !DIExpression()), !dbg !1101
  br label %77, !dbg !1140

; <label>:77:                                     ; preds = %27, %75
  %78 = phi i8 [ %34, %27 ], [ %76, %75 ], !dbg !1098
  %79 = phi i8 [ %36, %27 ], [ 1, %75 ], !dbg !1106
  call void @llvm.dbg.value(metadata i8 %79, metadata !1037, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i8 %78, metadata !1035, metadata !DIExpression()), !dbg !1098
  %80 = and i8 %79, 1, !dbg !1141
  %81 = icmp eq i8 %80, 0, !dbg !1141
  %82 = select i1 %81, i8 1, i8 %78, !dbg !1143
  br label %83, !dbg !1143

; <label>:83:                                     ; preds = %77, %27
  %84 = phi i8 [ %34, %27 ], [ %82, %77 ], !dbg !1144
  %85 = phi i8 [ %36, %27 ], [ %79, %77 ], !dbg !1101
  call void @llvm.dbg.value(metadata i8 %85, metadata !1037, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i8 %84, metadata !1035, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i32 2, metadata !1025, metadata !DIExpression()), !dbg !1089
  %86 = and i8 %85, 1, !dbg !1145
  %87 = icmp eq i8 %86, 0, !dbg !1145
  br i1 %87, label %88, label %93, !dbg !1147

; <label>:88:                                     ; preds = %83
  %89 = icmp eq i64 %40, 0, !dbg !1148
  br i1 %89, label %93, label %90, !dbg !1151

; <label>:90:                                     ; preds = %88
  store i8 39, i8* %0, align 1, !dbg !1148, !tbaa !1116
  br label %93, !dbg !1148

; <label>:91:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !1037, metadata !DIExpression()), !dbg !1101
  br label %93, !dbg !1152

; <label>:92:                                     ; preds = %27
  call void @abort() #15, !dbg !1153
  unreachable, !dbg !1153

; <label>:93:                                     ; preds = %41, %83, %88, %90, %27, %42, %45, %47, %91, %71
  %94 = phi i32 [ 0, %91 ], [ %28, %71 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ %28, %27 ], [ 2, %90 ], [ 2, %88 ], [ 2, %83 ], [ 5, %41 ]
  %95 = phi i8* [ %29, %91 ], [ %52, %71 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %90 ], [ %29, %88 ], [ %29, %83 ], [ %29, %41 ]
  %96 = phi i8* [ %30, %91 ], [ %53, %71 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %90 ], [ %30, %88 ], [ %30, %83 ], [ %30, %41 ]
  %97 = phi i64 [ 0, %91 ], [ %72, %71 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %90 ], [ 1, %88 ], [ 0, %83 ], [ 0, %41 ], !dbg !1094
  %98 = phi i8* [ %32, %91 ], [ %53, %71 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.61, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.61, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.61, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.60, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.60, i64 0, i64 0), %88 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.60, i64 0, i64 0), %83 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.61, i64 0, i64 0), %41 ], !dbg !1106
  %99 = phi i64 [ %33, %91 ], [ %73, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %90 ], [ 1, %88 ], [ 1, %83 ], [ 1, %41 ], !dbg !1106
  %100 = phi i8 [ %34, %91 ], [ 1, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %84, %90 ], [ %84, %88 ], [ %84, %83 ], [ 1, %41 ], !dbg !1106
  %101 = phi i8 [ 0, %91 ], [ %36, %71 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %85, %90 ], [ %85, %88 ], [ %85, %83 ], [ 1, %41 ], !dbg !1154
  call void @llvm.dbg.value(metadata i8 %101, metadata !1037, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i8 %100, metadata !1035, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i64 %99, metadata !1034, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.value(metadata i8* %98, metadata !1033, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %97, metadata !1031, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i8* %96, metadata !1029, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata i8* %95, metadata !1028, metadata !DIExpression()), !dbg !1092
  call void @llvm.dbg.value(metadata i32 %94, metadata !1025, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata i64 0, metadata !1030, metadata !DIExpression()), !dbg !1155
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
  br label %121, !dbg !1156

; <label>:121:                                    ; preds = %607, %93
  %122 = phi i64 [ 0, %93 ], [ %616, %607 ], !dbg !1157
  %123 = phi i64 [ %97, %93 ], [ %609, %607 ], !dbg !1094
  %124 = phi i64 [ %31, %93 ], [ %610, %607 ], !dbg !1095
  %125 = phi i64 [ %35, %93 ], [ %611, %607 ]
  %126 = phi i8 [ %37, %93 ], [ %612, %607 ], !dbg !1102
  %127 = phi i8 [ %38, %93 ], [ %613, %607 ], !dbg !1103
  %128 = phi i8 [ %39, %93 ], [ %614, %607 ], !dbg !1104
  %129 = phi i64 [ %40, %93 ], [ %615, %607 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !1022, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i8 %128, metadata !1040, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i8 %127, metadata !1039, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i8 %126, metadata !1038, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i64 %125, metadata !1024, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i64 %124, metadata !1032, metadata !DIExpression()), !dbg !1095
  call void @llvm.dbg.value(metadata i64 %123, metadata !1031, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %122, metadata !1030, metadata !DIExpression()), !dbg !1155
  %130 = icmp eq i64 %125, -1, !dbg !1158
  br i1 %130, label %131, label %135, !dbg !1159

; <label>:131:                                    ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1160
  %133 = load i8, i8* %132, align 1, !dbg !1160, !tbaa !1116
  %134 = icmp eq i8 %133, 0, !dbg !1161
  br i1 %134, label %617, label %137, !dbg !1162

; <label>:135:                                    ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !1163
  br i1 %136, label %617, label %137, !dbg !1162

; <label>:137:                                    ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !1046, metadata !DIExpression()), !dbg !1164
  call void @llvm.dbg.value(metadata i8 0, metadata !1047, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i8 0, metadata !1048, metadata !DIExpression()), !dbg !1166
  br i1 %107, label %138, label %153, !dbg !1167

; <label>:138:                                    ; preds = %137
  %139 = add i64 %122, %99, !dbg !1169
  %140 = and i1 %108, %130, !dbg !1170
  br i1 %140, label %141, label %143, !dbg !1170

; <label>:141:                                    ; preds = %138
  %142 = call i64 @strlen(i8* %2) #14, !dbg !1171
  call void @llvm.dbg.value(metadata i64 %142, metadata !1024, metadata !DIExpression()), !dbg !1088
  br label %143, !dbg !1172

; <label>:143:                                    ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ]
  call void @llvm.dbg.value(metadata i64 %144, metadata !1024, metadata !DIExpression()), !dbg !1088
  %145 = icmp ugt i64 %139, %144, !dbg !1173
  br i1 %145, label %153, label %146, !dbg !1174

; <label>:146:                                    ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1175
  %148 = call i32 @memcmp(i8* %147, i8* %98, i64 %99) #14, !dbg !1176
  %149 = icmp ne i32 %148, 0, !dbg !1177
  %150 = or i1 %149, %110, !dbg !1178
  %151 = xor i1 %149, true, !dbg !1178
  %152 = zext i1 %151 to i8, !dbg !1178
  br i1 %150, label %153, label %661, !dbg !1178

; <label>:153:                                    ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !1179
  call void @llvm.dbg.value(metadata i8 %155, metadata !1046, metadata !DIExpression()), !dbg !1164
  call void @llvm.dbg.value(metadata i64 %154, metadata !1024, metadata !DIExpression()), !dbg !1088
  %156 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1180
  %157 = load i8, i8* %156, align 1, !dbg !1180, !tbaa !1116
  call void @llvm.dbg.value(metadata i8 %157, metadata !1041, metadata !DIExpression()), !dbg !1181
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
  ], !dbg !1182

; <label>:158:                                    ; preds = %153
  br i1 %103, label %159, label %207, !dbg !1183

; <label>:159:                                    ; preds = %158
  br i1 %110, label %160, label %661, !dbg !1184

; <label>:160:                                    ; preds = %159
  call void @llvm.dbg.value(metadata i8 1, metadata !1047, metadata !DIExpression()), !dbg !1165
  %161 = and i8 %126, 1, !dbg !1188
  %162 = icmp eq i8 %161, 0, !dbg !1188
  %163 = and i1 %114, %162, !dbg !1188
  br i1 %163, label %164, label %180, !dbg !1188

; <label>:164:                                    ; preds = %160
  %165 = icmp ult i64 %123, %129, !dbg !1190
  br i1 %165, label %166, label %168, !dbg !1194

; <label>:166:                                    ; preds = %164
  %167 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1190
  store i8 39, i8* %167, align 1, !dbg !1190, !tbaa !1116
  br label %168, !dbg !1190

; <label>:168:                                    ; preds = %166, %164
  %169 = add i64 %123, 1, !dbg !1194
  call void @llvm.dbg.value(metadata i64 %169, metadata !1031, metadata !DIExpression()), !dbg !1094
  %170 = icmp ult i64 %169, %129, !dbg !1195
  br i1 %170, label %171, label %173, !dbg !1198

; <label>:171:                                    ; preds = %168
  %172 = getelementptr inbounds i8, i8* %0, i64 %169, !dbg !1195
  store i8 36, i8* %172, align 1, !dbg !1195, !tbaa !1116
  br label %173, !dbg !1195

; <label>:173:                                    ; preds = %171, %168
  %174 = add i64 %123, 2, !dbg !1198
  call void @llvm.dbg.value(metadata i64 %174, metadata !1031, metadata !DIExpression()), !dbg !1094
  %175 = icmp ult i64 %174, %129, !dbg !1199
  br i1 %175, label %176, label %178, !dbg !1202

; <label>:176:                                    ; preds = %173
  %177 = getelementptr inbounds i8, i8* %0, i64 %174, !dbg !1199
  store i8 39, i8* %177, align 1, !dbg !1199, !tbaa !1116
  br label %178, !dbg !1199

; <label>:178:                                    ; preds = %176, %173
  %179 = add i64 %123, 3, !dbg !1202
  call void @llvm.dbg.value(metadata i64 %179, metadata !1031, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i8 1, metadata !1038, metadata !DIExpression()), !dbg !1102
  br label %180, !dbg !1203

; <label>:180:                                    ; preds = %160, %178
  %181 = phi i64 [ %179, %178 ], [ %123, %160 ], !dbg !1154
  %182 = phi i8 [ 1, %178 ], [ %126, %160 ], !dbg !1154
  call void @llvm.dbg.value(metadata i8 %182, metadata !1038, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i64 %181, metadata !1031, metadata !DIExpression()), !dbg !1094
  %183 = icmp ult i64 %181, %129, !dbg !1204
  br i1 %183, label %184, label %186, !dbg !1207

; <label>:184:                                    ; preds = %180
  %185 = getelementptr inbounds i8, i8* %0, i64 %181, !dbg !1204
  store i8 92, i8* %185, align 1, !dbg !1204, !tbaa !1116
  br label %186, !dbg !1204

; <label>:186:                                    ; preds = %184, %180
  %187 = add i64 %181, 1, !dbg !1207
  call void @llvm.dbg.value(metadata i64 %187, metadata !1031, metadata !DIExpression()), !dbg !1094
  br i1 %104, label %188, label %478, !dbg !1208

; <label>:188:                                    ; preds = %186
  %189 = add i64 %122, 1, !dbg !1210
  %190 = icmp ult i64 %189, %154, !dbg !1211
  br i1 %190, label %191, label %467, !dbg !1212

; <label>:191:                                    ; preds = %188
  %192 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !1213
  %193 = load i8, i8* %192, align 1, !dbg !1213, !tbaa !1116
  %194 = add i8 %193, -48, !dbg !1214
  %195 = icmp ult i8 %194, 10, !dbg !1214
  br i1 %195, label %196, label %467, !dbg !1214

; <label>:196:                                    ; preds = %191
  %197 = icmp ult i64 %187, %129, !dbg !1215
  br i1 %197, label %198, label %200, !dbg !1219

; <label>:198:                                    ; preds = %196
  %199 = getelementptr inbounds i8, i8* %0, i64 %187, !dbg !1215
  store i8 48, i8* %199, align 1, !dbg !1215, !tbaa !1116
  br label %200, !dbg !1215

; <label>:200:                                    ; preds = %198, %196
  %201 = add i64 %181, 2, !dbg !1219
  call void @llvm.dbg.value(metadata i64 %201, metadata !1031, metadata !DIExpression()), !dbg !1094
  %202 = icmp ult i64 %201, %129, !dbg !1220
  br i1 %202, label %203, label %205, !dbg !1223

; <label>:203:                                    ; preds = %200
  %204 = getelementptr inbounds i8, i8* %0, i64 %201, !dbg !1220
  store i8 48, i8* %204, align 1, !dbg !1220, !tbaa !1116
  br label %205, !dbg !1220

; <label>:205:                                    ; preds = %203, %200
  %206 = add i64 %181, 3, !dbg !1223
  call void @llvm.dbg.value(metadata i64 %206, metadata !1031, metadata !DIExpression()), !dbg !1094
  br label %467, !dbg !1224

; <label>:207:                                    ; preds = %158
  br i1 %22, label %478, label %607, !dbg !1225

; <label>:208:                                    ; preds = %153
  switch i32 %94, label %467 [
    i32 2, label %209
    i32 5, label %210
  ], !dbg !1226

; <label>:209:                                    ; preds = %208
  br i1 %110, label %467, label %661, !dbg !1227

; <label>:210:                                    ; preds = %208
  br i1 %24, label %467, label %211, !dbg !1229

; <label>:211:                                    ; preds = %210
  %212 = add i64 %122, 2, !dbg !1231
  %213 = icmp ult i64 %212, %154, !dbg !1232
  br i1 %213, label %214, label %467, !dbg !1233

; <label>:214:                                    ; preds = %211
  %215 = add i64 %122, 1, !dbg !1234
  %216 = getelementptr inbounds i8, i8* %2, i64 %215, !dbg !1235
  %217 = load i8, i8* %216, align 1, !dbg !1235, !tbaa !1116
  %218 = icmp eq i8 %217, 63, !dbg !1236
  br i1 %218, label %219, label %467, !dbg !1237

; <label>:219:                                    ; preds = %214
  %220 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !1238
  %221 = load i8, i8* %220, align 1, !dbg !1238, !tbaa !1116
  %222 = sext i8 %221 to i32, !dbg !1238
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
  ], !dbg !1239

; <label>:223:                                    ; preds = %219, %219, %219, %219, %219, %219, %219, %219, %219
  br i1 %110, label %224, label %661, !dbg !1240

; <label>:224:                                    ; preds = %223
  call void @llvm.dbg.value(metadata i8 %221, metadata !1041, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.value(metadata i64 %212, metadata !1030, metadata !DIExpression()), !dbg !1155
  %225 = icmp ult i64 %123, %129, !dbg !1242
  br i1 %225, label %226, label %228, !dbg !1245

; <label>:226:                                    ; preds = %224
  %227 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1242
  store i8 63, i8* %227, align 1, !dbg !1242, !tbaa !1116
  br label %228, !dbg !1242

; <label>:228:                                    ; preds = %226, %224
  %229 = add i64 %123, 1, !dbg !1245
  call void @llvm.dbg.value(metadata i64 %229, metadata !1031, metadata !DIExpression()), !dbg !1094
  %230 = icmp ult i64 %229, %129, !dbg !1246
  br i1 %230, label %231, label %233, !dbg !1249

; <label>:231:                                    ; preds = %228
  %232 = getelementptr inbounds i8, i8* %0, i64 %229, !dbg !1246
  store i8 34, i8* %232, align 1, !dbg !1246, !tbaa !1116
  br label %233, !dbg !1246

; <label>:233:                                    ; preds = %231, %228
  %234 = add i64 %123, 2, !dbg !1249
  call void @llvm.dbg.value(metadata i64 %234, metadata !1031, metadata !DIExpression()), !dbg !1094
  %235 = icmp ult i64 %234, %129, !dbg !1250
  br i1 %235, label %236, label %238, !dbg !1253

; <label>:236:                                    ; preds = %233
  %237 = getelementptr inbounds i8, i8* %0, i64 %234, !dbg !1250
  store i8 34, i8* %237, align 1, !dbg !1250, !tbaa !1116
  br label %238, !dbg !1250

; <label>:238:                                    ; preds = %236, %233
  %239 = add i64 %123, 3, !dbg !1253
  call void @llvm.dbg.value(metadata i64 %239, metadata !1031, metadata !DIExpression()), !dbg !1094
  %240 = icmp ult i64 %239, %129, !dbg !1254
  br i1 %240, label %241, label %243, !dbg !1257

; <label>:241:                                    ; preds = %238
  %242 = getelementptr inbounds i8, i8* %0, i64 %239, !dbg !1254
  store i8 63, i8* %242, align 1, !dbg !1254, !tbaa !1116
  br label %243, !dbg !1254

; <label>:243:                                    ; preds = %241, %238
  %244 = add i64 %123, 4, !dbg !1257
  call void @llvm.dbg.value(metadata i64 %244, metadata !1031, metadata !DIExpression()), !dbg !1094
  br label %467, !dbg !1258

; <label>:245:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !1045, metadata !DIExpression()), !dbg !1259
  br label %255, !dbg !1260

; <label>:246:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !1045, metadata !DIExpression()), !dbg !1259
  br label %255, !dbg !1261

; <label>:247:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !1045, metadata !DIExpression()), !dbg !1259
  br label %253, !dbg !1262

; <label>:248:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !1045, metadata !DIExpression()), !dbg !1259
  br label %253, !dbg !1263

; <label>:249:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !1045, metadata !DIExpression()), !dbg !1259
  br label %255, !dbg !1264

; <label>:250:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 %157, metadata !1045, metadata !DIExpression()), !dbg !1259
  br i1 %114, label %251, label %252, !dbg !1265

; <label>:251:                                    ; preds = %250
  br i1 %110, label %562, label %661, !dbg !1266

; <label>:252:                                    ; preds = %250
  br i1 %120, label %562, label %253, !dbg !1269

; <label>:253:                                    ; preds = %252, %153, %248, %247
  %254 = phi i8 [ 92, %252 ], [ 116, %248 ], [ 114, %247 ], [ 110, %153 ], !dbg !1271
  call void @llvm.dbg.value(metadata i8 %254, metadata !1045, metadata !DIExpression()), !dbg !1259
  br i1 %113, label %255, label %661, !dbg !1272

; <label>:255:                                    ; preds = %253, %153, %249, %246, %245
  %256 = phi i8 [ %254, %253 ], [ 118, %249 ], [ 102, %246 ], [ 98, %245 ], [ 97, %153 ], !dbg !1271
  call void @llvm.dbg.value(metadata i8 %256, metadata !1045, metadata !DIExpression()), !dbg !1259
  br i1 %103, label %524, label %478, !dbg !1274

; <label>:257:                                    ; preds = %153, %153
  %258 = icmp eq i64 %154, -1, !dbg !1275
  br i1 %258, label %259, label %264, !dbg !1277

; <label>:259:                                    ; preds = %257
  %260 = load i8, i8* %25, align 1, !dbg !1278, !tbaa !1116
  %261 = icmp ne i8 %260, 0, !dbg !1279
  %262 = icmp ne i64 %122, 0, !dbg !1280
  %263 = or i1 %262, %261, !dbg !1282
  br i1 %263, label %467, label %270, !dbg !1282

; <label>:264:                                    ; preds = %257
  %265 = icmp ne i64 %154, 1, !dbg !1283
  %266 = icmp ne i64 %122, 0, !dbg !1280
  %267 = or i1 %266, %265, !dbg !1277
  br i1 %267, label %467, label %270, !dbg !1277

; <label>:268:                                    ; preds = %153, %153
  %269 = icmp eq i64 %122, 0, !dbg !1280
  br i1 %269, label %270, label %467, !dbg !1284

; <label>:270:                                    ; preds = %268, %264, %259, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1048, metadata !DIExpression()), !dbg !1166
  br label %271, !dbg !1285

; <label>:271:                                    ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %270
  %272 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %270 ], !dbg !1271
  call void @llvm.dbg.value(metadata i8 %272, metadata !1048, metadata !DIExpression()), !dbg !1166
  br i1 %113, label %467, label %661, !dbg !1286

; <label>:273:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1039, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i8 1, metadata !1048, metadata !DIExpression()), !dbg !1166
  br i1 %114, label %274, label %467, !dbg !1288

; <label>:274:                                    ; preds = %273
  br i1 %110, label %275, label %661, !dbg !1289

; <label>:275:                                    ; preds = %274
  %276 = icmp eq i64 %129, 0, !dbg !1292
  %277 = icmp ne i64 %124, 0, !dbg !1294
  %278 = or i1 %277, %276, !dbg !1295
  %279 = select i1 %278, i64 %124, i64 %129, !dbg !1295
  %280 = select i1 %278, i64 %129, i64 0, !dbg !1295
  call void @llvm.dbg.value(metadata i64 %280, metadata !1022, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i64 %279, metadata !1032, metadata !DIExpression()), !dbg !1095
  %281 = icmp ult i64 %123, %280, !dbg !1296
  br i1 %281, label %282, label %284, !dbg !1299

; <label>:282:                                    ; preds = %275
  %283 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1296
  store i8 39, i8* %283, align 1, !dbg !1296, !tbaa !1116
  br label %284, !dbg !1296

; <label>:284:                                    ; preds = %282, %275
  %285 = add i64 %123, 1, !dbg !1299
  call void @llvm.dbg.value(metadata i64 %285, metadata !1031, metadata !DIExpression()), !dbg !1094
  %286 = icmp ult i64 %285, %280, !dbg !1300
  br i1 %286, label %287, label %289, !dbg !1303

; <label>:287:                                    ; preds = %284
  %288 = getelementptr inbounds i8, i8* %0, i64 %285, !dbg !1300
  store i8 92, i8* %288, align 1, !dbg !1300, !tbaa !1116
  br label %289, !dbg !1300

; <label>:289:                                    ; preds = %287, %284
  %290 = add i64 %123, 2, !dbg !1303
  call void @llvm.dbg.value(metadata i64 %290, metadata !1031, metadata !DIExpression()), !dbg !1094
  %291 = icmp ult i64 %290, %280, !dbg !1304
  br i1 %291, label %292, label %294, !dbg !1307

; <label>:292:                                    ; preds = %289
  %293 = getelementptr inbounds i8, i8* %0, i64 %290, !dbg !1304
  store i8 39, i8* %293, align 1, !dbg !1304, !tbaa !1116
  br label %294, !dbg !1304

; <label>:294:                                    ; preds = %292, %289
  %295 = add i64 %123, 3, !dbg !1307
  call void @llvm.dbg.value(metadata i64 %295, metadata !1031, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i8 0, metadata !1038, metadata !DIExpression()), !dbg !1102
  br label %467, !dbg !1308

; <label>:296:                                    ; preds = %153
  br i1 %14, label %297, label %306, !dbg !1309

; <label>:297:                                    ; preds = %296
  call void @llvm.dbg.value(metadata i64 1, metadata !1049, metadata !DIExpression()), !dbg !1310
  %298 = tail call i16** @__ctype_b_loc() #17, !dbg !1311
  %299 = load i16*, i16** %298, align 8, !dbg !1311, !tbaa !635
  %300 = zext i8 %157 to i64, !dbg !1311
  %301 = getelementptr inbounds i16, i16* %299, i64 %300, !dbg !1311
  %302 = load i16, i16* %301, align 2, !dbg !1311, !tbaa !1313
  %303 = lshr i16 %302, 14, !dbg !1315
  %304 = trunc i16 %303 to i8, !dbg !1315
  %305 = and i8 %304, 1, !dbg !1315
  call void @llvm.dbg.value(metadata i8 %305, metadata !1052, metadata !DIExpression()), !dbg !1316
  br label %359, !dbg !1317

; <label>:306:                                    ; preds = %296
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %19) #10, !dbg !1318
  store i64 0, i64* %10, align 8, !dbg !1319
  call void @llvm.dbg.value(metadata i64 0, metadata !1049, metadata !DIExpression()), !dbg !1310
  call void @llvm.dbg.value(metadata i8 1, metadata !1052, metadata !DIExpression()), !dbg !1316
  %307 = icmp eq i64 %154, -1, !dbg !1320
  br i1 %307, label %308, label %310, !dbg !1322

; <label>:308:                                    ; preds = %306
  %309 = call i64 @strlen(i8* nonnull %2) #14, !dbg !1323
  call void @llvm.dbg.value(metadata i64 %309, metadata !1024, metadata !DIExpression()), !dbg !1088
  br label %310, !dbg !1324

; <label>:310:                                    ; preds = %308, %306
  %311 = phi i64 [ %309, %308 ], [ %154, %306 ], !dbg !1325
  call void @llvm.dbg.value(metadata i64 %311, metadata !1024, metadata !DIExpression()), !dbg !1088
  br label %312, !dbg !1326

; <label>:312:                                    ; preds = %347, %310
  %313 = phi i64 [ 0, %310 ], [ %352, %347 ], !dbg !1327
  %314 = phi i8 [ 1, %310 ], [ %351, %347 ], !dbg !1328
  call void @llvm.dbg.value(metadata i8 %314, metadata !1052, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i64 %313, metadata !1049, metadata !DIExpression()), !dbg !1310
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #10, !dbg !1329
  %315 = add i64 %313, %122, !dbg !1330
  %316 = getelementptr inbounds i8, i8* %2, i64 %315, !dbg !1331
  %317 = sub i64 %311, %315, !dbg !1332
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !1053, metadata !DIExpression(DW_OP_deref)), !dbg !1333
  call void @llvm.dbg.value(metadata i32* %12, metadata !1071, metadata !DIExpression(DW_OP_deref)), !dbg !1334
  %318 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %316, i64 %317, %struct.__mbstate_t* nonnull %11) #10, !dbg !1335
  call void @llvm.dbg.value(metadata i64 %318, metadata !1074, metadata !DIExpression()), !dbg !1336
  switch i64 %318, label %331 [
    i64 0, label %343
    i64 -1, label %344
    i64 -2, label %319
  ], !dbg !1337

; <label>:319:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !1049, metadata !DIExpression()), !dbg !1310
  call void @llvm.dbg.value(metadata i64 %313, metadata !1049, metadata !DIExpression()), !dbg !1310
  call void @llvm.dbg.value(metadata i64 %313, metadata !1049, metadata !DIExpression()), !dbg !1310
  call void @llvm.dbg.value(metadata i64 %313, metadata !1049, metadata !DIExpression()), !dbg !1310
  call void @llvm.dbg.value(metadata i64 %313, metadata !1049, metadata !DIExpression()), !dbg !1310
  call void @llvm.dbg.value(metadata i64 %313, metadata !1049, metadata !DIExpression()), !dbg !1310
  %320 = icmp ugt i64 %311, %315, !dbg !1338
  br i1 %320, label %321, label %344, !dbg !1340

; <label>:321:                                    ; preds = %319, %327
  %322 = phi i64 [ %329, %327 ], [ %315, %319 ]
  %323 = phi i64 [ %328, %327 ], [ %313, %319 ]
  call void @llvm.dbg.value(metadata i64 %323, metadata !1049, metadata !DIExpression()), !dbg !1310
  %324 = getelementptr inbounds i8, i8* %2, i64 %322, !dbg !1341
  %325 = load i8, i8* %324, align 1, !dbg !1341, !tbaa !1116
  %326 = icmp eq i8 %325, 0, !dbg !1340
  br i1 %326, label %344, label %327, !dbg !1342

; <label>:327:                                    ; preds = %321
  %328 = add i64 %323, 1, !dbg !1343
  call void @llvm.dbg.value(metadata i64 %328, metadata !1049, metadata !DIExpression()), !dbg !1310
  %329 = add i64 %328, %122, !dbg !1344
  %330 = icmp ult i64 %329, %311, !dbg !1338
  br i1 %330, label %321, label %344, !dbg !1340, !llvm.loop !1345

; <label>:331:                                    ; preds = %312
  %332 = icmp ugt i64 %318, 1, !dbg !1346
  %333 = and i1 %116, %332, !dbg !1349
  call void @llvm.dbg.value(metadata i64 1, metadata !1075, metadata !DIExpression()), !dbg !1350
  br i1 %333, label %334, label %347, !dbg !1349

; <label>:334:                                    ; preds = %331, %340
  %335 = phi i64 [ %341, %340 ], [ 1, %331 ]
  call void @llvm.dbg.value(metadata i64 %335, metadata !1075, metadata !DIExpression()), !dbg !1350
  %336 = add i64 %335, %315, !dbg !1351
  %337 = getelementptr inbounds i8, i8* %2, i64 %336, !dbg !1352
  %338 = load i8, i8* %337, align 1, !dbg !1352, !tbaa !1116
  %339 = sext i8 %338 to i32, !dbg !1352
  switch i32 %339, label %340 [
    i32 91, label %358
    i32 92, label %358
    i32 94, label %358
    i32 96, label %358
    i32 124, label %358
  ], !dbg !1353

; <label>:340:                                    ; preds = %334
  %341 = add nuw i64 %335, 1, !dbg !1354
  call void @llvm.dbg.value(metadata i64 %341, metadata !1075, metadata !DIExpression()), !dbg !1350
  %342 = icmp ult i64 %341, %318, !dbg !1346
  br i1 %342, label %334, label %347, !dbg !1355, !llvm.loop !1356

; <label>:343:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !1049, metadata !DIExpression()), !dbg !1310
  call void @llvm.dbg.value(metadata i8 %314, metadata !1052, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i64 %313, metadata !1049, metadata !DIExpression()), !dbg !1310
  call void @llvm.dbg.value(metadata i8 %314, metadata !1052, metadata !DIExpression()), !dbg !1316
  br label %344, !dbg !1358

; <label>:344:                                    ; preds = %327, %321, %312, %343, %319
  %345 = phi i64 [ %313, %319 ], [ %313, %343 ], [ %313, %312 ], [ %323, %321 ], [ %328, %327 ]
  %346 = phi i8 [ 0, %319 ], [ %314, %343 ], [ 0, %312 ], [ 0, %321 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i8 %351, metadata !1052, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i64 %352, metadata !1049, metadata !DIExpression()), !dbg !1310
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #10, !dbg !1358
  br label %355

; <label>:347:                                    ; preds = %340, %331
  %348 = load i32, i32* %12, align 4, !dbg !1359, !tbaa !703
  call void @llvm.dbg.value(metadata i32 %348, metadata !1071, metadata !DIExpression()), !dbg !1334
  %349 = call i32 @iswprint(i32 %348) #10, !dbg !1361
  %350 = icmp eq i32 %349, 0, !dbg !1361
  %351 = select i1 %350, i8 0, i8 %314, !dbg !1362
  call void @llvm.dbg.value(metadata i8 %351, metadata !1052, metadata !DIExpression()), !dbg !1316
  %352 = add i64 %318, %313, !dbg !1363
  call void @llvm.dbg.value(metadata i64 %352, metadata !1049, metadata !DIExpression()), !dbg !1310
  call void @llvm.dbg.value(metadata i8 %351, metadata !1052, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i64 %352, metadata !1049, metadata !DIExpression()), !dbg !1310
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #10, !dbg !1358
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !1053, metadata !DIExpression(DW_OP_deref)), !dbg !1333
  %353 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !1364
  %354 = icmp eq i32 %353, 0, !dbg !1365
  br i1 %354, label %312, label %355, !dbg !1366, !llvm.loop !1367

; <label>:355:                                    ; preds = %347, %344
  %356 = phi i8 [ %346, %344 ], [ %351, %347 ]
  %357 = phi i64 [ %345, %344 ], [ %352, %347 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #10, !dbg !1369
  br label %359

; <label>:358:                                    ; preds = %334, %334, %334, %334, %334
  call void @llvm.dbg.value(metadata i8* %95, metadata !1028, metadata !DIExpression()), !dbg !1092
  call void @llvm.dbg.value(metadata i8* %95, metadata !1028, metadata !DIExpression()), !dbg !1092
  call void @llvm.dbg.value(metadata i8* %95, metadata !1028, metadata !DIExpression()), !dbg !1092
  call void @llvm.dbg.value(metadata i8* %95, metadata !1028, metadata !DIExpression()), !dbg !1092
  call void @llvm.dbg.value(metadata i8* %95, metadata !1028, metadata !DIExpression()), !dbg !1092
  call void @llvm.dbg.value(metadata i8* %96, metadata !1029, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata i8* %96, metadata !1029, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata i8* %96, metadata !1029, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata i8* %96, metadata !1029, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata i8* %96, metadata !1029, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata i64 %129, metadata !1022, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i64 %129, metadata !1022, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i64 %129, metadata !1022, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i64 %129, metadata !1022, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i64 %129, metadata !1022, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i64 %311, metadata !1024, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i64 %311, metadata !1024, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i64 %311, metadata !1024, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i64 %311, metadata !1024, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i64 %311, metadata !1024, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i8* %95, metadata !1028, metadata !DIExpression()), !dbg !1092
  call void @llvm.dbg.value(metadata i8* %95, metadata !1028, metadata !DIExpression()), !dbg !1092
  call void @llvm.dbg.value(metadata i8* %95, metadata !1028, metadata !DIExpression()), !dbg !1092
  call void @llvm.dbg.value(metadata i8* %95, metadata !1028, metadata !DIExpression()), !dbg !1092
  call void @llvm.dbg.value(metadata i8* %95, metadata !1028, metadata !DIExpression()), !dbg !1092
  call void @llvm.dbg.value(metadata i8* %96, metadata !1029, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata i8* %96, metadata !1029, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata i8* %96, metadata !1029, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata i8* %96, metadata !1029, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata i8* %96, metadata !1029, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata i64 %129, metadata !1022, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i64 %129, metadata !1022, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i64 %129, metadata !1022, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i64 %129, metadata !1022, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i64 %129, metadata !1022, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i64 %311, metadata !1024, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i64 %311, metadata !1024, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i64 %311, metadata !1024, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i64 %311, metadata !1024, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i64 %311, metadata !1024, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i8* %95, metadata !1028, metadata !DIExpression()), !dbg !1092
  call void @llvm.dbg.value(metadata i8* %95, metadata !1028, metadata !DIExpression()), !dbg !1092
  call void @llvm.dbg.value(metadata i8* %95, metadata !1028, metadata !DIExpression()), !dbg !1092
  call void @llvm.dbg.value(metadata i8* %95, metadata !1028, metadata !DIExpression()), !dbg !1092
  call void @llvm.dbg.value(metadata i8* %95, metadata !1028, metadata !DIExpression()), !dbg !1092
  call void @llvm.dbg.value(metadata i8* %96, metadata !1029, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata i8* %96, metadata !1029, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata i8* %96, metadata !1029, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata i8* %96, metadata !1029, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata i8* %96, metadata !1029, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata i64 %129, metadata !1022, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i64 %129, metadata !1022, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i64 %129, metadata !1022, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i64 %129, metadata !1022, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i64 %129, metadata !1022, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i64 %311, metadata !1024, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i64 %311, metadata !1024, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i64 %311, metadata !1024, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i64 %311, metadata !1024, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i64 %311, metadata !1024, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i8* %95, metadata !1028, metadata !DIExpression()), !dbg !1092
  call void @llvm.dbg.value(metadata i8* %95, metadata !1028, metadata !DIExpression()), !dbg !1092
  call void @llvm.dbg.value(metadata i8* %95, metadata !1028, metadata !DIExpression()), !dbg !1092
  call void @llvm.dbg.value(metadata i8* %95, metadata !1028, metadata !DIExpression()), !dbg !1092
  call void @llvm.dbg.value(metadata i8* %95, metadata !1028, metadata !DIExpression()), !dbg !1092
  call void @llvm.dbg.value(metadata i8* %96, metadata !1029, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata i8* %96, metadata !1029, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata i8* %96, metadata !1029, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata i8* %96, metadata !1029, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata i8* %96, metadata !1029, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata i64 %129, metadata !1022, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i64 %129, metadata !1022, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i64 %129, metadata !1022, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i64 %129, metadata !1022, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i64 %129, metadata !1022, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i64 %311, metadata !1024, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i64 %311, metadata !1024, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i64 %311, metadata !1024, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i64 %311, metadata !1024, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i64 %311, metadata !1024, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i32 2, metadata !1025, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata i32 2, metadata !1025, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata i32 2, metadata !1025, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata i32 2, metadata !1025, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata i32 2, metadata !1025, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata i8* %95, metadata !1028, metadata !DIExpression()), !dbg !1092
  call void @llvm.dbg.value(metadata i8* %95, metadata !1028, metadata !DIExpression()), !dbg !1092
  call void @llvm.dbg.value(metadata i8* %95, metadata !1028, metadata !DIExpression()), !dbg !1092
  call void @llvm.dbg.value(metadata i8* %95, metadata !1028, metadata !DIExpression()), !dbg !1092
  call void @llvm.dbg.value(metadata i8* %95, metadata !1028, metadata !DIExpression()), !dbg !1092
  call void @llvm.dbg.value(metadata i8* %96, metadata !1029, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata i8* %96, metadata !1029, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata i8* %96, metadata !1029, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata i8* %96, metadata !1029, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata i8* %96, metadata !1029, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata i8 %100, metadata !1035, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i8 %100, metadata !1035, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i8 %100, metadata !1035, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i8 %100, metadata !1035, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i8 %100, metadata !1035, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i64 %129, metadata !1022, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i64 %129, metadata !1022, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i64 %129, metadata !1022, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i64 %129, metadata !1022, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i64 %129, metadata !1022, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i64 %311, metadata !1024, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i64 %311, metadata !1024, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i64 %311, metadata !1024, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i64 %311, metadata !1024, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i64 %311, metadata !1024, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i32 %94, metadata !1025, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata i32 %94, metadata !1025, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata i32 %94, metadata !1025, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata i32 %94, metadata !1025, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata i32 %94, metadata !1025, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata i8* %95, metadata !1028, metadata !DIExpression()), !dbg !1092
  call void @llvm.dbg.value(metadata i8* %95, metadata !1028, metadata !DIExpression()), !dbg !1092
  call void @llvm.dbg.value(metadata i8* %95, metadata !1028, metadata !DIExpression()), !dbg !1092
  call void @llvm.dbg.value(metadata i8* %95, metadata !1028, metadata !DIExpression()), !dbg !1092
  call void @llvm.dbg.value(metadata i8* %95, metadata !1028, metadata !DIExpression()), !dbg !1092
  call void @llvm.dbg.value(metadata i8* %96, metadata !1029, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata i8* %96, metadata !1029, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata i8* %96, metadata !1029, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata i8* %96, metadata !1029, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata i8* %96, metadata !1029, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata i8 %100, metadata !1035, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i8 %100, metadata !1035, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i8 %100, metadata !1035, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i8 %100, metadata !1035, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i8 %100, metadata !1035, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i64 %129, metadata !1022, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i64 %129, metadata !1022, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i64 %129, metadata !1022, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i64 %129, metadata !1022, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i64 %129, metadata !1022, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i64 %311, metadata !1024, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i64 %311, metadata !1024, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i64 %311, metadata !1024, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i64 %311, metadata !1024, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i64 %311, metadata !1024, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i8 %351, metadata !1052, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i64 %352, metadata !1049, metadata !DIExpression()), !dbg !1310
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #10, !dbg !1358
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #10, !dbg !1369
  br label %661

; <label>:359:                                    ; preds = %355, %297
  %360 = phi i64 [ %154, %297 ], [ %311, %355 ], !dbg !1370
  %361 = phi i64 [ 1, %297 ], [ %357, %355 ], !dbg !1371
  %362 = phi i8 [ %305, %297 ], [ %356, %355 ], !dbg !1371
  call void @llvm.dbg.value(metadata i8 %362, metadata !1052, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.value(metadata i64 %361, metadata !1049, metadata !DIExpression()), !dbg !1310
  call void @llvm.dbg.value(metadata i64 %360, metadata !1024, metadata !DIExpression()), !dbg !1088
  %363 = and i8 %362, 1, !dbg !1372
  %364 = icmp ne i8 %363, 0, !dbg !1372
  call void @llvm.dbg.value(metadata i8 %363, metadata !1048, metadata !DIExpression()), !dbg !1166
  %365 = icmp ult i64 %361, 2, !dbg !1373
  %366 = or i1 %364, %115, !dbg !1374
  %367 = and i1 %365, %366, !dbg !1375
  br i1 %367, label %467, label %368, !dbg !1375

; <label>:368:                                    ; preds = %359
  %369 = add i64 %361, %122, !dbg !1376
  call void @llvm.dbg.value(metadata i64 %369, metadata !1082, metadata !DIExpression()), !dbg !1377
  br label %370, !dbg !1378

; <label>:370:                                    ; preds = %463, %368
  %371 = phi i64 [ %122, %368 ], [ %438, %463 ], !dbg !1379
  %372 = phi i64 [ %123, %368 ], [ %464, %463 ], !dbg !1383
  %373 = phi i8 [ %126, %368 ], [ %459, %463 ], !dbg !1102
  %374 = phi i8 [ %157, %368 ], [ %466, %463 ], !dbg !1379
  %375 = phi i8 [ %155, %368 ], [ %436, %463 ], !dbg !1385
  %376 = phi i8 [ 0, %368 ], [ %437, %463 ], !dbg !1165
  call void @llvm.dbg.value(metadata i8 %376, metadata !1047, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i8 %375, metadata !1046, metadata !DIExpression()), !dbg !1164
  call void @llvm.dbg.value(metadata i8 %374, metadata !1041, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.value(metadata i8 %373, metadata !1038, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i64 %372, metadata !1031, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %371, metadata !1030, metadata !DIExpression()), !dbg !1155
  br i1 %366, label %423, label %377, !dbg !1389

; <label>:377:                                    ; preds = %370
  br i1 %110, label %378, label %661, !dbg !1390

; <label>:378:                                    ; preds = %377
  call void @llvm.dbg.value(metadata i8 1, metadata !1047, metadata !DIExpression()), !dbg !1165
  %379 = and i8 %373, 1, !dbg !1393
  %380 = icmp eq i8 %379, 0, !dbg !1393
  %381 = and i1 %114, %380, !dbg !1393
  br i1 %381, label %382, label %398, !dbg !1393

; <label>:382:                                    ; preds = %378
  %383 = icmp ult i64 %372, %129, !dbg !1395
  br i1 %383, label %384, label %386, !dbg !1399

; <label>:384:                                    ; preds = %382
  %385 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !1395
  store i8 39, i8* %385, align 1, !dbg !1395, !tbaa !1116
  br label %386, !dbg !1395

; <label>:386:                                    ; preds = %384, %382
  %387 = add i64 %372, 1, !dbg !1399
  call void @llvm.dbg.value(metadata i64 %387, metadata !1031, metadata !DIExpression()), !dbg !1094
  %388 = icmp ult i64 %387, %129, !dbg !1400
  br i1 %388, label %389, label %391, !dbg !1403

; <label>:389:                                    ; preds = %386
  %390 = getelementptr inbounds i8, i8* %0, i64 %387, !dbg !1400
  store i8 36, i8* %390, align 1, !dbg !1400, !tbaa !1116
  br label %391, !dbg !1400

; <label>:391:                                    ; preds = %389, %386
  %392 = add i64 %372, 2, !dbg !1403
  call void @llvm.dbg.value(metadata i64 %392, metadata !1031, metadata !DIExpression()), !dbg !1094
  %393 = icmp ult i64 %392, %129, !dbg !1404
  br i1 %393, label %394, label %396, !dbg !1407

; <label>:394:                                    ; preds = %391
  %395 = getelementptr inbounds i8, i8* %0, i64 %392, !dbg !1404
  store i8 39, i8* %395, align 1, !dbg !1404, !tbaa !1116
  br label %396, !dbg !1404

; <label>:396:                                    ; preds = %394, %391
  %397 = add i64 %372, 3, !dbg !1407
  call void @llvm.dbg.value(metadata i64 %397, metadata !1031, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i8 1, metadata !1038, metadata !DIExpression()), !dbg !1102
  br label %398, !dbg !1408

; <label>:398:                                    ; preds = %378, %396
  %399 = phi i64 [ %397, %396 ], [ %372, %378 ], !dbg !1154
  %400 = phi i8 [ 1, %396 ], [ %373, %378 ], !dbg !1154
  call void @llvm.dbg.value(metadata i8 %400, metadata !1038, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i64 %399, metadata !1031, metadata !DIExpression()), !dbg !1094
  %401 = icmp ult i64 %399, %129, !dbg !1409
  br i1 %401, label %402, label %404, !dbg !1412

; <label>:402:                                    ; preds = %398
  %403 = getelementptr inbounds i8, i8* %0, i64 %399, !dbg !1409
  store i8 92, i8* %403, align 1, !dbg !1409, !tbaa !1116
  br label %404, !dbg !1409

; <label>:404:                                    ; preds = %402, %398
  %405 = add i64 %399, 1, !dbg !1412
  call void @llvm.dbg.value(metadata i64 %405, metadata !1031, metadata !DIExpression()), !dbg !1094
  %406 = icmp ult i64 %405, %129, !dbg !1413
  br i1 %406, label %407, label %411, !dbg !1416

; <label>:407:                                    ; preds = %404
  %408 = lshr i8 %374, 6, !dbg !1413
  %409 = or i8 %408, 48, !dbg !1413
  %410 = getelementptr inbounds i8, i8* %0, i64 %405, !dbg !1413
  store i8 %409, i8* %410, align 1, !dbg !1413, !tbaa !1116
  br label %411, !dbg !1413

; <label>:411:                                    ; preds = %407, %404
  %412 = add i64 %399, 2, !dbg !1416
  call void @llvm.dbg.value(metadata i64 %412, metadata !1031, metadata !DIExpression()), !dbg !1094
  %413 = icmp ult i64 %412, %129, !dbg !1417
  br i1 %413, label %414, label %419, !dbg !1420

; <label>:414:                                    ; preds = %411
  %415 = lshr i8 %374, 3, !dbg !1417
  %416 = and i8 %415, 7, !dbg !1417
  %417 = or i8 %416, 48, !dbg !1417
  %418 = getelementptr inbounds i8, i8* %0, i64 %412, !dbg !1417
  store i8 %417, i8* %418, align 1, !dbg !1417, !tbaa !1116
  br label %419, !dbg !1417

; <label>:419:                                    ; preds = %414, %411
  %420 = add i64 %399, 3, !dbg !1420
  call void @llvm.dbg.value(metadata i64 %420, metadata !1031, metadata !DIExpression()), !dbg !1094
  %421 = and i8 %374, 7, !dbg !1421
  %422 = or i8 %421, 48, !dbg !1422
  call void @llvm.dbg.value(metadata i8 %422, metadata !1041, metadata !DIExpression()), !dbg !1181
  br label %432, !dbg !1423

; <label>:423:                                    ; preds = %370
  %424 = and i8 %375, 1, !dbg !1424
  %425 = icmp eq i8 %424, 0, !dbg !1424
  br i1 %425, label %432, label %426, !dbg !1425

; <label>:426:                                    ; preds = %423
  %427 = icmp ult i64 %372, %129, !dbg !1426
  br i1 %427, label %428, label %430, !dbg !1429

; <label>:428:                                    ; preds = %426
  %429 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !1426
  store i8 92, i8* %429, align 1, !dbg !1426, !tbaa !1116
  br label %430, !dbg !1426

; <label>:430:                                    ; preds = %428, %426
  %431 = add i64 %372, 1, !dbg !1429
  call void @llvm.dbg.value(metadata i64 %431, metadata !1031, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i8 0, metadata !1046, metadata !DIExpression()), !dbg !1164
  br label %432, !dbg !1430

; <label>:432:                                    ; preds = %423, %430, %419
  %433 = phi i64 [ %431, %430 ], [ %372, %423 ], [ %420, %419 ], !dbg !1431
  %434 = phi i8 [ %373, %430 ], [ %373, %423 ], [ %400, %419 ], !dbg !1102
  %435 = phi i8 [ %374, %430 ], [ %374, %423 ], [ %422, %419 ], !dbg !1432
  %436 = phi i8 [ 0, %430 ], [ %375, %423 ], [ %375, %419 ], !dbg !1433
  %437 = phi i8 [ %376, %430 ], [ %376, %423 ], [ 1, %419 ], !dbg !1435
  call void @llvm.dbg.value(metadata i8 %437, metadata !1047, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i8 %436, metadata !1046, metadata !DIExpression()), !dbg !1164
  call void @llvm.dbg.value(metadata i8 %435, metadata !1041, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.value(metadata i8 %434, metadata !1038, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i64 %433, metadata !1031, metadata !DIExpression()), !dbg !1094
  %438 = add i64 %371, 1, !dbg !1436
  %439 = icmp ugt i64 %369, %438, !dbg !1438
  br i1 %439, label %440, label %562, !dbg !1439

; <label>:440:                                    ; preds = %432
  %441 = and i8 %434, 1, !dbg !1440
  %442 = icmp ne i8 %441, 0, !dbg !1440
  %443 = and i8 %437, 1, !dbg !1440
  %444 = icmp eq i8 %443, 0, !dbg !1440
  %445 = and i1 %442, %444, !dbg !1440
  br i1 %445, label %446, label %457, !dbg !1440

; <label>:446:                                    ; preds = %440
  %447 = icmp ult i64 %433, %129, !dbg !1443
  br i1 %447, label %448, label %450, !dbg !1447

; <label>:448:                                    ; preds = %446
  %449 = getelementptr inbounds i8, i8* %0, i64 %433, !dbg !1443
  store i8 39, i8* %449, align 1, !dbg !1443, !tbaa !1116
  br label %450, !dbg !1443

; <label>:450:                                    ; preds = %448, %446
  %451 = add i64 %433, 1, !dbg !1447
  call void @llvm.dbg.value(metadata i64 %451, metadata !1031, metadata !DIExpression()), !dbg !1094
  %452 = icmp ult i64 %451, %129, !dbg !1448
  br i1 %452, label %453, label %455, !dbg !1451

; <label>:453:                                    ; preds = %450
  %454 = getelementptr inbounds i8, i8* %0, i64 %451, !dbg !1448
  store i8 39, i8* %454, align 1, !dbg !1448, !tbaa !1116
  br label %455, !dbg !1448

; <label>:455:                                    ; preds = %453, %450
  %456 = add i64 %433, 2, !dbg !1451
  call void @llvm.dbg.value(metadata i64 %456, metadata !1031, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i8 0, metadata !1038, metadata !DIExpression()), !dbg !1102
  br label %457, !dbg !1452

; <label>:457:                                    ; preds = %440, %455
  %458 = phi i64 [ %456, %455 ], [ %433, %440 ], !dbg !1453
  %459 = phi i8 [ 0, %455 ], [ %434, %440 ], !dbg !1154
  call void @llvm.dbg.value(metadata i8 %459, metadata !1038, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i64 %458, metadata !1031, metadata !DIExpression()), !dbg !1094
  %460 = icmp ult i64 %458, %129, !dbg !1454
  br i1 %460, label %461, label %463, !dbg !1456

; <label>:461:                                    ; preds = %457
  %462 = getelementptr inbounds i8, i8* %0, i64 %458, !dbg !1454
  store i8 %435, i8* %462, align 1, !dbg !1454, !tbaa !1116
  br label %463, !dbg !1454

; <label>:463:                                    ; preds = %461, %457
  %464 = add i64 %458, 1, !dbg !1456
  call void @llvm.dbg.value(metadata i64 %464, metadata !1031, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %438, metadata !1030, metadata !DIExpression()), !dbg !1155
  %465 = getelementptr inbounds i8, i8* %2, i64 %438, !dbg !1457
  %466 = load i8, i8* %465, align 1, !dbg !1457, !tbaa !1116
  call void @llvm.dbg.value(metadata i8 %466, metadata !1041, metadata !DIExpression()), !dbg !1181
  br label %370, !dbg !1458, !llvm.loop !1459

; <label>:467:                                    ; preds = %359, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %271, %188, %191, %205, %209, %210, %268, %264, %259, %273, %294, %243, %219, %214, %211, %208
  %468 = phi i64 [ %122, %294 ], [ %122, %273 ], [ %122, %271 ], [ %122, %268 ], [ %122, %259 ], [ %122, %264 ], [ %122, %208 ], [ %122, %219 ], [ %212, %243 ], [ %122, %214 ], [ %122, %211 ], [ %122, %210 ], [ %122, %209 ], [ %122, %205 ], [ %122, %191 ], [ %122, %188 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %359 ], !dbg !1462
  %469 = phi i64 [ %295, %294 ], [ %123, %273 ], [ %123, %271 ], [ %123, %268 ], [ %123, %259 ], [ %123, %264 ], [ %123, %208 ], [ %123, %219 ], [ %244, %243 ], [ %123, %214 ], [ %123, %211 ], [ %123, %210 ], [ %123, %209 ], [ %206, %205 ], [ %187, %191 ], [ %187, %188 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %359 ], !dbg !1154
  %470 = phi i64 [ %279, %294 ], [ %124, %273 ], [ %124, %271 ], [ %124, %268 ], [ %124, %259 ], [ %124, %264 ], [ %124, %208 ], [ %124, %219 ], [ %124, %243 ], [ %124, %214 ], [ %124, %211 ], [ %124, %210 ], [ %124, %209 ], [ %124, %205 ], [ %124, %191 ], [ %124, %188 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %359 ], !dbg !1095
  %471 = phi i64 [ %154, %294 ], [ %154, %273 ], [ %154, %271 ], [ %154, %268 ], [ -1, %259 ], [ %154, %264 ], [ %154, %208 ], [ %154, %219 ], [ %154, %243 ], [ %154, %214 ], [ %154, %211 ], [ %154, %210 ], [ %154, %209 ], [ %154, %205 ], [ %154, %191 ], [ %154, %188 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %360, %359 ], !dbg !1463
  %472 = phi i8 [ 0, %294 ], [ %126, %273 ], [ %126, %271 ], [ %126, %268 ], [ %126, %259 ], [ %126, %264 ], [ %126, %208 ], [ %126, %219 ], [ %126, %243 ], [ %126, %214 ], [ %126, %211 ], [ %126, %210 ], [ %126, %209 ], [ %182, %205 ], [ %182, %191 ], [ %182, %188 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %359 ], !dbg !1154
  %473 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %127, %271 ], [ %127, %268 ], [ %127, %259 ], [ %127, %264 ], [ %127, %208 ], [ %127, %219 ], [ %127, %243 ], [ %127, %214 ], [ %127, %211 ], [ %127, %210 ], [ %127, %209 ], [ %127, %205 ], [ %127, %191 ], [ %127, %188 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %359 ], !dbg !1154
  %474 = phi i8 [ 39, %294 ], [ 39, %273 ], [ %157, %271 ], [ %157, %268 ], [ %157, %259 ], [ %157, %264 ], [ 63, %208 ], [ 63, %219 ], [ %221, %243 ], [ 63, %214 ], [ 63, %211 ], [ 63, %210 ], [ 63, %209 ], [ 48, %205 ], [ 48, %191 ], [ 48, %188 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %359 ], !dbg !1179
  %475 = phi i8 [ 0, %294 ], [ 0, %273 ], [ 0, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 1, %205 ], [ 1, %191 ], [ 1, %188 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %359 ], !dbg !1179
  %476 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %272, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 0, %205 ], [ 0, %191 ], [ 0, %188 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %363, %359 ], !dbg !1179
  %477 = phi i64 [ %280, %294 ], [ %129, %273 ], [ %129, %271 ], [ %129, %268 ], [ %129, %259 ], [ %129, %264 ], [ %129, %208 ], [ %129, %219 ], [ %129, %243 ], [ %129, %214 ], [ %129, %211 ], [ %129, %210 ], [ %129, %209 ], [ %129, %205 ], [ %129, %191 ], [ %129, %188 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %359 ]
  call void @llvm.dbg.value(metadata i64 %477, metadata !1022, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i8 %476, metadata !1048, metadata !DIExpression()), !dbg !1166
  call void @llvm.dbg.value(metadata i8 %475, metadata !1047, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i8 %155, metadata !1046, metadata !DIExpression()), !dbg !1164
  call void @llvm.dbg.value(metadata i8 %474, metadata !1041, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.value(metadata i8 %473, metadata !1039, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i8 %472, metadata !1038, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i64 %471, metadata !1024, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i64 %470, metadata !1032, metadata !DIExpression()), !dbg !1095
  call void @llvm.dbg.value(metadata i64 %469, metadata !1031, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %468, metadata !1030, metadata !DIExpression()), !dbg !1155
  br i1 %105, label %489, label %478, !dbg !1464

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
  br i1 %112, label %490, label %512, !dbg !1466

; <label>:489:                                    ; preds = %467
  br i1 %20, label %512, label %490, !dbg !1467

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
  %501 = lshr i8 %494, 5, !dbg !1468
  %502 = zext i8 %501 to i64, !dbg !1468
  %503 = getelementptr inbounds i32, i32* %6, i64 %502, !dbg !1469
  %504 = load i32, i32* %503, align 4, !dbg !1469, !tbaa !703
  %505 = and i8 %494, 31, !dbg !1470
  %506 = zext i8 %505 to i32, !dbg !1470
  %507 = shl i32 1, %506, !dbg !1471
  %508 = and i32 %504, %507, !dbg !1471
  %509 = icmp eq i32 %508, 0, !dbg !1471
  %510 = icmp eq i8 %155, 0, !dbg !1472
  %511 = and i1 %510, %509, !dbg !1473
  br i1 %511, label %562, label %524, !dbg !1473

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
  %523 = icmp eq i8 %155, 0, !dbg !1472
  br i1 %523, label %562, label %524, !dbg !1474

; <label>:524:                                    ; preds = %255, %490, %512
  %525 = phi i64 [ %500, %490 ], [ %522, %512 ], [ %122, %255 ], !dbg !1475
  %526 = phi i64 [ %499, %490 ], [ %521, %512 ], [ %123, %255 ], !dbg !1154
  %527 = phi i64 [ %498, %490 ], [ %520, %512 ], [ %124, %255 ], !dbg !1095
  %528 = phi i64 [ %497, %490 ], [ %519, %512 ], [ %154, %255 ], !dbg !1463
  %529 = phi i8 [ %496, %490 ], [ %518, %512 ], [ %126, %255 ], !dbg !1102
  %530 = phi i8 [ %495, %490 ], [ %517, %512 ], [ %127, %255 ], !dbg !1103
  %531 = phi i8 [ %494, %490 ], [ %516, %512 ], [ %256, %255 ], !dbg !1476
  %532 = phi i8 [ %492, %490 ], [ %514, %512 ], [ 0, %255 ], !dbg !1179
  %533 = phi i64 [ %491, %490 ], [ %513, %512 ], [ %129, %255 ]
  call void @llvm.dbg.value(metadata i64 %533, metadata !1022, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i8 %532, metadata !1048, metadata !DIExpression()), !dbg !1166
  call void @llvm.dbg.value(metadata i8 %531, metadata !1041, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.value(metadata i8 %530, metadata !1039, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i8 %529, metadata !1038, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i64 %528, metadata !1024, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i64 %527, metadata !1032, metadata !DIExpression()), !dbg !1095
  call void @llvm.dbg.value(metadata i64 %526, metadata !1031, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %525, metadata !1030, metadata !DIExpression()), !dbg !1155
  br i1 %110, label %534, label %661, !dbg !1479

; <label>:534:                                    ; preds = %524
  call void @llvm.dbg.value(metadata i8 1, metadata !1047, metadata !DIExpression()), !dbg !1165
  %535 = and i8 %529, 1, !dbg !1481
  %536 = icmp eq i8 %535, 0, !dbg !1481
  %537 = and i1 %114, %536, !dbg !1481
  br i1 %537, label %538, label %554, !dbg !1481

; <label>:538:                                    ; preds = %534
  %539 = icmp ult i64 %526, %533, !dbg !1483
  br i1 %539, label %540, label %542, !dbg !1487

; <label>:540:                                    ; preds = %538
  %541 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !1483
  store i8 39, i8* %541, align 1, !dbg !1483, !tbaa !1116
  br label %542, !dbg !1483

; <label>:542:                                    ; preds = %540, %538
  %543 = add i64 %526, 1, !dbg !1487
  call void @llvm.dbg.value(metadata i64 %543, metadata !1031, metadata !DIExpression()), !dbg !1094
  %544 = icmp ult i64 %543, %533, !dbg !1488
  br i1 %544, label %545, label %547, !dbg !1491

; <label>:545:                                    ; preds = %542
  %546 = getelementptr inbounds i8, i8* %0, i64 %543, !dbg !1488
  store i8 36, i8* %546, align 1, !dbg !1488, !tbaa !1116
  br label %547, !dbg !1488

; <label>:547:                                    ; preds = %545, %542
  %548 = add i64 %526, 2, !dbg !1491
  call void @llvm.dbg.value(metadata i64 %548, metadata !1031, metadata !DIExpression()), !dbg !1094
  %549 = icmp ult i64 %548, %533, !dbg !1492
  br i1 %549, label %550, label %552, !dbg !1495

; <label>:550:                                    ; preds = %547
  %551 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !1492
  store i8 39, i8* %551, align 1, !dbg !1492, !tbaa !1116
  br label %552, !dbg !1492

; <label>:552:                                    ; preds = %550, %547
  %553 = add i64 %526, 3, !dbg !1495
  call void @llvm.dbg.value(metadata i64 %553, metadata !1031, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i8 1, metadata !1038, metadata !DIExpression()), !dbg !1102
  br label %554, !dbg !1496

; <label>:554:                                    ; preds = %534, %552
  %555 = phi i64 [ %553, %552 ], [ %526, %534 ], !dbg !1453
  %556 = phi i8 [ 1, %552 ], [ %529, %534 ], !dbg !1154
  call void @llvm.dbg.value(metadata i8 %556, metadata !1038, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i64 %555, metadata !1031, metadata !DIExpression()), !dbg !1094
  %557 = icmp ult i64 %555, %533, !dbg !1497
  br i1 %557, label %558, label %560, !dbg !1500

; <label>:558:                                    ; preds = %554
  %559 = getelementptr inbounds i8, i8* %0, i64 %555, !dbg !1497
  store i8 92, i8* %559, align 1, !dbg !1497, !tbaa !1116
  br label %560, !dbg !1497

; <label>:560:                                    ; preds = %554, %558
  %561 = add i64 %555, 1, !dbg !1500
  call void @llvm.dbg.value(metadata i64 %561, metadata !1031, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %572, metadata !1022, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i8 %571, metadata !1048, metadata !DIExpression()), !dbg !1166
  call void @llvm.dbg.value(metadata i8 %570, metadata !1047, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i8 %569, metadata !1041, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.value(metadata i8 %568, metadata !1039, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i8 %567, metadata !1038, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i64 %566, metadata !1024, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i64 %565, metadata !1032, metadata !DIExpression()), !dbg !1095
  call void @llvm.dbg.value(metadata i64 %564, metadata !1031, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %563, metadata !1030, metadata !DIExpression()), !dbg !1155
  br label %589, !dbg !1501

; <label>:562:                                    ; preds = %432, %252, %490, %251, %512
  %563 = phi i64 [ %522, %512 ], [ %122, %251 ], [ %500, %490 ], [ %122, %252 ], [ %371, %432 ], !dbg !1475
  %564 = phi i64 [ %521, %512 ], [ %123, %251 ], [ %499, %490 ], [ %123, %252 ], [ %433, %432 ], !dbg !1154
  %565 = phi i64 [ %520, %512 ], [ %124, %251 ], [ %498, %490 ], [ %124, %252 ], [ %124, %432 ], !dbg !1095
  %566 = phi i64 [ %519, %512 ], [ %154, %251 ], [ %497, %490 ], [ %154, %252 ], [ %360, %432 ], !dbg !1463
  %567 = phi i8 [ %518, %512 ], [ %126, %251 ], [ %496, %490 ], [ %126, %252 ], [ %434, %432 ], !dbg !1102
  %568 = phi i8 [ %517, %512 ], [ %127, %251 ], [ %495, %490 ], [ %127, %252 ], [ %127, %432 ], !dbg !1103
  %569 = phi i8 [ %516, %512 ], [ 92, %251 ], [ %494, %490 ], [ 92, %252 ], [ %435, %432 ], !dbg !1504
  %570 = phi i8 [ %515, %512 ], [ 0, %251 ], [ %493, %490 ], [ 0, %252 ], [ %437, %432 ], !dbg !1179
  %571 = phi i8 [ %514, %512 ], [ 0, %251 ], [ %492, %490 ], [ 0, %252 ], [ %363, %432 ], !dbg !1179
  %572 = phi i64 [ %513, %512 ], [ %129, %251 ], [ %491, %490 ], [ %129, %252 ], [ %129, %432 ]
  call void @llvm.dbg.value(metadata i64 %572, metadata !1022, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i8 %571, metadata !1048, metadata !DIExpression()), !dbg !1166
  call void @llvm.dbg.value(metadata i8 %570, metadata !1047, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.value(metadata i8 %569, metadata !1041, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.value(metadata i8 %568, metadata !1039, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i8 %567, metadata !1038, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i64 %566, metadata !1024, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i64 %565, metadata !1032, metadata !DIExpression()), !dbg !1095
  call void @llvm.dbg.value(metadata i64 %564, metadata !1031, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %563, metadata !1030, metadata !DIExpression()), !dbg !1155
  %573 = and i8 %567, 1, !dbg !1501
  %574 = icmp ne i8 %573, 0, !dbg !1501
  %575 = and i8 %570, 1, !dbg !1501
  %576 = icmp eq i8 %575, 0, !dbg !1501
  %577 = and i1 %574, %576, !dbg !1501
  br i1 %577, label %578, label %589, !dbg !1501

; <label>:578:                                    ; preds = %562
  %579 = icmp ult i64 %564, %572, !dbg !1505
  br i1 %579, label %580, label %582, !dbg !1509

; <label>:580:                                    ; preds = %578
  %581 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !1505
  store i8 39, i8* %581, align 1, !dbg !1505, !tbaa !1116
  br label %582, !dbg !1505

; <label>:582:                                    ; preds = %580, %578
  %583 = add i64 %564, 1, !dbg !1509
  call void @llvm.dbg.value(metadata i64 %583, metadata !1031, metadata !DIExpression()), !dbg !1094
  %584 = icmp ult i64 %583, %572, !dbg !1510
  br i1 %584, label %585, label %587, !dbg !1513

; <label>:585:                                    ; preds = %582
  %586 = getelementptr inbounds i8, i8* %0, i64 %583, !dbg !1510
  store i8 39, i8* %586, align 1, !dbg !1510, !tbaa !1116
  br label %587, !dbg !1510

; <label>:587:                                    ; preds = %585, %582
  %588 = add i64 %564, 2, !dbg !1513
  call void @llvm.dbg.value(metadata i64 %588, metadata !1031, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i8 0, metadata !1038, metadata !DIExpression()), !dbg !1102
  br label %589, !dbg !1514

; <label>:589:                                    ; preds = %560, %562, %587
  %590 = phi i64 [ %572, %587 ], [ %572, %562 ], [ %533, %560 ]
  %591 = phi i8 [ %571, %587 ], [ %571, %562 ], [ %532, %560 ]
  %592 = phi i8 [ %569, %587 ], [ %569, %562 ], [ %531, %560 ]
  %593 = phi i8 [ %568, %587 ], [ %568, %562 ], [ %530, %560 ]
  %594 = phi i64 [ %566, %587 ], [ %566, %562 ], [ %528, %560 ]
  %595 = phi i64 [ %565, %587 ], [ %565, %562 ], [ %527, %560 ]
  %596 = phi i64 [ %563, %587 ], [ %563, %562 ], [ %525, %560 ]
  %597 = phi i64 [ %588, %587 ], [ %564, %562 ], [ %561, %560 ], !dbg !1453
  %598 = phi i8 [ 0, %587 ], [ %567, %562 ], [ %556, %560 ], !dbg !1154
  call void @llvm.dbg.value(metadata i8 %598, metadata !1038, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i64 %597, metadata !1031, metadata !DIExpression()), !dbg !1094
  %599 = icmp ult i64 %597, %590, !dbg !1515
  br i1 %599, label %600, label %602, !dbg !1518

; <label>:600:                                    ; preds = %589
  %601 = getelementptr inbounds i8, i8* %0, i64 %597, !dbg !1515
  store i8 %592, i8* %601, align 1, !dbg !1515, !tbaa !1116
  br label %602, !dbg !1515

; <label>:602:                                    ; preds = %600, %589
  %603 = add i64 %597, 1, !dbg !1518
  call void @llvm.dbg.value(metadata i64 %603, metadata !1031, metadata !DIExpression()), !dbg !1094
  %604 = and i8 %591, 1, !dbg !1519
  %605 = icmp eq i8 %604, 0, !dbg !1519
  %606 = select i1 %605, i8 0, i8 %128, !dbg !1521
  call void @llvm.dbg.value(metadata i8 %606, metadata !1040, metadata !DIExpression()), !dbg !1104
  br label %607, !dbg !1522

; <label>:607:                                    ; preds = %602, %207
  %608 = phi i64 [ %596, %602 ], [ %122, %207 ], !dbg !1475
  %609 = phi i64 [ %603, %602 ], [ %123, %207 ], !dbg !1154
  %610 = phi i64 [ %595, %602 ], [ %124, %207 ], !dbg !1095
  %611 = phi i64 [ %594, %602 ], [ %154, %207 ], !dbg !1463
  %612 = phi i8 [ %598, %602 ], [ %126, %207 ], !dbg !1102
  %613 = phi i8 [ %593, %602 ], [ %127, %207 ], !dbg !1154
  %614 = phi i8 [ %606, %602 ], [ %128, %207 ], !dbg !1104
  %615 = phi i64 [ %590, %602 ], [ %129, %207 ]
  call void @llvm.dbg.value(metadata i64 %615, metadata !1022, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i8 %614, metadata !1040, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i8 %613, metadata !1039, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i8 %612, metadata !1038, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i64 %611, metadata !1024, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i64 %610, metadata !1032, metadata !DIExpression()), !dbg !1095
  call void @llvm.dbg.value(metadata i64 %609, metadata !1031, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %608, metadata !1030, metadata !DIExpression()), !dbg !1155
  %616 = add i64 %608, 1, !dbg !1523
  call void @llvm.dbg.value(metadata i64 %616, metadata !1030, metadata !DIExpression()), !dbg !1155
  br label %121, !dbg !1524, !llvm.loop !1525

; <label>:617:                                    ; preds = %131, %135
  %618 = phi i64 [ -1, %131 ], [ %122, %135 ]
  call void @llvm.dbg.value(metadata i64 %123, metadata !1031, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %123, metadata !1031, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %124, metadata !1032, metadata !DIExpression()), !dbg !1095
  call void @llvm.dbg.value(metadata i64 %124, metadata !1032, metadata !DIExpression()), !dbg !1095
  call void @llvm.dbg.value(metadata i8 %126, metadata !1038, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i8 %126, metadata !1038, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i8 %127, metadata !1039, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i8 %127, metadata !1039, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i8 %128, metadata !1040, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i8 %128, metadata !1040, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %129, metadata !1022, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i64 %129, metadata !1022, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i64 %123, metadata !1031, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %123, metadata !1031, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %124, metadata !1032, metadata !DIExpression()), !dbg !1095
  call void @llvm.dbg.value(metadata i64 %124, metadata !1032, metadata !DIExpression()), !dbg !1095
  call void @llvm.dbg.value(metadata i8 %126, metadata !1038, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i8 %126, metadata !1038, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i8 %127, metadata !1039, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i8 %127, metadata !1039, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i8 %128, metadata !1040, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i8 %128, metadata !1040, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %129, metadata !1022, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i64 %129, metadata !1022, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i64 %123, metadata !1031, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %123, metadata !1031, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %124, metadata !1032, metadata !DIExpression()), !dbg !1095
  call void @llvm.dbg.value(metadata i64 %124, metadata !1032, metadata !DIExpression()), !dbg !1095
  call void @llvm.dbg.value(metadata i8 %126, metadata !1038, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i8 %126, metadata !1038, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i8 %127, metadata !1039, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i8 %127, metadata !1039, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i8 %128, metadata !1040, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i8 %128, metadata !1040, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %129, metadata !1022, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i64 %129, metadata !1022, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i64 %123, metadata !1031, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %123, metadata !1031, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %124, metadata !1032, metadata !DIExpression()), !dbg !1095
  call void @llvm.dbg.value(metadata i64 %124, metadata !1032, metadata !DIExpression()), !dbg !1095
  call void @llvm.dbg.value(metadata i8 %126, metadata !1038, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i8 %126, metadata !1038, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i8 %127, metadata !1039, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i8 %127, metadata !1039, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i8 %128, metadata !1040, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i8 %128, metadata !1040, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %129, metadata !1022, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i64 %129, metadata !1022, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i64 %123, metadata !1031, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %123, metadata !1031, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %124, metadata !1032, metadata !DIExpression()), !dbg !1095
  call void @llvm.dbg.value(metadata i64 %124, metadata !1032, metadata !DIExpression()), !dbg !1095
  call void @llvm.dbg.value(metadata i64 %618, metadata !1024, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i64 %618, metadata !1024, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i8 %126, metadata !1038, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i8 %126, metadata !1038, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i8 %127, metadata !1039, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i8 %127, metadata !1039, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i8 %128, metadata !1040, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i8 %128, metadata !1040, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %129, metadata !1022, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i64 %129, metadata !1022, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i64 %123, metadata !1031, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %123, metadata !1031, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %124, metadata !1032, metadata !DIExpression()), !dbg !1095
  call void @llvm.dbg.value(metadata i64 %124, metadata !1032, metadata !DIExpression()), !dbg !1095
  call void @llvm.dbg.value(metadata i64 %125, metadata !1024, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i64 %125, metadata !1024, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i8 %126, metadata !1038, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i8 %126, metadata !1038, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i8 %127, metadata !1039, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i8 %127, metadata !1039, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i8 %128, metadata !1040, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i8 %128, metadata !1040, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %129, metadata !1022, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i64 %129, metadata !1022, metadata !DIExpression()), !dbg !1086
  %619 = icmp eq i64 %123, 0, !dbg !1527
  %620 = and i1 %114, %619, !dbg !1529
  %621 = xor i1 %620, true, !dbg !1529
  %622 = or i1 %110, %621, !dbg !1529
  br i1 %622, label %623, label %661, !dbg !1529

; <label>:623:                                    ; preds = %617
  %624 = and i1 %114, %110, !dbg !1530
  %625 = xor i1 %624, true, !dbg !1530
  %626 = and i8 %127, 1, !dbg !1532
  %627 = icmp eq i8 %626, 0, !dbg !1532
  %628 = or i1 %627, %625, !dbg !1530
  br i1 %628, label %638, label %629, !dbg !1530

; <label>:629:                                    ; preds = %623
  %630 = and i8 %128, 1, !dbg !1533
  %631 = icmp eq i8 %630, 0, !dbg !1533
  br i1 %631, label %634, label %632, !dbg !1536

; <label>:632:                                    ; preds = %629
  call void @llvm.dbg.value(metadata i64 %618, metadata !1024, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i8* %95, metadata !1028, metadata !DIExpression()), !dbg !1092
  call void @llvm.dbg.value(metadata i8* %96, metadata !1029, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata i64 %124, metadata !1032, metadata !DIExpression()), !dbg !1095
  call void @llvm.dbg.value(metadata i64 %618, metadata !1024, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i8* %95, metadata !1028, metadata !DIExpression()), !dbg !1092
  call void @llvm.dbg.value(metadata i8* %96, metadata !1029, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata i64 %124, metadata !1032, metadata !DIExpression()), !dbg !1095
  call void @llvm.dbg.value(metadata i64 %618, metadata !1024, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i8* %95, metadata !1028, metadata !DIExpression()), !dbg !1092
  call void @llvm.dbg.value(metadata i8* %96, metadata !1029, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata i64 %124, metadata !1032, metadata !DIExpression()), !dbg !1095
  call void @llvm.dbg.value(metadata i64 %618, metadata !1024, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i8* %95, metadata !1028, metadata !DIExpression()), !dbg !1092
  call void @llvm.dbg.value(metadata i8* %96, metadata !1029, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata i64 %124, metadata !1032, metadata !DIExpression()), !dbg !1095
  call void @llvm.dbg.value(metadata i8* %95, metadata !1028, metadata !DIExpression()), !dbg !1092
  call void @llvm.dbg.value(metadata i8* %96, metadata !1029, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata i64 %124, metadata !1032, metadata !DIExpression()), !dbg !1095
  call void @llvm.dbg.value(metadata i64 %618, metadata !1024, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i8* %95, metadata !1028, metadata !DIExpression()), !dbg !1092
  call void @llvm.dbg.value(metadata i8* %96, metadata !1029, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata i64 %124, metadata !1032, metadata !DIExpression()), !dbg !1095
  call void @llvm.dbg.value(metadata i64 %125, metadata !1024, metadata !DIExpression()), !dbg !1088
  %633 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %618, i32 5, i32 %5, i32* %6, i8* %95, i8* %96), !dbg !1537
  br label %671, !dbg !1538

; <label>:634:                                    ; preds = %629
  %635 = icmp eq i64 %129, 0, !dbg !1539
  %636 = icmp ne i64 %124, 0, !dbg !1541
  %637 = and i1 %636, %635, !dbg !1542
  br i1 %637, label %27, label %638, !dbg !1542

; <label>:638:                                    ; preds = %623, %634
  call void @llvm.dbg.value(metadata i8* %98, metadata !1033, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i8* %98, metadata !1033, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %123, metadata !1031, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %123, metadata !1031, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %129, metadata !1022, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i64 %129, metadata !1022, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i8* %98, metadata !1033, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i8* %98, metadata !1033, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %123, metadata !1031, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %123, metadata !1031, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %129, metadata !1022, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i64 %129, metadata !1022, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i8* %98, metadata !1033, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i8* %98, metadata !1033, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %123, metadata !1031, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %123, metadata !1031, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %129, metadata !1022, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i64 %129, metadata !1022, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i8* %98, metadata !1033, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i8* %98, metadata !1033, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %123, metadata !1031, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %123, metadata !1031, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %129, metadata !1022, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i64 %129, metadata !1022, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i8* %98, metadata !1033, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i8* %98, metadata !1033, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %123, metadata !1031, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %123, metadata !1031, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %129, metadata !1022, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i64 %129, metadata !1022, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i8* %98, metadata !1033, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i8* %98, metadata !1033, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %123, metadata !1031, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %123, metadata !1031, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %129, metadata !1022, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i64 %129, metadata !1022, metadata !DIExpression()), !dbg !1086
  %639 = icmp ne i8* %98, null, !dbg !1543
  %640 = and i1 %639, %110, !dbg !1545
  br i1 %640, label %641, label %656, !dbg !1545

; <label>:641:                                    ; preds = %638
  call void @llvm.dbg.value(metadata i8* %98, metadata !1033, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %123, metadata !1031, metadata !DIExpression()), !dbg !1094
  %642 = load i8, i8* %98, align 1, !dbg !1546, !tbaa !1116
  %643 = icmp eq i8 %642, 0, !dbg !1549
  br i1 %643, label %656, label %644, !dbg !1549

; <label>:644:                                    ; preds = %641, %651
  %645 = phi i8 [ %654, %651 ], [ %642, %641 ]
  %646 = phi i8* [ %653, %651 ], [ %98, %641 ]
  %647 = phi i64 [ %652, %651 ], [ %123, %641 ]
  call void @llvm.dbg.value(metadata i8* %646, metadata !1033, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %647, metadata !1031, metadata !DIExpression()), !dbg !1094
  %648 = icmp ult i64 %647, %129, !dbg !1550
  br i1 %648, label %649, label %651, !dbg !1553

; <label>:649:                                    ; preds = %644
  %650 = getelementptr inbounds i8, i8* %0, i64 %647, !dbg !1550
  store i8 %645, i8* %650, align 1, !dbg !1550, !tbaa !1116
  br label %651, !dbg !1550

; <label>:651:                                    ; preds = %649, %644
  %652 = add i64 %647, 1, !dbg !1553
  %653 = getelementptr inbounds i8, i8* %646, i64 1, !dbg !1554
  call void @llvm.dbg.value(metadata i8* %653, metadata !1033, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %652, metadata !1031, metadata !DIExpression()), !dbg !1094
  %654 = load i8, i8* %653, align 1, !dbg !1546, !tbaa !1116
  %655 = icmp eq i8 %654, 0, !dbg !1549
  br i1 %655, label %656, label %644, !dbg !1549, !llvm.loop !1555

; <label>:656:                                    ; preds = %651, %641, %638
  %657 = phi i64 [ %123, %638 ], [ %123, %641 ], [ %652, %651 ], !dbg !1094
  call void @llvm.dbg.value(metadata i64 %657, metadata !1031, metadata !DIExpression()), !dbg !1094
  %658 = icmp ult i64 %657, %129, !dbg !1557
  br i1 %658, label %659, label %671, !dbg !1559

; <label>:659:                                    ; preds = %656
  %660 = getelementptr inbounds i8, i8* %0, i64 %657, !dbg !1560
  store i8 0, i8* %660, align 1, !dbg !1561, !tbaa !1116
  br label %671, !dbg !1560

; <label>:661:                                    ; preds = %617, %524, %274, %271, %253, %251, %223, %209, %159, %146, %377, %358
  %662 = phi i32 [ 2, %358 ], [ %94, %377 ], [ %94, %146 ], [ %94, %159 ], [ 2, %209 ], [ 5, %223 ], [ 2, %251 ], [ 2, %253 ], [ 2, %271 ], [ 2, %274 ], [ %94, %524 ], [ %94, %617 ]
  %663 = phi i64 [ %311, %358 ], [ %360, %377 ], [ %144, %146 ], [ %154, %159 ], [ %154, %209 ], [ %154, %223 ], [ %154, %251 ], [ %154, %253 ], [ %154, %271 ], [ %154, %274 ], [ %528, %524 ], [ %618, %617 ]
  %664 = phi i64 [ %129, %358 ], [ %129, %377 ], [ %129, %146 ], [ %129, %159 ], [ %129, %209 ], [ %129, %223 ], [ %129, %251 ], [ %129, %253 ], [ %129, %271 ], [ %129, %274 ], [ %533, %524 ], [ %129, %617 ]
  call void @llvm.dbg.value(metadata i64 %664, metadata !1022, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i64 %663, metadata !1024, metadata !DIExpression()), !dbg !1088
  %665 = icmp ne i32 %662, 2, !dbg !1562
  %666 = icmp eq i8 %102, 0, !dbg !1564
  %667 = or i1 %665, %666, !dbg !1565
  call void @llvm.dbg.value(metadata i32 4, metadata !1025, metadata !DIExpression()), !dbg !1089
  %668 = select i1 %667, i32 %662, i32 4, !dbg !1565
  call void @llvm.dbg.value(metadata i32 %668, metadata !1025, metadata !DIExpression()), !dbg !1089
  %669 = and i32 %5, -3, !dbg !1566
  %670 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %664, i8* %2, i64 %663, i32 %668, i32 %669, i32* null, i8* %95, i8* %96), !dbg !1567
  br label %671, !dbg !1568

; <label>:671:                                    ; preds = %656, %659, %661, %632
  %672 = phi i64 [ %670, %661 ], [ %633, %632 ], [ %657, %659 ], [ %657, %656 ]
  ret i64 %672, !dbg !1569
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #7 !dbg !1570 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1574, metadata !DIExpression()), !dbg !1578
  call void @llvm.dbg.value(metadata i32 %1, metadata !1575, metadata !DIExpression()), !dbg !1579
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #10, !dbg !1580
  call void @llvm.dbg.value(metadata i8* %3, metadata !1576, metadata !DIExpression()), !dbg !1581
  %4 = icmp eq i8* %3, %0, !dbg !1582
  br i1 %4, label %5, label %71, !dbg !1584

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #10, !dbg !1585
  call void @llvm.dbg.value(metadata i8* %6, metadata !1577, metadata !DIExpression()), !dbg !1586
  call void @llvm.dbg.value(metadata i8* %6, metadata !1587, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i8* null, metadata !1593, metadata !DIExpression()), !dbg !1606
  call void @llvm.dbg.value(metadata i8 85, metadata !1594, metadata !DIExpression()), !dbg !1607
  call void @llvm.dbg.value(metadata i8 84, metadata !1595, metadata !DIExpression()), !dbg !1608
  call void @llvm.dbg.value(metadata i8 70, metadata !1596, metadata !DIExpression()), !dbg !1609
  call void @llvm.dbg.value(metadata i8 45, metadata !1597, metadata !DIExpression()), !dbg !1610
  call void @llvm.dbg.value(metadata i8 56, metadata !1598, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8 0, metadata !1599, metadata !DIExpression()), !dbg !1612
  call void @llvm.dbg.value(metadata i8 0, metadata !1600, metadata !DIExpression()), !dbg !1613
  call void @llvm.dbg.value(metadata i8 0, metadata !1601, metadata !DIExpression()), !dbg !1614
  call void @llvm.dbg.value(metadata i8 0, metadata !1602, metadata !DIExpression()), !dbg !1615
  %7 = load i8, i8* %6, align 1, !dbg !1616, !tbaa !1116
  %8 = and i8 %7, -33, !dbg !1616
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !1616

; <label>:9:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1618, metadata !DIExpression()), !dbg !1632
  call void @llvm.dbg.value(metadata i8* null, metadata !1623, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i8 84, metadata !1624, metadata !DIExpression()), !dbg !1637
  call void @llvm.dbg.value(metadata i8 70, metadata !1625, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 45, metadata !1626, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.value(metadata i8 56, metadata !1627, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata i8 0, metadata !1628, metadata !DIExpression()), !dbg !1641
  call void @llvm.dbg.value(metadata i8 0, metadata !1629, metadata !DIExpression()), !dbg !1642
  call void @llvm.dbg.value(metadata i8 0, metadata !1630, metadata !DIExpression()), !dbg !1643
  call void @llvm.dbg.value(metadata i8 0, metadata !1631, metadata !DIExpression()), !dbg !1644
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1645
  %11 = load i8, i8* %10, align 1, !dbg !1645, !tbaa !1116
  %12 = and i8 %11, -33, !dbg !1645
  %13 = icmp eq i8 %12, 84, !dbg !1645
  br i1 %13, label %14, label %68, !dbg !1645

; <label>:14:                                     ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !1647, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i8* null, metadata !1652, metadata !DIExpression()), !dbg !1664
  call void @llvm.dbg.value(metadata i8 70, metadata !1653, metadata !DIExpression()), !dbg !1665
  call void @llvm.dbg.value(metadata i8 45, metadata !1654, metadata !DIExpression()), !dbg !1666
  call void @llvm.dbg.value(metadata i8 56, metadata !1655, metadata !DIExpression()), !dbg !1667
  call void @llvm.dbg.value(metadata i8 0, metadata !1656, metadata !DIExpression()), !dbg !1668
  call void @llvm.dbg.value(metadata i8 0, metadata !1657, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i8 0, metadata !1658, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata i8 0, metadata !1659, metadata !DIExpression()), !dbg !1671
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1672
  %16 = load i8, i8* %15, align 1, !dbg !1672, !tbaa !1116
  %17 = and i8 %16, -33, !dbg !1672
  %18 = icmp eq i8 %17, 70, !dbg !1672
  br i1 %18, label %19, label %68, !dbg !1672

; <label>:19:                                     ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !1674, metadata !DIExpression()), !dbg !1686
  call void @llvm.dbg.value(metadata i8* null, metadata !1679, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.value(metadata i8 45, metadata !1680, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i8 56, metadata !1681, metadata !DIExpression()), !dbg !1692
  call void @llvm.dbg.value(metadata i8 0, metadata !1682, metadata !DIExpression()), !dbg !1693
  call void @llvm.dbg.value(metadata i8 0, metadata !1683, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata i8 0, metadata !1684, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata i8 0, metadata !1685, metadata !DIExpression()), !dbg !1696
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1697
  %21 = load i8, i8* %20, align 1, !dbg !1697, !tbaa !1116
  %22 = icmp eq i8 %21, 45, !dbg !1697
  br i1 %22, label %23, label %68, !dbg !1699

; <label>:23:                                     ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !1700, metadata !DIExpression()), !dbg !1711
  call void @llvm.dbg.value(metadata i8* null, metadata !1705, metadata !DIExpression()), !dbg !1715
  call void @llvm.dbg.value(metadata i8 56, metadata !1706, metadata !DIExpression()), !dbg !1716
  call void @llvm.dbg.value(metadata i8 0, metadata !1707, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i8 0, metadata !1708, metadata !DIExpression()), !dbg !1718
  call void @llvm.dbg.value(metadata i8 0, metadata !1709, metadata !DIExpression()), !dbg !1719
  call void @llvm.dbg.value(metadata i8 0, metadata !1710, metadata !DIExpression()), !dbg !1720
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1721
  %25 = load i8, i8* %24, align 1, !dbg !1721, !tbaa !1116
  %26 = icmp eq i8 %25, 56, !dbg !1721
  br i1 %26, label %27, label %68, !dbg !1723

; <label>:27:                                     ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !1724, metadata !DIExpression()), !dbg !1734
  call void @llvm.dbg.value(metadata i8* null, metadata !1729, metadata !DIExpression()), !dbg !1738
  call void @llvm.dbg.value(metadata i8 0, metadata !1730, metadata !DIExpression()), !dbg !1739
  call void @llvm.dbg.value(metadata i8 0, metadata !1731, metadata !DIExpression()), !dbg !1740
  call void @llvm.dbg.value(metadata i8 0, metadata !1732, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.value(metadata i8 0, metadata !1733, metadata !DIExpression()), !dbg !1742
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1743
  %29 = load i8, i8* %28, align 1, !dbg !1743, !tbaa !1116
  %30 = icmp eq i8 %29, 0, !dbg !1743
  br i1 %30, label %31, label %68, !dbg !1745

; <label>:31:                                     ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !1746, !tbaa !1116
  %33 = icmp eq i8 %32, 96, !dbg !1747
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.62, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.63, i64 0, i64 0), !dbg !1746
  br label %71, !dbg !1748

; <label>:35:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1618, metadata !DIExpression()), !dbg !1749
  call void @llvm.dbg.value(metadata i8* null, metadata !1623, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata i8 66, metadata !1624, metadata !DIExpression()), !dbg !1754
  call void @llvm.dbg.value(metadata i8 49, metadata !1625, metadata !DIExpression()), !dbg !1755
  call void @llvm.dbg.value(metadata i8 56, metadata !1626, metadata !DIExpression()), !dbg !1756
  call void @llvm.dbg.value(metadata i8 48, metadata !1627, metadata !DIExpression()), !dbg !1757
  call void @llvm.dbg.value(metadata i8 51, metadata !1628, metadata !DIExpression()), !dbg !1758
  call void @llvm.dbg.value(metadata i8 48, metadata !1629, metadata !DIExpression()), !dbg !1759
  call void @llvm.dbg.value(metadata i8 0, metadata !1630, metadata !DIExpression()), !dbg !1760
  call void @llvm.dbg.value(metadata i8 0, metadata !1631, metadata !DIExpression()), !dbg !1761
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1762
  %37 = load i8, i8* %36, align 1, !dbg !1762, !tbaa !1116
  %38 = and i8 %37, -33, !dbg !1762
  %39 = icmp eq i8 %38, 66, !dbg !1762
  br i1 %39, label %40, label %68, !dbg !1762

; <label>:40:                                     ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !1647, metadata !DIExpression()), !dbg !1763
  call void @llvm.dbg.value(metadata i8* null, metadata !1652, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 49, metadata !1653, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 56, metadata !1654, metadata !DIExpression()), !dbg !1767
  call void @llvm.dbg.value(metadata i8 48, metadata !1655, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i8 51, metadata !1656, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.value(metadata i8 48, metadata !1657, metadata !DIExpression()), !dbg !1770
  call void @llvm.dbg.value(metadata i8 0, metadata !1658, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i8 0, metadata !1659, metadata !DIExpression()), !dbg !1772
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1773
  %42 = load i8, i8* %41, align 1, !dbg !1773, !tbaa !1116
  %43 = icmp eq i8 %42, 49, !dbg !1773
  br i1 %43, label %44, label %68, !dbg !1774

; <label>:44:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !1674, metadata !DIExpression()), !dbg !1775
  call void @llvm.dbg.value(metadata i8* null, metadata !1679, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata i8 56, metadata !1680, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i8 48, metadata !1681, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i8 51, metadata !1682, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i8 48, metadata !1683, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata i8 0, metadata !1684, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i8 0, metadata !1685, metadata !DIExpression()), !dbg !1783
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1784
  %46 = load i8, i8* %45, align 1, !dbg !1784, !tbaa !1116
  %47 = icmp eq i8 %46, 56, !dbg !1784
  br i1 %47, label %48, label %68, !dbg !1785

; <label>:48:                                     ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !1700, metadata !DIExpression()), !dbg !1786
  call void @llvm.dbg.value(metadata i8* null, metadata !1705, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i8 48, metadata !1706, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata i8 51, metadata !1707, metadata !DIExpression()), !dbg !1790
  call void @llvm.dbg.value(metadata i8 48, metadata !1708, metadata !DIExpression()), !dbg !1791
  call void @llvm.dbg.value(metadata i8 0, metadata !1709, metadata !DIExpression()), !dbg !1792
  call void @llvm.dbg.value(metadata i8 0, metadata !1710, metadata !DIExpression()), !dbg !1793
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1794
  %50 = load i8, i8* %49, align 1, !dbg !1794, !tbaa !1116
  %51 = icmp eq i8 %50, 48, !dbg !1794
  br i1 %51, label %52, label %68, !dbg !1795

; <label>:52:                                     ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !1724, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i8* null, metadata !1729, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 51, metadata !1730, metadata !DIExpression()), !dbg !1799
  call void @llvm.dbg.value(metadata i8 48, metadata !1731, metadata !DIExpression()), !dbg !1800
  call void @llvm.dbg.value(metadata i8 0, metadata !1732, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i8 0, metadata !1733, metadata !DIExpression()), !dbg !1802
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1803
  %54 = load i8, i8* %53, align 1, !dbg !1803, !tbaa !1116
  %55 = icmp eq i8 %54, 51, !dbg !1803
  br i1 %55, label %56, label %68, !dbg !1804

; <label>:56:                                     ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !1805, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i8* null, metadata !1810, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8 48, metadata !1811, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata i8 0, metadata !1812, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.value(metadata i8 0, metadata !1813, metadata !DIExpression()), !dbg !1821
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !1822
  %58 = load i8, i8* %57, align 1, !dbg !1822, !tbaa !1116
  %59 = icmp eq i8 %58, 48, !dbg !1822
  br i1 %59, label %60, label %68, !dbg !1824

; <label>:60:                                     ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !1825, metadata !DIExpression()), !dbg !1833
  call void @llvm.dbg.value(metadata i8* null, metadata !1830, metadata !DIExpression()), !dbg !1837
  call void @llvm.dbg.value(metadata i8 0, metadata !1831, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 0, metadata !1832, metadata !DIExpression()), !dbg !1839
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !1840
  %62 = load i8, i8* %61, align 1, !dbg !1840, !tbaa !1116
  %63 = icmp eq i8 %62, 0, !dbg !1840
  br i1 %63, label %64, label %68, !dbg !1842

; <label>:64:                                     ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !1843, !tbaa !1116
  %66 = icmp eq i8 %65, 96, !dbg !1844
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.64, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.65, i64 0, i64 0), !dbg !1843
  br label %71, !dbg !1845

; <label>:68:                                     ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !1846
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.61, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.60, i64 0, i64 0), !dbg !1847
  br label %71, !dbg !1848

; <label>:71:                                     ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !1849
  ret i8* %72, !dbg !1850
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
define dso_local i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #7 !dbg !1851 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1855, metadata !DIExpression()), !dbg !1858
  call void @llvm.dbg.value(metadata i64 %1, metadata !1856, metadata !DIExpression()), !dbg !1859
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1857, metadata !DIExpression()), !dbg !1860
  call void @llvm.dbg.value(metadata i8* %0, metadata !1861, metadata !DIExpression()) #10, !dbg !1874
  call void @llvm.dbg.value(metadata i64 %1, metadata !1866, metadata !DIExpression()) #10, !dbg !1876
  call void @llvm.dbg.value(metadata i64* null, metadata !1867, metadata !DIExpression()) #10, !dbg !1877
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1868, metadata !DIExpression()) #10, !dbg !1878
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !1879
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !1879
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1869, metadata !DIExpression()) #10, !dbg !1880
  %6 = tail call i32* @__errno_location() #17, !dbg !1881
  %7 = load i32, i32* %6, align 4, !dbg !1881, !tbaa !703
  call void @llvm.dbg.value(metadata i32 %7, metadata !1870, metadata !DIExpression()) #10, !dbg !1882
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !1883
  %9 = load i32, i32* %8, align 4, !dbg !1883, !tbaa !954
  %10 = or i32 %9, 1, !dbg !1884
  call void @llvm.dbg.value(metadata i32 %10, metadata !1871, metadata !DIExpression()) #10, !dbg !1885
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1886
  %12 = load i32, i32* %11, align 8, !dbg !1886, !tbaa !894
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !1887
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1888
  %15 = load i8*, i8** %14, align 8, !dbg !1888, !tbaa !980
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1889
  %17 = load i8*, i8** %16, align 8, !dbg !1889, !tbaa !983
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #10, !dbg !1890
  %19 = add i64 %18, 1, !dbg !1891
  call void @llvm.dbg.value(metadata i64 %19, metadata !1872, metadata !DIExpression()) #10, !dbg !1892
  call void @llvm.dbg.value(metadata i64 %19, metadata !1893, metadata !DIExpression()) #10, !dbg !1898
  %20 = tail call noalias i8* @xmalloc(i64 %19) #10, !dbg !1900
  call void @llvm.dbg.value(metadata i8* %20, metadata !1873, metadata !DIExpression()) #10, !dbg !1901
  %21 = load i32, i32* %11, align 8, !dbg !1902, !tbaa !894
  %22 = load i8*, i8** %14, align 8, !dbg !1903, !tbaa !980
  %23 = load i8*, i8** %16, align 8, !dbg !1904, !tbaa !983
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #10, !dbg !1905
  store i32 %7, i32* %6, align 4, !dbg !1906, !tbaa !703
  ret i8* %20, !dbg !1907
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #7 !dbg !1862 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1861, metadata !DIExpression()), !dbg !1908
  call void @llvm.dbg.value(metadata i64 %1, metadata !1866, metadata !DIExpression()), !dbg !1909
  call void @llvm.dbg.value(metadata i64* %2, metadata !1867, metadata !DIExpression()), !dbg !1910
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1868, metadata !DIExpression()), !dbg !1911
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !1912
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !1912
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1869, metadata !DIExpression()), !dbg !1913
  %7 = tail call i32* @__errno_location() #17, !dbg !1914
  %8 = load i32, i32* %7, align 4, !dbg !1914, !tbaa !703
  call void @llvm.dbg.value(metadata i32 %8, metadata !1870, metadata !DIExpression()), !dbg !1915
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !1916
  %10 = load i32, i32* %9, align 4, !dbg !1916, !tbaa !954
  %11 = icmp ne i64* %2, null, !dbg !1917
  %12 = xor i1 %11, true, !dbg !1917
  %13 = zext i1 %12 to i32, !dbg !1917
  %14 = or i32 %10, %13, !dbg !1918
  call void @llvm.dbg.value(metadata i32 %14, metadata !1871, metadata !DIExpression()), !dbg !1919
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !1920
  %16 = load i32, i32* %15, align 8, !dbg !1920, !tbaa !894
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !1921
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !1922
  %19 = load i8*, i8** %18, align 8, !dbg !1922, !tbaa !980
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !1923
  %21 = load i8*, i8** %20, align 8, !dbg !1923, !tbaa !983
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !1924
  %23 = add i64 %22, 1, !dbg !1925
  call void @llvm.dbg.value(metadata i64 %23, metadata !1872, metadata !DIExpression()), !dbg !1926
  call void @llvm.dbg.value(metadata i64 %23, metadata !1893, metadata !DIExpression()) #10, !dbg !1927
  %24 = tail call noalias i8* @xmalloc(i64 %23) #10, !dbg !1929
  call void @llvm.dbg.value(metadata i8* %24, metadata !1873, metadata !DIExpression()), !dbg !1930
  %25 = load i32, i32* %15, align 8, !dbg !1931, !tbaa !894
  %26 = load i8*, i8** %18, align 8, !dbg !1932, !tbaa !980
  %27 = load i8*, i8** %20, align 8, !dbg !1933, !tbaa !983
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !1934
  store i32 %8, i32* %7, align 4, !dbg !1935, !tbaa !703
  br i1 %11, label %29, label %30, !dbg !1936

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !1937, !tbaa !1939
  br label %30, !dbg !1941

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !1942
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #7 !dbg !1943 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !1947, !tbaa !635
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !1945, metadata !DIExpression()), !dbg !1948
  call void @llvm.dbg.value(metadata i32 1, metadata !1946, metadata !DIExpression()), !dbg !1949
  %2 = load i32, i32* @nslots, align 4, !dbg !1950, !tbaa !703
  %3 = icmp sgt i32 %2, 1, !dbg !1953
  br i1 %3, label %4, label %12, !dbg !1954

; <label>:4:                                      ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !1946, metadata !DIExpression()), !dbg !1949
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !1955
  %7 = load i8*, i8** %6, align 8, !dbg !1955, !tbaa !1956
  tail call void @free(i8* %7) #10, !dbg !1958
  %8 = add nuw nsw i64 %5, 1, !dbg !1959
  call void @llvm.dbg.value(metadata i32 undef, metadata !1946, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1949
  %9 = load i32, i32* @nslots, align 4, !dbg !1950, !tbaa !703
  %10 = sext i32 %9 to i64, !dbg !1953
  %11 = icmp slt i64 %8, %10, !dbg !1953
  br i1 %11, label %4, label %12, !dbg !1954, !llvm.loop !1960

; <label>:12:                                     ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !1962
  %14 = load i8*, i8** %13, align 8, !dbg !1962, !tbaa !1956
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !1964
  br i1 %15, label %17, label %16, !dbg !1965

; <label>:16:                                     ; preds = %12
  tail call void @free(i8* %14) #10, !dbg !1966
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !1968, !tbaa !1969
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !1970, !tbaa !1956
  br label %17, !dbg !1971

; <label>:17:                                     ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !1972
  br i1 %18, label %21, label %19, !dbg !1974

; <label>:19:                                     ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !1975
  tail call void @free(i8* %20) #10, !dbg !1977
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !1978, !tbaa !635
  br label %21, !dbg !1979

; <label>:21:                                     ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !1980, !tbaa !703
  ret void, !dbg !1981
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32, i8*) local_unnamed_addr #7 !dbg !1982 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1986, metadata !DIExpression()), !dbg !1988
  call void @llvm.dbg.value(metadata i8* %1, metadata !1987, metadata !DIExpression()), !dbg !1989
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !1990
  ret i8* %3, !dbg !1991
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #7 !dbg !1992 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1996, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.value(metadata i8* %1, metadata !1997, metadata !DIExpression()), !dbg !2012
  call void @llvm.dbg.value(metadata i64 %2, metadata !1998, metadata !DIExpression()), !dbg !2013
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1999, metadata !DIExpression()), !dbg !2014
  %5 = tail call i32* @__errno_location() #17, !dbg !2015
  %6 = load i32, i32* %5, align 4, !dbg !2015, !tbaa !703
  call void @llvm.dbg.value(metadata i32 %6, metadata !2000, metadata !DIExpression()), !dbg !2016
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2017, !tbaa !635
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2001, metadata !DIExpression()), !dbg !2018
  %8 = icmp slt i32 %0, 0, !dbg !2019
  br i1 %8, label %9, label %10, !dbg !2021

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2022
  unreachable, !dbg !2022

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2023, !tbaa !703
  %12 = icmp sgt i32 %11, %0, !dbg !2024
  br i1 %12, label %34, label %13, !dbg !2025

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2026
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2005, metadata !DIExpression()), !dbg !2027
  %15 = icmp eq i32 %0, 2147483647, !dbg !2028
  br i1 %15, label %16, label %17, !dbg !2030

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2031
  unreachable, !dbg !2031

; <label>:17:                                     ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2032
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2032
  %20 = add nsw i32 %0, 1, !dbg !2033
  %21 = sext i32 %20 to i64, !dbg !2034
  %22 = shl nsw i64 %21, 4, !dbg !2035
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #10, !dbg !2036
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2036
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2001, metadata !DIExpression()), !dbg !2018
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2037, !tbaa !635
  br i1 %14, label %25, label %26, !dbg !2038

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2039, !tbaa.struct !2041
  br label %26, !dbg !2042

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2043, !tbaa !703
  %28 = sext i32 %27 to i64, !dbg !2044
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2044
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2045
  %31 = sub nsw i32 %20, %27, !dbg !2046
  %32 = sext i32 %31 to i64, !dbg !2047
  %33 = shl nsw i64 %32, 4, !dbg !2048
  tail call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 %33, i1 false), !dbg !2045
  store i32 %20, i32* @nslots, align 4, !dbg !2049, !tbaa !703
  br label %34, !dbg !2050

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2051
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2001, metadata !DIExpression()), !dbg !2018
  %36 = sext i32 %0 to i64, !dbg !2052
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2053
  %38 = load i64, i64* %37, align 8, !dbg !2053, !tbaa !1969
  call void @llvm.dbg.value(metadata i64 %38, metadata !2006, metadata !DIExpression()), !dbg !2054
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2055
  %40 = load i8*, i8** %39, align 8, !dbg !2055, !tbaa !1956
  call void @llvm.dbg.value(metadata i8* %40, metadata !2008, metadata !DIExpression()), !dbg !2056
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2057
  %42 = load i32, i32* %41, align 4, !dbg !2057, !tbaa !954
  %43 = or i32 %42, 1, !dbg !2058
  call void @llvm.dbg.value(metadata i32 %43, metadata !2009, metadata !DIExpression()), !dbg !2059
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2060
  %45 = load i32, i32* %44, align 8, !dbg !2060, !tbaa !894
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2061
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2062
  %48 = load i8*, i8** %47, align 8, !dbg !2062, !tbaa !980
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2063
  %50 = load i8*, i8** %49, align 8, !dbg !2063, !tbaa !983
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2064
  call void @llvm.dbg.value(metadata i64 %51, metadata !2010, metadata !DIExpression()), !dbg !2065
  %52 = icmp ugt i64 %38, %51, !dbg !2066
  br i1 %52, label %63, label %53, !dbg !2068

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2069
  call void @llvm.dbg.value(metadata i64 %54, metadata !2006, metadata !DIExpression()), !dbg !2054
  store i64 %54, i64* %37, align 8, !dbg !2071, !tbaa !1969
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2072
  br i1 %55, label %57, label %56, !dbg !2074

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #10, !dbg !2075
  br label %57, !dbg !2075

; <label>:57:                                     ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !1893, metadata !DIExpression()) #10, !dbg !2076
  %58 = tail call noalias i8* @xmalloc(i64 %54) #10, !dbg !2078
  call void @llvm.dbg.value(metadata i8* %58, metadata !2008, metadata !DIExpression()), !dbg !2056
  store i8* %58, i8** %39, align 8, !dbg !2079, !tbaa !1956
  %59 = load i32, i32* %44, align 8, !dbg !2080, !tbaa !894
  %60 = load i8*, i8** %47, align 8, !dbg !2081, !tbaa !980
  %61 = load i8*, i8** %49, align 8, !dbg !2082, !tbaa !983
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2083
  br label %63, !dbg !2084

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2085
  call void @llvm.dbg.value(metadata i8* %64, metadata !2008, metadata !DIExpression()), !dbg !2056
  store i32 %6, i32* %5, align 4, !dbg !2086, !tbaa !703
  ret i8* %64, !dbg !2087
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2088 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2092, metadata !DIExpression()), !dbg !2095
  call void @llvm.dbg.value(metadata i8* %1, metadata !2093, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.value(metadata i64 %2, metadata !2094, metadata !DIExpression()), !dbg !2097
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2098
  ret i8* %4, !dbg !2099
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8*) local_unnamed_addr #7 !dbg !2100 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2104, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i32 0, metadata !1986, metadata !DIExpression()) #10, !dbg !2106
  call void @llvm.dbg.value(metadata i8* %0, metadata !1987, metadata !DIExpression()) #10, !dbg !2108
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2109
  ret i8* %2, !dbg !2110
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8*, i64) local_unnamed_addr #7 !dbg !2111 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2115, metadata !DIExpression()), !dbg !2117
  call void @llvm.dbg.value(metadata i64 %1, metadata !2116, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i32 0, metadata !2092, metadata !DIExpression()) #10, !dbg !2119
  call void @llvm.dbg.value(metadata i8* %0, metadata !2093, metadata !DIExpression()) #10, !dbg !2121
  call void @llvm.dbg.value(metadata i64 %1, metadata !2094, metadata !DIExpression()) #10, !dbg !2122
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2123
  ret i8* %3, !dbg !2124
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #7 !dbg !2125 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2129, metadata !DIExpression()), !dbg !2133
  call void @llvm.dbg.value(metadata i32 %1, metadata !2130, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* %2, metadata !2131, metadata !DIExpression()), !dbg !2135
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2136
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2136
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2132, metadata !DIExpression(DW_OP_deref)), !dbg !2137
  call void @llvm.dbg.value(metadata i32 %1, metadata !2138, metadata !DIExpression()) #10, !dbg !2144
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #10, !dbg !2146, !alias.scope !2147
  %6 = icmp eq i32 %1, 10, !dbg !2150
  br i1 %6, label %7, label %8, !dbg !2152

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2153, !noalias !2147
  unreachable, !dbg !2153

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2154
  store i32 %1, i32* %9, align 8, !dbg !2155, !tbaa !894, !alias.scope !2147
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2132, metadata !DIExpression(DW_OP_deref)), !dbg !2137
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2143, metadata !DIExpression(DW_OP_deref)), !dbg !2146
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2156
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2157
  ret i8* %10, !dbg !2158
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #7 !dbg !2159 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2163, metadata !DIExpression()), !dbg !2168
  call void @llvm.dbg.value(metadata i32 %1, metadata !2164, metadata !DIExpression()), !dbg !2169
  call void @llvm.dbg.value(metadata i8* %2, metadata !2165, metadata !DIExpression()), !dbg !2170
  call void @llvm.dbg.value(metadata i64 %3, metadata !2166, metadata !DIExpression()), !dbg !2171
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2172
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2172
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2167, metadata !DIExpression(DW_OP_deref)), !dbg !2173
  call void @llvm.dbg.value(metadata i32 %1, metadata !2138, metadata !DIExpression()) #10, !dbg !2174
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %6, i8 0, i64 56, i1 false) #10, !dbg !2176, !alias.scope !2177
  %7 = icmp eq i32 %1, 10, !dbg !2180
  br i1 %7, label %8, label %9, !dbg !2181

; <label>:8:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2182, !noalias !2177
  unreachable, !dbg !2182

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2183
  store i32 %1, i32* %10, align 8, !dbg !2184, !tbaa !894, !alias.scope !2177
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2167, metadata !DIExpression(DW_OP_deref)), !dbg !2173
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2143, metadata !DIExpression(DW_OP_deref)), !dbg !2176
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2185
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2186
  ret i8* %11, !dbg !2187
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32, i8*) local_unnamed_addr #7 !dbg !2188 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2192, metadata !DIExpression()), !dbg !2194
  call void @llvm.dbg.value(metadata i8* %1, metadata !2193, metadata !DIExpression()), !dbg !2195
  call void @llvm.dbg.value(metadata i32 0, metadata !2129, metadata !DIExpression()) #10, !dbg !2196
  call void @llvm.dbg.value(metadata i32 %0, metadata !2130, metadata !DIExpression()) #10, !dbg !2198
  call void @llvm.dbg.value(metadata i8* %1, metadata !2131, metadata !DIExpression()) #10, !dbg !2199
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2200
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2200
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2132, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2201
  call void @llvm.dbg.value(metadata i32 %0, metadata !2138, metadata !DIExpression()) #10, !dbg !2202
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %4, i8 0, i64 56, i1 false) #10, !dbg !2204, !alias.scope !2205
  %5 = icmp eq i32 %0, 10, !dbg !2208
  br i1 %5, label %6, label %7, !dbg !2209

; <label>:6:                                      ; preds = %2
  tail call void @abort() #15, !dbg !2210, !noalias !2205
  unreachable, !dbg !2210

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2211
  store i32 %0, i32* %8, align 8, !dbg !2212, !tbaa !894, !alias.scope !2205
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2132, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2201
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2143, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2204
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !2213
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2214
  ret i8* %9, !dbg !2215
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2216 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2220, metadata !DIExpression()), !dbg !2223
  call void @llvm.dbg.value(metadata i8* %1, metadata !2221, metadata !DIExpression()), !dbg !2224
  call void @llvm.dbg.value(metadata i64 %2, metadata !2222, metadata !DIExpression()), !dbg !2225
  call void @llvm.dbg.value(metadata i32 0, metadata !2163, metadata !DIExpression()) #10, !dbg !2226
  call void @llvm.dbg.value(metadata i32 %0, metadata !2164, metadata !DIExpression()) #10, !dbg !2228
  call void @llvm.dbg.value(metadata i8* %1, metadata !2165, metadata !DIExpression()) #10, !dbg !2229
  call void @llvm.dbg.value(metadata i64 %2, metadata !2166, metadata !DIExpression()) #10, !dbg !2230
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2231
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2231
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2167, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2232
  call void @llvm.dbg.value(metadata i32 %0, metadata !2138, metadata !DIExpression()) #10, !dbg !2233
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #10, !dbg !2235, !alias.scope !2236
  %6 = icmp eq i32 %0, 10, !dbg !2239
  br i1 %6, label %7, label %8, !dbg !2240

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2241, !noalias !2236
  unreachable, !dbg !2241

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2242
  store i32 %0, i32* %9, align 8, !dbg !2243, !tbaa !894, !alias.scope !2236
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2167, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2232
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2143, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2235
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #10, !dbg !2244
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2245
  ret i8* %10, !dbg !2246
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #7 !dbg !2247 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2251, metadata !DIExpression()), !dbg !2255
  call void @llvm.dbg.value(metadata i64 %1, metadata !2252, metadata !DIExpression()), !dbg !2256
  call void @llvm.dbg.value(metadata i8 %2, metadata !2253, metadata !DIExpression()), !dbg !2257
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2258
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2258
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2259, !tbaa.struct !2260
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2254, metadata !DIExpression(DW_OP_deref)), !dbg !2261
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !913, metadata !DIExpression()), !dbg !2262
  call void @llvm.dbg.value(metadata i8 %2, metadata !914, metadata !DIExpression()), !dbg !2264
  call void @llvm.dbg.value(metadata i32 1, metadata !915, metadata !DIExpression()), !dbg !2265
  call void @llvm.dbg.value(metadata i8 %2, metadata !916, metadata !DIExpression()), !dbg !2266
  %6 = lshr i8 %2, 5, !dbg !2267
  %7 = zext i8 %6 to i64, !dbg !2267
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2268
  call void @llvm.dbg.value(metadata i32* %8, metadata !918, metadata !DIExpression()), !dbg !2269
  %9 = and i8 %2, 31, !dbg !2270
  %10 = zext i8 %9 to i32, !dbg !2270
  call void @llvm.dbg.value(metadata i32 %10, metadata !920, metadata !DIExpression()), !dbg !2271
  %11 = load i32, i32* %8, align 4, !dbg !2272, !tbaa !703
  %12 = lshr i32 %11, %10, !dbg !2273
  %13 = and i32 %12, 1, !dbg !2274
  call void @llvm.dbg.value(metadata i32 %13, metadata !921, metadata !DIExpression()), !dbg !2275
  %14 = xor i32 %13, 1, !dbg !2276
  %15 = shl i32 %14, %10, !dbg !2277
  %16 = xor i32 %15, %11, !dbg !2278
  store i32 %16, i32* %8, align 4, !dbg !2278, !tbaa !703
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2254, metadata !DIExpression(DW_OP_deref)), !dbg !2261
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2279
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2280
  ret i8* %17, !dbg !2281
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #7 !dbg !2282 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2286, metadata !DIExpression()), !dbg !2288
  call void @llvm.dbg.value(metadata i8 %1, metadata !2287, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i8* %0, metadata !2251, metadata !DIExpression()) #10, !dbg !2290
  call void @llvm.dbg.value(metadata i64 -1, metadata !2252, metadata !DIExpression()) #10, !dbg !2292
  call void @llvm.dbg.value(metadata i8 %1, metadata !2253, metadata !DIExpression()) #10, !dbg !2293
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2294
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2294
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2295, !tbaa.struct !2260
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2254, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2296
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !913, metadata !DIExpression()) #10, !dbg !2297
  call void @llvm.dbg.value(metadata i8 %1, metadata !914, metadata !DIExpression()) #10, !dbg !2299
  call void @llvm.dbg.value(metadata i32 1, metadata !915, metadata !DIExpression()) #10, !dbg !2300
  call void @llvm.dbg.value(metadata i8 %1, metadata !916, metadata !DIExpression()) #10, !dbg !2301
  %5 = lshr i8 %1, 5, !dbg !2302
  %6 = zext i8 %5 to i64, !dbg !2302
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2303
  call void @llvm.dbg.value(metadata i32* %7, metadata !918, metadata !DIExpression()) #10, !dbg !2304
  %8 = and i8 %1, 31, !dbg !2305
  %9 = zext i8 %8 to i32, !dbg !2305
  call void @llvm.dbg.value(metadata i32 %9, metadata !920, metadata !DIExpression()) #10, !dbg !2306
  %10 = load i32, i32* %7, align 4, !dbg !2307, !tbaa !703
  %11 = lshr i32 %10, %9, !dbg !2308
  %12 = and i32 %11, 1, !dbg !2309
  call void @llvm.dbg.value(metadata i32 %12, metadata !921, metadata !DIExpression()) #10, !dbg !2310
  %13 = xor i32 %12, 1, !dbg !2311
  %14 = shl i32 %13, %9, !dbg !2312
  %15 = xor i32 %14, %10, !dbg !2313
  store i32 %15, i32* %7, align 4, !dbg !2313, !tbaa !703
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2254, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2296
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !2314
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2315
  ret i8* %16, !dbg !2316
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8*) local_unnamed_addr #7 !dbg !2317 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2319, metadata !DIExpression()), !dbg !2320
  call void @llvm.dbg.value(metadata i8* %0, metadata !2286, metadata !DIExpression()) #10, !dbg !2321
  call void @llvm.dbg.value(metadata i8 58, metadata !2287, metadata !DIExpression()) #10, !dbg !2323
  call void @llvm.dbg.value(metadata i8* %0, metadata !2251, metadata !DIExpression()) #10, !dbg !2324
  call void @llvm.dbg.value(metadata i64 -1, metadata !2252, metadata !DIExpression()) #10, !dbg !2326
  call void @llvm.dbg.value(metadata i8 58, metadata !2253, metadata !DIExpression()) #10, !dbg !2327
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2328
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #10, !dbg !2328
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2329, !tbaa.struct !2260
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2254, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2330
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !913, metadata !DIExpression()) #10, !dbg !2331
  call void @llvm.dbg.value(metadata i8 58, metadata !914, metadata !DIExpression()) #10, !dbg !2333
  call void @llvm.dbg.value(metadata i32 1, metadata !915, metadata !DIExpression()) #10, !dbg !2334
  call void @llvm.dbg.value(metadata i8 58, metadata !916, metadata !DIExpression()) #10, !dbg !2335
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2336
  call void @llvm.dbg.value(metadata i32* %4, metadata !918, metadata !DIExpression()) #10, !dbg !2337
  call void @llvm.dbg.value(metadata i32 26, metadata !920, metadata !DIExpression()) #10, !dbg !2338
  %5 = load i32, i32* %4, align 4, !dbg !2339, !tbaa !703
  %6 = or i32 %5, 67108864, !dbg !2340
  store i32 %6, i32* %4, align 4, !dbg !2340, !tbaa !703
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2254, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2330
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #10, !dbg !2341
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #10, !dbg !2342
  ret i8* %7, !dbg !2343
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #7 !dbg !2344 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2346, metadata !DIExpression()), !dbg !2348
  call void @llvm.dbg.value(metadata i64 %1, metadata !2347, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i8* %0, metadata !2251, metadata !DIExpression()) #10, !dbg !2350
  call void @llvm.dbg.value(metadata i64 %1, metadata !2252, metadata !DIExpression()) #10, !dbg !2352
  call void @llvm.dbg.value(metadata i8 58, metadata !2253, metadata !DIExpression()) #10, !dbg !2353
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2354
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2354
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2355, !tbaa.struct !2260
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2254, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2356
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !913, metadata !DIExpression()) #10, !dbg !2357
  call void @llvm.dbg.value(metadata i8 58, metadata !914, metadata !DIExpression()) #10, !dbg !2359
  call void @llvm.dbg.value(metadata i32 1, metadata !915, metadata !DIExpression()) #10, !dbg !2360
  call void @llvm.dbg.value(metadata i8 58, metadata !916, metadata !DIExpression()) #10, !dbg !2361
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2362
  call void @llvm.dbg.value(metadata i32* %5, metadata !918, metadata !DIExpression()) #10, !dbg !2363
  call void @llvm.dbg.value(metadata i32 26, metadata !920, metadata !DIExpression()) #10, !dbg !2364
  %6 = load i32, i32* %5, align 4, !dbg !2365, !tbaa !703
  %7 = or i32 %6, 67108864, !dbg !2366
  store i32 %7, i32* %5, align 4, !dbg !2366, !tbaa !703
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2254, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2356
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #10, !dbg !2367
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2368
  ret i8* %8, !dbg !2369
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #7 !dbg !2370 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2143, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2376
  call void @llvm.dbg.value(metadata i32 %0, metadata !2372, metadata !DIExpression()), !dbg !2378
  call void @llvm.dbg.value(metadata i32 %1, metadata !2373, metadata !DIExpression()), !dbg !2379
  call void @llvm.dbg.value(metadata i8* %2, metadata !2374, metadata !DIExpression()), !dbg !2380
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2381
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2381
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2382
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2382
  call void @llvm.dbg.value(metadata i32 %1, metadata !2138, metadata !DIExpression()) #10, !dbg !2383
  call void @llvm.dbg.value(metadata i32 0, metadata !2143, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2376
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 %7, i8 0, i64 52, i1 false), !dbg !2376, !alias.scope !2384
  %8 = icmp eq i32 %1, 10, !dbg !2387
  br i1 %8, label %9, label %10, !dbg !2388

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2389, !noalias !2384
  unreachable, !dbg !2389

; <label>:10:                                     ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2143, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2376
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2382
  store i32 %1, i32* %11, align 8, !dbg !2382
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2382
  %13 = bitcast i32* %12 to i8*, !dbg !2382
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %13, i8* nonnull align 4 %7, i64 52, i1 false), !dbg !2382
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2382
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2375, metadata !DIExpression(DW_OP_deref)), !dbg !2390
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !913, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.value(metadata i8 58, metadata !914, metadata !DIExpression()), !dbg !2393
  call void @llvm.dbg.value(metadata i32 1, metadata !915, metadata !DIExpression()), !dbg !2394
  call void @llvm.dbg.value(metadata i8 58, metadata !916, metadata !DIExpression()), !dbg !2395
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2396
  call void @llvm.dbg.value(metadata i32* %14, metadata !918, metadata !DIExpression()), !dbg !2397
  call void @llvm.dbg.value(metadata i32 26, metadata !920, metadata !DIExpression()), !dbg !2398
  %15 = load i32, i32* %14, align 4, !dbg !2399, !tbaa !703
  %16 = or i32 %15, 67108864, !dbg !2400
  store i32 %16, i32* %14, align 4, !dbg !2400, !tbaa !703
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2375, metadata !DIExpression(DW_OP_deref)), !dbg !2390
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2401
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2402
  ret i8* %17, !dbg !2403
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #7 !dbg !2404 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2408, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i8* %1, metadata !2409, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i8* %2, metadata !2410, metadata !DIExpression()), !dbg !2414
  call void @llvm.dbg.value(metadata i8* %3, metadata !2411, metadata !DIExpression()), !dbg !2415
  call void @llvm.dbg.value(metadata i32 %0, metadata !2416, metadata !DIExpression()) #10, !dbg !2426
  call void @llvm.dbg.value(metadata i8* %1, metadata !2421, metadata !DIExpression()) #10, !dbg !2428
  call void @llvm.dbg.value(metadata i8* %2, metadata !2422, metadata !DIExpression()) #10, !dbg !2429
  call void @llvm.dbg.value(metadata i8* %3, metadata !2423, metadata !DIExpression()) #10, !dbg !2430
  call void @llvm.dbg.value(metadata i64 -1, metadata !2424, metadata !DIExpression()) #10, !dbg !2431
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2432
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2432
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2433, !tbaa.struct !2260
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2425, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2434
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !962, metadata !DIExpression()) #10, !dbg !2435
  call void @llvm.dbg.value(metadata i8* %1, metadata !963, metadata !DIExpression()) #10, !dbg !2437
  call void @llvm.dbg.value(metadata i8* %2, metadata !964, metadata !DIExpression()) #10, !dbg !2438
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !962, metadata !DIExpression()) #10, !dbg !2435
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2439
  store i32 10, i32* %7, align 8, !dbg !2440, !tbaa !894
  %8 = icmp ne i8* %1, null, !dbg !2441
  %9 = icmp ne i8* %2, null, !dbg !2442
  %10 = and i1 %8, %9, !dbg !2443
  br i1 %10, label %12, label %11, !dbg !2443

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2444
  unreachable, !dbg !2444

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2445
  store i8* %1, i8** %13, align 8, !dbg !2446, !tbaa !980
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2447
  store i8* %2, i8** %14, align 8, !dbg !2448, !tbaa !983
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2425, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2434
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #10, !dbg !2449
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2450
  ret i8* %15, !dbg !2451
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !2417 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2416, metadata !DIExpression()), !dbg !2452
  call void @llvm.dbg.value(metadata i8* %1, metadata !2421, metadata !DIExpression()), !dbg !2453
  call void @llvm.dbg.value(metadata i8* %2, metadata !2422, metadata !DIExpression()), !dbg !2454
  call void @llvm.dbg.value(metadata i8* %3, metadata !2423, metadata !DIExpression()), !dbg !2455
  call void @llvm.dbg.value(metadata i64 %4, metadata !2424, metadata !DIExpression()), !dbg !2456
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2457
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2457
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %7, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2458, !tbaa.struct !2260
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2425, metadata !DIExpression(DW_OP_deref)), !dbg !2459
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !962, metadata !DIExpression()) #10, !dbg !2460
  call void @llvm.dbg.value(metadata i8* %1, metadata !963, metadata !DIExpression()) #10, !dbg !2462
  call void @llvm.dbg.value(metadata i8* %2, metadata !964, metadata !DIExpression()) #10, !dbg !2463
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !962, metadata !DIExpression()) #10, !dbg !2460
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2464
  store i32 10, i32* %8, align 8, !dbg !2465, !tbaa !894
  %9 = icmp ne i8* %1, null, !dbg !2466
  %10 = icmp ne i8* %2, null, !dbg !2467
  %11 = and i1 %9, %10, !dbg !2468
  br i1 %11, label %13, label %12, !dbg !2468

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !2469
  unreachable, !dbg !2469

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2470
  store i8* %1, i8** %14, align 8, !dbg !2471, !tbaa !980
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2472
  store i8* %2, i8** %15, align 8, !dbg !2473, !tbaa !983
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2425, metadata !DIExpression(DW_OP_deref)), !dbg !2459
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2474
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2475
  ret i8* %16, !dbg !2476
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #7 !dbg !2477 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2481, metadata !DIExpression()), !dbg !2484
  call void @llvm.dbg.value(metadata i8* %1, metadata !2482, metadata !DIExpression()), !dbg !2485
  call void @llvm.dbg.value(metadata i8* %2, metadata !2483, metadata !DIExpression()), !dbg !2486
  call void @llvm.dbg.value(metadata i32 0, metadata !2408, metadata !DIExpression()) #10, !dbg !2487
  call void @llvm.dbg.value(metadata i8* %0, metadata !2409, metadata !DIExpression()) #10, !dbg !2489
  call void @llvm.dbg.value(metadata i8* %1, metadata !2410, metadata !DIExpression()) #10, !dbg !2490
  call void @llvm.dbg.value(metadata i8* %2, metadata !2411, metadata !DIExpression()) #10, !dbg !2491
  call void @llvm.dbg.value(metadata i32 0, metadata !2416, metadata !DIExpression()) #10, !dbg !2492
  call void @llvm.dbg.value(metadata i8* %0, metadata !2421, metadata !DIExpression()) #10, !dbg !2494
  call void @llvm.dbg.value(metadata i8* %1, metadata !2422, metadata !DIExpression()) #10, !dbg !2495
  call void @llvm.dbg.value(metadata i8* %2, metadata !2423, metadata !DIExpression()) #10, !dbg !2496
  call void @llvm.dbg.value(metadata i64 -1, metadata !2424, metadata !DIExpression()) #10, !dbg !2497
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2498
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2498
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2499, !tbaa.struct !2260
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2425, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2500
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !962, metadata !DIExpression()) #10, !dbg !2501
  call void @llvm.dbg.value(metadata i8* %0, metadata !963, metadata !DIExpression()) #10, !dbg !2503
  call void @llvm.dbg.value(metadata i8* %1, metadata !964, metadata !DIExpression()) #10, !dbg !2504
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !962, metadata !DIExpression()) #10, !dbg !2501
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2505
  store i32 10, i32* %6, align 8, !dbg !2506, !tbaa !894
  %7 = icmp ne i8* %0, null, !dbg !2507
  %8 = icmp ne i8* %1, null, !dbg !2508
  %9 = and i1 %7, %8, !dbg !2509
  br i1 %9, label %11, label %10, !dbg !2509

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2510
  unreachable, !dbg !2510

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2511
  store i8* %0, i8** %12, align 8, !dbg !2512, !tbaa !980
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2513
  store i8* %1, i8** %13, align 8, !dbg !2514, !tbaa !983
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2425, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2500
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !2515
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2516
  ret i8* %14, !dbg !2517
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !2518 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2522, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i8* %1, metadata !2523, metadata !DIExpression()), !dbg !2527
  call void @llvm.dbg.value(metadata i8* %2, metadata !2524, metadata !DIExpression()), !dbg !2528
  call void @llvm.dbg.value(metadata i64 %3, metadata !2525, metadata !DIExpression()), !dbg !2529
  call void @llvm.dbg.value(metadata i32 0, metadata !2416, metadata !DIExpression()) #10, !dbg !2530
  call void @llvm.dbg.value(metadata i8* %0, metadata !2421, metadata !DIExpression()) #10, !dbg !2532
  call void @llvm.dbg.value(metadata i8* %1, metadata !2422, metadata !DIExpression()) #10, !dbg !2533
  call void @llvm.dbg.value(metadata i8* %2, metadata !2423, metadata !DIExpression()) #10, !dbg !2534
  call void @llvm.dbg.value(metadata i64 %3, metadata !2424, metadata !DIExpression()) #10, !dbg !2535
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2536
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2536
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2537, !tbaa.struct !2260
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2425, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2538
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !962, metadata !DIExpression()) #10, !dbg !2539
  call void @llvm.dbg.value(metadata i8* %0, metadata !963, metadata !DIExpression()) #10, !dbg !2541
  call void @llvm.dbg.value(metadata i8* %1, metadata !964, metadata !DIExpression()) #10, !dbg !2542
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !962, metadata !DIExpression()) #10, !dbg !2539
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2543
  store i32 10, i32* %7, align 8, !dbg !2544, !tbaa !894
  %8 = icmp ne i8* %0, null, !dbg !2545
  %9 = icmp ne i8* %1, null, !dbg !2546
  %10 = and i1 %8, %9, !dbg !2547
  br i1 %10, label %12, label %11, !dbg !2547

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2548
  unreachable, !dbg !2548

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2549
  store i8* %0, i8** %13, align 8, !dbg !2550, !tbaa !980
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2551
  store i8* %1, i8** %14, align 8, !dbg !2552, !tbaa !983
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2425, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2538
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #10, !dbg !2553
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2554
  ret i8* %15, !dbg !2555
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2556 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2560, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata i8* %1, metadata !2561, metadata !DIExpression()), !dbg !2564
  call void @llvm.dbg.value(metadata i64 %2, metadata !2562, metadata !DIExpression()), !dbg !2565
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2566
  ret i8* %4, !dbg !2567
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8*, i64) local_unnamed_addr #7 !dbg !2568 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2572, metadata !DIExpression()), !dbg !2574
  call void @llvm.dbg.value(metadata i64 %1, metadata !2573, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata i32 0, metadata !2560, metadata !DIExpression()) #10, !dbg !2576
  call void @llvm.dbg.value(metadata i8* %0, metadata !2561, metadata !DIExpression()) #10, !dbg !2578
  call void @llvm.dbg.value(metadata i64 %1, metadata !2562, metadata !DIExpression()) #10, !dbg !2579
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2580
  ret i8* %3, !dbg !2581
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32, i8*) local_unnamed_addr #7 !dbg !2582 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2586, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i8* %1, metadata !2587, metadata !DIExpression()), !dbg !2589
  call void @llvm.dbg.value(metadata i32 %0, metadata !2560, metadata !DIExpression()) #10, !dbg !2590
  call void @llvm.dbg.value(metadata i8* %1, metadata !2561, metadata !DIExpression()) #10, !dbg !2592
  call void @llvm.dbg.value(metadata i64 -1, metadata !2562, metadata !DIExpression()) #10, !dbg !2593
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2594
  ret i8* %3, !dbg !2595
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8*) local_unnamed_addr #7 !dbg !2596 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2600, metadata !DIExpression()), !dbg !2601
  call void @llvm.dbg.value(metadata i32 0, metadata !2586, metadata !DIExpression()) #10, !dbg !2602
  call void @llvm.dbg.value(metadata i8* %0, metadata !2587, metadata !DIExpression()) #10, !dbg !2604
  call void @llvm.dbg.value(metadata i32 0, metadata !2560, metadata !DIExpression()) #10, !dbg !2605
  call void @llvm.dbg.value(metadata i8* %0, metadata !2561, metadata !DIExpression()) #10, !dbg !2607
  call void @llvm.dbg.value(metadata i64 -1, metadata !2562, metadata !DIExpression()) #10, !dbg !2608
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2609
  ret i8* %2, !dbg !2610
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #7 !dbg !2611 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2669, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata i8* %1, metadata !2670, metadata !DIExpression()), !dbg !2676
  call void @llvm.dbg.value(metadata i8* %2, metadata !2671, metadata !DIExpression()), !dbg !2677
  call void @llvm.dbg.value(metadata i8* %3, metadata !2672, metadata !DIExpression()), !dbg !2678
  call void @llvm.dbg.value(metadata i8** %4, metadata !2673, metadata !DIExpression()), !dbg !2679
  call void @llvm.dbg.value(metadata i64 %5, metadata !2674, metadata !DIExpression()), !dbg !2680
  %7 = icmp eq i8* %1, null, !dbg !2681
  br i1 %7, label %10, label %8, !dbg !2683

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.70, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10, !dbg !2684
  br label %12, !dbg !2684

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.71, i64 0, i64 0), i8* %2, i8* %3) #10, !dbg !2685
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.72, i64 0, i64 0), i32 5) #10, !dbg !2686
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2018) #10, !dbg !2686
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([204 x i8], [204 x i8]* @.str.3.73, i64 0, i64 0), i32 5) #10, !dbg !2687
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0), !dbg !2687
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
  ], !dbg !2688

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !2689
  unreachable, !dbg !2689

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.74, i64 0, i64 0), i32 5) #10, !dbg !2691
  %20 = load i8*, i8** %4, align 8, !dbg !2691, !tbaa !635
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #10, !dbg !2691
  br label %146, !dbg !2692

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.75, i64 0, i64 0), i32 5) #10, !dbg !2693
  %24 = load i8*, i8** %4, align 8, !dbg !2693, !tbaa !635
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2693
  %26 = load i8*, i8** %25, align 8, !dbg !2693, !tbaa !635
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #10, !dbg !2693
  br label %146, !dbg !2694

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.76, i64 0, i64 0), i32 5) #10, !dbg !2695
  %30 = load i8*, i8** %4, align 8, !dbg !2695, !tbaa !635
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2695
  %32 = load i8*, i8** %31, align 8, !dbg !2695, !tbaa !635
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2695
  %34 = load i8*, i8** %33, align 8, !dbg !2695, !tbaa !635
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #10, !dbg !2695
  br label %146, !dbg !2696

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.77, i64 0, i64 0), i32 5) #10, !dbg !2697
  %38 = load i8*, i8** %4, align 8, !dbg !2697, !tbaa !635
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2697
  %40 = load i8*, i8** %39, align 8, !dbg !2697, !tbaa !635
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2697
  %42 = load i8*, i8** %41, align 8, !dbg !2697, !tbaa !635
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2697
  %44 = load i8*, i8** %43, align 8, !dbg !2697, !tbaa !635
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #10, !dbg !2697
  br label %146, !dbg !2698

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.78, i64 0, i64 0), i32 5) #10, !dbg !2699
  %48 = load i8*, i8** %4, align 8, !dbg !2699, !tbaa !635
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2699
  %50 = load i8*, i8** %49, align 8, !dbg !2699, !tbaa !635
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2699
  %52 = load i8*, i8** %51, align 8, !dbg !2699, !tbaa !635
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2699
  %54 = load i8*, i8** %53, align 8, !dbg !2699, !tbaa !635
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2699
  %56 = load i8*, i8** %55, align 8, !dbg !2699, !tbaa !635
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #10, !dbg !2699
  br label %146, !dbg !2700

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.79, i64 0, i64 0), i32 5) #10, !dbg !2701
  %60 = load i8*, i8** %4, align 8, !dbg !2701, !tbaa !635
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2701
  %62 = load i8*, i8** %61, align 8, !dbg !2701, !tbaa !635
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2701
  %64 = load i8*, i8** %63, align 8, !dbg !2701, !tbaa !635
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2701
  %66 = load i8*, i8** %65, align 8, !dbg !2701, !tbaa !635
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2701
  %68 = load i8*, i8** %67, align 8, !dbg !2701, !tbaa !635
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2701
  %70 = load i8*, i8** %69, align 8, !dbg !2701, !tbaa !635
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #10, !dbg !2701
  br label %146, !dbg !2702

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.80, i64 0, i64 0), i32 5) #10, !dbg !2703
  %74 = load i8*, i8** %4, align 8, !dbg !2703, !tbaa !635
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2703
  %76 = load i8*, i8** %75, align 8, !dbg !2703, !tbaa !635
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2703
  %78 = load i8*, i8** %77, align 8, !dbg !2703, !tbaa !635
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2703
  %80 = load i8*, i8** %79, align 8, !dbg !2703, !tbaa !635
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2703
  %82 = load i8*, i8** %81, align 8, !dbg !2703, !tbaa !635
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2703
  %84 = load i8*, i8** %83, align 8, !dbg !2703, !tbaa !635
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2703
  %86 = load i8*, i8** %85, align 8, !dbg !2703, !tbaa !635
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #10, !dbg !2703
  br label %146, !dbg !2704

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.81, i64 0, i64 0), i32 5) #10, !dbg !2705
  %90 = load i8*, i8** %4, align 8, !dbg !2705, !tbaa !635
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2705
  %92 = load i8*, i8** %91, align 8, !dbg !2705, !tbaa !635
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2705
  %94 = load i8*, i8** %93, align 8, !dbg !2705, !tbaa !635
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2705
  %96 = load i8*, i8** %95, align 8, !dbg !2705, !tbaa !635
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2705
  %98 = load i8*, i8** %97, align 8, !dbg !2705, !tbaa !635
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2705
  %100 = load i8*, i8** %99, align 8, !dbg !2705, !tbaa !635
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2705
  %102 = load i8*, i8** %101, align 8, !dbg !2705, !tbaa !635
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2705
  %104 = load i8*, i8** %103, align 8, !dbg !2705, !tbaa !635
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #10, !dbg !2705
  br label %146, !dbg !2706

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.82, i64 0, i64 0), i32 5) #10, !dbg !2707
  %108 = load i8*, i8** %4, align 8, !dbg !2707, !tbaa !635
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2707
  %110 = load i8*, i8** %109, align 8, !dbg !2707, !tbaa !635
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2707
  %112 = load i8*, i8** %111, align 8, !dbg !2707, !tbaa !635
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2707
  %114 = load i8*, i8** %113, align 8, !dbg !2707, !tbaa !635
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2707
  %116 = load i8*, i8** %115, align 8, !dbg !2707, !tbaa !635
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2707
  %118 = load i8*, i8** %117, align 8, !dbg !2707, !tbaa !635
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2707
  %120 = load i8*, i8** %119, align 8, !dbg !2707, !tbaa !635
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2707
  %122 = load i8*, i8** %121, align 8, !dbg !2707, !tbaa !635
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2707
  %124 = load i8*, i8** %123, align 8, !dbg !2707, !tbaa !635
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #10, !dbg !2707
  br label %146, !dbg !2708

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.83, i64 0, i64 0), i32 5) #10, !dbg !2709
  %128 = load i8*, i8** %4, align 8, !dbg !2709, !tbaa !635
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2709
  %130 = load i8*, i8** %129, align 8, !dbg !2709, !tbaa !635
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2709
  %132 = load i8*, i8** %131, align 8, !dbg !2709, !tbaa !635
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2709
  %134 = load i8*, i8** %133, align 8, !dbg !2709, !tbaa !635
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2709
  %136 = load i8*, i8** %135, align 8, !dbg !2709, !tbaa !635
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2709
  %138 = load i8*, i8** %137, align 8, !dbg !2709, !tbaa !635
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2709
  %140 = load i8*, i8** %139, align 8, !dbg !2709, !tbaa !635
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2709
  %142 = load i8*, i8** %141, align 8, !dbg !2709, !tbaa !635
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2709
  %144 = load i8*, i8** %143, align 8, !dbg !2709, !tbaa !635
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #10, !dbg !2709
  br label %146, !dbg !2710

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !2711
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #7 !dbg !2712 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2716, metadata !DIExpression()), !dbg !2722
  call void @llvm.dbg.value(metadata i8* %1, metadata !2717, metadata !DIExpression()), !dbg !2723
  call void @llvm.dbg.value(metadata i8* %2, metadata !2718, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.value(metadata i8* %3, metadata !2719, metadata !DIExpression()), !dbg !2725
  call void @llvm.dbg.value(metadata i8** %4, metadata !2720, metadata !DIExpression()), !dbg !2726
  call void @llvm.dbg.value(metadata i64 0, metadata !2721, metadata !DIExpression()), !dbg !2727
  br label %6, !dbg !2728

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2730
  call void @llvm.dbg.value(metadata i64 %7, metadata !2721, metadata !DIExpression()), !dbg !2727
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2732
  %9 = load i8*, i8** %8, align 8, !dbg !2732, !tbaa !635
  %10 = icmp eq i8* %9, null, !dbg !2733
  %11 = add i64 %7, 1, !dbg !2734
  call void @llvm.dbg.value(metadata i64 %11, metadata !2721, metadata !DIExpression()), !dbg !2727
  br i1 %10, label %12, label %6, !dbg !2733, !llvm.loop !2735

; <label>:12:                                     ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !2721, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i64 %7, metadata !2721, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i64 %7, metadata !2721, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i64 %7, metadata !2721, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i64 %7, metadata !2721, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i64 %7, metadata !2721, metadata !DIExpression()), !dbg !2727
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2737
  ret void, !dbg !2738
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #7 !dbg !2739 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2750, metadata !DIExpression()), !dbg !2758
  call void @llvm.dbg.value(metadata i8* %1, metadata !2751, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i8* %2, metadata !2752, metadata !DIExpression()), !dbg !2760
  call void @llvm.dbg.value(metadata i8* %3, metadata !2753, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !2754, metadata !DIExpression()), !dbg !2762
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2763
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #10, !dbg !2763
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2756, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata i64 0, metadata !2755, metadata !DIExpression()), !dbg !2765
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  call void @llvm.dbg.value(metadata i64 0, metadata !2755, metadata !DIExpression()), !dbg !2765
  %11 = load i32, i32* %8, align 8, !dbg !2766
  %12 = icmp ult i32 %11, 41, !dbg !2766
  br i1 %12, label %13, label %18, !dbg !2766

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !2766
  %15 = sext i32 %11 to i64, !dbg !2766
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !2766
  %17 = add i32 %11, 8, !dbg !2766
  store i32 %17, i32* %8, align 8, !dbg !2766
  br label %21, !dbg !2766

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !2766
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !2766
  store i8* %20, i8** %10, align 8, !dbg !2766
  br label %21, !dbg !2766

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !2766
  %25 = load i8*, i8** %24, align 8, !dbg !2766
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2769
  store i8* %25, i8** %26, align 16, !dbg !2770, !tbaa !635
  %27 = icmp eq i8* %25, null, !dbg !2771
  br i1 %27, label %30, label %28, !dbg !2772

; <label>:28:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !2755, metadata !DIExpression()), !dbg !2765
  call void @llvm.dbg.value(metadata i64 1, metadata !2755, metadata !DIExpression()), !dbg !2765
  %29 = icmp ult i32 %22, 41, !dbg !2766
  br i1 %29, label %35, label %32, !dbg !2766

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !2773
  call void @llvm.dbg.value(metadata i64 %31, metadata !2755, metadata !DIExpression()), !dbg !2765
  call void @llvm.dbg.value(metadata i64 %31, metadata !2755, metadata !DIExpression()), !dbg !2765
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !2774
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #10, !dbg !2775
  ret void, !dbg !2775

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !2766
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !2766
  store i8* %34, i8** %10, align 8, !dbg !2766
  br label %40, !dbg !2766

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !2766
  %37 = sext i32 %22 to i64, !dbg !2766
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !2766
  %39 = add i32 %22, 8, !dbg !2766
  store i32 %39, i32* %8, align 8, !dbg !2766
  br label %40, !dbg !2766

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !2766
  %44 = load i8*, i8** %43, align 8, !dbg !2766
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2769
  store i8* %44, i8** %45, align 8, !dbg !2770, !tbaa !635
  %46 = icmp eq i8* %44, null, !dbg !2771
  br i1 %46, label %30, label %47, !dbg !2772

; <label>:47:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !2755, metadata !DIExpression()), !dbg !2765
  call void @llvm.dbg.value(metadata i64 2, metadata !2755, metadata !DIExpression()), !dbg !2765
  %48 = icmp ult i32 %41, 41, !dbg !2766
  br i1 %48, label %52, label %49, !dbg !2766

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !2766
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !2766
  store i8* %51, i8** %10, align 8, !dbg !2766
  br label %57, !dbg !2766

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !2766
  %54 = sext i32 %41 to i64, !dbg !2766
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !2766
  %56 = add i32 %41, 8, !dbg !2766
  store i32 %56, i32* %8, align 8, !dbg !2766
  br label %57, !dbg !2766

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !2766
  %61 = load i8*, i8** %60, align 8, !dbg !2766
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2769
  store i8* %61, i8** %62, align 16, !dbg !2770, !tbaa !635
  %63 = icmp eq i8* %61, null, !dbg !2771
  br i1 %63, label %30, label %64, !dbg !2772

; <label>:64:                                     ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !2755, metadata !DIExpression()), !dbg !2765
  call void @llvm.dbg.value(metadata i64 3, metadata !2755, metadata !DIExpression()), !dbg !2765
  %65 = icmp ult i32 %58, 41, !dbg !2766
  br i1 %65, label %69, label %66, !dbg !2766

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !2766
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !2766
  store i8* %68, i8** %10, align 8, !dbg !2766
  br label %74, !dbg !2766

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !2766
  %71 = sext i32 %58 to i64, !dbg !2766
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !2766
  %73 = add i32 %58, 8, !dbg !2766
  store i32 %73, i32* %8, align 8, !dbg !2766
  br label %74, !dbg !2766

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !2766
  %78 = load i8*, i8** %77, align 8, !dbg !2766
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2769
  store i8* %78, i8** %79, align 8, !dbg !2770, !tbaa !635
  %80 = icmp eq i8* %78, null, !dbg !2771
  br i1 %80, label %30, label %81, !dbg !2772

; <label>:81:                                     ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !2755, metadata !DIExpression()), !dbg !2765
  call void @llvm.dbg.value(metadata i64 4, metadata !2755, metadata !DIExpression()), !dbg !2765
  %82 = icmp ult i32 %75, 41, !dbg !2766
  br i1 %82, label %86, label %83, !dbg !2766

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !2766
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !2766
  store i8* %85, i8** %10, align 8, !dbg !2766
  br label %91, !dbg !2766

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !2766
  %88 = sext i32 %75 to i64, !dbg !2766
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !2766
  %90 = add i32 %75, 8, !dbg !2766
  store i32 %90, i32* %8, align 8, !dbg !2766
  br label %91, !dbg !2766

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !2766
  %95 = load i8*, i8** %94, align 8, !dbg !2766
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2769
  store i8* %95, i8** %96, align 16, !dbg !2770, !tbaa !635
  %97 = icmp eq i8* %95, null, !dbg !2771
  br i1 %97, label %30, label %98, !dbg !2772

; <label>:98:                                     ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !2755, metadata !DIExpression()), !dbg !2765
  call void @llvm.dbg.value(metadata i64 5, metadata !2755, metadata !DIExpression()), !dbg !2765
  %99 = icmp ult i32 %92, 41, !dbg !2766
  br i1 %99, label %103, label %100, !dbg !2766

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !2766
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !2766
  store i8* %102, i8** %10, align 8, !dbg !2766
  br label %108, !dbg !2766

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !2766
  %105 = sext i32 %92 to i64, !dbg !2766
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !2766
  %107 = add i32 %92, 8, !dbg !2766
  store i32 %107, i32* %8, align 8, !dbg !2766
  br label %108, !dbg !2766

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !2766
  %111 = load i8*, i8** %110, align 8, !dbg !2766
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2769
  store i8* %111, i8** %112, align 8, !dbg !2770, !tbaa !635
  %113 = icmp eq i8* %111, null, !dbg !2771
  br i1 %113, label %30, label %114, !dbg !2772

; <label>:114:                                    ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !2755, metadata !DIExpression()), !dbg !2765
  call void @llvm.dbg.value(metadata i64 6, metadata !2755, metadata !DIExpression()), !dbg !2765
  %115 = load i8*, i8** %10, align 8, !dbg !2766
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !2766
  store i8* %116, i8** %10, align 8, !dbg !2766
  %117 = bitcast i8* %115 to i8**, !dbg !2766
  %118 = load i8*, i8** %117, align 8, !dbg !2766
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2769
  store i8* %118, i8** %119, align 16, !dbg !2770, !tbaa !635
  %120 = icmp eq i8* %118, null, !dbg !2771
  br i1 %120, label %30, label %121, !dbg !2772

; <label>:121:                                    ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !2755, metadata !DIExpression()), !dbg !2765
  call void @llvm.dbg.value(metadata i64 7, metadata !2755, metadata !DIExpression()), !dbg !2765
  %122 = load i8*, i8** %10, align 8, !dbg !2766
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !2766
  store i8* %123, i8** %10, align 8, !dbg !2766
  %124 = bitcast i8* %122 to i8**, !dbg !2766
  %125 = load i8*, i8** %124, align 8, !dbg !2766
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2769
  store i8* %125, i8** %126, align 8, !dbg !2770, !tbaa !635
  %127 = icmp eq i8* %125, null, !dbg !2771
  br i1 %127, label %30, label %128, !dbg !2772

; <label>:128:                                    ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !2755, metadata !DIExpression()), !dbg !2765
  call void @llvm.dbg.value(metadata i64 8, metadata !2755, metadata !DIExpression()), !dbg !2765
  %129 = load i8*, i8** %10, align 8, !dbg !2766
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !2766
  store i8* %130, i8** %10, align 8, !dbg !2766
  %131 = bitcast i8* %129 to i8**, !dbg !2766
  %132 = load i8*, i8** %131, align 8, !dbg !2766
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2769
  store i8* %132, i8** %133, align 16, !dbg !2770, !tbaa !635
  %134 = icmp eq i8* %132, null, !dbg !2771
  br i1 %134, label %30, label %135, !dbg !2772

; <label>:135:                                    ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !2755, metadata !DIExpression()), !dbg !2765
  call void @llvm.dbg.value(metadata i64 9, metadata !2755, metadata !DIExpression()), !dbg !2765
  %136 = load i8*, i8** %10, align 8, !dbg !2766
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !2766
  store i8* %137, i8** %10, align 8, !dbg !2766
  %138 = bitcast i8* %136 to i8**, !dbg !2766
  %139 = load i8*, i8** %138, align 8, !dbg !2766
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2769
  store i8* %139, i8** %140, align 8, !dbg !2770, !tbaa !635
  %141 = icmp eq i8* %139, null, !dbg !2771
  %142 = select i1 %141, i64 9, i64 10, !dbg !2772
  br label %30, !dbg !2772
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #7 !dbg !2776 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2780, metadata !DIExpression()), !dbg !2789
  call void @llvm.dbg.value(metadata i8* %1, metadata !2781, metadata !DIExpression()), !dbg !2790
  call void @llvm.dbg.value(metadata i8* %2, metadata !2782, metadata !DIExpression()), !dbg !2791
  call void @llvm.dbg.value(metadata i8* %3, metadata !2783, metadata !DIExpression()), !dbg !2792
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !2793
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #10, !dbg !2793
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !2784, metadata !DIExpression()), !dbg !2794
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !2795
  call void @llvm.va_start(i8* nonnull %6), !dbg !2795
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !2796
  call void @llvm.va_end(i8* nonnull %6), !dbg !2797
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #10, !dbg !2798
  ret void, !dbg !2798
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #7 !dbg !2799 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.86, i64 0, i64 0), i32 5) #10, !dbg !2800
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.87, i64 0, i64 0)) #10, !dbg !2800
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.88, i64 0, i64 0), i32 5) #10, !dbg !2801
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.89, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18.90, i64 0, i64 0)) #10, !dbg !2801
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.19.91, i64 0, i64 0), i32 5) #10, !dbg !2802
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2802, !tbaa !635
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6), !dbg !2802
  ret void, !dbg !2803
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !2804 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2808, metadata !DIExpression()), !dbg !2810
  call void @llvm.dbg.value(metadata i64 %1, metadata !2809, metadata !DIExpression()), !dbg !2811
  %3 = udiv i64 9223372036854775807, %1, !dbg !2812
  %4 = icmp ult i64 %3, %0, !dbg !2812
  br i1 %4, label %5, label %6, !dbg !2814

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !2815
  unreachable, !dbg !2815

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !2816
  call void @llvm.dbg.value(metadata i64 %7, metadata !2817, metadata !DIExpression()) #10, !dbg !2824
  %8 = tail call noalias i8* @malloc(i64 %7) #10, !dbg !2826
  call void @llvm.dbg.value(metadata i8* %8, metadata !2823, metadata !DIExpression()) #10, !dbg !2827
  %9 = icmp eq i8* %8, null, !dbg !2828
  %10 = icmp ne i64 %7, 0, !dbg !2830
  %11 = and i1 %10, %9, !dbg !2831
  br i1 %11, label %12, label %13, !dbg !2831

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !2832
  unreachable, !dbg !2832

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !2833
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64) local_unnamed_addr #7 !dbg !2818 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2817, metadata !DIExpression()), !dbg !2834
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !2835
  call void @llvm.dbg.value(metadata i8* %2, metadata !2823, metadata !DIExpression()), !dbg !2836
  %3 = icmp eq i8* %2, null, !dbg !2837
  %4 = icmp ne i64 %0, 0, !dbg !2838
  %5 = and i1 %4, %3, !dbg !2839
  br i1 %5, label %6, label %7, !dbg !2839

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !2840
  unreachable, !dbg !2840

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !2841
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !2842 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2846, metadata !DIExpression()), !dbg !2849
  call void @llvm.dbg.value(metadata i64 %1, metadata !2847, metadata !DIExpression()), !dbg !2850
  call void @llvm.dbg.value(metadata i64 %2, metadata !2848, metadata !DIExpression()), !dbg !2851
  %4 = udiv i64 9223372036854775807, %2, !dbg !2852
  %5 = icmp ult i64 %4, %1, !dbg !2852
  br i1 %5, label %6, label %7, !dbg !2854

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !2855
  unreachable, !dbg !2855

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !2856
  call void @llvm.dbg.value(metadata i8* %0, metadata !2857, metadata !DIExpression()) #10, !dbg !2863
  call void @llvm.dbg.value(metadata i64 %8, metadata !2862, metadata !DIExpression()) #10, !dbg !2865
  %9 = icmp eq i64 %8, 0, !dbg !2866
  %10 = icmp ne i8* %0, null, !dbg !2868
  %11 = and i1 %10, %9, !dbg !2869
  br i1 %11, label %12, label %13, !dbg !2869

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #10, !dbg !2870
  br label %19, !dbg !2872

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #10, !dbg !2873
  call void @llvm.dbg.value(metadata i8* %14, metadata !2857, metadata !DIExpression()) #10, !dbg !2863
  %15 = icmp eq i8* %14, null, !dbg !2874
  %16 = icmp ne i64 %8, 0, !dbg !2876
  %17 = and i1 %16, %15, !dbg !2877
  br i1 %17, label %18, label %19, !dbg !2877

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2878
  unreachable, !dbg !2878

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !2879
  ret i8* %20, !dbg !2880
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #7 !dbg !2858 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2857, metadata !DIExpression()), !dbg !2881
  call void @llvm.dbg.value(metadata i64 %1, metadata !2862, metadata !DIExpression()), !dbg !2882
  %3 = icmp eq i64 %1, 0, !dbg !2883
  %4 = icmp ne i8* %0, null, !dbg !2884
  %5 = and i1 %4, %3, !dbg !2885
  br i1 %5, label %6, label %7, !dbg !2885

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #10, !dbg !2886
  br label %13, !dbg !2887

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #10, !dbg !2888
  call void @llvm.dbg.value(metadata i8* %8, metadata !2857, metadata !DIExpression()), !dbg !2881
  %9 = icmp eq i8* %8, null, !dbg !2889
  %10 = icmp ne i64 %1, 0, !dbg !2890
  %11 = and i1 %10, %9, !dbg !2891
  br i1 %11, label %12, label %13, !dbg !2891

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !2892
  unreachable, !dbg !2892

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !2893
  ret i8* %14, !dbg !2894
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !178 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !183, metadata !DIExpression()), !dbg !2895
  call void @llvm.dbg.value(metadata i64* %1, metadata !184, metadata !DIExpression()), !dbg !2896
  call void @llvm.dbg.value(metadata i64 %2, metadata !185, metadata !DIExpression()), !dbg !2897
  %4 = load i64, i64* %1, align 8, !dbg !2898, !tbaa !1939
  call void @llvm.dbg.value(metadata i64 %4, metadata !186, metadata !DIExpression()), !dbg !2899
  %5 = icmp eq i8* %0, null, !dbg !2900
  br i1 %5, label %6, label %20, !dbg !2902

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !2903
  br i1 %7, label %8, label %13, !dbg !2906

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !2907
  call void @llvm.dbg.value(metadata i64 %9, metadata !186, metadata !DIExpression()), !dbg !2899
  %10 = icmp ugt i64 %2, 128, !dbg !2909
  %11 = zext i1 %10 to i64, !dbg !2909
  %12 = add nuw nsw i64 %9, %11, !dbg !2910
  call void @llvm.dbg.value(metadata i64 %12, metadata !186, metadata !DIExpression()), !dbg !2899
  br label %13, !dbg !2911

; <label>:13:                                     ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !2912
  call void @llvm.dbg.value(metadata i64 %14, metadata !186, metadata !DIExpression()), !dbg !2899
  %15 = udiv i64 9223372036854775807, %2, !dbg !2913
  %16 = icmp ult i64 %15, %14, !dbg !2913
  br i1 %16, label %19, label %17, !dbg !2915

; <label>:17:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !186, metadata !DIExpression()), !dbg !2899
  store i64 %14, i64* %1, align 8, !dbg !2916, !tbaa !1939
  %18 = mul i64 %14, %2, !dbg !2917
  call void @llvm.dbg.value(metadata i8* %0, metadata !2857, metadata !DIExpression()) #10, !dbg !2918
  call void @llvm.dbg.value(metadata i64 %28, metadata !2862, metadata !DIExpression()) #10, !dbg !2920
  br label %31, !dbg !2921

; <label>:19:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2922
  unreachable, !dbg !2922

; <label>:20:                                     ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !2923
  %22 = icmp ugt i64 %21, %4, !dbg !2926
  br i1 %22, label %24, label %23, !dbg !2927

; <label>:23:                                     ; preds = %20
  tail call void @xalloc_die() #15, !dbg !2928
  unreachable, !dbg !2928

; <label>:24:                                     ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !2929
  %26 = add i64 %4, 1, !dbg !2930
  %27 = add i64 %26, %25, !dbg !2931
  call void @llvm.dbg.value(metadata i64 %27, metadata !186, metadata !DIExpression()), !dbg !2899
  call void @llvm.dbg.value(metadata i64 %27, metadata !186, metadata !DIExpression()), !dbg !2899
  store i64 %27, i64* %1, align 8, !dbg !2916, !tbaa !1939
  %28 = mul i64 %27, %2, !dbg !2917
  call void @llvm.dbg.value(metadata i8* %0, metadata !2857, metadata !DIExpression()) #10, !dbg !2918
  call void @llvm.dbg.value(metadata i64 %28, metadata !2862, metadata !DIExpression()) #10, !dbg !2920
  %29 = icmp eq i64 %28, 0, !dbg !2932
  br i1 %29, label %30, label %31, !dbg !2921

; <label>:30:                                     ; preds = %24
  tail call void @free(i8* nonnull %0) #10, !dbg !2933
  br label %38, !dbg !2934

; <label>:31:                                     ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #10, !dbg !2935
  call void @llvm.dbg.value(metadata i8* %33, metadata !2857, metadata !DIExpression()) #10, !dbg !2918
  %34 = icmp eq i8* %33, null, !dbg !2936
  %35 = icmp ne i64 %32, 0, !dbg !2937
  %36 = and i1 %35, %34, !dbg !2938
  br i1 %36, label %37, label %38, !dbg !2938

; <label>:37:                                     ; preds = %31
  tail call void @xalloc_die() #15, !dbg !2939
  unreachable, !dbg !2939

; <label>:38:                                     ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !2940
  ret i8* %39, !dbg !2941
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !2942 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2944, metadata !DIExpression()), !dbg !2945
  call void @llvm.dbg.value(metadata i64 %0, metadata !2817, metadata !DIExpression()) #10, !dbg !2946
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !2948
  call void @llvm.dbg.value(metadata i8* %2, metadata !2823, metadata !DIExpression()) #10, !dbg !2949
  %3 = icmp eq i8* %2, null, !dbg !2950
  %4 = icmp ne i64 %0, 0, !dbg !2951
  %5 = and i1 %4, %3, !dbg !2952
  br i1 %5, label %6, label %7, !dbg !2952

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !2953
  unreachable, !dbg !2953

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !2954
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #7 !dbg !2955 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2959, metadata !DIExpression()), !dbg !2961
  call void @llvm.dbg.value(metadata i64* %1, metadata !2960, metadata !DIExpression()), !dbg !2962
  call void @llvm.dbg.value(metadata i8* %0, metadata !183, metadata !DIExpression()) #10, !dbg !2963
  call void @llvm.dbg.value(metadata i64* %1, metadata !184, metadata !DIExpression()) #10, !dbg !2965
  call void @llvm.dbg.value(metadata i64 1, metadata !185, metadata !DIExpression()) #10, !dbg !2966
  %3 = load i64, i64* %1, align 8, !dbg !2967, !tbaa !1939
  call void @llvm.dbg.value(metadata i64 %3, metadata !186, metadata !DIExpression()) #10, !dbg !2968
  %4 = icmp eq i8* %0, null, !dbg !2969
  br i1 %4, label %5, label %12, !dbg !2970

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !2971
  br i1 %6, label %9, label %7, !dbg !2972

; <label>:7:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !186, metadata !DIExpression()) #10, !dbg !2968
  %8 = icmp slt i64 %3, 0, !dbg !2973
  br i1 %8, label %11, label %9, !dbg !2974

; <label>:9:                                      ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !186, metadata !DIExpression()) #10, !dbg !2968
  store i64 %10, i64* %1, align 8, !dbg !2975, !tbaa !1939
  call void @llvm.dbg.value(metadata i8* %0, metadata !2857, metadata !DIExpression()) #10, !dbg !2976
  call void @llvm.dbg.value(metadata i64 %18, metadata !2862, metadata !DIExpression()) #10, !dbg !2978
  br label %21, !dbg !2979

; <label>:11:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !2980
  unreachable, !dbg !2980

; <label>:12:                                     ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !2981
  br i1 %13, label %15, label %14, !dbg !2982

; <label>:14:                                     ; preds = %12
  tail call void @xalloc_die() #15, !dbg !2983
  unreachable, !dbg !2983

; <label>:15:                                     ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !2984
  %17 = add i64 %3, 1, !dbg !2985
  %18 = add i64 %17, %16, !dbg !2986
  call void @llvm.dbg.value(metadata i64 %18, metadata !186, metadata !DIExpression()) #10, !dbg !2968
  call void @llvm.dbg.value(metadata i64 %18, metadata !186, metadata !DIExpression()) #10, !dbg !2968
  store i64 %18, i64* %1, align 8, !dbg !2975, !tbaa !1939
  call void @llvm.dbg.value(metadata i8* %0, metadata !2857, metadata !DIExpression()) #10, !dbg !2976
  call void @llvm.dbg.value(metadata i64 %18, metadata !2862, metadata !DIExpression()) #10, !dbg !2978
  %19 = icmp eq i64 %18, 0, !dbg !2987
  br i1 %19, label %20, label %21, !dbg !2979

; <label>:20:                                     ; preds = %15
  tail call void @free(i8* nonnull %0) #10, !dbg !2988
  br label %28, !dbg !2989

; <label>:21:                                     ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #10, !dbg !2990
  call void @llvm.dbg.value(metadata i8* %23, metadata !2857, metadata !DIExpression()) #10, !dbg !2976
  %24 = icmp eq i8* %23, null, !dbg !2991
  %25 = icmp ne i64 %22, 0, !dbg !2992
  %26 = and i1 %25, %24, !dbg !2993
  br i1 %26, label %27, label %28, !dbg !2993

; <label>:27:                                     ; preds = %21
  tail call void @xalloc_die() #15, !dbg !2994
  unreachable, !dbg !2994

; <label>:28:                                     ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !2995
  ret i8* %29, !dbg !2996
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64) local_unnamed_addr #7 !dbg !2997 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2999, metadata !DIExpression()), !dbg !3000
  call void @llvm.dbg.value(metadata i64 %0, metadata !2817, metadata !DIExpression()) #10, !dbg !3001
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3003
  call void @llvm.dbg.value(metadata i8* %2, metadata !2823, metadata !DIExpression()) #10, !dbg !3004
  %3 = icmp eq i8* %2, null, !dbg !3005
  %4 = icmp ne i64 %0, 0, !dbg !3006
  %5 = and i1 %4, %3, !dbg !3007
  br i1 %5, label %6, label %7, !dbg !3007

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3008
  unreachable, !dbg !3008

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* align 1 %2, i8 0, i64 %0, i1 false), !dbg !3009
  ret i8* %2, !dbg !3010
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64, i64) local_unnamed_addr #7 !dbg !3011 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3013, metadata !DIExpression()), !dbg !3016
  call void @llvm.dbg.value(metadata i64 %1, metadata !3014, metadata !DIExpression()), !dbg !3017
  %3 = udiv i64 9223372036854775807, %1, !dbg !3018
  %4 = icmp ult i64 %3, %0, !dbg !3018
  br i1 %4, label %8, label %5, !dbg !3020

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #10, !dbg !3021
  call void @llvm.dbg.value(metadata i8* %6, metadata !3015, metadata !DIExpression()), !dbg !3022
  %7 = icmp eq i8* %6, null, !dbg !3023
  br i1 %7, label %8, label %9, !dbg !3024

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !3025
  unreachable, !dbg !3025

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3026
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #7 !dbg !3027 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3033, metadata !DIExpression()), !dbg !3035
  call void @llvm.dbg.value(metadata i64 %1, metadata !3034, metadata !DIExpression()), !dbg !3036
  call void @llvm.dbg.value(metadata i64 %1, metadata !2817, metadata !DIExpression()) #10, !dbg !3037
  %3 = tail call noalias i8* @malloc(i64 %1) #10, !dbg !3039
  call void @llvm.dbg.value(metadata i8* %3, metadata !2823, metadata !DIExpression()) #10, !dbg !3040
  %4 = icmp eq i8* %3, null, !dbg !3041
  %5 = icmp ne i64 %1, 0, !dbg !3042
  %6 = and i1 %5, %4, !dbg !3043
  br i1 %6, label %7, label %8, !dbg !3043

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3044
  unreachable, !dbg !3044

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 %0, i64 %1, i1 false), !dbg !3045
  ret i8* %3, !dbg !3046
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #7 !dbg !3047 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3049, metadata !DIExpression()), !dbg !3050
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !3051
  %3 = add i64 %2, 1, !dbg !3052
  call void @llvm.dbg.value(metadata i8* %0, metadata !3033, metadata !DIExpression()) #10, !dbg !3053
  call void @llvm.dbg.value(metadata i64 %3, metadata !3034, metadata !DIExpression()) #10, !dbg !3055
  call void @llvm.dbg.value(metadata i64 %3, metadata !2817, metadata !DIExpression()) #10, !dbg !3056
  %4 = tail call noalias i8* @malloc(i64 %3) #10, !dbg !3058
  call void @llvm.dbg.value(metadata i8* %4, metadata !2823, metadata !DIExpression()) #10, !dbg !3059
  %5 = icmp eq i8* %4, null, !dbg !3060
  %6 = icmp ne i64 %3, 0, !dbg !3061
  %7 = and i1 %6, %5, !dbg !3062
  br i1 %7, label %8, label %9, !dbg !3062

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3063
  unreachable, !dbg !3063

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %0, i64 %3, i1 false) #10, !dbg !3064
  ret i8* %4, !dbg !3065
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3066 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3068, !tbaa !703
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.102, i64 0, i64 0), i32 5) #10, !dbg !3069
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.103, i64 0, i64 0), i8* %2) #10, !dbg !3070
  tail call void @abort() #15, !dbg !3071
  unreachable, !dbg !3071
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #7 !dbg !3072 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3075, metadata !DIExpression()), !dbg !3081
  call void @llvm.dbg.value(metadata i64 %1, metadata !3076, metadata !DIExpression()), !dbg !3082
  %3 = icmp eq i64 %0, 0, !dbg !3083
  %4 = icmp eq i64 %1, 0, !dbg !3084
  %5 = or i1 %3, %4, !dbg !3085
  br i1 %5, label %12, label %6, !dbg !3085

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3086
  call void @llvm.dbg.value(metadata i64 %7, metadata !3078, metadata !DIExpression()), !dbg !3087
  %8 = udiv i64 %7, %1, !dbg !3088
  %9 = icmp eq i64 %8, %0, !dbg !3090
  br i1 %9, label %12, label %10, !dbg !3091

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !3092
  store i32 12, i32* %11, align 4, !dbg !3094, !tbaa !703
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %14, metadata !3075, metadata !DIExpression()), !dbg !3081
  call void @llvm.dbg.value(metadata i64 %13, metadata !3076, metadata !DIExpression()), !dbg !3082
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #10, !dbg !3095
  call void @llvm.dbg.value(metadata i8* %15, metadata !3077, metadata !DIExpression()), !dbg !3096
  br label %16, !dbg !3097

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ], !dbg !3098
  ret i8* %17, !dbg !3099
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #7 !dbg !3100 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !3117, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.value(metadata i8* %1, metadata !3118, metadata !DIExpression()), !dbg !3127
  call void @llvm.dbg.value(metadata i64 %2, metadata !3119, metadata !DIExpression()), !dbg !3128
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3120, metadata !DIExpression()), !dbg !3129
  %6 = bitcast i32* %5 to i8*, !dbg !3130
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #10, !dbg !3130
  %7 = icmp eq i32* %0, null, !dbg !3131
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3133
  call void @llvm.dbg.value(metadata i32* %8, metadata !3117, metadata !DIExpression()), !dbg !3126
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #10, !dbg !3134
  call void @llvm.dbg.value(metadata i64 %9, metadata !3121, metadata !DIExpression()), !dbg !3135
  %10 = icmp ugt i64 %9, -3, !dbg !3136
  %11 = icmp ne i64 %2, 0, !dbg !3137
  %12 = and i1 %11, %10, !dbg !3138
  br i1 %12, label %13, label %18, !dbg !3138

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #10, !dbg !3139
  br i1 %14, label %18, label %15, !dbg !3140

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3141, !tbaa !1116
  call void @llvm.dbg.value(metadata i8 %16, metadata !3123, metadata !DIExpression()), !dbg !3142
  %17 = zext i8 %16 to i32, !dbg !3143
  store i32 %17, i32* %8, align 4, !dbg !3144, !tbaa !703
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !3145
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #10, !dbg !3146
  ret i64 %19, !dbg !3146
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !3147 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3186, metadata !DIExpression()), !dbg !3191
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #10, !dbg !3192
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3193, metadata !DIExpression()), !dbg !3197
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3199
  %4 = load i32, i32* %3, align 8, !dbg !3199, !tbaa !3200
  %5 = and i32 %4, 32, !dbg !3199
  %6 = icmp eq i32 %5, 0, !dbg !3202
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #10, !dbg !3203
  %8 = icmp ne i32 %7, 0, !dbg !3204
  br i1 %6, label %9, label %19, !dbg !3205

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3207
  %11 = xor i1 %8, true, !dbg !3208
  %12 = or i1 %10, %11, !dbg !3208
  %13 = sext i1 %8 to i32, !dbg !3208
  br i1 %12, label %22, label %14, !dbg !3208

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !3209
  %16 = load i32, i32* %15, align 4, !dbg !3209, !tbaa !703
  %17 = icmp ne i32 %16, 9, !dbg !3210
  %18 = sext i1 %17 to i32, !dbg !3211
  br label %22, !dbg !3211

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3212

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !3214
  store i32 0, i32* %21, align 4, !dbg !3216, !tbaa !703
  br label %22, !dbg !3214

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3217
  ret i32 %23, !dbg !3218
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32) local_unnamed_addr #7 !dbg !3219 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3224, metadata !DIExpression()), !dbg !3227
  call void @llvm.dbg.value(metadata i8 1, metadata !3225, metadata !DIExpression()), !dbg !3228
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #10, !dbg !3229
  call void @llvm.dbg.value(metadata i8* %2, metadata !3226, metadata !DIExpression()), !dbg !3230
  %3 = icmp eq i8* %2, null, !dbg !3231
  br i1 %3, label %11, label %4, !dbg !3233

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.112, i64 0, i64 0)) #14, !dbg !3234
  %6 = icmp eq i32 %5, 0, !dbg !3239
  br i1 %6, label %10, label %7, !dbg !3240

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.113, i64 0, i64 0)) #14, !dbg !3241
  %9 = icmp eq i32 %8, 0, !dbg !3242
  br i1 %9, label %10, label %11, !dbg !3243

; <label>:10:                                     ; preds = %7, %4
  call void @llvm.dbg.value(metadata i8 0, metadata !3225, metadata !DIExpression()), !dbg !3228
  br label %11, !dbg !3244

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !3245
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #7 !dbg !3246 {
  %1 = tail call i8* @nl_langinfo(i32 14) #10, !dbg !3252
  call void @llvm.dbg.value(metadata i8* %1, metadata !3251, metadata !DIExpression()), !dbg !3253
  %2 = icmp eq i8* %1, null, !dbg !3254
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.116, i64 0, i64 0), i8* %1, !dbg !3256
  call void @llvm.dbg.value(metadata i8* %3, metadata !3251, metadata !DIExpression()), !dbg !3253
  %4 = load i8, i8* %3, align 1, !dbg !3257, !tbaa !1116
  %5 = icmp eq i8 %4, 0, !dbg !3261
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.117, i64 0, i64 0), i8* %3, !dbg !3262
  call void @llvm.dbg.value(metadata i8* %6, metadata !3251, metadata !DIExpression()), !dbg !3253
  ret i8* %6, !dbg !3263
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #7 !dbg !3264 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3303, metadata !DIExpression()), !dbg !3307
  call void @llvm.dbg.value(metadata i32 0, metadata !3304, metadata !DIExpression()), !dbg !3308
  call void @llvm.dbg.value(metadata i32 0, metadata !3306, metadata !DIExpression()), !dbg !3309
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3310
  call void @llvm.dbg.value(metadata i32 %2, metadata !3305, metadata !DIExpression()), !dbg !3311
  %3 = icmp slt i32 %2, 0, !dbg !3312
  br i1 %3, label %4, label %6, !dbg !3314

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3315
  br label %24, !dbg !3316

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !3317
  %8 = icmp eq i32 %7, 0, !dbg !3317
  br i1 %8, label %13, label %9, !dbg !3319

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3320
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #10, !dbg !3321
  %12 = icmp eq i64 %11, -1, !dbg !3322
  br i1 %12, label %16, label %13, !dbg !3323

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #10, !dbg !3324
  %15 = icmp eq i32 %14, 0, !dbg !3324
  br i1 %15, label %16, label %18, !dbg !3325

; <label>:16:                                     ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3304, metadata !DIExpression()), !dbg !3308
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3326
  call void @llvm.dbg.value(metadata i32 %21, metadata !3306, metadata !DIExpression()), !dbg !3309
  br label %24, !dbg !3327

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !3328
  %20 = load i32, i32* %19, align 4, !dbg !3328, !tbaa !703
  call void @llvm.dbg.value(metadata i32 %20, metadata !3304, metadata !DIExpression()), !dbg !3308
  call void @llvm.dbg.value(metadata i32 %20, metadata !3304, metadata !DIExpression()), !dbg !3308
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3326
  call void @llvm.dbg.value(metadata i32 %21, metadata !3306, metadata !DIExpression()), !dbg !3309
  %22 = icmp eq i32 %20, 0, !dbg !3329
  br i1 %22, label %24, label %23, !dbg !3327

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3331, !tbaa !703
  call void @llvm.dbg.value(metadata i32 -1, metadata !3306, metadata !DIExpression()), !dbg !3309
  br label %24, !dbg !3333

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3334
  ret i32 %25, !dbg !3335
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
define dso_local i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !3336 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3375, metadata !DIExpression()), !dbg !3376
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3377
  br i1 %2, label %6, label %3, !dbg !3379

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !3380
  %5 = icmp eq i32 %4, 0, !dbg !3380
  br i1 %5, label %6, label %8, !dbg !3381

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3382
  br label %17, !dbg !3383

; <label>:8:                                      ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3384, metadata !DIExpression()) #10, !dbg !3389
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3391
  %10 = load i32, i32* %9, align 8, !dbg !3391, !tbaa !3200
  %11 = and i32 %10, 256, !dbg !3393
  %12 = icmp eq i32 %11, 0, !dbg !3393
  br i1 %12, label %15, label %13, !dbg !3394

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #10, !dbg !3395
  br label %15, !dbg !3395

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3396
  br label %17, !dbg !3397

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3398
  ret i32 %18, !dbg !3399
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #7 !dbg !3400 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3440, metadata !DIExpression()), !dbg !3446
  call void @llvm.dbg.value(metadata i64 %1, metadata !3441, metadata !DIExpression()), !dbg !3447
  call void @llvm.dbg.value(metadata i32 %2, metadata !3442, metadata !DIExpression()), !dbg !3448
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3449
  %5 = load i8*, i8** %4, align 8, !dbg !3449, !tbaa !3450
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3451
  %7 = load i8*, i8** %6, align 8, !dbg !3451, !tbaa !3452
  %8 = icmp eq i8* %5, %7, !dbg !3453
  br i1 %8, label %9, label %28, !dbg !3454

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3455
  %11 = load i8*, i8** %10, align 8, !dbg !3455, !tbaa !3456
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3457
  %13 = load i8*, i8** %12, align 8, !dbg !3457, !tbaa !3458
  %14 = icmp eq i8* %11, %13, !dbg !3459
  br i1 %14, label %15, label %28, !dbg !3460

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3461
  %17 = load i8*, i8** %16, align 8, !dbg !3461, !tbaa !3462
  %18 = icmp eq i8* %17, null, !dbg !3463
  br i1 %18, label %19, label %28, !dbg !3464

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3465
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #10, !dbg !3466
  call void @llvm.dbg.value(metadata i64 %21, metadata !3443, metadata !DIExpression()), !dbg !3467
  %22 = icmp eq i64 %21, -1, !dbg !3468
  br i1 %22, label %30, label %23, !dbg !3470

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3471
  %25 = load i32, i32* %24, align 8, !dbg !3472, !tbaa !3200
  %26 = and i32 %25, -17, !dbg !3472
  store i32 %26, i32* %24, align 8, !dbg !3472, !tbaa !3200
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3473
  store i64 %21, i64* %27, align 8, !dbg !3474, !tbaa !3475
  br label %30, !dbg !3476

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3477
  br label %30, !dbg !3478

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3479
  ret i32 %31, !dbg !3480
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

!llvm.dbg.cu = !{!2, !26, !31, !40, !47, !63, !71, !165, !158, !173, !190, !192, !194, !197, !199, !201, !590, !592, !594}
!llvm.ident = !{!596, !596, !596, !596, !596, !596, !596, !596, !596, !596, !596, !596, !596, !596, !596, !596, !596, !596, !596}
!llvm.module.flags = !{!597, !598, !599, !600, !601}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !3, line: 33, type: !11, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !10)
!3 = !DIFile(filename: "src/logname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4 = !{}
!5 = !{!6, !9}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!10 = !{!0}
!11 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 256, elements: !22)
!12 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !14, line: 50, size: 256, elements: !15)
!14 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!15 = !{!16, !17, !19, !21}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !13, file: !14, line: 52, baseType: !6, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !13, file: !14, line: 55, baseType: !18, size: 32, offset: 64)
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !13, file: !14, line: 56, baseType: !20, size: 64, offset: 128)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !13, file: !14, line: 57, baseType: !18, size: 32, offset: 192)
!22 = !{!23}
!23 = !DISubrange(count: 1)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(name: "Version", scope: !26, file: !27, line: 2, type: !6, isLocal: false, isDefinition: true)
!26 = distinct !DICompileUnit(language: DW_LANG_C99, file: !27, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !28)
!27 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!28 = !{!24}
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(name: "file_name", scope: !31, file: !36, line: 46, type: !6, isLocal: true, isDefinition: true)
!31 = distinct !DICompileUnit(language: DW_LANG_C99, file: !32, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !33)
!32 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!33 = !{!29, !34}
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !31, file: !36, line: 56, type: !37, isLocal: true, isDefinition: true)
!36 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!37 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(name: "exit_failure", scope: !40, file: !43, line: 24, type: !44, isLocal: false, isDefinition: true)
!40 = distinct !DICompileUnit(language: DW_LANG_C99, file: !41, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !42)
!41 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!42 = !{!38}
!43 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!44 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !18)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(name: "long_options", scope: !47, file: !50, line: 33, type: !51, isLocal: true, isDefinition: true)
!47 = distinct !DICompileUnit(language: DW_LANG_C99, file: !48, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !49)
!48 = !DIFile(filename: "./lib/long-options.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!49 = !{!45}
!50 = !DIFile(filename: "lib/long-options.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 768, elements: !59)
!52 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !14, line: 50, size: 256, elements: !54)
!54 = !{!55, !56, !57, !58}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !53, file: !14, line: 52, baseType: !6, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !53, file: !14, line: 55, baseType: !18, size: 32, offset: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !53, file: !14, line: 56, baseType: !20, size: 64, offset: 128)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !53, file: !14, line: 57, baseType: !18, size: 32, offset: 192)
!59 = !{!60}
!60 = !DISubrange(count: 3)
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(name: "program_name", scope: !63, file: !68, line: 33, type: !6, isLocal: false, isDefinition: true)
!63 = distinct !DICompileUnit(language: DW_LANG_C99, file: !64, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !65, globals: !67)
!64 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!65 = !{!9, !66}
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!67 = !{!61}
!68 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !71, file: !117, line: 85, type: !152, isLocal: false, isDefinition: true)
!71 = distinct !DICompileUnit(language: DW_LANG_C99, file: !72, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !73, retainedTypes: !109, globals: !114)
!72 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!73 = !{!74, !89, !94}
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !75, line: 32, baseType: !76, size: 32, elements: !77)
!75 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!76 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!77 = !{!78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88}
!78 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!79 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!80 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!81 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!82 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!83 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!84 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!85 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!86 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!87 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!88 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!89 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !75, line: 242, baseType: !76, size: 32, elements: !90)
!90 = !{!91, !92, !93}
!91 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!92 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!93 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!94 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !95, line: 46, baseType: !76, size: 32, elements: !96)
!95 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!96 = !{!97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108}
!97 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!98 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!99 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!100 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!101 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!102 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!103 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!104 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!105 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!106 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!107 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!108 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!109 = !{!18, !110, !111, !66}
!110 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !112, line: 62, baseType: !113)
!112 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!113 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!114 = !{!69, !115, !122, !134, !136, !141, !148, !150}
!115 = !DIGlobalVariableExpression(var: !116, expr: !DIExpression())
!116 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !71, file: !117, line: 101, type: !118, isLocal: false, isDefinition: true)
!117 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 320, elements: !120)
!119 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!120 = !{!121}
!121 = !DISubrange(count: 10)
!122 = !DIGlobalVariableExpression(var: !123, expr: !DIExpression())
!123 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !71, file: !117, line: 1052, type: !124, isLocal: false, isDefinition: true)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !117, line: 65, size: 448, elements: !125)
!125 = !{!126, !127, !128, !132, !133}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !124, file: !117, line: 68, baseType: !74, size: 32)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !124, file: !117, line: 71, baseType: !18, size: 32, offset: 32)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !124, file: !117, line: 75, baseType: !129, size: 256, offset: 64)
!129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 256, elements: !130)
!130 = !{!131}
!131 = !DISubrange(count: 8)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !124, file: !117, line: 78, baseType: !6, size: 64, offset: 320)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !124, file: !117, line: 81, baseType: !6, size: 64, offset: 384)
!134 = !DIGlobalVariableExpression(var: !135, expr: !DIExpression())
!135 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !71, file: !117, line: 116, type: !124, isLocal: true, isDefinition: true)
!136 = !DIGlobalVariableExpression(var: !137, expr: !DIExpression())
!137 = distinct !DIGlobalVariable(name: "slot0", scope: !71, file: !117, line: 842, type: !138, isLocal: true, isDefinition: true)
!138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2048, elements: !139)
!139 = !{!140}
!140 = !DISubrange(count: 256)
!141 = !DIGlobalVariableExpression(var: !142, expr: !DIExpression())
!142 = distinct !DIGlobalVariable(name: "slotvec", scope: !71, file: !117, line: 845, type: !143, isLocal: true, isDefinition: true)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !117, line: 834, size: 128, elements: !145)
!145 = !{!146, !147}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !144, file: !117, line: 836, baseType: !111, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !144, file: !117, line: 837, baseType: !66, size: 64, offset: 64)
!148 = !DIGlobalVariableExpression(var: !149, expr: !DIExpression())
!149 = distinct !DIGlobalVariable(name: "nslots", scope: !71, file: !117, line: 843, type: !18, isLocal: true, isDefinition: true)
!150 = !DIGlobalVariableExpression(var: !151, expr: !DIExpression())
!151 = distinct !DIGlobalVariable(name: "slotvec0", scope: !71, file: !117, line: 844, type: !144, isLocal: true, isDefinition: true)
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
!168 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !169, line: 41, baseType: !76, size: 32, elements: !170)
!169 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!170 = !{!171}
!171 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2018, isUnsigned: true)
!172 = !{!9}
!173 = distinct !DICompileUnit(language: DW_LANG_C99, file: !174, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !175, retainedTypes: !189)
!174 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!175 = !{!176}
!176 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !178, file: !177, line: 186, baseType: !76, size: 32, elements: !187)
!177 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!178 = distinct !DISubprogram(name: "x2nrealloc", scope: !177, file: !177, line: 174, type: !179, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !182)
!179 = !DISubroutineType(types: !180)
!180 = !{!9, !9, !181, !111}
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!182 = !{!183, !184, !185, !186}
!183 = !DILocalVariable(name: "p", arg: 1, scope: !178, file: !177, line: 174, type: !9)
!184 = !DILocalVariable(name: "pn", arg: 2, scope: !178, file: !177, line: 174, type: !181)
!185 = !DILocalVariable(name: "s", arg: 3, scope: !178, file: !177, line: 174, type: !111)
!186 = !DILocalVariable(name: "n", scope: !178, file: !177, line: 176, type: !111)
!187 = !{!188}
!188 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!189 = !{!111, !66, !9}
!190 = distinct !DICompileUnit(language: DW_LANG_C99, file: !191, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!191 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!192 = distinct !DICompileUnit(language: DW_LANG_C99, file: !193, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !172)
!193 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!194 = distinct !DICompileUnit(language: DW_LANG_C99, file: !195, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !196)
!195 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!196 = !{!111}
!197 = distinct !DICompileUnit(language: DW_LANG_C99, file: !198, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!198 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!199 = distinct !DICompileUnit(language: DW_LANG_C99, file: !200, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!200 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!201 = distinct !DICompileUnit(language: DW_LANG_C99, file: !202, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !203, retainedTypes: !172)
!202 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!203 = !{!204}
!204 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !205, line: 41, baseType: !76, size: 32, elements: !206)
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
!602 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 39, type: !603, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, retainedNodes: !605)
!603 = !DISubroutineType(types: !604)
!604 = !{null, !18}
!605 = !{!606}
!606 = !DILocalVariable(name: "status", arg: 1, scope: !602, file: !3, line: 39, type: !18)
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
!627 = distinct !DILocation(line: 52, column: 7, scope: !628)
!628 = distinct !DILexicalBlock(scope: !629, file: !3, line: 44, column: 5)
!629 = distinct !DILexicalBlock(scope: !602, file: !3, line: 41, column: 7)
!630 = !DILocation(line: 39, column: 12, scope: !602)
!631 = !DILocation(line: 41, column: 14, scope: !629)
!632 = !DILocation(line: 41, column: 7, scope: !602)
!633 = !DILocation(line: 42, column: 5, scope: !634)
!634 = distinct !DILexicalBlock(scope: !629, file: !3, line: 42, column: 5)
!635 = !{!636, !636, i64 0}
!636 = !{!"any pointer", !637, i64 0}
!637 = !{!"omnipotent char", !638, i64 0}
!638 = !{!"Simple C/C++ TBAA"}
!639 = !DILocation(line: 45, column: 7, scope: !628)
!640 = !DILocation(line: 46, column: 7, scope: !628)
!641 = !DILocation(line: 50, column: 7, scope: !628)
!642 = !DILocation(line: 51, column: 7, scope: !628)
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
!677 = !DILocation(line: 54, column: 3, scope: !602)
!678 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 58, type: !679, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !682)
!679 = !DISubroutineType(types: !680)
!680 = !{!18, !18, !681}
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!682 = !{!683, !684, !685}
!683 = !DILocalVariable(name: "argc", arg: 1, scope: !678, file: !3, line: 58, type: !18)
!684 = !DILocalVariable(name: "argv", arg: 2, scope: !678, file: !3, line: 58, type: !681)
!685 = !DILocalVariable(name: "cp", scope: !678, file: !3, line: 60, type: !66)
!686 = !DILocation(line: 58, column: 11, scope: !678)
!687 = !DILocation(line: 58, column: 24, scope: !678)
!688 = !DILocation(line: 63, column: 21, scope: !678)
!689 = !DILocation(line: 63, column: 3, scope: !678)
!690 = !DILocation(line: 64, column: 3, scope: !678)
!691 = !DILocation(line: 65, column: 3, scope: !678)
!692 = !DILocation(line: 66, column: 3, scope: !678)
!693 = !DILocation(line: 68, column: 3, scope: !678)
!694 = !DILocation(line: 70, column: 63, scope: !678)
!695 = !DILocation(line: 70, column: 3, scope: !678)
!696 = !DILocation(line: 72, column: 7, scope: !697)
!697 = distinct !DILexicalBlock(scope: !678, file: !3, line: 72, column: 7)
!698 = !DILocation(line: 72, column: 56, scope: !697)
!699 = !DILocation(line: 72, column: 7, scope: !678)
!700 = !DILocation(line: 73, column: 5, scope: !697)
!701 = !DILocation(line: 75, column: 7, scope: !702)
!702 = distinct !DILexicalBlock(scope: !678, file: !3, line: 75, column: 7)
!703 = !{!704, !704, i64 0}
!704 = !{!"int", !637, i64 0}
!705 = !DILocation(line: 75, column: 14, scope: !702)
!706 = !DILocation(line: 75, column: 7, scope: !678)
!707 = !DILocation(line: 77, column: 20, scope: !708)
!708 = distinct !DILexicalBlock(scope: !702, file: !3, line: 76, column: 5)
!709 = !DILocation(line: 77, column: 55, scope: !708)
!710 = !DILocation(line: 77, column: 50, scope: !708)
!711 = !DILocation(line: 77, column: 43, scope: !708)
!712 = !DILocation(line: 77, column: 7, scope: !708)
!713 = !DILocation(line: 78, column: 7, scope: !708)
!714 = !DILocation(line: 83, column: 8, scope: !678)
!715 = !DILocation(line: 60, column: 9, scope: !678)
!716 = !DILocation(line: 84, column: 9, scope: !717)
!717 = distinct !DILexicalBlock(scope: !678, file: !3, line: 84, column: 7)
!718 = !DILocation(line: 84, column: 7, scope: !678)
!719 = !DILocation(line: 85, column: 5, scope: !717)
!720 = !DILocation(line: 87, column: 3, scope: !678)
!721 = !DILocation(line: 88, column: 3, scope: !678)
!722 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !36, file: !36, line: 51, type: !610, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !31, retainedNodes: !723)
!723 = !{!724}
!724 = !DILocalVariable(name: "file", arg: 1, scope: !722, file: !36, line: 51, type: !6)
!725 = !DILocation(line: 51, column: 41, scope: !722)
!726 = !DILocation(line: 53, column: 13, scope: !722)
!727 = !DILocation(line: 54, column: 1, scope: !722)
!728 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !36, file: !36, line: 88, type: !729, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !31, retainedNodes: !731)
!729 = !DISubroutineType(types: !730)
!730 = !{null, !37}
!731 = !{!732}
!732 = !DILocalVariable(name: "ignore", arg: 1, scope: !728, file: !36, line: 88, type: !37)
!733 = !DILocation(line: 88, column: 37, scope: !728)
!734 = !DILocation(line: 90, column: 16, scope: !728)
!735 = !{!736, !736, i64 0}
!736 = !{!"_Bool", !637, i64 0}
!737 = !DILocation(line: 91, column: 1, scope: !728)
!738 = distinct !DISubprogram(name: "close_stdout", scope: !36, file: !36, line: 117, type: !739, isLocal: false, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: true, unit: !31, retainedNodes: !741)
!739 = !DISubroutineType(types: !740)
!740 = !{null}
!741 = !{!742}
!742 = !DILocalVariable(name: "write_error", scope: !743, file: !36, line: 122, type: !6)
!743 = distinct !DILexicalBlock(scope: !744, file: !36, line: 121, column: 5)
!744 = distinct !DILexicalBlock(scope: !738, file: !36, line: 119, column: 7)
!745 = !DILocation(line: 119, column: 21, scope: !744)
!746 = !DILocation(line: 119, column: 7, scope: !744)
!747 = !DILocation(line: 119, column: 29, scope: !744)
!748 = !DILocation(line: 120, column: 7, scope: !744)
!749 = !DILocation(line: 120, column: 12, scope: !744)
!750 = !{i8 0, i8 2}
!751 = !DILocation(line: 120, column: 25, scope: !744)
!752 = !DILocation(line: 120, column: 28, scope: !744)
!753 = !DILocation(line: 120, column: 34, scope: !744)
!754 = !DILocation(line: 119, column: 7, scope: !738)
!755 = !DILocation(line: 122, column: 33, scope: !743)
!756 = !DILocation(line: 122, column: 19, scope: !743)
!757 = !DILocation(line: 123, column: 11, scope: !758)
!758 = distinct !DILexicalBlock(scope: !743, file: !36, line: 123, column: 11)
!759 = !DILocation(line: 0, scope: !758)
!760 = !DILocation(line: 123, column: 11, scope: !743)
!761 = !DILocation(line: 124, column: 36, scope: !758)
!762 = !DILocation(line: 124, column: 9, scope: !758)
!763 = !DILocation(line: 127, column: 9, scope: !758)
!764 = !DILocation(line: 129, column: 14, scope: !743)
!765 = !DILocation(line: 129, column: 7, scope: !743)
!766 = !DILocation(line: 134, column: 42, scope: !767)
!767 = distinct !DILexicalBlock(scope: !738, file: !36, line: 134, column: 7)
!768 = !DILocation(line: 134, column: 28, scope: !767)
!769 = !DILocation(line: 134, column: 50, scope: !767)
!770 = !DILocation(line: 134, column: 7, scope: !738)
!771 = !DILocation(line: 135, column: 12, scope: !767)
!772 = !DILocation(line: 135, column: 5, scope: !767)
!773 = !DILocation(line: 136, column: 1, scope: !738)
!774 = distinct !DISubprogram(name: "parse_long_options", scope: !50, file: !50, line: 44, type: !775, isLocal: false, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: true, unit: !47, retainedNodes: !778)
!775 = !DISubroutineType(types: !776)
!776 = !{null, !18, !681, !6, !6, !6, !777, null}
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!778 = !{!779, !780, !781, !782, !783, !784, !785, !786, !787}
!779 = !DILocalVariable(name: "argc", arg: 1, scope: !774, file: !50, line: 44, type: !18)
!780 = !DILocalVariable(name: "argv", arg: 2, scope: !774, file: !50, line: 45, type: !681)
!781 = !DILocalVariable(name: "command_name", arg: 3, scope: !774, file: !50, line: 46, type: !6)
!782 = !DILocalVariable(name: "package", arg: 4, scope: !774, file: !50, line: 47, type: !6)
!783 = !DILocalVariable(name: "version", arg: 5, scope: !774, file: !50, line: 48, type: !6)
!784 = !DILocalVariable(name: "usage_func", arg: 6, scope: !774, file: !50, line: 49, type: !777)
!785 = !DILocalVariable(name: "c", scope: !774, file: !50, line: 52, type: !18)
!786 = !DILocalVariable(name: "saved_opterr", scope: !774, file: !50, line: 53, type: !18)
!787 = !DILocalVariable(name: "authors", scope: !788, file: !50, line: 71, type: !792)
!788 = distinct !DILexicalBlock(scope: !789, file: !50, line: 70, column: 11)
!789 = distinct !DILexicalBlock(scope: !790, file: !50, line: 64, column: 9)
!790 = distinct !DILexicalBlock(scope: !791, file: !50, line: 62, column: 5)
!791 = distinct !DILexicalBlock(scope: !774, file: !50, line: 60, column: 7)
!792 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !793, line: 52, baseType: !794)
!793 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!794 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !795, line: 48, baseType: !796)
!795 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!796 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !48, line: 71, baseType: !797)
!797 = !DICompositeType(tag: DW_TAG_array_type, baseType: !798, size: 192, elements: !22)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !48, line: 71, size: 192, elements: !799)
!799 = !{!800, !801, !802, !803}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !798, file: !48, line: 71, baseType: !76, size: 32)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !798, file: !48, line: 71, baseType: !76, size: 32, offset: 32)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !798, file: !48, line: 71, baseType: !9, size: 64, offset: 64)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !798, file: !48, line: 71, baseType: !9, size: 64, offset: 128)
!804 = !DILocation(line: 44, column: 25, scope: !774)
!805 = !DILocation(line: 45, column: 28, scope: !774)
!806 = !DILocation(line: 46, column: 33, scope: !774)
!807 = !DILocation(line: 47, column: 33, scope: !774)
!808 = !DILocation(line: 48, column: 33, scope: !774)
!809 = !DILocation(line: 49, column: 28, scope: !774)
!810 = !DILocation(line: 55, column: 18, scope: !774)
!811 = !DILocation(line: 53, column: 7, scope: !774)
!812 = !DILocation(line: 58, column: 10, scope: !774)
!813 = !DILocation(line: 60, column: 12, scope: !791)
!814 = !DILocation(line: 61, column: 7, scope: !791)
!815 = !DILocation(line: 61, column: 15, scope: !791)
!816 = !DILocation(line: 52, column: 7, scope: !774)
!817 = !DILocation(line: 60, column: 7, scope: !774)
!818 = !DILocation(line: 66, column: 11, scope: !789)
!819 = !DILocation(line: 67, column: 11, scope: !789)
!820 = !DILocation(line: 71, column: 13, scope: !788)
!821 = !DILocation(line: 71, column: 21, scope: !788)
!822 = !DILocation(line: 72, column: 13, scope: !788)
!823 = !DILocation(line: 73, column: 29, scope: !788)
!824 = !DILocation(line: 73, column: 13, scope: !788)
!825 = !DILocation(line: 74, column: 13, scope: !788)
!826 = !DILocation(line: 84, column: 10, scope: !774)
!827 = !DILocation(line: 88, column: 10, scope: !774)
!828 = !DILocation(line: 89, column: 1, scope: !774)
!829 = distinct !DISubprogram(name: "set_program_name", scope: !68, file: !68, line: 39, type: !610, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !63, retainedNodes: !830)
!830 = !{!831, !832, !833}
!831 = !DILocalVariable(name: "argv0", arg: 1, scope: !829, file: !68, line: 39, type: !6)
!832 = !DILocalVariable(name: "slash", scope: !829, file: !68, line: 46, type: !6)
!833 = !DILocalVariable(name: "base", scope: !829, file: !68, line: 47, type: !6)
!834 = !DILocation(line: 39, column: 31, scope: !829)
!835 = !DILocation(line: 51, column: 13, scope: !836)
!836 = distinct !DILexicalBlock(scope: !829, file: !68, line: 51, column: 7)
!837 = !DILocation(line: 51, column: 7, scope: !829)
!838 = !DILocation(line: 55, column: 14, scope: !839)
!839 = distinct !DILexicalBlock(scope: !836, file: !68, line: 52, column: 5)
!840 = !DILocation(line: 54, column: 7, scope: !839)
!841 = !DILocation(line: 56, column: 7, scope: !839)
!842 = !DILocation(line: 59, column: 11, scope: !829)
!843 = !DILocation(line: 46, column: 15, scope: !829)
!844 = !DILocation(line: 60, column: 17, scope: !829)
!845 = !DILocation(line: 60, column: 33, scope: !829)
!846 = !DILocation(line: 60, column: 11, scope: !829)
!847 = !DILocation(line: 47, column: 15, scope: !829)
!848 = !DILocation(line: 61, column: 12, scope: !849)
!849 = distinct !DILexicalBlock(scope: !829, file: !68, line: 61, column: 7)
!850 = !DILocation(line: 61, column: 20, scope: !849)
!851 = !DILocation(line: 61, column: 25, scope: !849)
!852 = !DILocation(line: 61, column: 42, scope: !849)
!853 = !DILocation(line: 61, column: 28, scope: !849)
!854 = !DILocation(line: 61, column: 61, scope: !849)
!855 = !DILocation(line: 61, column: 7, scope: !829)
!856 = !DILocation(line: 64, column: 11, scope: !857)
!857 = distinct !DILexicalBlock(scope: !858, file: !68, line: 64, column: 11)
!858 = distinct !DILexicalBlock(scope: !849, file: !68, line: 62, column: 5)
!859 = !DILocation(line: 64, column: 36, scope: !857)
!860 = !DILocation(line: 64, column: 11, scope: !858)
!861 = !DILocation(line: 66, column: 24, scope: !862)
!862 = distinct !DILexicalBlock(scope: !857, file: !68, line: 65, column: 9)
!863 = !DILocation(line: 70, column: 41, scope: !862)
!864 = !DILocation(line: 72, column: 9, scope: !862)
!865 = !DILocation(line: 84, column: 16, scope: !829)
!866 = !DILocation(line: 90, column: 27, scope: !829)
!867 = !DILocation(line: 92, column: 1, scope: !829)
!868 = distinct !DISubprogram(name: "clone_quoting_options", scope: !117, file: !117, line: 122, type: !869, isLocal: false, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !872)
!869 = !DISubroutineType(types: !870)
!870 = !{!871, !871}
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!872 = !{!873, !874, !875}
!873 = !DILocalVariable(name: "o", arg: 1, scope: !868, file: !117, line: 122, type: !871)
!874 = !DILocalVariable(name: "e", scope: !868, file: !117, line: 124, type: !18)
!875 = !DILocalVariable(name: "p", scope: !868, file: !117, line: 125, type: !871)
!876 = !DILocation(line: 122, column: 48, scope: !868)
!877 = !DILocation(line: 124, column: 11, scope: !868)
!878 = !DILocation(line: 124, column: 7, scope: !868)
!879 = !DILocation(line: 125, column: 40, scope: !868)
!880 = !DILocation(line: 125, column: 31, scope: !868)
!881 = !DILocation(line: 125, column: 27, scope: !868)
!882 = !DILocation(line: 127, column: 9, scope: !868)
!883 = !DILocation(line: 128, column: 3, scope: !868)
!884 = distinct !DISubprogram(name: "get_quoting_style", scope: !117, file: !117, line: 133, type: !885, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !889)
!885 = !DISubroutineType(types: !886)
!886 = !{!74, !887}
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !124)
!889 = !{!890}
!890 = !DILocalVariable(name: "o", arg: 1, scope: !884, file: !117, line: 133, type: !887)
!891 = !DILocation(line: 133, column: 50, scope: !884)
!892 = !DILocation(line: 135, column: 11, scope: !884)
!893 = !DILocation(line: 135, column: 46, scope: !884)
!894 = !{!895, !637, i64 0}
!895 = !{!"quoting_options", !637, i64 0, !704, i64 4, !637, i64 8, !636, i64 40, !636, i64 48}
!896 = !DILocation(line: 135, column: 3, scope: !884)
!897 = distinct !DISubprogram(name: "set_quoting_style", scope: !117, file: !117, line: 141, type: !898, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !900)
!898 = !DISubroutineType(types: !899)
!899 = !{null, !871, !74}
!900 = !{!901, !902}
!901 = !DILocalVariable(name: "o", arg: 1, scope: !897, file: !117, line: 141, type: !871)
!902 = !DILocalVariable(name: "s", arg: 2, scope: !897, file: !117, line: 141, type: !74)
!903 = !DILocation(line: 141, column: 44, scope: !897)
!904 = !DILocation(line: 141, column: 66, scope: !897)
!905 = !DILocation(line: 143, column: 4, scope: !897)
!906 = !DILocation(line: 143, column: 39, scope: !897)
!907 = !DILocation(line: 143, column: 45, scope: !897)
!908 = !DILocation(line: 144, column: 1, scope: !897)
!909 = distinct !DISubprogram(name: "set_char_quoting", scope: !117, file: !117, line: 152, type: !910, isLocal: false, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !912)
!910 = !DISubroutineType(types: !911)
!911 = !{!18, !871, !8, !18}
!912 = !{!913, !914, !915, !916, !918, !920, !921}
!913 = !DILocalVariable(name: "o", arg: 1, scope: !909, file: !117, line: 152, type: !871)
!914 = !DILocalVariable(name: "c", arg: 2, scope: !909, file: !117, line: 152, type: !8)
!915 = !DILocalVariable(name: "i", arg: 3, scope: !909, file: !117, line: 152, type: !18)
!916 = !DILocalVariable(name: "uc", scope: !909, file: !117, line: 154, type: !917)
!917 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!918 = !DILocalVariable(name: "p", scope: !909, file: !117, line: 155, type: !919)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!920 = !DILocalVariable(name: "shift", scope: !909, file: !117, line: 157, type: !18)
!921 = !DILocalVariable(name: "r", scope: !909, file: !117, line: 158, type: !18)
!922 = !DILocation(line: 152, column: 43, scope: !909)
!923 = !DILocation(line: 152, column: 51, scope: !909)
!924 = !DILocation(line: 152, column: 58, scope: !909)
!925 = !DILocation(line: 154, column: 17, scope: !909)
!926 = !DILocation(line: 156, column: 6, scope: !909)
!927 = !DILocation(line: 156, column: 62, scope: !909)
!928 = !DILocation(line: 156, column: 57, scope: !909)
!929 = !DILocation(line: 155, column: 17, scope: !909)
!930 = !DILocation(line: 157, column: 15, scope: !909)
!931 = !DILocation(line: 157, column: 7, scope: !909)
!932 = !DILocation(line: 158, column: 12, scope: !909)
!933 = !DILocation(line: 158, column: 15, scope: !909)
!934 = !DILocation(line: 158, column: 25, scope: !909)
!935 = !DILocation(line: 158, column: 7, scope: !909)
!936 = !DILocation(line: 159, column: 13, scope: !909)
!937 = !DILocation(line: 159, column: 18, scope: !909)
!938 = !DILocation(line: 159, column: 23, scope: !909)
!939 = !DILocation(line: 159, column: 6, scope: !909)
!940 = !DILocation(line: 160, column: 3, scope: !909)
!941 = distinct !DISubprogram(name: "set_quoting_flags", scope: !117, file: !117, line: 168, type: !942, isLocal: false, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !944)
!942 = !DISubroutineType(types: !943)
!943 = !{!18, !871, !18}
!944 = !{!945, !946, !947}
!945 = !DILocalVariable(name: "o", arg: 1, scope: !941, file: !117, line: 168, type: !871)
!946 = !DILocalVariable(name: "i", arg: 2, scope: !941, file: !117, line: 168, type: !18)
!947 = !DILocalVariable(name: "r", scope: !941, file: !117, line: 170, type: !18)
!948 = !DILocation(line: 168, column: 44, scope: !941)
!949 = !DILocation(line: 168, column: 51, scope: !941)
!950 = !DILocation(line: 171, column: 8, scope: !951)
!951 = distinct !DILexicalBlock(scope: !941, file: !117, line: 171, column: 7)
!952 = !DILocation(line: 171, column: 7, scope: !941)
!953 = !DILocation(line: 173, column: 10, scope: !941)
!954 = !{!895, !704, i64 4}
!955 = !DILocation(line: 170, column: 7, scope: !941)
!956 = !DILocation(line: 174, column: 12, scope: !941)
!957 = !DILocation(line: 175, column: 3, scope: !941)
!958 = distinct !DISubprogram(name: "set_custom_quoting", scope: !117, file: !117, line: 179, type: !959, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !961)
!959 = !DISubroutineType(types: !960)
!960 = !{null, !871, !6, !6}
!961 = !{!962, !963, !964}
!962 = !DILocalVariable(name: "o", arg: 1, scope: !958, file: !117, line: 179, type: !871)
!963 = !DILocalVariable(name: "left_quote", arg: 2, scope: !958, file: !117, line: 180, type: !6)
!964 = !DILocalVariable(name: "right_quote", arg: 3, scope: !958, file: !117, line: 180, type: !6)
!965 = !DILocation(line: 179, column: 45, scope: !958)
!966 = !DILocation(line: 180, column: 33, scope: !958)
!967 = !DILocation(line: 180, column: 57, scope: !958)
!968 = !DILocation(line: 182, column: 8, scope: !969)
!969 = distinct !DILexicalBlock(scope: !958, file: !117, line: 182, column: 7)
!970 = !DILocation(line: 182, column: 7, scope: !958)
!971 = !DILocation(line: 184, column: 6, scope: !958)
!972 = !DILocation(line: 184, column: 12, scope: !958)
!973 = !DILocation(line: 185, column: 8, scope: !974)
!974 = distinct !DILexicalBlock(scope: !958, file: !117, line: 185, column: 7)
!975 = !DILocation(line: 185, column: 23, scope: !974)
!976 = !DILocation(line: 185, column: 19, scope: !974)
!977 = !DILocation(line: 186, column: 5, scope: !974)
!978 = !DILocation(line: 187, column: 6, scope: !958)
!979 = !DILocation(line: 187, column: 17, scope: !958)
!980 = !{!895, !636, i64 40}
!981 = !DILocation(line: 188, column: 6, scope: !958)
!982 = !DILocation(line: 188, column: 18, scope: !958)
!983 = !{!895, !636, i64 48}
!984 = !DILocation(line: 189, column: 1, scope: !958)
!985 = distinct !DISubprogram(name: "quotearg_buffer", scope: !117, file: !117, line: 784, type: !986, isLocal: false, isDefinition: true, scopeLine: 787, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !988)
!986 = !DISubroutineType(types: !987)
!987 = !{!111, !66, !111, !6, !111, !887}
!988 = !{!989, !990, !991, !992, !993, !994, !995, !996}
!989 = !DILocalVariable(name: "buffer", arg: 1, scope: !985, file: !117, line: 784, type: !66)
!990 = !DILocalVariable(name: "buffersize", arg: 2, scope: !985, file: !117, line: 784, type: !111)
!991 = !DILocalVariable(name: "arg", arg: 3, scope: !985, file: !117, line: 785, type: !6)
!992 = !DILocalVariable(name: "argsize", arg: 4, scope: !985, file: !117, line: 785, type: !111)
!993 = !DILocalVariable(name: "o", arg: 5, scope: !985, file: !117, line: 786, type: !887)
!994 = !DILocalVariable(name: "p", scope: !985, file: !117, line: 788, type: !887)
!995 = !DILocalVariable(name: "e", scope: !985, file: !117, line: 789, type: !18)
!996 = !DILocalVariable(name: "r", scope: !985, file: !117, line: 790, type: !111)
!997 = !DILocation(line: 784, column: 24, scope: !985)
!998 = !DILocation(line: 784, column: 39, scope: !985)
!999 = !DILocation(line: 785, column: 30, scope: !985)
!1000 = !DILocation(line: 785, column: 42, scope: !985)
!1001 = !DILocation(line: 786, column: 48, scope: !985)
!1002 = !DILocation(line: 788, column: 37, scope: !985)
!1003 = !DILocation(line: 788, column: 33, scope: !985)
!1004 = !DILocation(line: 789, column: 11, scope: !985)
!1005 = !DILocation(line: 789, column: 7, scope: !985)
!1006 = !DILocation(line: 791, column: 43, scope: !985)
!1007 = !DILocation(line: 791, column: 53, scope: !985)
!1008 = !DILocation(line: 791, column: 60, scope: !985)
!1009 = !DILocation(line: 792, column: 43, scope: !985)
!1010 = !DILocation(line: 792, column: 58, scope: !985)
!1011 = !DILocation(line: 790, column: 14, scope: !985)
!1012 = !DILocation(line: 790, column: 10, scope: !985)
!1013 = !DILocation(line: 793, column: 9, scope: !985)
!1014 = !DILocation(line: 794, column: 3, scope: !985)
!1015 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !117, file: !117, line: 256, type: !1016, isLocal: true, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !1020)
!1016 = !DISubroutineType(types: !1017)
!1017 = !{!111, !66, !111, !6, !111, !74, !18, !1018, !6, !6}
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!1020 = !{!1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1045, !1046, !1047, !1048, !1049, !1052, !1053, !1071, !1074, !1075, !1082}
!1021 = !DILocalVariable(name: "buffer", arg: 1, scope: !1015, file: !117, line: 256, type: !66)
!1022 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1015, file: !117, line: 256, type: !111)
!1023 = !DILocalVariable(name: "arg", arg: 3, scope: !1015, file: !117, line: 257, type: !6)
!1024 = !DILocalVariable(name: "argsize", arg: 4, scope: !1015, file: !117, line: 257, type: !111)
!1025 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1015, file: !117, line: 258, type: !74)
!1026 = !DILocalVariable(name: "flags", arg: 6, scope: !1015, file: !117, line: 258, type: !18)
!1027 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1015, file: !117, line: 259, type: !1018)
!1028 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1015, file: !117, line: 260, type: !6)
!1029 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1015, file: !117, line: 261, type: !6)
!1030 = !DILocalVariable(name: "i", scope: !1015, file: !117, line: 263, type: !111)
!1031 = !DILocalVariable(name: "len", scope: !1015, file: !117, line: 264, type: !111)
!1032 = !DILocalVariable(name: "orig_buffersize", scope: !1015, file: !117, line: 265, type: !111)
!1033 = !DILocalVariable(name: "quote_string", scope: !1015, file: !117, line: 266, type: !6)
!1034 = !DILocalVariable(name: "quote_string_len", scope: !1015, file: !117, line: 267, type: !111)
!1035 = !DILocalVariable(name: "backslash_escapes", scope: !1015, file: !117, line: 268, type: !37)
!1036 = !DILocalVariable(name: "unibyte_locale", scope: !1015, file: !117, line: 269, type: !37)
!1037 = !DILocalVariable(name: "elide_outer_quotes", scope: !1015, file: !117, line: 270, type: !37)
!1038 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1015, file: !117, line: 271, type: !37)
!1039 = !DILocalVariable(name: "encountered_single_quote", scope: !1015, file: !117, line: 272, type: !37)
!1040 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1015, file: !117, line: 273, type: !37)
!1041 = !DILocalVariable(name: "c", scope: !1042, file: !117, line: 402, type: !917)
!1042 = distinct !DILexicalBlock(scope: !1043, file: !117, line: 401, column: 5)
!1043 = distinct !DILexicalBlock(scope: !1044, file: !117, line: 400, column: 3)
!1044 = distinct !DILexicalBlock(scope: !1015, file: !117, line: 400, column: 3)
!1045 = !DILocalVariable(name: "esc", scope: !1042, file: !117, line: 403, type: !917)
!1046 = !DILocalVariable(name: "is_right_quote", scope: !1042, file: !117, line: 404, type: !37)
!1047 = !DILocalVariable(name: "escaping", scope: !1042, file: !117, line: 405, type: !37)
!1048 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1042, file: !117, line: 406, type: !37)
!1049 = !DILocalVariable(name: "m", scope: !1050, file: !117, line: 610, type: !111)
!1050 = distinct !DILexicalBlock(scope: !1051, file: !117, line: 608, column: 11)
!1051 = distinct !DILexicalBlock(scope: !1042, file: !117, line: 426, column: 9)
!1052 = !DILocalVariable(name: "printable", scope: !1050, file: !117, line: 612, type: !37)
!1053 = !DILocalVariable(name: "mbstate", scope: !1054, file: !117, line: 621, type: !1056)
!1054 = distinct !DILexicalBlock(scope: !1055, file: !117, line: 620, column: 15)
!1055 = distinct !DILexicalBlock(scope: !1050, file: !117, line: 614, column: 17)
!1056 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1057, line: 6, baseType: !1058)
!1057 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1058 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1059, line: 21, baseType: !1060)
!1059 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1060 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1059, line: 13, size: 64, elements: !1061)
!1061 = !{!1062, !1063}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1060, file: !1059, line: 15, baseType: !18, size: 32)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1060, file: !1059, line: 20, baseType: !1064, size: 32, offset: 32)
!1064 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1060, file: !1059, line: 16, size: 32, elements: !1065)
!1065 = !{!1066, !1067}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1064, file: !1059, line: 18, baseType: !76, size: 32)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1064, file: !1059, line: 19, baseType: !1068, size: 32)
!1068 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 32, elements: !1069)
!1069 = !{!1070}
!1070 = !DISubrange(count: 4)
!1071 = !DILocalVariable(name: "w", scope: !1072, file: !117, line: 631, type: !1073)
!1072 = distinct !DILexicalBlock(scope: !1054, file: !117, line: 630, column: 19)
!1073 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !112, line: 90, baseType: !18)
!1074 = !DILocalVariable(name: "bytes", scope: !1072, file: !117, line: 632, type: !111)
!1075 = !DILocalVariable(name: "j", scope: !1076, file: !117, line: 657, type: !111)
!1076 = distinct !DILexicalBlock(scope: !1077, file: !117, line: 656, column: 27)
!1077 = distinct !DILexicalBlock(scope: !1078, file: !117, line: 654, column: 29)
!1078 = distinct !DILexicalBlock(scope: !1079, file: !117, line: 649, column: 23)
!1079 = distinct !DILexicalBlock(scope: !1080, file: !117, line: 641, column: 30)
!1080 = distinct !DILexicalBlock(scope: !1081, file: !117, line: 636, column: 30)
!1081 = distinct !DILexicalBlock(scope: !1072, file: !117, line: 634, column: 25)
!1082 = !DILocalVariable(name: "ilim", scope: !1083, file: !117, line: 684, type: !111)
!1083 = distinct !DILexicalBlock(scope: !1084, file: !117, line: 681, column: 15)
!1084 = distinct !DILexicalBlock(scope: !1050, file: !117, line: 680, column: 17)
!1085 = !DILocation(line: 256, column: 33, scope: !1015)
!1086 = !DILocation(line: 256, column: 48, scope: !1015)
!1087 = !DILocation(line: 257, column: 39, scope: !1015)
!1088 = !DILocation(line: 257, column: 51, scope: !1015)
!1089 = !DILocation(line: 258, column: 46, scope: !1015)
!1090 = !DILocation(line: 258, column: 65, scope: !1015)
!1091 = !DILocation(line: 259, column: 47, scope: !1015)
!1092 = !DILocation(line: 260, column: 39, scope: !1015)
!1093 = !DILocation(line: 261, column: 39, scope: !1015)
!1094 = !DILocation(line: 264, column: 10, scope: !1015)
!1095 = !DILocation(line: 265, column: 10, scope: !1015)
!1096 = !DILocation(line: 266, column: 15, scope: !1015)
!1097 = !DILocation(line: 267, column: 10, scope: !1015)
!1098 = !DILocation(line: 268, column: 8, scope: !1015)
!1099 = !DILocation(line: 269, column: 25, scope: !1015)
!1100 = !DILocation(line: 269, column: 36, scope: !1015)
!1101 = !DILocation(line: 270, column: 8, scope: !1015)
!1102 = !DILocation(line: 271, column: 8, scope: !1015)
!1103 = !DILocation(line: 272, column: 8, scope: !1015)
!1104 = !DILocation(line: 273, column: 8, scope: !1015)
!1105 = !DILocation(line: 273, column: 3, scope: !1015)
!1106 = !DILocation(line: 0, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1015, file: !117, line: 317, column: 5)
!1108 = !DILocation(line: 316, column: 3, scope: !1015)
!1109 = !DILocation(line: 323, column: 11, scope: !1107)
!1110 = !DILocation(line: 323, column: 12, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1107, file: !117, line: 323, column: 11)
!1112 = !DILocation(line: 324, column: 9, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1114, file: !117, line: 324, column: 9)
!1114 = distinct !DILexicalBlock(scope: !1111, file: !117, line: 324, column: 9)
!1115 = !DILocation(line: 324, column: 9, scope: !1114)
!1116 = !{!637, !637, i64 0}
!1117 = !DILocation(line: 362, column: 26, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1119, file: !117, line: 340, column: 11)
!1119 = distinct !DILexicalBlock(scope: !1120, file: !117, line: 339, column: 13)
!1120 = distinct !DILexicalBlock(scope: !1107, file: !117, line: 338, column: 7)
!1121 = !DILocation(line: 363, column: 27, scope: !1118)
!1122 = !DILocation(line: 364, column: 11, scope: !1118)
!1123 = !DILocation(line: 365, column: 14, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1120, file: !117, line: 365, column: 13)
!1125 = !DILocation(line: 365, column: 13, scope: !1120)
!1126 = !DILocation(line: 366, column: 43, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1128, file: !117, line: 366, column: 11)
!1128 = distinct !DILexicalBlock(scope: !1124, file: !117, line: 366, column: 11)
!1129 = !DILocation(line: 366, column: 11, scope: !1128)
!1130 = !DILocation(line: 367, column: 13, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1132, file: !117, line: 367, column: 13)
!1132 = distinct !DILexicalBlock(scope: !1127, file: !117, line: 367, column: 13)
!1133 = !DILocation(line: 367, column: 13, scope: !1132)
!1134 = !DILocation(line: 366, column: 70, scope: !1127)
!1135 = distinct !{!1135, !1129, !1136}
!1136 = !DILocation(line: 367, column: 13, scope: !1128)
!1137 = !DILocation(line: 370, column: 28, scope: !1120)
!1138 = !DILocation(line: 372, column: 7, scope: !1107)
!1139 = !DILocation(line: 376, column: 7, scope: !1107)
!1140 = !DILocation(line: 379, column: 7, scope: !1107)
!1141 = !DILocation(line: 381, column: 12, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1107, file: !117, line: 381, column: 11)
!1143 = !DILocation(line: 381, column: 11, scope: !1107)
!1144 = !DILocation(line: 0, scope: !1142)
!1145 = !DILocation(line: 386, column: 12, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1107, file: !117, line: 386, column: 11)
!1147 = !DILocation(line: 386, column: 11, scope: !1107)
!1148 = !DILocation(line: 387, column: 9, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1150, file: !117, line: 387, column: 9)
!1150 = distinct !DILexicalBlock(scope: !1146, file: !117, line: 387, column: 9)
!1151 = !DILocation(line: 387, column: 9, scope: !1150)
!1152 = !DILocation(line: 394, column: 7, scope: !1107)
!1153 = !DILocation(line: 397, column: 7, scope: !1107)
!1154 = !DILocation(line: 0, scope: !1015)
!1155 = !DILocation(line: 263, column: 10, scope: !1015)
!1156 = !DILocation(line: 400, column: 8, scope: !1044)
!1157 = !DILocation(line: 0, scope: !1043)
!1158 = !DILocation(line: 400, column: 27, scope: !1043)
!1159 = !DILocation(line: 400, column: 19, scope: !1043)
!1160 = !DILocation(line: 400, column: 41, scope: !1043)
!1161 = !DILocation(line: 400, column: 48, scope: !1043)
!1162 = !DILocation(line: 400, column: 3, scope: !1044)
!1163 = !DILocation(line: 400, column: 60, scope: !1043)
!1164 = !DILocation(line: 404, column: 12, scope: !1042)
!1165 = !DILocation(line: 405, column: 12, scope: !1042)
!1166 = !DILocation(line: 406, column: 12, scope: !1042)
!1167 = !DILocation(line: 409, column: 11, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1042, file: !117, line: 408, column: 11)
!1169 = !DILocation(line: 411, column: 17, scope: !1168)
!1170 = !DILocation(line: 412, column: 39, scope: !1168)
!1171 = !DILocation(line: 416, column: 32, scope: !1168)
!1172 = !DILocation(line: 412, column: 19, scope: !1168)
!1173 = !DILocation(line: 412, column: 15, scope: !1168)
!1174 = !DILocation(line: 417, column: 11, scope: !1168)
!1175 = !DILocation(line: 417, column: 26, scope: !1168)
!1176 = !DILocation(line: 417, column: 14, scope: !1168)
!1177 = !DILocation(line: 417, column: 63, scope: !1168)
!1178 = !DILocation(line: 408, column: 11, scope: !1042)
!1179 = !DILocation(line: 0, scope: !1042)
!1180 = !DILocation(line: 424, column: 11, scope: !1042)
!1181 = !DILocation(line: 402, column: 21, scope: !1042)
!1182 = !DILocation(line: 425, column: 7, scope: !1042)
!1183 = !DILocation(line: 428, column: 15, scope: !1051)
!1184 = !DILocation(line: 430, column: 15, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1186, file: !117, line: 430, column: 15)
!1186 = distinct !DILexicalBlock(scope: !1187, file: !117, line: 429, column: 13)
!1187 = distinct !DILexicalBlock(scope: !1051, file: !117, line: 428, column: 15)
!1188 = !DILocation(line: 430, column: 15, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1185, file: !117, line: 430, column: 15)
!1190 = !DILocation(line: 430, column: 15, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1192, file: !117, line: 430, column: 15)
!1192 = distinct !DILexicalBlock(scope: !1193, file: !117, line: 430, column: 15)
!1193 = distinct !DILexicalBlock(scope: !1189, file: !117, line: 430, column: 15)
!1194 = !DILocation(line: 430, column: 15, scope: !1192)
!1195 = !DILocation(line: 430, column: 15, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1197, file: !117, line: 430, column: 15)
!1197 = distinct !DILexicalBlock(scope: !1193, file: !117, line: 430, column: 15)
!1198 = !DILocation(line: 430, column: 15, scope: !1197)
!1199 = !DILocation(line: 430, column: 15, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1201, file: !117, line: 430, column: 15)
!1201 = distinct !DILexicalBlock(scope: !1193, file: !117, line: 430, column: 15)
!1202 = !DILocation(line: 430, column: 15, scope: !1201)
!1203 = !DILocation(line: 430, column: 15, scope: !1193)
!1204 = !DILocation(line: 430, column: 15, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1206, file: !117, line: 430, column: 15)
!1206 = distinct !DILexicalBlock(scope: !1185, file: !117, line: 430, column: 15)
!1207 = !DILocation(line: 430, column: 15, scope: !1206)
!1208 = !DILocation(line: 438, column: 19, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1186, file: !117, line: 437, column: 19)
!1210 = !DILocation(line: 438, column: 24, scope: !1209)
!1211 = !DILocation(line: 438, column: 28, scope: !1209)
!1212 = !DILocation(line: 438, column: 38, scope: !1209)
!1213 = !DILocation(line: 438, column: 48, scope: !1209)
!1214 = !DILocation(line: 438, column: 59, scope: !1209)
!1215 = !DILocation(line: 440, column: 19, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1217, file: !117, line: 440, column: 19)
!1217 = distinct !DILexicalBlock(scope: !1218, file: !117, line: 440, column: 19)
!1218 = distinct !DILexicalBlock(scope: !1209, file: !117, line: 439, column: 17)
!1219 = !DILocation(line: 440, column: 19, scope: !1217)
!1220 = !DILocation(line: 441, column: 19, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1222, file: !117, line: 441, column: 19)
!1222 = distinct !DILexicalBlock(scope: !1218, file: !117, line: 441, column: 19)
!1223 = !DILocation(line: 441, column: 19, scope: !1222)
!1224 = !DILocation(line: 442, column: 17, scope: !1218)
!1225 = !DILocation(line: 449, column: 20, scope: !1187)
!1226 = !DILocation(line: 454, column: 11, scope: !1051)
!1227 = !DILocation(line: 457, column: 19, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1051, file: !117, line: 455, column: 13)
!1229 = !DILocation(line: 463, column: 19, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1228, file: !117, line: 462, column: 19)
!1231 = !DILocation(line: 463, column: 24, scope: !1230)
!1232 = !DILocation(line: 463, column: 28, scope: !1230)
!1233 = !DILocation(line: 463, column: 38, scope: !1230)
!1234 = !DILocation(line: 463, column: 47, scope: !1230)
!1235 = !DILocation(line: 463, column: 41, scope: !1230)
!1236 = !DILocation(line: 463, column: 52, scope: !1230)
!1237 = !DILocation(line: 462, column: 19, scope: !1228)
!1238 = !DILocation(line: 464, column: 25, scope: !1230)
!1239 = !DILocation(line: 464, column: 17, scope: !1230)
!1240 = !DILocation(line: 471, column: 25, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1230, file: !117, line: 465, column: 19)
!1242 = !DILocation(line: 475, column: 21, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1244, file: !117, line: 475, column: 21)
!1244 = distinct !DILexicalBlock(scope: !1241, file: !117, line: 475, column: 21)
!1245 = !DILocation(line: 475, column: 21, scope: !1244)
!1246 = !DILocation(line: 476, column: 21, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1248, file: !117, line: 476, column: 21)
!1248 = distinct !DILexicalBlock(scope: !1241, file: !117, line: 476, column: 21)
!1249 = !DILocation(line: 476, column: 21, scope: !1248)
!1250 = !DILocation(line: 477, column: 21, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1252, file: !117, line: 477, column: 21)
!1252 = distinct !DILexicalBlock(scope: !1241, file: !117, line: 477, column: 21)
!1253 = !DILocation(line: 477, column: 21, scope: !1252)
!1254 = !DILocation(line: 478, column: 21, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1256, file: !117, line: 478, column: 21)
!1256 = distinct !DILexicalBlock(scope: !1241, file: !117, line: 478, column: 21)
!1257 = !DILocation(line: 478, column: 21, scope: !1256)
!1258 = !DILocation(line: 479, column: 21, scope: !1241)
!1259 = !DILocation(line: 403, column: 21, scope: !1042)
!1260 = !DILocation(line: 492, column: 31, scope: !1051)
!1261 = !DILocation(line: 493, column: 31, scope: !1051)
!1262 = !DILocation(line: 495, column: 31, scope: !1051)
!1263 = !DILocation(line: 496, column: 31, scope: !1051)
!1264 = !DILocation(line: 497, column: 31, scope: !1051)
!1265 = !DILocation(line: 500, column: 15, scope: !1051)
!1266 = !DILocation(line: 502, column: 19, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1268, file: !117, line: 501, column: 13)
!1268 = distinct !DILexicalBlock(scope: !1051, file: !117, line: 500, column: 15)
!1269 = !DILocation(line: 509, column: 33, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1051, file: !117, line: 509, column: 15)
!1271 = !DILocation(line: 0, scope: !1051)
!1272 = !DILocation(line: 514, column: 15, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1051, file: !117, line: 513, column: 15)
!1274 = !DILocation(line: 518, column: 15, scope: !1051)
!1275 = !DILocation(line: 526, column: 26, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1051, file: !117, line: 526, column: 15)
!1277 = !DILocation(line: 526, column: 15, scope: !1051)
!1278 = !DILocation(line: 526, column: 40, scope: !1276)
!1279 = !DILocation(line: 526, column: 47, scope: !1276)
!1280 = !DILocation(line: 530, column: 17, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1051, file: !117, line: 530, column: 15)
!1282 = !DILocation(line: 526, column: 18, scope: !1276)
!1283 = !DILocation(line: 526, column: 65, scope: !1276)
!1284 = !DILocation(line: 530, column: 15, scope: !1051)
!1285 = !DILocation(line: 535, column: 11, scope: !1051)
!1286 = !DILocation(line: 549, column: 15, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1051, file: !117, line: 548, column: 15)
!1288 = !DILocation(line: 556, column: 15, scope: !1051)
!1289 = !DILocation(line: 558, column: 19, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1291, file: !117, line: 557, column: 13)
!1291 = distinct !DILexicalBlock(scope: !1051, file: !117, line: 556, column: 15)
!1292 = !DILocation(line: 561, column: 19, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1290, file: !117, line: 561, column: 19)
!1294 = !DILocation(line: 561, column: 35, scope: !1293)
!1295 = !DILocation(line: 561, column: 30, scope: !1293)
!1296 = !DILocation(line: 570, column: 15, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1298, file: !117, line: 570, column: 15)
!1298 = distinct !DILexicalBlock(scope: !1290, file: !117, line: 570, column: 15)
!1299 = !DILocation(line: 570, column: 15, scope: !1298)
!1300 = !DILocation(line: 571, column: 15, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1302, file: !117, line: 571, column: 15)
!1302 = distinct !DILexicalBlock(scope: !1290, file: !117, line: 571, column: 15)
!1303 = !DILocation(line: 571, column: 15, scope: !1302)
!1304 = !DILocation(line: 572, column: 15, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1306, file: !117, line: 572, column: 15)
!1306 = distinct !DILexicalBlock(scope: !1290, file: !117, line: 572, column: 15)
!1307 = !DILocation(line: 572, column: 15, scope: !1306)
!1308 = !DILocation(line: 574, column: 13, scope: !1290)
!1309 = !DILocation(line: 614, column: 17, scope: !1050)
!1310 = !DILocation(line: 610, column: 20, scope: !1050)
!1311 = !DILocation(line: 617, column: 29, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1055, file: !117, line: 615, column: 15)
!1313 = !{!1314, !1314, i64 0}
!1314 = !{!"short", !637, i64 0}
!1315 = !DILocation(line: 617, column: 27, scope: !1312)
!1316 = !DILocation(line: 612, column: 18, scope: !1050)
!1317 = !DILocation(line: 618, column: 15, scope: !1312)
!1318 = !DILocation(line: 621, column: 17, scope: !1054)
!1319 = !DILocation(line: 622, column: 17, scope: !1054)
!1320 = !DILocation(line: 626, column: 29, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1054, file: !117, line: 626, column: 21)
!1322 = !DILocation(line: 626, column: 21, scope: !1054)
!1323 = !DILocation(line: 627, column: 29, scope: !1321)
!1324 = !DILocation(line: 627, column: 19, scope: !1321)
!1325 = !DILocation(line: 0, scope: !1168)
!1326 = !DILocation(line: 629, column: 17, scope: !1054)
!1327 = !DILocation(line: 624, column: 19, scope: !1054)
!1328 = !DILocation(line: 625, column: 27, scope: !1054)
!1329 = !DILocation(line: 631, column: 21, scope: !1072)
!1330 = !DILocation(line: 632, column: 56, scope: !1072)
!1331 = !DILocation(line: 632, column: 50, scope: !1072)
!1332 = !DILocation(line: 633, column: 53, scope: !1072)
!1333 = !DILocation(line: 621, column: 27, scope: !1054)
!1334 = !DILocation(line: 631, column: 29, scope: !1072)
!1335 = !DILocation(line: 632, column: 36, scope: !1072)
!1336 = !DILocation(line: 632, column: 28, scope: !1072)
!1337 = !DILocation(line: 634, column: 25, scope: !1072)
!1338 = !DILocation(line: 644, column: 38, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1079, file: !117, line: 642, column: 23)
!1340 = !DILocation(line: 644, column: 48, scope: !1339)
!1341 = !DILocation(line: 644, column: 51, scope: !1339)
!1342 = !DILocation(line: 644, column: 25, scope: !1339)
!1343 = !DILocation(line: 645, column: 28, scope: !1339)
!1344 = !DILocation(line: 644, column: 34, scope: !1339)
!1345 = distinct !{!1345, !1342, !1343}
!1346 = !DILocation(line: 658, column: 43, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1348, file: !117, line: 658, column: 29)
!1348 = distinct !DILexicalBlock(scope: !1076, file: !117, line: 658, column: 29)
!1349 = !DILocation(line: 655, column: 29, scope: !1077)
!1350 = !DILocation(line: 657, column: 36, scope: !1076)
!1351 = !DILocation(line: 659, column: 49, scope: !1347)
!1352 = !DILocation(line: 659, column: 39, scope: !1347)
!1353 = !DILocation(line: 659, column: 31, scope: !1347)
!1354 = !DILocation(line: 658, column: 53, scope: !1347)
!1355 = !DILocation(line: 658, column: 29, scope: !1348)
!1356 = distinct !{!1356, !1355, !1357}
!1357 = !DILocation(line: 667, column: 33, scope: !1348)
!1358 = !DILocation(line: 674, column: 19, scope: !1054)
!1359 = !DILocation(line: 670, column: 41, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1078, file: !117, line: 670, column: 29)
!1361 = !DILocation(line: 670, column: 31, scope: !1360)
!1362 = !DILocation(line: 670, column: 29, scope: !1078)
!1363 = !DILocation(line: 672, column: 27, scope: !1078)
!1364 = !DILocation(line: 675, column: 26, scope: !1054)
!1365 = !DILocation(line: 675, column: 24, scope: !1054)
!1366 = !DILocation(line: 674, column: 19, scope: !1072)
!1367 = distinct !{!1367, !1326, !1368}
!1368 = !DILocation(line: 675, column: 44, scope: !1054)
!1369 = !DILocation(line: 676, column: 15, scope: !1055)
!1370 = !DILocation(line: 0, scope: !1321)
!1371 = !DILocation(line: 0, scope: !1054)
!1372 = !DILocation(line: 678, column: 40, scope: !1050)
!1373 = !DILocation(line: 680, column: 19, scope: !1084)
!1374 = !DILocation(line: 680, column: 45, scope: !1084)
!1375 = !DILocation(line: 680, column: 23, scope: !1084)
!1376 = !DILocation(line: 684, column: 33, scope: !1083)
!1377 = !DILocation(line: 684, column: 24, scope: !1083)
!1378 = !DILocation(line: 686, column: 17, scope: !1083)
!1379 = !DILocation(line: 0, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1381, file: !117, line: 687, column: 19)
!1381 = distinct !DILexicalBlock(scope: !1382, file: !117, line: 686, column: 17)
!1382 = distinct !DILexicalBlock(scope: !1083, file: !117, line: 686, column: 17)
!1383 = !DILocation(line: 0, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1380, file: !117, line: 703, column: 21)
!1385 = !DILocation(line: 0, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !1387, file: !117, line: 696, column: 23)
!1387 = distinct !DILexicalBlock(scope: !1388, file: !117, line: 695, column: 30)
!1388 = distinct !DILexicalBlock(scope: !1380, file: !117, line: 688, column: 25)
!1389 = !DILocation(line: 688, column: 43, scope: !1388)
!1390 = !DILocation(line: 690, column: 25, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1392, file: !117, line: 690, column: 25)
!1392 = distinct !DILexicalBlock(scope: !1388, file: !117, line: 689, column: 23)
!1393 = !DILocation(line: 690, column: 25, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1391, file: !117, line: 690, column: 25)
!1395 = !DILocation(line: 690, column: 25, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1397, file: !117, line: 690, column: 25)
!1397 = distinct !DILexicalBlock(scope: !1398, file: !117, line: 690, column: 25)
!1398 = distinct !DILexicalBlock(scope: !1394, file: !117, line: 690, column: 25)
!1399 = !DILocation(line: 690, column: 25, scope: !1397)
!1400 = !DILocation(line: 690, column: 25, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1402, file: !117, line: 690, column: 25)
!1402 = distinct !DILexicalBlock(scope: !1398, file: !117, line: 690, column: 25)
!1403 = !DILocation(line: 690, column: 25, scope: !1402)
!1404 = !DILocation(line: 690, column: 25, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !1406, file: !117, line: 690, column: 25)
!1406 = distinct !DILexicalBlock(scope: !1398, file: !117, line: 690, column: 25)
!1407 = !DILocation(line: 690, column: 25, scope: !1406)
!1408 = !DILocation(line: 690, column: 25, scope: !1398)
!1409 = !DILocation(line: 690, column: 25, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1411, file: !117, line: 690, column: 25)
!1411 = distinct !DILexicalBlock(scope: !1391, file: !117, line: 690, column: 25)
!1412 = !DILocation(line: 690, column: 25, scope: !1411)
!1413 = !DILocation(line: 691, column: 25, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1415, file: !117, line: 691, column: 25)
!1415 = distinct !DILexicalBlock(scope: !1392, file: !117, line: 691, column: 25)
!1416 = !DILocation(line: 691, column: 25, scope: !1415)
!1417 = !DILocation(line: 692, column: 25, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1419, file: !117, line: 692, column: 25)
!1419 = distinct !DILexicalBlock(scope: !1392, file: !117, line: 692, column: 25)
!1420 = !DILocation(line: 692, column: 25, scope: !1419)
!1421 = !DILocation(line: 693, column: 38, scope: !1392)
!1422 = !DILocation(line: 693, column: 33, scope: !1392)
!1423 = !DILocation(line: 694, column: 23, scope: !1392)
!1424 = !DILocation(line: 695, column: 30, scope: !1387)
!1425 = !DILocation(line: 695, column: 30, scope: !1388)
!1426 = !DILocation(line: 697, column: 25, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1428, file: !117, line: 697, column: 25)
!1428 = distinct !DILexicalBlock(scope: !1386, file: !117, line: 697, column: 25)
!1429 = !DILocation(line: 697, column: 25, scope: !1428)
!1430 = !DILocation(line: 699, column: 23, scope: !1386)
!1431 = !DILocation(line: 0, scope: !1419)
!1432 = !DILocation(line: 0, scope: !1392)
!1433 = !DILocation(line: 0, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1168, file: !117, line: 418, column: 9)
!1435 = !DILocation(line: 0, scope: !1391)
!1436 = !DILocation(line: 700, column: 35, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1380, file: !117, line: 700, column: 25)
!1438 = !DILocation(line: 700, column: 30, scope: !1437)
!1439 = !DILocation(line: 700, column: 25, scope: !1380)
!1440 = !DILocation(line: 702, column: 21, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1442, file: !117, line: 702, column: 21)
!1442 = distinct !DILexicalBlock(scope: !1380, file: !117, line: 702, column: 21)
!1443 = !DILocation(line: 702, column: 21, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1445, file: !117, line: 702, column: 21)
!1445 = distinct !DILexicalBlock(scope: !1446, file: !117, line: 702, column: 21)
!1446 = distinct !DILexicalBlock(scope: !1441, file: !117, line: 702, column: 21)
!1447 = !DILocation(line: 702, column: 21, scope: !1445)
!1448 = !DILocation(line: 702, column: 21, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1450, file: !117, line: 702, column: 21)
!1450 = distinct !DILexicalBlock(scope: !1446, file: !117, line: 702, column: 21)
!1451 = !DILocation(line: 702, column: 21, scope: !1450)
!1452 = !DILocation(line: 702, column: 21, scope: !1446)
!1453 = !DILocation(line: 0, scope: !1428)
!1454 = !DILocation(line: 703, column: 21, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1384, file: !117, line: 703, column: 21)
!1456 = !DILocation(line: 703, column: 21, scope: !1384)
!1457 = !DILocation(line: 704, column: 25, scope: !1380)
!1458 = !DILocation(line: 686, column: 17, scope: !1381)
!1459 = distinct !{!1459, !1460, !1461}
!1460 = !DILocation(line: 686, column: 17, scope: !1382)
!1461 = !DILocation(line: 705, column: 19, scope: !1382)
!1462 = !DILocation(line: 0, scope: !1044)
!1463 = !DILocation(line: 416, column: 30, scope: !1168)
!1464 = !DILocation(line: 712, column: 34, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1042, file: !117, line: 712, column: 11)
!1466 = !DILocation(line: 714, column: 14, scope: !1465)
!1467 = !DILocation(line: 715, column: 14, scope: !1465)
!1468 = !DILocation(line: 715, column: 35, scope: !1465)
!1469 = !DILocation(line: 715, column: 17, scope: !1465)
!1470 = !DILocation(line: 715, column: 47, scope: !1465)
!1471 = !DILocation(line: 715, column: 65, scope: !1465)
!1472 = !DILocation(line: 716, column: 15, scope: !1465)
!1473 = !DILocation(line: 716, column: 11, scope: !1465)
!1474 = !DILocation(line: 712, column: 11, scope: !1042)
!1475 = !DILocation(line: 400, column: 10, scope: !1044)
!1476 = !DILocation(line: 0, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1478, file: !117, line: 519, column: 13)
!1478 = distinct !DILexicalBlock(scope: !1051, file: !117, line: 518, column: 15)
!1479 = !DILocation(line: 720, column: 7, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1042, file: !117, line: 720, column: 7)
!1481 = !DILocation(line: 720, column: 7, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1480, file: !117, line: 720, column: 7)
!1483 = !DILocation(line: 720, column: 7, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1485, file: !117, line: 720, column: 7)
!1485 = distinct !DILexicalBlock(scope: !1486, file: !117, line: 720, column: 7)
!1486 = distinct !DILexicalBlock(scope: !1482, file: !117, line: 720, column: 7)
!1487 = !DILocation(line: 720, column: 7, scope: !1485)
!1488 = !DILocation(line: 720, column: 7, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1490, file: !117, line: 720, column: 7)
!1490 = distinct !DILexicalBlock(scope: !1486, file: !117, line: 720, column: 7)
!1491 = !DILocation(line: 720, column: 7, scope: !1490)
!1492 = !DILocation(line: 720, column: 7, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1494, file: !117, line: 720, column: 7)
!1494 = distinct !DILexicalBlock(scope: !1486, file: !117, line: 720, column: 7)
!1495 = !DILocation(line: 720, column: 7, scope: !1494)
!1496 = !DILocation(line: 720, column: 7, scope: !1486)
!1497 = !DILocation(line: 720, column: 7, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1499, file: !117, line: 720, column: 7)
!1499 = distinct !DILexicalBlock(scope: !1480, file: !117, line: 720, column: 7)
!1500 = !DILocation(line: 720, column: 7, scope: !1499)
!1501 = !DILocation(line: 723, column: 7, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1503, file: !117, line: 723, column: 7)
!1503 = distinct !DILexicalBlock(scope: !1042, file: !117, line: 723, column: 7)
!1504 = !DILocation(line: 424, column: 9, scope: !1042)
!1505 = !DILocation(line: 723, column: 7, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1507, file: !117, line: 723, column: 7)
!1507 = distinct !DILexicalBlock(scope: !1508, file: !117, line: 723, column: 7)
!1508 = distinct !DILexicalBlock(scope: !1502, file: !117, line: 723, column: 7)
!1509 = !DILocation(line: 723, column: 7, scope: !1507)
!1510 = !DILocation(line: 723, column: 7, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1512, file: !117, line: 723, column: 7)
!1512 = distinct !DILexicalBlock(scope: !1508, file: !117, line: 723, column: 7)
!1513 = !DILocation(line: 723, column: 7, scope: !1512)
!1514 = !DILocation(line: 723, column: 7, scope: !1508)
!1515 = !DILocation(line: 724, column: 7, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1517, file: !117, line: 724, column: 7)
!1517 = distinct !DILexicalBlock(scope: !1042, file: !117, line: 724, column: 7)
!1518 = !DILocation(line: 724, column: 7, scope: !1517)
!1519 = !DILocation(line: 726, column: 13, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1042, file: !117, line: 726, column: 11)
!1521 = !DILocation(line: 726, column: 11, scope: !1042)
!1522 = !DILocation(line: 728, column: 5, scope: !1043)
!1523 = !DILocation(line: 400, column: 75, scope: !1043)
!1524 = !DILocation(line: 400, column: 3, scope: !1043)
!1525 = distinct !{!1525, !1162, !1526}
!1526 = !DILocation(line: 728, column: 5, scope: !1044)
!1527 = !DILocation(line: 730, column: 11, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1015, file: !117, line: 730, column: 7)
!1529 = !DILocation(line: 730, column: 16, scope: !1528)
!1530 = !DILocation(line: 738, column: 51, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1015, file: !117, line: 738, column: 7)
!1532 = !DILocation(line: 739, column: 10, scope: !1531)
!1533 = !DILocation(line: 741, column: 11, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1535, file: !117, line: 741, column: 11)
!1535 = distinct !DILexicalBlock(scope: !1531, file: !117, line: 740, column: 5)
!1536 = !DILocation(line: 741, column: 11, scope: !1535)
!1537 = !DILocation(line: 742, column: 16, scope: !1534)
!1538 = !DILocation(line: 742, column: 9, scope: !1534)
!1539 = !DILocation(line: 746, column: 18, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !1534, file: !117, line: 746, column: 16)
!1541 = !DILocation(line: 746, column: 32, scope: !1540)
!1542 = !DILocation(line: 746, column: 29, scope: !1540)
!1543 = !DILocation(line: 755, column: 7, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1015, file: !117, line: 755, column: 7)
!1545 = !DILocation(line: 755, column: 20, scope: !1544)
!1546 = !DILocation(line: 756, column: 12, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1548, file: !117, line: 756, column: 5)
!1548 = distinct !DILexicalBlock(scope: !1544, file: !117, line: 756, column: 5)
!1549 = !DILocation(line: 756, column: 5, scope: !1548)
!1550 = !DILocation(line: 757, column: 7, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1552, file: !117, line: 757, column: 7)
!1552 = distinct !DILexicalBlock(scope: !1547, file: !117, line: 757, column: 7)
!1553 = !DILocation(line: 757, column: 7, scope: !1552)
!1554 = !DILocation(line: 756, column: 39, scope: !1547)
!1555 = distinct !{!1555, !1549, !1556}
!1556 = !DILocation(line: 757, column: 7, scope: !1548)
!1557 = !DILocation(line: 759, column: 11, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1015, file: !117, line: 759, column: 7)
!1559 = !DILocation(line: 759, column: 7, scope: !1015)
!1560 = !DILocation(line: 760, column: 5, scope: !1558)
!1561 = !DILocation(line: 760, column: 17, scope: !1558)
!1562 = !DILocation(line: 766, column: 21, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1015, file: !117, line: 766, column: 7)
!1564 = !DILocation(line: 766, column: 54, scope: !1563)
!1565 = !DILocation(line: 766, column: 51, scope: !1563)
!1566 = !DILocation(line: 770, column: 42, scope: !1015)
!1567 = !DILocation(line: 768, column: 10, scope: !1015)
!1568 = !DILocation(line: 768, column: 3, scope: !1015)
!1569 = !DILocation(line: 772, column: 1, scope: !1015)
!1570 = distinct !DISubprogram(name: "gettext_quote", scope: !117, file: !117, line: 207, type: !1571, isLocal: true, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !1573)
!1571 = !DISubroutineType(types: !1572)
!1572 = !{!6, !6, !74}
!1573 = !{!1574, !1575, !1576, !1577}
!1574 = !DILocalVariable(name: "msgid", arg: 1, scope: !1570, file: !117, line: 207, type: !6)
!1575 = !DILocalVariable(name: "s", arg: 2, scope: !1570, file: !117, line: 207, type: !74)
!1576 = !DILocalVariable(name: "translation", scope: !1570, file: !117, line: 209, type: !6)
!1577 = !DILocalVariable(name: "locale_code", scope: !1570, file: !117, line: 210, type: !6)
!1578 = !DILocation(line: 207, column: 28, scope: !1570)
!1579 = !DILocation(line: 207, column: 54, scope: !1570)
!1580 = !DILocation(line: 209, column: 29, scope: !1570)
!1581 = !DILocation(line: 209, column: 15, scope: !1570)
!1582 = !DILocation(line: 212, column: 19, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1570, file: !117, line: 212, column: 7)
!1584 = !DILocation(line: 212, column: 7, scope: !1570)
!1585 = !DILocation(line: 233, column: 17, scope: !1570)
!1586 = !DILocation(line: 210, column: 15, scope: !1570)
!1587 = !DILocalVariable(name: "s1", arg: 1, scope: !1588, file: !1589, line: 160, type: !6)
!1588 = distinct !DISubprogram(name: "strcaseeq0", scope: !1589, file: !1589, line: 160, type: !1590, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !1592)
!1589 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1590 = !DISubroutineType(types: !1591)
!1591 = !{!18, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8, !8}
!1592 = !{!1587, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602}
!1593 = !DILocalVariable(name: "s2", arg: 2, scope: !1588, file: !1589, line: 160, type: !6)
!1594 = !DILocalVariable(name: "s20", arg: 3, scope: !1588, file: !1589, line: 160, type: !8)
!1595 = !DILocalVariable(name: "s21", arg: 4, scope: !1588, file: !1589, line: 160, type: !8)
!1596 = !DILocalVariable(name: "s22", arg: 5, scope: !1588, file: !1589, line: 160, type: !8)
!1597 = !DILocalVariable(name: "s23", arg: 6, scope: !1588, file: !1589, line: 160, type: !8)
!1598 = !DILocalVariable(name: "s24", arg: 7, scope: !1588, file: !1589, line: 160, type: !8)
!1599 = !DILocalVariable(name: "s25", arg: 8, scope: !1588, file: !1589, line: 160, type: !8)
!1600 = !DILocalVariable(name: "s26", arg: 9, scope: !1588, file: !1589, line: 160, type: !8)
!1601 = !DILocalVariable(name: "s27", arg: 10, scope: !1588, file: !1589, line: 160, type: !8)
!1602 = !DILocalVariable(name: "s28", arg: 11, scope: !1588, file: !1589, line: 160, type: !8)
!1603 = !DILocation(line: 160, column: 25, scope: !1588, inlinedAt: !1604)
!1604 = distinct !DILocation(line: 234, column: 7, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1570, file: !117, line: 234, column: 7)
!1606 = !DILocation(line: 160, column: 41, scope: !1588, inlinedAt: !1604)
!1607 = !DILocation(line: 160, column: 50, scope: !1588, inlinedAt: !1604)
!1608 = !DILocation(line: 160, column: 60, scope: !1588, inlinedAt: !1604)
!1609 = !DILocation(line: 160, column: 70, scope: !1588, inlinedAt: !1604)
!1610 = !DILocation(line: 160, column: 80, scope: !1588, inlinedAt: !1604)
!1611 = !DILocation(line: 160, column: 90, scope: !1588, inlinedAt: !1604)
!1612 = !DILocation(line: 160, column: 100, scope: !1588, inlinedAt: !1604)
!1613 = !DILocation(line: 160, column: 110, scope: !1588, inlinedAt: !1604)
!1614 = !DILocation(line: 160, column: 120, scope: !1588, inlinedAt: !1604)
!1615 = !DILocation(line: 160, column: 130, scope: !1588, inlinedAt: !1604)
!1616 = !DILocation(line: 162, column: 7, scope: !1617, inlinedAt: !1604)
!1617 = distinct !DILexicalBlock(scope: !1588, file: !1589, line: 162, column: 7)
!1618 = !DILocalVariable(name: "s1", arg: 1, scope: !1619, file: !1589, line: 146, type: !6)
!1619 = distinct !DISubprogram(name: "strcaseeq1", scope: !1589, file: !1589, line: 146, type: !1620, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !1622)
!1620 = !DISubroutineType(types: !1621)
!1621 = !{!18, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8}
!1622 = !{!1618, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631}
!1623 = !DILocalVariable(name: "s2", arg: 2, scope: !1619, file: !1589, line: 146, type: !6)
!1624 = !DILocalVariable(name: "s21", arg: 3, scope: !1619, file: !1589, line: 146, type: !8)
!1625 = !DILocalVariable(name: "s22", arg: 4, scope: !1619, file: !1589, line: 146, type: !8)
!1626 = !DILocalVariable(name: "s23", arg: 5, scope: !1619, file: !1589, line: 146, type: !8)
!1627 = !DILocalVariable(name: "s24", arg: 6, scope: !1619, file: !1589, line: 146, type: !8)
!1628 = !DILocalVariable(name: "s25", arg: 7, scope: !1619, file: !1589, line: 146, type: !8)
!1629 = !DILocalVariable(name: "s26", arg: 8, scope: !1619, file: !1589, line: 146, type: !8)
!1630 = !DILocalVariable(name: "s27", arg: 9, scope: !1619, file: !1589, line: 146, type: !8)
!1631 = !DILocalVariable(name: "s28", arg: 10, scope: !1619, file: !1589, line: 146, type: !8)
!1632 = !DILocation(line: 146, column: 25, scope: !1619, inlinedAt: !1633)
!1633 = distinct !DILocation(line: 167, column: 16, scope: !1634, inlinedAt: !1604)
!1634 = distinct !DILexicalBlock(scope: !1635, file: !1589, line: 164, column: 11)
!1635 = distinct !DILexicalBlock(scope: !1617, file: !1589, line: 163, column: 5)
!1636 = !DILocation(line: 146, column: 41, scope: !1619, inlinedAt: !1633)
!1637 = !DILocation(line: 146, column: 50, scope: !1619, inlinedAt: !1633)
!1638 = !DILocation(line: 146, column: 60, scope: !1619, inlinedAt: !1633)
!1639 = !DILocation(line: 146, column: 70, scope: !1619, inlinedAt: !1633)
!1640 = !DILocation(line: 146, column: 80, scope: !1619, inlinedAt: !1633)
!1641 = !DILocation(line: 146, column: 90, scope: !1619, inlinedAt: !1633)
!1642 = !DILocation(line: 146, column: 100, scope: !1619, inlinedAt: !1633)
!1643 = !DILocation(line: 146, column: 110, scope: !1619, inlinedAt: !1633)
!1644 = !DILocation(line: 146, column: 120, scope: !1619, inlinedAt: !1633)
!1645 = !DILocation(line: 148, column: 7, scope: !1646, inlinedAt: !1633)
!1646 = distinct !DILexicalBlock(scope: !1619, file: !1589, line: 148, column: 7)
!1647 = !DILocalVariable(name: "s1", arg: 1, scope: !1648, file: !1589, line: 132, type: !6)
!1648 = distinct !DISubprogram(name: "strcaseeq2", scope: !1589, file: !1589, line: 132, type: !1649, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !1651)
!1649 = !DISubroutineType(types: !1650)
!1650 = !{!18, !6, !6, !8, !8, !8, !8, !8, !8, !8}
!1651 = !{!1647, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659}
!1652 = !DILocalVariable(name: "s2", arg: 2, scope: !1648, file: !1589, line: 132, type: !6)
!1653 = !DILocalVariable(name: "s22", arg: 3, scope: !1648, file: !1589, line: 132, type: !8)
!1654 = !DILocalVariable(name: "s23", arg: 4, scope: !1648, file: !1589, line: 132, type: !8)
!1655 = !DILocalVariable(name: "s24", arg: 5, scope: !1648, file: !1589, line: 132, type: !8)
!1656 = !DILocalVariable(name: "s25", arg: 6, scope: !1648, file: !1589, line: 132, type: !8)
!1657 = !DILocalVariable(name: "s26", arg: 7, scope: !1648, file: !1589, line: 132, type: !8)
!1658 = !DILocalVariable(name: "s27", arg: 8, scope: !1648, file: !1589, line: 132, type: !8)
!1659 = !DILocalVariable(name: "s28", arg: 9, scope: !1648, file: !1589, line: 132, type: !8)
!1660 = !DILocation(line: 132, column: 25, scope: !1648, inlinedAt: !1661)
!1661 = distinct !DILocation(line: 153, column: 16, scope: !1662, inlinedAt: !1633)
!1662 = distinct !DILexicalBlock(scope: !1663, file: !1589, line: 150, column: 11)
!1663 = distinct !DILexicalBlock(scope: !1646, file: !1589, line: 149, column: 5)
!1664 = !DILocation(line: 132, column: 41, scope: !1648, inlinedAt: !1661)
!1665 = !DILocation(line: 132, column: 50, scope: !1648, inlinedAt: !1661)
!1666 = !DILocation(line: 132, column: 60, scope: !1648, inlinedAt: !1661)
!1667 = !DILocation(line: 132, column: 70, scope: !1648, inlinedAt: !1661)
!1668 = !DILocation(line: 132, column: 80, scope: !1648, inlinedAt: !1661)
!1669 = !DILocation(line: 132, column: 90, scope: !1648, inlinedAt: !1661)
!1670 = !DILocation(line: 132, column: 100, scope: !1648, inlinedAt: !1661)
!1671 = !DILocation(line: 132, column: 110, scope: !1648, inlinedAt: !1661)
!1672 = !DILocation(line: 134, column: 7, scope: !1673, inlinedAt: !1661)
!1673 = distinct !DILexicalBlock(scope: !1648, file: !1589, line: 134, column: 7)
!1674 = !DILocalVariable(name: "s1", arg: 1, scope: !1675, file: !1589, line: 118, type: !6)
!1675 = distinct !DISubprogram(name: "strcaseeq3", scope: !1589, file: !1589, line: 118, type: !1676, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !1678)
!1676 = !DISubroutineType(types: !1677)
!1677 = !{!18, !6, !6, !8, !8, !8, !8, !8, !8}
!1678 = !{!1674, !1679, !1680, !1681, !1682, !1683, !1684, !1685}
!1679 = !DILocalVariable(name: "s2", arg: 2, scope: !1675, file: !1589, line: 118, type: !6)
!1680 = !DILocalVariable(name: "s23", arg: 3, scope: !1675, file: !1589, line: 118, type: !8)
!1681 = !DILocalVariable(name: "s24", arg: 4, scope: !1675, file: !1589, line: 118, type: !8)
!1682 = !DILocalVariable(name: "s25", arg: 5, scope: !1675, file: !1589, line: 118, type: !8)
!1683 = !DILocalVariable(name: "s26", arg: 6, scope: !1675, file: !1589, line: 118, type: !8)
!1684 = !DILocalVariable(name: "s27", arg: 7, scope: !1675, file: !1589, line: 118, type: !8)
!1685 = !DILocalVariable(name: "s28", arg: 8, scope: !1675, file: !1589, line: 118, type: !8)
!1686 = !DILocation(line: 118, column: 25, scope: !1675, inlinedAt: !1687)
!1687 = distinct !DILocation(line: 139, column: 16, scope: !1688, inlinedAt: !1661)
!1688 = distinct !DILexicalBlock(scope: !1689, file: !1589, line: 136, column: 11)
!1689 = distinct !DILexicalBlock(scope: !1673, file: !1589, line: 135, column: 5)
!1690 = !DILocation(line: 118, column: 41, scope: !1675, inlinedAt: !1687)
!1691 = !DILocation(line: 118, column: 50, scope: !1675, inlinedAt: !1687)
!1692 = !DILocation(line: 118, column: 60, scope: !1675, inlinedAt: !1687)
!1693 = !DILocation(line: 118, column: 70, scope: !1675, inlinedAt: !1687)
!1694 = !DILocation(line: 118, column: 80, scope: !1675, inlinedAt: !1687)
!1695 = !DILocation(line: 118, column: 90, scope: !1675, inlinedAt: !1687)
!1696 = !DILocation(line: 118, column: 100, scope: !1675, inlinedAt: !1687)
!1697 = !DILocation(line: 120, column: 7, scope: !1698, inlinedAt: !1687)
!1698 = distinct !DILexicalBlock(scope: !1675, file: !1589, line: 120, column: 7)
!1699 = !DILocation(line: 120, column: 7, scope: !1675, inlinedAt: !1687)
!1700 = !DILocalVariable(name: "s1", arg: 1, scope: !1701, file: !1589, line: 104, type: !6)
!1701 = distinct !DISubprogram(name: "strcaseeq4", scope: !1589, file: !1589, line: 104, type: !1702, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !1704)
!1702 = !DISubroutineType(types: !1703)
!1703 = !{!18, !6, !6, !8, !8, !8, !8, !8}
!1704 = !{!1700, !1705, !1706, !1707, !1708, !1709, !1710}
!1705 = !DILocalVariable(name: "s2", arg: 2, scope: !1701, file: !1589, line: 104, type: !6)
!1706 = !DILocalVariable(name: "s24", arg: 3, scope: !1701, file: !1589, line: 104, type: !8)
!1707 = !DILocalVariable(name: "s25", arg: 4, scope: !1701, file: !1589, line: 104, type: !8)
!1708 = !DILocalVariable(name: "s26", arg: 5, scope: !1701, file: !1589, line: 104, type: !8)
!1709 = !DILocalVariable(name: "s27", arg: 6, scope: !1701, file: !1589, line: 104, type: !8)
!1710 = !DILocalVariable(name: "s28", arg: 7, scope: !1701, file: !1589, line: 104, type: !8)
!1711 = !DILocation(line: 104, column: 25, scope: !1701, inlinedAt: !1712)
!1712 = distinct !DILocation(line: 125, column: 16, scope: !1713, inlinedAt: !1687)
!1713 = distinct !DILexicalBlock(scope: !1714, file: !1589, line: 122, column: 11)
!1714 = distinct !DILexicalBlock(scope: !1698, file: !1589, line: 121, column: 5)
!1715 = !DILocation(line: 104, column: 41, scope: !1701, inlinedAt: !1712)
!1716 = !DILocation(line: 104, column: 50, scope: !1701, inlinedAt: !1712)
!1717 = !DILocation(line: 104, column: 60, scope: !1701, inlinedAt: !1712)
!1718 = !DILocation(line: 104, column: 70, scope: !1701, inlinedAt: !1712)
!1719 = !DILocation(line: 104, column: 80, scope: !1701, inlinedAt: !1712)
!1720 = !DILocation(line: 104, column: 90, scope: !1701, inlinedAt: !1712)
!1721 = !DILocation(line: 106, column: 7, scope: !1722, inlinedAt: !1712)
!1722 = distinct !DILexicalBlock(scope: !1701, file: !1589, line: 106, column: 7)
!1723 = !DILocation(line: 106, column: 7, scope: !1701, inlinedAt: !1712)
!1724 = !DILocalVariable(name: "s1", arg: 1, scope: !1725, file: !1589, line: 90, type: !6)
!1725 = distinct !DISubprogram(name: "strcaseeq5", scope: !1589, file: !1589, line: 90, type: !1726, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !1728)
!1726 = !DISubroutineType(types: !1727)
!1727 = !{!18, !6, !6, !8, !8, !8, !8}
!1728 = !{!1724, !1729, !1730, !1731, !1732, !1733}
!1729 = !DILocalVariable(name: "s2", arg: 2, scope: !1725, file: !1589, line: 90, type: !6)
!1730 = !DILocalVariable(name: "s25", arg: 3, scope: !1725, file: !1589, line: 90, type: !8)
!1731 = !DILocalVariable(name: "s26", arg: 4, scope: !1725, file: !1589, line: 90, type: !8)
!1732 = !DILocalVariable(name: "s27", arg: 5, scope: !1725, file: !1589, line: 90, type: !8)
!1733 = !DILocalVariable(name: "s28", arg: 6, scope: !1725, file: !1589, line: 90, type: !8)
!1734 = !DILocation(line: 90, column: 25, scope: !1725, inlinedAt: !1735)
!1735 = distinct !DILocation(line: 111, column: 16, scope: !1736, inlinedAt: !1712)
!1736 = distinct !DILexicalBlock(scope: !1737, file: !1589, line: 108, column: 11)
!1737 = distinct !DILexicalBlock(scope: !1722, file: !1589, line: 107, column: 5)
!1738 = !DILocation(line: 90, column: 41, scope: !1725, inlinedAt: !1735)
!1739 = !DILocation(line: 90, column: 50, scope: !1725, inlinedAt: !1735)
!1740 = !DILocation(line: 90, column: 60, scope: !1725, inlinedAt: !1735)
!1741 = !DILocation(line: 90, column: 70, scope: !1725, inlinedAt: !1735)
!1742 = !DILocation(line: 90, column: 80, scope: !1725, inlinedAt: !1735)
!1743 = !DILocation(line: 92, column: 7, scope: !1744, inlinedAt: !1735)
!1744 = distinct !DILexicalBlock(scope: !1725, file: !1589, line: 92, column: 7)
!1745 = !DILocation(line: 92, column: 7, scope: !1725, inlinedAt: !1735)
!1746 = !DILocation(line: 235, column: 12, scope: !1605)
!1747 = !DILocation(line: 235, column: 21, scope: !1605)
!1748 = !DILocation(line: 235, column: 5, scope: !1605)
!1749 = !DILocation(line: 146, column: 25, scope: !1619, inlinedAt: !1750)
!1750 = distinct !DILocation(line: 167, column: 16, scope: !1634, inlinedAt: !1751)
!1751 = distinct !DILocation(line: 236, column: 7, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1570, file: !117, line: 236, column: 7)
!1753 = !DILocation(line: 146, column: 41, scope: !1619, inlinedAt: !1750)
!1754 = !DILocation(line: 146, column: 50, scope: !1619, inlinedAt: !1750)
!1755 = !DILocation(line: 146, column: 60, scope: !1619, inlinedAt: !1750)
!1756 = !DILocation(line: 146, column: 70, scope: !1619, inlinedAt: !1750)
!1757 = !DILocation(line: 146, column: 80, scope: !1619, inlinedAt: !1750)
!1758 = !DILocation(line: 146, column: 90, scope: !1619, inlinedAt: !1750)
!1759 = !DILocation(line: 146, column: 100, scope: !1619, inlinedAt: !1750)
!1760 = !DILocation(line: 146, column: 110, scope: !1619, inlinedAt: !1750)
!1761 = !DILocation(line: 146, column: 120, scope: !1619, inlinedAt: !1750)
!1762 = !DILocation(line: 148, column: 7, scope: !1646, inlinedAt: !1750)
!1763 = !DILocation(line: 132, column: 25, scope: !1648, inlinedAt: !1764)
!1764 = distinct !DILocation(line: 153, column: 16, scope: !1662, inlinedAt: !1750)
!1765 = !DILocation(line: 132, column: 41, scope: !1648, inlinedAt: !1764)
!1766 = !DILocation(line: 132, column: 50, scope: !1648, inlinedAt: !1764)
!1767 = !DILocation(line: 132, column: 60, scope: !1648, inlinedAt: !1764)
!1768 = !DILocation(line: 132, column: 70, scope: !1648, inlinedAt: !1764)
!1769 = !DILocation(line: 132, column: 80, scope: !1648, inlinedAt: !1764)
!1770 = !DILocation(line: 132, column: 90, scope: !1648, inlinedAt: !1764)
!1771 = !DILocation(line: 132, column: 100, scope: !1648, inlinedAt: !1764)
!1772 = !DILocation(line: 132, column: 110, scope: !1648, inlinedAt: !1764)
!1773 = !DILocation(line: 134, column: 7, scope: !1673, inlinedAt: !1764)
!1774 = !DILocation(line: 134, column: 7, scope: !1648, inlinedAt: !1764)
!1775 = !DILocation(line: 118, column: 25, scope: !1675, inlinedAt: !1776)
!1776 = distinct !DILocation(line: 139, column: 16, scope: !1688, inlinedAt: !1764)
!1777 = !DILocation(line: 118, column: 41, scope: !1675, inlinedAt: !1776)
!1778 = !DILocation(line: 118, column: 50, scope: !1675, inlinedAt: !1776)
!1779 = !DILocation(line: 118, column: 60, scope: !1675, inlinedAt: !1776)
!1780 = !DILocation(line: 118, column: 70, scope: !1675, inlinedAt: !1776)
!1781 = !DILocation(line: 118, column: 80, scope: !1675, inlinedAt: !1776)
!1782 = !DILocation(line: 118, column: 90, scope: !1675, inlinedAt: !1776)
!1783 = !DILocation(line: 118, column: 100, scope: !1675, inlinedAt: !1776)
!1784 = !DILocation(line: 120, column: 7, scope: !1698, inlinedAt: !1776)
!1785 = !DILocation(line: 120, column: 7, scope: !1675, inlinedAt: !1776)
!1786 = !DILocation(line: 104, column: 25, scope: !1701, inlinedAt: !1787)
!1787 = distinct !DILocation(line: 125, column: 16, scope: !1713, inlinedAt: !1776)
!1788 = !DILocation(line: 104, column: 41, scope: !1701, inlinedAt: !1787)
!1789 = !DILocation(line: 104, column: 50, scope: !1701, inlinedAt: !1787)
!1790 = !DILocation(line: 104, column: 60, scope: !1701, inlinedAt: !1787)
!1791 = !DILocation(line: 104, column: 70, scope: !1701, inlinedAt: !1787)
!1792 = !DILocation(line: 104, column: 80, scope: !1701, inlinedAt: !1787)
!1793 = !DILocation(line: 104, column: 90, scope: !1701, inlinedAt: !1787)
!1794 = !DILocation(line: 106, column: 7, scope: !1722, inlinedAt: !1787)
!1795 = !DILocation(line: 106, column: 7, scope: !1701, inlinedAt: !1787)
!1796 = !DILocation(line: 90, column: 25, scope: !1725, inlinedAt: !1797)
!1797 = distinct !DILocation(line: 111, column: 16, scope: !1736, inlinedAt: !1787)
!1798 = !DILocation(line: 90, column: 41, scope: !1725, inlinedAt: !1797)
!1799 = !DILocation(line: 90, column: 50, scope: !1725, inlinedAt: !1797)
!1800 = !DILocation(line: 90, column: 60, scope: !1725, inlinedAt: !1797)
!1801 = !DILocation(line: 90, column: 70, scope: !1725, inlinedAt: !1797)
!1802 = !DILocation(line: 90, column: 80, scope: !1725, inlinedAt: !1797)
!1803 = !DILocation(line: 92, column: 7, scope: !1744, inlinedAt: !1797)
!1804 = !DILocation(line: 92, column: 7, scope: !1725, inlinedAt: !1797)
!1805 = !DILocalVariable(name: "s1", arg: 1, scope: !1806, file: !1589, line: 76, type: !6)
!1806 = distinct !DISubprogram(name: "strcaseeq6", scope: !1589, file: !1589, line: 76, type: !1807, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !1809)
!1807 = !DISubroutineType(types: !1808)
!1808 = !{!18, !6, !6, !8, !8, !8}
!1809 = !{!1805, !1810, !1811, !1812, !1813}
!1810 = !DILocalVariable(name: "s2", arg: 2, scope: !1806, file: !1589, line: 76, type: !6)
!1811 = !DILocalVariable(name: "s26", arg: 3, scope: !1806, file: !1589, line: 76, type: !8)
!1812 = !DILocalVariable(name: "s27", arg: 4, scope: !1806, file: !1589, line: 76, type: !8)
!1813 = !DILocalVariable(name: "s28", arg: 5, scope: !1806, file: !1589, line: 76, type: !8)
!1814 = !DILocation(line: 76, column: 25, scope: !1806, inlinedAt: !1815)
!1815 = distinct !DILocation(line: 97, column: 16, scope: !1816, inlinedAt: !1797)
!1816 = distinct !DILexicalBlock(scope: !1817, file: !1589, line: 94, column: 11)
!1817 = distinct !DILexicalBlock(scope: !1744, file: !1589, line: 93, column: 5)
!1818 = !DILocation(line: 76, column: 41, scope: !1806, inlinedAt: !1815)
!1819 = !DILocation(line: 76, column: 50, scope: !1806, inlinedAt: !1815)
!1820 = !DILocation(line: 76, column: 60, scope: !1806, inlinedAt: !1815)
!1821 = !DILocation(line: 76, column: 70, scope: !1806, inlinedAt: !1815)
!1822 = !DILocation(line: 78, column: 7, scope: !1823, inlinedAt: !1815)
!1823 = distinct !DILexicalBlock(scope: !1806, file: !1589, line: 78, column: 7)
!1824 = !DILocation(line: 78, column: 7, scope: !1806, inlinedAt: !1815)
!1825 = !DILocalVariable(name: "s1", arg: 1, scope: !1826, file: !1589, line: 62, type: !6)
!1826 = distinct !DISubprogram(name: "strcaseeq7", scope: !1589, file: !1589, line: 62, type: !1827, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !1829)
!1827 = !DISubroutineType(types: !1828)
!1828 = !{!18, !6, !6, !8, !8}
!1829 = !{!1825, !1830, !1831, !1832}
!1830 = !DILocalVariable(name: "s2", arg: 2, scope: !1826, file: !1589, line: 62, type: !6)
!1831 = !DILocalVariable(name: "s27", arg: 3, scope: !1826, file: !1589, line: 62, type: !8)
!1832 = !DILocalVariable(name: "s28", arg: 4, scope: !1826, file: !1589, line: 62, type: !8)
!1833 = !DILocation(line: 62, column: 25, scope: !1826, inlinedAt: !1834)
!1834 = distinct !DILocation(line: 83, column: 16, scope: !1835, inlinedAt: !1815)
!1835 = distinct !DILexicalBlock(scope: !1836, file: !1589, line: 80, column: 11)
!1836 = distinct !DILexicalBlock(scope: !1823, file: !1589, line: 79, column: 5)
!1837 = !DILocation(line: 62, column: 41, scope: !1826, inlinedAt: !1834)
!1838 = !DILocation(line: 62, column: 50, scope: !1826, inlinedAt: !1834)
!1839 = !DILocation(line: 62, column: 60, scope: !1826, inlinedAt: !1834)
!1840 = !DILocation(line: 64, column: 7, scope: !1841, inlinedAt: !1834)
!1841 = distinct !DILexicalBlock(scope: !1826, file: !1589, line: 64, column: 7)
!1842 = !DILocation(line: 236, column: 7, scope: !1570)
!1843 = !DILocation(line: 237, column: 12, scope: !1752)
!1844 = !DILocation(line: 237, column: 21, scope: !1752)
!1845 = !DILocation(line: 237, column: 5, scope: !1752)
!1846 = !DILocation(line: 239, column: 13, scope: !1570)
!1847 = !DILocation(line: 239, column: 11, scope: !1570)
!1848 = !DILocation(line: 239, column: 3, scope: !1570)
!1849 = !DILocation(line: 0, scope: !1570)
!1850 = !DILocation(line: 240, column: 1, scope: !1570)
!1851 = distinct !DISubprogram(name: "quotearg_alloc", scope: !117, file: !117, line: 799, type: !1852, isLocal: false, isDefinition: true, scopeLine: 801, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !1854)
!1852 = !DISubroutineType(types: !1853)
!1853 = !{!66, !6, !111, !887}
!1854 = !{!1855, !1856, !1857}
!1855 = !DILocalVariable(name: "arg", arg: 1, scope: !1851, file: !117, line: 799, type: !6)
!1856 = !DILocalVariable(name: "argsize", arg: 2, scope: !1851, file: !117, line: 799, type: !111)
!1857 = !DILocalVariable(name: "o", arg: 3, scope: !1851, file: !117, line: 800, type: !887)
!1858 = !DILocation(line: 799, column: 29, scope: !1851)
!1859 = !DILocation(line: 799, column: 41, scope: !1851)
!1860 = !DILocation(line: 800, column: 47, scope: !1851)
!1861 = !DILocalVariable(name: "arg", arg: 1, scope: !1862, file: !117, line: 812, type: !6)
!1862 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !117, file: !117, line: 812, type: !1863, isLocal: false, isDefinition: true, scopeLine: 814, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !1865)
!1863 = !DISubroutineType(types: !1864)
!1864 = !{!66, !6, !111, !181, !887}
!1865 = !{!1861, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873}
!1866 = !DILocalVariable(name: "argsize", arg: 2, scope: !1862, file: !117, line: 812, type: !111)
!1867 = !DILocalVariable(name: "size", arg: 3, scope: !1862, file: !117, line: 812, type: !181)
!1868 = !DILocalVariable(name: "o", arg: 4, scope: !1862, file: !117, line: 813, type: !887)
!1869 = !DILocalVariable(name: "p", scope: !1862, file: !117, line: 815, type: !887)
!1870 = !DILocalVariable(name: "e", scope: !1862, file: !117, line: 816, type: !18)
!1871 = !DILocalVariable(name: "flags", scope: !1862, file: !117, line: 818, type: !18)
!1872 = !DILocalVariable(name: "bufsize", scope: !1862, file: !117, line: 819, type: !111)
!1873 = !DILocalVariable(name: "buf", scope: !1862, file: !117, line: 823, type: !66)
!1874 = !DILocation(line: 812, column: 33, scope: !1862, inlinedAt: !1875)
!1875 = distinct !DILocation(line: 802, column: 10, scope: !1851)
!1876 = !DILocation(line: 812, column: 45, scope: !1862, inlinedAt: !1875)
!1877 = !DILocation(line: 812, column: 62, scope: !1862, inlinedAt: !1875)
!1878 = !DILocation(line: 813, column: 51, scope: !1862, inlinedAt: !1875)
!1879 = !DILocation(line: 815, column: 37, scope: !1862, inlinedAt: !1875)
!1880 = !DILocation(line: 815, column: 33, scope: !1862, inlinedAt: !1875)
!1881 = !DILocation(line: 816, column: 11, scope: !1862, inlinedAt: !1875)
!1882 = !DILocation(line: 816, column: 7, scope: !1862, inlinedAt: !1875)
!1883 = !DILocation(line: 818, column: 18, scope: !1862, inlinedAt: !1875)
!1884 = !DILocation(line: 818, column: 24, scope: !1862, inlinedAt: !1875)
!1885 = !DILocation(line: 818, column: 7, scope: !1862, inlinedAt: !1875)
!1886 = !DILocation(line: 819, column: 69, scope: !1862, inlinedAt: !1875)
!1887 = !DILocation(line: 820, column: 53, scope: !1862, inlinedAt: !1875)
!1888 = !DILocation(line: 821, column: 49, scope: !1862, inlinedAt: !1875)
!1889 = !DILocation(line: 822, column: 49, scope: !1862, inlinedAt: !1875)
!1890 = !DILocation(line: 819, column: 20, scope: !1862, inlinedAt: !1875)
!1891 = !DILocation(line: 822, column: 62, scope: !1862, inlinedAt: !1875)
!1892 = !DILocation(line: 819, column: 10, scope: !1862, inlinedAt: !1875)
!1893 = !DILocalVariable(name: "n", arg: 1, scope: !1894, file: !177, line: 216, type: !111)
!1894 = distinct !DISubprogram(name: "xcharalloc", scope: !177, file: !177, line: 216, type: !1895, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !1897)
!1895 = !DISubroutineType(types: !1896)
!1896 = !{!66, !111}
!1897 = !{!1893}
!1898 = !DILocation(line: 216, column: 20, scope: !1894, inlinedAt: !1899)
!1899 = distinct !DILocation(line: 823, column: 15, scope: !1862, inlinedAt: !1875)
!1900 = !DILocation(line: 218, column: 10, scope: !1894, inlinedAt: !1899)
!1901 = !DILocation(line: 823, column: 9, scope: !1862, inlinedAt: !1875)
!1902 = !DILocation(line: 824, column: 60, scope: !1862, inlinedAt: !1875)
!1903 = !DILocation(line: 826, column: 32, scope: !1862, inlinedAt: !1875)
!1904 = !DILocation(line: 826, column: 47, scope: !1862, inlinedAt: !1875)
!1905 = !DILocation(line: 824, column: 3, scope: !1862, inlinedAt: !1875)
!1906 = !DILocation(line: 827, column: 9, scope: !1862, inlinedAt: !1875)
!1907 = !DILocation(line: 802, column: 3, scope: !1851)
!1908 = !DILocation(line: 812, column: 33, scope: !1862)
!1909 = !DILocation(line: 812, column: 45, scope: !1862)
!1910 = !DILocation(line: 812, column: 62, scope: !1862)
!1911 = !DILocation(line: 813, column: 51, scope: !1862)
!1912 = !DILocation(line: 815, column: 37, scope: !1862)
!1913 = !DILocation(line: 815, column: 33, scope: !1862)
!1914 = !DILocation(line: 816, column: 11, scope: !1862)
!1915 = !DILocation(line: 816, column: 7, scope: !1862)
!1916 = !DILocation(line: 818, column: 18, scope: !1862)
!1917 = !DILocation(line: 818, column: 27, scope: !1862)
!1918 = !DILocation(line: 818, column: 24, scope: !1862)
!1919 = !DILocation(line: 818, column: 7, scope: !1862)
!1920 = !DILocation(line: 819, column: 69, scope: !1862)
!1921 = !DILocation(line: 820, column: 53, scope: !1862)
!1922 = !DILocation(line: 821, column: 49, scope: !1862)
!1923 = !DILocation(line: 822, column: 49, scope: !1862)
!1924 = !DILocation(line: 819, column: 20, scope: !1862)
!1925 = !DILocation(line: 822, column: 62, scope: !1862)
!1926 = !DILocation(line: 819, column: 10, scope: !1862)
!1927 = !DILocation(line: 216, column: 20, scope: !1894, inlinedAt: !1928)
!1928 = distinct !DILocation(line: 823, column: 15, scope: !1862)
!1929 = !DILocation(line: 218, column: 10, scope: !1894, inlinedAt: !1928)
!1930 = !DILocation(line: 823, column: 9, scope: !1862)
!1931 = !DILocation(line: 824, column: 60, scope: !1862)
!1932 = !DILocation(line: 826, column: 32, scope: !1862)
!1933 = !DILocation(line: 826, column: 47, scope: !1862)
!1934 = !DILocation(line: 824, column: 3, scope: !1862)
!1935 = !DILocation(line: 827, column: 9, scope: !1862)
!1936 = !DILocation(line: 828, column: 7, scope: !1862)
!1937 = !DILocation(line: 829, column: 11, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1862, file: !117, line: 828, column: 7)
!1939 = !{!1940, !1940, i64 0}
!1940 = !{!"long", !637, i64 0}
!1941 = !DILocation(line: 829, column: 5, scope: !1938)
!1942 = !DILocation(line: 830, column: 3, scope: !1862)
!1943 = distinct !DISubprogram(name: "quotearg_free", scope: !117, file: !117, line: 848, type: !739, isLocal: false, isDefinition: true, scopeLine: 849, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !1944)
!1944 = !{!1945, !1946}
!1945 = !DILocalVariable(name: "sv", scope: !1943, file: !117, line: 850, type: !143)
!1946 = !DILocalVariable(name: "i", scope: !1943, file: !117, line: 851, type: !18)
!1947 = !DILocation(line: 850, column: 24, scope: !1943)
!1948 = !DILocation(line: 850, column: 19, scope: !1943)
!1949 = !DILocation(line: 851, column: 7, scope: !1943)
!1950 = !DILocation(line: 852, column: 19, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1952, file: !117, line: 852, column: 3)
!1952 = distinct !DILexicalBlock(scope: !1943, file: !117, line: 852, column: 3)
!1953 = !DILocation(line: 852, column: 17, scope: !1951)
!1954 = !DILocation(line: 852, column: 3, scope: !1952)
!1955 = !DILocation(line: 853, column: 17, scope: !1951)
!1956 = !{!1957, !636, i64 8}
!1957 = !{!"slotvec", !1940, i64 0, !636, i64 8}
!1958 = !DILocation(line: 853, column: 5, scope: !1951)
!1959 = !DILocation(line: 852, column: 28, scope: !1951)
!1960 = distinct !{!1960, !1954, !1961}
!1961 = !DILocation(line: 853, column: 20, scope: !1952)
!1962 = !DILocation(line: 854, column: 13, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !1943, file: !117, line: 854, column: 7)
!1964 = !DILocation(line: 854, column: 17, scope: !1963)
!1965 = !DILocation(line: 854, column: 7, scope: !1943)
!1966 = !DILocation(line: 856, column: 7, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !1963, file: !117, line: 855, column: 5)
!1968 = !DILocation(line: 857, column: 21, scope: !1967)
!1969 = !{!1957, !1940, i64 0}
!1970 = !DILocation(line: 858, column: 20, scope: !1967)
!1971 = !DILocation(line: 859, column: 5, scope: !1967)
!1972 = !DILocation(line: 860, column: 10, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !1943, file: !117, line: 860, column: 7)
!1974 = !DILocation(line: 860, column: 7, scope: !1943)
!1975 = !DILocation(line: 862, column: 13, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1973, file: !117, line: 861, column: 5)
!1977 = !DILocation(line: 862, column: 7, scope: !1976)
!1978 = !DILocation(line: 863, column: 15, scope: !1976)
!1979 = !DILocation(line: 864, column: 5, scope: !1976)
!1980 = !DILocation(line: 865, column: 10, scope: !1943)
!1981 = !DILocation(line: 866, column: 1, scope: !1943)
!1982 = distinct !DISubprogram(name: "quotearg_n", scope: !117, file: !117, line: 931, type: !1983, isLocal: false, isDefinition: true, scopeLine: 932, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !1985)
!1983 = !DISubroutineType(types: !1984)
!1984 = !{!66, !18, !6}
!1985 = !{!1986, !1987}
!1986 = !DILocalVariable(name: "n", arg: 1, scope: !1982, file: !117, line: 931, type: !18)
!1987 = !DILocalVariable(name: "arg", arg: 2, scope: !1982, file: !117, line: 931, type: !6)
!1988 = !DILocation(line: 931, column: 17, scope: !1982)
!1989 = !DILocation(line: 931, column: 32, scope: !1982)
!1990 = !DILocation(line: 933, column: 10, scope: !1982)
!1991 = !DILocation(line: 933, column: 3, scope: !1982)
!1992 = distinct !DISubprogram(name: "quotearg_n_options", scope: !117, file: !117, line: 877, type: !1993, isLocal: true, isDefinition: true, scopeLine: 879, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !1995)
!1993 = !DISubroutineType(types: !1994)
!1994 = !{!66, !18, !6, !111, !887}
!1995 = !{!1996, !1997, !1998, !1999, !2000, !2001, !2002, !2005, !2006, !2008, !2009, !2010}
!1996 = !DILocalVariable(name: "n", arg: 1, scope: !1992, file: !117, line: 877, type: !18)
!1997 = !DILocalVariable(name: "arg", arg: 2, scope: !1992, file: !117, line: 877, type: !6)
!1998 = !DILocalVariable(name: "argsize", arg: 3, scope: !1992, file: !117, line: 877, type: !111)
!1999 = !DILocalVariable(name: "options", arg: 4, scope: !1992, file: !117, line: 878, type: !887)
!2000 = !DILocalVariable(name: "e", scope: !1992, file: !117, line: 880, type: !18)
!2001 = !DILocalVariable(name: "sv", scope: !1992, file: !117, line: 882, type: !143)
!2002 = !DILocalVariable(name: "preallocated", scope: !2003, file: !117, line: 889, type: !37)
!2003 = distinct !DILexicalBlock(scope: !2004, file: !117, line: 888, column: 5)
!2004 = distinct !DILexicalBlock(scope: !1992, file: !117, line: 887, column: 7)
!2005 = !DILocalVariable(name: "nmax", scope: !2003, file: !117, line: 890, type: !18)
!2006 = !DILocalVariable(name: "size", scope: !2007, file: !117, line: 903, type: !111)
!2007 = distinct !DILexicalBlock(scope: !1992, file: !117, line: 902, column: 3)
!2008 = !DILocalVariable(name: "val", scope: !2007, file: !117, line: 904, type: !66)
!2009 = !DILocalVariable(name: "flags", scope: !2007, file: !117, line: 906, type: !18)
!2010 = !DILocalVariable(name: "qsize", scope: !2007, file: !117, line: 907, type: !111)
!2011 = !DILocation(line: 877, column: 25, scope: !1992)
!2012 = !DILocation(line: 877, column: 40, scope: !1992)
!2013 = !DILocation(line: 877, column: 52, scope: !1992)
!2014 = !DILocation(line: 878, column: 51, scope: !1992)
!2015 = !DILocation(line: 880, column: 11, scope: !1992)
!2016 = !DILocation(line: 880, column: 7, scope: !1992)
!2017 = !DILocation(line: 882, column: 24, scope: !1992)
!2018 = !DILocation(line: 882, column: 19, scope: !1992)
!2019 = !DILocation(line: 884, column: 9, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !1992, file: !117, line: 884, column: 7)
!2021 = !DILocation(line: 884, column: 7, scope: !1992)
!2022 = !DILocation(line: 885, column: 5, scope: !2020)
!2023 = !DILocation(line: 887, column: 7, scope: !2004)
!2024 = !DILocation(line: 887, column: 14, scope: !2004)
!2025 = !DILocation(line: 887, column: 7, scope: !1992)
!2026 = !DILocation(line: 889, column: 31, scope: !2003)
!2027 = !DILocation(line: 890, column: 11, scope: !2003)
!2028 = !DILocation(line: 892, column: 16, scope: !2029)
!2029 = distinct !DILexicalBlock(scope: !2003, file: !117, line: 892, column: 11)
!2030 = !DILocation(line: 892, column: 11, scope: !2003)
!2031 = !DILocation(line: 893, column: 9, scope: !2029)
!2032 = !DILocation(line: 895, column: 32, scope: !2003)
!2033 = !DILocation(line: 895, column: 61, scope: !2003)
!2034 = !DILocation(line: 895, column: 58, scope: !2003)
!2035 = !DILocation(line: 895, column: 66, scope: !2003)
!2036 = !DILocation(line: 895, column: 22, scope: !2003)
!2037 = !DILocation(line: 895, column: 15, scope: !2003)
!2038 = !DILocation(line: 896, column: 11, scope: !2003)
!2039 = !DILocation(line: 897, column: 15, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !2003, file: !117, line: 896, column: 11)
!2041 = !{i64 0, i64 8, !1939, i64 8, i64 8, !635}
!2042 = !DILocation(line: 897, column: 9, scope: !2040)
!2043 = !DILocation(line: 898, column: 20, scope: !2003)
!2044 = !DILocation(line: 898, column: 18, scope: !2003)
!2045 = !DILocation(line: 898, column: 7, scope: !2003)
!2046 = !DILocation(line: 898, column: 38, scope: !2003)
!2047 = !DILocation(line: 898, column: 31, scope: !2003)
!2048 = !DILocation(line: 898, column: 48, scope: !2003)
!2049 = !DILocation(line: 899, column: 14, scope: !2003)
!2050 = !DILocation(line: 900, column: 5, scope: !2003)
!2051 = !DILocation(line: 0, scope: !1992)
!2052 = !DILocation(line: 903, column: 19, scope: !2007)
!2053 = !DILocation(line: 903, column: 25, scope: !2007)
!2054 = !DILocation(line: 903, column: 12, scope: !2007)
!2055 = !DILocation(line: 904, column: 23, scope: !2007)
!2056 = !DILocation(line: 904, column: 11, scope: !2007)
!2057 = !DILocation(line: 906, column: 26, scope: !2007)
!2058 = !DILocation(line: 906, column: 32, scope: !2007)
!2059 = !DILocation(line: 906, column: 9, scope: !2007)
!2060 = !DILocation(line: 908, column: 55, scope: !2007)
!2061 = !DILocation(line: 909, column: 46, scope: !2007)
!2062 = !DILocation(line: 910, column: 55, scope: !2007)
!2063 = !DILocation(line: 911, column: 55, scope: !2007)
!2064 = !DILocation(line: 907, column: 20, scope: !2007)
!2065 = !DILocation(line: 907, column: 12, scope: !2007)
!2066 = !DILocation(line: 913, column: 14, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !2007, file: !117, line: 913, column: 9)
!2068 = !DILocation(line: 913, column: 9, scope: !2007)
!2069 = !DILocation(line: 915, column: 35, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !2067, file: !117, line: 914, column: 7)
!2071 = !DILocation(line: 915, column: 20, scope: !2070)
!2072 = !DILocation(line: 916, column: 17, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !2070, file: !117, line: 916, column: 13)
!2074 = !DILocation(line: 916, column: 13, scope: !2070)
!2075 = !DILocation(line: 917, column: 11, scope: !2073)
!2076 = !DILocation(line: 216, column: 20, scope: !1894, inlinedAt: !2077)
!2077 = distinct !DILocation(line: 918, column: 27, scope: !2070)
!2078 = !DILocation(line: 218, column: 10, scope: !1894, inlinedAt: !2077)
!2079 = !DILocation(line: 918, column: 19, scope: !2070)
!2080 = !DILocation(line: 919, column: 69, scope: !2070)
!2081 = !DILocation(line: 921, column: 44, scope: !2070)
!2082 = !DILocation(line: 922, column: 44, scope: !2070)
!2083 = !DILocation(line: 919, column: 9, scope: !2070)
!2084 = !DILocation(line: 923, column: 7, scope: !2070)
!2085 = !DILocation(line: 0, scope: !2007)
!2086 = !DILocation(line: 925, column: 11, scope: !2007)
!2087 = !DILocation(line: 926, column: 5, scope: !2007)
!2088 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !117, file: !117, line: 937, type: !2089, isLocal: false, isDefinition: true, scopeLine: 938, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !2091)
!2089 = !DISubroutineType(types: !2090)
!2090 = !{!66, !18, !6, !111}
!2091 = !{!2092, !2093, !2094}
!2092 = !DILocalVariable(name: "n", arg: 1, scope: !2088, file: !117, line: 937, type: !18)
!2093 = !DILocalVariable(name: "arg", arg: 2, scope: !2088, file: !117, line: 937, type: !6)
!2094 = !DILocalVariable(name: "argsize", arg: 3, scope: !2088, file: !117, line: 937, type: !111)
!2095 = !DILocation(line: 937, column: 21, scope: !2088)
!2096 = !DILocation(line: 937, column: 36, scope: !2088)
!2097 = !DILocation(line: 937, column: 48, scope: !2088)
!2098 = !DILocation(line: 939, column: 10, scope: !2088)
!2099 = !DILocation(line: 939, column: 3, scope: !2088)
!2100 = distinct !DISubprogram(name: "quotearg", scope: !117, file: !117, line: 943, type: !2101, isLocal: false, isDefinition: true, scopeLine: 944, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !2103)
!2101 = !DISubroutineType(types: !2102)
!2102 = !{!66, !6}
!2103 = !{!2104}
!2104 = !DILocalVariable(name: "arg", arg: 1, scope: !2100, file: !117, line: 943, type: !6)
!2105 = !DILocation(line: 943, column: 23, scope: !2100)
!2106 = !DILocation(line: 931, column: 17, scope: !1982, inlinedAt: !2107)
!2107 = distinct !DILocation(line: 945, column: 10, scope: !2100)
!2108 = !DILocation(line: 931, column: 32, scope: !1982, inlinedAt: !2107)
!2109 = !DILocation(line: 933, column: 10, scope: !1982, inlinedAt: !2107)
!2110 = !DILocation(line: 945, column: 3, scope: !2100)
!2111 = distinct !DISubprogram(name: "quotearg_mem", scope: !117, file: !117, line: 949, type: !2112, isLocal: false, isDefinition: true, scopeLine: 950, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !2114)
!2112 = !DISubroutineType(types: !2113)
!2113 = !{!66, !6, !111}
!2114 = !{!2115, !2116}
!2115 = !DILocalVariable(name: "arg", arg: 1, scope: !2111, file: !117, line: 949, type: !6)
!2116 = !DILocalVariable(name: "argsize", arg: 2, scope: !2111, file: !117, line: 949, type: !111)
!2117 = !DILocation(line: 949, column: 27, scope: !2111)
!2118 = !DILocation(line: 949, column: 39, scope: !2111)
!2119 = !DILocation(line: 937, column: 21, scope: !2088, inlinedAt: !2120)
!2120 = distinct !DILocation(line: 951, column: 10, scope: !2111)
!2121 = !DILocation(line: 937, column: 36, scope: !2088, inlinedAt: !2120)
!2122 = !DILocation(line: 937, column: 48, scope: !2088, inlinedAt: !2120)
!2123 = !DILocation(line: 939, column: 10, scope: !2088, inlinedAt: !2120)
!2124 = !DILocation(line: 951, column: 3, scope: !2111)
!2125 = distinct !DISubprogram(name: "quotearg_n_style", scope: !117, file: !117, line: 955, type: !2126, isLocal: false, isDefinition: true, scopeLine: 956, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !2128)
!2126 = !DISubroutineType(types: !2127)
!2127 = !{!66, !18, !74, !6}
!2128 = !{!2129, !2130, !2131, !2132}
!2129 = !DILocalVariable(name: "n", arg: 1, scope: !2125, file: !117, line: 955, type: !18)
!2130 = !DILocalVariable(name: "s", arg: 2, scope: !2125, file: !117, line: 955, type: !74)
!2131 = !DILocalVariable(name: "arg", arg: 3, scope: !2125, file: !117, line: 955, type: !6)
!2132 = !DILocalVariable(name: "o", scope: !2125, file: !117, line: 957, type: !888)
!2133 = !DILocation(line: 955, column: 23, scope: !2125)
!2134 = !DILocation(line: 955, column: 45, scope: !2125)
!2135 = !DILocation(line: 955, column: 60, scope: !2125)
!2136 = !DILocation(line: 957, column: 3, scope: !2125)
!2137 = !DILocation(line: 957, column: 32, scope: !2125)
!2138 = !DILocalVariable(name: "style", arg: 1, scope: !2139, file: !117, line: 193, type: !74)
!2139 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !117, file: !117, line: 193, type: !2140, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !2142)
!2140 = !DISubroutineType(types: !2141)
!2141 = !{!124, !74}
!2142 = !{!2138, !2143}
!2143 = !DILocalVariable(name: "o", scope: !2139, file: !117, line: 195, type: !124)
!2144 = !DILocation(line: 193, column: 48, scope: !2139, inlinedAt: !2145)
!2145 = distinct !DILocation(line: 957, column: 36, scope: !2125)
!2146 = !DILocation(line: 195, column: 26, scope: !2139, inlinedAt: !2145)
!2147 = !{!2148}
!2148 = distinct !{!2148, !2149, !"quoting_options_from_style: argument 0"}
!2149 = distinct !{!2149, !"quoting_options_from_style"}
!2150 = !DILocation(line: 196, column: 13, scope: !2151, inlinedAt: !2145)
!2151 = distinct !DILexicalBlock(scope: !2139, file: !117, line: 196, column: 7)
!2152 = !DILocation(line: 196, column: 7, scope: !2139, inlinedAt: !2145)
!2153 = !DILocation(line: 197, column: 5, scope: !2151, inlinedAt: !2145)
!2154 = !DILocation(line: 198, column: 5, scope: !2139, inlinedAt: !2145)
!2155 = !DILocation(line: 198, column: 11, scope: !2139, inlinedAt: !2145)
!2156 = !DILocation(line: 958, column: 10, scope: !2125)
!2157 = !DILocation(line: 959, column: 1, scope: !2125)
!2158 = !DILocation(line: 958, column: 3, scope: !2125)
!2159 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !117, file: !117, line: 962, type: !2160, isLocal: false, isDefinition: true, scopeLine: 964, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !2162)
!2160 = !DISubroutineType(types: !2161)
!2161 = !{!66, !18, !74, !6, !111}
!2162 = !{!2163, !2164, !2165, !2166, !2167}
!2163 = !DILocalVariable(name: "n", arg: 1, scope: !2159, file: !117, line: 962, type: !18)
!2164 = !DILocalVariable(name: "s", arg: 2, scope: !2159, file: !117, line: 962, type: !74)
!2165 = !DILocalVariable(name: "arg", arg: 3, scope: !2159, file: !117, line: 963, type: !6)
!2166 = !DILocalVariable(name: "argsize", arg: 4, scope: !2159, file: !117, line: 963, type: !111)
!2167 = !DILocalVariable(name: "o", scope: !2159, file: !117, line: 965, type: !888)
!2168 = !DILocation(line: 962, column: 27, scope: !2159)
!2169 = !DILocation(line: 962, column: 49, scope: !2159)
!2170 = !DILocation(line: 963, column: 35, scope: !2159)
!2171 = !DILocation(line: 963, column: 47, scope: !2159)
!2172 = !DILocation(line: 965, column: 3, scope: !2159)
!2173 = !DILocation(line: 965, column: 32, scope: !2159)
!2174 = !DILocation(line: 193, column: 48, scope: !2139, inlinedAt: !2175)
!2175 = distinct !DILocation(line: 965, column: 36, scope: !2159)
!2176 = !DILocation(line: 195, column: 26, scope: !2139, inlinedAt: !2175)
!2177 = !{!2178}
!2178 = distinct !{!2178, !2179, !"quoting_options_from_style: argument 0"}
!2179 = distinct !{!2179, !"quoting_options_from_style"}
!2180 = !DILocation(line: 196, column: 13, scope: !2151, inlinedAt: !2175)
!2181 = !DILocation(line: 196, column: 7, scope: !2139, inlinedAt: !2175)
!2182 = !DILocation(line: 197, column: 5, scope: !2151, inlinedAt: !2175)
!2183 = !DILocation(line: 198, column: 5, scope: !2139, inlinedAt: !2175)
!2184 = !DILocation(line: 198, column: 11, scope: !2139, inlinedAt: !2175)
!2185 = !DILocation(line: 966, column: 10, scope: !2159)
!2186 = !DILocation(line: 967, column: 1, scope: !2159)
!2187 = !DILocation(line: 966, column: 3, scope: !2159)
!2188 = distinct !DISubprogram(name: "quotearg_style", scope: !117, file: !117, line: 970, type: !2189, isLocal: false, isDefinition: true, scopeLine: 971, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !2191)
!2189 = !DISubroutineType(types: !2190)
!2190 = !{!66, !74, !6}
!2191 = !{!2192, !2193}
!2192 = !DILocalVariable(name: "s", arg: 1, scope: !2188, file: !117, line: 970, type: !74)
!2193 = !DILocalVariable(name: "arg", arg: 2, scope: !2188, file: !117, line: 970, type: !6)
!2194 = !DILocation(line: 970, column: 36, scope: !2188)
!2195 = !DILocation(line: 970, column: 51, scope: !2188)
!2196 = !DILocation(line: 955, column: 23, scope: !2125, inlinedAt: !2197)
!2197 = distinct !DILocation(line: 972, column: 10, scope: !2188)
!2198 = !DILocation(line: 955, column: 45, scope: !2125, inlinedAt: !2197)
!2199 = !DILocation(line: 955, column: 60, scope: !2125, inlinedAt: !2197)
!2200 = !DILocation(line: 957, column: 3, scope: !2125, inlinedAt: !2197)
!2201 = !DILocation(line: 957, column: 32, scope: !2125, inlinedAt: !2197)
!2202 = !DILocation(line: 193, column: 48, scope: !2139, inlinedAt: !2203)
!2203 = distinct !DILocation(line: 957, column: 36, scope: !2125, inlinedAt: !2197)
!2204 = !DILocation(line: 195, column: 26, scope: !2139, inlinedAt: !2203)
!2205 = !{!2206}
!2206 = distinct !{!2206, !2207, !"quoting_options_from_style: argument 0"}
!2207 = distinct !{!2207, !"quoting_options_from_style"}
!2208 = !DILocation(line: 196, column: 13, scope: !2151, inlinedAt: !2203)
!2209 = !DILocation(line: 196, column: 7, scope: !2139, inlinedAt: !2203)
!2210 = !DILocation(line: 197, column: 5, scope: !2151, inlinedAt: !2203)
!2211 = !DILocation(line: 198, column: 5, scope: !2139, inlinedAt: !2203)
!2212 = !DILocation(line: 198, column: 11, scope: !2139, inlinedAt: !2203)
!2213 = !DILocation(line: 958, column: 10, scope: !2125, inlinedAt: !2197)
!2214 = !DILocation(line: 959, column: 1, scope: !2125, inlinedAt: !2197)
!2215 = !DILocation(line: 972, column: 3, scope: !2188)
!2216 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !117, file: !117, line: 976, type: !2217, isLocal: false, isDefinition: true, scopeLine: 977, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !2219)
!2217 = !DISubroutineType(types: !2218)
!2218 = !{!66, !74, !6, !111}
!2219 = !{!2220, !2221, !2222}
!2220 = !DILocalVariable(name: "s", arg: 1, scope: !2216, file: !117, line: 976, type: !74)
!2221 = !DILocalVariable(name: "arg", arg: 2, scope: !2216, file: !117, line: 976, type: !6)
!2222 = !DILocalVariable(name: "argsize", arg: 3, scope: !2216, file: !117, line: 976, type: !111)
!2223 = !DILocation(line: 976, column: 40, scope: !2216)
!2224 = !DILocation(line: 976, column: 55, scope: !2216)
!2225 = !DILocation(line: 976, column: 67, scope: !2216)
!2226 = !DILocation(line: 962, column: 27, scope: !2159, inlinedAt: !2227)
!2227 = distinct !DILocation(line: 978, column: 10, scope: !2216)
!2228 = !DILocation(line: 962, column: 49, scope: !2159, inlinedAt: !2227)
!2229 = !DILocation(line: 963, column: 35, scope: !2159, inlinedAt: !2227)
!2230 = !DILocation(line: 963, column: 47, scope: !2159, inlinedAt: !2227)
!2231 = !DILocation(line: 965, column: 3, scope: !2159, inlinedAt: !2227)
!2232 = !DILocation(line: 965, column: 32, scope: !2159, inlinedAt: !2227)
!2233 = !DILocation(line: 193, column: 48, scope: !2139, inlinedAt: !2234)
!2234 = distinct !DILocation(line: 965, column: 36, scope: !2159, inlinedAt: !2227)
!2235 = !DILocation(line: 195, column: 26, scope: !2139, inlinedAt: !2234)
!2236 = !{!2237}
!2237 = distinct !{!2237, !2238, !"quoting_options_from_style: argument 0"}
!2238 = distinct !{!2238, !"quoting_options_from_style"}
!2239 = !DILocation(line: 196, column: 13, scope: !2151, inlinedAt: !2234)
!2240 = !DILocation(line: 196, column: 7, scope: !2139, inlinedAt: !2234)
!2241 = !DILocation(line: 197, column: 5, scope: !2151, inlinedAt: !2234)
!2242 = !DILocation(line: 198, column: 5, scope: !2139, inlinedAt: !2234)
!2243 = !DILocation(line: 198, column: 11, scope: !2139, inlinedAt: !2234)
!2244 = !DILocation(line: 966, column: 10, scope: !2159, inlinedAt: !2227)
!2245 = !DILocation(line: 967, column: 1, scope: !2159, inlinedAt: !2227)
!2246 = !DILocation(line: 978, column: 3, scope: !2216)
!2247 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !117, file: !117, line: 982, type: !2248, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !2250)
!2248 = !DISubroutineType(types: !2249)
!2249 = !{!66, !6, !111, !8}
!2250 = !{!2251, !2252, !2253, !2254}
!2251 = !DILocalVariable(name: "arg", arg: 1, scope: !2247, file: !117, line: 982, type: !6)
!2252 = !DILocalVariable(name: "argsize", arg: 2, scope: !2247, file: !117, line: 982, type: !111)
!2253 = !DILocalVariable(name: "ch", arg: 3, scope: !2247, file: !117, line: 982, type: !8)
!2254 = !DILocalVariable(name: "options", scope: !2247, file: !117, line: 984, type: !124)
!2255 = !DILocation(line: 982, column: 32, scope: !2247)
!2256 = !DILocation(line: 982, column: 44, scope: !2247)
!2257 = !DILocation(line: 982, column: 58, scope: !2247)
!2258 = !DILocation(line: 984, column: 3, scope: !2247)
!2259 = !DILocation(line: 985, column: 13, scope: !2247)
!2260 = !{i64 0, i64 4, !1116, i64 4, i64 4, !703, i64 8, i64 32, !1116, i64 40, i64 8, !635, i64 48, i64 8, !635}
!2261 = !DILocation(line: 984, column: 26, scope: !2247)
!2262 = !DILocation(line: 152, column: 43, scope: !909, inlinedAt: !2263)
!2263 = distinct !DILocation(line: 986, column: 3, scope: !2247)
!2264 = !DILocation(line: 152, column: 51, scope: !909, inlinedAt: !2263)
!2265 = !DILocation(line: 152, column: 58, scope: !909, inlinedAt: !2263)
!2266 = !DILocation(line: 154, column: 17, scope: !909, inlinedAt: !2263)
!2267 = !DILocation(line: 156, column: 62, scope: !909, inlinedAt: !2263)
!2268 = !DILocation(line: 156, column: 57, scope: !909, inlinedAt: !2263)
!2269 = !DILocation(line: 155, column: 17, scope: !909, inlinedAt: !2263)
!2270 = !DILocation(line: 157, column: 15, scope: !909, inlinedAt: !2263)
!2271 = !DILocation(line: 157, column: 7, scope: !909, inlinedAt: !2263)
!2272 = !DILocation(line: 158, column: 12, scope: !909, inlinedAt: !2263)
!2273 = !DILocation(line: 158, column: 15, scope: !909, inlinedAt: !2263)
!2274 = !DILocation(line: 158, column: 25, scope: !909, inlinedAt: !2263)
!2275 = !DILocation(line: 158, column: 7, scope: !909, inlinedAt: !2263)
!2276 = !DILocation(line: 159, column: 18, scope: !909, inlinedAt: !2263)
!2277 = !DILocation(line: 159, column: 23, scope: !909, inlinedAt: !2263)
!2278 = !DILocation(line: 159, column: 6, scope: !909, inlinedAt: !2263)
!2279 = !DILocation(line: 987, column: 10, scope: !2247)
!2280 = !DILocation(line: 988, column: 1, scope: !2247)
!2281 = !DILocation(line: 987, column: 3, scope: !2247)
!2282 = distinct !DISubprogram(name: "quotearg_char", scope: !117, file: !117, line: 991, type: !2283, isLocal: false, isDefinition: true, scopeLine: 992, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !2285)
!2283 = !DISubroutineType(types: !2284)
!2284 = !{!66, !6, !8}
!2285 = !{!2286, !2287}
!2286 = !DILocalVariable(name: "arg", arg: 1, scope: !2282, file: !117, line: 991, type: !6)
!2287 = !DILocalVariable(name: "ch", arg: 2, scope: !2282, file: !117, line: 991, type: !8)
!2288 = !DILocation(line: 991, column: 28, scope: !2282)
!2289 = !DILocation(line: 991, column: 38, scope: !2282)
!2290 = !DILocation(line: 982, column: 32, scope: !2247, inlinedAt: !2291)
!2291 = distinct !DILocation(line: 993, column: 10, scope: !2282)
!2292 = !DILocation(line: 982, column: 44, scope: !2247, inlinedAt: !2291)
!2293 = !DILocation(line: 982, column: 58, scope: !2247, inlinedAt: !2291)
!2294 = !DILocation(line: 984, column: 3, scope: !2247, inlinedAt: !2291)
!2295 = !DILocation(line: 985, column: 13, scope: !2247, inlinedAt: !2291)
!2296 = !DILocation(line: 984, column: 26, scope: !2247, inlinedAt: !2291)
!2297 = !DILocation(line: 152, column: 43, scope: !909, inlinedAt: !2298)
!2298 = distinct !DILocation(line: 986, column: 3, scope: !2247, inlinedAt: !2291)
!2299 = !DILocation(line: 152, column: 51, scope: !909, inlinedAt: !2298)
!2300 = !DILocation(line: 152, column: 58, scope: !909, inlinedAt: !2298)
!2301 = !DILocation(line: 154, column: 17, scope: !909, inlinedAt: !2298)
!2302 = !DILocation(line: 156, column: 62, scope: !909, inlinedAt: !2298)
!2303 = !DILocation(line: 156, column: 57, scope: !909, inlinedAt: !2298)
!2304 = !DILocation(line: 155, column: 17, scope: !909, inlinedAt: !2298)
!2305 = !DILocation(line: 157, column: 15, scope: !909, inlinedAt: !2298)
!2306 = !DILocation(line: 157, column: 7, scope: !909, inlinedAt: !2298)
!2307 = !DILocation(line: 158, column: 12, scope: !909, inlinedAt: !2298)
!2308 = !DILocation(line: 158, column: 15, scope: !909, inlinedAt: !2298)
!2309 = !DILocation(line: 158, column: 25, scope: !909, inlinedAt: !2298)
!2310 = !DILocation(line: 158, column: 7, scope: !909, inlinedAt: !2298)
!2311 = !DILocation(line: 159, column: 18, scope: !909, inlinedAt: !2298)
!2312 = !DILocation(line: 159, column: 23, scope: !909, inlinedAt: !2298)
!2313 = !DILocation(line: 159, column: 6, scope: !909, inlinedAt: !2298)
!2314 = !DILocation(line: 987, column: 10, scope: !2247, inlinedAt: !2291)
!2315 = !DILocation(line: 988, column: 1, scope: !2247, inlinedAt: !2291)
!2316 = !DILocation(line: 993, column: 3, scope: !2282)
!2317 = distinct !DISubprogram(name: "quotearg_colon", scope: !117, file: !117, line: 997, type: !2101, isLocal: false, isDefinition: true, scopeLine: 998, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !2318)
!2318 = !{!2319}
!2319 = !DILocalVariable(name: "arg", arg: 1, scope: !2317, file: !117, line: 997, type: !6)
!2320 = !DILocation(line: 997, column: 29, scope: !2317)
!2321 = !DILocation(line: 991, column: 28, scope: !2282, inlinedAt: !2322)
!2322 = distinct !DILocation(line: 999, column: 10, scope: !2317)
!2323 = !DILocation(line: 991, column: 38, scope: !2282, inlinedAt: !2322)
!2324 = !DILocation(line: 982, column: 32, scope: !2247, inlinedAt: !2325)
!2325 = distinct !DILocation(line: 993, column: 10, scope: !2282, inlinedAt: !2322)
!2326 = !DILocation(line: 982, column: 44, scope: !2247, inlinedAt: !2325)
!2327 = !DILocation(line: 982, column: 58, scope: !2247, inlinedAt: !2325)
!2328 = !DILocation(line: 984, column: 3, scope: !2247, inlinedAt: !2325)
!2329 = !DILocation(line: 985, column: 13, scope: !2247, inlinedAt: !2325)
!2330 = !DILocation(line: 984, column: 26, scope: !2247, inlinedAt: !2325)
!2331 = !DILocation(line: 152, column: 43, scope: !909, inlinedAt: !2332)
!2332 = distinct !DILocation(line: 986, column: 3, scope: !2247, inlinedAt: !2325)
!2333 = !DILocation(line: 152, column: 51, scope: !909, inlinedAt: !2332)
!2334 = !DILocation(line: 152, column: 58, scope: !909, inlinedAt: !2332)
!2335 = !DILocation(line: 154, column: 17, scope: !909, inlinedAt: !2332)
!2336 = !DILocation(line: 156, column: 57, scope: !909, inlinedAt: !2332)
!2337 = !DILocation(line: 155, column: 17, scope: !909, inlinedAt: !2332)
!2338 = !DILocation(line: 157, column: 7, scope: !909, inlinedAt: !2332)
!2339 = !DILocation(line: 158, column: 12, scope: !909, inlinedAt: !2332)
!2340 = !DILocation(line: 159, column: 6, scope: !909, inlinedAt: !2332)
!2341 = !DILocation(line: 987, column: 10, scope: !2247, inlinedAt: !2325)
!2342 = !DILocation(line: 988, column: 1, scope: !2247, inlinedAt: !2325)
!2343 = !DILocation(line: 999, column: 3, scope: !2317)
!2344 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !117, file: !117, line: 1003, type: !2112, isLocal: false, isDefinition: true, scopeLine: 1004, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !2345)
!2345 = !{!2346, !2347}
!2346 = !DILocalVariable(name: "arg", arg: 1, scope: !2344, file: !117, line: 1003, type: !6)
!2347 = !DILocalVariable(name: "argsize", arg: 2, scope: !2344, file: !117, line: 1003, type: !111)
!2348 = !DILocation(line: 1003, column: 33, scope: !2344)
!2349 = !DILocation(line: 1003, column: 45, scope: !2344)
!2350 = !DILocation(line: 982, column: 32, scope: !2247, inlinedAt: !2351)
!2351 = distinct !DILocation(line: 1005, column: 10, scope: !2344)
!2352 = !DILocation(line: 982, column: 44, scope: !2247, inlinedAt: !2351)
!2353 = !DILocation(line: 982, column: 58, scope: !2247, inlinedAt: !2351)
!2354 = !DILocation(line: 984, column: 3, scope: !2247, inlinedAt: !2351)
!2355 = !DILocation(line: 985, column: 13, scope: !2247, inlinedAt: !2351)
!2356 = !DILocation(line: 984, column: 26, scope: !2247, inlinedAt: !2351)
!2357 = !DILocation(line: 152, column: 43, scope: !909, inlinedAt: !2358)
!2358 = distinct !DILocation(line: 986, column: 3, scope: !2247, inlinedAt: !2351)
!2359 = !DILocation(line: 152, column: 51, scope: !909, inlinedAt: !2358)
!2360 = !DILocation(line: 152, column: 58, scope: !909, inlinedAt: !2358)
!2361 = !DILocation(line: 154, column: 17, scope: !909, inlinedAt: !2358)
!2362 = !DILocation(line: 156, column: 57, scope: !909, inlinedAt: !2358)
!2363 = !DILocation(line: 155, column: 17, scope: !909, inlinedAt: !2358)
!2364 = !DILocation(line: 157, column: 7, scope: !909, inlinedAt: !2358)
!2365 = !DILocation(line: 158, column: 12, scope: !909, inlinedAt: !2358)
!2366 = !DILocation(line: 159, column: 6, scope: !909, inlinedAt: !2358)
!2367 = !DILocation(line: 987, column: 10, scope: !2247, inlinedAt: !2351)
!2368 = !DILocation(line: 988, column: 1, scope: !2247, inlinedAt: !2351)
!2369 = !DILocation(line: 1005, column: 3, scope: !2344)
!2370 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !117, file: !117, line: 1009, type: !2126, isLocal: false, isDefinition: true, scopeLine: 1010, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !2371)
!2371 = !{!2372, !2373, !2374, !2375}
!2372 = !DILocalVariable(name: "n", arg: 1, scope: !2370, file: !117, line: 1009, type: !18)
!2373 = !DILocalVariable(name: "s", arg: 2, scope: !2370, file: !117, line: 1009, type: !74)
!2374 = !DILocalVariable(name: "arg", arg: 3, scope: !2370, file: !117, line: 1009, type: !6)
!2375 = !DILocalVariable(name: "options", scope: !2370, file: !117, line: 1011, type: !124)
!2376 = !DILocation(line: 195, column: 26, scope: !2139, inlinedAt: !2377)
!2377 = distinct !DILocation(line: 1012, column: 13, scope: !2370)
!2378 = !DILocation(line: 1009, column: 29, scope: !2370)
!2379 = !DILocation(line: 1009, column: 51, scope: !2370)
!2380 = !DILocation(line: 1009, column: 66, scope: !2370)
!2381 = !DILocation(line: 1011, column: 3, scope: !2370)
!2382 = !DILocation(line: 1012, column: 13, scope: !2370)
!2383 = !DILocation(line: 193, column: 48, scope: !2139, inlinedAt: !2377)
!2384 = !{!2385}
!2385 = distinct !{!2385, !2386, !"quoting_options_from_style: argument 0"}
!2386 = distinct !{!2386, !"quoting_options_from_style"}
!2387 = !DILocation(line: 196, column: 13, scope: !2151, inlinedAt: !2377)
!2388 = !DILocation(line: 196, column: 7, scope: !2139, inlinedAt: !2377)
!2389 = !DILocation(line: 197, column: 5, scope: !2151, inlinedAt: !2377)
!2390 = !DILocation(line: 1011, column: 26, scope: !2370)
!2391 = !DILocation(line: 152, column: 43, scope: !909, inlinedAt: !2392)
!2392 = distinct !DILocation(line: 1013, column: 3, scope: !2370)
!2393 = !DILocation(line: 152, column: 51, scope: !909, inlinedAt: !2392)
!2394 = !DILocation(line: 152, column: 58, scope: !909, inlinedAt: !2392)
!2395 = !DILocation(line: 154, column: 17, scope: !909, inlinedAt: !2392)
!2396 = !DILocation(line: 156, column: 57, scope: !909, inlinedAt: !2392)
!2397 = !DILocation(line: 155, column: 17, scope: !909, inlinedAt: !2392)
!2398 = !DILocation(line: 157, column: 7, scope: !909, inlinedAt: !2392)
!2399 = !DILocation(line: 158, column: 12, scope: !909, inlinedAt: !2392)
!2400 = !DILocation(line: 159, column: 6, scope: !909, inlinedAt: !2392)
!2401 = !DILocation(line: 1014, column: 10, scope: !2370)
!2402 = !DILocation(line: 1015, column: 1, scope: !2370)
!2403 = !DILocation(line: 1014, column: 3, scope: !2370)
!2404 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !117, file: !117, line: 1018, type: !2405, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !2407)
!2405 = !DISubroutineType(types: !2406)
!2406 = !{!66, !18, !6, !6, !6}
!2407 = !{!2408, !2409, !2410, !2411}
!2408 = !DILocalVariable(name: "n", arg: 1, scope: !2404, file: !117, line: 1018, type: !18)
!2409 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2404, file: !117, line: 1018, type: !6)
!2410 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2404, file: !117, line: 1019, type: !6)
!2411 = !DILocalVariable(name: "arg", arg: 4, scope: !2404, file: !117, line: 1019, type: !6)
!2412 = !DILocation(line: 1018, column: 24, scope: !2404)
!2413 = !DILocation(line: 1018, column: 39, scope: !2404)
!2414 = !DILocation(line: 1019, column: 32, scope: !2404)
!2415 = !DILocation(line: 1019, column: 57, scope: !2404)
!2416 = !DILocalVariable(name: "n", arg: 1, scope: !2417, file: !117, line: 1026, type: !18)
!2417 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !117, file: !117, line: 1026, type: !2418, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !2420)
!2418 = !DISubroutineType(types: !2419)
!2419 = !{!66, !18, !6, !6, !6, !111}
!2420 = !{!2416, !2421, !2422, !2423, !2424, !2425}
!2421 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2417, file: !117, line: 1026, type: !6)
!2422 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2417, file: !117, line: 1027, type: !6)
!2423 = !DILocalVariable(name: "arg", arg: 4, scope: !2417, file: !117, line: 1028, type: !6)
!2424 = !DILocalVariable(name: "argsize", arg: 5, scope: !2417, file: !117, line: 1028, type: !111)
!2425 = !DILocalVariable(name: "o", scope: !2417, file: !117, line: 1030, type: !124)
!2426 = !DILocation(line: 1026, column: 28, scope: !2417, inlinedAt: !2427)
!2427 = distinct !DILocation(line: 1021, column: 10, scope: !2404)
!2428 = !DILocation(line: 1026, column: 43, scope: !2417, inlinedAt: !2427)
!2429 = !DILocation(line: 1027, column: 36, scope: !2417, inlinedAt: !2427)
!2430 = !DILocation(line: 1028, column: 36, scope: !2417, inlinedAt: !2427)
!2431 = !DILocation(line: 1028, column: 48, scope: !2417, inlinedAt: !2427)
!2432 = !DILocation(line: 1030, column: 3, scope: !2417, inlinedAt: !2427)
!2433 = !DILocation(line: 1030, column: 30, scope: !2417, inlinedAt: !2427)
!2434 = !DILocation(line: 1030, column: 26, scope: !2417, inlinedAt: !2427)
!2435 = !DILocation(line: 179, column: 45, scope: !958, inlinedAt: !2436)
!2436 = distinct !DILocation(line: 1031, column: 3, scope: !2417, inlinedAt: !2427)
!2437 = !DILocation(line: 180, column: 33, scope: !958, inlinedAt: !2436)
!2438 = !DILocation(line: 180, column: 57, scope: !958, inlinedAt: !2436)
!2439 = !DILocation(line: 184, column: 6, scope: !958, inlinedAt: !2436)
!2440 = !DILocation(line: 184, column: 12, scope: !958, inlinedAt: !2436)
!2441 = !DILocation(line: 185, column: 8, scope: !974, inlinedAt: !2436)
!2442 = !DILocation(line: 185, column: 23, scope: !974, inlinedAt: !2436)
!2443 = !DILocation(line: 185, column: 19, scope: !974, inlinedAt: !2436)
!2444 = !DILocation(line: 186, column: 5, scope: !974, inlinedAt: !2436)
!2445 = !DILocation(line: 187, column: 6, scope: !958, inlinedAt: !2436)
!2446 = !DILocation(line: 187, column: 17, scope: !958, inlinedAt: !2436)
!2447 = !DILocation(line: 188, column: 6, scope: !958, inlinedAt: !2436)
!2448 = !DILocation(line: 188, column: 18, scope: !958, inlinedAt: !2436)
!2449 = !DILocation(line: 1032, column: 10, scope: !2417, inlinedAt: !2427)
!2450 = !DILocation(line: 1033, column: 1, scope: !2417, inlinedAt: !2427)
!2451 = !DILocation(line: 1021, column: 3, scope: !2404)
!2452 = !DILocation(line: 1026, column: 28, scope: !2417)
!2453 = !DILocation(line: 1026, column: 43, scope: !2417)
!2454 = !DILocation(line: 1027, column: 36, scope: !2417)
!2455 = !DILocation(line: 1028, column: 36, scope: !2417)
!2456 = !DILocation(line: 1028, column: 48, scope: !2417)
!2457 = !DILocation(line: 1030, column: 3, scope: !2417)
!2458 = !DILocation(line: 1030, column: 30, scope: !2417)
!2459 = !DILocation(line: 1030, column: 26, scope: !2417)
!2460 = !DILocation(line: 179, column: 45, scope: !958, inlinedAt: !2461)
!2461 = distinct !DILocation(line: 1031, column: 3, scope: !2417)
!2462 = !DILocation(line: 180, column: 33, scope: !958, inlinedAt: !2461)
!2463 = !DILocation(line: 180, column: 57, scope: !958, inlinedAt: !2461)
!2464 = !DILocation(line: 184, column: 6, scope: !958, inlinedAt: !2461)
!2465 = !DILocation(line: 184, column: 12, scope: !958, inlinedAt: !2461)
!2466 = !DILocation(line: 185, column: 8, scope: !974, inlinedAt: !2461)
!2467 = !DILocation(line: 185, column: 23, scope: !974, inlinedAt: !2461)
!2468 = !DILocation(line: 185, column: 19, scope: !974, inlinedAt: !2461)
!2469 = !DILocation(line: 186, column: 5, scope: !974, inlinedAt: !2461)
!2470 = !DILocation(line: 187, column: 6, scope: !958, inlinedAt: !2461)
!2471 = !DILocation(line: 187, column: 17, scope: !958, inlinedAt: !2461)
!2472 = !DILocation(line: 188, column: 6, scope: !958, inlinedAt: !2461)
!2473 = !DILocation(line: 188, column: 18, scope: !958, inlinedAt: !2461)
!2474 = !DILocation(line: 1032, column: 10, scope: !2417)
!2475 = !DILocation(line: 1033, column: 1, scope: !2417)
!2476 = !DILocation(line: 1032, column: 3, scope: !2417)
!2477 = distinct !DISubprogram(name: "quotearg_custom", scope: !117, file: !117, line: 1036, type: !2478, isLocal: false, isDefinition: true, scopeLine: 1038, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !2480)
!2478 = !DISubroutineType(types: !2479)
!2479 = !{!66, !6, !6, !6}
!2480 = !{!2481, !2482, !2483}
!2481 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2477, file: !117, line: 1036, type: !6)
!2482 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2477, file: !117, line: 1036, type: !6)
!2483 = !DILocalVariable(name: "arg", arg: 3, scope: !2477, file: !117, line: 1037, type: !6)
!2484 = !DILocation(line: 1036, column: 30, scope: !2477)
!2485 = !DILocation(line: 1036, column: 54, scope: !2477)
!2486 = !DILocation(line: 1037, column: 30, scope: !2477)
!2487 = !DILocation(line: 1018, column: 24, scope: !2404, inlinedAt: !2488)
!2488 = distinct !DILocation(line: 1039, column: 10, scope: !2477)
!2489 = !DILocation(line: 1018, column: 39, scope: !2404, inlinedAt: !2488)
!2490 = !DILocation(line: 1019, column: 32, scope: !2404, inlinedAt: !2488)
!2491 = !DILocation(line: 1019, column: 57, scope: !2404, inlinedAt: !2488)
!2492 = !DILocation(line: 1026, column: 28, scope: !2417, inlinedAt: !2493)
!2493 = distinct !DILocation(line: 1021, column: 10, scope: !2404, inlinedAt: !2488)
!2494 = !DILocation(line: 1026, column: 43, scope: !2417, inlinedAt: !2493)
!2495 = !DILocation(line: 1027, column: 36, scope: !2417, inlinedAt: !2493)
!2496 = !DILocation(line: 1028, column: 36, scope: !2417, inlinedAt: !2493)
!2497 = !DILocation(line: 1028, column: 48, scope: !2417, inlinedAt: !2493)
!2498 = !DILocation(line: 1030, column: 3, scope: !2417, inlinedAt: !2493)
!2499 = !DILocation(line: 1030, column: 30, scope: !2417, inlinedAt: !2493)
!2500 = !DILocation(line: 1030, column: 26, scope: !2417, inlinedAt: !2493)
!2501 = !DILocation(line: 179, column: 45, scope: !958, inlinedAt: !2502)
!2502 = distinct !DILocation(line: 1031, column: 3, scope: !2417, inlinedAt: !2493)
!2503 = !DILocation(line: 180, column: 33, scope: !958, inlinedAt: !2502)
!2504 = !DILocation(line: 180, column: 57, scope: !958, inlinedAt: !2502)
!2505 = !DILocation(line: 184, column: 6, scope: !958, inlinedAt: !2502)
!2506 = !DILocation(line: 184, column: 12, scope: !958, inlinedAt: !2502)
!2507 = !DILocation(line: 185, column: 8, scope: !974, inlinedAt: !2502)
!2508 = !DILocation(line: 185, column: 23, scope: !974, inlinedAt: !2502)
!2509 = !DILocation(line: 185, column: 19, scope: !974, inlinedAt: !2502)
!2510 = !DILocation(line: 186, column: 5, scope: !974, inlinedAt: !2502)
!2511 = !DILocation(line: 187, column: 6, scope: !958, inlinedAt: !2502)
!2512 = !DILocation(line: 187, column: 17, scope: !958, inlinedAt: !2502)
!2513 = !DILocation(line: 188, column: 6, scope: !958, inlinedAt: !2502)
!2514 = !DILocation(line: 188, column: 18, scope: !958, inlinedAt: !2502)
!2515 = !DILocation(line: 1032, column: 10, scope: !2417, inlinedAt: !2493)
!2516 = !DILocation(line: 1033, column: 1, scope: !2417, inlinedAt: !2493)
!2517 = !DILocation(line: 1039, column: 3, scope: !2477)
!2518 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !117, file: !117, line: 1043, type: !2519, isLocal: false, isDefinition: true, scopeLine: 1045, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !2521)
!2519 = !DISubroutineType(types: !2520)
!2520 = !{!66, !6, !6, !6, !111}
!2521 = !{!2522, !2523, !2524, !2525}
!2522 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2518, file: !117, line: 1043, type: !6)
!2523 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2518, file: !117, line: 1043, type: !6)
!2524 = !DILocalVariable(name: "arg", arg: 3, scope: !2518, file: !117, line: 1044, type: !6)
!2525 = !DILocalVariable(name: "argsize", arg: 4, scope: !2518, file: !117, line: 1044, type: !111)
!2526 = !DILocation(line: 1043, column: 34, scope: !2518)
!2527 = !DILocation(line: 1043, column: 58, scope: !2518)
!2528 = !DILocation(line: 1044, column: 34, scope: !2518)
!2529 = !DILocation(line: 1044, column: 46, scope: !2518)
!2530 = !DILocation(line: 1026, column: 28, scope: !2417, inlinedAt: !2531)
!2531 = distinct !DILocation(line: 1046, column: 10, scope: !2518)
!2532 = !DILocation(line: 1026, column: 43, scope: !2417, inlinedAt: !2531)
!2533 = !DILocation(line: 1027, column: 36, scope: !2417, inlinedAt: !2531)
!2534 = !DILocation(line: 1028, column: 36, scope: !2417, inlinedAt: !2531)
!2535 = !DILocation(line: 1028, column: 48, scope: !2417, inlinedAt: !2531)
!2536 = !DILocation(line: 1030, column: 3, scope: !2417, inlinedAt: !2531)
!2537 = !DILocation(line: 1030, column: 30, scope: !2417, inlinedAt: !2531)
!2538 = !DILocation(line: 1030, column: 26, scope: !2417, inlinedAt: !2531)
!2539 = !DILocation(line: 179, column: 45, scope: !958, inlinedAt: !2540)
!2540 = distinct !DILocation(line: 1031, column: 3, scope: !2417, inlinedAt: !2531)
!2541 = !DILocation(line: 180, column: 33, scope: !958, inlinedAt: !2540)
!2542 = !DILocation(line: 180, column: 57, scope: !958, inlinedAt: !2540)
!2543 = !DILocation(line: 184, column: 6, scope: !958, inlinedAt: !2540)
!2544 = !DILocation(line: 184, column: 12, scope: !958, inlinedAt: !2540)
!2545 = !DILocation(line: 185, column: 8, scope: !974, inlinedAt: !2540)
!2546 = !DILocation(line: 185, column: 23, scope: !974, inlinedAt: !2540)
!2547 = !DILocation(line: 185, column: 19, scope: !974, inlinedAt: !2540)
!2548 = !DILocation(line: 186, column: 5, scope: !974, inlinedAt: !2540)
!2549 = !DILocation(line: 187, column: 6, scope: !958, inlinedAt: !2540)
!2550 = !DILocation(line: 187, column: 17, scope: !958, inlinedAt: !2540)
!2551 = !DILocation(line: 188, column: 6, scope: !958, inlinedAt: !2540)
!2552 = !DILocation(line: 188, column: 18, scope: !958, inlinedAt: !2540)
!2553 = !DILocation(line: 1032, column: 10, scope: !2417, inlinedAt: !2531)
!2554 = !DILocation(line: 1033, column: 1, scope: !2417, inlinedAt: !2531)
!2555 = !DILocation(line: 1046, column: 3, scope: !2518)
!2556 = distinct !DISubprogram(name: "quote_n_mem", scope: !117, file: !117, line: 1061, type: !2557, isLocal: false, isDefinition: true, scopeLine: 1062, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !2559)
!2557 = !DISubroutineType(types: !2558)
!2558 = !{!6, !18, !6, !111}
!2559 = !{!2560, !2561, !2562}
!2560 = !DILocalVariable(name: "n", arg: 1, scope: !2556, file: !117, line: 1061, type: !18)
!2561 = !DILocalVariable(name: "arg", arg: 2, scope: !2556, file: !117, line: 1061, type: !6)
!2562 = !DILocalVariable(name: "argsize", arg: 3, scope: !2556, file: !117, line: 1061, type: !111)
!2563 = !DILocation(line: 1061, column: 18, scope: !2556)
!2564 = !DILocation(line: 1061, column: 33, scope: !2556)
!2565 = !DILocation(line: 1061, column: 45, scope: !2556)
!2566 = !DILocation(line: 1063, column: 10, scope: !2556)
!2567 = !DILocation(line: 1063, column: 3, scope: !2556)
!2568 = distinct !DISubprogram(name: "quote_mem", scope: !117, file: !117, line: 1067, type: !2569, isLocal: false, isDefinition: true, scopeLine: 1068, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !2571)
!2569 = !DISubroutineType(types: !2570)
!2570 = !{!6, !6, !111}
!2571 = !{!2572, !2573}
!2572 = !DILocalVariable(name: "arg", arg: 1, scope: !2568, file: !117, line: 1067, type: !6)
!2573 = !DILocalVariable(name: "argsize", arg: 2, scope: !2568, file: !117, line: 1067, type: !111)
!2574 = !DILocation(line: 1067, column: 24, scope: !2568)
!2575 = !DILocation(line: 1067, column: 36, scope: !2568)
!2576 = !DILocation(line: 1061, column: 18, scope: !2556, inlinedAt: !2577)
!2577 = distinct !DILocation(line: 1069, column: 10, scope: !2568)
!2578 = !DILocation(line: 1061, column: 33, scope: !2556, inlinedAt: !2577)
!2579 = !DILocation(line: 1061, column: 45, scope: !2556, inlinedAt: !2577)
!2580 = !DILocation(line: 1063, column: 10, scope: !2556, inlinedAt: !2577)
!2581 = !DILocation(line: 1069, column: 3, scope: !2568)
!2582 = distinct !DISubprogram(name: "quote_n", scope: !117, file: !117, line: 1073, type: !2583, isLocal: false, isDefinition: true, scopeLine: 1074, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !2585)
!2583 = !DISubroutineType(types: !2584)
!2584 = !{!6, !18, !6}
!2585 = !{!2586, !2587}
!2586 = !DILocalVariable(name: "n", arg: 1, scope: !2582, file: !117, line: 1073, type: !18)
!2587 = !DILocalVariable(name: "arg", arg: 2, scope: !2582, file: !117, line: 1073, type: !6)
!2588 = !DILocation(line: 1073, column: 14, scope: !2582)
!2589 = !DILocation(line: 1073, column: 29, scope: !2582)
!2590 = !DILocation(line: 1061, column: 18, scope: !2556, inlinedAt: !2591)
!2591 = distinct !DILocation(line: 1075, column: 10, scope: !2582)
!2592 = !DILocation(line: 1061, column: 33, scope: !2556, inlinedAt: !2591)
!2593 = !DILocation(line: 1061, column: 45, scope: !2556, inlinedAt: !2591)
!2594 = !DILocation(line: 1063, column: 10, scope: !2556, inlinedAt: !2591)
!2595 = !DILocation(line: 1075, column: 3, scope: !2582)
!2596 = distinct !DISubprogram(name: "quote", scope: !117, file: !117, line: 1079, type: !2597, isLocal: false, isDefinition: true, scopeLine: 1080, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !2599)
!2597 = !DISubroutineType(types: !2598)
!2598 = !{!6, !6}
!2599 = !{!2600}
!2600 = !DILocalVariable(name: "arg", arg: 1, scope: !2596, file: !117, line: 1079, type: !6)
!2601 = !DILocation(line: 1079, column: 20, scope: !2596)
!2602 = !DILocation(line: 1073, column: 14, scope: !2582, inlinedAt: !2603)
!2603 = distinct !DILocation(line: 1081, column: 10, scope: !2596)
!2604 = !DILocation(line: 1073, column: 29, scope: !2582, inlinedAt: !2603)
!2605 = !DILocation(line: 1061, column: 18, scope: !2556, inlinedAt: !2606)
!2606 = distinct !DILocation(line: 1075, column: 10, scope: !2582, inlinedAt: !2603)
!2607 = !DILocation(line: 1061, column: 33, scope: !2556, inlinedAt: !2606)
!2608 = !DILocation(line: 1061, column: 45, scope: !2556, inlinedAt: !2606)
!2609 = !DILocation(line: 1063, column: 10, scope: !2556, inlinedAt: !2606)
!2610 = !DILocation(line: 1081, column: 3, scope: !2596)
!2611 = distinct !DISubprogram(name: "version_etc_arn", scope: !169, file: !169, line: 62, type: !2612, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !165, retainedNodes: !2668)
!2612 = !DISubroutineType(types: !2613)
!2613 = !{null, !2614, !6, !6, !6, !2667, !111}
!2614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2615, size: 64)
!2615 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2616, line: 7, baseType: !2617)
!2616 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2618, line: 49, size: 1728, elements: !2619)
!2618 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2619 = !{!2620, !2621, !2622, !2623, !2624, !2625, !2626, !2627, !2628, !2629, !2630, !2631, !2632, !2635, !2637, !2638, !2639, !2643, !2644, !2646, !2648, !2651, !2653, !2656, !2659, !2660, !2661, !2662, !2663}
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2617, file: !2618, line: 51, baseType: !18, size: 32)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2617, file: !2618, line: 54, baseType: !66, size: 64, offset: 64)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2617, file: !2618, line: 55, baseType: !66, size: 64, offset: 128)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2617, file: !2618, line: 56, baseType: !66, size: 64, offset: 192)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2617, file: !2618, line: 57, baseType: !66, size: 64, offset: 256)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2617, file: !2618, line: 58, baseType: !66, size: 64, offset: 320)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2617, file: !2618, line: 59, baseType: !66, size: 64, offset: 384)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2617, file: !2618, line: 60, baseType: !66, size: 64, offset: 448)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2617, file: !2618, line: 61, baseType: !66, size: 64, offset: 512)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2617, file: !2618, line: 64, baseType: !66, size: 64, offset: 576)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2617, file: !2618, line: 65, baseType: !66, size: 64, offset: 640)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2617, file: !2618, line: 66, baseType: !66, size: 64, offset: 704)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2617, file: !2618, line: 68, baseType: !2633, size: 64, offset: 768)
!2633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2634, size: 64)
!2634 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2618, line: 36, flags: DIFlagFwdDecl)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2617, file: !2618, line: 70, baseType: !2636, size: 64, offset: 832)
!2636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2617, size: 64)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2617, file: !2618, line: 72, baseType: !18, size: 32, offset: 896)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2617, file: !2618, line: 73, baseType: !18, size: 32, offset: 928)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2617, file: !2618, line: 74, baseType: !2640, size: 64, offset: 960)
!2640 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !2641, line: 150, baseType: !2642)
!2641 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2642 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2617, file: !2618, line: 77, baseType: !110, size: 16, offset: 1024)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2617, file: !2618, line: 78, baseType: !2645, size: 8, offset: 1040)
!2645 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2617, file: !2618, line: 79, baseType: !2647, size: 8, offset: 1048)
!2647 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8, elements: !22)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2617, file: !2618, line: 81, baseType: !2649, size: 64, offset: 1088)
!2649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2650, size: 64)
!2650 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2618, line: 43, baseType: null)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2617, file: !2618, line: 89, baseType: !2652, size: 64, offset: 1152)
!2652 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !2641, line: 151, baseType: !2642)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2617, file: !2618, line: 91, baseType: !2654, size: 64, offset: 1216)
!2654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2655, size: 64)
!2655 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !2618, line: 37, flags: DIFlagFwdDecl)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2617, file: !2618, line: 92, baseType: !2657, size: 64, offset: 1280)
!2657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2658, size: 64)
!2658 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !2618, line: 38, flags: DIFlagFwdDecl)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2617, file: !2618, line: 93, baseType: !2636, size: 64, offset: 1344)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2617, file: !2618, line: 94, baseType: !9, size: 64, offset: 1408)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2617, file: !2618, line: 95, baseType: !111, size: 64, offset: 1472)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2617, file: !2618, line: 96, baseType: !18, size: 32, offset: 1536)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2617, file: !2618, line: 98, baseType: !2664, size: 160, offset: 1568)
!2664 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 160, elements: !2665)
!2665 = !{!2666}
!2666 = !DISubrange(count: 20)
!2667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!2668 = !{!2669, !2670, !2671, !2672, !2673, !2674}
!2669 = !DILocalVariable(name: "stream", arg: 1, scope: !2611, file: !169, line: 62, type: !2614)
!2670 = !DILocalVariable(name: "command_name", arg: 2, scope: !2611, file: !169, line: 63, type: !6)
!2671 = !DILocalVariable(name: "package", arg: 3, scope: !2611, file: !169, line: 63, type: !6)
!2672 = !DILocalVariable(name: "version", arg: 4, scope: !2611, file: !169, line: 64, type: !6)
!2673 = !DILocalVariable(name: "authors", arg: 5, scope: !2611, file: !169, line: 65, type: !2667)
!2674 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2611, file: !169, line: 65, type: !111)
!2675 = !DILocation(line: 62, column: 24, scope: !2611)
!2676 = !DILocation(line: 63, column: 30, scope: !2611)
!2677 = !DILocation(line: 63, column: 56, scope: !2611)
!2678 = !DILocation(line: 64, column: 30, scope: !2611)
!2679 = !DILocation(line: 65, column: 39, scope: !2611)
!2680 = !DILocation(line: 65, column: 55, scope: !2611)
!2681 = !DILocation(line: 67, column: 7, scope: !2682)
!2682 = distinct !DILexicalBlock(scope: !2611, file: !169, line: 67, column: 7)
!2683 = !DILocation(line: 67, column: 7, scope: !2611)
!2684 = !DILocation(line: 68, column: 5, scope: !2682)
!2685 = !DILocation(line: 70, column: 5, scope: !2682)
!2686 = !DILocation(line: 84, column: 3, scope: !2611)
!2687 = !DILocation(line: 86, column: 3, scope: !2611)
!2688 = !DILocation(line: 95, column: 3, scope: !2611)
!2689 = !DILocation(line: 99, column: 7, scope: !2690)
!2690 = distinct !DILexicalBlock(scope: !2611, file: !169, line: 96, column: 5)
!2691 = !DILocation(line: 102, column: 7, scope: !2690)
!2692 = !DILocation(line: 103, column: 7, scope: !2690)
!2693 = !DILocation(line: 106, column: 7, scope: !2690)
!2694 = !DILocation(line: 107, column: 7, scope: !2690)
!2695 = !DILocation(line: 110, column: 7, scope: !2690)
!2696 = !DILocation(line: 112, column: 7, scope: !2690)
!2697 = !DILocation(line: 117, column: 7, scope: !2690)
!2698 = !DILocation(line: 119, column: 7, scope: !2690)
!2699 = !DILocation(line: 124, column: 7, scope: !2690)
!2700 = !DILocation(line: 126, column: 7, scope: !2690)
!2701 = !DILocation(line: 131, column: 7, scope: !2690)
!2702 = !DILocation(line: 134, column: 7, scope: !2690)
!2703 = !DILocation(line: 139, column: 7, scope: !2690)
!2704 = !DILocation(line: 142, column: 7, scope: !2690)
!2705 = !DILocation(line: 147, column: 7, scope: !2690)
!2706 = !DILocation(line: 151, column: 7, scope: !2690)
!2707 = !DILocation(line: 156, column: 7, scope: !2690)
!2708 = !DILocation(line: 160, column: 7, scope: !2690)
!2709 = !DILocation(line: 167, column: 7, scope: !2690)
!2710 = !DILocation(line: 171, column: 7, scope: !2690)
!2711 = !DILocation(line: 173, column: 1, scope: !2611)
!2712 = distinct !DISubprogram(name: "version_etc_ar", scope: !169, file: !169, line: 180, type: !2713, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !165, retainedNodes: !2715)
!2713 = !DISubroutineType(types: !2714)
!2714 = !{null, !2614, !6, !6, !6, !2667}
!2715 = !{!2716, !2717, !2718, !2719, !2720, !2721}
!2716 = !DILocalVariable(name: "stream", arg: 1, scope: !2712, file: !169, line: 180, type: !2614)
!2717 = !DILocalVariable(name: "command_name", arg: 2, scope: !2712, file: !169, line: 181, type: !6)
!2718 = !DILocalVariable(name: "package", arg: 3, scope: !2712, file: !169, line: 181, type: !6)
!2719 = !DILocalVariable(name: "version", arg: 4, scope: !2712, file: !169, line: 182, type: !6)
!2720 = !DILocalVariable(name: "authors", arg: 5, scope: !2712, file: !169, line: 182, type: !2667)
!2721 = !DILocalVariable(name: "n_authors", scope: !2712, file: !169, line: 184, type: !111)
!2722 = !DILocation(line: 180, column: 23, scope: !2712)
!2723 = !DILocation(line: 181, column: 29, scope: !2712)
!2724 = !DILocation(line: 181, column: 55, scope: !2712)
!2725 = !DILocation(line: 182, column: 29, scope: !2712)
!2726 = !DILocation(line: 182, column: 59, scope: !2712)
!2727 = !DILocation(line: 184, column: 10, scope: !2712)
!2728 = !DILocation(line: 186, column: 8, scope: !2729)
!2729 = distinct !DILexicalBlock(scope: !2712, file: !169, line: 186, column: 3)
!2730 = !DILocation(line: 0, scope: !2731)
!2731 = distinct !DILexicalBlock(scope: !2729, file: !169, line: 186, column: 3)
!2732 = !DILocation(line: 186, column: 23, scope: !2731)
!2733 = !DILocation(line: 186, column: 3, scope: !2729)
!2734 = !DILocation(line: 186, column: 52, scope: !2731)
!2735 = distinct !{!2735, !2733, !2736}
!2736 = !DILocation(line: 187, column: 5, scope: !2729)
!2737 = !DILocation(line: 188, column: 3, scope: !2712)
!2738 = !DILocation(line: 189, column: 1, scope: !2712)
!2739 = distinct !DISubprogram(name: "version_etc_va", scope: !169, file: !169, line: 196, type: !2740, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !165, retainedNodes: !2749)
!2740 = !DISubroutineType(types: !2741)
!2741 = !{null, !2614, !6, !6, !6, !2742}
!2742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2743, size: 64)
!2743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !166, line: 189, size: 192, elements: !2744)
!2744 = !{!2745, !2746, !2747, !2748}
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2743, file: !166, line: 189, baseType: !76, size: 32)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2743, file: !166, line: 189, baseType: !76, size: 32, offset: 32)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2743, file: !166, line: 189, baseType: !9, size: 64, offset: 64)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2743, file: !166, line: 189, baseType: !9, size: 64, offset: 128)
!2749 = !{!2750, !2751, !2752, !2753, !2754, !2755, !2756}
!2750 = !DILocalVariable(name: "stream", arg: 1, scope: !2739, file: !169, line: 196, type: !2614)
!2751 = !DILocalVariable(name: "command_name", arg: 2, scope: !2739, file: !169, line: 197, type: !6)
!2752 = !DILocalVariable(name: "package", arg: 3, scope: !2739, file: !169, line: 197, type: !6)
!2753 = !DILocalVariable(name: "version", arg: 4, scope: !2739, file: !169, line: 198, type: !6)
!2754 = !DILocalVariable(name: "authors", arg: 5, scope: !2739, file: !169, line: 198, type: !2742)
!2755 = !DILocalVariable(name: "n_authors", scope: !2739, file: !169, line: 200, type: !111)
!2756 = !DILocalVariable(name: "authtab", scope: !2739, file: !169, line: 201, type: !2757)
!2757 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 640, elements: !120)
!2758 = !DILocation(line: 196, column: 23, scope: !2739)
!2759 = !DILocation(line: 197, column: 29, scope: !2739)
!2760 = !DILocation(line: 197, column: 55, scope: !2739)
!2761 = !DILocation(line: 198, column: 29, scope: !2739)
!2762 = !DILocation(line: 198, column: 46, scope: !2739)
!2763 = !DILocation(line: 201, column: 3, scope: !2739)
!2764 = !DILocation(line: 201, column: 15, scope: !2739)
!2765 = !DILocation(line: 200, column: 10, scope: !2739)
!2766 = !DILocation(line: 205, column: 35, scope: !2767)
!2767 = distinct !DILexicalBlock(scope: !2768, file: !169, line: 203, column: 3)
!2768 = distinct !DILexicalBlock(scope: !2739, file: !169, line: 203, column: 3)
!2769 = !DILocation(line: 205, column: 14, scope: !2767)
!2770 = !DILocation(line: 205, column: 33, scope: !2767)
!2771 = !DILocation(line: 205, column: 67, scope: !2767)
!2772 = !DILocation(line: 203, column: 3, scope: !2768)
!2773 = !DILocation(line: 0, scope: !2767)
!2774 = !DILocation(line: 208, column: 3, scope: !2739)
!2775 = !DILocation(line: 210, column: 1, scope: !2739)
!2776 = distinct !DISubprogram(name: "version_etc", scope: !169, file: !169, line: 227, type: !2777, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !165, retainedNodes: !2779)
!2777 = !DISubroutineType(types: !2778)
!2778 = !{null, !2614, !6, !6, !6, null}
!2779 = !{!2780, !2781, !2782, !2783, !2784}
!2780 = !DILocalVariable(name: "stream", arg: 1, scope: !2776, file: !169, line: 227, type: !2614)
!2781 = !DILocalVariable(name: "command_name", arg: 2, scope: !2776, file: !169, line: 228, type: !6)
!2782 = !DILocalVariable(name: "package", arg: 3, scope: !2776, file: !169, line: 228, type: !6)
!2783 = !DILocalVariable(name: "version", arg: 4, scope: !2776, file: !169, line: 229, type: !6)
!2784 = !DILocalVariable(name: "authors", scope: !2776, file: !169, line: 231, type: !2785)
!2785 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !793, line: 52, baseType: !2786)
!2786 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !795, line: 48, baseType: !2787)
!2787 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !166, line: 231, baseType: !2788)
!2788 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2743, size: 192, elements: !22)
!2789 = !DILocation(line: 227, column: 20, scope: !2776)
!2790 = !DILocation(line: 228, column: 26, scope: !2776)
!2791 = !DILocation(line: 228, column: 52, scope: !2776)
!2792 = !DILocation(line: 229, column: 26, scope: !2776)
!2793 = !DILocation(line: 231, column: 3, scope: !2776)
!2794 = !DILocation(line: 231, column: 11, scope: !2776)
!2795 = !DILocation(line: 233, column: 3, scope: !2776)
!2796 = !DILocation(line: 234, column: 3, scope: !2776)
!2797 = !DILocation(line: 235, column: 3, scope: !2776)
!2798 = !DILocation(line: 236, column: 1, scope: !2776)
!2799 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !169, file: !169, line: 239, type: !739, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !165, retainedNodes: !4)
!2800 = !DILocation(line: 245, column: 3, scope: !2799)
!2801 = !DILocation(line: 251, column: 3, scope: !2799)
!2802 = !DILocation(line: 256, column: 3, scope: !2799)
!2803 = !DILocation(line: 258, column: 1, scope: !2799)
!2804 = distinct !DISubprogram(name: "xnmalloc", scope: !177, file: !177, line: 99, type: !2805, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !2807)
!2805 = !DISubroutineType(types: !2806)
!2806 = !{!9, !111, !111}
!2807 = !{!2808, !2809}
!2808 = !DILocalVariable(name: "n", arg: 1, scope: !2804, file: !177, line: 99, type: !111)
!2809 = !DILocalVariable(name: "s", arg: 2, scope: !2804, file: !177, line: 99, type: !111)
!2810 = !DILocation(line: 99, column: 18, scope: !2804)
!2811 = !DILocation(line: 99, column: 28, scope: !2804)
!2812 = !DILocation(line: 101, column: 7, scope: !2813)
!2813 = distinct !DILexicalBlock(scope: !2804, file: !177, line: 101, column: 7)
!2814 = !DILocation(line: 101, column: 7, scope: !2804)
!2815 = !DILocation(line: 102, column: 5, scope: !2813)
!2816 = !DILocation(line: 103, column: 21, scope: !2804)
!2817 = !DILocalVariable(name: "n", arg: 1, scope: !2818, file: !2819, line: 39, type: !111)
!2818 = distinct !DISubprogram(name: "xmalloc", scope: !2819, file: !2819, line: 39, type: !2820, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !2822)
!2819 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2820 = !DISubroutineType(types: !2821)
!2821 = !{!9, !111}
!2822 = !{!2817, !2823}
!2823 = !DILocalVariable(name: "p", scope: !2818, file: !2819, line: 41, type: !9)
!2824 = !DILocation(line: 39, column: 17, scope: !2818, inlinedAt: !2825)
!2825 = distinct !DILocation(line: 103, column: 10, scope: !2804)
!2826 = !DILocation(line: 41, column: 13, scope: !2818, inlinedAt: !2825)
!2827 = !DILocation(line: 41, column: 9, scope: !2818, inlinedAt: !2825)
!2828 = !DILocation(line: 42, column: 8, scope: !2829, inlinedAt: !2825)
!2829 = distinct !DILexicalBlock(scope: !2818, file: !2819, line: 42, column: 7)
!2830 = !DILocation(line: 42, column: 15, scope: !2829, inlinedAt: !2825)
!2831 = !DILocation(line: 42, column: 10, scope: !2829, inlinedAt: !2825)
!2832 = !DILocation(line: 43, column: 5, scope: !2829, inlinedAt: !2825)
!2833 = !DILocation(line: 103, column: 3, scope: !2804)
!2834 = !DILocation(line: 39, column: 17, scope: !2818)
!2835 = !DILocation(line: 41, column: 13, scope: !2818)
!2836 = !DILocation(line: 41, column: 9, scope: !2818)
!2837 = !DILocation(line: 42, column: 8, scope: !2829)
!2838 = !DILocation(line: 42, column: 15, scope: !2829)
!2839 = !DILocation(line: 42, column: 10, scope: !2829)
!2840 = !DILocation(line: 43, column: 5, scope: !2829)
!2841 = !DILocation(line: 44, column: 3, scope: !2818)
!2842 = distinct !DISubprogram(name: "xnrealloc", scope: !177, file: !177, line: 112, type: !2843, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !2845)
!2843 = !DISubroutineType(types: !2844)
!2844 = !{!9, !9, !111, !111}
!2845 = !{!2846, !2847, !2848}
!2846 = !DILocalVariable(name: "p", arg: 1, scope: !2842, file: !177, line: 112, type: !9)
!2847 = !DILocalVariable(name: "n", arg: 2, scope: !2842, file: !177, line: 112, type: !111)
!2848 = !DILocalVariable(name: "s", arg: 3, scope: !2842, file: !177, line: 112, type: !111)
!2849 = !DILocation(line: 112, column: 18, scope: !2842)
!2850 = !DILocation(line: 112, column: 28, scope: !2842)
!2851 = !DILocation(line: 112, column: 38, scope: !2842)
!2852 = !DILocation(line: 114, column: 7, scope: !2853)
!2853 = distinct !DILexicalBlock(scope: !2842, file: !177, line: 114, column: 7)
!2854 = !DILocation(line: 114, column: 7, scope: !2842)
!2855 = !DILocation(line: 115, column: 5, scope: !2853)
!2856 = !DILocation(line: 116, column: 25, scope: !2842)
!2857 = !DILocalVariable(name: "p", arg: 1, scope: !2858, file: !2819, line: 51, type: !9)
!2858 = distinct !DISubprogram(name: "xrealloc", scope: !2819, file: !2819, line: 51, type: !2859, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !2861)
!2859 = !DISubroutineType(types: !2860)
!2860 = !{!9, !9, !111}
!2861 = !{!2857, !2862}
!2862 = !DILocalVariable(name: "n", arg: 2, scope: !2858, file: !2819, line: 51, type: !111)
!2863 = !DILocation(line: 51, column: 17, scope: !2858, inlinedAt: !2864)
!2864 = distinct !DILocation(line: 116, column: 10, scope: !2842)
!2865 = !DILocation(line: 51, column: 27, scope: !2858, inlinedAt: !2864)
!2866 = !DILocation(line: 53, column: 8, scope: !2867, inlinedAt: !2864)
!2867 = distinct !DILexicalBlock(scope: !2858, file: !2819, line: 53, column: 7)
!2868 = !DILocation(line: 53, column: 13, scope: !2867, inlinedAt: !2864)
!2869 = !DILocation(line: 53, column: 10, scope: !2867, inlinedAt: !2864)
!2870 = !DILocation(line: 57, column: 7, scope: !2871, inlinedAt: !2864)
!2871 = distinct !DILexicalBlock(scope: !2867, file: !2819, line: 54, column: 5)
!2872 = !DILocation(line: 58, column: 7, scope: !2871, inlinedAt: !2864)
!2873 = !DILocation(line: 61, column: 7, scope: !2858, inlinedAt: !2864)
!2874 = !DILocation(line: 62, column: 8, scope: !2875, inlinedAt: !2864)
!2875 = distinct !DILexicalBlock(scope: !2858, file: !2819, line: 62, column: 7)
!2876 = !DILocation(line: 62, column: 13, scope: !2875, inlinedAt: !2864)
!2877 = !DILocation(line: 62, column: 10, scope: !2875, inlinedAt: !2864)
!2878 = !DILocation(line: 63, column: 5, scope: !2875, inlinedAt: !2864)
!2879 = !DILocation(line: 0, scope: !2858, inlinedAt: !2864)
!2880 = !DILocation(line: 116, column: 3, scope: !2842)
!2881 = !DILocation(line: 51, column: 17, scope: !2858)
!2882 = !DILocation(line: 51, column: 27, scope: !2858)
!2883 = !DILocation(line: 53, column: 8, scope: !2867)
!2884 = !DILocation(line: 53, column: 13, scope: !2867)
!2885 = !DILocation(line: 53, column: 10, scope: !2867)
!2886 = !DILocation(line: 57, column: 7, scope: !2871)
!2887 = !DILocation(line: 58, column: 7, scope: !2871)
!2888 = !DILocation(line: 61, column: 7, scope: !2858)
!2889 = !DILocation(line: 62, column: 8, scope: !2875)
!2890 = !DILocation(line: 62, column: 13, scope: !2875)
!2891 = !DILocation(line: 62, column: 10, scope: !2875)
!2892 = !DILocation(line: 63, column: 5, scope: !2875)
!2893 = !DILocation(line: 0, scope: !2858)
!2894 = !DILocation(line: 65, column: 1, scope: !2858)
!2895 = !DILocation(line: 174, column: 19, scope: !178)
!2896 = !DILocation(line: 174, column: 30, scope: !178)
!2897 = !DILocation(line: 174, column: 41, scope: !178)
!2898 = !DILocation(line: 176, column: 14, scope: !178)
!2899 = !DILocation(line: 176, column: 10, scope: !178)
!2900 = !DILocation(line: 178, column: 9, scope: !2901)
!2901 = distinct !DILexicalBlock(scope: !178, file: !177, line: 178, column: 7)
!2902 = !DILocation(line: 178, column: 7, scope: !178)
!2903 = !DILocation(line: 180, column: 13, scope: !2904)
!2904 = distinct !DILexicalBlock(scope: !2905, file: !177, line: 180, column: 11)
!2905 = distinct !DILexicalBlock(scope: !2901, file: !177, line: 179, column: 5)
!2906 = !DILocation(line: 180, column: 11, scope: !2905)
!2907 = !DILocation(line: 188, column: 30, scope: !2908)
!2908 = distinct !DILexicalBlock(scope: !2904, file: !177, line: 181, column: 9)
!2909 = !DILocation(line: 189, column: 16, scope: !2908)
!2910 = !DILocation(line: 189, column: 13, scope: !2908)
!2911 = !DILocation(line: 190, column: 9, scope: !2908)
!2912 = !DILocation(line: 0, scope: !2908)
!2913 = !DILocation(line: 191, column: 11, scope: !2914)
!2914 = distinct !DILexicalBlock(scope: !2905, file: !177, line: 191, column: 11)
!2915 = !DILocation(line: 191, column: 11, scope: !2905)
!2916 = !DILocation(line: 206, column: 7, scope: !178)
!2917 = !DILocation(line: 207, column: 25, scope: !178)
!2918 = !DILocation(line: 51, column: 17, scope: !2858, inlinedAt: !2919)
!2919 = distinct !DILocation(line: 207, column: 10, scope: !178)
!2920 = !DILocation(line: 51, column: 27, scope: !2858, inlinedAt: !2919)
!2921 = !DILocation(line: 53, column: 10, scope: !2867, inlinedAt: !2919)
!2922 = !DILocation(line: 192, column: 9, scope: !2914)
!2923 = !DILocation(line: 200, column: 69, scope: !2924)
!2924 = distinct !DILexicalBlock(scope: !2925, file: !177, line: 200, column: 11)
!2925 = distinct !DILexicalBlock(scope: !2901, file: !177, line: 195, column: 5)
!2926 = !DILocation(line: 201, column: 11, scope: !2924)
!2927 = !DILocation(line: 200, column: 11, scope: !2925)
!2928 = !DILocation(line: 202, column: 9, scope: !2924)
!2929 = !DILocation(line: 203, column: 14, scope: !2925)
!2930 = !DILocation(line: 203, column: 18, scope: !2925)
!2931 = !DILocation(line: 203, column: 9, scope: !2925)
!2932 = !DILocation(line: 53, column: 8, scope: !2867, inlinedAt: !2919)
!2933 = !DILocation(line: 57, column: 7, scope: !2871, inlinedAt: !2919)
!2934 = !DILocation(line: 58, column: 7, scope: !2871, inlinedAt: !2919)
!2935 = !DILocation(line: 61, column: 7, scope: !2858, inlinedAt: !2919)
!2936 = !DILocation(line: 62, column: 8, scope: !2875, inlinedAt: !2919)
!2937 = !DILocation(line: 62, column: 13, scope: !2875, inlinedAt: !2919)
!2938 = !DILocation(line: 62, column: 10, scope: !2875, inlinedAt: !2919)
!2939 = !DILocation(line: 63, column: 5, scope: !2875, inlinedAt: !2919)
!2940 = !DILocation(line: 0, scope: !2858, inlinedAt: !2919)
!2941 = !DILocation(line: 207, column: 3, scope: !178)
!2942 = distinct !DISubprogram(name: "xcharalloc", scope: !177, file: !177, line: 216, type: !1895, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !2943)
!2943 = !{!2944}
!2944 = !DILocalVariable(name: "n", arg: 1, scope: !2942, file: !177, line: 216, type: !111)
!2945 = !DILocation(line: 216, column: 20, scope: !2942)
!2946 = !DILocation(line: 39, column: 17, scope: !2818, inlinedAt: !2947)
!2947 = distinct !DILocation(line: 218, column: 10, scope: !2942)
!2948 = !DILocation(line: 41, column: 13, scope: !2818, inlinedAt: !2947)
!2949 = !DILocation(line: 41, column: 9, scope: !2818, inlinedAt: !2947)
!2950 = !DILocation(line: 42, column: 8, scope: !2829, inlinedAt: !2947)
!2951 = !DILocation(line: 42, column: 15, scope: !2829, inlinedAt: !2947)
!2952 = !DILocation(line: 42, column: 10, scope: !2829, inlinedAt: !2947)
!2953 = !DILocation(line: 43, column: 5, scope: !2829, inlinedAt: !2947)
!2954 = !DILocation(line: 218, column: 3, scope: !2942)
!2955 = distinct !DISubprogram(name: "x2realloc", scope: !2819, file: !2819, line: 74, type: !2956, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !2958)
!2956 = !DISubroutineType(types: !2957)
!2957 = !{!9, !9, !181}
!2958 = !{!2959, !2960}
!2959 = !DILocalVariable(name: "p", arg: 1, scope: !2955, file: !2819, line: 74, type: !9)
!2960 = !DILocalVariable(name: "pn", arg: 2, scope: !2955, file: !2819, line: 74, type: !181)
!2961 = !DILocation(line: 74, column: 18, scope: !2955)
!2962 = !DILocation(line: 74, column: 29, scope: !2955)
!2963 = !DILocation(line: 174, column: 19, scope: !178, inlinedAt: !2964)
!2964 = distinct !DILocation(line: 76, column: 10, scope: !2955)
!2965 = !DILocation(line: 174, column: 30, scope: !178, inlinedAt: !2964)
!2966 = !DILocation(line: 174, column: 41, scope: !178, inlinedAt: !2964)
!2967 = !DILocation(line: 176, column: 14, scope: !178, inlinedAt: !2964)
!2968 = !DILocation(line: 176, column: 10, scope: !178, inlinedAt: !2964)
!2969 = !DILocation(line: 178, column: 9, scope: !2901, inlinedAt: !2964)
!2970 = !DILocation(line: 178, column: 7, scope: !178, inlinedAt: !2964)
!2971 = !DILocation(line: 180, column: 13, scope: !2904, inlinedAt: !2964)
!2972 = !DILocation(line: 180, column: 11, scope: !2905, inlinedAt: !2964)
!2973 = !DILocation(line: 191, column: 11, scope: !2914, inlinedAt: !2964)
!2974 = !DILocation(line: 191, column: 11, scope: !2905, inlinedAt: !2964)
!2975 = !DILocation(line: 206, column: 7, scope: !178, inlinedAt: !2964)
!2976 = !DILocation(line: 51, column: 17, scope: !2858, inlinedAt: !2977)
!2977 = distinct !DILocation(line: 207, column: 10, scope: !178, inlinedAt: !2964)
!2978 = !DILocation(line: 51, column: 27, scope: !2858, inlinedAt: !2977)
!2979 = !DILocation(line: 53, column: 10, scope: !2867, inlinedAt: !2977)
!2980 = !DILocation(line: 192, column: 9, scope: !2914, inlinedAt: !2964)
!2981 = !DILocation(line: 201, column: 11, scope: !2924, inlinedAt: !2964)
!2982 = !DILocation(line: 200, column: 11, scope: !2925, inlinedAt: !2964)
!2983 = !DILocation(line: 202, column: 9, scope: !2924, inlinedAt: !2964)
!2984 = !DILocation(line: 203, column: 14, scope: !2925, inlinedAt: !2964)
!2985 = !DILocation(line: 203, column: 18, scope: !2925, inlinedAt: !2964)
!2986 = !DILocation(line: 203, column: 9, scope: !2925, inlinedAt: !2964)
!2987 = !DILocation(line: 53, column: 8, scope: !2867, inlinedAt: !2977)
!2988 = !DILocation(line: 57, column: 7, scope: !2871, inlinedAt: !2977)
!2989 = !DILocation(line: 58, column: 7, scope: !2871, inlinedAt: !2977)
!2990 = !DILocation(line: 61, column: 7, scope: !2858, inlinedAt: !2977)
!2991 = !DILocation(line: 62, column: 8, scope: !2875, inlinedAt: !2977)
!2992 = !DILocation(line: 62, column: 13, scope: !2875, inlinedAt: !2977)
!2993 = !DILocation(line: 62, column: 10, scope: !2875, inlinedAt: !2977)
!2994 = !DILocation(line: 63, column: 5, scope: !2875, inlinedAt: !2977)
!2995 = !DILocation(line: 0, scope: !2858, inlinedAt: !2977)
!2996 = !DILocation(line: 76, column: 3, scope: !2955)
!2997 = distinct !DISubprogram(name: "xzalloc", scope: !2819, file: !2819, line: 84, type: !2820, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !2998)
!2998 = !{!2999}
!2999 = !DILocalVariable(name: "s", arg: 1, scope: !2997, file: !2819, line: 84, type: !111)
!3000 = !DILocation(line: 84, column: 17, scope: !2997)
!3001 = !DILocation(line: 39, column: 17, scope: !2818, inlinedAt: !3002)
!3002 = distinct !DILocation(line: 86, column: 18, scope: !2997)
!3003 = !DILocation(line: 41, column: 13, scope: !2818, inlinedAt: !3002)
!3004 = !DILocation(line: 41, column: 9, scope: !2818, inlinedAt: !3002)
!3005 = !DILocation(line: 42, column: 8, scope: !2829, inlinedAt: !3002)
!3006 = !DILocation(line: 42, column: 15, scope: !2829, inlinedAt: !3002)
!3007 = !DILocation(line: 42, column: 10, scope: !2829, inlinedAt: !3002)
!3008 = !DILocation(line: 43, column: 5, scope: !2829, inlinedAt: !3002)
!3009 = !DILocation(line: 86, column: 10, scope: !2997)
!3010 = !DILocation(line: 86, column: 3, scope: !2997)
!3011 = distinct !DISubprogram(name: "xcalloc", scope: !2819, file: !2819, line: 93, type: !2805, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !3012)
!3012 = !{!3013, !3014, !3015}
!3013 = !DILocalVariable(name: "n", arg: 1, scope: !3011, file: !2819, line: 93, type: !111)
!3014 = !DILocalVariable(name: "s", arg: 2, scope: !3011, file: !2819, line: 93, type: !111)
!3015 = !DILocalVariable(name: "p", scope: !3011, file: !2819, line: 95, type: !9)
!3016 = !DILocation(line: 93, column: 17, scope: !3011)
!3017 = !DILocation(line: 93, column: 27, scope: !3011)
!3018 = !DILocation(line: 100, column: 7, scope: !3019)
!3019 = distinct !DILexicalBlock(scope: !3011, file: !2819, line: 100, column: 7)
!3020 = !DILocation(line: 101, column: 7, scope: !3019)
!3021 = !DILocation(line: 101, column: 18, scope: !3019)
!3022 = !DILocation(line: 95, column: 9, scope: !3011)
!3023 = !DILocation(line: 101, column: 16, scope: !3019)
!3024 = !DILocation(line: 100, column: 7, scope: !3011)
!3025 = !DILocation(line: 102, column: 5, scope: !3019)
!3026 = !DILocation(line: 103, column: 3, scope: !3011)
!3027 = distinct !DISubprogram(name: "xmemdup", scope: !2819, file: !2819, line: 111, type: !3028, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !3032)
!3028 = !DISubroutineType(types: !3029)
!3029 = !{!9, !3030, !111}
!3030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3031, size: 64)
!3031 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3032 = !{!3033, !3034}
!3033 = !DILocalVariable(name: "p", arg: 1, scope: !3027, file: !2819, line: 111, type: !3030)
!3034 = !DILocalVariable(name: "s", arg: 2, scope: !3027, file: !2819, line: 111, type: !111)
!3035 = !DILocation(line: 111, column: 22, scope: !3027)
!3036 = !DILocation(line: 111, column: 32, scope: !3027)
!3037 = !DILocation(line: 39, column: 17, scope: !2818, inlinedAt: !3038)
!3038 = distinct !DILocation(line: 113, column: 18, scope: !3027)
!3039 = !DILocation(line: 41, column: 13, scope: !2818, inlinedAt: !3038)
!3040 = !DILocation(line: 41, column: 9, scope: !2818, inlinedAt: !3038)
!3041 = !DILocation(line: 42, column: 8, scope: !2829, inlinedAt: !3038)
!3042 = !DILocation(line: 42, column: 15, scope: !2829, inlinedAt: !3038)
!3043 = !DILocation(line: 42, column: 10, scope: !2829, inlinedAt: !3038)
!3044 = !DILocation(line: 43, column: 5, scope: !2829, inlinedAt: !3038)
!3045 = !DILocation(line: 113, column: 10, scope: !3027)
!3046 = !DILocation(line: 113, column: 3, scope: !3027)
!3047 = distinct !DISubprogram(name: "xstrdup", scope: !2819, file: !2819, line: 119, type: !2101, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !3048)
!3048 = !{!3049}
!3049 = !DILocalVariable(name: "string", arg: 1, scope: !3047, file: !2819, line: 119, type: !6)
!3050 = !DILocation(line: 119, column: 22, scope: !3047)
!3051 = !DILocation(line: 121, column: 27, scope: !3047)
!3052 = !DILocation(line: 121, column: 43, scope: !3047)
!3053 = !DILocation(line: 111, column: 22, scope: !3027, inlinedAt: !3054)
!3054 = distinct !DILocation(line: 121, column: 10, scope: !3047)
!3055 = !DILocation(line: 111, column: 32, scope: !3027, inlinedAt: !3054)
!3056 = !DILocation(line: 39, column: 17, scope: !2818, inlinedAt: !3057)
!3057 = distinct !DILocation(line: 113, column: 18, scope: !3027, inlinedAt: !3054)
!3058 = !DILocation(line: 41, column: 13, scope: !2818, inlinedAt: !3057)
!3059 = !DILocation(line: 41, column: 9, scope: !2818, inlinedAt: !3057)
!3060 = !DILocation(line: 42, column: 8, scope: !2829, inlinedAt: !3057)
!3061 = !DILocation(line: 42, column: 15, scope: !2829, inlinedAt: !3057)
!3062 = !DILocation(line: 42, column: 10, scope: !2829, inlinedAt: !3057)
!3063 = !DILocation(line: 43, column: 5, scope: !2829, inlinedAt: !3057)
!3064 = !DILocation(line: 113, column: 10, scope: !3027, inlinedAt: !3054)
!3065 = !DILocation(line: 121, column: 3, scope: !3047)
!3066 = distinct !DISubprogram(name: "xalloc_die", scope: !3067, file: !3067, line: 32, type: !739, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !190, retainedNodes: !4)
!3067 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3068 = !DILocation(line: 34, column: 10, scope: !3066)
!3069 = !DILocation(line: 34, column: 33, scope: !3066)
!3070 = !DILocation(line: 34, column: 3, scope: !3066)
!3071 = !DILocation(line: 40, column: 3, scope: !3066)
!3072 = distinct !DISubprogram(name: "rpl_calloc", scope: !3073, file: !3073, line: 42, type: !2805, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !192, retainedNodes: !3074)
!3073 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3074 = !{!3075, !3076, !3077, !3078}
!3075 = !DILocalVariable(name: "n", arg: 1, scope: !3072, file: !3073, line: 42, type: !111)
!3076 = !DILocalVariable(name: "s", arg: 2, scope: !3072, file: !3073, line: 42, type: !111)
!3077 = !DILocalVariable(name: "result", scope: !3072, file: !3073, line: 44, type: !9)
!3078 = !DILocalVariable(name: "bytes", scope: !3079, file: !3073, line: 56, type: !111)
!3079 = distinct !DILexicalBlock(scope: !3080, file: !3073, line: 53, column: 5)
!3080 = distinct !DILexicalBlock(scope: !3072, file: !3073, line: 47, column: 7)
!3081 = !DILocation(line: 42, column: 20, scope: !3072)
!3082 = !DILocation(line: 42, column: 30, scope: !3072)
!3083 = !DILocation(line: 47, column: 9, scope: !3080)
!3084 = !DILocation(line: 47, column: 19, scope: !3080)
!3085 = !DILocation(line: 47, column: 14, scope: !3080)
!3086 = !DILocation(line: 56, column: 24, scope: !3079)
!3087 = !DILocation(line: 56, column: 14, scope: !3079)
!3088 = !DILocation(line: 57, column: 17, scope: !3089)
!3089 = distinct !DILexicalBlock(scope: !3079, file: !3073, line: 57, column: 11)
!3090 = !DILocation(line: 57, column: 21, scope: !3089)
!3091 = !DILocation(line: 57, column: 11, scope: !3079)
!3092 = !DILocation(line: 59, column: 11, scope: !3093)
!3093 = distinct !DILexicalBlock(scope: !3089, file: !3073, line: 58, column: 9)
!3094 = !DILocation(line: 59, column: 17, scope: !3093)
!3095 = !DILocation(line: 65, column: 12, scope: !3072)
!3096 = !DILocation(line: 44, column: 9, scope: !3072)
!3097 = !DILocation(line: 72, column: 3, scope: !3072)
!3098 = !DILocation(line: 0, scope: !3093)
!3099 = !DILocation(line: 73, column: 1, scope: !3072)
!3100 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !3101, file: !3101, line: 385, type: !3102, isLocal: false, isDefinition: true, scopeLine: 386, flags: DIFlagPrototyped, isOptimized: true, unit: !194, retainedNodes: !3116)
!3101 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3102 = !DISubroutineType(types: !3103)
!3103 = !{!111, !3104, !6, !111, !3105}
!3104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!3105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3106, size: 64)
!3106 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1057, line: 6, baseType: !3107)
!3107 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1059, line: 21, baseType: !3108)
!3108 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1059, line: 13, size: 64, elements: !3109)
!3109 = !{!3110, !3111}
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3108, file: !1059, line: 15, baseType: !18, size: 32)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3108, file: !1059, line: 20, baseType: !3112, size: 32, offset: 32)
!3112 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3108, file: !1059, line: 16, size: 32, elements: !3113)
!3113 = !{!3114, !3115}
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3112, file: !1059, line: 18, baseType: !76, size: 32)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3112, file: !1059, line: 19, baseType: !1068, size: 32)
!3116 = !{!3117, !3118, !3119, !3120, !3121, !3122, !3123}
!3117 = !DILocalVariable(name: "pwc", arg: 1, scope: !3100, file: !3101, line: 385, type: !3104)
!3118 = !DILocalVariable(name: "s", arg: 2, scope: !3100, file: !3101, line: 385, type: !6)
!3119 = !DILocalVariable(name: "n", arg: 3, scope: !3100, file: !3101, line: 385, type: !111)
!3120 = !DILocalVariable(name: "ps", arg: 4, scope: !3100, file: !3101, line: 385, type: !3105)
!3121 = !DILocalVariable(name: "ret", scope: !3100, file: !3101, line: 387, type: !111)
!3122 = !DILocalVariable(name: "wc", scope: !3100, file: !3101, line: 388, type: !1073)
!3123 = !DILocalVariable(name: "uc", scope: !3124, file: !3101, line: 449, type: !917)
!3124 = distinct !DILexicalBlock(scope: !3125, file: !3101, line: 448, column: 5)
!3125 = distinct !DILexicalBlock(scope: !3100, file: !3101, line: 447, column: 7)
!3126 = !DILocation(line: 385, column: 23, scope: !3100)
!3127 = !DILocation(line: 385, column: 40, scope: !3100)
!3128 = !DILocation(line: 385, column: 50, scope: !3100)
!3129 = !DILocation(line: 385, column: 64, scope: !3100)
!3130 = !DILocation(line: 388, column: 3, scope: !3100)
!3131 = !DILocation(line: 404, column: 9, scope: !3132)
!3132 = distinct !DILexicalBlock(scope: !3100, file: !3101, line: 404, column: 7)
!3133 = !DILocation(line: 404, column: 7, scope: !3100)
!3134 = !DILocation(line: 439, column: 9, scope: !3100)
!3135 = !DILocation(line: 387, column: 10, scope: !3100)
!3136 = !DILocation(line: 447, column: 19, scope: !3125)
!3137 = !DILocation(line: 447, column: 31, scope: !3125)
!3138 = !DILocation(line: 447, column: 26, scope: !3125)
!3139 = !DILocation(line: 447, column: 41, scope: !3125)
!3140 = !DILocation(line: 447, column: 7, scope: !3100)
!3141 = !DILocation(line: 449, column: 26, scope: !3124)
!3142 = !DILocation(line: 449, column: 21, scope: !3124)
!3143 = !DILocation(line: 450, column: 14, scope: !3124)
!3144 = !DILocation(line: 450, column: 12, scope: !3124)
!3145 = !DILocation(line: 0, scope: !3124)
!3146 = !DILocation(line: 456, column: 1, scope: !3100)
!3147 = distinct !DISubprogram(name: "close_stream", scope: !3148, file: !3148, line: 56, type: !3149, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !197, retainedNodes: !3185)
!3148 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3149 = !DISubroutineType(types: !3150)
!3150 = !{!18, !3151}
!3151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3152, size: 64)
!3152 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2616, line: 7, baseType: !3153)
!3153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2618, line: 49, size: 1728, elements: !3154)
!3154 = !{!3155, !3156, !3157, !3158, !3159, !3160, !3161, !3162, !3163, !3164, !3165, !3166, !3167, !3168, !3170, !3171, !3172, !3173, !3174, !3175, !3176, !3177, !3178, !3179, !3180, !3181, !3182, !3183, !3184}
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3153, file: !2618, line: 51, baseType: !18, size: 32)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3153, file: !2618, line: 54, baseType: !66, size: 64, offset: 64)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3153, file: !2618, line: 55, baseType: !66, size: 64, offset: 128)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3153, file: !2618, line: 56, baseType: !66, size: 64, offset: 192)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3153, file: !2618, line: 57, baseType: !66, size: 64, offset: 256)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3153, file: !2618, line: 58, baseType: !66, size: 64, offset: 320)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3153, file: !2618, line: 59, baseType: !66, size: 64, offset: 384)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3153, file: !2618, line: 60, baseType: !66, size: 64, offset: 448)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3153, file: !2618, line: 61, baseType: !66, size: 64, offset: 512)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3153, file: !2618, line: 64, baseType: !66, size: 64, offset: 576)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3153, file: !2618, line: 65, baseType: !66, size: 64, offset: 640)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3153, file: !2618, line: 66, baseType: !66, size: 64, offset: 704)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3153, file: !2618, line: 68, baseType: !2633, size: 64, offset: 768)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3153, file: !2618, line: 70, baseType: !3169, size: 64, offset: 832)
!3169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3153, size: 64)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3153, file: !2618, line: 72, baseType: !18, size: 32, offset: 896)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3153, file: !2618, line: 73, baseType: !18, size: 32, offset: 928)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3153, file: !2618, line: 74, baseType: !2640, size: 64, offset: 960)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3153, file: !2618, line: 77, baseType: !110, size: 16, offset: 1024)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3153, file: !2618, line: 78, baseType: !2645, size: 8, offset: 1040)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3153, file: !2618, line: 79, baseType: !2647, size: 8, offset: 1048)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3153, file: !2618, line: 81, baseType: !2649, size: 64, offset: 1088)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3153, file: !2618, line: 89, baseType: !2652, size: 64, offset: 1152)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3153, file: !2618, line: 91, baseType: !2654, size: 64, offset: 1216)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3153, file: !2618, line: 92, baseType: !2657, size: 64, offset: 1280)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3153, file: !2618, line: 93, baseType: !3169, size: 64, offset: 1344)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3153, file: !2618, line: 94, baseType: !9, size: 64, offset: 1408)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3153, file: !2618, line: 95, baseType: !111, size: 64, offset: 1472)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3153, file: !2618, line: 96, baseType: !18, size: 32, offset: 1536)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3153, file: !2618, line: 98, baseType: !2664, size: 160, offset: 1568)
!3185 = !{!3186, !3187, !3189, !3190}
!3186 = !DILocalVariable(name: "stream", arg: 1, scope: !3147, file: !3148, line: 56, type: !3151)
!3187 = !DILocalVariable(name: "some_pending", scope: !3147, file: !3148, line: 58, type: !3188)
!3188 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!3189 = !DILocalVariable(name: "prev_fail", scope: !3147, file: !3148, line: 59, type: !3188)
!3190 = !DILocalVariable(name: "fclose_fail", scope: !3147, file: !3148, line: 60, type: !3188)
!3191 = !DILocation(line: 56, column: 21, scope: !3147)
!3192 = !DILocation(line: 58, column: 30, scope: !3147)
!3193 = !DILocalVariable(name: "__stream", arg: 1, scope: !3194, file: !3195, line: 135, type: !3151)
!3194 = distinct !DISubprogram(name: "ferror_unlocked", scope: !3195, file: !3195, line: 135, type: !3149, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !197, retainedNodes: !3196)
!3195 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3196 = !{!3193}
!3197 = !DILocation(line: 135, column: 1, scope: !3194, inlinedAt: !3198)
!3198 = distinct !DILocation(line: 59, column: 27, scope: !3147)
!3199 = !DILocation(line: 137, column: 10, scope: !3194, inlinedAt: !3198)
!3200 = !{!3201, !704, i64 0}
!3201 = !{!"_IO_FILE", !704, i64 0, !636, i64 8, !636, i64 16, !636, i64 24, !636, i64 32, !636, i64 40, !636, i64 48, !636, i64 56, !636, i64 64, !636, i64 72, !636, i64 80, !636, i64 88, !636, i64 96, !636, i64 104, !704, i64 112, !704, i64 116, !1940, i64 120, !1314, i64 128, !637, i64 130, !637, i64 131, !636, i64 136, !1940, i64 144, !636, i64 152, !636, i64 160, !636, i64 168, !636, i64 176, !1940, i64 184, !704, i64 192, !637, i64 196}
!3202 = !DILocation(line: 59, column: 43, scope: !3147)
!3203 = !DILocation(line: 60, column: 29, scope: !3147)
!3204 = !DILocation(line: 60, column: 45, scope: !3147)
!3205 = !DILocation(line: 70, column: 17, scope: !3206)
!3206 = distinct !DILexicalBlock(scope: !3147, file: !3148, line: 70, column: 7)
!3207 = !DILocation(line: 58, column: 50, scope: !3147)
!3208 = !DILocation(line: 70, column: 33, scope: !3206)
!3209 = !DILocation(line: 70, column: 53, scope: !3206)
!3210 = !DILocation(line: 70, column: 59, scope: !3206)
!3211 = !DILocation(line: 70, column: 7, scope: !3147)
!3212 = !DILocation(line: 72, column: 11, scope: !3213)
!3213 = distinct !DILexicalBlock(scope: !3206, file: !3148, line: 71, column: 5)
!3214 = !DILocation(line: 73, column: 9, scope: !3215)
!3215 = distinct !DILexicalBlock(scope: !3213, file: !3148, line: 72, column: 11)
!3216 = !DILocation(line: 73, column: 15, scope: !3215)
!3217 = !DILocation(line: 0, scope: !3147)
!3218 = !DILocation(line: 78, column: 1, scope: !3147)
!3219 = distinct !DISubprogram(name: "hard_locale", scope: !3220, file: !3220, line: 38, type: !3221, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !199, retainedNodes: !3223)
!3220 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3221 = !DISubroutineType(types: !3222)
!3222 = !{!37, !18}
!3223 = !{!3224, !3225, !3226}
!3224 = !DILocalVariable(name: "category", arg: 1, scope: !3219, file: !3220, line: 38, type: !18)
!3225 = !DILocalVariable(name: "hard", scope: !3219, file: !3220, line: 40, type: !37)
!3226 = !DILocalVariable(name: "p", scope: !3219, file: !3220, line: 41, type: !6)
!3227 = !DILocation(line: 38, column: 18, scope: !3219)
!3228 = !DILocation(line: 40, column: 8, scope: !3219)
!3229 = !DILocation(line: 41, column: 19, scope: !3219)
!3230 = !DILocation(line: 41, column: 15, scope: !3219)
!3231 = !DILocation(line: 43, column: 7, scope: !3232)
!3232 = distinct !DILexicalBlock(scope: !3219, file: !3220, line: 43, column: 7)
!3233 = !DILocation(line: 43, column: 7, scope: !3219)
!3234 = !DILocation(line: 47, column: 15, scope: !3235)
!3235 = distinct !DILexicalBlock(scope: !3236, file: !3220, line: 47, column: 15)
!3236 = distinct !DILexicalBlock(scope: !3237, file: !3220, line: 46, column: 9)
!3237 = distinct !DILexicalBlock(scope: !3238, file: !3220, line: 45, column: 11)
!3238 = distinct !DILexicalBlock(scope: !3232, file: !3220, line: 44, column: 5)
!3239 = !DILocation(line: 47, column: 31, scope: !3235)
!3240 = !DILocation(line: 47, column: 36, scope: !3235)
!3241 = !DILocation(line: 47, column: 39, scope: !3235)
!3242 = !DILocation(line: 47, column: 59, scope: !3235)
!3243 = !DILocation(line: 47, column: 15, scope: !3236)
!3244 = !DILocation(line: 48, column: 13, scope: !3235)
!3245 = !DILocation(line: 71, column: 3, scope: !3219)
!3246 = distinct !DISubprogram(name: "locale_charset", scope: !3247, file: !3247, line: 687, type: !3248, isLocal: false, isDefinition: true, scopeLine: 688, flags: DIFlagPrototyped, isOptimized: true, unit: !201, retainedNodes: !3250)
!3247 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3248 = !DISubroutineType(types: !3249)
!3249 = !{!6}
!3250 = !{!3251}
!3251 = !DILocalVariable(name: "codeset", scope: !3246, file: !3247, line: 689, type: !6)
!3252 = !DILocation(line: 696, column: 13, scope: !3246)
!3253 = !DILocation(line: 689, column: 15, scope: !3246)
!3254 = !DILocation(line: 754, column: 15, scope: !3255)
!3255 = distinct !DILexicalBlock(scope: !3246, file: !3247, line: 754, column: 7)
!3256 = !DILocation(line: 754, column: 7, scope: !3246)
!3257 = !DILocation(line: 907, column: 13, scope: !3258)
!3258 = distinct !DILexicalBlock(scope: !3259, file: !3247, line: 907, column: 13)
!3259 = distinct !DILexicalBlock(scope: !3260, file: !3247, line: 897, column: 7)
!3260 = distinct !DILexicalBlock(scope: !3246, file: !3247, line: 856, column: 3)
!3261 = !DILocation(line: 907, column: 24, scope: !3258)
!3262 = !DILocation(line: 907, column: 13, scope: !3259)
!3263 = !DILocation(line: 995, column: 3, scope: !3246)
!3264 = distinct !DISubprogram(name: "rpl_fclose", scope: !3265, file: !3265, line: 58, type: !3266, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !590, retainedNodes: !3302)
!3265 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3266 = !DISubroutineType(types: !3267)
!3267 = !{!18, !3268}
!3268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3269, size: 64)
!3269 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2616, line: 7, baseType: !3270)
!3270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2618, line: 49, size: 1728, elements: !3271)
!3271 = !{!3272, !3273, !3274, !3275, !3276, !3277, !3278, !3279, !3280, !3281, !3282, !3283, !3284, !3285, !3287, !3288, !3289, !3290, !3291, !3292, !3293, !3294, !3295, !3296, !3297, !3298, !3299, !3300, !3301}
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3270, file: !2618, line: 51, baseType: !18, size: 32)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3270, file: !2618, line: 54, baseType: !66, size: 64, offset: 64)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3270, file: !2618, line: 55, baseType: !66, size: 64, offset: 128)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3270, file: !2618, line: 56, baseType: !66, size: 64, offset: 192)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3270, file: !2618, line: 57, baseType: !66, size: 64, offset: 256)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3270, file: !2618, line: 58, baseType: !66, size: 64, offset: 320)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3270, file: !2618, line: 59, baseType: !66, size: 64, offset: 384)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3270, file: !2618, line: 60, baseType: !66, size: 64, offset: 448)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3270, file: !2618, line: 61, baseType: !66, size: 64, offset: 512)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3270, file: !2618, line: 64, baseType: !66, size: 64, offset: 576)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3270, file: !2618, line: 65, baseType: !66, size: 64, offset: 640)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3270, file: !2618, line: 66, baseType: !66, size: 64, offset: 704)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3270, file: !2618, line: 68, baseType: !2633, size: 64, offset: 768)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3270, file: !2618, line: 70, baseType: !3286, size: 64, offset: 832)
!3286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3270, size: 64)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3270, file: !2618, line: 72, baseType: !18, size: 32, offset: 896)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3270, file: !2618, line: 73, baseType: !18, size: 32, offset: 928)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3270, file: !2618, line: 74, baseType: !2640, size: 64, offset: 960)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3270, file: !2618, line: 77, baseType: !110, size: 16, offset: 1024)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3270, file: !2618, line: 78, baseType: !2645, size: 8, offset: 1040)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3270, file: !2618, line: 79, baseType: !2647, size: 8, offset: 1048)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3270, file: !2618, line: 81, baseType: !2649, size: 64, offset: 1088)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3270, file: !2618, line: 89, baseType: !2652, size: 64, offset: 1152)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3270, file: !2618, line: 91, baseType: !2654, size: 64, offset: 1216)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3270, file: !2618, line: 92, baseType: !2657, size: 64, offset: 1280)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3270, file: !2618, line: 93, baseType: !3286, size: 64, offset: 1344)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3270, file: !2618, line: 94, baseType: !9, size: 64, offset: 1408)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3270, file: !2618, line: 95, baseType: !111, size: 64, offset: 1472)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3270, file: !2618, line: 96, baseType: !18, size: 32, offset: 1536)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3270, file: !2618, line: 98, baseType: !2664, size: 160, offset: 1568)
!3302 = !{!3303, !3304, !3305, !3306}
!3303 = !DILocalVariable(name: "fp", arg: 1, scope: !3264, file: !3265, line: 58, type: !3268)
!3304 = !DILocalVariable(name: "saved_errno", scope: !3264, file: !3265, line: 60, type: !18)
!3305 = !DILocalVariable(name: "fd", scope: !3264, file: !3265, line: 61, type: !18)
!3306 = !DILocalVariable(name: "result", scope: !3264, file: !3265, line: 62, type: !18)
!3307 = !DILocation(line: 58, column: 19, scope: !3264)
!3308 = !DILocation(line: 60, column: 7, scope: !3264)
!3309 = !DILocation(line: 62, column: 7, scope: !3264)
!3310 = !DILocation(line: 65, column: 8, scope: !3264)
!3311 = !DILocation(line: 61, column: 7, scope: !3264)
!3312 = !DILocation(line: 66, column: 10, scope: !3313)
!3313 = distinct !DILexicalBlock(scope: !3264, file: !3265, line: 66, column: 7)
!3314 = !DILocation(line: 66, column: 7, scope: !3264)
!3315 = !DILocation(line: 67, column: 12, scope: !3313)
!3316 = !DILocation(line: 67, column: 5, scope: !3313)
!3317 = !DILocation(line: 72, column: 9, scope: !3318)
!3318 = distinct !DILexicalBlock(scope: !3264, file: !3265, line: 72, column: 7)
!3319 = !DILocation(line: 72, column: 23, scope: !3318)
!3320 = !DILocation(line: 72, column: 33, scope: !3318)
!3321 = !DILocation(line: 72, column: 26, scope: !3318)
!3322 = !DILocation(line: 72, column: 59, scope: !3318)
!3323 = !DILocation(line: 73, column: 7, scope: !3318)
!3324 = !DILocation(line: 73, column: 10, scope: !3318)
!3325 = !DILocation(line: 72, column: 7, scope: !3264)
!3326 = !DILocation(line: 100, column: 12, scope: !3264)
!3327 = !DILocation(line: 105, column: 7, scope: !3264)
!3328 = !DILocation(line: 74, column: 19, scope: !3318)
!3329 = !DILocation(line: 105, column: 19, scope: !3330)
!3330 = distinct !DILexicalBlock(scope: !3264, file: !3265, line: 105, column: 7)
!3331 = !DILocation(line: 107, column: 13, scope: !3332)
!3332 = distinct !DILexicalBlock(scope: !3330, file: !3265, line: 106, column: 5)
!3333 = !DILocation(line: 109, column: 5, scope: !3332)
!3334 = !DILocation(line: 0, scope: !3264)
!3335 = !DILocation(line: 112, column: 1, scope: !3264)
!3336 = distinct !DISubprogram(name: "rpl_fflush", scope: !3337, file: !3337, line: 129, type: !3338, isLocal: false, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, unit: !592, retainedNodes: !3374)
!3337 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3338 = !DISubroutineType(types: !3339)
!3339 = !{!18, !3340}
!3340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3341, size: 64)
!3341 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2616, line: 7, baseType: !3342)
!3342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2618, line: 49, size: 1728, elements: !3343)
!3343 = !{!3344, !3345, !3346, !3347, !3348, !3349, !3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357, !3359, !3360, !3361, !3362, !3363, !3364, !3365, !3366, !3367, !3368, !3369, !3370, !3371, !3372, !3373}
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3342, file: !2618, line: 51, baseType: !18, size: 32)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3342, file: !2618, line: 54, baseType: !66, size: 64, offset: 64)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3342, file: !2618, line: 55, baseType: !66, size: 64, offset: 128)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3342, file: !2618, line: 56, baseType: !66, size: 64, offset: 192)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3342, file: !2618, line: 57, baseType: !66, size: 64, offset: 256)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3342, file: !2618, line: 58, baseType: !66, size: 64, offset: 320)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3342, file: !2618, line: 59, baseType: !66, size: 64, offset: 384)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3342, file: !2618, line: 60, baseType: !66, size: 64, offset: 448)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3342, file: !2618, line: 61, baseType: !66, size: 64, offset: 512)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3342, file: !2618, line: 64, baseType: !66, size: 64, offset: 576)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3342, file: !2618, line: 65, baseType: !66, size: 64, offset: 640)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3342, file: !2618, line: 66, baseType: !66, size: 64, offset: 704)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3342, file: !2618, line: 68, baseType: !2633, size: 64, offset: 768)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3342, file: !2618, line: 70, baseType: !3358, size: 64, offset: 832)
!3358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3342, size: 64)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3342, file: !2618, line: 72, baseType: !18, size: 32, offset: 896)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3342, file: !2618, line: 73, baseType: !18, size: 32, offset: 928)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3342, file: !2618, line: 74, baseType: !2640, size: 64, offset: 960)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3342, file: !2618, line: 77, baseType: !110, size: 16, offset: 1024)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3342, file: !2618, line: 78, baseType: !2645, size: 8, offset: 1040)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3342, file: !2618, line: 79, baseType: !2647, size: 8, offset: 1048)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3342, file: !2618, line: 81, baseType: !2649, size: 64, offset: 1088)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3342, file: !2618, line: 89, baseType: !2652, size: 64, offset: 1152)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3342, file: !2618, line: 91, baseType: !2654, size: 64, offset: 1216)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3342, file: !2618, line: 92, baseType: !2657, size: 64, offset: 1280)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3342, file: !2618, line: 93, baseType: !3358, size: 64, offset: 1344)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3342, file: !2618, line: 94, baseType: !9, size: 64, offset: 1408)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3342, file: !2618, line: 95, baseType: !111, size: 64, offset: 1472)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3342, file: !2618, line: 96, baseType: !18, size: 32, offset: 1536)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3342, file: !2618, line: 98, baseType: !2664, size: 160, offset: 1568)
!3374 = !{!3375}
!3375 = !DILocalVariable(name: "stream", arg: 1, scope: !3336, file: !3337, line: 129, type: !3340)
!3376 = !DILocation(line: 129, column: 19, scope: !3336)
!3377 = !DILocation(line: 150, column: 14, scope: !3378)
!3378 = distinct !DILexicalBlock(scope: !3336, file: !3337, line: 150, column: 7)
!3379 = !DILocation(line: 150, column: 22, scope: !3378)
!3380 = !DILocation(line: 150, column: 27, scope: !3378)
!3381 = !DILocation(line: 150, column: 7, scope: !3336)
!3382 = !DILocation(line: 151, column: 12, scope: !3378)
!3383 = !DILocation(line: 151, column: 5, scope: !3378)
!3384 = !DILocalVariable(name: "fp", arg: 1, scope: !3385, file: !3337, line: 41, type: !3340)
!3385 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !3337, file: !3337, line: 41, type: !3386, isLocal: true, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !592, retainedNodes: !3388)
!3386 = !DISubroutineType(types: !3387)
!3387 = !{null, !3340}
!3388 = !{!3384}
!3389 = !DILocation(line: 41, column: 48, scope: !3385, inlinedAt: !3390)
!3390 = distinct !DILocation(line: 156, column: 3, scope: !3336)
!3391 = !DILocation(line: 43, column: 11, scope: !3392, inlinedAt: !3390)
!3392 = distinct !DILexicalBlock(scope: !3385, file: !3337, line: 43, column: 7)
!3393 = !DILocation(line: 43, column: 18, scope: !3392, inlinedAt: !3390)
!3394 = !DILocation(line: 43, column: 7, scope: !3385, inlinedAt: !3390)
!3395 = !DILocation(line: 45, column: 5, scope: !3392, inlinedAt: !3390)
!3396 = !DILocation(line: 158, column: 10, scope: !3336)
!3397 = !DILocation(line: 158, column: 3, scope: !3336)
!3398 = !DILocation(line: 0, scope: !3336)
!3399 = !DILocation(line: 232, column: 1, scope: !3336)
!3400 = distinct !DISubprogram(name: "rpl_fseeko", scope: !3401, file: !3401, line: 28, type: !3402, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !594, retainedNodes: !3439)
!3401 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3402 = !DISubroutineType(types: !3403)
!3403 = !{!18, !3404, !3438, !18}
!3404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3405, size: 64)
!3405 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2616, line: 7, baseType: !3406)
!3406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2618, line: 49, size: 1728, elements: !3407)
!3407 = !{!3408, !3409, !3410, !3411, !3412, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421, !3423, !3424, !3425, !3426, !3427, !3428, !3429, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437}
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3406, file: !2618, line: 51, baseType: !18, size: 32)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3406, file: !2618, line: 54, baseType: !66, size: 64, offset: 64)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3406, file: !2618, line: 55, baseType: !66, size: 64, offset: 128)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3406, file: !2618, line: 56, baseType: !66, size: 64, offset: 192)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3406, file: !2618, line: 57, baseType: !66, size: 64, offset: 256)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3406, file: !2618, line: 58, baseType: !66, size: 64, offset: 320)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3406, file: !2618, line: 59, baseType: !66, size: 64, offset: 384)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3406, file: !2618, line: 60, baseType: !66, size: 64, offset: 448)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3406, file: !2618, line: 61, baseType: !66, size: 64, offset: 512)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3406, file: !2618, line: 64, baseType: !66, size: 64, offset: 576)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3406, file: !2618, line: 65, baseType: !66, size: 64, offset: 640)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3406, file: !2618, line: 66, baseType: !66, size: 64, offset: 704)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3406, file: !2618, line: 68, baseType: !2633, size: 64, offset: 768)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3406, file: !2618, line: 70, baseType: !3422, size: 64, offset: 832)
!3422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3406, size: 64)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3406, file: !2618, line: 72, baseType: !18, size: 32, offset: 896)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3406, file: !2618, line: 73, baseType: !18, size: 32, offset: 928)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3406, file: !2618, line: 74, baseType: !2640, size: 64, offset: 960)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3406, file: !2618, line: 77, baseType: !110, size: 16, offset: 1024)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3406, file: !2618, line: 78, baseType: !2645, size: 8, offset: 1040)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3406, file: !2618, line: 79, baseType: !2647, size: 8, offset: 1048)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3406, file: !2618, line: 81, baseType: !2649, size: 64, offset: 1088)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3406, file: !2618, line: 89, baseType: !2652, size: 64, offset: 1152)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3406, file: !2618, line: 91, baseType: !2654, size: 64, offset: 1216)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3406, file: !2618, line: 92, baseType: !2657, size: 64, offset: 1280)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3406, file: !2618, line: 93, baseType: !3422, size: 64, offset: 1344)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3406, file: !2618, line: 94, baseType: !9, size: 64, offset: 1408)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3406, file: !2618, line: 95, baseType: !111, size: 64, offset: 1472)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3406, file: !2618, line: 96, baseType: !18, size: 32, offset: 1536)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3406, file: !2618, line: 98, baseType: !2664, size: 160, offset: 1568)
!3438 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !793, line: 63, baseType: !2640)
!3439 = !{!3440, !3441, !3442, !3443}
!3440 = !DILocalVariable(name: "fp", arg: 1, scope: !3400, file: !3401, line: 28, type: !3404)
!3441 = !DILocalVariable(name: "offset", arg: 2, scope: !3400, file: !3401, line: 28, type: !3438)
!3442 = !DILocalVariable(name: "whence", arg: 3, scope: !3400, file: !3401, line: 28, type: !18)
!3443 = !DILocalVariable(name: "pos", scope: !3444, file: !3401, line: 117, type: !3438)
!3444 = distinct !DILexicalBlock(scope: !3445, file: !3401, line: 113, column: 5)
!3445 = distinct !DILexicalBlock(scope: !3400, file: !3401, line: 52, column: 7)
!3446 = !DILocation(line: 28, column: 15, scope: !3400)
!3447 = !DILocation(line: 28, column: 25, scope: !3400)
!3448 = !DILocation(line: 28, column: 37, scope: !3400)
!3449 = !DILocation(line: 52, column: 11, scope: !3445)
!3450 = !{!3201, !636, i64 16}
!3451 = !DILocation(line: 52, column: 31, scope: !3445)
!3452 = !{!3201, !636, i64 8}
!3453 = !DILocation(line: 52, column: 24, scope: !3445)
!3454 = !DILocation(line: 53, column: 7, scope: !3445)
!3455 = !DILocation(line: 53, column: 14, scope: !3445)
!3456 = !{!3201, !636, i64 40}
!3457 = !DILocation(line: 53, column: 35, scope: !3445)
!3458 = !{!3201, !636, i64 32}
!3459 = !DILocation(line: 53, column: 28, scope: !3445)
!3460 = !DILocation(line: 54, column: 7, scope: !3445)
!3461 = !DILocation(line: 54, column: 14, scope: !3445)
!3462 = !{!3201, !636, i64 72}
!3463 = !DILocation(line: 54, column: 28, scope: !3445)
!3464 = !DILocation(line: 52, column: 7, scope: !3400)
!3465 = !DILocation(line: 117, column: 26, scope: !3444)
!3466 = !DILocation(line: 117, column: 19, scope: !3444)
!3467 = !DILocation(line: 117, column: 13, scope: !3444)
!3468 = !DILocation(line: 118, column: 15, scope: !3469)
!3469 = distinct !DILexicalBlock(scope: !3444, file: !3401, line: 118, column: 11)
!3470 = !DILocation(line: 118, column: 11, scope: !3444)
!3471 = !DILocation(line: 129, column: 11, scope: !3444)
!3472 = !DILocation(line: 129, column: 18, scope: !3444)
!3473 = !DILocation(line: 130, column: 11, scope: !3444)
!3474 = !DILocation(line: 130, column: 19, scope: !3444)
!3475 = !{!3201, !1940, i64 144}
!3476 = !DILocation(line: 161, column: 7, scope: !3444)
!3477 = !DILocation(line: 163, column: 10, scope: !3400)
!3478 = !DILocation(line: 163, column: 3, scope: !3400)
!3479 = !DILocation(line: 0, scope: !3400)
!3480 = !DILocation(line: 164, column: 1, scope: !3400)
