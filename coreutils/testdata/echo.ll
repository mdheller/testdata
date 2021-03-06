; ModuleID = 'coreutils-8.30/src/echo.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.infomap = type { i8*, i8* }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"Usage: %s [SHORT-OPTION]... [STRING]...\0A  or:  %s LONG-OPTION\0A\00", align 1
@.str.2 = private unnamed_addr constant [93 x i8] c"Echo the STRING(s) to standard output.\0A\0A  -n             do not output the trailing newline\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [132 x i8] c"  -e             enable interpretation of backslash escapes\0A  -E             disable interpretation of backslash escapes (default)\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [63 x i8] c"\0AIf -e is in effect, the following sequences are recognized:\0A\0A\00", align 1
@.str.7 = private unnamed_addr constant [229 x i8] c"  \5C\5C      backslash\0A  \5Ca      alert (BEL)\0A  \5Cb      backspace\0A  \5Cc      produce no further output\0A  \5Ce      escape\0A  \5Cf      form feed\0A  \5Cn      new line\0A  \5Cr      carriage return\0A  \5Ct      horizontal tab\0A  \5Cv      vertical tab\0A\00", align 1
@.str.8 = private unnamed_addr constant [110 x i8] c"  \5C0NNN   byte with octal value NNN (1 to 3 digits)\0A  \5CxHH    byte with hexadecimal value HH (1 to 2 digits)\0A\00", align 1
@.str.9 = private unnamed_addr constant [191 x i8] c"\0ANOTE: your shell may have its own version of %s, which usually supersedes\0Athe version described here.  Please refer to your shell's documentation\0Afor details about the options it supports.\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"echo\00", align 1
@emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.21 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.29 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.30 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.32 = private unnamed_addr constant [70 x i8] c"Report %s translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.33 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.34 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"POSIXLY_CORRECT\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"-n\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"Brian Fox\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"Chet Ramey\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i64 0, i64 0), align 8, !dbg !0
@.str.36 = private unnamed_addr constant [5 x i8] c"8.30\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !9
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !14
@.str.39 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.40 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.41 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !18
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !26
@.str.48 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.49 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.50 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.52, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.53, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.54, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.55, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.56, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.57, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.58, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.59, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.60, i32 0, i32 0), i8* null], align 16, !dbg !35
@.str.51 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.52 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.53 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.54 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.55 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.56 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.57 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.58 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.59 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.60 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !81
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !88
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !100
@.str.11.61 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.62 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.63 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.64 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.65 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.66 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.67 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !107
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !114
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !102
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !116
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
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !122
@.str.1.102 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.103 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.112 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.113 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.116 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.117 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32) local_unnamed_addr #0 !dbg !576 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !581, metadata !DIExpression()), !dbg !600
  call void @llvm.dbg.value(metadata i32 %0, metadata !580, metadata !DIExpression()), !dbg !604
  %3 = icmp eq i32 %0, 0, !dbg !605
  br i1 %3, label %9, label %4, !dbg !606

; <label>:4:                                      ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !607, !tbaa !609
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #10, !dbg !607
  %7 = load i8*, i8** @program_name, align 8, !dbg !607, !tbaa !609
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #10, !dbg !607
  br label %71, !dbg !607

; <label>:9:                                      ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i32 5) #10, !dbg !613
  %11 = load i8*, i8** @program_name, align 8, !dbg !613, !tbaa !609
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11, i8* %11) #10, !dbg !613
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.2, i64 0, i64 0), i32 5) #10, !dbg !614
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !614, !tbaa !609
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !614
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([132 x i8], [132 x i8]* @.str.3, i64 0, i64 0), i32 5) #10, !dbg !615
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !615, !tbaa !609
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17), !dbg !615
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 5) #10, !dbg !616
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !616, !tbaa !609
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !616
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 5) #10, !dbg !617
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !617, !tbaa !609
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !617
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.6, i64 0, i64 0), i32 5) #10, !dbg !618
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !618, !tbaa !609
  %27 = tail call i32 @fputs_unlocked(i8* %25, %struct._IO_FILE* %26), !dbg !618
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([229 x i8], [229 x i8]* @.str.7, i64 0, i64 0), i32 5) #10, !dbg !619
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !619, !tbaa !609
  %30 = tail call i32 @fputs_unlocked(i8* %28, %struct._IO_FILE* %29), !dbg !619
  %31 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.8, i64 0, i64 0), i32 5) #10, !dbg !620
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !620, !tbaa !609
  %33 = tail call i32 @fputs_unlocked(i8* %31, %struct._IO_FILE* %32), !dbg !620
  %34 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([191 x i8], [191 x i8]* @.str.9, i64 0, i64 0), i32 5) #10, !dbg !621
  %35 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0)) #10, !dbg !621
  %36 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !622
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %36) #10, !dbg !622
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %36, i8* align 16 bitcast ([7 x %struct.infomap]* @emit_ancillary_info.infomap to i8*), i64 112, i1 false) #10, !dbg !600
  %37 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !623
  call void @llvm.dbg.value(metadata %struct.infomap* %37, metadata !589, metadata !DIExpression()) #10, !dbg !624
  br label %38, !dbg !625

; <label>:38:                                     ; preds = %43, %9
  %39 = phi i8* [ %46, %43 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0), %9 ]
  %40 = phi %struct.infomap* [ %44, %43 ], [ %37, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %40, metadata !589, metadata !DIExpression()) #10, !dbg !624
  %41 = tail call i32 @strcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8* nonnull %39) #14, !dbg !625
  %42 = icmp eq i32 %41, 0, !dbg !625
  br i1 %42, label %48, label %43, !dbg !626

; <label>:43:                                     ; preds = %38
  %44 = getelementptr inbounds %struct.infomap, %struct.infomap* %40, i64 1, !dbg !627
  call void @llvm.dbg.value(metadata %struct.infomap* %44, metadata !589, metadata !DIExpression()) #10, !dbg !624
  %45 = getelementptr inbounds %struct.infomap, %struct.infomap* %44, i64 0, i32 0, !dbg !628
  %46 = load i8*, i8** %45, align 8, !dbg !628, !tbaa !629
  %47 = icmp eq i8* %46, null, !dbg !631
  br i1 %47, label %48, label %38, !dbg !632, !llvm.loop !633

; <label>:48:                                     ; preds = %43, %38
  %49 = phi %struct.infomap* [ %44, %43 ], [ %40, %38 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %49, metadata !589, metadata !DIExpression()) #10, !dbg !624
  call void @llvm.dbg.value(metadata %struct.infomap* %49, metadata !589, metadata !DIExpression()) #10, !dbg !624
  %50 = getelementptr inbounds %struct.infomap, %struct.infomap* %49, i64 0, i32 1, !dbg !636
  %51 = load i8*, i8** %50, align 8, !dbg !636, !tbaa !638
  %52 = icmp eq i8* %51, null, !dbg !639
  %53 = select i1 %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8* %51, !dbg !640
  call void @llvm.dbg.value(metadata i8* %53, metadata !588, metadata !DIExpression()) #10, !dbg !641
  %54 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i64 0, i64 0), i32 5) #10, !dbg !642
  %55 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %54, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.30, i64 0, i64 0)) #10, !dbg !642
  %56 = tail call i8* @setlocale(i32 5, i8* null) #10, !dbg !643
  call void @llvm.dbg.value(metadata i8* %56, metadata !596, metadata !DIExpression()) #10, !dbg !644
  %57 = icmp eq i8* %56, null, !dbg !645
  br i1 %57, label %64, label %58, !dbg !647

; <label>:58:                                     ; preds = %48
  %59 = tail call i32 @strncmp(i8* nonnull %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i64 0, i64 0), i64 3) #14, !dbg !648
  %60 = icmp eq i32 %59, 0, !dbg !648
  br i1 %60, label %64, label %61, !dbg !649

; <label>:61:                                     ; preds = %58
  %62 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.32, i64 0, i64 0), i32 5) #10, !dbg !650
  %63 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0)) #10, !dbg !650
  br label %64, !dbg !652

; <label>:64:                                     ; preds = %48, %58, %61
  %65 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.33, i64 0, i64 0), i32 5) #10, !dbg !653
  %66 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %65, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0)) #10, !dbg !653
  %67 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.34, i64 0, i64 0), i32 5) #10, !dbg !654
  %68 = icmp eq i8* %53, getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), !dbg !654
  %69 = select i1 %68, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0), !dbg !654
  %70 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %67, i8* %53, i8* %69) #10, !dbg !654
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %36) #10, !dbg !655
  br label %71

; <label>:71:                                     ; preds = %64, %4
  tail call void @exit(i32 %0) #15, !dbg !656
  unreachable, !dbg !656
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
define dso_local i32 @main(i32, i8** nocapture readonly) local_unnamed_addr #7 !dbg !657 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !662, metadata !DIExpression()), !dbg !682
  call void @llvm.dbg.value(metadata i8** %1, metadata !663, metadata !DIExpression()), !dbg !683
  call void @llvm.dbg.value(metadata i8 1, metadata !664, metadata !DIExpression()), !dbg !684
  %3 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0)) #10, !dbg !685
  %4 = icmp eq i8* %3, null, !dbg !685
  br i1 %4, label %12, label %5, !dbg !686

; <label>:5:                                      ; preds = %2
  %6 = icmp sgt i32 %0, 1, !dbg !687
  br i1 %6, label %7, label %12, !dbg !688

; <label>:7:                                      ; preds = %5
  %8 = getelementptr inbounds i8*, i8** %1, i64 1, !dbg !689
  %9 = load i8*, i8** %8, align 8, !dbg !689, !tbaa !609
  %10 = tail call i32 @strcmp(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0)) #14, !dbg !689
  %11 = icmp eq i32 %10, 0, !dbg !689
  br label %12

; <label>:12:                                     ; preds = %2, %5, %7
  %13 = phi i1 [ true, %2 ], [ false, %5 ], [ %11, %7 ]
  call void @llvm.dbg.value(metadata i8 0, metadata !666, metadata !DIExpression()), !dbg !690
  %14 = load i8*, i8** %1, align 8, !dbg !691, !tbaa !609
  tail call void @set_program_name(i8* %14) #10, !dbg !692
  %15 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0)) #10, !dbg !693
  %16 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0)) #10, !dbg !694
  %17 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0)) #10, !dbg !695
  %18 = tail call i32 @atexit(void ()* nonnull @close_stdout) #10, !dbg !696
  %19 = icmp eq i32 %0, 2, !dbg !697
  %20 = and i1 %19, %13, !dbg !699
  %21 = getelementptr inbounds i8*, i8** %1, i64 1, !dbg !700
  br i1 %20, label %22, label %33, !dbg !699

; <label>:22:                                     ; preds = %12
  %23 = load i8*, i8** %21, align 8, !dbg !701, !tbaa !609
  %24 = tail call i32 @strcmp(i8* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0)) #14, !dbg !701
  %25 = icmp eq i32 %24, 0, !dbg !701
  br i1 %25, label %26, label %27, !dbg !704

; <label>:26:                                     ; preds = %22
  tail call void @usage(i32 0) #16, !dbg !705
  unreachable, !dbg !705

; <label>:27:                                     ; preds = %22
  %28 = tail call i32 @strcmp(i8* %23, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0)) #14, !dbg !706
  %29 = icmp eq i32 %28, 0, !dbg !706
  br i1 %29, label %30, label %33, !dbg !708

; <label>:30:                                     ; preds = %27
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !709, !tbaa !609
  %32 = load i8*, i8** @Version, align 8, !dbg !711, !tbaa !609
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i8* %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0), i8* null) #10, !dbg !712
  br label %273, !dbg !713

; <label>:33:                                     ; preds = %12, %27
  %34 = add nsw i32 %0, -1, !dbg !714
  call void @llvm.dbg.value(metadata i32 %34, metadata !662, metadata !DIExpression()), !dbg !682
  call void @llvm.dbg.value(metadata i8** %21, metadata !663, metadata !DIExpression()), !dbg !683
  %35 = icmp sgt i32 %0, 1, !dbg !715
  %36 = and i1 %35, %13, !dbg !716
  br i1 %36, label %39, label %37, !dbg !716

; <label>:37:                                     ; preds = %33
  call void @llvm.dbg.value(metadata i8 %88, metadata !666, metadata !DIExpression()), !dbg !690
  call void @llvm.dbg.value(metadata i8 %87, metadata !664, metadata !DIExpression()), !dbg !684
  call void @llvm.dbg.value(metadata i8** %86, metadata !663, metadata !DIExpression()), !dbg !683
  call void @llvm.dbg.value(metadata i32 %85, metadata !662, metadata !DIExpression()), !dbg !682
  call void @llvm.dbg.value(metadata i8** %86, metadata !663, metadata !DIExpression()), !dbg !683
  call void @llvm.dbg.value(metadata i8** %86, metadata !663, metadata !DIExpression()), !dbg !683
  call void @llvm.dbg.value(metadata i32 %85, metadata !662, metadata !DIExpression()), !dbg !682
  call void @llvm.dbg.value(metadata i32 %85, metadata !662, metadata !DIExpression()), !dbg !682
  %38 = icmp sgt i32 %0, 1, !dbg !717
  br i1 %38, label %94, label %262, !dbg !718

; <label>:39:                                     ; preds = %33, %78
  %40 = phi i32 [ %81, %78 ], [ %34, %33 ], !dbg !714
  %41 = phi i8** [ %82, %78 ], [ %21, %33 ], !dbg !720
  %42 = phi i8 [ %79, %78 ], [ 1, %33 ], !dbg !684
  %43 = phi i8 [ %80, %78 ], [ 0, %33 ], !dbg !690
  call void @llvm.dbg.value(metadata i8 %43, metadata !666, metadata !DIExpression()), !dbg !690
  call void @llvm.dbg.value(metadata i8 %42, metadata !664, metadata !DIExpression()), !dbg !684
  call void @llvm.dbg.value(metadata i8** %41, metadata !663, metadata !DIExpression()), !dbg !683
  call void @llvm.dbg.value(metadata i32 %40, metadata !662, metadata !DIExpression()), !dbg !682
  %44 = load i8*, i8** %41, align 8, !dbg !721, !tbaa !609
  %45 = load i8, i8* %44, align 1, !dbg !722, !tbaa !723
  %46 = icmp eq i8 %45, 45, !dbg !724
  br i1 %46, label %47, label %84, !dbg !725

; <label>:47:                                     ; preds = %39
  %48 = getelementptr inbounds i8, i8* %44, i64 1, !dbg !726
  call void @llvm.dbg.value(metadata i8* %48, metadata !667, metadata !DIExpression()), !dbg !727
  call void @llvm.dbg.value(metadata i64 0, metadata !670, metadata !DIExpression()), !dbg !728
  %49 = load i8, i8* %48, align 1, !dbg !729, !tbaa !723
  %50 = icmp eq i8 %49, 0, !dbg !732
  br i1 %50, label %84, label %51, !dbg !732

; <label>:51:                                     ; preds = %47, %55
  %52 = phi i8 [ %58, %55 ], [ %49, %47 ]
  %53 = phi i64 [ %56, %55 ], [ 0, %47 ]
  call void @llvm.dbg.value(metadata i64 %53, metadata !670, metadata !DIExpression()), !dbg !728
  %54 = sext i8 %52 to i32, !dbg !733
  switch i32 %54, label %84 [
    i32 101, label %55
    i32 69, label %55
    i32 110, label %55
  ], !dbg !734

; <label>:55:                                     ; preds = %51, %51, %51
  %56 = add i64 %53, 1, !dbg !735
  call void @llvm.dbg.value(metadata i64 %56, metadata !670, metadata !DIExpression()), !dbg !728
  %57 = getelementptr inbounds i8, i8* %48, i64 %56, !dbg !729
  %58 = load i8, i8* %57, align 1, !dbg !729, !tbaa !723
  %59 = icmp eq i8 %58, 0, !dbg !732
  br i1 %59, label %60, label %51, !dbg !732, !llvm.loop !736

; <label>:60:                                     ; preds = %55
  call void @llvm.dbg.value(metadata i64 %56, metadata !670, metadata !DIExpression()), !dbg !728
  %61 = icmp eq i64 %56, 0, !dbg !738
  br i1 %61, label %84, label %62, !dbg !740

; <label>:62:                                     ; preds = %60
  call void @llvm.dbg.value(metadata i8* %48, metadata !667, metadata !DIExpression()), !dbg !727
  call void @llvm.dbg.value(metadata i8 %43, metadata !666, metadata !DIExpression()), !dbg !690
  call void @llvm.dbg.value(metadata i8 %42, metadata !664, metadata !DIExpression()), !dbg !684
  br i1 %50, label %78, label %63, !dbg !741

; <label>:63:                                     ; preds = %62, %73
  %64 = phi i8 [ %76, %73 ], [ %49, %62 ]
  %65 = phi i8* [ %68, %73 ], [ %48, %62 ]
  %66 = phi i8 [ %75, %73 ], [ %43, %62 ]
  %67 = phi i8 [ %74, %73 ], [ %42, %62 ]
  call void @llvm.dbg.value(metadata i8* %65, metadata !667, metadata !DIExpression()), !dbg !727
  call void @llvm.dbg.value(metadata i8 %66, metadata !666, metadata !DIExpression()), !dbg !690
  call void @llvm.dbg.value(metadata i8 %67, metadata !664, metadata !DIExpression()), !dbg !684
  %68 = getelementptr inbounds i8, i8* %65, i64 1, !dbg !742
  %69 = sext i8 %64 to i32, !dbg !743
  switch i32 %69, label %73 [
    i32 101, label %70
    i32 69, label %71
    i32 110, label %72
  ], !dbg !744

; <label>:70:                                     ; preds = %63
  call void @llvm.dbg.value(metadata i8 1, metadata !666, metadata !DIExpression()), !dbg !690
  br label %73, !dbg !745

; <label>:71:                                     ; preds = %63
  call void @llvm.dbg.value(metadata i8 0, metadata !666, metadata !DIExpression()), !dbg !690
  br label %73, !dbg !747

; <label>:72:                                     ; preds = %63
  call void @llvm.dbg.value(metadata i8 0, metadata !664, metadata !DIExpression()), !dbg !684
  br label %73, !dbg !748

; <label>:73:                                     ; preds = %63, %72, %71, %70
  %74 = phi i8 [ %67, %63 ], [ 0, %72 ], [ %67, %71 ], [ %67, %70 ], !dbg !700
  %75 = phi i8 [ %66, %63 ], [ %66, %72 ], [ 0, %71 ], [ 1, %70 ], !dbg !749
  call void @llvm.dbg.value(metadata i8* %68, metadata !667, metadata !DIExpression()), !dbg !727
  call void @llvm.dbg.value(metadata i8 %75, metadata !666, metadata !DIExpression()), !dbg !690
  call void @llvm.dbg.value(metadata i8 %74, metadata !664, metadata !DIExpression()), !dbg !684
  %76 = load i8, i8* %68, align 1, !dbg !750, !tbaa !723
  %77 = icmp eq i8 %76, 0, !dbg !741
  br i1 %77, label %78, label %63, !dbg !741, !llvm.loop !751

; <label>:78:                                     ; preds = %73, %62
  %79 = phi i8 [ %42, %62 ], [ %74, %73 ], !dbg !684
  %80 = phi i8 [ %43, %62 ], [ %75, %73 ], !dbg !690
  call void @llvm.dbg.value(metadata i8 %79, metadata !664, metadata !DIExpression()), !dbg !684
  call void @llvm.dbg.value(metadata i8 %80, metadata !666, metadata !DIExpression()), !dbg !690
  %81 = add nsw i32 %40, -1, !dbg !753
  call void @llvm.dbg.value(metadata i32 %81, metadata !662, metadata !DIExpression()), !dbg !682
  %82 = getelementptr inbounds i8*, i8** %41, i64 1, !dbg !754
  call void @llvm.dbg.value(metadata i8** %82, metadata !663, metadata !DIExpression()), !dbg !683
  call void @llvm.dbg.value(metadata i8 undef, metadata !666, metadata !DIExpression()), !dbg !690
  call void @llvm.dbg.value(metadata i8 undef, metadata !664, metadata !DIExpression()), !dbg !684
  call void @llvm.dbg.value(metadata i8** %82, metadata !663, metadata !DIExpression()), !dbg !683
  call void @llvm.dbg.value(metadata i32 %81, metadata !662, metadata !DIExpression()), !dbg !682
  %83 = icmp sgt i32 %40, 1, !dbg !715
  br i1 %83, label %39, label %84

; <label>:84:                                     ; preds = %47, %60, %78, %39, %51
  %85 = phi i32 [ %40, %51 ], [ %40, %47 ], [ %40, %60 ], [ %40, %39 ], [ %81, %78 ], !dbg !714
  %86 = phi i8** [ %41, %51 ], [ %41, %47 ], [ %41, %60 ], [ %41, %39 ], [ %82, %78 ], !dbg !720
  %87 = phi i8 [ %42, %51 ], [ %42, %47 ], [ %42, %60 ], [ %42, %39 ], [ %79, %78 ], !dbg !684
  %88 = phi i8 [ %43, %51 ], [ %43, %47 ], [ %43, %60 ], [ %43, %39 ], [ %80, %78 ], !dbg !690
  call void @llvm.dbg.value(metadata i8 %88, metadata !666, metadata !DIExpression()), !dbg !690
  call void @llvm.dbg.value(metadata i8 %87, metadata !664, metadata !DIExpression()), !dbg !684
  call void @llvm.dbg.value(metadata i8** %86, metadata !663, metadata !DIExpression()), !dbg !683
  call void @llvm.dbg.value(metadata i32 %85, metadata !662, metadata !DIExpression()), !dbg !682
  %89 = and i8 %88, 1, !dbg !755
  %90 = icmp eq i8 %89, 0, !dbg !755
  call void @llvm.dbg.value(metadata i8** %86, metadata !663, metadata !DIExpression()), !dbg !683
  call void @llvm.dbg.value(metadata i8** %86, metadata !663, metadata !DIExpression()), !dbg !683
  call void @llvm.dbg.value(metadata i32 %85, metadata !662, metadata !DIExpression()), !dbg !682
  call void @llvm.dbg.value(metadata i32 %85, metadata !662, metadata !DIExpression()), !dbg !682
  %91 = icmp sgt i32 %85, 0, !dbg !717
  br i1 %90, label %93, label %92, !dbg !756

; <label>:92:                                     ; preds = %84
  br i1 %91, label %98, label %258, !dbg !757

; <label>:93:                                     ; preds = %84
  br i1 %91, label %94, label %258, !dbg !718

; <label>:94:                                     ; preds = %37, %93
  %95 = phi i32 [ %34, %37 ], [ %85, %93 ]
  %96 = phi i8** [ %21, %37 ], [ %86, %93 ]
  %97 = phi i8 [ 1, %37 ], [ %87, %93 ]
  br label %236, !dbg !758

; <label>:98:                                     ; preds = %92, %235
  %99 = phi i8** [ %222, %235 ], [ %86, %92 ]
  %100 = phi i32 [ %221, %235 ], [ %85, %92 ]
  call void @llvm.dbg.value(metadata i8** %99, metadata !663, metadata !DIExpression()), !dbg !683
  call void @llvm.dbg.value(metadata i32 %100, metadata !662, metadata !DIExpression()), !dbg !682
  %101 = load i8*, i8** %99, align 8, !dbg !760, !tbaa !609
  call void @llvm.dbg.value(metadata i8* %101, metadata !671, metadata !DIExpression()), !dbg !761
  br label %102, !dbg !762

; <label>:102:                                    ; preds = %217, %98
  %103 = phi i8* [ %101, %98 ], [ %206, %217 ], !dbg !763
  call void @llvm.dbg.value(metadata i8* %103, metadata !671, metadata !DIExpression()), !dbg !761
  %104 = getelementptr inbounds i8, i8* %103, i64 1, !dbg !764
  call void @llvm.dbg.value(metadata i8* %104, metadata !671, metadata !DIExpression()), !dbg !761
  %105 = load i8, i8* %103, align 1, !dbg !765, !tbaa !723
  call void @llvm.dbg.value(metadata i8 %105, metadata !675, metadata !DIExpression()), !dbg !766
  switch i8 %105, label %205 [
    i8 0, label %220
    i8 92, label %106
  ], !dbg !762

; <label>:106:                                    ; preds = %102
  %107 = load i8, i8* %104, align 1, !dbg !767, !tbaa !723
  %108 = icmp eq i8 %107, 0, !dbg !767
  br i1 %108, label %205, label %109, !dbg !768

; <label>:109:                                    ; preds = %106
  %110 = getelementptr inbounds i8, i8* %103, i64 2, !dbg !769
  call void @llvm.dbg.value(metadata i8* %110, metadata !671, metadata !DIExpression()), !dbg !761
  call void @llvm.dbg.value(metadata i8 %107, metadata !675, metadata !DIExpression()), !dbg !766
  switch i8 %107, label %194 [
    i8 97, label %111
    i8 98, label %112
    i8 99, label %273
    i8 101, label %113
    i8 102, label %114
    i8 110, label %115
    i8 114, label %116
    i8 116, label %117
    i8 118, label %118
    i8 120, label %119
    i8 48, label %164
    i8 49, label %170
    i8 50, label %170
    i8 51, label %170
    i8 52, label %170
    i8 53, label %170
    i8 54, label %170
    i8 55, label %170
    i8 92, label %205
  ], !dbg !770

; <label>:111:                                    ; preds = %109
  call void @llvm.dbg.value(metadata i8 7, metadata !675, metadata !DIExpression()), !dbg !766
  br label %205, !dbg !771

; <label>:112:                                    ; preds = %109
  call void @llvm.dbg.value(metadata i8 8, metadata !675, metadata !DIExpression()), !dbg !766
  br label %205, !dbg !772

; <label>:113:                                    ; preds = %109
  call void @llvm.dbg.value(metadata i8 27, metadata !675, metadata !DIExpression()), !dbg !766
  br label %205, !dbg !773

; <label>:114:                                    ; preds = %109
  call void @llvm.dbg.value(metadata i8 12, metadata !675, metadata !DIExpression()), !dbg !766
  br label %205, !dbg !774

; <label>:115:                                    ; preds = %109
  call void @llvm.dbg.value(metadata i8 10, metadata !675, metadata !DIExpression()), !dbg !766
  br label %205, !dbg !775

; <label>:116:                                    ; preds = %109
  call void @llvm.dbg.value(metadata i8 13, metadata !675, metadata !DIExpression()), !dbg !766
  br label %205, !dbg !776

; <label>:117:                                    ; preds = %109
  call void @llvm.dbg.value(metadata i8 9, metadata !675, metadata !DIExpression()), !dbg !766
  br label %205, !dbg !777

; <label>:118:                                    ; preds = %109
  call void @llvm.dbg.value(metadata i8 11, metadata !675, metadata !DIExpression()), !dbg !766
  br label %205, !dbg !778

; <label>:119:                                    ; preds = %109
  %120 = load i8, i8* %110, align 1, !dbg !779, !tbaa !723
  call void @llvm.dbg.value(metadata i8 %120, metadata !676, metadata !DIExpression()), !dbg !780
  %121 = tail call i16** @__ctype_b_loc() #17, !dbg !781
  %122 = load i16*, i16** %121, align 8, !dbg !781, !tbaa !609
  %123 = zext i8 %120 to i64, !dbg !781
  %124 = getelementptr inbounds i16, i16* %122, i64 %123, !dbg !781
  %125 = load i16, i16* %124, align 2, !dbg !781, !tbaa !783
  %126 = and i16 %125, 4096, !dbg !781
  %127 = icmp eq i16 %126, 0, !dbg !781
  br i1 %127, label %194, label %128, !dbg !785

; <label>:128:                                    ; preds = %119
  %129 = getelementptr inbounds i8, i8* %103, i64 3, !dbg !786
  call void @llvm.dbg.value(metadata i8* %129, metadata !671, metadata !DIExpression()), !dbg !761
  call void @llvm.dbg.value(metadata i8 %120, metadata !787, metadata !DIExpression()), !dbg !792
  switch i8 %120, label %130 [
    i8 97, label %138
    i8 65, label %138
    i8 98, label %133
    i8 66, label %133
    i8 99, label %134
    i8 67, label %134
    i8 100, label %135
    i8 68, label %135
    i8 101, label %136
    i8 69, label %136
    i8 102, label %137
    i8 70, label %137
  ], !dbg !794

; <label>:130:                                    ; preds = %128
  %131 = zext i8 %120 to i32, !dbg !795
  %132 = add nsw i32 %131, -48, !dbg !796
  br label %138, !dbg !798

; <label>:133:                                    ; preds = %128, %128
  br label %138, !dbg !799

; <label>:134:                                    ; preds = %128, %128
  br label %138, !dbg !800

; <label>:135:                                    ; preds = %128, %128
  br label %138, !dbg !801

; <label>:136:                                    ; preds = %128, %128
  br label %138, !dbg !802

; <label>:137:                                    ; preds = %128, %128
  br label %138, !dbg !803

; <label>:138:                                    ; preds = %128, %128, %130, %133, %134, %135, %136, %137
  %139 = phi i32 [ %132, %130 ], [ 15, %137 ], [ 14, %136 ], [ 13, %135 ], [ 12, %134 ], [ 11, %133 ], [ 10, %128 ], [ 10, %128 ], !dbg !804
  %140 = load i8, i8* %129, align 1, !dbg !805, !tbaa !723
  call void @llvm.dbg.value(metadata i8 %140, metadata !676, metadata !DIExpression()), !dbg !780
  %141 = zext i8 %140 to i64, !dbg !806
  %142 = getelementptr inbounds i16, i16* %122, i64 %141, !dbg !806
  %143 = load i16, i16* %142, align 2, !dbg !806, !tbaa !783
  %144 = and i16 %143, 4096, !dbg !806
  %145 = icmp eq i16 %144, 0, !dbg !806
  br i1 %145, label %160, label %146, !dbg !808

; <label>:146:                                    ; preds = %138
  %147 = getelementptr inbounds i8, i8* %103, i64 4, !dbg !809
  call void @llvm.dbg.value(metadata i8* %147, metadata !671, metadata !DIExpression()), !dbg !761
  %148 = shl i32 %139, 4, !dbg !811
  call void @llvm.dbg.value(metadata i8 %140, metadata !787, metadata !DIExpression()), !dbg !812
  switch i8 %140, label %149 [
    i8 97, label %157
    i8 65, label %157
    i8 98, label %152
    i8 66, label %152
    i8 99, label %153
    i8 67, label %153
    i8 100, label %154
    i8 68, label %154
    i8 101, label %155
    i8 69, label %155
    i8 102, label %156
    i8 70, label %156
  ], !dbg !814

; <label>:149:                                    ; preds = %146
  %150 = zext i8 %140 to i32, !dbg !815
  %151 = add nsw i32 %150, -48, !dbg !816
  br label %157, !dbg !817

; <label>:152:                                    ; preds = %146, %146
  br label %157, !dbg !818

; <label>:153:                                    ; preds = %146, %146
  br label %157, !dbg !819

; <label>:154:                                    ; preds = %146, %146
  br label %157, !dbg !820

; <label>:155:                                    ; preds = %146, %146
  br label %157, !dbg !821

; <label>:156:                                    ; preds = %146, %146
  br label %157, !dbg !822

; <label>:157:                                    ; preds = %146, %146, %149, %152, %153, %154, %155, %156
  %158 = phi i32 [ %151, %149 ], [ 15, %156 ], [ 14, %155 ], [ 13, %154 ], [ 12, %153 ], [ 11, %152 ], [ 10, %146 ], [ 10, %146 ], !dbg !823
  %159 = add i32 %158, %148, !dbg !824
  br label %160, !dbg !825

; <label>:160:                                    ; preds = %157, %138
  %161 = phi i8* [ %147, %157 ], [ %129, %138 ], !dbg !826
  %162 = phi i32 [ %159, %157 ], [ %139, %138 ]
  %163 = trunc i32 %162 to i8, !dbg !826
  call void @llvm.dbg.value(metadata i8 %163, metadata !675, metadata !DIExpression()), !dbg !766
  call void @llvm.dbg.value(metadata i8* %161, metadata !671, metadata !DIExpression()), !dbg !761
  br label %205

; <label>:164:                                    ; preds = %109
  call void @llvm.dbg.value(metadata i8 0, metadata !675, metadata !DIExpression()), !dbg !766
  %165 = load i8, i8* %110, align 1, !dbg !827, !tbaa !723
  %166 = and i8 %165, -8, !dbg !829
  %167 = icmp eq i8 %166, 48, !dbg !829
  br i1 %167, label %168, label %205, !dbg !829

; <label>:168:                                    ; preds = %164
  %169 = getelementptr inbounds i8, i8* %103, i64 3, !dbg !830
  call void @llvm.dbg.value(metadata i8* %169, metadata !671, metadata !DIExpression()), !dbg !761
  call void @llvm.dbg.value(metadata i8 %165, metadata !675, metadata !DIExpression()), !dbg !766
  br label %170, !dbg !831

; <label>:170:                                    ; preds = %109, %109, %109, %109, %109, %109, %109, %168
  %171 = phi i8* [ %110, %109 ], [ %110, %109 ], [ %110, %109 ], [ %110, %109 ], [ %110, %109 ], [ %110, %109 ], [ %110, %109 ], [ %169, %168 ], !dbg !832
  %172 = phi i8 [ %107, %109 ], [ %107, %109 ], [ %107, %109 ], [ %107, %109 ], [ %107, %109 ], [ %107, %109 ], [ %107, %109 ], [ %165, %168 ], !dbg !832
  call void @llvm.dbg.value(metadata i8 %172, metadata !675, metadata !DIExpression()), !dbg !766
  call void @llvm.dbg.value(metadata i8* %171, metadata !671, metadata !DIExpression()), !dbg !761
  %173 = add i8 %172, -48, !dbg !833
  call void @llvm.dbg.value(metadata i8 %173, metadata !675, metadata !DIExpression()), !dbg !766
  %174 = load i8, i8* %171, align 1, !dbg !834, !tbaa !723
  %175 = and i8 %174, -8, !dbg !836
  %176 = icmp eq i8 %175, 48, !dbg !836
  br i1 %176, label %177, label %183, !dbg !836

; <label>:177:                                    ; preds = %170
  %178 = shl i8 %173, 3, !dbg !837
  %179 = getelementptr inbounds i8, i8* %171, i64 1, !dbg !838
  call void @llvm.dbg.value(metadata i8* %179, metadata !671, metadata !DIExpression()), !dbg !761
  %180 = add i8 %174, -48, !dbg !839
  %181 = add i8 %180, %178, !dbg !840
  call void @llvm.dbg.value(metadata i8 %181, metadata !675, metadata !DIExpression()), !dbg !766
  %182 = load i8, i8* %179, align 1, !dbg !841, !tbaa !723
  br label %183, !dbg !843

; <label>:183:                                    ; preds = %177, %170
  %184 = phi i8 [ %182, %177 ], [ %174, %170 ], !dbg !841
  %185 = phi i8* [ %179, %177 ], [ %171, %170 ], !dbg !763
  %186 = phi i8 [ %181, %177 ], [ %173, %170 ], !dbg !832
  call void @llvm.dbg.value(metadata i8 %186, metadata !675, metadata !DIExpression()), !dbg !766
  call void @llvm.dbg.value(metadata i8* %185, metadata !671, metadata !DIExpression()), !dbg !761
  %187 = and i8 %184, -8, !dbg !844
  %188 = icmp eq i8 %187, 48, !dbg !844
  br i1 %188, label %189, label %205, !dbg !844

; <label>:189:                                    ; preds = %183
  %190 = shl i8 %186, 3, !dbg !845
  %191 = getelementptr inbounds i8, i8* %185, i64 1, !dbg !846
  call void @llvm.dbg.value(metadata i8* %191, metadata !671, metadata !DIExpression()), !dbg !761
  %192 = add i8 %184, -48, !dbg !847
  %193 = add i8 %192, %190, !dbg !848
  call void @llvm.dbg.value(metadata i8 %193, metadata !675, metadata !DIExpression()), !dbg !766
  br label %205, !dbg !849

; <label>:194:                                    ; preds = %119, %109
  call void @llvm.dbg.value(metadata i8 %107, metadata !675, metadata !DIExpression()), !dbg !766
  call void @llvm.dbg.value(metadata i8* %110, metadata !671, metadata !DIExpression()), !dbg !761
  call void @llvm.dbg.value(metadata i32 92, metadata !850, metadata !DIExpression()) #10, !dbg !856
  %195 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !858, !tbaa !609
  %196 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %195, i64 0, i32 5, !dbg !858
  %197 = load i8*, i8** %196, align 8, !dbg !858, !tbaa !859
  %198 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %195, i64 0, i32 6, !dbg !858
  %199 = load i8*, i8** %198, align 8, !dbg !858, !tbaa !863
  %200 = icmp ult i8* %197, %199, !dbg !858
  br i1 %200, label %203, label %201, !dbg !858, !prof !864

; <label>:201:                                    ; preds = %194
  %202 = tail call i32 @__overflow(%struct._IO_FILE* %195, i32 92) #10, !dbg !858
  br label %205, !dbg !858

; <label>:203:                                    ; preds = %194
  %204 = getelementptr inbounds i8, i8* %197, i64 1, !dbg !858
  store i8* %204, i8** %196, align 8, !dbg !858, !tbaa !859
  store i8 92, i8* %197, align 1, !dbg !858, !tbaa !723
  br label %205, !dbg !858

; <label>:205:                                    ; preds = %203, %201, %160, %102, %106, %111, %112, %113, %114, %115, %116, %117, %118, %109, %164, %189, %183
  %206 = phi i8* [ %110, %109 ], [ %191, %189 ], [ %185, %183 ], [ %110, %164 ], [ %110, %118 ], [ %110, %117 ], [ %110, %116 ], [ %110, %115 ], [ %110, %114 ], [ %110, %113 ], [ %110, %112 ], [ %110, %111 ], [ %104, %106 ], [ %104, %102 ], [ %161, %160 ], [ %110, %201 ], [ %110, %203 ], !dbg !865
  %207 = phi i8 [ %107, %109 ], [ %193, %189 ], [ %186, %183 ], [ 0, %164 ], [ 11, %118 ], [ 9, %117 ], [ 13, %116 ], [ 10, %115 ], [ 12, %114 ], [ 27, %113 ], [ 8, %112 ], [ 7, %111 ], [ 92, %106 ], [ %105, %102 ], [ %163, %160 ], [ %107, %201 ], [ %107, %203 ], !dbg !865
  call void @llvm.dbg.value(metadata i8 %207, metadata !675, metadata !DIExpression()), !dbg !766
  call void @llvm.dbg.value(metadata i8* %206, metadata !671, metadata !DIExpression()), !dbg !761
  %208 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !866, !tbaa !609
  %209 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %208, i64 0, i32 5, !dbg !866
  %210 = load i8*, i8** %209, align 8, !dbg !866, !tbaa !859
  %211 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %208, i64 0, i32 6, !dbg !866
  %212 = load i8*, i8** %211, align 8, !dbg !866, !tbaa !863
  %213 = icmp ult i8* %210, %212, !dbg !866
  br i1 %213, label %218, label %214, !dbg !866, !prof !864

; <label>:214:                                    ; preds = %205
  %215 = zext i8 %207 to i32, !dbg !868
  call void @llvm.dbg.value(metadata i32 %215, metadata !850, metadata !DIExpression()) #10, !dbg !869
  %216 = tail call i32 @__overflow(%struct._IO_FILE* %208, i32 %215) #10, !dbg !866
  br label %217, !dbg !866

; <label>:217:                                    ; preds = %214, %218
  br label %102, !dbg !761, !llvm.loop !870

; <label>:218:                                    ; preds = %205
  %219 = getelementptr inbounds i8, i8* %210, i64 1, !dbg !866
  store i8* %219, i8** %209, align 8, !dbg !866, !tbaa !859
  store i8 %207, i8* %210, align 1, !dbg !866, !tbaa !723
  br label %217, !dbg !866

; <label>:220:                                    ; preds = %102
  %221 = add nsw i32 %100, -1, !dbg !872
  %222 = getelementptr inbounds i8*, i8** %99, i64 1, !dbg !873
  %223 = icmp sgt i32 %100, 1, !dbg !874
  br i1 %223, label %224, label %258, !dbg !876

; <label>:224:                                    ; preds = %220
  call void @llvm.dbg.value(metadata i32 32, metadata !850, metadata !DIExpression()) #10, !dbg !877
  %225 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !879, !tbaa !609
  %226 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %225, i64 0, i32 5, !dbg !879
  %227 = load i8*, i8** %226, align 8, !dbg !879, !tbaa !859
  %228 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %225, i64 0, i32 6, !dbg !879
  %229 = load i8*, i8** %228, align 8, !dbg !879, !tbaa !863
  %230 = icmp ult i8* %227, %229, !dbg !879
  br i1 %230, label %233, label %231, !dbg !879, !prof !864

; <label>:231:                                    ; preds = %224
  %232 = tail call i32 @__overflow(%struct._IO_FILE* %225, i32 32) #10, !dbg !879
  br label %235, !dbg !879

; <label>:233:                                    ; preds = %224
  %234 = getelementptr inbounds i8, i8* %227, i64 1, !dbg !879
  store i8* %234, i8** %226, align 8, !dbg !879, !tbaa !859
  store i8 32, i8* %227, align 1, !dbg !879, !tbaa !723
  br label %235, !dbg !879

; <label>:235:                                    ; preds = %233, %231
  br label %98, !dbg !683

; <label>:236:                                    ; preds = %94, %256
  %237 = phi i8** [ %243, %256 ], [ %96, %94 ]
  %238 = phi i32 [ %242, %256 ], [ %95, %94 ]
  call void @llvm.dbg.value(metadata i8** %237, metadata !663, metadata !DIExpression()), !dbg !683
  call void @llvm.dbg.value(metadata i32 %238, metadata !662, metadata !DIExpression()), !dbg !682
  %239 = load i8*, i8** %237, align 8, !dbg !758, !tbaa !609
  %240 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !758, !tbaa !609
  %241 = tail call i32 @fputs_unlocked(i8* %239, %struct._IO_FILE* %240), !dbg !758
  %242 = add nsw i32 %238, -1, !dbg !880
  %243 = getelementptr inbounds i8*, i8** %237, i64 1, !dbg !881
  %244 = icmp eq i32 %238, 1, !dbg !882
  br i1 %244, label %258, label %245, !dbg !884

; <label>:245:                                    ; preds = %236
  call void @llvm.dbg.value(metadata i32 32, metadata !850, metadata !DIExpression()) #10, !dbg !885
  %246 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !887, !tbaa !609
  %247 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %246, i64 0, i32 5, !dbg !887
  %248 = load i8*, i8** %247, align 8, !dbg !887, !tbaa !859
  %249 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %246, i64 0, i32 6, !dbg !887
  %250 = load i8*, i8** %249, align 8, !dbg !887, !tbaa !863
  %251 = icmp ult i8* %248, %250, !dbg !887
  br i1 %251, label %254, label %252, !dbg !887, !prof !864

; <label>:252:                                    ; preds = %245
  %253 = tail call i32 @__overflow(%struct._IO_FILE* %246, i32 32) #10, !dbg !887
  br label %256, !dbg !887

; <label>:254:                                    ; preds = %245
  %255 = getelementptr inbounds i8, i8* %248, i64 1, !dbg !887
  store i8* %255, i8** %247, align 8, !dbg !887, !tbaa !859
  store i8 32, i8* %248, align 1, !dbg !887, !tbaa !723
  br label %256, !dbg !887

; <label>:256:                                    ; preds = %254, %252
  call void @llvm.dbg.value(metadata i8** %243, metadata !663, metadata !DIExpression()), !dbg !683
  call void @llvm.dbg.value(metadata i32 %242, metadata !662, metadata !DIExpression()), !dbg !682
  %257 = icmp sgt i32 %238, 1, !dbg !888
  br i1 %257, label %236, label %258, !dbg !718, !llvm.loop !889

; <label>:258:                                    ; preds = %220, %236, %256, %92, %93
  %259 = phi i8 [ %87, %92 ], [ %87, %93 ], [ %97, %256 ], [ %97, %236 ], [ %87, %220 ]
  %260 = and i8 %259, 1, !dbg !891
  %261 = icmp eq i8 %260, 0, !dbg !891
  br i1 %261, label %273, label %262, !dbg !893

; <label>:262:                                    ; preds = %37, %258
  call void @llvm.dbg.value(metadata i32 10, metadata !850, metadata !DIExpression()) #10, !dbg !894
  %263 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !896, !tbaa !609
  %264 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %263, i64 0, i32 5, !dbg !896
  %265 = load i8*, i8** %264, align 8, !dbg !896, !tbaa !859
  %266 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %263, i64 0, i32 6, !dbg !896
  %267 = load i8*, i8** %266, align 8, !dbg !896, !tbaa !863
  %268 = icmp ult i8* %265, %267, !dbg !896
  br i1 %268, label %271, label %269, !dbg !896, !prof !864

; <label>:269:                                    ; preds = %262
  %270 = tail call i32 @__overflow(%struct._IO_FILE* %263, i32 10) #10, !dbg !896
  br label %273, !dbg !896

; <label>:271:                                    ; preds = %262
  %272 = getelementptr inbounds i8, i8* %265, i64 1, !dbg !896
  store i8* %272, i8** %264, align 8, !dbg !896, !tbaa !859
  store i8 10, i8* %265, align 1, !dbg !896, !tbaa !723
  br label %273, !dbg !896

; <label>:273:                                    ; preds = %109, %271, %269, %258, %30
  ret i32 0, !dbg !897
}

; Function Attrs: nounwind readonly
declare i8* @getenv(i8* nocapture) local_unnamed_addr #5

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #8

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_file_name(i8*) local_unnamed_addr #7 !dbg !898 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !900, metadata !DIExpression()), !dbg !901
  store i8* %0, i8** @file_name, align 8, !dbg !902, !tbaa !609
  ret void, !dbg !903
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #7 !dbg !904 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i1 %0, metadata !908, metadata !DIExpression()), !dbg !909
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !910, !tbaa !911
  ret void, !dbg !913
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #7 !dbg !914 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !921, !tbaa !609
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #10, !dbg !922
  %3 = icmp eq i32 %2, 0, !dbg !923
  br i1 %3, label %22, label %4, !dbg !924

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !925, !tbaa !911, !range !926
  %6 = icmp eq i8 %5, 0, !dbg !925
  br i1 %6, label %11, label %7, !dbg !927

; <label>:7:                                      ; preds = %4
  %8 = tail call i32* @__errno_location() #17, !dbg !928
  %9 = load i32, i32* %8, align 4, !dbg !928, !tbaa !929
  %10 = icmp eq i32 %9, 32, !dbg !930
  br i1 %10, label %22, label %11, !dbg !931

; <label>:11:                                     ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.39, i64 0, i64 0), i32 5) #10, !dbg !932
  call void @llvm.dbg.value(metadata i8* %12, metadata !918, metadata !DIExpression()), !dbg !933
  %13 = load i8*, i8** @file_name, align 8, !dbg !934, !tbaa !609
  %14 = icmp eq i8* %13, null, !dbg !934
  %15 = tail call i32* @__errno_location() #17, !dbg !936
  %16 = load i32, i32* %15, align 4, !dbg !936, !tbaa !929
  br i1 %14, label %19, label %17, !dbg !937

; <label>:17:                                     ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #10, !dbg !938
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.40, i64 0, i64 0), i8* %18, i8* %12) #10, !dbg !939
  br label %20, !dbg !939

; <label>:19:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.41, i64 0, i64 0), i8* %12) #10, !dbg !940
  br label %20

; <label>:20:                                     ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !941, !tbaa !929
  tail call void @_exit(i32 %21) #15, !dbg !942
  unreachable, !dbg !942

; <label>:22:                                     ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !943, !tbaa !609
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #10, !dbg !945
  %25 = icmp eq i32 %24, 0, !dbg !946
  br i1 %25, label %28, label %26, !dbg !947

; <label>:26:                                     ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !948, !tbaa !929
  tail call void @_exit(i32 %27) #15, !dbg !949
  unreachable, !dbg !949

; <label>:28:                                     ; preds = %22
  ret void, !dbg !950
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8*) local_unnamed_addr #7 !dbg !951 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !953, metadata !DIExpression()), !dbg !956
  %2 = icmp eq i8* %0, null, !dbg !957
  br i1 %2, label %3, label %6, !dbg !959

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !960, !tbaa !609
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.48, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !962
  tail call void @abort() #15, !dbg !963
  unreachable, !dbg !963

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !964
  call void @llvm.dbg.value(metadata i8* %7, metadata !954, metadata !DIExpression()), !dbg !965
  %8 = icmp eq i8* %7, null, !dbg !966
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !967
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !968
  call void @llvm.dbg.value(metadata i8* %10, metadata !955, metadata !DIExpression()), !dbg !969
  %11 = ptrtoint i8* %10 to i64, !dbg !970
  %12 = ptrtoint i8* %0 to i64, !dbg !970
  %13 = sub i64 %11, %12, !dbg !970
  %14 = icmp sgt i64 %13, 6, !dbg !972
  br i1 %14, label %15, label %24, !dbg !973

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !974
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.49, i64 0, i64 0), i64 7) #14, !dbg !975
  %18 = icmp eq i32 %17, 0, !dbg !976
  br i1 %18, label %19, label %24, !dbg !977

; <label>:19:                                     ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !953, metadata !DIExpression()), !dbg !956
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.50, i64 0, i64 0), i64 3) #14, !dbg !978
  %21 = icmp eq i32 %20, 0, !dbg !981
  br i1 %21, label %22, label %24, !dbg !982

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !983
  call void @llvm.dbg.value(metadata i8* %23, metadata !953, metadata !DIExpression()), !dbg !956
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !985, !tbaa !609
  br label %24, !dbg !986

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !953, metadata !DIExpression()), !dbg !956
  store i8* %25, i8** @program_name, align 8, !dbg !987, !tbaa !609
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !988, !tbaa !609
  ret void, !dbg !989
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #10

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #7 !dbg !990 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !995, metadata !DIExpression()), !dbg !998
  %2 = tail call i32* @__errno_location() #17, !dbg !999
  %3 = load i32, i32* %2, align 4, !dbg !999, !tbaa !929
  call void @llvm.dbg.value(metadata i32 %3, metadata !996, metadata !DIExpression()), !dbg !1000
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1001
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1001
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1001
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #10, !dbg !1002
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1002
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !997, metadata !DIExpression()), !dbg !1003
  store i32 %3, i32* %2, align 4, !dbg !1004, !tbaa !929
  ret %struct.quoting_options* %8, !dbg !1005
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !1006 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1012, metadata !DIExpression()), !dbg !1013
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1014
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1014
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1015
  %5 = load i32, i32* %4, align 8, !dbg !1015, !tbaa !1016
  ret i32 %5, !dbg !1018
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !1019 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1023, metadata !DIExpression()), !dbg !1025
  call void @llvm.dbg.value(metadata i32 %1, metadata !1024, metadata !DIExpression()), !dbg !1026
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1027
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1027
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1028
  store i32 %1, i32* %5, align 8, !dbg !1029, !tbaa !1016
  ret void, !dbg !1030
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #7 !dbg !1031 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1035, metadata !DIExpression()), !dbg !1043
  call void @llvm.dbg.value(metadata i8 %1, metadata !1036, metadata !DIExpression()), !dbg !1044
  call void @llvm.dbg.value(metadata i32 %2, metadata !1037, metadata !DIExpression()), !dbg !1045
  call void @llvm.dbg.value(metadata i8 %1, metadata !1038, metadata !DIExpression()), !dbg !1046
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1047
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1047
  %6 = lshr i8 %1, 5, !dbg !1048
  %7 = zext i8 %6 to i64, !dbg !1048
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1049
  call void @llvm.dbg.value(metadata i32* %8, metadata !1039, metadata !DIExpression()), !dbg !1050
  %9 = and i8 %1, 31, !dbg !1051
  %10 = zext i8 %9 to i32, !dbg !1051
  call void @llvm.dbg.value(metadata i32 %10, metadata !1041, metadata !DIExpression()), !dbg !1052
  %11 = load i32, i32* %8, align 4, !dbg !1053, !tbaa !929
  %12 = lshr i32 %11, %10, !dbg !1054
  %13 = and i32 %12, 1, !dbg !1055
  call void @llvm.dbg.value(metadata i32 %13, metadata !1042, metadata !DIExpression()), !dbg !1056
  %14 = and i32 %2, 1, !dbg !1057
  %15 = xor i32 %13, %14, !dbg !1058
  %16 = shl i32 %15, %10, !dbg !1059
  %17 = xor i32 %16, %11, !dbg !1060
  store i32 %17, i32* %8, align 4, !dbg !1060, !tbaa !929
  ret i32 %13, !dbg !1061
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !1062 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1066, metadata !DIExpression()), !dbg !1069
  call void @llvm.dbg.value(metadata i32 %1, metadata !1067, metadata !DIExpression()), !dbg !1070
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1071
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1073
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1066, metadata !DIExpression()), !dbg !1069
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1074
  %6 = load i32, i32* %5, align 4, !dbg !1074, !tbaa !1075
  call void @llvm.dbg.value(metadata i32 %6, metadata !1068, metadata !DIExpression()), !dbg !1076
  store i32 %1, i32* %5, align 4, !dbg !1077, !tbaa !1075
  ret i32 %6, !dbg !1078
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #7 !dbg !1079 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1083, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i8* %1, metadata !1084, metadata !DIExpression()), !dbg !1087
  call void @llvm.dbg.value(metadata i8* %2, metadata !1085, metadata !DIExpression()), !dbg !1088
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1089
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1091
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1083, metadata !DIExpression()), !dbg !1086
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1092
  store i32 10, i32* %6, align 8, !dbg !1093, !tbaa !1016
  %7 = icmp ne i8* %1, null, !dbg !1094
  %8 = icmp ne i8* %2, null, !dbg !1096
  %9 = and i1 %7, %8, !dbg !1097
  br i1 %9, label %11, label %10, !dbg !1097

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !1098
  unreachable, !dbg !1098

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1099
  store i8* %1, i8** %12, align 8, !dbg !1100, !tbaa !1101
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1102
  store i8* %2, i8** %13, align 8, !dbg !1103, !tbaa !1104
  ret void, !dbg !1105
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #7 !dbg !1106 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1110, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata i64 %1, metadata !1111, metadata !DIExpression()), !dbg !1119
  call void @llvm.dbg.value(metadata i8* %2, metadata !1112, metadata !DIExpression()), !dbg !1120
  call void @llvm.dbg.value(metadata i64 %3, metadata !1113, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1114, metadata !DIExpression()), !dbg !1122
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1123
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1123
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1115, metadata !DIExpression()), !dbg !1124
  %8 = tail call i32* @__errno_location() #17, !dbg !1125
  %9 = load i32, i32* %8, align 4, !dbg !1125, !tbaa !929
  call void @llvm.dbg.value(metadata i32 %9, metadata !1116, metadata !DIExpression()), !dbg !1126
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1127
  %11 = load i32, i32* %10, align 8, !dbg !1127, !tbaa !1016
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1128
  %13 = load i32, i32* %12, align 4, !dbg !1128, !tbaa !1075
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1129
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1130
  %16 = load i8*, i8** %15, align 8, !dbg !1130, !tbaa !1101
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1131
  %18 = load i8*, i8** %17, align 8, !dbg !1131, !tbaa !1104
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1132
  call void @llvm.dbg.value(metadata i64 %19, metadata !1117, metadata !DIExpression()), !dbg !1133
  store i32 %9, i32* %8, align 4, !dbg !1134, !tbaa !929
  ret i64 %19, !dbg !1135
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #7 !dbg !1136 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1142, metadata !DIExpression()), !dbg !1206
  call void @llvm.dbg.value(metadata i64 %1, metadata !1143, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata i8* %2, metadata !1144, metadata !DIExpression()), !dbg !1208
  call void @llvm.dbg.value(metadata i64 %3, metadata !1145, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata i32 %4, metadata !1146, metadata !DIExpression()), !dbg !1210
  call void @llvm.dbg.value(metadata i32 %5, metadata !1147, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.value(metadata i32* %6, metadata !1148, metadata !DIExpression()), !dbg !1212
  call void @llvm.dbg.value(metadata i8* %7, metadata !1149, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.value(metadata i8* %8, metadata !1150, metadata !DIExpression()), !dbg !1214
  call void @llvm.dbg.value(metadata i64 0, metadata !1152, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i64 0, metadata !1153, metadata !DIExpression()), !dbg !1216
  call void @llvm.dbg.value(metadata i8* null, metadata !1154, metadata !DIExpression()), !dbg !1217
  call void @llvm.dbg.value(metadata i64 0, metadata !1155, metadata !DIExpression()), !dbg !1218
  call void @llvm.dbg.value(metadata i8 0, metadata !1156, metadata !DIExpression()), !dbg !1219
  %13 = tail call i64 @__ctype_get_mb_cur_max() #10, !dbg !1220
  %14 = icmp eq i64 %13, 1, !dbg !1221
  %15 = lshr i32 %5, 1, !dbg !1222
  %16 = trunc i32 %15 to i8, !dbg !1222
  %17 = and i8 %16, 1, !dbg !1222
  call void @llvm.dbg.value(metadata i8 %17, metadata !1158, metadata !DIExpression()), !dbg !1222
  call void @llvm.dbg.value(metadata i8 0, metadata !1159, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.value(metadata i8 0, metadata !1160, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata i8 1, metadata !1161, metadata !DIExpression()), !dbg !1225
  %18 = icmp ne i32* %6, null
  %19 = bitcast i64* %10 to i8*
  %20 = icmp eq i32* %6, null
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 4
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr inbounds i8, i8* %2, i64 1
  %26 = bitcast i32* %12 to i8*
  br label %27, !dbg !1226

; <label>:27:                                     ; preds = %634, %9
  %28 = phi i32 [ %4, %9 ], [ %94, %634 ]
  %29 = phi i8* [ %7, %9 ], [ %95, %634 ]
  %30 = phi i8* [ %8, %9 ], [ %96, %634 ]
  %31 = phi i64 [ 0, %9 ], [ %124, %634 ], !dbg !1216
  %32 = phi i8* [ null, %9 ], [ %98, %634 ], !dbg !1217
  %33 = phi i64 [ 0, %9 ], [ %99, %634 ], !dbg !1218
  %34 = phi i8 [ 0, %9 ], [ %100, %634 ], !dbg !1219
  %35 = phi i64 [ %3, %9 ], [ %618, %634 ]
  %36 = phi i8 [ %17, %9 ], [ %101, %634 ], !dbg !1227
  %37 = phi i8 [ 0, %9 ], [ %126, %634 ], !dbg !1223
  %38 = phi i8 [ 0, %9 ], [ %127, %634 ], !dbg !1224
  %39 = phi i8 [ 1, %9 ], [ %128, %634 ], !dbg !1225
  %40 = phi i64 [ %1, %9 ], [ %124, %634 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !1143, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata i8 %39, metadata !1161, metadata !DIExpression()), !dbg !1225
  call void @llvm.dbg.value(metadata i8 %38, metadata !1160, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata i8 %37, metadata !1159, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.value(metadata i8 %36, metadata !1158, metadata !DIExpression()), !dbg !1222
  call void @llvm.dbg.value(metadata i64 %35, metadata !1145, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata i8 %34, metadata !1156, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata i64 %33, metadata !1155, metadata !DIExpression()), !dbg !1218
  call void @llvm.dbg.value(metadata i8* %32, metadata !1154, metadata !DIExpression()), !dbg !1217
  call void @llvm.dbg.value(metadata i64 %31, metadata !1153, metadata !DIExpression()), !dbg !1216
  call void @llvm.dbg.value(metadata i64 0, metadata !1152, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i8* %30, metadata !1150, metadata !DIExpression()), !dbg !1214
  call void @llvm.dbg.value(metadata i8* %29, metadata !1149, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.value(metadata i32 %28, metadata !1146, metadata !DIExpression()), !dbg !1210
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
  ], !dbg !1229

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, metadata !1146, metadata !DIExpression()), !dbg !1210
  call void @llvm.dbg.value(metadata i8 1, metadata !1158, metadata !DIExpression()), !dbg !1222
  call void @llvm.dbg.value(metadata i8 %36, metadata !1158, metadata !DIExpression()), !dbg !1222
  call void @llvm.dbg.value(metadata i32 5, metadata !1146, metadata !DIExpression()), !dbg !1210
  br label %93, !dbg !1230

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, metadata !1158, metadata !DIExpression()), !dbg !1222
  call void @llvm.dbg.value(metadata i32 5, metadata !1146, metadata !DIExpression()), !dbg !1210
  %43 = and i8 %36, 1, !dbg !1231
  %44 = icmp eq i8 %43, 0, !dbg !1231
  br i1 %44, label %45, label %93, !dbg !1230

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1233
  br i1 %46, label %93, label %47, !dbg !1236

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1233, !tbaa !723
  br label %93, !dbg !1233

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.61, i64 0, i64 0), i32 %28), !dbg !1237
  call void @llvm.dbg.value(metadata i8* %49, metadata !1149, metadata !DIExpression()), !dbg !1213
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.62, i64 0, i64 0), i32 %28), !dbg !1241
  call void @llvm.dbg.value(metadata i8* %50, metadata !1150, metadata !DIExpression()), !dbg !1214
  br label %51, !dbg !1242

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, metadata !1150, metadata !DIExpression()), !dbg !1214
  call void @llvm.dbg.value(metadata i8* %52, metadata !1149, metadata !DIExpression()), !dbg !1213
  %54 = and i8 %36, 1, !dbg !1243
  %55 = icmp eq i8 %54, 0, !dbg !1243
  br i1 %55, label %56, label %71, !dbg !1245

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, metadata !1154, metadata !DIExpression()), !dbg !1217
  call void @llvm.dbg.value(metadata i64 0, metadata !1152, metadata !DIExpression()), !dbg !1215
  %57 = load i8, i8* %52, align 1, !dbg !1246, !tbaa !723
  %58 = icmp eq i8 %57, 0, !dbg !1249
  br i1 %58, label %71, label %59, !dbg !1249

; <label>:59:                                     ; preds = %56, %66
  %60 = phi i8 [ %69, %66 ], [ %57, %56 ]
  %61 = phi i8* [ %68, %66 ], [ %52, %56 ]
  %62 = phi i64 [ %67, %66 ], [ 0, %56 ]
  call void @llvm.dbg.value(metadata i8* %61, metadata !1154, metadata !DIExpression()), !dbg !1217
  call void @llvm.dbg.value(metadata i64 %62, metadata !1152, metadata !DIExpression()), !dbg !1215
  %63 = icmp ult i64 %62, %40, !dbg !1250
  br i1 %63, label %64, label %66, !dbg !1253

; <label>:64:                                     ; preds = %59
  %65 = getelementptr inbounds i8, i8* %0, i64 %62, !dbg !1250
  store i8 %60, i8* %65, align 1, !dbg !1250, !tbaa !723
  br label %66, !dbg !1250

; <label>:66:                                     ; preds = %64, %59
  %67 = add i64 %62, 1, !dbg !1253
  %68 = getelementptr inbounds i8, i8* %61, i64 1, !dbg !1254
  call void @llvm.dbg.value(metadata i8* %68, metadata !1154, metadata !DIExpression()), !dbg !1217
  call void @llvm.dbg.value(metadata i64 %67, metadata !1152, metadata !DIExpression()), !dbg !1215
  %69 = load i8, i8* %68, align 1, !dbg !1246, !tbaa !723
  %70 = icmp eq i8 %69, 0, !dbg !1249
  br i1 %70, label %71, label %59, !dbg !1249, !llvm.loop !1255

; <label>:71:                                     ; preds = %66, %56, %51
  %72 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %67, %66 ], !dbg !1215
  call void @llvm.dbg.value(metadata i64 %72, metadata !1152, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i8 1, metadata !1156, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata i8* %53, metadata !1154, metadata !DIExpression()), !dbg !1217
  %73 = call i64 @strlen(i8* %53) #14, !dbg !1257
  call void @llvm.dbg.value(metadata i64 %73, metadata !1155, metadata !DIExpression()), !dbg !1218
  br label %93, !dbg !1258

; <label>:74:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !1156, metadata !DIExpression()), !dbg !1219
  br label %75, !dbg !1259

; <label>:75:                                     ; preds = %27, %74
  %76 = phi i8 [ %34, %27 ], [ 1, %74 ], !dbg !1227
  call void @llvm.dbg.value(metadata i8 %76, metadata !1156, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata i8 1, metadata !1158, metadata !DIExpression()), !dbg !1222
  br label %77, !dbg !1260

; <label>:77:                                     ; preds = %27, %75
  %78 = phi i8 [ %34, %27 ], [ %76, %75 ], !dbg !1219
  %79 = phi i8 [ %36, %27 ], [ 1, %75 ], !dbg !1227
  call void @llvm.dbg.value(metadata i8 %79, metadata !1158, metadata !DIExpression()), !dbg !1222
  call void @llvm.dbg.value(metadata i8 %78, metadata !1156, metadata !DIExpression()), !dbg !1219
  %80 = and i8 %79, 1, !dbg !1261
  %81 = icmp eq i8 %80, 0, !dbg !1261
  %82 = select i1 %81, i8 1, i8 %78, !dbg !1263
  br label %83, !dbg !1263

; <label>:83:                                     ; preds = %77, %27
  %84 = phi i8 [ %34, %27 ], [ %82, %77 ], !dbg !1264
  %85 = phi i8 [ %36, %27 ], [ %79, %77 ], !dbg !1222
  call void @llvm.dbg.value(metadata i8 %85, metadata !1158, metadata !DIExpression()), !dbg !1222
  call void @llvm.dbg.value(metadata i8 %84, metadata !1156, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata i32 2, metadata !1146, metadata !DIExpression()), !dbg !1210
  %86 = and i8 %85, 1, !dbg !1265
  %87 = icmp eq i8 %86, 0, !dbg !1265
  br i1 %87, label %88, label %93, !dbg !1267

; <label>:88:                                     ; preds = %83
  %89 = icmp eq i64 %40, 0, !dbg !1268
  br i1 %89, label %93, label %90, !dbg !1271

; <label>:90:                                     ; preds = %88
  store i8 39, i8* %0, align 1, !dbg !1268, !tbaa !723
  br label %93, !dbg !1268

; <label>:91:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !1158, metadata !DIExpression()), !dbg !1222
  br label %93, !dbg !1272

; <label>:92:                                     ; preds = %27
  call void @abort() #15, !dbg !1273
  unreachable, !dbg !1273

; <label>:93:                                     ; preds = %41, %83, %88, %90, %27, %42, %45, %47, %91, %71
  %94 = phi i32 [ 0, %91 ], [ %28, %71 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ %28, %27 ], [ 2, %90 ], [ 2, %88 ], [ 2, %83 ], [ 5, %41 ]
  %95 = phi i8* [ %29, %91 ], [ %52, %71 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %90 ], [ %29, %88 ], [ %29, %83 ], [ %29, %41 ]
  %96 = phi i8* [ %30, %91 ], [ %53, %71 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %90 ], [ %30, %88 ], [ %30, %83 ], [ %30, %41 ]
  %97 = phi i64 [ 0, %91 ], [ %72, %71 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %90 ], [ 1, %88 ], [ 0, %83 ], [ 0, %41 ], !dbg !1215
  %98 = phi i8* [ %32, %91 ], [ %53, %71 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.63, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.63, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.63, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.62, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.62, i64 0, i64 0), %88 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.62, i64 0, i64 0), %83 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.63, i64 0, i64 0), %41 ], !dbg !1227
  %99 = phi i64 [ %33, %91 ], [ %73, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %90 ], [ 1, %88 ], [ 1, %83 ], [ 1, %41 ], !dbg !1227
  %100 = phi i8 [ %34, %91 ], [ 1, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %84, %90 ], [ %84, %88 ], [ %84, %83 ], [ 1, %41 ], !dbg !1227
  %101 = phi i8 [ 0, %91 ], [ %36, %71 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %85, %90 ], [ %85, %88 ], [ %85, %83 ], [ 1, %41 ], !dbg !1274
  call void @llvm.dbg.value(metadata i8 %101, metadata !1158, metadata !DIExpression()), !dbg !1222
  call void @llvm.dbg.value(metadata i8 %100, metadata !1156, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata i64 %99, metadata !1155, metadata !DIExpression()), !dbg !1218
  call void @llvm.dbg.value(metadata i8* %98, metadata !1154, metadata !DIExpression()), !dbg !1217
  call void @llvm.dbg.value(metadata i64 %97, metadata !1152, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i8* %96, metadata !1150, metadata !DIExpression()), !dbg !1214
  call void @llvm.dbg.value(metadata i8* %95, metadata !1149, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.value(metadata i32 %94, metadata !1146, metadata !DIExpression()), !dbg !1210
  call void @llvm.dbg.value(metadata i64 0, metadata !1151, metadata !DIExpression()), !dbg !1275
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
  br label %121, !dbg !1276

; <label>:121:                                    ; preds = %607, %93
  %122 = phi i64 [ 0, %93 ], [ %616, %607 ], !dbg !1277
  %123 = phi i64 [ %97, %93 ], [ %609, %607 ], !dbg !1215
  %124 = phi i64 [ %31, %93 ], [ %610, %607 ], !dbg !1216
  %125 = phi i64 [ %35, %93 ], [ %611, %607 ]
  %126 = phi i8 [ %37, %93 ], [ %612, %607 ], !dbg !1223
  %127 = phi i8 [ %38, %93 ], [ %613, %607 ], !dbg !1224
  %128 = phi i8 [ %39, %93 ], [ %614, %607 ], !dbg !1225
  %129 = phi i64 [ %40, %93 ], [ %615, %607 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !1143, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata i8 %128, metadata !1161, metadata !DIExpression()), !dbg !1225
  call void @llvm.dbg.value(metadata i8 %127, metadata !1160, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata i8 %126, metadata !1159, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.value(metadata i64 %125, metadata !1145, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata i64 %124, metadata !1153, metadata !DIExpression()), !dbg !1216
  call void @llvm.dbg.value(metadata i64 %123, metadata !1152, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i64 %122, metadata !1151, metadata !DIExpression()), !dbg !1275
  %130 = icmp eq i64 %125, -1, !dbg !1278
  br i1 %130, label %131, label %135, !dbg !1279

; <label>:131:                                    ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1280
  %133 = load i8, i8* %132, align 1, !dbg !1280, !tbaa !723
  %134 = icmp eq i8 %133, 0, !dbg !1281
  br i1 %134, label %617, label %137, !dbg !1282

; <label>:135:                                    ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !1283
  br i1 %136, label %617, label %137, !dbg !1282

; <label>:137:                                    ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !1167, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata i8 0, metadata !1168, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata i8 0, metadata !1169, metadata !DIExpression()), !dbg !1286
  br i1 %107, label %138, label %153, !dbg !1287

; <label>:138:                                    ; preds = %137
  %139 = add i64 %122, %99, !dbg !1289
  %140 = and i1 %108, %130, !dbg !1290
  br i1 %140, label %141, label %143, !dbg !1290

; <label>:141:                                    ; preds = %138
  %142 = call i64 @strlen(i8* %2) #14, !dbg !1291
  call void @llvm.dbg.value(metadata i64 %142, metadata !1145, metadata !DIExpression()), !dbg !1209
  br label %143, !dbg !1292

; <label>:143:                                    ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ]
  call void @llvm.dbg.value(metadata i64 %144, metadata !1145, metadata !DIExpression()), !dbg !1209
  %145 = icmp ugt i64 %139, %144, !dbg !1293
  br i1 %145, label %153, label %146, !dbg !1294

; <label>:146:                                    ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1295
  %148 = call i32 @memcmp(i8* %147, i8* %98, i64 %99) #14, !dbg !1296
  %149 = icmp ne i32 %148, 0, !dbg !1297
  %150 = or i1 %149, %110, !dbg !1298
  %151 = xor i1 %149, true, !dbg !1298
  %152 = zext i1 %151 to i8, !dbg !1298
  br i1 %150, label %153, label %661, !dbg !1298

; <label>:153:                                    ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !1299
  call void @llvm.dbg.value(metadata i8 %155, metadata !1167, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata i64 %154, metadata !1145, metadata !DIExpression()), !dbg !1209
  %156 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1300
  %157 = load i8, i8* %156, align 1, !dbg !1300, !tbaa !723
  call void @llvm.dbg.value(metadata i8 %157, metadata !1162, metadata !DIExpression()), !dbg !1301
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
  ], !dbg !1302

; <label>:158:                                    ; preds = %153
  br i1 %103, label %159, label %207, !dbg !1303

; <label>:159:                                    ; preds = %158
  br i1 %110, label %160, label %661, !dbg !1304

; <label>:160:                                    ; preds = %159
  call void @llvm.dbg.value(metadata i8 1, metadata !1168, metadata !DIExpression()), !dbg !1285
  %161 = and i8 %126, 1, !dbg !1308
  %162 = icmp eq i8 %161, 0, !dbg !1308
  %163 = and i1 %114, %162, !dbg !1308
  br i1 %163, label %164, label %180, !dbg !1308

; <label>:164:                                    ; preds = %160
  %165 = icmp ult i64 %123, %129, !dbg !1310
  br i1 %165, label %166, label %168, !dbg !1314

; <label>:166:                                    ; preds = %164
  %167 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1310
  store i8 39, i8* %167, align 1, !dbg !1310, !tbaa !723
  br label %168, !dbg !1310

; <label>:168:                                    ; preds = %166, %164
  %169 = add i64 %123, 1, !dbg !1314
  call void @llvm.dbg.value(metadata i64 %169, metadata !1152, metadata !DIExpression()), !dbg !1215
  %170 = icmp ult i64 %169, %129, !dbg !1315
  br i1 %170, label %171, label %173, !dbg !1318

; <label>:171:                                    ; preds = %168
  %172 = getelementptr inbounds i8, i8* %0, i64 %169, !dbg !1315
  store i8 36, i8* %172, align 1, !dbg !1315, !tbaa !723
  br label %173, !dbg !1315

; <label>:173:                                    ; preds = %171, %168
  %174 = add i64 %123, 2, !dbg !1318
  call void @llvm.dbg.value(metadata i64 %174, metadata !1152, metadata !DIExpression()), !dbg !1215
  %175 = icmp ult i64 %174, %129, !dbg !1319
  br i1 %175, label %176, label %178, !dbg !1322

; <label>:176:                                    ; preds = %173
  %177 = getelementptr inbounds i8, i8* %0, i64 %174, !dbg !1319
  store i8 39, i8* %177, align 1, !dbg !1319, !tbaa !723
  br label %178, !dbg !1319

; <label>:178:                                    ; preds = %176, %173
  %179 = add i64 %123, 3, !dbg !1322
  call void @llvm.dbg.value(metadata i64 %179, metadata !1152, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i8 1, metadata !1159, metadata !DIExpression()), !dbg !1223
  br label %180, !dbg !1323

; <label>:180:                                    ; preds = %160, %178
  %181 = phi i64 [ %179, %178 ], [ %123, %160 ], !dbg !1274
  %182 = phi i8 [ 1, %178 ], [ %126, %160 ], !dbg !1274
  call void @llvm.dbg.value(metadata i8 %182, metadata !1159, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.value(metadata i64 %181, metadata !1152, metadata !DIExpression()), !dbg !1215
  %183 = icmp ult i64 %181, %129, !dbg !1324
  br i1 %183, label %184, label %186, !dbg !1327

; <label>:184:                                    ; preds = %180
  %185 = getelementptr inbounds i8, i8* %0, i64 %181, !dbg !1324
  store i8 92, i8* %185, align 1, !dbg !1324, !tbaa !723
  br label %186, !dbg !1324

; <label>:186:                                    ; preds = %184, %180
  %187 = add i64 %181, 1, !dbg !1327
  call void @llvm.dbg.value(metadata i64 %187, metadata !1152, metadata !DIExpression()), !dbg !1215
  br i1 %104, label %188, label %478, !dbg !1328

; <label>:188:                                    ; preds = %186
  %189 = add i64 %122, 1, !dbg !1330
  %190 = icmp ult i64 %189, %154, !dbg !1331
  br i1 %190, label %191, label %467, !dbg !1332

; <label>:191:                                    ; preds = %188
  %192 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !1333
  %193 = load i8, i8* %192, align 1, !dbg !1333, !tbaa !723
  %194 = add i8 %193, -48, !dbg !1334
  %195 = icmp ult i8 %194, 10, !dbg !1334
  br i1 %195, label %196, label %467, !dbg !1334

; <label>:196:                                    ; preds = %191
  %197 = icmp ult i64 %187, %129, !dbg !1335
  br i1 %197, label %198, label %200, !dbg !1339

; <label>:198:                                    ; preds = %196
  %199 = getelementptr inbounds i8, i8* %0, i64 %187, !dbg !1335
  store i8 48, i8* %199, align 1, !dbg !1335, !tbaa !723
  br label %200, !dbg !1335

; <label>:200:                                    ; preds = %198, %196
  %201 = add i64 %181, 2, !dbg !1339
  call void @llvm.dbg.value(metadata i64 %201, metadata !1152, metadata !DIExpression()), !dbg !1215
  %202 = icmp ult i64 %201, %129, !dbg !1340
  br i1 %202, label %203, label %205, !dbg !1343

; <label>:203:                                    ; preds = %200
  %204 = getelementptr inbounds i8, i8* %0, i64 %201, !dbg !1340
  store i8 48, i8* %204, align 1, !dbg !1340, !tbaa !723
  br label %205, !dbg !1340

; <label>:205:                                    ; preds = %203, %200
  %206 = add i64 %181, 3, !dbg !1343
  call void @llvm.dbg.value(metadata i64 %206, metadata !1152, metadata !DIExpression()), !dbg !1215
  br label %467, !dbg !1344

; <label>:207:                                    ; preds = %158
  br i1 %22, label %478, label %607, !dbg !1345

; <label>:208:                                    ; preds = %153
  switch i32 %94, label %467 [
    i32 2, label %209
    i32 5, label %210
  ], !dbg !1346

; <label>:209:                                    ; preds = %208
  br i1 %110, label %467, label %661, !dbg !1347

; <label>:210:                                    ; preds = %208
  br i1 %24, label %467, label %211, !dbg !1349

; <label>:211:                                    ; preds = %210
  %212 = add i64 %122, 2, !dbg !1351
  %213 = icmp ult i64 %212, %154, !dbg !1352
  br i1 %213, label %214, label %467, !dbg !1353

; <label>:214:                                    ; preds = %211
  %215 = add i64 %122, 1, !dbg !1354
  %216 = getelementptr inbounds i8, i8* %2, i64 %215, !dbg !1355
  %217 = load i8, i8* %216, align 1, !dbg !1355, !tbaa !723
  %218 = icmp eq i8 %217, 63, !dbg !1356
  br i1 %218, label %219, label %467, !dbg !1357

; <label>:219:                                    ; preds = %214
  %220 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !1358
  %221 = load i8, i8* %220, align 1, !dbg !1358, !tbaa !723
  %222 = sext i8 %221 to i32, !dbg !1358
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
  ], !dbg !1359

; <label>:223:                                    ; preds = %219, %219, %219, %219, %219, %219, %219, %219, %219
  br i1 %110, label %224, label %661, !dbg !1360

; <label>:224:                                    ; preds = %223
  call void @llvm.dbg.value(metadata i8 %221, metadata !1162, metadata !DIExpression()), !dbg !1301
  call void @llvm.dbg.value(metadata i64 %212, metadata !1151, metadata !DIExpression()), !dbg !1275
  %225 = icmp ult i64 %123, %129, !dbg !1362
  br i1 %225, label %226, label %228, !dbg !1365

; <label>:226:                                    ; preds = %224
  %227 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1362
  store i8 63, i8* %227, align 1, !dbg !1362, !tbaa !723
  br label %228, !dbg !1362

; <label>:228:                                    ; preds = %226, %224
  %229 = add i64 %123, 1, !dbg !1365
  call void @llvm.dbg.value(metadata i64 %229, metadata !1152, metadata !DIExpression()), !dbg !1215
  %230 = icmp ult i64 %229, %129, !dbg !1366
  br i1 %230, label %231, label %233, !dbg !1369

; <label>:231:                                    ; preds = %228
  %232 = getelementptr inbounds i8, i8* %0, i64 %229, !dbg !1366
  store i8 34, i8* %232, align 1, !dbg !1366, !tbaa !723
  br label %233, !dbg !1366

; <label>:233:                                    ; preds = %231, %228
  %234 = add i64 %123, 2, !dbg !1369
  call void @llvm.dbg.value(metadata i64 %234, metadata !1152, metadata !DIExpression()), !dbg !1215
  %235 = icmp ult i64 %234, %129, !dbg !1370
  br i1 %235, label %236, label %238, !dbg !1373

; <label>:236:                                    ; preds = %233
  %237 = getelementptr inbounds i8, i8* %0, i64 %234, !dbg !1370
  store i8 34, i8* %237, align 1, !dbg !1370, !tbaa !723
  br label %238, !dbg !1370

; <label>:238:                                    ; preds = %236, %233
  %239 = add i64 %123, 3, !dbg !1373
  call void @llvm.dbg.value(metadata i64 %239, metadata !1152, metadata !DIExpression()), !dbg !1215
  %240 = icmp ult i64 %239, %129, !dbg !1374
  br i1 %240, label %241, label %243, !dbg !1377

; <label>:241:                                    ; preds = %238
  %242 = getelementptr inbounds i8, i8* %0, i64 %239, !dbg !1374
  store i8 63, i8* %242, align 1, !dbg !1374, !tbaa !723
  br label %243, !dbg !1374

; <label>:243:                                    ; preds = %241, %238
  %244 = add i64 %123, 4, !dbg !1377
  call void @llvm.dbg.value(metadata i64 %244, metadata !1152, metadata !DIExpression()), !dbg !1215
  br label %467, !dbg !1378

; <label>:245:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !1166, metadata !DIExpression()), !dbg !1379
  br label %255, !dbg !1380

; <label>:246:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !1166, metadata !DIExpression()), !dbg !1379
  br label %255, !dbg !1381

; <label>:247:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !1166, metadata !DIExpression()), !dbg !1379
  br label %253, !dbg !1382

; <label>:248:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !1166, metadata !DIExpression()), !dbg !1379
  br label %253, !dbg !1383

; <label>:249:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !1166, metadata !DIExpression()), !dbg !1379
  br label %255, !dbg !1384

; <label>:250:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 %157, metadata !1166, metadata !DIExpression()), !dbg !1379
  br i1 %114, label %251, label %252, !dbg !1385

; <label>:251:                                    ; preds = %250
  br i1 %110, label %562, label %661, !dbg !1386

; <label>:252:                                    ; preds = %250
  br i1 %120, label %562, label %253, !dbg !1389

; <label>:253:                                    ; preds = %252, %153, %248, %247
  %254 = phi i8 [ 92, %252 ], [ 116, %248 ], [ 114, %247 ], [ 110, %153 ], !dbg !1391
  call void @llvm.dbg.value(metadata i8 %254, metadata !1166, metadata !DIExpression()), !dbg !1379
  br i1 %113, label %255, label %661, !dbg !1392

; <label>:255:                                    ; preds = %253, %153, %249, %246, %245
  %256 = phi i8 [ %254, %253 ], [ 118, %249 ], [ 102, %246 ], [ 98, %245 ], [ 97, %153 ], !dbg !1391
  call void @llvm.dbg.value(metadata i8 %256, metadata !1166, metadata !DIExpression()), !dbg !1379
  br i1 %103, label %524, label %478, !dbg !1394

; <label>:257:                                    ; preds = %153, %153
  %258 = icmp eq i64 %154, -1, !dbg !1395
  br i1 %258, label %259, label %264, !dbg !1397

; <label>:259:                                    ; preds = %257
  %260 = load i8, i8* %25, align 1, !dbg !1398, !tbaa !723
  %261 = icmp ne i8 %260, 0, !dbg !1399
  %262 = icmp ne i64 %122, 0, !dbg !1400
  %263 = or i1 %262, %261, !dbg !1402
  br i1 %263, label %467, label %270, !dbg !1402

; <label>:264:                                    ; preds = %257
  %265 = icmp ne i64 %154, 1, !dbg !1403
  %266 = icmp ne i64 %122, 0, !dbg !1400
  %267 = or i1 %266, %265, !dbg !1397
  br i1 %267, label %467, label %270, !dbg !1397

; <label>:268:                                    ; preds = %153, %153
  %269 = icmp eq i64 %122, 0, !dbg !1400
  br i1 %269, label %270, label %467, !dbg !1404

; <label>:270:                                    ; preds = %268, %264, %259, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1169, metadata !DIExpression()), !dbg !1286
  br label %271, !dbg !1405

; <label>:271:                                    ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %270
  %272 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %270 ], !dbg !1391
  call void @llvm.dbg.value(metadata i8 %272, metadata !1169, metadata !DIExpression()), !dbg !1286
  br i1 %113, label %467, label %661, !dbg !1406

; <label>:273:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1160, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata i8 1, metadata !1169, metadata !DIExpression()), !dbg !1286
  br i1 %114, label %274, label %467, !dbg !1408

; <label>:274:                                    ; preds = %273
  br i1 %110, label %275, label %661, !dbg !1409

; <label>:275:                                    ; preds = %274
  %276 = icmp eq i64 %129, 0, !dbg !1412
  %277 = icmp ne i64 %124, 0, !dbg !1414
  %278 = or i1 %277, %276, !dbg !1415
  %279 = select i1 %278, i64 %124, i64 %129, !dbg !1415
  %280 = select i1 %278, i64 %129, i64 0, !dbg !1415
  call void @llvm.dbg.value(metadata i64 %280, metadata !1143, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata i64 %279, metadata !1153, metadata !DIExpression()), !dbg !1216
  %281 = icmp ult i64 %123, %280, !dbg !1416
  br i1 %281, label %282, label %284, !dbg !1419

; <label>:282:                                    ; preds = %275
  %283 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1416
  store i8 39, i8* %283, align 1, !dbg !1416, !tbaa !723
  br label %284, !dbg !1416

; <label>:284:                                    ; preds = %282, %275
  %285 = add i64 %123, 1, !dbg !1419
  call void @llvm.dbg.value(metadata i64 %285, metadata !1152, metadata !DIExpression()), !dbg !1215
  %286 = icmp ult i64 %285, %280, !dbg !1420
  br i1 %286, label %287, label %289, !dbg !1423

; <label>:287:                                    ; preds = %284
  %288 = getelementptr inbounds i8, i8* %0, i64 %285, !dbg !1420
  store i8 92, i8* %288, align 1, !dbg !1420, !tbaa !723
  br label %289, !dbg !1420

; <label>:289:                                    ; preds = %287, %284
  %290 = add i64 %123, 2, !dbg !1423
  call void @llvm.dbg.value(metadata i64 %290, metadata !1152, metadata !DIExpression()), !dbg !1215
  %291 = icmp ult i64 %290, %280, !dbg !1424
  br i1 %291, label %292, label %294, !dbg !1427

; <label>:292:                                    ; preds = %289
  %293 = getelementptr inbounds i8, i8* %0, i64 %290, !dbg !1424
  store i8 39, i8* %293, align 1, !dbg !1424, !tbaa !723
  br label %294, !dbg !1424

; <label>:294:                                    ; preds = %292, %289
  %295 = add i64 %123, 3, !dbg !1427
  call void @llvm.dbg.value(metadata i64 %295, metadata !1152, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i8 0, metadata !1159, metadata !DIExpression()), !dbg !1223
  br label %467, !dbg !1428

; <label>:296:                                    ; preds = %153
  br i1 %14, label %297, label %306, !dbg !1429

; <label>:297:                                    ; preds = %296
  call void @llvm.dbg.value(metadata i64 1, metadata !1170, metadata !DIExpression()), !dbg !1430
  %298 = tail call i16** @__ctype_b_loc() #17, !dbg !1431
  %299 = load i16*, i16** %298, align 8, !dbg !1431, !tbaa !609
  %300 = zext i8 %157 to i64, !dbg !1431
  %301 = getelementptr inbounds i16, i16* %299, i64 %300, !dbg !1431
  %302 = load i16, i16* %301, align 2, !dbg !1431, !tbaa !783
  %303 = lshr i16 %302, 14, !dbg !1433
  %304 = trunc i16 %303 to i8, !dbg !1433
  %305 = and i8 %304, 1, !dbg !1433
  call void @llvm.dbg.value(metadata i8 %305, metadata !1173, metadata !DIExpression()), !dbg !1434
  br label %359, !dbg !1435

; <label>:306:                                    ; preds = %296
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %19) #10, !dbg !1436
  store i64 0, i64* %10, align 8, !dbg !1437
  call void @llvm.dbg.value(metadata i64 0, metadata !1170, metadata !DIExpression()), !dbg !1430
  call void @llvm.dbg.value(metadata i8 1, metadata !1173, metadata !DIExpression()), !dbg !1434
  %307 = icmp eq i64 %154, -1, !dbg !1438
  br i1 %307, label %308, label %310, !dbg !1440

; <label>:308:                                    ; preds = %306
  %309 = call i64 @strlen(i8* nonnull %2) #14, !dbg !1441
  call void @llvm.dbg.value(metadata i64 %309, metadata !1145, metadata !DIExpression()), !dbg !1209
  br label %310, !dbg !1442

; <label>:310:                                    ; preds = %308, %306
  %311 = phi i64 [ %309, %308 ], [ %154, %306 ], !dbg !1443
  call void @llvm.dbg.value(metadata i64 %311, metadata !1145, metadata !DIExpression()), !dbg !1209
  br label %312, !dbg !1444

; <label>:312:                                    ; preds = %347, %310
  %313 = phi i64 [ 0, %310 ], [ %352, %347 ], !dbg !1445
  %314 = phi i8 [ 1, %310 ], [ %351, %347 ], !dbg !1446
  call void @llvm.dbg.value(metadata i8 %314, metadata !1173, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata i64 %313, metadata !1170, metadata !DIExpression()), !dbg !1430
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #10, !dbg !1447
  %315 = add i64 %313, %122, !dbg !1448
  %316 = getelementptr inbounds i8, i8* %2, i64 %315, !dbg !1449
  %317 = sub i64 %311, %315, !dbg !1450
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !1174, metadata !DIExpression(DW_OP_deref)), !dbg !1451
  call void @llvm.dbg.value(metadata i32* %12, metadata !1192, metadata !DIExpression(DW_OP_deref)), !dbg !1452
  %318 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %316, i64 %317, %struct.__mbstate_t* nonnull %11) #10, !dbg !1453
  call void @llvm.dbg.value(metadata i64 %318, metadata !1195, metadata !DIExpression()), !dbg !1454
  switch i64 %318, label %331 [
    i64 0, label %343
    i64 -1, label %344
    i64 -2, label %319
  ], !dbg !1455

; <label>:319:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !1170, metadata !DIExpression()), !dbg !1430
  call void @llvm.dbg.value(metadata i64 %313, metadata !1170, metadata !DIExpression()), !dbg !1430
  call void @llvm.dbg.value(metadata i64 %313, metadata !1170, metadata !DIExpression()), !dbg !1430
  call void @llvm.dbg.value(metadata i64 %313, metadata !1170, metadata !DIExpression()), !dbg !1430
  call void @llvm.dbg.value(metadata i64 %313, metadata !1170, metadata !DIExpression()), !dbg !1430
  call void @llvm.dbg.value(metadata i64 %313, metadata !1170, metadata !DIExpression()), !dbg !1430
  %320 = icmp ugt i64 %311, %315, !dbg !1456
  br i1 %320, label %321, label %344, !dbg !1458

; <label>:321:                                    ; preds = %319, %327
  %322 = phi i64 [ %329, %327 ], [ %315, %319 ]
  %323 = phi i64 [ %328, %327 ], [ %313, %319 ]
  call void @llvm.dbg.value(metadata i64 %323, metadata !1170, metadata !DIExpression()), !dbg !1430
  %324 = getelementptr inbounds i8, i8* %2, i64 %322, !dbg !1459
  %325 = load i8, i8* %324, align 1, !dbg !1459, !tbaa !723
  %326 = icmp eq i8 %325, 0, !dbg !1458
  br i1 %326, label %344, label %327, !dbg !1460

; <label>:327:                                    ; preds = %321
  %328 = add i64 %323, 1, !dbg !1461
  call void @llvm.dbg.value(metadata i64 %328, metadata !1170, metadata !DIExpression()), !dbg !1430
  %329 = add i64 %328, %122, !dbg !1462
  %330 = icmp ult i64 %329, %311, !dbg !1456
  br i1 %330, label %321, label %344, !dbg !1458, !llvm.loop !1463

; <label>:331:                                    ; preds = %312
  %332 = icmp ugt i64 %318, 1, !dbg !1464
  %333 = and i1 %116, %332, !dbg !1467
  call void @llvm.dbg.value(metadata i64 1, metadata !1196, metadata !DIExpression()), !dbg !1468
  br i1 %333, label %334, label %347, !dbg !1467

; <label>:334:                                    ; preds = %331, %340
  %335 = phi i64 [ %341, %340 ], [ 1, %331 ]
  call void @llvm.dbg.value(metadata i64 %335, metadata !1196, metadata !DIExpression()), !dbg !1468
  %336 = add i64 %335, %315, !dbg !1469
  %337 = getelementptr inbounds i8, i8* %2, i64 %336, !dbg !1470
  %338 = load i8, i8* %337, align 1, !dbg !1470, !tbaa !723
  %339 = sext i8 %338 to i32, !dbg !1470
  switch i32 %339, label %340 [
    i32 91, label %358
    i32 92, label %358
    i32 94, label %358
    i32 96, label %358
    i32 124, label %358
  ], !dbg !1471

; <label>:340:                                    ; preds = %334
  %341 = add nuw i64 %335, 1, !dbg !1472
  call void @llvm.dbg.value(metadata i64 %341, metadata !1196, metadata !DIExpression()), !dbg !1468
  %342 = icmp ult i64 %341, %318, !dbg !1464
  br i1 %342, label %334, label %347, !dbg !1473, !llvm.loop !1474

; <label>:343:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !1170, metadata !DIExpression()), !dbg !1430
  call void @llvm.dbg.value(metadata i8 %314, metadata !1173, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata i64 %313, metadata !1170, metadata !DIExpression()), !dbg !1430
  call void @llvm.dbg.value(metadata i8 %314, metadata !1173, metadata !DIExpression()), !dbg !1434
  br label %344, !dbg !1476

; <label>:344:                                    ; preds = %327, %321, %312, %343, %319
  %345 = phi i64 [ %313, %319 ], [ %313, %343 ], [ %313, %312 ], [ %323, %321 ], [ %328, %327 ]
  %346 = phi i8 [ 0, %319 ], [ %314, %343 ], [ 0, %312 ], [ 0, %321 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i8 %351, metadata !1173, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata i64 %352, metadata !1170, metadata !DIExpression()), !dbg !1430
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #10, !dbg !1476
  br label %355

; <label>:347:                                    ; preds = %340, %331
  %348 = load i32, i32* %12, align 4, !dbg !1477, !tbaa !929
  call void @llvm.dbg.value(metadata i32 %348, metadata !1192, metadata !DIExpression()), !dbg !1452
  %349 = call i32 @iswprint(i32 %348) #10, !dbg !1479
  %350 = icmp eq i32 %349, 0, !dbg !1479
  %351 = select i1 %350, i8 0, i8 %314, !dbg !1480
  call void @llvm.dbg.value(metadata i8 %351, metadata !1173, metadata !DIExpression()), !dbg !1434
  %352 = add i64 %318, %313, !dbg !1481
  call void @llvm.dbg.value(metadata i64 %352, metadata !1170, metadata !DIExpression()), !dbg !1430
  call void @llvm.dbg.value(metadata i8 %351, metadata !1173, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata i64 %352, metadata !1170, metadata !DIExpression()), !dbg !1430
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #10, !dbg !1476
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !1174, metadata !DIExpression(DW_OP_deref)), !dbg !1451
  %353 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !1482
  %354 = icmp eq i32 %353, 0, !dbg !1483
  br i1 %354, label %312, label %355, !dbg !1484, !llvm.loop !1485

; <label>:355:                                    ; preds = %347, %344
  %356 = phi i8 [ %346, %344 ], [ %351, %347 ]
  %357 = phi i64 [ %345, %344 ], [ %352, %347 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #10, !dbg !1487
  br label %359

; <label>:358:                                    ; preds = %334, %334, %334, %334, %334
  call void @llvm.dbg.value(metadata i8* %95, metadata !1149, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.value(metadata i8* %95, metadata !1149, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.value(metadata i8* %95, metadata !1149, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.value(metadata i8* %95, metadata !1149, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.value(metadata i8* %95, metadata !1149, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.value(metadata i8* %96, metadata !1150, metadata !DIExpression()), !dbg !1214
  call void @llvm.dbg.value(metadata i8* %96, metadata !1150, metadata !DIExpression()), !dbg !1214
  call void @llvm.dbg.value(metadata i8* %96, metadata !1150, metadata !DIExpression()), !dbg !1214
  call void @llvm.dbg.value(metadata i8* %96, metadata !1150, metadata !DIExpression()), !dbg !1214
  call void @llvm.dbg.value(metadata i8* %96, metadata !1150, metadata !DIExpression()), !dbg !1214
  call void @llvm.dbg.value(metadata i64 %129, metadata !1143, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata i64 %129, metadata !1143, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata i64 %129, metadata !1143, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata i64 %129, metadata !1143, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata i64 %129, metadata !1143, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata i64 %311, metadata !1145, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata i64 %311, metadata !1145, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata i64 %311, metadata !1145, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata i64 %311, metadata !1145, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata i64 %311, metadata !1145, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata i8* %95, metadata !1149, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.value(metadata i8* %95, metadata !1149, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.value(metadata i8* %95, metadata !1149, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.value(metadata i8* %95, metadata !1149, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.value(metadata i8* %95, metadata !1149, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.value(metadata i8* %96, metadata !1150, metadata !DIExpression()), !dbg !1214
  call void @llvm.dbg.value(metadata i8* %96, metadata !1150, metadata !DIExpression()), !dbg !1214
  call void @llvm.dbg.value(metadata i8* %96, metadata !1150, metadata !DIExpression()), !dbg !1214
  call void @llvm.dbg.value(metadata i8* %96, metadata !1150, metadata !DIExpression()), !dbg !1214
  call void @llvm.dbg.value(metadata i8* %96, metadata !1150, metadata !DIExpression()), !dbg !1214
  call void @llvm.dbg.value(metadata i64 %129, metadata !1143, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata i64 %129, metadata !1143, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata i64 %129, metadata !1143, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata i64 %129, metadata !1143, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata i64 %129, metadata !1143, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata i64 %311, metadata !1145, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata i64 %311, metadata !1145, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata i64 %311, metadata !1145, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata i64 %311, metadata !1145, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata i64 %311, metadata !1145, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata i8* %95, metadata !1149, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.value(metadata i8* %95, metadata !1149, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.value(metadata i8* %95, metadata !1149, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.value(metadata i8* %95, metadata !1149, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.value(metadata i8* %95, metadata !1149, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.value(metadata i8* %96, metadata !1150, metadata !DIExpression()), !dbg !1214
  call void @llvm.dbg.value(metadata i8* %96, metadata !1150, metadata !DIExpression()), !dbg !1214
  call void @llvm.dbg.value(metadata i8* %96, metadata !1150, metadata !DIExpression()), !dbg !1214
  call void @llvm.dbg.value(metadata i8* %96, metadata !1150, metadata !DIExpression()), !dbg !1214
  call void @llvm.dbg.value(metadata i8* %96, metadata !1150, metadata !DIExpression()), !dbg !1214
  call void @llvm.dbg.value(metadata i64 %129, metadata !1143, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata i64 %129, metadata !1143, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata i64 %129, metadata !1143, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata i64 %129, metadata !1143, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata i64 %129, metadata !1143, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata i64 %311, metadata !1145, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata i64 %311, metadata !1145, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata i64 %311, metadata !1145, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata i64 %311, metadata !1145, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata i64 %311, metadata !1145, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata i8* %95, metadata !1149, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.value(metadata i8* %95, metadata !1149, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.value(metadata i8* %95, metadata !1149, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.value(metadata i8* %95, metadata !1149, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.value(metadata i8* %95, metadata !1149, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.value(metadata i8* %96, metadata !1150, metadata !DIExpression()), !dbg !1214
  call void @llvm.dbg.value(metadata i8* %96, metadata !1150, metadata !DIExpression()), !dbg !1214
  call void @llvm.dbg.value(metadata i8* %96, metadata !1150, metadata !DIExpression()), !dbg !1214
  call void @llvm.dbg.value(metadata i8* %96, metadata !1150, metadata !DIExpression()), !dbg !1214
  call void @llvm.dbg.value(metadata i8* %96, metadata !1150, metadata !DIExpression()), !dbg !1214
  call void @llvm.dbg.value(metadata i64 %129, metadata !1143, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata i64 %129, metadata !1143, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata i64 %129, metadata !1143, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata i64 %129, metadata !1143, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata i64 %129, metadata !1143, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata i64 %311, metadata !1145, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata i64 %311, metadata !1145, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata i64 %311, metadata !1145, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata i64 %311, metadata !1145, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata i64 %311, metadata !1145, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata i32 2, metadata !1146, metadata !DIExpression()), !dbg !1210
  call void @llvm.dbg.value(metadata i32 2, metadata !1146, metadata !DIExpression()), !dbg !1210
  call void @llvm.dbg.value(metadata i32 2, metadata !1146, metadata !DIExpression()), !dbg !1210
  call void @llvm.dbg.value(metadata i32 2, metadata !1146, metadata !DIExpression()), !dbg !1210
  call void @llvm.dbg.value(metadata i32 2, metadata !1146, metadata !DIExpression()), !dbg !1210
  call void @llvm.dbg.value(metadata i8* %95, metadata !1149, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.value(metadata i8* %95, metadata !1149, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.value(metadata i8* %95, metadata !1149, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.value(metadata i8* %95, metadata !1149, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.value(metadata i8* %95, metadata !1149, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.value(metadata i8* %96, metadata !1150, metadata !DIExpression()), !dbg !1214
  call void @llvm.dbg.value(metadata i8* %96, metadata !1150, metadata !DIExpression()), !dbg !1214
  call void @llvm.dbg.value(metadata i8* %96, metadata !1150, metadata !DIExpression()), !dbg !1214
  call void @llvm.dbg.value(metadata i8* %96, metadata !1150, metadata !DIExpression()), !dbg !1214
  call void @llvm.dbg.value(metadata i8* %96, metadata !1150, metadata !DIExpression()), !dbg !1214
  call void @llvm.dbg.value(metadata i8 %100, metadata !1156, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata i8 %100, metadata !1156, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata i8 %100, metadata !1156, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata i8 %100, metadata !1156, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata i8 %100, metadata !1156, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata i64 %129, metadata !1143, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata i64 %129, metadata !1143, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata i64 %129, metadata !1143, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata i64 %129, metadata !1143, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata i64 %129, metadata !1143, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata i64 %311, metadata !1145, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata i64 %311, metadata !1145, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata i64 %311, metadata !1145, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata i64 %311, metadata !1145, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata i64 %311, metadata !1145, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata i32 %94, metadata !1146, metadata !DIExpression()), !dbg !1210
  call void @llvm.dbg.value(metadata i32 %94, metadata !1146, metadata !DIExpression()), !dbg !1210
  call void @llvm.dbg.value(metadata i32 %94, metadata !1146, metadata !DIExpression()), !dbg !1210
  call void @llvm.dbg.value(metadata i32 %94, metadata !1146, metadata !DIExpression()), !dbg !1210
  call void @llvm.dbg.value(metadata i32 %94, metadata !1146, metadata !DIExpression()), !dbg !1210
  call void @llvm.dbg.value(metadata i8* %95, metadata !1149, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.value(metadata i8* %95, metadata !1149, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.value(metadata i8* %95, metadata !1149, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.value(metadata i8* %95, metadata !1149, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.value(metadata i8* %95, metadata !1149, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.value(metadata i8* %96, metadata !1150, metadata !DIExpression()), !dbg !1214
  call void @llvm.dbg.value(metadata i8* %96, metadata !1150, metadata !DIExpression()), !dbg !1214
  call void @llvm.dbg.value(metadata i8* %96, metadata !1150, metadata !DIExpression()), !dbg !1214
  call void @llvm.dbg.value(metadata i8* %96, metadata !1150, metadata !DIExpression()), !dbg !1214
  call void @llvm.dbg.value(metadata i8* %96, metadata !1150, metadata !DIExpression()), !dbg !1214
  call void @llvm.dbg.value(metadata i8 %100, metadata !1156, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata i8 %100, metadata !1156, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata i8 %100, metadata !1156, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata i8 %100, metadata !1156, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata i8 %100, metadata !1156, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata i64 %129, metadata !1143, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata i64 %129, metadata !1143, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata i64 %129, metadata !1143, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata i64 %129, metadata !1143, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata i64 %129, metadata !1143, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata i64 %311, metadata !1145, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata i64 %311, metadata !1145, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata i64 %311, metadata !1145, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata i64 %311, metadata !1145, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata i64 %311, metadata !1145, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata i8 %351, metadata !1173, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata i64 %352, metadata !1170, metadata !DIExpression()), !dbg !1430
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #10, !dbg !1476
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #10, !dbg !1487
  br label %661

; <label>:359:                                    ; preds = %355, %297
  %360 = phi i64 [ %154, %297 ], [ %311, %355 ], !dbg !1488
  %361 = phi i64 [ 1, %297 ], [ %357, %355 ], !dbg !1489
  %362 = phi i8 [ %305, %297 ], [ %356, %355 ], !dbg !1489
  call void @llvm.dbg.value(metadata i8 %362, metadata !1173, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata i64 %361, metadata !1170, metadata !DIExpression()), !dbg !1430
  call void @llvm.dbg.value(metadata i64 %360, metadata !1145, metadata !DIExpression()), !dbg !1209
  %363 = and i8 %362, 1, !dbg !1490
  %364 = icmp ne i8 %363, 0, !dbg !1490
  call void @llvm.dbg.value(metadata i8 %363, metadata !1169, metadata !DIExpression()), !dbg !1286
  %365 = icmp ult i64 %361, 2, !dbg !1491
  %366 = or i1 %364, %115, !dbg !1492
  %367 = and i1 %365, %366, !dbg !1493
  br i1 %367, label %467, label %368, !dbg !1493

; <label>:368:                                    ; preds = %359
  %369 = add i64 %361, %122, !dbg !1494
  call void @llvm.dbg.value(metadata i64 %369, metadata !1203, metadata !DIExpression()), !dbg !1495
  br label %370, !dbg !1496

; <label>:370:                                    ; preds = %463, %368
  %371 = phi i64 [ %122, %368 ], [ %438, %463 ], !dbg !1497
  %372 = phi i64 [ %123, %368 ], [ %464, %463 ], !dbg !1501
  %373 = phi i8 [ %126, %368 ], [ %459, %463 ], !dbg !1223
  %374 = phi i8 [ %157, %368 ], [ %466, %463 ], !dbg !1497
  %375 = phi i8 [ %155, %368 ], [ %436, %463 ], !dbg !1503
  %376 = phi i8 [ 0, %368 ], [ %437, %463 ], !dbg !1285
  call void @llvm.dbg.value(metadata i8 %376, metadata !1168, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata i8 %375, metadata !1167, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata i8 %374, metadata !1162, metadata !DIExpression()), !dbg !1301
  call void @llvm.dbg.value(metadata i8 %373, metadata !1159, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.value(metadata i64 %372, metadata !1152, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i64 %371, metadata !1151, metadata !DIExpression()), !dbg !1275
  br i1 %366, label %423, label %377, !dbg !1507

; <label>:377:                                    ; preds = %370
  br i1 %110, label %378, label %661, !dbg !1508

; <label>:378:                                    ; preds = %377
  call void @llvm.dbg.value(metadata i8 1, metadata !1168, metadata !DIExpression()), !dbg !1285
  %379 = and i8 %373, 1, !dbg !1511
  %380 = icmp eq i8 %379, 0, !dbg !1511
  %381 = and i1 %114, %380, !dbg !1511
  br i1 %381, label %382, label %398, !dbg !1511

; <label>:382:                                    ; preds = %378
  %383 = icmp ult i64 %372, %129, !dbg !1513
  br i1 %383, label %384, label %386, !dbg !1517

; <label>:384:                                    ; preds = %382
  %385 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !1513
  store i8 39, i8* %385, align 1, !dbg !1513, !tbaa !723
  br label %386, !dbg !1513

; <label>:386:                                    ; preds = %384, %382
  %387 = add i64 %372, 1, !dbg !1517
  call void @llvm.dbg.value(metadata i64 %387, metadata !1152, metadata !DIExpression()), !dbg !1215
  %388 = icmp ult i64 %387, %129, !dbg !1518
  br i1 %388, label %389, label %391, !dbg !1521

; <label>:389:                                    ; preds = %386
  %390 = getelementptr inbounds i8, i8* %0, i64 %387, !dbg !1518
  store i8 36, i8* %390, align 1, !dbg !1518, !tbaa !723
  br label %391, !dbg !1518

; <label>:391:                                    ; preds = %389, %386
  %392 = add i64 %372, 2, !dbg !1521
  call void @llvm.dbg.value(metadata i64 %392, metadata !1152, metadata !DIExpression()), !dbg !1215
  %393 = icmp ult i64 %392, %129, !dbg !1522
  br i1 %393, label %394, label %396, !dbg !1525

; <label>:394:                                    ; preds = %391
  %395 = getelementptr inbounds i8, i8* %0, i64 %392, !dbg !1522
  store i8 39, i8* %395, align 1, !dbg !1522, !tbaa !723
  br label %396, !dbg !1522

; <label>:396:                                    ; preds = %394, %391
  %397 = add i64 %372, 3, !dbg !1525
  call void @llvm.dbg.value(metadata i64 %397, metadata !1152, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i8 1, metadata !1159, metadata !DIExpression()), !dbg !1223
  br label %398, !dbg !1526

; <label>:398:                                    ; preds = %378, %396
  %399 = phi i64 [ %397, %396 ], [ %372, %378 ], !dbg !1274
  %400 = phi i8 [ 1, %396 ], [ %373, %378 ], !dbg !1274
  call void @llvm.dbg.value(metadata i8 %400, metadata !1159, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.value(metadata i64 %399, metadata !1152, metadata !DIExpression()), !dbg !1215
  %401 = icmp ult i64 %399, %129, !dbg !1527
  br i1 %401, label %402, label %404, !dbg !1530

; <label>:402:                                    ; preds = %398
  %403 = getelementptr inbounds i8, i8* %0, i64 %399, !dbg !1527
  store i8 92, i8* %403, align 1, !dbg !1527, !tbaa !723
  br label %404, !dbg !1527

; <label>:404:                                    ; preds = %402, %398
  %405 = add i64 %399, 1, !dbg !1530
  call void @llvm.dbg.value(metadata i64 %405, metadata !1152, metadata !DIExpression()), !dbg !1215
  %406 = icmp ult i64 %405, %129, !dbg !1531
  br i1 %406, label %407, label %411, !dbg !1534

; <label>:407:                                    ; preds = %404
  %408 = lshr i8 %374, 6, !dbg !1531
  %409 = or i8 %408, 48, !dbg !1531
  %410 = getelementptr inbounds i8, i8* %0, i64 %405, !dbg !1531
  store i8 %409, i8* %410, align 1, !dbg !1531, !tbaa !723
  br label %411, !dbg !1531

; <label>:411:                                    ; preds = %407, %404
  %412 = add i64 %399, 2, !dbg !1534
  call void @llvm.dbg.value(metadata i64 %412, metadata !1152, metadata !DIExpression()), !dbg !1215
  %413 = icmp ult i64 %412, %129, !dbg !1535
  br i1 %413, label %414, label %419, !dbg !1538

; <label>:414:                                    ; preds = %411
  %415 = lshr i8 %374, 3, !dbg !1535
  %416 = and i8 %415, 7, !dbg !1535
  %417 = or i8 %416, 48, !dbg !1535
  %418 = getelementptr inbounds i8, i8* %0, i64 %412, !dbg !1535
  store i8 %417, i8* %418, align 1, !dbg !1535, !tbaa !723
  br label %419, !dbg !1535

; <label>:419:                                    ; preds = %414, %411
  %420 = add i64 %399, 3, !dbg !1538
  call void @llvm.dbg.value(metadata i64 %420, metadata !1152, metadata !DIExpression()), !dbg !1215
  %421 = and i8 %374, 7, !dbg !1539
  %422 = or i8 %421, 48, !dbg !1540
  call void @llvm.dbg.value(metadata i8 %422, metadata !1162, metadata !DIExpression()), !dbg !1301
  br label %432, !dbg !1541

; <label>:423:                                    ; preds = %370
  %424 = and i8 %375, 1, !dbg !1542
  %425 = icmp eq i8 %424, 0, !dbg !1542
  br i1 %425, label %432, label %426, !dbg !1543

; <label>:426:                                    ; preds = %423
  %427 = icmp ult i64 %372, %129, !dbg !1544
  br i1 %427, label %428, label %430, !dbg !1547

; <label>:428:                                    ; preds = %426
  %429 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !1544
  store i8 92, i8* %429, align 1, !dbg !1544, !tbaa !723
  br label %430, !dbg !1544

; <label>:430:                                    ; preds = %428, %426
  %431 = add i64 %372, 1, !dbg !1547
  call void @llvm.dbg.value(metadata i64 %431, metadata !1152, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i8 0, metadata !1167, metadata !DIExpression()), !dbg !1284
  br label %432, !dbg !1548

; <label>:432:                                    ; preds = %423, %430, %419
  %433 = phi i64 [ %431, %430 ], [ %372, %423 ], [ %420, %419 ], !dbg !1549
  %434 = phi i8 [ %373, %430 ], [ %373, %423 ], [ %400, %419 ], !dbg !1223
  %435 = phi i8 [ %374, %430 ], [ %374, %423 ], [ %422, %419 ], !dbg !1550
  %436 = phi i8 [ 0, %430 ], [ %375, %423 ], [ %375, %419 ], !dbg !1551
  %437 = phi i8 [ %376, %430 ], [ %376, %423 ], [ 1, %419 ], !dbg !1553
  call void @llvm.dbg.value(metadata i8 %437, metadata !1168, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata i8 %436, metadata !1167, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata i8 %435, metadata !1162, metadata !DIExpression()), !dbg !1301
  call void @llvm.dbg.value(metadata i8 %434, metadata !1159, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.value(metadata i64 %433, metadata !1152, metadata !DIExpression()), !dbg !1215
  %438 = add i64 %371, 1, !dbg !1554
  %439 = icmp ugt i64 %369, %438, !dbg !1556
  br i1 %439, label %440, label %562, !dbg !1557

; <label>:440:                                    ; preds = %432
  %441 = and i8 %434, 1, !dbg !1558
  %442 = icmp ne i8 %441, 0, !dbg !1558
  %443 = and i8 %437, 1, !dbg !1558
  %444 = icmp eq i8 %443, 0, !dbg !1558
  %445 = and i1 %442, %444, !dbg !1558
  br i1 %445, label %446, label %457, !dbg !1558

; <label>:446:                                    ; preds = %440
  %447 = icmp ult i64 %433, %129, !dbg !1561
  br i1 %447, label %448, label %450, !dbg !1565

; <label>:448:                                    ; preds = %446
  %449 = getelementptr inbounds i8, i8* %0, i64 %433, !dbg !1561
  store i8 39, i8* %449, align 1, !dbg !1561, !tbaa !723
  br label %450, !dbg !1561

; <label>:450:                                    ; preds = %448, %446
  %451 = add i64 %433, 1, !dbg !1565
  call void @llvm.dbg.value(metadata i64 %451, metadata !1152, metadata !DIExpression()), !dbg !1215
  %452 = icmp ult i64 %451, %129, !dbg !1566
  br i1 %452, label %453, label %455, !dbg !1569

; <label>:453:                                    ; preds = %450
  %454 = getelementptr inbounds i8, i8* %0, i64 %451, !dbg !1566
  store i8 39, i8* %454, align 1, !dbg !1566, !tbaa !723
  br label %455, !dbg !1566

; <label>:455:                                    ; preds = %453, %450
  %456 = add i64 %433, 2, !dbg !1569
  call void @llvm.dbg.value(metadata i64 %456, metadata !1152, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i8 0, metadata !1159, metadata !DIExpression()), !dbg !1223
  br label %457, !dbg !1570

; <label>:457:                                    ; preds = %440, %455
  %458 = phi i64 [ %456, %455 ], [ %433, %440 ], !dbg !1571
  %459 = phi i8 [ 0, %455 ], [ %434, %440 ], !dbg !1274
  call void @llvm.dbg.value(metadata i8 %459, metadata !1159, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.value(metadata i64 %458, metadata !1152, metadata !DIExpression()), !dbg !1215
  %460 = icmp ult i64 %458, %129, !dbg !1572
  br i1 %460, label %461, label %463, !dbg !1574

; <label>:461:                                    ; preds = %457
  %462 = getelementptr inbounds i8, i8* %0, i64 %458, !dbg !1572
  store i8 %435, i8* %462, align 1, !dbg !1572, !tbaa !723
  br label %463, !dbg !1572

; <label>:463:                                    ; preds = %461, %457
  %464 = add i64 %458, 1, !dbg !1574
  call void @llvm.dbg.value(metadata i64 %464, metadata !1152, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i64 %438, metadata !1151, metadata !DIExpression()), !dbg !1275
  %465 = getelementptr inbounds i8, i8* %2, i64 %438, !dbg !1575
  %466 = load i8, i8* %465, align 1, !dbg !1575, !tbaa !723
  call void @llvm.dbg.value(metadata i8 %466, metadata !1162, metadata !DIExpression()), !dbg !1301
  br label %370, !dbg !1576, !llvm.loop !1577

; <label>:467:                                    ; preds = %359, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %271, %188, %191, %205, %209, %210, %268, %264, %259, %273, %294, %243, %219, %214, %211, %208
  %468 = phi i64 [ %122, %294 ], [ %122, %273 ], [ %122, %271 ], [ %122, %268 ], [ %122, %259 ], [ %122, %264 ], [ %122, %208 ], [ %122, %219 ], [ %212, %243 ], [ %122, %214 ], [ %122, %211 ], [ %122, %210 ], [ %122, %209 ], [ %122, %205 ], [ %122, %191 ], [ %122, %188 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %359 ], !dbg !1580
  %469 = phi i64 [ %295, %294 ], [ %123, %273 ], [ %123, %271 ], [ %123, %268 ], [ %123, %259 ], [ %123, %264 ], [ %123, %208 ], [ %123, %219 ], [ %244, %243 ], [ %123, %214 ], [ %123, %211 ], [ %123, %210 ], [ %123, %209 ], [ %206, %205 ], [ %187, %191 ], [ %187, %188 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %359 ], !dbg !1274
  %470 = phi i64 [ %279, %294 ], [ %124, %273 ], [ %124, %271 ], [ %124, %268 ], [ %124, %259 ], [ %124, %264 ], [ %124, %208 ], [ %124, %219 ], [ %124, %243 ], [ %124, %214 ], [ %124, %211 ], [ %124, %210 ], [ %124, %209 ], [ %124, %205 ], [ %124, %191 ], [ %124, %188 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %359 ], !dbg !1216
  %471 = phi i64 [ %154, %294 ], [ %154, %273 ], [ %154, %271 ], [ %154, %268 ], [ -1, %259 ], [ %154, %264 ], [ %154, %208 ], [ %154, %219 ], [ %154, %243 ], [ %154, %214 ], [ %154, %211 ], [ %154, %210 ], [ %154, %209 ], [ %154, %205 ], [ %154, %191 ], [ %154, %188 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %360, %359 ], !dbg !1581
  %472 = phi i8 [ 0, %294 ], [ %126, %273 ], [ %126, %271 ], [ %126, %268 ], [ %126, %259 ], [ %126, %264 ], [ %126, %208 ], [ %126, %219 ], [ %126, %243 ], [ %126, %214 ], [ %126, %211 ], [ %126, %210 ], [ %126, %209 ], [ %182, %205 ], [ %182, %191 ], [ %182, %188 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %359 ], !dbg !1274
  %473 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %127, %271 ], [ %127, %268 ], [ %127, %259 ], [ %127, %264 ], [ %127, %208 ], [ %127, %219 ], [ %127, %243 ], [ %127, %214 ], [ %127, %211 ], [ %127, %210 ], [ %127, %209 ], [ %127, %205 ], [ %127, %191 ], [ %127, %188 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %359 ], !dbg !1274
  %474 = phi i8 [ 39, %294 ], [ 39, %273 ], [ %157, %271 ], [ %157, %268 ], [ %157, %259 ], [ %157, %264 ], [ 63, %208 ], [ 63, %219 ], [ %221, %243 ], [ 63, %214 ], [ 63, %211 ], [ 63, %210 ], [ 63, %209 ], [ 48, %205 ], [ 48, %191 ], [ 48, %188 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %359 ], !dbg !1299
  %475 = phi i8 [ 0, %294 ], [ 0, %273 ], [ 0, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 1, %205 ], [ 1, %191 ], [ 1, %188 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %359 ], !dbg !1299
  %476 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %272, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 0, %205 ], [ 0, %191 ], [ 0, %188 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %363, %359 ], !dbg !1299
  %477 = phi i64 [ %280, %294 ], [ %129, %273 ], [ %129, %271 ], [ %129, %268 ], [ %129, %259 ], [ %129, %264 ], [ %129, %208 ], [ %129, %219 ], [ %129, %243 ], [ %129, %214 ], [ %129, %211 ], [ %129, %210 ], [ %129, %209 ], [ %129, %205 ], [ %129, %191 ], [ %129, %188 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %359 ]
  call void @llvm.dbg.value(metadata i64 %477, metadata !1143, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata i8 %476, metadata !1169, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.value(metadata i8 %475, metadata !1168, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata i8 %155, metadata !1167, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata i8 %474, metadata !1162, metadata !DIExpression()), !dbg !1301
  call void @llvm.dbg.value(metadata i8 %473, metadata !1160, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata i8 %472, metadata !1159, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.value(metadata i64 %471, metadata !1145, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata i64 %470, metadata !1153, metadata !DIExpression()), !dbg !1216
  call void @llvm.dbg.value(metadata i64 %469, metadata !1152, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i64 %468, metadata !1151, metadata !DIExpression()), !dbg !1275
  br i1 %105, label %489, label %478, !dbg !1582

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
  br i1 %112, label %490, label %512, !dbg !1584

; <label>:489:                                    ; preds = %467
  br i1 %20, label %512, label %490, !dbg !1585

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
  %501 = lshr i8 %494, 5, !dbg !1586
  %502 = zext i8 %501 to i64, !dbg !1586
  %503 = getelementptr inbounds i32, i32* %6, i64 %502, !dbg !1587
  %504 = load i32, i32* %503, align 4, !dbg !1587, !tbaa !929
  %505 = and i8 %494, 31, !dbg !1588
  %506 = zext i8 %505 to i32, !dbg !1588
  %507 = shl i32 1, %506, !dbg !1589
  %508 = and i32 %504, %507, !dbg !1589
  %509 = icmp eq i32 %508, 0, !dbg !1589
  %510 = icmp eq i8 %155, 0, !dbg !1590
  %511 = and i1 %510, %509, !dbg !1591
  br i1 %511, label %562, label %524, !dbg !1591

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
  %523 = icmp eq i8 %155, 0, !dbg !1590
  br i1 %523, label %562, label %524, !dbg !1592

; <label>:524:                                    ; preds = %255, %490, %512
  %525 = phi i64 [ %500, %490 ], [ %522, %512 ], [ %122, %255 ], !dbg !1593
  %526 = phi i64 [ %499, %490 ], [ %521, %512 ], [ %123, %255 ], !dbg !1274
  %527 = phi i64 [ %498, %490 ], [ %520, %512 ], [ %124, %255 ], !dbg !1216
  %528 = phi i64 [ %497, %490 ], [ %519, %512 ], [ %154, %255 ], !dbg !1581
  %529 = phi i8 [ %496, %490 ], [ %518, %512 ], [ %126, %255 ], !dbg !1223
  %530 = phi i8 [ %495, %490 ], [ %517, %512 ], [ %127, %255 ], !dbg !1224
  %531 = phi i8 [ %494, %490 ], [ %516, %512 ], [ %256, %255 ], !dbg !1594
  %532 = phi i8 [ %492, %490 ], [ %514, %512 ], [ 0, %255 ], !dbg !1299
  %533 = phi i64 [ %491, %490 ], [ %513, %512 ], [ %129, %255 ]
  call void @llvm.dbg.value(metadata i64 %533, metadata !1143, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata i8 %532, metadata !1169, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.value(metadata i8 %531, metadata !1162, metadata !DIExpression()), !dbg !1301
  call void @llvm.dbg.value(metadata i8 %530, metadata !1160, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata i8 %529, metadata !1159, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.value(metadata i64 %528, metadata !1145, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata i64 %527, metadata !1153, metadata !DIExpression()), !dbg !1216
  call void @llvm.dbg.value(metadata i64 %526, metadata !1152, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i64 %525, metadata !1151, metadata !DIExpression()), !dbg !1275
  br i1 %110, label %534, label %661, !dbg !1597

; <label>:534:                                    ; preds = %524
  call void @llvm.dbg.value(metadata i8 1, metadata !1168, metadata !DIExpression()), !dbg !1285
  %535 = and i8 %529, 1, !dbg !1599
  %536 = icmp eq i8 %535, 0, !dbg !1599
  %537 = and i1 %114, %536, !dbg !1599
  br i1 %537, label %538, label %554, !dbg !1599

; <label>:538:                                    ; preds = %534
  %539 = icmp ult i64 %526, %533, !dbg !1601
  br i1 %539, label %540, label %542, !dbg !1605

; <label>:540:                                    ; preds = %538
  %541 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !1601
  store i8 39, i8* %541, align 1, !dbg !1601, !tbaa !723
  br label %542, !dbg !1601

; <label>:542:                                    ; preds = %540, %538
  %543 = add i64 %526, 1, !dbg !1605
  call void @llvm.dbg.value(metadata i64 %543, metadata !1152, metadata !DIExpression()), !dbg !1215
  %544 = icmp ult i64 %543, %533, !dbg !1606
  br i1 %544, label %545, label %547, !dbg !1609

; <label>:545:                                    ; preds = %542
  %546 = getelementptr inbounds i8, i8* %0, i64 %543, !dbg !1606
  store i8 36, i8* %546, align 1, !dbg !1606, !tbaa !723
  br label %547, !dbg !1606

; <label>:547:                                    ; preds = %545, %542
  %548 = add i64 %526, 2, !dbg !1609
  call void @llvm.dbg.value(metadata i64 %548, metadata !1152, metadata !DIExpression()), !dbg !1215
  %549 = icmp ult i64 %548, %533, !dbg !1610
  br i1 %549, label %550, label %552, !dbg !1613

; <label>:550:                                    ; preds = %547
  %551 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !1610
  store i8 39, i8* %551, align 1, !dbg !1610, !tbaa !723
  br label %552, !dbg !1610

; <label>:552:                                    ; preds = %550, %547
  %553 = add i64 %526, 3, !dbg !1613
  call void @llvm.dbg.value(metadata i64 %553, metadata !1152, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i8 1, metadata !1159, metadata !DIExpression()), !dbg !1223
  br label %554, !dbg !1614

; <label>:554:                                    ; preds = %534, %552
  %555 = phi i64 [ %553, %552 ], [ %526, %534 ], !dbg !1571
  %556 = phi i8 [ 1, %552 ], [ %529, %534 ], !dbg !1274
  call void @llvm.dbg.value(metadata i8 %556, metadata !1159, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.value(metadata i64 %555, metadata !1152, metadata !DIExpression()), !dbg !1215
  %557 = icmp ult i64 %555, %533, !dbg !1615
  br i1 %557, label %558, label %560, !dbg !1618

; <label>:558:                                    ; preds = %554
  %559 = getelementptr inbounds i8, i8* %0, i64 %555, !dbg !1615
  store i8 92, i8* %559, align 1, !dbg !1615, !tbaa !723
  br label %560, !dbg !1615

; <label>:560:                                    ; preds = %554, %558
  %561 = add i64 %555, 1, !dbg !1618
  call void @llvm.dbg.value(metadata i64 %561, metadata !1152, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i64 %572, metadata !1143, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata i8 %571, metadata !1169, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.value(metadata i8 %570, metadata !1168, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata i8 %569, metadata !1162, metadata !DIExpression()), !dbg !1301
  call void @llvm.dbg.value(metadata i8 %568, metadata !1160, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata i8 %567, metadata !1159, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.value(metadata i64 %566, metadata !1145, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata i64 %565, metadata !1153, metadata !DIExpression()), !dbg !1216
  call void @llvm.dbg.value(metadata i64 %564, metadata !1152, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i64 %563, metadata !1151, metadata !DIExpression()), !dbg !1275
  br label %589, !dbg !1619

; <label>:562:                                    ; preds = %432, %252, %490, %251, %512
  %563 = phi i64 [ %522, %512 ], [ %122, %251 ], [ %500, %490 ], [ %122, %252 ], [ %371, %432 ], !dbg !1593
  %564 = phi i64 [ %521, %512 ], [ %123, %251 ], [ %499, %490 ], [ %123, %252 ], [ %433, %432 ], !dbg !1274
  %565 = phi i64 [ %520, %512 ], [ %124, %251 ], [ %498, %490 ], [ %124, %252 ], [ %124, %432 ], !dbg !1216
  %566 = phi i64 [ %519, %512 ], [ %154, %251 ], [ %497, %490 ], [ %154, %252 ], [ %360, %432 ], !dbg !1581
  %567 = phi i8 [ %518, %512 ], [ %126, %251 ], [ %496, %490 ], [ %126, %252 ], [ %434, %432 ], !dbg !1223
  %568 = phi i8 [ %517, %512 ], [ %127, %251 ], [ %495, %490 ], [ %127, %252 ], [ %127, %432 ], !dbg !1224
  %569 = phi i8 [ %516, %512 ], [ 92, %251 ], [ %494, %490 ], [ 92, %252 ], [ %435, %432 ], !dbg !1622
  %570 = phi i8 [ %515, %512 ], [ 0, %251 ], [ %493, %490 ], [ 0, %252 ], [ %437, %432 ], !dbg !1299
  %571 = phi i8 [ %514, %512 ], [ 0, %251 ], [ %492, %490 ], [ 0, %252 ], [ %363, %432 ], !dbg !1299
  %572 = phi i64 [ %513, %512 ], [ %129, %251 ], [ %491, %490 ], [ %129, %252 ], [ %129, %432 ]
  call void @llvm.dbg.value(metadata i64 %572, metadata !1143, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata i8 %571, metadata !1169, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.value(metadata i8 %570, metadata !1168, metadata !DIExpression()), !dbg !1285
  call void @llvm.dbg.value(metadata i8 %569, metadata !1162, metadata !DIExpression()), !dbg !1301
  call void @llvm.dbg.value(metadata i8 %568, metadata !1160, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata i8 %567, metadata !1159, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.value(metadata i64 %566, metadata !1145, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata i64 %565, metadata !1153, metadata !DIExpression()), !dbg !1216
  call void @llvm.dbg.value(metadata i64 %564, metadata !1152, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i64 %563, metadata !1151, metadata !DIExpression()), !dbg !1275
  %573 = and i8 %567, 1, !dbg !1619
  %574 = icmp ne i8 %573, 0, !dbg !1619
  %575 = and i8 %570, 1, !dbg !1619
  %576 = icmp eq i8 %575, 0, !dbg !1619
  %577 = and i1 %574, %576, !dbg !1619
  br i1 %577, label %578, label %589, !dbg !1619

; <label>:578:                                    ; preds = %562
  %579 = icmp ult i64 %564, %572, !dbg !1623
  br i1 %579, label %580, label %582, !dbg !1627

; <label>:580:                                    ; preds = %578
  %581 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !1623
  store i8 39, i8* %581, align 1, !dbg !1623, !tbaa !723
  br label %582, !dbg !1623

; <label>:582:                                    ; preds = %580, %578
  %583 = add i64 %564, 1, !dbg !1627
  call void @llvm.dbg.value(metadata i64 %583, metadata !1152, metadata !DIExpression()), !dbg !1215
  %584 = icmp ult i64 %583, %572, !dbg !1628
  br i1 %584, label %585, label %587, !dbg !1631

; <label>:585:                                    ; preds = %582
  %586 = getelementptr inbounds i8, i8* %0, i64 %583, !dbg !1628
  store i8 39, i8* %586, align 1, !dbg !1628, !tbaa !723
  br label %587, !dbg !1628

; <label>:587:                                    ; preds = %585, %582
  %588 = add i64 %564, 2, !dbg !1631
  call void @llvm.dbg.value(metadata i64 %588, metadata !1152, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i8 0, metadata !1159, metadata !DIExpression()), !dbg !1223
  br label %589, !dbg !1632

; <label>:589:                                    ; preds = %560, %562, %587
  %590 = phi i64 [ %572, %587 ], [ %572, %562 ], [ %533, %560 ]
  %591 = phi i8 [ %571, %587 ], [ %571, %562 ], [ %532, %560 ]
  %592 = phi i8 [ %569, %587 ], [ %569, %562 ], [ %531, %560 ]
  %593 = phi i8 [ %568, %587 ], [ %568, %562 ], [ %530, %560 ]
  %594 = phi i64 [ %566, %587 ], [ %566, %562 ], [ %528, %560 ]
  %595 = phi i64 [ %565, %587 ], [ %565, %562 ], [ %527, %560 ]
  %596 = phi i64 [ %563, %587 ], [ %563, %562 ], [ %525, %560 ]
  %597 = phi i64 [ %588, %587 ], [ %564, %562 ], [ %561, %560 ], !dbg !1571
  %598 = phi i8 [ 0, %587 ], [ %567, %562 ], [ %556, %560 ], !dbg !1274
  call void @llvm.dbg.value(metadata i8 %598, metadata !1159, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.value(metadata i64 %597, metadata !1152, metadata !DIExpression()), !dbg !1215
  %599 = icmp ult i64 %597, %590, !dbg !1633
  br i1 %599, label %600, label %602, !dbg !1636

; <label>:600:                                    ; preds = %589
  %601 = getelementptr inbounds i8, i8* %0, i64 %597, !dbg !1633
  store i8 %592, i8* %601, align 1, !dbg !1633, !tbaa !723
  br label %602, !dbg !1633

; <label>:602:                                    ; preds = %600, %589
  %603 = add i64 %597, 1, !dbg !1636
  call void @llvm.dbg.value(metadata i64 %603, metadata !1152, metadata !DIExpression()), !dbg !1215
  %604 = and i8 %591, 1, !dbg !1637
  %605 = icmp eq i8 %604, 0, !dbg !1637
  %606 = select i1 %605, i8 0, i8 %128, !dbg !1639
  call void @llvm.dbg.value(metadata i8 %606, metadata !1161, metadata !DIExpression()), !dbg !1225
  br label %607, !dbg !1640

; <label>:607:                                    ; preds = %602, %207
  %608 = phi i64 [ %596, %602 ], [ %122, %207 ], !dbg !1593
  %609 = phi i64 [ %603, %602 ], [ %123, %207 ], !dbg !1274
  %610 = phi i64 [ %595, %602 ], [ %124, %207 ], !dbg !1216
  %611 = phi i64 [ %594, %602 ], [ %154, %207 ], !dbg !1581
  %612 = phi i8 [ %598, %602 ], [ %126, %207 ], !dbg !1223
  %613 = phi i8 [ %593, %602 ], [ %127, %207 ], !dbg !1274
  %614 = phi i8 [ %606, %602 ], [ %128, %207 ], !dbg !1225
  %615 = phi i64 [ %590, %602 ], [ %129, %207 ]
  call void @llvm.dbg.value(metadata i64 %615, metadata !1143, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata i8 %614, metadata !1161, metadata !DIExpression()), !dbg !1225
  call void @llvm.dbg.value(metadata i8 %613, metadata !1160, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata i8 %612, metadata !1159, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.value(metadata i64 %611, metadata !1145, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata i64 %610, metadata !1153, metadata !DIExpression()), !dbg !1216
  call void @llvm.dbg.value(metadata i64 %609, metadata !1152, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i64 %608, metadata !1151, metadata !DIExpression()), !dbg !1275
  %616 = add i64 %608, 1, !dbg !1641
  call void @llvm.dbg.value(metadata i64 %616, metadata !1151, metadata !DIExpression()), !dbg !1275
  br label %121, !dbg !1642, !llvm.loop !1643

; <label>:617:                                    ; preds = %131, %135
  %618 = phi i64 [ -1, %131 ], [ %122, %135 ]
  call void @llvm.dbg.value(metadata i64 %123, metadata !1152, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i64 %123, metadata !1152, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i64 %124, metadata !1153, metadata !DIExpression()), !dbg !1216
  call void @llvm.dbg.value(metadata i64 %124, metadata !1153, metadata !DIExpression()), !dbg !1216
  call void @llvm.dbg.value(metadata i8 %126, metadata !1159, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.value(metadata i8 %126, metadata !1159, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.value(metadata i8 %127, metadata !1160, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata i8 %127, metadata !1160, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata i8 %128, metadata !1161, metadata !DIExpression()), !dbg !1225
  call void @llvm.dbg.value(metadata i8 %128, metadata !1161, metadata !DIExpression()), !dbg !1225
  call void @llvm.dbg.value(metadata i64 %129, metadata !1143, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata i64 %129, metadata !1143, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata i64 %123, metadata !1152, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i64 %123, metadata !1152, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i64 %124, metadata !1153, metadata !DIExpression()), !dbg !1216
  call void @llvm.dbg.value(metadata i64 %124, metadata !1153, metadata !DIExpression()), !dbg !1216
  call void @llvm.dbg.value(metadata i8 %126, metadata !1159, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.value(metadata i8 %126, metadata !1159, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.value(metadata i8 %127, metadata !1160, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata i8 %127, metadata !1160, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata i8 %128, metadata !1161, metadata !DIExpression()), !dbg !1225
  call void @llvm.dbg.value(metadata i8 %128, metadata !1161, metadata !DIExpression()), !dbg !1225
  call void @llvm.dbg.value(metadata i64 %129, metadata !1143, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata i64 %129, metadata !1143, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata i64 %123, metadata !1152, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i64 %123, metadata !1152, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i64 %124, metadata !1153, metadata !DIExpression()), !dbg !1216
  call void @llvm.dbg.value(metadata i64 %124, metadata !1153, metadata !DIExpression()), !dbg !1216
  call void @llvm.dbg.value(metadata i8 %126, metadata !1159, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.value(metadata i8 %126, metadata !1159, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.value(metadata i8 %127, metadata !1160, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata i8 %127, metadata !1160, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata i8 %128, metadata !1161, metadata !DIExpression()), !dbg !1225
  call void @llvm.dbg.value(metadata i8 %128, metadata !1161, metadata !DIExpression()), !dbg !1225
  call void @llvm.dbg.value(metadata i64 %129, metadata !1143, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata i64 %129, metadata !1143, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata i64 %123, metadata !1152, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i64 %123, metadata !1152, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i64 %124, metadata !1153, metadata !DIExpression()), !dbg !1216
  call void @llvm.dbg.value(metadata i64 %124, metadata !1153, metadata !DIExpression()), !dbg !1216
  call void @llvm.dbg.value(metadata i8 %126, metadata !1159, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.value(metadata i8 %126, metadata !1159, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.value(metadata i8 %127, metadata !1160, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata i8 %127, metadata !1160, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata i8 %128, metadata !1161, metadata !DIExpression()), !dbg !1225
  call void @llvm.dbg.value(metadata i8 %128, metadata !1161, metadata !DIExpression()), !dbg !1225
  call void @llvm.dbg.value(metadata i64 %129, metadata !1143, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata i64 %129, metadata !1143, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata i64 %123, metadata !1152, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i64 %123, metadata !1152, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i64 %124, metadata !1153, metadata !DIExpression()), !dbg !1216
  call void @llvm.dbg.value(metadata i64 %124, metadata !1153, metadata !DIExpression()), !dbg !1216
  call void @llvm.dbg.value(metadata i64 %618, metadata !1145, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata i64 %618, metadata !1145, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata i8 %126, metadata !1159, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.value(metadata i8 %126, metadata !1159, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.value(metadata i8 %127, metadata !1160, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata i8 %127, metadata !1160, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata i8 %128, metadata !1161, metadata !DIExpression()), !dbg !1225
  call void @llvm.dbg.value(metadata i8 %128, metadata !1161, metadata !DIExpression()), !dbg !1225
  call void @llvm.dbg.value(metadata i64 %129, metadata !1143, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata i64 %129, metadata !1143, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata i64 %123, metadata !1152, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i64 %123, metadata !1152, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i64 %124, metadata !1153, metadata !DIExpression()), !dbg !1216
  call void @llvm.dbg.value(metadata i64 %124, metadata !1153, metadata !DIExpression()), !dbg !1216
  call void @llvm.dbg.value(metadata i64 %125, metadata !1145, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata i64 %125, metadata !1145, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata i8 %126, metadata !1159, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.value(metadata i8 %126, metadata !1159, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.value(metadata i8 %127, metadata !1160, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata i8 %127, metadata !1160, metadata !DIExpression()), !dbg !1224
  call void @llvm.dbg.value(metadata i8 %128, metadata !1161, metadata !DIExpression()), !dbg !1225
  call void @llvm.dbg.value(metadata i8 %128, metadata !1161, metadata !DIExpression()), !dbg !1225
  call void @llvm.dbg.value(metadata i64 %129, metadata !1143, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata i64 %129, metadata !1143, metadata !DIExpression()), !dbg !1207
  %619 = icmp eq i64 %123, 0, !dbg !1645
  %620 = and i1 %114, %619, !dbg !1647
  %621 = xor i1 %620, true, !dbg !1647
  %622 = or i1 %110, %621, !dbg !1647
  br i1 %622, label %623, label %661, !dbg !1647

; <label>:623:                                    ; preds = %617
  %624 = and i1 %114, %110, !dbg !1648
  %625 = xor i1 %624, true, !dbg !1648
  %626 = and i8 %127, 1, !dbg !1650
  %627 = icmp eq i8 %626, 0, !dbg !1650
  %628 = or i1 %627, %625, !dbg !1648
  br i1 %628, label %638, label %629, !dbg !1648

; <label>:629:                                    ; preds = %623
  %630 = and i8 %128, 1, !dbg !1651
  %631 = icmp eq i8 %630, 0, !dbg !1651
  br i1 %631, label %634, label %632, !dbg !1654

; <label>:632:                                    ; preds = %629
  call void @llvm.dbg.value(metadata i64 %618, metadata !1145, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata i8* %95, metadata !1149, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.value(metadata i8* %96, metadata !1150, metadata !DIExpression()), !dbg !1214
  call void @llvm.dbg.value(metadata i64 %124, metadata !1153, metadata !DIExpression()), !dbg !1216
  call void @llvm.dbg.value(metadata i64 %618, metadata !1145, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata i8* %95, metadata !1149, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.value(metadata i8* %96, metadata !1150, metadata !DIExpression()), !dbg !1214
  call void @llvm.dbg.value(metadata i64 %124, metadata !1153, metadata !DIExpression()), !dbg !1216
  call void @llvm.dbg.value(metadata i64 %618, metadata !1145, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata i8* %95, metadata !1149, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.value(metadata i8* %96, metadata !1150, metadata !DIExpression()), !dbg !1214
  call void @llvm.dbg.value(metadata i64 %124, metadata !1153, metadata !DIExpression()), !dbg !1216
  call void @llvm.dbg.value(metadata i64 %618, metadata !1145, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata i8* %95, metadata !1149, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.value(metadata i8* %96, metadata !1150, metadata !DIExpression()), !dbg !1214
  call void @llvm.dbg.value(metadata i64 %124, metadata !1153, metadata !DIExpression()), !dbg !1216
  call void @llvm.dbg.value(metadata i8* %95, metadata !1149, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.value(metadata i8* %96, metadata !1150, metadata !DIExpression()), !dbg !1214
  call void @llvm.dbg.value(metadata i64 %124, metadata !1153, metadata !DIExpression()), !dbg !1216
  call void @llvm.dbg.value(metadata i64 %618, metadata !1145, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata i8* %95, metadata !1149, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.value(metadata i8* %96, metadata !1150, metadata !DIExpression()), !dbg !1214
  call void @llvm.dbg.value(metadata i64 %124, metadata !1153, metadata !DIExpression()), !dbg !1216
  call void @llvm.dbg.value(metadata i64 %125, metadata !1145, metadata !DIExpression()), !dbg !1209
  %633 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %618, i32 5, i32 %5, i32* %6, i8* %95, i8* %96), !dbg !1655
  br label %671, !dbg !1656

; <label>:634:                                    ; preds = %629
  %635 = icmp eq i64 %129, 0, !dbg !1657
  %636 = icmp ne i64 %124, 0, !dbg !1659
  %637 = and i1 %636, %635, !dbg !1660
  br i1 %637, label %27, label %638, !dbg !1660

; <label>:638:                                    ; preds = %623, %634
  call void @llvm.dbg.value(metadata i8* %98, metadata !1154, metadata !DIExpression()), !dbg !1217
  call void @llvm.dbg.value(metadata i8* %98, metadata !1154, metadata !DIExpression()), !dbg !1217
  call void @llvm.dbg.value(metadata i64 %123, metadata !1152, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i64 %123, metadata !1152, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i64 %129, metadata !1143, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata i64 %129, metadata !1143, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata i8* %98, metadata !1154, metadata !DIExpression()), !dbg !1217
  call void @llvm.dbg.value(metadata i8* %98, metadata !1154, metadata !DIExpression()), !dbg !1217
  call void @llvm.dbg.value(metadata i64 %123, metadata !1152, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i64 %123, metadata !1152, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i64 %129, metadata !1143, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata i64 %129, metadata !1143, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata i8* %98, metadata !1154, metadata !DIExpression()), !dbg !1217
  call void @llvm.dbg.value(metadata i8* %98, metadata !1154, metadata !DIExpression()), !dbg !1217
  call void @llvm.dbg.value(metadata i64 %123, metadata !1152, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i64 %123, metadata !1152, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i64 %129, metadata !1143, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata i64 %129, metadata !1143, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata i8* %98, metadata !1154, metadata !DIExpression()), !dbg !1217
  call void @llvm.dbg.value(metadata i8* %98, metadata !1154, metadata !DIExpression()), !dbg !1217
  call void @llvm.dbg.value(metadata i64 %123, metadata !1152, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i64 %123, metadata !1152, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i64 %129, metadata !1143, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata i64 %129, metadata !1143, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata i8* %98, metadata !1154, metadata !DIExpression()), !dbg !1217
  call void @llvm.dbg.value(metadata i8* %98, metadata !1154, metadata !DIExpression()), !dbg !1217
  call void @llvm.dbg.value(metadata i64 %123, metadata !1152, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i64 %123, metadata !1152, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i64 %129, metadata !1143, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata i64 %129, metadata !1143, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata i8* %98, metadata !1154, metadata !DIExpression()), !dbg !1217
  call void @llvm.dbg.value(metadata i8* %98, metadata !1154, metadata !DIExpression()), !dbg !1217
  call void @llvm.dbg.value(metadata i64 %123, metadata !1152, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i64 %123, metadata !1152, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata i64 %129, metadata !1143, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata i64 %129, metadata !1143, metadata !DIExpression()), !dbg !1207
  %639 = icmp ne i8* %98, null, !dbg !1661
  %640 = and i1 %639, %110, !dbg !1663
  br i1 %640, label %641, label %656, !dbg !1663

; <label>:641:                                    ; preds = %638
  call void @llvm.dbg.value(metadata i8* %98, metadata !1154, metadata !DIExpression()), !dbg !1217
  call void @llvm.dbg.value(metadata i64 %123, metadata !1152, metadata !DIExpression()), !dbg !1215
  %642 = load i8, i8* %98, align 1, !dbg !1664, !tbaa !723
  %643 = icmp eq i8 %642, 0, !dbg !1667
  br i1 %643, label %656, label %644, !dbg !1667

; <label>:644:                                    ; preds = %641, %651
  %645 = phi i8 [ %654, %651 ], [ %642, %641 ]
  %646 = phi i8* [ %653, %651 ], [ %98, %641 ]
  %647 = phi i64 [ %652, %651 ], [ %123, %641 ]
  call void @llvm.dbg.value(metadata i8* %646, metadata !1154, metadata !DIExpression()), !dbg !1217
  call void @llvm.dbg.value(metadata i64 %647, metadata !1152, metadata !DIExpression()), !dbg !1215
  %648 = icmp ult i64 %647, %129, !dbg !1668
  br i1 %648, label %649, label %651, !dbg !1671

; <label>:649:                                    ; preds = %644
  %650 = getelementptr inbounds i8, i8* %0, i64 %647, !dbg !1668
  store i8 %645, i8* %650, align 1, !dbg !1668, !tbaa !723
  br label %651, !dbg !1668

; <label>:651:                                    ; preds = %649, %644
  %652 = add i64 %647, 1, !dbg !1671
  %653 = getelementptr inbounds i8, i8* %646, i64 1, !dbg !1672
  call void @llvm.dbg.value(metadata i8* %653, metadata !1154, metadata !DIExpression()), !dbg !1217
  call void @llvm.dbg.value(metadata i64 %652, metadata !1152, metadata !DIExpression()), !dbg !1215
  %654 = load i8, i8* %653, align 1, !dbg !1664, !tbaa !723
  %655 = icmp eq i8 %654, 0, !dbg !1667
  br i1 %655, label %656, label %644, !dbg !1667, !llvm.loop !1673

; <label>:656:                                    ; preds = %651, %641, %638
  %657 = phi i64 [ %123, %638 ], [ %123, %641 ], [ %652, %651 ], !dbg !1215
  call void @llvm.dbg.value(metadata i64 %657, metadata !1152, metadata !DIExpression()), !dbg !1215
  %658 = icmp ult i64 %657, %129, !dbg !1675
  br i1 %658, label %659, label %671, !dbg !1677

; <label>:659:                                    ; preds = %656
  %660 = getelementptr inbounds i8, i8* %0, i64 %657, !dbg !1678
  store i8 0, i8* %660, align 1, !dbg !1679, !tbaa !723
  br label %671, !dbg !1678

; <label>:661:                                    ; preds = %617, %524, %274, %271, %253, %251, %223, %209, %159, %146, %377, %358
  %662 = phi i32 [ 2, %358 ], [ %94, %377 ], [ %94, %146 ], [ %94, %159 ], [ 2, %209 ], [ 5, %223 ], [ 2, %251 ], [ 2, %253 ], [ 2, %271 ], [ 2, %274 ], [ %94, %524 ], [ %94, %617 ]
  %663 = phi i64 [ %311, %358 ], [ %360, %377 ], [ %144, %146 ], [ %154, %159 ], [ %154, %209 ], [ %154, %223 ], [ %154, %251 ], [ %154, %253 ], [ %154, %271 ], [ %154, %274 ], [ %528, %524 ], [ %618, %617 ]
  %664 = phi i64 [ %129, %358 ], [ %129, %377 ], [ %129, %146 ], [ %129, %159 ], [ %129, %209 ], [ %129, %223 ], [ %129, %251 ], [ %129, %253 ], [ %129, %271 ], [ %129, %274 ], [ %533, %524 ], [ %129, %617 ]
  call void @llvm.dbg.value(metadata i64 %664, metadata !1143, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata i64 %663, metadata !1145, metadata !DIExpression()), !dbg !1209
  %665 = icmp ne i32 %662, 2, !dbg !1680
  %666 = icmp eq i8 %102, 0, !dbg !1682
  %667 = or i1 %665, %666, !dbg !1683
  call void @llvm.dbg.value(metadata i32 4, metadata !1146, metadata !DIExpression()), !dbg !1210
  %668 = select i1 %667, i32 %662, i32 4, !dbg !1683
  call void @llvm.dbg.value(metadata i32 %668, metadata !1146, metadata !DIExpression()), !dbg !1210
  %669 = and i32 %5, -3, !dbg !1684
  %670 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %664, i8* %2, i64 %663, i32 %668, i32 %669, i32* null, i8* %95, i8* %96), !dbg !1685
  br label %671, !dbg !1686

; <label>:671:                                    ; preds = %656, %659, %661, %632
  %672 = phi i64 [ %670, %661 ], [ %633, %632 ], [ %657, %659 ], [ %657, %656 ]
  ret i64 %672, !dbg !1687
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #7 !dbg !1688 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1692, metadata !DIExpression()), !dbg !1696
  call void @llvm.dbg.value(metadata i32 %1, metadata !1693, metadata !DIExpression()), !dbg !1697
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #10, !dbg !1698
  call void @llvm.dbg.value(metadata i8* %3, metadata !1694, metadata !DIExpression()), !dbg !1699
  %4 = icmp eq i8* %3, %0, !dbg !1700
  br i1 %4, label %5, label %71, !dbg !1702

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #10, !dbg !1703
  call void @llvm.dbg.value(metadata i8* %6, metadata !1695, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i8* %6, metadata !1705, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i8* null, metadata !1711, metadata !DIExpression()), !dbg !1724
  call void @llvm.dbg.value(metadata i8 85, metadata !1712, metadata !DIExpression()), !dbg !1725
  call void @llvm.dbg.value(metadata i8 84, metadata !1713, metadata !DIExpression()), !dbg !1726
  call void @llvm.dbg.value(metadata i8 70, metadata !1714, metadata !DIExpression()), !dbg !1727
  call void @llvm.dbg.value(metadata i8 45, metadata !1715, metadata !DIExpression()), !dbg !1728
  call void @llvm.dbg.value(metadata i8 56, metadata !1716, metadata !DIExpression()), !dbg !1729
  call void @llvm.dbg.value(metadata i8 0, metadata !1717, metadata !DIExpression()), !dbg !1730
  call void @llvm.dbg.value(metadata i8 0, metadata !1718, metadata !DIExpression()), !dbg !1731
  call void @llvm.dbg.value(metadata i8 0, metadata !1719, metadata !DIExpression()), !dbg !1732
  call void @llvm.dbg.value(metadata i8 0, metadata !1720, metadata !DIExpression()), !dbg !1733
  %7 = load i8, i8* %6, align 1, !dbg !1734, !tbaa !723
  %8 = and i8 %7, -33, !dbg !1734
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !1734

; <label>:9:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1736, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i8* null, metadata !1741, metadata !DIExpression()), !dbg !1754
  call void @llvm.dbg.value(metadata i8 84, metadata !1742, metadata !DIExpression()), !dbg !1755
  call void @llvm.dbg.value(metadata i8 70, metadata !1743, metadata !DIExpression()), !dbg !1756
  call void @llvm.dbg.value(metadata i8 45, metadata !1744, metadata !DIExpression()), !dbg !1757
  call void @llvm.dbg.value(metadata i8 56, metadata !1745, metadata !DIExpression()), !dbg !1758
  call void @llvm.dbg.value(metadata i8 0, metadata !1746, metadata !DIExpression()), !dbg !1759
  call void @llvm.dbg.value(metadata i8 0, metadata !1747, metadata !DIExpression()), !dbg !1760
  call void @llvm.dbg.value(metadata i8 0, metadata !1748, metadata !DIExpression()), !dbg !1761
  call void @llvm.dbg.value(metadata i8 0, metadata !1749, metadata !DIExpression()), !dbg !1762
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1763
  %11 = load i8, i8* %10, align 1, !dbg !1763, !tbaa !723
  %12 = and i8 %11, -33, !dbg !1763
  %13 = icmp eq i8 %12, 84, !dbg !1763
  br i1 %13, label %14, label %68, !dbg !1763

; <label>:14:                                     ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !1765, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i8* null, metadata !1770, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i8 70, metadata !1771, metadata !DIExpression()), !dbg !1783
  call void @llvm.dbg.value(metadata i8 45, metadata !1772, metadata !DIExpression()), !dbg !1784
  call void @llvm.dbg.value(metadata i8 56, metadata !1773, metadata !DIExpression()), !dbg !1785
  call void @llvm.dbg.value(metadata i8 0, metadata !1774, metadata !DIExpression()), !dbg !1786
  call void @llvm.dbg.value(metadata i8 0, metadata !1775, metadata !DIExpression()), !dbg !1787
  call void @llvm.dbg.value(metadata i8 0, metadata !1776, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i8 0, metadata !1777, metadata !DIExpression()), !dbg !1789
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1790
  %16 = load i8, i8* %15, align 1, !dbg !1790, !tbaa !723
  %17 = and i8 %16, -33, !dbg !1790
  %18 = icmp eq i8 %17, 70, !dbg !1790
  br i1 %18, label %19, label %68, !dbg !1790

; <label>:19:                                     ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !1792, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i8* null, metadata !1797, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i8 45, metadata !1798, metadata !DIExpression()), !dbg !1809
  call void @llvm.dbg.value(metadata i8 56, metadata !1799, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i8 0, metadata !1800, metadata !DIExpression()), !dbg !1811
  call void @llvm.dbg.value(metadata i8 0, metadata !1801, metadata !DIExpression()), !dbg !1812
  call void @llvm.dbg.value(metadata i8 0, metadata !1802, metadata !DIExpression()), !dbg !1813
  call void @llvm.dbg.value(metadata i8 0, metadata !1803, metadata !DIExpression()), !dbg !1814
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1815
  %21 = load i8, i8* %20, align 1, !dbg !1815, !tbaa !723
  %22 = icmp eq i8 %21, 45, !dbg !1815
  br i1 %22, label %23, label %68, !dbg !1817

; <label>:23:                                     ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !1818, metadata !DIExpression()), !dbg !1829
  call void @llvm.dbg.value(metadata i8* null, metadata !1823, metadata !DIExpression()), !dbg !1833
  call void @llvm.dbg.value(metadata i8 56, metadata !1824, metadata !DIExpression()), !dbg !1834
  call void @llvm.dbg.value(metadata i8 0, metadata !1825, metadata !DIExpression()), !dbg !1835
  call void @llvm.dbg.value(metadata i8 0, metadata !1826, metadata !DIExpression()), !dbg !1836
  call void @llvm.dbg.value(metadata i8 0, metadata !1827, metadata !DIExpression()), !dbg !1837
  call void @llvm.dbg.value(metadata i8 0, metadata !1828, metadata !DIExpression()), !dbg !1838
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1839
  %25 = load i8, i8* %24, align 1, !dbg !1839, !tbaa !723
  %26 = icmp eq i8 %25, 56, !dbg !1839
  br i1 %26, label %27, label %68, !dbg !1841

; <label>:27:                                     ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !1842, metadata !DIExpression()), !dbg !1852
  call void @llvm.dbg.value(metadata i8* null, metadata !1847, metadata !DIExpression()), !dbg !1856
  call void @llvm.dbg.value(metadata i8 0, metadata !1848, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i8 0, metadata !1849, metadata !DIExpression()), !dbg !1858
  call void @llvm.dbg.value(metadata i8 0, metadata !1850, metadata !DIExpression()), !dbg !1859
  call void @llvm.dbg.value(metadata i8 0, metadata !1851, metadata !DIExpression()), !dbg !1860
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1861
  %29 = load i8, i8* %28, align 1, !dbg !1861, !tbaa !723
  %30 = icmp eq i8 %29, 0, !dbg !1861
  br i1 %30, label %31, label %68, !dbg !1863

; <label>:31:                                     ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !1864, !tbaa !723
  %33 = icmp eq i8 %32, 96, !dbg !1865
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.64, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.65, i64 0, i64 0), !dbg !1864
  br label %71, !dbg !1866

; <label>:35:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1736, metadata !DIExpression()), !dbg !1867
  call void @llvm.dbg.value(metadata i8* null, metadata !1741, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata i8 66, metadata !1742, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i8 49, metadata !1743, metadata !DIExpression()), !dbg !1873
  call void @llvm.dbg.value(metadata i8 56, metadata !1744, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata i8 48, metadata !1745, metadata !DIExpression()), !dbg !1875
  call void @llvm.dbg.value(metadata i8 51, metadata !1746, metadata !DIExpression()), !dbg !1876
  call void @llvm.dbg.value(metadata i8 48, metadata !1747, metadata !DIExpression()), !dbg !1877
  call void @llvm.dbg.value(metadata i8 0, metadata !1748, metadata !DIExpression()), !dbg !1878
  call void @llvm.dbg.value(metadata i8 0, metadata !1749, metadata !DIExpression()), !dbg !1879
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1880
  %37 = load i8, i8* %36, align 1, !dbg !1880, !tbaa !723
  %38 = and i8 %37, -33, !dbg !1880
  %39 = icmp eq i8 %38, 66, !dbg !1880
  br i1 %39, label %40, label %68, !dbg !1880

; <label>:40:                                     ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !1765, metadata !DIExpression()), !dbg !1881
  call void @llvm.dbg.value(metadata i8* null, metadata !1770, metadata !DIExpression()), !dbg !1883
  call void @llvm.dbg.value(metadata i8 49, metadata !1771, metadata !DIExpression()), !dbg !1884
  call void @llvm.dbg.value(metadata i8 56, metadata !1772, metadata !DIExpression()), !dbg !1885
  call void @llvm.dbg.value(metadata i8 48, metadata !1773, metadata !DIExpression()), !dbg !1886
  call void @llvm.dbg.value(metadata i8 51, metadata !1774, metadata !DIExpression()), !dbg !1887
  call void @llvm.dbg.value(metadata i8 48, metadata !1775, metadata !DIExpression()), !dbg !1888
  call void @llvm.dbg.value(metadata i8 0, metadata !1776, metadata !DIExpression()), !dbg !1889
  call void @llvm.dbg.value(metadata i8 0, metadata !1777, metadata !DIExpression()), !dbg !1890
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1891
  %42 = load i8, i8* %41, align 1, !dbg !1891, !tbaa !723
  %43 = icmp eq i8 %42, 49, !dbg !1891
  br i1 %43, label %44, label %68, !dbg !1892

; <label>:44:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !1792, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata i8* null, metadata !1797, metadata !DIExpression()), !dbg !1895
  call void @llvm.dbg.value(metadata i8 56, metadata !1798, metadata !DIExpression()), !dbg !1896
  call void @llvm.dbg.value(metadata i8 48, metadata !1799, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8 51, metadata !1800, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i8 48, metadata !1801, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i8 0, metadata !1802, metadata !DIExpression()), !dbg !1900
  call void @llvm.dbg.value(metadata i8 0, metadata !1803, metadata !DIExpression()), !dbg !1901
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1902
  %46 = load i8, i8* %45, align 1, !dbg !1902, !tbaa !723
  %47 = icmp eq i8 %46, 56, !dbg !1902
  br i1 %47, label %48, label %68, !dbg !1903

; <label>:48:                                     ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !1818, metadata !DIExpression()), !dbg !1904
  call void @llvm.dbg.value(metadata i8* null, metadata !1823, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i8 48, metadata !1824, metadata !DIExpression()), !dbg !1907
  call void @llvm.dbg.value(metadata i8 51, metadata !1825, metadata !DIExpression()), !dbg !1908
  call void @llvm.dbg.value(metadata i8 48, metadata !1826, metadata !DIExpression()), !dbg !1909
  call void @llvm.dbg.value(metadata i8 0, metadata !1827, metadata !DIExpression()), !dbg !1910
  call void @llvm.dbg.value(metadata i8 0, metadata !1828, metadata !DIExpression()), !dbg !1911
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1912
  %50 = load i8, i8* %49, align 1, !dbg !1912, !tbaa !723
  %51 = icmp eq i8 %50, 48, !dbg !1912
  br i1 %51, label %52, label %68, !dbg !1913

; <label>:52:                                     ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !1842, metadata !DIExpression()), !dbg !1914
  call void @llvm.dbg.value(metadata i8* null, metadata !1847, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i8 51, metadata !1848, metadata !DIExpression()), !dbg !1917
  call void @llvm.dbg.value(metadata i8 48, metadata !1849, metadata !DIExpression()), !dbg !1918
  call void @llvm.dbg.value(metadata i8 0, metadata !1850, metadata !DIExpression()), !dbg !1919
  call void @llvm.dbg.value(metadata i8 0, metadata !1851, metadata !DIExpression()), !dbg !1920
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1921
  %54 = load i8, i8* %53, align 1, !dbg !1921, !tbaa !723
  %55 = icmp eq i8 %54, 51, !dbg !1921
  br i1 %55, label %56, label %68, !dbg !1922

; <label>:56:                                     ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !1923, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i8* null, metadata !1928, metadata !DIExpression()), !dbg !1936
  call void @llvm.dbg.value(metadata i8 48, metadata !1929, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata i8 0, metadata !1930, metadata !DIExpression()), !dbg !1938
  call void @llvm.dbg.value(metadata i8 0, metadata !1931, metadata !DIExpression()), !dbg !1939
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !1940
  %58 = load i8, i8* %57, align 1, !dbg !1940, !tbaa !723
  %59 = icmp eq i8 %58, 48, !dbg !1940
  br i1 %59, label %60, label %68, !dbg !1942

; <label>:60:                                     ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !1943, metadata !DIExpression()), !dbg !1951
  call void @llvm.dbg.value(metadata i8* null, metadata !1948, metadata !DIExpression()), !dbg !1955
  call void @llvm.dbg.value(metadata i8 0, metadata !1949, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i8 0, metadata !1950, metadata !DIExpression()), !dbg !1957
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !1958
  %62 = load i8, i8* %61, align 1, !dbg !1958, !tbaa !723
  %63 = icmp eq i8 %62, 0, !dbg !1958
  br i1 %63, label %64, label %68, !dbg !1960

; <label>:64:                                     ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !1961, !tbaa !723
  %66 = icmp eq i8 %65, 96, !dbg !1962
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.66, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.67, i64 0, i64 0), !dbg !1961
  br label %71, !dbg !1963

; <label>:68:                                     ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !1964
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.63, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.62, i64 0, i64 0), !dbg !1965
  br label %71, !dbg !1966

; <label>:71:                                     ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !1967
  ret i8* %72, !dbg !1968
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
define dso_local i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #7 !dbg !1969 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1973, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i64 %1, metadata !1974, metadata !DIExpression()), !dbg !1977
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1975, metadata !DIExpression()), !dbg !1978
  call void @llvm.dbg.value(metadata i8* %0, metadata !1979, metadata !DIExpression()) #10, !dbg !1992
  call void @llvm.dbg.value(metadata i64 %1, metadata !1984, metadata !DIExpression()) #10, !dbg !1994
  call void @llvm.dbg.value(metadata i64* null, metadata !1985, metadata !DIExpression()) #10, !dbg !1995
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1986, metadata !DIExpression()) #10, !dbg !1996
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !1997
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !1997
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1987, metadata !DIExpression()) #10, !dbg !1998
  %6 = tail call i32* @__errno_location() #17, !dbg !1999
  %7 = load i32, i32* %6, align 4, !dbg !1999, !tbaa !929
  call void @llvm.dbg.value(metadata i32 %7, metadata !1988, metadata !DIExpression()) #10, !dbg !2000
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2001
  %9 = load i32, i32* %8, align 4, !dbg !2001, !tbaa !1075
  %10 = or i32 %9, 1, !dbg !2002
  call void @llvm.dbg.value(metadata i32 %10, metadata !1989, metadata !DIExpression()) #10, !dbg !2003
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2004
  %12 = load i32, i32* %11, align 8, !dbg !2004, !tbaa !1016
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2005
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2006
  %15 = load i8*, i8** %14, align 8, !dbg !2006, !tbaa !1101
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2007
  %17 = load i8*, i8** %16, align 8, !dbg !2007, !tbaa !1104
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #10, !dbg !2008
  %19 = add i64 %18, 1, !dbg !2009
  call void @llvm.dbg.value(metadata i64 %19, metadata !1990, metadata !DIExpression()) #10, !dbg !2010
  call void @llvm.dbg.value(metadata i64 %19, metadata !2011, metadata !DIExpression()) #10, !dbg !2016
  %20 = tail call noalias i8* @xmalloc(i64 %19) #10, !dbg !2018
  call void @llvm.dbg.value(metadata i8* %20, metadata !1991, metadata !DIExpression()) #10, !dbg !2019
  %21 = load i32, i32* %11, align 8, !dbg !2020, !tbaa !1016
  %22 = load i8*, i8** %14, align 8, !dbg !2021, !tbaa !1101
  %23 = load i8*, i8** %16, align 8, !dbg !2022, !tbaa !1104
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #10, !dbg !2023
  store i32 %7, i32* %6, align 4, !dbg !2024, !tbaa !929
  ret i8* %20, !dbg !2025
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #7 !dbg !1980 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1979, metadata !DIExpression()), !dbg !2026
  call void @llvm.dbg.value(metadata i64 %1, metadata !1984, metadata !DIExpression()), !dbg !2027
  call void @llvm.dbg.value(metadata i64* %2, metadata !1985, metadata !DIExpression()), !dbg !2028
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1986, metadata !DIExpression()), !dbg !2029
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2030
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2030
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1987, metadata !DIExpression()), !dbg !2031
  %7 = tail call i32* @__errno_location() #17, !dbg !2032
  %8 = load i32, i32* %7, align 4, !dbg !2032, !tbaa !929
  call void @llvm.dbg.value(metadata i32 %8, metadata !1988, metadata !DIExpression()), !dbg !2033
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2034
  %10 = load i32, i32* %9, align 4, !dbg !2034, !tbaa !1075
  %11 = icmp ne i64* %2, null, !dbg !2035
  %12 = xor i1 %11, true, !dbg !2035
  %13 = zext i1 %12 to i32, !dbg !2035
  %14 = or i32 %10, %13, !dbg !2036
  call void @llvm.dbg.value(metadata i32 %14, metadata !1989, metadata !DIExpression()), !dbg !2037
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2038
  %16 = load i32, i32* %15, align 8, !dbg !2038, !tbaa !1016
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2039
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2040
  %19 = load i8*, i8** %18, align 8, !dbg !2040, !tbaa !1101
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2041
  %21 = load i8*, i8** %20, align 8, !dbg !2041, !tbaa !1104
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !2042
  %23 = add i64 %22, 1, !dbg !2043
  call void @llvm.dbg.value(metadata i64 %23, metadata !1990, metadata !DIExpression()), !dbg !2044
  call void @llvm.dbg.value(metadata i64 %23, metadata !2011, metadata !DIExpression()) #10, !dbg !2045
  %24 = tail call noalias i8* @xmalloc(i64 %23) #10, !dbg !2047
  call void @llvm.dbg.value(metadata i8* %24, metadata !1991, metadata !DIExpression()), !dbg !2048
  %25 = load i32, i32* %15, align 8, !dbg !2049, !tbaa !1016
  %26 = load i8*, i8** %18, align 8, !dbg !2050, !tbaa !1101
  %27 = load i8*, i8** %20, align 8, !dbg !2051, !tbaa !1104
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !2052
  store i32 %8, i32* %7, align 4, !dbg !2053, !tbaa !929
  br i1 %11, label %29, label %30, !dbg !2054

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2055, !tbaa !2057
  br label %30, !dbg !2058

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2059
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #7 !dbg !2060 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2064, !tbaa !609
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2062, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata i32 1, metadata !2063, metadata !DIExpression()), !dbg !2066
  %2 = load i32, i32* @nslots, align 4, !dbg !2067, !tbaa !929
  %3 = icmp sgt i32 %2, 1, !dbg !2070
  br i1 %3, label %4, label %12, !dbg !2071

; <label>:4:                                      ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !2063, metadata !DIExpression()), !dbg !2066
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !2072
  %7 = load i8*, i8** %6, align 8, !dbg !2072, !tbaa !2073
  tail call void @free(i8* %7) #10, !dbg !2075
  %8 = add nuw nsw i64 %5, 1, !dbg !2076
  call void @llvm.dbg.value(metadata i32 undef, metadata !2063, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2066
  %9 = load i32, i32* @nslots, align 4, !dbg !2067, !tbaa !929
  %10 = sext i32 %9 to i64, !dbg !2070
  %11 = icmp slt i64 %8, %10, !dbg !2070
  br i1 %11, label %4, label %12, !dbg !2071, !llvm.loop !2077

; <label>:12:                                     ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2079
  %14 = load i8*, i8** %13, align 8, !dbg !2079, !tbaa !2073
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2081
  br i1 %15, label %17, label %16, !dbg !2082

; <label>:16:                                     ; preds = %12
  tail call void @free(i8* %14) #10, !dbg !2083
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2085, !tbaa !2086
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2087, !tbaa !2073
  br label %17, !dbg !2088

; <label>:17:                                     ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2089
  br i1 %18, label %21, label %19, !dbg !2091

; <label>:19:                                     ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2092
  tail call void @free(i8* %20) #10, !dbg !2094
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2095, !tbaa !609
  br label %21, !dbg !2096

; <label>:21:                                     ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !2097, !tbaa !929
  ret void, !dbg !2098
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32, i8*) local_unnamed_addr #7 !dbg !2099 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2103, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i8* %1, metadata !2104, metadata !DIExpression()), !dbg !2106
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2107
  ret i8* %3, !dbg !2108
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #7 !dbg !2109 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2113, metadata !DIExpression()), !dbg !2128
  call void @llvm.dbg.value(metadata i8* %1, metadata !2114, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i64 %2, metadata !2115, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2116, metadata !DIExpression()), !dbg !2131
  %5 = tail call i32* @__errno_location() #17, !dbg !2132
  %6 = load i32, i32* %5, align 4, !dbg !2132, !tbaa !929
  call void @llvm.dbg.value(metadata i32 %6, metadata !2117, metadata !DIExpression()), !dbg !2133
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2134, !tbaa !609
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2118, metadata !DIExpression()), !dbg !2135
  %8 = icmp slt i32 %0, 0, !dbg !2136
  br i1 %8, label %9, label %10, !dbg !2138

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2139
  unreachable, !dbg !2139

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2140, !tbaa !929
  %12 = icmp sgt i32 %11, %0, !dbg !2141
  br i1 %12, label %34, label %13, !dbg !2142

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2143
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2122, metadata !DIExpression()), !dbg !2144
  %15 = icmp eq i32 %0, 2147483647, !dbg !2145
  br i1 %15, label %16, label %17, !dbg !2147

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2148
  unreachable, !dbg !2148

; <label>:17:                                     ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2149
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2149
  %20 = add nsw i32 %0, 1, !dbg !2150
  %21 = sext i32 %20 to i64, !dbg !2151
  %22 = shl nsw i64 %21, 4, !dbg !2152
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #10, !dbg !2153
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2153
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2118, metadata !DIExpression()), !dbg !2135
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2154, !tbaa !609
  br i1 %14, label %25, label %26, !dbg !2155

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2156, !tbaa.struct !2158
  br label %26, !dbg !2159

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2160, !tbaa !929
  %28 = sext i32 %27 to i64, !dbg !2161
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2161
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2162
  %31 = sub nsw i32 %20, %27, !dbg !2163
  %32 = sext i32 %31 to i64, !dbg !2164
  %33 = shl nsw i64 %32, 4, !dbg !2165
  tail call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 %33, i1 false), !dbg !2162
  store i32 %20, i32* @nslots, align 4, !dbg !2166, !tbaa !929
  br label %34, !dbg !2167

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2168
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2118, metadata !DIExpression()), !dbg !2135
  %36 = sext i32 %0 to i64, !dbg !2169
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2170
  %38 = load i64, i64* %37, align 8, !dbg !2170, !tbaa !2086
  call void @llvm.dbg.value(metadata i64 %38, metadata !2123, metadata !DIExpression()), !dbg !2171
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2172
  %40 = load i8*, i8** %39, align 8, !dbg !2172, !tbaa !2073
  call void @llvm.dbg.value(metadata i8* %40, metadata !2125, metadata !DIExpression()), !dbg !2173
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2174
  %42 = load i32, i32* %41, align 4, !dbg !2174, !tbaa !1075
  %43 = or i32 %42, 1, !dbg !2175
  call void @llvm.dbg.value(metadata i32 %43, metadata !2126, metadata !DIExpression()), !dbg !2176
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2177
  %45 = load i32, i32* %44, align 8, !dbg !2177, !tbaa !1016
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2178
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2179
  %48 = load i8*, i8** %47, align 8, !dbg !2179, !tbaa !1101
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2180
  %50 = load i8*, i8** %49, align 8, !dbg !2180, !tbaa !1104
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2181
  call void @llvm.dbg.value(metadata i64 %51, metadata !2127, metadata !DIExpression()), !dbg !2182
  %52 = icmp ugt i64 %38, %51, !dbg !2183
  br i1 %52, label %63, label %53, !dbg !2185

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2186
  call void @llvm.dbg.value(metadata i64 %54, metadata !2123, metadata !DIExpression()), !dbg !2171
  store i64 %54, i64* %37, align 8, !dbg !2188, !tbaa !2086
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2189
  br i1 %55, label %57, label %56, !dbg !2191

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #10, !dbg !2192
  br label %57, !dbg !2192

; <label>:57:                                     ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !2011, metadata !DIExpression()) #10, !dbg !2193
  %58 = tail call noalias i8* @xmalloc(i64 %54) #10, !dbg !2195
  call void @llvm.dbg.value(metadata i8* %58, metadata !2125, metadata !DIExpression()), !dbg !2173
  store i8* %58, i8** %39, align 8, !dbg !2196, !tbaa !2073
  %59 = load i32, i32* %44, align 8, !dbg !2197, !tbaa !1016
  %60 = load i8*, i8** %47, align 8, !dbg !2198, !tbaa !1101
  %61 = load i8*, i8** %49, align 8, !dbg !2199, !tbaa !1104
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2200
  br label %63, !dbg !2201

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2202
  call void @llvm.dbg.value(metadata i8* %64, metadata !2125, metadata !DIExpression()), !dbg !2173
  store i32 %6, i32* %5, align 4, !dbg !2203, !tbaa !929
  ret i8* %64, !dbg !2204
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2205 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2209, metadata !DIExpression()), !dbg !2212
  call void @llvm.dbg.value(metadata i8* %1, metadata !2210, metadata !DIExpression()), !dbg !2213
  call void @llvm.dbg.value(metadata i64 %2, metadata !2211, metadata !DIExpression()), !dbg !2214
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2215
  ret i8* %4, !dbg !2216
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8*) local_unnamed_addr #7 !dbg !2217 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2221, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i32 0, metadata !2103, metadata !DIExpression()) #10, !dbg !2223
  call void @llvm.dbg.value(metadata i8* %0, metadata !2104, metadata !DIExpression()) #10, !dbg !2225
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2226
  ret i8* %2, !dbg !2227
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8*, i64) local_unnamed_addr #7 !dbg !2228 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2232, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i64 %1, metadata !2233, metadata !DIExpression()), !dbg !2235
  call void @llvm.dbg.value(metadata i32 0, metadata !2209, metadata !DIExpression()) #10, !dbg !2236
  call void @llvm.dbg.value(metadata i8* %0, metadata !2210, metadata !DIExpression()) #10, !dbg !2238
  call void @llvm.dbg.value(metadata i64 %1, metadata !2211, metadata !DIExpression()) #10, !dbg !2239
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2240
  ret i8* %3, !dbg !2241
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #7 !dbg !2242 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2246, metadata !DIExpression()), !dbg !2250
  call void @llvm.dbg.value(metadata i32 %1, metadata !2247, metadata !DIExpression()), !dbg !2251
  call void @llvm.dbg.value(metadata i8* %2, metadata !2248, metadata !DIExpression()), !dbg !2252
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2253
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2253
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2249, metadata !DIExpression(DW_OP_deref)), !dbg !2254
  call void @llvm.dbg.value(metadata i32 %1, metadata !2255, metadata !DIExpression()) #10, !dbg !2261
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #10, !dbg !2263, !alias.scope !2264
  %6 = icmp eq i32 %1, 10, !dbg !2267
  br i1 %6, label %7, label %8, !dbg !2269

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2270, !noalias !2264
  unreachable, !dbg !2270

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2271
  store i32 %1, i32* %9, align 8, !dbg !2272, !tbaa !1016, !alias.scope !2264
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2249, metadata !DIExpression(DW_OP_deref)), !dbg !2254
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2260, metadata !DIExpression(DW_OP_deref)), !dbg !2263
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2273
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2274
  ret i8* %10, !dbg !2275
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #7 !dbg !2276 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2280, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i32 %1, metadata !2281, metadata !DIExpression()), !dbg !2286
  call void @llvm.dbg.value(metadata i8* %2, metadata !2282, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata i64 %3, metadata !2283, metadata !DIExpression()), !dbg !2288
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2289
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2289
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2284, metadata !DIExpression(DW_OP_deref)), !dbg !2290
  call void @llvm.dbg.value(metadata i32 %1, metadata !2255, metadata !DIExpression()) #10, !dbg !2291
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %6, i8 0, i64 56, i1 false) #10, !dbg !2293, !alias.scope !2294
  %7 = icmp eq i32 %1, 10, !dbg !2297
  br i1 %7, label %8, label %9, !dbg !2298

; <label>:8:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2299, !noalias !2294
  unreachable, !dbg !2299

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2300
  store i32 %1, i32* %10, align 8, !dbg !2301, !tbaa !1016, !alias.scope !2294
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2284, metadata !DIExpression(DW_OP_deref)), !dbg !2290
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2260, metadata !DIExpression(DW_OP_deref)), !dbg !2293
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2302
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2303
  ret i8* %11, !dbg !2304
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32, i8*) local_unnamed_addr #7 !dbg !2305 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2309, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8* %1, metadata !2310, metadata !DIExpression()), !dbg !2312
  call void @llvm.dbg.value(metadata i32 0, metadata !2246, metadata !DIExpression()) #10, !dbg !2313
  call void @llvm.dbg.value(metadata i32 %0, metadata !2247, metadata !DIExpression()) #10, !dbg !2315
  call void @llvm.dbg.value(metadata i8* %1, metadata !2248, metadata !DIExpression()) #10, !dbg !2316
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2317
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2317
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2249, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2318
  call void @llvm.dbg.value(metadata i32 %0, metadata !2255, metadata !DIExpression()) #10, !dbg !2319
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %4, i8 0, i64 56, i1 false) #10, !dbg !2321, !alias.scope !2322
  %5 = icmp eq i32 %0, 10, !dbg !2325
  br i1 %5, label %6, label %7, !dbg !2326

; <label>:6:                                      ; preds = %2
  tail call void @abort() #15, !dbg !2327, !noalias !2322
  unreachable, !dbg !2327

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2328
  store i32 %0, i32* %8, align 8, !dbg !2329, !tbaa !1016, !alias.scope !2322
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2249, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2318
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2260, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2321
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !2330
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2331
  ret i8* %9, !dbg !2332
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2333 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2337, metadata !DIExpression()), !dbg !2340
  call void @llvm.dbg.value(metadata i8* %1, metadata !2338, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i64 %2, metadata !2339, metadata !DIExpression()), !dbg !2342
  call void @llvm.dbg.value(metadata i32 0, metadata !2280, metadata !DIExpression()) #10, !dbg !2343
  call void @llvm.dbg.value(metadata i32 %0, metadata !2281, metadata !DIExpression()) #10, !dbg !2345
  call void @llvm.dbg.value(metadata i8* %1, metadata !2282, metadata !DIExpression()) #10, !dbg !2346
  call void @llvm.dbg.value(metadata i64 %2, metadata !2283, metadata !DIExpression()) #10, !dbg !2347
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2348
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2348
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2284, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2349
  call void @llvm.dbg.value(metadata i32 %0, metadata !2255, metadata !DIExpression()) #10, !dbg !2350
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #10, !dbg !2352, !alias.scope !2353
  %6 = icmp eq i32 %0, 10, !dbg !2356
  br i1 %6, label %7, label %8, !dbg !2357

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2358, !noalias !2353
  unreachable, !dbg !2358

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2359
  store i32 %0, i32* %9, align 8, !dbg !2360, !tbaa !1016, !alias.scope !2353
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2284, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2349
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2260, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2352
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #10, !dbg !2361
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2362
  ret i8* %10, !dbg !2363
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #7 !dbg !2364 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2368, metadata !DIExpression()), !dbg !2372
  call void @llvm.dbg.value(metadata i64 %1, metadata !2369, metadata !DIExpression()), !dbg !2373
  call void @llvm.dbg.value(metadata i8 %2, metadata !2370, metadata !DIExpression()), !dbg !2374
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2375
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2375
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2376, !tbaa.struct !2377
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2371, metadata !DIExpression(DW_OP_deref)), !dbg !2378
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1035, metadata !DIExpression()), !dbg !2379
  call void @llvm.dbg.value(metadata i8 %2, metadata !1036, metadata !DIExpression()), !dbg !2381
  call void @llvm.dbg.value(metadata i32 1, metadata !1037, metadata !DIExpression()), !dbg !2382
  call void @llvm.dbg.value(metadata i8 %2, metadata !1038, metadata !DIExpression()), !dbg !2383
  %6 = lshr i8 %2, 5, !dbg !2384
  %7 = zext i8 %6 to i64, !dbg !2384
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2385
  call void @llvm.dbg.value(metadata i32* %8, metadata !1039, metadata !DIExpression()), !dbg !2386
  %9 = and i8 %2, 31, !dbg !2387
  %10 = zext i8 %9 to i32, !dbg !2387
  call void @llvm.dbg.value(metadata i32 %10, metadata !1041, metadata !DIExpression()), !dbg !2388
  %11 = load i32, i32* %8, align 4, !dbg !2389, !tbaa !929
  %12 = lshr i32 %11, %10, !dbg !2390
  %13 = and i32 %12, 1, !dbg !2391
  call void @llvm.dbg.value(metadata i32 %13, metadata !1042, metadata !DIExpression()), !dbg !2392
  %14 = xor i32 %13, 1, !dbg !2393
  %15 = shl i32 %14, %10, !dbg !2394
  %16 = xor i32 %15, %11, !dbg !2395
  store i32 %16, i32* %8, align 4, !dbg !2395, !tbaa !929
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2371, metadata !DIExpression(DW_OP_deref)), !dbg !2378
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2396
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2397
  ret i8* %17, !dbg !2398
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #7 !dbg !2399 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2403, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i8 %1, metadata !2404, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.value(metadata i8* %0, metadata !2368, metadata !DIExpression()) #10, !dbg !2407
  call void @llvm.dbg.value(metadata i64 -1, metadata !2369, metadata !DIExpression()) #10, !dbg !2409
  call void @llvm.dbg.value(metadata i8 %1, metadata !2370, metadata !DIExpression()) #10, !dbg !2410
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2411
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2411
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2412, !tbaa.struct !2377
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2371, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2413
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1035, metadata !DIExpression()) #10, !dbg !2414
  call void @llvm.dbg.value(metadata i8 %1, metadata !1036, metadata !DIExpression()) #10, !dbg !2416
  call void @llvm.dbg.value(metadata i32 1, metadata !1037, metadata !DIExpression()) #10, !dbg !2417
  call void @llvm.dbg.value(metadata i8 %1, metadata !1038, metadata !DIExpression()) #10, !dbg !2418
  %5 = lshr i8 %1, 5, !dbg !2419
  %6 = zext i8 %5 to i64, !dbg !2419
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2420
  call void @llvm.dbg.value(metadata i32* %7, metadata !1039, metadata !DIExpression()) #10, !dbg !2421
  %8 = and i8 %1, 31, !dbg !2422
  %9 = zext i8 %8 to i32, !dbg !2422
  call void @llvm.dbg.value(metadata i32 %9, metadata !1041, metadata !DIExpression()) #10, !dbg !2423
  %10 = load i32, i32* %7, align 4, !dbg !2424, !tbaa !929
  %11 = lshr i32 %10, %9, !dbg !2425
  %12 = and i32 %11, 1, !dbg !2426
  call void @llvm.dbg.value(metadata i32 %12, metadata !1042, metadata !DIExpression()) #10, !dbg !2427
  %13 = xor i32 %12, 1, !dbg !2428
  %14 = shl i32 %13, %9, !dbg !2429
  %15 = xor i32 %14, %10, !dbg !2430
  store i32 %15, i32* %7, align 4, !dbg !2430, !tbaa !929
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2371, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2413
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !2431
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2432
  ret i8* %16, !dbg !2433
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8*) local_unnamed_addr #7 !dbg !2434 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2436, metadata !DIExpression()), !dbg !2437
  call void @llvm.dbg.value(metadata i8* %0, metadata !2403, metadata !DIExpression()) #10, !dbg !2438
  call void @llvm.dbg.value(metadata i8 58, metadata !2404, metadata !DIExpression()) #10, !dbg !2440
  call void @llvm.dbg.value(metadata i8* %0, metadata !2368, metadata !DIExpression()) #10, !dbg !2441
  call void @llvm.dbg.value(metadata i64 -1, metadata !2369, metadata !DIExpression()) #10, !dbg !2443
  call void @llvm.dbg.value(metadata i8 58, metadata !2370, metadata !DIExpression()) #10, !dbg !2444
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2445
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #10, !dbg !2445
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2446, !tbaa.struct !2377
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2371, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2447
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1035, metadata !DIExpression()) #10, !dbg !2448
  call void @llvm.dbg.value(metadata i8 58, metadata !1036, metadata !DIExpression()) #10, !dbg !2450
  call void @llvm.dbg.value(metadata i32 1, metadata !1037, metadata !DIExpression()) #10, !dbg !2451
  call void @llvm.dbg.value(metadata i8 58, metadata !1038, metadata !DIExpression()) #10, !dbg !2452
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2453
  call void @llvm.dbg.value(metadata i32* %4, metadata !1039, metadata !DIExpression()) #10, !dbg !2454
  call void @llvm.dbg.value(metadata i32 26, metadata !1041, metadata !DIExpression()) #10, !dbg !2455
  %5 = load i32, i32* %4, align 4, !dbg !2456, !tbaa !929
  %6 = or i32 %5, 67108864, !dbg !2457
  store i32 %6, i32* %4, align 4, !dbg !2457, !tbaa !929
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2371, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2447
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #10, !dbg !2458
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #10, !dbg !2459
  ret i8* %7, !dbg !2460
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #7 !dbg !2461 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2463, metadata !DIExpression()), !dbg !2465
  call void @llvm.dbg.value(metadata i64 %1, metadata !2464, metadata !DIExpression()), !dbg !2466
  call void @llvm.dbg.value(metadata i8* %0, metadata !2368, metadata !DIExpression()) #10, !dbg !2467
  call void @llvm.dbg.value(metadata i64 %1, metadata !2369, metadata !DIExpression()) #10, !dbg !2469
  call void @llvm.dbg.value(metadata i8 58, metadata !2370, metadata !DIExpression()) #10, !dbg !2470
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2471
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2471
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2472, !tbaa.struct !2377
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2371, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2473
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1035, metadata !DIExpression()) #10, !dbg !2474
  call void @llvm.dbg.value(metadata i8 58, metadata !1036, metadata !DIExpression()) #10, !dbg !2476
  call void @llvm.dbg.value(metadata i32 1, metadata !1037, metadata !DIExpression()) #10, !dbg !2477
  call void @llvm.dbg.value(metadata i8 58, metadata !1038, metadata !DIExpression()) #10, !dbg !2478
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2479
  call void @llvm.dbg.value(metadata i32* %5, metadata !1039, metadata !DIExpression()) #10, !dbg !2480
  call void @llvm.dbg.value(metadata i32 26, metadata !1041, metadata !DIExpression()) #10, !dbg !2481
  %6 = load i32, i32* %5, align 4, !dbg !2482, !tbaa !929
  %7 = or i32 %6, 67108864, !dbg !2483
  store i32 %7, i32* %5, align 4, !dbg !2483, !tbaa !929
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2371, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2473
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #10, !dbg !2484
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2485
  ret i8* %8, !dbg !2486
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #7 !dbg !2487 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2260, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2493
  call void @llvm.dbg.value(metadata i32 %0, metadata !2489, metadata !DIExpression()), !dbg !2495
  call void @llvm.dbg.value(metadata i32 %1, metadata !2490, metadata !DIExpression()), !dbg !2496
  call void @llvm.dbg.value(metadata i8* %2, metadata !2491, metadata !DIExpression()), !dbg !2497
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2498
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2498
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2499
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2499
  call void @llvm.dbg.value(metadata i32 %1, metadata !2255, metadata !DIExpression()) #10, !dbg !2500
  call void @llvm.dbg.value(metadata i32 0, metadata !2260, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2493
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 %7, i8 0, i64 52, i1 false), !dbg !2493, !alias.scope !2501
  %8 = icmp eq i32 %1, 10, !dbg !2504
  br i1 %8, label %9, label %10, !dbg !2505

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2506, !noalias !2501
  unreachable, !dbg !2506

; <label>:10:                                     ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2260, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2493
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2499
  store i32 %1, i32* %11, align 8, !dbg !2499
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2499
  %13 = bitcast i32* %12 to i8*, !dbg !2499
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %13, i8* nonnull align 4 %7, i64 52, i1 false), !dbg !2499
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2499
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2492, metadata !DIExpression(DW_OP_deref)), !dbg !2507
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1035, metadata !DIExpression()), !dbg !2508
  call void @llvm.dbg.value(metadata i8 58, metadata !1036, metadata !DIExpression()), !dbg !2510
  call void @llvm.dbg.value(metadata i32 1, metadata !1037, metadata !DIExpression()), !dbg !2511
  call void @llvm.dbg.value(metadata i8 58, metadata !1038, metadata !DIExpression()), !dbg !2512
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2513
  call void @llvm.dbg.value(metadata i32* %14, metadata !1039, metadata !DIExpression()), !dbg !2514
  call void @llvm.dbg.value(metadata i32 26, metadata !1041, metadata !DIExpression()), !dbg !2515
  %15 = load i32, i32* %14, align 4, !dbg !2516, !tbaa !929
  %16 = or i32 %15, 67108864, !dbg !2517
  store i32 %16, i32* %14, align 4, !dbg !2517, !tbaa !929
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2492, metadata !DIExpression(DW_OP_deref)), !dbg !2507
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2518
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2519
  ret i8* %17, !dbg !2520
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #7 !dbg !2521 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2525, metadata !DIExpression()), !dbg !2529
  call void @llvm.dbg.value(metadata i8* %1, metadata !2526, metadata !DIExpression()), !dbg !2530
  call void @llvm.dbg.value(metadata i8* %2, metadata !2527, metadata !DIExpression()), !dbg !2531
  call void @llvm.dbg.value(metadata i8* %3, metadata !2528, metadata !DIExpression()), !dbg !2532
  call void @llvm.dbg.value(metadata i32 %0, metadata !2533, metadata !DIExpression()) #10, !dbg !2543
  call void @llvm.dbg.value(metadata i8* %1, metadata !2538, metadata !DIExpression()) #10, !dbg !2545
  call void @llvm.dbg.value(metadata i8* %2, metadata !2539, metadata !DIExpression()) #10, !dbg !2546
  call void @llvm.dbg.value(metadata i8* %3, metadata !2540, metadata !DIExpression()) #10, !dbg !2547
  call void @llvm.dbg.value(metadata i64 -1, metadata !2541, metadata !DIExpression()) #10, !dbg !2548
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2549
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2549
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2550, !tbaa.struct !2377
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2542, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2551
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1083, metadata !DIExpression()) #10, !dbg !2552
  call void @llvm.dbg.value(metadata i8* %1, metadata !1084, metadata !DIExpression()) #10, !dbg !2554
  call void @llvm.dbg.value(metadata i8* %2, metadata !1085, metadata !DIExpression()) #10, !dbg !2555
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1083, metadata !DIExpression()) #10, !dbg !2552
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2556
  store i32 10, i32* %7, align 8, !dbg !2557, !tbaa !1016
  %8 = icmp ne i8* %1, null, !dbg !2558
  %9 = icmp ne i8* %2, null, !dbg !2559
  %10 = and i1 %8, %9, !dbg !2560
  br i1 %10, label %12, label %11, !dbg !2560

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2561
  unreachable, !dbg !2561

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2562
  store i8* %1, i8** %13, align 8, !dbg !2563, !tbaa !1101
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2564
  store i8* %2, i8** %14, align 8, !dbg !2565, !tbaa !1104
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2542, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2551
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #10, !dbg !2566
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2567
  ret i8* %15, !dbg !2568
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !2534 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2533, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i8* %1, metadata !2538, metadata !DIExpression()), !dbg !2570
  call void @llvm.dbg.value(metadata i8* %2, metadata !2539, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8* %3, metadata !2540, metadata !DIExpression()), !dbg !2572
  call void @llvm.dbg.value(metadata i64 %4, metadata !2541, metadata !DIExpression()), !dbg !2573
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2574
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2574
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %7, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2575, !tbaa.struct !2377
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2542, metadata !DIExpression(DW_OP_deref)), !dbg !2576
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1083, metadata !DIExpression()) #10, !dbg !2577
  call void @llvm.dbg.value(metadata i8* %1, metadata !1084, metadata !DIExpression()) #10, !dbg !2579
  call void @llvm.dbg.value(metadata i8* %2, metadata !1085, metadata !DIExpression()) #10, !dbg !2580
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1083, metadata !DIExpression()) #10, !dbg !2577
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2581
  store i32 10, i32* %8, align 8, !dbg !2582, !tbaa !1016
  %9 = icmp ne i8* %1, null, !dbg !2583
  %10 = icmp ne i8* %2, null, !dbg !2584
  %11 = and i1 %9, %10, !dbg !2585
  br i1 %11, label %13, label %12, !dbg !2585

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !2586
  unreachable, !dbg !2586

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2587
  store i8* %1, i8** %14, align 8, !dbg !2588, !tbaa !1101
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2589
  store i8* %2, i8** %15, align 8, !dbg !2590, !tbaa !1104
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2542, metadata !DIExpression(DW_OP_deref)), !dbg !2576
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2591
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2592
  ret i8* %16, !dbg !2593
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #7 !dbg !2594 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2598, metadata !DIExpression()), !dbg !2601
  call void @llvm.dbg.value(metadata i8* %1, metadata !2599, metadata !DIExpression()), !dbg !2602
  call void @llvm.dbg.value(metadata i8* %2, metadata !2600, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i32 0, metadata !2525, metadata !DIExpression()) #10, !dbg !2604
  call void @llvm.dbg.value(metadata i8* %0, metadata !2526, metadata !DIExpression()) #10, !dbg !2606
  call void @llvm.dbg.value(metadata i8* %1, metadata !2527, metadata !DIExpression()) #10, !dbg !2607
  call void @llvm.dbg.value(metadata i8* %2, metadata !2528, metadata !DIExpression()) #10, !dbg !2608
  call void @llvm.dbg.value(metadata i32 0, metadata !2533, metadata !DIExpression()) #10, !dbg !2609
  call void @llvm.dbg.value(metadata i8* %0, metadata !2538, metadata !DIExpression()) #10, !dbg !2611
  call void @llvm.dbg.value(metadata i8* %1, metadata !2539, metadata !DIExpression()) #10, !dbg !2612
  call void @llvm.dbg.value(metadata i8* %2, metadata !2540, metadata !DIExpression()) #10, !dbg !2613
  call void @llvm.dbg.value(metadata i64 -1, metadata !2541, metadata !DIExpression()) #10, !dbg !2614
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2615
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2615
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2616, !tbaa.struct !2377
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2542, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2617
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1083, metadata !DIExpression()) #10, !dbg !2618
  call void @llvm.dbg.value(metadata i8* %0, metadata !1084, metadata !DIExpression()) #10, !dbg !2620
  call void @llvm.dbg.value(metadata i8* %1, metadata !1085, metadata !DIExpression()) #10, !dbg !2621
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1083, metadata !DIExpression()) #10, !dbg !2618
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2622
  store i32 10, i32* %6, align 8, !dbg !2623, !tbaa !1016
  %7 = icmp ne i8* %0, null, !dbg !2624
  %8 = icmp ne i8* %1, null, !dbg !2625
  %9 = and i1 %7, %8, !dbg !2626
  br i1 %9, label %11, label %10, !dbg !2626

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2627
  unreachable, !dbg !2627

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2628
  store i8* %0, i8** %12, align 8, !dbg !2629, !tbaa !1101
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2630
  store i8* %1, i8** %13, align 8, !dbg !2631, !tbaa !1104
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2542, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2617
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !2632
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2633
  ret i8* %14, !dbg !2634
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !2635 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2639, metadata !DIExpression()), !dbg !2643
  call void @llvm.dbg.value(metadata i8* %1, metadata !2640, metadata !DIExpression()), !dbg !2644
  call void @llvm.dbg.value(metadata i8* %2, metadata !2641, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata i64 %3, metadata !2642, metadata !DIExpression()), !dbg !2646
  call void @llvm.dbg.value(metadata i32 0, metadata !2533, metadata !DIExpression()) #10, !dbg !2647
  call void @llvm.dbg.value(metadata i8* %0, metadata !2538, metadata !DIExpression()) #10, !dbg !2649
  call void @llvm.dbg.value(metadata i8* %1, metadata !2539, metadata !DIExpression()) #10, !dbg !2650
  call void @llvm.dbg.value(metadata i8* %2, metadata !2540, metadata !DIExpression()) #10, !dbg !2651
  call void @llvm.dbg.value(metadata i64 %3, metadata !2541, metadata !DIExpression()) #10, !dbg !2652
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2653
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2653
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2654, !tbaa.struct !2377
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2542, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2655
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1083, metadata !DIExpression()) #10, !dbg !2656
  call void @llvm.dbg.value(metadata i8* %0, metadata !1084, metadata !DIExpression()) #10, !dbg !2658
  call void @llvm.dbg.value(metadata i8* %1, metadata !1085, metadata !DIExpression()) #10, !dbg !2659
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1083, metadata !DIExpression()) #10, !dbg !2656
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2660
  store i32 10, i32* %7, align 8, !dbg !2661, !tbaa !1016
  %8 = icmp ne i8* %0, null, !dbg !2662
  %9 = icmp ne i8* %1, null, !dbg !2663
  %10 = and i1 %8, %9, !dbg !2664
  br i1 %10, label %12, label %11, !dbg !2664

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2665
  unreachable, !dbg !2665

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2666
  store i8* %0, i8** %13, align 8, !dbg !2667, !tbaa !1101
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2668
  store i8* %1, i8** %14, align 8, !dbg !2669, !tbaa !1104
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2542, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2655
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #10, !dbg !2670
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2671
  ret i8* %15, !dbg !2672
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2673 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2677, metadata !DIExpression()), !dbg !2680
  call void @llvm.dbg.value(metadata i8* %1, metadata !2678, metadata !DIExpression()), !dbg !2681
  call void @llvm.dbg.value(metadata i64 %2, metadata !2679, metadata !DIExpression()), !dbg !2682
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2683
  ret i8* %4, !dbg !2684
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8*, i64) local_unnamed_addr #7 !dbg !2685 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2689, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i64 %1, metadata !2690, metadata !DIExpression()), !dbg !2692
  call void @llvm.dbg.value(metadata i32 0, metadata !2677, metadata !DIExpression()) #10, !dbg !2693
  call void @llvm.dbg.value(metadata i8* %0, metadata !2678, metadata !DIExpression()) #10, !dbg !2695
  call void @llvm.dbg.value(metadata i64 %1, metadata !2679, metadata !DIExpression()) #10, !dbg !2696
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2697
  ret i8* %3, !dbg !2698
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32, i8*) local_unnamed_addr #7 !dbg !2699 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2703, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i8* %1, metadata !2704, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.value(metadata i32 %0, metadata !2677, metadata !DIExpression()) #10, !dbg !2707
  call void @llvm.dbg.value(metadata i8* %1, metadata !2678, metadata !DIExpression()) #10, !dbg !2709
  call void @llvm.dbg.value(metadata i64 -1, metadata !2679, metadata !DIExpression()) #10, !dbg !2710
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2711
  ret i8* %3, !dbg !2712
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8*) local_unnamed_addr #7 !dbg !2713 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2717, metadata !DIExpression()), !dbg !2718
  call void @llvm.dbg.value(metadata i32 0, metadata !2703, metadata !DIExpression()) #10, !dbg !2719
  call void @llvm.dbg.value(metadata i8* %0, metadata !2704, metadata !DIExpression()) #10, !dbg !2721
  call void @llvm.dbg.value(metadata i32 0, metadata !2677, metadata !DIExpression()) #10, !dbg !2722
  call void @llvm.dbg.value(metadata i8* %0, metadata !2678, metadata !DIExpression()) #10, !dbg !2724
  call void @llvm.dbg.value(metadata i64 -1, metadata !2679, metadata !DIExpression()) #10, !dbg !2725
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2726
  ret i8* %2, !dbg !2727
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #7 !dbg !2728 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2788, metadata !DIExpression()), !dbg !2794
  call void @llvm.dbg.value(metadata i8* %1, metadata !2789, metadata !DIExpression()), !dbg !2795
  call void @llvm.dbg.value(metadata i8* %2, metadata !2790, metadata !DIExpression()), !dbg !2796
  call void @llvm.dbg.value(metadata i8* %3, metadata !2791, metadata !DIExpression()), !dbg !2797
  call void @llvm.dbg.value(metadata i8** %4, metadata !2792, metadata !DIExpression()), !dbg !2798
  call void @llvm.dbg.value(metadata i64 %5, metadata !2793, metadata !DIExpression()), !dbg !2799
  %7 = icmp eq i8* %1, null, !dbg !2800
  br i1 %7, label %10, label %8, !dbg !2802

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.70, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10, !dbg !2803
  br label %12, !dbg !2803

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.71, i64 0, i64 0), i8* %2, i8* %3) #10, !dbg !2804
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.72, i64 0, i64 0), i32 5) #10, !dbg !2805
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2018) #10, !dbg !2805
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([204 x i8], [204 x i8]* @.str.3.73, i64 0, i64 0), i32 5) #10, !dbg !2806
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0), !dbg !2806
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
  ], !dbg !2807

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !2808
  unreachable, !dbg !2808

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.74, i64 0, i64 0), i32 5) #10, !dbg !2810
  %20 = load i8*, i8** %4, align 8, !dbg !2810, !tbaa !609
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #10, !dbg !2810
  br label %146, !dbg !2811

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.75, i64 0, i64 0), i32 5) #10, !dbg !2812
  %24 = load i8*, i8** %4, align 8, !dbg !2812, !tbaa !609
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2812
  %26 = load i8*, i8** %25, align 8, !dbg !2812, !tbaa !609
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #10, !dbg !2812
  br label %146, !dbg !2813

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.76, i64 0, i64 0), i32 5) #10, !dbg !2814
  %30 = load i8*, i8** %4, align 8, !dbg !2814, !tbaa !609
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2814
  %32 = load i8*, i8** %31, align 8, !dbg !2814, !tbaa !609
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2814
  %34 = load i8*, i8** %33, align 8, !dbg !2814, !tbaa !609
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #10, !dbg !2814
  br label %146, !dbg !2815

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.77, i64 0, i64 0), i32 5) #10, !dbg !2816
  %38 = load i8*, i8** %4, align 8, !dbg !2816, !tbaa !609
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2816
  %40 = load i8*, i8** %39, align 8, !dbg !2816, !tbaa !609
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2816
  %42 = load i8*, i8** %41, align 8, !dbg !2816, !tbaa !609
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2816
  %44 = load i8*, i8** %43, align 8, !dbg !2816, !tbaa !609
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #10, !dbg !2816
  br label %146, !dbg !2817

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.78, i64 0, i64 0), i32 5) #10, !dbg !2818
  %48 = load i8*, i8** %4, align 8, !dbg !2818, !tbaa !609
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2818
  %50 = load i8*, i8** %49, align 8, !dbg !2818, !tbaa !609
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2818
  %52 = load i8*, i8** %51, align 8, !dbg !2818, !tbaa !609
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2818
  %54 = load i8*, i8** %53, align 8, !dbg !2818, !tbaa !609
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2818
  %56 = load i8*, i8** %55, align 8, !dbg !2818, !tbaa !609
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #10, !dbg !2818
  br label %146, !dbg !2819

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.79, i64 0, i64 0), i32 5) #10, !dbg !2820
  %60 = load i8*, i8** %4, align 8, !dbg !2820, !tbaa !609
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2820
  %62 = load i8*, i8** %61, align 8, !dbg !2820, !tbaa !609
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2820
  %64 = load i8*, i8** %63, align 8, !dbg !2820, !tbaa !609
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2820
  %66 = load i8*, i8** %65, align 8, !dbg !2820, !tbaa !609
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2820
  %68 = load i8*, i8** %67, align 8, !dbg !2820, !tbaa !609
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2820
  %70 = load i8*, i8** %69, align 8, !dbg !2820, !tbaa !609
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #10, !dbg !2820
  br label %146, !dbg !2821

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.80, i64 0, i64 0), i32 5) #10, !dbg !2822
  %74 = load i8*, i8** %4, align 8, !dbg !2822, !tbaa !609
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2822
  %76 = load i8*, i8** %75, align 8, !dbg !2822, !tbaa !609
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2822
  %78 = load i8*, i8** %77, align 8, !dbg !2822, !tbaa !609
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2822
  %80 = load i8*, i8** %79, align 8, !dbg !2822, !tbaa !609
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2822
  %82 = load i8*, i8** %81, align 8, !dbg !2822, !tbaa !609
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2822
  %84 = load i8*, i8** %83, align 8, !dbg !2822, !tbaa !609
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2822
  %86 = load i8*, i8** %85, align 8, !dbg !2822, !tbaa !609
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #10, !dbg !2822
  br label %146, !dbg !2823

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.81, i64 0, i64 0), i32 5) #10, !dbg !2824
  %90 = load i8*, i8** %4, align 8, !dbg !2824, !tbaa !609
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2824
  %92 = load i8*, i8** %91, align 8, !dbg !2824, !tbaa !609
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2824
  %94 = load i8*, i8** %93, align 8, !dbg !2824, !tbaa !609
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2824
  %96 = load i8*, i8** %95, align 8, !dbg !2824, !tbaa !609
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2824
  %98 = load i8*, i8** %97, align 8, !dbg !2824, !tbaa !609
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2824
  %100 = load i8*, i8** %99, align 8, !dbg !2824, !tbaa !609
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2824
  %102 = load i8*, i8** %101, align 8, !dbg !2824, !tbaa !609
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2824
  %104 = load i8*, i8** %103, align 8, !dbg !2824, !tbaa !609
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #10, !dbg !2824
  br label %146, !dbg !2825

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.82, i64 0, i64 0), i32 5) #10, !dbg !2826
  %108 = load i8*, i8** %4, align 8, !dbg !2826, !tbaa !609
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2826
  %110 = load i8*, i8** %109, align 8, !dbg !2826, !tbaa !609
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2826
  %112 = load i8*, i8** %111, align 8, !dbg !2826, !tbaa !609
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2826
  %114 = load i8*, i8** %113, align 8, !dbg !2826, !tbaa !609
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2826
  %116 = load i8*, i8** %115, align 8, !dbg !2826, !tbaa !609
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2826
  %118 = load i8*, i8** %117, align 8, !dbg !2826, !tbaa !609
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2826
  %120 = load i8*, i8** %119, align 8, !dbg !2826, !tbaa !609
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2826
  %122 = load i8*, i8** %121, align 8, !dbg !2826, !tbaa !609
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2826
  %124 = load i8*, i8** %123, align 8, !dbg !2826, !tbaa !609
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #10, !dbg !2826
  br label %146, !dbg !2827

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.83, i64 0, i64 0), i32 5) #10, !dbg !2828
  %128 = load i8*, i8** %4, align 8, !dbg !2828, !tbaa !609
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2828
  %130 = load i8*, i8** %129, align 8, !dbg !2828, !tbaa !609
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2828
  %132 = load i8*, i8** %131, align 8, !dbg !2828, !tbaa !609
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2828
  %134 = load i8*, i8** %133, align 8, !dbg !2828, !tbaa !609
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2828
  %136 = load i8*, i8** %135, align 8, !dbg !2828, !tbaa !609
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2828
  %138 = load i8*, i8** %137, align 8, !dbg !2828, !tbaa !609
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2828
  %140 = load i8*, i8** %139, align 8, !dbg !2828, !tbaa !609
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2828
  %142 = load i8*, i8** %141, align 8, !dbg !2828, !tbaa !609
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2828
  %144 = load i8*, i8** %143, align 8, !dbg !2828, !tbaa !609
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #10, !dbg !2828
  br label %146, !dbg !2829

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !2830
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #7 !dbg !2831 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2835, metadata !DIExpression()), !dbg !2841
  call void @llvm.dbg.value(metadata i8* %1, metadata !2836, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata i8* %2, metadata !2837, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata i8* %3, metadata !2838, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i8** %4, metadata !2839, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.value(metadata i64 0, metadata !2840, metadata !DIExpression()), !dbg !2846
  br label %6, !dbg !2847

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2849
  call void @llvm.dbg.value(metadata i64 %7, metadata !2840, metadata !DIExpression()), !dbg !2846
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2851
  %9 = load i8*, i8** %8, align 8, !dbg !2851, !tbaa !609
  %10 = icmp eq i8* %9, null, !dbg !2852
  %11 = add i64 %7, 1, !dbg !2853
  call void @llvm.dbg.value(metadata i64 %11, metadata !2840, metadata !DIExpression()), !dbg !2846
  br i1 %10, label %12, label %6, !dbg !2852, !llvm.loop !2854

; <label>:12:                                     ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !2840, metadata !DIExpression()), !dbg !2846
  call void @llvm.dbg.value(metadata i64 %7, metadata !2840, metadata !DIExpression()), !dbg !2846
  call void @llvm.dbg.value(metadata i64 %7, metadata !2840, metadata !DIExpression()), !dbg !2846
  call void @llvm.dbg.value(metadata i64 %7, metadata !2840, metadata !DIExpression()), !dbg !2846
  call void @llvm.dbg.value(metadata i64 %7, metadata !2840, metadata !DIExpression()), !dbg !2846
  call void @llvm.dbg.value(metadata i64 %7, metadata !2840, metadata !DIExpression()), !dbg !2846
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2856
  ret void, !dbg !2857
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #7 !dbg !2858 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2869, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.value(metadata i8* %1, metadata !2870, metadata !DIExpression()), !dbg !2878
  call void @llvm.dbg.value(metadata i8* %2, metadata !2871, metadata !DIExpression()), !dbg !2879
  call void @llvm.dbg.value(metadata i8* %3, metadata !2872, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !2873, metadata !DIExpression()), !dbg !2881
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2882
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #10, !dbg !2882
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2875, metadata !DIExpression()), !dbg !2883
  call void @llvm.dbg.value(metadata i64 0, metadata !2874, metadata !DIExpression()), !dbg !2884
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  call void @llvm.dbg.value(metadata i64 0, metadata !2874, metadata !DIExpression()), !dbg !2884
  %11 = load i32, i32* %8, align 8, !dbg !2885
  %12 = icmp ult i32 %11, 41, !dbg !2885
  br i1 %12, label %13, label %18, !dbg !2885

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !2885
  %15 = sext i32 %11 to i64, !dbg !2885
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !2885
  %17 = add i32 %11, 8, !dbg !2885
  store i32 %17, i32* %8, align 8, !dbg !2885
  br label %21, !dbg !2885

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !2885
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !2885
  store i8* %20, i8** %10, align 8, !dbg !2885
  br label %21, !dbg !2885

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !2885
  %25 = load i8*, i8** %24, align 8, !dbg !2885
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2888
  store i8* %25, i8** %26, align 16, !dbg !2889, !tbaa !609
  %27 = icmp eq i8* %25, null, !dbg !2890
  br i1 %27, label %30, label %28, !dbg !2891

; <label>:28:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !2874, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i64 1, metadata !2874, metadata !DIExpression()), !dbg !2884
  %29 = icmp ult i32 %22, 41, !dbg !2885
  br i1 %29, label %35, label %32, !dbg !2885

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !2892
  call void @llvm.dbg.value(metadata i64 %31, metadata !2874, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i64 %31, metadata !2874, metadata !DIExpression()), !dbg !2884
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !2893
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #10, !dbg !2894
  ret void, !dbg !2894

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !2885
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !2885
  store i8* %34, i8** %10, align 8, !dbg !2885
  br label %40, !dbg !2885

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !2885
  %37 = sext i32 %22 to i64, !dbg !2885
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !2885
  %39 = add i32 %22, 8, !dbg !2885
  store i32 %39, i32* %8, align 8, !dbg !2885
  br label %40, !dbg !2885

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !2885
  %44 = load i8*, i8** %43, align 8, !dbg !2885
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2888
  store i8* %44, i8** %45, align 8, !dbg !2889, !tbaa !609
  %46 = icmp eq i8* %44, null, !dbg !2890
  br i1 %46, label %30, label %47, !dbg !2891

; <label>:47:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !2874, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i64 2, metadata !2874, metadata !DIExpression()), !dbg !2884
  %48 = icmp ult i32 %41, 41, !dbg !2885
  br i1 %48, label %52, label %49, !dbg !2885

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !2885
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !2885
  store i8* %51, i8** %10, align 8, !dbg !2885
  br label %57, !dbg !2885

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !2885
  %54 = sext i32 %41 to i64, !dbg !2885
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !2885
  %56 = add i32 %41, 8, !dbg !2885
  store i32 %56, i32* %8, align 8, !dbg !2885
  br label %57, !dbg !2885

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !2885
  %61 = load i8*, i8** %60, align 8, !dbg !2885
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2888
  store i8* %61, i8** %62, align 16, !dbg !2889, !tbaa !609
  %63 = icmp eq i8* %61, null, !dbg !2890
  br i1 %63, label %30, label %64, !dbg !2891

; <label>:64:                                     ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !2874, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i64 3, metadata !2874, metadata !DIExpression()), !dbg !2884
  %65 = icmp ult i32 %58, 41, !dbg !2885
  br i1 %65, label %69, label %66, !dbg !2885

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !2885
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !2885
  store i8* %68, i8** %10, align 8, !dbg !2885
  br label %74, !dbg !2885

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !2885
  %71 = sext i32 %58 to i64, !dbg !2885
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !2885
  %73 = add i32 %58, 8, !dbg !2885
  store i32 %73, i32* %8, align 8, !dbg !2885
  br label %74, !dbg !2885

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !2885
  %78 = load i8*, i8** %77, align 8, !dbg !2885
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2888
  store i8* %78, i8** %79, align 8, !dbg !2889, !tbaa !609
  %80 = icmp eq i8* %78, null, !dbg !2890
  br i1 %80, label %30, label %81, !dbg !2891

; <label>:81:                                     ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !2874, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i64 4, metadata !2874, metadata !DIExpression()), !dbg !2884
  %82 = icmp ult i32 %75, 41, !dbg !2885
  br i1 %82, label %86, label %83, !dbg !2885

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !2885
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !2885
  store i8* %85, i8** %10, align 8, !dbg !2885
  br label %91, !dbg !2885

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !2885
  %88 = sext i32 %75 to i64, !dbg !2885
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !2885
  %90 = add i32 %75, 8, !dbg !2885
  store i32 %90, i32* %8, align 8, !dbg !2885
  br label %91, !dbg !2885

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !2885
  %95 = load i8*, i8** %94, align 8, !dbg !2885
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2888
  store i8* %95, i8** %96, align 16, !dbg !2889, !tbaa !609
  %97 = icmp eq i8* %95, null, !dbg !2890
  br i1 %97, label %30, label %98, !dbg !2891

; <label>:98:                                     ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !2874, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i64 5, metadata !2874, metadata !DIExpression()), !dbg !2884
  %99 = icmp ult i32 %92, 41, !dbg !2885
  br i1 %99, label %103, label %100, !dbg !2885

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !2885
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !2885
  store i8* %102, i8** %10, align 8, !dbg !2885
  br label %108, !dbg !2885

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !2885
  %105 = sext i32 %92 to i64, !dbg !2885
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !2885
  %107 = add i32 %92, 8, !dbg !2885
  store i32 %107, i32* %8, align 8, !dbg !2885
  br label %108, !dbg !2885

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !2885
  %111 = load i8*, i8** %110, align 8, !dbg !2885
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2888
  store i8* %111, i8** %112, align 8, !dbg !2889, !tbaa !609
  %113 = icmp eq i8* %111, null, !dbg !2890
  br i1 %113, label %30, label %114, !dbg !2891

; <label>:114:                                    ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !2874, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i64 6, metadata !2874, metadata !DIExpression()), !dbg !2884
  %115 = load i8*, i8** %10, align 8, !dbg !2885
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !2885
  store i8* %116, i8** %10, align 8, !dbg !2885
  %117 = bitcast i8* %115 to i8**, !dbg !2885
  %118 = load i8*, i8** %117, align 8, !dbg !2885
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2888
  store i8* %118, i8** %119, align 16, !dbg !2889, !tbaa !609
  %120 = icmp eq i8* %118, null, !dbg !2890
  br i1 %120, label %30, label %121, !dbg !2891

; <label>:121:                                    ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !2874, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i64 7, metadata !2874, metadata !DIExpression()), !dbg !2884
  %122 = load i8*, i8** %10, align 8, !dbg !2885
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !2885
  store i8* %123, i8** %10, align 8, !dbg !2885
  %124 = bitcast i8* %122 to i8**, !dbg !2885
  %125 = load i8*, i8** %124, align 8, !dbg !2885
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2888
  store i8* %125, i8** %126, align 8, !dbg !2889, !tbaa !609
  %127 = icmp eq i8* %125, null, !dbg !2890
  br i1 %127, label %30, label %128, !dbg !2891

; <label>:128:                                    ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !2874, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i64 8, metadata !2874, metadata !DIExpression()), !dbg !2884
  %129 = load i8*, i8** %10, align 8, !dbg !2885
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !2885
  store i8* %130, i8** %10, align 8, !dbg !2885
  %131 = bitcast i8* %129 to i8**, !dbg !2885
  %132 = load i8*, i8** %131, align 8, !dbg !2885
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2888
  store i8* %132, i8** %133, align 16, !dbg !2889, !tbaa !609
  %134 = icmp eq i8* %132, null, !dbg !2890
  br i1 %134, label %30, label %135, !dbg !2891

; <label>:135:                                    ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !2874, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i64 9, metadata !2874, metadata !DIExpression()), !dbg !2884
  %136 = load i8*, i8** %10, align 8, !dbg !2885
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !2885
  store i8* %137, i8** %10, align 8, !dbg !2885
  %138 = bitcast i8* %136 to i8**, !dbg !2885
  %139 = load i8*, i8** %138, align 8, !dbg !2885
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2888
  store i8* %139, i8** %140, align 8, !dbg !2889, !tbaa !609
  %141 = icmp eq i8* %139, null, !dbg !2890
  %142 = select i1 %141, i64 9, i64 10, !dbg !2891
  br label %30, !dbg !2891
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #7 !dbg !2895 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2899, metadata !DIExpression()), !dbg !2910
  call void @llvm.dbg.value(metadata i8* %1, metadata !2900, metadata !DIExpression()), !dbg !2911
  call void @llvm.dbg.value(metadata i8* %2, metadata !2901, metadata !DIExpression()), !dbg !2912
  call void @llvm.dbg.value(metadata i8* %3, metadata !2902, metadata !DIExpression()), !dbg !2913
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !2914
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #10, !dbg !2914
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !2903, metadata !DIExpression()), !dbg !2915
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !2916
  call void @llvm.va_start(i8* nonnull %6), !dbg !2916
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !2917
  call void @llvm.va_end(i8* nonnull %6), !dbg !2918
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #10, !dbg !2919
  ret void, !dbg !2919
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #7 !dbg !2920 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.86, i64 0, i64 0), i32 5) #10, !dbg !2921
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.87, i64 0, i64 0)) #10, !dbg !2921
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.88, i64 0, i64 0), i32 5) #10, !dbg !2922
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.89, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18.90, i64 0, i64 0)) #10, !dbg !2922
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.19.91, i64 0, i64 0), i32 5) #10, !dbg !2923
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2923, !tbaa !609
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6), !dbg !2923
  ret void, !dbg !2924
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !2925 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2929, metadata !DIExpression()), !dbg !2931
  call void @llvm.dbg.value(metadata i64 %1, metadata !2930, metadata !DIExpression()), !dbg !2932
  %3 = udiv i64 9223372036854775807, %1, !dbg !2933
  %4 = icmp ult i64 %3, %0, !dbg !2933
  br i1 %4, label %5, label %6, !dbg !2935

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !2936
  unreachable, !dbg !2936

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !2937
  call void @llvm.dbg.value(metadata i64 %7, metadata !2938, metadata !DIExpression()) #10, !dbg !2945
  %8 = tail call noalias i8* @malloc(i64 %7) #10, !dbg !2947
  call void @llvm.dbg.value(metadata i8* %8, metadata !2944, metadata !DIExpression()) #10, !dbg !2948
  %9 = icmp eq i8* %8, null, !dbg !2949
  %10 = icmp ne i64 %7, 0, !dbg !2951
  %11 = and i1 %10, %9, !dbg !2952
  br i1 %11, label %12, label %13, !dbg !2952

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !2953
  unreachable, !dbg !2953

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !2954
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64) local_unnamed_addr #7 !dbg !2939 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2938, metadata !DIExpression()), !dbg !2955
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !2956
  call void @llvm.dbg.value(metadata i8* %2, metadata !2944, metadata !DIExpression()), !dbg !2957
  %3 = icmp eq i8* %2, null, !dbg !2958
  %4 = icmp ne i64 %0, 0, !dbg !2959
  %5 = and i1 %4, %3, !dbg !2960
  br i1 %5, label %6, label %7, !dbg !2960

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !2961
  unreachable, !dbg !2961

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !2962
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !2963 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2967, metadata !DIExpression()), !dbg !2970
  call void @llvm.dbg.value(metadata i64 %1, metadata !2968, metadata !DIExpression()), !dbg !2971
  call void @llvm.dbg.value(metadata i64 %2, metadata !2969, metadata !DIExpression()), !dbg !2972
  %4 = udiv i64 9223372036854775807, %2, !dbg !2973
  %5 = icmp ult i64 %4, %1, !dbg !2973
  br i1 %5, label %6, label %7, !dbg !2975

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !2976
  unreachable, !dbg !2976

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !2977
  call void @llvm.dbg.value(metadata i8* %0, metadata !2978, metadata !DIExpression()) #10, !dbg !2984
  call void @llvm.dbg.value(metadata i64 %8, metadata !2983, metadata !DIExpression()) #10, !dbg !2986
  %9 = icmp eq i64 %8, 0, !dbg !2987
  %10 = icmp ne i8* %0, null, !dbg !2989
  %11 = and i1 %10, %9, !dbg !2990
  br i1 %11, label %12, label %13, !dbg !2990

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #10, !dbg !2991
  br label %19, !dbg !2993

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #10, !dbg !2994
  call void @llvm.dbg.value(metadata i8* %14, metadata !2978, metadata !DIExpression()) #10, !dbg !2984
  %15 = icmp eq i8* %14, null, !dbg !2995
  %16 = icmp ne i64 %8, 0, !dbg !2997
  %17 = and i1 %16, %15, !dbg !2998
  br i1 %17, label %18, label %19, !dbg !2998

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2999
  unreachable, !dbg !2999

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3000
  ret i8* %20, !dbg !3001
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #7 !dbg !2979 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2978, metadata !DIExpression()), !dbg !3002
  call void @llvm.dbg.value(metadata i64 %1, metadata !2983, metadata !DIExpression()), !dbg !3003
  %3 = icmp eq i64 %1, 0, !dbg !3004
  %4 = icmp ne i8* %0, null, !dbg !3005
  %5 = and i1 %4, %3, !dbg !3006
  br i1 %5, label %6, label %7, !dbg !3006

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #10, !dbg !3007
  br label %13, !dbg !3008

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #10, !dbg !3009
  call void @llvm.dbg.value(metadata i8* %8, metadata !2978, metadata !DIExpression()), !dbg !3002
  %9 = icmp eq i8* %8, null, !dbg !3010
  %10 = icmp ne i64 %1, 0, !dbg !3011
  %11 = and i1 %10, %9, !dbg !3012
  br i1 %11, label %12, label %13, !dbg !3012

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3013
  unreachable, !dbg !3013

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3014
  ret i8* %14, !dbg !3015
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !152 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !157, metadata !DIExpression()), !dbg !3016
  call void @llvm.dbg.value(metadata i64* %1, metadata !158, metadata !DIExpression()), !dbg !3017
  call void @llvm.dbg.value(metadata i64 %2, metadata !159, metadata !DIExpression()), !dbg !3018
  %4 = load i64, i64* %1, align 8, !dbg !3019, !tbaa !2057
  call void @llvm.dbg.value(metadata i64 %4, metadata !160, metadata !DIExpression()), !dbg !3020
  %5 = icmp eq i8* %0, null, !dbg !3021
  br i1 %5, label %6, label %20, !dbg !3023

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3024
  br i1 %7, label %8, label %13, !dbg !3027

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3028
  call void @llvm.dbg.value(metadata i64 %9, metadata !160, metadata !DIExpression()), !dbg !3020
  %10 = icmp ugt i64 %2, 128, !dbg !3030
  %11 = zext i1 %10 to i64, !dbg !3030
  %12 = add nuw nsw i64 %9, %11, !dbg !3031
  call void @llvm.dbg.value(metadata i64 %12, metadata !160, metadata !DIExpression()), !dbg !3020
  br label %13, !dbg !3032

; <label>:13:                                     ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3033
  call void @llvm.dbg.value(metadata i64 %14, metadata !160, metadata !DIExpression()), !dbg !3020
  %15 = udiv i64 9223372036854775807, %2, !dbg !3034
  %16 = icmp ult i64 %15, %14, !dbg !3034
  br i1 %16, label %19, label %17, !dbg !3036

; <label>:17:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !160, metadata !DIExpression()), !dbg !3020
  store i64 %14, i64* %1, align 8, !dbg !3037, !tbaa !2057
  %18 = mul i64 %14, %2, !dbg !3038
  call void @llvm.dbg.value(metadata i8* %0, metadata !2978, metadata !DIExpression()) #10, !dbg !3039
  call void @llvm.dbg.value(metadata i64 %28, metadata !2983, metadata !DIExpression()) #10, !dbg !3041
  br label %31, !dbg !3042

; <label>:19:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3043
  unreachable, !dbg !3043

; <label>:20:                                     ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3044
  %22 = icmp ugt i64 %21, %4, !dbg !3047
  br i1 %22, label %24, label %23, !dbg !3048

; <label>:23:                                     ; preds = %20
  tail call void @xalloc_die() #15, !dbg !3049
  unreachable, !dbg !3049

; <label>:24:                                     ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3050
  %26 = add i64 %4, 1, !dbg !3051
  %27 = add i64 %26, %25, !dbg !3052
  call void @llvm.dbg.value(metadata i64 %27, metadata !160, metadata !DIExpression()), !dbg !3020
  call void @llvm.dbg.value(metadata i64 %27, metadata !160, metadata !DIExpression()), !dbg !3020
  store i64 %27, i64* %1, align 8, !dbg !3037, !tbaa !2057
  %28 = mul i64 %27, %2, !dbg !3038
  call void @llvm.dbg.value(metadata i8* %0, metadata !2978, metadata !DIExpression()) #10, !dbg !3039
  call void @llvm.dbg.value(metadata i64 %28, metadata !2983, metadata !DIExpression()) #10, !dbg !3041
  %29 = icmp eq i64 %28, 0, !dbg !3053
  br i1 %29, label %30, label %31, !dbg !3042

; <label>:30:                                     ; preds = %24
  tail call void @free(i8* nonnull %0) #10, !dbg !3054
  br label %38, !dbg !3055

; <label>:31:                                     ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #10, !dbg !3056
  call void @llvm.dbg.value(metadata i8* %33, metadata !2978, metadata !DIExpression()) #10, !dbg !3039
  %34 = icmp eq i8* %33, null, !dbg !3057
  %35 = icmp ne i64 %32, 0, !dbg !3058
  %36 = and i1 %35, %34, !dbg !3059
  br i1 %36, label %37, label %38, !dbg !3059

; <label>:37:                                     ; preds = %31
  tail call void @xalloc_die() #15, !dbg !3060
  unreachable, !dbg !3060

; <label>:38:                                     ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3061
  ret i8* %39, !dbg !3062
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !3063 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3065, metadata !DIExpression()), !dbg !3066
  call void @llvm.dbg.value(metadata i64 %0, metadata !2938, metadata !DIExpression()) #10, !dbg !3067
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3069
  call void @llvm.dbg.value(metadata i8* %2, metadata !2944, metadata !DIExpression()) #10, !dbg !3070
  %3 = icmp eq i8* %2, null, !dbg !3071
  %4 = icmp ne i64 %0, 0, !dbg !3072
  %5 = and i1 %4, %3, !dbg !3073
  br i1 %5, label %6, label %7, !dbg !3073

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3074
  unreachable, !dbg !3074

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3075
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #7 !dbg !3076 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3080, metadata !DIExpression()), !dbg !3082
  call void @llvm.dbg.value(metadata i64* %1, metadata !3081, metadata !DIExpression()), !dbg !3083
  call void @llvm.dbg.value(metadata i8* %0, metadata !157, metadata !DIExpression()) #10, !dbg !3084
  call void @llvm.dbg.value(metadata i64* %1, metadata !158, metadata !DIExpression()) #10, !dbg !3086
  call void @llvm.dbg.value(metadata i64 1, metadata !159, metadata !DIExpression()) #10, !dbg !3087
  %3 = load i64, i64* %1, align 8, !dbg !3088, !tbaa !2057
  call void @llvm.dbg.value(metadata i64 %3, metadata !160, metadata !DIExpression()) #10, !dbg !3089
  %4 = icmp eq i8* %0, null, !dbg !3090
  br i1 %4, label %5, label %12, !dbg !3091

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3092
  br i1 %6, label %9, label %7, !dbg !3093

; <label>:7:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !160, metadata !DIExpression()) #10, !dbg !3089
  %8 = icmp slt i64 %3, 0, !dbg !3094
  br i1 %8, label %11, label %9, !dbg !3095

; <label>:9:                                      ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !160, metadata !DIExpression()) #10, !dbg !3089
  store i64 %10, i64* %1, align 8, !dbg !3096, !tbaa !2057
  call void @llvm.dbg.value(metadata i8* %0, metadata !2978, metadata !DIExpression()) #10, !dbg !3097
  call void @llvm.dbg.value(metadata i64 %18, metadata !2983, metadata !DIExpression()) #10, !dbg !3099
  br label %21, !dbg !3100

; <label>:11:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3101
  unreachable, !dbg !3101

; <label>:12:                                     ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !3102
  br i1 %13, label %15, label %14, !dbg !3103

; <label>:14:                                     ; preds = %12
  tail call void @xalloc_die() #15, !dbg !3104
  unreachable, !dbg !3104

; <label>:15:                                     ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !3105
  %17 = add i64 %3, 1, !dbg !3106
  %18 = add i64 %17, %16, !dbg !3107
  call void @llvm.dbg.value(metadata i64 %18, metadata !160, metadata !DIExpression()) #10, !dbg !3089
  call void @llvm.dbg.value(metadata i64 %18, metadata !160, metadata !DIExpression()) #10, !dbg !3089
  store i64 %18, i64* %1, align 8, !dbg !3096, !tbaa !2057
  call void @llvm.dbg.value(metadata i8* %0, metadata !2978, metadata !DIExpression()) #10, !dbg !3097
  call void @llvm.dbg.value(metadata i64 %18, metadata !2983, metadata !DIExpression()) #10, !dbg !3099
  %19 = icmp eq i64 %18, 0, !dbg !3108
  br i1 %19, label %20, label %21, !dbg !3100

; <label>:20:                                     ; preds = %15
  tail call void @free(i8* nonnull %0) #10, !dbg !3109
  br label %28, !dbg !3110

; <label>:21:                                     ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #10, !dbg !3111
  call void @llvm.dbg.value(metadata i8* %23, metadata !2978, metadata !DIExpression()) #10, !dbg !3097
  %24 = icmp eq i8* %23, null, !dbg !3112
  %25 = icmp ne i64 %22, 0, !dbg !3113
  %26 = and i1 %25, %24, !dbg !3114
  br i1 %26, label %27, label %28, !dbg !3114

; <label>:27:                                     ; preds = %21
  tail call void @xalloc_die() #15, !dbg !3115
  unreachable, !dbg !3115

; <label>:28:                                     ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !3116
  ret i8* %29, !dbg !3117
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64) local_unnamed_addr #7 !dbg !3118 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3120, metadata !DIExpression()), !dbg !3121
  call void @llvm.dbg.value(metadata i64 %0, metadata !2938, metadata !DIExpression()) #10, !dbg !3122
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3124
  call void @llvm.dbg.value(metadata i8* %2, metadata !2944, metadata !DIExpression()) #10, !dbg !3125
  %3 = icmp eq i8* %2, null, !dbg !3126
  %4 = icmp ne i64 %0, 0, !dbg !3127
  %5 = and i1 %4, %3, !dbg !3128
  br i1 %5, label %6, label %7, !dbg !3128

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3129
  unreachable, !dbg !3129

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* align 1 %2, i8 0, i64 %0, i1 false), !dbg !3130
  ret i8* %2, !dbg !3131
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64, i64) local_unnamed_addr #7 !dbg !3132 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3134, metadata !DIExpression()), !dbg !3137
  call void @llvm.dbg.value(metadata i64 %1, metadata !3135, metadata !DIExpression()), !dbg !3138
  %3 = udiv i64 9223372036854775807, %1, !dbg !3139
  %4 = icmp ult i64 %3, %0, !dbg !3139
  br i1 %4, label %8, label %5, !dbg !3141

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #10, !dbg !3142
  call void @llvm.dbg.value(metadata i8* %6, metadata !3136, metadata !DIExpression()), !dbg !3143
  %7 = icmp eq i8* %6, null, !dbg !3144
  br i1 %7, label %8, label %9, !dbg !3145

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !3146
  unreachable, !dbg !3146

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3147
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #7 !dbg !3148 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3154, metadata !DIExpression()), !dbg !3156
  call void @llvm.dbg.value(metadata i64 %1, metadata !3155, metadata !DIExpression()), !dbg !3157
  call void @llvm.dbg.value(metadata i64 %1, metadata !2938, metadata !DIExpression()) #10, !dbg !3158
  %3 = tail call noalias i8* @malloc(i64 %1) #10, !dbg !3160
  call void @llvm.dbg.value(metadata i8* %3, metadata !2944, metadata !DIExpression()) #10, !dbg !3161
  %4 = icmp eq i8* %3, null, !dbg !3162
  %5 = icmp ne i64 %1, 0, !dbg !3163
  %6 = and i1 %5, %4, !dbg !3164
  br i1 %6, label %7, label %8, !dbg !3164

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3165
  unreachable, !dbg !3165

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 %0, i64 %1, i1 false), !dbg !3166
  ret i8* %3, !dbg !3167
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #7 !dbg !3168 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3170, metadata !DIExpression()), !dbg !3171
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !3172
  %3 = add i64 %2, 1, !dbg !3173
  call void @llvm.dbg.value(metadata i8* %0, metadata !3154, metadata !DIExpression()) #10, !dbg !3174
  call void @llvm.dbg.value(metadata i64 %3, metadata !3155, metadata !DIExpression()) #10, !dbg !3176
  call void @llvm.dbg.value(metadata i64 %3, metadata !2938, metadata !DIExpression()) #10, !dbg !3177
  %4 = tail call noalias i8* @malloc(i64 %3) #10, !dbg !3179
  call void @llvm.dbg.value(metadata i8* %4, metadata !2944, metadata !DIExpression()) #10, !dbg !3180
  %5 = icmp eq i8* %4, null, !dbg !3181
  %6 = icmp ne i64 %3, 0, !dbg !3182
  %7 = and i1 %6, %5, !dbg !3183
  br i1 %7, label %8, label %9, !dbg !3183

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3184
  unreachable, !dbg !3184

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %0, i64 %3, i1 false) #10, !dbg !3185
  ret i8* %4, !dbg !3186
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3187 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3189, !tbaa !929
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.102, i64 0, i64 0), i32 5) #10, !dbg !3190
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.103, i64 0, i64 0), i8* %2) #10, !dbg !3191
  tail call void @abort() #15, !dbg !3192
  unreachable, !dbg !3192
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #7 !dbg !3193 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3196, metadata !DIExpression()), !dbg !3202
  call void @llvm.dbg.value(metadata i64 %1, metadata !3197, metadata !DIExpression()), !dbg !3203
  %3 = icmp eq i64 %0, 0, !dbg !3204
  %4 = icmp eq i64 %1, 0, !dbg !3205
  %5 = or i1 %3, %4, !dbg !3206
  br i1 %5, label %12, label %6, !dbg !3206

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3207
  call void @llvm.dbg.value(metadata i64 %7, metadata !3199, metadata !DIExpression()), !dbg !3208
  %8 = udiv i64 %7, %1, !dbg !3209
  %9 = icmp eq i64 %8, %0, !dbg !3211
  br i1 %9, label %12, label %10, !dbg !3212

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !3213
  store i32 12, i32* %11, align 4, !dbg !3215, !tbaa !929
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %14, metadata !3196, metadata !DIExpression()), !dbg !3202
  call void @llvm.dbg.value(metadata i64 %13, metadata !3197, metadata !DIExpression()), !dbg !3203
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #10, !dbg !3216
  call void @llvm.dbg.value(metadata i8* %15, metadata !3198, metadata !DIExpression()), !dbg !3217
  br label %16, !dbg !3218

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ], !dbg !3219
  ret i8* %17, !dbg !3220
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #7 !dbg !3221 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !3238, metadata !DIExpression()), !dbg !3247
  call void @llvm.dbg.value(metadata i8* %1, metadata !3239, metadata !DIExpression()), !dbg !3248
  call void @llvm.dbg.value(metadata i64 %2, metadata !3240, metadata !DIExpression()), !dbg !3249
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3241, metadata !DIExpression()), !dbg !3250
  %6 = bitcast i32* %5 to i8*, !dbg !3251
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #10, !dbg !3251
  %7 = icmp eq i32* %0, null, !dbg !3252
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3254
  call void @llvm.dbg.value(metadata i32* %8, metadata !3238, metadata !DIExpression()), !dbg !3247
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #10, !dbg !3255
  call void @llvm.dbg.value(metadata i64 %9, metadata !3242, metadata !DIExpression()), !dbg !3256
  %10 = icmp ugt i64 %9, -3, !dbg !3257
  %11 = icmp ne i64 %2, 0, !dbg !3258
  %12 = and i1 %11, %10, !dbg !3259
  br i1 %12, label %13, label %18, !dbg !3259

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #10, !dbg !3260
  br i1 %14, label %18, label %15, !dbg !3261

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3262, !tbaa !723
  call void @llvm.dbg.value(metadata i8 %16, metadata !3244, metadata !DIExpression()), !dbg !3263
  %17 = zext i8 %16 to i32, !dbg !3264
  store i32 %17, i32* %8, align 4, !dbg !3265, !tbaa !929
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !3266
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #10, !dbg !3267
  ret i64 %19, !dbg !3267
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !3268 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3307, metadata !DIExpression()), !dbg !3312
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #10, !dbg !3313
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3314, metadata !DIExpression()), !dbg !3317
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3319
  %4 = load i32, i32* %3, align 8, !dbg !3319, !tbaa !3320
  %5 = and i32 %4, 32, !dbg !3319
  %6 = icmp eq i32 %5, 0, !dbg !3321
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #10, !dbg !3322
  %8 = icmp ne i32 %7, 0, !dbg !3323
  br i1 %6, label %9, label %19, !dbg !3324

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3326
  %11 = xor i1 %8, true, !dbg !3327
  %12 = or i1 %10, %11, !dbg !3327
  %13 = sext i1 %8 to i32, !dbg !3327
  br i1 %12, label %22, label %14, !dbg !3327

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !3328
  %16 = load i32, i32* %15, align 4, !dbg !3328, !tbaa !929
  %17 = icmp ne i32 %16, 9, !dbg !3329
  %18 = sext i1 %17 to i32, !dbg !3330
  br label %22, !dbg !3330

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3331

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !3333
  store i32 0, i32* %21, align 4, !dbg !3335, !tbaa !929
  br label %22, !dbg !3333

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3336
  ret i32 %23, !dbg !3337
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32) local_unnamed_addr #7 !dbg !3338 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3343, metadata !DIExpression()), !dbg !3346
  call void @llvm.dbg.value(metadata i8 1, metadata !3344, metadata !DIExpression()), !dbg !3347
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #10, !dbg !3348
  call void @llvm.dbg.value(metadata i8* %2, metadata !3345, metadata !DIExpression()), !dbg !3349
  %3 = icmp eq i8* %2, null, !dbg !3350
  br i1 %3, label %11, label %4, !dbg !3352

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.112, i64 0, i64 0)) #14, !dbg !3353
  %6 = icmp eq i32 %5, 0, !dbg !3358
  br i1 %6, label %10, label %7, !dbg !3359

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.113, i64 0, i64 0)) #14, !dbg !3360
  %9 = icmp eq i32 %8, 0, !dbg !3361
  br i1 %9, label %10, label %11, !dbg !3362

; <label>:10:                                     ; preds = %7, %4
  call void @llvm.dbg.value(metadata i8 0, metadata !3344, metadata !DIExpression()), !dbg !3347
  br label %11, !dbg !3363

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !3364
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #7 !dbg !3365 {
  %1 = tail call i8* @nl_langinfo(i32 14) #10, !dbg !3371
  call void @llvm.dbg.value(metadata i8* %1, metadata !3370, metadata !DIExpression()), !dbg !3372
  %2 = icmp eq i8* %1, null, !dbg !3373
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.116, i64 0, i64 0), i8* %1, !dbg !3375
  call void @llvm.dbg.value(metadata i8* %3, metadata !3370, metadata !DIExpression()), !dbg !3372
  %4 = load i8, i8* %3, align 1, !dbg !3376, !tbaa !723
  %5 = icmp eq i8 %4, 0, !dbg !3380
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.117, i64 0, i64 0), i8* %3, !dbg !3381
  call void @llvm.dbg.value(metadata i8* %6, metadata !3370, metadata !DIExpression()), !dbg !3372
  ret i8* %6, !dbg !3382
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #7 !dbg !3383 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3422, metadata !DIExpression()), !dbg !3426
  call void @llvm.dbg.value(metadata i32 0, metadata !3423, metadata !DIExpression()), !dbg !3427
  call void @llvm.dbg.value(metadata i32 0, metadata !3425, metadata !DIExpression()), !dbg !3428
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3429
  call void @llvm.dbg.value(metadata i32 %2, metadata !3424, metadata !DIExpression()), !dbg !3430
  %3 = icmp slt i32 %2, 0, !dbg !3431
  br i1 %3, label %4, label %6, !dbg !3433

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3434
  br label %24, !dbg !3435

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !3436
  %8 = icmp eq i32 %7, 0, !dbg !3436
  br i1 %8, label %13, label %9, !dbg !3438

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3439
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #10, !dbg !3440
  %12 = icmp eq i64 %11, -1, !dbg !3441
  br i1 %12, label %16, label %13, !dbg !3442

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #10, !dbg !3443
  %15 = icmp eq i32 %14, 0, !dbg !3443
  br i1 %15, label %16, label %18, !dbg !3444

; <label>:16:                                     ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3423, metadata !DIExpression()), !dbg !3427
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3445
  call void @llvm.dbg.value(metadata i32 %21, metadata !3425, metadata !DIExpression()), !dbg !3428
  br label %24, !dbg !3446

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !3447
  %20 = load i32, i32* %19, align 4, !dbg !3447, !tbaa !929
  call void @llvm.dbg.value(metadata i32 %20, metadata !3423, metadata !DIExpression()), !dbg !3427
  call void @llvm.dbg.value(metadata i32 %20, metadata !3423, metadata !DIExpression()), !dbg !3427
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3445
  call void @llvm.dbg.value(metadata i32 %21, metadata !3425, metadata !DIExpression()), !dbg !3428
  %22 = icmp eq i32 %20, 0, !dbg !3448
  br i1 %22, label %24, label %23, !dbg !3446

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3450, !tbaa !929
  call void @llvm.dbg.value(metadata i32 -1, metadata !3425, metadata !DIExpression()), !dbg !3428
  br label %24, !dbg !3452

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3453
  ret i32 %25, !dbg !3454
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
define dso_local i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !3455 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3494, metadata !DIExpression()), !dbg !3495
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3496
  br i1 %2, label %6, label %3, !dbg !3498

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !3499
  %5 = icmp eq i32 %4, 0, !dbg !3499
  br i1 %5, label %6, label %8, !dbg !3500

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3501
  br label %17, !dbg !3502

; <label>:8:                                      ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3503, metadata !DIExpression()) #10, !dbg !3508
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3510
  %10 = load i32, i32* %9, align 8, !dbg !3510, !tbaa !3320
  %11 = and i32 %10, 256, !dbg !3512
  %12 = icmp eq i32 %11, 0, !dbg !3512
  br i1 %12, label %15, label %13, !dbg !3513

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #10, !dbg !3514
  br label %15, !dbg !3514

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3515
  br label %17, !dbg !3516

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3517
  ret i32 %18, !dbg !3518
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #7 !dbg !3519 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3559, metadata !DIExpression()), !dbg !3565
  call void @llvm.dbg.value(metadata i64 %1, metadata !3560, metadata !DIExpression()), !dbg !3566
  call void @llvm.dbg.value(metadata i32 %2, metadata !3561, metadata !DIExpression()), !dbg !3567
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3568
  %5 = load i8*, i8** %4, align 8, !dbg !3568, !tbaa !3569
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3570
  %7 = load i8*, i8** %6, align 8, !dbg !3570, !tbaa !3571
  %8 = icmp eq i8* %5, %7, !dbg !3572
  br i1 %8, label %9, label %28, !dbg !3573

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3574
  %11 = load i8*, i8** %10, align 8, !dbg !3574, !tbaa !859
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3575
  %13 = load i8*, i8** %12, align 8, !dbg !3575, !tbaa !3576
  %14 = icmp eq i8* %11, %13, !dbg !3577
  br i1 %14, label %15, label %28, !dbg !3578

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3579
  %17 = load i8*, i8** %16, align 8, !dbg !3579, !tbaa !3580
  %18 = icmp eq i8* %17, null, !dbg !3581
  br i1 %18, label %19, label %28, !dbg !3582

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3583
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #10, !dbg !3584
  call void @llvm.dbg.value(metadata i64 %21, metadata !3562, metadata !DIExpression()), !dbg !3585
  %22 = icmp eq i64 %21, -1, !dbg !3586
  br i1 %22, label %30, label %23, !dbg !3588

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3589
  %25 = load i32, i32* %24, align 8, !dbg !3590, !tbaa !3320
  %26 = and i32 %25, -17, !dbg !3590
  store i32 %26, i32* %24, align 8, !dbg !3590, !tbaa !3320
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3591
  store i64 %21, i64* %27, align 8, !dbg !3592, !tbaa !3593
  br label %30, !dbg !3594

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3595
  br label %30, !dbg !3596

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3597
  ret i32 %31, !dbg !3598
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

!llvm.dbg.cu = !{!131, !2, !11, !20, !28, !37, !139, !124, !147, !164, !166, !168, !171, !173, !175, !564, !566, !568}
!llvm.ident = !{!570, !570, !570, !570, !570, !570, !570, !570, !570, !570, !570, !570, !570, !570, !570, !570, !570, !570}
!llvm.module.flags = !{!571, !572, !573, !574, !575}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "Version", scope: !2, file: !3, line: 2, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5)
!3 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4 = !{}
!5 = !{!0}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "file_name", scope: !11, file: !16, line: 46, type: !6, isLocal: true, isDefinition: true)
!11 = distinct !DICompileUnit(language: DW_LANG_C99, file: !12, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !13)
!12 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!13 = !{!9, !14}
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !11, file: !16, line: 56, type: !17, isLocal: true, isDefinition: true)
!16 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!17 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(name: "exit_failure", scope: !20, file: !23, line: 24, type: !24, isLocal: false, isDefinition: true)
!20 = distinct !DICompileUnit(language: DW_LANG_C99, file: !21, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !22)
!21 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!22 = !{!18}
!23 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!24 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !25)
!25 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(name: "program_name", scope: !28, file: !34, line: 33, type: !6, isLocal: false, isDefinition: true)
!28 = distinct !DICompileUnit(language: DW_LANG_C99, file: !29, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !30, globals: !33)
!29 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!30 = !{!31, !32}
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!33 = !{!26}
!34 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !37, file: !83, line: 85, type: !118, isLocal: false, isDefinition: true)
!37 = distinct !DICompileUnit(language: DW_LANG_C99, file: !38, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, retainedTypes: !75, globals: !80)
!38 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!39 = !{!40, !55, !60}
!40 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !41, line: 32, baseType: !42, size: 32, elements: !43)
!41 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!42 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!43 = !{!44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54}
!44 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!45 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!46 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!47 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!48 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!49 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!50 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!51 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!52 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!53 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!54 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!55 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !41, line: 242, baseType: !42, size: 32, elements: !56)
!56 = !{!57, !58, !59}
!57 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!58 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!59 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!60 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !61, line: 46, baseType: !42, size: 32, elements: !62)
!61 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!62 = !{!63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74}
!63 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!64 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!65 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!66 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!67 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!68 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!69 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!70 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!71 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!72 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!73 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!74 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!75 = !{!25, !76, !77, !32}
!76 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !78, line: 62, baseType: !79)
!78 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!79 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!80 = !{!35, !81, !88, !100, !102, !107, !114, !116}
!81 = !DIGlobalVariableExpression(var: !82, expr: !DIExpression())
!82 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !37, file: !83, line: 101, type: !84, isLocal: false, isDefinition: true)
!83 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!84 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 320, elements: !86)
!85 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!86 = !{!87}
!87 = !DISubrange(count: 10)
!88 = !DIGlobalVariableExpression(var: !89, expr: !DIExpression())
!89 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !37, file: !83, line: 1052, type: !90, isLocal: false, isDefinition: true)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !83, line: 65, size: 448, elements: !91)
!91 = !{!92, !93, !94, !98, !99}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !90, file: !83, line: 68, baseType: !40, size: 32)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !90, file: !83, line: 71, baseType: !25, size: 32, offset: 32)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !90, file: !83, line: 75, baseType: !95, size: 256, offset: 64)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 256, elements: !96)
!96 = !{!97}
!97 = !DISubrange(count: 8)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !90, file: !83, line: 78, baseType: !6, size: 64, offset: 320)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !90, file: !83, line: 81, baseType: !6, size: 64, offset: 384)
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression())
!101 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !37, file: !83, line: 116, type: !90, isLocal: true, isDefinition: true)
!102 = !DIGlobalVariableExpression(var: !103, expr: !DIExpression())
!103 = distinct !DIGlobalVariable(name: "slot0", scope: !37, file: !83, line: 842, type: !104, isLocal: true, isDefinition: true)
!104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2048, elements: !105)
!105 = !{!106}
!106 = !DISubrange(count: 256)
!107 = !DIGlobalVariableExpression(var: !108, expr: !DIExpression())
!108 = distinct !DIGlobalVariable(name: "slotvec", scope: !37, file: !83, line: 845, type: !109, isLocal: true, isDefinition: true)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !83, line: 834, size: 128, elements: !111)
!111 = !{!112, !113}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !110, file: !83, line: 836, baseType: !77, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !110, file: !83, line: 837, baseType: !32, size: 64, offset: 64)
!114 = !DIGlobalVariableExpression(var: !115, expr: !DIExpression())
!115 = distinct !DIGlobalVariable(name: "nslots", scope: !37, file: !83, line: 843, type: !25, isLocal: true, isDefinition: true)
!116 = !DIGlobalVariableExpression(var: !117, expr: !DIExpression())
!117 = distinct !DIGlobalVariable(name: "slotvec0", scope: !37, file: !83, line: 844, type: !110, isLocal: true, isDefinition: true)
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 704, elements: !120)
!119 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!120 = !{!121}
!121 = !DISubrange(count: 11)
!122 = !DIGlobalVariableExpression(var: !123, expr: !DIExpression())
!123 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !124, file: !127, line: 26, type: !128, isLocal: false, isDefinition: true)
!124 = distinct !DICompileUnit(language: DW_LANG_C99, file: !125, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !126)
!125 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!126 = !{!122}
!127 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 376, elements: !129)
!129 = !{!130}
!130 = !DISubrange(count: 47)
!131 = distinct !DICompileUnit(language: DW_LANG_C99, file: !132, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !133, retainedTypes: !137)
!132 = !DIFile(filename: "src/echo.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!133 = !{!134, !60}
!134 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !132, line: 31, baseType: !42, size: 32, elements: !135)
!135 = !{!136}
!136 = !DIEnumerator(name: "DEFAULT_ECHO_TO_XPG", value: 0, isUnsigned: true)
!137 = !{!32, !31, !25, !76, !138}
!138 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!139 = distinct !DICompileUnit(language: DW_LANG_C99, file: !140, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !141, retainedTypes: !146)
!140 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!141 = !{!142}
!142 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !143, line: 41, baseType: !42, size: 32, elements: !144)
!143 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!144 = !{!145}
!145 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2018, isUnsigned: true)
!146 = !{!31}
!147 = distinct !DICompileUnit(language: DW_LANG_C99, file: !148, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !149, retainedTypes: !163)
!148 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!149 = !{!150}
!150 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !152, file: !151, line: 186, baseType: !42, size: 32, elements: !161)
!151 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!152 = distinct !DISubprogram(name: "x2nrealloc", scope: !151, file: !151, line: 174, type: !153, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !147, retainedNodes: !156)
!153 = !DISubroutineType(types: !154)
!154 = !{!31, !31, !155, !77}
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!156 = !{!157, !158, !159, !160}
!157 = !DILocalVariable(name: "p", arg: 1, scope: !152, file: !151, line: 174, type: !31)
!158 = !DILocalVariable(name: "pn", arg: 2, scope: !152, file: !151, line: 174, type: !155)
!159 = !DILocalVariable(name: "s", arg: 3, scope: !152, file: !151, line: 174, type: !77)
!160 = !DILocalVariable(name: "n", scope: !152, file: !151, line: 176, type: !77)
!161 = !{!162}
!162 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!163 = !{!77, !32, !31}
!164 = distinct !DICompileUnit(language: DW_LANG_C99, file: !165, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!165 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!166 = distinct !DICompileUnit(language: DW_LANG_C99, file: !167, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !146)
!167 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!168 = distinct !DICompileUnit(language: DW_LANG_C99, file: !169, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !170)
!169 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!170 = !{!77}
!171 = distinct !DICompileUnit(language: DW_LANG_C99, file: !172, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!172 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!173 = distinct !DICompileUnit(language: DW_LANG_C99, file: !174, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!174 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!175 = distinct !DICompileUnit(language: DW_LANG_C99, file: !176, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !177, retainedTypes: !146)
!176 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!177 = !{!178}
!178 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !179, line: 41, baseType: !42, size: 32, elements: !180)
!179 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!180 = !{!181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563}
!181 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!182 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!183 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!184 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!185 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!186 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!187 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!188 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!189 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!190 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!191 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!192 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!193 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!194 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!195 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!196 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!197 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!198 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!199 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!200 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!201 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!202 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!203 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!204 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!205 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!206 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!207 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!208 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!209 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!210 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!211 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!212 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!213 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!214 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!215 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!216 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!217 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!218 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!219 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!220 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!221 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!222 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!223 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!224 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!225 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!226 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!227 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!228 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!229 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!230 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!231 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!232 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!233 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!234 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!235 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!236 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!237 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!238 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!239 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!240 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!241 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!242 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!243 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!244 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!245 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!246 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!247 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!248 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!249 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!250 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!251 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!252 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!253 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!254 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!255 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!256 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!257 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!258 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!259 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!260 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!261 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!262 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!263 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!264 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!265 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!266 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!267 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!268 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!269 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!270 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!271 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!272 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!273 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!274 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!275 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!276 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!277 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!278 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!279 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!280 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!281 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!282 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!283 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!284 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!285 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!286 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!287 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!288 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!289 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!290 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!291 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!292 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!293 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!294 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!295 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!296 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!297 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!298 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!299 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!300 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!301 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!302 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!303 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!304 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!305 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!306 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!307 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!308 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!309 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!310 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!311 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!312 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!313 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!314 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!315 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!316 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!317 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!318 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!319 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!320 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!321 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!322 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!323 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!324 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!325 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!326 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!327 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!328 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!329 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!330 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!331 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!332 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!333 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!334 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!335 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!336 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!337 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!338 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!339 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!340 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!341 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!342 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!343 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!344 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!345 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!346 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!347 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!348 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!349 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!350 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!351 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!352 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!353 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!354 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!355 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!356 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!357 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!358 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!359 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!360 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!361 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!362 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!363 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!364 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!365 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!366 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!367 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!368 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!369 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!370 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!371 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!372 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!373 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!374 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!375 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!376 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!377 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!378 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!379 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!380 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!381 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!382 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!383 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!384 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!385 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!386 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!387 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!388 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!389 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!390 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!391 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!392 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!393 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!394 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!395 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!396 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!400 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!405 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!406 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!408 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!409 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!410 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!411 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!412 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!413 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!414 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!415 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!416 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!417 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!418 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!419 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!420 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!421 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!435 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!449 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!450 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!451 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!452 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!453 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!454 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!455 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!456 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!457 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!458 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!459 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!460 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!461 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!462 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!463 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!465 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!466 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!467 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!468 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!469 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!470 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!473 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!474 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!475 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!476 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!477 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!478 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!479 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!481 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!482 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!483 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!484 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!485 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!486 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!487 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!488 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!489 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!490 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!491 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!492 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!493 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!494 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!495 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!496 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!497 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!498 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!499 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!500 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!501 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!502 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!503 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!504 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!505 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!506 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!507 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!508 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!509 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!510 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!511 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!512 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!513 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!514 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!515 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!516 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!517 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!519 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!520 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!521 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!522 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!523 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!524 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!525 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!526 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!527 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!528 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!529 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!530 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!531 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!532 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!535 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!536 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!537 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!540 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!541 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!542 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!543 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!544 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!545 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!546 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!547 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!549 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!550 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!551 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!552 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!553 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!559 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!560 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!564 = distinct !DICompileUnit(language: DW_LANG_C99, file: !565, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!565 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!566 = distinct !DICompileUnit(language: DW_LANG_C99, file: !567, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !146)
!567 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!568 = distinct !DICompileUnit(language: DW_LANG_C99, file: !569, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !146)
!569 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!570 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!571 = !{i32 2, !"Dwarf Version", i32 4}
!572 = !{i32 2, !"Debug Info Version", i32 3}
!573 = !{i32 1, !"wchar_size", i32 4}
!574 = !{i32 7, !"PIC Level", i32 2}
!575 = !{i32 7, !"PIE Level", i32 2}
!576 = distinct !DISubprogram(name: "usage", scope: !132, file: !132, line: 35, type: !577, isLocal: false, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !131, retainedNodes: !579)
!577 = !DISubroutineType(types: !578)
!578 = !{null, !25}
!579 = !{!580}
!580 = !DILocalVariable(name: "status", arg: 1, scope: !576, file: !132, line: 35, type: !25)
!581 = !DILocalVariable(name: "infomap", scope: !582, file: !583, line: 632, type: !597)
!582 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !583, file: !583, line: 630, type: !584, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !131, retainedNodes: !586)
!583 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!584 = !DISubroutineType(types: !585)
!585 = !{null, !6}
!586 = !{!587, !581, !588, !589, !596}
!587 = !DILocalVariable(name: "program", arg: 1, scope: !582, file: !583, line: 630, type: !6)
!588 = !DILocalVariable(name: "node", scope: !582, file: !583, line: 642, type: !6)
!589 = !DILocalVariable(name: "map_prog", scope: !582, file: !583, line: 643, type: !590)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !592)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !582, file: !583, line: 632, size: 128, elements: !593)
!593 = !{!594, !595}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !592, file: !583, line: 632, baseType: !6, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !592, file: !583, line: 632, baseType: !6, size: 64, offset: 64)
!596 = !DILocalVariable(name: "lc_messages", scope: !582, file: !583, line: 655, type: !6)
!597 = !DICompositeType(tag: DW_TAG_array_type, baseType: !591, size: 896, elements: !598)
!598 = !{!599}
!599 = !DISubrange(count: 7)
!600 = !DILocation(line: 632, column: 67, scope: !582, inlinedAt: !601)
!601 = distinct !DILocation(line: 82, column: 7, scope: !602)
!602 = distinct !DILexicalBlock(scope: !603, file: !132, line: 40, column: 5)
!603 = distinct !DILexicalBlock(scope: !576, file: !132, line: 37, column: 7)
!604 = !DILocation(line: 35, column: 12, scope: !576)
!605 = !DILocation(line: 37, column: 14, scope: !603)
!606 = !DILocation(line: 37, column: 7, scope: !576)
!607 = !DILocation(line: 38, column: 5, scope: !608)
!608 = distinct !DILexicalBlock(scope: !603, file: !132, line: 38, column: 5)
!609 = !{!610, !610, i64 0}
!610 = !{!"any pointer", !611, i64 0}
!611 = !{!"omnipotent char", !612, i64 0}
!612 = !{!"Simple C/C++ TBAA"}
!613 = !DILocation(line: 41, column: 7, scope: !602)
!614 = !DILocation(line: 45, column: 7, scope: !602)
!615 = !DILocation(line: 50, column: 7, scope: !602)
!616 = !DILocation(line: 58, column: 7, scope: !602)
!617 = !DILocation(line: 59, column: 7, scope: !602)
!618 = !DILocation(line: 60, column: 7, scope: !602)
!619 = !DILocation(line: 65, column: 7, scope: !602)
!620 = !DILocation(line: 77, column: 7, scope: !602)
!621 = !DILocation(line: 81, column: 7, scope: !602)
!622 = !DILocation(line: 632, column: 3, scope: !582, inlinedAt: !601)
!623 = !DILocation(line: 643, column: 36, scope: !582, inlinedAt: !601)
!624 = !DILocation(line: 643, column: 25, scope: !582, inlinedAt: !601)
!625 = !DILocation(line: 645, column: 33, scope: !582, inlinedAt: !601)
!626 = !DILocation(line: 645, column: 3, scope: !582, inlinedAt: !601)
!627 = !DILocation(line: 646, column: 13, scope: !582, inlinedAt: !601)
!628 = !DILocation(line: 645, column: 20, scope: !582, inlinedAt: !601)
!629 = !{!630, !610, i64 0}
!630 = !{!"infomap", !610, i64 0, !610, i64 8}
!631 = !DILocation(line: 645, column: 10, scope: !582, inlinedAt: !601)
!632 = !DILocation(line: 645, column: 28, scope: !582, inlinedAt: !601)
!633 = distinct !{!633, !634, !635}
!634 = !DILocation(line: 645, column: 3, scope: !582)
!635 = !DILocation(line: 646, column: 13, scope: !582)
!636 = !DILocation(line: 648, column: 17, scope: !637, inlinedAt: !601)
!637 = distinct !DILexicalBlock(scope: !582, file: !583, line: 648, column: 7)
!638 = !{!630, !610, i64 8}
!639 = !DILocation(line: 648, column: 7, scope: !637, inlinedAt: !601)
!640 = !DILocation(line: 648, column: 7, scope: !582, inlinedAt: !601)
!641 = !DILocation(line: 642, column: 15, scope: !582, inlinedAt: !601)
!642 = !DILocation(line: 651, column: 3, scope: !582, inlinedAt: !601)
!643 = !DILocation(line: 655, column: 29, scope: !582, inlinedAt: !601)
!644 = !DILocation(line: 655, column: 15, scope: !582, inlinedAt: !601)
!645 = !DILocation(line: 656, column: 7, scope: !646, inlinedAt: !601)
!646 = distinct !DILexicalBlock(scope: !582, file: !583, line: 656, column: 7)
!647 = !DILocation(line: 656, column: 19, scope: !646, inlinedAt: !601)
!648 = !DILocation(line: 656, column: 22, scope: !646, inlinedAt: !601)
!649 = !DILocation(line: 656, column: 7, scope: !582, inlinedAt: !601)
!650 = !DILocation(line: 662, column: 7, scope: !651, inlinedAt: !601)
!651 = distinct !DILexicalBlock(scope: !646, file: !583, line: 657, column: 5)
!652 = !DILocation(line: 664, column: 5, scope: !651, inlinedAt: !601)
!653 = !DILocation(line: 665, column: 3, scope: !582, inlinedAt: !601)
!654 = !DILocation(line: 667, column: 3, scope: !582, inlinedAt: !601)
!655 = !DILocation(line: 669, column: 1, scope: !582, inlinedAt: !601)
!656 = !DILocation(line: 84, column: 3, scope: !576)
!657 = distinct !DISubprogram(name: "main", scope: !132, file: !132, line: 108, type: !658, isLocal: false, isDefinition: true, scopeLine: 109, flags: DIFlagPrototyped, isOptimized: true, unit: !131, retainedNodes: !661)
!658 = !DISubroutineType(types: !659)
!659 = !{!25, !25, !660}
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!661 = !{!662, !663, !664, !665, !666, !667, !670, !671, !675, !676}
!662 = !DILocalVariable(name: "argc", arg: 1, scope: !657, file: !132, line: 108, type: !25)
!663 = !DILocalVariable(name: "argv", arg: 2, scope: !657, file: !132, line: 108, type: !660)
!664 = !DILocalVariable(name: "display_return", scope: !657, file: !132, line: 110, type: !17)
!665 = !DILocalVariable(name: "allow_options", scope: !657, file: !132, line: 111, type: !17)
!666 = !DILocalVariable(name: "do_v9", scope: !657, file: !132, line: 118, type: !17)
!667 = !DILocalVariable(name: "temp", scope: !668, file: !132, line: 149, type: !6)
!668 = distinct !DILexicalBlock(scope: !669, file: !132, line: 148, column: 7)
!669 = distinct !DILexicalBlock(scope: !657, file: !132, line: 146, column: 7)
!670 = !DILocalVariable(name: "i", scope: !668, file: !132, line: 150, type: !77)
!671 = !DILocalVariable(name: "s", scope: !672, file: !132, line: 196, type: !6)
!672 = distinct !DILexicalBlock(scope: !673, file: !132, line: 195, column: 9)
!673 = distinct !DILexicalBlock(scope: !674, file: !132, line: 193, column: 5)
!674 = distinct !DILexicalBlock(scope: !657, file: !132, line: 192, column: 7)
!675 = !DILocalVariable(name: "c", scope: !672, file: !132, line: 197, type: !138)
!676 = !DILocalVariable(name: "ch", scope: !677, file: !132, line: 216, type: !138)
!677 = distinct !DILexicalBlock(scope: !678, file: !132, line: 215, column: 23)
!678 = distinct !DILexicalBlock(scope: !679, file: !132, line: 204, column: 21)
!679 = distinct !DILexicalBlock(scope: !680, file: !132, line: 202, column: 17)
!680 = distinct !DILexicalBlock(scope: !681, file: !132, line: 201, column: 19)
!681 = distinct !DILexicalBlock(scope: !672, file: !132, line: 200, column: 13)
!682 = !DILocation(line: 108, column: 11, scope: !657)
!683 = !DILocation(line: 108, column: 24, scope: !657)
!684 = !DILocation(line: 110, column: 8, scope: !657)
!685 = !DILocation(line: 112, column: 8, scope: !657)
!686 = !DILocation(line: 113, column: 6, scope: !657)
!687 = !DILocation(line: 113, column: 37, scope: !657)
!688 = !DILocation(line: 113, column: 44, scope: !657)
!689 = !DILocation(line: 113, column: 47, scope: !657)
!690 = !DILocation(line: 118, column: 8, scope: !657)
!691 = !DILocation(line: 121, column: 21, scope: !657)
!692 = !DILocation(line: 121, column: 3, scope: !657)
!693 = !DILocation(line: 122, column: 3, scope: !657)
!694 = !DILocation(line: 123, column: 3, scope: !657)
!695 = !DILocation(line: 124, column: 3, scope: !657)
!696 = !DILocation(line: 126, column: 3, scope: !657)
!697 = !DILocation(line: 130, column: 29, scope: !698)
!698 = distinct !DILexicalBlock(scope: !657, file: !132, line: 130, column: 7)
!699 = !DILocation(line: 130, column: 21, scope: !698)
!700 = !DILocation(line: 0, scope: !657)
!701 = !DILocation(line: 132, column: 11, scope: !702)
!702 = distinct !DILexicalBlock(scope: !703, file: !132, line: 132, column: 11)
!703 = distinct !DILexicalBlock(scope: !698, file: !132, line: 131, column: 5)
!704 = !DILocation(line: 132, column: 11, scope: !703)
!705 = !DILocation(line: 133, column: 9, scope: !702)
!706 = !DILocation(line: 135, column: 11, scope: !707)
!707 = distinct !DILexicalBlock(scope: !703, file: !132, line: 135, column: 11)
!708 = !DILocation(line: 135, column: 11, scope: !703)
!709 = !DILocation(line: 137, column: 24, scope: !710)
!710 = distinct !DILexicalBlock(scope: !707, file: !132, line: 136, column: 9)
!711 = !DILocation(line: 137, column: 60, scope: !710)
!712 = !DILocation(line: 137, column: 11, scope: !710)
!713 = !DILocation(line: 139, column: 11, scope: !710)
!714 = !DILocation(line: 143, column: 3, scope: !657)
!715 = !DILocation(line: 147, column: 17, scope: !669)
!716 = !DILocation(line: 146, column: 7, scope: !657)
!717 = !DILocation(line: 0, scope: !673)
!718 = !DILocation(line: 259, column: 7, scope: !719)
!719 = distinct !DILexicalBlock(scope: !674, file: !132, line: 258, column: 5)
!720 = !DILocation(line: 144, column: 3, scope: !657)
!721 = !DILocation(line: 147, column: 25, scope: !669)
!722 = !DILocation(line: 147, column: 24, scope: !669)
!723 = !{!611, !611, i64 0}
!724 = !DILocation(line: 147, column: 33, scope: !669)
!725 = !DILocation(line: 147, column: 5, scope: !669)
!726 = !DILocation(line: 149, column: 36, scope: !668)
!727 = !DILocation(line: 149, column: 21, scope: !668)
!728 = !DILocation(line: 150, column: 16, scope: !668)
!729 = !DILocation(line: 156, column: 21, scope: !730)
!730 = distinct !DILexicalBlock(scope: !731, file: !132, line: 156, column: 9)
!731 = distinct !DILexicalBlock(scope: !668, file: !132, line: 156, column: 9)
!732 = !DILocation(line: 156, column: 9, scope: !731)
!733 = !DILocation(line: 157, column: 19, scope: !730)
!734 = !DILocation(line: 157, column: 11, scope: !730)
!735 = !DILocation(line: 156, column: 31, scope: !730)
!736 = distinct !{!736, !732, !737}
!737 = !DILocation(line: 163, column: 13, scope: !731)
!738 = !DILocation(line: 165, column: 15, scope: !739)
!739 = distinct !DILexicalBlock(scope: !668, file: !132, line: 165, column: 13)
!740 = !DILocation(line: 165, column: 13, scope: !668)
!741 = !DILocation(line: 170, column: 9, scope: !668)
!742 = !DILocation(line: 171, column: 24, scope: !668)
!743 = !DILocation(line: 171, column: 19, scope: !668)
!744 = !DILocation(line: 171, column: 11, scope: !668)
!745 = !DILocation(line: 175, column: 15, scope: !746)
!746 = distinct !DILexicalBlock(scope: !668, file: !132, line: 172, column: 13)
!747 = !DILocation(line: 179, column: 15, scope: !746)
!748 = !DILocation(line: 183, column: 15, scope: !746)
!749 = !DILocation(line: 0, scope: !746)
!750 = !DILocation(line: 170, column: 16, scope: !668)
!751 = distinct !{!751, !741, !752}
!752 = !DILocation(line: 184, column: 13, scope: !668)
!753 = !DILocation(line: 186, column: 13, scope: !668)
!754 = !DILocation(line: 187, column: 13, scope: !668)
!755 = !DILocation(line: 192, column: 7, scope: !674)
!756 = !DILocation(line: 192, column: 7, scope: !657)
!757 = !DILocation(line: 194, column: 7, scope: !673)
!758 = !DILocation(line: 261, column: 11, scope: !759)
!759 = distinct !DILexicalBlock(scope: !719, file: !132, line: 260, column: 9)
!760 = !DILocation(line: 196, column: 27, scope: !672)
!761 = !DILocation(line: 196, column: 23, scope: !672)
!762 = !DILocation(line: 199, column: 11, scope: !672)
!763 = !DILocation(line: 0, scope: !679)
!764 = !DILocation(line: 199, column: 25, scope: !672)
!765 = !DILocation(line: 199, column: 23, scope: !672)
!766 = !DILocation(line: 197, column: 25, scope: !672)
!767 = !DILocation(line: 201, column: 32, scope: !680)
!768 = !DILocation(line: 201, column: 19, scope: !681)
!769 = !DILocation(line: 203, column: 33, scope: !679)
!770 = !DILocation(line: 203, column: 19, scope: !679)
!771 = !DILocation(line: 205, column: 41, scope: !678)
!772 = !DILocation(line: 206, column: 41, scope: !678)
!773 = !DILocation(line: 208, column: 43, scope: !678)
!774 = !DILocation(line: 209, column: 41, scope: !678)
!775 = !DILocation(line: 210, column: 41, scope: !678)
!776 = !DILocation(line: 211, column: 41, scope: !678)
!777 = !DILocation(line: 212, column: 41, scope: !678)
!778 = !DILocation(line: 213, column: 41, scope: !678)
!779 = !DILocation(line: 216, column: 44, scope: !677)
!780 = !DILocation(line: 216, column: 39, scope: !677)
!781 = !DILocation(line: 217, column: 31, scope: !782)
!782 = distinct !DILexicalBlock(scope: !677, file: !132, line: 217, column: 29)
!783 = !{!784, !784, i64 0}
!784 = !{!"short", !611, i64 0}
!785 = !DILocation(line: 217, column: 29, scope: !677)
!786 = !DILocation(line: 219, column: 26, scope: !677)
!787 = !DILocalVariable(name: "c", arg: 1, scope: !788, file: !132, line: 89, type: !138)
!788 = distinct !DISubprogram(name: "hextobin", scope: !132, file: !132, line: 89, type: !789, isLocal: true, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: true, unit: !131, retainedNodes: !791)
!789 = !DISubroutineType(types: !790)
!790 = !{!25, !138}
!791 = !{!787}
!792 = !DILocation(line: 89, column: 25, scope: !788, inlinedAt: !793)
!793 = distinct !DILocation(line: 220, column: 29, scope: !677)
!794 = !DILocation(line: 91, column: 3, scope: !788, inlinedAt: !793)
!795 = !DILocation(line: 91, column: 11, scope: !788, inlinedAt: !793)
!796 = !DILocation(line: 93, column: 23, scope: !797, inlinedAt: !793)
!797 = distinct !DILexicalBlock(scope: !788, file: !132, line: 92, column: 5)
!798 = !DILocation(line: 93, column: 14, scope: !797, inlinedAt: !793)
!799 = !DILocation(line: 95, column: 25, scope: !797, inlinedAt: !793)
!800 = !DILocation(line: 96, column: 25, scope: !797, inlinedAt: !793)
!801 = !DILocation(line: 97, column: 25, scope: !797, inlinedAt: !793)
!802 = !DILocation(line: 98, column: 25, scope: !797, inlinedAt: !793)
!803 = !DILocation(line: 99, column: 25, scope: !797, inlinedAt: !793)
!804 = !DILocation(line: 0, scope: !797, inlinedAt: !793)
!805 = !DILocation(line: 221, column: 30, scope: !677)
!806 = !DILocation(line: 222, column: 29, scope: !807)
!807 = distinct !DILexicalBlock(scope: !677, file: !132, line: 222, column: 29)
!808 = !DILocation(line: 222, column: 29, scope: !677)
!809 = !DILocation(line: 224, column: 30, scope: !810)
!810 = distinct !DILexicalBlock(scope: !807, file: !132, line: 223, column: 27)
!811 = !DILocation(line: 225, column: 35, scope: !810)
!812 = !DILocation(line: 89, column: 25, scope: !788, inlinedAt: !813)
!813 = distinct !DILocation(line: 225, column: 42, scope: !810)
!814 = !DILocation(line: 91, column: 3, scope: !788, inlinedAt: !813)
!815 = !DILocation(line: 91, column: 11, scope: !788, inlinedAt: !813)
!816 = !DILocation(line: 93, column: 23, scope: !797, inlinedAt: !813)
!817 = !DILocation(line: 93, column: 14, scope: !797, inlinedAt: !813)
!818 = !DILocation(line: 95, column: 25, scope: !797, inlinedAt: !813)
!819 = !DILocation(line: 96, column: 25, scope: !797, inlinedAt: !813)
!820 = !DILocation(line: 97, column: 25, scope: !797, inlinedAt: !813)
!821 = !DILocation(line: 98, column: 25, scope: !797, inlinedAt: !813)
!822 = !DILocation(line: 99, column: 25, scope: !797, inlinedAt: !813)
!823 = !DILocation(line: 0, scope: !797, inlinedAt: !813)
!824 = !DILocation(line: 225, column: 40, scope: !810)
!825 = !DILocation(line: 226, column: 27, scope: !810)
!826 = !DILocation(line: 0, scope: !677)
!827 = !DILocation(line: 231, column: 37, scope: !828)
!828 = distinct !DILexicalBlock(scope: !678, file: !132, line: 231, column: 27)
!829 = !DILocation(line: 231, column: 40, scope: !828)
!830 = !DILocation(line: 233, column: 29, scope: !678)
!831 = !DILocation(line: 234, column: 23, scope: !678)
!832 = !DILocation(line: 0, scope: !678)
!833 = !DILocation(line: 237, column: 25, scope: !678)
!834 = !DILocation(line: 238, column: 34, scope: !835)
!835 = distinct !DILexicalBlock(scope: !678, file: !132, line: 238, column: 27)
!836 = !DILocation(line: 238, column: 37, scope: !835)
!837 = !DILocation(line: 239, column: 31, scope: !835)
!838 = !DILocation(line: 239, column: 40, scope: !835)
!839 = !DILocation(line: 239, column: 43, scope: !835)
!840 = !DILocation(line: 239, column: 35, scope: !835)
!841 = !DILocation(line: 240, column: 34, scope: !842)
!842 = distinct !DILexicalBlock(scope: !678, file: !132, line: 240, column: 27)
!843 = !DILocation(line: 239, column: 25, scope: !835)
!844 = !DILocation(line: 240, column: 37, scope: !842)
!845 = !DILocation(line: 241, column: 31, scope: !842)
!846 = !DILocation(line: 241, column: 40, scope: !842)
!847 = !DILocation(line: 241, column: 43, scope: !842)
!848 = !DILocation(line: 241, column: 35, scope: !842)
!849 = !DILocation(line: 241, column: 25, scope: !842)
!850 = !DILocalVariable(name: "__c", arg: 1, scope: !851, file: !852, line: 108, type: !25)
!851 = distinct !DISubprogram(name: "putchar_unlocked", scope: !852, file: !852, line: 108, type: !853, isLocal: false, isDefinition: true, scopeLine: 109, flags: DIFlagPrototyped, isOptimized: true, unit: !131, retainedNodes: !855)
!852 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!853 = !DISubroutineType(types: !854)
!854 = !{!25, !25}
!855 = !{!850}
!856 = !DILocation(line: 108, column: 23, scope: !851, inlinedAt: !857)
!857 = distinct !DILocation(line: 246, column: 31, scope: !678)
!858 = !DILocation(line: 110, column: 10, scope: !851, inlinedAt: !857)
!859 = !{!860, !610, i64 40}
!860 = !{!"_IO_FILE", !861, i64 0, !610, i64 8, !610, i64 16, !610, i64 24, !610, i64 32, !610, i64 40, !610, i64 48, !610, i64 56, !610, i64 64, !610, i64 72, !610, i64 80, !610, i64 88, !610, i64 96, !610, i64 104, !861, i64 112, !861, i64 116, !862, i64 120, !784, i64 128, !611, i64 130, !611, i64 131, !610, i64 136, !862, i64 144, !610, i64 152, !610, i64 160, !610, i64 168, !610, i64 176, !862, i64 184, !861, i64 192, !611, i64 196}
!861 = !{!"int", !611, i64 0}
!862 = !{!"long", !611, i64 0}
!863 = !{!860, !610, i64 48}
!864 = !{!"branch_weights", i32 2000, i32 1}
!865 = !DILocation(line: 0, scope: !672)
!866 = !DILocation(line: 110, column: 10, scope: !851, inlinedAt: !867)
!867 = distinct !DILocation(line: 249, column: 15, scope: !681)
!868 = !DILocation(line: 249, column: 15, scope: !681)
!869 = !DILocation(line: 108, column: 23, scope: !851, inlinedAt: !867)
!870 = distinct !{!870, !762, !871}
!871 = !DILocation(line: 250, column: 13, scope: !672)
!872 = !DILocation(line: 251, column: 15, scope: !672)
!873 = !DILocation(line: 252, column: 15, scope: !672)
!874 = !DILocation(line: 253, column: 20, scope: !875)
!875 = distinct !DILexicalBlock(scope: !672, file: !132, line: 253, column: 15)
!876 = !DILocation(line: 253, column: 15, scope: !672)
!877 = !DILocation(line: 108, column: 23, scope: !851, inlinedAt: !878)
!878 = distinct !DILocation(line: 254, column: 13, scope: !875)
!879 = !DILocation(line: 110, column: 10, scope: !851, inlinedAt: !878)
!880 = !DILocation(line: 262, column: 15, scope: !759)
!881 = !DILocation(line: 263, column: 15, scope: !759)
!882 = !DILocation(line: 264, column: 20, scope: !883)
!883 = distinct !DILexicalBlock(scope: !759, file: !132, line: 264, column: 15)
!884 = !DILocation(line: 264, column: 15, scope: !759)
!885 = !DILocation(line: 108, column: 23, scope: !851, inlinedAt: !886)
!886 = distinct !DILocation(line: 265, column: 13, scope: !883)
!887 = !DILocation(line: 110, column: 10, scope: !851, inlinedAt: !886)
!888 = !DILocation(line: 259, column: 19, scope: !719)
!889 = distinct !{!889, !718, !890}
!890 = !DILocation(line: 266, column: 9, scope: !719)
!891 = !DILocation(line: 269, column: 7, scope: !892)
!892 = distinct !DILexicalBlock(scope: !657, file: !132, line: 269, column: 7)
!893 = !DILocation(line: 269, column: 7, scope: !657)
!894 = !DILocation(line: 108, column: 23, scope: !851, inlinedAt: !895)
!895 = distinct !DILocation(line: 270, column: 5, scope: !892)
!896 = !DILocation(line: 110, column: 10, scope: !851, inlinedAt: !895)
!897 = !DILocation(line: 272, column: 1, scope: !657)
!898 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !16, file: !16, line: 51, type: !584, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !11, retainedNodes: !899)
!899 = !{!900}
!900 = !DILocalVariable(name: "file", arg: 1, scope: !898, file: !16, line: 51, type: !6)
!901 = !DILocation(line: 51, column: 41, scope: !898)
!902 = !DILocation(line: 53, column: 13, scope: !898)
!903 = !DILocation(line: 54, column: 1, scope: !898)
!904 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !16, file: !16, line: 88, type: !905, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !11, retainedNodes: !907)
!905 = !DISubroutineType(types: !906)
!906 = !{null, !17}
!907 = !{!908}
!908 = !DILocalVariable(name: "ignore", arg: 1, scope: !904, file: !16, line: 88, type: !17)
!909 = !DILocation(line: 88, column: 37, scope: !904)
!910 = !DILocation(line: 90, column: 16, scope: !904)
!911 = !{!912, !912, i64 0}
!912 = !{!"_Bool", !611, i64 0}
!913 = !DILocation(line: 91, column: 1, scope: !904)
!914 = distinct !DISubprogram(name: "close_stdout", scope: !16, file: !16, line: 117, type: !915, isLocal: false, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: true, unit: !11, retainedNodes: !917)
!915 = !DISubroutineType(types: !916)
!916 = !{null}
!917 = !{!918}
!918 = !DILocalVariable(name: "write_error", scope: !919, file: !16, line: 122, type: !6)
!919 = distinct !DILexicalBlock(scope: !920, file: !16, line: 121, column: 5)
!920 = distinct !DILexicalBlock(scope: !914, file: !16, line: 119, column: 7)
!921 = !DILocation(line: 119, column: 21, scope: !920)
!922 = !DILocation(line: 119, column: 7, scope: !920)
!923 = !DILocation(line: 119, column: 29, scope: !920)
!924 = !DILocation(line: 120, column: 7, scope: !920)
!925 = !DILocation(line: 120, column: 12, scope: !920)
!926 = !{i8 0, i8 2}
!927 = !DILocation(line: 120, column: 25, scope: !920)
!928 = !DILocation(line: 120, column: 28, scope: !920)
!929 = !{!861, !861, i64 0}
!930 = !DILocation(line: 120, column: 34, scope: !920)
!931 = !DILocation(line: 119, column: 7, scope: !914)
!932 = !DILocation(line: 122, column: 33, scope: !919)
!933 = !DILocation(line: 122, column: 19, scope: !919)
!934 = !DILocation(line: 123, column: 11, scope: !935)
!935 = distinct !DILexicalBlock(scope: !919, file: !16, line: 123, column: 11)
!936 = !DILocation(line: 0, scope: !935)
!937 = !DILocation(line: 123, column: 11, scope: !919)
!938 = !DILocation(line: 124, column: 36, scope: !935)
!939 = !DILocation(line: 124, column: 9, scope: !935)
!940 = !DILocation(line: 127, column: 9, scope: !935)
!941 = !DILocation(line: 129, column: 14, scope: !919)
!942 = !DILocation(line: 129, column: 7, scope: !919)
!943 = !DILocation(line: 134, column: 42, scope: !944)
!944 = distinct !DILexicalBlock(scope: !914, file: !16, line: 134, column: 7)
!945 = !DILocation(line: 134, column: 28, scope: !944)
!946 = !DILocation(line: 134, column: 50, scope: !944)
!947 = !DILocation(line: 134, column: 7, scope: !914)
!948 = !DILocation(line: 135, column: 12, scope: !944)
!949 = !DILocation(line: 135, column: 5, scope: !944)
!950 = !DILocation(line: 136, column: 1, scope: !914)
!951 = distinct !DISubprogram(name: "set_program_name", scope: !34, file: !34, line: 39, type: !584, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !28, retainedNodes: !952)
!952 = !{!953, !954, !955}
!953 = !DILocalVariable(name: "argv0", arg: 1, scope: !951, file: !34, line: 39, type: !6)
!954 = !DILocalVariable(name: "slash", scope: !951, file: !34, line: 46, type: !6)
!955 = !DILocalVariable(name: "base", scope: !951, file: !34, line: 47, type: !6)
!956 = !DILocation(line: 39, column: 31, scope: !951)
!957 = !DILocation(line: 51, column: 13, scope: !958)
!958 = distinct !DILexicalBlock(scope: !951, file: !34, line: 51, column: 7)
!959 = !DILocation(line: 51, column: 7, scope: !951)
!960 = !DILocation(line: 55, column: 14, scope: !961)
!961 = distinct !DILexicalBlock(scope: !958, file: !34, line: 52, column: 5)
!962 = !DILocation(line: 54, column: 7, scope: !961)
!963 = !DILocation(line: 56, column: 7, scope: !961)
!964 = !DILocation(line: 59, column: 11, scope: !951)
!965 = !DILocation(line: 46, column: 15, scope: !951)
!966 = !DILocation(line: 60, column: 17, scope: !951)
!967 = !DILocation(line: 60, column: 33, scope: !951)
!968 = !DILocation(line: 60, column: 11, scope: !951)
!969 = !DILocation(line: 47, column: 15, scope: !951)
!970 = !DILocation(line: 61, column: 12, scope: !971)
!971 = distinct !DILexicalBlock(scope: !951, file: !34, line: 61, column: 7)
!972 = !DILocation(line: 61, column: 20, scope: !971)
!973 = !DILocation(line: 61, column: 25, scope: !971)
!974 = !DILocation(line: 61, column: 42, scope: !971)
!975 = !DILocation(line: 61, column: 28, scope: !971)
!976 = !DILocation(line: 61, column: 61, scope: !971)
!977 = !DILocation(line: 61, column: 7, scope: !951)
!978 = !DILocation(line: 64, column: 11, scope: !979)
!979 = distinct !DILexicalBlock(scope: !980, file: !34, line: 64, column: 11)
!980 = distinct !DILexicalBlock(scope: !971, file: !34, line: 62, column: 5)
!981 = !DILocation(line: 64, column: 36, scope: !979)
!982 = !DILocation(line: 64, column: 11, scope: !980)
!983 = !DILocation(line: 66, column: 24, scope: !984)
!984 = distinct !DILexicalBlock(scope: !979, file: !34, line: 65, column: 9)
!985 = !DILocation(line: 70, column: 41, scope: !984)
!986 = !DILocation(line: 72, column: 9, scope: !984)
!987 = !DILocation(line: 84, column: 16, scope: !951)
!988 = !DILocation(line: 90, column: 27, scope: !951)
!989 = !DILocation(line: 92, column: 1, scope: !951)
!990 = distinct !DISubprogram(name: "clone_quoting_options", scope: !83, file: !83, line: 122, type: !991, isLocal: false, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !994)
!991 = !DISubroutineType(types: !992)
!992 = !{!993, !993}
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!994 = !{!995, !996, !997}
!995 = !DILocalVariable(name: "o", arg: 1, scope: !990, file: !83, line: 122, type: !993)
!996 = !DILocalVariable(name: "e", scope: !990, file: !83, line: 124, type: !25)
!997 = !DILocalVariable(name: "p", scope: !990, file: !83, line: 125, type: !993)
!998 = !DILocation(line: 122, column: 48, scope: !990)
!999 = !DILocation(line: 124, column: 11, scope: !990)
!1000 = !DILocation(line: 124, column: 7, scope: !990)
!1001 = !DILocation(line: 125, column: 40, scope: !990)
!1002 = !DILocation(line: 125, column: 31, scope: !990)
!1003 = !DILocation(line: 125, column: 27, scope: !990)
!1004 = !DILocation(line: 127, column: 9, scope: !990)
!1005 = !DILocation(line: 128, column: 3, scope: !990)
!1006 = distinct !DISubprogram(name: "get_quoting_style", scope: !83, file: !83, line: 133, type: !1007, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !1011)
!1007 = !DISubroutineType(types: !1008)
!1008 = !{!40, !1009}
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !90)
!1011 = !{!1012}
!1012 = !DILocalVariable(name: "o", arg: 1, scope: !1006, file: !83, line: 133, type: !1009)
!1013 = !DILocation(line: 133, column: 50, scope: !1006)
!1014 = !DILocation(line: 135, column: 11, scope: !1006)
!1015 = !DILocation(line: 135, column: 46, scope: !1006)
!1016 = !{!1017, !611, i64 0}
!1017 = !{!"quoting_options", !611, i64 0, !861, i64 4, !611, i64 8, !610, i64 40, !610, i64 48}
!1018 = !DILocation(line: 135, column: 3, scope: !1006)
!1019 = distinct !DISubprogram(name: "set_quoting_style", scope: !83, file: !83, line: 141, type: !1020, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !1022)
!1020 = !DISubroutineType(types: !1021)
!1021 = !{null, !993, !40}
!1022 = !{!1023, !1024}
!1023 = !DILocalVariable(name: "o", arg: 1, scope: !1019, file: !83, line: 141, type: !993)
!1024 = !DILocalVariable(name: "s", arg: 2, scope: !1019, file: !83, line: 141, type: !40)
!1025 = !DILocation(line: 141, column: 44, scope: !1019)
!1026 = !DILocation(line: 141, column: 66, scope: !1019)
!1027 = !DILocation(line: 143, column: 4, scope: !1019)
!1028 = !DILocation(line: 143, column: 39, scope: !1019)
!1029 = !DILocation(line: 143, column: 45, scope: !1019)
!1030 = !DILocation(line: 144, column: 1, scope: !1019)
!1031 = distinct !DISubprogram(name: "set_char_quoting", scope: !83, file: !83, line: 152, type: !1032, isLocal: false, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !1034)
!1032 = !DISubroutineType(types: !1033)
!1033 = !{!25, !993, !8, !25}
!1034 = !{!1035, !1036, !1037, !1038, !1039, !1041, !1042}
!1035 = !DILocalVariable(name: "o", arg: 1, scope: !1031, file: !83, line: 152, type: !993)
!1036 = !DILocalVariable(name: "c", arg: 2, scope: !1031, file: !83, line: 152, type: !8)
!1037 = !DILocalVariable(name: "i", arg: 3, scope: !1031, file: !83, line: 152, type: !25)
!1038 = !DILocalVariable(name: "uc", scope: !1031, file: !83, line: 154, type: !138)
!1039 = !DILocalVariable(name: "p", scope: !1031, file: !83, line: 155, type: !1040)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!1041 = !DILocalVariable(name: "shift", scope: !1031, file: !83, line: 157, type: !25)
!1042 = !DILocalVariable(name: "r", scope: !1031, file: !83, line: 158, type: !25)
!1043 = !DILocation(line: 152, column: 43, scope: !1031)
!1044 = !DILocation(line: 152, column: 51, scope: !1031)
!1045 = !DILocation(line: 152, column: 58, scope: !1031)
!1046 = !DILocation(line: 154, column: 17, scope: !1031)
!1047 = !DILocation(line: 156, column: 6, scope: !1031)
!1048 = !DILocation(line: 156, column: 62, scope: !1031)
!1049 = !DILocation(line: 156, column: 57, scope: !1031)
!1050 = !DILocation(line: 155, column: 17, scope: !1031)
!1051 = !DILocation(line: 157, column: 15, scope: !1031)
!1052 = !DILocation(line: 157, column: 7, scope: !1031)
!1053 = !DILocation(line: 158, column: 12, scope: !1031)
!1054 = !DILocation(line: 158, column: 15, scope: !1031)
!1055 = !DILocation(line: 158, column: 25, scope: !1031)
!1056 = !DILocation(line: 158, column: 7, scope: !1031)
!1057 = !DILocation(line: 159, column: 13, scope: !1031)
!1058 = !DILocation(line: 159, column: 18, scope: !1031)
!1059 = !DILocation(line: 159, column: 23, scope: !1031)
!1060 = !DILocation(line: 159, column: 6, scope: !1031)
!1061 = !DILocation(line: 160, column: 3, scope: !1031)
!1062 = distinct !DISubprogram(name: "set_quoting_flags", scope: !83, file: !83, line: 168, type: !1063, isLocal: false, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !1065)
!1063 = !DISubroutineType(types: !1064)
!1064 = !{!25, !993, !25}
!1065 = !{!1066, !1067, !1068}
!1066 = !DILocalVariable(name: "o", arg: 1, scope: !1062, file: !83, line: 168, type: !993)
!1067 = !DILocalVariable(name: "i", arg: 2, scope: !1062, file: !83, line: 168, type: !25)
!1068 = !DILocalVariable(name: "r", scope: !1062, file: !83, line: 170, type: !25)
!1069 = !DILocation(line: 168, column: 44, scope: !1062)
!1070 = !DILocation(line: 168, column: 51, scope: !1062)
!1071 = !DILocation(line: 171, column: 8, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !1062, file: !83, line: 171, column: 7)
!1073 = !DILocation(line: 171, column: 7, scope: !1062)
!1074 = !DILocation(line: 173, column: 10, scope: !1062)
!1075 = !{!1017, !861, i64 4}
!1076 = !DILocation(line: 170, column: 7, scope: !1062)
!1077 = !DILocation(line: 174, column: 12, scope: !1062)
!1078 = !DILocation(line: 175, column: 3, scope: !1062)
!1079 = distinct !DISubprogram(name: "set_custom_quoting", scope: !83, file: !83, line: 179, type: !1080, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !1082)
!1080 = !DISubroutineType(types: !1081)
!1081 = !{null, !993, !6, !6}
!1082 = !{!1083, !1084, !1085}
!1083 = !DILocalVariable(name: "o", arg: 1, scope: !1079, file: !83, line: 179, type: !993)
!1084 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1079, file: !83, line: 180, type: !6)
!1085 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1079, file: !83, line: 180, type: !6)
!1086 = !DILocation(line: 179, column: 45, scope: !1079)
!1087 = !DILocation(line: 180, column: 33, scope: !1079)
!1088 = !DILocation(line: 180, column: 57, scope: !1079)
!1089 = !DILocation(line: 182, column: 8, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1079, file: !83, line: 182, column: 7)
!1091 = !DILocation(line: 182, column: 7, scope: !1079)
!1092 = !DILocation(line: 184, column: 6, scope: !1079)
!1093 = !DILocation(line: 184, column: 12, scope: !1079)
!1094 = !DILocation(line: 185, column: 8, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1079, file: !83, line: 185, column: 7)
!1096 = !DILocation(line: 185, column: 23, scope: !1095)
!1097 = !DILocation(line: 185, column: 19, scope: !1095)
!1098 = !DILocation(line: 186, column: 5, scope: !1095)
!1099 = !DILocation(line: 187, column: 6, scope: !1079)
!1100 = !DILocation(line: 187, column: 17, scope: !1079)
!1101 = !{!1017, !610, i64 40}
!1102 = !DILocation(line: 188, column: 6, scope: !1079)
!1103 = !DILocation(line: 188, column: 18, scope: !1079)
!1104 = !{!1017, !610, i64 48}
!1105 = !DILocation(line: 189, column: 1, scope: !1079)
!1106 = distinct !DISubprogram(name: "quotearg_buffer", scope: !83, file: !83, line: 784, type: !1107, isLocal: false, isDefinition: true, scopeLine: 787, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !1109)
!1107 = !DISubroutineType(types: !1108)
!1108 = !{!77, !32, !77, !6, !77, !1009}
!1109 = !{!1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117}
!1110 = !DILocalVariable(name: "buffer", arg: 1, scope: !1106, file: !83, line: 784, type: !32)
!1111 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1106, file: !83, line: 784, type: !77)
!1112 = !DILocalVariable(name: "arg", arg: 3, scope: !1106, file: !83, line: 785, type: !6)
!1113 = !DILocalVariable(name: "argsize", arg: 4, scope: !1106, file: !83, line: 785, type: !77)
!1114 = !DILocalVariable(name: "o", arg: 5, scope: !1106, file: !83, line: 786, type: !1009)
!1115 = !DILocalVariable(name: "p", scope: !1106, file: !83, line: 788, type: !1009)
!1116 = !DILocalVariable(name: "e", scope: !1106, file: !83, line: 789, type: !25)
!1117 = !DILocalVariable(name: "r", scope: !1106, file: !83, line: 790, type: !77)
!1118 = !DILocation(line: 784, column: 24, scope: !1106)
!1119 = !DILocation(line: 784, column: 39, scope: !1106)
!1120 = !DILocation(line: 785, column: 30, scope: !1106)
!1121 = !DILocation(line: 785, column: 42, scope: !1106)
!1122 = !DILocation(line: 786, column: 48, scope: !1106)
!1123 = !DILocation(line: 788, column: 37, scope: !1106)
!1124 = !DILocation(line: 788, column: 33, scope: !1106)
!1125 = !DILocation(line: 789, column: 11, scope: !1106)
!1126 = !DILocation(line: 789, column: 7, scope: !1106)
!1127 = !DILocation(line: 791, column: 43, scope: !1106)
!1128 = !DILocation(line: 791, column: 53, scope: !1106)
!1129 = !DILocation(line: 791, column: 60, scope: !1106)
!1130 = !DILocation(line: 792, column: 43, scope: !1106)
!1131 = !DILocation(line: 792, column: 58, scope: !1106)
!1132 = !DILocation(line: 790, column: 14, scope: !1106)
!1133 = !DILocation(line: 790, column: 10, scope: !1106)
!1134 = !DILocation(line: 793, column: 9, scope: !1106)
!1135 = !DILocation(line: 794, column: 3, scope: !1106)
!1136 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !83, file: !83, line: 256, type: !1137, isLocal: true, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !1141)
!1137 = !DISubroutineType(types: !1138)
!1138 = !{!77, !32, !77, !6, !77, !40, !25, !1139, !6, !6}
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!1141 = !{!1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1166, !1167, !1168, !1169, !1170, !1173, !1174, !1192, !1195, !1196, !1203}
!1142 = !DILocalVariable(name: "buffer", arg: 1, scope: !1136, file: !83, line: 256, type: !32)
!1143 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1136, file: !83, line: 256, type: !77)
!1144 = !DILocalVariable(name: "arg", arg: 3, scope: !1136, file: !83, line: 257, type: !6)
!1145 = !DILocalVariable(name: "argsize", arg: 4, scope: !1136, file: !83, line: 257, type: !77)
!1146 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1136, file: !83, line: 258, type: !40)
!1147 = !DILocalVariable(name: "flags", arg: 6, scope: !1136, file: !83, line: 258, type: !25)
!1148 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1136, file: !83, line: 259, type: !1139)
!1149 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1136, file: !83, line: 260, type: !6)
!1150 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1136, file: !83, line: 261, type: !6)
!1151 = !DILocalVariable(name: "i", scope: !1136, file: !83, line: 263, type: !77)
!1152 = !DILocalVariable(name: "len", scope: !1136, file: !83, line: 264, type: !77)
!1153 = !DILocalVariable(name: "orig_buffersize", scope: !1136, file: !83, line: 265, type: !77)
!1154 = !DILocalVariable(name: "quote_string", scope: !1136, file: !83, line: 266, type: !6)
!1155 = !DILocalVariable(name: "quote_string_len", scope: !1136, file: !83, line: 267, type: !77)
!1156 = !DILocalVariable(name: "backslash_escapes", scope: !1136, file: !83, line: 268, type: !17)
!1157 = !DILocalVariable(name: "unibyte_locale", scope: !1136, file: !83, line: 269, type: !17)
!1158 = !DILocalVariable(name: "elide_outer_quotes", scope: !1136, file: !83, line: 270, type: !17)
!1159 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1136, file: !83, line: 271, type: !17)
!1160 = !DILocalVariable(name: "encountered_single_quote", scope: !1136, file: !83, line: 272, type: !17)
!1161 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1136, file: !83, line: 273, type: !17)
!1162 = !DILocalVariable(name: "c", scope: !1163, file: !83, line: 402, type: !138)
!1163 = distinct !DILexicalBlock(scope: !1164, file: !83, line: 401, column: 5)
!1164 = distinct !DILexicalBlock(scope: !1165, file: !83, line: 400, column: 3)
!1165 = distinct !DILexicalBlock(scope: !1136, file: !83, line: 400, column: 3)
!1166 = !DILocalVariable(name: "esc", scope: !1163, file: !83, line: 403, type: !138)
!1167 = !DILocalVariable(name: "is_right_quote", scope: !1163, file: !83, line: 404, type: !17)
!1168 = !DILocalVariable(name: "escaping", scope: !1163, file: !83, line: 405, type: !17)
!1169 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1163, file: !83, line: 406, type: !17)
!1170 = !DILocalVariable(name: "m", scope: !1171, file: !83, line: 610, type: !77)
!1171 = distinct !DILexicalBlock(scope: !1172, file: !83, line: 608, column: 11)
!1172 = distinct !DILexicalBlock(scope: !1163, file: !83, line: 426, column: 9)
!1173 = !DILocalVariable(name: "printable", scope: !1171, file: !83, line: 612, type: !17)
!1174 = !DILocalVariable(name: "mbstate", scope: !1175, file: !83, line: 621, type: !1177)
!1175 = distinct !DILexicalBlock(scope: !1176, file: !83, line: 620, column: 15)
!1176 = distinct !DILexicalBlock(scope: !1171, file: !83, line: 614, column: 17)
!1177 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1178, line: 6, baseType: !1179)
!1178 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1179 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1180, line: 21, baseType: !1181)
!1180 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1181 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1180, line: 13, size: 64, elements: !1182)
!1182 = !{!1183, !1184}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1181, file: !1180, line: 15, baseType: !25, size: 32)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1181, file: !1180, line: 20, baseType: !1185, size: 32, offset: 32)
!1185 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1181, file: !1180, line: 16, size: 32, elements: !1186)
!1186 = !{!1187, !1188}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1185, file: !1180, line: 18, baseType: !42, size: 32)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1185, file: !1180, line: 19, baseType: !1189, size: 32)
!1189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 32, elements: !1190)
!1190 = !{!1191}
!1191 = !DISubrange(count: 4)
!1192 = !DILocalVariable(name: "w", scope: !1193, file: !83, line: 631, type: !1194)
!1193 = distinct !DILexicalBlock(scope: !1175, file: !83, line: 630, column: 19)
!1194 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !78, line: 90, baseType: !25)
!1195 = !DILocalVariable(name: "bytes", scope: !1193, file: !83, line: 632, type: !77)
!1196 = !DILocalVariable(name: "j", scope: !1197, file: !83, line: 657, type: !77)
!1197 = distinct !DILexicalBlock(scope: !1198, file: !83, line: 656, column: 27)
!1198 = distinct !DILexicalBlock(scope: !1199, file: !83, line: 654, column: 29)
!1199 = distinct !DILexicalBlock(scope: !1200, file: !83, line: 649, column: 23)
!1200 = distinct !DILexicalBlock(scope: !1201, file: !83, line: 641, column: 30)
!1201 = distinct !DILexicalBlock(scope: !1202, file: !83, line: 636, column: 30)
!1202 = distinct !DILexicalBlock(scope: !1193, file: !83, line: 634, column: 25)
!1203 = !DILocalVariable(name: "ilim", scope: !1204, file: !83, line: 684, type: !77)
!1204 = distinct !DILexicalBlock(scope: !1205, file: !83, line: 681, column: 15)
!1205 = distinct !DILexicalBlock(scope: !1171, file: !83, line: 680, column: 17)
!1206 = !DILocation(line: 256, column: 33, scope: !1136)
!1207 = !DILocation(line: 256, column: 48, scope: !1136)
!1208 = !DILocation(line: 257, column: 39, scope: !1136)
!1209 = !DILocation(line: 257, column: 51, scope: !1136)
!1210 = !DILocation(line: 258, column: 46, scope: !1136)
!1211 = !DILocation(line: 258, column: 65, scope: !1136)
!1212 = !DILocation(line: 259, column: 47, scope: !1136)
!1213 = !DILocation(line: 260, column: 39, scope: !1136)
!1214 = !DILocation(line: 261, column: 39, scope: !1136)
!1215 = !DILocation(line: 264, column: 10, scope: !1136)
!1216 = !DILocation(line: 265, column: 10, scope: !1136)
!1217 = !DILocation(line: 266, column: 15, scope: !1136)
!1218 = !DILocation(line: 267, column: 10, scope: !1136)
!1219 = !DILocation(line: 268, column: 8, scope: !1136)
!1220 = !DILocation(line: 269, column: 25, scope: !1136)
!1221 = !DILocation(line: 269, column: 36, scope: !1136)
!1222 = !DILocation(line: 270, column: 8, scope: !1136)
!1223 = !DILocation(line: 271, column: 8, scope: !1136)
!1224 = !DILocation(line: 272, column: 8, scope: !1136)
!1225 = !DILocation(line: 273, column: 8, scope: !1136)
!1226 = !DILocation(line: 273, column: 3, scope: !1136)
!1227 = !DILocation(line: 0, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1136, file: !83, line: 317, column: 5)
!1229 = !DILocation(line: 316, column: 3, scope: !1136)
!1230 = !DILocation(line: 323, column: 11, scope: !1228)
!1231 = !DILocation(line: 323, column: 12, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1228, file: !83, line: 323, column: 11)
!1233 = !DILocation(line: 324, column: 9, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1235, file: !83, line: 324, column: 9)
!1235 = distinct !DILexicalBlock(scope: !1232, file: !83, line: 324, column: 9)
!1236 = !DILocation(line: 324, column: 9, scope: !1235)
!1237 = !DILocation(line: 362, column: 26, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1239, file: !83, line: 340, column: 11)
!1239 = distinct !DILexicalBlock(scope: !1240, file: !83, line: 339, column: 13)
!1240 = distinct !DILexicalBlock(scope: !1228, file: !83, line: 338, column: 7)
!1241 = !DILocation(line: 363, column: 27, scope: !1238)
!1242 = !DILocation(line: 364, column: 11, scope: !1238)
!1243 = !DILocation(line: 365, column: 14, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1240, file: !83, line: 365, column: 13)
!1245 = !DILocation(line: 365, column: 13, scope: !1240)
!1246 = !DILocation(line: 366, column: 43, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1248, file: !83, line: 366, column: 11)
!1248 = distinct !DILexicalBlock(scope: !1244, file: !83, line: 366, column: 11)
!1249 = !DILocation(line: 366, column: 11, scope: !1248)
!1250 = !DILocation(line: 367, column: 13, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1252, file: !83, line: 367, column: 13)
!1252 = distinct !DILexicalBlock(scope: !1247, file: !83, line: 367, column: 13)
!1253 = !DILocation(line: 367, column: 13, scope: !1252)
!1254 = !DILocation(line: 366, column: 70, scope: !1247)
!1255 = distinct !{!1255, !1249, !1256}
!1256 = !DILocation(line: 367, column: 13, scope: !1248)
!1257 = !DILocation(line: 370, column: 28, scope: !1240)
!1258 = !DILocation(line: 372, column: 7, scope: !1228)
!1259 = !DILocation(line: 376, column: 7, scope: !1228)
!1260 = !DILocation(line: 379, column: 7, scope: !1228)
!1261 = !DILocation(line: 381, column: 12, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1228, file: !83, line: 381, column: 11)
!1263 = !DILocation(line: 381, column: 11, scope: !1228)
!1264 = !DILocation(line: 0, scope: !1262)
!1265 = !DILocation(line: 386, column: 12, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1228, file: !83, line: 386, column: 11)
!1267 = !DILocation(line: 386, column: 11, scope: !1228)
!1268 = !DILocation(line: 387, column: 9, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1270, file: !83, line: 387, column: 9)
!1270 = distinct !DILexicalBlock(scope: !1266, file: !83, line: 387, column: 9)
!1271 = !DILocation(line: 387, column: 9, scope: !1270)
!1272 = !DILocation(line: 394, column: 7, scope: !1228)
!1273 = !DILocation(line: 397, column: 7, scope: !1228)
!1274 = !DILocation(line: 0, scope: !1136)
!1275 = !DILocation(line: 263, column: 10, scope: !1136)
!1276 = !DILocation(line: 400, column: 8, scope: !1165)
!1277 = !DILocation(line: 0, scope: !1164)
!1278 = !DILocation(line: 400, column: 27, scope: !1164)
!1279 = !DILocation(line: 400, column: 19, scope: !1164)
!1280 = !DILocation(line: 400, column: 41, scope: !1164)
!1281 = !DILocation(line: 400, column: 48, scope: !1164)
!1282 = !DILocation(line: 400, column: 3, scope: !1165)
!1283 = !DILocation(line: 400, column: 60, scope: !1164)
!1284 = !DILocation(line: 404, column: 12, scope: !1163)
!1285 = !DILocation(line: 405, column: 12, scope: !1163)
!1286 = !DILocation(line: 406, column: 12, scope: !1163)
!1287 = !DILocation(line: 409, column: 11, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1163, file: !83, line: 408, column: 11)
!1289 = !DILocation(line: 411, column: 17, scope: !1288)
!1290 = !DILocation(line: 412, column: 39, scope: !1288)
!1291 = !DILocation(line: 416, column: 32, scope: !1288)
!1292 = !DILocation(line: 412, column: 19, scope: !1288)
!1293 = !DILocation(line: 412, column: 15, scope: !1288)
!1294 = !DILocation(line: 417, column: 11, scope: !1288)
!1295 = !DILocation(line: 417, column: 26, scope: !1288)
!1296 = !DILocation(line: 417, column: 14, scope: !1288)
!1297 = !DILocation(line: 417, column: 63, scope: !1288)
!1298 = !DILocation(line: 408, column: 11, scope: !1163)
!1299 = !DILocation(line: 0, scope: !1163)
!1300 = !DILocation(line: 424, column: 11, scope: !1163)
!1301 = !DILocation(line: 402, column: 21, scope: !1163)
!1302 = !DILocation(line: 425, column: 7, scope: !1163)
!1303 = !DILocation(line: 428, column: 15, scope: !1172)
!1304 = !DILocation(line: 430, column: 15, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1306, file: !83, line: 430, column: 15)
!1306 = distinct !DILexicalBlock(scope: !1307, file: !83, line: 429, column: 13)
!1307 = distinct !DILexicalBlock(scope: !1172, file: !83, line: 428, column: 15)
!1308 = !DILocation(line: 430, column: 15, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1305, file: !83, line: 430, column: 15)
!1310 = !DILocation(line: 430, column: 15, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1312, file: !83, line: 430, column: 15)
!1312 = distinct !DILexicalBlock(scope: !1313, file: !83, line: 430, column: 15)
!1313 = distinct !DILexicalBlock(scope: !1309, file: !83, line: 430, column: 15)
!1314 = !DILocation(line: 430, column: 15, scope: !1312)
!1315 = !DILocation(line: 430, column: 15, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1317, file: !83, line: 430, column: 15)
!1317 = distinct !DILexicalBlock(scope: !1313, file: !83, line: 430, column: 15)
!1318 = !DILocation(line: 430, column: 15, scope: !1317)
!1319 = !DILocation(line: 430, column: 15, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1321, file: !83, line: 430, column: 15)
!1321 = distinct !DILexicalBlock(scope: !1313, file: !83, line: 430, column: 15)
!1322 = !DILocation(line: 430, column: 15, scope: !1321)
!1323 = !DILocation(line: 430, column: 15, scope: !1313)
!1324 = !DILocation(line: 430, column: 15, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1326, file: !83, line: 430, column: 15)
!1326 = distinct !DILexicalBlock(scope: !1305, file: !83, line: 430, column: 15)
!1327 = !DILocation(line: 430, column: 15, scope: !1326)
!1328 = !DILocation(line: 438, column: 19, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1306, file: !83, line: 437, column: 19)
!1330 = !DILocation(line: 438, column: 24, scope: !1329)
!1331 = !DILocation(line: 438, column: 28, scope: !1329)
!1332 = !DILocation(line: 438, column: 38, scope: !1329)
!1333 = !DILocation(line: 438, column: 48, scope: !1329)
!1334 = !DILocation(line: 438, column: 59, scope: !1329)
!1335 = !DILocation(line: 440, column: 19, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1337, file: !83, line: 440, column: 19)
!1337 = distinct !DILexicalBlock(scope: !1338, file: !83, line: 440, column: 19)
!1338 = distinct !DILexicalBlock(scope: !1329, file: !83, line: 439, column: 17)
!1339 = !DILocation(line: 440, column: 19, scope: !1337)
!1340 = !DILocation(line: 441, column: 19, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1342, file: !83, line: 441, column: 19)
!1342 = distinct !DILexicalBlock(scope: !1338, file: !83, line: 441, column: 19)
!1343 = !DILocation(line: 441, column: 19, scope: !1342)
!1344 = !DILocation(line: 442, column: 17, scope: !1338)
!1345 = !DILocation(line: 449, column: 20, scope: !1307)
!1346 = !DILocation(line: 454, column: 11, scope: !1172)
!1347 = !DILocation(line: 457, column: 19, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1172, file: !83, line: 455, column: 13)
!1349 = !DILocation(line: 463, column: 19, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1348, file: !83, line: 462, column: 19)
!1351 = !DILocation(line: 463, column: 24, scope: !1350)
!1352 = !DILocation(line: 463, column: 28, scope: !1350)
!1353 = !DILocation(line: 463, column: 38, scope: !1350)
!1354 = !DILocation(line: 463, column: 47, scope: !1350)
!1355 = !DILocation(line: 463, column: 41, scope: !1350)
!1356 = !DILocation(line: 463, column: 52, scope: !1350)
!1357 = !DILocation(line: 462, column: 19, scope: !1348)
!1358 = !DILocation(line: 464, column: 25, scope: !1350)
!1359 = !DILocation(line: 464, column: 17, scope: !1350)
!1360 = !DILocation(line: 471, column: 25, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1350, file: !83, line: 465, column: 19)
!1362 = !DILocation(line: 475, column: 21, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1364, file: !83, line: 475, column: 21)
!1364 = distinct !DILexicalBlock(scope: !1361, file: !83, line: 475, column: 21)
!1365 = !DILocation(line: 475, column: 21, scope: !1364)
!1366 = !DILocation(line: 476, column: 21, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1368, file: !83, line: 476, column: 21)
!1368 = distinct !DILexicalBlock(scope: !1361, file: !83, line: 476, column: 21)
!1369 = !DILocation(line: 476, column: 21, scope: !1368)
!1370 = !DILocation(line: 477, column: 21, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1372, file: !83, line: 477, column: 21)
!1372 = distinct !DILexicalBlock(scope: !1361, file: !83, line: 477, column: 21)
!1373 = !DILocation(line: 477, column: 21, scope: !1372)
!1374 = !DILocation(line: 478, column: 21, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1376, file: !83, line: 478, column: 21)
!1376 = distinct !DILexicalBlock(scope: !1361, file: !83, line: 478, column: 21)
!1377 = !DILocation(line: 478, column: 21, scope: !1376)
!1378 = !DILocation(line: 479, column: 21, scope: !1361)
!1379 = !DILocation(line: 403, column: 21, scope: !1163)
!1380 = !DILocation(line: 492, column: 31, scope: !1172)
!1381 = !DILocation(line: 493, column: 31, scope: !1172)
!1382 = !DILocation(line: 495, column: 31, scope: !1172)
!1383 = !DILocation(line: 496, column: 31, scope: !1172)
!1384 = !DILocation(line: 497, column: 31, scope: !1172)
!1385 = !DILocation(line: 500, column: 15, scope: !1172)
!1386 = !DILocation(line: 502, column: 19, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1388, file: !83, line: 501, column: 13)
!1388 = distinct !DILexicalBlock(scope: !1172, file: !83, line: 500, column: 15)
!1389 = !DILocation(line: 509, column: 33, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1172, file: !83, line: 509, column: 15)
!1391 = !DILocation(line: 0, scope: !1172)
!1392 = !DILocation(line: 514, column: 15, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1172, file: !83, line: 513, column: 15)
!1394 = !DILocation(line: 518, column: 15, scope: !1172)
!1395 = !DILocation(line: 526, column: 26, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1172, file: !83, line: 526, column: 15)
!1397 = !DILocation(line: 526, column: 15, scope: !1172)
!1398 = !DILocation(line: 526, column: 40, scope: !1396)
!1399 = !DILocation(line: 526, column: 47, scope: !1396)
!1400 = !DILocation(line: 530, column: 17, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1172, file: !83, line: 530, column: 15)
!1402 = !DILocation(line: 526, column: 18, scope: !1396)
!1403 = !DILocation(line: 526, column: 65, scope: !1396)
!1404 = !DILocation(line: 530, column: 15, scope: !1172)
!1405 = !DILocation(line: 535, column: 11, scope: !1172)
!1406 = !DILocation(line: 549, column: 15, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1172, file: !83, line: 548, column: 15)
!1408 = !DILocation(line: 556, column: 15, scope: !1172)
!1409 = !DILocation(line: 558, column: 19, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1411, file: !83, line: 557, column: 13)
!1411 = distinct !DILexicalBlock(scope: !1172, file: !83, line: 556, column: 15)
!1412 = !DILocation(line: 561, column: 19, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1410, file: !83, line: 561, column: 19)
!1414 = !DILocation(line: 561, column: 35, scope: !1413)
!1415 = !DILocation(line: 561, column: 30, scope: !1413)
!1416 = !DILocation(line: 570, column: 15, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1418, file: !83, line: 570, column: 15)
!1418 = distinct !DILexicalBlock(scope: !1410, file: !83, line: 570, column: 15)
!1419 = !DILocation(line: 570, column: 15, scope: !1418)
!1420 = !DILocation(line: 571, column: 15, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1422, file: !83, line: 571, column: 15)
!1422 = distinct !DILexicalBlock(scope: !1410, file: !83, line: 571, column: 15)
!1423 = !DILocation(line: 571, column: 15, scope: !1422)
!1424 = !DILocation(line: 572, column: 15, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1426, file: !83, line: 572, column: 15)
!1426 = distinct !DILexicalBlock(scope: !1410, file: !83, line: 572, column: 15)
!1427 = !DILocation(line: 572, column: 15, scope: !1426)
!1428 = !DILocation(line: 574, column: 13, scope: !1410)
!1429 = !DILocation(line: 614, column: 17, scope: !1171)
!1430 = !DILocation(line: 610, column: 20, scope: !1171)
!1431 = !DILocation(line: 617, column: 29, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1176, file: !83, line: 615, column: 15)
!1433 = !DILocation(line: 617, column: 27, scope: !1432)
!1434 = !DILocation(line: 612, column: 18, scope: !1171)
!1435 = !DILocation(line: 618, column: 15, scope: !1432)
!1436 = !DILocation(line: 621, column: 17, scope: !1175)
!1437 = !DILocation(line: 622, column: 17, scope: !1175)
!1438 = !DILocation(line: 626, column: 29, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1175, file: !83, line: 626, column: 21)
!1440 = !DILocation(line: 626, column: 21, scope: !1175)
!1441 = !DILocation(line: 627, column: 29, scope: !1439)
!1442 = !DILocation(line: 627, column: 19, scope: !1439)
!1443 = !DILocation(line: 0, scope: !1288)
!1444 = !DILocation(line: 629, column: 17, scope: !1175)
!1445 = !DILocation(line: 624, column: 19, scope: !1175)
!1446 = !DILocation(line: 625, column: 27, scope: !1175)
!1447 = !DILocation(line: 631, column: 21, scope: !1193)
!1448 = !DILocation(line: 632, column: 56, scope: !1193)
!1449 = !DILocation(line: 632, column: 50, scope: !1193)
!1450 = !DILocation(line: 633, column: 53, scope: !1193)
!1451 = !DILocation(line: 621, column: 27, scope: !1175)
!1452 = !DILocation(line: 631, column: 29, scope: !1193)
!1453 = !DILocation(line: 632, column: 36, scope: !1193)
!1454 = !DILocation(line: 632, column: 28, scope: !1193)
!1455 = !DILocation(line: 634, column: 25, scope: !1193)
!1456 = !DILocation(line: 644, column: 38, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !1200, file: !83, line: 642, column: 23)
!1458 = !DILocation(line: 644, column: 48, scope: !1457)
!1459 = !DILocation(line: 644, column: 51, scope: !1457)
!1460 = !DILocation(line: 644, column: 25, scope: !1457)
!1461 = !DILocation(line: 645, column: 28, scope: !1457)
!1462 = !DILocation(line: 644, column: 34, scope: !1457)
!1463 = distinct !{!1463, !1460, !1461}
!1464 = !DILocation(line: 658, column: 43, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1466, file: !83, line: 658, column: 29)
!1466 = distinct !DILexicalBlock(scope: !1197, file: !83, line: 658, column: 29)
!1467 = !DILocation(line: 655, column: 29, scope: !1198)
!1468 = !DILocation(line: 657, column: 36, scope: !1197)
!1469 = !DILocation(line: 659, column: 49, scope: !1465)
!1470 = !DILocation(line: 659, column: 39, scope: !1465)
!1471 = !DILocation(line: 659, column: 31, scope: !1465)
!1472 = !DILocation(line: 658, column: 53, scope: !1465)
!1473 = !DILocation(line: 658, column: 29, scope: !1466)
!1474 = distinct !{!1474, !1473, !1475}
!1475 = !DILocation(line: 667, column: 33, scope: !1466)
!1476 = !DILocation(line: 674, column: 19, scope: !1175)
!1477 = !DILocation(line: 670, column: 41, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !1199, file: !83, line: 670, column: 29)
!1479 = !DILocation(line: 670, column: 31, scope: !1478)
!1480 = !DILocation(line: 670, column: 29, scope: !1199)
!1481 = !DILocation(line: 672, column: 27, scope: !1199)
!1482 = !DILocation(line: 675, column: 26, scope: !1175)
!1483 = !DILocation(line: 675, column: 24, scope: !1175)
!1484 = !DILocation(line: 674, column: 19, scope: !1193)
!1485 = distinct !{!1485, !1444, !1486}
!1486 = !DILocation(line: 675, column: 44, scope: !1175)
!1487 = !DILocation(line: 676, column: 15, scope: !1176)
!1488 = !DILocation(line: 0, scope: !1439)
!1489 = !DILocation(line: 0, scope: !1175)
!1490 = !DILocation(line: 678, column: 40, scope: !1171)
!1491 = !DILocation(line: 680, column: 19, scope: !1205)
!1492 = !DILocation(line: 680, column: 45, scope: !1205)
!1493 = !DILocation(line: 680, column: 23, scope: !1205)
!1494 = !DILocation(line: 684, column: 33, scope: !1204)
!1495 = !DILocation(line: 684, column: 24, scope: !1204)
!1496 = !DILocation(line: 686, column: 17, scope: !1204)
!1497 = !DILocation(line: 0, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1499, file: !83, line: 687, column: 19)
!1499 = distinct !DILexicalBlock(scope: !1500, file: !83, line: 686, column: 17)
!1500 = distinct !DILexicalBlock(scope: !1204, file: !83, line: 686, column: 17)
!1501 = !DILocation(line: 0, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1498, file: !83, line: 703, column: 21)
!1503 = !DILocation(line: 0, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1505, file: !83, line: 696, column: 23)
!1505 = distinct !DILexicalBlock(scope: !1506, file: !83, line: 695, column: 30)
!1506 = distinct !DILexicalBlock(scope: !1498, file: !83, line: 688, column: 25)
!1507 = !DILocation(line: 688, column: 43, scope: !1506)
!1508 = !DILocation(line: 690, column: 25, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1510, file: !83, line: 690, column: 25)
!1510 = distinct !DILexicalBlock(scope: !1506, file: !83, line: 689, column: 23)
!1511 = !DILocation(line: 690, column: 25, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !1509, file: !83, line: 690, column: 25)
!1513 = !DILocation(line: 690, column: 25, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1515, file: !83, line: 690, column: 25)
!1515 = distinct !DILexicalBlock(scope: !1516, file: !83, line: 690, column: 25)
!1516 = distinct !DILexicalBlock(scope: !1512, file: !83, line: 690, column: 25)
!1517 = !DILocation(line: 690, column: 25, scope: !1515)
!1518 = !DILocation(line: 690, column: 25, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1520, file: !83, line: 690, column: 25)
!1520 = distinct !DILexicalBlock(scope: !1516, file: !83, line: 690, column: 25)
!1521 = !DILocation(line: 690, column: 25, scope: !1520)
!1522 = !DILocation(line: 690, column: 25, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1524, file: !83, line: 690, column: 25)
!1524 = distinct !DILexicalBlock(scope: !1516, file: !83, line: 690, column: 25)
!1525 = !DILocation(line: 690, column: 25, scope: !1524)
!1526 = !DILocation(line: 690, column: 25, scope: !1516)
!1527 = !DILocation(line: 690, column: 25, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1529, file: !83, line: 690, column: 25)
!1529 = distinct !DILexicalBlock(scope: !1509, file: !83, line: 690, column: 25)
!1530 = !DILocation(line: 690, column: 25, scope: !1529)
!1531 = !DILocation(line: 691, column: 25, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1533, file: !83, line: 691, column: 25)
!1533 = distinct !DILexicalBlock(scope: !1510, file: !83, line: 691, column: 25)
!1534 = !DILocation(line: 691, column: 25, scope: !1533)
!1535 = !DILocation(line: 692, column: 25, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1537, file: !83, line: 692, column: 25)
!1537 = distinct !DILexicalBlock(scope: !1510, file: !83, line: 692, column: 25)
!1538 = !DILocation(line: 692, column: 25, scope: !1537)
!1539 = !DILocation(line: 693, column: 38, scope: !1510)
!1540 = !DILocation(line: 693, column: 33, scope: !1510)
!1541 = !DILocation(line: 694, column: 23, scope: !1510)
!1542 = !DILocation(line: 695, column: 30, scope: !1505)
!1543 = !DILocation(line: 695, column: 30, scope: !1506)
!1544 = !DILocation(line: 697, column: 25, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1546, file: !83, line: 697, column: 25)
!1546 = distinct !DILexicalBlock(scope: !1504, file: !83, line: 697, column: 25)
!1547 = !DILocation(line: 697, column: 25, scope: !1546)
!1548 = !DILocation(line: 699, column: 23, scope: !1504)
!1549 = !DILocation(line: 0, scope: !1537)
!1550 = !DILocation(line: 0, scope: !1510)
!1551 = !DILocation(line: 0, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1288, file: !83, line: 418, column: 9)
!1553 = !DILocation(line: 0, scope: !1509)
!1554 = !DILocation(line: 700, column: 35, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1498, file: !83, line: 700, column: 25)
!1556 = !DILocation(line: 700, column: 30, scope: !1555)
!1557 = !DILocation(line: 700, column: 25, scope: !1498)
!1558 = !DILocation(line: 702, column: 21, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1560, file: !83, line: 702, column: 21)
!1560 = distinct !DILexicalBlock(scope: !1498, file: !83, line: 702, column: 21)
!1561 = !DILocation(line: 702, column: 21, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1563, file: !83, line: 702, column: 21)
!1563 = distinct !DILexicalBlock(scope: !1564, file: !83, line: 702, column: 21)
!1564 = distinct !DILexicalBlock(scope: !1559, file: !83, line: 702, column: 21)
!1565 = !DILocation(line: 702, column: 21, scope: !1563)
!1566 = !DILocation(line: 702, column: 21, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1568, file: !83, line: 702, column: 21)
!1568 = distinct !DILexicalBlock(scope: !1564, file: !83, line: 702, column: 21)
!1569 = !DILocation(line: 702, column: 21, scope: !1568)
!1570 = !DILocation(line: 702, column: 21, scope: !1564)
!1571 = !DILocation(line: 0, scope: !1546)
!1572 = !DILocation(line: 703, column: 21, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1502, file: !83, line: 703, column: 21)
!1574 = !DILocation(line: 703, column: 21, scope: !1502)
!1575 = !DILocation(line: 704, column: 25, scope: !1498)
!1576 = !DILocation(line: 686, column: 17, scope: !1499)
!1577 = distinct !{!1577, !1578, !1579}
!1578 = !DILocation(line: 686, column: 17, scope: !1500)
!1579 = !DILocation(line: 705, column: 19, scope: !1500)
!1580 = !DILocation(line: 0, scope: !1165)
!1581 = !DILocation(line: 416, column: 30, scope: !1288)
!1582 = !DILocation(line: 712, column: 34, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1163, file: !83, line: 712, column: 11)
!1584 = !DILocation(line: 714, column: 14, scope: !1583)
!1585 = !DILocation(line: 715, column: 14, scope: !1583)
!1586 = !DILocation(line: 715, column: 35, scope: !1583)
!1587 = !DILocation(line: 715, column: 17, scope: !1583)
!1588 = !DILocation(line: 715, column: 47, scope: !1583)
!1589 = !DILocation(line: 715, column: 65, scope: !1583)
!1590 = !DILocation(line: 716, column: 15, scope: !1583)
!1591 = !DILocation(line: 716, column: 11, scope: !1583)
!1592 = !DILocation(line: 712, column: 11, scope: !1163)
!1593 = !DILocation(line: 400, column: 10, scope: !1165)
!1594 = !DILocation(line: 0, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !1596, file: !83, line: 519, column: 13)
!1596 = distinct !DILexicalBlock(scope: !1172, file: !83, line: 518, column: 15)
!1597 = !DILocation(line: 720, column: 7, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1163, file: !83, line: 720, column: 7)
!1599 = !DILocation(line: 720, column: 7, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1598, file: !83, line: 720, column: 7)
!1601 = !DILocation(line: 720, column: 7, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1603, file: !83, line: 720, column: 7)
!1603 = distinct !DILexicalBlock(scope: !1604, file: !83, line: 720, column: 7)
!1604 = distinct !DILexicalBlock(scope: !1600, file: !83, line: 720, column: 7)
!1605 = !DILocation(line: 720, column: 7, scope: !1603)
!1606 = !DILocation(line: 720, column: 7, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1608, file: !83, line: 720, column: 7)
!1608 = distinct !DILexicalBlock(scope: !1604, file: !83, line: 720, column: 7)
!1609 = !DILocation(line: 720, column: 7, scope: !1608)
!1610 = !DILocation(line: 720, column: 7, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1612, file: !83, line: 720, column: 7)
!1612 = distinct !DILexicalBlock(scope: !1604, file: !83, line: 720, column: 7)
!1613 = !DILocation(line: 720, column: 7, scope: !1612)
!1614 = !DILocation(line: 720, column: 7, scope: !1604)
!1615 = !DILocation(line: 720, column: 7, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1617, file: !83, line: 720, column: 7)
!1617 = distinct !DILexicalBlock(scope: !1598, file: !83, line: 720, column: 7)
!1618 = !DILocation(line: 720, column: 7, scope: !1617)
!1619 = !DILocation(line: 723, column: 7, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1621, file: !83, line: 723, column: 7)
!1621 = distinct !DILexicalBlock(scope: !1163, file: !83, line: 723, column: 7)
!1622 = !DILocation(line: 424, column: 9, scope: !1163)
!1623 = !DILocation(line: 723, column: 7, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1625, file: !83, line: 723, column: 7)
!1625 = distinct !DILexicalBlock(scope: !1626, file: !83, line: 723, column: 7)
!1626 = distinct !DILexicalBlock(scope: !1620, file: !83, line: 723, column: 7)
!1627 = !DILocation(line: 723, column: 7, scope: !1625)
!1628 = !DILocation(line: 723, column: 7, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !1630, file: !83, line: 723, column: 7)
!1630 = distinct !DILexicalBlock(scope: !1626, file: !83, line: 723, column: 7)
!1631 = !DILocation(line: 723, column: 7, scope: !1630)
!1632 = !DILocation(line: 723, column: 7, scope: !1626)
!1633 = !DILocation(line: 724, column: 7, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !1635, file: !83, line: 724, column: 7)
!1635 = distinct !DILexicalBlock(scope: !1163, file: !83, line: 724, column: 7)
!1636 = !DILocation(line: 724, column: 7, scope: !1635)
!1637 = !DILocation(line: 726, column: 13, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1163, file: !83, line: 726, column: 11)
!1639 = !DILocation(line: 726, column: 11, scope: !1163)
!1640 = !DILocation(line: 728, column: 5, scope: !1164)
!1641 = !DILocation(line: 400, column: 75, scope: !1164)
!1642 = !DILocation(line: 400, column: 3, scope: !1164)
!1643 = distinct !{!1643, !1282, !1644}
!1644 = !DILocation(line: 728, column: 5, scope: !1165)
!1645 = !DILocation(line: 730, column: 11, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1136, file: !83, line: 730, column: 7)
!1647 = !DILocation(line: 730, column: 16, scope: !1646)
!1648 = !DILocation(line: 738, column: 51, scope: !1649)
!1649 = distinct !DILexicalBlock(scope: !1136, file: !83, line: 738, column: 7)
!1650 = !DILocation(line: 739, column: 10, scope: !1649)
!1651 = !DILocation(line: 741, column: 11, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1653, file: !83, line: 741, column: 11)
!1653 = distinct !DILexicalBlock(scope: !1649, file: !83, line: 740, column: 5)
!1654 = !DILocation(line: 741, column: 11, scope: !1653)
!1655 = !DILocation(line: 742, column: 16, scope: !1652)
!1656 = !DILocation(line: 742, column: 9, scope: !1652)
!1657 = !DILocation(line: 746, column: 18, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1652, file: !83, line: 746, column: 16)
!1659 = !DILocation(line: 746, column: 32, scope: !1658)
!1660 = !DILocation(line: 746, column: 29, scope: !1658)
!1661 = !DILocation(line: 755, column: 7, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1136, file: !83, line: 755, column: 7)
!1663 = !DILocation(line: 755, column: 20, scope: !1662)
!1664 = !DILocation(line: 756, column: 12, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1666, file: !83, line: 756, column: 5)
!1666 = distinct !DILexicalBlock(scope: !1662, file: !83, line: 756, column: 5)
!1667 = !DILocation(line: 756, column: 5, scope: !1666)
!1668 = !DILocation(line: 757, column: 7, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1670, file: !83, line: 757, column: 7)
!1670 = distinct !DILexicalBlock(scope: !1665, file: !83, line: 757, column: 7)
!1671 = !DILocation(line: 757, column: 7, scope: !1670)
!1672 = !DILocation(line: 756, column: 39, scope: !1665)
!1673 = distinct !{!1673, !1667, !1674}
!1674 = !DILocation(line: 757, column: 7, scope: !1666)
!1675 = !DILocation(line: 759, column: 11, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1136, file: !83, line: 759, column: 7)
!1677 = !DILocation(line: 759, column: 7, scope: !1136)
!1678 = !DILocation(line: 760, column: 5, scope: !1676)
!1679 = !DILocation(line: 760, column: 17, scope: !1676)
!1680 = !DILocation(line: 766, column: 21, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1136, file: !83, line: 766, column: 7)
!1682 = !DILocation(line: 766, column: 54, scope: !1681)
!1683 = !DILocation(line: 766, column: 51, scope: !1681)
!1684 = !DILocation(line: 770, column: 42, scope: !1136)
!1685 = !DILocation(line: 768, column: 10, scope: !1136)
!1686 = !DILocation(line: 768, column: 3, scope: !1136)
!1687 = !DILocation(line: 772, column: 1, scope: !1136)
!1688 = distinct !DISubprogram(name: "gettext_quote", scope: !83, file: !83, line: 207, type: !1689, isLocal: true, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !1691)
!1689 = !DISubroutineType(types: !1690)
!1690 = !{!6, !6, !40}
!1691 = !{!1692, !1693, !1694, !1695}
!1692 = !DILocalVariable(name: "msgid", arg: 1, scope: !1688, file: !83, line: 207, type: !6)
!1693 = !DILocalVariable(name: "s", arg: 2, scope: !1688, file: !83, line: 207, type: !40)
!1694 = !DILocalVariable(name: "translation", scope: !1688, file: !83, line: 209, type: !6)
!1695 = !DILocalVariable(name: "locale_code", scope: !1688, file: !83, line: 210, type: !6)
!1696 = !DILocation(line: 207, column: 28, scope: !1688)
!1697 = !DILocation(line: 207, column: 54, scope: !1688)
!1698 = !DILocation(line: 209, column: 29, scope: !1688)
!1699 = !DILocation(line: 209, column: 15, scope: !1688)
!1700 = !DILocation(line: 212, column: 19, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1688, file: !83, line: 212, column: 7)
!1702 = !DILocation(line: 212, column: 7, scope: !1688)
!1703 = !DILocation(line: 233, column: 17, scope: !1688)
!1704 = !DILocation(line: 210, column: 15, scope: !1688)
!1705 = !DILocalVariable(name: "s1", arg: 1, scope: !1706, file: !1707, line: 160, type: !6)
!1706 = distinct !DISubprogram(name: "strcaseeq0", scope: !1707, file: !1707, line: 160, type: !1708, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !1710)
!1707 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1708 = !DISubroutineType(types: !1709)
!1709 = !{!25, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8, !8}
!1710 = !{!1705, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720}
!1711 = !DILocalVariable(name: "s2", arg: 2, scope: !1706, file: !1707, line: 160, type: !6)
!1712 = !DILocalVariable(name: "s20", arg: 3, scope: !1706, file: !1707, line: 160, type: !8)
!1713 = !DILocalVariable(name: "s21", arg: 4, scope: !1706, file: !1707, line: 160, type: !8)
!1714 = !DILocalVariable(name: "s22", arg: 5, scope: !1706, file: !1707, line: 160, type: !8)
!1715 = !DILocalVariable(name: "s23", arg: 6, scope: !1706, file: !1707, line: 160, type: !8)
!1716 = !DILocalVariable(name: "s24", arg: 7, scope: !1706, file: !1707, line: 160, type: !8)
!1717 = !DILocalVariable(name: "s25", arg: 8, scope: !1706, file: !1707, line: 160, type: !8)
!1718 = !DILocalVariable(name: "s26", arg: 9, scope: !1706, file: !1707, line: 160, type: !8)
!1719 = !DILocalVariable(name: "s27", arg: 10, scope: !1706, file: !1707, line: 160, type: !8)
!1720 = !DILocalVariable(name: "s28", arg: 11, scope: !1706, file: !1707, line: 160, type: !8)
!1721 = !DILocation(line: 160, column: 25, scope: !1706, inlinedAt: !1722)
!1722 = distinct !DILocation(line: 234, column: 7, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1688, file: !83, line: 234, column: 7)
!1724 = !DILocation(line: 160, column: 41, scope: !1706, inlinedAt: !1722)
!1725 = !DILocation(line: 160, column: 50, scope: !1706, inlinedAt: !1722)
!1726 = !DILocation(line: 160, column: 60, scope: !1706, inlinedAt: !1722)
!1727 = !DILocation(line: 160, column: 70, scope: !1706, inlinedAt: !1722)
!1728 = !DILocation(line: 160, column: 80, scope: !1706, inlinedAt: !1722)
!1729 = !DILocation(line: 160, column: 90, scope: !1706, inlinedAt: !1722)
!1730 = !DILocation(line: 160, column: 100, scope: !1706, inlinedAt: !1722)
!1731 = !DILocation(line: 160, column: 110, scope: !1706, inlinedAt: !1722)
!1732 = !DILocation(line: 160, column: 120, scope: !1706, inlinedAt: !1722)
!1733 = !DILocation(line: 160, column: 130, scope: !1706, inlinedAt: !1722)
!1734 = !DILocation(line: 162, column: 7, scope: !1735, inlinedAt: !1722)
!1735 = distinct !DILexicalBlock(scope: !1706, file: !1707, line: 162, column: 7)
!1736 = !DILocalVariable(name: "s1", arg: 1, scope: !1737, file: !1707, line: 146, type: !6)
!1737 = distinct !DISubprogram(name: "strcaseeq1", scope: !1707, file: !1707, line: 146, type: !1738, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !1740)
!1738 = !DISubroutineType(types: !1739)
!1739 = !{!25, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8}
!1740 = !{!1736, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749}
!1741 = !DILocalVariable(name: "s2", arg: 2, scope: !1737, file: !1707, line: 146, type: !6)
!1742 = !DILocalVariable(name: "s21", arg: 3, scope: !1737, file: !1707, line: 146, type: !8)
!1743 = !DILocalVariable(name: "s22", arg: 4, scope: !1737, file: !1707, line: 146, type: !8)
!1744 = !DILocalVariable(name: "s23", arg: 5, scope: !1737, file: !1707, line: 146, type: !8)
!1745 = !DILocalVariable(name: "s24", arg: 6, scope: !1737, file: !1707, line: 146, type: !8)
!1746 = !DILocalVariable(name: "s25", arg: 7, scope: !1737, file: !1707, line: 146, type: !8)
!1747 = !DILocalVariable(name: "s26", arg: 8, scope: !1737, file: !1707, line: 146, type: !8)
!1748 = !DILocalVariable(name: "s27", arg: 9, scope: !1737, file: !1707, line: 146, type: !8)
!1749 = !DILocalVariable(name: "s28", arg: 10, scope: !1737, file: !1707, line: 146, type: !8)
!1750 = !DILocation(line: 146, column: 25, scope: !1737, inlinedAt: !1751)
!1751 = distinct !DILocation(line: 167, column: 16, scope: !1752, inlinedAt: !1722)
!1752 = distinct !DILexicalBlock(scope: !1753, file: !1707, line: 164, column: 11)
!1753 = distinct !DILexicalBlock(scope: !1735, file: !1707, line: 163, column: 5)
!1754 = !DILocation(line: 146, column: 41, scope: !1737, inlinedAt: !1751)
!1755 = !DILocation(line: 146, column: 50, scope: !1737, inlinedAt: !1751)
!1756 = !DILocation(line: 146, column: 60, scope: !1737, inlinedAt: !1751)
!1757 = !DILocation(line: 146, column: 70, scope: !1737, inlinedAt: !1751)
!1758 = !DILocation(line: 146, column: 80, scope: !1737, inlinedAt: !1751)
!1759 = !DILocation(line: 146, column: 90, scope: !1737, inlinedAt: !1751)
!1760 = !DILocation(line: 146, column: 100, scope: !1737, inlinedAt: !1751)
!1761 = !DILocation(line: 146, column: 110, scope: !1737, inlinedAt: !1751)
!1762 = !DILocation(line: 146, column: 120, scope: !1737, inlinedAt: !1751)
!1763 = !DILocation(line: 148, column: 7, scope: !1764, inlinedAt: !1751)
!1764 = distinct !DILexicalBlock(scope: !1737, file: !1707, line: 148, column: 7)
!1765 = !DILocalVariable(name: "s1", arg: 1, scope: !1766, file: !1707, line: 132, type: !6)
!1766 = distinct !DISubprogram(name: "strcaseeq2", scope: !1707, file: !1707, line: 132, type: !1767, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !1769)
!1767 = !DISubroutineType(types: !1768)
!1768 = !{!25, !6, !6, !8, !8, !8, !8, !8, !8, !8}
!1769 = !{!1765, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777}
!1770 = !DILocalVariable(name: "s2", arg: 2, scope: !1766, file: !1707, line: 132, type: !6)
!1771 = !DILocalVariable(name: "s22", arg: 3, scope: !1766, file: !1707, line: 132, type: !8)
!1772 = !DILocalVariable(name: "s23", arg: 4, scope: !1766, file: !1707, line: 132, type: !8)
!1773 = !DILocalVariable(name: "s24", arg: 5, scope: !1766, file: !1707, line: 132, type: !8)
!1774 = !DILocalVariable(name: "s25", arg: 6, scope: !1766, file: !1707, line: 132, type: !8)
!1775 = !DILocalVariable(name: "s26", arg: 7, scope: !1766, file: !1707, line: 132, type: !8)
!1776 = !DILocalVariable(name: "s27", arg: 8, scope: !1766, file: !1707, line: 132, type: !8)
!1777 = !DILocalVariable(name: "s28", arg: 9, scope: !1766, file: !1707, line: 132, type: !8)
!1778 = !DILocation(line: 132, column: 25, scope: !1766, inlinedAt: !1779)
!1779 = distinct !DILocation(line: 153, column: 16, scope: !1780, inlinedAt: !1751)
!1780 = distinct !DILexicalBlock(scope: !1781, file: !1707, line: 150, column: 11)
!1781 = distinct !DILexicalBlock(scope: !1764, file: !1707, line: 149, column: 5)
!1782 = !DILocation(line: 132, column: 41, scope: !1766, inlinedAt: !1779)
!1783 = !DILocation(line: 132, column: 50, scope: !1766, inlinedAt: !1779)
!1784 = !DILocation(line: 132, column: 60, scope: !1766, inlinedAt: !1779)
!1785 = !DILocation(line: 132, column: 70, scope: !1766, inlinedAt: !1779)
!1786 = !DILocation(line: 132, column: 80, scope: !1766, inlinedAt: !1779)
!1787 = !DILocation(line: 132, column: 90, scope: !1766, inlinedAt: !1779)
!1788 = !DILocation(line: 132, column: 100, scope: !1766, inlinedAt: !1779)
!1789 = !DILocation(line: 132, column: 110, scope: !1766, inlinedAt: !1779)
!1790 = !DILocation(line: 134, column: 7, scope: !1791, inlinedAt: !1779)
!1791 = distinct !DILexicalBlock(scope: !1766, file: !1707, line: 134, column: 7)
!1792 = !DILocalVariable(name: "s1", arg: 1, scope: !1793, file: !1707, line: 118, type: !6)
!1793 = distinct !DISubprogram(name: "strcaseeq3", scope: !1707, file: !1707, line: 118, type: !1794, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !1796)
!1794 = !DISubroutineType(types: !1795)
!1795 = !{!25, !6, !6, !8, !8, !8, !8, !8, !8}
!1796 = !{!1792, !1797, !1798, !1799, !1800, !1801, !1802, !1803}
!1797 = !DILocalVariable(name: "s2", arg: 2, scope: !1793, file: !1707, line: 118, type: !6)
!1798 = !DILocalVariable(name: "s23", arg: 3, scope: !1793, file: !1707, line: 118, type: !8)
!1799 = !DILocalVariable(name: "s24", arg: 4, scope: !1793, file: !1707, line: 118, type: !8)
!1800 = !DILocalVariable(name: "s25", arg: 5, scope: !1793, file: !1707, line: 118, type: !8)
!1801 = !DILocalVariable(name: "s26", arg: 6, scope: !1793, file: !1707, line: 118, type: !8)
!1802 = !DILocalVariable(name: "s27", arg: 7, scope: !1793, file: !1707, line: 118, type: !8)
!1803 = !DILocalVariable(name: "s28", arg: 8, scope: !1793, file: !1707, line: 118, type: !8)
!1804 = !DILocation(line: 118, column: 25, scope: !1793, inlinedAt: !1805)
!1805 = distinct !DILocation(line: 139, column: 16, scope: !1806, inlinedAt: !1779)
!1806 = distinct !DILexicalBlock(scope: !1807, file: !1707, line: 136, column: 11)
!1807 = distinct !DILexicalBlock(scope: !1791, file: !1707, line: 135, column: 5)
!1808 = !DILocation(line: 118, column: 41, scope: !1793, inlinedAt: !1805)
!1809 = !DILocation(line: 118, column: 50, scope: !1793, inlinedAt: !1805)
!1810 = !DILocation(line: 118, column: 60, scope: !1793, inlinedAt: !1805)
!1811 = !DILocation(line: 118, column: 70, scope: !1793, inlinedAt: !1805)
!1812 = !DILocation(line: 118, column: 80, scope: !1793, inlinedAt: !1805)
!1813 = !DILocation(line: 118, column: 90, scope: !1793, inlinedAt: !1805)
!1814 = !DILocation(line: 118, column: 100, scope: !1793, inlinedAt: !1805)
!1815 = !DILocation(line: 120, column: 7, scope: !1816, inlinedAt: !1805)
!1816 = distinct !DILexicalBlock(scope: !1793, file: !1707, line: 120, column: 7)
!1817 = !DILocation(line: 120, column: 7, scope: !1793, inlinedAt: !1805)
!1818 = !DILocalVariable(name: "s1", arg: 1, scope: !1819, file: !1707, line: 104, type: !6)
!1819 = distinct !DISubprogram(name: "strcaseeq4", scope: !1707, file: !1707, line: 104, type: !1820, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !1822)
!1820 = !DISubroutineType(types: !1821)
!1821 = !{!25, !6, !6, !8, !8, !8, !8, !8}
!1822 = !{!1818, !1823, !1824, !1825, !1826, !1827, !1828}
!1823 = !DILocalVariable(name: "s2", arg: 2, scope: !1819, file: !1707, line: 104, type: !6)
!1824 = !DILocalVariable(name: "s24", arg: 3, scope: !1819, file: !1707, line: 104, type: !8)
!1825 = !DILocalVariable(name: "s25", arg: 4, scope: !1819, file: !1707, line: 104, type: !8)
!1826 = !DILocalVariable(name: "s26", arg: 5, scope: !1819, file: !1707, line: 104, type: !8)
!1827 = !DILocalVariable(name: "s27", arg: 6, scope: !1819, file: !1707, line: 104, type: !8)
!1828 = !DILocalVariable(name: "s28", arg: 7, scope: !1819, file: !1707, line: 104, type: !8)
!1829 = !DILocation(line: 104, column: 25, scope: !1819, inlinedAt: !1830)
!1830 = distinct !DILocation(line: 125, column: 16, scope: !1831, inlinedAt: !1805)
!1831 = distinct !DILexicalBlock(scope: !1832, file: !1707, line: 122, column: 11)
!1832 = distinct !DILexicalBlock(scope: !1816, file: !1707, line: 121, column: 5)
!1833 = !DILocation(line: 104, column: 41, scope: !1819, inlinedAt: !1830)
!1834 = !DILocation(line: 104, column: 50, scope: !1819, inlinedAt: !1830)
!1835 = !DILocation(line: 104, column: 60, scope: !1819, inlinedAt: !1830)
!1836 = !DILocation(line: 104, column: 70, scope: !1819, inlinedAt: !1830)
!1837 = !DILocation(line: 104, column: 80, scope: !1819, inlinedAt: !1830)
!1838 = !DILocation(line: 104, column: 90, scope: !1819, inlinedAt: !1830)
!1839 = !DILocation(line: 106, column: 7, scope: !1840, inlinedAt: !1830)
!1840 = distinct !DILexicalBlock(scope: !1819, file: !1707, line: 106, column: 7)
!1841 = !DILocation(line: 106, column: 7, scope: !1819, inlinedAt: !1830)
!1842 = !DILocalVariable(name: "s1", arg: 1, scope: !1843, file: !1707, line: 90, type: !6)
!1843 = distinct !DISubprogram(name: "strcaseeq5", scope: !1707, file: !1707, line: 90, type: !1844, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !1846)
!1844 = !DISubroutineType(types: !1845)
!1845 = !{!25, !6, !6, !8, !8, !8, !8}
!1846 = !{!1842, !1847, !1848, !1849, !1850, !1851}
!1847 = !DILocalVariable(name: "s2", arg: 2, scope: !1843, file: !1707, line: 90, type: !6)
!1848 = !DILocalVariable(name: "s25", arg: 3, scope: !1843, file: !1707, line: 90, type: !8)
!1849 = !DILocalVariable(name: "s26", arg: 4, scope: !1843, file: !1707, line: 90, type: !8)
!1850 = !DILocalVariable(name: "s27", arg: 5, scope: !1843, file: !1707, line: 90, type: !8)
!1851 = !DILocalVariable(name: "s28", arg: 6, scope: !1843, file: !1707, line: 90, type: !8)
!1852 = !DILocation(line: 90, column: 25, scope: !1843, inlinedAt: !1853)
!1853 = distinct !DILocation(line: 111, column: 16, scope: !1854, inlinedAt: !1830)
!1854 = distinct !DILexicalBlock(scope: !1855, file: !1707, line: 108, column: 11)
!1855 = distinct !DILexicalBlock(scope: !1840, file: !1707, line: 107, column: 5)
!1856 = !DILocation(line: 90, column: 41, scope: !1843, inlinedAt: !1853)
!1857 = !DILocation(line: 90, column: 50, scope: !1843, inlinedAt: !1853)
!1858 = !DILocation(line: 90, column: 60, scope: !1843, inlinedAt: !1853)
!1859 = !DILocation(line: 90, column: 70, scope: !1843, inlinedAt: !1853)
!1860 = !DILocation(line: 90, column: 80, scope: !1843, inlinedAt: !1853)
!1861 = !DILocation(line: 92, column: 7, scope: !1862, inlinedAt: !1853)
!1862 = distinct !DILexicalBlock(scope: !1843, file: !1707, line: 92, column: 7)
!1863 = !DILocation(line: 92, column: 7, scope: !1843, inlinedAt: !1853)
!1864 = !DILocation(line: 235, column: 12, scope: !1723)
!1865 = !DILocation(line: 235, column: 21, scope: !1723)
!1866 = !DILocation(line: 235, column: 5, scope: !1723)
!1867 = !DILocation(line: 146, column: 25, scope: !1737, inlinedAt: !1868)
!1868 = distinct !DILocation(line: 167, column: 16, scope: !1752, inlinedAt: !1869)
!1869 = distinct !DILocation(line: 236, column: 7, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !1688, file: !83, line: 236, column: 7)
!1871 = !DILocation(line: 146, column: 41, scope: !1737, inlinedAt: !1868)
!1872 = !DILocation(line: 146, column: 50, scope: !1737, inlinedAt: !1868)
!1873 = !DILocation(line: 146, column: 60, scope: !1737, inlinedAt: !1868)
!1874 = !DILocation(line: 146, column: 70, scope: !1737, inlinedAt: !1868)
!1875 = !DILocation(line: 146, column: 80, scope: !1737, inlinedAt: !1868)
!1876 = !DILocation(line: 146, column: 90, scope: !1737, inlinedAt: !1868)
!1877 = !DILocation(line: 146, column: 100, scope: !1737, inlinedAt: !1868)
!1878 = !DILocation(line: 146, column: 110, scope: !1737, inlinedAt: !1868)
!1879 = !DILocation(line: 146, column: 120, scope: !1737, inlinedAt: !1868)
!1880 = !DILocation(line: 148, column: 7, scope: !1764, inlinedAt: !1868)
!1881 = !DILocation(line: 132, column: 25, scope: !1766, inlinedAt: !1882)
!1882 = distinct !DILocation(line: 153, column: 16, scope: !1780, inlinedAt: !1868)
!1883 = !DILocation(line: 132, column: 41, scope: !1766, inlinedAt: !1882)
!1884 = !DILocation(line: 132, column: 50, scope: !1766, inlinedAt: !1882)
!1885 = !DILocation(line: 132, column: 60, scope: !1766, inlinedAt: !1882)
!1886 = !DILocation(line: 132, column: 70, scope: !1766, inlinedAt: !1882)
!1887 = !DILocation(line: 132, column: 80, scope: !1766, inlinedAt: !1882)
!1888 = !DILocation(line: 132, column: 90, scope: !1766, inlinedAt: !1882)
!1889 = !DILocation(line: 132, column: 100, scope: !1766, inlinedAt: !1882)
!1890 = !DILocation(line: 132, column: 110, scope: !1766, inlinedAt: !1882)
!1891 = !DILocation(line: 134, column: 7, scope: !1791, inlinedAt: !1882)
!1892 = !DILocation(line: 134, column: 7, scope: !1766, inlinedAt: !1882)
!1893 = !DILocation(line: 118, column: 25, scope: !1793, inlinedAt: !1894)
!1894 = distinct !DILocation(line: 139, column: 16, scope: !1806, inlinedAt: !1882)
!1895 = !DILocation(line: 118, column: 41, scope: !1793, inlinedAt: !1894)
!1896 = !DILocation(line: 118, column: 50, scope: !1793, inlinedAt: !1894)
!1897 = !DILocation(line: 118, column: 60, scope: !1793, inlinedAt: !1894)
!1898 = !DILocation(line: 118, column: 70, scope: !1793, inlinedAt: !1894)
!1899 = !DILocation(line: 118, column: 80, scope: !1793, inlinedAt: !1894)
!1900 = !DILocation(line: 118, column: 90, scope: !1793, inlinedAt: !1894)
!1901 = !DILocation(line: 118, column: 100, scope: !1793, inlinedAt: !1894)
!1902 = !DILocation(line: 120, column: 7, scope: !1816, inlinedAt: !1894)
!1903 = !DILocation(line: 120, column: 7, scope: !1793, inlinedAt: !1894)
!1904 = !DILocation(line: 104, column: 25, scope: !1819, inlinedAt: !1905)
!1905 = distinct !DILocation(line: 125, column: 16, scope: !1831, inlinedAt: !1894)
!1906 = !DILocation(line: 104, column: 41, scope: !1819, inlinedAt: !1905)
!1907 = !DILocation(line: 104, column: 50, scope: !1819, inlinedAt: !1905)
!1908 = !DILocation(line: 104, column: 60, scope: !1819, inlinedAt: !1905)
!1909 = !DILocation(line: 104, column: 70, scope: !1819, inlinedAt: !1905)
!1910 = !DILocation(line: 104, column: 80, scope: !1819, inlinedAt: !1905)
!1911 = !DILocation(line: 104, column: 90, scope: !1819, inlinedAt: !1905)
!1912 = !DILocation(line: 106, column: 7, scope: !1840, inlinedAt: !1905)
!1913 = !DILocation(line: 106, column: 7, scope: !1819, inlinedAt: !1905)
!1914 = !DILocation(line: 90, column: 25, scope: !1843, inlinedAt: !1915)
!1915 = distinct !DILocation(line: 111, column: 16, scope: !1854, inlinedAt: !1905)
!1916 = !DILocation(line: 90, column: 41, scope: !1843, inlinedAt: !1915)
!1917 = !DILocation(line: 90, column: 50, scope: !1843, inlinedAt: !1915)
!1918 = !DILocation(line: 90, column: 60, scope: !1843, inlinedAt: !1915)
!1919 = !DILocation(line: 90, column: 70, scope: !1843, inlinedAt: !1915)
!1920 = !DILocation(line: 90, column: 80, scope: !1843, inlinedAt: !1915)
!1921 = !DILocation(line: 92, column: 7, scope: !1862, inlinedAt: !1915)
!1922 = !DILocation(line: 92, column: 7, scope: !1843, inlinedAt: !1915)
!1923 = !DILocalVariable(name: "s1", arg: 1, scope: !1924, file: !1707, line: 76, type: !6)
!1924 = distinct !DISubprogram(name: "strcaseeq6", scope: !1707, file: !1707, line: 76, type: !1925, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !1927)
!1925 = !DISubroutineType(types: !1926)
!1926 = !{!25, !6, !6, !8, !8, !8}
!1927 = !{!1923, !1928, !1929, !1930, !1931}
!1928 = !DILocalVariable(name: "s2", arg: 2, scope: !1924, file: !1707, line: 76, type: !6)
!1929 = !DILocalVariable(name: "s26", arg: 3, scope: !1924, file: !1707, line: 76, type: !8)
!1930 = !DILocalVariable(name: "s27", arg: 4, scope: !1924, file: !1707, line: 76, type: !8)
!1931 = !DILocalVariable(name: "s28", arg: 5, scope: !1924, file: !1707, line: 76, type: !8)
!1932 = !DILocation(line: 76, column: 25, scope: !1924, inlinedAt: !1933)
!1933 = distinct !DILocation(line: 97, column: 16, scope: !1934, inlinedAt: !1915)
!1934 = distinct !DILexicalBlock(scope: !1935, file: !1707, line: 94, column: 11)
!1935 = distinct !DILexicalBlock(scope: !1862, file: !1707, line: 93, column: 5)
!1936 = !DILocation(line: 76, column: 41, scope: !1924, inlinedAt: !1933)
!1937 = !DILocation(line: 76, column: 50, scope: !1924, inlinedAt: !1933)
!1938 = !DILocation(line: 76, column: 60, scope: !1924, inlinedAt: !1933)
!1939 = !DILocation(line: 76, column: 70, scope: !1924, inlinedAt: !1933)
!1940 = !DILocation(line: 78, column: 7, scope: !1941, inlinedAt: !1933)
!1941 = distinct !DILexicalBlock(scope: !1924, file: !1707, line: 78, column: 7)
!1942 = !DILocation(line: 78, column: 7, scope: !1924, inlinedAt: !1933)
!1943 = !DILocalVariable(name: "s1", arg: 1, scope: !1944, file: !1707, line: 62, type: !6)
!1944 = distinct !DISubprogram(name: "strcaseeq7", scope: !1707, file: !1707, line: 62, type: !1945, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !1947)
!1945 = !DISubroutineType(types: !1946)
!1946 = !{!25, !6, !6, !8, !8}
!1947 = !{!1943, !1948, !1949, !1950}
!1948 = !DILocalVariable(name: "s2", arg: 2, scope: !1944, file: !1707, line: 62, type: !6)
!1949 = !DILocalVariable(name: "s27", arg: 3, scope: !1944, file: !1707, line: 62, type: !8)
!1950 = !DILocalVariable(name: "s28", arg: 4, scope: !1944, file: !1707, line: 62, type: !8)
!1951 = !DILocation(line: 62, column: 25, scope: !1944, inlinedAt: !1952)
!1952 = distinct !DILocation(line: 83, column: 16, scope: !1953, inlinedAt: !1933)
!1953 = distinct !DILexicalBlock(scope: !1954, file: !1707, line: 80, column: 11)
!1954 = distinct !DILexicalBlock(scope: !1941, file: !1707, line: 79, column: 5)
!1955 = !DILocation(line: 62, column: 41, scope: !1944, inlinedAt: !1952)
!1956 = !DILocation(line: 62, column: 50, scope: !1944, inlinedAt: !1952)
!1957 = !DILocation(line: 62, column: 60, scope: !1944, inlinedAt: !1952)
!1958 = !DILocation(line: 64, column: 7, scope: !1959, inlinedAt: !1952)
!1959 = distinct !DILexicalBlock(scope: !1944, file: !1707, line: 64, column: 7)
!1960 = !DILocation(line: 236, column: 7, scope: !1688)
!1961 = !DILocation(line: 237, column: 12, scope: !1870)
!1962 = !DILocation(line: 237, column: 21, scope: !1870)
!1963 = !DILocation(line: 237, column: 5, scope: !1870)
!1964 = !DILocation(line: 239, column: 13, scope: !1688)
!1965 = !DILocation(line: 239, column: 11, scope: !1688)
!1966 = !DILocation(line: 239, column: 3, scope: !1688)
!1967 = !DILocation(line: 0, scope: !1688)
!1968 = !DILocation(line: 240, column: 1, scope: !1688)
!1969 = distinct !DISubprogram(name: "quotearg_alloc", scope: !83, file: !83, line: 799, type: !1970, isLocal: false, isDefinition: true, scopeLine: 801, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !1972)
!1970 = !DISubroutineType(types: !1971)
!1971 = !{!32, !6, !77, !1009}
!1972 = !{!1973, !1974, !1975}
!1973 = !DILocalVariable(name: "arg", arg: 1, scope: !1969, file: !83, line: 799, type: !6)
!1974 = !DILocalVariable(name: "argsize", arg: 2, scope: !1969, file: !83, line: 799, type: !77)
!1975 = !DILocalVariable(name: "o", arg: 3, scope: !1969, file: !83, line: 800, type: !1009)
!1976 = !DILocation(line: 799, column: 29, scope: !1969)
!1977 = !DILocation(line: 799, column: 41, scope: !1969)
!1978 = !DILocation(line: 800, column: 47, scope: !1969)
!1979 = !DILocalVariable(name: "arg", arg: 1, scope: !1980, file: !83, line: 812, type: !6)
!1980 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !83, file: !83, line: 812, type: !1981, isLocal: false, isDefinition: true, scopeLine: 814, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !1983)
!1981 = !DISubroutineType(types: !1982)
!1982 = !{!32, !6, !77, !155, !1009}
!1983 = !{!1979, !1984, !1985, !1986, !1987, !1988, !1989, !1990, !1991}
!1984 = !DILocalVariable(name: "argsize", arg: 2, scope: !1980, file: !83, line: 812, type: !77)
!1985 = !DILocalVariable(name: "size", arg: 3, scope: !1980, file: !83, line: 812, type: !155)
!1986 = !DILocalVariable(name: "o", arg: 4, scope: !1980, file: !83, line: 813, type: !1009)
!1987 = !DILocalVariable(name: "p", scope: !1980, file: !83, line: 815, type: !1009)
!1988 = !DILocalVariable(name: "e", scope: !1980, file: !83, line: 816, type: !25)
!1989 = !DILocalVariable(name: "flags", scope: !1980, file: !83, line: 818, type: !25)
!1990 = !DILocalVariable(name: "bufsize", scope: !1980, file: !83, line: 819, type: !77)
!1991 = !DILocalVariable(name: "buf", scope: !1980, file: !83, line: 823, type: !32)
!1992 = !DILocation(line: 812, column: 33, scope: !1980, inlinedAt: !1993)
!1993 = distinct !DILocation(line: 802, column: 10, scope: !1969)
!1994 = !DILocation(line: 812, column: 45, scope: !1980, inlinedAt: !1993)
!1995 = !DILocation(line: 812, column: 62, scope: !1980, inlinedAt: !1993)
!1996 = !DILocation(line: 813, column: 51, scope: !1980, inlinedAt: !1993)
!1997 = !DILocation(line: 815, column: 37, scope: !1980, inlinedAt: !1993)
!1998 = !DILocation(line: 815, column: 33, scope: !1980, inlinedAt: !1993)
!1999 = !DILocation(line: 816, column: 11, scope: !1980, inlinedAt: !1993)
!2000 = !DILocation(line: 816, column: 7, scope: !1980, inlinedAt: !1993)
!2001 = !DILocation(line: 818, column: 18, scope: !1980, inlinedAt: !1993)
!2002 = !DILocation(line: 818, column: 24, scope: !1980, inlinedAt: !1993)
!2003 = !DILocation(line: 818, column: 7, scope: !1980, inlinedAt: !1993)
!2004 = !DILocation(line: 819, column: 69, scope: !1980, inlinedAt: !1993)
!2005 = !DILocation(line: 820, column: 53, scope: !1980, inlinedAt: !1993)
!2006 = !DILocation(line: 821, column: 49, scope: !1980, inlinedAt: !1993)
!2007 = !DILocation(line: 822, column: 49, scope: !1980, inlinedAt: !1993)
!2008 = !DILocation(line: 819, column: 20, scope: !1980, inlinedAt: !1993)
!2009 = !DILocation(line: 822, column: 62, scope: !1980, inlinedAt: !1993)
!2010 = !DILocation(line: 819, column: 10, scope: !1980, inlinedAt: !1993)
!2011 = !DILocalVariable(name: "n", arg: 1, scope: !2012, file: !151, line: 216, type: !77)
!2012 = distinct !DISubprogram(name: "xcharalloc", scope: !151, file: !151, line: 216, type: !2013, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !2015)
!2013 = !DISubroutineType(types: !2014)
!2014 = !{!32, !77}
!2015 = !{!2011}
!2016 = !DILocation(line: 216, column: 20, scope: !2012, inlinedAt: !2017)
!2017 = distinct !DILocation(line: 823, column: 15, scope: !1980, inlinedAt: !1993)
!2018 = !DILocation(line: 218, column: 10, scope: !2012, inlinedAt: !2017)
!2019 = !DILocation(line: 823, column: 9, scope: !1980, inlinedAt: !1993)
!2020 = !DILocation(line: 824, column: 60, scope: !1980, inlinedAt: !1993)
!2021 = !DILocation(line: 826, column: 32, scope: !1980, inlinedAt: !1993)
!2022 = !DILocation(line: 826, column: 47, scope: !1980, inlinedAt: !1993)
!2023 = !DILocation(line: 824, column: 3, scope: !1980, inlinedAt: !1993)
!2024 = !DILocation(line: 827, column: 9, scope: !1980, inlinedAt: !1993)
!2025 = !DILocation(line: 802, column: 3, scope: !1969)
!2026 = !DILocation(line: 812, column: 33, scope: !1980)
!2027 = !DILocation(line: 812, column: 45, scope: !1980)
!2028 = !DILocation(line: 812, column: 62, scope: !1980)
!2029 = !DILocation(line: 813, column: 51, scope: !1980)
!2030 = !DILocation(line: 815, column: 37, scope: !1980)
!2031 = !DILocation(line: 815, column: 33, scope: !1980)
!2032 = !DILocation(line: 816, column: 11, scope: !1980)
!2033 = !DILocation(line: 816, column: 7, scope: !1980)
!2034 = !DILocation(line: 818, column: 18, scope: !1980)
!2035 = !DILocation(line: 818, column: 27, scope: !1980)
!2036 = !DILocation(line: 818, column: 24, scope: !1980)
!2037 = !DILocation(line: 818, column: 7, scope: !1980)
!2038 = !DILocation(line: 819, column: 69, scope: !1980)
!2039 = !DILocation(line: 820, column: 53, scope: !1980)
!2040 = !DILocation(line: 821, column: 49, scope: !1980)
!2041 = !DILocation(line: 822, column: 49, scope: !1980)
!2042 = !DILocation(line: 819, column: 20, scope: !1980)
!2043 = !DILocation(line: 822, column: 62, scope: !1980)
!2044 = !DILocation(line: 819, column: 10, scope: !1980)
!2045 = !DILocation(line: 216, column: 20, scope: !2012, inlinedAt: !2046)
!2046 = distinct !DILocation(line: 823, column: 15, scope: !1980)
!2047 = !DILocation(line: 218, column: 10, scope: !2012, inlinedAt: !2046)
!2048 = !DILocation(line: 823, column: 9, scope: !1980)
!2049 = !DILocation(line: 824, column: 60, scope: !1980)
!2050 = !DILocation(line: 826, column: 32, scope: !1980)
!2051 = !DILocation(line: 826, column: 47, scope: !1980)
!2052 = !DILocation(line: 824, column: 3, scope: !1980)
!2053 = !DILocation(line: 827, column: 9, scope: !1980)
!2054 = !DILocation(line: 828, column: 7, scope: !1980)
!2055 = !DILocation(line: 829, column: 11, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !1980, file: !83, line: 828, column: 7)
!2057 = !{!862, !862, i64 0}
!2058 = !DILocation(line: 829, column: 5, scope: !2056)
!2059 = !DILocation(line: 830, column: 3, scope: !1980)
!2060 = distinct !DISubprogram(name: "quotearg_free", scope: !83, file: !83, line: 848, type: !915, isLocal: false, isDefinition: true, scopeLine: 849, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !2061)
!2061 = !{!2062, !2063}
!2062 = !DILocalVariable(name: "sv", scope: !2060, file: !83, line: 850, type: !109)
!2063 = !DILocalVariable(name: "i", scope: !2060, file: !83, line: 851, type: !25)
!2064 = !DILocation(line: 850, column: 24, scope: !2060)
!2065 = !DILocation(line: 850, column: 19, scope: !2060)
!2066 = !DILocation(line: 851, column: 7, scope: !2060)
!2067 = !DILocation(line: 852, column: 19, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !2069, file: !83, line: 852, column: 3)
!2069 = distinct !DILexicalBlock(scope: !2060, file: !83, line: 852, column: 3)
!2070 = !DILocation(line: 852, column: 17, scope: !2068)
!2071 = !DILocation(line: 852, column: 3, scope: !2069)
!2072 = !DILocation(line: 853, column: 17, scope: !2068)
!2073 = !{!2074, !610, i64 8}
!2074 = !{!"slotvec", !862, i64 0, !610, i64 8}
!2075 = !DILocation(line: 853, column: 5, scope: !2068)
!2076 = !DILocation(line: 852, column: 28, scope: !2068)
!2077 = distinct !{!2077, !2071, !2078}
!2078 = !DILocation(line: 853, column: 20, scope: !2069)
!2079 = !DILocation(line: 854, column: 13, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !2060, file: !83, line: 854, column: 7)
!2081 = !DILocation(line: 854, column: 17, scope: !2080)
!2082 = !DILocation(line: 854, column: 7, scope: !2060)
!2083 = !DILocation(line: 856, column: 7, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !2080, file: !83, line: 855, column: 5)
!2085 = !DILocation(line: 857, column: 21, scope: !2084)
!2086 = !{!2074, !862, i64 0}
!2087 = !DILocation(line: 858, column: 20, scope: !2084)
!2088 = !DILocation(line: 859, column: 5, scope: !2084)
!2089 = !DILocation(line: 860, column: 10, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !2060, file: !83, line: 860, column: 7)
!2091 = !DILocation(line: 860, column: 7, scope: !2060)
!2092 = !DILocation(line: 862, column: 13, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !2090, file: !83, line: 861, column: 5)
!2094 = !DILocation(line: 862, column: 7, scope: !2093)
!2095 = !DILocation(line: 863, column: 15, scope: !2093)
!2096 = !DILocation(line: 864, column: 5, scope: !2093)
!2097 = !DILocation(line: 865, column: 10, scope: !2060)
!2098 = !DILocation(line: 866, column: 1, scope: !2060)
!2099 = distinct !DISubprogram(name: "quotearg_n", scope: !83, file: !83, line: 931, type: !2100, isLocal: false, isDefinition: true, scopeLine: 932, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !2102)
!2100 = !DISubroutineType(types: !2101)
!2101 = !{!32, !25, !6}
!2102 = !{!2103, !2104}
!2103 = !DILocalVariable(name: "n", arg: 1, scope: !2099, file: !83, line: 931, type: !25)
!2104 = !DILocalVariable(name: "arg", arg: 2, scope: !2099, file: !83, line: 931, type: !6)
!2105 = !DILocation(line: 931, column: 17, scope: !2099)
!2106 = !DILocation(line: 931, column: 32, scope: !2099)
!2107 = !DILocation(line: 933, column: 10, scope: !2099)
!2108 = !DILocation(line: 933, column: 3, scope: !2099)
!2109 = distinct !DISubprogram(name: "quotearg_n_options", scope: !83, file: !83, line: 877, type: !2110, isLocal: true, isDefinition: true, scopeLine: 879, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !2112)
!2110 = !DISubroutineType(types: !2111)
!2111 = !{!32, !25, !6, !77, !1009}
!2112 = !{!2113, !2114, !2115, !2116, !2117, !2118, !2119, !2122, !2123, !2125, !2126, !2127}
!2113 = !DILocalVariable(name: "n", arg: 1, scope: !2109, file: !83, line: 877, type: !25)
!2114 = !DILocalVariable(name: "arg", arg: 2, scope: !2109, file: !83, line: 877, type: !6)
!2115 = !DILocalVariable(name: "argsize", arg: 3, scope: !2109, file: !83, line: 877, type: !77)
!2116 = !DILocalVariable(name: "options", arg: 4, scope: !2109, file: !83, line: 878, type: !1009)
!2117 = !DILocalVariable(name: "e", scope: !2109, file: !83, line: 880, type: !25)
!2118 = !DILocalVariable(name: "sv", scope: !2109, file: !83, line: 882, type: !109)
!2119 = !DILocalVariable(name: "preallocated", scope: !2120, file: !83, line: 889, type: !17)
!2120 = distinct !DILexicalBlock(scope: !2121, file: !83, line: 888, column: 5)
!2121 = distinct !DILexicalBlock(scope: !2109, file: !83, line: 887, column: 7)
!2122 = !DILocalVariable(name: "nmax", scope: !2120, file: !83, line: 890, type: !25)
!2123 = !DILocalVariable(name: "size", scope: !2124, file: !83, line: 903, type: !77)
!2124 = distinct !DILexicalBlock(scope: !2109, file: !83, line: 902, column: 3)
!2125 = !DILocalVariable(name: "val", scope: !2124, file: !83, line: 904, type: !32)
!2126 = !DILocalVariable(name: "flags", scope: !2124, file: !83, line: 906, type: !25)
!2127 = !DILocalVariable(name: "qsize", scope: !2124, file: !83, line: 907, type: !77)
!2128 = !DILocation(line: 877, column: 25, scope: !2109)
!2129 = !DILocation(line: 877, column: 40, scope: !2109)
!2130 = !DILocation(line: 877, column: 52, scope: !2109)
!2131 = !DILocation(line: 878, column: 51, scope: !2109)
!2132 = !DILocation(line: 880, column: 11, scope: !2109)
!2133 = !DILocation(line: 880, column: 7, scope: !2109)
!2134 = !DILocation(line: 882, column: 24, scope: !2109)
!2135 = !DILocation(line: 882, column: 19, scope: !2109)
!2136 = !DILocation(line: 884, column: 9, scope: !2137)
!2137 = distinct !DILexicalBlock(scope: !2109, file: !83, line: 884, column: 7)
!2138 = !DILocation(line: 884, column: 7, scope: !2109)
!2139 = !DILocation(line: 885, column: 5, scope: !2137)
!2140 = !DILocation(line: 887, column: 7, scope: !2121)
!2141 = !DILocation(line: 887, column: 14, scope: !2121)
!2142 = !DILocation(line: 887, column: 7, scope: !2109)
!2143 = !DILocation(line: 889, column: 31, scope: !2120)
!2144 = !DILocation(line: 890, column: 11, scope: !2120)
!2145 = !DILocation(line: 892, column: 16, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !2120, file: !83, line: 892, column: 11)
!2147 = !DILocation(line: 892, column: 11, scope: !2120)
!2148 = !DILocation(line: 893, column: 9, scope: !2146)
!2149 = !DILocation(line: 895, column: 32, scope: !2120)
!2150 = !DILocation(line: 895, column: 61, scope: !2120)
!2151 = !DILocation(line: 895, column: 58, scope: !2120)
!2152 = !DILocation(line: 895, column: 66, scope: !2120)
!2153 = !DILocation(line: 895, column: 22, scope: !2120)
!2154 = !DILocation(line: 895, column: 15, scope: !2120)
!2155 = !DILocation(line: 896, column: 11, scope: !2120)
!2156 = !DILocation(line: 897, column: 15, scope: !2157)
!2157 = distinct !DILexicalBlock(scope: !2120, file: !83, line: 896, column: 11)
!2158 = !{i64 0, i64 8, !2057, i64 8, i64 8, !609}
!2159 = !DILocation(line: 897, column: 9, scope: !2157)
!2160 = !DILocation(line: 898, column: 20, scope: !2120)
!2161 = !DILocation(line: 898, column: 18, scope: !2120)
!2162 = !DILocation(line: 898, column: 7, scope: !2120)
!2163 = !DILocation(line: 898, column: 38, scope: !2120)
!2164 = !DILocation(line: 898, column: 31, scope: !2120)
!2165 = !DILocation(line: 898, column: 48, scope: !2120)
!2166 = !DILocation(line: 899, column: 14, scope: !2120)
!2167 = !DILocation(line: 900, column: 5, scope: !2120)
!2168 = !DILocation(line: 0, scope: !2109)
!2169 = !DILocation(line: 903, column: 19, scope: !2124)
!2170 = !DILocation(line: 903, column: 25, scope: !2124)
!2171 = !DILocation(line: 903, column: 12, scope: !2124)
!2172 = !DILocation(line: 904, column: 23, scope: !2124)
!2173 = !DILocation(line: 904, column: 11, scope: !2124)
!2174 = !DILocation(line: 906, column: 26, scope: !2124)
!2175 = !DILocation(line: 906, column: 32, scope: !2124)
!2176 = !DILocation(line: 906, column: 9, scope: !2124)
!2177 = !DILocation(line: 908, column: 55, scope: !2124)
!2178 = !DILocation(line: 909, column: 46, scope: !2124)
!2179 = !DILocation(line: 910, column: 55, scope: !2124)
!2180 = !DILocation(line: 911, column: 55, scope: !2124)
!2181 = !DILocation(line: 907, column: 20, scope: !2124)
!2182 = !DILocation(line: 907, column: 12, scope: !2124)
!2183 = !DILocation(line: 913, column: 14, scope: !2184)
!2184 = distinct !DILexicalBlock(scope: !2124, file: !83, line: 913, column: 9)
!2185 = !DILocation(line: 913, column: 9, scope: !2124)
!2186 = !DILocation(line: 915, column: 35, scope: !2187)
!2187 = distinct !DILexicalBlock(scope: !2184, file: !83, line: 914, column: 7)
!2188 = !DILocation(line: 915, column: 20, scope: !2187)
!2189 = !DILocation(line: 916, column: 17, scope: !2190)
!2190 = distinct !DILexicalBlock(scope: !2187, file: !83, line: 916, column: 13)
!2191 = !DILocation(line: 916, column: 13, scope: !2187)
!2192 = !DILocation(line: 917, column: 11, scope: !2190)
!2193 = !DILocation(line: 216, column: 20, scope: !2012, inlinedAt: !2194)
!2194 = distinct !DILocation(line: 918, column: 27, scope: !2187)
!2195 = !DILocation(line: 218, column: 10, scope: !2012, inlinedAt: !2194)
!2196 = !DILocation(line: 918, column: 19, scope: !2187)
!2197 = !DILocation(line: 919, column: 69, scope: !2187)
!2198 = !DILocation(line: 921, column: 44, scope: !2187)
!2199 = !DILocation(line: 922, column: 44, scope: !2187)
!2200 = !DILocation(line: 919, column: 9, scope: !2187)
!2201 = !DILocation(line: 923, column: 7, scope: !2187)
!2202 = !DILocation(line: 0, scope: !2124)
!2203 = !DILocation(line: 925, column: 11, scope: !2124)
!2204 = !DILocation(line: 926, column: 5, scope: !2124)
!2205 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !83, file: !83, line: 937, type: !2206, isLocal: false, isDefinition: true, scopeLine: 938, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !2208)
!2206 = !DISubroutineType(types: !2207)
!2207 = !{!32, !25, !6, !77}
!2208 = !{!2209, !2210, !2211}
!2209 = !DILocalVariable(name: "n", arg: 1, scope: !2205, file: !83, line: 937, type: !25)
!2210 = !DILocalVariable(name: "arg", arg: 2, scope: !2205, file: !83, line: 937, type: !6)
!2211 = !DILocalVariable(name: "argsize", arg: 3, scope: !2205, file: !83, line: 937, type: !77)
!2212 = !DILocation(line: 937, column: 21, scope: !2205)
!2213 = !DILocation(line: 937, column: 36, scope: !2205)
!2214 = !DILocation(line: 937, column: 48, scope: !2205)
!2215 = !DILocation(line: 939, column: 10, scope: !2205)
!2216 = !DILocation(line: 939, column: 3, scope: !2205)
!2217 = distinct !DISubprogram(name: "quotearg", scope: !83, file: !83, line: 943, type: !2218, isLocal: false, isDefinition: true, scopeLine: 944, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !2220)
!2218 = !DISubroutineType(types: !2219)
!2219 = !{!32, !6}
!2220 = !{!2221}
!2221 = !DILocalVariable(name: "arg", arg: 1, scope: !2217, file: !83, line: 943, type: !6)
!2222 = !DILocation(line: 943, column: 23, scope: !2217)
!2223 = !DILocation(line: 931, column: 17, scope: !2099, inlinedAt: !2224)
!2224 = distinct !DILocation(line: 945, column: 10, scope: !2217)
!2225 = !DILocation(line: 931, column: 32, scope: !2099, inlinedAt: !2224)
!2226 = !DILocation(line: 933, column: 10, scope: !2099, inlinedAt: !2224)
!2227 = !DILocation(line: 945, column: 3, scope: !2217)
!2228 = distinct !DISubprogram(name: "quotearg_mem", scope: !83, file: !83, line: 949, type: !2229, isLocal: false, isDefinition: true, scopeLine: 950, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !2231)
!2229 = !DISubroutineType(types: !2230)
!2230 = !{!32, !6, !77}
!2231 = !{!2232, !2233}
!2232 = !DILocalVariable(name: "arg", arg: 1, scope: !2228, file: !83, line: 949, type: !6)
!2233 = !DILocalVariable(name: "argsize", arg: 2, scope: !2228, file: !83, line: 949, type: !77)
!2234 = !DILocation(line: 949, column: 27, scope: !2228)
!2235 = !DILocation(line: 949, column: 39, scope: !2228)
!2236 = !DILocation(line: 937, column: 21, scope: !2205, inlinedAt: !2237)
!2237 = distinct !DILocation(line: 951, column: 10, scope: !2228)
!2238 = !DILocation(line: 937, column: 36, scope: !2205, inlinedAt: !2237)
!2239 = !DILocation(line: 937, column: 48, scope: !2205, inlinedAt: !2237)
!2240 = !DILocation(line: 939, column: 10, scope: !2205, inlinedAt: !2237)
!2241 = !DILocation(line: 951, column: 3, scope: !2228)
!2242 = distinct !DISubprogram(name: "quotearg_n_style", scope: !83, file: !83, line: 955, type: !2243, isLocal: false, isDefinition: true, scopeLine: 956, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !2245)
!2243 = !DISubroutineType(types: !2244)
!2244 = !{!32, !25, !40, !6}
!2245 = !{!2246, !2247, !2248, !2249}
!2246 = !DILocalVariable(name: "n", arg: 1, scope: !2242, file: !83, line: 955, type: !25)
!2247 = !DILocalVariable(name: "s", arg: 2, scope: !2242, file: !83, line: 955, type: !40)
!2248 = !DILocalVariable(name: "arg", arg: 3, scope: !2242, file: !83, line: 955, type: !6)
!2249 = !DILocalVariable(name: "o", scope: !2242, file: !83, line: 957, type: !1010)
!2250 = !DILocation(line: 955, column: 23, scope: !2242)
!2251 = !DILocation(line: 955, column: 45, scope: !2242)
!2252 = !DILocation(line: 955, column: 60, scope: !2242)
!2253 = !DILocation(line: 957, column: 3, scope: !2242)
!2254 = !DILocation(line: 957, column: 32, scope: !2242)
!2255 = !DILocalVariable(name: "style", arg: 1, scope: !2256, file: !83, line: 193, type: !40)
!2256 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !83, file: !83, line: 193, type: !2257, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !2259)
!2257 = !DISubroutineType(types: !2258)
!2258 = !{!90, !40}
!2259 = !{!2255, !2260}
!2260 = !DILocalVariable(name: "o", scope: !2256, file: !83, line: 195, type: !90)
!2261 = !DILocation(line: 193, column: 48, scope: !2256, inlinedAt: !2262)
!2262 = distinct !DILocation(line: 957, column: 36, scope: !2242)
!2263 = !DILocation(line: 195, column: 26, scope: !2256, inlinedAt: !2262)
!2264 = !{!2265}
!2265 = distinct !{!2265, !2266, !"quoting_options_from_style: argument 0"}
!2266 = distinct !{!2266, !"quoting_options_from_style"}
!2267 = !DILocation(line: 196, column: 13, scope: !2268, inlinedAt: !2262)
!2268 = distinct !DILexicalBlock(scope: !2256, file: !83, line: 196, column: 7)
!2269 = !DILocation(line: 196, column: 7, scope: !2256, inlinedAt: !2262)
!2270 = !DILocation(line: 197, column: 5, scope: !2268, inlinedAt: !2262)
!2271 = !DILocation(line: 198, column: 5, scope: !2256, inlinedAt: !2262)
!2272 = !DILocation(line: 198, column: 11, scope: !2256, inlinedAt: !2262)
!2273 = !DILocation(line: 958, column: 10, scope: !2242)
!2274 = !DILocation(line: 959, column: 1, scope: !2242)
!2275 = !DILocation(line: 958, column: 3, scope: !2242)
!2276 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !83, file: !83, line: 962, type: !2277, isLocal: false, isDefinition: true, scopeLine: 964, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !2279)
!2277 = !DISubroutineType(types: !2278)
!2278 = !{!32, !25, !40, !6, !77}
!2279 = !{!2280, !2281, !2282, !2283, !2284}
!2280 = !DILocalVariable(name: "n", arg: 1, scope: !2276, file: !83, line: 962, type: !25)
!2281 = !DILocalVariable(name: "s", arg: 2, scope: !2276, file: !83, line: 962, type: !40)
!2282 = !DILocalVariable(name: "arg", arg: 3, scope: !2276, file: !83, line: 963, type: !6)
!2283 = !DILocalVariable(name: "argsize", arg: 4, scope: !2276, file: !83, line: 963, type: !77)
!2284 = !DILocalVariable(name: "o", scope: !2276, file: !83, line: 965, type: !1010)
!2285 = !DILocation(line: 962, column: 27, scope: !2276)
!2286 = !DILocation(line: 962, column: 49, scope: !2276)
!2287 = !DILocation(line: 963, column: 35, scope: !2276)
!2288 = !DILocation(line: 963, column: 47, scope: !2276)
!2289 = !DILocation(line: 965, column: 3, scope: !2276)
!2290 = !DILocation(line: 965, column: 32, scope: !2276)
!2291 = !DILocation(line: 193, column: 48, scope: !2256, inlinedAt: !2292)
!2292 = distinct !DILocation(line: 965, column: 36, scope: !2276)
!2293 = !DILocation(line: 195, column: 26, scope: !2256, inlinedAt: !2292)
!2294 = !{!2295}
!2295 = distinct !{!2295, !2296, !"quoting_options_from_style: argument 0"}
!2296 = distinct !{!2296, !"quoting_options_from_style"}
!2297 = !DILocation(line: 196, column: 13, scope: !2268, inlinedAt: !2292)
!2298 = !DILocation(line: 196, column: 7, scope: !2256, inlinedAt: !2292)
!2299 = !DILocation(line: 197, column: 5, scope: !2268, inlinedAt: !2292)
!2300 = !DILocation(line: 198, column: 5, scope: !2256, inlinedAt: !2292)
!2301 = !DILocation(line: 198, column: 11, scope: !2256, inlinedAt: !2292)
!2302 = !DILocation(line: 966, column: 10, scope: !2276)
!2303 = !DILocation(line: 967, column: 1, scope: !2276)
!2304 = !DILocation(line: 966, column: 3, scope: !2276)
!2305 = distinct !DISubprogram(name: "quotearg_style", scope: !83, file: !83, line: 970, type: !2306, isLocal: false, isDefinition: true, scopeLine: 971, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !2308)
!2306 = !DISubroutineType(types: !2307)
!2307 = !{!32, !40, !6}
!2308 = !{!2309, !2310}
!2309 = !DILocalVariable(name: "s", arg: 1, scope: !2305, file: !83, line: 970, type: !40)
!2310 = !DILocalVariable(name: "arg", arg: 2, scope: !2305, file: !83, line: 970, type: !6)
!2311 = !DILocation(line: 970, column: 36, scope: !2305)
!2312 = !DILocation(line: 970, column: 51, scope: !2305)
!2313 = !DILocation(line: 955, column: 23, scope: !2242, inlinedAt: !2314)
!2314 = distinct !DILocation(line: 972, column: 10, scope: !2305)
!2315 = !DILocation(line: 955, column: 45, scope: !2242, inlinedAt: !2314)
!2316 = !DILocation(line: 955, column: 60, scope: !2242, inlinedAt: !2314)
!2317 = !DILocation(line: 957, column: 3, scope: !2242, inlinedAt: !2314)
!2318 = !DILocation(line: 957, column: 32, scope: !2242, inlinedAt: !2314)
!2319 = !DILocation(line: 193, column: 48, scope: !2256, inlinedAt: !2320)
!2320 = distinct !DILocation(line: 957, column: 36, scope: !2242, inlinedAt: !2314)
!2321 = !DILocation(line: 195, column: 26, scope: !2256, inlinedAt: !2320)
!2322 = !{!2323}
!2323 = distinct !{!2323, !2324, !"quoting_options_from_style: argument 0"}
!2324 = distinct !{!2324, !"quoting_options_from_style"}
!2325 = !DILocation(line: 196, column: 13, scope: !2268, inlinedAt: !2320)
!2326 = !DILocation(line: 196, column: 7, scope: !2256, inlinedAt: !2320)
!2327 = !DILocation(line: 197, column: 5, scope: !2268, inlinedAt: !2320)
!2328 = !DILocation(line: 198, column: 5, scope: !2256, inlinedAt: !2320)
!2329 = !DILocation(line: 198, column: 11, scope: !2256, inlinedAt: !2320)
!2330 = !DILocation(line: 958, column: 10, scope: !2242, inlinedAt: !2314)
!2331 = !DILocation(line: 959, column: 1, scope: !2242, inlinedAt: !2314)
!2332 = !DILocation(line: 972, column: 3, scope: !2305)
!2333 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !83, file: !83, line: 976, type: !2334, isLocal: false, isDefinition: true, scopeLine: 977, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !2336)
!2334 = !DISubroutineType(types: !2335)
!2335 = !{!32, !40, !6, !77}
!2336 = !{!2337, !2338, !2339}
!2337 = !DILocalVariable(name: "s", arg: 1, scope: !2333, file: !83, line: 976, type: !40)
!2338 = !DILocalVariable(name: "arg", arg: 2, scope: !2333, file: !83, line: 976, type: !6)
!2339 = !DILocalVariable(name: "argsize", arg: 3, scope: !2333, file: !83, line: 976, type: !77)
!2340 = !DILocation(line: 976, column: 40, scope: !2333)
!2341 = !DILocation(line: 976, column: 55, scope: !2333)
!2342 = !DILocation(line: 976, column: 67, scope: !2333)
!2343 = !DILocation(line: 962, column: 27, scope: !2276, inlinedAt: !2344)
!2344 = distinct !DILocation(line: 978, column: 10, scope: !2333)
!2345 = !DILocation(line: 962, column: 49, scope: !2276, inlinedAt: !2344)
!2346 = !DILocation(line: 963, column: 35, scope: !2276, inlinedAt: !2344)
!2347 = !DILocation(line: 963, column: 47, scope: !2276, inlinedAt: !2344)
!2348 = !DILocation(line: 965, column: 3, scope: !2276, inlinedAt: !2344)
!2349 = !DILocation(line: 965, column: 32, scope: !2276, inlinedAt: !2344)
!2350 = !DILocation(line: 193, column: 48, scope: !2256, inlinedAt: !2351)
!2351 = distinct !DILocation(line: 965, column: 36, scope: !2276, inlinedAt: !2344)
!2352 = !DILocation(line: 195, column: 26, scope: !2256, inlinedAt: !2351)
!2353 = !{!2354}
!2354 = distinct !{!2354, !2355, !"quoting_options_from_style: argument 0"}
!2355 = distinct !{!2355, !"quoting_options_from_style"}
!2356 = !DILocation(line: 196, column: 13, scope: !2268, inlinedAt: !2351)
!2357 = !DILocation(line: 196, column: 7, scope: !2256, inlinedAt: !2351)
!2358 = !DILocation(line: 197, column: 5, scope: !2268, inlinedAt: !2351)
!2359 = !DILocation(line: 198, column: 5, scope: !2256, inlinedAt: !2351)
!2360 = !DILocation(line: 198, column: 11, scope: !2256, inlinedAt: !2351)
!2361 = !DILocation(line: 966, column: 10, scope: !2276, inlinedAt: !2344)
!2362 = !DILocation(line: 967, column: 1, scope: !2276, inlinedAt: !2344)
!2363 = !DILocation(line: 978, column: 3, scope: !2333)
!2364 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !83, file: !83, line: 982, type: !2365, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !2367)
!2365 = !DISubroutineType(types: !2366)
!2366 = !{!32, !6, !77, !8}
!2367 = !{!2368, !2369, !2370, !2371}
!2368 = !DILocalVariable(name: "arg", arg: 1, scope: !2364, file: !83, line: 982, type: !6)
!2369 = !DILocalVariable(name: "argsize", arg: 2, scope: !2364, file: !83, line: 982, type: !77)
!2370 = !DILocalVariable(name: "ch", arg: 3, scope: !2364, file: !83, line: 982, type: !8)
!2371 = !DILocalVariable(name: "options", scope: !2364, file: !83, line: 984, type: !90)
!2372 = !DILocation(line: 982, column: 32, scope: !2364)
!2373 = !DILocation(line: 982, column: 44, scope: !2364)
!2374 = !DILocation(line: 982, column: 58, scope: !2364)
!2375 = !DILocation(line: 984, column: 3, scope: !2364)
!2376 = !DILocation(line: 985, column: 13, scope: !2364)
!2377 = !{i64 0, i64 4, !723, i64 4, i64 4, !929, i64 8, i64 32, !723, i64 40, i64 8, !609, i64 48, i64 8, !609}
!2378 = !DILocation(line: 984, column: 26, scope: !2364)
!2379 = !DILocation(line: 152, column: 43, scope: !1031, inlinedAt: !2380)
!2380 = distinct !DILocation(line: 986, column: 3, scope: !2364)
!2381 = !DILocation(line: 152, column: 51, scope: !1031, inlinedAt: !2380)
!2382 = !DILocation(line: 152, column: 58, scope: !1031, inlinedAt: !2380)
!2383 = !DILocation(line: 154, column: 17, scope: !1031, inlinedAt: !2380)
!2384 = !DILocation(line: 156, column: 62, scope: !1031, inlinedAt: !2380)
!2385 = !DILocation(line: 156, column: 57, scope: !1031, inlinedAt: !2380)
!2386 = !DILocation(line: 155, column: 17, scope: !1031, inlinedAt: !2380)
!2387 = !DILocation(line: 157, column: 15, scope: !1031, inlinedAt: !2380)
!2388 = !DILocation(line: 157, column: 7, scope: !1031, inlinedAt: !2380)
!2389 = !DILocation(line: 158, column: 12, scope: !1031, inlinedAt: !2380)
!2390 = !DILocation(line: 158, column: 15, scope: !1031, inlinedAt: !2380)
!2391 = !DILocation(line: 158, column: 25, scope: !1031, inlinedAt: !2380)
!2392 = !DILocation(line: 158, column: 7, scope: !1031, inlinedAt: !2380)
!2393 = !DILocation(line: 159, column: 18, scope: !1031, inlinedAt: !2380)
!2394 = !DILocation(line: 159, column: 23, scope: !1031, inlinedAt: !2380)
!2395 = !DILocation(line: 159, column: 6, scope: !1031, inlinedAt: !2380)
!2396 = !DILocation(line: 987, column: 10, scope: !2364)
!2397 = !DILocation(line: 988, column: 1, scope: !2364)
!2398 = !DILocation(line: 987, column: 3, scope: !2364)
!2399 = distinct !DISubprogram(name: "quotearg_char", scope: !83, file: !83, line: 991, type: !2400, isLocal: false, isDefinition: true, scopeLine: 992, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !2402)
!2400 = !DISubroutineType(types: !2401)
!2401 = !{!32, !6, !8}
!2402 = !{!2403, !2404}
!2403 = !DILocalVariable(name: "arg", arg: 1, scope: !2399, file: !83, line: 991, type: !6)
!2404 = !DILocalVariable(name: "ch", arg: 2, scope: !2399, file: !83, line: 991, type: !8)
!2405 = !DILocation(line: 991, column: 28, scope: !2399)
!2406 = !DILocation(line: 991, column: 38, scope: !2399)
!2407 = !DILocation(line: 982, column: 32, scope: !2364, inlinedAt: !2408)
!2408 = distinct !DILocation(line: 993, column: 10, scope: !2399)
!2409 = !DILocation(line: 982, column: 44, scope: !2364, inlinedAt: !2408)
!2410 = !DILocation(line: 982, column: 58, scope: !2364, inlinedAt: !2408)
!2411 = !DILocation(line: 984, column: 3, scope: !2364, inlinedAt: !2408)
!2412 = !DILocation(line: 985, column: 13, scope: !2364, inlinedAt: !2408)
!2413 = !DILocation(line: 984, column: 26, scope: !2364, inlinedAt: !2408)
!2414 = !DILocation(line: 152, column: 43, scope: !1031, inlinedAt: !2415)
!2415 = distinct !DILocation(line: 986, column: 3, scope: !2364, inlinedAt: !2408)
!2416 = !DILocation(line: 152, column: 51, scope: !1031, inlinedAt: !2415)
!2417 = !DILocation(line: 152, column: 58, scope: !1031, inlinedAt: !2415)
!2418 = !DILocation(line: 154, column: 17, scope: !1031, inlinedAt: !2415)
!2419 = !DILocation(line: 156, column: 62, scope: !1031, inlinedAt: !2415)
!2420 = !DILocation(line: 156, column: 57, scope: !1031, inlinedAt: !2415)
!2421 = !DILocation(line: 155, column: 17, scope: !1031, inlinedAt: !2415)
!2422 = !DILocation(line: 157, column: 15, scope: !1031, inlinedAt: !2415)
!2423 = !DILocation(line: 157, column: 7, scope: !1031, inlinedAt: !2415)
!2424 = !DILocation(line: 158, column: 12, scope: !1031, inlinedAt: !2415)
!2425 = !DILocation(line: 158, column: 15, scope: !1031, inlinedAt: !2415)
!2426 = !DILocation(line: 158, column: 25, scope: !1031, inlinedAt: !2415)
!2427 = !DILocation(line: 158, column: 7, scope: !1031, inlinedAt: !2415)
!2428 = !DILocation(line: 159, column: 18, scope: !1031, inlinedAt: !2415)
!2429 = !DILocation(line: 159, column: 23, scope: !1031, inlinedAt: !2415)
!2430 = !DILocation(line: 159, column: 6, scope: !1031, inlinedAt: !2415)
!2431 = !DILocation(line: 987, column: 10, scope: !2364, inlinedAt: !2408)
!2432 = !DILocation(line: 988, column: 1, scope: !2364, inlinedAt: !2408)
!2433 = !DILocation(line: 993, column: 3, scope: !2399)
!2434 = distinct !DISubprogram(name: "quotearg_colon", scope: !83, file: !83, line: 997, type: !2218, isLocal: false, isDefinition: true, scopeLine: 998, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !2435)
!2435 = !{!2436}
!2436 = !DILocalVariable(name: "arg", arg: 1, scope: !2434, file: !83, line: 997, type: !6)
!2437 = !DILocation(line: 997, column: 29, scope: !2434)
!2438 = !DILocation(line: 991, column: 28, scope: !2399, inlinedAt: !2439)
!2439 = distinct !DILocation(line: 999, column: 10, scope: !2434)
!2440 = !DILocation(line: 991, column: 38, scope: !2399, inlinedAt: !2439)
!2441 = !DILocation(line: 982, column: 32, scope: !2364, inlinedAt: !2442)
!2442 = distinct !DILocation(line: 993, column: 10, scope: !2399, inlinedAt: !2439)
!2443 = !DILocation(line: 982, column: 44, scope: !2364, inlinedAt: !2442)
!2444 = !DILocation(line: 982, column: 58, scope: !2364, inlinedAt: !2442)
!2445 = !DILocation(line: 984, column: 3, scope: !2364, inlinedAt: !2442)
!2446 = !DILocation(line: 985, column: 13, scope: !2364, inlinedAt: !2442)
!2447 = !DILocation(line: 984, column: 26, scope: !2364, inlinedAt: !2442)
!2448 = !DILocation(line: 152, column: 43, scope: !1031, inlinedAt: !2449)
!2449 = distinct !DILocation(line: 986, column: 3, scope: !2364, inlinedAt: !2442)
!2450 = !DILocation(line: 152, column: 51, scope: !1031, inlinedAt: !2449)
!2451 = !DILocation(line: 152, column: 58, scope: !1031, inlinedAt: !2449)
!2452 = !DILocation(line: 154, column: 17, scope: !1031, inlinedAt: !2449)
!2453 = !DILocation(line: 156, column: 57, scope: !1031, inlinedAt: !2449)
!2454 = !DILocation(line: 155, column: 17, scope: !1031, inlinedAt: !2449)
!2455 = !DILocation(line: 157, column: 7, scope: !1031, inlinedAt: !2449)
!2456 = !DILocation(line: 158, column: 12, scope: !1031, inlinedAt: !2449)
!2457 = !DILocation(line: 159, column: 6, scope: !1031, inlinedAt: !2449)
!2458 = !DILocation(line: 987, column: 10, scope: !2364, inlinedAt: !2442)
!2459 = !DILocation(line: 988, column: 1, scope: !2364, inlinedAt: !2442)
!2460 = !DILocation(line: 999, column: 3, scope: !2434)
!2461 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !83, file: !83, line: 1003, type: !2229, isLocal: false, isDefinition: true, scopeLine: 1004, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !2462)
!2462 = !{!2463, !2464}
!2463 = !DILocalVariable(name: "arg", arg: 1, scope: !2461, file: !83, line: 1003, type: !6)
!2464 = !DILocalVariable(name: "argsize", arg: 2, scope: !2461, file: !83, line: 1003, type: !77)
!2465 = !DILocation(line: 1003, column: 33, scope: !2461)
!2466 = !DILocation(line: 1003, column: 45, scope: !2461)
!2467 = !DILocation(line: 982, column: 32, scope: !2364, inlinedAt: !2468)
!2468 = distinct !DILocation(line: 1005, column: 10, scope: !2461)
!2469 = !DILocation(line: 982, column: 44, scope: !2364, inlinedAt: !2468)
!2470 = !DILocation(line: 982, column: 58, scope: !2364, inlinedAt: !2468)
!2471 = !DILocation(line: 984, column: 3, scope: !2364, inlinedAt: !2468)
!2472 = !DILocation(line: 985, column: 13, scope: !2364, inlinedAt: !2468)
!2473 = !DILocation(line: 984, column: 26, scope: !2364, inlinedAt: !2468)
!2474 = !DILocation(line: 152, column: 43, scope: !1031, inlinedAt: !2475)
!2475 = distinct !DILocation(line: 986, column: 3, scope: !2364, inlinedAt: !2468)
!2476 = !DILocation(line: 152, column: 51, scope: !1031, inlinedAt: !2475)
!2477 = !DILocation(line: 152, column: 58, scope: !1031, inlinedAt: !2475)
!2478 = !DILocation(line: 154, column: 17, scope: !1031, inlinedAt: !2475)
!2479 = !DILocation(line: 156, column: 57, scope: !1031, inlinedAt: !2475)
!2480 = !DILocation(line: 155, column: 17, scope: !1031, inlinedAt: !2475)
!2481 = !DILocation(line: 157, column: 7, scope: !1031, inlinedAt: !2475)
!2482 = !DILocation(line: 158, column: 12, scope: !1031, inlinedAt: !2475)
!2483 = !DILocation(line: 159, column: 6, scope: !1031, inlinedAt: !2475)
!2484 = !DILocation(line: 987, column: 10, scope: !2364, inlinedAt: !2468)
!2485 = !DILocation(line: 988, column: 1, scope: !2364, inlinedAt: !2468)
!2486 = !DILocation(line: 1005, column: 3, scope: !2461)
!2487 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !83, file: !83, line: 1009, type: !2243, isLocal: false, isDefinition: true, scopeLine: 1010, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !2488)
!2488 = !{!2489, !2490, !2491, !2492}
!2489 = !DILocalVariable(name: "n", arg: 1, scope: !2487, file: !83, line: 1009, type: !25)
!2490 = !DILocalVariable(name: "s", arg: 2, scope: !2487, file: !83, line: 1009, type: !40)
!2491 = !DILocalVariable(name: "arg", arg: 3, scope: !2487, file: !83, line: 1009, type: !6)
!2492 = !DILocalVariable(name: "options", scope: !2487, file: !83, line: 1011, type: !90)
!2493 = !DILocation(line: 195, column: 26, scope: !2256, inlinedAt: !2494)
!2494 = distinct !DILocation(line: 1012, column: 13, scope: !2487)
!2495 = !DILocation(line: 1009, column: 29, scope: !2487)
!2496 = !DILocation(line: 1009, column: 51, scope: !2487)
!2497 = !DILocation(line: 1009, column: 66, scope: !2487)
!2498 = !DILocation(line: 1011, column: 3, scope: !2487)
!2499 = !DILocation(line: 1012, column: 13, scope: !2487)
!2500 = !DILocation(line: 193, column: 48, scope: !2256, inlinedAt: !2494)
!2501 = !{!2502}
!2502 = distinct !{!2502, !2503, !"quoting_options_from_style: argument 0"}
!2503 = distinct !{!2503, !"quoting_options_from_style"}
!2504 = !DILocation(line: 196, column: 13, scope: !2268, inlinedAt: !2494)
!2505 = !DILocation(line: 196, column: 7, scope: !2256, inlinedAt: !2494)
!2506 = !DILocation(line: 197, column: 5, scope: !2268, inlinedAt: !2494)
!2507 = !DILocation(line: 1011, column: 26, scope: !2487)
!2508 = !DILocation(line: 152, column: 43, scope: !1031, inlinedAt: !2509)
!2509 = distinct !DILocation(line: 1013, column: 3, scope: !2487)
!2510 = !DILocation(line: 152, column: 51, scope: !1031, inlinedAt: !2509)
!2511 = !DILocation(line: 152, column: 58, scope: !1031, inlinedAt: !2509)
!2512 = !DILocation(line: 154, column: 17, scope: !1031, inlinedAt: !2509)
!2513 = !DILocation(line: 156, column: 57, scope: !1031, inlinedAt: !2509)
!2514 = !DILocation(line: 155, column: 17, scope: !1031, inlinedAt: !2509)
!2515 = !DILocation(line: 157, column: 7, scope: !1031, inlinedAt: !2509)
!2516 = !DILocation(line: 158, column: 12, scope: !1031, inlinedAt: !2509)
!2517 = !DILocation(line: 159, column: 6, scope: !1031, inlinedAt: !2509)
!2518 = !DILocation(line: 1014, column: 10, scope: !2487)
!2519 = !DILocation(line: 1015, column: 1, scope: !2487)
!2520 = !DILocation(line: 1014, column: 3, scope: !2487)
!2521 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !83, file: !83, line: 1018, type: !2522, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !2524)
!2522 = !DISubroutineType(types: !2523)
!2523 = !{!32, !25, !6, !6, !6}
!2524 = !{!2525, !2526, !2527, !2528}
!2525 = !DILocalVariable(name: "n", arg: 1, scope: !2521, file: !83, line: 1018, type: !25)
!2526 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2521, file: !83, line: 1018, type: !6)
!2527 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2521, file: !83, line: 1019, type: !6)
!2528 = !DILocalVariable(name: "arg", arg: 4, scope: !2521, file: !83, line: 1019, type: !6)
!2529 = !DILocation(line: 1018, column: 24, scope: !2521)
!2530 = !DILocation(line: 1018, column: 39, scope: !2521)
!2531 = !DILocation(line: 1019, column: 32, scope: !2521)
!2532 = !DILocation(line: 1019, column: 57, scope: !2521)
!2533 = !DILocalVariable(name: "n", arg: 1, scope: !2534, file: !83, line: 1026, type: !25)
!2534 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !83, file: !83, line: 1026, type: !2535, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !2537)
!2535 = !DISubroutineType(types: !2536)
!2536 = !{!32, !25, !6, !6, !6, !77}
!2537 = !{!2533, !2538, !2539, !2540, !2541, !2542}
!2538 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2534, file: !83, line: 1026, type: !6)
!2539 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2534, file: !83, line: 1027, type: !6)
!2540 = !DILocalVariable(name: "arg", arg: 4, scope: !2534, file: !83, line: 1028, type: !6)
!2541 = !DILocalVariable(name: "argsize", arg: 5, scope: !2534, file: !83, line: 1028, type: !77)
!2542 = !DILocalVariable(name: "o", scope: !2534, file: !83, line: 1030, type: !90)
!2543 = !DILocation(line: 1026, column: 28, scope: !2534, inlinedAt: !2544)
!2544 = distinct !DILocation(line: 1021, column: 10, scope: !2521)
!2545 = !DILocation(line: 1026, column: 43, scope: !2534, inlinedAt: !2544)
!2546 = !DILocation(line: 1027, column: 36, scope: !2534, inlinedAt: !2544)
!2547 = !DILocation(line: 1028, column: 36, scope: !2534, inlinedAt: !2544)
!2548 = !DILocation(line: 1028, column: 48, scope: !2534, inlinedAt: !2544)
!2549 = !DILocation(line: 1030, column: 3, scope: !2534, inlinedAt: !2544)
!2550 = !DILocation(line: 1030, column: 30, scope: !2534, inlinedAt: !2544)
!2551 = !DILocation(line: 1030, column: 26, scope: !2534, inlinedAt: !2544)
!2552 = !DILocation(line: 179, column: 45, scope: !1079, inlinedAt: !2553)
!2553 = distinct !DILocation(line: 1031, column: 3, scope: !2534, inlinedAt: !2544)
!2554 = !DILocation(line: 180, column: 33, scope: !1079, inlinedAt: !2553)
!2555 = !DILocation(line: 180, column: 57, scope: !1079, inlinedAt: !2553)
!2556 = !DILocation(line: 184, column: 6, scope: !1079, inlinedAt: !2553)
!2557 = !DILocation(line: 184, column: 12, scope: !1079, inlinedAt: !2553)
!2558 = !DILocation(line: 185, column: 8, scope: !1095, inlinedAt: !2553)
!2559 = !DILocation(line: 185, column: 23, scope: !1095, inlinedAt: !2553)
!2560 = !DILocation(line: 185, column: 19, scope: !1095, inlinedAt: !2553)
!2561 = !DILocation(line: 186, column: 5, scope: !1095, inlinedAt: !2553)
!2562 = !DILocation(line: 187, column: 6, scope: !1079, inlinedAt: !2553)
!2563 = !DILocation(line: 187, column: 17, scope: !1079, inlinedAt: !2553)
!2564 = !DILocation(line: 188, column: 6, scope: !1079, inlinedAt: !2553)
!2565 = !DILocation(line: 188, column: 18, scope: !1079, inlinedAt: !2553)
!2566 = !DILocation(line: 1032, column: 10, scope: !2534, inlinedAt: !2544)
!2567 = !DILocation(line: 1033, column: 1, scope: !2534, inlinedAt: !2544)
!2568 = !DILocation(line: 1021, column: 3, scope: !2521)
!2569 = !DILocation(line: 1026, column: 28, scope: !2534)
!2570 = !DILocation(line: 1026, column: 43, scope: !2534)
!2571 = !DILocation(line: 1027, column: 36, scope: !2534)
!2572 = !DILocation(line: 1028, column: 36, scope: !2534)
!2573 = !DILocation(line: 1028, column: 48, scope: !2534)
!2574 = !DILocation(line: 1030, column: 3, scope: !2534)
!2575 = !DILocation(line: 1030, column: 30, scope: !2534)
!2576 = !DILocation(line: 1030, column: 26, scope: !2534)
!2577 = !DILocation(line: 179, column: 45, scope: !1079, inlinedAt: !2578)
!2578 = distinct !DILocation(line: 1031, column: 3, scope: !2534)
!2579 = !DILocation(line: 180, column: 33, scope: !1079, inlinedAt: !2578)
!2580 = !DILocation(line: 180, column: 57, scope: !1079, inlinedAt: !2578)
!2581 = !DILocation(line: 184, column: 6, scope: !1079, inlinedAt: !2578)
!2582 = !DILocation(line: 184, column: 12, scope: !1079, inlinedAt: !2578)
!2583 = !DILocation(line: 185, column: 8, scope: !1095, inlinedAt: !2578)
!2584 = !DILocation(line: 185, column: 23, scope: !1095, inlinedAt: !2578)
!2585 = !DILocation(line: 185, column: 19, scope: !1095, inlinedAt: !2578)
!2586 = !DILocation(line: 186, column: 5, scope: !1095, inlinedAt: !2578)
!2587 = !DILocation(line: 187, column: 6, scope: !1079, inlinedAt: !2578)
!2588 = !DILocation(line: 187, column: 17, scope: !1079, inlinedAt: !2578)
!2589 = !DILocation(line: 188, column: 6, scope: !1079, inlinedAt: !2578)
!2590 = !DILocation(line: 188, column: 18, scope: !1079, inlinedAt: !2578)
!2591 = !DILocation(line: 1032, column: 10, scope: !2534)
!2592 = !DILocation(line: 1033, column: 1, scope: !2534)
!2593 = !DILocation(line: 1032, column: 3, scope: !2534)
!2594 = distinct !DISubprogram(name: "quotearg_custom", scope: !83, file: !83, line: 1036, type: !2595, isLocal: false, isDefinition: true, scopeLine: 1038, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !2597)
!2595 = !DISubroutineType(types: !2596)
!2596 = !{!32, !6, !6, !6}
!2597 = !{!2598, !2599, !2600}
!2598 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2594, file: !83, line: 1036, type: !6)
!2599 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2594, file: !83, line: 1036, type: !6)
!2600 = !DILocalVariable(name: "arg", arg: 3, scope: !2594, file: !83, line: 1037, type: !6)
!2601 = !DILocation(line: 1036, column: 30, scope: !2594)
!2602 = !DILocation(line: 1036, column: 54, scope: !2594)
!2603 = !DILocation(line: 1037, column: 30, scope: !2594)
!2604 = !DILocation(line: 1018, column: 24, scope: !2521, inlinedAt: !2605)
!2605 = distinct !DILocation(line: 1039, column: 10, scope: !2594)
!2606 = !DILocation(line: 1018, column: 39, scope: !2521, inlinedAt: !2605)
!2607 = !DILocation(line: 1019, column: 32, scope: !2521, inlinedAt: !2605)
!2608 = !DILocation(line: 1019, column: 57, scope: !2521, inlinedAt: !2605)
!2609 = !DILocation(line: 1026, column: 28, scope: !2534, inlinedAt: !2610)
!2610 = distinct !DILocation(line: 1021, column: 10, scope: !2521, inlinedAt: !2605)
!2611 = !DILocation(line: 1026, column: 43, scope: !2534, inlinedAt: !2610)
!2612 = !DILocation(line: 1027, column: 36, scope: !2534, inlinedAt: !2610)
!2613 = !DILocation(line: 1028, column: 36, scope: !2534, inlinedAt: !2610)
!2614 = !DILocation(line: 1028, column: 48, scope: !2534, inlinedAt: !2610)
!2615 = !DILocation(line: 1030, column: 3, scope: !2534, inlinedAt: !2610)
!2616 = !DILocation(line: 1030, column: 30, scope: !2534, inlinedAt: !2610)
!2617 = !DILocation(line: 1030, column: 26, scope: !2534, inlinedAt: !2610)
!2618 = !DILocation(line: 179, column: 45, scope: !1079, inlinedAt: !2619)
!2619 = distinct !DILocation(line: 1031, column: 3, scope: !2534, inlinedAt: !2610)
!2620 = !DILocation(line: 180, column: 33, scope: !1079, inlinedAt: !2619)
!2621 = !DILocation(line: 180, column: 57, scope: !1079, inlinedAt: !2619)
!2622 = !DILocation(line: 184, column: 6, scope: !1079, inlinedAt: !2619)
!2623 = !DILocation(line: 184, column: 12, scope: !1079, inlinedAt: !2619)
!2624 = !DILocation(line: 185, column: 8, scope: !1095, inlinedAt: !2619)
!2625 = !DILocation(line: 185, column: 23, scope: !1095, inlinedAt: !2619)
!2626 = !DILocation(line: 185, column: 19, scope: !1095, inlinedAt: !2619)
!2627 = !DILocation(line: 186, column: 5, scope: !1095, inlinedAt: !2619)
!2628 = !DILocation(line: 187, column: 6, scope: !1079, inlinedAt: !2619)
!2629 = !DILocation(line: 187, column: 17, scope: !1079, inlinedAt: !2619)
!2630 = !DILocation(line: 188, column: 6, scope: !1079, inlinedAt: !2619)
!2631 = !DILocation(line: 188, column: 18, scope: !1079, inlinedAt: !2619)
!2632 = !DILocation(line: 1032, column: 10, scope: !2534, inlinedAt: !2610)
!2633 = !DILocation(line: 1033, column: 1, scope: !2534, inlinedAt: !2610)
!2634 = !DILocation(line: 1039, column: 3, scope: !2594)
!2635 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !83, file: !83, line: 1043, type: !2636, isLocal: false, isDefinition: true, scopeLine: 1045, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !2638)
!2636 = !DISubroutineType(types: !2637)
!2637 = !{!32, !6, !6, !6, !77}
!2638 = !{!2639, !2640, !2641, !2642}
!2639 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2635, file: !83, line: 1043, type: !6)
!2640 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2635, file: !83, line: 1043, type: !6)
!2641 = !DILocalVariable(name: "arg", arg: 3, scope: !2635, file: !83, line: 1044, type: !6)
!2642 = !DILocalVariable(name: "argsize", arg: 4, scope: !2635, file: !83, line: 1044, type: !77)
!2643 = !DILocation(line: 1043, column: 34, scope: !2635)
!2644 = !DILocation(line: 1043, column: 58, scope: !2635)
!2645 = !DILocation(line: 1044, column: 34, scope: !2635)
!2646 = !DILocation(line: 1044, column: 46, scope: !2635)
!2647 = !DILocation(line: 1026, column: 28, scope: !2534, inlinedAt: !2648)
!2648 = distinct !DILocation(line: 1046, column: 10, scope: !2635)
!2649 = !DILocation(line: 1026, column: 43, scope: !2534, inlinedAt: !2648)
!2650 = !DILocation(line: 1027, column: 36, scope: !2534, inlinedAt: !2648)
!2651 = !DILocation(line: 1028, column: 36, scope: !2534, inlinedAt: !2648)
!2652 = !DILocation(line: 1028, column: 48, scope: !2534, inlinedAt: !2648)
!2653 = !DILocation(line: 1030, column: 3, scope: !2534, inlinedAt: !2648)
!2654 = !DILocation(line: 1030, column: 30, scope: !2534, inlinedAt: !2648)
!2655 = !DILocation(line: 1030, column: 26, scope: !2534, inlinedAt: !2648)
!2656 = !DILocation(line: 179, column: 45, scope: !1079, inlinedAt: !2657)
!2657 = distinct !DILocation(line: 1031, column: 3, scope: !2534, inlinedAt: !2648)
!2658 = !DILocation(line: 180, column: 33, scope: !1079, inlinedAt: !2657)
!2659 = !DILocation(line: 180, column: 57, scope: !1079, inlinedAt: !2657)
!2660 = !DILocation(line: 184, column: 6, scope: !1079, inlinedAt: !2657)
!2661 = !DILocation(line: 184, column: 12, scope: !1079, inlinedAt: !2657)
!2662 = !DILocation(line: 185, column: 8, scope: !1095, inlinedAt: !2657)
!2663 = !DILocation(line: 185, column: 23, scope: !1095, inlinedAt: !2657)
!2664 = !DILocation(line: 185, column: 19, scope: !1095, inlinedAt: !2657)
!2665 = !DILocation(line: 186, column: 5, scope: !1095, inlinedAt: !2657)
!2666 = !DILocation(line: 187, column: 6, scope: !1079, inlinedAt: !2657)
!2667 = !DILocation(line: 187, column: 17, scope: !1079, inlinedAt: !2657)
!2668 = !DILocation(line: 188, column: 6, scope: !1079, inlinedAt: !2657)
!2669 = !DILocation(line: 188, column: 18, scope: !1079, inlinedAt: !2657)
!2670 = !DILocation(line: 1032, column: 10, scope: !2534, inlinedAt: !2648)
!2671 = !DILocation(line: 1033, column: 1, scope: !2534, inlinedAt: !2648)
!2672 = !DILocation(line: 1046, column: 3, scope: !2635)
!2673 = distinct !DISubprogram(name: "quote_n_mem", scope: !83, file: !83, line: 1061, type: !2674, isLocal: false, isDefinition: true, scopeLine: 1062, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !2676)
!2674 = !DISubroutineType(types: !2675)
!2675 = !{!6, !25, !6, !77}
!2676 = !{!2677, !2678, !2679}
!2677 = !DILocalVariable(name: "n", arg: 1, scope: !2673, file: !83, line: 1061, type: !25)
!2678 = !DILocalVariable(name: "arg", arg: 2, scope: !2673, file: !83, line: 1061, type: !6)
!2679 = !DILocalVariable(name: "argsize", arg: 3, scope: !2673, file: !83, line: 1061, type: !77)
!2680 = !DILocation(line: 1061, column: 18, scope: !2673)
!2681 = !DILocation(line: 1061, column: 33, scope: !2673)
!2682 = !DILocation(line: 1061, column: 45, scope: !2673)
!2683 = !DILocation(line: 1063, column: 10, scope: !2673)
!2684 = !DILocation(line: 1063, column: 3, scope: !2673)
!2685 = distinct !DISubprogram(name: "quote_mem", scope: !83, file: !83, line: 1067, type: !2686, isLocal: false, isDefinition: true, scopeLine: 1068, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !2688)
!2686 = !DISubroutineType(types: !2687)
!2687 = !{!6, !6, !77}
!2688 = !{!2689, !2690}
!2689 = !DILocalVariable(name: "arg", arg: 1, scope: !2685, file: !83, line: 1067, type: !6)
!2690 = !DILocalVariable(name: "argsize", arg: 2, scope: !2685, file: !83, line: 1067, type: !77)
!2691 = !DILocation(line: 1067, column: 24, scope: !2685)
!2692 = !DILocation(line: 1067, column: 36, scope: !2685)
!2693 = !DILocation(line: 1061, column: 18, scope: !2673, inlinedAt: !2694)
!2694 = distinct !DILocation(line: 1069, column: 10, scope: !2685)
!2695 = !DILocation(line: 1061, column: 33, scope: !2673, inlinedAt: !2694)
!2696 = !DILocation(line: 1061, column: 45, scope: !2673, inlinedAt: !2694)
!2697 = !DILocation(line: 1063, column: 10, scope: !2673, inlinedAt: !2694)
!2698 = !DILocation(line: 1069, column: 3, scope: !2685)
!2699 = distinct !DISubprogram(name: "quote_n", scope: !83, file: !83, line: 1073, type: !2700, isLocal: false, isDefinition: true, scopeLine: 1074, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !2702)
!2700 = !DISubroutineType(types: !2701)
!2701 = !{!6, !25, !6}
!2702 = !{!2703, !2704}
!2703 = !DILocalVariable(name: "n", arg: 1, scope: !2699, file: !83, line: 1073, type: !25)
!2704 = !DILocalVariable(name: "arg", arg: 2, scope: !2699, file: !83, line: 1073, type: !6)
!2705 = !DILocation(line: 1073, column: 14, scope: !2699)
!2706 = !DILocation(line: 1073, column: 29, scope: !2699)
!2707 = !DILocation(line: 1061, column: 18, scope: !2673, inlinedAt: !2708)
!2708 = distinct !DILocation(line: 1075, column: 10, scope: !2699)
!2709 = !DILocation(line: 1061, column: 33, scope: !2673, inlinedAt: !2708)
!2710 = !DILocation(line: 1061, column: 45, scope: !2673, inlinedAt: !2708)
!2711 = !DILocation(line: 1063, column: 10, scope: !2673, inlinedAt: !2708)
!2712 = !DILocation(line: 1075, column: 3, scope: !2699)
!2713 = distinct !DISubprogram(name: "quote", scope: !83, file: !83, line: 1079, type: !2714, isLocal: false, isDefinition: true, scopeLine: 1080, flags: DIFlagPrototyped, isOptimized: true, unit: !37, retainedNodes: !2716)
!2714 = !DISubroutineType(types: !2715)
!2715 = !{!6, !6}
!2716 = !{!2717}
!2717 = !DILocalVariable(name: "arg", arg: 1, scope: !2713, file: !83, line: 1079, type: !6)
!2718 = !DILocation(line: 1079, column: 20, scope: !2713)
!2719 = !DILocation(line: 1073, column: 14, scope: !2699, inlinedAt: !2720)
!2720 = distinct !DILocation(line: 1081, column: 10, scope: !2713)
!2721 = !DILocation(line: 1073, column: 29, scope: !2699, inlinedAt: !2720)
!2722 = !DILocation(line: 1061, column: 18, scope: !2673, inlinedAt: !2723)
!2723 = distinct !DILocation(line: 1075, column: 10, scope: !2699, inlinedAt: !2720)
!2724 = !DILocation(line: 1061, column: 33, scope: !2673, inlinedAt: !2723)
!2725 = !DILocation(line: 1061, column: 45, scope: !2673, inlinedAt: !2723)
!2726 = !DILocation(line: 1063, column: 10, scope: !2673, inlinedAt: !2723)
!2727 = !DILocation(line: 1081, column: 3, scope: !2713)
!2728 = distinct !DISubprogram(name: "version_etc_arn", scope: !143, file: !143, line: 62, type: !2729, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !139, retainedNodes: !2787)
!2729 = !DISubroutineType(types: !2730)
!2730 = !{null, !2731, !6, !6, !6, !2786, !77}
!2731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2732, size: 64)
!2732 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2733, line: 7, baseType: !2734)
!2733 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2735, line: 49, size: 1728, elements: !2736)
!2735 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2736 = !{!2737, !2738, !2739, !2740, !2741, !2742, !2743, !2744, !2745, !2746, !2747, !2748, !2749, !2752, !2754, !2755, !2756, !2760, !2761, !2763, !2767, !2770, !2772, !2775, !2778, !2779, !2780, !2781, !2782}
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2734, file: !2735, line: 51, baseType: !25, size: 32)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2734, file: !2735, line: 54, baseType: !32, size: 64, offset: 64)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2734, file: !2735, line: 55, baseType: !32, size: 64, offset: 128)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2734, file: !2735, line: 56, baseType: !32, size: 64, offset: 192)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2734, file: !2735, line: 57, baseType: !32, size: 64, offset: 256)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2734, file: !2735, line: 58, baseType: !32, size: 64, offset: 320)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2734, file: !2735, line: 59, baseType: !32, size: 64, offset: 384)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2734, file: !2735, line: 60, baseType: !32, size: 64, offset: 448)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2734, file: !2735, line: 61, baseType: !32, size: 64, offset: 512)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2734, file: !2735, line: 64, baseType: !32, size: 64, offset: 576)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2734, file: !2735, line: 65, baseType: !32, size: 64, offset: 640)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2734, file: !2735, line: 66, baseType: !32, size: 64, offset: 704)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2734, file: !2735, line: 68, baseType: !2750, size: 64, offset: 768)
!2750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2751, size: 64)
!2751 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2735, line: 36, flags: DIFlagFwdDecl)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2734, file: !2735, line: 70, baseType: !2753, size: 64, offset: 832)
!2753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2734, size: 64)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2734, file: !2735, line: 72, baseType: !25, size: 32, offset: 896)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2734, file: !2735, line: 73, baseType: !25, size: 32, offset: 928)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2734, file: !2735, line: 74, baseType: !2757, size: 64, offset: 960)
!2757 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !2758, line: 150, baseType: !2759)
!2758 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2759 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2734, file: !2735, line: 77, baseType: !76, size: 16, offset: 1024)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2734, file: !2735, line: 78, baseType: !2762, size: 8, offset: 1040)
!2762 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2734, file: !2735, line: 79, baseType: !2764, size: 8, offset: 1048)
!2764 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8, elements: !2765)
!2765 = !{!2766}
!2766 = !DISubrange(count: 1)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2734, file: !2735, line: 81, baseType: !2768, size: 64, offset: 1088)
!2768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2769, size: 64)
!2769 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2735, line: 43, baseType: null)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2734, file: !2735, line: 89, baseType: !2771, size: 64, offset: 1152)
!2771 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !2758, line: 151, baseType: !2759)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2734, file: !2735, line: 91, baseType: !2773, size: 64, offset: 1216)
!2773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2774, size: 64)
!2774 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !2735, line: 37, flags: DIFlagFwdDecl)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2734, file: !2735, line: 92, baseType: !2776, size: 64, offset: 1280)
!2776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2777, size: 64)
!2777 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !2735, line: 38, flags: DIFlagFwdDecl)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2734, file: !2735, line: 93, baseType: !2753, size: 64, offset: 1344)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2734, file: !2735, line: 94, baseType: !31, size: 64, offset: 1408)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2734, file: !2735, line: 95, baseType: !77, size: 64, offset: 1472)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2734, file: !2735, line: 96, baseType: !25, size: 32, offset: 1536)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2734, file: !2735, line: 98, baseType: !2783, size: 160, offset: 1568)
!2783 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 160, elements: !2784)
!2784 = !{!2785}
!2785 = !DISubrange(count: 20)
!2786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!2787 = !{!2788, !2789, !2790, !2791, !2792, !2793}
!2788 = !DILocalVariable(name: "stream", arg: 1, scope: !2728, file: !143, line: 62, type: !2731)
!2789 = !DILocalVariable(name: "command_name", arg: 2, scope: !2728, file: !143, line: 63, type: !6)
!2790 = !DILocalVariable(name: "package", arg: 3, scope: !2728, file: !143, line: 63, type: !6)
!2791 = !DILocalVariable(name: "version", arg: 4, scope: !2728, file: !143, line: 64, type: !6)
!2792 = !DILocalVariable(name: "authors", arg: 5, scope: !2728, file: !143, line: 65, type: !2786)
!2793 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2728, file: !143, line: 65, type: !77)
!2794 = !DILocation(line: 62, column: 24, scope: !2728)
!2795 = !DILocation(line: 63, column: 30, scope: !2728)
!2796 = !DILocation(line: 63, column: 56, scope: !2728)
!2797 = !DILocation(line: 64, column: 30, scope: !2728)
!2798 = !DILocation(line: 65, column: 39, scope: !2728)
!2799 = !DILocation(line: 65, column: 55, scope: !2728)
!2800 = !DILocation(line: 67, column: 7, scope: !2801)
!2801 = distinct !DILexicalBlock(scope: !2728, file: !143, line: 67, column: 7)
!2802 = !DILocation(line: 67, column: 7, scope: !2728)
!2803 = !DILocation(line: 68, column: 5, scope: !2801)
!2804 = !DILocation(line: 70, column: 5, scope: !2801)
!2805 = !DILocation(line: 84, column: 3, scope: !2728)
!2806 = !DILocation(line: 86, column: 3, scope: !2728)
!2807 = !DILocation(line: 95, column: 3, scope: !2728)
!2808 = !DILocation(line: 99, column: 7, scope: !2809)
!2809 = distinct !DILexicalBlock(scope: !2728, file: !143, line: 96, column: 5)
!2810 = !DILocation(line: 102, column: 7, scope: !2809)
!2811 = !DILocation(line: 103, column: 7, scope: !2809)
!2812 = !DILocation(line: 106, column: 7, scope: !2809)
!2813 = !DILocation(line: 107, column: 7, scope: !2809)
!2814 = !DILocation(line: 110, column: 7, scope: !2809)
!2815 = !DILocation(line: 112, column: 7, scope: !2809)
!2816 = !DILocation(line: 117, column: 7, scope: !2809)
!2817 = !DILocation(line: 119, column: 7, scope: !2809)
!2818 = !DILocation(line: 124, column: 7, scope: !2809)
!2819 = !DILocation(line: 126, column: 7, scope: !2809)
!2820 = !DILocation(line: 131, column: 7, scope: !2809)
!2821 = !DILocation(line: 134, column: 7, scope: !2809)
!2822 = !DILocation(line: 139, column: 7, scope: !2809)
!2823 = !DILocation(line: 142, column: 7, scope: !2809)
!2824 = !DILocation(line: 147, column: 7, scope: !2809)
!2825 = !DILocation(line: 151, column: 7, scope: !2809)
!2826 = !DILocation(line: 156, column: 7, scope: !2809)
!2827 = !DILocation(line: 160, column: 7, scope: !2809)
!2828 = !DILocation(line: 167, column: 7, scope: !2809)
!2829 = !DILocation(line: 171, column: 7, scope: !2809)
!2830 = !DILocation(line: 173, column: 1, scope: !2728)
!2831 = distinct !DISubprogram(name: "version_etc_ar", scope: !143, file: !143, line: 180, type: !2832, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !139, retainedNodes: !2834)
!2832 = !DISubroutineType(types: !2833)
!2833 = !{null, !2731, !6, !6, !6, !2786}
!2834 = !{!2835, !2836, !2837, !2838, !2839, !2840}
!2835 = !DILocalVariable(name: "stream", arg: 1, scope: !2831, file: !143, line: 180, type: !2731)
!2836 = !DILocalVariable(name: "command_name", arg: 2, scope: !2831, file: !143, line: 181, type: !6)
!2837 = !DILocalVariable(name: "package", arg: 3, scope: !2831, file: !143, line: 181, type: !6)
!2838 = !DILocalVariable(name: "version", arg: 4, scope: !2831, file: !143, line: 182, type: !6)
!2839 = !DILocalVariable(name: "authors", arg: 5, scope: !2831, file: !143, line: 182, type: !2786)
!2840 = !DILocalVariable(name: "n_authors", scope: !2831, file: !143, line: 184, type: !77)
!2841 = !DILocation(line: 180, column: 23, scope: !2831)
!2842 = !DILocation(line: 181, column: 29, scope: !2831)
!2843 = !DILocation(line: 181, column: 55, scope: !2831)
!2844 = !DILocation(line: 182, column: 29, scope: !2831)
!2845 = !DILocation(line: 182, column: 59, scope: !2831)
!2846 = !DILocation(line: 184, column: 10, scope: !2831)
!2847 = !DILocation(line: 186, column: 8, scope: !2848)
!2848 = distinct !DILexicalBlock(scope: !2831, file: !143, line: 186, column: 3)
!2849 = !DILocation(line: 0, scope: !2850)
!2850 = distinct !DILexicalBlock(scope: !2848, file: !143, line: 186, column: 3)
!2851 = !DILocation(line: 186, column: 23, scope: !2850)
!2852 = !DILocation(line: 186, column: 3, scope: !2848)
!2853 = !DILocation(line: 186, column: 52, scope: !2850)
!2854 = distinct !{!2854, !2852, !2855}
!2855 = !DILocation(line: 187, column: 5, scope: !2848)
!2856 = !DILocation(line: 188, column: 3, scope: !2831)
!2857 = !DILocation(line: 189, column: 1, scope: !2831)
!2858 = distinct !DISubprogram(name: "version_etc_va", scope: !143, file: !143, line: 196, type: !2859, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !139, retainedNodes: !2868)
!2859 = !DISubroutineType(types: !2860)
!2860 = !{null, !2731, !6, !6, !6, !2861}
!2861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2862, size: 64)
!2862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !140, line: 189, size: 192, elements: !2863)
!2863 = !{!2864, !2865, !2866, !2867}
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2862, file: !140, line: 189, baseType: !42, size: 32)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2862, file: !140, line: 189, baseType: !42, size: 32, offset: 32)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2862, file: !140, line: 189, baseType: !31, size: 64, offset: 64)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2862, file: !140, line: 189, baseType: !31, size: 64, offset: 128)
!2868 = !{!2869, !2870, !2871, !2872, !2873, !2874, !2875}
!2869 = !DILocalVariable(name: "stream", arg: 1, scope: !2858, file: !143, line: 196, type: !2731)
!2870 = !DILocalVariable(name: "command_name", arg: 2, scope: !2858, file: !143, line: 197, type: !6)
!2871 = !DILocalVariable(name: "package", arg: 3, scope: !2858, file: !143, line: 197, type: !6)
!2872 = !DILocalVariable(name: "version", arg: 4, scope: !2858, file: !143, line: 198, type: !6)
!2873 = !DILocalVariable(name: "authors", arg: 5, scope: !2858, file: !143, line: 198, type: !2861)
!2874 = !DILocalVariable(name: "n_authors", scope: !2858, file: !143, line: 200, type: !77)
!2875 = !DILocalVariable(name: "authtab", scope: !2858, file: !143, line: 201, type: !2876)
!2876 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 640, elements: !86)
!2877 = !DILocation(line: 196, column: 23, scope: !2858)
!2878 = !DILocation(line: 197, column: 29, scope: !2858)
!2879 = !DILocation(line: 197, column: 55, scope: !2858)
!2880 = !DILocation(line: 198, column: 29, scope: !2858)
!2881 = !DILocation(line: 198, column: 46, scope: !2858)
!2882 = !DILocation(line: 201, column: 3, scope: !2858)
!2883 = !DILocation(line: 201, column: 15, scope: !2858)
!2884 = !DILocation(line: 200, column: 10, scope: !2858)
!2885 = !DILocation(line: 205, column: 35, scope: !2886)
!2886 = distinct !DILexicalBlock(scope: !2887, file: !143, line: 203, column: 3)
!2887 = distinct !DILexicalBlock(scope: !2858, file: !143, line: 203, column: 3)
!2888 = !DILocation(line: 205, column: 14, scope: !2886)
!2889 = !DILocation(line: 205, column: 33, scope: !2886)
!2890 = !DILocation(line: 205, column: 67, scope: !2886)
!2891 = !DILocation(line: 203, column: 3, scope: !2887)
!2892 = !DILocation(line: 0, scope: !2886)
!2893 = !DILocation(line: 208, column: 3, scope: !2858)
!2894 = !DILocation(line: 210, column: 1, scope: !2858)
!2895 = distinct !DISubprogram(name: "version_etc", scope: !143, file: !143, line: 227, type: !2896, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !139, retainedNodes: !2898)
!2896 = !DISubroutineType(types: !2897)
!2897 = !{null, !2731, !6, !6, !6, null}
!2898 = !{!2899, !2900, !2901, !2902, !2903}
!2899 = !DILocalVariable(name: "stream", arg: 1, scope: !2895, file: !143, line: 227, type: !2731)
!2900 = !DILocalVariable(name: "command_name", arg: 2, scope: !2895, file: !143, line: 228, type: !6)
!2901 = !DILocalVariable(name: "package", arg: 3, scope: !2895, file: !143, line: 228, type: !6)
!2902 = !DILocalVariable(name: "version", arg: 4, scope: !2895, file: !143, line: 229, type: !6)
!2903 = !DILocalVariable(name: "authors", scope: !2895, file: !143, line: 231, type: !2904)
!2904 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2905, line: 52, baseType: !2906)
!2905 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2906 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2907, line: 48, baseType: !2908)
!2907 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2908 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !140, line: 231, baseType: !2909)
!2909 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2862, size: 192, elements: !2765)
!2910 = !DILocation(line: 227, column: 20, scope: !2895)
!2911 = !DILocation(line: 228, column: 26, scope: !2895)
!2912 = !DILocation(line: 228, column: 52, scope: !2895)
!2913 = !DILocation(line: 229, column: 26, scope: !2895)
!2914 = !DILocation(line: 231, column: 3, scope: !2895)
!2915 = !DILocation(line: 231, column: 11, scope: !2895)
!2916 = !DILocation(line: 233, column: 3, scope: !2895)
!2917 = !DILocation(line: 234, column: 3, scope: !2895)
!2918 = !DILocation(line: 235, column: 3, scope: !2895)
!2919 = !DILocation(line: 236, column: 1, scope: !2895)
!2920 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !143, file: !143, line: 239, type: !915, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !139, retainedNodes: !4)
!2921 = !DILocation(line: 245, column: 3, scope: !2920)
!2922 = !DILocation(line: 251, column: 3, scope: !2920)
!2923 = !DILocation(line: 256, column: 3, scope: !2920)
!2924 = !DILocation(line: 258, column: 1, scope: !2920)
!2925 = distinct !DISubprogram(name: "xnmalloc", scope: !151, file: !151, line: 99, type: !2926, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !147, retainedNodes: !2928)
!2926 = !DISubroutineType(types: !2927)
!2927 = !{!31, !77, !77}
!2928 = !{!2929, !2930}
!2929 = !DILocalVariable(name: "n", arg: 1, scope: !2925, file: !151, line: 99, type: !77)
!2930 = !DILocalVariable(name: "s", arg: 2, scope: !2925, file: !151, line: 99, type: !77)
!2931 = !DILocation(line: 99, column: 18, scope: !2925)
!2932 = !DILocation(line: 99, column: 28, scope: !2925)
!2933 = !DILocation(line: 101, column: 7, scope: !2934)
!2934 = distinct !DILexicalBlock(scope: !2925, file: !151, line: 101, column: 7)
!2935 = !DILocation(line: 101, column: 7, scope: !2925)
!2936 = !DILocation(line: 102, column: 5, scope: !2934)
!2937 = !DILocation(line: 103, column: 21, scope: !2925)
!2938 = !DILocalVariable(name: "n", arg: 1, scope: !2939, file: !2940, line: 39, type: !77)
!2939 = distinct !DISubprogram(name: "xmalloc", scope: !2940, file: !2940, line: 39, type: !2941, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !147, retainedNodes: !2943)
!2940 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2941 = !DISubroutineType(types: !2942)
!2942 = !{!31, !77}
!2943 = !{!2938, !2944}
!2944 = !DILocalVariable(name: "p", scope: !2939, file: !2940, line: 41, type: !31)
!2945 = !DILocation(line: 39, column: 17, scope: !2939, inlinedAt: !2946)
!2946 = distinct !DILocation(line: 103, column: 10, scope: !2925)
!2947 = !DILocation(line: 41, column: 13, scope: !2939, inlinedAt: !2946)
!2948 = !DILocation(line: 41, column: 9, scope: !2939, inlinedAt: !2946)
!2949 = !DILocation(line: 42, column: 8, scope: !2950, inlinedAt: !2946)
!2950 = distinct !DILexicalBlock(scope: !2939, file: !2940, line: 42, column: 7)
!2951 = !DILocation(line: 42, column: 15, scope: !2950, inlinedAt: !2946)
!2952 = !DILocation(line: 42, column: 10, scope: !2950, inlinedAt: !2946)
!2953 = !DILocation(line: 43, column: 5, scope: !2950, inlinedAt: !2946)
!2954 = !DILocation(line: 103, column: 3, scope: !2925)
!2955 = !DILocation(line: 39, column: 17, scope: !2939)
!2956 = !DILocation(line: 41, column: 13, scope: !2939)
!2957 = !DILocation(line: 41, column: 9, scope: !2939)
!2958 = !DILocation(line: 42, column: 8, scope: !2950)
!2959 = !DILocation(line: 42, column: 15, scope: !2950)
!2960 = !DILocation(line: 42, column: 10, scope: !2950)
!2961 = !DILocation(line: 43, column: 5, scope: !2950)
!2962 = !DILocation(line: 44, column: 3, scope: !2939)
!2963 = distinct !DISubprogram(name: "xnrealloc", scope: !151, file: !151, line: 112, type: !2964, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: true, unit: !147, retainedNodes: !2966)
!2964 = !DISubroutineType(types: !2965)
!2965 = !{!31, !31, !77, !77}
!2966 = !{!2967, !2968, !2969}
!2967 = !DILocalVariable(name: "p", arg: 1, scope: !2963, file: !151, line: 112, type: !31)
!2968 = !DILocalVariable(name: "n", arg: 2, scope: !2963, file: !151, line: 112, type: !77)
!2969 = !DILocalVariable(name: "s", arg: 3, scope: !2963, file: !151, line: 112, type: !77)
!2970 = !DILocation(line: 112, column: 18, scope: !2963)
!2971 = !DILocation(line: 112, column: 28, scope: !2963)
!2972 = !DILocation(line: 112, column: 38, scope: !2963)
!2973 = !DILocation(line: 114, column: 7, scope: !2974)
!2974 = distinct !DILexicalBlock(scope: !2963, file: !151, line: 114, column: 7)
!2975 = !DILocation(line: 114, column: 7, scope: !2963)
!2976 = !DILocation(line: 115, column: 5, scope: !2974)
!2977 = !DILocation(line: 116, column: 25, scope: !2963)
!2978 = !DILocalVariable(name: "p", arg: 1, scope: !2979, file: !2940, line: 51, type: !31)
!2979 = distinct !DISubprogram(name: "xrealloc", scope: !2940, file: !2940, line: 51, type: !2980, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !147, retainedNodes: !2982)
!2980 = !DISubroutineType(types: !2981)
!2981 = !{!31, !31, !77}
!2982 = !{!2978, !2983}
!2983 = !DILocalVariable(name: "n", arg: 2, scope: !2979, file: !2940, line: 51, type: !77)
!2984 = !DILocation(line: 51, column: 17, scope: !2979, inlinedAt: !2985)
!2985 = distinct !DILocation(line: 116, column: 10, scope: !2963)
!2986 = !DILocation(line: 51, column: 27, scope: !2979, inlinedAt: !2985)
!2987 = !DILocation(line: 53, column: 8, scope: !2988, inlinedAt: !2985)
!2988 = distinct !DILexicalBlock(scope: !2979, file: !2940, line: 53, column: 7)
!2989 = !DILocation(line: 53, column: 13, scope: !2988, inlinedAt: !2985)
!2990 = !DILocation(line: 53, column: 10, scope: !2988, inlinedAt: !2985)
!2991 = !DILocation(line: 57, column: 7, scope: !2992, inlinedAt: !2985)
!2992 = distinct !DILexicalBlock(scope: !2988, file: !2940, line: 54, column: 5)
!2993 = !DILocation(line: 58, column: 7, scope: !2992, inlinedAt: !2985)
!2994 = !DILocation(line: 61, column: 7, scope: !2979, inlinedAt: !2985)
!2995 = !DILocation(line: 62, column: 8, scope: !2996, inlinedAt: !2985)
!2996 = distinct !DILexicalBlock(scope: !2979, file: !2940, line: 62, column: 7)
!2997 = !DILocation(line: 62, column: 13, scope: !2996, inlinedAt: !2985)
!2998 = !DILocation(line: 62, column: 10, scope: !2996, inlinedAt: !2985)
!2999 = !DILocation(line: 63, column: 5, scope: !2996, inlinedAt: !2985)
!3000 = !DILocation(line: 0, scope: !2979, inlinedAt: !2985)
!3001 = !DILocation(line: 116, column: 3, scope: !2963)
!3002 = !DILocation(line: 51, column: 17, scope: !2979)
!3003 = !DILocation(line: 51, column: 27, scope: !2979)
!3004 = !DILocation(line: 53, column: 8, scope: !2988)
!3005 = !DILocation(line: 53, column: 13, scope: !2988)
!3006 = !DILocation(line: 53, column: 10, scope: !2988)
!3007 = !DILocation(line: 57, column: 7, scope: !2992)
!3008 = !DILocation(line: 58, column: 7, scope: !2992)
!3009 = !DILocation(line: 61, column: 7, scope: !2979)
!3010 = !DILocation(line: 62, column: 8, scope: !2996)
!3011 = !DILocation(line: 62, column: 13, scope: !2996)
!3012 = !DILocation(line: 62, column: 10, scope: !2996)
!3013 = !DILocation(line: 63, column: 5, scope: !2996)
!3014 = !DILocation(line: 0, scope: !2979)
!3015 = !DILocation(line: 65, column: 1, scope: !2979)
!3016 = !DILocation(line: 174, column: 19, scope: !152)
!3017 = !DILocation(line: 174, column: 30, scope: !152)
!3018 = !DILocation(line: 174, column: 41, scope: !152)
!3019 = !DILocation(line: 176, column: 14, scope: !152)
!3020 = !DILocation(line: 176, column: 10, scope: !152)
!3021 = !DILocation(line: 178, column: 9, scope: !3022)
!3022 = distinct !DILexicalBlock(scope: !152, file: !151, line: 178, column: 7)
!3023 = !DILocation(line: 178, column: 7, scope: !152)
!3024 = !DILocation(line: 180, column: 13, scope: !3025)
!3025 = distinct !DILexicalBlock(scope: !3026, file: !151, line: 180, column: 11)
!3026 = distinct !DILexicalBlock(scope: !3022, file: !151, line: 179, column: 5)
!3027 = !DILocation(line: 180, column: 11, scope: !3026)
!3028 = !DILocation(line: 188, column: 30, scope: !3029)
!3029 = distinct !DILexicalBlock(scope: !3025, file: !151, line: 181, column: 9)
!3030 = !DILocation(line: 189, column: 16, scope: !3029)
!3031 = !DILocation(line: 189, column: 13, scope: !3029)
!3032 = !DILocation(line: 190, column: 9, scope: !3029)
!3033 = !DILocation(line: 0, scope: !3029)
!3034 = !DILocation(line: 191, column: 11, scope: !3035)
!3035 = distinct !DILexicalBlock(scope: !3026, file: !151, line: 191, column: 11)
!3036 = !DILocation(line: 191, column: 11, scope: !3026)
!3037 = !DILocation(line: 206, column: 7, scope: !152)
!3038 = !DILocation(line: 207, column: 25, scope: !152)
!3039 = !DILocation(line: 51, column: 17, scope: !2979, inlinedAt: !3040)
!3040 = distinct !DILocation(line: 207, column: 10, scope: !152)
!3041 = !DILocation(line: 51, column: 27, scope: !2979, inlinedAt: !3040)
!3042 = !DILocation(line: 53, column: 10, scope: !2988, inlinedAt: !3040)
!3043 = !DILocation(line: 192, column: 9, scope: !3035)
!3044 = !DILocation(line: 200, column: 69, scope: !3045)
!3045 = distinct !DILexicalBlock(scope: !3046, file: !151, line: 200, column: 11)
!3046 = distinct !DILexicalBlock(scope: !3022, file: !151, line: 195, column: 5)
!3047 = !DILocation(line: 201, column: 11, scope: !3045)
!3048 = !DILocation(line: 200, column: 11, scope: !3046)
!3049 = !DILocation(line: 202, column: 9, scope: !3045)
!3050 = !DILocation(line: 203, column: 14, scope: !3046)
!3051 = !DILocation(line: 203, column: 18, scope: !3046)
!3052 = !DILocation(line: 203, column: 9, scope: !3046)
!3053 = !DILocation(line: 53, column: 8, scope: !2988, inlinedAt: !3040)
!3054 = !DILocation(line: 57, column: 7, scope: !2992, inlinedAt: !3040)
!3055 = !DILocation(line: 58, column: 7, scope: !2992, inlinedAt: !3040)
!3056 = !DILocation(line: 61, column: 7, scope: !2979, inlinedAt: !3040)
!3057 = !DILocation(line: 62, column: 8, scope: !2996, inlinedAt: !3040)
!3058 = !DILocation(line: 62, column: 13, scope: !2996, inlinedAt: !3040)
!3059 = !DILocation(line: 62, column: 10, scope: !2996, inlinedAt: !3040)
!3060 = !DILocation(line: 63, column: 5, scope: !2996, inlinedAt: !3040)
!3061 = !DILocation(line: 0, scope: !2979, inlinedAt: !3040)
!3062 = !DILocation(line: 207, column: 3, scope: !152)
!3063 = distinct !DISubprogram(name: "xcharalloc", scope: !151, file: !151, line: 216, type: !2013, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !147, retainedNodes: !3064)
!3064 = !{!3065}
!3065 = !DILocalVariable(name: "n", arg: 1, scope: !3063, file: !151, line: 216, type: !77)
!3066 = !DILocation(line: 216, column: 20, scope: !3063)
!3067 = !DILocation(line: 39, column: 17, scope: !2939, inlinedAt: !3068)
!3068 = distinct !DILocation(line: 218, column: 10, scope: !3063)
!3069 = !DILocation(line: 41, column: 13, scope: !2939, inlinedAt: !3068)
!3070 = !DILocation(line: 41, column: 9, scope: !2939, inlinedAt: !3068)
!3071 = !DILocation(line: 42, column: 8, scope: !2950, inlinedAt: !3068)
!3072 = !DILocation(line: 42, column: 15, scope: !2950, inlinedAt: !3068)
!3073 = !DILocation(line: 42, column: 10, scope: !2950, inlinedAt: !3068)
!3074 = !DILocation(line: 43, column: 5, scope: !2950, inlinedAt: !3068)
!3075 = !DILocation(line: 218, column: 3, scope: !3063)
!3076 = distinct !DISubprogram(name: "x2realloc", scope: !2940, file: !2940, line: 74, type: !3077, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !147, retainedNodes: !3079)
!3077 = !DISubroutineType(types: !3078)
!3078 = !{!31, !31, !155}
!3079 = !{!3080, !3081}
!3080 = !DILocalVariable(name: "p", arg: 1, scope: !3076, file: !2940, line: 74, type: !31)
!3081 = !DILocalVariable(name: "pn", arg: 2, scope: !3076, file: !2940, line: 74, type: !155)
!3082 = !DILocation(line: 74, column: 18, scope: !3076)
!3083 = !DILocation(line: 74, column: 29, scope: !3076)
!3084 = !DILocation(line: 174, column: 19, scope: !152, inlinedAt: !3085)
!3085 = distinct !DILocation(line: 76, column: 10, scope: !3076)
!3086 = !DILocation(line: 174, column: 30, scope: !152, inlinedAt: !3085)
!3087 = !DILocation(line: 174, column: 41, scope: !152, inlinedAt: !3085)
!3088 = !DILocation(line: 176, column: 14, scope: !152, inlinedAt: !3085)
!3089 = !DILocation(line: 176, column: 10, scope: !152, inlinedAt: !3085)
!3090 = !DILocation(line: 178, column: 9, scope: !3022, inlinedAt: !3085)
!3091 = !DILocation(line: 178, column: 7, scope: !152, inlinedAt: !3085)
!3092 = !DILocation(line: 180, column: 13, scope: !3025, inlinedAt: !3085)
!3093 = !DILocation(line: 180, column: 11, scope: !3026, inlinedAt: !3085)
!3094 = !DILocation(line: 191, column: 11, scope: !3035, inlinedAt: !3085)
!3095 = !DILocation(line: 191, column: 11, scope: !3026, inlinedAt: !3085)
!3096 = !DILocation(line: 206, column: 7, scope: !152, inlinedAt: !3085)
!3097 = !DILocation(line: 51, column: 17, scope: !2979, inlinedAt: !3098)
!3098 = distinct !DILocation(line: 207, column: 10, scope: !152, inlinedAt: !3085)
!3099 = !DILocation(line: 51, column: 27, scope: !2979, inlinedAt: !3098)
!3100 = !DILocation(line: 53, column: 10, scope: !2988, inlinedAt: !3098)
!3101 = !DILocation(line: 192, column: 9, scope: !3035, inlinedAt: !3085)
!3102 = !DILocation(line: 201, column: 11, scope: !3045, inlinedAt: !3085)
!3103 = !DILocation(line: 200, column: 11, scope: !3046, inlinedAt: !3085)
!3104 = !DILocation(line: 202, column: 9, scope: !3045, inlinedAt: !3085)
!3105 = !DILocation(line: 203, column: 14, scope: !3046, inlinedAt: !3085)
!3106 = !DILocation(line: 203, column: 18, scope: !3046, inlinedAt: !3085)
!3107 = !DILocation(line: 203, column: 9, scope: !3046, inlinedAt: !3085)
!3108 = !DILocation(line: 53, column: 8, scope: !2988, inlinedAt: !3098)
!3109 = !DILocation(line: 57, column: 7, scope: !2992, inlinedAt: !3098)
!3110 = !DILocation(line: 58, column: 7, scope: !2992, inlinedAt: !3098)
!3111 = !DILocation(line: 61, column: 7, scope: !2979, inlinedAt: !3098)
!3112 = !DILocation(line: 62, column: 8, scope: !2996, inlinedAt: !3098)
!3113 = !DILocation(line: 62, column: 13, scope: !2996, inlinedAt: !3098)
!3114 = !DILocation(line: 62, column: 10, scope: !2996, inlinedAt: !3098)
!3115 = !DILocation(line: 63, column: 5, scope: !2996, inlinedAt: !3098)
!3116 = !DILocation(line: 0, scope: !2979, inlinedAt: !3098)
!3117 = !DILocation(line: 76, column: 3, scope: !3076)
!3118 = distinct !DISubprogram(name: "xzalloc", scope: !2940, file: !2940, line: 84, type: !2941, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !147, retainedNodes: !3119)
!3119 = !{!3120}
!3120 = !DILocalVariable(name: "s", arg: 1, scope: !3118, file: !2940, line: 84, type: !77)
!3121 = !DILocation(line: 84, column: 17, scope: !3118)
!3122 = !DILocation(line: 39, column: 17, scope: !2939, inlinedAt: !3123)
!3123 = distinct !DILocation(line: 86, column: 18, scope: !3118)
!3124 = !DILocation(line: 41, column: 13, scope: !2939, inlinedAt: !3123)
!3125 = !DILocation(line: 41, column: 9, scope: !2939, inlinedAt: !3123)
!3126 = !DILocation(line: 42, column: 8, scope: !2950, inlinedAt: !3123)
!3127 = !DILocation(line: 42, column: 15, scope: !2950, inlinedAt: !3123)
!3128 = !DILocation(line: 42, column: 10, scope: !2950, inlinedAt: !3123)
!3129 = !DILocation(line: 43, column: 5, scope: !2950, inlinedAt: !3123)
!3130 = !DILocation(line: 86, column: 10, scope: !3118)
!3131 = !DILocation(line: 86, column: 3, scope: !3118)
!3132 = distinct !DISubprogram(name: "xcalloc", scope: !2940, file: !2940, line: 93, type: !2926, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !147, retainedNodes: !3133)
!3133 = !{!3134, !3135, !3136}
!3134 = !DILocalVariable(name: "n", arg: 1, scope: !3132, file: !2940, line: 93, type: !77)
!3135 = !DILocalVariable(name: "s", arg: 2, scope: !3132, file: !2940, line: 93, type: !77)
!3136 = !DILocalVariable(name: "p", scope: !3132, file: !2940, line: 95, type: !31)
!3137 = !DILocation(line: 93, column: 17, scope: !3132)
!3138 = !DILocation(line: 93, column: 27, scope: !3132)
!3139 = !DILocation(line: 100, column: 7, scope: !3140)
!3140 = distinct !DILexicalBlock(scope: !3132, file: !2940, line: 100, column: 7)
!3141 = !DILocation(line: 101, column: 7, scope: !3140)
!3142 = !DILocation(line: 101, column: 18, scope: !3140)
!3143 = !DILocation(line: 95, column: 9, scope: !3132)
!3144 = !DILocation(line: 101, column: 16, scope: !3140)
!3145 = !DILocation(line: 100, column: 7, scope: !3132)
!3146 = !DILocation(line: 102, column: 5, scope: !3140)
!3147 = !DILocation(line: 103, column: 3, scope: !3132)
!3148 = distinct !DISubprogram(name: "xmemdup", scope: !2940, file: !2940, line: 111, type: !3149, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !147, retainedNodes: !3153)
!3149 = !DISubroutineType(types: !3150)
!3150 = !{!31, !3151, !77}
!3151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3152, size: 64)
!3152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3153 = !{!3154, !3155}
!3154 = !DILocalVariable(name: "p", arg: 1, scope: !3148, file: !2940, line: 111, type: !3151)
!3155 = !DILocalVariable(name: "s", arg: 2, scope: !3148, file: !2940, line: 111, type: !77)
!3156 = !DILocation(line: 111, column: 22, scope: !3148)
!3157 = !DILocation(line: 111, column: 32, scope: !3148)
!3158 = !DILocation(line: 39, column: 17, scope: !2939, inlinedAt: !3159)
!3159 = distinct !DILocation(line: 113, column: 18, scope: !3148)
!3160 = !DILocation(line: 41, column: 13, scope: !2939, inlinedAt: !3159)
!3161 = !DILocation(line: 41, column: 9, scope: !2939, inlinedAt: !3159)
!3162 = !DILocation(line: 42, column: 8, scope: !2950, inlinedAt: !3159)
!3163 = !DILocation(line: 42, column: 15, scope: !2950, inlinedAt: !3159)
!3164 = !DILocation(line: 42, column: 10, scope: !2950, inlinedAt: !3159)
!3165 = !DILocation(line: 43, column: 5, scope: !2950, inlinedAt: !3159)
!3166 = !DILocation(line: 113, column: 10, scope: !3148)
!3167 = !DILocation(line: 113, column: 3, scope: !3148)
!3168 = distinct !DISubprogram(name: "xstrdup", scope: !2940, file: !2940, line: 119, type: !2218, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !147, retainedNodes: !3169)
!3169 = !{!3170}
!3170 = !DILocalVariable(name: "string", arg: 1, scope: !3168, file: !2940, line: 119, type: !6)
!3171 = !DILocation(line: 119, column: 22, scope: !3168)
!3172 = !DILocation(line: 121, column: 27, scope: !3168)
!3173 = !DILocation(line: 121, column: 43, scope: !3168)
!3174 = !DILocation(line: 111, column: 22, scope: !3148, inlinedAt: !3175)
!3175 = distinct !DILocation(line: 121, column: 10, scope: !3168)
!3176 = !DILocation(line: 111, column: 32, scope: !3148, inlinedAt: !3175)
!3177 = !DILocation(line: 39, column: 17, scope: !2939, inlinedAt: !3178)
!3178 = distinct !DILocation(line: 113, column: 18, scope: !3148, inlinedAt: !3175)
!3179 = !DILocation(line: 41, column: 13, scope: !2939, inlinedAt: !3178)
!3180 = !DILocation(line: 41, column: 9, scope: !2939, inlinedAt: !3178)
!3181 = !DILocation(line: 42, column: 8, scope: !2950, inlinedAt: !3178)
!3182 = !DILocation(line: 42, column: 15, scope: !2950, inlinedAt: !3178)
!3183 = !DILocation(line: 42, column: 10, scope: !2950, inlinedAt: !3178)
!3184 = !DILocation(line: 43, column: 5, scope: !2950, inlinedAt: !3178)
!3185 = !DILocation(line: 113, column: 10, scope: !3148, inlinedAt: !3175)
!3186 = !DILocation(line: 121, column: 3, scope: !3168)
!3187 = distinct !DISubprogram(name: "xalloc_die", scope: !3188, file: !3188, line: 32, type: !915, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !164, retainedNodes: !4)
!3188 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3189 = !DILocation(line: 34, column: 10, scope: !3187)
!3190 = !DILocation(line: 34, column: 33, scope: !3187)
!3191 = !DILocation(line: 34, column: 3, scope: !3187)
!3192 = !DILocation(line: 40, column: 3, scope: !3187)
!3193 = distinct !DISubprogram(name: "rpl_calloc", scope: !3194, file: !3194, line: 42, type: !2926, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !166, retainedNodes: !3195)
!3194 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3195 = !{!3196, !3197, !3198, !3199}
!3196 = !DILocalVariable(name: "n", arg: 1, scope: !3193, file: !3194, line: 42, type: !77)
!3197 = !DILocalVariable(name: "s", arg: 2, scope: !3193, file: !3194, line: 42, type: !77)
!3198 = !DILocalVariable(name: "result", scope: !3193, file: !3194, line: 44, type: !31)
!3199 = !DILocalVariable(name: "bytes", scope: !3200, file: !3194, line: 56, type: !77)
!3200 = distinct !DILexicalBlock(scope: !3201, file: !3194, line: 53, column: 5)
!3201 = distinct !DILexicalBlock(scope: !3193, file: !3194, line: 47, column: 7)
!3202 = !DILocation(line: 42, column: 20, scope: !3193)
!3203 = !DILocation(line: 42, column: 30, scope: !3193)
!3204 = !DILocation(line: 47, column: 9, scope: !3201)
!3205 = !DILocation(line: 47, column: 19, scope: !3201)
!3206 = !DILocation(line: 47, column: 14, scope: !3201)
!3207 = !DILocation(line: 56, column: 24, scope: !3200)
!3208 = !DILocation(line: 56, column: 14, scope: !3200)
!3209 = !DILocation(line: 57, column: 17, scope: !3210)
!3210 = distinct !DILexicalBlock(scope: !3200, file: !3194, line: 57, column: 11)
!3211 = !DILocation(line: 57, column: 21, scope: !3210)
!3212 = !DILocation(line: 57, column: 11, scope: !3200)
!3213 = !DILocation(line: 59, column: 11, scope: !3214)
!3214 = distinct !DILexicalBlock(scope: !3210, file: !3194, line: 58, column: 9)
!3215 = !DILocation(line: 59, column: 17, scope: !3214)
!3216 = !DILocation(line: 65, column: 12, scope: !3193)
!3217 = !DILocation(line: 44, column: 9, scope: !3193)
!3218 = !DILocation(line: 72, column: 3, scope: !3193)
!3219 = !DILocation(line: 0, scope: !3214)
!3220 = !DILocation(line: 73, column: 1, scope: !3193)
!3221 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !3222, file: !3222, line: 385, type: !3223, isLocal: false, isDefinition: true, scopeLine: 386, flags: DIFlagPrototyped, isOptimized: true, unit: !168, retainedNodes: !3237)
!3222 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3223 = !DISubroutineType(types: !3224)
!3224 = !{!77, !3225, !6, !77, !3226}
!3225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 64)
!3226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3227, size: 64)
!3227 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1178, line: 6, baseType: !3228)
!3228 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1180, line: 21, baseType: !3229)
!3229 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1180, line: 13, size: 64, elements: !3230)
!3230 = !{!3231, !3232}
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3229, file: !1180, line: 15, baseType: !25, size: 32)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3229, file: !1180, line: 20, baseType: !3233, size: 32, offset: 32)
!3233 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3229, file: !1180, line: 16, size: 32, elements: !3234)
!3234 = !{!3235, !3236}
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3233, file: !1180, line: 18, baseType: !42, size: 32)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3233, file: !1180, line: 19, baseType: !1189, size: 32)
!3237 = !{!3238, !3239, !3240, !3241, !3242, !3243, !3244}
!3238 = !DILocalVariable(name: "pwc", arg: 1, scope: !3221, file: !3222, line: 385, type: !3225)
!3239 = !DILocalVariable(name: "s", arg: 2, scope: !3221, file: !3222, line: 385, type: !6)
!3240 = !DILocalVariable(name: "n", arg: 3, scope: !3221, file: !3222, line: 385, type: !77)
!3241 = !DILocalVariable(name: "ps", arg: 4, scope: !3221, file: !3222, line: 385, type: !3226)
!3242 = !DILocalVariable(name: "ret", scope: !3221, file: !3222, line: 387, type: !77)
!3243 = !DILocalVariable(name: "wc", scope: !3221, file: !3222, line: 388, type: !1194)
!3244 = !DILocalVariable(name: "uc", scope: !3245, file: !3222, line: 449, type: !138)
!3245 = distinct !DILexicalBlock(scope: !3246, file: !3222, line: 448, column: 5)
!3246 = distinct !DILexicalBlock(scope: !3221, file: !3222, line: 447, column: 7)
!3247 = !DILocation(line: 385, column: 23, scope: !3221)
!3248 = !DILocation(line: 385, column: 40, scope: !3221)
!3249 = !DILocation(line: 385, column: 50, scope: !3221)
!3250 = !DILocation(line: 385, column: 64, scope: !3221)
!3251 = !DILocation(line: 388, column: 3, scope: !3221)
!3252 = !DILocation(line: 404, column: 9, scope: !3253)
!3253 = distinct !DILexicalBlock(scope: !3221, file: !3222, line: 404, column: 7)
!3254 = !DILocation(line: 404, column: 7, scope: !3221)
!3255 = !DILocation(line: 439, column: 9, scope: !3221)
!3256 = !DILocation(line: 387, column: 10, scope: !3221)
!3257 = !DILocation(line: 447, column: 19, scope: !3246)
!3258 = !DILocation(line: 447, column: 31, scope: !3246)
!3259 = !DILocation(line: 447, column: 26, scope: !3246)
!3260 = !DILocation(line: 447, column: 41, scope: !3246)
!3261 = !DILocation(line: 447, column: 7, scope: !3221)
!3262 = !DILocation(line: 449, column: 26, scope: !3245)
!3263 = !DILocation(line: 449, column: 21, scope: !3245)
!3264 = !DILocation(line: 450, column: 14, scope: !3245)
!3265 = !DILocation(line: 450, column: 12, scope: !3245)
!3266 = !DILocation(line: 0, scope: !3245)
!3267 = !DILocation(line: 456, column: 1, scope: !3221)
!3268 = distinct !DISubprogram(name: "close_stream", scope: !3269, file: !3269, line: 56, type: !3270, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !171, retainedNodes: !3306)
!3269 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3270 = !DISubroutineType(types: !3271)
!3271 = !{!25, !3272}
!3272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3273, size: 64)
!3273 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2733, line: 7, baseType: !3274)
!3274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2735, line: 49, size: 1728, elements: !3275)
!3275 = !{!3276, !3277, !3278, !3279, !3280, !3281, !3282, !3283, !3284, !3285, !3286, !3287, !3288, !3289, !3291, !3292, !3293, !3294, !3295, !3296, !3297, !3298, !3299, !3300, !3301, !3302, !3303, !3304, !3305}
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3274, file: !2735, line: 51, baseType: !25, size: 32)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3274, file: !2735, line: 54, baseType: !32, size: 64, offset: 64)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3274, file: !2735, line: 55, baseType: !32, size: 64, offset: 128)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3274, file: !2735, line: 56, baseType: !32, size: 64, offset: 192)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3274, file: !2735, line: 57, baseType: !32, size: 64, offset: 256)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3274, file: !2735, line: 58, baseType: !32, size: 64, offset: 320)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3274, file: !2735, line: 59, baseType: !32, size: 64, offset: 384)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3274, file: !2735, line: 60, baseType: !32, size: 64, offset: 448)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3274, file: !2735, line: 61, baseType: !32, size: 64, offset: 512)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3274, file: !2735, line: 64, baseType: !32, size: 64, offset: 576)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3274, file: !2735, line: 65, baseType: !32, size: 64, offset: 640)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3274, file: !2735, line: 66, baseType: !32, size: 64, offset: 704)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3274, file: !2735, line: 68, baseType: !2750, size: 64, offset: 768)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3274, file: !2735, line: 70, baseType: !3290, size: 64, offset: 832)
!3290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3274, size: 64)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3274, file: !2735, line: 72, baseType: !25, size: 32, offset: 896)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3274, file: !2735, line: 73, baseType: !25, size: 32, offset: 928)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3274, file: !2735, line: 74, baseType: !2757, size: 64, offset: 960)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3274, file: !2735, line: 77, baseType: !76, size: 16, offset: 1024)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3274, file: !2735, line: 78, baseType: !2762, size: 8, offset: 1040)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3274, file: !2735, line: 79, baseType: !2764, size: 8, offset: 1048)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3274, file: !2735, line: 81, baseType: !2768, size: 64, offset: 1088)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3274, file: !2735, line: 89, baseType: !2771, size: 64, offset: 1152)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3274, file: !2735, line: 91, baseType: !2773, size: 64, offset: 1216)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3274, file: !2735, line: 92, baseType: !2776, size: 64, offset: 1280)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3274, file: !2735, line: 93, baseType: !3290, size: 64, offset: 1344)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3274, file: !2735, line: 94, baseType: !31, size: 64, offset: 1408)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3274, file: !2735, line: 95, baseType: !77, size: 64, offset: 1472)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3274, file: !2735, line: 96, baseType: !25, size: 32, offset: 1536)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3274, file: !2735, line: 98, baseType: !2783, size: 160, offset: 1568)
!3306 = !{!3307, !3308, !3310, !3311}
!3307 = !DILocalVariable(name: "stream", arg: 1, scope: !3268, file: !3269, line: 56, type: !3272)
!3308 = !DILocalVariable(name: "some_pending", scope: !3268, file: !3269, line: 58, type: !3309)
!3309 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!3310 = !DILocalVariable(name: "prev_fail", scope: !3268, file: !3269, line: 59, type: !3309)
!3311 = !DILocalVariable(name: "fclose_fail", scope: !3268, file: !3269, line: 60, type: !3309)
!3312 = !DILocation(line: 56, column: 21, scope: !3268)
!3313 = !DILocation(line: 58, column: 30, scope: !3268)
!3314 = !DILocalVariable(name: "__stream", arg: 1, scope: !3315, file: !852, line: 135, type: !3272)
!3315 = distinct !DISubprogram(name: "ferror_unlocked", scope: !852, file: !852, line: 135, type: !3270, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !171, retainedNodes: !3316)
!3316 = !{!3314}
!3317 = !DILocation(line: 135, column: 1, scope: !3315, inlinedAt: !3318)
!3318 = distinct !DILocation(line: 59, column: 27, scope: !3268)
!3319 = !DILocation(line: 137, column: 10, scope: !3315, inlinedAt: !3318)
!3320 = !{!860, !861, i64 0}
!3321 = !DILocation(line: 59, column: 43, scope: !3268)
!3322 = !DILocation(line: 60, column: 29, scope: !3268)
!3323 = !DILocation(line: 60, column: 45, scope: !3268)
!3324 = !DILocation(line: 70, column: 17, scope: !3325)
!3325 = distinct !DILexicalBlock(scope: !3268, file: !3269, line: 70, column: 7)
!3326 = !DILocation(line: 58, column: 50, scope: !3268)
!3327 = !DILocation(line: 70, column: 33, scope: !3325)
!3328 = !DILocation(line: 70, column: 53, scope: !3325)
!3329 = !DILocation(line: 70, column: 59, scope: !3325)
!3330 = !DILocation(line: 70, column: 7, scope: !3268)
!3331 = !DILocation(line: 72, column: 11, scope: !3332)
!3332 = distinct !DILexicalBlock(scope: !3325, file: !3269, line: 71, column: 5)
!3333 = !DILocation(line: 73, column: 9, scope: !3334)
!3334 = distinct !DILexicalBlock(scope: !3332, file: !3269, line: 72, column: 11)
!3335 = !DILocation(line: 73, column: 15, scope: !3334)
!3336 = !DILocation(line: 0, scope: !3268)
!3337 = !DILocation(line: 78, column: 1, scope: !3268)
!3338 = distinct !DISubprogram(name: "hard_locale", scope: !3339, file: !3339, line: 38, type: !3340, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !3342)
!3339 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3340 = !DISubroutineType(types: !3341)
!3341 = !{!17, !25}
!3342 = !{!3343, !3344, !3345}
!3343 = !DILocalVariable(name: "category", arg: 1, scope: !3338, file: !3339, line: 38, type: !25)
!3344 = !DILocalVariable(name: "hard", scope: !3338, file: !3339, line: 40, type: !17)
!3345 = !DILocalVariable(name: "p", scope: !3338, file: !3339, line: 41, type: !6)
!3346 = !DILocation(line: 38, column: 18, scope: !3338)
!3347 = !DILocation(line: 40, column: 8, scope: !3338)
!3348 = !DILocation(line: 41, column: 19, scope: !3338)
!3349 = !DILocation(line: 41, column: 15, scope: !3338)
!3350 = !DILocation(line: 43, column: 7, scope: !3351)
!3351 = distinct !DILexicalBlock(scope: !3338, file: !3339, line: 43, column: 7)
!3352 = !DILocation(line: 43, column: 7, scope: !3338)
!3353 = !DILocation(line: 47, column: 15, scope: !3354)
!3354 = distinct !DILexicalBlock(scope: !3355, file: !3339, line: 47, column: 15)
!3355 = distinct !DILexicalBlock(scope: !3356, file: !3339, line: 46, column: 9)
!3356 = distinct !DILexicalBlock(scope: !3357, file: !3339, line: 45, column: 11)
!3357 = distinct !DILexicalBlock(scope: !3351, file: !3339, line: 44, column: 5)
!3358 = !DILocation(line: 47, column: 31, scope: !3354)
!3359 = !DILocation(line: 47, column: 36, scope: !3354)
!3360 = !DILocation(line: 47, column: 39, scope: !3354)
!3361 = !DILocation(line: 47, column: 59, scope: !3354)
!3362 = !DILocation(line: 47, column: 15, scope: !3355)
!3363 = !DILocation(line: 48, column: 13, scope: !3354)
!3364 = !DILocation(line: 71, column: 3, scope: !3338)
!3365 = distinct !DISubprogram(name: "locale_charset", scope: !3366, file: !3366, line: 687, type: !3367, isLocal: false, isDefinition: true, scopeLine: 688, flags: DIFlagPrototyped, isOptimized: true, unit: !175, retainedNodes: !3369)
!3366 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3367 = !DISubroutineType(types: !3368)
!3368 = !{!6}
!3369 = !{!3370}
!3370 = !DILocalVariable(name: "codeset", scope: !3365, file: !3366, line: 689, type: !6)
!3371 = !DILocation(line: 696, column: 13, scope: !3365)
!3372 = !DILocation(line: 689, column: 15, scope: !3365)
!3373 = !DILocation(line: 754, column: 15, scope: !3374)
!3374 = distinct !DILexicalBlock(scope: !3365, file: !3366, line: 754, column: 7)
!3375 = !DILocation(line: 754, column: 7, scope: !3365)
!3376 = !DILocation(line: 907, column: 13, scope: !3377)
!3377 = distinct !DILexicalBlock(scope: !3378, file: !3366, line: 907, column: 13)
!3378 = distinct !DILexicalBlock(scope: !3379, file: !3366, line: 897, column: 7)
!3379 = distinct !DILexicalBlock(scope: !3365, file: !3366, line: 856, column: 3)
!3380 = !DILocation(line: 907, column: 24, scope: !3377)
!3381 = !DILocation(line: 907, column: 13, scope: !3378)
!3382 = !DILocation(line: 995, column: 3, scope: !3365)
!3383 = distinct !DISubprogram(name: "rpl_fclose", scope: !3384, file: !3384, line: 58, type: !3385, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !564, retainedNodes: !3421)
!3384 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3385 = !DISubroutineType(types: !3386)
!3386 = !{!25, !3387}
!3387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3388, size: 64)
!3388 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2733, line: 7, baseType: !3389)
!3389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2735, line: 49, size: 1728, elements: !3390)
!3390 = !{!3391, !3392, !3393, !3394, !3395, !3396, !3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3406, !3407, !3408, !3409, !3410, !3411, !3412, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3420}
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3389, file: !2735, line: 51, baseType: !25, size: 32)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3389, file: !2735, line: 54, baseType: !32, size: 64, offset: 64)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3389, file: !2735, line: 55, baseType: !32, size: 64, offset: 128)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3389, file: !2735, line: 56, baseType: !32, size: 64, offset: 192)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3389, file: !2735, line: 57, baseType: !32, size: 64, offset: 256)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3389, file: !2735, line: 58, baseType: !32, size: 64, offset: 320)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3389, file: !2735, line: 59, baseType: !32, size: 64, offset: 384)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3389, file: !2735, line: 60, baseType: !32, size: 64, offset: 448)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3389, file: !2735, line: 61, baseType: !32, size: 64, offset: 512)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3389, file: !2735, line: 64, baseType: !32, size: 64, offset: 576)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3389, file: !2735, line: 65, baseType: !32, size: 64, offset: 640)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3389, file: !2735, line: 66, baseType: !32, size: 64, offset: 704)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3389, file: !2735, line: 68, baseType: !2750, size: 64, offset: 768)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3389, file: !2735, line: 70, baseType: !3405, size: 64, offset: 832)
!3405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3389, size: 64)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3389, file: !2735, line: 72, baseType: !25, size: 32, offset: 896)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3389, file: !2735, line: 73, baseType: !25, size: 32, offset: 928)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3389, file: !2735, line: 74, baseType: !2757, size: 64, offset: 960)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3389, file: !2735, line: 77, baseType: !76, size: 16, offset: 1024)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3389, file: !2735, line: 78, baseType: !2762, size: 8, offset: 1040)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3389, file: !2735, line: 79, baseType: !2764, size: 8, offset: 1048)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3389, file: !2735, line: 81, baseType: !2768, size: 64, offset: 1088)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3389, file: !2735, line: 89, baseType: !2771, size: 64, offset: 1152)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3389, file: !2735, line: 91, baseType: !2773, size: 64, offset: 1216)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3389, file: !2735, line: 92, baseType: !2776, size: 64, offset: 1280)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3389, file: !2735, line: 93, baseType: !3405, size: 64, offset: 1344)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3389, file: !2735, line: 94, baseType: !31, size: 64, offset: 1408)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3389, file: !2735, line: 95, baseType: !77, size: 64, offset: 1472)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3389, file: !2735, line: 96, baseType: !25, size: 32, offset: 1536)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3389, file: !2735, line: 98, baseType: !2783, size: 160, offset: 1568)
!3421 = !{!3422, !3423, !3424, !3425}
!3422 = !DILocalVariable(name: "fp", arg: 1, scope: !3383, file: !3384, line: 58, type: !3387)
!3423 = !DILocalVariable(name: "saved_errno", scope: !3383, file: !3384, line: 60, type: !25)
!3424 = !DILocalVariable(name: "fd", scope: !3383, file: !3384, line: 61, type: !25)
!3425 = !DILocalVariable(name: "result", scope: !3383, file: !3384, line: 62, type: !25)
!3426 = !DILocation(line: 58, column: 19, scope: !3383)
!3427 = !DILocation(line: 60, column: 7, scope: !3383)
!3428 = !DILocation(line: 62, column: 7, scope: !3383)
!3429 = !DILocation(line: 65, column: 8, scope: !3383)
!3430 = !DILocation(line: 61, column: 7, scope: !3383)
!3431 = !DILocation(line: 66, column: 10, scope: !3432)
!3432 = distinct !DILexicalBlock(scope: !3383, file: !3384, line: 66, column: 7)
!3433 = !DILocation(line: 66, column: 7, scope: !3383)
!3434 = !DILocation(line: 67, column: 12, scope: !3432)
!3435 = !DILocation(line: 67, column: 5, scope: !3432)
!3436 = !DILocation(line: 72, column: 9, scope: !3437)
!3437 = distinct !DILexicalBlock(scope: !3383, file: !3384, line: 72, column: 7)
!3438 = !DILocation(line: 72, column: 23, scope: !3437)
!3439 = !DILocation(line: 72, column: 33, scope: !3437)
!3440 = !DILocation(line: 72, column: 26, scope: !3437)
!3441 = !DILocation(line: 72, column: 59, scope: !3437)
!3442 = !DILocation(line: 73, column: 7, scope: !3437)
!3443 = !DILocation(line: 73, column: 10, scope: !3437)
!3444 = !DILocation(line: 72, column: 7, scope: !3383)
!3445 = !DILocation(line: 100, column: 12, scope: !3383)
!3446 = !DILocation(line: 105, column: 7, scope: !3383)
!3447 = !DILocation(line: 74, column: 19, scope: !3437)
!3448 = !DILocation(line: 105, column: 19, scope: !3449)
!3449 = distinct !DILexicalBlock(scope: !3383, file: !3384, line: 105, column: 7)
!3450 = !DILocation(line: 107, column: 13, scope: !3451)
!3451 = distinct !DILexicalBlock(scope: !3449, file: !3384, line: 106, column: 5)
!3452 = !DILocation(line: 109, column: 5, scope: !3451)
!3453 = !DILocation(line: 0, scope: !3383)
!3454 = !DILocation(line: 112, column: 1, scope: !3383)
!3455 = distinct !DISubprogram(name: "rpl_fflush", scope: !3456, file: !3456, line: 129, type: !3457, isLocal: false, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, unit: !566, retainedNodes: !3493)
!3456 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3457 = !DISubroutineType(types: !3458)
!3458 = !{!25, !3459}
!3459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3460, size: 64)
!3460 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2733, line: 7, baseType: !3461)
!3461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2735, line: 49, size: 1728, elements: !3462)
!3462 = !{!3463, !3464, !3465, !3466, !3467, !3468, !3469, !3470, !3471, !3472, !3473, !3474, !3475, !3476, !3478, !3479, !3480, !3481, !3482, !3483, !3484, !3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492}
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3461, file: !2735, line: 51, baseType: !25, size: 32)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3461, file: !2735, line: 54, baseType: !32, size: 64, offset: 64)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3461, file: !2735, line: 55, baseType: !32, size: 64, offset: 128)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3461, file: !2735, line: 56, baseType: !32, size: 64, offset: 192)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3461, file: !2735, line: 57, baseType: !32, size: 64, offset: 256)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3461, file: !2735, line: 58, baseType: !32, size: 64, offset: 320)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3461, file: !2735, line: 59, baseType: !32, size: 64, offset: 384)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3461, file: !2735, line: 60, baseType: !32, size: 64, offset: 448)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3461, file: !2735, line: 61, baseType: !32, size: 64, offset: 512)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3461, file: !2735, line: 64, baseType: !32, size: 64, offset: 576)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3461, file: !2735, line: 65, baseType: !32, size: 64, offset: 640)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3461, file: !2735, line: 66, baseType: !32, size: 64, offset: 704)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3461, file: !2735, line: 68, baseType: !2750, size: 64, offset: 768)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3461, file: !2735, line: 70, baseType: !3477, size: 64, offset: 832)
!3477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3461, size: 64)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3461, file: !2735, line: 72, baseType: !25, size: 32, offset: 896)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3461, file: !2735, line: 73, baseType: !25, size: 32, offset: 928)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3461, file: !2735, line: 74, baseType: !2757, size: 64, offset: 960)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3461, file: !2735, line: 77, baseType: !76, size: 16, offset: 1024)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3461, file: !2735, line: 78, baseType: !2762, size: 8, offset: 1040)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3461, file: !2735, line: 79, baseType: !2764, size: 8, offset: 1048)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3461, file: !2735, line: 81, baseType: !2768, size: 64, offset: 1088)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3461, file: !2735, line: 89, baseType: !2771, size: 64, offset: 1152)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3461, file: !2735, line: 91, baseType: !2773, size: 64, offset: 1216)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3461, file: !2735, line: 92, baseType: !2776, size: 64, offset: 1280)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3461, file: !2735, line: 93, baseType: !3477, size: 64, offset: 1344)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3461, file: !2735, line: 94, baseType: !31, size: 64, offset: 1408)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3461, file: !2735, line: 95, baseType: !77, size: 64, offset: 1472)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3461, file: !2735, line: 96, baseType: !25, size: 32, offset: 1536)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3461, file: !2735, line: 98, baseType: !2783, size: 160, offset: 1568)
!3493 = !{!3494}
!3494 = !DILocalVariable(name: "stream", arg: 1, scope: !3455, file: !3456, line: 129, type: !3459)
!3495 = !DILocation(line: 129, column: 19, scope: !3455)
!3496 = !DILocation(line: 150, column: 14, scope: !3497)
!3497 = distinct !DILexicalBlock(scope: !3455, file: !3456, line: 150, column: 7)
!3498 = !DILocation(line: 150, column: 22, scope: !3497)
!3499 = !DILocation(line: 150, column: 27, scope: !3497)
!3500 = !DILocation(line: 150, column: 7, scope: !3455)
!3501 = !DILocation(line: 151, column: 12, scope: !3497)
!3502 = !DILocation(line: 151, column: 5, scope: !3497)
!3503 = !DILocalVariable(name: "fp", arg: 1, scope: !3504, file: !3456, line: 41, type: !3459)
!3504 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !3456, file: !3456, line: 41, type: !3505, isLocal: true, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !566, retainedNodes: !3507)
!3505 = !DISubroutineType(types: !3506)
!3506 = !{null, !3459}
!3507 = !{!3503}
!3508 = !DILocation(line: 41, column: 48, scope: !3504, inlinedAt: !3509)
!3509 = distinct !DILocation(line: 156, column: 3, scope: !3455)
!3510 = !DILocation(line: 43, column: 11, scope: !3511, inlinedAt: !3509)
!3511 = distinct !DILexicalBlock(scope: !3504, file: !3456, line: 43, column: 7)
!3512 = !DILocation(line: 43, column: 18, scope: !3511, inlinedAt: !3509)
!3513 = !DILocation(line: 43, column: 7, scope: !3504, inlinedAt: !3509)
!3514 = !DILocation(line: 45, column: 5, scope: !3511, inlinedAt: !3509)
!3515 = !DILocation(line: 158, column: 10, scope: !3455)
!3516 = !DILocation(line: 158, column: 3, scope: !3455)
!3517 = !DILocation(line: 0, scope: !3455)
!3518 = !DILocation(line: 232, column: 1, scope: !3455)
!3519 = distinct !DISubprogram(name: "rpl_fseeko", scope: !3520, file: !3520, line: 28, type: !3521, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !568, retainedNodes: !3558)
!3520 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3521 = !DISubroutineType(types: !3522)
!3522 = !{!25, !3523, !3557, !25}
!3523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3524, size: 64)
!3524 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2733, line: 7, baseType: !3525)
!3525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2735, line: 49, size: 1728, elements: !3526)
!3526 = !{!3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3556}
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3525, file: !2735, line: 51, baseType: !25, size: 32)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3525, file: !2735, line: 54, baseType: !32, size: 64, offset: 64)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3525, file: !2735, line: 55, baseType: !32, size: 64, offset: 128)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3525, file: !2735, line: 56, baseType: !32, size: 64, offset: 192)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3525, file: !2735, line: 57, baseType: !32, size: 64, offset: 256)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3525, file: !2735, line: 58, baseType: !32, size: 64, offset: 320)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3525, file: !2735, line: 59, baseType: !32, size: 64, offset: 384)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3525, file: !2735, line: 60, baseType: !32, size: 64, offset: 448)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3525, file: !2735, line: 61, baseType: !32, size: 64, offset: 512)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3525, file: !2735, line: 64, baseType: !32, size: 64, offset: 576)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3525, file: !2735, line: 65, baseType: !32, size: 64, offset: 640)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3525, file: !2735, line: 66, baseType: !32, size: 64, offset: 704)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3525, file: !2735, line: 68, baseType: !2750, size: 64, offset: 768)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3525, file: !2735, line: 70, baseType: !3541, size: 64, offset: 832)
!3541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3525, size: 64)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3525, file: !2735, line: 72, baseType: !25, size: 32, offset: 896)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3525, file: !2735, line: 73, baseType: !25, size: 32, offset: 928)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3525, file: !2735, line: 74, baseType: !2757, size: 64, offset: 960)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3525, file: !2735, line: 77, baseType: !76, size: 16, offset: 1024)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3525, file: !2735, line: 78, baseType: !2762, size: 8, offset: 1040)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3525, file: !2735, line: 79, baseType: !2764, size: 8, offset: 1048)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3525, file: !2735, line: 81, baseType: !2768, size: 64, offset: 1088)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3525, file: !2735, line: 89, baseType: !2771, size: 64, offset: 1152)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3525, file: !2735, line: 91, baseType: !2773, size: 64, offset: 1216)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3525, file: !2735, line: 92, baseType: !2776, size: 64, offset: 1280)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3525, file: !2735, line: 93, baseType: !3541, size: 64, offset: 1344)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3525, file: !2735, line: 94, baseType: !31, size: 64, offset: 1408)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3525, file: !2735, line: 95, baseType: !77, size: 64, offset: 1472)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3525, file: !2735, line: 96, baseType: !25, size: 32, offset: 1536)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3525, file: !2735, line: 98, baseType: !2783, size: 160, offset: 1568)
!3557 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !2905, line: 63, baseType: !2757)
!3558 = !{!3559, !3560, !3561, !3562}
!3559 = !DILocalVariable(name: "fp", arg: 1, scope: !3519, file: !3520, line: 28, type: !3523)
!3560 = !DILocalVariable(name: "offset", arg: 2, scope: !3519, file: !3520, line: 28, type: !3557)
!3561 = !DILocalVariable(name: "whence", arg: 3, scope: !3519, file: !3520, line: 28, type: !25)
!3562 = !DILocalVariable(name: "pos", scope: !3563, file: !3520, line: 117, type: !3557)
!3563 = distinct !DILexicalBlock(scope: !3564, file: !3520, line: 113, column: 5)
!3564 = distinct !DILexicalBlock(scope: !3519, file: !3520, line: 52, column: 7)
!3565 = !DILocation(line: 28, column: 15, scope: !3519)
!3566 = !DILocation(line: 28, column: 25, scope: !3519)
!3567 = !DILocation(line: 28, column: 37, scope: !3519)
!3568 = !DILocation(line: 52, column: 11, scope: !3564)
!3569 = !{!860, !610, i64 16}
!3570 = !DILocation(line: 52, column: 31, scope: !3564)
!3571 = !{!860, !610, i64 8}
!3572 = !DILocation(line: 52, column: 24, scope: !3564)
!3573 = !DILocation(line: 53, column: 7, scope: !3564)
!3574 = !DILocation(line: 53, column: 14, scope: !3564)
!3575 = !DILocation(line: 53, column: 35, scope: !3564)
!3576 = !{!860, !610, i64 32}
!3577 = !DILocation(line: 53, column: 28, scope: !3564)
!3578 = !DILocation(line: 54, column: 7, scope: !3564)
!3579 = !DILocation(line: 54, column: 14, scope: !3564)
!3580 = !{!860, !610, i64 72}
!3581 = !DILocation(line: 54, column: 28, scope: !3564)
!3582 = !DILocation(line: 52, column: 7, scope: !3519)
!3583 = !DILocation(line: 117, column: 26, scope: !3563)
!3584 = !DILocation(line: 117, column: 19, scope: !3563)
!3585 = !DILocation(line: 117, column: 13, scope: !3563)
!3586 = !DILocation(line: 118, column: 15, scope: !3587)
!3587 = distinct !DILexicalBlock(scope: !3563, file: !3520, line: 118, column: 11)
!3588 = !DILocation(line: 118, column: 11, scope: !3563)
!3589 = !DILocation(line: 129, column: 11, scope: !3563)
!3590 = !DILocation(line: 129, column: 18, scope: !3563)
!3591 = !DILocation(line: 130, column: 11, scope: !3563)
!3592 = !DILocation(line: 130, column: 19, scope: !3563)
!3593 = !{!860, !862, i64 144}
!3594 = !DILocation(line: 161, column: 7, scope: !3563)
!3595 = !DILocation(line: 163, column: 10, scope: !3519)
!3596 = !DILocation(line: 163, column: 3, scope: !3519)
!3597 = !DILocation(line: 0, scope: !3519)
!3598 = !DILocation(line: 164, column: 1, scope: !3519)
