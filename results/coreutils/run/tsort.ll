; ModuleID = 'coreutils-8.30/src/tsort.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.infomap = type { i8*, i8* }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.item = type { i8*, %struct.item*, %struct.item*, i32, i64, %struct.item*, %struct.successor* }
%struct.successor = type { %struct.item*, %struct.successor* }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.tokenbuffer = type { i64, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [100 x i8] c"Usage: %s [OPTION] [FILE]\0AWrite totally ordered list consistent with the partial ordering in FILE.\0A\00", align 1
@.str.12 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.13 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"tsort\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.23 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.25 = private unnamed_addr constant [70 x i8] c"Report %s translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.26 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.27 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
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
@.str.9 = private unnamed_addr constant [14 x i8] c"Mark Kettenis\00", align 1
@long_options = internal constant [1 x %struct.option] zeroinitializer, align 16, !dbg !0
@optind = external local_unnamed_addr global i32, align 4
@.str.10 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.29 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"len != 0\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"src/tsort.c\00", align 1
@__PRETTY_FUNCTION__.tsort = private unnamed_addr constant [26 x i8] c"_Bool tsort(const char *)\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"root\00", align 1
@__PRETTY_FUNCTION__.search_item = private unnamed_addr constant [54 x i8] c"struct item *search_item(struct item *, const char *)\00", align 1
@.str.38 = private unnamed_addr constant [21 x i8] c"!STREQ (str, s->str)\00", align 1
@.str.39 = private unnamed_addr constant [21 x i8] c"!STREQ (str, p->str)\00", align 1
@.str.34 = private unnamed_addr constant [43 x i8] c"%s: input contains an odd number of tokens\00", align 1
@n_strings = internal unnamed_addr global i64 0, align 8, !dbg !38
@head = internal unnamed_addr global %struct.item* null, align 8, !dbg !40
@zeros = internal unnamed_addr global %struct.item* null, align 8, !dbg !58
@.str.35 = private unnamed_addr constant [27 x i8] c"%s: input contains a loop:\00", align 1
@loop = internal unnamed_addr global %struct.item* null, align 8, !dbg !60
@.str.36 = private unnamed_addr constant [15 x i8] c"standard input\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i64 0, i64 0), align 8, !dbg !74
@.str.40 = private unnamed_addr constant [5 x i8] c"8.30\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !80
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !85
@.str.43 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.44 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.45 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !89
@.str.52 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@opterr = external local_unnamed_addr global i32, align 4
@.str.55 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@long_options.56 = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1.57, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.58, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option zeroinitializer], align 16, !dbg !96
@.str.1.57 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.2.58 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !112
@.str.63 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.64 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.65 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.67, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.68, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.69, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.70, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.71, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.72, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.73, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.74, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.75, i32 0, i32 0), i8* null], align 16, !dbg !120
@.str.66 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.67 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.68 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.69 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.70 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.71 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.72 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.73 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.74 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.75 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !148
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !155
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !167
@.str.11.76 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.77 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.78 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.79 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.80 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.81 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.82 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.tokenbuffer* @slotvec0, align 8, !dbg !174
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !181
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !169
@slotvec0 = internal global %struct.tokenbuffer { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !183
@.str.93 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.94 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.95 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.96 = private unnamed_addr constant [204 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.97 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.98 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.99 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.100 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.101 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.102 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.103 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.104 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.105 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.106 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.109 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.110 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.111 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.112 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.113 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.19.114 = private unnamed_addr constant [65 x i8] c"General help using GNU software: <https://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !189
@.str.1.127 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.128 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.143 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.144 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.147 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.148 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32) #0 !dbg !657 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !662, metadata !DIExpression()), !dbg !681
  call void @llvm.dbg.value(metadata i32 %0, metadata !661, metadata !DIExpression()), !dbg !685
  %3 = icmp eq i32 %0, 0, !dbg !686
  br i1 %3, label %9, label %4, !dbg !687

; <label>:4:                                      ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !688, !tbaa !690
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #10, !dbg !688
  %7 = load i8*, i8** @program_name, align 8, !dbg !688, !tbaa !690
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #10, !dbg !688
  br label %60, !dbg !688

; <label>:9:                                      ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.1, i64 0, i64 0), i32 5) #10, !dbg !694
  %11 = load i8*, i8** @program_name, align 8, !dbg !694, !tbaa !690
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #10, !dbg !694
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.12, i64 0, i64 0), i32 5) #10, !dbg !695
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !695, !tbaa !690
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14) #10, !dbg !695
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 5) #10, !dbg !700
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !700, !tbaa !690
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17), !dbg !700
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #10, !dbg !701
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !701, !tbaa !690
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !701
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 5) #10, !dbg !702
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !702, !tbaa !690
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !702
  %25 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !703
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %25) #10, !dbg !703
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %25, i8* align 16 bitcast ([7 x %struct.infomap]* @emit_ancillary_info.infomap to i8*), i64 112, i1 false) #10, !dbg !681
  %26 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !704
  call void @llvm.dbg.value(metadata %struct.infomap* %26, metadata !670, metadata !DIExpression()) #10, !dbg !705
  br label %27, !dbg !706

; <label>:27:                                     ; preds = %32, %9
  %28 = phi i8* [ %35, %32 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), %9 ]
  %29 = phi %struct.infomap* [ %33, %32 ], [ %26, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %29, metadata !670, metadata !DIExpression()) #10, !dbg !705
  %30 = tail call i32 @strcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* nonnull %28) #14, !dbg !706
  %31 = icmp eq i32 %30, 0, !dbg !706
  br i1 %31, label %37, label %32, !dbg !707

; <label>:32:                                     ; preds = %27
  %33 = getelementptr inbounds %struct.infomap, %struct.infomap* %29, i64 1, !dbg !708
  call void @llvm.dbg.value(metadata %struct.infomap* %33, metadata !670, metadata !DIExpression()) #10, !dbg !705
  %34 = getelementptr inbounds %struct.infomap, %struct.infomap* %33, i64 0, i32 0, !dbg !709
  %35 = load i8*, i8** %34, align 8, !dbg !709, !tbaa !710
  %36 = icmp eq i8* %35, null, !dbg !712
  br i1 %36, label %37, label %27, !dbg !713, !llvm.loop !714

; <label>:37:                                     ; preds = %32, %27
  %38 = phi %struct.infomap* [ %33, %32 ], [ %29, %27 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %38, metadata !670, metadata !DIExpression()) #10, !dbg !705
  call void @llvm.dbg.value(metadata %struct.infomap* %38, metadata !670, metadata !DIExpression()) #10, !dbg !705
  %39 = getelementptr inbounds %struct.infomap, %struct.infomap* %38, i64 0, i32 1, !dbg !717
  %40 = load i8*, i8** %39, align 8, !dbg !717, !tbaa !719
  %41 = icmp eq i8* %40, null, !dbg !720
  %42 = select i1 %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %40, !dbg !721
  call void @llvm.dbg.value(metadata i8* %42, metadata !669, metadata !DIExpression()) #10, !dbg !722
  %43 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i64 0, i64 0), i32 5) #10, !dbg !723
  %44 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %43, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.23, i64 0, i64 0)) #10, !dbg !723
  %45 = tail call i8* @setlocale(i32 5, i8* null) #10, !dbg !724
  call void @llvm.dbg.value(metadata i8* %45, metadata !677, metadata !DIExpression()) #10, !dbg !725
  %46 = icmp eq i8* %45, null, !dbg !726
  br i1 %46, label %53, label %47, !dbg !728

; <label>:47:                                     ; preds = %37
  %48 = tail call i32 @strncmp(i8* nonnull %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0), i64 3) #14, !dbg !729
  %49 = icmp eq i32 %48, 0, !dbg !729
  br i1 %49, label %53, label %50, !dbg !730

; <label>:50:                                     ; preds = %47
  %51 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.25, i64 0, i64 0), i32 5) #10, !dbg !731
  %52 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #10, !dbg !731
  br label %53, !dbg !733

; <label>:53:                                     ; preds = %37, %47, %50
  %54 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.26, i64 0, i64 0), i32 5) #10, !dbg !734
  %55 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %54, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #10, !dbg !734
  %56 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.27, i64 0, i64 0), i32 5) #10, !dbg !735
  %57 = icmp eq i8* %42, getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), !dbg !735
  %58 = select i1 %57, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), !dbg !735
  %59 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %56, i8* %42, i8* %58) #10, !dbg !735
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %25) #10, !dbg !736
  br label %60

; <label>:60:                                     ; preds = %53, %4
  tail call void @exit(i32 %0) #15, !dbg !737
  unreachable, !dbg !737
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
define dso_local i32 @main(i32, i8**) local_unnamed_addr #7 !dbg !738 {
  %3 = alloca %struct.tokenbuffer, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !743, metadata !DIExpression()), !dbg !746
  call void @llvm.dbg.value(metadata i8** %1, metadata !744, metadata !DIExpression()), !dbg !747
  %4 = load i8*, i8** %1, align 8, !dbg !748, !tbaa !690
  tail call void @set_program_name(i8* %4) #10, !dbg !749
  %5 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)) #10, !dbg !750
  %6 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !751
  %7 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)) #10, !dbg !752
  %8 = tail call i32 @atexit(void ()* nonnull @close_stdout) #10, !dbg !753
  %9 = load i8*, i8** @Version, align 8, !dbg !754, !tbaa !690
  tail call void (i32, i8**, i8*, i8*, i8*, void (i32)*, ...) @parse_long_options(i32 %0, i8** %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* %9, void (i32)* nonnull @usage, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* null) #10, !dbg !755
  %10 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), %struct.option* getelementptr inbounds ([1 x %struct.option], [1 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #10, !dbg !756
  %11 = icmp eq i32 %10, -1, !dbg !758
  br i1 %11, label %13, label %12, !dbg !759

; <label>:12:                                     ; preds = %2
  tail call void @usage(i32 1) #16, !dbg !760
  unreachable, !dbg !760

; <label>:13:                                     ; preds = %2
  %14 = load i32, i32* @optind, align 4, !dbg !761, !tbaa !763
  %15 = sub nsw i32 %0, %14, !dbg !765
  %16 = icmp sgt i32 %15, 1, !dbg !766
  br i1 %16, label %17, label %25, !dbg !767

; <label>:17:                                     ; preds = %13
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i32 5) #10, !dbg !768
  %19 = load i32, i32* @optind, align 4, !dbg !770, !tbaa !763
  %20 = add nsw i32 %19, 1, !dbg !771
  %21 = sext i32 %20 to i64, !dbg !772
  %22 = getelementptr inbounds i8*, i8** %1, i64 %21, !dbg !772
  %23 = load i8*, i8** %22, align 8, !dbg !772, !tbaa !690
  %24 = tail call i8* @quote(i8* %23) #10, !dbg !773
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %18, i8* %24) #10, !dbg !774
  tail call void @usage(i32 1) #16, !dbg !775
  unreachable, !dbg !775

; <label>:25:                                     ; preds = %13
  %26 = icmp eq i32 %14, %0, !dbg !776
  br i1 %26, label %31, label %27, !dbg !777

; <label>:27:                                     ; preds = %25
  %28 = sext i32 %14 to i64, !dbg !778
  %29 = getelementptr inbounds i8*, i8** %1, i64 %28, !dbg !778
  %30 = load i8*, i8** %29, align 8, !dbg !778, !tbaa !690
  br label %31, !dbg !777

; <label>:31:                                     ; preds = %25, %27
  %32 = phi i8* [ %30, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), %25 ], !dbg !777
  call void @llvm.dbg.value(metadata i8* %32, metadata !779, metadata !DIExpression()) #10, !dbg !801
  call void @llvm.dbg.value(metadata i8 1, metadata !784, metadata !DIExpression()) #10, !dbg !803
  call void @llvm.dbg.value(metadata %struct.item* null, metadata !786, metadata !DIExpression()) #10, !dbg !804
  call void @llvm.dbg.value(metadata %struct.item* null, metadata !787, metadata !DIExpression()) #10, !dbg !805
  %33 = bitcast %struct.tokenbuffer* %3 to i8*, !dbg !806
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %33) #10, !dbg !806
  %34 = tail call i32 @strcmp(i8* %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0)) #14, !dbg !807
  %35 = icmp eq i32 %34, 0, !dbg !807
  call void @llvm.dbg.value(metadata i8* null, metadata !808, metadata !DIExpression()) #10, !dbg !814
  %36 = tail call noalias i8* @xmalloc(i64 56) #10, !dbg !816
  %37 = bitcast i8* %36 to %struct.item*, !dbg !816
  call void @llvm.dbg.value(metadata %struct.item* %37, metadata !813, metadata !DIExpression()) #10, !dbg !817
  %38 = getelementptr inbounds i8, i8* %36, i64 32, !dbg !818
  tail call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %38, i8 0, i64 24, i1 false) #10, !dbg !819
  call void @llvm.dbg.value(metadata %struct.item* %37, metadata !785, metadata !DIExpression()) #10, !dbg !820
  tail call void @llvm.memset.p0i8.i64(i8* align 8 %36, i8 0, i64 28, i1 false) #10, !dbg !821
  br i1 %35, label %47, label %39, !dbg !822

; <label>:39:                                     ; preds = %31
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !824, !tbaa !690
  %41 = tail call %struct._IO_FILE* @freopen_safer(i8* %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0), %struct._IO_FILE* %40) #10, !dbg !825
  %42 = icmp eq %struct._IO_FILE* %41, null, !dbg !825
  br i1 %42, label %43, label %47, !dbg !826

; <label>:43:                                     ; preds = %39
  %44 = tail call i32* @__errno_location() #17, !dbg !827
  %45 = load i32, i32* %44, align 4, !dbg !827, !tbaa !763
  %46 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %32) #10, !dbg !827
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), i8* %46) #10, !dbg !827
  unreachable, !dbg !827

; <label>:47:                                     ; preds = %39, %31
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !828, !tbaa !690
  tail call void @fadvise(%struct._IO_FILE* %48, i32 2) #10, !dbg !829
  call void @llvm.dbg.value(metadata %struct.tokenbuffer* %3, metadata !788, metadata !DIExpression(DW_OP_deref)) #10, !dbg !830
  call void @init_tokenbuffer(%struct.tokenbuffer* nonnull %3) #10, !dbg !831
  %49 = getelementptr inbounds %struct.tokenbuffer, %struct.tokenbuffer* %3, i64 0, i32 1
  %50 = icmp eq i8* %36, null
  %51 = getelementptr inbounds i8, i8* %36, i64 16
  %52 = bitcast i8* %51 to %struct.item**
  %53 = bitcast i8* %51 to i8**
  br label %54, !dbg !832

; <label>:54:                                     ; preds = %230, %47
  %55 = phi %struct.item* [ null, %47 ], [ %231, %230 ], !dbg !805
  call void @llvm.dbg.value(metadata %struct.item* %55, metadata !786, metadata !DIExpression()) #10, !dbg !804
  call void @llvm.dbg.value(metadata %struct.item* %55, metadata !787, metadata !DIExpression()) #10, !dbg !805
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !833, !tbaa !690
  call void @llvm.dbg.value(metadata %struct.tokenbuffer* %3, metadata !788, metadata !DIExpression(DW_OP_deref)) #10, !dbg !830
  %57 = call i64 @readtoken(%struct._IO_FILE* %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i64 0, i64 0), i64 3, %struct.tokenbuffer* nonnull %3) #10, !dbg !834
  call void @llvm.dbg.value(metadata i64 %57, metadata !796, metadata !DIExpression()) #10, !dbg !835
  switch i64 %57, label %59 [
    i64 -1, label %232
    i64 0, label %58
  ], !dbg !836

; <label>:58:                                     ; preds = %54
  call void @__assert_fail(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i64 0, i64 0), i32 467, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.tsort, i64 0, i64 0)) #15, !dbg !837
  unreachable, !dbg !837

; <label>:59:                                     ; preds = %54
  %60 = load i8*, i8** %49, align 8, !dbg !840, !tbaa !841
  call void @llvm.dbg.value(metadata %struct.item* %37, metadata !844, metadata !DIExpression()) #10, !dbg !856
  call void @llvm.dbg.value(metadata i8* %60, metadata !849, metadata !DIExpression()) #10, !dbg !858
  br i1 %50, label %61, label %62, !dbg !859

; <label>:61:                                     ; preds = %59
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i64 0, i64 0), i32 138, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__PRETTY_FUNCTION__.search_item, i64 0, i64 0)) #15, !dbg !861
  unreachable, !dbg !861

; <label>:62:                                     ; preds = %59
  %63 = load %struct.item*, %struct.item** %52, align 8, !dbg !863, !tbaa !865
  %64 = icmp eq %struct.item* %63, null, !dbg !867
  br i1 %64, label %70, label %65, !dbg !868

; <label>:65:                                     ; preds = %62
  call void @llvm.dbg.value(metadata %struct.item* %37, metadata !854, metadata !DIExpression()) #10, !dbg !869
  call void @llvm.dbg.value(metadata %struct.item* %63, metadata !853, metadata !DIExpression()) #10, !dbg !870
  call void @llvm.dbg.value(metadata %struct.item* %63, metadata !850, metadata !DIExpression()) #10, !dbg !871
  %66 = getelementptr inbounds %struct.item, %struct.item* %63, i64 0, i32 0, !dbg !872
  %67 = load i8*, i8** %66, align 8, !dbg !872, !tbaa !874
  %68 = call i32 @strcmp(i8* %60, i8* %67) #14, !dbg !875
  call void @llvm.dbg.value(metadata i32 %68, metadata !855, metadata !DIExpression()) #10, !dbg !876
  %69 = icmp eq i32 %68, 0, !dbg !877
  br i1 %69, label %208, label %81, !dbg !879

; <label>:70:                                     ; preds = %62
  call void @llvm.dbg.value(metadata i8* %60, metadata !808, metadata !DIExpression()) #10, !dbg !880
  %71 = call noalias i8* @xmalloc(i64 56) #10, !dbg !882
  %72 = bitcast i8* %71 to %struct.item*, !dbg !882
  call void @llvm.dbg.value(metadata %struct.item* %72, metadata !813, metadata !DIExpression()) #10, !dbg !883
  %73 = icmp eq i8* %60, null, !dbg !884
  br i1 %73, label %76, label %74, !dbg !884

; <label>:74:                                     ; preds = %70
  %75 = call noalias i8* @xstrdup(i8* nonnull %60) #10, !dbg !885
  br label %76, !dbg !884

; <label>:76:                                     ; preds = %74, %70
  %77 = phi i8* [ %75, %74 ], [ null, %70 ], !dbg !884
  %78 = bitcast i8* %71 to i8**, !dbg !886
  store i8* %77, i8** %78, align 8, !dbg !887, !tbaa !874
  %79 = getelementptr inbounds i8, i8* %71, i64 8, !dbg !888
  %80 = getelementptr inbounds i8, i8* %71, i64 32, !dbg !889
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %79, i8 0, i64 20, i1 false) #10, !dbg !890
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %80, i8 0, i64 24, i1 false) #10, !dbg !891
  store i8* %71, i8** %53, align 8, !dbg !892, !tbaa !865
  br label %208, !dbg !893

; <label>:81:                                     ; preds = %65, %198
  %82 = phi i32 [ %206, %198 ], [ %68, %65 ]
  %83 = phi %struct.item* [ %203, %198 ], [ %37, %65 ]
  %84 = phi %struct.item* [ %202, %198 ], [ %63, %65 ]
  %85 = phi %struct.item* [ %90, %198 ], [ %63, %65 ]
  call void @llvm.dbg.value(metadata %struct.item* %83, metadata !854, metadata !DIExpression()) #10, !dbg !869
  call void @llvm.dbg.value(metadata %struct.item* %84, metadata !853, metadata !DIExpression()) #10, !dbg !870
  call void @llvm.dbg.value(metadata %struct.item* %85, metadata !850, metadata !DIExpression()) #10, !dbg !871
  %86 = icmp slt i32 %82, 0, !dbg !894
  %87 = getelementptr inbounds %struct.item, %struct.item* %85, i64 0, i32 1, !dbg !896
  call void @llvm.dbg.value(metadata %struct.item** %87, metadata !851, metadata !DIExpression(DW_OP_deref)) #10, !dbg !897
  %88 = getelementptr inbounds %struct.item, %struct.item* %85, i64 0, i32 2, !dbg !898
  call void @llvm.dbg.value(metadata %struct.item** %88, metadata !851, metadata !DIExpression(DW_OP_deref)) #10, !dbg !897
  %89 = select i1 %86, %struct.item** %87, %struct.item** %88, !dbg !899
  %90 = load %struct.item*, %struct.item** %89, align 8, !dbg !900, !tbaa !690
  call void @llvm.dbg.value(metadata %struct.item* %90, metadata !851, metadata !DIExpression()) #10, !dbg !897
  %91 = icmp eq %struct.item* %90, null, !dbg !901
  br i1 %91, label %92, label %198, !dbg !903

; <label>:92:                                     ; preds = %81
  call void @llvm.dbg.value(metadata %struct.item* %83, metadata !854, metadata !DIExpression()) #10, !dbg !869
  call void @llvm.dbg.value(metadata %struct.item* %84, metadata !853, metadata !DIExpression()) #10, !dbg !870
  call void @llvm.dbg.value(metadata %struct.item* %83, metadata !854, metadata !DIExpression()) #10, !dbg !869
  call void @llvm.dbg.value(metadata %struct.item* %84, metadata !853, metadata !DIExpression()) #10, !dbg !870
  call void @llvm.dbg.value(metadata %struct.item* %83, metadata !854, metadata !DIExpression()) #10, !dbg !869
  call void @llvm.dbg.value(metadata %struct.item* %84, metadata !853, metadata !DIExpression()) #10, !dbg !870
  call void @llvm.dbg.value(metadata %struct.item* %83, metadata !854, metadata !DIExpression()) #10, !dbg !869
  call void @llvm.dbg.value(metadata %struct.item* %84, metadata !853, metadata !DIExpression()) #10, !dbg !870
  call void @llvm.dbg.value(metadata %struct.item* %83, metadata !854, metadata !DIExpression()) #10, !dbg !869
  call void @llvm.dbg.value(metadata %struct.item* %84, metadata !853, metadata !DIExpression()) #10, !dbg !870
  call void @llvm.dbg.value(metadata %struct.item* %83, metadata !854, metadata !DIExpression()) #10, !dbg !869
  call void @llvm.dbg.value(metadata %struct.item* %84, metadata !853, metadata !DIExpression()) #10, !dbg !870
  call void @llvm.dbg.value(metadata %struct.item* %83, metadata !854, metadata !DIExpression()) #10, !dbg !869
  call void @llvm.dbg.value(metadata %struct.item* %84, metadata !853, metadata !DIExpression()) #10, !dbg !870
  call void @llvm.dbg.value(metadata %struct.item* %83, metadata !854, metadata !DIExpression()) #10, !dbg !869
  call void @llvm.dbg.value(metadata %struct.item* %84, metadata !853, metadata !DIExpression()) #10, !dbg !870
  call void @llvm.dbg.value(metadata %struct.item* %83, metadata !854, metadata !DIExpression()) #10, !dbg !869
  call void @llvm.dbg.value(metadata %struct.item* %84, metadata !853, metadata !DIExpression()) #10, !dbg !870
  call void @llvm.dbg.value(metadata %struct.item* %83, metadata !854, metadata !DIExpression()) #10, !dbg !869
  call void @llvm.dbg.value(metadata %struct.item* %84, metadata !853, metadata !DIExpression()) #10, !dbg !870
  call void @llvm.dbg.value(metadata %struct.item* %83, metadata !854, metadata !DIExpression()) #10, !dbg !869
  call void @llvm.dbg.value(metadata %struct.item* %84, metadata !853, metadata !DIExpression()) #10, !dbg !870
  call void @llvm.dbg.value(metadata %struct.item* %84, metadata !853, metadata !DIExpression()) #10, !dbg !870
  call void @llvm.dbg.value(metadata %struct.item* %83, metadata !854, metadata !DIExpression()) #10, !dbg !869
  call void @llvm.dbg.value(metadata i8* %60, metadata !808, metadata !DIExpression()) #10, !dbg !904
  %93 = call noalias i8* @xmalloc(i64 56) #10, !dbg !907
  %94 = bitcast i8* %93 to %struct.item*, !dbg !907
  call void @llvm.dbg.value(metadata %struct.item* %94, metadata !813, metadata !DIExpression()) #10, !dbg !908
  %95 = icmp eq i8* %60, null, !dbg !909
  br i1 %95, label %98, label %96, !dbg !909

; <label>:96:                                     ; preds = %92
  %97 = call noalias i8* @xstrdup(i8* nonnull %60) #10, !dbg !910
  br label %98, !dbg !909

; <label>:98:                                     ; preds = %96, %92
  %99 = phi i8* [ %97, %96 ], [ null, %92 ], !dbg !909
  %100 = bitcast i8* %93 to i8**, !dbg !911
  store i8* %99, i8** %100, align 8, !dbg !912, !tbaa !874
  %101 = getelementptr inbounds i8, i8* %93, i64 8, !dbg !913
  %102 = getelementptr inbounds i8, i8* %93, i64 32, !dbg !914
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %101, i8 0, i64 20, i1 false) #10, !dbg !915
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %102, i8 0, i64 24, i1 false) #10, !dbg !916
  call void @llvm.dbg.value(metadata %struct.item* %94, metadata !851, metadata !DIExpression()) #10, !dbg !897
  %103 = select i1 %86, %struct.item** %87, %struct.item** %88, !dbg !917
  %104 = bitcast %struct.item** %103 to i8**, !dbg !918
  store i8* %93, i8** %104, align 8, !dbg !918, !tbaa !690
  %105 = getelementptr inbounds %struct.item, %struct.item* %84, i64 0, i32 0, !dbg !919
  %106 = load i8*, i8** %105, align 8, !dbg !919, !tbaa !874
  %107 = call i32 @strcmp(i8* %60, i8* %106) #14, !dbg !919
  %108 = icmp eq i32 %107, 0, !dbg !919
  br i1 %108, label %109, label %110, !dbg !922

; <label>:109:                                    ; preds = %98
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.38, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i64 0, i64 0), i32 174, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__PRETTY_FUNCTION__.search_item, i64 0, i64 0)) #15, !dbg !919
  unreachable, !dbg !919

; <label>:110:                                    ; preds = %98
  %111 = icmp slt i32 %107, 0, !dbg !923
  %112 = getelementptr inbounds %struct.item, %struct.item* %84, i64 0, i32 1, !dbg !925
  call void @llvm.dbg.value(metadata %struct.item** %112, metadata !850, metadata !DIExpression(DW_OP_deref)) #10, !dbg !871
  call void @llvm.dbg.value(metadata %struct.item** %112, metadata !852, metadata !DIExpression(DW_OP_deref)) #10, !dbg !927
  call void @llvm.dbg.value(metadata i32 -1, metadata !855, metadata !DIExpression()) #10, !dbg !876
  %113 = getelementptr inbounds %struct.item, %struct.item* %84, i64 0, i32 2, !dbg !928
  call void @llvm.dbg.value(metadata %struct.item** %113, metadata !850, metadata !DIExpression(DW_OP_deref)) #10, !dbg !871
  call void @llvm.dbg.value(metadata %struct.item** %113, metadata !852, metadata !DIExpression(DW_OP_deref)) #10, !dbg !927
  call void @llvm.dbg.value(metadata i32 1, metadata !855, metadata !DIExpression()) #10, !dbg !876
  %114 = select i1 %111, %struct.item** %112, %struct.item** %113, !dbg !930
  %115 = select i1 %111, i32 -1, i32 1, !dbg !930
  %116 = load %struct.item*, %struct.item** %114, align 8, !dbg !931, !tbaa !690
  call void @llvm.dbg.value(metadata i32 %115, metadata !855, metadata !DIExpression()) #10, !dbg !876
  call void @llvm.dbg.value(metadata %struct.item* %116, metadata !852, metadata !DIExpression()) #10, !dbg !927
  call void @llvm.dbg.value(metadata %struct.item* %116, metadata !850, metadata !DIExpression()) #10, !dbg !871
  %117 = icmp eq %struct.item* %116, %94, !dbg !932
  br i1 %117, label %136, label %118, !dbg !933

; <label>:118:                                    ; preds = %110, %132
  %119 = phi %struct.item* [ %134, %132 ], [ %116, %110 ]
  call void @llvm.dbg.value(metadata %struct.item* %119, metadata !850, metadata !DIExpression()) #10, !dbg !871
  %120 = getelementptr inbounds %struct.item, %struct.item* %119, i64 0, i32 0, !dbg !934
  %121 = load i8*, i8** %120, align 8, !dbg !934, !tbaa !874
  %122 = call i32 @strcmp(i8* %60, i8* %121) #14, !dbg !934
  %123 = icmp eq i32 %122, 0, !dbg !934
  br i1 %123, label %124, label %125, !dbg !938

; <label>:124:                                    ; preds = %118
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i64 0, i64 0), i32 188, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__PRETTY_FUNCTION__.search_item, i64 0, i64 0)) #15, !dbg !934
  unreachable, !dbg !934

; <label>:125:                                    ; preds = %118
  %126 = icmp slt i32 %122, 0, !dbg !939
  %127 = getelementptr inbounds %struct.item, %struct.item* %119, i64 0, i32 3, !dbg !941
  br i1 %126, label %128, label %130, !dbg !943

; <label>:128:                                    ; preds = %125
  store i32 -1, i32* %127, align 8, !dbg !944, !tbaa !946
  %129 = getelementptr inbounds %struct.item, %struct.item* %119, i64 0, i32 1, !dbg !947
  call void @llvm.dbg.value(metadata %struct.item** %129, metadata !850, metadata !DIExpression(DW_OP_deref)) #10, !dbg !871
  br label %132, !dbg !948

; <label>:130:                                    ; preds = %125
  store i32 1, i32* %127, align 8, !dbg !949, !tbaa !946
  %131 = getelementptr inbounds %struct.item, %struct.item* %119, i64 0, i32 2, !dbg !950
  call void @llvm.dbg.value(metadata %struct.item** %131, metadata !850, metadata !DIExpression(DW_OP_deref)) #10, !dbg !871
  br label %132

; <label>:132:                                    ; preds = %130, %128
  %133 = phi %struct.item** [ %129, %128 ], [ %131, %130 ]
  %134 = load %struct.item*, %struct.item** %133, align 8, !dbg !941, !tbaa !690
  call void @llvm.dbg.value(metadata %struct.item* %134, metadata !850, metadata !DIExpression()) #10, !dbg !871
  %135 = icmp eq %struct.item* %134, %94, !dbg !932
  br i1 %135, label %136, label %118, !dbg !933, !llvm.loop !951

; <label>:136:                                    ; preds = %132, %110
  %137 = getelementptr inbounds %struct.item, %struct.item* %84, i64 0, i32 3, !dbg !954
  %138 = load i32, i32* %137, align 8, !dbg !954, !tbaa !946
  %139 = icmp eq i32 %138, 0, !dbg !956
  br i1 %139, label %143, label %140, !dbg !957

; <label>:140:                                    ; preds = %136
  %141 = sub nsw i32 0, %115, !dbg !958
  %142 = icmp eq i32 %138, %141, !dbg !959
  br i1 %142, label %143, label %145, !dbg !960

; <label>:143:                                    ; preds = %140, %136
  %144 = add nsw i32 %138, %115, !dbg !961
  store i32 %144, i32* %137, align 8, !dbg !961, !tbaa !946
  br label %208, !dbg !963

; <label>:145:                                    ; preds = %140
  %146 = getelementptr inbounds %struct.item, %struct.item* %116, i64 0, i32 3, !dbg !964
  %147 = load i32, i32* %146, align 8, !dbg !964, !tbaa !946
  %148 = icmp eq i32 %147, %115, !dbg !966
  br i1 %148, label %149, label %158, !dbg !967

; <label>:149:                                    ; preds = %145
  call void @llvm.dbg.value(metadata %struct.item* %116, metadata !850, metadata !DIExpression()) #10, !dbg !871
  %150 = getelementptr inbounds %struct.item, %struct.item* %116, i64 0, i32 1, !dbg !968
  %151 = getelementptr inbounds %struct.item, %struct.item* %116, i64 0, i32 2, !dbg !972
  %152 = select i1 %111, %struct.item** %151, %struct.item** %150, !dbg !974
  %153 = select i1 %111, %struct.item** %112, %struct.item** %113, !dbg !974
  %154 = select i1 %111, %struct.item** %151, %struct.item** %150, !dbg !974
  %155 = bitcast %struct.item** %152 to i64*, !dbg !918
  %156 = load i64, i64* %155, align 8, !dbg !918, !tbaa !690
  %157 = bitcast %struct.item** %153 to i64*, !dbg !918
  store i64 %156, i64* %157, align 8, !dbg !918, !tbaa !690
  store %struct.item* %84, %struct.item** %154, align 8, !dbg !918, !tbaa !690
  store i32 0, i32* %146, align 8, !dbg !975, !tbaa !946
  br label %189, !dbg !976

; <label>:158:                                    ; preds = %145
  br i1 %111, label %159, label %167, !dbg !977

; <label>:159:                                    ; preds = %158
  %160 = getelementptr inbounds %struct.item, %struct.item* %116, i64 0, i32 2, !dbg !979
  %161 = load %struct.item*, %struct.item** %160, align 8, !dbg !979, !tbaa !865
  call void @llvm.dbg.value(metadata %struct.item* %161, metadata !850, metadata !DIExpression()) #10, !dbg !871
  %162 = getelementptr inbounds %struct.item, %struct.item* %161, i64 0, i32 1, !dbg !982
  %163 = bitcast %struct.item** %162 to i64*, !dbg !982
  %164 = load i64, i64* %163, align 8, !dbg !982, !tbaa !983
  %165 = bitcast %struct.item** %160 to i64*, !dbg !984
  store i64 %164, i64* %165, align 8, !dbg !984, !tbaa !865
  store %struct.item* %116, %struct.item** %162, align 8, !dbg !985, !tbaa !983
  %166 = getelementptr inbounds %struct.item, %struct.item* %161, i64 0, i32 2, !dbg !986
  br label %175, !dbg !987

; <label>:167:                                    ; preds = %158
  %168 = getelementptr inbounds %struct.item, %struct.item* %116, i64 0, i32 1, !dbg !988
  %169 = load %struct.item*, %struct.item** %168, align 8, !dbg !988, !tbaa !983
  call void @llvm.dbg.value(metadata %struct.item* %169, metadata !850, metadata !DIExpression()) #10, !dbg !871
  %170 = getelementptr inbounds %struct.item, %struct.item* %169, i64 0, i32 2, !dbg !990
  %171 = bitcast %struct.item** %170 to i64*, !dbg !990
  %172 = load i64, i64* %171, align 8, !dbg !990, !tbaa !865
  %173 = bitcast %struct.item** %168 to i64*, !dbg !991
  store i64 %172, i64* %173, align 8, !dbg !991, !tbaa !983
  store %struct.item* %116, %struct.item** %170, align 8, !dbg !992, !tbaa !865
  %174 = getelementptr inbounds %struct.item, %struct.item* %169, i64 0, i32 1, !dbg !993
  br label %175

; <label>:175:                                    ; preds = %167, %159
  %176 = phi %struct.item** [ %174, %167 ], [ %166, %159 ]
  %177 = phi %struct.item** [ %113, %167 ], [ %112, %159 ]
  %178 = phi %struct.item* [ %169, %167 ], [ %161, %159 ], !dbg !994
  %179 = bitcast %struct.item** %176 to i64*, !dbg !918
  %180 = load i64, i64* %179, align 8, !dbg !918, !tbaa !690
  %181 = bitcast %struct.item** %177 to i64*, !dbg !918
  store i64 %180, i64* %181, align 8, !dbg !918, !tbaa !690
  store %struct.item* %84, %struct.item** %176, align 8, !dbg !918, !tbaa !690
  call void @llvm.dbg.value(metadata %struct.item* %178, metadata !850, metadata !DIExpression()) #10, !dbg !871
  store i32 0, i32* %137, align 8, !dbg !995, !tbaa !946
  store i32 0, i32* %146, align 8, !dbg !996, !tbaa !946
  %182 = getelementptr inbounds %struct.item, %struct.item* %178, i64 0, i32 3, !dbg !997
  %183 = load i32, i32* %182, align 8, !dbg !997, !tbaa !946
  %184 = icmp eq i32 %183, %115, !dbg !999
  br i1 %184, label %185, label %186, !dbg !1000

; <label>:185:                                    ; preds = %175
  store i32 %141, i32* %137, align 8, !dbg !1001, !tbaa !946
  br label %189, !dbg !1002

; <label>:186:                                    ; preds = %175
  %187 = icmp eq i32 %183, %141, !dbg !1003
  br i1 %187, label %188, label %189, !dbg !1005

; <label>:188:                                    ; preds = %186
  store i32 %115, i32* %146, align 8, !dbg !1006, !tbaa !946
  br label %189, !dbg !1007

; <label>:189:                                    ; preds = %185, %186, %188, %149
  %190 = phi i32* [ %137, %149 ], [ %182, %188 ], [ %182, %186 ], [ %182, %185 ]
  %191 = phi %struct.item* [ %116, %149 ], [ %178, %188 ], [ %178, %186 ], [ %178, %185 ], !dbg !1008
  store i32 0, i32* %190, align 8, !dbg !918, !tbaa !946
  call void @llvm.dbg.value(metadata %struct.item* %191, metadata !850, metadata !DIExpression()) #10, !dbg !871
  %192 = getelementptr inbounds %struct.item, %struct.item* %83, i64 0, i32 2, !dbg !1009
  %193 = load %struct.item*, %struct.item** %192, align 8, !dbg !1009, !tbaa !865
  %194 = icmp eq %struct.item* %84, %193, !dbg !1011
  br i1 %194, label %195, label %196, !dbg !1012

; <label>:195:                                    ; preds = %189
  store %struct.item* %191, %struct.item** %192, align 8, !dbg !1013, !tbaa !865
  br label %208, !dbg !1014

; <label>:196:                                    ; preds = %189
  %197 = getelementptr inbounds %struct.item, %struct.item* %83, i64 0, i32 1, !dbg !1015
  store %struct.item* %191, %struct.item** %197, align 8, !dbg !1016, !tbaa !983
  br label %208

; <label>:198:                                    ; preds = %81
  %199 = getelementptr inbounds %struct.item, %struct.item* %90, i64 0, i32 3, !dbg !1017
  %200 = load i32, i32* %199, align 8, !dbg !1017, !tbaa !946
  %201 = icmp eq i32 %200, 0, !dbg !1019
  %202 = select i1 %201, %struct.item* %84, %struct.item* %90, !dbg !1020
  %203 = select i1 %201, %struct.item* %83, %struct.item* %85, !dbg !1020
  call void @llvm.dbg.value(metadata %struct.item* %203, metadata !854, metadata !DIExpression()) #10, !dbg !869
  call void @llvm.dbg.value(metadata %struct.item* %202, metadata !853, metadata !DIExpression()) #10, !dbg !870
  call void @llvm.dbg.value(metadata %struct.item* %90, metadata !850, metadata !DIExpression()) #10, !dbg !871
  %204 = getelementptr inbounds %struct.item, %struct.item* %90, i64 0, i32 0, !dbg !872
  %205 = load i8*, i8** %204, align 8, !dbg !872, !tbaa !874
  %206 = call i32 @strcmp(i8* %60, i8* %205) #14, !dbg !875
  call void @llvm.dbg.value(metadata i32 %206, metadata !855, metadata !DIExpression()) #10, !dbg !876
  %207 = icmp eq i32 %206, 0, !dbg !877
  br i1 %207, label %208, label %81, !dbg !879, !llvm.loop !1021

; <label>:208:                                    ; preds = %198, %196, %195, %143, %76, %65
  %209 = phi %struct.item* [ %72, %76 ], [ %94, %143 ], [ %94, %196 ], [ %94, %195 ], [ %63, %65 ], [ %90, %198 ], !dbg !1024
  call void @llvm.dbg.value(metadata %struct.item* %209, metadata !787, metadata !DIExpression()) #10, !dbg !805
  %210 = icmp eq %struct.item* %55, null, !dbg !1025
  br i1 %210, label %230, label %211, !dbg !1027

; <label>:211:                                    ; preds = %208
  call void @llvm.dbg.value(metadata %struct.item* %55, metadata !1028, metadata !DIExpression()) #10, !dbg !1035
  call void @llvm.dbg.value(metadata %struct.item* %209, metadata !1033, metadata !DIExpression()) #10, !dbg !1038
  %212 = getelementptr inbounds %struct.item, %struct.item* %55, i64 0, i32 0, !dbg !1039
  %213 = load i8*, i8** %212, align 8, !dbg !1039, !tbaa !874
  %214 = getelementptr inbounds %struct.item, %struct.item* %209, i64 0, i32 0, !dbg !1039
  %215 = load i8*, i8** %214, align 8, !dbg !1039, !tbaa !874
  %216 = call i32 @strcmp(i8* %213, i8* %215) #14, !dbg !1039
  %217 = icmp eq i32 %216, 0, !dbg !1039
  br i1 %217, label %230, label %218, !dbg !1041

; <label>:218:                                    ; preds = %211
  %219 = getelementptr inbounds %struct.item, %struct.item* %209, i64 0, i32 4, !dbg !1042
  %220 = load i64, i64* %219, align 8, !dbg !1044, !tbaa !1045
  %221 = add i64 %220, 1, !dbg !1044
  store i64 %221, i64* %219, align 8, !dbg !1044, !tbaa !1045
  %222 = call noalias i8* @xmalloc(i64 16) #10, !dbg !1046
  call void @llvm.dbg.value(metadata i8* %222, metadata !1034, metadata !DIExpression()) #10, !dbg !1047
  %223 = bitcast i8* %222 to %struct.item**, !dbg !1048
  store %struct.item* %209, %struct.item** %223, align 8, !dbg !1049, !tbaa !1050
  %224 = getelementptr inbounds %struct.item, %struct.item* %55, i64 0, i32 6, !dbg !1052
  %225 = bitcast %struct.successor** %224 to i64*, !dbg !1052
  %226 = load i64, i64* %225, align 8, !dbg !1052, !tbaa !1053
  %227 = getelementptr inbounds i8, i8* %222, i64 8, !dbg !1054
  %228 = bitcast i8* %227 to i64*, !dbg !1055
  store i64 %226, i64* %228, align 8, !dbg !1055, !tbaa !1056
  %229 = bitcast %struct.successor** %224 to i8**, !dbg !1057
  store i8* %222, i8** %229, align 8, !dbg !1057, !tbaa !1053
  br label %230, !dbg !1058

; <label>:230:                                    ; preds = %218, %211, %208
  %231 = phi %struct.item* [ %209, %208 ], [ null, %211 ], [ null, %218 ]
  br label %54, !dbg !804

; <label>:232:                                    ; preds = %54
  call void @llvm.dbg.value(metadata %struct.item* %55, metadata !786, metadata !DIExpression()) #10, !dbg !804
  call void @llvm.dbg.value(metadata %struct.item* %55, metadata !786, metadata !DIExpression()) #10, !dbg !804
  call void @llvm.dbg.value(metadata %struct.item* %55, metadata !786, metadata !DIExpression()) #10, !dbg !804
  call void @llvm.dbg.value(metadata %struct.item* %55, metadata !786, metadata !DIExpression()) #10, !dbg !804
  call void @llvm.dbg.value(metadata %struct.item* %55, metadata !786, metadata !DIExpression()) #10, !dbg !804
  call void @llvm.dbg.value(metadata %struct.item* %55, metadata !786, metadata !DIExpression()) #10, !dbg !804
  call void @llvm.dbg.value(metadata %struct.item* %55, metadata !786, metadata !DIExpression()) #10, !dbg !804
  call void @llvm.dbg.value(metadata %struct.item* %55, metadata !786, metadata !DIExpression()) #10, !dbg !804
  call void @llvm.dbg.value(metadata %struct.item* %55, metadata !786, metadata !DIExpression()) #10, !dbg !804
  %233 = icmp eq %struct.item* %55, null, !dbg !1059
  br i1 %233, label %237, label %234, !dbg !1061

; <label>:234:                                    ; preds = %232
  %235 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.34, i64 0, i64 0), i32 5) #10, !dbg !1062
  %236 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %32) #10, !dbg !1062
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %235, i8* %236) #10, !dbg !1062
  unreachable, !dbg !1062

; <label>:237:                                    ; preds = %232
  call void @llvm.dbg.value(metadata %struct.item* %37, metadata !1063, metadata !DIExpression()) #10, !dbg !1072
  call void @llvm.dbg.value(metadata i1 (%struct.item*)* @count_items, metadata !1071, metadata !DIExpression()) #10, !dbg !1074
  %238 = load %struct.item*, %struct.item** %52, align 8, !dbg !1075, !tbaa !865
  %239 = icmp eq %struct.item* %238, null, !dbg !1077
  br i1 %239, label %242, label %240, !dbg !1078

; <label>:240:                                    ; preds = %237
  %241 = call fastcc zeroext i1 @recurse_tree(%struct.item* nonnull %238, i1 (%struct.item*)* nonnull @count_items) #10, !dbg !1079
  br label %242, !dbg !1079

; <label>:242:                                    ; preds = %240, %237
  call void @llvm.dbg.value(metadata i8 1, metadata !784, metadata !DIExpression()) #10, !dbg !803
  %243 = load i64, i64* @n_strings, align 8, !dbg !1080, !tbaa !1081
  %244 = icmp eq i64 %243, 0, !dbg !1082
  br i1 %244, label %303, label %245, !dbg !1083

; <label>:245:                                    ; preds = %242, %300
  %246 = phi i32 [ 0, %300 ], [ 1, %242 ]
  call void @llvm.dbg.value(metadata %struct.item* %37, metadata !1063, metadata !DIExpression()) #10, !dbg !1084
  call void @llvm.dbg.value(metadata i1 (%struct.item*)* @scan_zeros, metadata !1071, metadata !DIExpression()) #10, !dbg !1086
  br i1 %239, label %249, label %247, !dbg !1087

; <label>:247:                                    ; preds = %245
  %248 = call fastcc zeroext i1 @recurse_tree(%struct.item* nonnull %238, i1 (%struct.item*)* nonnull @scan_zeros) #10, !dbg !1088
  br label %249, !dbg !1088

; <label>:249:                                    ; preds = %247, %245
  %250 = load %struct.item*, %struct.item** @head, align 8, !dbg !1089, !tbaa !690
  %251 = icmp eq %struct.item* %250, null, !dbg !1090
  br i1 %251, label %252, label %254, !dbg !1090

; <label>:252:                                    ; preds = %249
  %253 = load i64, i64* @n_strings, align 8, !dbg !1091, !tbaa !1081
  br label %288, !dbg !1090

; <label>:254:                                    ; preds = %249, %282
  %255 = phi %struct.item* [ %286, %282 ], [ %250, %249 ]
  %256 = getelementptr inbounds %struct.item, %struct.item* %255, i64 0, i32 6, !dbg !1093
  %257 = load %struct.successor*, %struct.successor** %256, align 8, !dbg !1093, !tbaa !1053
  call void @llvm.dbg.value(metadata %struct.successor* %257, metadata !798, metadata !DIExpression()) #10, !dbg !1094
  %258 = getelementptr inbounds %struct.item, %struct.item* %255, i64 0, i32 0, !dbg !1095
  %259 = load i8*, i8** %258, align 8, !dbg !1095, !tbaa !874
  %260 = call i32 @puts(i8* %259) #10, !dbg !1096
  %261 = load %struct.item*, %struct.item** @head, align 8, !dbg !1097, !tbaa !690
  %262 = getelementptr inbounds %struct.item, %struct.item* %261, i64 0, i32 0, !dbg !1098
  store i8* null, i8** %262, align 8, !dbg !1099, !tbaa !874
  %263 = load i64, i64* @n_strings, align 8, !dbg !1100, !tbaa !1081
  %264 = add i64 %263, -1, !dbg !1100
  store i64 %264, i64* @n_strings, align 8, !dbg !1100, !tbaa !1081
  call void @llvm.dbg.value(metadata %struct.successor* %257, metadata !798, metadata !DIExpression()) #10, !dbg !1094
  %265 = icmp eq %struct.successor* %257, null, !dbg !1101
  br i1 %265, label %282, label %266, !dbg !1101

; <label>:266:                                    ; preds = %254, %278
  %267 = phi %struct.successor* [ %280, %278 ], [ %257, %254 ]
  call void @llvm.dbg.value(metadata %struct.successor* %267, metadata !798, metadata !DIExpression()) #10, !dbg !1094
  %268 = getelementptr inbounds %struct.successor, %struct.successor* %267, i64 0, i32 0, !dbg !1102
  %269 = load %struct.item*, %struct.item** %268, align 8, !dbg !1102, !tbaa !1050
  %270 = getelementptr inbounds %struct.item, %struct.item* %269, i64 0, i32 4, !dbg !1104
  %271 = load i64, i64* %270, align 8, !dbg !1105, !tbaa !1045
  %272 = add i64 %271, -1, !dbg !1105
  store i64 %272, i64* %270, align 8, !dbg !1105, !tbaa !1045
  %273 = icmp eq i64 %272, 0, !dbg !1106
  br i1 %273, label %274, label %278, !dbg !1108

; <label>:274:                                    ; preds = %266
  %275 = ptrtoint %struct.item* %269 to i64, !dbg !1108
  %276 = load %struct.item*, %struct.item** @zeros, align 8, !dbg !1109, !tbaa !690
  %277 = getelementptr inbounds %struct.item, %struct.item* %276, i64 0, i32 5, !dbg !1111
  store %struct.item* %269, %struct.item** %277, align 8, !dbg !1112, !tbaa !1113
  store i64 %275, i64* bitcast (%struct.item** @zeros to i64*), align 8, !dbg !1114, !tbaa !690
  br label %278, !dbg !1115

; <label>:278:                                    ; preds = %274, %266
  %279 = getelementptr inbounds %struct.successor, %struct.successor* %267, i64 0, i32 1, !dbg !1116
  %280 = load %struct.successor*, %struct.successor** %279, align 8, !dbg !1116, !tbaa !1056
  call void @llvm.dbg.value(metadata %struct.successor* %280, metadata !798, metadata !DIExpression()) #10, !dbg !1094
  %281 = icmp eq %struct.successor* %280, null, !dbg !1101
  br i1 %281, label %282, label %266, !dbg !1101, !llvm.loop !1117

; <label>:282:                                    ; preds = %278, %254
  %283 = getelementptr inbounds %struct.item, %struct.item* %261, i64 0, i32 5, !dbg !1120
  %284 = bitcast %struct.item** %283 to i64*, !dbg !1120
  %285 = load i64, i64* %284, align 8, !dbg !1120, !tbaa !1113
  store i64 %285, i64* bitcast (%struct.item** @head to i64*), align 8, !dbg !1121, !tbaa !690
  %286 = inttoptr i64 %285 to %struct.item*
  %287 = icmp eq i64 %285, 0, !dbg !1090
  br i1 %287, label %288, label %254, !dbg !1090, !llvm.loop !1122

; <label>:288:                                    ; preds = %282, %252
  %289 = phi i64 [ %253, %252 ], [ %264, %282 ], !dbg !1091
  %290 = icmp eq i64 %289, 0, !dbg !1125
  br i1 %290, label %303, label %291, !dbg !1126

; <label>:291:                                    ; preds = %288
  %292 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.35, i64 0, i64 0), i32 5) #10, !dbg !1127
  %293 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %32) #10, !dbg !1129
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %292, i8* %293) #10, !dbg !1130
  call void @llvm.dbg.value(metadata i8 0, metadata !784, metadata !DIExpression()) #10, !dbg !803
  br label %294, !dbg !1131

; <label>:294:                                    ; preds = %297, %291
  call void @llvm.dbg.value(metadata %struct.item* %37, metadata !1063, metadata !DIExpression()) #10, !dbg !1132
  call void @llvm.dbg.value(metadata i1 (%struct.item*)* @detect_loop, metadata !1071, metadata !DIExpression()) #10, !dbg !1134
  br i1 %239, label %297, label %295, !dbg !1135

; <label>:295:                                    ; preds = %294
  %296 = call fastcc zeroext i1 @recurse_tree(%struct.item* nonnull %238, i1 (%struct.item*)* nonnull @detect_loop) #10, !dbg !1136
  br label %297, !dbg !1136

; <label>:297:                                    ; preds = %295, %294
  %298 = load %struct.item*, %struct.item** @loop, align 8, !dbg !1137, !tbaa !690
  %299 = icmp eq %struct.item* %298, null, !dbg !1138
  br i1 %299, label %300, label %294, !dbg !1138, !llvm.loop !1139

; <label>:300:                                    ; preds = %297
  %301 = load i64, i64* @n_strings, align 8, !dbg !1080, !tbaa !1081
  call void @llvm.dbg.value(metadata i8 0, metadata !784, metadata !DIExpression()) #10, !dbg !803
  %302 = icmp eq i64 %301, 0, !dbg !1082
  br i1 %302, label %303, label %245, !dbg !1083, !llvm.loop !1142

; <label>:303:                                    ; preds = %300, %288, %242
  %304 = phi i32 [ 1, %242 ], [ 0, %300 ], [ %246, %288 ], !dbg !1145
  %305 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1146, !tbaa !690
  %306 = call i32 @rpl_fclose(%struct._IO_FILE* %305) #10, !dbg !1148
  %307 = icmp eq i32 %306, 0, !dbg !1149
  br i1 %307, label %317, label %308, !dbg !1150

; <label>:308:                                    ; preds = %303
  %309 = tail call i32* @__errno_location() #17, !dbg !1151
  %310 = load i32, i32* %309, align 4, !dbg !1151, !tbaa !763
  br i1 %35, label %311, label %313, !dbg !1151

; <label>:311:                                    ; preds = %308
  %312 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.36, i64 0, i64 0), i32 5) #10, !dbg !1151
  br label %315, !dbg !1151

; <label>:313:                                    ; preds = %308
  %314 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %32) #10, !dbg !1151
  br label %315, !dbg !1151

; <label>:315:                                    ; preds = %313, %311
  %316 = phi i8* [ %312, %311 ], [ %314, %313 ], !dbg !1151
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %310, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), i8* %316) #10, !dbg !1151
  unreachable, !dbg !1151

; <label>:317:                                    ; preds = %303
  %318 = and i32 %304, 1, !dbg !1152
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %33) #10, !dbg !1153
  %319 = xor i32 %318, 1, !dbg !1154
  ret i32 %319, !dbg !1155
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

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #4

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define internal zeroext i1 @count_items(%struct.item* nocapture readnone) #7 !dbg !1156 {
  call void @llvm.dbg.value(metadata %struct.item* %0, metadata !1158, metadata !DIExpression()), !dbg !1159
  %2 = load i64, i64* @n_strings, align 8, !dbg !1160, !tbaa !1081
  %3 = add i64 %2, 1, !dbg !1160
  store i64 %3, i64* @n_strings, align 8, !dbg !1160, !tbaa !1081
  ret i1 false, !dbg !1161
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @recurse_tree(%struct.item*, i1 (%struct.item*)*) unnamed_addr #7 !dbg !1162 {
  call void @llvm.dbg.value(metadata %struct.item* %0, metadata !1166, metadata !DIExpression()), !dbg !1168
  call void @llvm.dbg.value(metadata i1 (%struct.item*)* %1, metadata !1167, metadata !DIExpression()), !dbg !1169
  %3 = getelementptr inbounds %struct.item, %struct.item* %0, i64 0, i32 1, !dbg !1170
  %4 = load %struct.item*, %struct.item** %3, align 8, !dbg !1170, !tbaa !983
  %5 = icmp eq %struct.item* %4, null, !dbg !1172
  br i1 %5, label %6, label %12, !dbg !1173

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.item, %struct.item* %0, i64 0, i32 2, !dbg !1174
  %8 = load %struct.item*, %struct.item** %7, align 8, !dbg !1174, !tbaa !865
  %9 = icmp eq %struct.item* %8, null, !dbg !1175
  br i1 %9, label %10, label %14, !dbg !1176

; <label>:10:                                     ; preds = %6
  %11 = tail call zeroext i1 %1(%struct.item* nonnull %0) #10, !dbg !1177, !callees !1178
  br label %23, !dbg !1179

; <label>:12:                                     ; preds = %2
  %13 = tail call fastcc zeroext i1 @recurse_tree(%struct.item* nonnull %4, i1 (%struct.item*)* %1), !dbg !1180
  br i1 %13, label %23, label %14, !dbg !1184

; <label>:14:                                     ; preds = %6, %12
  %15 = tail call zeroext i1 %1(%struct.item* nonnull %0) #10, !dbg !1185, !callees !1178
  br i1 %15, label %23, label %16, !dbg !1187

; <label>:16:                                     ; preds = %14
  %17 = getelementptr inbounds %struct.item, %struct.item* %0, i64 0, i32 2, !dbg !1188
  %18 = load %struct.item*, %struct.item** %17, align 8, !dbg !1188, !tbaa !865
  %19 = icmp eq %struct.item* %18, null, !dbg !1190
  br i1 %19, label %22, label %20, !dbg !1191

; <label>:20:                                     ; preds = %16
  %21 = tail call fastcc zeroext i1 @recurse_tree(%struct.item* nonnull %18, i1 (%struct.item*)* %1), !dbg !1192
  br i1 %21, label %23, label %22, !dbg !1194

; <label>:22:                                     ; preds = %16, %20
  br label %23, !dbg !1195

; <label>:23:                                     ; preds = %20, %14, %12, %22, %10
  %24 = phi i1 [ %11, %10 ], [ false, %22 ], [ true, %12 ], [ true, %14 ], [ true, %20 ], !dbg !1196
  ret i1 %24, !dbg !1197
}

; Function Attrs: nounwind sspstrong uwtable
define internal zeroext i1 @scan_zeros(%struct.item*) #7 !dbg !1198 {
  call void @llvm.dbg.value(metadata %struct.item* %0, metadata !1200, metadata !DIExpression()), !dbg !1201
  %2 = getelementptr inbounds %struct.item, %struct.item* %0, i64 0, i32 4, !dbg !1202
  %3 = load i64, i64* %2, align 8, !dbg !1202, !tbaa !1045
  %4 = icmp eq i64 %3, 0, !dbg !1204
  br i1 %4, label %5, label %15, !dbg !1205

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.item, %struct.item* %0, i64 0, i32 0, !dbg !1206
  %7 = load i8*, i8** %6, align 8, !dbg !1206, !tbaa !874
  %8 = icmp eq i8* %7, null, !dbg !1207
  br i1 %8, label %15, label %9, !dbg !1208

; <label>:9:                                      ; preds = %5
  %10 = load %struct.item*, %struct.item** @head, align 8, !dbg !1209, !tbaa !690
  %11 = icmp eq %struct.item* %10, null, !dbg !1212
  %12 = load %struct.item*, %struct.item** @zeros, align 8, !dbg !1213
  %13 = getelementptr inbounds %struct.item, %struct.item* %12, i64 0, i32 5, !dbg !1214
  %14 = select i1 %11, %struct.item** @head, %struct.item** %13, !dbg !1215
  store %struct.item* %0, %struct.item** %14, align 8, !dbg !1216, !tbaa !690
  store %struct.item* %0, %struct.item** @zeros, align 8, !dbg !1217, !tbaa !690
  br label %15, !dbg !1218

; <label>:15:                                     ; preds = %5, %9, %1
  ret i1 false, !dbg !1219
}

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal zeroext i1 @detect_loop(%struct.item*) #7 !dbg !1220 {
  call void @llvm.dbg.value(metadata %struct.item* %0, metadata !1222, metadata !DIExpression()), !dbg !1238
  %2 = getelementptr inbounds %struct.item, %struct.item* %0, i64 0, i32 4, !dbg !1239
  %3 = load i64, i64* %2, align 8, !dbg !1239, !tbaa !1045
  %4 = icmp eq i64 %3, 0, !dbg !1240
  br i1 %4, label %71, label %5, !dbg !1241

; <label>:5:                                      ; preds = %1
  %6 = load %struct.item*, %struct.item** @loop, align 8, !dbg !1242, !tbaa !690
  %7 = icmp eq %struct.item* %6, null, !dbg !1243
  br i1 %7, label %8, label %9, !dbg !1244

; <label>:8:                                      ; preds = %5
  store %struct.item* %0, %struct.item** @loop, align 8, !dbg !1245, !tbaa !690
  br label %71, !dbg !1246

; <label>:9:                                      ; preds = %5
  %10 = getelementptr inbounds %struct.item, %struct.item* %0, i64 0, i32 6, !dbg !1247
  call void @llvm.dbg.value(metadata %struct.successor** %10, metadata !1223, metadata !DIExpression()), !dbg !1248
  %11 = load %struct.successor*, %struct.successor** %10, align 8, !dbg !1249, !tbaa !690
  %12 = icmp eq %struct.successor* %11, null, !dbg !1250
  br i1 %12, label %71, label %13, !dbg !1250

; <label>:13:                                     ; preds = %9
  call void @llvm.dbg.value(metadata %struct.successor** %10, metadata !1223, metadata !DIExpression()), !dbg !1248
  %14 = getelementptr inbounds %struct.successor, %struct.successor* %11, i64 0, i32 0, !dbg !1251
  %15 = load %struct.item*, %struct.item** %14, align 8, !dbg !1251, !tbaa !1050
  %16 = icmp eq %struct.item* %15, %6, !dbg !1252
  br i1 %16, label %28, label %17, !dbg !1253

; <label>:17:                                     ; preds = %13, %22
  %18 = phi %struct.successor* [ %20, %22 ], [ %11, %13 ]
  %19 = getelementptr inbounds %struct.successor, %struct.successor* %18, i64 0, i32 1, !dbg !1254
  call void @llvm.dbg.value(metadata %struct.successor** %19, metadata !1223, metadata !DIExpression()), !dbg !1248
  %20 = load %struct.successor*, %struct.successor** %19, align 8, !dbg !1249, !tbaa !690
  %21 = icmp eq %struct.successor* %20, null, !dbg !1250
  br i1 %21, label %71, label %22, !dbg !1250, !llvm.loop !1255

; <label>:22:                                     ; preds = %17
  call void @llvm.dbg.value(metadata %struct.successor** %19, metadata !1223, metadata !DIExpression()), !dbg !1248
  %23 = getelementptr inbounds %struct.successor, %struct.successor* %20, i64 0, i32 0, !dbg !1251
  %24 = load %struct.item*, %struct.item** %23, align 8, !dbg !1251, !tbaa !1050
  %25 = icmp eq %struct.item* %24, %6, !dbg !1252
  call void @llvm.dbg.value(metadata %struct.successor* %20, metadata !1223, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !1248
  br i1 %25, label %26, label %17, !dbg !1253, !llvm.loop !1255

; <label>:26:                                     ; preds = %22
  %27 = getelementptr inbounds %struct.successor, %struct.successor* %18, i64 0, i32 1, !dbg !1254
  br label %28, !dbg !1257

; <label>:28:                                     ; preds = %26, %13
  %29 = phi %struct.successor** [ %10, %13 ], [ %27, %26 ]
  call void @llvm.dbg.value(metadata %struct.successor** %29, metadata !1223, metadata !DIExpression()), !dbg !1248
  call void @llvm.dbg.value(metadata %struct.successor** undef, metadata !1223, metadata !DIExpression()), !dbg !1248
  call void @llvm.dbg.value(metadata %struct.successor** undef, metadata !1223, metadata !DIExpression()), !dbg !1248
  call void @llvm.dbg.value(metadata %struct.successor** undef, metadata !1223, metadata !DIExpression()), !dbg !1248
  %30 = getelementptr inbounds %struct.item, %struct.item* %0, i64 0, i32 5, !dbg !1257
  %31 = load %struct.item*, %struct.item** %30, align 8, !dbg !1257, !tbaa !1113
  %32 = icmp eq %struct.item* %31, null, !dbg !1258
  br i1 %32, label %69, label %33, !dbg !1259

; <label>:33:                                     ; preds = %28, %53
  %34 = phi %struct.item* [ %56, %53 ], [ %6, %28 ], !dbg !1260
  %35 = getelementptr inbounds %struct.item, %struct.item* %34, i64 0, i32 5, !dbg !1261
  %36 = bitcast %struct.item** %35 to i64*, !dbg !1261
  %37 = load i64, i64* %36, align 8, !dbg !1261, !tbaa !1113
  call void @llvm.dbg.value(metadata %struct.item** %35, metadata !1229, metadata !DIExpression(DW_OP_deref)), !dbg !1262
  %38 = getelementptr inbounds %struct.item, %struct.item* %34, i64 0, i32 0, !dbg !1263
  %39 = load i8*, i8** %38, align 8, !dbg !1263, !tbaa !874
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), i8* %39) #10, !dbg !1264
  %40 = load %struct.item*, %struct.item** @loop, align 8, !dbg !1265, !tbaa !690
  %41 = icmp eq %struct.item* %40, %0, !dbg !1267
  br i1 %41, label %42, label %53, !dbg !1268

; <label>:42:                                     ; preds = %33
  %43 = load %struct.successor*, %struct.successor** %29, align 8, !dbg !1269, !tbaa !690
  %44 = getelementptr inbounds %struct.successor, %struct.successor* %43, i64 0, i32 0, !dbg !1271
  %45 = load %struct.item*, %struct.item** %44, align 8, !dbg !1271, !tbaa !1050
  %46 = getelementptr inbounds %struct.item, %struct.item* %45, i64 0, i32 4, !dbg !1272
  %47 = load i64, i64* %46, align 8, !dbg !1273, !tbaa !1045
  %48 = add i64 %47, -1, !dbg !1273
  store i64 %48, i64* %46, align 8, !dbg !1273, !tbaa !1045
  %49 = getelementptr inbounds %struct.successor, %struct.successor* %43, i64 0, i32 1, !dbg !1274
  %50 = bitcast %struct.successor** %49 to i64*, !dbg !1274
  %51 = load i64, i64* %50, align 8, !dbg !1274, !tbaa !1056
  %52 = bitcast %struct.successor** %29 to i64*, !dbg !1275
  store i64 %51, i64* %52, align 8, !dbg !1275, !tbaa !690
  br label %59

; <label>:53:                                     ; preds = %33
  %54 = getelementptr inbounds %struct.item, %struct.item* %40, i64 0, i32 5, !dbg !1276
  store %struct.item* null, %struct.item** %54, align 8, !dbg !1277, !tbaa !1113
  store i64 %37, i64* bitcast (%struct.item** @loop to i64*), align 8, !dbg !1278, !tbaa !690
  %55 = icmp eq i64 %37, 0, !dbg !1279
  %56 = inttoptr i64 %37 to %struct.item*
  br i1 %55, label %57, label %33, !llvm.loop !1280

; <label>:57:                                     ; preds = %53
  %58 = inttoptr i64 %37 to %struct.item*
  br label %59, !dbg !1282

; <label>:59:                                     ; preds = %57, %42
  %60 = phi %struct.item* [ %0, %42 ], [ %58, %57 ], !dbg !1283
  %61 = icmp eq %struct.item* %60, null, !dbg !1282
  br i1 %61, label %71, label %62, !dbg !1282

; <label>:62:                                     ; preds = %59, %62
  %63 = phi %struct.item* [ %67, %62 ], [ %60, %59 ]
  %64 = getelementptr inbounds %struct.item, %struct.item* %63, i64 0, i32 5, !dbg !1284
  %65 = bitcast %struct.item** %64 to i64*, !dbg !1284
  %66 = load i64, i64* %65, align 8, !dbg !1284, !tbaa !1113
  call void @llvm.dbg.value(metadata %struct.item** %64, metadata !1236, metadata !DIExpression(DW_OP_deref)), !dbg !1285
  store %struct.item* null, %struct.item** %64, align 8, !dbg !1286, !tbaa !1113
  %67 = inttoptr i64 %66 to %struct.item*
  %68 = icmp eq i64 %66, 0, !dbg !1282
  br i1 %68, label %70, label %62, !dbg !1282, !llvm.loop !1287

; <label>:69:                                     ; preds = %28
  store %struct.item* %6, %struct.item** %30, align 8, !dbg !1289, !tbaa !1113
  store %struct.item* %0, %struct.item** @loop, align 8, !dbg !1291, !tbaa !690
  br label %71, !dbg !1292

; <label>:70:                                     ; preds = %62
  store i64 0, i64* bitcast (%struct.item** @loop to i64*), align 8, !dbg !1293, !tbaa !690
  br label %71, !dbg !1282

; <label>:71:                                     ; preds = %17, %9, %59, %70, %8, %1, %69
  %72 = phi i1 [ false, %69 ], [ false, %1 ], [ false, %8 ], [ true, %70 ], [ true, %59 ], [ false, %9 ], [ false, %17 ], !dbg !1294
  ret i1 %72, !dbg !1295
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_file_name(i8*) local_unnamed_addr #7 !dbg !1296 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1298, metadata !DIExpression()), !dbg !1299
  store i8* %0, i8** @file_name, align 8, !dbg !1300, !tbaa !690
  ret void, !dbg !1301
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #7 !dbg !1302 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i1 %0, metadata !1306, metadata !DIExpression()), !dbg !1307
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1308, !tbaa !1309
  ret void, !dbg !1311
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #7 !dbg !1312 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1317, !tbaa !690
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #10, !dbg !1318
  %3 = icmp eq i32 %2, 0, !dbg !1319
  br i1 %3, label %22, label %4, !dbg !1320

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1321, !tbaa !1309, !range !1322
  %6 = icmp eq i8 %5, 0, !dbg !1321
  br i1 %6, label %11, label %7, !dbg !1323

; <label>:7:                                      ; preds = %4
  %8 = tail call i32* @__errno_location() #17, !dbg !1324
  %9 = load i32, i32* %8, align 4, !dbg !1324, !tbaa !763
  %10 = icmp eq i32 %9, 32, !dbg !1325
  br i1 %10, label %22, label %11, !dbg !1326

; <label>:11:                                     ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i64 0, i64 0), i32 5) #10, !dbg !1327
  call void @llvm.dbg.value(metadata i8* %12, metadata !1314, metadata !DIExpression()), !dbg !1328
  %13 = load i8*, i8** @file_name, align 8, !dbg !1329, !tbaa !690
  %14 = icmp eq i8* %13, null, !dbg !1329
  %15 = tail call i32* @__errno_location() #17, !dbg !1331
  %16 = load i32, i32* %15, align 4, !dbg !1331, !tbaa !763
  br i1 %14, label %19, label %17, !dbg !1332

; <label>:17:                                     ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #10, !dbg !1333
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.44, i64 0, i64 0), i8* %18, i8* %12) #10, !dbg !1334
  br label %20, !dbg !1334

; <label>:19:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.45, i64 0, i64 0), i8* %12) #10, !dbg !1335
  br label %20

; <label>:20:                                     ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1336, !tbaa !763
  tail call void @_exit(i32 %21) #15, !dbg !1337
  unreachable, !dbg !1337

; <label>:22:                                     ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1338, !tbaa !690
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #10, !dbg !1340
  %25 = icmp eq i32 %24, 0, !dbg !1341
  br i1 %25, label %28, label %26, !dbg !1342

; <label>:26:                                     ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1343, !tbaa !763
  tail call void @_exit(i32 %27) #15, !dbg !1344
  unreachable, !dbg !1344

; <label>:28:                                     ; preds = %22
  ret void, !dbg !1345
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fdadvise(i32, i64, i64, i32) local_unnamed_addr #7 !dbg !1346 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1357, metadata !DIExpression()), !dbg !1363
  call void @llvm.dbg.value(metadata i64 %1, metadata !1358, metadata !DIExpression()), !dbg !1364
  call void @llvm.dbg.value(metadata i64 %2, metadata !1359, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata i32 %3, metadata !1360, metadata !DIExpression()), !dbg !1366
  %5 = tail call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #10, !dbg !1367
  call void @llvm.dbg.value(metadata i32 %5, metadata !1361, metadata !DIExpression()), !dbg !1367
  ret void, !dbg !1368
}

; Function Attrs: nounwind
declare i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fadvise(%struct._IO_FILE*, i32) local_unnamed_addr #7 !dbg !1369 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1423, metadata !DIExpression()), !dbg !1425
  call void @llvm.dbg.value(metadata i32 %1, metadata !1424, metadata !DIExpression()), !dbg !1426
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !1427
  br i1 %3, label %7, label %4, !dbg !1429

; <label>:4:                                      ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !1430
  call void @llvm.dbg.value(metadata i32 %5, metadata !1357, metadata !DIExpression()) #10, !dbg !1431
  call void @llvm.dbg.value(metadata i64 0, metadata !1358, metadata !DIExpression()) #10, !dbg !1433
  call void @llvm.dbg.value(metadata i64 0, metadata !1359, metadata !DIExpression()) #10, !dbg !1434
  call void @llvm.dbg.value(metadata i32 %1, metadata !1360, metadata !DIExpression()) #10, !dbg !1435
  %6 = tail call i32 @posix_fadvise(i32 %5, i64 0, i64 0, i32 %1) #10, !dbg !1436
  call void @llvm.dbg.value(metadata i32 %6, metadata !1361, metadata !DIExpression()) #10, !dbg !1436
  br label %7, !dbg !1437

; <label>:7:                                      ; preds = %2, %4
  ret void, !dbg !1438
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct._IO_FILE* @freopen_safer(i8*, i8*, %struct._IO_FILE*) local_unnamed_addr #7 !dbg !1439 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1478, metadata !DIExpression()), !dbg !1485
  call void @llvm.dbg.value(metadata i8* %1, metadata !1479, metadata !DIExpression()), !dbg !1486
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %2, metadata !1480, metadata !DIExpression()), !dbg !1487
  call void @llvm.dbg.value(metadata i8 0, metadata !1481, metadata !DIExpression()), !dbg !1488
  call void @llvm.dbg.value(metadata i8 0, metadata !1482, metadata !DIExpression()), !dbg !1489
  call void @llvm.dbg.value(metadata i8 0, metadata !1483, metadata !DIExpression()), !dbg !1490
  %4 = tail call i32 @fileno(%struct._IO_FILE* %2) #10, !dbg !1491
  switch i32 %4, label %5 [
    i32 2, label %9
    i32 1, label %14
    i32 0, label %49
  ], !dbg !1492

; <label>:5:                                      ; preds = %3
  %6 = tail call i32 @dup2(i32 2, i32 2) #10, !dbg !1493
  %7 = icmp ne i32 %6, 2, !dbg !1496
  %8 = zext i1 %7 to i8, !dbg !1497
  br label %9, !dbg !1497

; <label>:9:                                      ; preds = %5, %3
  %10 = phi i8 [ 0, %3 ], [ %8, %5 ], !dbg !1498
  call void @llvm.dbg.value(metadata i8 %10, metadata !1483, metadata !DIExpression()), !dbg !1490
  %11 = tail call i32 @dup2(i32 1, i32 1) #10, !dbg !1499
  %12 = icmp ne i32 %11, 1, !dbg !1501
  %13 = zext i1 %12 to i8, !dbg !1502
  br label %14, !dbg !1502

; <label>:14:                                     ; preds = %3, %9
  %15 = phi i8 [ 0, %3 ], [ %13, %9 ], !dbg !1498
  %16 = phi i8 [ 0, %3 ], [ %10, %9 ], !dbg !1498
  call void @llvm.dbg.value(metadata i8 %16, metadata !1483, metadata !DIExpression()), !dbg !1490
  call void @llvm.dbg.value(metadata i8 %15, metadata !1482, metadata !DIExpression()), !dbg !1489
  %17 = tail call i32 @dup2(i32 0, i32 0) #10, !dbg !1503
  %18 = icmp eq i32 %17, 0, !dbg !1505
  call void @llvm.dbg.value(metadata i8 %16, metadata !1483, metadata !DIExpression()), !dbg !1490
  call void @llvm.dbg.value(metadata i8 %15, metadata !1482, metadata !DIExpression()), !dbg !1489
  br i1 %18, label %27, label %19, !dbg !1506

; <label>:19:                                     ; preds = %14
  call void @llvm.dbg.value(metadata i32 0, metadata !1508, metadata !DIExpression()) #10, !dbg !1514
  %20 = tail call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.52, i64 0, i64 0), i32 0) #10, !dbg !1516
  call void @llvm.dbg.value(metadata i32 %20, metadata !1513, metadata !DIExpression()) #10, !dbg !1517
  %21 = icmp eq i32 %20, 0, !dbg !1518
  br i1 %21, label %27, label %22, !dbg !1520

; <label>:22:                                     ; preds = %19
  %23 = icmp sgt i32 %20, -1, !dbg !1521
  br i1 %23, label %24, label %54, !dbg !1524

; <label>:24:                                     ; preds = %22
  %25 = tail call i32 @close(i32 %20) #10, !dbg !1525
  %26 = tail call i32* @__errno_location() #17, !dbg !1527
  store i32 9, i32* %26, align 4, !dbg !1528, !tbaa !763
  br label %54, !dbg !1529

; <label>:27:                                     ; preds = %14, %19
  %28 = phi i1 [ false, %14 ], [ true, %19 ]
  %29 = icmp eq i8 %15, 0, !dbg !1530
  br i1 %29, label %38, label %30, !dbg !1532

; <label>:30:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 1, metadata !1508, metadata !DIExpression()) #10, !dbg !1533
  %31 = tail call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.52, i64 0, i64 0), i32 0) #10, !dbg !1535
  call void @llvm.dbg.value(metadata i32 %31, metadata !1513, metadata !DIExpression()) #10, !dbg !1536
  %32 = icmp eq i32 %31, 1, !dbg !1537
  br i1 %32, label %38, label %33, !dbg !1538

; <label>:33:                                     ; preds = %30
  %34 = icmp sgt i32 %31, -1, !dbg !1539
  br i1 %34, label %35, label %54, !dbg !1540

; <label>:35:                                     ; preds = %33
  %36 = tail call i32 @close(i32 %31) #10, !dbg !1541
  %37 = tail call i32* @__errno_location() #17, !dbg !1542
  store i32 9, i32* %37, align 4, !dbg !1543, !tbaa !763
  br label %54, !dbg !1544

; <label>:38:                                     ; preds = %30, %27
  %39 = and i8 %16, 1, !dbg !1545
  %40 = icmp eq i8 %39, 0, !dbg !1545
  br i1 %40, label %49, label %41, !dbg !1547

; <label>:41:                                     ; preds = %38
  call void @llvm.dbg.value(metadata i32 2, metadata !1508, metadata !DIExpression()) #10, !dbg !1548
  %42 = tail call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.52, i64 0, i64 0), i32 0) #10, !dbg !1550
  call void @llvm.dbg.value(metadata i32 %42, metadata !1513, metadata !DIExpression()) #10, !dbg !1551
  %43 = icmp eq i32 %42, 2, !dbg !1552
  br i1 %43, label %49, label %44, !dbg !1553

; <label>:44:                                     ; preds = %41
  %45 = icmp sgt i32 %42, -1, !dbg !1554
  br i1 %45, label %46, label %54, !dbg !1555

; <label>:46:                                     ; preds = %44
  %47 = tail call i32 @close(i32 %42) #10, !dbg !1556
  %48 = tail call i32* @__errno_location() #17, !dbg !1557
  store i32 9, i32* %48, align 4, !dbg !1558, !tbaa !763
  br label %54, !dbg !1559

; <label>:49:                                     ; preds = %3, %41, %38
  %50 = phi i8 [ %16, %38 ], [ %16, %41 ], [ 0, %3 ]
  %51 = phi i8 [ %15, %38 ], [ %15, %41 ], [ 0, %3 ]
  %52 = phi i1 [ %28, %38 ], [ %28, %41 ], [ false, %3 ]
  %53 = tail call %struct._IO_FILE* @freopen(i8* %0, i8* %1, %struct._IO_FILE* %2) #10, !dbg !1560
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %53, metadata !1480, metadata !DIExpression()), !dbg !1487
  br label %54

; <label>:54:                                     ; preds = %44, %46, %33, %35, %22, %24, %49
  %55 = phi i8 [ %50, %49 ], [ %16, %24 ], [ %16, %22 ], [ %16, %35 ], [ %16, %33 ], [ %16, %46 ], [ %16, %44 ]
  %56 = phi i8 [ %51, %49 ], [ %15, %24 ], [ %15, %22 ], [ 1, %35 ], [ 1, %33 ], [ %15, %46 ], [ %15, %44 ]
  %57 = phi i1 [ %52, %49 ], [ true, %24 ], [ true, %22 ], [ %28, %35 ], [ %28, %33 ], [ %28, %46 ], [ %28, %44 ]
  %58 = phi %struct._IO_FILE* [ %53, %49 ], [ null, %24 ], [ null, %22 ], [ null, %35 ], [ null, %33 ], [ null, %46 ], [ null, %44 ], !dbg !1561
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %58, metadata !1480, metadata !DIExpression()), !dbg !1487
  %59 = tail call i32* @__errno_location() #17, !dbg !1562
  %60 = load i32, i32* %59, align 4, !dbg !1562, !tbaa !763
  call void @llvm.dbg.value(metadata i32 %60, metadata !1484, metadata !DIExpression()), !dbg !1563
  %61 = and i8 %55, 1, !dbg !1564
  %62 = icmp eq i8 %61, 0, !dbg !1564
  br i1 %62, label %65, label %63, !dbg !1566

; <label>:63:                                     ; preds = %54
  %64 = tail call i32 @close(i32 2) #10, !dbg !1567
  br label %65, !dbg !1567

; <label>:65:                                     ; preds = %54, %63
  %66 = and i8 %56, 1, !dbg !1568
  %67 = icmp eq i8 %66, 0, !dbg !1568
  br i1 %67, label %70, label %68, !dbg !1570

; <label>:68:                                     ; preds = %65
  %69 = tail call i32 @close(i32 1) #10, !dbg !1571
  br label %70, !dbg !1571

; <label>:70:                                     ; preds = %65, %68
  br i1 %57, label %71, label %73, !dbg !1572

; <label>:71:                                     ; preds = %70
  %72 = tail call i32 @close(i32 0) #10, !dbg !1573
  br label %73, !dbg !1573

; <label>:73:                                     ; preds = %71, %70
  %74 = icmp eq %struct._IO_FILE* %58, null, !dbg !1575
  br i1 %74, label %75, label %76, !dbg !1577

; <label>:75:                                     ; preds = %73
  store i32 %60, i32* %59, align 4, !dbg !1578, !tbaa !763
  br label %76, !dbg !1579

; <label>:76:                                     ; preds = %73, %75
  ret %struct._IO_FILE* %58, !dbg !1580
}

; Function Attrs: nounwind
declare i32 @dup2(i32, i32) local_unnamed_addr #2

declare i32 @open(i8* nocapture readonly, i32, ...) local_unnamed_addr #3

declare i32 @close(i32) local_unnamed_addr #3

declare %struct._IO_FILE* @freopen(i8*, i8*, %struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @parse_long_options(i32, i8**, i8*, i8*, i8*, void (i32)* nocapture, ...) local_unnamed_addr #7 !dbg !1581 {
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1586, metadata !DIExpression()), !dbg !1610
  call void @llvm.dbg.value(metadata i8** %1, metadata !1587, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8* %2, metadata !1588, metadata !DIExpression()), !dbg !1612
  call void @llvm.dbg.value(metadata i8* %3, metadata !1589, metadata !DIExpression()), !dbg !1613
  call void @llvm.dbg.value(metadata i8* %4, metadata !1590, metadata !DIExpression()), !dbg !1614
  call void @llvm.dbg.value(metadata void (i32)* %5, metadata !1591, metadata !DIExpression()), !dbg !1615
  %8 = load i32, i32* @opterr, align 4, !dbg !1616, !tbaa !763
  call void @llvm.dbg.value(metadata i32 %8, metadata !1593, metadata !DIExpression()), !dbg !1617
  store i32 0, i32* @opterr, align 4, !dbg !1618, !tbaa !763
  %9 = icmp eq i32 %0, 2, !dbg !1619
  br i1 %9, label %10, label %17, !dbg !1620

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 @getopt_long(i32 2, i8** %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.55, i64 0, i64 0), %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options.56, i64 0, i64 0), i32* null) #10, !dbg !1621
  call void @llvm.dbg.value(metadata i32 %11, metadata !1592, metadata !DIExpression()), !dbg !1622
  switch i32 %11, label %17 [
    i32 118, label %13
    i32 104, label %12
  ], !dbg !1623

; <label>:12:                                     ; preds = %10
  tail call void %5(i32 0) #10, !dbg !1624
  br label %17, !dbg !1625

; <label>:13:                                     ; preds = %10
  %14 = bitcast [1 x %struct.__va_list_tag]* %7 to i8*, !dbg !1626
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %14) #10, !dbg !1626
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %7, metadata !1594, metadata !DIExpression()), !dbg !1627
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0, !dbg !1628
  call void @llvm.va_start(i8* nonnull %14), !dbg !1628
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1629, !tbaa !690
  call void @version_etc_va(%struct._IO_FILE* %16, i8* %2, i8* %3, i8* %4, %struct.__va_list_tag* nonnull %15) #10, !dbg !1630
  call void @exit(i32 0) #15, !dbg !1631
  unreachable, !dbg !1631

; <label>:17:                                     ; preds = %10, %12, %6
  store i32 %8, i32* @opterr, align 4, !dbg !1632, !tbaa !763
  store i32 0, i32* @optind, align 4, !dbg !1633, !tbaa !763
  ret void, !dbg !1634
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8*) local_unnamed_addr #7 !dbg !1635 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1637, metadata !DIExpression()), !dbg !1640
  %2 = icmp eq i8* %0, null, !dbg !1641
  br i1 %2, label %3, label %6, !dbg !1643

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1644, !tbaa !690
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.63, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !1646
  tail call void @abort() #15, !dbg !1647
  unreachable, !dbg !1647

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !1648
  call void @llvm.dbg.value(metadata i8* %7, metadata !1638, metadata !DIExpression()), !dbg !1649
  %8 = icmp eq i8* %7, null, !dbg !1650
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1651
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1652
  call void @llvm.dbg.value(metadata i8* %10, metadata !1639, metadata !DIExpression()), !dbg !1653
  %11 = ptrtoint i8* %10 to i64, !dbg !1654
  %12 = ptrtoint i8* %0 to i64, !dbg !1654
  %13 = sub i64 %11, %12, !dbg !1654
  %14 = icmp sgt i64 %13, 6, !dbg !1656
  br i1 %14, label %15, label %24, !dbg !1657

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1658
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.64, i64 0, i64 0), i64 7) #14, !dbg !1659
  %18 = icmp eq i32 %17, 0, !dbg !1660
  br i1 %18, label %19, label %24, !dbg !1661

; <label>:19:                                     ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1637, metadata !DIExpression()), !dbg !1640
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.65, i64 0, i64 0), i64 3) #14, !dbg !1662
  %21 = icmp eq i32 %20, 0, !dbg !1665
  br i1 %21, label %22, label %24, !dbg !1666

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1667
  call void @llvm.dbg.value(metadata i8* %23, metadata !1637, metadata !DIExpression()), !dbg !1640
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1669, !tbaa !690
  br label %24, !dbg !1670

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1637, metadata !DIExpression()), !dbg !1640
  store i8* %25, i8** @program_name, align 8, !dbg !1671, !tbaa !690
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1672, !tbaa !690
  ret void, !dbg !1673
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #10

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #7 !dbg !1674 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1679, metadata !DIExpression()), !dbg !1682
  %2 = tail call i32* @__errno_location() #17, !dbg !1683
  %3 = load i32, i32* %2, align 4, !dbg !1683, !tbaa !763
  call void @llvm.dbg.value(metadata i32 %3, metadata !1680, metadata !DIExpression()), !dbg !1684
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1685
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1685
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1685
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #10, !dbg !1686
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1686
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1681, metadata !DIExpression()), !dbg !1687
  store i32 %3, i32* %2, align 4, !dbg !1688, !tbaa !763
  ret %struct.quoting_options* %8, !dbg !1689
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !1690 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1696, metadata !DIExpression()), !dbg !1697
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1698
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1698
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1699
  %5 = load i32, i32* %4, align 8, !dbg !1699, !tbaa !1700
  ret i32 %5, !dbg !1702
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !1703 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1707, metadata !DIExpression()), !dbg !1709
  call void @llvm.dbg.value(metadata i32 %1, metadata !1708, metadata !DIExpression()), !dbg !1710
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1711
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1711
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1712
  store i32 %1, i32* %5, align 8, !dbg !1713, !tbaa !1700
  ret void, !dbg !1714
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #7 !dbg !1715 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1719, metadata !DIExpression()), !dbg !1727
  call void @llvm.dbg.value(metadata i8 %1, metadata !1720, metadata !DIExpression()), !dbg !1728
  call void @llvm.dbg.value(metadata i32 %2, metadata !1721, metadata !DIExpression()), !dbg !1729
  call void @llvm.dbg.value(metadata i8 %1, metadata !1722, metadata !DIExpression()), !dbg !1730
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1731
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1731
  %6 = lshr i8 %1, 5, !dbg !1732
  %7 = zext i8 %6 to i64, !dbg !1732
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1733
  call void @llvm.dbg.value(metadata i32* %8, metadata !1723, metadata !DIExpression()), !dbg !1734
  %9 = and i8 %1, 31, !dbg !1735
  %10 = zext i8 %9 to i32, !dbg !1735
  call void @llvm.dbg.value(metadata i32 %10, metadata !1725, metadata !DIExpression()), !dbg !1736
  %11 = load i32, i32* %8, align 4, !dbg !1737, !tbaa !763
  %12 = lshr i32 %11, %10, !dbg !1738
  %13 = and i32 %12, 1, !dbg !1739
  call void @llvm.dbg.value(metadata i32 %13, metadata !1726, metadata !DIExpression()), !dbg !1740
  %14 = and i32 %2, 1, !dbg !1741
  %15 = xor i32 %13, %14, !dbg !1742
  %16 = shl i32 %15, %10, !dbg !1743
  %17 = xor i32 %16, %11, !dbg !1744
  store i32 %17, i32* %8, align 4, !dbg !1744, !tbaa !763
  ret i32 %13, !dbg !1745
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !1746 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1750, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata i32 %1, metadata !1751, metadata !DIExpression()), !dbg !1754
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1755
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1757
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1750, metadata !DIExpression()), !dbg !1753
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1758
  %6 = load i32, i32* %5, align 4, !dbg !1758, !tbaa !1759
  call void @llvm.dbg.value(metadata i32 %6, metadata !1752, metadata !DIExpression()), !dbg !1760
  store i32 %1, i32* %5, align 4, !dbg !1761, !tbaa !1759
  ret i32 %6, !dbg !1762
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #7 !dbg !1763 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1767, metadata !DIExpression()), !dbg !1770
  call void @llvm.dbg.value(metadata i8* %1, metadata !1768, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i8* %2, metadata !1769, metadata !DIExpression()), !dbg !1772
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1773
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1775
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1767, metadata !DIExpression()), !dbg !1770
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1776
  store i32 10, i32* %6, align 8, !dbg !1777, !tbaa !1700
  %7 = icmp ne i8* %1, null, !dbg !1778
  %8 = icmp ne i8* %2, null, !dbg !1780
  %9 = and i1 %7, %8, !dbg !1781
  br i1 %9, label %11, label %10, !dbg !1781

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !1782
  unreachable, !dbg !1782

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1783
  store i8* %1, i8** %12, align 8, !dbg !1784, !tbaa !1785
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1786
  store i8* %2, i8** %13, align 8, !dbg !1787, !tbaa !1788
  ret void, !dbg !1789
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #7 !dbg !1790 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1794, metadata !DIExpression()), !dbg !1802
  call void @llvm.dbg.value(metadata i64 %1, metadata !1795, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.value(metadata i8* %2, metadata !1796, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i64 %3, metadata !1797, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1798, metadata !DIExpression()), !dbg !1806
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1807
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1807
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1799, metadata !DIExpression()), !dbg !1808
  %8 = tail call i32* @__errno_location() #17, !dbg !1809
  %9 = load i32, i32* %8, align 4, !dbg !1809, !tbaa !763
  call void @llvm.dbg.value(metadata i32 %9, metadata !1800, metadata !DIExpression()), !dbg !1810
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1811
  %11 = load i32, i32* %10, align 8, !dbg !1811, !tbaa !1700
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1812
  %13 = load i32, i32* %12, align 4, !dbg !1812, !tbaa !1759
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1813
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1814
  %16 = load i8*, i8** %15, align 8, !dbg !1814, !tbaa !1785
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1815
  %18 = load i8*, i8** %17, align 8, !dbg !1815, !tbaa !1788
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1816
  call void @llvm.dbg.value(metadata i64 %19, metadata !1801, metadata !DIExpression()), !dbg !1817
  store i32 %9, i32* %8, align 4, !dbg !1818, !tbaa !763
  ret i64 %19, !dbg !1819
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #7 !dbg !1820 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1826, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %1, metadata !1827, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata i8* %2, metadata !1828, metadata !DIExpression()), !dbg !1892
  call void @llvm.dbg.value(metadata i64 %3, metadata !1829, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata i32 %4, metadata !1830, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.value(metadata i32 %5, metadata !1831, metadata !DIExpression()), !dbg !1895
  call void @llvm.dbg.value(metadata i32* %6, metadata !1832, metadata !DIExpression()), !dbg !1896
  call void @llvm.dbg.value(metadata i8* %7, metadata !1833, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8* %8, metadata !1834, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i64 0, metadata !1836, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i64 0, metadata !1837, metadata !DIExpression()), !dbg !1900
  call void @llvm.dbg.value(metadata i8* null, metadata !1838, metadata !DIExpression()), !dbg !1901
  call void @llvm.dbg.value(metadata i64 0, metadata !1839, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i8 0, metadata !1840, metadata !DIExpression()), !dbg !1903
  %13 = tail call i64 @__ctype_get_mb_cur_max() #10, !dbg !1904
  %14 = icmp eq i64 %13, 1, !dbg !1905
  %15 = lshr i32 %5, 1, !dbg !1906
  %16 = trunc i32 %15 to i8, !dbg !1906
  %17 = and i8 %16, 1, !dbg !1906
  call void @llvm.dbg.value(metadata i8 %17, metadata !1842, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i8 0, metadata !1843, metadata !DIExpression()), !dbg !1907
  call void @llvm.dbg.value(metadata i8 0, metadata !1844, metadata !DIExpression()), !dbg !1908
  call void @llvm.dbg.value(metadata i8 1, metadata !1845, metadata !DIExpression()), !dbg !1909
  %18 = icmp ne i32* %6, null
  %19 = bitcast i64* %10 to i8*
  %20 = icmp eq i32* %6, null
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 4
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr inbounds i8, i8* %2, i64 1
  %26 = bitcast i32* %12 to i8*
  br label %27, !dbg !1910

; <label>:27:                                     ; preds = %634, %9
  %28 = phi i32 [ %4, %9 ], [ %94, %634 ]
  %29 = phi i8* [ %7, %9 ], [ %95, %634 ]
  %30 = phi i8* [ %8, %9 ], [ %96, %634 ]
  %31 = phi i64 [ 0, %9 ], [ %124, %634 ], !dbg !1900
  %32 = phi i8* [ null, %9 ], [ %98, %634 ], !dbg !1901
  %33 = phi i64 [ 0, %9 ], [ %99, %634 ], !dbg !1902
  %34 = phi i8 [ 0, %9 ], [ %100, %634 ], !dbg !1903
  %35 = phi i64 [ %3, %9 ], [ %618, %634 ]
  %36 = phi i8 [ %17, %9 ], [ %101, %634 ], !dbg !1911
  %37 = phi i8 [ 0, %9 ], [ %126, %634 ], !dbg !1907
  %38 = phi i8 [ 0, %9 ], [ %127, %634 ], !dbg !1908
  %39 = phi i8 [ 1, %9 ], [ %128, %634 ], !dbg !1909
  %40 = phi i64 [ %1, %9 ], [ %124, %634 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !1827, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata i8 %39, metadata !1845, metadata !DIExpression()), !dbg !1909
  call void @llvm.dbg.value(metadata i8 %38, metadata !1844, metadata !DIExpression()), !dbg !1908
  call void @llvm.dbg.value(metadata i8 %37, metadata !1843, metadata !DIExpression()), !dbg !1907
  call void @llvm.dbg.value(metadata i8 %36, metadata !1842, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i64 %35, metadata !1829, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata i8 %34, metadata !1840, metadata !DIExpression()), !dbg !1903
  call void @llvm.dbg.value(metadata i64 %33, metadata !1839, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i8* %32, metadata !1838, metadata !DIExpression()), !dbg !1901
  call void @llvm.dbg.value(metadata i64 %31, metadata !1837, metadata !DIExpression()), !dbg !1900
  call void @llvm.dbg.value(metadata i64 0, metadata !1836, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i8* %30, metadata !1834, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i8* %29, metadata !1833, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i32 %28, metadata !1830, metadata !DIExpression()), !dbg !1894
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
  ], !dbg !1913

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, metadata !1830, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.value(metadata i8 1, metadata !1842, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i8 %36, metadata !1842, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i32 5, metadata !1830, metadata !DIExpression()), !dbg !1894
  br label %93, !dbg !1914

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, metadata !1842, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i32 5, metadata !1830, metadata !DIExpression()), !dbg !1894
  %43 = and i8 %36, 1, !dbg !1915
  %44 = icmp eq i8 %43, 0, !dbg !1915
  br i1 %44, label %45, label %93, !dbg !1914

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1917
  br i1 %46, label %93, label %47, !dbg !1920

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1917, !tbaa !1921
  br label %93, !dbg !1917

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.76, i64 0, i64 0), i32 %28), !dbg !1922
  call void @llvm.dbg.value(metadata i8* %49, metadata !1833, metadata !DIExpression()), !dbg !1897
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.77, i64 0, i64 0), i32 %28), !dbg !1926
  call void @llvm.dbg.value(metadata i8* %50, metadata !1834, metadata !DIExpression()), !dbg !1898
  br label %51, !dbg !1927

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, metadata !1834, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i8* %52, metadata !1833, metadata !DIExpression()), !dbg !1897
  %54 = and i8 %36, 1, !dbg !1928
  %55 = icmp eq i8 %54, 0, !dbg !1928
  br i1 %55, label %56, label %71, !dbg !1930

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, metadata !1838, metadata !DIExpression()), !dbg !1901
  call void @llvm.dbg.value(metadata i64 0, metadata !1836, metadata !DIExpression()), !dbg !1899
  %57 = load i8, i8* %52, align 1, !dbg !1931, !tbaa !1921
  %58 = icmp eq i8 %57, 0, !dbg !1934
  br i1 %58, label %71, label %59, !dbg !1934

; <label>:59:                                     ; preds = %56, %66
  %60 = phi i8 [ %69, %66 ], [ %57, %56 ]
  %61 = phi i8* [ %68, %66 ], [ %52, %56 ]
  %62 = phi i64 [ %67, %66 ], [ 0, %56 ]
  call void @llvm.dbg.value(metadata i8* %61, metadata !1838, metadata !DIExpression()), !dbg !1901
  call void @llvm.dbg.value(metadata i64 %62, metadata !1836, metadata !DIExpression()), !dbg !1899
  %63 = icmp ult i64 %62, %40, !dbg !1935
  br i1 %63, label %64, label %66, !dbg !1938

; <label>:64:                                     ; preds = %59
  %65 = getelementptr inbounds i8, i8* %0, i64 %62, !dbg !1935
  store i8 %60, i8* %65, align 1, !dbg !1935, !tbaa !1921
  br label %66, !dbg !1935

; <label>:66:                                     ; preds = %64, %59
  %67 = add i64 %62, 1, !dbg !1938
  %68 = getelementptr inbounds i8, i8* %61, i64 1, !dbg !1939
  call void @llvm.dbg.value(metadata i8* %68, metadata !1838, metadata !DIExpression()), !dbg !1901
  call void @llvm.dbg.value(metadata i64 %67, metadata !1836, metadata !DIExpression()), !dbg !1899
  %69 = load i8, i8* %68, align 1, !dbg !1931, !tbaa !1921
  %70 = icmp eq i8 %69, 0, !dbg !1934
  br i1 %70, label %71, label %59, !dbg !1934, !llvm.loop !1940

; <label>:71:                                     ; preds = %66, %56, %51
  %72 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %67, %66 ], !dbg !1899
  call void @llvm.dbg.value(metadata i64 %72, metadata !1836, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i8 1, metadata !1840, metadata !DIExpression()), !dbg !1903
  call void @llvm.dbg.value(metadata i8* %53, metadata !1838, metadata !DIExpression()), !dbg !1901
  %73 = call i64 @strlen(i8* %53) #14, !dbg !1942
  call void @llvm.dbg.value(metadata i64 %73, metadata !1839, metadata !DIExpression()), !dbg !1902
  br label %93, !dbg !1943

; <label>:74:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !1840, metadata !DIExpression()), !dbg !1903
  br label %75, !dbg !1944

; <label>:75:                                     ; preds = %27, %74
  %76 = phi i8 [ %34, %27 ], [ 1, %74 ], !dbg !1911
  call void @llvm.dbg.value(metadata i8 %76, metadata !1840, metadata !DIExpression()), !dbg !1903
  call void @llvm.dbg.value(metadata i8 1, metadata !1842, metadata !DIExpression()), !dbg !1906
  br label %77, !dbg !1945

; <label>:77:                                     ; preds = %27, %75
  %78 = phi i8 [ %34, %27 ], [ %76, %75 ], !dbg !1903
  %79 = phi i8 [ %36, %27 ], [ 1, %75 ], !dbg !1911
  call void @llvm.dbg.value(metadata i8 %79, metadata !1842, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i8 %78, metadata !1840, metadata !DIExpression()), !dbg !1903
  %80 = and i8 %79, 1, !dbg !1946
  %81 = icmp eq i8 %80, 0, !dbg !1946
  %82 = select i1 %81, i8 1, i8 %78, !dbg !1948
  br label %83, !dbg !1948

; <label>:83:                                     ; preds = %77, %27
  %84 = phi i8 [ %34, %27 ], [ %82, %77 ], !dbg !1949
  %85 = phi i8 [ %36, %27 ], [ %79, %77 ], !dbg !1906
  call void @llvm.dbg.value(metadata i8 %85, metadata !1842, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i8 %84, metadata !1840, metadata !DIExpression()), !dbg !1903
  call void @llvm.dbg.value(metadata i32 2, metadata !1830, metadata !DIExpression()), !dbg !1894
  %86 = and i8 %85, 1, !dbg !1950
  %87 = icmp eq i8 %86, 0, !dbg !1950
  br i1 %87, label %88, label %93, !dbg !1952

; <label>:88:                                     ; preds = %83
  %89 = icmp eq i64 %40, 0, !dbg !1953
  br i1 %89, label %93, label %90, !dbg !1956

; <label>:90:                                     ; preds = %88
  store i8 39, i8* %0, align 1, !dbg !1953, !tbaa !1921
  br label %93, !dbg !1953

; <label>:91:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !1842, metadata !DIExpression()), !dbg !1906
  br label %93, !dbg !1957

; <label>:92:                                     ; preds = %27
  call void @abort() #15, !dbg !1958
  unreachable, !dbg !1958

; <label>:93:                                     ; preds = %41, %83, %88, %90, %27, %42, %45, %47, %91, %71
  %94 = phi i32 [ 0, %91 ], [ %28, %71 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ %28, %27 ], [ 2, %90 ], [ 2, %88 ], [ 2, %83 ], [ 5, %41 ]
  %95 = phi i8* [ %29, %91 ], [ %52, %71 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %90 ], [ %29, %88 ], [ %29, %83 ], [ %29, %41 ]
  %96 = phi i8* [ %30, %91 ], [ %53, %71 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %90 ], [ %30, %88 ], [ %30, %83 ], [ %30, %41 ]
  %97 = phi i64 [ 0, %91 ], [ %72, %71 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %90 ], [ 1, %88 ], [ 0, %83 ], [ 0, %41 ], !dbg !1899
  %98 = phi i8* [ %32, %91 ], [ %53, %71 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.78, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.78, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.78, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.77, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.77, i64 0, i64 0), %88 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.77, i64 0, i64 0), %83 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.78, i64 0, i64 0), %41 ], !dbg !1911
  %99 = phi i64 [ %33, %91 ], [ %73, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %90 ], [ 1, %88 ], [ 1, %83 ], [ 1, %41 ], !dbg !1911
  %100 = phi i8 [ %34, %91 ], [ 1, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %84, %90 ], [ %84, %88 ], [ %84, %83 ], [ 1, %41 ], !dbg !1911
  %101 = phi i8 [ 0, %91 ], [ %36, %71 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %85, %90 ], [ %85, %88 ], [ %85, %83 ], [ 1, %41 ], !dbg !1959
  call void @llvm.dbg.value(metadata i8 %101, metadata !1842, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i8 %100, metadata !1840, metadata !DIExpression()), !dbg !1903
  call void @llvm.dbg.value(metadata i64 %99, metadata !1839, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i8* %98, metadata !1838, metadata !DIExpression()), !dbg !1901
  call void @llvm.dbg.value(metadata i64 %97, metadata !1836, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i8* %96, metadata !1834, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i8* %95, metadata !1833, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i32 %94, metadata !1830, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.value(metadata i64 0, metadata !1835, metadata !DIExpression()), !dbg !1960
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
  br label %121, !dbg !1961

; <label>:121:                                    ; preds = %607, %93
  %122 = phi i64 [ 0, %93 ], [ %616, %607 ], !dbg !1962
  %123 = phi i64 [ %97, %93 ], [ %609, %607 ], !dbg !1899
  %124 = phi i64 [ %31, %93 ], [ %610, %607 ], !dbg !1900
  %125 = phi i64 [ %35, %93 ], [ %611, %607 ]
  %126 = phi i8 [ %37, %93 ], [ %612, %607 ], !dbg !1907
  %127 = phi i8 [ %38, %93 ], [ %613, %607 ], !dbg !1908
  %128 = phi i8 [ %39, %93 ], [ %614, %607 ], !dbg !1909
  %129 = phi i64 [ %40, %93 ], [ %615, %607 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !1827, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata i8 %128, metadata !1845, metadata !DIExpression()), !dbg !1909
  call void @llvm.dbg.value(metadata i8 %127, metadata !1844, metadata !DIExpression()), !dbg !1908
  call void @llvm.dbg.value(metadata i8 %126, metadata !1843, metadata !DIExpression()), !dbg !1907
  call void @llvm.dbg.value(metadata i64 %125, metadata !1829, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata i64 %124, metadata !1837, metadata !DIExpression()), !dbg !1900
  call void @llvm.dbg.value(metadata i64 %123, metadata !1836, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i64 %122, metadata !1835, metadata !DIExpression()), !dbg !1960
  %130 = icmp eq i64 %125, -1, !dbg !1963
  br i1 %130, label %131, label %135, !dbg !1964

; <label>:131:                                    ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1965
  %133 = load i8, i8* %132, align 1, !dbg !1965, !tbaa !1921
  %134 = icmp eq i8 %133, 0, !dbg !1966
  br i1 %134, label %617, label %137, !dbg !1967

; <label>:135:                                    ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !1968
  br i1 %136, label %617, label %137, !dbg !1967

; <label>:137:                                    ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !1851, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata i8 0, metadata !1852, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i8 0, metadata !1853, metadata !DIExpression()), !dbg !1971
  br i1 %107, label %138, label %153, !dbg !1972

; <label>:138:                                    ; preds = %137
  %139 = add i64 %122, %99, !dbg !1974
  %140 = and i1 %108, %130, !dbg !1975
  br i1 %140, label %141, label %143, !dbg !1975

; <label>:141:                                    ; preds = %138
  %142 = call i64 @strlen(i8* %2) #14, !dbg !1976
  call void @llvm.dbg.value(metadata i64 %142, metadata !1829, metadata !DIExpression()), !dbg !1893
  br label %143, !dbg !1977

; <label>:143:                                    ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ]
  call void @llvm.dbg.value(metadata i64 %144, metadata !1829, metadata !DIExpression()), !dbg !1893
  %145 = icmp ugt i64 %139, %144, !dbg !1978
  br i1 %145, label %153, label %146, !dbg !1979

; <label>:146:                                    ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1980
  %148 = call i32 @memcmp(i8* %147, i8* %98, i64 %99) #14, !dbg !1981
  %149 = icmp ne i32 %148, 0, !dbg !1982
  %150 = or i1 %149, %110, !dbg !1983
  %151 = xor i1 %149, true, !dbg !1983
  %152 = zext i1 %151 to i8, !dbg !1983
  br i1 %150, label %153, label %661, !dbg !1983

; <label>:153:                                    ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !1984
  call void @llvm.dbg.value(metadata i8 %155, metadata !1851, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata i64 %154, metadata !1829, metadata !DIExpression()), !dbg !1893
  %156 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1985
  %157 = load i8, i8* %156, align 1, !dbg !1985, !tbaa !1921
  call void @llvm.dbg.value(metadata i8 %157, metadata !1846, metadata !DIExpression()), !dbg !1986
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
  ], !dbg !1987

; <label>:158:                                    ; preds = %153
  br i1 %103, label %159, label %207, !dbg !1988

; <label>:159:                                    ; preds = %158
  br i1 %110, label %160, label %661, !dbg !1989

; <label>:160:                                    ; preds = %159
  call void @llvm.dbg.value(metadata i8 1, metadata !1852, metadata !DIExpression()), !dbg !1970
  %161 = and i8 %126, 1, !dbg !1993
  %162 = icmp eq i8 %161, 0, !dbg !1993
  %163 = and i1 %114, %162, !dbg !1993
  br i1 %163, label %164, label %180, !dbg !1993

; <label>:164:                                    ; preds = %160
  %165 = icmp ult i64 %123, %129, !dbg !1995
  br i1 %165, label %166, label %168, !dbg !1999

; <label>:166:                                    ; preds = %164
  %167 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1995
  store i8 39, i8* %167, align 1, !dbg !1995, !tbaa !1921
  br label %168, !dbg !1995

; <label>:168:                                    ; preds = %166, %164
  %169 = add i64 %123, 1, !dbg !1999
  call void @llvm.dbg.value(metadata i64 %169, metadata !1836, metadata !DIExpression()), !dbg !1899
  %170 = icmp ult i64 %169, %129, !dbg !2000
  br i1 %170, label %171, label %173, !dbg !2003

; <label>:171:                                    ; preds = %168
  %172 = getelementptr inbounds i8, i8* %0, i64 %169, !dbg !2000
  store i8 36, i8* %172, align 1, !dbg !2000, !tbaa !1921
  br label %173, !dbg !2000

; <label>:173:                                    ; preds = %171, %168
  %174 = add i64 %123, 2, !dbg !2003
  call void @llvm.dbg.value(metadata i64 %174, metadata !1836, metadata !DIExpression()), !dbg !1899
  %175 = icmp ult i64 %174, %129, !dbg !2004
  br i1 %175, label %176, label %178, !dbg !2007

; <label>:176:                                    ; preds = %173
  %177 = getelementptr inbounds i8, i8* %0, i64 %174, !dbg !2004
  store i8 39, i8* %177, align 1, !dbg !2004, !tbaa !1921
  br label %178, !dbg !2004

; <label>:178:                                    ; preds = %176, %173
  %179 = add i64 %123, 3, !dbg !2007
  call void @llvm.dbg.value(metadata i64 %179, metadata !1836, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i8 1, metadata !1843, metadata !DIExpression()), !dbg !1907
  br label %180, !dbg !2008

; <label>:180:                                    ; preds = %160, %178
  %181 = phi i64 [ %179, %178 ], [ %123, %160 ], !dbg !1959
  %182 = phi i8 [ 1, %178 ], [ %126, %160 ], !dbg !1959
  call void @llvm.dbg.value(metadata i8 %182, metadata !1843, metadata !DIExpression()), !dbg !1907
  call void @llvm.dbg.value(metadata i64 %181, metadata !1836, metadata !DIExpression()), !dbg !1899
  %183 = icmp ult i64 %181, %129, !dbg !2009
  br i1 %183, label %184, label %186, !dbg !2012

; <label>:184:                                    ; preds = %180
  %185 = getelementptr inbounds i8, i8* %0, i64 %181, !dbg !2009
  store i8 92, i8* %185, align 1, !dbg !2009, !tbaa !1921
  br label %186, !dbg !2009

; <label>:186:                                    ; preds = %184, %180
  %187 = add i64 %181, 1, !dbg !2012
  call void @llvm.dbg.value(metadata i64 %187, metadata !1836, metadata !DIExpression()), !dbg !1899
  br i1 %104, label %188, label %478, !dbg !2013

; <label>:188:                                    ; preds = %186
  %189 = add i64 %122, 1, !dbg !2015
  %190 = icmp ult i64 %189, %154, !dbg !2016
  br i1 %190, label %191, label %467, !dbg !2017

; <label>:191:                                    ; preds = %188
  %192 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !2018
  %193 = load i8, i8* %192, align 1, !dbg !2018, !tbaa !1921
  %194 = add i8 %193, -48, !dbg !2019
  %195 = icmp ult i8 %194, 10, !dbg !2019
  br i1 %195, label %196, label %467, !dbg !2019

; <label>:196:                                    ; preds = %191
  %197 = icmp ult i64 %187, %129, !dbg !2020
  br i1 %197, label %198, label %200, !dbg !2024

; <label>:198:                                    ; preds = %196
  %199 = getelementptr inbounds i8, i8* %0, i64 %187, !dbg !2020
  store i8 48, i8* %199, align 1, !dbg !2020, !tbaa !1921
  br label %200, !dbg !2020

; <label>:200:                                    ; preds = %198, %196
  %201 = add i64 %181, 2, !dbg !2024
  call void @llvm.dbg.value(metadata i64 %201, metadata !1836, metadata !DIExpression()), !dbg !1899
  %202 = icmp ult i64 %201, %129, !dbg !2025
  br i1 %202, label %203, label %205, !dbg !2028

; <label>:203:                                    ; preds = %200
  %204 = getelementptr inbounds i8, i8* %0, i64 %201, !dbg !2025
  store i8 48, i8* %204, align 1, !dbg !2025, !tbaa !1921
  br label %205, !dbg !2025

; <label>:205:                                    ; preds = %203, %200
  %206 = add i64 %181, 3, !dbg !2028
  call void @llvm.dbg.value(metadata i64 %206, metadata !1836, metadata !DIExpression()), !dbg !1899
  br label %467, !dbg !2029

; <label>:207:                                    ; preds = %158
  br i1 %22, label %478, label %607, !dbg !2030

; <label>:208:                                    ; preds = %153
  switch i32 %94, label %467 [
    i32 2, label %209
    i32 5, label %210
  ], !dbg !2031

; <label>:209:                                    ; preds = %208
  br i1 %110, label %467, label %661, !dbg !2032

; <label>:210:                                    ; preds = %208
  br i1 %24, label %467, label %211, !dbg !2034

; <label>:211:                                    ; preds = %210
  %212 = add i64 %122, 2, !dbg !2036
  %213 = icmp ult i64 %212, %154, !dbg !2037
  br i1 %213, label %214, label %467, !dbg !2038

; <label>:214:                                    ; preds = %211
  %215 = add i64 %122, 1, !dbg !2039
  %216 = getelementptr inbounds i8, i8* %2, i64 %215, !dbg !2040
  %217 = load i8, i8* %216, align 1, !dbg !2040, !tbaa !1921
  %218 = icmp eq i8 %217, 63, !dbg !2041
  br i1 %218, label %219, label %467, !dbg !2042

; <label>:219:                                    ; preds = %214
  %220 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !2043
  %221 = load i8, i8* %220, align 1, !dbg !2043, !tbaa !1921
  %222 = sext i8 %221 to i32, !dbg !2043
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
  ], !dbg !2044

; <label>:223:                                    ; preds = %219, %219, %219, %219, %219, %219, %219, %219, %219
  br i1 %110, label %224, label %661, !dbg !2045

; <label>:224:                                    ; preds = %223
  call void @llvm.dbg.value(metadata i8 %221, metadata !1846, metadata !DIExpression()), !dbg !1986
  call void @llvm.dbg.value(metadata i64 %212, metadata !1835, metadata !DIExpression()), !dbg !1960
  %225 = icmp ult i64 %123, %129, !dbg !2047
  br i1 %225, label %226, label %228, !dbg !2050

; <label>:226:                                    ; preds = %224
  %227 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2047
  store i8 63, i8* %227, align 1, !dbg !2047, !tbaa !1921
  br label %228, !dbg !2047

; <label>:228:                                    ; preds = %226, %224
  %229 = add i64 %123, 1, !dbg !2050
  call void @llvm.dbg.value(metadata i64 %229, metadata !1836, metadata !DIExpression()), !dbg !1899
  %230 = icmp ult i64 %229, %129, !dbg !2051
  br i1 %230, label %231, label %233, !dbg !2054

; <label>:231:                                    ; preds = %228
  %232 = getelementptr inbounds i8, i8* %0, i64 %229, !dbg !2051
  store i8 34, i8* %232, align 1, !dbg !2051, !tbaa !1921
  br label %233, !dbg !2051

; <label>:233:                                    ; preds = %231, %228
  %234 = add i64 %123, 2, !dbg !2054
  call void @llvm.dbg.value(metadata i64 %234, metadata !1836, metadata !DIExpression()), !dbg !1899
  %235 = icmp ult i64 %234, %129, !dbg !2055
  br i1 %235, label %236, label %238, !dbg !2058

; <label>:236:                                    ; preds = %233
  %237 = getelementptr inbounds i8, i8* %0, i64 %234, !dbg !2055
  store i8 34, i8* %237, align 1, !dbg !2055, !tbaa !1921
  br label %238, !dbg !2055

; <label>:238:                                    ; preds = %236, %233
  %239 = add i64 %123, 3, !dbg !2058
  call void @llvm.dbg.value(metadata i64 %239, metadata !1836, metadata !DIExpression()), !dbg !1899
  %240 = icmp ult i64 %239, %129, !dbg !2059
  br i1 %240, label %241, label %243, !dbg !2062

; <label>:241:                                    ; preds = %238
  %242 = getelementptr inbounds i8, i8* %0, i64 %239, !dbg !2059
  store i8 63, i8* %242, align 1, !dbg !2059, !tbaa !1921
  br label %243, !dbg !2059

; <label>:243:                                    ; preds = %241, %238
  %244 = add i64 %123, 4, !dbg !2062
  call void @llvm.dbg.value(metadata i64 %244, metadata !1836, metadata !DIExpression()), !dbg !1899
  br label %467, !dbg !2063

; <label>:245:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !1850, metadata !DIExpression()), !dbg !2064
  br label %255, !dbg !2065

; <label>:246:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !1850, metadata !DIExpression()), !dbg !2064
  br label %255, !dbg !2066

; <label>:247:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !1850, metadata !DIExpression()), !dbg !2064
  br label %253, !dbg !2067

; <label>:248:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !1850, metadata !DIExpression()), !dbg !2064
  br label %253, !dbg !2068

; <label>:249:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !1850, metadata !DIExpression()), !dbg !2064
  br label %255, !dbg !2069

; <label>:250:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 %157, metadata !1850, metadata !DIExpression()), !dbg !2064
  br i1 %114, label %251, label %252, !dbg !2070

; <label>:251:                                    ; preds = %250
  br i1 %110, label %562, label %661, !dbg !2071

; <label>:252:                                    ; preds = %250
  br i1 %120, label %562, label %253, !dbg !2074

; <label>:253:                                    ; preds = %252, %153, %248, %247
  %254 = phi i8 [ 92, %252 ], [ 116, %248 ], [ 114, %247 ], [ 110, %153 ], !dbg !2076
  call void @llvm.dbg.value(metadata i8 %254, metadata !1850, metadata !DIExpression()), !dbg !2064
  br i1 %113, label %255, label %661, !dbg !2077

; <label>:255:                                    ; preds = %253, %153, %249, %246, %245
  %256 = phi i8 [ %254, %253 ], [ 118, %249 ], [ 102, %246 ], [ 98, %245 ], [ 97, %153 ], !dbg !2076
  call void @llvm.dbg.value(metadata i8 %256, metadata !1850, metadata !DIExpression()), !dbg !2064
  br i1 %103, label %524, label %478, !dbg !2079

; <label>:257:                                    ; preds = %153, %153
  %258 = icmp eq i64 %154, -1, !dbg !2080
  br i1 %258, label %259, label %264, !dbg !2082

; <label>:259:                                    ; preds = %257
  %260 = load i8, i8* %25, align 1, !dbg !2083, !tbaa !1921
  %261 = icmp ne i8 %260, 0, !dbg !2084
  %262 = icmp ne i64 %122, 0, !dbg !2085
  %263 = or i1 %262, %261, !dbg !2087
  br i1 %263, label %467, label %270, !dbg !2087

; <label>:264:                                    ; preds = %257
  %265 = icmp ne i64 %154, 1, !dbg !2088
  %266 = icmp ne i64 %122, 0, !dbg !2085
  %267 = or i1 %266, %265, !dbg !2082
  br i1 %267, label %467, label %270, !dbg !2082

; <label>:268:                                    ; preds = %153, %153
  %269 = icmp eq i64 %122, 0, !dbg !2085
  br i1 %269, label %270, label %467, !dbg !2089

; <label>:270:                                    ; preds = %268, %264, %259, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1853, metadata !DIExpression()), !dbg !1971
  br label %271, !dbg !2090

; <label>:271:                                    ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %270
  %272 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %270 ], !dbg !2076
  call void @llvm.dbg.value(metadata i8 %272, metadata !1853, metadata !DIExpression()), !dbg !1971
  br i1 %113, label %467, label %661, !dbg !2091

; <label>:273:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1844, metadata !DIExpression()), !dbg !1908
  call void @llvm.dbg.value(metadata i8 1, metadata !1853, metadata !DIExpression()), !dbg !1971
  br i1 %114, label %274, label %467, !dbg !2093

; <label>:274:                                    ; preds = %273
  br i1 %110, label %275, label %661, !dbg !2094

; <label>:275:                                    ; preds = %274
  %276 = icmp eq i64 %129, 0, !dbg !2097
  %277 = icmp ne i64 %124, 0, !dbg !2099
  %278 = or i1 %277, %276, !dbg !2100
  %279 = select i1 %278, i64 %124, i64 %129, !dbg !2100
  %280 = select i1 %278, i64 %129, i64 0, !dbg !2100
  call void @llvm.dbg.value(metadata i64 %280, metadata !1827, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata i64 %279, metadata !1837, metadata !DIExpression()), !dbg !1900
  %281 = icmp ult i64 %123, %280, !dbg !2101
  br i1 %281, label %282, label %284, !dbg !2104

; <label>:282:                                    ; preds = %275
  %283 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2101
  store i8 39, i8* %283, align 1, !dbg !2101, !tbaa !1921
  br label %284, !dbg !2101

; <label>:284:                                    ; preds = %282, %275
  %285 = add i64 %123, 1, !dbg !2104
  call void @llvm.dbg.value(metadata i64 %285, metadata !1836, metadata !DIExpression()), !dbg !1899
  %286 = icmp ult i64 %285, %280, !dbg !2105
  br i1 %286, label %287, label %289, !dbg !2108

; <label>:287:                                    ; preds = %284
  %288 = getelementptr inbounds i8, i8* %0, i64 %285, !dbg !2105
  store i8 92, i8* %288, align 1, !dbg !2105, !tbaa !1921
  br label %289, !dbg !2105

; <label>:289:                                    ; preds = %287, %284
  %290 = add i64 %123, 2, !dbg !2108
  call void @llvm.dbg.value(metadata i64 %290, metadata !1836, metadata !DIExpression()), !dbg !1899
  %291 = icmp ult i64 %290, %280, !dbg !2109
  br i1 %291, label %292, label %294, !dbg !2112

; <label>:292:                                    ; preds = %289
  %293 = getelementptr inbounds i8, i8* %0, i64 %290, !dbg !2109
  store i8 39, i8* %293, align 1, !dbg !2109, !tbaa !1921
  br label %294, !dbg !2109

; <label>:294:                                    ; preds = %292, %289
  %295 = add i64 %123, 3, !dbg !2112
  call void @llvm.dbg.value(metadata i64 %295, metadata !1836, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i8 0, metadata !1843, metadata !DIExpression()), !dbg !1907
  br label %467, !dbg !2113

; <label>:296:                                    ; preds = %153
  br i1 %14, label %297, label %306, !dbg !2114

; <label>:297:                                    ; preds = %296
  call void @llvm.dbg.value(metadata i64 1, metadata !1854, metadata !DIExpression()), !dbg !2115
  %298 = tail call i16** @__ctype_b_loc() #17, !dbg !2116
  %299 = load i16*, i16** %298, align 8, !dbg !2116, !tbaa !690
  %300 = zext i8 %157 to i64, !dbg !2116
  %301 = getelementptr inbounds i16, i16* %299, i64 %300, !dbg !2116
  %302 = load i16, i16* %301, align 2, !dbg !2116, !tbaa !2118
  %303 = lshr i16 %302, 14, !dbg !2120
  %304 = trunc i16 %303 to i8, !dbg !2120
  %305 = and i8 %304, 1, !dbg !2120
  call void @llvm.dbg.value(metadata i8 %305, metadata !1857, metadata !DIExpression()), !dbg !2121
  br label %359, !dbg !2122

; <label>:306:                                    ; preds = %296
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %19) #10, !dbg !2123
  store i64 0, i64* %10, align 8, !dbg !2124
  call void @llvm.dbg.value(metadata i64 0, metadata !1854, metadata !DIExpression()), !dbg !2115
  call void @llvm.dbg.value(metadata i8 1, metadata !1857, metadata !DIExpression()), !dbg !2121
  %307 = icmp eq i64 %154, -1, !dbg !2125
  br i1 %307, label %308, label %310, !dbg !2127

; <label>:308:                                    ; preds = %306
  %309 = call i64 @strlen(i8* nonnull %2) #14, !dbg !2128
  call void @llvm.dbg.value(metadata i64 %309, metadata !1829, metadata !DIExpression()), !dbg !1893
  br label %310, !dbg !2129

; <label>:310:                                    ; preds = %308, %306
  %311 = phi i64 [ %309, %308 ], [ %154, %306 ], !dbg !2130
  call void @llvm.dbg.value(metadata i64 %311, metadata !1829, metadata !DIExpression()), !dbg !1893
  br label %312, !dbg !2131

; <label>:312:                                    ; preds = %347, %310
  %313 = phi i64 [ 0, %310 ], [ %352, %347 ], !dbg !2132
  %314 = phi i8 [ 1, %310 ], [ %351, %347 ], !dbg !2133
  call void @llvm.dbg.value(metadata i8 %314, metadata !1857, metadata !DIExpression()), !dbg !2121
  call void @llvm.dbg.value(metadata i64 %313, metadata !1854, metadata !DIExpression()), !dbg !2115
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #10, !dbg !2134
  %315 = add i64 %313, %122, !dbg !2135
  %316 = getelementptr inbounds i8, i8* %2, i64 %315, !dbg !2136
  %317 = sub i64 %311, %315, !dbg !2137
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !1858, metadata !DIExpression(DW_OP_deref)), !dbg !2138
  call void @llvm.dbg.value(metadata i32* %12, metadata !1876, metadata !DIExpression(DW_OP_deref)), !dbg !2139
  %318 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %316, i64 %317, %struct.__mbstate_t* nonnull %11) #10, !dbg !2140
  call void @llvm.dbg.value(metadata i64 %318, metadata !1879, metadata !DIExpression()), !dbg !2141
  switch i64 %318, label %331 [
    i64 0, label %343
    i64 -1, label %344
    i64 -2, label %319
  ], !dbg !2142

; <label>:319:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !1854, metadata !DIExpression()), !dbg !2115
  call void @llvm.dbg.value(metadata i64 %313, metadata !1854, metadata !DIExpression()), !dbg !2115
  call void @llvm.dbg.value(metadata i64 %313, metadata !1854, metadata !DIExpression()), !dbg !2115
  call void @llvm.dbg.value(metadata i64 %313, metadata !1854, metadata !DIExpression()), !dbg !2115
  call void @llvm.dbg.value(metadata i64 %313, metadata !1854, metadata !DIExpression()), !dbg !2115
  call void @llvm.dbg.value(metadata i64 %313, metadata !1854, metadata !DIExpression()), !dbg !2115
  %320 = icmp ugt i64 %311, %315, !dbg !2143
  br i1 %320, label %321, label %344, !dbg !2145

; <label>:321:                                    ; preds = %319, %327
  %322 = phi i64 [ %329, %327 ], [ %315, %319 ]
  %323 = phi i64 [ %328, %327 ], [ %313, %319 ]
  call void @llvm.dbg.value(metadata i64 %323, metadata !1854, metadata !DIExpression()), !dbg !2115
  %324 = getelementptr inbounds i8, i8* %2, i64 %322, !dbg !2146
  %325 = load i8, i8* %324, align 1, !dbg !2146, !tbaa !1921
  %326 = icmp eq i8 %325, 0, !dbg !2145
  br i1 %326, label %344, label %327, !dbg !2147

; <label>:327:                                    ; preds = %321
  %328 = add i64 %323, 1, !dbg !2148
  call void @llvm.dbg.value(metadata i64 %328, metadata !1854, metadata !DIExpression()), !dbg !2115
  %329 = add i64 %328, %122, !dbg !2149
  %330 = icmp ult i64 %329, %311, !dbg !2143
  br i1 %330, label %321, label %344, !dbg !2145, !llvm.loop !2150

; <label>:331:                                    ; preds = %312
  %332 = icmp ugt i64 %318, 1, !dbg !2151
  %333 = and i1 %116, %332, !dbg !2154
  call void @llvm.dbg.value(metadata i64 1, metadata !1880, metadata !DIExpression()), !dbg !2155
  br i1 %333, label %334, label %347, !dbg !2154

; <label>:334:                                    ; preds = %331, %340
  %335 = phi i64 [ %341, %340 ], [ 1, %331 ]
  call void @llvm.dbg.value(metadata i64 %335, metadata !1880, metadata !DIExpression()), !dbg !2155
  %336 = add i64 %335, %315, !dbg !2156
  %337 = getelementptr inbounds i8, i8* %2, i64 %336, !dbg !2157
  %338 = load i8, i8* %337, align 1, !dbg !2157, !tbaa !1921
  %339 = sext i8 %338 to i32, !dbg !2157
  switch i32 %339, label %340 [
    i32 91, label %358
    i32 92, label %358
    i32 94, label %358
    i32 96, label %358
    i32 124, label %358
  ], !dbg !2158

; <label>:340:                                    ; preds = %334
  %341 = add nuw i64 %335, 1, !dbg !2159
  call void @llvm.dbg.value(metadata i64 %341, metadata !1880, metadata !DIExpression()), !dbg !2155
  %342 = icmp ult i64 %341, %318, !dbg !2151
  br i1 %342, label %334, label %347, !dbg !2160, !llvm.loop !2161

; <label>:343:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !1854, metadata !DIExpression()), !dbg !2115
  call void @llvm.dbg.value(metadata i8 %314, metadata !1857, metadata !DIExpression()), !dbg !2121
  call void @llvm.dbg.value(metadata i64 %313, metadata !1854, metadata !DIExpression()), !dbg !2115
  call void @llvm.dbg.value(metadata i8 %314, metadata !1857, metadata !DIExpression()), !dbg !2121
  br label %344, !dbg !2163

; <label>:344:                                    ; preds = %327, %321, %312, %343, %319
  %345 = phi i64 [ %313, %319 ], [ %313, %343 ], [ %313, %312 ], [ %323, %321 ], [ %328, %327 ]
  %346 = phi i8 [ 0, %319 ], [ %314, %343 ], [ 0, %312 ], [ 0, %321 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i8 %351, metadata !1857, metadata !DIExpression()), !dbg !2121
  call void @llvm.dbg.value(metadata i64 %352, metadata !1854, metadata !DIExpression()), !dbg !2115
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #10, !dbg !2163
  br label %355

; <label>:347:                                    ; preds = %340, %331
  %348 = load i32, i32* %12, align 4, !dbg !2164, !tbaa !763
  call void @llvm.dbg.value(metadata i32 %348, metadata !1876, metadata !DIExpression()), !dbg !2139
  %349 = call i32 @iswprint(i32 %348) #10, !dbg !2166
  %350 = icmp eq i32 %349, 0, !dbg !2166
  %351 = select i1 %350, i8 0, i8 %314, !dbg !2167
  call void @llvm.dbg.value(metadata i8 %351, metadata !1857, metadata !DIExpression()), !dbg !2121
  %352 = add i64 %318, %313, !dbg !2168
  call void @llvm.dbg.value(metadata i64 %352, metadata !1854, metadata !DIExpression()), !dbg !2115
  call void @llvm.dbg.value(metadata i8 %351, metadata !1857, metadata !DIExpression()), !dbg !2121
  call void @llvm.dbg.value(metadata i64 %352, metadata !1854, metadata !DIExpression()), !dbg !2115
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #10, !dbg !2163
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !1858, metadata !DIExpression(DW_OP_deref)), !dbg !2138
  %353 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !2169
  %354 = icmp eq i32 %353, 0, !dbg !2170
  br i1 %354, label %312, label %355, !dbg !2171, !llvm.loop !2172

; <label>:355:                                    ; preds = %347, %344
  %356 = phi i8 [ %346, %344 ], [ %351, %347 ]
  %357 = phi i64 [ %345, %344 ], [ %352, %347 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #10, !dbg !2174
  br label %359

; <label>:358:                                    ; preds = %334, %334, %334, %334, %334
  call void @llvm.dbg.value(metadata i8* %95, metadata !1833, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8* %95, metadata !1833, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8* %95, metadata !1833, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8* %95, metadata !1833, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8* %95, metadata !1833, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8* %96, metadata !1834, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i8* %96, metadata !1834, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i8* %96, metadata !1834, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i8* %96, metadata !1834, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i8* %96, metadata !1834, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i64 %129, metadata !1827, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata i64 %129, metadata !1827, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata i64 %129, metadata !1827, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata i64 %129, metadata !1827, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata i64 %129, metadata !1827, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata i64 %311, metadata !1829, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata i64 %311, metadata !1829, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata i64 %311, metadata !1829, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata i64 %311, metadata !1829, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata i64 %311, metadata !1829, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata i8* %95, metadata !1833, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8* %95, metadata !1833, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8* %95, metadata !1833, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8* %95, metadata !1833, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8* %95, metadata !1833, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8* %96, metadata !1834, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i8* %96, metadata !1834, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i8* %96, metadata !1834, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i8* %96, metadata !1834, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i8* %96, metadata !1834, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i64 %129, metadata !1827, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata i64 %129, metadata !1827, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata i64 %129, metadata !1827, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata i64 %129, metadata !1827, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata i64 %129, metadata !1827, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata i64 %311, metadata !1829, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata i64 %311, metadata !1829, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata i64 %311, metadata !1829, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata i64 %311, metadata !1829, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata i64 %311, metadata !1829, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata i8* %95, metadata !1833, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8* %95, metadata !1833, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8* %95, metadata !1833, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8* %95, metadata !1833, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8* %95, metadata !1833, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8* %96, metadata !1834, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i8* %96, metadata !1834, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i8* %96, metadata !1834, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i8* %96, metadata !1834, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i8* %96, metadata !1834, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i64 %129, metadata !1827, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata i64 %129, metadata !1827, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata i64 %129, metadata !1827, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata i64 %129, metadata !1827, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata i64 %129, metadata !1827, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata i64 %311, metadata !1829, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata i64 %311, metadata !1829, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata i64 %311, metadata !1829, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata i64 %311, metadata !1829, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata i64 %311, metadata !1829, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata i8* %95, metadata !1833, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8* %95, metadata !1833, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8* %95, metadata !1833, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8* %95, metadata !1833, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8* %95, metadata !1833, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8* %96, metadata !1834, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i8* %96, metadata !1834, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i8* %96, metadata !1834, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i8* %96, metadata !1834, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i8* %96, metadata !1834, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i64 %129, metadata !1827, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata i64 %129, metadata !1827, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata i64 %129, metadata !1827, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata i64 %129, metadata !1827, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata i64 %129, metadata !1827, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata i64 %311, metadata !1829, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata i64 %311, metadata !1829, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata i64 %311, metadata !1829, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata i64 %311, metadata !1829, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata i64 %311, metadata !1829, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata i32 2, metadata !1830, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.value(metadata i32 2, metadata !1830, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.value(metadata i32 2, metadata !1830, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.value(metadata i32 2, metadata !1830, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.value(metadata i32 2, metadata !1830, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.value(metadata i8* %95, metadata !1833, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8* %95, metadata !1833, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8* %95, metadata !1833, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8* %95, metadata !1833, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8* %95, metadata !1833, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8* %96, metadata !1834, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i8* %96, metadata !1834, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i8* %96, metadata !1834, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i8* %96, metadata !1834, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i8* %96, metadata !1834, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i8 %100, metadata !1840, metadata !DIExpression()), !dbg !1903
  call void @llvm.dbg.value(metadata i8 %100, metadata !1840, metadata !DIExpression()), !dbg !1903
  call void @llvm.dbg.value(metadata i8 %100, metadata !1840, metadata !DIExpression()), !dbg !1903
  call void @llvm.dbg.value(metadata i8 %100, metadata !1840, metadata !DIExpression()), !dbg !1903
  call void @llvm.dbg.value(metadata i8 %100, metadata !1840, metadata !DIExpression()), !dbg !1903
  call void @llvm.dbg.value(metadata i64 %129, metadata !1827, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata i64 %129, metadata !1827, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata i64 %129, metadata !1827, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata i64 %129, metadata !1827, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata i64 %129, metadata !1827, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata i64 %311, metadata !1829, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata i64 %311, metadata !1829, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata i64 %311, metadata !1829, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata i64 %311, metadata !1829, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata i64 %311, metadata !1829, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata i32 %94, metadata !1830, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.value(metadata i32 %94, metadata !1830, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.value(metadata i32 %94, metadata !1830, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.value(metadata i32 %94, metadata !1830, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.value(metadata i32 %94, metadata !1830, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.value(metadata i8* %95, metadata !1833, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8* %95, metadata !1833, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8* %95, metadata !1833, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8* %95, metadata !1833, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8* %95, metadata !1833, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8* %96, metadata !1834, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i8* %96, metadata !1834, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i8* %96, metadata !1834, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i8* %96, metadata !1834, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i8* %96, metadata !1834, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i8 %100, metadata !1840, metadata !DIExpression()), !dbg !1903
  call void @llvm.dbg.value(metadata i8 %100, metadata !1840, metadata !DIExpression()), !dbg !1903
  call void @llvm.dbg.value(metadata i8 %100, metadata !1840, metadata !DIExpression()), !dbg !1903
  call void @llvm.dbg.value(metadata i8 %100, metadata !1840, metadata !DIExpression()), !dbg !1903
  call void @llvm.dbg.value(metadata i8 %100, metadata !1840, metadata !DIExpression()), !dbg !1903
  call void @llvm.dbg.value(metadata i64 %129, metadata !1827, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata i64 %129, metadata !1827, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata i64 %129, metadata !1827, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata i64 %129, metadata !1827, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata i64 %129, metadata !1827, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata i64 %311, metadata !1829, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata i64 %311, metadata !1829, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata i64 %311, metadata !1829, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata i64 %311, metadata !1829, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata i64 %311, metadata !1829, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata i8 %351, metadata !1857, metadata !DIExpression()), !dbg !2121
  call void @llvm.dbg.value(metadata i64 %352, metadata !1854, metadata !DIExpression()), !dbg !2115
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #10, !dbg !2163
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #10, !dbg !2174
  br label %661

; <label>:359:                                    ; preds = %355, %297
  %360 = phi i64 [ %154, %297 ], [ %311, %355 ], !dbg !2175
  %361 = phi i64 [ 1, %297 ], [ %357, %355 ], !dbg !2176
  %362 = phi i8 [ %305, %297 ], [ %356, %355 ], !dbg !2176
  call void @llvm.dbg.value(metadata i8 %362, metadata !1857, metadata !DIExpression()), !dbg !2121
  call void @llvm.dbg.value(metadata i64 %361, metadata !1854, metadata !DIExpression()), !dbg !2115
  call void @llvm.dbg.value(metadata i64 %360, metadata !1829, metadata !DIExpression()), !dbg !1893
  %363 = and i8 %362, 1, !dbg !2177
  %364 = icmp ne i8 %363, 0, !dbg !2177
  call void @llvm.dbg.value(metadata i8 %363, metadata !1853, metadata !DIExpression()), !dbg !1971
  %365 = icmp ult i64 %361, 2, !dbg !2178
  %366 = or i1 %364, %115, !dbg !2179
  %367 = and i1 %365, %366, !dbg !2180
  br i1 %367, label %467, label %368, !dbg !2180

; <label>:368:                                    ; preds = %359
  %369 = add i64 %361, %122, !dbg !2181
  call void @llvm.dbg.value(metadata i64 %369, metadata !1887, metadata !DIExpression()), !dbg !2182
  br label %370, !dbg !2183

; <label>:370:                                    ; preds = %463, %368
  %371 = phi i64 [ %122, %368 ], [ %438, %463 ], !dbg !2184
  %372 = phi i64 [ %123, %368 ], [ %464, %463 ], !dbg !2188
  %373 = phi i8 [ %126, %368 ], [ %459, %463 ], !dbg !1907
  %374 = phi i8 [ %157, %368 ], [ %466, %463 ], !dbg !2184
  %375 = phi i8 [ %155, %368 ], [ %436, %463 ], !dbg !2190
  %376 = phi i8 [ 0, %368 ], [ %437, %463 ], !dbg !1970
  call void @llvm.dbg.value(metadata i8 %376, metadata !1852, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i8 %375, metadata !1851, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata i8 %374, metadata !1846, metadata !DIExpression()), !dbg !1986
  call void @llvm.dbg.value(metadata i8 %373, metadata !1843, metadata !DIExpression()), !dbg !1907
  call void @llvm.dbg.value(metadata i64 %372, metadata !1836, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i64 %371, metadata !1835, metadata !DIExpression()), !dbg !1960
  br i1 %366, label %423, label %377, !dbg !2194

; <label>:377:                                    ; preds = %370
  br i1 %110, label %378, label %661, !dbg !2195

; <label>:378:                                    ; preds = %377
  call void @llvm.dbg.value(metadata i8 1, metadata !1852, metadata !DIExpression()), !dbg !1970
  %379 = and i8 %373, 1, !dbg !2198
  %380 = icmp eq i8 %379, 0, !dbg !2198
  %381 = and i1 %114, %380, !dbg !2198
  br i1 %381, label %382, label %398, !dbg !2198

; <label>:382:                                    ; preds = %378
  %383 = icmp ult i64 %372, %129, !dbg !2200
  br i1 %383, label %384, label %386, !dbg !2204

; <label>:384:                                    ; preds = %382
  %385 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !2200
  store i8 39, i8* %385, align 1, !dbg !2200, !tbaa !1921
  br label %386, !dbg !2200

; <label>:386:                                    ; preds = %384, %382
  %387 = add i64 %372, 1, !dbg !2204
  call void @llvm.dbg.value(metadata i64 %387, metadata !1836, metadata !DIExpression()), !dbg !1899
  %388 = icmp ult i64 %387, %129, !dbg !2205
  br i1 %388, label %389, label %391, !dbg !2208

; <label>:389:                                    ; preds = %386
  %390 = getelementptr inbounds i8, i8* %0, i64 %387, !dbg !2205
  store i8 36, i8* %390, align 1, !dbg !2205, !tbaa !1921
  br label %391, !dbg !2205

; <label>:391:                                    ; preds = %389, %386
  %392 = add i64 %372, 2, !dbg !2208
  call void @llvm.dbg.value(metadata i64 %392, metadata !1836, metadata !DIExpression()), !dbg !1899
  %393 = icmp ult i64 %392, %129, !dbg !2209
  br i1 %393, label %394, label %396, !dbg !2212

; <label>:394:                                    ; preds = %391
  %395 = getelementptr inbounds i8, i8* %0, i64 %392, !dbg !2209
  store i8 39, i8* %395, align 1, !dbg !2209, !tbaa !1921
  br label %396, !dbg !2209

; <label>:396:                                    ; preds = %394, %391
  %397 = add i64 %372, 3, !dbg !2212
  call void @llvm.dbg.value(metadata i64 %397, metadata !1836, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i8 1, metadata !1843, metadata !DIExpression()), !dbg !1907
  br label %398, !dbg !2213

; <label>:398:                                    ; preds = %378, %396
  %399 = phi i64 [ %397, %396 ], [ %372, %378 ], !dbg !1959
  %400 = phi i8 [ 1, %396 ], [ %373, %378 ], !dbg !1959
  call void @llvm.dbg.value(metadata i8 %400, metadata !1843, metadata !DIExpression()), !dbg !1907
  call void @llvm.dbg.value(metadata i64 %399, metadata !1836, metadata !DIExpression()), !dbg !1899
  %401 = icmp ult i64 %399, %129, !dbg !2214
  br i1 %401, label %402, label %404, !dbg !2217

; <label>:402:                                    ; preds = %398
  %403 = getelementptr inbounds i8, i8* %0, i64 %399, !dbg !2214
  store i8 92, i8* %403, align 1, !dbg !2214, !tbaa !1921
  br label %404, !dbg !2214

; <label>:404:                                    ; preds = %402, %398
  %405 = add i64 %399, 1, !dbg !2217
  call void @llvm.dbg.value(metadata i64 %405, metadata !1836, metadata !DIExpression()), !dbg !1899
  %406 = icmp ult i64 %405, %129, !dbg !2218
  br i1 %406, label %407, label %411, !dbg !2221

; <label>:407:                                    ; preds = %404
  %408 = lshr i8 %374, 6, !dbg !2218
  %409 = or i8 %408, 48, !dbg !2218
  %410 = getelementptr inbounds i8, i8* %0, i64 %405, !dbg !2218
  store i8 %409, i8* %410, align 1, !dbg !2218, !tbaa !1921
  br label %411, !dbg !2218

; <label>:411:                                    ; preds = %407, %404
  %412 = add i64 %399, 2, !dbg !2221
  call void @llvm.dbg.value(metadata i64 %412, metadata !1836, metadata !DIExpression()), !dbg !1899
  %413 = icmp ult i64 %412, %129, !dbg !2222
  br i1 %413, label %414, label %419, !dbg !2225

; <label>:414:                                    ; preds = %411
  %415 = lshr i8 %374, 3, !dbg !2222
  %416 = and i8 %415, 7, !dbg !2222
  %417 = or i8 %416, 48, !dbg !2222
  %418 = getelementptr inbounds i8, i8* %0, i64 %412, !dbg !2222
  store i8 %417, i8* %418, align 1, !dbg !2222, !tbaa !1921
  br label %419, !dbg !2222

; <label>:419:                                    ; preds = %414, %411
  %420 = add i64 %399, 3, !dbg !2225
  call void @llvm.dbg.value(metadata i64 %420, metadata !1836, metadata !DIExpression()), !dbg !1899
  %421 = and i8 %374, 7, !dbg !2226
  %422 = or i8 %421, 48, !dbg !2227
  call void @llvm.dbg.value(metadata i8 %422, metadata !1846, metadata !DIExpression()), !dbg !1986
  br label %432, !dbg !2228

; <label>:423:                                    ; preds = %370
  %424 = and i8 %375, 1, !dbg !2229
  %425 = icmp eq i8 %424, 0, !dbg !2229
  br i1 %425, label %432, label %426, !dbg !2230

; <label>:426:                                    ; preds = %423
  %427 = icmp ult i64 %372, %129, !dbg !2231
  br i1 %427, label %428, label %430, !dbg !2234

; <label>:428:                                    ; preds = %426
  %429 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !2231
  store i8 92, i8* %429, align 1, !dbg !2231, !tbaa !1921
  br label %430, !dbg !2231

; <label>:430:                                    ; preds = %428, %426
  %431 = add i64 %372, 1, !dbg !2234
  call void @llvm.dbg.value(metadata i64 %431, metadata !1836, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i8 0, metadata !1851, metadata !DIExpression()), !dbg !1969
  br label %432, !dbg !2235

; <label>:432:                                    ; preds = %423, %430, %419
  %433 = phi i64 [ %431, %430 ], [ %372, %423 ], [ %420, %419 ], !dbg !2236
  %434 = phi i8 [ %373, %430 ], [ %373, %423 ], [ %400, %419 ], !dbg !1907
  %435 = phi i8 [ %374, %430 ], [ %374, %423 ], [ %422, %419 ], !dbg !2237
  %436 = phi i8 [ 0, %430 ], [ %375, %423 ], [ %375, %419 ], !dbg !2238
  %437 = phi i8 [ %376, %430 ], [ %376, %423 ], [ 1, %419 ], !dbg !2240
  call void @llvm.dbg.value(metadata i8 %437, metadata !1852, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i8 %436, metadata !1851, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata i8 %435, metadata !1846, metadata !DIExpression()), !dbg !1986
  call void @llvm.dbg.value(metadata i8 %434, metadata !1843, metadata !DIExpression()), !dbg !1907
  call void @llvm.dbg.value(metadata i64 %433, metadata !1836, metadata !DIExpression()), !dbg !1899
  %438 = add i64 %371, 1, !dbg !2241
  %439 = icmp ugt i64 %369, %438, !dbg !2243
  br i1 %439, label %440, label %562, !dbg !2244

; <label>:440:                                    ; preds = %432
  %441 = and i8 %434, 1, !dbg !2245
  %442 = icmp ne i8 %441, 0, !dbg !2245
  %443 = and i8 %437, 1, !dbg !2245
  %444 = icmp eq i8 %443, 0, !dbg !2245
  %445 = and i1 %442, %444, !dbg !2245
  br i1 %445, label %446, label %457, !dbg !2245

; <label>:446:                                    ; preds = %440
  %447 = icmp ult i64 %433, %129, !dbg !2248
  br i1 %447, label %448, label %450, !dbg !2252

; <label>:448:                                    ; preds = %446
  %449 = getelementptr inbounds i8, i8* %0, i64 %433, !dbg !2248
  store i8 39, i8* %449, align 1, !dbg !2248, !tbaa !1921
  br label %450, !dbg !2248

; <label>:450:                                    ; preds = %448, %446
  %451 = add i64 %433, 1, !dbg !2252
  call void @llvm.dbg.value(metadata i64 %451, metadata !1836, metadata !DIExpression()), !dbg !1899
  %452 = icmp ult i64 %451, %129, !dbg !2253
  br i1 %452, label %453, label %455, !dbg !2256

; <label>:453:                                    ; preds = %450
  %454 = getelementptr inbounds i8, i8* %0, i64 %451, !dbg !2253
  store i8 39, i8* %454, align 1, !dbg !2253, !tbaa !1921
  br label %455, !dbg !2253

; <label>:455:                                    ; preds = %453, %450
  %456 = add i64 %433, 2, !dbg !2256
  call void @llvm.dbg.value(metadata i64 %456, metadata !1836, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i8 0, metadata !1843, metadata !DIExpression()), !dbg !1907
  br label %457, !dbg !2257

; <label>:457:                                    ; preds = %440, %455
  %458 = phi i64 [ %456, %455 ], [ %433, %440 ], !dbg !2258
  %459 = phi i8 [ 0, %455 ], [ %434, %440 ], !dbg !1959
  call void @llvm.dbg.value(metadata i8 %459, metadata !1843, metadata !DIExpression()), !dbg !1907
  call void @llvm.dbg.value(metadata i64 %458, metadata !1836, metadata !DIExpression()), !dbg !1899
  %460 = icmp ult i64 %458, %129, !dbg !2259
  br i1 %460, label %461, label %463, !dbg !2261

; <label>:461:                                    ; preds = %457
  %462 = getelementptr inbounds i8, i8* %0, i64 %458, !dbg !2259
  store i8 %435, i8* %462, align 1, !dbg !2259, !tbaa !1921
  br label %463, !dbg !2259

; <label>:463:                                    ; preds = %461, %457
  %464 = add i64 %458, 1, !dbg !2261
  call void @llvm.dbg.value(metadata i64 %464, metadata !1836, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i64 %438, metadata !1835, metadata !DIExpression()), !dbg !1960
  %465 = getelementptr inbounds i8, i8* %2, i64 %438, !dbg !2262
  %466 = load i8, i8* %465, align 1, !dbg !2262, !tbaa !1921
  call void @llvm.dbg.value(metadata i8 %466, metadata !1846, metadata !DIExpression()), !dbg !1986
  br label %370, !dbg !2263, !llvm.loop !2264

; <label>:467:                                    ; preds = %359, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %271, %188, %191, %205, %209, %210, %268, %264, %259, %273, %294, %243, %219, %214, %211, %208
  %468 = phi i64 [ %122, %294 ], [ %122, %273 ], [ %122, %271 ], [ %122, %268 ], [ %122, %259 ], [ %122, %264 ], [ %122, %208 ], [ %122, %219 ], [ %212, %243 ], [ %122, %214 ], [ %122, %211 ], [ %122, %210 ], [ %122, %209 ], [ %122, %205 ], [ %122, %191 ], [ %122, %188 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %359 ], !dbg !2267
  %469 = phi i64 [ %295, %294 ], [ %123, %273 ], [ %123, %271 ], [ %123, %268 ], [ %123, %259 ], [ %123, %264 ], [ %123, %208 ], [ %123, %219 ], [ %244, %243 ], [ %123, %214 ], [ %123, %211 ], [ %123, %210 ], [ %123, %209 ], [ %206, %205 ], [ %187, %191 ], [ %187, %188 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %359 ], !dbg !1959
  %470 = phi i64 [ %279, %294 ], [ %124, %273 ], [ %124, %271 ], [ %124, %268 ], [ %124, %259 ], [ %124, %264 ], [ %124, %208 ], [ %124, %219 ], [ %124, %243 ], [ %124, %214 ], [ %124, %211 ], [ %124, %210 ], [ %124, %209 ], [ %124, %205 ], [ %124, %191 ], [ %124, %188 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %359 ], !dbg !1900
  %471 = phi i64 [ %154, %294 ], [ %154, %273 ], [ %154, %271 ], [ %154, %268 ], [ -1, %259 ], [ %154, %264 ], [ %154, %208 ], [ %154, %219 ], [ %154, %243 ], [ %154, %214 ], [ %154, %211 ], [ %154, %210 ], [ %154, %209 ], [ %154, %205 ], [ %154, %191 ], [ %154, %188 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %360, %359 ], !dbg !2268
  %472 = phi i8 [ 0, %294 ], [ %126, %273 ], [ %126, %271 ], [ %126, %268 ], [ %126, %259 ], [ %126, %264 ], [ %126, %208 ], [ %126, %219 ], [ %126, %243 ], [ %126, %214 ], [ %126, %211 ], [ %126, %210 ], [ %126, %209 ], [ %182, %205 ], [ %182, %191 ], [ %182, %188 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %359 ], !dbg !1959
  %473 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %127, %271 ], [ %127, %268 ], [ %127, %259 ], [ %127, %264 ], [ %127, %208 ], [ %127, %219 ], [ %127, %243 ], [ %127, %214 ], [ %127, %211 ], [ %127, %210 ], [ %127, %209 ], [ %127, %205 ], [ %127, %191 ], [ %127, %188 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %359 ], !dbg !1959
  %474 = phi i8 [ 39, %294 ], [ 39, %273 ], [ %157, %271 ], [ %157, %268 ], [ %157, %259 ], [ %157, %264 ], [ 63, %208 ], [ 63, %219 ], [ %221, %243 ], [ 63, %214 ], [ 63, %211 ], [ 63, %210 ], [ 63, %209 ], [ 48, %205 ], [ 48, %191 ], [ 48, %188 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %359 ], !dbg !1984
  %475 = phi i8 [ 0, %294 ], [ 0, %273 ], [ 0, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 1, %205 ], [ 1, %191 ], [ 1, %188 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %359 ], !dbg !1984
  %476 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %272, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 0, %205 ], [ 0, %191 ], [ 0, %188 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %363, %359 ], !dbg !1984
  %477 = phi i64 [ %280, %294 ], [ %129, %273 ], [ %129, %271 ], [ %129, %268 ], [ %129, %259 ], [ %129, %264 ], [ %129, %208 ], [ %129, %219 ], [ %129, %243 ], [ %129, %214 ], [ %129, %211 ], [ %129, %210 ], [ %129, %209 ], [ %129, %205 ], [ %129, %191 ], [ %129, %188 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %359 ]
  call void @llvm.dbg.value(metadata i64 %477, metadata !1827, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata i8 %476, metadata !1853, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i8 %475, metadata !1852, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i8 %155, metadata !1851, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata i8 %474, metadata !1846, metadata !DIExpression()), !dbg !1986
  call void @llvm.dbg.value(metadata i8 %473, metadata !1844, metadata !DIExpression()), !dbg !1908
  call void @llvm.dbg.value(metadata i8 %472, metadata !1843, metadata !DIExpression()), !dbg !1907
  call void @llvm.dbg.value(metadata i64 %471, metadata !1829, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata i64 %470, metadata !1837, metadata !DIExpression()), !dbg !1900
  call void @llvm.dbg.value(metadata i64 %469, metadata !1836, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i64 %468, metadata !1835, metadata !DIExpression()), !dbg !1960
  br i1 %105, label %489, label %478, !dbg !2269

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
  br i1 %112, label %490, label %512, !dbg !2271

; <label>:489:                                    ; preds = %467
  br i1 %20, label %512, label %490, !dbg !2272

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
  %501 = lshr i8 %494, 5, !dbg !2273
  %502 = zext i8 %501 to i64, !dbg !2273
  %503 = getelementptr inbounds i32, i32* %6, i64 %502, !dbg !2274
  %504 = load i32, i32* %503, align 4, !dbg !2274, !tbaa !763
  %505 = and i8 %494, 31, !dbg !2275
  %506 = zext i8 %505 to i32, !dbg !2275
  %507 = shl i32 1, %506, !dbg !2276
  %508 = and i32 %504, %507, !dbg !2276
  %509 = icmp eq i32 %508, 0, !dbg !2276
  %510 = icmp eq i8 %155, 0, !dbg !2277
  %511 = and i1 %510, %509, !dbg !2278
  br i1 %511, label %562, label %524, !dbg !2278

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
  %523 = icmp eq i8 %155, 0, !dbg !2277
  br i1 %523, label %562, label %524, !dbg !2279

; <label>:524:                                    ; preds = %255, %490, %512
  %525 = phi i64 [ %500, %490 ], [ %522, %512 ], [ %122, %255 ], !dbg !2280
  %526 = phi i64 [ %499, %490 ], [ %521, %512 ], [ %123, %255 ], !dbg !1959
  %527 = phi i64 [ %498, %490 ], [ %520, %512 ], [ %124, %255 ], !dbg !1900
  %528 = phi i64 [ %497, %490 ], [ %519, %512 ], [ %154, %255 ], !dbg !2268
  %529 = phi i8 [ %496, %490 ], [ %518, %512 ], [ %126, %255 ], !dbg !1907
  %530 = phi i8 [ %495, %490 ], [ %517, %512 ], [ %127, %255 ], !dbg !1908
  %531 = phi i8 [ %494, %490 ], [ %516, %512 ], [ %256, %255 ], !dbg !2281
  %532 = phi i8 [ %492, %490 ], [ %514, %512 ], [ 0, %255 ], !dbg !1984
  %533 = phi i64 [ %491, %490 ], [ %513, %512 ], [ %129, %255 ]
  call void @llvm.dbg.value(metadata i64 %533, metadata !1827, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata i8 %532, metadata !1853, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i8 %531, metadata !1846, metadata !DIExpression()), !dbg !1986
  call void @llvm.dbg.value(metadata i8 %530, metadata !1844, metadata !DIExpression()), !dbg !1908
  call void @llvm.dbg.value(metadata i8 %529, metadata !1843, metadata !DIExpression()), !dbg !1907
  call void @llvm.dbg.value(metadata i64 %528, metadata !1829, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata i64 %527, metadata !1837, metadata !DIExpression()), !dbg !1900
  call void @llvm.dbg.value(metadata i64 %526, metadata !1836, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i64 %525, metadata !1835, metadata !DIExpression()), !dbg !1960
  br i1 %110, label %534, label %661, !dbg !2284

; <label>:534:                                    ; preds = %524
  call void @llvm.dbg.value(metadata i8 1, metadata !1852, metadata !DIExpression()), !dbg !1970
  %535 = and i8 %529, 1, !dbg !2286
  %536 = icmp eq i8 %535, 0, !dbg !2286
  %537 = and i1 %114, %536, !dbg !2286
  br i1 %537, label %538, label %554, !dbg !2286

; <label>:538:                                    ; preds = %534
  %539 = icmp ult i64 %526, %533, !dbg !2288
  br i1 %539, label %540, label %542, !dbg !2292

; <label>:540:                                    ; preds = %538
  %541 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !2288
  store i8 39, i8* %541, align 1, !dbg !2288, !tbaa !1921
  br label %542, !dbg !2288

; <label>:542:                                    ; preds = %540, %538
  %543 = add i64 %526, 1, !dbg !2292
  call void @llvm.dbg.value(metadata i64 %543, metadata !1836, metadata !DIExpression()), !dbg !1899
  %544 = icmp ult i64 %543, %533, !dbg !2293
  br i1 %544, label %545, label %547, !dbg !2296

; <label>:545:                                    ; preds = %542
  %546 = getelementptr inbounds i8, i8* %0, i64 %543, !dbg !2293
  store i8 36, i8* %546, align 1, !dbg !2293, !tbaa !1921
  br label %547, !dbg !2293

; <label>:547:                                    ; preds = %545, %542
  %548 = add i64 %526, 2, !dbg !2296
  call void @llvm.dbg.value(metadata i64 %548, metadata !1836, metadata !DIExpression()), !dbg !1899
  %549 = icmp ult i64 %548, %533, !dbg !2297
  br i1 %549, label %550, label %552, !dbg !2300

; <label>:550:                                    ; preds = %547
  %551 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !2297
  store i8 39, i8* %551, align 1, !dbg !2297, !tbaa !1921
  br label %552, !dbg !2297

; <label>:552:                                    ; preds = %550, %547
  %553 = add i64 %526, 3, !dbg !2300
  call void @llvm.dbg.value(metadata i64 %553, metadata !1836, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i8 1, metadata !1843, metadata !DIExpression()), !dbg !1907
  br label %554, !dbg !2301

; <label>:554:                                    ; preds = %534, %552
  %555 = phi i64 [ %553, %552 ], [ %526, %534 ], !dbg !2258
  %556 = phi i8 [ 1, %552 ], [ %529, %534 ], !dbg !1959
  call void @llvm.dbg.value(metadata i8 %556, metadata !1843, metadata !DIExpression()), !dbg !1907
  call void @llvm.dbg.value(metadata i64 %555, metadata !1836, metadata !DIExpression()), !dbg !1899
  %557 = icmp ult i64 %555, %533, !dbg !2302
  br i1 %557, label %558, label %560, !dbg !2305

; <label>:558:                                    ; preds = %554
  %559 = getelementptr inbounds i8, i8* %0, i64 %555, !dbg !2302
  store i8 92, i8* %559, align 1, !dbg !2302, !tbaa !1921
  br label %560, !dbg !2302

; <label>:560:                                    ; preds = %554, %558
  %561 = add i64 %555, 1, !dbg !2305
  call void @llvm.dbg.value(metadata i64 %561, metadata !1836, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i64 %572, metadata !1827, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata i8 %571, metadata !1853, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i8 %570, metadata !1852, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i8 %569, metadata !1846, metadata !DIExpression()), !dbg !1986
  call void @llvm.dbg.value(metadata i8 %568, metadata !1844, metadata !DIExpression()), !dbg !1908
  call void @llvm.dbg.value(metadata i8 %567, metadata !1843, metadata !DIExpression()), !dbg !1907
  call void @llvm.dbg.value(metadata i64 %566, metadata !1829, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata i64 %565, metadata !1837, metadata !DIExpression()), !dbg !1900
  call void @llvm.dbg.value(metadata i64 %564, metadata !1836, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i64 %563, metadata !1835, metadata !DIExpression()), !dbg !1960
  br label %589, !dbg !2306

; <label>:562:                                    ; preds = %432, %252, %490, %251, %512
  %563 = phi i64 [ %522, %512 ], [ %122, %251 ], [ %500, %490 ], [ %122, %252 ], [ %371, %432 ], !dbg !2280
  %564 = phi i64 [ %521, %512 ], [ %123, %251 ], [ %499, %490 ], [ %123, %252 ], [ %433, %432 ], !dbg !1959
  %565 = phi i64 [ %520, %512 ], [ %124, %251 ], [ %498, %490 ], [ %124, %252 ], [ %124, %432 ], !dbg !1900
  %566 = phi i64 [ %519, %512 ], [ %154, %251 ], [ %497, %490 ], [ %154, %252 ], [ %360, %432 ], !dbg !2268
  %567 = phi i8 [ %518, %512 ], [ %126, %251 ], [ %496, %490 ], [ %126, %252 ], [ %434, %432 ], !dbg !1907
  %568 = phi i8 [ %517, %512 ], [ %127, %251 ], [ %495, %490 ], [ %127, %252 ], [ %127, %432 ], !dbg !1908
  %569 = phi i8 [ %516, %512 ], [ 92, %251 ], [ %494, %490 ], [ 92, %252 ], [ %435, %432 ], !dbg !2309
  %570 = phi i8 [ %515, %512 ], [ 0, %251 ], [ %493, %490 ], [ 0, %252 ], [ %437, %432 ], !dbg !1984
  %571 = phi i8 [ %514, %512 ], [ 0, %251 ], [ %492, %490 ], [ 0, %252 ], [ %363, %432 ], !dbg !1984
  %572 = phi i64 [ %513, %512 ], [ %129, %251 ], [ %491, %490 ], [ %129, %252 ], [ %129, %432 ]
  call void @llvm.dbg.value(metadata i64 %572, metadata !1827, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata i8 %571, metadata !1853, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i8 %570, metadata !1852, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i8 %569, metadata !1846, metadata !DIExpression()), !dbg !1986
  call void @llvm.dbg.value(metadata i8 %568, metadata !1844, metadata !DIExpression()), !dbg !1908
  call void @llvm.dbg.value(metadata i8 %567, metadata !1843, metadata !DIExpression()), !dbg !1907
  call void @llvm.dbg.value(metadata i64 %566, metadata !1829, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata i64 %565, metadata !1837, metadata !DIExpression()), !dbg !1900
  call void @llvm.dbg.value(metadata i64 %564, metadata !1836, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i64 %563, metadata !1835, metadata !DIExpression()), !dbg !1960
  %573 = and i8 %567, 1, !dbg !2306
  %574 = icmp ne i8 %573, 0, !dbg !2306
  %575 = and i8 %570, 1, !dbg !2306
  %576 = icmp eq i8 %575, 0, !dbg !2306
  %577 = and i1 %574, %576, !dbg !2306
  br i1 %577, label %578, label %589, !dbg !2306

; <label>:578:                                    ; preds = %562
  %579 = icmp ult i64 %564, %572, !dbg !2310
  br i1 %579, label %580, label %582, !dbg !2314

; <label>:580:                                    ; preds = %578
  %581 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !2310
  store i8 39, i8* %581, align 1, !dbg !2310, !tbaa !1921
  br label %582, !dbg !2310

; <label>:582:                                    ; preds = %580, %578
  %583 = add i64 %564, 1, !dbg !2314
  call void @llvm.dbg.value(metadata i64 %583, metadata !1836, metadata !DIExpression()), !dbg !1899
  %584 = icmp ult i64 %583, %572, !dbg !2315
  br i1 %584, label %585, label %587, !dbg !2318

; <label>:585:                                    ; preds = %582
  %586 = getelementptr inbounds i8, i8* %0, i64 %583, !dbg !2315
  store i8 39, i8* %586, align 1, !dbg !2315, !tbaa !1921
  br label %587, !dbg !2315

; <label>:587:                                    ; preds = %585, %582
  %588 = add i64 %564, 2, !dbg !2318
  call void @llvm.dbg.value(metadata i64 %588, metadata !1836, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i8 0, metadata !1843, metadata !DIExpression()), !dbg !1907
  br label %589, !dbg !2319

; <label>:589:                                    ; preds = %560, %562, %587
  %590 = phi i64 [ %572, %587 ], [ %572, %562 ], [ %533, %560 ]
  %591 = phi i8 [ %571, %587 ], [ %571, %562 ], [ %532, %560 ]
  %592 = phi i8 [ %569, %587 ], [ %569, %562 ], [ %531, %560 ]
  %593 = phi i8 [ %568, %587 ], [ %568, %562 ], [ %530, %560 ]
  %594 = phi i64 [ %566, %587 ], [ %566, %562 ], [ %528, %560 ]
  %595 = phi i64 [ %565, %587 ], [ %565, %562 ], [ %527, %560 ]
  %596 = phi i64 [ %563, %587 ], [ %563, %562 ], [ %525, %560 ]
  %597 = phi i64 [ %588, %587 ], [ %564, %562 ], [ %561, %560 ], !dbg !2258
  %598 = phi i8 [ 0, %587 ], [ %567, %562 ], [ %556, %560 ], !dbg !1959
  call void @llvm.dbg.value(metadata i8 %598, metadata !1843, metadata !DIExpression()), !dbg !1907
  call void @llvm.dbg.value(metadata i64 %597, metadata !1836, metadata !DIExpression()), !dbg !1899
  %599 = icmp ult i64 %597, %590, !dbg !2320
  br i1 %599, label %600, label %602, !dbg !2323

; <label>:600:                                    ; preds = %589
  %601 = getelementptr inbounds i8, i8* %0, i64 %597, !dbg !2320
  store i8 %592, i8* %601, align 1, !dbg !2320, !tbaa !1921
  br label %602, !dbg !2320

; <label>:602:                                    ; preds = %600, %589
  %603 = add i64 %597, 1, !dbg !2323
  call void @llvm.dbg.value(metadata i64 %603, metadata !1836, metadata !DIExpression()), !dbg !1899
  %604 = and i8 %591, 1, !dbg !2324
  %605 = icmp eq i8 %604, 0, !dbg !2324
  %606 = select i1 %605, i8 0, i8 %128, !dbg !2326
  call void @llvm.dbg.value(metadata i8 %606, metadata !1845, metadata !DIExpression()), !dbg !1909
  br label %607, !dbg !2327

; <label>:607:                                    ; preds = %602, %207
  %608 = phi i64 [ %596, %602 ], [ %122, %207 ], !dbg !2280
  %609 = phi i64 [ %603, %602 ], [ %123, %207 ], !dbg !1959
  %610 = phi i64 [ %595, %602 ], [ %124, %207 ], !dbg !1900
  %611 = phi i64 [ %594, %602 ], [ %154, %207 ], !dbg !2268
  %612 = phi i8 [ %598, %602 ], [ %126, %207 ], !dbg !1907
  %613 = phi i8 [ %593, %602 ], [ %127, %207 ], !dbg !1959
  %614 = phi i8 [ %606, %602 ], [ %128, %207 ], !dbg !1909
  %615 = phi i64 [ %590, %602 ], [ %129, %207 ]
  call void @llvm.dbg.value(metadata i64 %615, metadata !1827, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata i8 %614, metadata !1845, metadata !DIExpression()), !dbg !1909
  call void @llvm.dbg.value(metadata i8 %613, metadata !1844, metadata !DIExpression()), !dbg !1908
  call void @llvm.dbg.value(metadata i8 %612, metadata !1843, metadata !DIExpression()), !dbg !1907
  call void @llvm.dbg.value(metadata i64 %611, metadata !1829, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata i64 %610, metadata !1837, metadata !DIExpression()), !dbg !1900
  call void @llvm.dbg.value(metadata i64 %609, metadata !1836, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i64 %608, metadata !1835, metadata !DIExpression()), !dbg !1960
  %616 = add i64 %608, 1, !dbg !2328
  call void @llvm.dbg.value(metadata i64 %616, metadata !1835, metadata !DIExpression()), !dbg !1960
  br label %121, !dbg !2329, !llvm.loop !2330

; <label>:617:                                    ; preds = %131, %135
  %618 = phi i64 [ -1, %131 ], [ %122, %135 ]
  call void @llvm.dbg.value(metadata i64 %123, metadata !1836, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i64 %123, metadata !1836, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i64 %124, metadata !1837, metadata !DIExpression()), !dbg !1900
  call void @llvm.dbg.value(metadata i64 %124, metadata !1837, metadata !DIExpression()), !dbg !1900
  call void @llvm.dbg.value(metadata i8 %126, metadata !1843, metadata !DIExpression()), !dbg !1907
  call void @llvm.dbg.value(metadata i8 %126, metadata !1843, metadata !DIExpression()), !dbg !1907
  call void @llvm.dbg.value(metadata i8 %127, metadata !1844, metadata !DIExpression()), !dbg !1908
  call void @llvm.dbg.value(metadata i8 %127, metadata !1844, metadata !DIExpression()), !dbg !1908
  call void @llvm.dbg.value(metadata i8 %128, metadata !1845, metadata !DIExpression()), !dbg !1909
  call void @llvm.dbg.value(metadata i8 %128, metadata !1845, metadata !DIExpression()), !dbg !1909
  call void @llvm.dbg.value(metadata i64 %129, metadata !1827, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata i64 %129, metadata !1827, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata i64 %123, metadata !1836, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i64 %123, metadata !1836, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i64 %124, metadata !1837, metadata !DIExpression()), !dbg !1900
  call void @llvm.dbg.value(metadata i64 %124, metadata !1837, metadata !DIExpression()), !dbg !1900
  call void @llvm.dbg.value(metadata i8 %126, metadata !1843, metadata !DIExpression()), !dbg !1907
  call void @llvm.dbg.value(metadata i8 %126, metadata !1843, metadata !DIExpression()), !dbg !1907
  call void @llvm.dbg.value(metadata i8 %127, metadata !1844, metadata !DIExpression()), !dbg !1908
  call void @llvm.dbg.value(metadata i8 %127, metadata !1844, metadata !DIExpression()), !dbg !1908
  call void @llvm.dbg.value(metadata i8 %128, metadata !1845, metadata !DIExpression()), !dbg !1909
  call void @llvm.dbg.value(metadata i8 %128, metadata !1845, metadata !DIExpression()), !dbg !1909
  call void @llvm.dbg.value(metadata i64 %129, metadata !1827, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata i64 %129, metadata !1827, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata i64 %123, metadata !1836, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i64 %123, metadata !1836, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i64 %124, metadata !1837, metadata !DIExpression()), !dbg !1900
  call void @llvm.dbg.value(metadata i64 %124, metadata !1837, metadata !DIExpression()), !dbg !1900
  call void @llvm.dbg.value(metadata i8 %126, metadata !1843, metadata !DIExpression()), !dbg !1907
  call void @llvm.dbg.value(metadata i8 %126, metadata !1843, metadata !DIExpression()), !dbg !1907
  call void @llvm.dbg.value(metadata i8 %127, metadata !1844, metadata !DIExpression()), !dbg !1908
  call void @llvm.dbg.value(metadata i8 %127, metadata !1844, metadata !DIExpression()), !dbg !1908
  call void @llvm.dbg.value(metadata i8 %128, metadata !1845, metadata !DIExpression()), !dbg !1909
  call void @llvm.dbg.value(metadata i8 %128, metadata !1845, metadata !DIExpression()), !dbg !1909
  call void @llvm.dbg.value(metadata i64 %129, metadata !1827, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata i64 %129, metadata !1827, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata i64 %123, metadata !1836, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i64 %123, metadata !1836, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i64 %124, metadata !1837, metadata !DIExpression()), !dbg !1900
  call void @llvm.dbg.value(metadata i64 %124, metadata !1837, metadata !DIExpression()), !dbg !1900
  call void @llvm.dbg.value(metadata i8 %126, metadata !1843, metadata !DIExpression()), !dbg !1907
  call void @llvm.dbg.value(metadata i8 %126, metadata !1843, metadata !DIExpression()), !dbg !1907
  call void @llvm.dbg.value(metadata i8 %127, metadata !1844, metadata !DIExpression()), !dbg !1908
  call void @llvm.dbg.value(metadata i8 %127, metadata !1844, metadata !DIExpression()), !dbg !1908
  call void @llvm.dbg.value(metadata i8 %128, metadata !1845, metadata !DIExpression()), !dbg !1909
  call void @llvm.dbg.value(metadata i8 %128, metadata !1845, metadata !DIExpression()), !dbg !1909
  call void @llvm.dbg.value(metadata i64 %129, metadata !1827, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata i64 %129, metadata !1827, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata i64 %123, metadata !1836, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i64 %123, metadata !1836, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i64 %124, metadata !1837, metadata !DIExpression()), !dbg !1900
  call void @llvm.dbg.value(metadata i64 %124, metadata !1837, metadata !DIExpression()), !dbg !1900
  call void @llvm.dbg.value(metadata i64 %618, metadata !1829, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata i64 %618, metadata !1829, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata i8 %126, metadata !1843, metadata !DIExpression()), !dbg !1907
  call void @llvm.dbg.value(metadata i8 %126, metadata !1843, metadata !DIExpression()), !dbg !1907
  call void @llvm.dbg.value(metadata i8 %127, metadata !1844, metadata !DIExpression()), !dbg !1908
  call void @llvm.dbg.value(metadata i8 %127, metadata !1844, metadata !DIExpression()), !dbg !1908
  call void @llvm.dbg.value(metadata i8 %128, metadata !1845, metadata !DIExpression()), !dbg !1909
  call void @llvm.dbg.value(metadata i8 %128, metadata !1845, metadata !DIExpression()), !dbg !1909
  call void @llvm.dbg.value(metadata i64 %129, metadata !1827, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata i64 %129, metadata !1827, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata i64 %123, metadata !1836, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i64 %123, metadata !1836, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i64 %124, metadata !1837, metadata !DIExpression()), !dbg !1900
  call void @llvm.dbg.value(metadata i64 %124, metadata !1837, metadata !DIExpression()), !dbg !1900
  call void @llvm.dbg.value(metadata i64 %125, metadata !1829, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata i64 %125, metadata !1829, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata i8 %126, metadata !1843, metadata !DIExpression()), !dbg !1907
  call void @llvm.dbg.value(metadata i8 %126, metadata !1843, metadata !DIExpression()), !dbg !1907
  call void @llvm.dbg.value(metadata i8 %127, metadata !1844, metadata !DIExpression()), !dbg !1908
  call void @llvm.dbg.value(metadata i8 %127, metadata !1844, metadata !DIExpression()), !dbg !1908
  call void @llvm.dbg.value(metadata i8 %128, metadata !1845, metadata !DIExpression()), !dbg !1909
  call void @llvm.dbg.value(metadata i8 %128, metadata !1845, metadata !DIExpression()), !dbg !1909
  call void @llvm.dbg.value(metadata i64 %129, metadata !1827, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata i64 %129, metadata !1827, metadata !DIExpression()), !dbg !1891
  %619 = icmp eq i64 %123, 0, !dbg !2332
  %620 = and i1 %114, %619, !dbg !2334
  %621 = xor i1 %620, true, !dbg !2334
  %622 = or i1 %110, %621, !dbg !2334
  br i1 %622, label %623, label %661, !dbg !2334

; <label>:623:                                    ; preds = %617
  %624 = and i1 %114, %110, !dbg !2335
  %625 = xor i1 %624, true, !dbg !2335
  %626 = and i8 %127, 1, !dbg !2337
  %627 = icmp eq i8 %626, 0, !dbg !2337
  %628 = or i1 %627, %625, !dbg !2335
  br i1 %628, label %638, label %629, !dbg !2335

; <label>:629:                                    ; preds = %623
  %630 = and i8 %128, 1, !dbg !2338
  %631 = icmp eq i8 %630, 0, !dbg !2338
  br i1 %631, label %634, label %632, !dbg !2341

; <label>:632:                                    ; preds = %629
  call void @llvm.dbg.value(metadata i64 %618, metadata !1829, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata i8* %95, metadata !1833, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8* %96, metadata !1834, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i64 %124, metadata !1837, metadata !DIExpression()), !dbg !1900
  call void @llvm.dbg.value(metadata i64 %618, metadata !1829, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata i8* %95, metadata !1833, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8* %96, metadata !1834, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i64 %124, metadata !1837, metadata !DIExpression()), !dbg !1900
  call void @llvm.dbg.value(metadata i64 %618, metadata !1829, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata i8* %95, metadata !1833, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8* %96, metadata !1834, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i64 %124, metadata !1837, metadata !DIExpression()), !dbg !1900
  call void @llvm.dbg.value(metadata i64 %618, metadata !1829, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata i8* %95, metadata !1833, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8* %96, metadata !1834, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i64 %124, metadata !1837, metadata !DIExpression()), !dbg !1900
  call void @llvm.dbg.value(metadata i8* %95, metadata !1833, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8* %96, metadata !1834, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i64 %124, metadata !1837, metadata !DIExpression()), !dbg !1900
  call void @llvm.dbg.value(metadata i64 %618, metadata !1829, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata i8* %95, metadata !1833, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8* %96, metadata !1834, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i64 %124, metadata !1837, metadata !DIExpression()), !dbg !1900
  call void @llvm.dbg.value(metadata i64 %125, metadata !1829, metadata !DIExpression()), !dbg !1893
  %633 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %618, i32 5, i32 %5, i32* %6, i8* %95, i8* %96), !dbg !2342
  br label %671, !dbg !2343

; <label>:634:                                    ; preds = %629
  %635 = icmp eq i64 %129, 0, !dbg !2344
  %636 = icmp ne i64 %124, 0, !dbg !2346
  %637 = and i1 %636, %635, !dbg !2347
  br i1 %637, label %27, label %638, !dbg !2347

; <label>:638:                                    ; preds = %623, %634
  call void @llvm.dbg.value(metadata i8* %98, metadata !1838, metadata !DIExpression()), !dbg !1901
  call void @llvm.dbg.value(metadata i8* %98, metadata !1838, metadata !DIExpression()), !dbg !1901
  call void @llvm.dbg.value(metadata i64 %123, metadata !1836, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i64 %123, metadata !1836, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i64 %129, metadata !1827, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata i64 %129, metadata !1827, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata i8* %98, metadata !1838, metadata !DIExpression()), !dbg !1901
  call void @llvm.dbg.value(metadata i8* %98, metadata !1838, metadata !DIExpression()), !dbg !1901
  call void @llvm.dbg.value(metadata i64 %123, metadata !1836, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i64 %123, metadata !1836, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i64 %129, metadata !1827, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata i64 %129, metadata !1827, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata i8* %98, metadata !1838, metadata !DIExpression()), !dbg !1901
  call void @llvm.dbg.value(metadata i8* %98, metadata !1838, metadata !DIExpression()), !dbg !1901
  call void @llvm.dbg.value(metadata i64 %123, metadata !1836, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i64 %123, metadata !1836, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i64 %129, metadata !1827, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata i64 %129, metadata !1827, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata i8* %98, metadata !1838, metadata !DIExpression()), !dbg !1901
  call void @llvm.dbg.value(metadata i8* %98, metadata !1838, metadata !DIExpression()), !dbg !1901
  call void @llvm.dbg.value(metadata i64 %123, metadata !1836, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i64 %123, metadata !1836, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i64 %129, metadata !1827, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata i64 %129, metadata !1827, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata i8* %98, metadata !1838, metadata !DIExpression()), !dbg !1901
  call void @llvm.dbg.value(metadata i8* %98, metadata !1838, metadata !DIExpression()), !dbg !1901
  call void @llvm.dbg.value(metadata i64 %123, metadata !1836, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i64 %123, metadata !1836, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i64 %129, metadata !1827, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata i64 %129, metadata !1827, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata i8* %98, metadata !1838, metadata !DIExpression()), !dbg !1901
  call void @llvm.dbg.value(metadata i8* %98, metadata !1838, metadata !DIExpression()), !dbg !1901
  call void @llvm.dbg.value(metadata i64 %123, metadata !1836, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i64 %123, metadata !1836, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i64 %129, metadata !1827, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata i64 %129, metadata !1827, metadata !DIExpression()), !dbg !1891
  %639 = icmp ne i8* %98, null, !dbg !2348
  %640 = and i1 %639, %110, !dbg !2350
  br i1 %640, label %641, label %656, !dbg !2350

; <label>:641:                                    ; preds = %638
  call void @llvm.dbg.value(metadata i8* %98, metadata !1838, metadata !DIExpression()), !dbg !1901
  call void @llvm.dbg.value(metadata i64 %123, metadata !1836, metadata !DIExpression()), !dbg !1899
  %642 = load i8, i8* %98, align 1, !dbg !2351, !tbaa !1921
  %643 = icmp eq i8 %642, 0, !dbg !2354
  br i1 %643, label %656, label %644, !dbg !2354

; <label>:644:                                    ; preds = %641, %651
  %645 = phi i8 [ %654, %651 ], [ %642, %641 ]
  %646 = phi i8* [ %653, %651 ], [ %98, %641 ]
  %647 = phi i64 [ %652, %651 ], [ %123, %641 ]
  call void @llvm.dbg.value(metadata i8* %646, metadata !1838, metadata !DIExpression()), !dbg !1901
  call void @llvm.dbg.value(metadata i64 %647, metadata !1836, metadata !DIExpression()), !dbg !1899
  %648 = icmp ult i64 %647, %129, !dbg !2355
  br i1 %648, label %649, label %651, !dbg !2358

; <label>:649:                                    ; preds = %644
  %650 = getelementptr inbounds i8, i8* %0, i64 %647, !dbg !2355
  store i8 %645, i8* %650, align 1, !dbg !2355, !tbaa !1921
  br label %651, !dbg !2355

; <label>:651:                                    ; preds = %649, %644
  %652 = add i64 %647, 1, !dbg !2358
  %653 = getelementptr inbounds i8, i8* %646, i64 1, !dbg !2359
  call void @llvm.dbg.value(metadata i8* %653, metadata !1838, metadata !DIExpression()), !dbg !1901
  call void @llvm.dbg.value(metadata i64 %652, metadata !1836, metadata !DIExpression()), !dbg !1899
  %654 = load i8, i8* %653, align 1, !dbg !2351, !tbaa !1921
  %655 = icmp eq i8 %654, 0, !dbg !2354
  br i1 %655, label %656, label %644, !dbg !2354, !llvm.loop !2360

; <label>:656:                                    ; preds = %651, %641, %638
  %657 = phi i64 [ %123, %638 ], [ %123, %641 ], [ %652, %651 ], !dbg !1899
  call void @llvm.dbg.value(metadata i64 %657, metadata !1836, metadata !DIExpression()), !dbg !1899
  %658 = icmp ult i64 %657, %129, !dbg !2362
  br i1 %658, label %659, label %671, !dbg !2364

; <label>:659:                                    ; preds = %656
  %660 = getelementptr inbounds i8, i8* %0, i64 %657, !dbg !2365
  store i8 0, i8* %660, align 1, !dbg !2366, !tbaa !1921
  br label %671, !dbg !2365

; <label>:661:                                    ; preds = %617, %524, %274, %271, %253, %251, %223, %209, %159, %146, %377, %358
  %662 = phi i32 [ 2, %358 ], [ %94, %377 ], [ %94, %146 ], [ %94, %159 ], [ 2, %209 ], [ 5, %223 ], [ 2, %251 ], [ 2, %253 ], [ 2, %271 ], [ 2, %274 ], [ %94, %524 ], [ %94, %617 ]
  %663 = phi i64 [ %311, %358 ], [ %360, %377 ], [ %144, %146 ], [ %154, %159 ], [ %154, %209 ], [ %154, %223 ], [ %154, %251 ], [ %154, %253 ], [ %154, %271 ], [ %154, %274 ], [ %528, %524 ], [ %618, %617 ]
  %664 = phi i64 [ %129, %358 ], [ %129, %377 ], [ %129, %146 ], [ %129, %159 ], [ %129, %209 ], [ %129, %223 ], [ %129, %251 ], [ %129, %253 ], [ %129, %271 ], [ %129, %274 ], [ %533, %524 ], [ %129, %617 ]
  call void @llvm.dbg.value(metadata i64 %664, metadata !1827, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata i64 %663, metadata !1829, metadata !DIExpression()), !dbg !1893
  %665 = icmp ne i32 %662, 2, !dbg !2367
  %666 = icmp eq i8 %102, 0, !dbg !2369
  %667 = or i1 %665, %666, !dbg !2370
  call void @llvm.dbg.value(metadata i32 4, metadata !1830, metadata !DIExpression()), !dbg !1894
  %668 = select i1 %667, i32 %662, i32 4, !dbg !2370
  call void @llvm.dbg.value(metadata i32 %668, metadata !1830, metadata !DIExpression()), !dbg !1894
  %669 = and i32 %5, -3, !dbg !2371
  %670 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %664, i8* %2, i64 %663, i32 %668, i32 %669, i32* null, i8* %95, i8* %96), !dbg !2372
  br label %671, !dbg !2373

; <label>:671:                                    ; preds = %656, %659, %661, %632
  %672 = phi i64 [ %670, %661 ], [ %633, %632 ], [ %657, %659 ], [ %657, %656 ]
  ret i64 %672, !dbg !2374
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #7 !dbg !2375 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2379, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i32 %1, metadata !2380, metadata !DIExpression()), !dbg !2384
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #10, !dbg !2385
  call void @llvm.dbg.value(metadata i8* %3, metadata !2381, metadata !DIExpression()), !dbg !2386
  %4 = icmp eq i8* %3, %0, !dbg !2387
  br i1 %4, label %5, label %71, !dbg !2389

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #10, !dbg !2390
  call void @llvm.dbg.value(metadata i8* %6, metadata !2382, metadata !DIExpression()), !dbg !2391
  call void @llvm.dbg.value(metadata i8* %6, metadata !2392, metadata !DIExpression()), !dbg !2408
  call void @llvm.dbg.value(metadata i8* null, metadata !2398, metadata !DIExpression()), !dbg !2411
  call void @llvm.dbg.value(metadata i8 85, metadata !2399, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i8 84, metadata !2400, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i8 70, metadata !2401, metadata !DIExpression()), !dbg !2414
  call void @llvm.dbg.value(metadata i8 45, metadata !2402, metadata !DIExpression()), !dbg !2415
  call void @llvm.dbg.value(metadata i8 56, metadata !2403, metadata !DIExpression()), !dbg !2416
  call void @llvm.dbg.value(metadata i8 0, metadata !2404, metadata !DIExpression()), !dbg !2417
  call void @llvm.dbg.value(metadata i8 0, metadata !2405, metadata !DIExpression()), !dbg !2418
  call void @llvm.dbg.value(metadata i8 0, metadata !2406, metadata !DIExpression()), !dbg !2419
  call void @llvm.dbg.value(metadata i8 0, metadata !2407, metadata !DIExpression()), !dbg !2420
  %7 = load i8, i8* %6, align 1, !dbg !2421, !tbaa !1921
  %8 = and i8 %7, -33, !dbg !2421
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !2421

; <label>:9:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2423, metadata !DIExpression()), !dbg !2437
  call void @llvm.dbg.value(metadata i8* null, metadata !2428, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8 84, metadata !2429, metadata !DIExpression()), !dbg !2442
  call void @llvm.dbg.value(metadata i8 70, metadata !2430, metadata !DIExpression()), !dbg !2443
  call void @llvm.dbg.value(metadata i8 45, metadata !2431, metadata !DIExpression()), !dbg !2444
  call void @llvm.dbg.value(metadata i8 56, metadata !2432, metadata !DIExpression()), !dbg !2445
  call void @llvm.dbg.value(metadata i8 0, metadata !2433, metadata !DIExpression()), !dbg !2446
  call void @llvm.dbg.value(metadata i8 0, metadata !2434, metadata !DIExpression()), !dbg !2447
  call void @llvm.dbg.value(metadata i8 0, metadata !2435, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8 0, metadata !2436, metadata !DIExpression()), !dbg !2449
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2450
  %11 = load i8, i8* %10, align 1, !dbg !2450, !tbaa !1921
  %12 = and i8 %11, -33, !dbg !2450
  %13 = icmp eq i8 %12, 84, !dbg !2450
  br i1 %13, label %14, label %68, !dbg !2450

; <label>:14:                                     ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !2452, metadata !DIExpression()), !dbg !2465
  call void @llvm.dbg.value(metadata i8* null, metadata !2457, metadata !DIExpression()), !dbg !2469
  call void @llvm.dbg.value(metadata i8 70, metadata !2458, metadata !DIExpression()), !dbg !2470
  call void @llvm.dbg.value(metadata i8 45, metadata !2459, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8 56, metadata !2460, metadata !DIExpression()), !dbg !2472
  call void @llvm.dbg.value(metadata i8 0, metadata !2461, metadata !DIExpression()), !dbg !2473
  call void @llvm.dbg.value(metadata i8 0, metadata !2462, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8 0, metadata !2463, metadata !DIExpression()), !dbg !2475
  call void @llvm.dbg.value(metadata i8 0, metadata !2464, metadata !DIExpression()), !dbg !2476
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2477
  %16 = load i8, i8* %15, align 1, !dbg !2477, !tbaa !1921
  %17 = and i8 %16, -33, !dbg !2477
  %18 = icmp eq i8 %17, 70, !dbg !2477
  br i1 %18, label %19, label %68, !dbg !2477

; <label>:19:                                     ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !2479, metadata !DIExpression()), !dbg !2491
  call void @llvm.dbg.value(metadata i8* null, metadata !2484, metadata !DIExpression()), !dbg !2495
  call void @llvm.dbg.value(metadata i8 45, metadata !2485, metadata !DIExpression()), !dbg !2496
  call void @llvm.dbg.value(metadata i8 56, metadata !2486, metadata !DIExpression()), !dbg !2497
  call void @llvm.dbg.value(metadata i8 0, metadata !2487, metadata !DIExpression()), !dbg !2498
  call void @llvm.dbg.value(metadata i8 0, metadata !2488, metadata !DIExpression()), !dbg !2499
  call void @llvm.dbg.value(metadata i8 0, metadata !2489, metadata !DIExpression()), !dbg !2500
  call void @llvm.dbg.value(metadata i8 0, metadata !2490, metadata !DIExpression()), !dbg !2501
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2502
  %21 = load i8, i8* %20, align 1, !dbg !2502, !tbaa !1921
  %22 = icmp eq i8 %21, 45, !dbg !2502
  br i1 %22, label %23, label %68, !dbg !2504

; <label>:23:                                     ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !2505, metadata !DIExpression()), !dbg !2516
  call void @llvm.dbg.value(metadata i8* null, metadata !2510, metadata !DIExpression()), !dbg !2520
  call void @llvm.dbg.value(metadata i8 56, metadata !2511, metadata !DIExpression()), !dbg !2521
  call void @llvm.dbg.value(metadata i8 0, metadata !2512, metadata !DIExpression()), !dbg !2522
  call void @llvm.dbg.value(metadata i8 0, metadata !2513, metadata !DIExpression()), !dbg !2523
  call void @llvm.dbg.value(metadata i8 0, metadata !2514, metadata !DIExpression()), !dbg !2524
  call void @llvm.dbg.value(metadata i8 0, metadata !2515, metadata !DIExpression()), !dbg !2525
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2526
  %25 = load i8, i8* %24, align 1, !dbg !2526, !tbaa !1921
  %26 = icmp eq i8 %25, 56, !dbg !2526
  br i1 %26, label %27, label %68, !dbg !2528

; <label>:27:                                     ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !2529, metadata !DIExpression()), !dbg !2539
  call void @llvm.dbg.value(metadata i8* null, metadata !2534, metadata !DIExpression()), !dbg !2543
  call void @llvm.dbg.value(metadata i8 0, metadata !2535, metadata !DIExpression()), !dbg !2544
  call void @llvm.dbg.value(metadata i8 0, metadata !2536, metadata !DIExpression()), !dbg !2545
  call void @llvm.dbg.value(metadata i8 0, metadata !2537, metadata !DIExpression()), !dbg !2546
  call void @llvm.dbg.value(metadata i8 0, metadata !2538, metadata !DIExpression()), !dbg !2547
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2548
  %29 = load i8, i8* %28, align 1, !dbg !2548, !tbaa !1921
  %30 = icmp eq i8 %29, 0, !dbg !2548
  br i1 %30, label %31, label %68, !dbg !2550

; <label>:31:                                     ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !2551, !tbaa !1921
  %33 = icmp eq i8 %32, 96, !dbg !2552
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.79, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.80, i64 0, i64 0), !dbg !2551
  br label %71, !dbg !2553

; <label>:35:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2423, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata i8* null, metadata !2428, metadata !DIExpression()), !dbg !2558
  call void @llvm.dbg.value(metadata i8 66, metadata !2429, metadata !DIExpression()), !dbg !2559
  call void @llvm.dbg.value(metadata i8 49, metadata !2430, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata i8 56, metadata !2431, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata i8 48, metadata !2432, metadata !DIExpression()), !dbg !2562
  call void @llvm.dbg.value(metadata i8 51, metadata !2433, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata i8 48, metadata !2434, metadata !DIExpression()), !dbg !2564
  call void @llvm.dbg.value(metadata i8 0, metadata !2435, metadata !DIExpression()), !dbg !2565
  call void @llvm.dbg.value(metadata i8 0, metadata !2436, metadata !DIExpression()), !dbg !2566
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2567
  %37 = load i8, i8* %36, align 1, !dbg !2567, !tbaa !1921
  %38 = and i8 %37, -33, !dbg !2567
  %39 = icmp eq i8 %38, 66, !dbg !2567
  br i1 %39, label %40, label %68, !dbg !2567

; <label>:40:                                     ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !2452, metadata !DIExpression()), !dbg !2568
  call void @llvm.dbg.value(metadata i8* null, metadata !2457, metadata !DIExpression()), !dbg !2570
  call void @llvm.dbg.value(metadata i8 49, metadata !2458, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8 56, metadata !2459, metadata !DIExpression()), !dbg !2572
  call void @llvm.dbg.value(metadata i8 48, metadata !2460, metadata !DIExpression()), !dbg !2573
  call void @llvm.dbg.value(metadata i8 51, metadata !2461, metadata !DIExpression()), !dbg !2574
  call void @llvm.dbg.value(metadata i8 48, metadata !2462, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata i8 0, metadata !2463, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i8 0, metadata !2464, metadata !DIExpression()), !dbg !2577
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2578
  %42 = load i8, i8* %41, align 1, !dbg !2578, !tbaa !1921
  %43 = icmp eq i8 %42, 49, !dbg !2578
  br i1 %43, label %44, label %68, !dbg !2579

; <label>:44:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !2479, metadata !DIExpression()), !dbg !2580
  call void @llvm.dbg.value(metadata i8* null, metadata !2484, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i8 56, metadata !2485, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.value(metadata i8 48, metadata !2486, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i8 51, metadata !2487, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i8 48, metadata !2488, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.value(metadata i8 0, metadata !2489, metadata !DIExpression()), !dbg !2587
  call void @llvm.dbg.value(metadata i8 0, metadata !2490, metadata !DIExpression()), !dbg !2588
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2589
  %46 = load i8, i8* %45, align 1, !dbg !2589, !tbaa !1921
  %47 = icmp eq i8 %46, 56, !dbg !2589
  br i1 %47, label %48, label %68, !dbg !2590

; <label>:48:                                     ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !2505, metadata !DIExpression()), !dbg !2591
  call void @llvm.dbg.value(metadata i8* null, metadata !2510, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i8 48, metadata !2511, metadata !DIExpression()), !dbg !2594
  call void @llvm.dbg.value(metadata i8 51, metadata !2512, metadata !DIExpression()), !dbg !2595
  call void @llvm.dbg.value(metadata i8 48, metadata !2513, metadata !DIExpression()), !dbg !2596
  call void @llvm.dbg.value(metadata i8 0, metadata !2514, metadata !DIExpression()), !dbg !2597
  call void @llvm.dbg.value(metadata i8 0, metadata !2515, metadata !DIExpression()), !dbg !2598
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2599
  %50 = load i8, i8* %49, align 1, !dbg !2599, !tbaa !1921
  %51 = icmp eq i8 %50, 48, !dbg !2599
  br i1 %51, label %52, label %68, !dbg !2600

; <label>:52:                                     ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !2529, metadata !DIExpression()), !dbg !2601
  call void @llvm.dbg.value(metadata i8* null, metadata !2534, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i8 51, metadata !2535, metadata !DIExpression()), !dbg !2604
  call void @llvm.dbg.value(metadata i8 48, metadata !2536, metadata !DIExpression()), !dbg !2605
  call void @llvm.dbg.value(metadata i8 0, metadata !2537, metadata !DIExpression()), !dbg !2606
  call void @llvm.dbg.value(metadata i8 0, metadata !2538, metadata !DIExpression()), !dbg !2607
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2608
  %54 = load i8, i8* %53, align 1, !dbg !2608, !tbaa !1921
  %55 = icmp eq i8 %54, 51, !dbg !2608
  br i1 %55, label %56, label %68, !dbg !2609

; <label>:56:                                     ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !2610, metadata !DIExpression()), !dbg !2619
  call void @llvm.dbg.value(metadata i8* null, metadata !2615, metadata !DIExpression()), !dbg !2623
  call void @llvm.dbg.value(metadata i8 48, metadata !2616, metadata !DIExpression()), !dbg !2624
  call void @llvm.dbg.value(metadata i8 0, metadata !2617, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata i8 0, metadata !2618, metadata !DIExpression()), !dbg !2626
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2627
  %58 = load i8, i8* %57, align 1, !dbg !2627, !tbaa !1921
  %59 = icmp eq i8 %58, 48, !dbg !2627
  br i1 %59, label %60, label %68, !dbg !2629

; <label>:60:                                     ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !2630, metadata !DIExpression()), !dbg !2638
  call void @llvm.dbg.value(metadata i8* null, metadata !2635, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i8 0, metadata !2636, metadata !DIExpression()), !dbg !2643
  call void @llvm.dbg.value(metadata i8 0, metadata !2637, metadata !DIExpression()), !dbg !2644
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2645
  %62 = load i8, i8* %61, align 1, !dbg !2645, !tbaa !1921
  %63 = icmp eq i8 %62, 0, !dbg !2645
  br i1 %63, label %64, label %68, !dbg !2647

; <label>:64:                                     ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !2648, !tbaa !1921
  %66 = icmp eq i8 %65, 96, !dbg !2649
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.81, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.82, i64 0, i64 0), !dbg !2648
  br label %71, !dbg !2650

; <label>:68:                                     ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !2651
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.78, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.77, i64 0, i64 0), !dbg !2652
  br label %71, !dbg !2653

; <label>:71:                                     ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !2654
  ret i8* %72, !dbg !2655
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
define dso_local i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #7 !dbg !2656 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2660, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i64 %1, metadata !2661, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2662, metadata !DIExpression()), !dbg !2665
  call void @llvm.dbg.value(metadata i8* %0, metadata !2666, metadata !DIExpression()) #10, !dbg !2679
  call void @llvm.dbg.value(metadata i64 %1, metadata !2671, metadata !DIExpression()) #10, !dbg !2681
  call void @llvm.dbg.value(metadata i64* null, metadata !2672, metadata !DIExpression()) #10, !dbg !2682
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2673, metadata !DIExpression()) #10, !dbg !2683
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2684
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2684
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2674, metadata !DIExpression()) #10, !dbg !2685
  %6 = tail call i32* @__errno_location() #17, !dbg !2686
  %7 = load i32, i32* %6, align 4, !dbg !2686, !tbaa !763
  call void @llvm.dbg.value(metadata i32 %7, metadata !2675, metadata !DIExpression()) #10, !dbg !2687
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2688
  %9 = load i32, i32* %8, align 4, !dbg !2688, !tbaa !1759
  %10 = or i32 %9, 1, !dbg !2689
  call void @llvm.dbg.value(metadata i32 %10, metadata !2676, metadata !DIExpression()) #10, !dbg !2690
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2691
  %12 = load i32, i32* %11, align 8, !dbg !2691, !tbaa !1700
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2692
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2693
  %15 = load i8*, i8** %14, align 8, !dbg !2693, !tbaa !1785
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2694
  %17 = load i8*, i8** %16, align 8, !dbg !2694, !tbaa !1788
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #10, !dbg !2695
  %19 = add i64 %18, 1, !dbg !2696
  call void @llvm.dbg.value(metadata i64 %19, metadata !2677, metadata !DIExpression()) #10, !dbg !2697
  call void @llvm.dbg.value(metadata i64 %19, metadata !2698, metadata !DIExpression()) #10, !dbg !2703
  %20 = tail call noalias i8* @xmalloc(i64 %19) #10, !dbg !2705
  call void @llvm.dbg.value(metadata i8* %20, metadata !2678, metadata !DIExpression()) #10, !dbg !2706
  %21 = load i32, i32* %11, align 8, !dbg !2707, !tbaa !1700
  %22 = load i8*, i8** %14, align 8, !dbg !2708, !tbaa !1785
  %23 = load i8*, i8** %16, align 8, !dbg !2709, !tbaa !1788
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #10, !dbg !2710
  store i32 %7, i32* %6, align 4, !dbg !2711, !tbaa !763
  ret i8* %20, !dbg !2712
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #7 !dbg !2667 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2666, metadata !DIExpression()), !dbg !2713
  call void @llvm.dbg.value(metadata i64 %1, metadata !2671, metadata !DIExpression()), !dbg !2714
  call void @llvm.dbg.value(metadata i64* %2, metadata !2672, metadata !DIExpression()), !dbg !2715
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2673, metadata !DIExpression()), !dbg !2716
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2717
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2717
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2674, metadata !DIExpression()), !dbg !2718
  %7 = tail call i32* @__errno_location() #17, !dbg !2719
  %8 = load i32, i32* %7, align 4, !dbg !2719, !tbaa !763
  call void @llvm.dbg.value(metadata i32 %8, metadata !2675, metadata !DIExpression()), !dbg !2720
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2721
  %10 = load i32, i32* %9, align 4, !dbg !2721, !tbaa !1759
  %11 = icmp ne i64* %2, null, !dbg !2722
  %12 = xor i1 %11, true, !dbg !2722
  %13 = zext i1 %12 to i32, !dbg !2722
  %14 = or i32 %10, %13, !dbg !2723
  call void @llvm.dbg.value(metadata i32 %14, metadata !2676, metadata !DIExpression()), !dbg !2724
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2725
  %16 = load i32, i32* %15, align 8, !dbg !2725, !tbaa !1700
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2726
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2727
  %19 = load i8*, i8** %18, align 8, !dbg !2727, !tbaa !1785
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2728
  %21 = load i8*, i8** %20, align 8, !dbg !2728, !tbaa !1788
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !2729
  %23 = add i64 %22, 1, !dbg !2730
  call void @llvm.dbg.value(metadata i64 %23, metadata !2677, metadata !DIExpression()), !dbg !2731
  call void @llvm.dbg.value(metadata i64 %23, metadata !2698, metadata !DIExpression()) #10, !dbg !2732
  %24 = tail call noalias i8* @xmalloc(i64 %23) #10, !dbg !2734
  call void @llvm.dbg.value(metadata i8* %24, metadata !2678, metadata !DIExpression()), !dbg !2735
  %25 = load i32, i32* %15, align 8, !dbg !2736, !tbaa !1700
  %26 = load i8*, i8** %18, align 8, !dbg !2737, !tbaa !1785
  %27 = load i8*, i8** %20, align 8, !dbg !2738, !tbaa !1788
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !2739
  store i32 %8, i32* %7, align 4, !dbg !2740, !tbaa !763
  br i1 %11, label %29, label %30, !dbg !2741

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2742, !tbaa !1081
  br label %30, !dbg !2744

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2745
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #7 !dbg !2746 {
  %1 = load %struct.tokenbuffer*, %struct.tokenbuffer** @slotvec, align 8, !dbg !2750, !tbaa !690
  call void @llvm.dbg.value(metadata %struct.tokenbuffer* %1, metadata !2748, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i32 1, metadata !2749, metadata !DIExpression()), !dbg !2752
  %2 = load i32, i32* @nslots, align 4, !dbg !2753, !tbaa !763
  %3 = icmp sgt i32 %2, 1, !dbg !2756
  br i1 %3, label %4, label %12, !dbg !2757

; <label>:4:                                      ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !2749, metadata !DIExpression()), !dbg !2752
  %6 = getelementptr inbounds %struct.tokenbuffer, %struct.tokenbuffer* %1, i64 %5, i32 1, !dbg !2758
  %7 = load i8*, i8** %6, align 8, !dbg !2758, !tbaa !2759
  tail call void @free(i8* %7) #10, !dbg !2761
  %8 = add nuw nsw i64 %5, 1, !dbg !2762
  call void @llvm.dbg.value(metadata i32 undef, metadata !2749, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2752
  %9 = load i32, i32* @nslots, align 4, !dbg !2753, !tbaa !763
  %10 = sext i32 %9 to i64, !dbg !2756
  %11 = icmp slt i64 %8, %10, !dbg !2756
  br i1 %11, label %4, label %12, !dbg !2757, !llvm.loop !2763

; <label>:12:                                     ; preds = %4, %0
  %13 = getelementptr inbounds %struct.tokenbuffer, %struct.tokenbuffer* %1, i64 0, i32 1, !dbg !2765
  %14 = load i8*, i8** %13, align 8, !dbg !2765, !tbaa !2759
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2767
  br i1 %15, label %17, label %16, !dbg !2768

; <label>:16:                                     ; preds = %12
  tail call void @free(i8* %14) #10, !dbg !2769
  store i64 256, i64* getelementptr inbounds (%struct.tokenbuffer, %struct.tokenbuffer* @slotvec0, i64 0, i32 0), align 8, !dbg !2771, !tbaa !2772
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.tokenbuffer, %struct.tokenbuffer* @slotvec0, i64 0, i32 1), align 8, !dbg !2773, !tbaa !2759
  br label %17, !dbg !2774

; <label>:17:                                     ; preds = %12, %16
  %18 = icmp eq %struct.tokenbuffer* %1, @slotvec0, !dbg !2775
  br i1 %18, label %21, label %19, !dbg !2777

; <label>:19:                                     ; preds = %17
  %20 = bitcast %struct.tokenbuffer* %1 to i8*, !dbg !2778
  tail call void @free(i8* %20) #10, !dbg !2780
  store %struct.tokenbuffer* @slotvec0, %struct.tokenbuffer** @slotvec, align 8, !dbg !2781, !tbaa !690
  br label %21, !dbg !2782

; <label>:21:                                     ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !2783, !tbaa !763
  ret void, !dbg !2784
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32, i8*) local_unnamed_addr #7 !dbg !2785 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2789, metadata !DIExpression()), !dbg !2791
  call void @llvm.dbg.value(metadata i8* %1, metadata !2790, metadata !DIExpression()), !dbg !2792
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2793
  ret i8* %3, !dbg !2794
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #7 !dbg !2795 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2799, metadata !DIExpression()), !dbg !2814
  call void @llvm.dbg.value(metadata i8* %1, metadata !2800, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata i64 %2, metadata !2801, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2802, metadata !DIExpression()), !dbg !2817
  %5 = tail call i32* @__errno_location() #17, !dbg !2818
  %6 = load i32, i32* %5, align 4, !dbg !2818, !tbaa !763
  call void @llvm.dbg.value(metadata i32 %6, metadata !2803, metadata !DIExpression()), !dbg !2819
  %7 = load %struct.tokenbuffer*, %struct.tokenbuffer** @slotvec, align 8, !dbg !2820, !tbaa !690
  call void @llvm.dbg.value(metadata %struct.tokenbuffer* %7, metadata !2804, metadata !DIExpression()), !dbg !2821
  %8 = icmp slt i32 %0, 0, !dbg !2822
  br i1 %8, label %9, label %10, !dbg !2824

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2825
  unreachable, !dbg !2825

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2826, !tbaa !763
  %12 = icmp sgt i32 %11, %0, !dbg !2827
  br i1 %12, label %34, label %13, !dbg !2828

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.tokenbuffer* %7, @slotvec0, !dbg !2829
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2808, metadata !DIExpression()), !dbg !2830
  %15 = icmp eq i32 %0, 2147483647, !dbg !2831
  br i1 %15, label %16, label %17, !dbg !2833

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2834
  unreachable, !dbg !2834

; <label>:17:                                     ; preds = %13
  %18 = select i1 %14, %struct.tokenbuffer* null, %struct.tokenbuffer* %7, !dbg !2835
  %19 = bitcast %struct.tokenbuffer* %18 to i8*, !dbg !2835
  %20 = add nsw i32 %0, 1, !dbg !2836
  %21 = sext i32 %20 to i64, !dbg !2837
  %22 = shl nsw i64 %21, 4, !dbg !2838
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #10, !dbg !2839
  %24 = bitcast i8* %23 to %struct.tokenbuffer*, !dbg !2839
  call void @llvm.dbg.value(metadata %struct.tokenbuffer* %24, metadata !2804, metadata !DIExpression()), !dbg !2821
  store i8* %23, i8** bitcast (%struct.tokenbuffer** @slotvec to i8**), align 8, !dbg !2840, !tbaa !690
  br i1 %14, label %25, label %26, !dbg !2841

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.tokenbuffer* @slotvec0 to i8*), i64 16, i1 false), !dbg !2842, !tbaa.struct !2844
  br label %26, !dbg !2845

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2846, !tbaa !763
  %28 = sext i32 %27 to i64, !dbg !2847
  %29 = getelementptr inbounds %struct.tokenbuffer, %struct.tokenbuffer* %24, i64 %28, !dbg !2847
  %30 = bitcast %struct.tokenbuffer* %29 to i8*, !dbg !2848
  %31 = sub nsw i32 %20, %27, !dbg !2849
  %32 = sext i32 %31 to i64, !dbg !2850
  %33 = shl nsw i64 %32, 4, !dbg !2851
  tail call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 %33, i1 false), !dbg !2848
  store i32 %20, i32* @nslots, align 4, !dbg !2852, !tbaa !763
  br label %34, !dbg !2853

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.tokenbuffer* [ %24, %26 ], [ %7, %10 ], !dbg !2854
  call void @llvm.dbg.value(metadata %struct.tokenbuffer* %35, metadata !2804, metadata !DIExpression()), !dbg !2821
  %36 = sext i32 %0 to i64, !dbg !2855
  %37 = getelementptr inbounds %struct.tokenbuffer, %struct.tokenbuffer* %35, i64 %36, i32 0, !dbg !2856
  %38 = load i64, i64* %37, align 8, !dbg !2856, !tbaa !2772
  call void @llvm.dbg.value(metadata i64 %38, metadata !2809, metadata !DIExpression()), !dbg !2857
  %39 = getelementptr inbounds %struct.tokenbuffer, %struct.tokenbuffer* %35, i64 %36, i32 1, !dbg !2858
  %40 = load i8*, i8** %39, align 8, !dbg !2858, !tbaa !2759
  call void @llvm.dbg.value(metadata i8* %40, metadata !2811, metadata !DIExpression()), !dbg !2859
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2860
  %42 = load i32, i32* %41, align 4, !dbg !2860, !tbaa !1759
  %43 = or i32 %42, 1, !dbg !2861
  call void @llvm.dbg.value(metadata i32 %43, metadata !2812, metadata !DIExpression()), !dbg !2862
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2863
  %45 = load i32, i32* %44, align 8, !dbg !2863, !tbaa !1700
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2864
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2865
  %48 = load i8*, i8** %47, align 8, !dbg !2865, !tbaa !1785
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2866
  %50 = load i8*, i8** %49, align 8, !dbg !2866, !tbaa !1788
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2867
  call void @llvm.dbg.value(metadata i64 %51, metadata !2813, metadata !DIExpression()), !dbg !2868
  %52 = icmp ugt i64 %38, %51, !dbg !2869
  br i1 %52, label %63, label %53, !dbg !2871

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2872
  call void @llvm.dbg.value(metadata i64 %54, metadata !2809, metadata !DIExpression()), !dbg !2857
  store i64 %54, i64* %37, align 8, !dbg !2874, !tbaa !2772
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2875
  br i1 %55, label %57, label %56, !dbg !2877

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #10, !dbg !2878
  br label %57, !dbg !2878

; <label>:57:                                     ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !2698, metadata !DIExpression()) #10, !dbg !2879
  %58 = tail call noalias i8* @xmalloc(i64 %54) #10, !dbg !2881
  call void @llvm.dbg.value(metadata i8* %58, metadata !2811, metadata !DIExpression()), !dbg !2859
  store i8* %58, i8** %39, align 8, !dbg !2882, !tbaa !2759
  %59 = load i32, i32* %44, align 8, !dbg !2883, !tbaa !1700
  %60 = load i8*, i8** %47, align 8, !dbg !2884, !tbaa !1785
  %61 = load i8*, i8** %49, align 8, !dbg !2885, !tbaa !1788
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2886
  br label %63, !dbg !2887

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2888
  call void @llvm.dbg.value(metadata i8* %64, metadata !2811, metadata !DIExpression()), !dbg !2859
  store i32 %6, i32* %5, align 4, !dbg !2889, !tbaa !763
  ret i8* %64, !dbg !2890
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2891 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2895, metadata !DIExpression()), !dbg !2898
  call void @llvm.dbg.value(metadata i8* %1, metadata !2896, metadata !DIExpression()), !dbg !2899
  call void @llvm.dbg.value(metadata i64 %2, metadata !2897, metadata !DIExpression()), !dbg !2900
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2901
  ret i8* %4, !dbg !2902
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8*) local_unnamed_addr #7 !dbg !2903 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2907, metadata !DIExpression()), !dbg !2908
  call void @llvm.dbg.value(metadata i32 0, metadata !2789, metadata !DIExpression()) #10, !dbg !2909
  call void @llvm.dbg.value(metadata i8* %0, metadata !2790, metadata !DIExpression()) #10, !dbg !2911
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2912
  ret i8* %2, !dbg !2913
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8*, i64) local_unnamed_addr #7 !dbg !2914 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2918, metadata !DIExpression()), !dbg !2920
  call void @llvm.dbg.value(metadata i64 %1, metadata !2919, metadata !DIExpression()), !dbg !2921
  call void @llvm.dbg.value(metadata i32 0, metadata !2895, metadata !DIExpression()) #10, !dbg !2922
  call void @llvm.dbg.value(metadata i8* %0, metadata !2896, metadata !DIExpression()) #10, !dbg !2924
  call void @llvm.dbg.value(metadata i64 %1, metadata !2897, metadata !DIExpression()) #10, !dbg !2925
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2926
  ret i8* %3, !dbg !2927
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #7 !dbg !2928 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2932, metadata !DIExpression()), !dbg !2936
  call void @llvm.dbg.value(metadata i32 %1, metadata !2933, metadata !DIExpression()), !dbg !2937
  call void @llvm.dbg.value(metadata i8* %2, metadata !2934, metadata !DIExpression()), !dbg !2938
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2939
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2939
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2935, metadata !DIExpression(DW_OP_deref)), !dbg !2940
  call void @llvm.dbg.value(metadata i32 %1, metadata !2941, metadata !DIExpression()) #10, !dbg !2947
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #10, !dbg !2949, !alias.scope !2950
  %6 = icmp eq i32 %1, 10, !dbg !2953
  br i1 %6, label %7, label %8, !dbg !2955

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2956, !noalias !2950
  unreachable, !dbg !2956

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2957
  store i32 %1, i32* %9, align 8, !dbg !2958, !tbaa !1700, !alias.scope !2950
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2935, metadata !DIExpression(DW_OP_deref)), !dbg !2940
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2946, metadata !DIExpression(DW_OP_deref)), !dbg !2949
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2959
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2960
  ret i8* %10, !dbg !2961
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #7 !dbg !2962 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2966, metadata !DIExpression()), !dbg !2971
  call void @llvm.dbg.value(metadata i32 %1, metadata !2967, metadata !DIExpression()), !dbg !2972
  call void @llvm.dbg.value(metadata i8* %2, metadata !2968, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i64 %3, metadata !2969, metadata !DIExpression()), !dbg !2974
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2975
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2975
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2970, metadata !DIExpression(DW_OP_deref)), !dbg !2976
  call void @llvm.dbg.value(metadata i32 %1, metadata !2941, metadata !DIExpression()) #10, !dbg !2977
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %6, i8 0, i64 56, i1 false) #10, !dbg !2979, !alias.scope !2980
  %7 = icmp eq i32 %1, 10, !dbg !2983
  br i1 %7, label %8, label %9, !dbg !2984

; <label>:8:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2985, !noalias !2980
  unreachable, !dbg !2985

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2986
  store i32 %1, i32* %10, align 8, !dbg !2987, !tbaa !1700, !alias.scope !2980
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2970, metadata !DIExpression(DW_OP_deref)), !dbg !2976
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2946, metadata !DIExpression(DW_OP_deref)), !dbg !2979
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2988
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2989
  ret i8* %11, !dbg !2990
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32, i8*) local_unnamed_addr #7 !dbg !2991 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2995, metadata !DIExpression()), !dbg !2997
  call void @llvm.dbg.value(metadata i8* %1, metadata !2996, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i32 0, metadata !2932, metadata !DIExpression()) #10, !dbg !2999
  call void @llvm.dbg.value(metadata i32 %0, metadata !2933, metadata !DIExpression()) #10, !dbg !3001
  call void @llvm.dbg.value(metadata i8* %1, metadata !2934, metadata !DIExpression()) #10, !dbg !3002
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3003
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !3003
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2935, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3004
  call void @llvm.dbg.value(metadata i32 %0, metadata !2941, metadata !DIExpression()) #10, !dbg !3005
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %4, i8 0, i64 56, i1 false) #10, !dbg !3007, !alias.scope !3008
  %5 = icmp eq i32 %0, 10, !dbg !3011
  br i1 %5, label %6, label %7, !dbg !3012

; <label>:6:                                      ; preds = %2
  tail call void @abort() #15, !dbg !3013, !noalias !3008
  unreachable, !dbg !3013

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3014
  store i32 %0, i32* %8, align 8, !dbg !3015, !tbaa !1700, !alias.scope !3008
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2935, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3004
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2946, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3007
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !3016
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !3017
  ret i8* %9, !dbg !3018
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !3019 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3023, metadata !DIExpression()), !dbg !3026
  call void @llvm.dbg.value(metadata i8* %1, metadata !3024, metadata !DIExpression()), !dbg !3027
  call void @llvm.dbg.value(metadata i64 %2, metadata !3025, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i32 0, metadata !2966, metadata !DIExpression()) #10, !dbg !3029
  call void @llvm.dbg.value(metadata i32 %0, metadata !2967, metadata !DIExpression()) #10, !dbg !3031
  call void @llvm.dbg.value(metadata i8* %1, metadata !2968, metadata !DIExpression()) #10, !dbg !3032
  call void @llvm.dbg.value(metadata i64 %2, metadata !2969, metadata !DIExpression()) #10, !dbg !3033
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3034
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !3034
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2970, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3035
  call void @llvm.dbg.value(metadata i32 %0, metadata !2941, metadata !DIExpression()) #10, !dbg !3036
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #10, !dbg !3038, !alias.scope !3039
  %6 = icmp eq i32 %0, 10, !dbg !3042
  br i1 %6, label %7, label %8, !dbg !3043

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !3044, !noalias !3039
  unreachable, !dbg !3044

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3045
  store i32 %0, i32* %9, align 8, !dbg !3046, !tbaa !1700, !alias.scope !3039
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2970, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3035
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2946, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3038
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #10, !dbg !3047
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !3048
  ret i8* %10, !dbg !3049
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #7 !dbg !3050 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3054, metadata !DIExpression()), !dbg !3058
  call void @llvm.dbg.value(metadata i64 %1, metadata !3055, metadata !DIExpression()), !dbg !3059
  call void @llvm.dbg.value(metadata i8 %2, metadata !3056, metadata !DIExpression()), !dbg !3060
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3061
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !3061
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3062, !tbaa.struct !3063
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3057, metadata !DIExpression(DW_OP_deref)), !dbg !3064
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1719, metadata !DIExpression()), !dbg !3065
  call void @llvm.dbg.value(metadata i8 %2, metadata !1720, metadata !DIExpression()), !dbg !3067
  call void @llvm.dbg.value(metadata i32 1, metadata !1721, metadata !DIExpression()), !dbg !3068
  call void @llvm.dbg.value(metadata i8 %2, metadata !1722, metadata !DIExpression()), !dbg !3069
  %6 = lshr i8 %2, 5, !dbg !3070
  %7 = zext i8 %6 to i64, !dbg !3070
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3071
  call void @llvm.dbg.value(metadata i32* %8, metadata !1723, metadata !DIExpression()), !dbg !3072
  %9 = and i8 %2, 31, !dbg !3073
  %10 = zext i8 %9 to i32, !dbg !3073
  call void @llvm.dbg.value(metadata i32 %10, metadata !1725, metadata !DIExpression()), !dbg !3074
  %11 = load i32, i32* %8, align 4, !dbg !3075, !tbaa !763
  %12 = lshr i32 %11, %10, !dbg !3076
  %13 = and i32 %12, 1, !dbg !3077
  call void @llvm.dbg.value(metadata i32 %13, metadata !1726, metadata !DIExpression()), !dbg !3078
  %14 = xor i32 %13, 1, !dbg !3079
  %15 = shl i32 %14, %10, !dbg !3080
  %16 = xor i32 %15, %11, !dbg !3081
  store i32 %16, i32* %8, align 4, !dbg !3081, !tbaa !763
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3057, metadata !DIExpression(DW_OP_deref)), !dbg !3064
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3082
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !3083
  ret i8* %17, !dbg !3084
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #7 !dbg !3085 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3089, metadata !DIExpression()), !dbg !3091
  call void @llvm.dbg.value(metadata i8 %1, metadata !3090, metadata !DIExpression()), !dbg !3092
  call void @llvm.dbg.value(metadata i8* %0, metadata !3054, metadata !DIExpression()) #10, !dbg !3093
  call void @llvm.dbg.value(metadata i64 -1, metadata !3055, metadata !DIExpression()) #10, !dbg !3095
  call void @llvm.dbg.value(metadata i8 %1, metadata !3056, metadata !DIExpression()) #10, !dbg !3096
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3097
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !3097
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !3098, !tbaa.struct !3063
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3057, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3099
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1719, metadata !DIExpression()) #10, !dbg !3100
  call void @llvm.dbg.value(metadata i8 %1, metadata !1720, metadata !DIExpression()) #10, !dbg !3102
  call void @llvm.dbg.value(metadata i32 1, metadata !1721, metadata !DIExpression()) #10, !dbg !3103
  call void @llvm.dbg.value(metadata i8 %1, metadata !1722, metadata !DIExpression()) #10, !dbg !3104
  %5 = lshr i8 %1, 5, !dbg !3105
  %6 = zext i8 %5 to i64, !dbg !3105
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3106
  call void @llvm.dbg.value(metadata i32* %7, metadata !1723, metadata !DIExpression()) #10, !dbg !3107
  %8 = and i8 %1, 31, !dbg !3108
  %9 = zext i8 %8 to i32, !dbg !3108
  call void @llvm.dbg.value(metadata i32 %9, metadata !1725, metadata !DIExpression()) #10, !dbg !3109
  %10 = load i32, i32* %7, align 4, !dbg !3110, !tbaa !763
  %11 = lshr i32 %10, %9, !dbg !3111
  %12 = and i32 %11, 1, !dbg !3112
  call void @llvm.dbg.value(metadata i32 %12, metadata !1726, metadata !DIExpression()) #10, !dbg !3113
  %13 = xor i32 %12, 1, !dbg !3114
  %14 = shl i32 %13, %9, !dbg !3115
  %15 = xor i32 %14, %10, !dbg !3116
  store i32 %15, i32* %7, align 4, !dbg !3116, !tbaa !763
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3057, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3099
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !3117
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !3118
  ret i8* %16, !dbg !3119
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8*) local_unnamed_addr #7 !dbg !3120 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3122, metadata !DIExpression()), !dbg !3123
  call void @llvm.dbg.value(metadata i8* %0, metadata !3089, metadata !DIExpression()) #10, !dbg !3124
  call void @llvm.dbg.value(metadata i8 58, metadata !3090, metadata !DIExpression()) #10, !dbg !3126
  call void @llvm.dbg.value(metadata i8* %0, metadata !3054, metadata !DIExpression()) #10, !dbg !3127
  call void @llvm.dbg.value(metadata i64 -1, metadata !3055, metadata !DIExpression()) #10, !dbg !3129
  call void @llvm.dbg.value(metadata i8 58, metadata !3056, metadata !DIExpression()) #10, !dbg !3130
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3131
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #10, !dbg !3131
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !3132, !tbaa.struct !3063
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3057, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3133
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1719, metadata !DIExpression()) #10, !dbg !3134
  call void @llvm.dbg.value(metadata i8 58, metadata !1720, metadata !DIExpression()) #10, !dbg !3136
  call void @llvm.dbg.value(metadata i32 1, metadata !1721, metadata !DIExpression()) #10, !dbg !3137
  call void @llvm.dbg.value(metadata i8 58, metadata !1722, metadata !DIExpression()) #10, !dbg !3138
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3139
  call void @llvm.dbg.value(metadata i32* %4, metadata !1723, metadata !DIExpression()) #10, !dbg !3140
  call void @llvm.dbg.value(metadata i32 26, metadata !1725, metadata !DIExpression()) #10, !dbg !3141
  %5 = load i32, i32* %4, align 4, !dbg !3142, !tbaa !763
  %6 = or i32 %5, 67108864, !dbg !3143
  store i32 %6, i32* %4, align 4, !dbg !3143, !tbaa !763
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3057, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3133
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #10, !dbg !3144
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #10, !dbg !3145
  ret i8* %7, !dbg !3146
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #7 !dbg !3147 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3149, metadata !DIExpression()), !dbg !3151
  call void @llvm.dbg.value(metadata i64 %1, metadata !3150, metadata !DIExpression()), !dbg !3152
  call void @llvm.dbg.value(metadata i8* %0, metadata !3054, metadata !DIExpression()) #10, !dbg !3153
  call void @llvm.dbg.value(metadata i64 %1, metadata !3055, metadata !DIExpression()) #10, !dbg !3155
  call void @llvm.dbg.value(metadata i8 58, metadata !3056, metadata !DIExpression()) #10, !dbg !3156
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3157
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !3157
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !3158, !tbaa.struct !3063
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3057, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3159
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1719, metadata !DIExpression()) #10, !dbg !3160
  call void @llvm.dbg.value(metadata i8 58, metadata !1720, metadata !DIExpression()) #10, !dbg !3162
  call void @llvm.dbg.value(metadata i32 1, metadata !1721, metadata !DIExpression()) #10, !dbg !3163
  call void @llvm.dbg.value(metadata i8 58, metadata !1722, metadata !DIExpression()) #10, !dbg !3164
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3165
  call void @llvm.dbg.value(metadata i32* %5, metadata !1723, metadata !DIExpression()) #10, !dbg !3166
  call void @llvm.dbg.value(metadata i32 26, metadata !1725, metadata !DIExpression()) #10, !dbg !3167
  %6 = load i32, i32* %5, align 4, !dbg !3168, !tbaa !763
  %7 = or i32 %6, 67108864, !dbg !3169
  store i32 %7, i32* %5, align 4, !dbg !3169, !tbaa !763
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3057, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3159
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #10, !dbg !3170
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !3171
  ret i8* %8, !dbg !3172
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #7 !dbg !3173 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2946, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3179
  call void @llvm.dbg.value(metadata i32 %0, metadata !3175, metadata !DIExpression()), !dbg !3181
  call void @llvm.dbg.value(metadata i32 %1, metadata !3176, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata i8* %2, metadata !3177, metadata !DIExpression()), !dbg !3183
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3184
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !3184
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3185
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3185
  call void @llvm.dbg.value(metadata i32 %1, metadata !2941, metadata !DIExpression()) #10, !dbg !3186
  call void @llvm.dbg.value(metadata i32 0, metadata !2946, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3179
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 %7, i8 0, i64 52, i1 false), !dbg !3179, !alias.scope !3187
  %8 = icmp eq i32 %1, 10, !dbg !3190
  br i1 %8, label %9, label %10, !dbg !3191

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !3192, !noalias !3187
  unreachable, !dbg !3192

; <label>:10:                                     ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2946, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3179
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3185
  store i32 %1, i32* %11, align 8, !dbg !3185
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3185
  %13 = bitcast i32* %12 to i8*, !dbg !3185
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %13, i8* nonnull align 4 %7, i64 52, i1 false), !dbg !3185
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3185
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3178, metadata !DIExpression(DW_OP_deref)), !dbg !3193
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1719, metadata !DIExpression()), !dbg !3194
  call void @llvm.dbg.value(metadata i8 58, metadata !1720, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i32 1, metadata !1721, metadata !DIExpression()), !dbg !3197
  call void @llvm.dbg.value(metadata i8 58, metadata !1722, metadata !DIExpression()), !dbg !3198
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3199
  call void @llvm.dbg.value(metadata i32* %14, metadata !1723, metadata !DIExpression()), !dbg !3200
  call void @llvm.dbg.value(metadata i32 26, metadata !1725, metadata !DIExpression()), !dbg !3201
  %15 = load i32, i32* %14, align 4, !dbg !3202, !tbaa !763
  %16 = or i32 %15, 67108864, !dbg !3203
  store i32 %16, i32* %14, align 4, !dbg !3203, !tbaa !763
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3178, metadata !DIExpression(DW_OP_deref)), !dbg !3193
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3204
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !3205
  ret i8* %17, !dbg !3206
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #7 !dbg !3207 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3211, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8* %1, metadata !3212, metadata !DIExpression()), !dbg !3216
  call void @llvm.dbg.value(metadata i8* %2, metadata !3213, metadata !DIExpression()), !dbg !3217
  call void @llvm.dbg.value(metadata i8* %3, metadata !3214, metadata !DIExpression()), !dbg !3218
  call void @llvm.dbg.value(metadata i32 %0, metadata !3219, metadata !DIExpression()) #10, !dbg !3229
  call void @llvm.dbg.value(metadata i8* %1, metadata !3224, metadata !DIExpression()) #10, !dbg !3231
  call void @llvm.dbg.value(metadata i8* %2, metadata !3225, metadata !DIExpression()) #10, !dbg !3232
  call void @llvm.dbg.value(metadata i8* %3, metadata !3226, metadata !DIExpression()) #10, !dbg !3233
  call void @llvm.dbg.value(metadata i64 -1, metadata !3227, metadata !DIExpression()) #10, !dbg !3234
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3235
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !3235
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !3236, !tbaa.struct !3063
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3228, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3237
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1767, metadata !DIExpression()) #10, !dbg !3238
  call void @llvm.dbg.value(metadata i8* %1, metadata !1768, metadata !DIExpression()) #10, !dbg !3240
  call void @llvm.dbg.value(metadata i8* %2, metadata !1769, metadata !DIExpression()) #10, !dbg !3241
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1767, metadata !DIExpression()) #10, !dbg !3238
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3242
  store i32 10, i32* %7, align 8, !dbg !3243, !tbaa !1700
  %8 = icmp ne i8* %1, null, !dbg !3244
  %9 = icmp ne i8* %2, null, !dbg !3245
  %10 = and i1 %8, %9, !dbg !3246
  br i1 %10, label %12, label %11, !dbg !3246

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3247
  unreachable, !dbg !3247

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3248
  store i8* %1, i8** %13, align 8, !dbg !3249, !tbaa !1785
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3250
  store i8* %2, i8** %14, align 8, !dbg !3251, !tbaa !1788
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3228, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3237
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #10, !dbg !3252
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !3253
  ret i8* %15, !dbg !3254
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !3220 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3219, metadata !DIExpression()), !dbg !3255
  call void @llvm.dbg.value(metadata i8* %1, metadata !3224, metadata !DIExpression()), !dbg !3256
  call void @llvm.dbg.value(metadata i8* %2, metadata !3225, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata i8* %3, metadata !3226, metadata !DIExpression()), !dbg !3258
  call void @llvm.dbg.value(metadata i64 %4, metadata !3227, metadata !DIExpression()), !dbg !3259
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3260
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !3260
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %7, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3261, !tbaa.struct !3063
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3228, metadata !DIExpression(DW_OP_deref)), !dbg !3262
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1767, metadata !DIExpression()) #10, !dbg !3263
  call void @llvm.dbg.value(metadata i8* %1, metadata !1768, metadata !DIExpression()) #10, !dbg !3265
  call void @llvm.dbg.value(metadata i8* %2, metadata !1769, metadata !DIExpression()) #10, !dbg !3266
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1767, metadata !DIExpression()) #10, !dbg !3263
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3267
  store i32 10, i32* %8, align 8, !dbg !3268, !tbaa !1700
  %9 = icmp ne i8* %1, null, !dbg !3269
  %10 = icmp ne i8* %2, null, !dbg !3270
  %11 = and i1 %9, %10, !dbg !3271
  br i1 %11, label %13, label %12, !dbg !3271

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !3272
  unreachable, !dbg !3272

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3273
  store i8* %1, i8** %14, align 8, !dbg !3274, !tbaa !1785
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3275
  store i8* %2, i8** %15, align 8, !dbg !3276, !tbaa !1788
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3228, metadata !DIExpression(DW_OP_deref)), !dbg !3262
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3277
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !3278
  ret i8* %16, !dbg !3279
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #7 !dbg !3280 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3284, metadata !DIExpression()), !dbg !3287
  call void @llvm.dbg.value(metadata i8* %1, metadata !3285, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata i8* %2, metadata !3286, metadata !DIExpression()), !dbg !3289
  call void @llvm.dbg.value(metadata i32 0, metadata !3211, metadata !DIExpression()) #10, !dbg !3290
  call void @llvm.dbg.value(metadata i8* %0, metadata !3212, metadata !DIExpression()) #10, !dbg !3292
  call void @llvm.dbg.value(metadata i8* %1, metadata !3213, metadata !DIExpression()) #10, !dbg !3293
  call void @llvm.dbg.value(metadata i8* %2, metadata !3214, metadata !DIExpression()) #10, !dbg !3294
  call void @llvm.dbg.value(metadata i32 0, metadata !3219, metadata !DIExpression()) #10, !dbg !3295
  call void @llvm.dbg.value(metadata i8* %0, metadata !3224, metadata !DIExpression()) #10, !dbg !3297
  call void @llvm.dbg.value(metadata i8* %1, metadata !3225, metadata !DIExpression()) #10, !dbg !3298
  call void @llvm.dbg.value(metadata i8* %2, metadata !3226, metadata !DIExpression()) #10, !dbg !3299
  call void @llvm.dbg.value(metadata i64 -1, metadata !3227, metadata !DIExpression()) #10, !dbg !3300
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3301
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !3301
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !3302, !tbaa.struct !3063
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3228, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3303
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1767, metadata !DIExpression()) #10, !dbg !3304
  call void @llvm.dbg.value(metadata i8* %0, metadata !1768, metadata !DIExpression()) #10, !dbg !3306
  call void @llvm.dbg.value(metadata i8* %1, metadata !1769, metadata !DIExpression()) #10, !dbg !3307
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1767, metadata !DIExpression()) #10, !dbg !3304
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3308
  store i32 10, i32* %6, align 8, !dbg !3309, !tbaa !1700
  %7 = icmp ne i8* %0, null, !dbg !3310
  %8 = icmp ne i8* %1, null, !dbg !3311
  %9 = and i1 %7, %8, !dbg !3312
  br i1 %9, label %11, label %10, !dbg !3312

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !3313
  unreachable, !dbg !3313

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3314
  store i8* %0, i8** %12, align 8, !dbg !3315, !tbaa !1785
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3316
  store i8* %1, i8** %13, align 8, !dbg !3317, !tbaa !1788
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3228, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3303
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !3318
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !3319
  ret i8* %14, !dbg !3320
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !3321 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3325, metadata !DIExpression()), !dbg !3329
  call void @llvm.dbg.value(metadata i8* %1, metadata !3326, metadata !DIExpression()), !dbg !3330
  call void @llvm.dbg.value(metadata i8* %2, metadata !3327, metadata !DIExpression()), !dbg !3331
  call void @llvm.dbg.value(metadata i64 %3, metadata !3328, metadata !DIExpression()), !dbg !3332
  call void @llvm.dbg.value(metadata i32 0, metadata !3219, metadata !DIExpression()) #10, !dbg !3333
  call void @llvm.dbg.value(metadata i8* %0, metadata !3224, metadata !DIExpression()) #10, !dbg !3335
  call void @llvm.dbg.value(metadata i8* %1, metadata !3225, metadata !DIExpression()) #10, !dbg !3336
  call void @llvm.dbg.value(metadata i8* %2, metadata !3226, metadata !DIExpression()) #10, !dbg !3337
  call void @llvm.dbg.value(metadata i64 %3, metadata !3227, metadata !DIExpression()) #10, !dbg !3338
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3339
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !3339
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !3340, !tbaa.struct !3063
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3228, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3341
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1767, metadata !DIExpression()) #10, !dbg !3342
  call void @llvm.dbg.value(metadata i8* %0, metadata !1768, metadata !DIExpression()) #10, !dbg !3344
  call void @llvm.dbg.value(metadata i8* %1, metadata !1769, metadata !DIExpression()) #10, !dbg !3345
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1767, metadata !DIExpression()) #10, !dbg !3342
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3346
  store i32 10, i32* %7, align 8, !dbg !3347, !tbaa !1700
  %8 = icmp ne i8* %0, null, !dbg !3348
  %9 = icmp ne i8* %1, null, !dbg !3349
  %10 = and i1 %8, %9, !dbg !3350
  br i1 %10, label %12, label %11, !dbg !3350

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3351
  unreachable, !dbg !3351

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3352
  store i8* %0, i8** %13, align 8, !dbg !3353, !tbaa !1785
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3354
  store i8* %1, i8** %14, align 8, !dbg !3355, !tbaa !1788
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3228, metadata !DIExpression(DW_OP_deref)) #10, !dbg !3341
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #10, !dbg !3356
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !3357
  ret i8* %15, !dbg !3358
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !3359 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3363, metadata !DIExpression()), !dbg !3366
  call void @llvm.dbg.value(metadata i8* %1, metadata !3364, metadata !DIExpression()), !dbg !3367
  call void @llvm.dbg.value(metadata i64 %2, metadata !3365, metadata !DIExpression()), !dbg !3368
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3369
  ret i8* %4, !dbg !3370
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8*, i64) local_unnamed_addr #7 !dbg !3371 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3375, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.value(metadata i64 %1, metadata !3376, metadata !DIExpression()), !dbg !3378
  call void @llvm.dbg.value(metadata i32 0, metadata !3363, metadata !DIExpression()) #10, !dbg !3379
  call void @llvm.dbg.value(metadata i8* %0, metadata !3364, metadata !DIExpression()) #10, !dbg !3381
  call void @llvm.dbg.value(metadata i64 %1, metadata !3365, metadata !DIExpression()) #10, !dbg !3382
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3383
  ret i8* %3, !dbg !3384
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32, i8*) local_unnamed_addr #7 !dbg !3385 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3389, metadata !DIExpression()), !dbg !3391
  call void @llvm.dbg.value(metadata i8* %1, metadata !3390, metadata !DIExpression()), !dbg !3392
  call void @llvm.dbg.value(metadata i32 %0, metadata !3363, metadata !DIExpression()) #10, !dbg !3393
  call void @llvm.dbg.value(metadata i8* %1, metadata !3364, metadata !DIExpression()) #10, !dbg !3395
  call void @llvm.dbg.value(metadata i64 -1, metadata !3365, metadata !DIExpression()) #10, !dbg !3396
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3397
  ret i8* %3, !dbg !3398
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8*) local_unnamed_addr #7 !dbg !3399 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3403, metadata !DIExpression()), !dbg !3404
  call void @llvm.dbg.value(metadata i32 0, metadata !3389, metadata !DIExpression()) #10, !dbg !3405
  call void @llvm.dbg.value(metadata i8* %0, metadata !3390, metadata !DIExpression()) #10, !dbg !3407
  call void @llvm.dbg.value(metadata i32 0, metadata !3363, metadata !DIExpression()) #10, !dbg !3408
  call void @llvm.dbg.value(metadata i8* %0, metadata !3364, metadata !DIExpression()) #10, !dbg !3410
  call void @llvm.dbg.value(metadata i64 -1, metadata !3365, metadata !DIExpression()) #10, !dbg !3411
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !3412
  ret i8* %2, !dbg !3413
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @init_tokenbuffer(%struct.tokenbuffer* nocapture) local_unnamed_addr #7 !dbg !3414 {
  call void @llvm.dbg.value(metadata %struct.tokenbuffer* %0, metadata !3424, metadata !DIExpression()), !dbg !3425
  %2 = bitcast %struct.tokenbuffer* %0 to i8*, !dbg !3426
  call void @llvm.memset.p0i8.i64(i8* align 8 %2, i8 0, i64 16, i1 false), !dbg !3427
  ret void, !dbg !3426
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @readtoken(%struct._IO_FILE*, i8* nocapture readonly, i64, %struct.tokenbuffer* nocapture) local_unnamed_addr #7 !dbg !3428 {
  %5 = alloca [4 x i64], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3466, metadata !DIExpression()), !dbg !3481
  call void @llvm.dbg.value(metadata i8* %1, metadata !3467, metadata !DIExpression()), !dbg !3482
  call void @llvm.dbg.value(metadata i64 %2, metadata !3468, metadata !DIExpression()), !dbg !3483
  call void @llvm.dbg.value(metadata %struct.tokenbuffer* %3, metadata !3469, metadata !DIExpression()), !dbg !3484
  %6 = bitcast [4 x i64]* %5 to i8*, !dbg !3485
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #10, !dbg !3485
  call void @llvm.dbg.declare(metadata [4 x i64]* %5, metadata !3474, metadata !DIExpression()), !dbg !3486
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %6, i8 0, i64 32, i1 false), !dbg !3487
  call void @llvm.dbg.value(metadata i64 0, metadata !3472, metadata !DIExpression()), !dbg !3488
  %7 = icmp eq i64 %2, 0, !dbg !3489
  br i1 %7, label %51, label %8, !dbg !3490

; <label>:8:                                      ; preds = %4
  %9 = and i64 %2, 1, !dbg !3491
  %10 = icmp eq i64 %2, 1, !dbg !3491
  br i1 %10, label %38, label %11, !dbg !3491

; <label>:11:                                     ; preds = %8
  %12 = sub i64 %2, %9, !dbg !3491
  br label %13, !dbg !3491

; <label>:13:                                     ; preds = %13, %11
  %14 = phi i64 [ 0, %11 ], [ %35, %13 ]
  %15 = phi i64 [ %12, %11 ], [ %36, %13 ]
  call void @llvm.dbg.value(metadata i64 %14, metadata !3472, metadata !DIExpression()), !dbg !3488
  %16 = getelementptr inbounds i8, i8* %1, i64 %14, !dbg !3491
  %17 = load i8, i8* %16, align 1, !dbg !3491, !tbaa !1921
  call void @llvm.dbg.value(metadata i8 %17, metadata !3477, metadata !DIExpression()), !dbg !3492
  %18 = zext i8 %17 to i64, !dbg !3493
  call void @llvm.dbg.value(metadata i64 %18, metadata !3494, metadata !DIExpression()), !dbg !3502
  call void @llvm.dbg.value(metadata [4 x i64]* %5, metadata !3500, metadata !DIExpression()), !dbg !3504
  call void @llvm.dbg.value(metadata i64 1, metadata !3501, metadata !DIExpression()), !dbg !3505
  %19 = and i64 %18, 63, !dbg !3506
  %20 = shl i64 1, %19, !dbg !3507
  %21 = lshr i64 %18, 6, !dbg !3508
  %22 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 %21, !dbg !3509
  %23 = load i64, i64* %22, align 8, !dbg !3510, !tbaa !1081
  %24 = or i64 %20, %23, !dbg !3510
  store i64 %24, i64* %22, align 8, !dbg !3510, !tbaa !1081
  %25 = or i64 %14, 1, !dbg !3511
  call void @llvm.dbg.value(metadata i64 %25, metadata !3472, metadata !DIExpression()), !dbg !3488
  call void @llvm.dbg.value(metadata i64 %25, metadata !3472, metadata !DIExpression()), !dbg !3488
  %26 = getelementptr inbounds i8, i8* %1, i64 %25, !dbg !3491
  %27 = load i8, i8* %26, align 1, !dbg !3491, !tbaa !1921
  call void @llvm.dbg.value(metadata i8 %27, metadata !3477, metadata !DIExpression()), !dbg !3492
  %28 = zext i8 %27 to i64, !dbg !3493
  call void @llvm.dbg.value(metadata i64 %28, metadata !3494, metadata !DIExpression()), !dbg !3502
  call void @llvm.dbg.value(metadata [4 x i64]* %5, metadata !3500, metadata !DIExpression()), !dbg !3504
  call void @llvm.dbg.value(metadata i64 1, metadata !3501, metadata !DIExpression()), !dbg !3505
  %29 = and i64 %28, 63, !dbg !3506
  %30 = shl i64 1, %29, !dbg !3507
  %31 = lshr i64 %28, 6, !dbg !3508
  %32 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 %31, !dbg !3509
  %33 = load i64, i64* %32, align 8, !dbg !3510, !tbaa !1081
  %34 = or i64 %30, %33, !dbg !3510
  store i64 %34, i64* %32, align 8, !dbg !3510, !tbaa !1081
  %35 = add i64 %14, 2, !dbg !3511
  call void @llvm.dbg.value(metadata i64 %35, metadata !3472, metadata !DIExpression()), !dbg !3488
  %36 = add i64 %15, -2, !dbg !3490
  %37 = icmp eq i64 %36, 0, !dbg !3490
  br i1 %37, label %38, label %13, !dbg !3490, !llvm.loop !3512

; <label>:38:                                     ; preds = %13, %8
  %39 = phi i64 [ 0, %8 ], [ %35, %13 ]
  %40 = icmp eq i64 %9, 0, !dbg !3490
  br i1 %40, label %51, label %41, !dbg !3490

; <label>:41:                                     ; preds = %38
  call void @llvm.dbg.value(metadata i64 %39, metadata !3472, metadata !DIExpression()), !dbg !3488
  %42 = getelementptr inbounds i8, i8* %1, i64 %39, !dbg !3491
  %43 = load i8, i8* %42, align 1, !dbg !3491, !tbaa !1921
  call void @llvm.dbg.value(metadata i8 %43, metadata !3477, metadata !DIExpression()), !dbg !3492
  %44 = zext i8 %43 to i64, !dbg !3493
  call void @llvm.dbg.value(metadata i64 %44, metadata !3494, metadata !DIExpression()), !dbg !3502
  call void @llvm.dbg.value(metadata [4 x i64]* %5, metadata !3500, metadata !DIExpression()), !dbg !3504
  call void @llvm.dbg.value(metadata i64 1, metadata !3501, metadata !DIExpression()), !dbg !3505
  %45 = and i64 %44, 63, !dbg !3506
  %46 = shl i64 1, %45, !dbg !3507
  %47 = lshr i64 %44, 6, !dbg !3508
  %48 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 %47, !dbg !3509
  %49 = load i64, i64* %48, align 8, !dbg !3510, !tbaa !1081
  %50 = or i64 %46, %49, !dbg !3510
  store i64 %50, i64* %48, align 8, !dbg !3510, !tbaa !1081
  call void @llvm.dbg.value(metadata i64 %39, metadata !3472, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3488
  br label %51, !dbg !3514

; <label>:51:                                     ; preds = %41, %38, %4
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3520, metadata !DIExpression()) #10, !dbg !3523
  %52 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3514
  %53 = load i8*, i8** %52, align 8, !dbg !3514, !tbaa !3524
  %54 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3514
  %55 = load i8*, i8** %54, align 8, !dbg !3514, !tbaa !3526
  %56 = icmp ult i8* %53, %55, !dbg !3514
  br i1 %56, label %57, label %61, !dbg !3514, !prof !3527

; <label>:57:                                     ; preds = %51
  %58 = getelementptr inbounds i8, i8* %53, i64 1, !dbg !3514
  store i8* %58, i8** %52, align 8, !dbg !3514, !tbaa !3524
  %59 = load i8, i8* %53, align 1, !dbg !3514, !tbaa !1921
  %60 = zext i8 %59 to i32, !dbg !3514
  call void @llvm.dbg.value(metadata i32 %62, metadata !3471, metadata !DIExpression()), !dbg !3528
  br label %64, !dbg !3529

; <label>:61:                                     ; preds = %51
  %62 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %0) #10, !dbg !3514
  call void @llvm.dbg.value(metadata i32 %62, metadata !3471, metadata !DIExpression()), !dbg !3528
  %63 = icmp sgt i32 %62, -1, !dbg !3531
  br i1 %63, label %64, label %150, !dbg !3529

; <label>:64:                                     ; preds = %57, %61
  %65 = phi i32 [ %62, %61 ], [ %60, %57 ]
  br label %66, !dbg !3532

; <label>:66:                                     ; preds = %64, %86
  %67 = phi i32 [ %87, %86 ], [ %65, %64 ]
  call void @llvm.dbg.value(metadata i32 %67, metadata !3471, metadata !DIExpression()), !dbg !3528
  %68 = sext i32 %67 to i64, !dbg !3532
  call void @llvm.dbg.value(metadata i64 %68, metadata !3533, metadata !DIExpression()), !dbg !3541
  call void @llvm.dbg.value(metadata [4 x i64]* %5, metadata !3540, metadata !DIExpression()), !dbg !3543
  %69 = lshr i64 %68, 6, !dbg !3544
  %70 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 %69, !dbg !3545
  %71 = load i64, i64* %70, align 8, !dbg !3545, !tbaa !1081
  %72 = and i64 %68, 63, !dbg !3546
  %73 = shl i64 1, %72, !dbg !3545
  %74 = and i64 %71, %73, !dbg !3545
  %75 = icmp eq i64 %74, 0, !dbg !3545
  br i1 %75, label %89, label %76, !dbg !3547

; <label>:76:                                     ; preds = %66
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3520, metadata !DIExpression()) #10, !dbg !3548
  %77 = load i8*, i8** %52, align 8, !dbg !3550, !tbaa !3524
  %78 = load i8*, i8** %54, align 8, !dbg !3550, !tbaa !3526
  %79 = icmp ult i8* %77, %78, !dbg !3550
  br i1 %79, label %82, label %80, !dbg !3550, !prof !3527

; <label>:80:                                     ; preds = %76
  %81 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %0) #10, !dbg !3550
  br label %86, !dbg !3550

; <label>:82:                                     ; preds = %76
  %83 = getelementptr inbounds i8, i8* %77, i64 1, !dbg !3550
  store i8* %83, i8** %52, align 8, !dbg !3550, !tbaa !3524
  %84 = load i8, i8* %77, align 1, !dbg !3550, !tbaa !1921
  %85 = zext i8 %84 to i32, !dbg !3550
  br label %86, !dbg !3550

; <label>:86:                                     ; preds = %80, %82
  %87 = phi i32 [ %81, %80 ], [ %85, %82 ], !dbg !3550
  call void @llvm.dbg.value(metadata i32 %87, metadata !3471, metadata !DIExpression()), !dbg !3528
  %88 = icmp sgt i32 %87, -1, !dbg !3531
  br i1 %88, label %66, label %150, !dbg !3529, !llvm.loop !3551

; <label>:89:                                     ; preds = %66
  call void @llvm.dbg.value(metadata i32 %67, metadata !3471, metadata !DIExpression()), !dbg !3528
  call void @llvm.dbg.value(metadata i32 %67, metadata !3471, metadata !DIExpression()), !dbg !3528
  call void @llvm.dbg.value(metadata i32 %67, metadata !3471, metadata !DIExpression()), !dbg !3528
  call void @llvm.dbg.value(metadata i32 %67, metadata !3471, metadata !DIExpression()), !dbg !3528
  call void @llvm.dbg.value(metadata i32 %67, metadata !3471, metadata !DIExpression()), !dbg !3528
  call void @llvm.dbg.value(metadata i32 %67, metadata !3471, metadata !DIExpression()), !dbg !3528
  %90 = getelementptr inbounds %struct.tokenbuffer, %struct.tokenbuffer* %3, i64 0, i32 1, !dbg !3553
  %91 = getelementptr inbounds %struct.tokenbuffer, %struct.tokenbuffer* %3, i64 0, i32 0, !dbg !3554
  call void @llvm.dbg.value(metadata i64 0, metadata !3472, metadata !DIExpression()), !dbg !3488
  call void @llvm.dbg.value(metadata i32 %67, metadata !3471, metadata !DIExpression()), !dbg !3528
  %92 = load i64, i64* %91, align 8, !dbg !3554, !tbaa !3555
  call void @llvm.dbg.value(metadata i64 %92, metadata !3473, metadata !DIExpression()), !dbg !3556
  %93 = load i8*, i8** %90, align 8, !dbg !3553, !tbaa !841
  call void @llvm.dbg.value(metadata i8* %93, metadata !3470, metadata !DIExpression()), !dbg !3557
  call void @llvm.dbg.value(metadata i8* %93, metadata !3470, metadata !DIExpression()), !dbg !3557
  br label %94, !dbg !3558

; <label>:94:                                     ; preds = %89, %143
  %95 = phi i1 [ %145, %143 ], [ false, %89 ]
  %96 = phi i64 [ %132, %143 ], [ 0, %89 ]
  %97 = phi i32 [ %144, %143 ], [ %67, %89 ]
  %98 = phi i8* [ %120, %143 ], [ %93, %89 ]
  %99 = phi i64 [ %119, %143 ], [ %92, %89 ]
  call void @llvm.dbg.value(metadata i64 %96, metadata !3472, metadata !DIExpression()), !dbg !3488
  call void @llvm.dbg.value(metadata i32 %97, metadata !3471, metadata !DIExpression()), !dbg !3528
  call void @llvm.dbg.value(metadata i8* %98, metadata !3470, metadata !DIExpression()), !dbg !3557
  call void @llvm.dbg.value(metadata i64 %99, metadata !3473, metadata !DIExpression()), !dbg !3556
  %100 = icmp eq i64 %96, %99, !dbg !3558
  br i1 %100, label %101, label %118, !dbg !3563

; <label>:101:                                    ; preds = %94
  call void @llvm.dbg.value(metadata i8* %98, metadata !217, metadata !DIExpression()) #10, !dbg !3564
  call void @llvm.dbg.value(metadata i64 1, metadata !219, metadata !DIExpression()) #10, !dbg !3566
  call void @llvm.dbg.value(metadata i64 undef, metadata !220, metadata !DIExpression()) #10, !dbg !3567
  %102 = icmp eq i8* %98, null, !dbg !3568
  br i1 %102, label %103, label %108, !dbg !3570

; <label>:103:                                    ; preds = %101
  %104 = icmp eq i64 %96, 0, !dbg !3571
  br i1 %104, label %115, label %105, !dbg !3574

; <label>:105:                                    ; preds = %103
  call void @llvm.dbg.value(metadata i64 %99, metadata !220, metadata !DIExpression()) #10, !dbg !3567
  %106 = icmp slt i64 %96, 0, !dbg !3575
  br i1 %106, label %107, label %115, !dbg !3577

; <label>:107:                                    ; preds = %105
  tail call void @xalloc_die() #15, !dbg !3578
  unreachable, !dbg !3578

; <label>:108:                                    ; preds = %101
  %109 = icmp ult i64 %96, 6148914691236517204, !dbg !3579
  br i1 %109, label %111, label %110, !dbg !3582

; <label>:110:                                    ; preds = %108
  tail call void @xalloc_die() #15, !dbg !3583
  unreachable, !dbg !3583

; <label>:111:                                    ; preds = %108
  %112 = lshr i64 %96, 1, !dbg !3584
  %113 = add i64 %96, 1, !dbg !3585
  %114 = add i64 %113, %112, !dbg !3586
  call void @llvm.dbg.value(metadata i64 %114, metadata !220, metadata !DIExpression()) #10, !dbg !3567
  br label %115

; <label>:115:                                    ; preds = %103, %105, %111
  %116 = phi i64 [ %114, %111 ], [ %96, %105 ], [ 128, %103 ], !dbg !3587
  call void @llvm.dbg.value(metadata i64 %116, metadata !220, metadata !DIExpression()) #10, !dbg !3567
  %117 = tail call i8* @xrealloc(i8* %98, i64 %116) #10, !dbg !3588
  call void @llvm.dbg.value(metadata i8* %117, metadata !3470, metadata !DIExpression()), !dbg !3557
  br label %118, !dbg !3589

; <label>:118:                                    ; preds = %115, %94
  %119 = phi i64 [ %116, %115 ], [ %99, %94 ], !dbg !3590
  %120 = phi i8* [ %117, %115 ], [ %98, %94 ], !dbg !3590
  br i1 %95, label %148, label %121, !dbg !3591

; <label>:121:                                    ; preds = %118
  %122 = sext i32 %97 to i64, !dbg !3592
  call void @llvm.dbg.value(metadata i64 %122, metadata !3533, metadata !DIExpression()), !dbg !3594
  call void @llvm.dbg.value(metadata [4 x i64]* %5, metadata !3540, metadata !DIExpression()), !dbg !3596
  %123 = lshr i64 %122, 6, !dbg !3597
  %124 = getelementptr inbounds [4 x i64], [4 x i64]* %5, i64 0, i64 %123, !dbg !3598
  %125 = load i64, i64* %124, align 8, !dbg !3598, !tbaa !1081
  %126 = and i64 %122, 63, !dbg !3599
  %127 = shl i64 1, %126, !dbg !3598
  %128 = and i64 %125, %127, !dbg !3598
  %129 = icmp eq i64 %128, 0, !dbg !3598
  br i1 %129, label %130, label %148, !dbg !3600

; <label>:130:                                    ; preds = %121
  %131 = trunc i32 %97 to i8, !dbg !3601
  %132 = add i64 %96, 1, !dbg !3602
  %133 = getelementptr inbounds i8, i8* %120, i64 %96, !dbg !3603
  store i8 %131, i8* %133, align 1, !dbg !3604, !tbaa !1921
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3520, metadata !DIExpression()) #10, !dbg !3605
  %134 = load i8*, i8** %52, align 8, !dbg !3607, !tbaa !3524
  %135 = load i8*, i8** %54, align 8, !dbg !3607, !tbaa !3526
  %136 = icmp ult i8* %134, %135, !dbg !3607
  br i1 %136, label %139, label %137, !dbg !3607, !prof !3527

; <label>:137:                                    ; preds = %130
  %138 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %0) #10, !dbg !3607
  br label %143, !dbg !3607

; <label>:139:                                    ; preds = %130
  %140 = getelementptr inbounds i8, i8* %134, i64 1, !dbg !3607
  store i8* %140, i8** %52, align 8, !dbg !3607, !tbaa !3524
  %141 = load i8, i8* %134, align 1, !dbg !3607, !tbaa !1921
  %142 = zext i8 %141 to i32, !dbg !3607
  br label %143, !dbg !3607

; <label>:143:                                    ; preds = %137, %139
  %144 = phi i32 [ %138, %137 ], [ %142, %139 ], !dbg !3607
  call void @llvm.dbg.value(metadata i64 %132, metadata !3472, metadata !DIExpression()), !dbg !3488
  call void @llvm.dbg.value(metadata i32 %144, metadata !3471, metadata !DIExpression()), !dbg !3528
  call void @llvm.dbg.value(metadata i8* %120, metadata !3470, metadata !DIExpression()), !dbg !3557
  %145 = icmp slt i32 %144, 0, !dbg !3608
  %146 = icmp eq i64 %132, 0, !dbg !3610
  %147 = and i1 %145, %146, !dbg !3611
  br i1 %147, label %150, label %94, !dbg !3611, !llvm.loop !3612

; <label>:148:                                    ; preds = %121, %118
  call void @llvm.dbg.value(metadata i64 %96, metadata !3472, metadata !DIExpression()), !dbg !3488
  call void @llvm.dbg.value(metadata i64 %96, metadata !3472, metadata !DIExpression()), !dbg !3488
  call void @llvm.dbg.value(metadata i64 %96, metadata !3472, metadata !DIExpression()), !dbg !3488
  call void @llvm.dbg.value(metadata i64 %96, metadata !3472, metadata !DIExpression()), !dbg !3488
  %149 = getelementptr inbounds i8, i8* %120, i64 %96, !dbg !3615
  store i8 0, i8* %149, align 1, !dbg !3615, !tbaa !1921
  store i8* %120, i8** %90, align 8, !dbg !3618, !tbaa !841
  call void @llvm.dbg.value(metadata i64 %119, metadata !3473, metadata !DIExpression()), !dbg !3556
  store i64 %119, i64* %91, align 8, !dbg !3619, !tbaa !3555
  br label %150, !dbg !3620

; <label>:150:                                    ; preds = %86, %143, %61, %148
  %151 = phi i64 [ %96, %148 ], [ -1, %61 ], [ -1, %143 ], [ -1, %86 ], !dbg !3590
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #10, !dbg !3621
  ret i64 %151, !dbg !3621
}

declare i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @readtokens(%struct._IO_FILE*, i64, i8* nocapture readonly, i64, i8*** nocapture, i64**) local_unnamed_addr #7 !dbg !3622 {
  %7 = alloca %struct.tokenbuffer, align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3628, metadata !DIExpression()), !dbg !3645
  call void @llvm.dbg.value(metadata i64 %1, metadata !3629, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata i8* %2, metadata !3630, metadata !DIExpression()), !dbg !3647
  call void @llvm.dbg.value(metadata i64 %3, metadata !3631, metadata !DIExpression()), !dbg !3648
  call void @llvm.dbg.value(metadata i8*** %4, metadata !3632, metadata !DIExpression()), !dbg !3649
  call void @llvm.dbg.value(metadata i64** %5, metadata !3633, metadata !DIExpression()), !dbg !3650
  %8 = bitcast %struct.tokenbuffer* %7 to i8*, !dbg !3651
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %8) #10, !dbg !3651
  call void @llvm.dbg.value(metadata %struct.tokenbuffer* %7, metadata !3635, metadata !DIExpression()), !dbg !3652
  %9 = icmp eq i64 %1, 0, !dbg !3653
  %10 = add i64 %1, 1, !dbg !3655
  call void @llvm.dbg.value(metadata i64 %10, metadata !3629, metadata !DIExpression()), !dbg !3646
  %11 = select i1 %9, i64 64, i64 %10, !dbg !3656
  call void @llvm.dbg.value(metadata i64 %11, metadata !3629, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata i64 %11, metadata !3638, metadata !DIExpression()), !dbg !3657
  call void @llvm.dbg.value(metadata i64 %11, metadata !3658, metadata !DIExpression()) #10, !dbg !3664
  call void @llvm.dbg.value(metadata i64 8, metadata !3663, metadata !DIExpression()) #10, !dbg !3666
  %12 = icmp ugt i64 %11, 1152921504606846975, !dbg !3667
  br i1 %12, label %13, label %14, !dbg !3669

; <label>:13:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !3670
  unreachable, !dbg !3670

; <label>:14:                                     ; preds = %6
  %15 = shl i64 %11, 3, !dbg !3671
  %16 = tail call noalias i8* @xmalloc(i64 %15) #10, !dbg !3672
  %17 = bitcast i8* %16 to i8**, !dbg !3673
  call void @llvm.dbg.value(metadata i8** %17, metadata !3636, metadata !DIExpression()), !dbg !3674
  call void @llvm.dbg.value(metadata i64 %11, metadata !3638, metadata !DIExpression()), !dbg !3657
  call void @llvm.dbg.value(metadata i64 %11, metadata !3658, metadata !DIExpression()) #10, !dbg !3675
  call void @llvm.dbg.value(metadata i64 8, metadata !3663, metadata !DIExpression()) #10, !dbg !3677
  %18 = tail call noalias i8* @xmalloc(i64 %15) #10, !dbg !3678
  %19 = bitcast i8* %18 to i64*, !dbg !3679
  call void @llvm.dbg.value(metadata i64* %19, metadata !3637, metadata !DIExpression()), !dbg !3680
  call void @llvm.dbg.value(metadata i64 0, metadata !3639, metadata !DIExpression()), !dbg !3681
  call void @llvm.dbg.value(metadata %struct.tokenbuffer* %7, metadata !3634, metadata !DIExpression(DW_OP_deref)), !dbg !3682
  call void @llvm.dbg.value(metadata %struct.tokenbuffer* %7, metadata !3424, metadata !DIExpression()) #10, !dbg !3683
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %8, i8 0, i64 16, i1 false) #10, !dbg !3685
  %20 = getelementptr inbounds %struct.tokenbuffer, %struct.tokenbuffer* %7, i64 0, i32 1
  br label %21, !dbg !3686

; <label>:21:                                     ; preds = %73, %14
  %22 = phi i64 [ %11, %14 ], [ %62, %73 ], !dbg !3687
  %23 = phi i8* [ %18, %14 ], [ %63, %73 ], !dbg !3688
  %24 = phi i8* [ %18, %14 ], [ %64, %73 ], !dbg !3688
  %25 = phi i64* [ %19, %14 ], [ %65, %73 ], !dbg !3688
  %26 = phi i64 [ 0, %14 ], [ %78, %73 ], !dbg !3691
  %27 = phi i8* [ %16, %14 ], [ %66, %73 ], !dbg !3688
  %28 = phi i8** [ %17, %14 ], [ %67, %73 ], !dbg !3688
  call void @llvm.dbg.value(metadata i8** %28, metadata !3636, metadata !DIExpression()), !dbg !3674
  call void @llvm.dbg.value(metadata i64 %26, metadata !3639, metadata !DIExpression()), !dbg !3681
  call void @llvm.dbg.value(metadata i64* %25, metadata !3637, metadata !DIExpression()), !dbg !3680
  call void @llvm.dbg.value(metadata %struct.tokenbuffer* %7, metadata !3634, metadata !DIExpression(DW_OP_deref)), !dbg !3682
  %29 = call i64 @readtoken(%struct._IO_FILE* %0, i8* %2, i64 %3, %struct.tokenbuffer* nonnull %7), !dbg !3692
  call void @llvm.dbg.value(metadata i64 %29, metadata !3644, metadata !DIExpression()), !dbg !3693
  call void @llvm.dbg.value(metadata i64 %22, metadata !3638, metadata !DIExpression()), !dbg !3657
  %30 = icmp ult i64 %26, %22, !dbg !3694
  br i1 %30, label %61, label %31, !dbg !3695

; <label>:31:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i8* %27, metadata !217, metadata !DIExpression()) #10, !dbg !3696
  call void @llvm.dbg.value(metadata i64 8, metadata !219, metadata !DIExpression()) #10, !dbg !3698
  call void @llvm.dbg.value(metadata i64 %22, metadata !220, metadata !DIExpression()) #10, !dbg !3699
  %32 = icmp eq i8* %27, null, !dbg !3700
  br i1 %32, label %33, label %43, !dbg !3701

; <label>:33:                                     ; preds = %31
  %34 = icmp eq i64 %22, 0, !dbg !3702
  br i1 %34, label %35, label %37, !dbg !3703

; <label>:35:                                     ; preds = %33
  call void @llvm.dbg.value(metadata i64 16, metadata !220, metadata !DIExpression()) #10, !dbg !3699
  call void @llvm.dbg.value(metadata i64 16, metadata !220, metadata !DIExpression()) #10, !dbg !3699
  call void @llvm.dbg.value(metadata i64 %22, metadata !220, metadata !DIExpression()) #10, !dbg !3699
  call void @llvm.dbg.value(metadata i64 %49, metadata !220, metadata !DIExpression()) #10, !dbg !3699
  %36 = tail call i8* @xrealloc(i8* null, i64 128) #10, !dbg !3704
  call void @llvm.dbg.value(metadata i8* %51, metadata !3636, metadata !DIExpression()), !dbg !3674
  call void @llvm.dbg.value(metadata i64 %49, metadata !3638, metadata !DIExpression()), !dbg !3657
  call void @llvm.dbg.value(metadata i8* %24, metadata !3705, metadata !DIExpression()) #10, !dbg !3712
  call void @llvm.dbg.value(metadata i64 %49, metadata !3710, metadata !DIExpression()) #10, !dbg !3714
  call void @llvm.dbg.value(metadata i64 8, metadata !3711, metadata !DIExpression()) #10, !dbg !3715
  br label %54, !dbg !3716

; <label>:37:                                     ; preds = %33
  call void @llvm.dbg.value(metadata i64 %22, metadata !220, metadata !DIExpression()) #10, !dbg !3699
  %38 = icmp ugt i64 %22, 1152921504606846975, !dbg !3717
  br i1 %38, label %42, label %39, !dbg !3718

; <label>:39:                                     ; preds = %37
  call void @llvm.dbg.value(metadata i64 %49, metadata !220, metadata !DIExpression()) #10, !dbg !3699
  %40 = shl i64 %22, 3, !dbg !3719
  %41 = tail call i8* @xrealloc(i8* %27, i64 %40) #10, !dbg !3704
  call void @llvm.dbg.value(metadata i8* %51, metadata !3636, metadata !DIExpression()), !dbg !3674
  call void @llvm.dbg.value(metadata i64 %49, metadata !3638, metadata !DIExpression()), !dbg !3657
  call void @llvm.dbg.value(metadata i8* %24, metadata !3705, metadata !DIExpression()) #10, !dbg !3712
  call void @llvm.dbg.value(metadata i64 %49, metadata !3710, metadata !DIExpression()) #10, !dbg !3714
  call void @llvm.dbg.value(metadata i64 8, metadata !3711, metadata !DIExpression()) #10, !dbg !3715
  br label %54, !dbg !3716

; <label>:42:                                     ; preds = %37
  tail call void @xalloc_die() #15, !dbg !3720
  unreachable, !dbg !3720

; <label>:43:                                     ; preds = %31
  %44 = icmp ult i64 %22, 768614336404564650, !dbg !3721
  br i1 %44, label %46, label %45, !dbg !3722

; <label>:45:                                     ; preds = %43
  tail call void @xalloc_die() #15, !dbg !3723
  unreachable, !dbg !3723

; <label>:46:                                     ; preds = %43
  %47 = lshr i64 %22, 1, !dbg !3724
  %48 = add i64 %22, 1, !dbg !3725
  %49 = add i64 %48, %47, !dbg !3726
  call void @llvm.dbg.value(metadata i64 %49, metadata !220, metadata !DIExpression()) #10, !dbg !3699
  call void @llvm.dbg.value(metadata i64 %49, metadata !220, metadata !DIExpression()) #10, !dbg !3699
  %50 = shl i64 %49, 3, !dbg !3719
  %51 = tail call i8* @xrealloc(i8* nonnull %27, i64 %50) #10, !dbg !3704
  call void @llvm.dbg.value(metadata i8* %51, metadata !3636, metadata !DIExpression()), !dbg !3674
  call void @llvm.dbg.value(metadata i64 %49, metadata !3638, metadata !DIExpression()), !dbg !3657
  call void @llvm.dbg.value(metadata i8* %24, metadata !3705, metadata !DIExpression()) #10, !dbg !3712
  call void @llvm.dbg.value(metadata i64 %49, metadata !3710, metadata !DIExpression()) #10, !dbg !3714
  call void @llvm.dbg.value(metadata i64 8, metadata !3711, metadata !DIExpression()) #10, !dbg !3715
  %52 = icmp ugt i64 %49, 1152921504606846975, !dbg !3727
  br i1 %52, label %53, label %54, !dbg !3716

; <label>:53:                                     ; preds = %46
  tail call void @xalloc_die() #15, !dbg !3729
  unreachable, !dbg !3729

; <label>:54:                                     ; preds = %39, %35, %46
  %55 = phi i8* [ %36, %35 ], [ %51, %46 ], [ %41, %39 ]
  %56 = phi i64 [ 128, %35 ], [ %50, %46 ], [ %40, %39 ]
  %57 = phi i64 [ 16, %35 ], [ %49, %46 ], [ %22, %39 ]
  %58 = bitcast i8* %55 to i8**, !dbg !3730
  %59 = tail call i8* @xrealloc(i8* %24, i64 %56) #10, !dbg !3731
  %60 = bitcast i8* %59 to i64*, !dbg !3732
  call void @llvm.dbg.value(metadata i64* %60, metadata !3637, metadata !DIExpression()), !dbg !3680
  br label %61, !dbg !3733

; <label>:61:                                     ; preds = %21, %54
  %62 = phi i64 [ %22, %21 ], [ %57, %54 ], !dbg !3688
  %63 = phi i8* [ %23, %21 ], [ %59, %54 ], !dbg !3734
  %64 = phi i8* [ %24, %21 ], [ %59, %54 ], !dbg !3734
  %65 = phi i64* [ %25, %21 ], [ %60, %54 ], !dbg !3734
  %66 = phi i8* [ %27, %21 ], [ %55, %54 ], !dbg !3734
  %67 = phi i8** [ %28, %21 ], [ %58, %54 ], !dbg !3734
  call void @llvm.dbg.value(metadata i8** %67, metadata !3636, metadata !DIExpression()), !dbg !3674
  call void @llvm.dbg.value(metadata i64* %65, metadata !3637, metadata !DIExpression()), !dbg !3680
  %68 = icmp eq i64 %29, -1, !dbg !3735
  br i1 %68, label %79, label %69, !dbg !3737

; <label>:69:                                     ; preds = %61
  %70 = add i64 %29, 1, !dbg !3738
  call void @llvm.dbg.value(metadata i64 %70, metadata !3658, metadata !DIExpression()) #10, !dbg !3739
  call void @llvm.dbg.value(metadata i64 1, metadata !3663, metadata !DIExpression()) #10, !dbg !3741
  %71 = icmp slt i64 %70, 0, !dbg !3742
  br i1 %71, label %72, label %73, !dbg !3743

; <label>:72:                                     ; preds = %69
  tail call void @xalloc_die() #15, !dbg !3744
  unreachable, !dbg !3744

; <label>:73:                                     ; preds = %69
  %74 = tail call noalias i8* @xmalloc(i64 %70) #10, !dbg !3745
  call void @llvm.dbg.value(metadata i8* %74, metadata !3640, metadata !DIExpression()), !dbg !3746
  %75 = getelementptr inbounds i64, i64* %65, i64 %26, !dbg !3747
  store i64 %29, i64* %75, align 8, !dbg !3748, !tbaa !1081
  %76 = load i8*, i8** %20, align 8, !dbg !3749, !tbaa !841
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %74, i8* align 1 %76, i64 %70, i1 false), !dbg !3750
  %77 = getelementptr inbounds i8*, i8** %67, i64 %26, !dbg !3751
  store i8* %74, i8** %77, align 8, !dbg !3752, !tbaa !690
  %78 = add i64 %26, 1, !dbg !3753
  call void @llvm.dbg.value(metadata i64 %78, metadata !3639, metadata !DIExpression()), !dbg !3681
  call void @llvm.dbg.value(metadata i64 %78, metadata !3639, metadata !DIExpression()), !dbg !3681
  br label %21

; <label>:79:                                     ; preds = %61
  call void @llvm.dbg.value(metadata i64* %65, metadata !3637, metadata !DIExpression()), !dbg !3680
  call void @llvm.dbg.value(metadata i8** %67, metadata !3636, metadata !DIExpression()), !dbg !3674
  call void @llvm.dbg.value(metadata i64 %26, metadata !3639, metadata !DIExpression()), !dbg !3681
  call void @llvm.dbg.value(metadata i64* %65, metadata !3637, metadata !DIExpression()), !dbg !3680
  call void @llvm.dbg.value(metadata i8** %67, metadata !3636, metadata !DIExpression()), !dbg !3674
  call void @llvm.dbg.value(metadata i64 %26, metadata !3639, metadata !DIExpression()), !dbg !3681
  call void @llvm.dbg.value(metadata i64* %65, metadata !3637, metadata !DIExpression()), !dbg !3680
  call void @llvm.dbg.value(metadata i8** %67, metadata !3636, metadata !DIExpression()), !dbg !3674
  call void @llvm.dbg.value(metadata i64 %26, metadata !3639, metadata !DIExpression()), !dbg !3681
  call void @llvm.dbg.value(metadata i64* %65, metadata !3637, metadata !DIExpression()), !dbg !3680
  call void @llvm.dbg.value(metadata i8** %67, metadata !3636, metadata !DIExpression()), !dbg !3674
  call void @llvm.dbg.value(metadata i64 %26, metadata !3639, metadata !DIExpression()), !dbg !3681
  call void @llvm.dbg.value(metadata i64* %65, metadata !3637, metadata !DIExpression()), !dbg !3680
  call void @llvm.dbg.value(metadata i8** %67, metadata !3636, metadata !DIExpression()), !dbg !3674
  call void @llvm.dbg.value(metadata i64 %26, metadata !3639, metadata !DIExpression()), !dbg !3681
  call void @llvm.dbg.value(metadata i64* %65, metadata !3637, metadata !DIExpression()), !dbg !3680
  call void @llvm.dbg.value(metadata i8** %67, metadata !3636, metadata !DIExpression()), !dbg !3674
  call void @llvm.dbg.value(metadata i64 %26, metadata !3639, metadata !DIExpression()), !dbg !3681
  %80 = getelementptr inbounds i8*, i8** %67, i64 %26, !dbg !3754
  store i8* null, i8** %80, align 8, !dbg !3756, !tbaa !690
  %81 = getelementptr inbounds i64, i64* %65, i64 %26, !dbg !3757
  store i64 0, i64* %81, align 8, !dbg !3758, !tbaa !1081
  call void @llvm.dbg.value(metadata i64 %78, metadata !3639, metadata !DIExpression()), !dbg !3681
  %82 = load i8*, i8** %20, align 8, !dbg !3759, !tbaa !841
  tail call void @free(i8* %82) #10, !dbg !3760
  store i8** %67, i8*** %4, align 8, !dbg !3761, !tbaa !690
  %83 = icmp eq i64** %5, null, !dbg !3762
  br i1 %83, label %86, label %84, !dbg !3764

; <label>:84:                                     ; preds = %79
  %85 = bitcast i64** %5 to i8**, !dbg !3765
  store i8* %63, i8** %85, align 8, !dbg !3765, !tbaa !690
  br label %87, !dbg !3766

; <label>:86:                                     ; preds = %79
  tail call void @free(i8* %63) #10, !dbg !3767
  br label %87

; <label>:87:                                     ; preds = %86, %84
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %8) #10, !dbg !3768
  ret i64 %26, !dbg !3769
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #7 !dbg !3770 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3809, metadata !DIExpression()), !dbg !3815
  call void @llvm.dbg.value(metadata i8* %1, metadata !3810, metadata !DIExpression()), !dbg !3816
  call void @llvm.dbg.value(metadata i8* %2, metadata !3811, metadata !DIExpression()), !dbg !3817
  call void @llvm.dbg.value(metadata i8* %3, metadata !3812, metadata !DIExpression()), !dbg !3818
  call void @llvm.dbg.value(metadata i8** %4, metadata !3813, metadata !DIExpression()), !dbg !3819
  call void @llvm.dbg.value(metadata i64 %5, metadata !3814, metadata !DIExpression()), !dbg !3820
  %7 = icmp eq i8* %1, null, !dbg !3821
  br i1 %7, label %10, label %8, !dbg !3823

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.93, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10, !dbg !3824
  br label %12, !dbg !3824

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.94, i64 0, i64 0), i8* %2, i8* %3) #10, !dbg !3825
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.95, i64 0, i64 0), i32 5) #10, !dbg !3826
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2018) #10, !dbg !3826
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([204 x i8], [204 x i8]* @.str.3.96, i64 0, i64 0), i32 5) #10, !dbg !3827
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0), !dbg !3827
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
  ], !dbg !3828

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !3829
  unreachable, !dbg !3829

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.97, i64 0, i64 0), i32 5) #10, !dbg !3831
  %20 = load i8*, i8** %4, align 8, !dbg !3831, !tbaa !690
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #10, !dbg !3831
  br label %146, !dbg !3832

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.98, i64 0, i64 0), i32 5) #10, !dbg !3833
  %24 = load i8*, i8** %4, align 8, !dbg !3833, !tbaa !690
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3833
  %26 = load i8*, i8** %25, align 8, !dbg !3833, !tbaa !690
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #10, !dbg !3833
  br label %146, !dbg !3834

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.99, i64 0, i64 0), i32 5) #10, !dbg !3835
  %30 = load i8*, i8** %4, align 8, !dbg !3835, !tbaa !690
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3835
  %32 = load i8*, i8** %31, align 8, !dbg !3835, !tbaa !690
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3835
  %34 = load i8*, i8** %33, align 8, !dbg !3835, !tbaa !690
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #10, !dbg !3835
  br label %146, !dbg !3836

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.100, i64 0, i64 0), i32 5) #10, !dbg !3837
  %38 = load i8*, i8** %4, align 8, !dbg !3837, !tbaa !690
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3837
  %40 = load i8*, i8** %39, align 8, !dbg !3837, !tbaa !690
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3837
  %42 = load i8*, i8** %41, align 8, !dbg !3837, !tbaa !690
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3837
  %44 = load i8*, i8** %43, align 8, !dbg !3837, !tbaa !690
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #10, !dbg !3837
  br label %146, !dbg !3838

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.101, i64 0, i64 0), i32 5) #10, !dbg !3839
  %48 = load i8*, i8** %4, align 8, !dbg !3839, !tbaa !690
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3839
  %50 = load i8*, i8** %49, align 8, !dbg !3839, !tbaa !690
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3839
  %52 = load i8*, i8** %51, align 8, !dbg !3839, !tbaa !690
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3839
  %54 = load i8*, i8** %53, align 8, !dbg !3839, !tbaa !690
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3839
  %56 = load i8*, i8** %55, align 8, !dbg !3839, !tbaa !690
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #10, !dbg !3839
  br label %146, !dbg !3840

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.102, i64 0, i64 0), i32 5) #10, !dbg !3841
  %60 = load i8*, i8** %4, align 8, !dbg !3841, !tbaa !690
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3841
  %62 = load i8*, i8** %61, align 8, !dbg !3841, !tbaa !690
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3841
  %64 = load i8*, i8** %63, align 8, !dbg !3841, !tbaa !690
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3841
  %66 = load i8*, i8** %65, align 8, !dbg !3841, !tbaa !690
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3841
  %68 = load i8*, i8** %67, align 8, !dbg !3841, !tbaa !690
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3841
  %70 = load i8*, i8** %69, align 8, !dbg !3841, !tbaa !690
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #10, !dbg !3841
  br label %146, !dbg !3842

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.103, i64 0, i64 0), i32 5) #10, !dbg !3843
  %74 = load i8*, i8** %4, align 8, !dbg !3843, !tbaa !690
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3843
  %76 = load i8*, i8** %75, align 8, !dbg !3843, !tbaa !690
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3843
  %78 = load i8*, i8** %77, align 8, !dbg !3843, !tbaa !690
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3843
  %80 = load i8*, i8** %79, align 8, !dbg !3843, !tbaa !690
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3843
  %82 = load i8*, i8** %81, align 8, !dbg !3843, !tbaa !690
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3843
  %84 = load i8*, i8** %83, align 8, !dbg !3843, !tbaa !690
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3843
  %86 = load i8*, i8** %85, align 8, !dbg !3843, !tbaa !690
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #10, !dbg !3843
  br label %146, !dbg !3844

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.104, i64 0, i64 0), i32 5) #10, !dbg !3845
  %90 = load i8*, i8** %4, align 8, !dbg !3845, !tbaa !690
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3845
  %92 = load i8*, i8** %91, align 8, !dbg !3845, !tbaa !690
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3845
  %94 = load i8*, i8** %93, align 8, !dbg !3845, !tbaa !690
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3845
  %96 = load i8*, i8** %95, align 8, !dbg !3845, !tbaa !690
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3845
  %98 = load i8*, i8** %97, align 8, !dbg !3845, !tbaa !690
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3845
  %100 = load i8*, i8** %99, align 8, !dbg !3845, !tbaa !690
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3845
  %102 = load i8*, i8** %101, align 8, !dbg !3845, !tbaa !690
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3845
  %104 = load i8*, i8** %103, align 8, !dbg !3845, !tbaa !690
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #10, !dbg !3845
  br label %146, !dbg !3846

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.105, i64 0, i64 0), i32 5) #10, !dbg !3847
  %108 = load i8*, i8** %4, align 8, !dbg !3847, !tbaa !690
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3847
  %110 = load i8*, i8** %109, align 8, !dbg !3847, !tbaa !690
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3847
  %112 = load i8*, i8** %111, align 8, !dbg !3847, !tbaa !690
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3847
  %114 = load i8*, i8** %113, align 8, !dbg !3847, !tbaa !690
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3847
  %116 = load i8*, i8** %115, align 8, !dbg !3847, !tbaa !690
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3847
  %118 = load i8*, i8** %117, align 8, !dbg !3847, !tbaa !690
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3847
  %120 = load i8*, i8** %119, align 8, !dbg !3847, !tbaa !690
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3847
  %122 = load i8*, i8** %121, align 8, !dbg !3847, !tbaa !690
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3847
  %124 = load i8*, i8** %123, align 8, !dbg !3847, !tbaa !690
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #10, !dbg !3847
  br label %146, !dbg !3848

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.106, i64 0, i64 0), i32 5) #10, !dbg !3849
  %128 = load i8*, i8** %4, align 8, !dbg !3849, !tbaa !690
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3849
  %130 = load i8*, i8** %129, align 8, !dbg !3849, !tbaa !690
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3849
  %132 = load i8*, i8** %131, align 8, !dbg !3849, !tbaa !690
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3849
  %134 = load i8*, i8** %133, align 8, !dbg !3849, !tbaa !690
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3849
  %136 = load i8*, i8** %135, align 8, !dbg !3849, !tbaa !690
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3849
  %138 = load i8*, i8** %137, align 8, !dbg !3849, !tbaa !690
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3849
  %140 = load i8*, i8** %139, align 8, !dbg !3849, !tbaa !690
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3849
  %142 = load i8*, i8** %141, align 8, !dbg !3849, !tbaa !690
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3849
  %144 = load i8*, i8** %143, align 8, !dbg !3849, !tbaa !690
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #10, !dbg !3849
  br label %146, !dbg !3850

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3851
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #7 !dbg !3852 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3856, metadata !DIExpression()), !dbg !3862
  call void @llvm.dbg.value(metadata i8* %1, metadata !3857, metadata !DIExpression()), !dbg !3863
  call void @llvm.dbg.value(metadata i8* %2, metadata !3858, metadata !DIExpression()), !dbg !3864
  call void @llvm.dbg.value(metadata i8* %3, metadata !3859, metadata !DIExpression()), !dbg !3865
  call void @llvm.dbg.value(metadata i8** %4, metadata !3860, metadata !DIExpression()), !dbg !3866
  call void @llvm.dbg.value(metadata i64 0, metadata !3861, metadata !DIExpression()), !dbg !3867
  br label %6, !dbg !3868

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3870
  call void @llvm.dbg.value(metadata i64 %7, metadata !3861, metadata !DIExpression()), !dbg !3867
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3872
  %9 = load i8*, i8** %8, align 8, !dbg !3872, !tbaa !690
  %10 = icmp eq i8* %9, null, !dbg !3873
  %11 = add i64 %7, 1, !dbg !3874
  call void @llvm.dbg.value(metadata i64 %11, metadata !3861, metadata !DIExpression()), !dbg !3867
  br i1 %10, label %12, label %6, !dbg !3873, !llvm.loop !3875

; <label>:12:                                     ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !3861, metadata !DIExpression()), !dbg !3867
  call void @llvm.dbg.value(metadata i64 %7, metadata !3861, metadata !DIExpression()), !dbg !3867
  call void @llvm.dbg.value(metadata i64 %7, metadata !3861, metadata !DIExpression()), !dbg !3867
  call void @llvm.dbg.value(metadata i64 %7, metadata !3861, metadata !DIExpression()), !dbg !3867
  call void @llvm.dbg.value(metadata i64 %7, metadata !3861, metadata !DIExpression()), !dbg !3867
  call void @llvm.dbg.value(metadata i64 %7, metadata !3861, metadata !DIExpression()), !dbg !3867
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3877
  ret void, !dbg !3878
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #7 !dbg !3879 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3890, metadata !DIExpression()), !dbg !3898
  call void @llvm.dbg.value(metadata i8* %1, metadata !3891, metadata !DIExpression()), !dbg !3899
  call void @llvm.dbg.value(metadata i8* %2, metadata !3892, metadata !DIExpression()), !dbg !3900
  call void @llvm.dbg.value(metadata i8* %3, metadata !3893, metadata !DIExpression()), !dbg !3901
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3894, metadata !DIExpression()), !dbg !3902
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3903
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #10, !dbg !3903
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3896, metadata !DIExpression()), !dbg !3904
  call void @llvm.dbg.value(metadata i64 0, metadata !3895, metadata !DIExpression()), !dbg !3905
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  call void @llvm.dbg.value(metadata i64 0, metadata !3895, metadata !DIExpression()), !dbg !3905
  %11 = load i32, i32* %8, align 8, !dbg !3906
  %12 = icmp ult i32 %11, 41, !dbg !3906
  br i1 %12, label %13, label %18, !dbg !3906

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3906
  %15 = sext i32 %11 to i64, !dbg !3906
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3906
  %17 = add i32 %11, 8, !dbg !3906
  store i32 %17, i32* %8, align 8, !dbg !3906
  br label %21, !dbg !3906

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3906
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3906
  store i8* %20, i8** %10, align 8, !dbg !3906
  br label %21, !dbg !3906

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3906
  %25 = load i8*, i8** %24, align 8, !dbg !3906
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3909
  store i8* %25, i8** %26, align 16, !dbg !3910, !tbaa !690
  %27 = icmp eq i8* %25, null, !dbg !3911
  br i1 %27, label %30, label %28, !dbg !3912

; <label>:28:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !3895, metadata !DIExpression()), !dbg !3905
  call void @llvm.dbg.value(metadata i64 1, metadata !3895, metadata !DIExpression()), !dbg !3905
  %29 = icmp ult i32 %22, 41, !dbg !3906
  br i1 %29, label %35, label %32, !dbg !3906

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !3913
  call void @llvm.dbg.value(metadata i64 %31, metadata !3895, metadata !DIExpression()), !dbg !3905
  call void @llvm.dbg.value(metadata i64 %31, metadata !3895, metadata !DIExpression()), !dbg !3905
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3914
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #10, !dbg !3915
  ret void, !dbg !3915

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3906
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3906
  store i8* %34, i8** %10, align 8, !dbg !3906
  br label %40, !dbg !3906

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3906
  %37 = sext i32 %22 to i64, !dbg !3906
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3906
  %39 = add i32 %22, 8, !dbg !3906
  store i32 %39, i32* %8, align 8, !dbg !3906
  br label %40, !dbg !3906

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3906
  %44 = load i8*, i8** %43, align 8, !dbg !3906
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3909
  store i8* %44, i8** %45, align 8, !dbg !3910, !tbaa !690
  %46 = icmp eq i8* %44, null, !dbg !3911
  br i1 %46, label %30, label %47, !dbg !3912

; <label>:47:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3895, metadata !DIExpression()), !dbg !3905
  call void @llvm.dbg.value(metadata i64 2, metadata !3895, metadata !DIExpression()), !dbg !3905
  %48 = icmp ult i32 %41, 41, !dbg !3906
  br i1 %48, label %52, label %49, !dbg !3906

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3906
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3906
  store i8* %51, i8** %10, align 8, !dbg !3906
  br label %57, !dbg !3906

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3906
  %54 = sext i32 %41 to i64, !dbg !3906
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3906
  %56 = add i32 %41, 8, !dbg !3906
  store i32 %56, i32* %8, align 8, !dbg !3906
  br label %57, !dbg !3906

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3906
  %61 = load i8*, i8** %60, align 8, !dbg !3906
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3909
  store i8* %61, i8** %62, align 16, !dbg !3910, !tbaa !690
  %63 = icmp eq i8* %61, null, !dbg !3911
  br i1 %63, label %30, label %64, !dbg !3912

; <label>:64:                                     ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !3895, metadata !DIExpression()), !dbg !3905
  call void @llvm.dbg.value(metadata i64 3, metadata !3895, metadata !DIExpression()), !dbg !3905
  %65 = icmp ult i32 %58, 41, !dbg !3906
  br i1 %65, label %69, label %66, !dbg !3906

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3906
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3906
  store i8* %68, i8** %10, align 8, !dbg !3906
  br label %74, !dbg !3906

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3906
  %71 = sext i32 %58 to i64, !dbg !3906
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3906
  %73 = add i32 %58, 8, !dbg !3906
  store i32 %73, i32* %8, align 8, !dbg !3906
  br label %74, !dbg !3906

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3906
  %78 = load i8*, i8** %77, align 8, !dbg !3906
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3909
  store i8* %78, i8** %79, align 8, !dbg !3910, !tbaa !690
  %80 = icmp eq i8* %78, null, !dbg !3911
  br i1 %80, label %30, label %81, !dbg !3912

; <label>:81:                                     ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !3895, metadata !DIExpression()), !dbg !3905
  call void @llvm.dbg.value(metadata i64 4, metadata !3895, metadata !DIExpression()), !dbg !3905
  %82 = icmp ult i32 %75, 41, !dbg !3906
  br i1 %82, label %86, label %83, !dbg !3906

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3906
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3906
  store i8* %85, i8** %10, align 8, !dbg !3906
  br label %91, !dbg !3906

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3906
  %88 = sext i32 %75 to i64, !dbg !3906
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3906
  %90 = add i32 %75, 8, !dbg !3906
  store i32 %90, i32* %8, align 8, !dbg !3906
  br label %91, !dbg !3906

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3906
  %95 = load i8*, i8** %94, align 8, !dbg !3906
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3909
  store i8* %95, i8** %96, align 16, !dbg !3910, !tbaa !690
  %97 = icmp eq i8* %95, null, !dbg !3911
  br i1 %97, label %30, label %98, !dbg !3912

; <label>:98:                                     ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !3895, metadata !DIExpression()), !dbg !3905
  call void @llvm.dbg.value(metadata i64 5, metadata !3895, metadata !DIExpression()), !dbg !3905
  %99 = icmp ult i32 %92, 41, !dbg !3906
  br i1 %99, label %103, label %100, !dbg !3906

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3906
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3906
  store i8* %102, i8** %10, align 8, !dbg !3906
  br label %108, !dbg !3906

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3906
  %105 = sext i32 %92 to i64, !dbg !3906
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3906
  %107 = add i32 %92, 8, !dbg !3906
  store i32 %107, i32* %8, align 8, !dbg !3906
  br label %108, !dbg !3906

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3906
  %111 = load i8*, i8** %110, align 8, !dbg !3906
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3909
  store i8* %111, i8** %112, align 8, !dbg !3910, !tbaa !690
  %113 = icmp eq i8* %111, null, !dbg !3911
  br i1 %113, label %30, label %114, !dbg !3912

; <label>:114:                                    ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !3895, metadata !DIExpression()), !dbg !3905
  call void @llvm.dbg.value(metadata i64 6, metadata !3895, metadata !DIExpression()), !dbg !3905
  %115 = load i8*, i8** %10, align 8, !dbg !3906
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3906
  store i8* %116, i8** %10, align 8, !dbg !3906
  %117 = bitcast i8* %115 to i8**, !dbg !3906
  %118 = load i8*, i8** %117, align 8, !dbg !3906
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3909
  store i8* %118, i8** %119, align 16, !dbg !3910, !tbaa !690
  %120 = icmp eq i8* %118, null, !dbg !3911
  br i1 %120, label %30, label %121, !dbg !3912

; <label>:121:                                    ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !3895, metadata !DIExpression()), !dbg !3905
  call void @llvm.dbg.value(metadata i64 7, metadata !3895, metadata !DIExpression()), !dbg !3905
  %122 = load i8*, i8** %10, align 8, !dbg !3906
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3906
  store i8* %123, i8** %10, align 8, !dbg !3906
  %124 = bitcast i8* %122 to i8**, !dbg !3906
  %125 = load i8*, i8** %124, align 8, !dbg !3906
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3909
  store i8* %125, i8** %126, align 8, !dbg !3910, !tbaa !690
  %127 = icmp eq i8* %125, null, !dbg !3911
  br i1 %127, label %30, label %128, !dbg !3912

; <label>:128:                                    ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !3895, metadata !DIExpression()), !dbg !3905
  call void @llvm.dbg.value(metadata i64 8, metadata !3895, metadata !DIExpression()), !dbg !3905
  %129 = load i8*, i8** %10, align 8, !dbg !3906
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3906
  store i8* %130, i8** %10, align 8, !dbg !3906
  %131 = bitcast i8* %129 to i8**, !dbg !3906
  %132 = load i8*, i8** %131, align 8, !dbg !3906
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3909
  store i8* %132, i8** %133, align 16, !dbg !3910, !tbaa !690
  %134 = icmp eq i8* %132, null, !dbg !3911
  br i1 %134, label %30, label %135, !dbg !3912

; <label>:135:                                    ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !3895, metadata !DIExpression()), !dbg !3905
  call void @llvm.dbg.value(metadata i64 9, metadata !3895, metadata !DIExpression()), !dbg !3905
  %136 = load i8*, i8** %10, align 8, !dbg !3906
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3906
  store i8* %137, i8** %10, align 8, !dbg !3906
  %138 = bitcast i8* %136 to i8**, !dbg !3906
  %139 = load i8*, i8** %138, align 8, !dbg !3906
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3909
  store i8* %139, i8** %140, align 8, !dbg !3910, !tbaa !690
  %141 = icmp eq i8* %139, null, !dbg !3911
  %142 = select i1 %141, i64 9, i64 10, !dbg !3912
  br label %30, !dbg !3912
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #7 !dbg !3916 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3920, metadata !DIExpression()), !dbg !3929
  call void @llvm.dbg.value(metadata i8* %1, metadata !3921, metadata !DIExpression()), !dbg !3930
  call void @llvm.dbg.value(metadata i8* %2, metadata !3922, metadata !DIExpression()), !dbg !3931
  call void @llvm.dbg.value(metadata i8* %3, metadata !3923, metadata !DIExpression()), !dbg !3932
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3933
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #10, !dbg !3933
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3924, metadata !DIExpression()), !dbg !3934
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3935
  call void @llvm.va_start(i8* nonnull %6), !dbg !3935
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3936
  call void @llvm.va_end(i8* nonnull %6), !dbg !3937
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #10, !dbg !3938
  ret void, !dbg !3938
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #7 !dbg !3939 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.109, i64 0, i64 0), i32 5) #10, !dbg !3940
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.110, i64 0, i64 0)) #10, !dbg !3940
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.111, i64 0, i64 0), i32 5) #10, !dbg !3941
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.112, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18.113, i64 0, i64 0)) #10, !dbg !3941
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.19.114, i64 0, i64 0), i32 5) #10, !dbg !3942
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3942, !tbaa !690
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6), !dbg !3942
  ret void, !dbg !3943
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !3944 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3946, metadata !DIExpression()), !dbg !3948
  call void @llvm.dbg.value(metadata i64 %1, metadata !3947, metadata !DIExpression()), !dbg !3949
  %3 = udiv i64 9223372036854775807, %1, !dbg !3950
  %4 = icmp ult i64 %3, %0, !dbg !3950
  br i1 %4, label %5, label %6, !dbg !3952

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3953
  unreachable, !dbg !3953

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3954
  call void @llvm.dbg.value(metadata i64 %7, metadata !3955, metadata !DIExpression()) #10, !dbg !3962
  %8 = tail call noalias i8* @malloc(i64 %7) #10, !dbg !3964
  call void @llvm.dbg.value(metadata i8* %8, metadata !3961, metadata !DIExpression()) #10, !dbg !3965
  %9 = icmp eq i8* %8, null, !dbg !3966
  %10 = icmp ne i64 %7, 0, !dbg !3968
  %11 = and i1 %10, %9, !dbg !3969
  br i1 %11, label %12, label %13, !dbg !3969

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !3970
  unreachable, !dbg !3970

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3971
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64) local_unnamed_addr #7 !dbg !3956 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3955, metadata !DIExpression()), !dbg !3972
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3973
  call void @llvm.dbg.value(metadata i8* %2, metadata !3961, metadata !DIExpression()), !dbg !3974
  %3 = icmp eq i8* %2, null, !dbg !3975
  %4 = icmp ne i64 %0, 0, !dbg !3976
  %5 = and i1 %4, %3, !dbg !3977
  br i1 %5, label %6, label %7, !dbg !3977

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3978
  unreachable, !dbg !3978

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3979
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !3980 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3982, metadata !DIExpression()), !dbg !3985
  call void @llvm.dbg.value(metadata i64 %1, metadata !3983, metadata !DIExpression()), !dbg !3986
  call void @llvm.dbg.value(metadata i64 %2, metadata !3984, metadata !DIExpression()), !dbg !3987
  %4 = udiv i64 9223372036854775807, %2, !dbg !3988
  %5 = icmp ult i64 %4, %1, !dbg !3988
  br i1 %5, label %6, label %7, !dbg !3990

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !3991
  unreachable, !dbg !3991

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3992
  call void @llvm.dbg.value(metadata i8* %0, metadata !3993, metadata !DIExpression()) #10, !dbg !3999
  call void @llvm.dbg.value(metadata i64 %8, metadata !3998, metadata !DIExpression()) #10, !dbg !4001
  %9 = icmp eq i64 %8, 0, !dbg !4002
  %10 = icmp ne i8* %0, null, !dbg !4004
  %11 = and i1 %10, %9, !dbg !4005
  br i1 %11, label %12, label %13, !dbg !4005

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #10, !dbg !4006
  br label %19, !dbg !4008

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #10, !dbg !4009
  call void @llvm.dbg.value(metadata i8* %14, metadata !3993, metadata !DIExpression()) #10, !dbg !3999
  %15 = icmp eq i8* %14, null, !dbg !4010
  %16 = icmp ne i64 %8, 0, !dbg !4012
  %17 = and i1 %16, %15, !dbg !4013
  br i1 %17, label %18, label %19, !dbg !4013

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !4014
  unreachable, !dbg !4014

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !4015
  ret i8* %20, !dbg !4016
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #7 !dbg !3994 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3993, metadata !DIExpression()), !dbg !4017
  call void @llvm.dbg.value(metadata i64 %1, metadata !3998, metadata !DIExpression()), !dbg !4018
  %3 = icmp eq i64 %1, 0, !dbg !4019
  %4 = icmp ne i8* %0, null, !dbg !4020
  %5 = and i1 %4, %3, !dbg !4021
  br i1 %5, label %6, label %7, !dbg !4021

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #10, !dbg !4022
  br label %13, !dbg !4023

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #10, !dbg !4024
  call void @llvm.dbg.value(metadata i8* %8, metadata !3993, metadata !DIExpression()), !dbg !4017
  %9 = icmp eq i8* %8, null, !dbg !4025
  %10 = icmp ne i64 %1, 0, !dbg !4026
  %11 = and i1 %10, %9, !dbg !4027
  br i1 %11, label %12, label %13, !dbg !4027

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !4028
  unreachable, !dbg !4028

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !4029
  ret i8* %14, !dbg !4030
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !238 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !240, metadata !DIExpression()), !dbg !4031
  call void @llvm.dbg.value(metadata i64* %1, metadata !241, metadata !DIExpression()), !dbg !4032
  call void @llvm.dbg.value(metadata i64 %2, metadata !242, metadata !DIExpression()), !dbg !4033
  %4 = load i64, i64* %1, align 8, !dbg !4034, !tbaa !1081
  call void @llvm.dbg.value(metadata i64 %4, metadata !243, metadata !DIExpression()), !dbg !4035
  %5 = icmp eq i8* %0, null, !dbg !4036
  br i1 %5, label %6, label %20, !dbg !4038

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4039
  br i1 %7, label %8, label %13, !dbg !4042

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4043
  call void @llvm.dbg.value(metadata i64 %9, metadata !243, metadata !DIExpression()), !dbg !4035
  %10 = icmp ugt i64 %2, 128, !dbg !4045
  %11 = zext i1 %10 to i64, !dbg !4045
  %12 = add nuw nsw i64 %9, %11, !dbg !4046
  call void @llvm.dbg.value(metadata i64 %12, metadata !243, metadata !DIExpression()), !dbg !4035
  br label %13, !dbg !4047

; <label>:13:                                     ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !4048
  call void @llvm.dbg.value(metadata i64 %14, metadata !243, metadata !DIExpression()), !dbg !4035
  %15 = udiv i64 9223372036854775807, %2, !dbg !4049
  %16 = icmp ult i64 %15, %14, !dbg !4049
  br i1 %16, label %19, label %17, !dbg !4051

; <label>:17:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !243, metadata !DIExpression()), !dbg !4035
  store i64 %14, i64* %1, align 8, !dbg !4052, !tbaa !1081
  %18 = mul i64 %14, %2, !dbg !4053
  call void @llvm.dbg.value(metadata i8* %0, metadata !3993, metadata !DIExpression()) #10, !dbg !4054
  call void @llvm.dbg.value(metadata i64 %28, metadata !3998, metadata !DIExpression()) #10, !dbg !4056
  br label %31, !dbg !4057

; <label>:19:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !4058
  unreachable, !dbg !4058

; <label>:20:                                     ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !4059
  %22 = icmp ugt i64 %21, %4, !dbg !4062
  br i1 %22, label %24, label %23, !dbg !4063

; <label>:23:                                     ; preds = %20
  tail call void @xalloc_die() #15, !dbg !4064
  unreachable, !dbg !4064

; <label>:24:                                     ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !4065
  %26 = add i64 %4, 1, !dbg !4066
  %27 = add i64 %26, %25, !dbg !4067
  call void @llvm.dbg.value(metadata i64 %27, metadata !243, metadata !DIExpression()), !dbg !4035
  call void @llvm.dbg.value(metadata i64 %27, metadata !243, metadata !DIExpression()), !dbg !4035
  store i64 %27, i64* %1, align 8, !dbg !4052, !tbaa !1081
  %28 = mul i64 %27, %2, !dbg !4053
  call void @llvm.dbg.value(metadata i8* %0, metadata !3993, metadata !DIExpression()) #10, !dbg !4054
  call void @llvm.dbg.value(metadata i64 %28, metadata !3998, metadata !DIExpression()) #10, !dbg !4056
  %29 = icmp eq i64 %28, 0, !dbg !4068
  br i1 %29, label %30, label %31, !dbg !4057

; <label>:30:                                     ; preds = %24
  tail call void @free(i8* nonnull %0) #10, !dbg !4069
  br label %38, !dbg !4070

; <label>:31:                                     ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #10, !dbg !4071
  call void @llvm.dbg.value(metadata i8* %33, metadata !3993, metadata !DIExpression()) #10, !dbg !4054
  %34 = icmp eq i8* %33, null, !dbg !4072
  %35 = icmp ne i64 %32, 0, !dbg !4073
  %36 = and i1 %35, %34, !dbg !4074
  br i1 %36, label %37, label %38, !dbg !4074

; <label>:37:                                     ; preds = %31
  tail call void @xalloc_die() #15, !dbg !4075
  unreachable, !dbg !4075

; <label>:38:                                     ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !4076
  ret i8* %39, !dbg !4077
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !4078 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4080, metadata !DIExpression()), !dbg !4081
  call void @llvm.dbg.value(metadata i64 %0, metadata !3955, metadata !DIExpression()) #10, !dbg !4082
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !4084
  call void @llvm.dbg.value(metadata i8* %2, metadata !3961, metadata !DIExpression()) #10, !dbg !4085
  %3 = icmp eq i8* %2, null, !dbg !4086
  %4 = icmp ne i64 %0, 0, !dbg !4087
  %5 = and i1 %4, %3, !dbg !4088
  br i1 %5, label %6, label %7, !dbg !4088

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !4089
  unreachable, !dbg !4089

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !4090
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #7 !dbg !4091 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4095, metadata !DIExpression()), !dbg !4097
  call void @llvm.dbg.value(metadata i64* %1, metadata !4096, metadata !DIExpression()), !dbg !4098
  call void @llvm.dbg.value(metadata i8* %0, metadata !240, metadata !DIExpression()) #10, !dbg !4099
  call void @llvm.dbg.value(metadata i64* %1, metadata !241, metadata !DIExpression()) #10, !dbg !4101
  call void @llvm.dbg.value(metadata i64 1, metadata !242, metadata !DIExpression()) #10, !dbg !4102
  %3 = load i64, i64* %1, align 8, !dbg !4103, !tbaa !1081
  call void @llvm.dbg.value(metadata i64 %3, metadata !243, metadata !DIExpression()) #10, !dbg !4104
  %4 = icmp eq i8* %0, null, !dbg !4105
  br i1 %4, label %5, label %12, !dbg !4106

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4107
  br i1 %6, label %9, label %7, !dbg !4108

; <label>:7:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !243, metadata !DIExpression()) #10, !dbg !4104
  %8 = icmp slt i64 %3, 0, !dbg !4109
  br i1 %8, label %11, label %9, !dbg !4110

; <label>:9:                                      ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !243, metadata !DIExpression()) #10, !dbg !4104
  store i64 %10, i64* %1, align 8, !dbg !4111, !tbaa !1081
  call void @llvm.dbg.value(metadata i8* %0, metadata !3993, metadata !DIExpression()) #10, !dbg !4112
  call void @llvm.dbg.value(metadata i64 %18, metadata !3998, metadata !DIExpression()) #10, !dbg !4114
  br label %21, !dbg !4115

; <label>:11:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !4116
  unreachable, !dbg !4116

; <label>:12:                                     ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !4117
  br i1 %13, label %15, label %14, !dbg !4118

; <label>:14:                                     ; preds = %12
  tail call void @xalloc_die() #15, !dbg !4119
  unreachable, !dbg !4119

; <label>:15:                                     ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !4120
  %17 = add i64 %3, 1, !dbg !4121
  %18 = add i64 %17, %16, !dbg !4122
  call void @llvm.dbg.value(metadata i64 %18, metadata !243, metadata !DIExpression()) #10, !dbg !4104
  call void @llvm.dbg.value(metadata i64 %18, metadata !243, metadata !DIExpression()) #10, !dbg !4104
  store i64 %18, i64* %1, align 8, !dbg !4111, !tbaa !1081
  call void @llvm.dbg.value(metadata i8* %0, metadata !3993, metadata !DIExpression()) #10, !dbg !4112
  call void @llvm.dbg.value(metadata i64 %18, metadata !3998, metadata !DIExpression()) #10, !dbg !4114
  %19 = icmp eq i64 %18, 0, !dbg !4123
  br i1 %19, label %20, label %21, !dbg !4115

; <label>:20:                                     ; preds = %15
  tail call void @free(i8* nonnull %0) #10, !dbg !4124
  br label %28, !dbg !4125

; <label>:21:                                     ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #10, !dbg !4126
  call void @llvm.dbg.value(metadata i8* %23, metadata !3993, metadata !DIExpression()) #10, !dbg !4112
  %24 = icmp eq i8* %23, null, !dbg !4127
  %25 = icmp ne i64 %22, 0, !dbg !4128
  %26 = and i1 %25, %24, !dbg !4129
  br i1 %26, label %27, label %28, !dbg !4129

; <label>:27:                                     ; preds = %21
  tail call void @xalloc_die() #15, !dbg !4130
  unreachable, !dbg !4130

; <label>:28:                                     ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !4131
  ret i8* %29, !dbg !4132
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64) local_unnamed_addr #7 !dbg !4133 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4135, metadata !DIExpression()), !dbg !4136
  call void @llvm.dbg.value(metadata i64 %0, metadata !3955, metadata !DIExpression()) #10, !dbg !4137
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !4139
  call void @llvm.dbg.value(metadata i8* %2, metadata !3961, metadata !DIExpression()) #10, !dbg !4140
  %3 = icmp eq i8* %2, null, !dbg !4141
  %4 = icmp ne i64 %0, 0, !dbg !4142
  %5 = and i1 %4, %3, !dbg !4143
  br i1 %5, label %6, label %7, !dbg !4143

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !4144
  unreachable, !dbg !4144

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* align 1 %2, i8 0, i64 %0, i1 false), !dbg !4145
  ret i8* %2, !dbg !4146
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64, i64) local_unnamed_addr #7 !dbg !4147 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4149, metadata !DIExpression()), !dbg !4152
  call void @llvm.dbg.value(metadata i64 %1, metadata !4150, metadata !DIExpression()), !dbg !4153
  %3 = udiv i64 9223372036854775807, %1, !dbg !4154
  %4 = icmp ult i64 %3, %0, !dbg !4154
  br i1 %4, label %8, label %5, !dbg !4156

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #10, !dbg !4157
  call void @llvm.dbg.value(metadata i8* %6, metadata !4151, metadata !DIExpression()), !dbg !4158
  %7 = icmp eq i8* %6, null, !dbg !4159
  br i1 %7, label %8, label %9, !dbg !4160

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !4161
  unreachable, !dbg !4161

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !4162
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #7 !dbg !4163 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4169, metadata !DIExpression()), !dbg !4171
  call void @llvm.dbg.value(metadata i64 %1, metadata !4170, metadata !DIExpression()), !dbg !4172
  call void @llvm.dbg.value(metadata i64 %1, metadata !3955, metadata !DIExpression()) #10, !dbg !4173
  %3 = tail call noalias i8* @malloc(i64 %1) #10, !dbg !4175
  call void @llvm.dbg.value(metadata i8* %3, metadata !3961, metadata !DIExpression()) #10, !dbg !4176
  %4 = icmp eq i8* %3, null, !dbg !4177
  %5 = icmp ne i64 %1, 0, !dbg !4178
  %6 = and i1 %5, %4, !dbg !4179
  br i1 %6, label %7, label %8, !dbg !4179

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !4180
  unreachable, !dbg !4180

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 %0, i64 %1, i1 false), !dbg !4181
  ret i8* %3, !dbg !4182
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #7 !dbg !4183 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4185, metadata !DIExpression()), !dbg !4186
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !4187
  %3 = add i64 %2, 1, !dbg !4188
  call void @llvm.dbg.value(metadata i8* %0, metadata !4169, metadata !DIExpression()) #10, !dbg !4189
  call void @llvm.dbg.value(metadata i64 %3, metadata !4170, metadata !DIExpression()) #10, !dbg !4191
  call void @llvm.dbg.value(metadata i64 %3, metadata !3955, metadata !DIExpression()) #10, !dbg !4192
  %4 = tail call noalias i8* @malloc(i64 %3) #10, !dbg !4194
  call void @llvm.dbg.value(metadata i8* %4, metadata !3961, metadata !DIExpression()) #10, !dbg !4195
  %5 = icmp eq i8* %4, null, !dbg !4196
  %6 = icmp ne i64 %3, 0, !dbg !4197
  %7 = and i1 %6, %5, !dbg !4198
  br i1 %7, label %8, label %9, !dbg !4198

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !4199
  unreachable, !dbg !4199

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %0, i64 %3, i1 false) #10, !dbg !4200
  ret i8* %4, !dbg !4201
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4202 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4204, !tbaa !763
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.127, i64 0, i64 0), i32 5) #10, !dbg !4205
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.128, i64 0, i64 0), i8* %2) #10, !dbg !4206
  tail call void @abort() #15, !dbg !4207
  unreachable, !dbg !4207
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #7 !dbg !4208 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4211, metadata !DIExpression()), !dbg !4217
  call void @llvm.dbg.value(metadata i64 %1, metadata !4212, metadata !DIExpression()), !dbg !4218
  %3 = icmp eq i64 %0, 0, !dbg !4219
  %4 = icmp eq i64 %1, 0, !dbg !4220
  %5 = or i1 %3, %4, !dbg !4221
  br i1 %5, label %12, label %6, !dbg !4221

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4222
  call void @llvm.dbg.value(metadata i64 %7, metadata !4214, metadata !DIExpression()), !dbg !4223
  %8 = udiv i64 %7, %1, !dbg !4224
  %9 = icmp eq i64 %8, %0, !dbg !4226
  br i1 %9, label %12, label %10, !dbg !4227

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !4228
  store i32 12, i32* %11, align 4, !dbg !4230, !tbaa !763
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %14, metadata !4211, metadata !DIExpression()), !dbg !4217
  call void @llvm.dbg.value(metadata i64 %13, metadata !4212, metadata !DIExpression()), !dbg !4218
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #10, !dbg !4231
  call void @llvm.dbg.value(metadata i8* %15, metadata !4213, metadata !DIExpression()), !dbg !4232
  br label %16, !dbg !4233

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ], !dbg !4234
  ret i8* %17, !dbg !4235
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #7 !dbg !4236 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4275, metadata !DIExpression()), !dbg !4279
  call void @llvm.dbg.value(metadata i32 0, metadata !4276, metadata !DIExpression()), !dbg !4280
  call void @llvm.dbg.value(metadata i32 0, metadata !4278, metadata !DIExpression()), !dbg !4281
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4282
  call void @llvm.dbg.value(metadata i32 %2, metadata !4277, metadata !DIExpression()), !dbg !4283
  %3 = icmp slt i32 %2, 0, !dbg !4284
  br i1 %3, label %4, label %6, !dbg !4286

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4287
  br label %24, !dbg !4288

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !4289
  %8 = icmp eq i32 %7, 0, !dbg !4289
  br i1 %8, label %13, label %9, !dbg !4291

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4292
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #10, !dbg !4293
  %12 = icmp eq i64 %11, -1, !dbg !4294
  br i1 %12, label %16, label %13, !dbg !4295

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #10, !dbg !4296
  %15 = icmp eq i32 %14, 0, !dbg !4296
  br i1 %15, label %16, label %18, !dbg !4297

; <label>:16:                                     ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !4276, metadata !DIExpression()), !dbg !4280
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4298
  call void @llvm.dbg.value(metadata i32 %21, metadata !4278, metadata !DIExpression()), !dbg !4281
  br label %24, !dbg !4299

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !4300
  %20 = load i32, i32* %19, align 4, !dbg !4300, !tbaa !763
  call void @llvm.dbg.value(metadata i32 %20, metadata !4276, metadata !DIExpression()), !dbg !4280
  call void @llvm.dbg.value(metadata i32 %20, metadata !4276, metadata !DIExpression()), !dbg !4280
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4298
  call void @llvm.dbg.value(metadata i32 %21, metadata !4278, metadata !DIExpression()), !dbg !4281
  %22 = icmp eq i32 %20, 0, !dbg !4301
  br i1 %22, label %24, label %23, !dbg !4299

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4303, !tbaa !763
  call void @llvm.dbg.value(metadata i32 -1, metadata !4278, metadata !DIExpression()), !dbg !4281
  br label %24, !dbg !4305

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4306
  ret i32 %25, !dbg !4307
}

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !4308 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4347, metadata !DIExpression()), !dbg !4348
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4349
  br i1 %2, label %6, label %3, !dbg !4351

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !4352
  %5 = icmp eq i32 %4, 0, !dbg !4352
  br i1 %5, label %6, label %8, !dbg !4353

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4354
  br label %17, !dbg !4355

; <label>:8:                                      ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4356, metadata !DIExpression()) #10, !dbg !4361
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4363
  %10 = load i32, i32* %9, align 8, !dbg !4363, !tbaa !4365
  %11 = and i32 %10, 256, !dbg !4366
  %12 = icmp eq i32 %11, 0, !dbg !4366
  br i1 %12, label %15, label %13, !dbg !4367

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #10, !dbg !4368
  br label %15, !dbg !4368

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4369
  br label %17, !dbg !4370

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !4371
  ret i32 %18, !dbg !4372
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #7 !dbg !4373 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4412, metadata !DIExpression()), !dbg !4418
  call void @llvm.dbg.value(metadata i64 %1, metadata !4413, metadata !DIExpression()), !dbg !4419
  call void @llvm.dbg.value(metadata i32 %2, metadata !4414, metadata !DIExpression()), !dbg !4420
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4421
  %5 = load i8*, i8** %4, align 8, !dbg !4421, !tbaa !3526
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4422
  %7 = load i8*, i8** %6, align 8, !dbg !4422, !tbaa !3524
  %8 = icmp eq i8* %5, %7, !dbg !4423
  br i1 %8, label %9, label %28, !dbg !4424

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4425
  %11 = load i8*, i8** %10, align 8, !dbg !4425, !tbaa !4426
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4427
  %13 = load i8*, i8** %12, align 8, !dbg !4427, !tbaa !4428
  %14 = icmp eq i8* %11, %13, !dbg !4429
  br i1 %14, label %15, label %28, !dbg !4430

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4431
  %17 = load i8*, i8** %16, align 8, !dbg !4431, !tbaa !4432
  %18 = icmp eq i8* %17, null, !dbg !4433
  br i1 %18, label %19, label %28, !dbg !4434

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !4435
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #10, !dbg !4436
  call void @llvm.dbg.value(metadata i64 %21, metadata !4415, metadata !DIExpression()), !dbg !4437
  %22 = icmp eq i64 %21, -1, !dbg !4438
  br i1 %22, label %30, label %23, !dbg !4440

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4441
  %25 = load i32, i32* %24, align 8, !dbg !4442, !tbaa !4365
  %26 = and i32 %25, -17, !dbg !4442
  store i32 %26, i32* %24, align 8, !dbg !4442, !tbaa !4365
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4443
  store i64 %21, i64* %27, align 8, !dbg !4444, !tbaa !4445
  br label %30, !dbg !4446

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4447
  br label %30, !dbg !4448

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !4449
  ret i32 %31, !dbg !4450
}

; Function Attrs: nounwind
declare i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #7 !dbg !4451 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !4468, metadata !DIExpression()), !dbg !4477
  call void @llvm.dbg.value(metadata i8* %1, metadata !4469, metadata !DIExpression()), !dbg !4478
  call void @llvm.dbg.value(metadata i64 %2, metadata !4470, metadata !DIExpression()), !dbg !4479
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !4471, metadata !DIExpression()), !dbg !4480
  %6 = bitcast i32* %5 to i8*, !dbg !4481
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #10, !dbg !4481
  %7 = icmp eq i32* %0, null, !dbg !4482
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4484
  call void @llvm.dbg.value(metadata i32* %8, metadata !4468, metadata !DIExpression()), !dbg !4477
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #10, !dbg !4485
  call void @llvm.dbg.value(metadata i64 %9, metadata !4472, metadata !DIExpression()), !dbg !4486
  %10 = icmp ugt i64 %9, -3, !dbg !4487
  %11 = icmp ne i64 %2, 0, !dbg !4488
  %12 = and i1 %11, %10, !dbg !4489
  br i1 %12, label %13, label %18, !dbg !4489

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #10, !dbg !4490
  br i1 %14, label %18, label %15, !dbg !4491

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4492, !tbaa !1921
  call void @llvm.dbg.value(metadata i8 %16, metadata !4474, metadata !DIExpression()), !dbg !4493
  %17 = zext i8 %16 to i32, !dbg !4494
  store i32 %17, i32* %8, align 4, !dbg !4495, !tbaa !763
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !4496
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #10, !dbg !4497
  ret i64 %19, !dbg !4497
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !4498 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4537, metadata !DIExpression()), !dbg !4542
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #10, !dbg !4543
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4544, metadata !DIExpression()), !dbg !4547
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4549
  %4 = load i32, i32* %3, align 8, !dbg !4549, !tbaa !4365
  %5 = and i32 %4, 32, !dbg !4549
  %6 = icmp eq i32 %5, 0, !dbg !4550
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #10, !dbg !4551
  %8 = icmp ne i32 %7, 0, !dbg !4552
  br i1 %6, label %9, label %19, !dbg !4553

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4555
  %11 = xor i1 %8, true, !dbg !4556
  %12 = or i1 %10, %11, !dbg !4556
  %13 = sext i1 %8 to i32, !dbg !4556
  br i1 %12, label %22, label %14, !dbg !4556

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !4557
  %16 = load i32, i32* %15, align 4, !dbg !4557, !tbaa !763
  %17 = icmp ne i32 %16, 9, !dbg !4558
  %18 = sext i1 %17 to i32, !dbg !4559
  br label %22, !dbg !4559

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4560

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !4562
  store i32 0, i32* %21, align 4, !dbg !4564, !tbaa !763
  br label %22, !dbg !4562

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4565
  ret i32 %23, !dbg !4566
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32) local_unnamed_addr #7 !dbg !4567 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4570, metadata !DIExpression()), !dbg !4573
  call void @llvm.dbg.value(metadata i8 1, metadata !4571, metadata !DIExpression()), !dbg !4574
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #10, !dbg !4575
  call void @llvm.dbg.value(metadata i8* %2, metadata !4572, metadata !DIExpression()), !dbg !4576
  %3 = icmp eq i8* %2, null, !dbg !4577
  br i1 %3, label %11, label %4, !dbg !4579

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.143, i64 0, i64 0)) #14, !dbg !4580
  %6 = icmp eq i32 %5, 0, !dbg !4585
  br i1 %6, label %10, label %7, !dbg !4586

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.144, i64 0, i64 0)) #14, !dbg !4587
  %9 = icmp eq i32 %8, 0, !dbg !4588
  br i1 %9, label %10, label %11, !dbg !4589

; <label>:10:                                     ; preds = %7, %4
  call void @llvm.dbg.value(metadata i8 0, metadata !4571, metadata !DIExpression()), !dbg !4574
  br label %11, !dbg !4590

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !4591
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #7 !dbg !4592 {
  %1 = tail call i8* @nl_langinfo(i32 14) #10, !dbg !4598
  call void @llvm.dbg.value(metadata i8* %1, metadata !4597, metadata !DIExpression()), !dbg !4599
  %2 = icmp eq i8* %1, null, !dbg !4600
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.147, i64 0, i64 0), i8* %1, !dbg !4602
  call void @llvm.dbg.value(metadata i8* %3, metadata !4597, metadata !DIExpression()), !dbg !4599
  %4 = load i8, i8* %3, align 1, !dbg !4603, !tbaa !1921
  %5 = icmp eq i8 %4, 0, !dbg !4607
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.148, i64 0, i64 0), i8* %3, !dbg !4608
  call void @llvm.dbg.value(metadata i8* %6, metadata !4597, metadata !DIExpression()), !dbg !4599
  ret i8* %6, !dbg !4609
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

!llvm.dbg.cu = !{!2, !76, !82, !91, !198, !201, !98, !114, !122, !203, !226, !191, !234, !245, !247, !249, !251, !253, !255, !258, !260, !262}
!llvm.ident = !{!651, !651, !651, !651, !651, !651, !651, !651, !651, !651, !651, !651, !651, !651, !651, !651, !651, !651, !651, !651, !651, !651}
!llvm.module.flags = !{!652, !653, !654, !655, !656}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !3, line: 43, type: !62, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !29, globals: !37)
!3 = !DIFile(filename: "src/tsort.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
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
!29 = !{!30, !33, !34}
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!32 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !35, line: 62, baseType: !36)
!35 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!36 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!37 = !{!0, !38, !40, !58, !60}
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(name: "n_strings", scope: !2, file: !3, line: 79, type: !34, isLocal: true, isDefinition: true)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(name: "head", scope: !2, file: !3, line: 70, type: !42, isLocal: true, isDefinition: true)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "item", file: !3, line: 59, size: 448, elements: !44)
!44 = !{!45, !46, !47, !48, !50, !51, !52}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !43, file: !3, line: 61, baseType: !30, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !43, file: !3, line: 62, baseType: !42, size: 64, offset: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !43, file: !3, line: 62, baseType: !42, size: 64, offset: 128)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "balance", scope: !43, file: !3, line: 63, baseType: !49, size: 32, offset: 192)
!49 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !43, file: !3, line: 64, baseType: !34, size: 64, offset: 256)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "qlink", scope: !43, file: !3, line: 65, baseType: !42, size: 64, offset: 320)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !43, file: !3, line: 66, baseType: !53, size: 64, offset: 384)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "successor", file: !3, line: 52, size: 128, elements: !55)
!55 = !{!56, !57}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "suc", scope: !54, file: !3, line: 54, baseType: !42, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !54, file: !3, line: 55, baseType: !53, size: 64, offset: 64)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(name: "zeros", scope: !2, file: !3, line: 73, type: !42, isLocal: true, isDefinition: true)
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(name: "loop", scope: !2, file: !3, line: 76, type: !42, isLocal: true, isDefinition: true)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 256, elements: !72)
!63 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !65, line: 50, size: 256, elements: !66)
!65 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!66 = !{!67, !68, !69, !71}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !64, file: !65, line: 52, baseType: !30, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !64, file: !65, line: 55, baseType: !49, size: 32, offset: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !64, file: !65, line: 56, baseType: !70, size: 64, offset: 128)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !64, file: !65, line: 57, baseType: !49, size: 32, offset: 192)
!72 = !{!73}
!73 = !DISubrange(count: 1)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(name: "Version", scope: !76, file: !77, line: 2, type: !30, isLocal: false, isDefinition: true)
!76 = distinct !DICompileUnit(language: DW_LANG_C99, file: !77, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !78, globals: !79)
!77 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!78 = !{}
!79 = !{!74}
!80 = !DIGlobalVariableExpression(var: !81, expr: !DIExpression())
!81 = distinct !DIGlobalVariable(name: "file_name", scope: !82, file: !87, line: 46, type: !30, isLocal: true, isDefinition: true)
!82 = distinct !DICompileUnit(language: DW_LANG_C99, file: !83, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !78, globals: !84)
!83 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!84 = !{!80, !85}
!85 = !DIGlobalVariableExpression(var: !86, expr: !DIExpression())
!86 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !82, file: !87, line: 56, type: !88, isLocal: true, isDefinition: true)
!87 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!88 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!89 = !DIGlobalVariableExpression(var: !90, expr: !DIExpression())
!90 = distinct !DIGlobalVariable(name: "exit_failure", scope: !91, file: !94, line: 24, type: !95, isLocal: false, isDefinition: true)
!91 = distinct !DICompileUnit(language: DW_LANG_C99, file: !92, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !78, globals: !93)
!92 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!93 = !{!89}
!94 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!95 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !49)
!96 = !DIGlobalVariableExpression(var: !97, expr: !DIExpression())
!97 = distinct !DIGlobalVariable(name: "long_options", scope: !98, file: !101, line: 33, type: !102, isLocal: true, isDefinition: true)
!98 = distinct !DICompileUnit(language: DW_LANG_C99, file: !99, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !78, globals: !100)
!99 = !DIFile(filename: "./lib/long-options.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!100 = !{!96}
!101 = !DIFile(filename: "lib/long-options.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 768, elements: !110)
!103 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !104)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !65, line: 50, size: 256, elements: !105)
!105 = !{!106, !107, !108, !109}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !104, file: !65, line: 52, baseType: !30, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !104, file: !65, line: 55, baseType: !49, size: 32, offset: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !104, file: !65, line: 56, baseType: !70, size: 64, offset: 128)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !104, file: !65, line: 57, baseType: !49, size: 32, offset: 192)
!110 = !{!111}
!111 = !DISubrange(count: 3)
!112 = !DIGlobalVariableExpression(var: !113, expr: !DIExpression())
!113 = distinct !DIGlobalVariable(name: "program_name", scope: !114, file: !119, line: 33, type: !30, isLocal: false, isDefinition: true)
!114 = distinct !DICompileUnit(language: DW_LANG_C99, file: !115, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !78, retainedTypes: !116, globals: !118)
!115 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!116 = !{!33, !117}
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!118 = !{!112}
!119 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!120 = !DIGlobalVariableExpression(var: !121, expr: !DIExpression())
!121 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !122, file: !150, line: 85, type: !185, isLocal: false, isDefinition: true)
!122 = distinct !DICompileUnit(language: DW_LANG_C99, file: !123, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !124, retainedTypes: !145, globals: !147)
!123 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!124 = !{!5, !125, !130}
!125 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 242, baseType: !7, size: 32, elements: !126)
!126 = !{!127, !128, !129}
!127 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!128 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!129 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!130 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !131, line: 46, baseType: !7, size: 32, elements: !132)
!131 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!132 = !{!133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144}
!133 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!134 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!135 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!136 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!137 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!138 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!139 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!140 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!141 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!142 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!143 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!144 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!145 = !{!49, !146, !34, !117}
!146 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!147 = !{!120, !148, !155, !167, !169, !174, !181, !183}
!148 = !DIGlobalVariableExpression(var: !149, expr: !DIExpression())
!149 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !122, file: !150, line: 101, type: !151, isLocal: false, isDefinition: true)
!150 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 320, elements: !153)
!152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!153 = !{!154}
!154 = !DISubrange(count: 10)
!155 = !DIGlobalVariableExpression(var: !156, expr: !DIExpression())
!156 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !122, file: !150, line: 1052, type: !157, isLocal: false, isDefinition: true)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !150, line: 65, size: 448, elements: !158)
!158 = !{!159, !160, !161, !165, !166}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !157, file: !150, line: 68, baseType: !5, size: 32)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !157, file: !150, line: 71, baseType: !49, size: 32, offset: 32)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !157, file: !150, line: 75, baseType: !162, size: 256, offset: 64)
!162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !163)
!163 = !{!164}
!164 = !DISubrange(count: 8)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !157, file: !150, line: 78, baseType: !30, size: 64, offset: 320)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !157, file: !150, line: 81, baseType: !30, size: 64, offset: 384)
!167 = !DIGlobalVariableExpression(var: !168, expr: !DIExpression())
!168 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !122, file: !150, line: 116, type: !157, isLocal: true, isDefinition: true)
!169 = !DIGlobalVariableExpression(var: !170, expr: !DIExpression())
!170 = distinct !DIGlobalVariable(name: "slot0", scope: !122, file: !150, line: 842, type: !171, isLocal: true, isDefinition: true)
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 2048, elements: !172)
!172 = !{!173}
!173 = !DISubrange(count: 256)
!174 = !DIGlobalVariableExpression(var: !175, expr: !DIExpression())
!175 = distinct !DIGlobalVariable(name: "slotvec", scope: !122, file: !150, line: 845, type: !176, isLocal: true, isDefinition: true)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !150, line: 834, size: 128, elements: !178)
!178 = !{!179, !180}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !177, file: !150, line: 836, baseType: !34, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !177, file: !150, line: 837, baseType: !117, size: 64, offset: 64)
!181 = !DIGlobalVariableExpression(var: !182, expr: !DIExpression())
!182 = distinct !DIGlobalVariable(name: "nslots", scope: !122, file: !150, line: 843, type: !49, isLocal: true, isDefinition: true)
!183 = !DIGlobalVariableExpression(var: !184, expr: !DIExpression())
!184 = distinct !DIGlobalVariable(name: "slotvec0", scope: !122, file: !150, line: 844, type: !177, isLocal: true, isDefinition: true)
!185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !186, size: 704, elements: !187)
!186 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!187 = !{!188}
!188 = !DISubrange(count: 11)
!189 = !DIGlobalVariableExpression(var: !190, expr: !DIExpression())
!190 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !191, file: !194, line: 26, type: !195, isLocal: false, isDefinition: true)
!191 = distinct !DICompileUnit(language: DW_LANG_C99, file: !192, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !78, globals: !193)
!192 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!193 = !{!189}
!194 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 376, elements: !196)
!196 = !{!197}
!197 = !DISubrange(count: 47)
!198 = distinct !DICompileUnit(language: DW_LANG_C99, file: !199, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !200)
!199 = !DIFile(filename: "./lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!200 = !{!20}
!201 = distinct !DICompileUnit(language: DW_LANG_C99, file: !202, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !78)
!202 = !DIFile(filename: "./lib/freopen-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!203 = distinct !DICompileUnit(language: DW_LANG_C99, file: !204, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !205, retainedTypes: !223)
!204 = !DIFile(filename: "./lib/readtokens.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!205 = !{!206, !210}
!206 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !207, line: 51, baseType: !7, size: 32, elements: !208)
!207 = !DIFile(filename: "lib/readtokens.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!208 = !{!209}
!209 = !DIEnumerator(name: "bits_per_word", value: 64, isUnsigned: true)
!210 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !212, file: !211, line: 186, baseType: !7, size: 32, elements: !221)
!211 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!212 = distinct !DISubprogram(name: "x2nrealloc", scope: !211, file: !211, line: 174, type: !213, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !203, retainedNodes: !216)
!213 = !DISubroutineType(types: !214)
!214 = !{!33, !33, !215, !34}
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!216 = !{!217, !218, !219, !220}
!217 = !DILocalVariable(name: "p", arg: 1, scope: !212, file: !211, line: 174, type: !33)
!218 = !DILocalVariable(name: "pn", arg: 2, scope: !212, file: !211, line: 174, type: !215)
!219 = !DILocalVariable(name: "s", arg: 3, scope: !212, file: !211, line: 174, type: !34)
!220 = !DILocalVariable(name: "n", scope: !212, file: !211, line: 176, type: !34)
!221 = !{!222}
!222 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!223 = !{!34, !33, !224}
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!226 = distinct !DICompileUnit(language: DW_LANG_C99, file: !227, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !228, retainedTypes: !233)
!227 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!228 = !{!229}
!229 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !230, line: 41, baseType: !7, size: 32, elements: !231)
!230 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!231 = !{!232}
!232 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2018, isUnsigned: true)
!233 = !{!33}
!234 = distinct !DICompileUnit(language: DW_LANG_C99, file: !235, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !236, retainedTypes: !244)
!235 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!236 = !{!237}
!237 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !238, file: !211, line: 186, baseType: !7, size: 32, elements: !221)
!238 = distinct !DISubprogram(name: "x2nrealloc", scope: !211, file: !211, line: 174, type: !213, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !234, retainedNodes: !239)
!239 = !{!240, !241, !242, !243}
!240 = !DILocalVariable(name: "p", arg: 1, scope: !238, file: !211, line: 174, type: !33)
!241 = !DILocalVariable(name: "pn", arg: 2, scope: !238, file: !211, line: 174, type: !215)
!242 = !DILocalVariable(name: "s", arg: 3, scope: !238, file: !211, line: 174, type: !34)
!243 = !DILocalVariable(name: "n", scope: !238, file: !211, line: 176, type: !34)
!244 = !{!34, !117, !33}
!245 = distinct !DICompileUnit(language: DW_LANG_C99, file: !246, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !78)
!246 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!247 = distinct !DICompileUnit(language: DW_LANG_C99, file: !248, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !78, retainedTypes: !233)
!248 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!249 = distinct !DICompileUnit(language: DW_LANG_C99, file: !250, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !78)
!250 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!251 = distinct !DICompileUnit(language: DW_LANG_C99, file: !252, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !78, retainedTypes: !233)
!252 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!253 = distinct !DICompileUnit(language: DW_LANG_C99, file: !254, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !78, retainedTypes: !233)
!254 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!255 = distinct !DICompileUnit(language: DW_LANG_C99, file: !256, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !78, retainedTypes: !257)
!256 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!257 = !{!34}
!258 = distinct !DICompileUnit(language: DW_LANG_C99, file: !259, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !78)
!259 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!260 = distinct !DICompileUnit(language: DW_LANG_C99, file: !261, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !78)
!261 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!262 = distinct !DICompileUnit(language: DW_LANG_C99, file: !263, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !264, retainedTypes: !233)
!263 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!264 = !{!265}
!265 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !266, line: 41, baseType: !7, size: 32, elements: !267)
!266 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!267 = !{!268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650}
!268 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!269 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!270 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!271 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!272 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!273 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!274 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!275 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!276 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!277 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!278 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!279 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!280 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!281 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!282 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!283 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!284 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!285 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!286 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!287 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!288 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!289 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!290 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!291 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!292 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!293 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!294 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!295 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!296 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!297 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!298 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!299 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!300 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!301 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!302 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!303 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!304 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!305 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!306 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!307 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!308 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!309 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!310 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!311 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!312 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!313 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!314 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!315 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!316 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!317 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!318 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!319 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!320 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!321 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!322 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!323 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!324 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!325 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!326 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!327 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!328 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!329 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!330 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!331 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!332 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!333 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!334 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!335 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!336 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!337 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!338 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!339 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!340 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!341 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!342 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!343 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!344 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!345 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!346 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!347 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!348 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!349 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!350 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!351 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!352 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!353 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!354 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!355 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!356 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!357 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!358 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!359 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!360 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!361 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!362 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!363 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!364 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!365 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!366 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!367 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!368 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!369 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!370 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!371 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!372 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!373 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!374 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!375 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!376 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!377 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!378 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!379 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!380 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!381 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!382 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!383 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!384 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!385 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!386 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!387 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!388 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!389 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!390 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!391 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!392 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!393 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!394 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!395 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!396 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!400 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!405 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!406 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!408 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!409 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!410 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!411 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!412 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!413 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!414 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!415 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!416 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!417 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!418 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!419 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!420 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!421 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!435 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!456 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!457 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!458 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!459 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!460 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!461 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!462 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!463 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!465 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!466 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!468 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!469 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!473 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!474 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!475 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!476 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!477 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!478 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!479 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!481 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!482 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!483 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!484 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!485 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!486 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!487 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!488 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!489 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!490 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!491 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!492 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!493 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!494 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!495 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!496 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!497 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!498 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!499 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!500 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!501 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!502 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!503 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!504 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!505 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!506 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!507 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!508 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!509 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!510 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!511 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!512 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!513 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!514 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!515 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!516 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!517 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!519 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!520 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!521 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!522 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!523 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!524 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!525 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!526 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!527 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!528 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!529 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!530 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!531 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!532 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!535 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!536 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!537 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!538 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!539 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!540 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!541 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!542 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!543 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!544 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!545 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!546 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!547 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!548 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!549 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!550 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!551 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!552 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!553 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!554 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!555 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!556 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!557 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!559 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!560 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!567 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!568 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!571 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!572 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!573 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!574 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!575 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!576 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!577 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!578 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!579 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!580 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!581 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!582 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!583 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!584 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!585 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!586 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!587 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!588 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!589 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!590 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!591 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!592 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!593 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!594 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!595 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!596 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!597 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!598 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!599 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!600 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!601 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!602 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!603 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!604 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!605 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!606 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!607 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!608 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!609 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!610 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!611 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!612 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!613 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!614 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!615 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!616 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!617 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!618 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!619 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!620 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!621 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!622 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!623 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!624 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!625 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!626 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!627 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!628 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!629 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!630 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!631 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!632 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!633 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!634 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!635 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!636 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!637 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!638 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!639 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!640 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!641 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!642 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!643 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!644 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!645 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!646 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!647 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!648 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!649 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!650 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!651 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!652 = !{i32 2, !"Dwarf Version", i32 4}
!653 = !{i32 2, !"Debug Info Version", i32 3}
!654 = !{i32 1, !"wchar_size", i32 4}
!655 = !{i32 7, !"PIC Level", i32 2}
!656 = !{i32 7, !"PIE Level", i32 2}
!657 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 82, type: !658, isLocal: false, isDefinition: true, scopeLine: 83, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, retainedNodes: !660)
!658 = !DISubroutineType(types: !659)
!659 = !{null, !49}
!660 = !{!661}
!661 = !DILocalVariable(name: "status", arg: 1, scope: !657, file: !3, line: 82, type: !49)
!662 = !DILocalVariable(name: "infomap", scope: !663, file: !664, line: 632, type: !678)
!663 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !664, file: !664, line: 630, type: !665, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !667)
!664 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!665 = !DISubroutineType(types: !666)
!666 = !{null, !30}
!667 = !{!668, !662, !669, !670, !677}
!668 = !DILocalVariable(name: "program", arg: 1, scope: !663, file: !664, line: 630, type: !30)
!669 = !DILocalVariable(name: "node", scope: !663, file: !664, line: 642, type: !30)
!670 = !DILocalVariable(name: "map_prog", scope: !663, file: !664, line: 643, type: !671)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !673)
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !663, file: !664, line: 632, size: 128, elements: !674)
!674 = !{!675, !676}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !673, file: !664, line: 632, baseType: !30, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !673, file: !664, line: 632, baseType: !30, size: 64, offset: 64)
!677 = !DILocalVariable(name: "lc_messages", scope: !663, file: !664, line: 655, type: !30)
!678 = !DICompositeType(tag: DW_TAG_array_type, baseType: !672, size: 896, elements: !679)
!679 = !{!680}
!680 = !DISubrange(count: 7)
!681 = !DILocation(line: 632, column: 67, scope: !663, inlinedAt: !682)
!682 = distinct !DILocation(line: 100, column: 7, scope: !683)
!683 = distinct !DILexicalBlock(scope: !684, file: !3, line: 87, column: 5)
!684 = distinct !DILexicalBlock(scope: !657, file: !3, line: 84, column: 7)
!685 = !DILocation(line: 82, column: 12, scope: !657)
!686 = !DILocation(line: 84, column: 14, scope: !684)
!687 = !DILocation(line: 84, column: 7, scope: !657)
!688 = !DILocation(line: 85, column: 5, scope: !689)
!689 = distinct !DILexicalBlock(scope: !684, file: !3, line: 85, column: 5)
!690 = !{!691, !691, i64 0}
!691 = !{!"any pointer", !692, i64 0}
!692 = !{!"omnipotent char", !693, i64 0}
!693 = !{!"Simple C/C++ TBAA"}
!694 = !DILocation(line: 88, column: 7, scope: !683)
!695 = !DILocation(line: 580, column: 3, scope: !696, inlinedAt: !699)
!696 = distinct !DISubprogram(name: "emit_stdin_note", scope: !664, file: !664, line: 578, type: !697, isLocal: true, isDefinition: true, scopeLine: 579, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !78)
!697 = !DISubroutineType(types: !698)
!698 = !{null}
!699 = distinct !DILocation(line: 93, column: 7, scope: !683)
!700 = !DILocation(line: 95, column: 7, scope: !683)
!701 = !DILocation(line: 98, column: 7, scope: !683)
!702 = !DILocation(line: 99, column: 7, scope: !683)
!703 = !DILocation(line: 632, column: 3, scope: !663, inlinedAt: !682)
!704 = !DILocation(line: 643, column: 36, scope: !663, inlinedAt: !682)
!705 = !DILocation(line: 643, column: 25, scope: !663, inlinedAt: !682)
!706 = !DILocation(line: 645, column: 33, scope: !663, inlinedAt: !682)
!707 = !DILocation(line: 645, column: 3, scope: !663, inlinedAt: !682)
!708 = !DILocation(line: 646, column: 13, scope: !663, inlinedAt: !682)
!709 = !DILocation(line: 645, column: 20, scope: !663, inlinedAt: !682)
!710 = !{!711, !691, i64 0}
!711 = !{!"infomap", !691, i64 0, !691, i64 8}
!712 = !DILocation(line: 645, column: 10, scope: !663, inlinedAt: !682)
!713 = !DILocation(line: 645, column: 28, scope: !663, inlinedAt: !682)
!714 = distinct !{!714, !715, !716}
!715 = !DILocation(line: 645, column: 3, scope: !663)
!716 = !DILocation(line: 646, column: 13, scope: !663)
!717 = !DILocation(line: 648, column: 17, scope: !718, inlinedAt: !682)
!718 = distinct !DILexicalBlock(scope: !663, file: !664, line: 648, column: 7)
!719 = !{!711, !691, i64 8}
!720 = !DILocation(line: 648, column: 7, scope: !718, inlinedAt: !682)
!721 = !DILocation(line: 648, column: 7, scope: !663, inlinedAt: !682)
!722 = !DILocation(line: 642, column: 15, scope: !663, inlinedAt: !682)
!723 = !DILocation(line: 651, column: 3, scope: !663, inlinedAt: !682)
!724 = !DILocation(line: 655, column: 29, scope: !663, inlinedAt: !682)
!725 = !DILocation(line: 655, column: 15, scope: !663, inlinedAt: !682)
!726 = !DILocation(line: 656, column: 7, scope: !727, inlinedAt: !682)
!727 = distinct !DILexicalBlock(scope: !663, file: !664, line: 656, column: 7)
!728 = !DILocation(line: 656, column: 19, scope: !727, inlinedAt: !682)
!729 = !DILocation(line: 656, column: 22, scope: !727, inlinedAt: !682)
!730 = !DILocation(line: 656, column: 7, scope: !663, inlinedAt: !682)
!731 = !DILocation(line: 662, column: 7, scope: !732, inlinedAt: !682)
!732 = distinct !DILexicalBlock(scope: !727, file: !664, line: 657, column: 5)
!733 = !DILocation(line: 664, column: 5, scope: !732, inlinedAt: !682)
!734 = !DILocation(line: 665, column: 3, scope: !663, inlinedAt: !682)
!735 = !DILocation(line: 667, column: 3, scope: !663, inlinedAt: !682)
!736 = !DILocation(line: 669, column: 1, scope: !663, inlinedAt: !682)
!737 = !DILocation(line: 103, column: 3, scope: !657)
!738 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 547, type: !739, isLocal: false, isDefinition: true, scopeLine: 548, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !742)
!739 = !DISubroutineType(types: !740)
!740 = !{!49, !49, !741}
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!742 = !{!743, !744, !745}
!743 = !DILocalVariable(name: "argc", arg: 1, scope: !738, file: !3, line: 547, type: !49)
!744 = !DILocalVariable(name: "argv", arg: 2, scope: !738, file: !3, line: 547, type: !741)
!745 = !DILocalVariable(name: "ok", scope: !738, file: !3, line: 549, type: !88)
!746 = !DILocation(line: 547, column: 11, scope: !738)
!747 = !DILocation(line: 547, column: 24, scope: !738)
!748 = !DILocation(line: 552, column: 21, scope: !738)
!749 = !DILocation(line: 552, column: 3, scope: !738)
!750 = !DILocation(line: 553, column: 3, scope: !738)
!751 = !DILocation(line: 554, column: 3, scope: !738)
!752 = !DILocation(line: 555, column: 3, scope: !738)
!753 = !DILocation(line: 557, column: 3, scope: !738)
!754 = !DILocation(line: 559, column: 58, scope: !738)
!755 = !DILocation(line: 559, column: 3, scope: !738)
!756 = !DILocation(line: 561, column: 7, scope: !757)
!757 = distinct !DILexicalBlock(scope: !738, file: !3, line: 561, column: 7)
!758 = !DILocation(line: 561, column: 56, scope: !757)
!759 = !DILocation(line: 561, column: 7, scope: !738)
!760 = !DILocation(line: 562, column: 5, scope: !757)
!761 = !DILocation(line: 564, column: 18, scope: !762)
!762 = distinct !DILexicalBlock(scope: !738, file: !3, line: 564, column: 7)
!763 = !{!764, !764, i64 0}
!764 = !{!"int", !692, i64 0}
!765 = !DILocation(line: 564, column: 16, scope: !762)
!766 = !DILocation(line: 564, column: 9, scope: !762)
!767 = !DILocation(line: 564, column: 7, scope: !738)
!768 = !DILocation(line: 566, column: 20, scope: !769)
!769 = distinct !DILexicalBlock(scope: !762, file: !3, line: 565, column: 5)
!770 = !DILocation(line: 566, column: 55, scope: !769)
!771 = !DILocation(line: 566, column: 62, scope: !769)
!772 = !DILocation(line: 566, column: 50, scope: !769)
!773 = !DILocation(line: 566, column: 43, scope: !769)
!774 = !DILocation(line: 566, column: 7, scope: !769)
!775 = !DILocation(line: 567, column: 7, scope: !769)
!776 = !DILocation(line: 570, column: 22, scope: !738)
!777 = !DILocation(line: 570, column: 15, scope: !738)
!778 = !DILocation(line: 570, column: 38, scope: !738)
!779 = !DILocalVariable(name: "file", arg: 1, scope: !780, file: !3, line: 441, type: !30)
!780 = distinct !DISubprogram(name: "tsort", scope: !3, file: !3, line: 441, type: !781, isLocal: true, isDefinition: true, scopeLine: 442, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !783)
!781 = !DISubroutineType(types: !782)
!782 = !{!88, !30}
!783 = !{!779, !784, !785, !786, !787, !788, !795, !796, !798}
!784 = !DILocalVariable(name: "ok", scope: !780, file: !3, line: 443, type: !88)
!785 = !DILocalVariable(name: "root", scope: !780, file: !3, line: 444, type: !42)
!786 = !DILocalVariable(name: "j", scope: !780, file: !3, line: 445, type: !42)
!787 = !DILocalVariable(name: "k", scope: !780, file: !3, line: 446, type: !42)
!788 = !DILocalVariable(name: "tokenbuffer", scope: !780, file: !3, line: 447, type: !789)
!789 = !DIDerivedType(tag: DW_TAG_typedef, name: "token_buffer", file: !790, line: 31, baseType: !791)
!790 = !DIFile(filename: "./lib/readtokens.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tokenbuffer", file: !790, line: 26, size: 128, elements: !792)
!792 = !{!793, !794}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !791, file: !790, line: 28, baseType: !34, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !791, file: !790, line: 29, baseType: !117, size: 64, offset: 64)
!795 = !DILocalVariable(name: "is_stdin", scope: !780, file: !3, line: 448, type: !88)
!796 = !DILocalVariable(name: "len", scope: !797, file: !3, line: 463, type: !34)
!797 = distinct !DILexicalBlock(scope: !780, file: !3, line: 461, column: 5)
!798 = !DILocalVariable(name: "p", scope: !799, file: !3, line: 494, type: !53)
!799 = distinct !DILexicalBlock(scope: !800, file: !3, line: 493, column: 9)
!800 = distinct !DILexicalBlock(scope: !780, file: !3, line: 488, column: 5)
!801 = !DILocation(line: 441, column: 20, scope: !780, inlinedAt: !802)
!802 = distinct !DILocation(line: 570, column: 8, scope: !738)
!803 = !DILocation(line: 443, column: 8, scope: !780, inlinedAt: !802)
!804 = !DILocation(line: 445, column: 16, scope: !780, inlinedAt: !802)
!805 = !DILocation(line: 446, column: 16, scope: !780, inlinedAt: !802)
!806 = !DILocation(line: 447, column: 3, scope: !780, inlinedAt: !802)
!807 = !DILocation(line: 448, column: 19, scope: !780, inlinedAt: !802)
!808 = !DILocalVariable(name: "str", arg: 1, scope: !809, file: !3, line: 108, type: !30)
!809 = distinct !DISubprogram(name: "new_item", scope: !3, file: !3, line: 108, type: !810, isLocal: true, isDefinition: true, scopeLine: 109, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !812)
!810 = !DISubroutineType(types: !811)
!811 = !{!42, !30}
!812 = !{!808, !813}
!813 = !DILocalVariable(name: "k", scope: !809, file: !3, line: 110, type: !42)
!814 = !DILocation(line: 108, column: 23, scope: !809, inlinedAt: !815)
!815 = distinct !DILocation(line: 451, column: 10, scope: !780, inlinedAt: !802)
!816 = !DILocation(line: 110, column: 20, scope: !809, inlinedAt: !815)
!817 = !DILocation(line: 110, column: 16, scope: !809, inlinedAt: !815)
!818 = !DILocation(line: 117, column: 6, scope: !809, inlinedAt: !815)
!819 = !DILocation(line: 117, column: 12, scope: !809, inlinedAt: !815)
!820 = !DILocation(line: 444, column: 16, scope: !780, inlinedAt: !802)
!821 = !DILocation(line: 113, column: 11, scope: !809, inlinedAt: !815)
!822 = !DILocation(line: 453, column: 17, scope: !823, inlinedAt: !802)
!823 = distinct !DILexicalBlock(scope: !780, file: !3, line: 453, column: 7)
!824 = !DILocation(line: 453, column: 42, scope: !823, inlinedAt: !802)
!825 = !DILocation(line: 453, column: 22, scope: !823, inlinedAt: !802)
!826 = !DILocation(line: 453, column: 7, scope: !780, inlinedAt: !802)
!827 = !DILocation(line: 454, column: 5, scope: !823, inlinedAt: !802)
!828 = !DILocation(line: 456, column: 12, scope: !780, inlinedAt: !802)
!829 = !DILocation(line: 456, column: 3, scope: !780, inlinedAt: !802)
!830 = !DILocation(line: 447, column: 16, scope: !780, inlinedAt: !802)
!831 = !DILocation(line: 458, column: 3, scope: !780, inlinedAt: !802)
!832 = !DILocation(line: 460, column: 3, scope: !780, inlinedAt: !802)
!833 = !DILocation(line: 463, column: 31, scope: !797, inlinedAt: !802)
!834 = !DILocation(line: 463, column: 20, scope: !797, inlinedAt: !802)
!835 = !DILocation(line: 463, column: 14, scope: !797, inlinedAt: !802)
!836 = !DILocation(line: 464, column: 11, scope: !797, inlinedAt: !802)
!837 = !DILocation(line: 467, column: 7, scope: !838, inlinedAt: !802)
!838 = distinct !DILexicalBlock(scope: !839, file: !3, line: 467, column: 7)
!839 = distinct !DILexicalBlock(scope: !797, file: !3, line: 467, column: 7)
!840 = !DILocation(line: 469, column: 42, scope: !797, inlinedAt: !802)
!841 = !{!842, !691, i64 8}
!842 = !{!"tokenbuffer", !843, i64 0, !691, i64 8}
!843 = !{!"long", !692, i64 0}
!844 = !DILocalVariable(name: "root", arg: 1, scope: !845, file: !3, line: 133, type: !42)
!845 = distinct !DISubprogram(name: "search_item", scope: !3, file: !3, line: 133, type: !846, isLocal: true, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !848)
!846 = !DISubroutineType(types: !847)
!847 = !{!42, !42, !30}
!848 = !{!844, !849, !850, !851, !852, !853, !854, !855}
!849 = !DILocalVariable(name: "str", arg: 2, scope: !845, file: !3, line: 133, type: !30)
!850 = !DILocalVariable(name: "p", scope: !845, file: !3, line: 135, type: !42)
!851 = !DILocalVariable(name: "q", scope: !845, file: !3, line: 135, type: !42)
!852 = !DILocalVariable(name: "r", scope: !845, file: !3, line: 135, type: !42)
!853 = !DILocalVariable(name: "s", scope: !845, file: !3, line: 135, type: !42)
!854 = !DILocalVariable(name: "t", scope: !845, file: !3, line: 135, type: !42)
!855 = !DILocalVariable(name: "a", scope: !845, file: !3, line: 136, type: !49)
!856 = !DILocation(line: 133, column: 27, scope: !845, inlinedAt: !857)
!857 = distinct !DILocation(line: 469, column: 11, scope: !797, inlinedAt: !802)
!858 = !DILocation(line: 133, column: 45, scope: !845, inlinedAt: !857)
!859 = !DILocation(line: 138, column: 3, scope: !860, inlinedAt: !857)
!860 = distinct !DILexicalBlock(scope: !845, file: !3, line: 138, column: 3)
!861 = !DILocation(line: 138, column: 3, scope: !862, inlinedAt: !857)
!862 = distinct !DILexicalBlock(scope: !860, file: !3, line: 138, column: 3)
!863 = !DILocation(line: 142, column: 13, scope: !864, inlinedAt: !857)
!864 = distinct !DILexicalBlock(scope: !845, file: !3, line: 142, column: 7)
!865 = !{!866, !691, i64 16}
!866 = !{!"item", !691, i64 0, !691, i64 8, !691, i64 16, !764, i64 24, !843, i64 32, !691, i64 40, !691, i64 48}
!867 = !DILocation(line: 142, column: 19, scope: !864, inlinedAt: !857)
!868 = !DILocation(line: 142, column: 7, scope: !845, inlinedAt: !857)
!869 = !DILocation(line: 135, column: 32, scope: !845, inlinedAt: !857)
!870 = !DILocation(line: 135, column: 28, scope: !845, inlinedAt: !857)
!871 = !DILocation(line: 135, column: 16, scope: !845, inlinedAt: !857)
!872 = !DILocation(line: 152, column: 27, scope: !873, inlinedAt: !857)
!873 = distinct !DILexicalBlock(scope: !845, file: !3, line: 150, column: 5)
!874 = !{!866, !691, i64 0}
!875 = !DILocation(line: 152, column: 11, scope: !873, inlinedAt: !857)
!876 = !DILocation(line: 136, column: 7, scope: !845, inlinedAt: !857)
!877 = !DILocation(line: 153, column: 13, scope: !878, inlinedAt: !857)
!878 = distinct !DILexicalBlock(scope: !873, file: !3, line: 153, column: 11)
!879 = !DILocation(line: 153, column: 11, scope: !873, inlinedAt: !857)
!880 = !DILocation(line: 108, column: 23, scope: !809, inlinedAt: !881)
!881 = distinct !DILocation(line: 143, column: 27, scope: !864, inlinedAt: !857)
!882 = !DILocation(line: 110, column: 20, scope: !809, inlinedAt: !881)
!883 = !DILocation(line: 110, column: 16, scope: !809, inlinedAt: !881)
!884 = !DILocation(line: 112, column: 13, scope: !809, inlinedAt: !881)
!885 = !DILocation(line: 112, column: 19, scope: !809, inlinedAt: !881)
!886 = !DILocation(line: 112, column: 6, scope: !809, inlinedAt: !881)
!887 = !DILocation(line: 112, column: 10, scope: !809, inlinedAt: !881)
!888 = !DILocation(line: 113, column: 6, scope: !809, inlinedAt: !881)
!889 = !DILocation(line: 117, column: 6, scope: !809, inlinedAt: !881)
!890 = !DILocation(line: 113, column: 11, scope: !809, inlinedAt: !881)
!891 = !DILocation(line: 117, column: 12, scope: !809, inlinedAt: !881)
!892 = !DILocation(line: 143, column: 25, scope: !864, inlinedAt: !857)
!893 = !DILocation(line: 143, column: 5, scope: !864, inlinedAt: !857)
!894 = !DILocation(line: 157, column: 13, scope: !895, inlinedAt: !857)
!895 = distinct !DILexicalBlock(scope: !873, file: !3, line: 157, column: 11)
!896 = !DILocation(line: 158, column: 16, scope: !895, inlinedAt: !857)
!897 = !DILocation(line: 135, column: 20, scope: !845, inlinedAt: !857)
!898 = !DILocation(line: 160, column: 16, scope: !895, inlinedAt: !857)
!899 = !DILocation(line: 157, column: 11, scope: !873, inlinedAt: !857)
!900 = !DILocation(line: 0, scope: !895, inlinedAt: !857)
!901 = !DILocation(line: 162, column: 13, scope: !902, inlinedAt: !857)
!902 = distinct !DILexicalBlock(scope: !873, file: !3, line: 162, column: 11)
!903 = !DILocation(line: 162, column: 11, scope: !873, inlinedAt: !857)
!904 = !DILocation(line: 108, column: 23, scope: !809, inlinedAt: !905)
!905 = distinct !DILocation(line: 165, column: 15, scope: !906, inlinedAt: !857)
!906 = distinct !DILexicalBlock(scope: !902, file: !3, line: 163, column: 9)
!907 = !DILocation(line: 110, column: 20, scope: !809, inlinedAt: !905)
!908 = !DILocation(line: 110, column: 16, scope: !809, inlinedAt: !905)
!909 = !DILocation(line: 112, column: 13, scope: !809, inlinedAt: !905)
!910 = !DILocation(line: 112, column: 19, scope: !809, inlinedAt: !905)
!911 = !DILocation(line: 112, column: 6, scope: !809, inlinedAt: !905)
!912 = !DILocation(line: 112, column: 10, scope: !809, inlinedAt: !905)
!913 = !DILocation(line: 113, column: 6, scope: !809, inlinedAt: !905)
!914 = !DILocation(line: 117, column: 6, scope: !809, inlinedAt: !905)
!915 = !DILocation(line: 113, column: 11, scope: !809, inlinedAt: !905)
!916 = !DILocation(line: 117, column: 12, scope: !809, inlinedAt: !905)
!917 = !DILocation(line: 168, column: 15, scope: !906, inlinedAt: !857)
!918 = !DILocation(line: 0, scope: !797, inlinedAt: !802)
!919 = !DILocation(line: 174, column: 11, scope: !920, inlinedAt: !857)
!920 = distinct !DILexicalBlock(scope: !921, file: !3, line: 174, column: 11)
!921 = distinct !DILexicalBlock(scope: !906, file: !3, line: 174, column: 11)
!922 = !DILocation(line: 174, column: 11, scope: !921, inlinedAt: !857)
!923 = !DILocation(line: 175, column: 36, scope: !924, inlinedAt: !857)
!924 = distinct !DILexicalBlock(scope: !906, file: !3, line: 175, column: 15)
!925 = !DILocation(line: 177, column: 26, scope: !926, inlinedAt: !857)
!926 = distinct !DILexicalBlock(scope: !924, file: !3, line: 176, column: 13)
!927 = !DILocation(line: 135, column: 24, scope: !845, inlinedAt: !857)
!928 = !DILocation(line: 182, column: 26, scope: !929, inlinedAt: !857)
!929 = distinct !DILexicalBlock(scope: !924, file: !3, line: 181, column: 13)
!930 = !DILocation(line: 175, column: 15, scope: !906, inlinedAt: !857)
!931 = !DILocation(line: 0, scope: !929, inlinedAt: !857)
!932 = !DILocation(line: 186, column: 20, scope: !906, inlinedAt: !857)
!933 = !DILocation(line: 186, column: 11, scope: !906, inlinedAt: !857)
!934 = !DILocation(line: 188, column: 15, scope: !935, inlinedAt: !857)
!935 = distinct !DILexicalBlock(scope: !936, file: !3, line: 188, column: 15)
!936 = distinct !DILexicalBlock(scope: !937, file: !3, line: 188, column: 15)
!937 = distinct !DILexicalBlock(scope: !906, file: !3, line: 187, column: 13)
!938 = !DILocation(line: 188, column: 15, scope: !936, inlinedAt: !857)
!939 = !DILocation(line: 189, column: 40, scope: !940, inlinedAt: !857)
!940 = distinct !DILexicalBlock(scope: !937, file: !3, line: 189, column: 19)
!941 = !DILocation(line: 0, scope: !942, inlinedAt: !857)
!942 = distinct !DILexicalBlock(scope: !940, file: !3, line: 195, column: 17)
!943 = !DILocation(line: 189, column: 19, scope: !937, inlinedAt: !857)
!944 = !DILocation(line: 191, column: 30, scope: !945, inlinedAt: !857)
!945 = distinct !DILexicalBlock(scope: !940, file: !3, line: 190, column: 17)
!946 = !{!866, !764, i64 24}
!947 = !DILocation(line: 192, column: 26, scope: !945, inlinedAt: !857)
!948 = !DILocation(line: 193, column: 17, scope: !945, inlinedAt: !857)
!949 = !DILocation(line: 196, column: 30, scope: !942, inlinedAt: !857)
!950 = !DILocation(line: 197, column: 26, scope: !942, inlinedAt: !857)
!951 = distinct !{!951, !952, !953}
!952 = !DILocation(line: 186, column: 11, scope: !906)
!953 = !DILocation(line: 199, column: 13, scope: !906)
!954 = !DILocation(line: 202, column: 18, scope: !955, inlinedAt: !857)
!955 = distinct !DILexicalBlock(scope: !906, file: !3, line: 202, column: 15)
!956 = !DILocation(line: 202, column: 26, scope: !955, inlinedAt: !857)
!957 = !DILocation(line: 202, column: 31, scope: !955, inlinedAt: !857)
!958 = !DILocation(line: 202, column: 48, scope: !955, inlinedAt: !857)
!959 = !DILocation(line: 202, column: 45, scope: !955, inlinedAt: !857)
!960 = !DILocation(line: 202, column: 15, scope: !906, inlinedAt: !857)
!961 = !DILocation(line: 204, column: 26, scope: !962, inlinedAt: !857)
!962 = distinct !DILexicalBlock(scope: !955, file: !3, line: 203, column: 13)
!963 = !DILocation(line: 205, column: 15, scope: !962, inlinedAt: !857)
!964 = !DILocation(line: 208, column: 18, scope: !965, inlinedAt: !857)
!965 = distinct !DILexicalBlock(scope: !906, file: !3, line: 208, column: 15)
!966 = !DILocation(line: 208, column: 26, scope: !965, inlinedAt: !857)
!967 = !DILocation(line: 208, column: 15, scope: !906, inlinedAt: !857)
!968 = !DILocation(line: 219, column: 33, scope: !969, inlinedAt: !857)
!969 = distinct !DILexicalBlock(scope: !970, file: !3, line: 218, column: 17)
!970 = distinct !DILexicalBlock(scope: !971, file: !3, line: 212, column: 19)
!971 = distinct !DILexicalBlock(scope: !965, file: !3, line: 209, column: 13)
!972 = !DILocation(line: 214, column: 32, scope: !973, inlinedAt: !857)
!973 = distinct !DILexicalBlock(scope: !970, file: !3, line: 213, column: 17)
!974 = !DILocation(line: 212, column: 19, scope: !971, inlinedAt: !857)
!975 = !DILocation(line: 222, column: 39, scope: !971, inlinedAt: !857)
!976 = !DILocation(line: 223, column: 13, scope: !971, inlinedAt: !857)
!977 = !DILocation(line: 227, column: 19, scope: !978, inlinedAt: !857)
!978 = distinct !DILexicalBlock(scope: !965, file: !3, line: 225, column: 13)
!979 = !DILocation(line: 229, column: 26, scope: !980, inlinedAt: !857)
!980 = distinct !DILexicalBlock(scope: !981, file: !3, line: 228, column: 17)
!981 = distinct !DILexicalBlock(scope: !978, file: !3, line: 227, column: 19)
!982 = !DILocation(line: 230, column: 33, scope: !980, inlinedAt: !857)
!983 = !{!866, !691, i64 8}
!984 = !DILocation(line: 230, column: 28, scope: !980, inlinedAt: !857)
!985 = !DILocation(line: 231, column: 27, scope: !980, inlinedAt: !857)
!986 = !DILocation(line: 232, column: 32, scope: !980, inlinedAt: !857)
!987 = !DILocation(line: 234, column: 17, scope: !980, inlinedAt: !857)
!988 = !DILocation(line: 237, column: 26, scope: !989, inlinedAt: !857)
!989 = distinct !DILexicalBlock(scope: !981, file: !3, line: 236, column: 17)
!990 = !DILocation(line: 238, column: 32, scope: !989, inlinedAt: !857)
!991 = !DILocation(line: 238, column: 27, scope: !989, inlinedAt: !857)
!992 = !DILocation(line: 239, column: 28, scope: !989, inlinedAt: !857)
!993 = !DILocation(line: 240, column: 33, scope: !989, inlinedAt: !857)
!994 = !DILocation(line: 0, scope: !989, inlinedAt: !857)
!995 = !DILocation(line: 244, column: 26, scope: !978, inlinedAt: !857)
!996 = !DILocation(line: 245, column: 26, scope: !978, inlinedAt: !857)
!997 = !DILocation(line: 246, column: 22, scope: !998, inlinedAt: !857)
!998 = distinct !DILexicalBlock(scope: !978, file: !3, line: 246, column: 19)
!999 = !DILocation(line: 246, column: 30, scope: !998, inlinedAt: !857)
!1000 = !DILocation(line: 246, column: 19, scope: !978, inlinedAt: !857)
!1001 = !DILocation(line: 247, column: 28, scope: !998, inlinedAt: !857)
!1002 = !DILocation(line: 247, column: 17, scope: !998, inlinedAt: !857)
!1003 = !DILocation(line: 248, column: 35, scope: !1004, inlinedAt: !857)
!1004 = distinct !DILexicalBlock(scope: !998, file: !3, line: 248, column: 24)
!1005 = !DILocation(line: 248, column: 24, scope: !998, inlinedAt: !857)
!1006 = !DILocation(line: 249, column: 28, scope: !1004, inlinedAt: !857)
!1007 = !DILocation(line: 249, column: 17, scope: !1004, inlinedAt: !857)
!1008 = !DILocation(line: 0, scope: !980, inlinedAt: !857)
!1009 = !DILocation(line: 254, column: 23, scope: !1010, inlinedAt: !857)
!1010 = distinct !DILexicalBlock(scope: !906, file: !3, line: 254, column: 15)
!1011 = !DILocation(line: 254, column: 17, scope: !1010, inlinedAt: !857)
!1012 = !DILocation(line: 254, column: 15, scope: !906, inlinedAt: !857)
!1013 = !DILocation(line: 255, column: 22, scope: !1010, inlinedAt: !857)
!1014 = !DILocation(line: 255, column: 13, scope: !1010, inlinedAt: !857)
!1015 = !DILocation(line: 257, column: 16, scope: !1010, inlinedAt: !857)
!1016 = !DILocation(line: 257, column: 21, scope: !1010, inlinedAt: !857)
!1017 = !DILocation(line: 263, column: 14, scope: !1018, inlinedAt: !857)
!1018 = distinct !DILexicalBlock(scope: !873, file: !3, line: 263, column: 11)
!1019 = !DILocation(line: 263, column: 11, scope: !1018, inlinedAt: !857)
!1020 = !DILocation(line: 263, column: 11, scope: !873, inlinedAt: !857)
!1021 = distinct !{!1021, !1022, !1023}
!1022 = !DILocation(line: 149, column: 3, scope: !845)
!1023 = !DILocation(line: 270, column: 5, scope: !845)
!1024 = !DILocation(line: 0, scope: !906, inlinedAt: !857)
!1025 = !DILocation(line: 470, column: 11, scope: !1026, inlinedAt: !802)
!1026 = distinct !DILexicalBlock(scope: !797, file: !3, line: 470, column: 11)
!1027 = !DILocation(line: 470, column: 11, scope: !797, inlinedAt: !802)
!1028 = !DILocalVariable(name: "j", arg: 1, scope: !1029, file: !3, line: 278, type: !42)
!1029 = distinct !DISubprogram(name: "record_relation", scope: !3, file: !3, line: 278, type: !1030, isLocal: true, isDefinition: true, scopeLine: 279, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1032)
!1030 = !DISubroutineType(types: !1031)
!1031 = !{null, !42, !42}
!1032 = !{!1028, !1033, !1034}
!1033 = !DILocalVariable(name: "k", arg: 2, scope: !1029, file: !3, line: 278, type: !42)
!1034 = !DILocalVariable(name: "p", scope: !1029, file: !3, line: 280, type: !53)
!1035 = !DILocation(line: 278, column: 31, scope: !1029, inlinedAt: !1036)
!1036 = distinct !DILocation(line: 473, column: 11, scope: !1037, inlinedAt: !802)
!1037 = distinct !DILexicalBlock(scope: !1026, file: !3, line: 471, column: 9)
!1038 = !DILocation(line: 278, column: 47, scope: !1029, inlinedAt: !1036)
!1039 = !DILocation(line: 282, column: 8, scope: !1040, inlinedAt: !1036)
!1040 = distinct !DILexicalBlock(scope: !1029, file: !3, line: 282, column: 7)
!1041 = !DILocation(line: 282, column: 7, scope: !1029, inlinedAt: !1036)
!1042 = !DILocation(line: 284, column: 10, scope: !1043, inlinedAt: !1036)
!1043 = distinct !DILexicalBlock(scope: !1040, file: !3, line: 283, column: 5)
!1044 = !DILocation(line: 284, column: 15, scope: !1043, inlinedAt: !1036)
!1045 = !{!866, !843, i64 32}
!1046 = !DILocation(line: 285, column: 11, scope: !1043, inlinedAt: !1036)
!1047 = !DILocation(line: 280, column: 21, scope: !1029, inlinedAt: !1036)
!1048 = !DILocation(line: 286, column: 10, scope: !1043, inlinedAt: !1036)
!1049 = !DILocation(line: 286, column: 14, scope: !1043, inlinedAt: !1036)
!1050 = !{!1051, !691, i64 0}
!1051 = !{!"successor", !691, i64 0, !691, i64 8}
!1052 = !DILocation(line: 287, column: 20, scope: !1043, inlinedAt: !1036)
!1053 = !{!866, !691, i64 48}
!1054 = !DILocation(line: 287, column: 10, scope: !1043, inlinedAt: !1036)
!1055 = !DILocation(line: 287, column: 15, scope: !1043, inlinedAt: !1036)
!1056 = !{!1051, !691, i64 8}
!1057 = !DILocation(line: 288, column: 14, scope: !1043, inlinedAt: !1036)
!1058 = !DILocation(line: 289, column: 5, scope: !1043, inlinedAt: !1036)
!1059 = !DILocation(line: 480, column: 9, scope: !1060, inlinedAt: !802)
!1060 = distinct !DILexicalBlock(scope: !780, file: !3, line: 480, column: 7)
!1061 = !DILocation(line: 480, column: 7, scope: !780, inlinedAt: !802)
!1062 = !DILocation(line: 481, column: 5, scope: !1060, inlinedAt: !802)
!1063 = !DILocalVariable(name: "root", arg: 1, scope: !1064, file: !3, line: 432, type: !42)
!1064 = distinct !DISubprogram(name: "walk_tree", scope: !3, file: !3, line: 432, type: !1065, isLocal: true, isDefinition: true, scopeLine: 433, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1070)
!1065 = !DISubroutineType(types: !1066)
!1066 = !{null, !42, !1067}
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DISubroutineType(types: !1069)
!1069 = !{!88, !42}
!1070 = !{!1063, !1071}
!1071 = !DILocalVariable(name: "action", arg: 2, scope: !1064, file: !3, line: 432, type: !1067)
!1072 = !DILocation(line: 432, column: 25, scope: !1064, inlinedAt: !1073)
!1073 = distinct !DILocation(line: 485, column: 3, scope: !780, inlinedAt: !802)
!1074 = !DILocation(line: 432, column: 38, scope: !1064, inlinedAt: !1073)
!1075 = !DILocation(line: 434, column: 13, scope: !1076, inlinedAt: !1073)
!1076 = distinct !DILexicalBlock(scope: !1064, file: !3, line: 434, column: 7)
!1077 = !DILocation(line: 434, column: 7, scope: !1076, inlinedAt: !1073)
!1078 = !DILocation(line: 434, column: 7, scope: !1064, inlinedAt: !1073)
!1079 = !DILocation(line: 435, column: 5, scope: !1076, inlinedAt: !1073)
!1080 = !DILocation(line: 487, column: 10, scope: !780, inlinedAt: !802)
!1081 = !{!843, !843, i64 0}
!1082 = !DILocation(line: 487, column: 20, scope: !780, inlinedAt: !802)
!1083 = !DILocation(line: 487, column: 3, scope: !780, inlinedAt: !802)
!1084 = !DILocation(line: 432, column: 25, scope: !1064, inlinedAt: !1085)
!1085 = distinct !DILocation(line: 490, column: 7, scope: !800, inlinedAt: !802)
!1086 = !DILocation(line: 432, column: 38, scope: !1064, inlinedAt: !1085)
!1087 = !DILocation(line: 434, column: 7, scope: !1064, inlinedAt: !1085)
!1088 = !DILocation(line: 435, column: 5, scope: !1076, inlinedAt: !1085)
!1089 = !DILocation(line: 492, column: 14, scope: !800, inlinedAt: !802)
!1090 = !DILocation(line: 492, column: 7, scope: !800, inlinedAt: !802)
!1091 = !DILocation(line: 524, column: 11, scope: !1092, inlinedAt: !802)
!1092 = distinct !DILexicalBlock(scope: !800, file: !3, line: 524, column: 11)
!1093 = !DILocation(line: 494, column: 39, scope: !799, inlinedAt: !802)
!1094 = !DILocation(line: 494, column: 29, scope: !799, inlinedAt: !802)
!1095 = !DILocation(line: 497, column: 23, scope: !799, inlinedAt: !802)
!1096 = !DILocation(line: 497, column: 11, scope: !799, inlinedAt: !802)
!1097 = !DILocation(line: 503, column: 11, scope: !799, inlinedAt: !802)
!1098 = !DILocation(line: 503, column: 17, scope: !799, inlinedAt: !802)
!1099 = !DILocation(line: 503, column: 21, scope: !799, inlinedAt: !802)
!1100 = !DILocation(line: 504, column: 20, scope: !799, inlinedAt: !802)
!1101 = !DILocation(line: 507, column: 11, scope: !799, inlinedAt: !802)
!1102 = !DILocation(line: 509, column: 18, scope: !1103, inlinedAt: !802)
!1103 = distinct !DILexicalBlock(scope: !799, file: !3, line: 508, column: 13)
!1104 = !DILocation(line: 509, column: 23, scope: !1103, inlinedAt: !802)
!1105 = !DILocation(line: 509, column: 28, scope: !1103, inlinedAt: !802)
!1106 = !DILocation(line: 510, column: 33, scope: !1107, inlinedAt: !802)
!1107 = distinct !DILexicalBlock(scope: !1103, file: !3, line: 510, column: 19)
!1108 = !DILocation(line: 510, column: 19, scope: !1103, inlinedAt: !802)
!1109 = !DILocation(line: 512, column: 19, scope: !1110, inlinedAt: !802)
!1110 = distinct !DILexicalBlock(scope: !1107, file: !3, line: 511, column: 17)
!1111 = !DILocation(line: 512, column: 26, scope: !1110, inlinedAt: !802)
!1112 = !DILocation(line: 512, column: 32, scope: !1110, inlinedAt: !802)
!1113 = !{!866, !691, i64 40}
!1114 = !DILocation(line: 513, column: 25, scope: !1110, inlinedAt: !802)
!1115 = !DILocation(line: 514, column: 17, scope: !1110, inlinedAt: !802)
!1116 = !DILocation(line: 516, column: 22, scope: !1103, inlinedAt: !802)
!1117 = distinct !{!1117, !1118, !1119}
!1118 = !DILocation(line: 507, column: 11, scope: !799)
!1119 = !DILocation(line: 517, column: 13, scope: !799)
!1120 = !DILocation(line: 520, column: 24, scope: !799, inlinedAt: !802)
!1121 = !DILocation(line: 520, column: 16, scope: !799, inlinedAt: !802)
!1122 = distinct !{!1122, !1123, !1124}
!1123 = !DILocation(line: 492, column: 7, scope: !800)
!1124 = !DILocation(line: 521, column: 9, scope: !800)
!1125 = !DILocation(line: 524, column: 21, scope: !1092, inlinedAt: !802)
!1126 = !DILocation(line: 524, column: 11, scope: !800, inlinedAt: !802)
!1127 = !DILocation(line: 527, column: 24, scope: !1128, inlinedAt: !802)
!1128 = distinct !DILexicalBlock(scope: !1092, file: !3, line: 525, column: 9)
!1129 = !DILocation(line: 527, column: 57, scope: !1128, inlinedAt: !802)
!1130 = !DILocation(line: 527, column: 11, scope: !1128, inlinedAt: !802)
!1131 = !DILocation(line: 531, column: 11, scope: !1128, inlinedAt: !802)
!1132 = !DILocation(line: 432, column: 25, scope: !1064, inlinedAt: !1133)
!1133 = distinct !DILocation(line: 532, column: 13, scope: !1128, inlinedAt: !802)
!1134 = !DILocation(line: 432, column: 38, scope: !1064, inlinedAt: !1133)
!1135 = !DILocation(line: 434, column: 7, scope: !1064, inlinedAt: !1133)
!1136 = !DILocation(line: 435, column: 5, scope: !1076, inlinedAt: !1133)
!1137 = !DILocation(line: 533, column: 18, scope: !1128, inlinedAt: !802)
!1138 = !DILocation(line: 532, column: 13, scope: !1128, inlinedAt: !802)
!1139 = distinct !{!1139, !1140, !1141}
!1140 = !DILocation(line: 531, column: 11, scope: !1128)
!1141 = !DILocation(line: 533, column: 22, scope: !1128)
!1142 = distinct !{!1142, !1143, !1144}
!1143 = !DILocation(line: 487, column: 3, scope: !780)
!1144 = !DILocation(line: 535, column: 5, scope: !780)
!1145 = !DILocation(line: 0, scope: !1128, inlinedAt: !802)
!1146 = !DILocation(line: 539, column: 15, scope: !1147, inlinedAt: !802)
!1147 = distinct !DILexicalBlock(scope: !780, file: !3, line: 539, column: 7)
!1148 = !DILocation(line: 539, column: 7, scope: !1147, inlinedAt: !802)
!1149 = !DILocation(line: 539, column: 22, scope: !1147, inlinedAt: !802)
!1150 = !DILocation(line: 539, column: 7, scope: !780, inlinedAt: !802)
!1151 = !DILocation(line: 540, column: 5, scope: !1147, inlinedAt: !802)
!1152 = !DILocation(line: 543, column: 10, scope: !780, inlinedAt: !802)
!1153 = !DILocation(line: 544, column: 1, scope: !780, inlinedAt: !802)
!1154 = !DILocation(line: 572, column: 10, scope: !738)
!1155 = !DILocation(line: 572, column: 3, scope: !738)
!1156 = distinct !DISubprogram(name: "count_items", scope: !3, file: !3, line: 293, type: !1068, isLocal: true, isDefinition: true, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1157)
!1157 = !{!1158}
!1158 = !DILocalVariable(name: "unused", arg: 1, scope: !1156, file: !3, line: 293, type: !42)
!1159 = !DILocation(line: 293, column: 27, scope: !1156)
!1160 = !DILocation(line: 295, column: 12, scope: !1156)
!1161 = !DILocation(line: 296, column: 3, scope: !1156)
!1162 = distinct !DISubprogram(name: "recurse_tree", scope: !3, file: !3, line: 409, type: !1163, isLocal: true, isDefinition: true, scopeLine: 410, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1165)
!1163 = !DISubroutineType(types: !1164)
!1164 = !{!88, !42, !1067}
!1165 = !{!1166, !1167}
!1166 = !DILocalVariable(name: "root", arg: 1, scope: !1162, file: !3, line: 409, type: !42)
!1167 = !DILocalVariable(name: "action", arg: 2, scope: !1162, file: !3, line: 409, type: !1067)
!1168 = !DILocation(line: 409, column: 28, scope: !1162)
!1169 = !DILocation(line: 409, column: 41, scope: !1162)
!1170 = !DILocation(line: 411, column: 13, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1162, file: !3, line: 411, column: 7)
!1172 = !DILocation(line: 411, column: 18, scope: !1171)
!1173 = !DILocation(line: 411, column: 26, scope: !1171)
!1174 = !DILocation(line: 411, column: 35, scope: !1171)
!1175 = !DILocation(line: 411, column: 41, scope: !1171)
!1176 = !DILocation(line: 411, column: 7, scope: !1162)
!1177 = !DILocation(line: 412, column: 12, scope: !1171)
!1178 = !{i1 (%struct.item*)* @count_items, i1 (%struct.item*)* @detect_loop, i1 (%struct.item*)* @scan_zeros}
!1179 = !DILocation(line: 412, column: 5, scope: !1171)
!1180 = !DILocation(line: 416, column: 13, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1182, file: !3, line: 416, column: 13)
!1182 = distinct !DILexicalBlock(scope: !1183, file: !3, line: 415, column: 11)
!1183 = distinct !DILexicalBlock(scope: !1171, file: !3, line: 414, column: 5)
!1184 = !DILocation(line: 416, column: 13, scope: !1182)
!1185 = !DILocation(line: 418, column: 11, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1183, file: !3, line: 418, column: 11)
!1187 = !DILocation(line: 418, column: 11, scope: !1183)
!1188 = !DILocation(line: 420, column: 17, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1183, file: !3, line: 420, column: 11)
!1190 = !DILocation(line: 420, column: 23, scope: !1189)
!1191 = !DILocation(line: 420, column: 11, scope: !1183)
!1192 = !DILocation(line: 421, column: 13, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1189, file: !3, line: 421, column: 13)
!1194 = !DILocation(line: 421, column: 13, scope: !1189)
!1195 = !DILocation(line: 425, column: 3, scope: !1162)
!1196 = !DILocation(line: 0, scope: !1162)
!1197 = !DILocation(line: 426, column: 1, scope: !1162)
!1198 = distinct !DISubprogram(name: "scan_zeros", scope: !3, file: !3, line: 300, type: !1068, isLocal: true, isDefinition: true, scopeLine: 301, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1199)
!1199 = !{!1200}
!1200 = !DILocalVariable(name: "k", arg: 1, scope: !1198, file: !3, line: 300, type: !42)
!1201 = !DILocation(line: 300, column: 26, scope: !1198)
!1202 = !DILocation(line: 303, column: 10, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1198, file: !3, line: 303, column: 7)
!1204 = !DILocation(line: 303, column: 16, scope: !1203)
!1205 = !DILocation(line: 303, column: 21, scope: !1203)
!1206 = !DILocation(line: 303, column: 27, scope: !1203)
!1207 = !DILocation(line: 303, column: 24, scope: !1203)
!1208 = !DILocation(line: 303, column: 7, scope: !1198)
!1209 = !DILocation(line: 305, column: 11, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1211, file: !3, line: 305, column: 11)
!1211 = distinct !DILexicalBlock(scope: !1203, file: !3, line: 304, column: 5)
!1212 = !DILocation(line: 305, column: 16, scope: !1210)
!1213 = !DILocation(line: 308, column: 9, scope: !1210)
!1214 = !DILocation(line: 308, column: 16, scope: !1210)
!1215 = !DILocation(line: 305, column: 11, scope: !1211)
!1216 = !DILocation(line: 0, scope: !1210)
!1217 = !DILocation(line: 310, column: 13, scope: !1211)
!1218 = !DILocation(line: 311, column: 5, scope: !1211)
!1219 = !DILocation(line: 313, column: 3, scope: !1198)
!1220 = distinct !DISubprogram(name: "detect_loop", scope: !3, file: !3, line: 335, type: !1068, isLocal: true, isDefinition: true, scopeLine: 336, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1221)
!1221 = !{!1222, !1223, !1229, !1236}
!1222 = !DILocalVariable(name: "k", arg: 1, scope: !1220, file: !3, line: 335, type: !42)
!1223 = !DILocalVariable(name: "p", scope: !1224, file: !3, line: 347, type: !1228)
!1224 = distinct !DILexicalBlock(scope: !1225, file: !3, line: 346, column: 9)
!1225 = distinct !DILexicalBlock(scope: !1226, file: !3, line: 342, column: 11)
!1226 = distinct !DILexicalBlock(scope: !1227, file: !3, line: 338, column: 5)
!1227 = distinct !DILexicalBlock(scope: !1220, file: !3, line: 337, column: 7)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!1229 = !DILocalVariable(name: "tmp", scope: !1230, file: !3, line: 358, type: !42)
!1230 = distinct !DILexicalBlock(scope: !1231, file: !3, line: 357, column: 25)
!1231 = distinct !DILexicalBlock(scope: !1232, file: !3, line: 354, column: 21)
!1232 = distinct !DILexicalBlock(scope: !1233, file: !3, line: 353, column: 23)
!1233 = distinct !DILexicalBlock(scope: !1234, file: !3, line: 352, column: 17)
!1234 = distinct !DILexicalBlock(scope: !1235, file: !3, line: 351, column: 19)
!1235 = distinct !DILexicalBlock(scope: !1224, file: !3, line: 350, column: 13)
!1236 = !DILocalVariable(name: "tmp", scope: !1237, file: !3, line: 379, type: !42)
!1237 = distinct !DILexicalBlock(scope: !1231, file: !3, line: 378, column: 25)
!1238 = !DILocation(line: 335, column: 27, scope: !1220)
!1239 = !DILocation(line: 337, column: 10, scope: !1227)
!1240 = !DILocation(line: 337, column: 16, scope: !1227)
!1241 = !DILocation(line: 337, column: 7, scope: !1220)
!1242 = !DILocation(line: 342, column: 11, scope: !1225)
!1243 = !DILocation(line: 342, column: 16, scope: !1225)
!1244 = !DILocation(line: 342, column: 11, scope: !1226)
!1245 = !DILocation(line: 344, column: 14, scope: !1225)
!1246 = !DILocation(line: 344, column: 9, scope: !1225)
!1247 = !DILocation(line: 347, column: 38, scope: !1224)
!1248 = !DILocation(line: 347, column: 30, scope: !1224)
!1249 = !DILocation(line: 349, column: 18, scope: !1224)
!1250 = !DILocation(line: 349, column: 11, scope: !1224)
!1251 = !DILocation(line: 351, column: 25, scope: !1234)
!1252 = !DILocation(line: 351, column: 29, scope: !1234)
!1253 = !DILocation(line: 351, column: 19, scope: !1235)
!1254 = !DILocation(line: 397, column: 26, scope: !1235)
!1255 = distinct !{!1255, !1250, !1256}
!1256 = !DILocation(line: 398, column: 13, scope: !1224)
!1257 = !DILocation(line: 353, column: 26, scope: !1232)
!1258 = !DILocation(line: 353, column: 23, scope: !1232)
!1259 = !DILocation(line: 353, column: 23, scope: !1233)
!1260 = !DILocation(line: 358, column: 46, scope: !1230)
!1261 = !DILocation(line: 358, column: 52, scope: !1230)
!1262 = !DILocation(line: 358, column: 40, scope: !1230)
!1263 = !DILocation(line: 360, column: 53, scope: !1230)
!1264 = !DILocation(line: 360, column: 27, scope: !1230)
!1265 = !DILocation(line: 363, column: 31, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1230, file: !3, line: 363, column: 31)
!1267 = !DILocation(line: 363, column: 36, scope: !1266)
!1268 = !DILocation(line: 363, column: 31, scope: !1230)
!1269 = !DILocation(line: 366, column: 32, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1266, file: !3, line: 364, column: 29)
!1271 = !DILocation(line: 366, column: 37, scope: !1270)
!1272 = !DILocation(line: 366, column: 42, scope: !1270)
!1273 = !DILocation(line: 366, column: 47, scope: !1270)
!1274 = !DILocation(line: 367, column: 42, scope: !1270)
!1275 = !DILocation(line: 367, column: 34, scope: !1270)
!1276 = !DILocation(line: 373, column: 33, scope: !1230)
!1277 = !DILocation(line: 373, column: 39, scope: !1230)
!1278 = !DILocation(line: 374, column: 32, scope: !1230)
!1279 = !DILocation(line: 356, column: 23, scope: !1231)
!1280 = distinct !{!1280, !1279, !1281}
!1281 = !DILocation(line: 375, column: 25, scope: !1231)
!1282 = !DILocation(line: 377, column: 23, scope: !1231)
!1283 = !DILocation(line: 377, column: 30, scope: !1231)
!1284 = !DILocation(line: 379, column: 52, scope: !1237)
!1285 = !DILocation(line: 379, column: 40, scope: !1237)
!1286 = !DILocation(line: 381, column: 39, scope: !1237)
!1287 = distinct !{!1287, !1282, !1288}
!1288 = !DILocation(line: 383, column: 25, scope: !1231)
!1289 = !DILocation(line: 391, column: 32, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1232, file: !3, line: 390, column: 21)
!1291 = !DILocation(line: 392, column: 28, scope: !1290)
!1292 = !DILocation(line: 393, column: 23, scope: !1290)
!1293 = !DILocation(line: 382, column: 32, scope: !1237)
!1294 = !DILocation(line: 0, scope: !1231)
!1295 = !DILocation(line: 403, column: 1, scope: !1220)
!1296 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !87, file: !87, line: 51, type: !665, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !82, retainedNodes: !1297)
!1297 = !{!1298}
!1298 = !DILocalVariable(name: "file", arg: 1, scope: !1296, file: !87, line: 51, type: !30)
!1299 = !DILocation(line: 51, column: 41, scope: !1296)
!1300 = !DILocation(line: 53, column: 13, scope: !1296)
!1301 = !DILocation(line: 54, column: 1, scope: !1296)
!1302 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !87, file: !87, line: 88, type: !1303, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !82, retainedNodes: !1305)
!1303 = !DISubroutineType(types: !1304)
!1304 = !{null, !88}
!1305 = !{!1306}
!1306 = !DILocalVariable(name: "ignore", arg: 1, scope: !1302, file: !87, line: 88, type: !88)
!1307 = !DILocation(line: 88, column: 37, scope: !1302)
!1308 = !DILocation(line: 90, column: 16, scope: !1302)
!1309 = !{!1310, !1310, i64 0}
!1310 = !{!"_Bool", !692, i64 0}
!1311 = !DILocation(line: 91, column: 1, scope: !1302)
!1312 = distinct !DISubprogram(name: "close_stdout", scope: !87, file: !87, line: 117, type: !697, isLocal: false, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: true, unit: !82, retainedNodes: !1313)
!1313 = !{!1314}
!1314 = !DILocalVariable(name: "write_error", scope: !1315, file: !87, line: 122, type: !30)
!1315 = distinct !DILexicalBlock(scope: !1316, file: !87, line: 121, column: 5)
!1316 = distinct !DILexicalBlock(scope: !1312, file: !87, line: 119, column: 7)
!1317 = !DILocation(line: 119, column: 21, scope: !1316)
!1318 = !DILocation(line: 119, column: 7, scope: !1316)
!1319 = !DILocation(line: 119, column: 29, scope: !1316)
!1320 = !DILocation(line: 120, column: 7, scope: !1316)
!1321 = !DILocation(line: 120, column: 12, scope: !1316)
!1322 = !{i8 0, i8 2}
!1323 = !DILocation(line: 120, column: 25, scope: !1316)
!1324 = !DILocation(line: 120, column: 28, scope: !1316)
!1325 = !DILocation(line: 120, column: 34, scope: !1316)
!1326 = !DILocation(line: 119, column: 7, scope: !1312)
!1327 = !DILocation(line: 122, column: 33, scope: !1315)
!1328 = !DILocation(line: 122, column: 19, scope: !1315)
!1329 = !DILocation(line: 123, column: 11, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1315, file: !87, line: 123, column: 11)
!1331 = !DILocation(line: 0, scope: !1330)
!1332 = !DILocation(line: 123, column: 11, scope: !1315)
!1333 = !DILocation(line: 124, column: 36, scope: !1330)
!1334 = !DILocation(line: 124, column: 9, scope: !1330)
!1335 = !DILocation(line: 127, column: 9, scope: !1330)
!1336 = !DILocation(line: 129, column: 14, scope: !1315)
!1337 = !DILocation(line: 129, column: 7, scope: !1315)
!1338 = !DILocation(line: 134, column: 42, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1312, file: !87, line: 134, column: 7)
!1340 = !DILocation(line: 134, column: 28, scope: !1339)
!1341 = !DILocation(line: 134, column: 50, scope: !1339)
!1342 = !DILocation(line: 134, column: 7, scope: !1312)
!1343 = !DILocation(line: 135, column: 12, scope: !1339)
!1344 = !DILocation(line: 135, column: 5, scope: !1339)
!1345 = !DILocation(line: 136, column: 1, scope: !1312)
!1346 = distinct !DISubprogram(name: "fdadvise", scope: !1347, file: !1347, line: 31, type: !1348, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !198, retainedNodes: !1356)
!1347 = !DIFile(filename: "lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1348 = !DISubroutineType(types: !1349)
!1349 = !{null, !49, !1350, !1350, !1355}
!1350 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !1351, line: 63, baseType: !1352)
!1351 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1352 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1353, line: 150, baseType: !1354)
!1353 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1354 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!1355 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !21, line: 52, baseType: !20)
!1356 = !{!1357, !1358, !1359, !1360, !1361}
!1357 = !DILocalVariable(name: "fd", arg: 1, scope: !1346, file: !1347, line: 31, type: !49)
!1358 = !DILocalVariable(name: "offset", arg: 2, scope: !1346, file: !1347, line: 31, type: !1350)
!1359 = !DILocalVariable(name: "len", arg: 3, scope: !1346, file: !1347, line: 31, type: !1350)
!1360 = !DILocalVariable(name: "advice", arg: 4, scope: !1346, file: !1347, line: 31, type: !1355)
!1361 = !DILocalVariable(name: "__x", scope: !1362, file: !1347, line: 34, type: !49)
!1362 = distinct !DILexicalBlock(scope: !1346, file: !1347, line: 34, column: 3)
!1363 = !DILocation(line: 31, column: 15, scope: !1346)
!1364 = !DILocation(line: 31, column: 25, scope: !1346)
!1365 = !DILocation(line: 31, column: 39, scope: !1346)
!1366 = !DILocation(line: 31, column: 54, scope: !1346)
!1367 = !DILocation(line: 34, column: 3, scope: !1362)
!1368 = !DILocation(line: 36, column: 1, scope: !1346)
!1369 = distinct !DISubprogram(name: "fadvise", scope: !1347, file: !1347, line: 39, type: !1370, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !198, retainedNodes: !1422)
!1370 = !DISubroutineType(types: !1371)
!1371 = !{null, !1372, !1355}
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!1373 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1374, line: 7, baseType: !1375)
!1374 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1376, line: 49, size: 1728, elements: !1377)
!1376 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1377 = !{!1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1393, !1395, !1396, !1397, !1398, !1399, !1401, !1403, !1406, !1408, !1411, !1414, !1415, !1416, !1417, !1418}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1375, file: !1376, line: 51, baseType: !49, size: 32)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1375, file: !1376, line: 54, baseType: !117, size: 64, offset: 64)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1375, file: !1376, line: 55, baseType: !117, size: 64, offset: 128)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1375, file: !1376, line: 56, baseType: !117, size: 64, offset: 192)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1375, file: !1376, line: 57, baseType: !117, size: 64, offset: 256)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1375, file: !1376, line: 58, baseType: !117, size: 64, offset: 320)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1375, file: !1376, line: 59, baseType: !117, size: 64, offset: 384)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1375, file: !1376, line: 60, baseType: !117, size: 64, offset: 448)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1375, file: !1376, line: 61, baseType: !117, size: 64, offset: 512)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1375, file: !1376, line: 64, baseType: !117, size: 64, offset: 576)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1375, file: !1376, line: 65, baseType: !117, size: 64, offset: 640)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1375, file: !1376, line: 66, baseType: !117, size: 64, offset: 704)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1375, file: !1376, line: 68, baseType: !1391, size: 64, offset: 768)
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!1392 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1376, line: 36, flags: DIFlagFwdDecl)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1375, file: !1376, line: 70, baseType: !1394, size: 64, offset: 832)
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1375, file: !1376, line: 72, baseType: !49, size: 32, offset: 896)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1375, file: !1376, line: 73, baseType: !49, size: 32, offset: 928)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1375, file: !1376, line: 74, baseType: !1352, size: 64, offset: 960)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1375, file: !1376, line: 77, baseType: !146, size: 16, offset: 1024)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1375, file: !1376, line: 78, baseType: !1400, size: 8, offset: 1040)
!1400 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1375, file: !1376, line: 79, baseType: !1402, size: 8, offset: 1048)
!1402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 8, elements: !72)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1375, file: !1376, line: 81, baseType: !1404, size: 64, offset: 1088)
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64)
!1405 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1376, line: 43, baseType: null)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1375, file: !1376, line: 89, baseType: !1407, size: 64, offset: 1152)
!1407 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1353, line: 151, baseType: !1354)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1375, file: !1376, line: 91, baseType: !1409, size: 64, offset: 1216)
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1410 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1376, line: 37, flags: DIFlagFwdDecl)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1375, file: !1376, line: 92, baseType: !1412, size: 64, offset: 1280)
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1413, size: 64)
!1413 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1376, line: 38, flags: DIFlagFwdDecl)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1375, file: !1376, line: 93, baseType: !1394, size: 64, offset: 1344)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1375, file: !1376, line: 94, baseType: !33, size: 64, offset: 1408)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1375, file: !1376, line: 95, baseType: !34, size: 64, offset: 1472)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1375, file: !1376, line: 96, baseType: !49, size: 32, offset: 1536)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1375, file: !1376, line: 98, baseType: !1419, size: 160, offset: 1568)
!1419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 160, elements: !1420)
!1420 = !{!1421}
!1421 = !DISubrange(count: 20)
!1422 = !{!1423, !1424}
!1423 = !DILocalVariable(name: "fp", arg: 1, scope: !1369, file: !1347, line: 39, type: !1372)
!1424 = !DILocalVariable(name: "advice", arg: 2, scope: !1369, file: !1347, line: 39, type: !1355)
!1425 = !DILocation(line: 39, column: 16, scope: !1369)
!1426 = !DILocation(line: 39, column: 30, scope: !1369)
!1427 = !DILocation(line: 41, column: 7, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1369, file: !1347, line: 41, column: 7)
!1429 = !DILocation(line: 41, column: 7, scope: !1369)
!1430 = !DILocation(line: 42, column: 15, scope: !1428)
!1431 = !DILocation(line: 31, column: 15, scope: !1346, inlinedAt: !1432)
!1432 = distinct !DILocation(line: 42, column: 5, scope: !1428)
!1433 = !DILocation(line: 31, column: 25, scope: !1346, inlinedAt: !1432)
!1434 = !DILocation(line: 31, column: 39, scope: !1346, inlinedAt: !1432)
!1435 = !DILocation(line: 31, column: 54, scope: !1346, inlinedAt: !1432)
!1436 = !DILocation(line: 34, column: 3, scope: !1362, inlinedAt: !1432)
!1437 = !DILocation(line: 42, column: 5, scope: !1428)
!1438 = !DILocation(line: 43, column: 1, scope: !1369)
!1439 = distinct !DISubprogram(name: "freopen_safer", scope: !1440, file: !1440, line: 62, type: !1441, isLocal: false, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !201, retainedNodes: !1477)
!1440 = !DIFile(filename: "lib/freopen-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1441 = !DISubroutineType(types: !1442)
!1442 = !{!1443, !30, !30, !1443}
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!1444 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1374, line: 7, baseType: !1445)
!1445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1376, line: 49, size: 1728, elements: !1446)
!1446 = !{!1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476}
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1445, file: !1376, line: 51, baseType: !49, size: 32)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1445, file: !1376, line: 54, baseType: !117, size: 64, offset: 64)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1445, file: !1376, line: 55, baseType: !117, size: 64, offset: 128)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1445, file: !1376, line: 56, baseType: !117, size: 64, offset: 192)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1445, file: !1376, line: 57, baseType: !117, size: 64, offset: 256)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1445, file: !1376, line: 58, baseType: !117, size: 64, offset: 320)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1445, file: !1376, line: 59, baseType: !117, size: 64, offset: 384)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1445, file: !1376, line: 60, baseType: !117, size: 64, offset: 448)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1445, file: !1376, line: 61, baseType: !117, size: 64, offset: 512)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1445, file: !1376, line: 64, baseType: !117, size: 64, offset: 576)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1445, file: !1376, line: 65, baseType: !117, size: 64, offset: 640)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1445, file: !1376, line: 66, baseType: !117, size: 64, offset: 704)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1445, file: !1376, line: 68, baseType: !1391, size: 64, offset: 768)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1445, file: !1376, line: 70, baseType: !1461, size: 64, offset: 832)
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1445, size: 64)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1445, file: !1376, line: 72, baseType: !49, size: 32, offset: 896)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1445, file: !1376, line: 73, baseType: !49, size: 32, offset: 928)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1445, file: !1376, line: 74, baseType: !1352, size: 64, offset: 960)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1445, file: !1376, line: 77, baseType: !146, size: 16, offset: 1024)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1445, file: !1376, line: 78, baseType: !1400, size: 8, offset: 1040)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1445, file: !1376, line: 79, baseType: !1402, size: 8, offset: 1048)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1445, file: !1376, line: 81, baseType: !1404, size: 64, offset: 1088)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1445, file: !1376, line: 89, baseType: !1407, size: 64, offset: 1152)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1445, file: !1376, line: 91, baseType: !1409, size: 64, offset: 1216)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1445, file: !1376, line: 92, baseType: !1412, size: 64, offset: 1280)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1445, file: !1376, line: 93, baseType: !1461, size: 64, offset: 1344)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1445, file: !1376, line: 94, baseType: !33, size: 64, offset: 1408)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1445, file: !1376, line: 95, baseType: !34, size: 64, offset: 1472)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1445, file: !1376, line: 96, baseType: !49, size: 32, offset: 1536)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1445, file: !1376, line: 98, baseType: !1419, size: 160, offset: 1568)
!1477 = !{!1478, !1479, !1480, !1481, !1482, !1483, !1484}
!1478 = !DILocalVariable(name: "name", arg: 1, scope: !1439, file: !1440, line: 62, type: !30)
!1479 = !DILocalVariable(name: "mode", arg: 2, scope: !1439, file: !1440, line: 62, type: !30)
!1480 = !DILocalVariable(name: "f", arg: 3, scope: !1439, file: !1440, line: 62, type: !1443)
!1481 = !DILocalVariable(name: "protect_in", scope: !1439, file: !1440, line: 70, type: !88)
!1482 = !DILocalVariable(name: "protect_out", scope: !1439, file: !1440, line: 71, type: !88)
!1483 = !DILocalVariable(name: "protect_err", scope: !1439, file: !1440, line: 72, type: !88)
!1484 = !DILocalVariable(name: "saved_errno", scope: !1439, file: !1440, line: 73, type: !49)
!1485 = !DILocation(line: 62, column: 28, scope: !1439)
!1486 = !DILocation(line: 62, column: 46, scope: !1439)
!1487 = !DILocation(line: 62, column: 58, scope: !1439)
!1488 = !DILocation(line: 70, column: 8, scope: !1439)
!1489 = !DILocation(line: 71, column: 8, scope: !1439)
!1490 = !DILocation(line: 72, column: 8, scope: !1439)
!1491 = !DILocation(line: 75, column: 11, scope: !1439)
!1492 = !DILocation(line: 75, column: 3, scope: !1439)
!1493 = !DILocation(line: 78, column: 11, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1495, file: !1440, line: 78, column: 11)
!1495 = distinct !DILexicalBlock(scope: !1439, file: !1440, line: 76, column: 5)
!1496 = !DILocation(line: 78, column: 47, scope: !1494)
!1497 = !DILocation(line: 78, column: 11, scope: !1495)
!1498 = !DILocation(line: 0, scope: !1439)
!1499 = !DILocation(line: 82, column: 11, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1495, file: !1440, line: 82, column: 11)
!1501 = !DILocation(line: 82, column: 47, scope: !1500)
!1502 = !DILocation(line: 82, column: 11, scope: !1495)
!1503 = !DILocation(line: 86, column: 11, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1495, file: !1440, line: 86, column: 11)
!1505 = !DILocation(line: 86, column: 45, scope: !1504)
!1506 = !DILocation(line: 93, column: 18, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1439, file: !1440, line: 93, column: 7)
!1508 = !DILocalVariable(name: "fd", arg: 1, scope: !1509, file: !1440, line: 40, type: !49)
!1509 = distinct !DISubprogram(name: "protect_fd", scope: !1440, file: !1440, line: 40, type: !1510, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !201, retainedNodes: !1512)
!1510 = !DISubroutineType(types: !1511)
!1511 = !{!88, !49}
!1512 = !{!1508, !1513}
!1513 = !DILocalVariable(name: "value", scope: !1509, file: !1440, line: 42, type: !49)
!1514 = !DILocation(line: 40, column: 17, scope: !1509, inlinedAt: !1515)
!1515 = distinct !DILocation(line: 93, column: 22, scope: !1507)
!1516 = !DILocation(line: 42, column: 15, scope: !1509, inlinedAt: !1515)
!1517 = !DILocation(line: 42, column: 7, scope: !1509, inlinedAt: !1515)
!1518 = !DILocation(line: 43, column: 13, scope: !1519, inlinedAt: !1515)
!1519 = distinct !DILexicalBlock(scope: !1509, file: !1440, line: 43, column: 7)
!1520 = !DILocation(line: 43, column: 7, scope: !1509, inlinedAt: !1515)
!1521 = !DILocation(line: 45, column: 13, scope: !1522, inlinedAt: !1515)
!1522 = distinct !DILexicalBlock(scope: !1523, file: !1440, line: 45, column: 11)
!1523 = distinct !DILexicalBlock(scope: !1519, file: !1440, line: 44, column: 5)
!1524 = !DILocation(line: 45, column: 11, scope: !1523, inlinedAt: !1515)
!1525 = !DILocation(line: 47, column: 11, scope: !1526, inlinedAt: !1515)
!1526 = distinct !DILexicalBlock(scope: !1522, file: !1440, line: 46, column: 9)
!1527 = !DILocation(line: 48, column: 11, scope: !1526, inlinedAt: !1515)
!1528 = !DILocation(line: 48, column: 17, scope: !1526, inlinedAt: !1515)
!1529 = !DILocation(line: 49, column: 9, scope: !1526, inlinedAt: !1515)
!1530 = !DILocation(line: 95, column: 12, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1507, file: !1440, line: 95, column: 12)
!1532 = !DILocation(line: 95, column: 24, scope: !1531)
!1533 = !DILocation(line: 40, column: 17, scope: !1509, inlinedAt: !1534)
!1534 = distinct !DILocation(line: 95, column: 28, scope: !1531)
!1535 = !DILocation(line: 42, column: 15, scope: !1509, inlinedAt: !1534)
!1536 = !DILocation(line: 42, column: 7, scope: !1509, inlinedAt: !1534)
!1537 = !DILocation(line: 43, column: 13, scope: !1519, inlinedAt: !1534)
!1538 = !DILocation(line: 43, column: 7, scope: !1509, inlinedAt: !1534)
!1539 = !DILocation(line: 45, column: 13, scope: !1522, inlinedAt: !1534)
!1540 = !DILocation(line: 45, column: 11, scope: !1523, inlinedAt: !1534)
!1541 = !DILocation(line: 47, column: 11, scope: !1526, inlinedAt: !1534)
!1542 = !DILocation(line: 48, column: 11, scope: !1526, inlinedAt: !1534)
!1543 = !DILocation(line: 48, column: 17, scope: !1526, inlinedAt: !1534)
!1544 = !DILocation(line: 49, column: 9, scope: !1526, inlinedAt: !1534)
!1545 = !DILocation(line: 97, column: 12, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1531, file: !1440, line: 97, column: 12)
!1547 = !DILocation(line: 97, column: 24, scope: !1546)
!1548 = !DILocation(line: 40, column: 17, scope: !1509, inlinedAt: !1549)
!1549 = distinct !DILocation(line: 97, column: 28, scope: !1546)
!1550 = !DILocation(line: 42, column: 15, scope: !1509, inlinedAt: !1549)
!1551 = !DILocation(line: 42, column: 7, scope: !1509, inlinedAt: !1549)
!1552 = !DILocation(line: 43, column: 13, scope: !1519, inlinedAt: !1549)
!1553 = !DILocation(line: 43, column: 7, scope: !1509, inlinedAt: !1549)
!1554 = !DILocation(line: 45, column: 13, scope: !1522, inlinedAt: !1549)
!1555 = !DILocation(line: 45, column: 11, scope: !1523, inlinedAt: !1549)
!1556 = !DILocation(line: 47, column: 11, scope: !1526, inlinedAt: !1549)
!1557 = !DILocation(line: 48, column: 11, scope: !1526, inlinedAt: !1549)
!1558 = !DILocation(line: 48, column: 17, scope: !1526, inlinedAt: !1549)
!1559 = !DILocation(line: 49, column: 9, scope: !1526, inlinedAt: !1549)
!1560 = !DILocation(line: 100, column: 9, scope: !1546)
!1561 = !DILocation(line: 0, scope: !1507)
!1562 = !DILocation(line: 101, column: 17, scope: !1439)
!1563 = !DILocation(line: 73, column: 7, scope: !1439)
!1564 = !DILocation(line: 102, column: 7, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1439, file: !1440, line: 102, column: 7)
!1566 = !DILocation(line: 102, column: 7, scope: !1439)
!1567 = !DILocation(line: 103, column: 5, scope: !1565)
!1568 = !DILocation(line: 104, column: 7, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1439, file: !1440, line: 104, column: 7)
!1570 = !DILocation(line: 104, column: 7, scope: !1439)
!1571 = !DILocation(line: 105, column: 5, scope: !1569)
!1572 = !DILocation(line: 106, column: 7, scope: !1439)
!1573 = !DILocation(line: 107, column: 5, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1439, file: !1440, line: 106, column: 7)
!1575 = !DILocation(line: 108, column: 8, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1439, file: !1440, line: 108, column: 7)
!1577 = !DILocation(line: 108, column: 7, scope: !1439)
!1578 = !DILocation(line: 109, column: 11, scope: !1576)
!1579 = !DILocation(line: 109, column: 5, scope: !1576)
!1580 = !DILocation(line: 110, column: 3, scope: !1439)
!1581 = distinct !DISubprogram(name: "parse_long_options", scope: !101, file: !101, line: 44, type: !1582, isLocal: false, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: true, unit: !98, retainedNodes: !1585)
!1582 = !DISubroutineType(types: !1583)
!1583 = !{null, !49, !741, !30, !30, !30, !1584, null}
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!1585 = !{!1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594}
!1586 = !DILocalVariable(name: "argc", arg: 1, scope: !1581, file: !101, line: 44, type: !49)
!1587 = !DILocalVariable(name: "argv", arg: 2, scope: !1581, file: !101, line: 45, type: !741)
!1588 = !DILocalVariable(name: "command_name", arg: 3, scope: !1581, file: !101, line: 46, type: !30)
!1589 = !DILocalVariable(name: "package", arg: 4, scope: !1581, file: !101, line: 47, type: !30)
!1590 = !DILocalVariable(name: "version", arg: 5, scope: !1581, file: !101, line: 48, type: !30)
!1591 = !DILocalVariable(name: "usage_func", arg: 6, scope: !1581, file: !101, line: 49, type: !1584)
!1592 = !DILocalVariable(name: "c", scope: !1581, file: !101, line: 52, type: !49)
!1593 = !DILocalVariable(name: "saved_opterr", scope: !1581, file: !101, line: 53, type: !49)
!1594 = !DILocalVariable(name: "authors", scope: !1595, file: !101, line: 71, type: !1599)
!1595 = distinct !DILexicalBlock(scope: !1596, file: !101, line: 70, column: 11)
!1596 = distinct !DILexicalBlock(scope: !1597, file: !101, line: 64, column: 9)
!1597 = distinct !DILexicalBlock(scope: !1598, file: !101, line: 62, column: 5)
!1598 = distinct !DILexicalBlock(scope: !1581, file: !101, line: 60, column: 7)
!1599 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1351, line: 52, baseType: !1600)
!1600 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1601, line: 48, baseType: !1602)
!1601 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1602 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !99, line: 71, baseType: !1603)
!1603 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1604, size: 192, elements: !72)
!1604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !99, line: 71, size: 192, elements: !1605)
!1605 = !{!1606, !1607, !1608, !1609}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1604, file: !99, line: 71, baseType: !7, size: 32)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1604, file: !99, line: 71, baseType: !7, size: 32, offset: 32)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1604, file: !99, line: 71, baseType: !33, size: 64, offset: 64)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1604, file: !99, line: 71, baseType: !33, size: 64, offset: 128)
!1610 = !DILocation(line: 44, column: 25, scope: !1581)
!1611 = !DILocation(line: 45, column: 28, scope: !1581)
!1612 = !DILocation(line: 46, column: 33, scope: !1581)
!1613 = !DILocation(line: 47, column: 33, scope: !1581)
!1614 = !DILocation(line: 48, column: 33, scope: !1581)
!1615 = !DILocation(line: 49, column: 28, scope: !1581)
!1616 = !DILocation(line: 55, column: 18, scope: !1581)
!1617 = !DILocation(line: 53, column: 7, scope: !1581)
!1618 = !DILocation(line: 58, column: 10, scope: !1581)
!1619 = !DILocation(line: 60, column: 12, scope: !1598)
!1620 = !DILocation(line: 61, column: 7, scope: !1598)
!1621 = !DILocation(line: 61, column: 15, scope: !1598)
!1622 = !DILocation(line: 52, column: 7, scope: !1581)
!1623 = !DILocation(line: 60, column: 7, scope: !1581)
!1624 = !DILocation(line: 66, column: 11, scope: !1596)
!1625 = !DILocation(line: 67, column: 11, scope: !1596)
!1626 = !DILocation(line: 71, column: 13, scope: !1595)
!1627 = !DILocation(line: 71, column: 21, scope: !1595)
!1628 = !DILocation(line: 72, column: 13, scope: !1595)
!1629 = !DILocation(line: 73, column: 29, scope: !1595)
!1630 = !DILocation(line: 73, column: 13, scope: !1595)
!1631 = !DILocation(line: 74, column: 13, scope: !1595)
!1632 = !DILocation(line: 84, column: 10, scope: !1581)
!1633 = !DILocation(line: 88, column: 10, scope: !1581)
!1634 = !DILocation(line: 89, column: 1, scope: !1581)
!1635 = distinct !DISubprogram(name: "set_program_name", scope: !119, file: !119, line: 39, type: !665, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !114, retainedNodes: !1636)
!1636 = !{!1637, !1638, !1639}
!1637 = !DILocalVariable(name: "argv0", arg: 1, scope: !1635, file: !119, line: 39, type: !30)
!1638 = !DILocalVariable(name: "slash", scope: !1635, file: !119, line: 46, type: !30)
!1639 = !DILocalVariable(name: "base", scope: !1635, file: !119, line: 47, type: !30)
!1640 = !DILocation(line: 39, column: 31, scope: !1635)
!1641 = !DILocation(line: 51, column: 13, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1635, file: !119, line: 51, column: 7)
!1643 = !DILocation(line: 51, column: 7, scope: !1635)
!1644 = !DILocation(line: 55, column: 14, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1642, file: !119, line: 52, column: 5)
!1646 = !DILocation(line: 54, column: 7, scope: !1645)
!1647 = !DILocation(line: 56, column: 7, scope: !1645)
!1648 = !DILocation(line: 59, column: 11, scope: !1635)
!1649 = !DILocation(line: 46, column: 15, scope: !1635)
!1650 = !DILocation(line: 60, column: 17, scope: !1635)
!1651 = !DILocation(line: 60, column: 33, scope: !1635)
!1652 = !DILocation(line: 60, column: 11, scope: !1635)
!1653 = !DILocation(line: 47, column: 15, scope: !1635)
!1654 = !DILocation(line: 61, column: 12, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1635, file: !119, line: 61, column: 7)
!1656 = !DILocation(line: 61, column: 20, scope: !1655)
!1657 = !DILocation(line: 61, column: 25, scope: !1655)
!1658 = !DILocation(line: 61, column: 42, scope: !1655)
!1659 = !DILocation(line: 61, column: 28, scope: !1655)
!1660 = !DILocation(line: 61, column: 61, scope: !1655)
!1661 = !DILocation(line: 61, column: 7, scope: !1635)
!1662 = !DILocation(line: 64, column: 11, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !1664, file: !119, line: 64, column: 11)
!1664 = distinct !DILexicalBlock(scope: !1655, file: !119, line: 62, column: 5)
!1665 = !DILocation(line: 64, column: 36, scope: !1663)
!1666 = !DILocation(line: 64, column: 11, scope: !1664)
!1667 = !DILocation(line: 66, column: 24, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1663, file: !119, line: 65, column: 9)
!1669 = !DILocation(line: 70, column: 41, scope: !1668)
!1670 = !DILocation(line: 72, column: 9, scope: !1668)
!1671 = !DILocation(line: 84, column: 16, scope: !1635)
!1672 = !DILocation(line: 90, column: 27, scope: !1635)
!1673 = !DILocation(line: 92, column: 1, scope: !1635)
!1674 = distinct !DISubprogram(name: "clone_quoting_options", scope: !150, file: !150, line: 122, type: !1675, isLocal: false, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, unit: !122, retainedNodes: !1678)
!1675 = !DISubroutineType(types: !1676)
!1676 = !{!1677, !1677}
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!1678 = !{!1679, !1680, !1681}
!1679 = !DILocalVariable(name: "o", arg: 1, scope: !1674, file: !150, line: 122, type: !1677)
!1680 = !DILocalVariable(name: "e", scope: !1674, file: !150, line: 124, type: !49)
!1681 = !DILocalVariable(name: "p", scope: !1674, file: !150, line: 125, type: !1677)
!1682 = !DILocation(line: 122, column: 48, scope: !1674)
!1683 = !DILocation(line: 124, column: 11, scope: !1674)
!1684 = !DILocation(line: 124, column: 7, scope: !1674)
!1685 = !DILocation(line: 125, column: 40, scope: !1674)
!1686 = !DILocation(line: 125, column: 31, scope: !1674)
!1687 = !DILocation(line: 125, column: 27, scope: !1674)
!1688 = !DILocation(line: 127, column: 9, scope: !1674)
!1689 = !DILocation(line: 128, column: 3, scope: !1674)
!1690 = distinct !DISubprogram(name: "get_quoting_style", scope: !150, file: !150, line: 133, type: !1691, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !122, retainedNodes: !1695)
!1691 = !DISubroutineType(types: !1692)
!1692 = !{!5, !1693}
!1693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1694, size: 64)
!1694 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !157)
!1695 = !{!1696}
!1696 = !DILocalVariable(name: "o", arg: 1, scope: !1690, file: !150, line: 133, type: !1693)
!1697 = !DILocation(line: 133, column: 50, scope: !1690)
!1698 = !DILocation(line: 135, column: 11, scope: !1690)
!1699 = !DILocation(line: 135, column: 46, scope: !1690)
!1700 = !{!1701, !692, i64 0}
!1701 = !{!"quoting_options", !692, i64 0, !764, i64 4, !692, i64 8, !691, i64 40, !691, i64 48}
!1702 = !DILocation(line: 135, column: 3, scope: !1690)
!1703 = distinct !DISubprogram(name: "set_quoting_style", scope: !150, file: !150, line: 141, type: !1704, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: true, unit: !122, retainedNodes: !1706)
!1704 = !DISubroutineType(types: !1705)
!1705 = !{null, !1677, !5}
!1706 = !{!1707, !1708}
!1707 = !DILocalVariable(name: "o", arg: 1, scope: !1703, file: !150, line: 141, type: !1677)
!1708 = !DILocalVariable(name: "s", arg: 2, scope: !1703, file: !150, line: 141, type: !5)
!1709 = !DILocation(line: 141, column: 44, scope: !1703)
!1710 = !DILocation(line: 141, column: 66, scope: !1703)
!1711 = !DILocation(line: 143, column: 4, scope: !1703)
!1712 = !DILocation(line: 143, column: 39, scope: !1703)
!1713 = !DILocation(line: 143, column: 45, scope: !1703)
!1714 = !DILocation(line: 144, column: 1, scope: !1703)
!1715 = distinct !DISubprogram(name: "set_char_quoting", scope: !150, file: !150, line: 152, type: !1716, isLocal: false, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, unit: !122, retainedNodes: !1718)
!1716 = !DISubroutineType(types: !1717)
!1717 = !{!49, !1677, !32, !49}
!1718 = !{!1719, !1720, !1721, !1722, !1723, !1725, !1726}
!1719 = !DILocalVariable(name: "o", arg: 1, scope: !1715, file: !150, line: 152, type: !1677)
!1720 = !DILocalVariable(name: "c", arg: 2, scope: !1715, file: !150, line: 152, type: !32)
!1721 = !DILocalVariable(name: "i", arg: 3, scope: !1715, file: !150, line: 152, type: !49)
!1722 = !DILocalVariable(name: "uc", scope: !1715, file: !150, line: 154, type: !225)
!1723 = !DILocalVariable(name: "p", scope: !1715, file: !150, line: 155, type: !1724)
!1724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1725 = !DILocalVariable(name: "shift", scope: !1715, file: !150, line: 157, type: !49)
!1726 = !DILocalVariable(name: "r", scope: !1715, file: !150, line: 158, type: !49)
!1727 = !DILocation(line: 152, column: 43, scope: !1715)
!1728 = !DILocation(line: 152, column: 51, scope: !1715)
!1729 = !DILocation(line: 152, column: 58, scope: !1715)
!1730 = !DILocation(line: 154, column: 17, scope: !1715)
!1731 = !DILocation(line: 156, column: 6, scope: !1715)
!1732 = !DILocation(line: 156, column: 62, scope: !1715)
!1733 = !DILocation(line: 156, column: 57, scope: !1715)
!1734 = !DILocation(line: 155, column: 17, scope: !1715)
!1735 = !DILocation(line: 157, column: 15, scope: !1715)
!1736 = !DILocation(line: 157, column: 7, scope: !1715)
!1737 = !DILocation(line: 158, column: 12, scope: !1715)
!1738 = !DILocation(line: 158, column: 15, scope: !1715)
!1739 = !DILocation(line: 158, column: 25, scope: !1715)
!1740 = !DILocation(line: 158, column: 7, scope: !1715)
!1741 = !DILocation(line: 159, column: 13, scope: !1715)
!1742 = !DILocation(line: 159, column: 18, scope: !1715)
!1743 = !DILocation(line: 159, column: 23, scope: !1715)
!1744 = !DILocation(line: 159, column: 6, scope: !1715)
!1745 = !DILocation(line: 160, column: 3, scope: !1715)
!1746 = distinct !DISubprogram(name: "set_quoting_flags", scope: !150, file: !150, line: 168, type: !1747, isLocal: false, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true, unit: !122, retainedNodes: !1749)
!1747 = !DISubroutineType(types: !1748)
!1748 = !{!49, !1677, !49}
!1749 = !{!1750, !1751, !1752}
!1750 = !DILocalVariable(name: "o", arg: 1, scope: !1746, file: !150, line: 168, type: !1677)
!1751 = !DILocalVariable(name: "i", arg: 2, scope: !1746, file: !150, line: 168, type: !49)
!1752 = !DILocalVariable(name: "r", scope: !1746, file: !150, line: 170, type: !49)
!1753 = !DILocation(line: 168, column: 44, scope: !1746)
!1754 = !DILocation(line: 168, column: 51, scope: !1746)
!1755 = !DILocation(line: 171, column: 8, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1746, file: !150, line: 171, column: 7)
!1757 = !DILocation(line: 171, column: 7, scope: !1746)
!1758 = !DILocation(line: 173, column: 10, scope: !1746)
!1759 = !{!1701, !764, i64 4}
!1760 = !DILocation(line: 170, column: 7, scope: !1746)
!1761 = !DILocation(line: 174, column: 12, scope: !1746)
!1762 = !DILocation(line: 175, column: 3, scope: !1746)
!1763 = distinct !DISubprogram(name: "set_custom_quoting", scope: !150, file: !150, line: 179, type: !1764, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !122, retainedNodes: !1766)
!1764 = !DISubroutineType(types: !1765)
!1765 = !{null, !1677, !30, !30}
!1766 = !{!1767, !1768, !1769}
!1767 = !DILocalVariable(name: "o", arg: 1, scope: !1763, file: !150, line: 179, type: !1677)
!1768 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1763, file: !150, line: 180, type: !30)
!1769 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1763, file: !150, line: 180, type: !30)
!1770 = !DILocation(line: 179, column: 45, scope: !1763)
!1771 = !DILocation(line: 180, column: 33, scope: !1763)
!1772 = !DILocation(line: 180, column: 57, scope: !1763)
!1773 = !DILocation(line: 182, column: 8, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1763, file: !150, line: 182, column: 7)
!1775 = !DILocation(line: 182, column: 7, scope: !1763)
!1776 = !DILocation(line: 184, column: 6, scope: !1763)
!1777 = !DILocation(line: 184, column: 12, scope: !1763)
!1778 = !DILocation(line: 185, column: 8, scope: !1779)
!1779 = distinct !DILexicalBlock(scope: !1763, file: !150, line: 185, column: 7)
!1780 = !DILocation(line: 185, column: 23, scope: !1779)
!1781 = !DILocation(line: 185, column: 19, scope: !1779)
!1782 = !DILocation(line: 186, column: 5, scope: !1779)
!1783 = !DILocation(line: 187, column: 6, scope: !1763)
!1784 = !DILocation(line: 187, column: 17, scope: !1763)
!1785 = !{!1701, !691, i64 40}
!1786 = !DILocation(line: 188, column: 6, scope: !1763)
!1787 = !DILocation(line: 188, column: 18, scope: !1763)
!1788 = !{!1701, !691, i64 48}
!1789 = !DILocation(line: 189, column: 1, scope: !1763)
!1790 = distinct !DISubprogram(name: "quotearg_buffer", scope: !150, file: !150, line: 784, type: !1791, isLocal: false, isDefinition: true, scopeLine: 787, flags: DIFlagPrototyped, isOptimized: true, unit: !122, retainedNodes: !1793)
!1791 = !DISubroutineType(types: !1792)
!1792 = !{!34, !117, !34, !30, !34, !1693}
!1793 = !{!1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801}
!1794 = !DILocalVariable(name: "buffer", arg: 1, scope: !1790, file: !150, line: 784, type: !117)
!1795 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1790, file: !150, line: 784, type: !34)
!1796 = !DILocalVariable(name: "arg", arg: 3, scope: !1790, file: !150, line: 785, type: !30)
!1797 = !DILocalVariable(name: "argsize", arg: 4, scope: !1790, file: !150, line: 785, type: !34)
!1798 = !DILocalVariable(name: "o", arg: 5, scope: !1790, file: !150, line: 786, type: !1693)
!1799 = !DILocalVariable(name: "p", scope: !1790, file: !150, line: 788, type: !1693)
!1800 = !DILocalVariable(name: "e", scope: !1790, file: !150, line: 789, type: !49)
!1801 = !DILocalVariable(name: "r", scope: !1790, file: !150, line: 790, type: !34)
!1802 = !DILocation(line: 784, column: 24, scope: !1790)
!1803 = !DILocation(line: 784, column: 39, scope: !1790)
!1804 = !DILocation(line: 785, column: 30, scope: !1790)
!1805 = !DILocation(line: 785, column: 42, scope: !1790)
!1806 = !DILocation(line: 786, column: 48, scope: !1790)
!1807 = !DILocation(line: 788, column: 37, scope: !1790)
!1808 = !DILocation(line: 788, column: 33, scope: !1790)
!1809 = !DILocation(line: 789, column: 11, scope: !1790)
!1810 = !DILocation(line: 789, column: 7, scope: !1790)
!1811 = !DILocation(line: 791, column: 43, scope: !1790)
!1812 = !DILocation(line: 791, column: 53, scope: !1790)
!1813 = !DILocation(line: 791, column: 60, scope: !1790)
!1814 = !DILocation(line: 792, column: 43, scope: !1790)
!1815 = !DILocation(line: 792, column: 58, scope: !1790)
!1816 = !DILocation(line: 790, column: 14, scope: !1790)
!1817 = !DILocation(line: 790, column: 10, scope: !1790)
!1818 = !DILocation(line: 793, column: 9, scope: !1790)
!1819 = !DILocation(line: 794, column: 3, scope: !1790)
!1820 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !150, file: !150, line: 256, type: !1821, isLocal: true, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: true, unit: !122, retainedNodes: !1825)
!1821 = !DISubroutineType(types: !1822)
!1822 = !{!34, !117, !34, !30, !34, !5, !49, !1823, !30, !30}
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1824, size: 64)
!1824 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1825 = !{!1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1850, !1851, !1852, !1853, !1854, !1857, !1858, !1876, !1879, !1880, !1887}
!1826 = !DILocalVariable(name: "buffer", arg: 1, scope: !1820, file: !150, line: 256, type: !117)
!1827 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1820, file: !150, line: 256, type: !34)
!1828 = !DILocalVariable(name: "arg", arg: 3, scope: !1820, file: !150, line: 257, type: !30)
!1829 = !DILocalVariable(name: "argsize", arg: 4, scope: !1820, file: !150, line: 257, type: !34)
!1830 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1820, file: !150, line: 258, type: !5)
!1831 = !DILocalVariable(name: "flags", arg: 6, scope: !1820, file: !150, line: 258, type: !49)
!1832 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1820, file: !150, line: 259, type: !1823)
!1833 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1820, file: !150, line: 260, type: !30)
!1834 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1820, file: !150, line: 261, type: !30)
!1835 = !DILocalVariable(name: "i", scope: !1820, file: !150, line: 263, type: !34)
!1836 = !DILocalVariable(name: "len", scope: !1820, file: !150, line: 264, type: !34)
!1837 = !DILocalVariable(name: "orig_buffersize", scope: !1820, file: !150, line: 265, type: !34)
!1838 = !DILocalVariable(name: "quote_string", scope: !1820, file: !150, line: 266, type: !30)
!1839 = !DILocalVariable(name: "quote_string_len", scope: !1820, file: !150, line: 267, type: !34)
!1840 = !DILocalVariable(name: "backslash_escapes", scope: !1820, file: !150, line: 268, type: !88)
!1841 = !DILocalVariable(name: "unibyte_locale", scope: !1820, file: !150, line: 269, type: !88)
!1842 = !DILocalVariable(name: "elide_outer_quotes", scope: !1820, file: !150, line: 270, type: !88)
!1843 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1820, file: !150, line: 271, type: !88)
!1844 = !DILocalVariable(name: "encountered_single_quote", scope: !1820, file: !150, line: 272, type: !88)
!1845 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1820, file: !150, line: 273, type: !88)
!1846 = !DILocalVariable(name: "c", scope: !1847, file: !150, line: 402, type: !225)
!1847 = distinct !DILexicalBlock(scope: !1848, file: !150, line: 401, column: 5)
!1848 = distinct !DILexicalBlock(scope: !1849, file: !150, line: 400, column: 3)
!1849 = distinct !DILexicalBlock(scope: !1820, file: !150, line: 400, column: 3)
!1850 = !DILocalVariable(name: "esc", scope: !1847, file: !150, line: 403, type: !225)
!1851 = !DILocalVariable(name: "is_right_quote", scope: !1847, file: !150, line: 404, type: !88)
!1852 = !DILocalVariable(name: "escaping", scope: !1847, file: !150, line: 405, type: !88)
!1853 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1847, file: !150, line: 406, type: !88)
!1854 = !DILocalVariable(name: "m", scope: !1855, file: !150, line: 610, type: !34)
!1855 = distinct !DILexicalBlock(scope: !1856, file: !150, line: 608, column: 11)
!1856 = distinct !DILexicalBlock(scope: !1847, file: !150, line: 426, column: 9)
!1857 = !DILocalVariable(name: "printable", scope: !1855, file: !150, line: 612, type: !88)
!1858 = !DILocalVariable(name: "mbstate", scope: !1859, file: !150, line: 621, type: !1861)
!1859 = distinct !DILexicalBlock(scope: !1860, file: !150, line: 620, column: 15)
!1860 = distinct !DILexicalBlock(scope: !1855, file: !150, line: 614, column: 17)
!1861 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1862, line: 6, baseType: !1863)
!1862 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1863 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1864, line: 21, baseType: !1865)
!1864 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1865 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1864, line: 13, size: 64, elements: !1866)
!1866 = !{!1867, !1868}
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1865, file: !1864, line: 15, baseType: !49, size: 32)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1865, file: !1864, line: 20, baseType: !1869, size: 32, offset: 32)
!1869 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1865, file: !1864, line: 16, size: 32, elements: !1870)
!1870 = !{!1871, !1872}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1869, file: !1864, line: 18, baseType: !7, size: 32)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1869, file: !1864, line: 19, baseType: !1873, size: 32)
!1873 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 32, elements: !1874)
!1874 = !{!1875}
!1875 = !DISubrange(count: 4)
!1876 = !DILocalVariable(name: "w", scope: !1877, file: !150, line: 631, type: !1878)
!1877 = distinct !DILexicalBlock(scope: !1859, file: !150, line: 630, column: 19)
!1878 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !35, line: 90, baseType: !49)
!1879 = !DILocalVariable(name: "bytes", scope: !1877, file: !150, line: 632, type: !34)
!1880 = !DILocalVariable(name: "j", scope: !1881, file: !150, line: 657, type: !34)
!1881 = distinct !DILexicalBlock(scope: !1882, file: !150, line: 656, column: 27)
!1882 = distinct !DILexicalBlock(scope: !1883, file: !150, line: 654, column: 29)
!1883 = distinct !DILexicalBlock(scope: !1884, file: !150, line: 649, column: 23)
!1884 = distinct !DILexicalBlock(scope: !1885, file: !150, line: 641, column: 30)
!1885 = distinct !DILexicalBlock(scope: !1886, file: !150, line: 636, column: 30)
!1886 = distinct !DILexicalBlock(scope: !1877, file: !150, line: 634, column: 25)
!1887 = !DILocalVariable(name: "ilim", scope: !1888, file: !150, line: 684, type: !34)
!1888 = distinct !DILexicalBlock(scope: !1889, file: !150, line: 681, column: 15)
!1889 = distinct !DILexicalBlock(scope: !1855, file: !150, line: 680, column: 17)
!1890 = !DILocation(line: 256, column: 33, scope: !1820)
!1891 = !DILocation(line: 256, column: 48, scope: !1820)
!1892 = !DILocation(line: 257, column: 39, scope: !1820)
!1893 = !DILocation(line: 257, column: 51, scope: !1820)
!1894 = !DILocation(line: 258, column: 46, scope: !1820)
!1895 = !DILocation(line: 258, column: 65, scope: !1820)
!1896 = !DILocation(line: 259, column: 47, scope: !1820)
!1897 = !DILocation(line: 260, column: 39, scope: !1820)
!1898 = !DILocation(line: 261, column: 39, scope: !1820)
!1899 = !DILocation(line: 264, column: 10, scope: !1820)
!1900 = !DILocation(line: 265, column: 10, scope: !1820)
!1901 = !DILocation(line: 266, column: 15, scope: !1820)
!1902 = !DILocation(line: 267, column: 10, scope: !1820)
!1903 = !DILocation(line: 268, column: 8, scope: !1820)
!1904 = !DILocation(line: 269, column: 25, scope: !1820)
!1905 = !DILocation(line: 269, column: 36, scope: !1820)
!1906 = !DILocation(line: 270, column: 8, scope: !1820)
!1907 = !DILocation(line: 271, column: 8, scope: !1820)
!1908 = !DILocation(line: 272, column: 8, scope: !1820)
!1909 = !DILocation(line: 273, column: 8, scope: !1820)
!1910 = !DILocation(line: 273, column: 3, scope: !1820)
!1911 = !DILocation(line: 0, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1820, file: !150, line: 317, column: 5)
!1913 = !DILocation(line: 316, column: 3, scope: !1820)
!1914 = !DILocation(line: 323, column: 11, scope: !1912)
!1915 = !DILocation(line: 323, column: 12, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1912, file: !150, line: 323, column: 11)
!1917 = !DILocation(line: 324, column: 9, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1919, file: !150, line: 324, column: 9)
!1919 = distinct !DILexicalBlock(scope: !1916, file: !150, line: 324, column: 9)
!1920 = !DILocation(line: 324, column: 9, scope: !1919)
!1921 = !{!692, !692, i64 0}
!1922 = !DILocation(line: 362, column: 26, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1924, file: !150, line: 340, column: 11)
!1924 = distinct !DILexicalBlock(scope: !1925, file: !150, line: 339, column: 13)
!1925 = distinct !DILexicalBlock(scope: !1912, file: !150, line: 338, column: 7)
!1926 = !DILocation(line: 363, column: 27, scope: !1923)
!1927 = !DILocation(line: 364, column: 11, scope: !1923)
!1928 = !DILocation(line: 365, column: 14, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1925, file: !150, line: 365, column: 13)
!1930 = !DILocation(line: 365, column: 13, scope: !1925)
!1931 = !DILocation(line: 366, column: 43, scope: !1932)
!1932 = distinct !DILexicalBlock(scope: !1933, file: !150, line: 366, column: 11)
!1933 = distinct !DILexicalBlock(scope: !1929, file: !150, line: 366, column: 11)
!1934 = !DILocation(line: 366, column: 11, scope: !1933)
!1935 = !DILocation(line: 367, column: 13, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !1937, file: !150, line: 367, column: 13)
!1937 = distinct !DILexicalBlock(scope: !1932, file: !150, line: 367, column: 13)
!1938 = !DILocation(line: 367, column: 13, scope: !1937)
!1939 = !DILocation(line: 366, column: 70, scope: !1932)
!1940 = distinct !{!1940, !1934, !1941}
!1941 = !DILocation(line: 367, column: 13, scope: !1933)
!1942 = !DILocation(line: 370, column: 28, scope: !1925)
!1943 = !DILocation(line: 372, column: 7, scope: !1912)
!1944 = !DILocation(line: 376, column: 7, scope: !1912)
!1945 = !DILocation(line: 379, column: 7, scope: !1912)
!1946 = !DILocation(line: 381, column: 12, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1912, file: !150, line: 381, column: 11)
!1948 = !DILocation(line: 381, column: 11, scope: !1912)
!1949 = !DILocation(line: 0, scope: !1947)
!1950 = !DILocation(line: 386, column: 12, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1912, file: !150, line: 386, column: 11)
!1952 = !DILocation(line: 386, column: 11, scope: !1912)
!1953 = !DILocation(line: 387, column: 9, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !1955, file: !150, line: 387, column: 9)
!1955 = distinct !DILexicalBlock(scope: !1951, file: !150, line: 387, column: 9)
!1956 = !DILocation(line: 387, column: 9, scope: !1955)
!1957 = !DILocation(line: 394, column: 7, scope: !1912)
!1958 = !DILocation(line: 397, column: 7, scope: !1912)
!1959 = !DILocation(line: 0, scope: !1820)
!1960 = !DILocation(line: 263, column: 10, scope: !1820)
!1961 = !DILocation(line: 400, column: 8, scope: !1849)
!1962 = !DILocation(line: 0, scope: !1848)
!1963 = !DILocation(line: 400, column: 27, scope: !1848)
!1964 = !DILocation(line: 400, column: 19, scope: !1848)
!1965 = !DILocation(line: 400, column: 41, scope: !1848)
!1966 = !DILocation(line: 400, column: 48, scope: !1848)
!1967 = !DILocation(line: 400, column: 3, scope: !1849)
!1968 = !DILocation(line: 400, column: 60, scope: !1848)
!1969 = !DILocation(line: 404, column: 12, scope: !1847)
!1970 = !DILocation(line: 405, column: 12, scope: !1847)
!1971 = !DILocation(line: 406, column: 12, scope: !1847)
!1972 = !DILocation(line: 409, column: 11, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !1847, file: !150, line: 408, column: 11)
!1974 = !DILocation(line: 411, column: 17, scope: !1973)
!1975 = !DILocation(line: 412, column: 39, scope: !1973)
!1976 = !DILocation(line: 416, column: 32, scope: !1973)
!1977 = !DILocation(line: 412, column: 19, scope: !1973)
!1978 = !DILocation(line: 412, column: 15, scope: !1973)
!1979 = !DILocation(line: 417, column: 11, scope: !1973)
!1980 = !DILocation(line: 417, column: 26, scope: !1973)
!1981 = !DILocation(line: 417, column: 14, scope: !1973)
!1982 = !DILocation(line: 417, column: 63, scope: !1973)
!1983 = !DILocation(line: 408, column: 11, scope: !1847)
!1984 = !DILocation(line: 0, scope: !1847)
!1985 = !DILocation(line: 424, column: 11, scope: !1847)
!1986 = !DILocation(line: 402, column: 21, scope: !1847)
!1987 = !DILocation(line: 425, column: 7, scope: !1847)
!1988 = !DILocation(line: 428, column: 15, scope: !1856)
!1989 = !DILocation(line: 430, column: 15, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1991, file: !150, line: 430, column: 15)
!1991 = distinct !DILexicalBlock(scope: !1992, file: !150, line: 429, column: 13)
!1992 = distinct !DILexicalBlock(scope: !1856, file: !150, line: 428, column: 15)
!1993 = !DILocation(line: 430, column: 15, scope: !1994)
!1994 = distinct !DILexicalBlock(scope: !1990, file: !150, line: 430, column: 15)
!1995 = !DILocation(line: 430, column: 15, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1997, file: !150, line: 430, column: 15)
!1997 = distinct !DILexicalBlock(scope: !1998, file: !150, line: 430, column: 15)
!1998 = distinct !DILexicalBlock(scope: !1994, file: !150, line: 430, column: 15)
!1999 = !DILocation(line: 430, column: 15, scope: !1997)
!2000 = !DILocation(line: 430, column: 15, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !2002, file: !150, line: 430, column: 15)
!2002 = distinct !DILexicalBlock(scope: !1998, file: !150, line: 430, column: 15)
!2003 = !DILocation(line: 430, column: 15, scope: !2002)
!2004 = !DILocation(line: 430, column: 15, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !2006, file: !150, line: 430, column: 15)
!2006 = distinct !DILexicalBlock(scope: !1998, file: !150, line: 430, column: 15)
!2007 = !DILocation(line: 430, column: 15, scope: !2006)
!2008 = !DILocation(line: 430, column: 15, scope: !1998)
!2009 = !DILocation(line: 430, column: 15, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !2011, file: !150, line: 430, column: 15)
!2011 = distinct !DILexicalBlock(scope: !1990, file: !150, line: 430, column: 15)
!2012 = !DILocation(line: 430, column: 15, scope: !2011)
!2013 = !DILocation(line: 438, column: 19, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !1991, file: !150, line: 437, column: 19)
!2015 = !DILocation(line: 438, column: 24, scope: !2014)
!2016 = !DILocation(line: 438, column: 28, scope: !2014)
!2017 = !DILocation(line: 438, column: 38, scope: !2014)
!2018 = !DILocation(line: 438, column: 48, scope: !2014)
!2019 = !DILocation(line: 438, column: 59, scope: !2014)
!2020 = !DILocation(line: 440, column: 19, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !2022, file: !150, line: 440, column: 19)
!2022 = distinct !DILexicalBlock(scope: !2023, file: !150, line: 440, column: 19)
!2023 = distinct !DILexicalBlock(scope: !2014, file: !150, line: 439, column: 17)
!2024 = !DILocation(line: 440, column: 19, scope: !2022)
!2025 = !DILocation(line: 441, column: 19, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !2027, file: !150, line: 441, column: 19)
!2027 = distinct !DILexicalBlock(scope: !2023, file: !150, line: 441, column: 19)
!2028 = !DILocation(line: 441, column: 19, scope: !2027)
!2029 = !DILocation(line: 442, column: 17, scope: !2023)
!2030 = !DILocation(line: 449, column: 20, scope: !1992)
!2031 = !DILocation(line: 454, column: 11, scope: !1856)
!2032 = !DILocation(line: 457, column: 19, scope: !2033)
!2033 = distinct !DILexicalBlock(scope: !1856, file: !150, line: 455, column: 13)
!2034 = !DILocation(line: 463, column: 19, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !2033, file: !150, line: 462, column: 19)
!2036 = !DILocation(line: 463, column: 24, scope: !2035)
!2037 = !DILocation(line: 463, column: 28, scope: !2035)
!2038 = !DILocation(line: 463, column: 38, scope: !2035)
!2039 = !DILocation(line: 463, column: 47, scope: !2035)
!2040 = !DILocation(line: 463, column: 41, scope: !2035)
!2041 = !DILocation(line: 463, column: 52, scope: !2035)
!2042 = !DILocation(line: 462, column: 19, scope: !2033)
!2043 = !DILocation(line: 464, column: 25, scope: !2035)
!2044 = !DILocation(line: 464, column: 17, scope: !2035)
!2045 = !DILocation(line: 471, column: 25, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !2035, file: !150, line: 465, column: 19)
!2047 = !DILocation(line: 475, column: 21, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !2049, file: !150, line: 475, column: 21)
!2049 = distinct !DILexicalBlock(scope: !2046, file: !150, line: 475, column: 21)
!2050 = !DILocation(line: 475, column: 21, scope: !2049)
!2051 = !DILocation(line: 476, column: 21, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !2053, file: !150, line: 476, column: 21)
!2053 = distinct !DILexicalBlock(scope: !2046, file: !150, line: 476, column: 21)
!2054 = !DILocation(line: 476, column: 21, scope: !2053)
!2055 = !DILocation(line: 477, column: 21, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !2057, file: !150, line: 477, column: 21)
!2057 = distinct !DILexicalBlock(scope: !2046, file: !150, line: 477, column: 21)
!2058 = !DILocation(line: 477, column: 21, scope: !2057)
!2059 = !DILocation(line: 478, column: 21, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !2061, file: !150, line: 478, column: 21)
!2061 = distinct !DILexicalBlock(scope: !2046, file: !150, line: 478, column: 21)
!2062 = !DILocation(line: 478, column: 21, scope: !2061)
!2063 = !DILocation(line: 479, column: 21, scope: !2046)
!2064 = !DILocation(line: 403, column: 21, scope: !1847)
!2065 = !DILocation(line: 492, column: 31, scope: !1856)
!2066 = !DILocation(line: 493, column: 31, scope: !1856)
!2067 = !DILocation(line: 495, column: 31, scope: !1856)
!2068 = !DILocation(line: 496, column: 31, scope: !1856)
!2069 = !DILocation(line: 497, column: 31, scope: !1856)
!2070 = !DILocation(line: 500, column: 15, scope: !1856)
!2071 = !DILocation(line: 502, column: 19, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !2073, file: !150, line: 501, column: 13)
!2073 = distinct !DILexicalBlock(scope: !1856, file: !150, line: 500, column: 15)
!2074 = !DILocation(line: 509, column: 33, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !1856, file: !150, line: 509, column: 15)
!2076 = !DILocation(line: 0, scope: !1856)
!2077 = !DILocation(line: 514, column: 15, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !1856, file: !150, line: 513, column: 15)
!2079 = !DILocation(line: 518, column: 15, scope: !1856)
!2080 = !DILocation(line: 526, column: 26, scope: !2081)
!2081 = distinct !DILexicalBlock(scope: !1856, file: !150, line: 526, column: 15)
!2082 = !DILocation(line: 526, column: 15, scope: !1856)
!2083 = !DILocation(line: 526, column: 40, scope: !2081)
!2084 = !DILocation(line: 526, column: 47, scope: !2081)
!2085 = !DILocation(line: 530, column: 17, scope: !2086)
!2086 = distinct !DILexicalBlock(scope: !1856, file: !150, line: 530, column: 15)
!2087 = !DILocation(line: 526, column: 18, scope: !2081)
!2088 = !DILocation(line: 526, column: 65, scope: !2081)
!2089 = !DILocation(line: 530, column: 15, scope: !1856)
!2090 = !DILocation(line: 535, column: 11, scope: !1856)
!2091 = !DILocation(line: 549, column: 15, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !1856, file: !150, line: 548, column: 15)
!2093 = !DILocation(line: 556, column: 15, scope: !1856)
!2094 = !DILocation(line: 558, column: 19, scope: !2095)
!2095 = distinct !DILexicalBlock(scope: !2096, file: !150, line: 557, column: 13)
!2096 = distinct !DILexicalBlock(scope: !1856, file: !150, line: 556, column: 15)
!2097 = !DILocation(line: 561, column: 19, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !2095, file: !150, line: 561, column: 19)
!2099 = !DILocation(line: 561, column: 35, scope: !2098)
!2100 = !DILocation(line: 561, column: 30, scope: !2098)
!2101 = !DILocation(line: 570, column: 15, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !2103, file: !150, line: 570, column: 15)
!2103 = distinct !DILexicalBlock(scope: !2095, file: !150, line: 570, column: 15)
!2104 = !DILocation(line: 570, column: 15, scope: !2103)
!2105 = !DILocation(line: 571, column: 15, scope: !2106)
!2106 = distinct !DILexicalBlock(scope: !2107, file: !150, line: 571, column: 15)
!2107 = distinct !DILexicalBlock(scope: !2095, file: !150, line: 571, column: 15)
!2108 = !DILocation(line: 571, column: 15, scope: !2107)
!2109 = !DILocation(line: 572, column: 15, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2111, file: !150, line: 572, column: 15)
!2111 = distinct !DILexicalBlock(scope: !2095, file: !150, line: 572, column: 15)
!2112 = !DILocation(line: 572, column: 15, scope: !2111)
!2113 = !DILocation(line: 574, column: 13, scope: !2095)
!2114 = !DILocation(line: 614, column: 17, scope: !1855)
!2115 = !DILocation(line: 610, column: 20, scope: !1855)
!2116 = !DILocation(line: 617, column: 29, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !1860, file: !150, line: 615, column: 15)
!2118 = !{!2119, !2119, i64 0}
!2119 = !{!"short", !692, i64 0}
!2120 = !DILocation(line: 617, column: 27, scope: !2117)
!2121 = !DILocation(line: 612, column: 18, scope: !1855)
!2122 = !DILocation(line: 618, column: 15, scope: !2117)
!2123 = !DILocation(line: 621, column: 17, scope: !1859)
!2124 = !DILocation(line: 622, column: 17, scope: !1859)
!2125 = !DILocation(line: 626, column: 29, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !1859, file: !150, line: 626, column: 21)
!2127 = !DILocation(line: 626, column: 21, scope: !1859)
!2128 = !DILocation(line: 627, column: 29, scope: !2126)
!2129 = !DILocation(line: 627, column: 19, scope: !2126)
!2130 = !DILocation(line: 0, scope: !1973)
!2131 = !DILocation(line: 629, column: 17, scope: !1859)
!2132 = !DILocation(line: 624, column: 19, scope: !1859)
!2133 = !DILocation(line: 625, column: 27, scope: !1859)
!2134 = !DILocation(line: 631, column: 21, scope: !1877)
!2135 = !DILocation(line: 632, column: 56, scope: !1877)
!2136 = !DILocation(line: 632, column: 50, scope: !1877)
!2137 = !DILocation(line: 633, column: 53, scope: !1877)
!2138 = !DILocation(line: 621, column: 27, scope: !1859)
!2139 = !DILocation(line: 631, column: 29, scope: !1877)
!2140 = !DILocation(line: 632, column: 36, scope: !1877)
!2141 = !DILocation(line: 632, column: 28, scope: !1877)
!2142 = !DILocation(line: 634, column: 25, scope: !1877)
!2143 = !DILocation(line: 644, column: 38, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !1884, file: !150, line: 642, column: 23)
!2145 = !DILocation(line: 644, column: 48, scope: !2144)
!2146 = !DILocation(line: 644, column: 51, scope: !2144)
!2147 = !DILocation(line: 644, column: 25, scope: !2144)
!2148 = !DILocation(line: 645, column: 28, scope: !2144)
!2149 = !DILocation(line: 644, column: 34, scope: !2144)
!2150 = distinct !{!2150, !2147, !2148}
!2151 = !DILocation(line: 658, column: 43, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !2153, file: !150, line: 658, column: 29)
!2153 = distinct !DILexicalBlock(scope: !1881, file: !150, line: 658, column: 29)
!2154 = !DILocation(line: 655, column: 29, scope: !1882)
!2155 = !DILocation(line: 657, column: 36, scope: !1881)
!2156 = !DILocation(line: 659, column: 49, scope: !2152)
!2157 = !DILocation(line: 659, column: 39, scope: !2152)
!2158 = !DILocation(line: 659, column: 31, scope: !2152)
!2159 = !DILocation(line: 658, column: 53, scope: !2152)
!2160 = !DILocation(line: 658, column: 29, scope: !2153)
!2161 = distinct !{!2161, !2160, !2162}
!2162 = !DILocation(line: 667, column: 33, scope: !2153)
!2163 = !DILocation(line: 674, column: 19, scope: !1859)
!2164 = !DILocation(line: 670, column: 41, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !1883, file: !150, line: 670, column: 29)
!2166 = !DILocation(line: 670, column: 31, scope: !2165)
!2167 = !DILocation(line: 670, column: 29, scope: !1883)
!2168 = !DILocation(line: 672, column: 27, scope: !1883)
!2169 = !DILocation(line: 675, column: 26, scope: !1859)
!2170 = !DILocation(line: 675, column: 24, scope: !1859)
!2171 = !DILocation(line: 674, column: 19, scope: !1877)
!2172 = distinct !{!2172, !2131, !2173}
!2173 = !DILocation(line: 675, column: 44, scope: !1859)
!2174 = !DILocation(line: 676, column: 15, scope: !1860)
!2175 = !DILocation(line: 0, scope: !2126)
!2176 = !DILocation(line: 0, scope: !1859)
!2177 = !DILocation(line: 678, column: 40, scope: !1855)
!2178 = !DILocation(line: 680, column: 19, scope: !1889)
!2179 = !DILocation(line: 680, column: 45, scope: !1889)
!2180 = !DILocation(line: 680, column: 23, scope: !1889)
!2181 = !DILocation(line: 684, column: 33, scope: !1888)
!2182 = !DILocation(line: 684, column: 24, scope: !1888)
!2183 = !DILocation(line: 686, column: 17, scope: !1888)
!2184 = !DILocation(line: 0, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !2186, file: !150, line: 687, column: 19)
!2186 = distinct !DILexicalBlock(scope: !2187, file: !150, line: 686, column: 17)
!2187 = distinct !DILexicalBlock(scope: !1888, file: !150, line: 686, column: 17)
!2188 = !DILocation(line: 0, scope: !2189)
!2189 = distinct !DILexicalBlock(scope: !2185, file: !150, line: 703, column: 21)
!2190 = !DILocation(line: 0, scope: !2191)
!2191 = distinct !DILexicalBlock(scope: !2192, file: !150, line: 696, column: 23)
!2192 = distinct !DILexicalBlock(scope: !2193, file: !150, line: 695, column: 30)
!2193 = distinct !DILexicalBlock(scope: !2185, file: !150, line: 688, column: 25)
!2194 = !DILocation(line: 688, column: 43, scope: !2193)
!2195 = !DILocation(line: 690, column: 25, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !2197, file: !150, line: 690, column: 25)
!2197 = distinct !DILexicalBlock(scope: !2193, file: !150, line: 689, column: 23)
!2198 = !DILocation(line: 690, column: 25, scope: !2199)
!2199 = distinct !DILexicalBlock(scope: !2196, file: !150, line: 690, column: 25)
!2200 = !DILocation(line: 690, column: 25, scope: !2201)
!2201 = distinct !DILexicalBlock(scope: !2202, file: !150, line: 690, column: 25)
!2202 = distinct !DILexicalBlock(scope: !2203, file: !150, line: 690, column: 25)
!2203 = distinct !DILexicalBlock(scope: !2199, file: !150, line: 690, column: 25)
!2204 = !DILocation(line: 690, column: 25, scope: !2202)
!2205 = !DILocation(line: 690, column: 25, scope: !2206)
!2206 = distinct !DILexicalBlock(scope: !2207, file: !150, line: 690, column: 25)
!2207 = distinct !DILexicalBlock(scope: !2203, file: !150, line: 690, column: 25)
!2208 = !DILocation(line: 690, column: 25, scope: !2207)
!2209 = !DILocation(line: 690, column: 25, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !2211, file: !150, line: 690, column: 25)
!2211 = distinct !DILexicalBlock(scope: !2203, file: !150, line: 690, column: 25)
!2212 = !DILocation(line: 690, column: 25, scope: !2211)
!2213 = !DILocation(line: 690, column: 25, scope: !2203)
!2214 = !DILocation(line: 690, column: 25, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !2216, file: !150, line: 690, column: 25)
!2216 = distinct !DILexicalBlock(scope: !2196, file: !150, line: 690, column: 25)
!2217 = !DILocation(line: 690, column: 25, scope: !2216)
!2218 = !DILocation(line: 691, column: 25, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !2220, file: !150, line: 691, column: 25)
!2220 = distinct !DILexicalBlock(scope: !2197, file: !150, line: 691, column: 25)
!2221 = !DILocation(line: 691, column: 25, scope: !2220)
!2222 = !DILocation(line: 692, column: 25, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !2224, file: !150, line: 692, column: 25)
!2224 = distinct !DILexicalBlock(scope: !2197, file: !150, line: 692, column: 25)
!2225 = !DILocation(line: 692, column: 25, scope: !2224)
!2226 = !DILocation(line: 693, column: 38, scope: !2197)
!2227 = !DILocation(line: 693, column: 33, scope: !2197)
!2228 = !DILocation(line: 694, column: 23, scope: !2197)
!2229 = !DILocation(line: 695, column: 30, scope: !2192)
!2230 = !DILocation(line: 695, column: 30, scope: !2193)
!2231 = !DILocation(line: 697, column: 25, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !2233, file: !150, line: 697, column: 25)
!2233 = distinct !DILexicalBlock(scope: !2191, file: !150, line: 697, column: 25)
!2234 = !DILocation(line: 697, column: 25, scope: !2233)
!2235 = !DILocation(line: 699, column: 23, scope: !2191)
!2236 = !DILocation(line: 0, scope: !2224)
!2237 = !DILocation(line: 0, scope: !2197)
!2238 = !DILocation(line: 0, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !1973, file: !150, line: 418, column: 9)
!2240 = !DILocation(line: 0, scope: !2196)
!2241 = !DILocation(line: 700, column: 35, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !2185, file: !150, line: 700, column: 25)
!2243 = !DILocation(line: 700, column: 30, scope: !2242)
!2244 = !DILocation(line: 700, column: 25, scope: !2185)
!2245 = !DILocation(line: 702, column: 21, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !2247, file: !150, line: 702, column: 21)
!2247 = distinct !DILexicalBlock(scope: !2185, file: !150, line: 702, column: 21)
!2248 = !DILocation(line: 702, column: 21, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !2250, file: !150, line: 702, column: 21)
!2250 = distinct !DILexicalBlock(scope: !2251, file: !150, line: 702, column: 21)
!2251 = distinct !DILexicalBlock(scope: !2246, file: !150, line: 702, column: 21)
!2252 = !DILocation(line: 702, column: 21, scope: !2250)
!2253 = !DILocation(line: 702, column: 21, scope: !2254)
!2254 = distinct !DILexicalBlock(scope: !2255, file: !150, line: 702, column: 21)
!2255 = distinct !DILexicalBlock(scope: !2251, file: !150, line: 702, column: 21)
!2256 = !DILocation(line: 702, column: 21, scope: !2255)
!2257 = !DILocation(line: 702, column: 21, scope: !2251)
!2258 = !DILocation(line: 0, scope: !2233)
!2259 = !DILocation(line: 703, column: 21, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !2189, file: !150, line: 703, column: 21)
!2261 = !DILocation(line: 703, column: 21, scope: !2189)
!2262 = !DILocation(line: 704, column: 25, scope: !2185)
!2263 = !DILocation(line: 686, column: 17, scope: !2186)
!2264 = distinct !{!2264, !2265, !2266}
!2265 = !DILocation(line: 686, column: 17, scope: !2187)
!2266 = !DILocation(line: 705, column: 19, scope: !2187)
!2267 = !DILocation(line: 0, scope: !1849)
!2268 = !DILocation(line: 416, column: 30, scope: !1973)
!2269 = !DILocation(line: 712, column: 34, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !1847, file: !150, line: 712, column: 11)
!2271 = !DILocation(line: 714, column: 14, scope: !2270)
!2272 = !DILocation(line: 715, column: 14, scope: !2270)
!2273 = !DILocation(line: 715, column: 35, scope: !2270)
!2274 = !DILocation(line: 715, column: 17, scope: !2270)
!2275 = !DILocation(line: 715, column: 47, scope: !2270)
!2276 = !DILocation(line: 715, column: 65, scope: !2270)
!2277 = !DILocation(line: 716, column: 15, scope: !2270)
!2278 = !DILocation(line: 716, column: 11, scope: !2270)
!2279 = !DILocation(line: 712, column: 11, scope: !1847)
!2280 = !DILocation(line: 400, column: 10, scope: !1849)
!2281 = !DILocation(line: 0, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !2283, file: !150, line: 519, column: 13)
!2283 = distinct !DILexicalBlock(scope: !1856, file: !150, line: 518, column: 15)
!2284 = !DILocation(line: 720, column: 7, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !1847, file: !150, line: 720, column: 7)
!2286 = !DILocation(line: 720, column: 7, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !2285, file: !150, line: 720, column: 7)
!2288 = !DILocation(line: 720, column: 7, scope: !2289)
!2289 = distinct !DILexicalBlock(scope: !2290, file: !150, line: 720, column: 7)
!2290 = distinct !DILexicalBlock(scope: !2291, file: !150, line: 720, column: 7)
!2291 = distinct !DILexicalBlock(scope: !2287, file: !150, line: 720, column: 7)
!2292 = !DILocation(line: 720, column: 7, scope: !2290)
!2293 = !DILocation(line: 720, column: 7, scope: !2294)
!2294 = distinct !DILexicalBlock(scope: !2295, file: !150, line: 720, column: 7)
!2295 = distinct !DILexicalBlock(scope: !2291, file: !150, line: 720, column: 7)
!2296 = !DILocation(line: 720, column: 7, scope: !2295)
!2297 = !DILocation(line: 720, column: 7, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2299, file: !150, line: 720, column: 7)
!2299 = distinct !DILexicalBlock(scope: !2291, file: !150, line: 720, column: 7)
!2300 = !DILocation(line: 720, column: 7, scope: !2299)
!2301 = !DILocation(line: 720, column: 7, scope: !2291)
!2302 = !DILocation(line: 720, column: 7, scope: !2303)
!2303 = distinct !DILexicalBlock(scope: !2304, file: !150, line: 720, column: 7)
!2304 = distinct !DILexicalBlock(scope: !2285, file: !150, line: 720, column: 7)
!2305 = !DILocation(line: 720, column: 7, scope: !2304)
!2306 = !DILocation(line: 723, column: 7, scope: !2307)
!2307 = distinct !DILexicalBlock(scope: !2308, file: !150, line: 723, column: 7)
!2308 = distinct !DILexicalBlock(scope: !1847, file: !150, line: 723, column: 7)
!2309 = !DILocation(line: 424, column: 9, scope: !1847)
!2310 = !DILocation(line: 723, column: 7, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !2312, file: !150, line: 723, column: 7)
!2312 = distinct !DILexicalBlock(scope: !2313, file: !150, line: 723, column: 7)
!2313 = distinct !DILexicalBlock(scope: !2307, file: !150, line: 723, column: 7)
!2314 = !DILocation(line: 723, column: 7, scope: !2312)
!2315 = !DILocation(line: 723, column: 7, scope: !2316)
!2316 = distinct !DILexicalBlock(scope: !2317, file: !150, line: 723, column: 7)
!2317 = distinct !DILexicalBlock(scope: !2313, file: !150, line: 723, column: 7)
!2318 = !DILocation(line: 723, column: 7, scope: !2317)
!2319 = !DILocation(line: 723, column: 7, scope: !2313)
!2320 = !DILocation(line: 724, column: 7, scope: !2321)
!2321 = distinct !DILexicalBlock(scope: !2322, file: !150, line: 724, column: 7)
!2322 = distinct !DILexicalBlock(scope: !1847, file: !150, line: 724, column: 7)
!2323 = !DILocation(line: 724, column: 7, scope: !2322)
!2324 = !DILocation(line: 726, column: 13, scope: !2325)
!2325 = distinct !DILexicalBlock(scope: !1847, file: !150, line: 726, column: 11)
!2326 = !DILocation(line: 726, column: 11, scope: !1847)
!2327 = !DILocation(line: 728, column: 5, scope: !1848)
!2328 = !DILocation(line: 400, column: 75, scope: !1848)
!2329 = !DILocation(line: 400, column: 3, scope: !1848)
!2330 = distinct !{!2330, !1967, !2331}
!2331 = !DILocation(line: 728, column: 5, scope: !1849)
!2332 = !DILocation(line: 730, column: 11, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !1820, file: !150, line: 730, column: 7)
!2334 = !DILocation(line: 730, column: 16, scope: !2333)
!2335 = !DILocation(line: 738, column: 51, scope: !2336)
!2336 = distinct !DILexicalBlock(scope: !1820, file: !150, line: 738, column: 7)
!2337 = !DILocation(line: 739, column: 10, scope: !2336)
!2338 = !DILocation(line: 741, column: 11, scope: !2339)
!2339 = distinct !DILexicalBlock(scope: !2340, file: !150, line: 741, column: 11)
!2340 = distinct !DILexicalBlock(scope: !2336, file: !150, line: 740, column: 5)
!2341 = !DILocation(line: 741, column: 11, scope: !2340)
!2342 = !DILocation(line: 742, column: 16, scope: !2339)
!2343 = !DILocation(line: 742, column: 9, scope: !2339)
!2344 = !DILocation(line: 746, column: 18, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2339, file: !150, line: 746, column: 16)
!2346 = !DILocation(line: 746, column: 32, scope: !2345)
!2347 = !DILocation(line: 746, column: 29, scope: !2345)
!2348 = !DILocation(line: 755, column: 7, scope: !2349)
!2349 = distinct !DILexicalBlock(scope: !1820, file: !150, line: 755, column: 7)
!2350 = !DILocation(line: 755, column: 20, scope: !2349)
!2351 = !DILocation(line: 756, column: 12, scope: !2352)
!2352 = distinct !DILexicalBlock(scope: !2353, file: !150, line: 756, column: 5)
!2353 = distinct !DILexicalBlock(scope: !2349, file: !150, line: 756, column: 5)
!2354 = !DILocation(line: 756, column: 5, scope: !2353)
!2355 = !DILocation(line: 757, column: 7, scope: !2356)
!2356 = distinct !DILexicalBlock(scope: !2357, file: !150, line: 757, column: 7)
!2357 = distinct !DILexicalBlock(scope: !2352, file: !150, line: 757, column: 7)
!2358 = !DILocation(line: 757, column: 7, scope: !2357)
!2359 = !DILocation(line: 756, column: 39, scope: !2352)
!2360 = distinct !{!2360, !2354, !2361}
!2361 = !DILocation(line: 757, column: 7, scope: !2353)
!2362 = !DILocation(line: 759, column: 11, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !1820, file: !150, line: 759, column: 7)
!2364 = !DILocation(line: 759, column: 7, scope: !1820)
!2365 = !DILocation(line: 760, column: 5, scope: !2363)
!2366 = !DILocation(line: 760, column: 17, scope: !2363)
!2367 = !DILocation(line: 766, column: 21, scope: !2368)
!2368 = distinct !DILexicalBlock(scope: !1820, file: !150, line: 766, column: 7)
!2369 = !DILocation(line: 766, column: 54, scope: !2368)
!2370 = !DILocation(line: 766, column: 51, scope: !2368)
!2371 = !DILocation(line: 770, column: 42, scope: !1820)
!2372 = !DILocation(line: 768, column: 10, scope: !1820)
!2373 = !DILocation(line: 768, column: 3, scope: !1820)
!2374 = !DILocation(line: 772, column: 1, scope: !1820)
!2375 = distinct !DISubprogram(name: "gettext_quote", scope: !150, file: !150, line: 207, type: !2376, isLocal: true, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: true, unit: !122, retainedNodes: !2378)
!2376 = !DISubroutineType(types: !2377)
!2377 = !{!30, !30, !5}
!2378 = !{!2379, !2380, !2381, !2382}
!2379 = !DILocalVariable(name: "msgid", arg: 1, scope: !2375, file: !150, line: 207, type: !30)
!2380 = !DILocalVariable(name: "s", arg: 2, scope: !2375, file: !150, line: 207, type: !5)
!2381 = !DILocalVariable(name: "translation", scope: !2375, file: !150, line: 209, type: !30)
!2382 = !DILocalVariable(name: "locale_code", scope: !2375, file: !150, line: 210, type: !30)
!2383 = !DILocation(line: 207, column: 28, scope: !2375)
!2384 = !DILocation(line: 207, column: 54, scope: !2375)
!2385 = !DILocation(line: 209, column: 29, scope: !2375)
!2386 = !DILocation(line: 209, column: 15, scope: !2375)
!2387 = !DILocation(line: 212, column: 19, scope: !2388)
!2388 = distinct !DILexicalBlock(scope: !2375, file: !150, line: 212, column: 7)
!2389 = !DILocation(line: 212, column: 7, scope: !2375)
!2390 = !DILocation(line: 233, column: 17, scope: !2375)
!2391 = !DILocation(line: 210, column: 15, scope: !2375)
!2392 = !DILocalVariable(name: "s1", arg: 1, scope: !2393, file: !2394, line: 160, type: !30)
!2393 = distinct !DISubprogram(name: "strcaseeq0", scope: !2394, file: !2394, line: 160, type: !2395, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !122, retainedNodes: !2397)
!2394 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2395 = !DISubroutineType(types: !2396)
!2396 = !{!49, !30, !30, !32, !32, !32, !32, !32, !32, !32, !32, !32}
!2397 = !{!2392, !2398, !2399, !2400, !2401, !2402, !2403, !2404, !2405, !2406, !2407}
!2398 = !DILocalVariable(name: "s2", arg: 2, scope: !2393, file: !2394, line: 160, type: !30)
!2399 = !DILocalVariable(name: "s20", arg: 3, scope: !2393, file: !2394, line: 160, type: !32)
!2400 = !DILocalVariable(name: "s21", arg: 4, scope: !2393, file: !2394, line: 160, type: !32)
!2401 = !DILocalVariable(name: "s22", arg: 5, scope: !2393, file: !2394, line: 160, type: !32)
!2402 = !DILocalVariable(name: "s23", arg: 6, scope: !2393, file: !2394, line: 160, type: !32)
!2403 = !DILocalVariable(name: "s24", arg: 7, scope: !2393, file: !2394, line: 160, type: !32)
!2404 = !DILocalVariable(name: "s25", arg: 8, scope: !2393, file: !2394, line: 160, type: !32)
!2405 = !DILocalVariable(name: "s26", arg: 9, scope: !2393, file: !2394, line: 160, type: !32)
!2406 = !DILocalVariable(name: "s27", arg: 10, scope: !2393, file: !2394, line: 160, type: !32)
!2407 = !DILocalVariable(name: "s28", arg: 11, scope: !2393, file: !2394, line: 160, type: !32)
!2408 = !DILocation(line: 160, column: 25, scope: !2393, inlinedAt: !2409)
!2409 = distinct !DILocation(line: 234, column: 7, scope: !2410)
!2410 = distinct !DILexicalBlock(scope: !2375, file: !150, line: 234, column: 7)
!2411 = !DILocation(line: 160, column: 41, scope: !2393, inlinedAt: !2409)
!2412 = !DILocation(line: 160, column: 50, scope: !2393, inlinedAt: !2409)
!2413 = !DILocation(line: 160, column: 60, scope: !2393, inlinedAt: !2409)
!2414 = !DILocation(line: 160, column: 70, scope: !2393, inlinedAt: !2409)
!2415 = !DILocation(line: 160, column: 80, scope: !2393, inlinedAt: !2409)
!2416 = !DILocation(line: 160, column: 90, scope: !2393, inlinedAt: !2409)
!2417 = !DILocation(line: 160, column: 100, scope: !2393, inlinedAt: !2409)
!2418 = !DILocation(line: 160, column: 110, scope: !2393, inlinedAt: !2409)
!2419 = !DILocation(line: 160, column: 120, scope: !2393, inlinedAt: !2409)
!2420 = !DILocation(line: 160, column: 130, scope: !2393, inlinedAt: !2409)
!2421 = !DILocation(line: 162, column: 7, scope: !2422, inlinedAt: !2409)
!2422 = distinct !DILexicalBlock(scope: !2393, file: !2394, line: 162, column: 7)
!2423 = !DILocalVariable(name: "s1", arg: 1, scope: !2424, file: !2394, line: 146, type: !30)
!2424 = distinct !DISubprogram(name: "strcaseeq1", scope: !2394, file: !2394, line: 146, type: !2425, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !122, retainedNodes: !2427)
!2425 = !DISubroutineType(types: !2426)
!2426 = !{!49, !30, !30, !32, !32, !32, !32, !32, !32, !32, !32}
!2427 = !{!2423, !2428, !2429, !2430, !2431, !2432, !2433, !2434, !2435, !2436}
!2428 = !DILocalVariable(name: "s2", arg: 2, scope: !2424, file: !2394, line: 146, type: !30)
!2429 = !DILocalVariable(name: "s21", arg: 3, scope: !2424, file: !2394, line: 146, type: !32)
!2430 = !DILocalVariable(name: "s22", arg: 4, scope: !2424, file: !2394, line: 146, type: !32)
!2431 = !DILocalVariable(name: "s23", arg: 5, scope: !2424, file: !2394, line: 146, type: !32)
!2432 = !DILocalVariable(name: "s24", arg: 6, scope: !2424, file: !2394, line: 146, type: !32)
!2433 = !DILocalVariable(name: "s25", arg: 7, scope: !2424, file: !2394, line: 146, type: !32)
!2434 = !DILocalVariable(name: "s26", arg: 8, scope: !2424, file: !2394, line: 146, type: !32)
!2435 = !DILocalVariable(name: "s27", arg: 9, scope: !2424, file: !2394, line: 146, type: !32)
!2436 = !DILocalVariable(name: "s28", arg: 10, scope: !2424, file: !2394, line: 146, type: !32)
!2437 = !DILocation(line: 146, column: 25, scope: !2424, inlinedAt: !2438)
!2438 = distinct !DILocation(line: 167, column: 16, scope: !2439, inlinedAt: !2409)
!2439 = distinct !DILexicalBlock(scope: !2440, file: !2394, line: 164, column: 11)
!2440 = distinct !DILexicalBlock(scope: !2422, file: !2394, line: 163, column: 5)
!2441 = !DILocation(line: 146, column: 41, scope: !2424, inlinedAt: !2438)
!2442 = !DILocation(line: 146, column: 50, scope: !2424, inlinedAt: !2438)
!2443 = !DILocation(line: 146, column: 60, scope: !2424, inlinedAt: !2438)
!2444 = !DILocation(line: 146, column: 70, scope: !2424, inlinedAt: !2438)
!2445 = !DILocation(line: 146, column: 80, scope: !2424, inlinedAt: !2438)
!2446 = !DILocation(line: 146, column: 90, scope: !2424, inlinedAt: !2438)
!2447 = !DILocation(line: 146, column: 100, scope: !2424, inlinedAt: !2438)
!2448 = !DILocation(line: 146, column: 110, scope: !2424, inlinedAt: !2438)
!2449 = !DILocation(line: 146, column: 120, scope: !2424, inlinedAt: !2438)
!2450 = !DILocation(line: 148, column: 7, scope: !2451, inlinedAt: !2438)
!2451 = distinct !DILexicalBlock(scope: !2424, file: !2394, line: 148, column: 7)
!2452 = !DILocalVariable(name: "s1", arg: 1, scope: !2453, file: !2394, line: 132, type: !30)
!2453 = distinct !DISubprogram(name: "strcaseeq2", scope: !2394, file: !2394, line: 132, type: !2454, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !122, retainedNodes: !2456)
!2454 = !DISubroutineType(types: !2455)
!2455 = !{!49, !30, !30, !32, !32, !32, !32, !32, !32, !32}
!2456 = !{!2452, !2457, !2458, !2459, !2460, !2461, !2462, !2463, !2464}
!2457 = !DILocalVariable(name: "s2", arg: 2, scope: !2453, file: !2394, line: 132, type: !30)
!2458 = !DILocalVariable(name: "s22", arg: 3, scope: !2453, file: !2394, line: 132, type: !32)
!2459 = !DILocalVariable(name: "s23", arg: 4, scope: !2453, file: !2394, line: 132, type: !32)
!2460 = !DILocalVariable(name: "s24", arg: 5, scope: !2453, file: !2394, line: 132, type: !32)
!2461 = !DILocalVariable(name: "s25", arg: 6, scope: !2453, file: !2394, line: 132, type: !32)
!2462 = !DILocalVariable(name: "s26", arg: 7, scope: !2453, file: !2394, line: 132, type: !32)
!2463 = !DILocalVariable(name: "s27", arg: 8, scope: !2453, file: !2394, line: 132, type: !32)
!2464 = !DILocalVariable(name: "s28", arg: 9, scope: !2453, file: !2394, line: 132, type: !32)
!2465 = !DILocation(line: 132, column: 25, scope: !2453, inlinedAt: !2466)
!2466 = distinct !DILocation(line: 153, column: 16, scope: !2467, inlinedAt: !2438)
!2467 = distinct !DILexicalBlock(scope: !2468, file: !2394, line: 150, column: 11)
!2468 = distinct !DILexicalBlock(scope: !2451, file: !2394, line: 149, column: 5)
!2469 = !DILocation(line: 132, column: 41, scope: !2453, inlinedAt: !2466)
!2470 = !DILocation(line: 132, column: 50, scope: !2453, inlinedAt: !2466)
!2471 = !DILocation(line: 132, column: 60, scope: !2453, inlinedAt: !2466)
!2472 = !DILocation(line: 132, column: 70, scope: !2453, inlinedAt: !2466)
!2473 = !DILocation(line: 132, column: 80, scope: !2453, inlinedAt: !2466)
!2474 = !DILocation(line: 132, column: 90, scope: !2453, inlinedAt: !2466)
!2475 = !DILocation(line: 132, column: 100, scope: !2453, inlinedAt: !2466)
!2476 = !DILocation(line: 132, column: 110, scope: !2453, inlinedAt: !2466)
!2477 = !DILocation(line: 134, column: 7, scope: !2478, inlinedAt: !2466)
!2478 = distinct !DILexicalBlock(scope: !2453, file: !2394, line: 134, column: 7)
!2479 = !DILocalVariable(name: "s1", arg: 1, scope: !2480, file: !2394, line: 118, type: !30)
!2480 = distinct !DISubprogram(name: "strcaseeq3", scope: !2394, file: !2394, line: 118, type: !2481, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !122, retainedNodes: !2483)
!2481 = !DISubroutineType(types: !2482)
!2482 = !{!49, !30, !30, !32, !32, !32, !32, !32, !32}
!2483 = !{!2479, !2484, !2485, !2486, !2487, !2488, !2489, !2490}
!2484 = !DILocalVariable(name: "s2", arg: 2, scope: !2480, file: !2394, line: 118, type: !30)
!2485 = !DILocalVariable(name: "s23", arg: 3, scope: !2480, file: !2394, line: 118, type: !32)
!2486 = !DILocalVariable(name: "s24", arg: 4, scope: !2480, file: !2394, line: 118, type: !32)
!2487 = !DILocalVariable(name: "s25", arg: 5, scope: !2480, file: !2394, line: 118, type: !32)
!2488 = !DILocalVariable(name: "s26", arg: 6, scope: !2480, file: !2394, line: 118, type: !32)
!2489 = !DILocalVariable(name: "s27", arg: 7, scope: !2480, file: !2394, line: 118, type: !32)
!2490 = !DILocalVariable(name: "s28", arg: 8, scope: !2480, file: !2394, line: 118, type: !32)
!2491 = !DILocation(line: 118, column: 25, scope: !2480, inlinedAt: !2492)
!2492 = distinct !DILocation(line: 139, column: 16, scope: !2493, inlinedAt: !2466)
!2493 = distinct !DILexicalBlock(scope: !2494, file: !2394, line: 136, column: 11)
!2494 = distinct !DILexicalBlock(scope: !2478, file: !2394, line: 135, column: 5)
!2495 = !DILocation(line: 118, column: 41, scope: !2480, inlinedAt: !2492)
!2496 = !DILocation(line: 118, column: 50, scope: !2480, inlinedAt: !2492)
!2497 = !DILocation(line: 118, column: 60, scope: !2480, inlinedAt: !2492)
!2498 = !DILocation(line: 118, column: 70, scope: !2480, inlinedAt: !2492)
!2499 = !DILocation(line: 118, column: 80, scope: !2480, inlinedAt: !2492)
!2500 = !DILocation(line: 118, column: 90, scope: !2480, inlinedAt: !2492)
!2501 = !DILocation(line: 118, column: 100, scope: !2480, inlinedAt: !2492)
!2502 = !DILocation(line: 120, column: 7, scope: !2503, inlinedAt: !2492)
!2503 = distinct !DILexicalBlock(scope: !2480, file: !2394, line: 120, column: 7)
!2504 = !DILocation(line: 120, column: 7, scope: !2480, inlinedAt: !2492)
!2505 = !DILocalVariable(name: "s1", arg: 1, scope: !2506, file: !2394, line: 104, type: !30)
!2506 = distinct !DISubprogram(name: "strcaseeq4", scope: !2394, file: !2394, line: 104, type: !2507, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !122, retainedNodes: !2509)
!2507 = !DISubroutineType(types: !2508)
!2508 = !{!49, !30, !30, !32, !32, !32, !32, !32}
!2509 = !{!2505, !2510, !2511, !2512, !2513, !2514, !2515}
!2510 = !DILocalVariable(name: "s2", arg: 2, scope: !2506, file: !2394, line: 104, type: !30)
!2511 = !DILocalVariable(name: "s24", arg: 3, scope: !2506, file: !2394, line: 104, type: !32)
!2512 = !DILocalVariable(name: "s25", arg: 4, scope: !2506, file: !2394, line: 104, type: !32)
!2513 = !DILocalVariable(name: "s26", arg: 5, scope: !2506, file: !2394, line: 104, type: !32)
!2514 = !DILocalVariable(name: "s27", arg: 6, scope: !2506, file: !2394, line: 104, type: !32)
!2515 = !DILocalVariable(name: "s28", arg: 7, scope: !2506, file: !2394, line: 104, type: !32)
!2516 = !DILocation(line: 104, column: 25, scope: !2506, inlinedAt: !2517)
!2517 = distinct !DILocation(line: 125, column: 16, scope: !2518, inlinedAt: !2492)
!2518 = distinct !DILexicalBlock(scope: !2519, file: !2394, line: 122, column: 11)
!2519 = distinct !DILexicalBlock(scope: !2503, file: !2394, line: 121, column: 5)
!2520 = !DILocation(line: 104, column: 41, scope: !2506, inlinedAt: !2517)
!2521 = !DILocation(line: 104, column: 50, scope: !2506, inlinedAt: !2517)
!2522 = !DILocation(line: 104, column: 60, scope: !2506, inlinedAt: !2517)
!2523 = !DILocation(line: 104, column: 70, scope: !2506, inlinedAt: !2517)
!2524 = !DILocation(line: 104, column: 80, scope: !2506, inlinedAt: !2517)
!2525 = !DILocation(line: 104, column: 90, scope: !2506, inlinedAt: !2517)
!2526 = !DILocation(line: 106, column: 7, scope: !2527, inlinedAt: !2517)
!2527 = distinct !DILexicalBlock(scope: !2506, file: !2394, line: 106, column: 7)
!2528 = !DILocation(line: 106, column: 7, scope: !2506, inlinedAt: !2517)
!2529 = !DILocalVariable(name: "s1", arg: 1, scope: !2530, file: !2394, line: 90, type: !30)
!2530 = distinct !DISubprogram(name: "strcaseeq5", scope: !2394, file: !2394, line: 90, type: !2531, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !122, retainedNodes: !2533)
!2531 = !DISubroutineType(types: !2532)
!2532 = !{!49, !30, !30, !32, !32, !32, !32}
!2533 = !{!2529, !2534, !2535, !2536, !2537, !2538}
!2534 = !DILocalVariable(name: "s2", arg: 2, scope: !2530, file: !2394, line: 90, type: !30)
!2535 = !DILocalVariable(name: "s25", arg: 3, scope: !2530, file: !2394, line: 90, type: !32)
!2536 = !DILocalVariable(name: "s26", arg: 4, scope: !2530, file: !2394, line: 90, type: !32)
!2537 = !DILocalVariable(name: "s27", arg: 5, scope: !2530, file: !2394, line: 90, type: !32)
!2538 = !DILocalVariable(name: "s28", arg: 6, scope: !2530, file: !2394, line: 90, type: !32)
!2539 = !DILocation(line: 90, column: 25, scope: !2530, inlinedAt: !2540)
!2540 = distinct !DILocation(line: 111, column: 16, scope: !2541, inlinedAt: !2517)
!2541 = distinct !DILexicalBlock(scope: !2542, file: !2394, line: 108, column: 11)
!2542 = distinct !DILexicalBlock(scope: !2527, file: !2394, line: 107, column: 5)
!2543 = !DILocation(line: 90, column: 41, scope: !2530, inlinedAt: !2540)
!2544 = !DILocation(line: 90, column: 50, scope: !2530, inlinedAt: !2540)
!2545 = !DILocation(line: 90, column: 60, scope: !2530, inlinedAt: !2540)
!2546 = !DILocation(line: 90, column: 70, scope: !2530, inlinedAt: !2540)
!2547 = !DILocation(line: 90, column: 80, scope: !2530, inlinedAt: !2540)
!2548 = !DILocation(line: 92, column: 7, scope: !2549, inlinedAt: !2540)
!2549 = distinct !DILexicalBlock(scope: !2530, file: !2394, line: 92, column: 7)
!2550 = !DILocation(line: 92, column: 7, scope: !2530, inlinedAt: !2540)
!2551 = !DILocation(line: 235, column: 12, scope: !2410)
!2552 = !DILocation(line: 235, column: 21, scope: !2410)
!2553 = !DILocation(line: 235, column: 5, scope: !2410)
!2554 = !DILocation(line: 146, column: 25, scope: !2424, inlinedAt: !2555)
!2555 = distinct !DILocation(line: 167, column: 16, scope: !2439, inlinedAt: !2556)
!2556 = distinct !DILocation(line: 236, column: 7, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2375, file: !150, line: 236, column: 7)
!2558 = !DILocation(line: 146, column: 41, scope: !2424, inlinedAt: !2555)
!2559 = !DILocation(line: 146, column: 50, scope: !2424, inlinedAt: !2555)
!2560 = !DILocation(line: 146, column: 60, scope: !2424, inlinedAt: !2555)
!2561 = !DILocation(line: 146, column: 70, scope: !2424, inlinedAt: !2555)
!2562 = !DILocation(line: 146, column: 80, scope: !2424, inlinedAt: !2555)
!2563 = !DILocation(line: 146, column: 90, scope: !2424, inlinedAt: !2555)
!2564 = !DILocation(line: 146, column: 100, scope: !2424, inlinedAt: !2555)
!2565 = !DILocation(line: 146, column: 110, scope: !2424, inlinedAt: !2555)
!2566 = !DILocation(line: 146, column: 120, scope: !2424, inlinedAt: !2555)
!2567 = !DILocation(line: 148, column: 7, scope: !2451, inlinedAt: !2555)
!2568 = !DILocation(line: 132, column: 25, scope: !2453, inlinedAt: !2569)
!2569 = distinct !DILocation(line: 153, column: 16, scope: !2467, inlinedAt: !2555)
!2570 = !DILocation(line: 132, column: 41, scope: !2453, inlinedAt: !2569)
!2571 = !DILocation(line: 132, column: 50, scope: !2453, inlinedAt: !2569)
!2572 = !DILocation(line: 132, column: 60, scope: !2453, inlinedAt: !2569)
!2573 = !DILocation(line: 132, column: 70, scope: !2453, inlinedAt: !2569)
!2574 = !DILocation(line: 132, column: 80, scope: !2453, inlinedAt: !2569)
!2575 = !DILocation(line: 132, column: 90, scope: !2453, inlinedAt: !2569)
!2576 = !DILocation(line: 132, column: 100, scope: !2453, inlinedAt: !2569)
!2577 = !DILocation(line: 132, column: 110, scope: !2453, inlinedAt: !2569)
!2578 = !DILocation(line: 134, column: 7, scope: !2478, inlinedAt: !2569)
!2579 = !DILocation(line: 134, column: 7, scope: !2453, inlinedAt: !2569)
!2580 = !DILocation(line: 118, column: 25, scope: !2480, inlinedAt: !2581)
!2581 = distinct !DILocation(line: 139, column: 16, scope: !2493, inlinedAt: !2569)
!2582 = !DILocation(line: 118, column: 41, scope: !2480, inlinedAt: !2581)
!2583 = !DILocation(line: 118, column: 50, scope: !2480, inlinedAt: !2581)
!2584 = !DILocation(line: 118, column: 60, scope: !2480, inlinedAt: !2581)
!2585 = !DILocation(line: 118, column: 70, scope: !2480, inlinedAt: !2581)
!2586 = !DILocation(line: 118, column: 80, scope: !2480, inlinedAt: !2581)
!2587 = !DILocation(line: 118, column: 90, scope: !2480, inlinedAt: !2581)
!2588 = !DILocation(line: 118, column: 100, scope: !2480, inlinedAt: !2581)
!2589 = !DILocation(line: 120, column: 7, scope: !2503, inlinedAt: !2581)
!2590 = !DILocation(line: 120, column: 7, scope: !2480, inlinedAt: !2581)
!2591 = !DILocation(line: 104, column: 25, scope: !2506, inlinedAt: !2592)
!2592 = distinct !DILocation(line: 125, column: 16, scope: !2518, inlinedAt: !2581)
!2593 = !DILocation(line: 104, column: 41, scope: !2506, inlinedAt: !2592)
!2594 = !DILocation(line: 104, column: 50, scope: !2506, inlinedAt: !2592)
!2595 = !DILocation(line: 104, column: 60, scope: !2506, inlinedAt: !2592)
!2596 = !DILocation(line: 104, column: 70, scope: !2506, inlinedAt: !2592)
!2597 = !DILocation(line: 104, column: 80, scope: !2506, inlinedAt: !2592)
!2598 = !DILocation(line: 104, column: 90, scope: !2506, inlinedAt: !2592)
!2599 = !DILocation(line: 106, column: 7, scope: !2527, inlinedAt: !2592)
!2600 = !DILocation(line: 106, column: 7, scope: !2506, inlinedAt: !2592)
!2601 = !DILocation(line: 90, column: 25, scope: !2530, inlinedAt: !2602)
!2602 = distinct !DILocation(line: 111, column: 16, scope: !2541, inlinedAt: !2592)
!2603 = !DILocation(line: 90, column: 41, scope: !2530, inlinedAt: !2602)
!2604 = !DILocation(line: 90, column: 50, scope: !2530, inlinedAt: !2602)
!2605 = !DILocation(line: 90, column: 60, scope: !2530, inlinedAt: !2602)
!2606 = !DILocation(line: 90, column: 70, scope: !2530, inlinedAt: !2602)
!2607 = !DILocation(line: 90, column: 80, scope: !2530, inlinedAt: !2602)
!2608 = !DILocation(line: 92, column: 7, scope: !2549, inlinedAt: !2602)
!2609 = !DILocation(line: 92, column: 7, scope: !2530, inlinedAt: !2602)
!2610 = !DILocalVariable(name: "s1", arg: 1, scope: !2611, file: !2394, line: 76, type: !30)
!2611 = distinct !DISubprogram(name: "strcaseeq6", scope: !2394, file: !2394, line: 76, type: !2612, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !122, retainedNodes: !2614)
!2612 = !DISubroutineType(types: !2613)
!2613 = !{!49, !30, !30, !32, !32, !32}
!2614 = !{!2610, !2615, !2616, !2617, !2618}
!2615 = !DILocalVariable(name: "s2", arg: 2, scope: !2611, file: !2394, line: 76, type: !30)
!2616 = !DILocalVariable(name: "s26", arg: 3, scope: !2611, file: !2394, line: 76, type: !32)
!2617 = !DILocalVariable(name: "s27", arg: 4, scope: !2611, file: !2394, line: 76, type: !32)
!2618 = !DILocalVariable(name: "s28", arg: 5, scope: !2611, file: !2394, line: 76, type: !32)
!2619 = !DILocation(line: 76, column: 25, scope: !2611, inlinedAt: !2620)
!2620 = distinct !DILocation(line: 97, column: 16, scope: !2621, inlinedAt: !2602)
!2621 = distinct !DILexicalBlock(scope: !2622, file: !2394, line: 94, column: 11)
!2622 = distinct !DILexicalBlock(scope: !2549, file: !2394, line: 93, column: 5)
!2623 = !DILocation(line: 76, column: 41, scope: !2611, inlinedAt: !2620)
!2624 = !DILocation(line: 76, column: 50, scope: !2611, inlinedAt: !2620)
!2625 = !DILocation(line: 76, column: 60, scope: !2611, inlinedAt: !2620)
!2626 = !DILocation(line: 76, column: 70, scope: !2611, inlinedAt: !2620)
!2627 = !DILocation(line: 78, column: 7, scope: !2628, inlinedAt: !2620)
!2628 = distinct !DILexicalBlock(scope: !2611, file: !2394, line: 78, column: 7)
!2629 = !DILocation(line: 78, column: 7, scope: !2611, inlinedAt: !2620)
!2630 = !DILocalVariable(name: "s1", arg: 1, scope: !2631, file: !2394, line: 62, type: !30)
!2631 = distinct !DISubprogram(name: "strcaseeq7", scope: !2394, file: !2394, line: 62, type: !2632, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !122, retainedNodes: !2634)
!2632 = !DISubroutineType(types: !2633)
!2633 = !{!49, !30, !30, !32, !32}
!2634 = !{!2630, !2635, !2636, !2637}
!2635 = !DILocalVariable(name: "s2", arg: 2, scope: !2631, file: !2394, line: 62, type: !30)
!2636 = !DILocalVariable(name: "s27", arg: 3, scope: !2631, file: !2394, line: 62, type: !32)
!2637 = !DILocalVariable(name: "s28", arg: 4, scope: !2631, file: !2394, line: 62, type: !32)
!2638 = !DILocation(line: 62, column: 25, scope: !2631, inlinedAt: !2639)
!2639 = distinct !DILocation(line: 83, column: 16, scope: !2640, inlinedAt: !2620)
!2640 = distinct !DILexicalBlock(scope: !2641, file: !2394, line: 80, column: 11)
!2641 = distinct !DILexicalBlock(scope: !2628, file: !2394, line: 79, column: 5)
!2642 = !DILocation(line: 62, column: 41, scope: !2631, inlinedAt: !2639)
!2643 = !DILocation(line: 62, column: 50, scope: !2631, inlinedAt: !2639)
!2644 = !DILocation(line: 62, column: 60, scope: !2631, inlinedAt: !2639)
!2645 = !DILocation(line: 64, column: 7, scope: !2646, inlinedAt: !2639)
!2646 = distinct !DILexicalBlock(scope: !2631, file: !2394, line: 64, column: 7)
!2647 = !DILocation(line: 236, column: 7, scope: !2375)
!2648 = !DILocation(line: 237, column: 12, scope: !2557)
!2649 = !DILocation(line: 237, column: 21, scope: !2557)
!2650 = !DILocation(line: 237, column: 5, scope: !2557)
!2651 = !DILocation(line: 239, column: 13, scope: !2375)
!2652 = !DILocation(line: 239, column: 11, scope: !2375)
!2653 = !DILocation(line: 239, column: 3, scope: !2375)
!2654 = !DILocation(line: 0, scope: !2375)
!2655 = !DILocation(line: 240, column: 1, scope: !2375)
!2656 = distinct !DISubprogram(name: "quotearg_alloc", scope: !150, file: !150, line: 799, type: !2657, isLocal: false, isDefinition: true, scopeLine: 801, flags: DIFlagPrototyped, isOptimized: true, unit: !122, retainedNodes: !2659)
!2657 = !DISubroutineType(types: !2658)
!2658 = !{!117, !30, !34, !1693}
!2659 = !{!2660, !2661, !2662}
!2660 = !DILocalVariable(name: "arg", arg: 1, scope: !2656, file: !150, line: 799, type: !30)
!2661 = !DILocalVariable(name: "argsize", arg: 2, scope: !2656, file: !150, line: 799, type: !34)
!2662 = !DILocalVariable(name: "o", arg: 3, scope: !2656, file: !150, line: 800, type: !1693)
!2663 = !DILocation(line: 799, column: 29, scope: !2656)
!2664 = !DILocation(line: 799, column: 41, scope: !2656)
!2665 = !DILocation(line: 800, column: 47, scope: !2656)
!2666 = !DILocalVariable(name: "arg", arg: 1, scope: !2667, file: !150, line: 812, type: !30)
!2667 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !150, file: !150, line: 812, type: !2668, isLocal: false, isDefinition: true, scopeLine: 814, flags: DIFlagPrototyped, isOptimized: true, unit: !122, retainedNodes: !2670)
!2668 = !DISubroutineType(types: !2669)
!2669 = !{!117, !30, !34, !215, !1693}
!2670 = !{!2666, !2671, !2672, !2673, !2674, !2675, !2676, !2677, !2678}
!2671 = !DILocalVariable(name: "argsize", arg: 2, scope: !2667, file: !150, line: 812, type: !34)
!2672 = !DILocalVariable(name: "size", arg: 3, scope: !2667, file: !150, line: 812, type: !215)
!2673 = !DILocalVariable(name: "o", arg: 4, scope: !2667, file: !150, line: 813, type: !1693)
!2674 = !DILocalVariable(name: "p", scope: !2667, file: !150, line: 815, type: !1693)
!2675 = !DILocalVariable(name: "e", scope: !2667, file: !150, line: 816, type: !49)
!2676 = !DILocalVariable(name: "flags", scope: !2667, file: !150, line: 818, type: !49)
!2677 = !DILocalVariable(name: "bufsize", scope: !2667, file: !150, line: 819, type: !34)
!2678 = !DILocalVariable(name: "buf", scope: !2667, file: !150, line: 823, type: !117)
!2679 = !DILocation(line: 812, column: 33, scope: !2667, inlinedAt: !2680)
!2680 = distinct !DILocation(line: 802, column: 10, scope: !2656)
!2681 = !DILocation(line: 812, column: 45, scope: !2667, inlinedAt: !2680)
!2682 = !DILocation(line: 812, column: 62, scope: !2667, inlinedAt: !2680)
!2683 = !DILocation(line: 813, column: 51, scope: !2667, inlinedAt: !2680)
!2684 = !DILocation(line: 815, column: 37, scope: !2667, inlinedAt: !2680)
!2685 = !DILocation(line: 815, column: 33, scope: !2667, inlinedAt: !2680)
!2686 = !DILocation(line: 816, column: 11, scope: !2667, inlinedAt: !2680)
!2687 = !DILocation(line: 816, column: 7, scope: !2667, inlinedAt: !2680)
!2688 = !DILocation(line: 818, column: 18, scope: !2667, inlinedAt: !2680)
!2689 = !DILocation(line: 818, column: 24, scope: !2667, inlinedAt: !2680)
!2690 = !DILocation(line: 818, column: 7, scope: !2667, inlinedAt: !2680)
!2691 = !DILocation(line: 819, column: 69, scope: !2667, inlinedAt: !2680)
!2692 = !DILocation(line: 820, column: 53, scope: !2667, inlinedAt: !2680)
!2693 = !DILocation(line: 821, column: 49, scope: !2667, inlinedAt: !2680)
!2694 = !DILocation(line: 822, column: 49, scope: !2667, inlinedAt: !2680)
!2695 = !DILocation(line: 819, column: 20, scope: !2667, inlinedAt: !2680)
!2696 = !DILocation(line: 822, column: 62, scope: !2667, inlinedAt: !2680)
!2697 = !DILocation(line: 819, column: 10, scope: !2667, inlinedAt: !2680)
!2698 = !DILocalVariable(name: "n", arg: 1, scope: !2699, file: !211, line: 216, type: !34)
!2699 = distinct !DISubprogram(name: "xcharalloc", scope: !211, file: !211, line: 216, type: !2700, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !122, retainedNodes: !2702)
!2700 = !DISubroutineType(types: !2701)
!2701 = !{!117, !34}
!2702 = !{!2698}
!2703 = !DILocation(line: 216, column: 20, scope: !2699, inlinedAt: !2704)
!2704 = distinct !DILocation(line: 823, column: 15, scope: !2667, inlinedAt: !2680)
!2705 = !DILocation(line: 218, column: 10, scope: !2699, inlinedAt: !2704)
!2706 = !DILocation(line: 823, column: 9, scope: !2667, inlinedAt: !2680)
!2707 = !DILocation(line: 824, column: 60, scope: !2667, inlinedAt: !2680)
!2708 = !DILocation(line: 826, column: 32, scope: !2667, inlinedAt: !2680)
!2709 = !DILocation(line: 826, column: 47, scope: !2667, inlinedAt: !2680)
!2710 = !DILocation(line: 824, column: 3, scope: !2667, inlinedAt: !2680)
!2711 = !DILocation(line: 827, column: 9, scope: !2667, inlinedAt: !2680)
!2712 = !DILocation(line: 802, column: 3, scope: !2656)
!2713 = !DILocation(line: 812, column: 33, scope: !2667)
!2714 = !DILocation(line: 812, column: 45, scope: !2667)
!2715 = !DILocation(line: 812, column: 62, scope: !2667)
!2716 = !DILocation(line: 813, column: 51, scope: !2667)
!2717 = !DILocation(line: 815, column: 37, scope: !2667)
!2718 = !DILocation(line: 815, column: 33, scope: !2667)
!2719 = !DILocation(line: 816, column: 11, scope: !2667)
!2720 = !DILocation(line: 816, column: 7, scope: !2667)
!2721 = !DILocation(line: 818, column: 18, scope: !2667)
!2722 = !DILocation(line: 818, column: 27, scope: !2667)
!2723 = !DILocation(line: 818, column: 24, scope: !2667)
!2724 = !DILocation(line: 818, column: 7, scope: !2667)
!2725 = !DILocation(line: 819, column: 69, scope: !2667)
!2726 = !DILocation(line: 820, column: 53, scope: !2667)
!2727 = !DILocation(line: 821, column: 49, scope: !2667)
!2728 = !DILocation(line: 822, column: 49, scope: !2667)
!2729 = !DILocation(line: 819, column: 20, scope: !2667)
!2730 = !DILocation(line: 822, column: 62, scope: !2667)
!2731 = !DILocation(line: 819, column: 10, scope: !2667)
!2732 = !DILocation(line: 216, column: 20, scope: !2699, inlinedAt: !2733)
!2733 = distinct !DILocation(line: 823, column: 15, scope: !2667)
!2734 = !DILocation(line: 218, column: 10, scope: !2699, inlinedAt: !2733)
!2735 = !DILocation(line: 823, column: 9, scope: !2667)
!2736 = !DILocation(line: 824, column: 60, scope: !2667)
!2737 = !DILocation(line: 826, column: 32, scope: !2667)
!2738 = !DILocation(line: 826, column: 47, scope: !2667)
!2739 = !DILocation(line: 824, column: 3, scope: !2667)
!2740 = !DILocation(line: 827, column: 9, scope: !2667)
!2741 = !DILocation(line: 828, column: 7, scope: !2667)
!2742 = !DILocation(line: 829, column: 11, scope: !2743)
!2743 = distinct !DILexicalBlock(scope: !2667, file: !150, line: 828, column: 7)
!2744 = !DILocation(line: 829, column: 5, scope: !2743)
!2745 = !DILocation(line: 830, column: 3, scope: !2667)
!2746 = distinct !DISubprogram(name: "quotearg_free", scope: !150, file: !150, line: 848, type: !697, isLocal: false, isDefinition: true, scopeLine: 849, flags: DIFlagPrototyped, isOptimized: true, unit: !122, retainedNodes: !2747)
!2747 = !{!2748, !2749}
!2748 = !DILocalVariable(name: "sv", scope: !2746, file: !150, line: 850, type: !176)
!2749 = !DILocalVariable(name: "i", scope: !2746, file: !150, line: 851, type: !49)
!2750 = !DILocation(line: 850, column: 24, scope: !2746)
!2751 = !DILocation(line: 850, column: 19, scope: !2746)
!2752 = !DILocation(line: 851, column: 7, scope: !2746)
!2753 = !DILocation(line: 852, column: 19, scope: !2754)
!2754 = distinct !DILexicalBlock(scope: !2755, file: !150, line: 852, column: 3)
!2755 = distinct !DILexicalBlock(scope: !2746, file: !150, line: 852, column: 3)
!2756 = !DILocation(line: 852, column: 17, scope: !2754)
!2757 = !DILocation(line: 852, column: 3, scope: !2755)
!2758 = !DILocation(line: 853, column: 17, scope: !2754)
!2759 = !{!2760, !691, i64 8}
!2760 = !{!"slotvec", !843, i64 0, !691, i64 8}
!2761 = !DILocation(line: 853, column: 5, scope: !2754)
!2762 = !DILocation(line: 852, column: 28, scope: !2754)
!2763 = distinct !{!2763, !2757, !2764}
!2764 = !DILocation(line: 853, column: 20, scope: !2755)
!2765 = !DILocation(line: 854, column: 13, scope: !2766)
!2766 = distinct !DILexicalBlock(scope: !2746, file: !150, line: 854, column: 7)
!2767 = !DILocation(line: 854, column: 17, scope: !2766)
!2768 = !DILocation(line: 854, column: 7, scope: !2746)
!2769 = !DILocation(line: 856, column: 7, scope: !2770)
!2770 = distinct !DILexicalBlock(scope: !2766, file: !150, line: 855, column: 5)
!2771 = !DILocation(line: 857, column: 21, scope: !2770)
!2772 = !{!2760, !843, i64 0}
!2773 = !DILocation(line: 858, column: 20, scope: !2770)
!2774 = !DILocation(line: 859, column: 5, scope: !2770)
!2775 = !DILocation(line: 860, column: 10, scope: !2776)
!2776 = distinct !DILexicalBlock(scope: !2746, file: !150, line: 860, column: 7)
!2777 = !DILocation(line: 860, column: 7, scope: !2746)
!2778 = !DILocation(line: 862, column: 13, scope: !2779)
!2779 = distinct !DILexicalBlock(scope: !2776, file: !150, line: 861, column: 5)
!2780 = !DILocation(line: 862, column: 7, scope: !2779)
!2781 = !DILocation(line: 863, column: 15, scope: !2779)
!2782 = !DILocation(line: 864, column: 5, scope: !2779)
!2783 = !DILocation(line: 865, column: 10, scope: !2746)
!2784 = !DILocation(line: 866, column: 1, scope: !2746)
!2785 = distinct !DISubprogram(name: "quotearg_n", scope: !150, file: !150, line: 931, type: !2786, isLocal: false, isDefinition: true, scopeLine: 932, flags: DIFlagPrototyped, isOptimized: true, unit: !122, retainedNodes: !2788)
!2786 = !DISubroutineType(types: !2787)
!2787 = !{!117, !49, !30}
!2788 = !{!2789, !2790}
!2789 = !DILocalVariable(name: "n", arg: 1, scope: !2785, file: !150, line: 931, type: !49)
!2790 = !DILocalVariable(name: "arg", arg: 2, scope: !2785, file: !150, line: 931, type: !30)
!2791 = !DILocation(line: 931, column: 17, scope: !2785)
!2792 = !DILocation(line: 931, column: 32, scope: !2785)
!2793 = !DILocation(line: 933, column: 10, scope: !2785)
!2794 = !DILocation(line: 933, column: 3, scope: !2785)
!2795 = distinct !DISubprogram(name: "quotearg_n_options", scope: !150, file: !150, line: 877, type: !2796, isLocal: true, isDefinition: true, scopeLine: 879, flags: DIFlagPrototyped, isOptimized: true, unit: !122, retainedNodes: !2798)
!2796 = !DISubroutineType(types: !2797)
!2797 = !{!117, !49, !30, !34, !1693}
!2798 = !{!2799, !2800, !2801, !2802, !2803, !2804, !2805, !2808, !2809, !2811, !2812, !2813}
!2799 = !DILocalVariable(name: "n", arg: 1, scope: !2795, file: !150, line: 877, type: !49)
!2800 = !DILocalVariable(name: "arg", arg: 2, scope: !2795, file: !150, line: 877, type: !30)
!2801 = !DILocalVariable(name: "argsize", arg: 3, scope: !2795, file: !150, line: 877, type: !34)
!2802 = !DILocalVariable(name: "options", arg: 4, scope: !2795, file: !150, line: 878, type: !1693)
!2803 = !DILocalVariable(name: "e", scope: !2795, file: !150, line: 880, type: !49)
!2804 = !DILocalVariable(name: "sv", scope: !2795, file: !150, line: 882, type: !176)
!2805 = !DILocalVariable(name: "preallocated", scope: !2806, file: !150, line: 889, type: !88)
!2806 = distinct !DILexicalBlock(scope: !2807, file: !150, line: 888, column: 5)
!2807 = distinct !DILexicalBlock(scope: !2795, file: !150, line: 887, column: 7)
!2808 = !DILocalVariable(name: "nmax", scope: !2806, file: !150, line: 890, type: !49)
!2809 = !DILocalVariable(name: "size", scope: !2810, file: !150, line: 903, type: !34)
!2810 = distinct !DILexicalBlock(scope: !2795, file: !150, line: 902, column: 3)
!2811 = !DILocalVariable(name: "val", scope: !2810, file: !150, line: 904, type: !117)
!2812 = !DILocalVariable(name: "flags", scope: !2810, file: !150, line: 906, type: !49)
!2813 = !DILocalVariable(name: "qsize", scope: !2810, file: !150, line: 907, type: !34)
!2814 = !DILocation(line: 877, column: 25, scope: !2795)
!2815 = !DILocation(line: 877, column: 40, scope: !2795)
!2816 = !DILocation(line: 877, column: 52, scope: !2795)
!2817 = !DILocation(line: 878, column: 51, scope: !2795)
!2818 = !DILocation(line: 880, column: 11, scope: !2795)
!2819 = !DILocation(line: 880, column: 7, scope: !2795)
!2820 = !DILocation(line: 882, column: 24, scope: !2795)
!2821 = !DILocation(line: 882, column: 19, scope: !2795)
!2822 = !DILocation(line: 884, column: 9, scope: !2823)
!2823 = distinct !DILexicalBlock(scope: !2795, file: !150, line: 884, column: 7)
!2824 = !DILocation(line: 884, column: 7, scope: !2795)
!2825 = !DILocation(line: 885, column: 5, scope: !2823)
!2826 = !DILocation(line: 887, column: 7, scope: !2807)
!2827 = !DILocation(line: 887, column: 14, scope: !2807)
!2828 = !DILocation(line: 887, column: 7, scope: !2795)
!2829 = !DILocation(line: 889, column: 31, scope: !2806)
!2830 = !DILocation(line: 890, column: 11, scope: !2806)
!2831 = !DILocation(line: 892, column: 16, scope: !2832)
!2832 = distinct !DILexicalBlock(scope: !2806, file: !150, line: 892, column: 11)
!2833 = !DILocation(line: 892, column: 11, scope: !2806)
!2834 = !DILocation(line: 893, column: 9, scope: !2832)
!2835 = !DILocation(line: 895, column: 32, scope: !2806)
!2836 = !DILocation(line: 895, column: 61, scope: !2806)
!2837 = !DILocation(line: 895, column: 58, scope: !2806)
!2838 = !DILocation(line: 895, column: 66, scope: !2806)
!2839 = !DILocation(line: 895, column: 22, scope: !2806)
!2840 = !DILocation(line: 895, column: 15, scope: !2806)
!2841 = !DILocation(line: 896, column: 11, scope: !2806)
!2842 = !DILocation(line: 897, column: 15, scope: !2843)
!2843 = distinct !DILexicalBlock(scope: !2806, file: !150, line: 896, column: 11)
!2844 = !{i64 0, i64 8, !1081, i64 8, i64 8, !690}
!2845 = !DILocation(line: 897, column: 9, scope: !2843)
!2846 = !DILocation(line: 898, column: 20, scope: !2806)
!2847 = !DILocation(line: 898, column: 18, scope: !2806)
!2848 = !DILocation(line: 898, column: 7, scope: !2806)
!2849 = !DILocation(line: 898, column: 38, scope: !2806)
!2850 = !DILocation(line: 898, column: 31, scope: !2806)
!2851 = !DILocation(line: 898, column: 48, scope: !2806)
!2852 = !DILocation(line: 899, column: 14, scope: !2806)
!2853 = !DILocation(line: 900, column: 5, scope: !2806)
!2854 = !DILocation(line: 0, scope: !2795)
!2855 = !DILocation(line: 903, column: 19, scope: !2810)
!2856 = !DILocation(line: 903, column: 25, scope: !2810)
!2857 = !DILocation(line: 903, column: 12, scope: !2810)
!2858 = !DILocation(line: 904, column: 23, scope: !2810)
!2859 = !DILocation(line: 904, column: 11, scope: !2810)
!2860 = !DILocation(line: 906, column: 26, scope: !2810)
!2861 = !DILocation(line: 906, column: 32, scope: !2810)
!2862 = !DILocation(line: 906, column: 9, scope: !2810)
!2863 = !DILocation(line: 908, column: 55, scope: !2810)
!2864 = !DILocation(line: 909, column: 46, scope: !2810)
!2865 = !DILocation(line: 910, column: 55, scope: !2810)
!2866 = !DILocation(line: 911, column: 55, scope: !2810)
!2867 = !DILocation(line: 907, column: 20, scope: !2810)
!2868 = !DILocation(line: 907, column: 12, scope: !2810)
!2869 = !DILocation(line: 913, column: 14, scope: !2870)
!2870 = distinct !DILexicalBlock(scope: !2810, file: !150, line: 913, column: 9)
!2871 = !DILocation(line: 913, column: 9, scope: !2810)
!2872 = !DILocation(line: 915, column: 35, scope: !2873)
!2873 = distinct !DILexicalBlock(scope: !2870, file: !150, line: 914, column: 7)
!2874 = !DILocation(line: 915, column: 20, scope: !2873)
!2875 = !DILocation(line: 916, column: 17, scope: !2876)
!2876 = distinct !DILexicalBlock(scope: !2873, file: !150, line: 916, column: 13)
!2877 = !DILocation(line: 916, column: 13, scope: !2873)
!2878 = !DILocation(line: 917, column: 11, scope: !2876)
!2879 = !DILocation(line: 216, column: 20, scope: !2699, inlinedAt: !2880)
!2880 = distinct !DILocation(line: 918, column: 27, scope: !2873)
!2881 = !DILocation(line: 218, column: 10, scope: !2699, inlinedAt: !2880)
!2882 = !DILocation(line: 918, column: 19, scope: !2873)
!2883 = !DILocation(line: 919, column: 69, scope: !2873)
!2884 = !DILocation(line: 921, column: 44, scope: !2873)
!2885 = !DILocation(line: 922, column: 44, scope: !2873)
!2886 = !DILocation(line: 919, column: 9, scope: !2873)
!2887 = !DILocation(line: 923, column: 7, scope: !2873)
!2888 = !DILocation(line: 0, scope: !2810)
!2889 = !DILocation(line: 925, column: 11, scope: !2810)
!2890 = !DILocation(line: 926, column: 5, scope: !2810)
!2891 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !150, file: !150, line: 937, type: !2892, isLocal: false, isDefinition: true, scopeLine: 938, flags: DIFlagPrototyped, isOptimized: true, unit: !122, retainedNodes: !2894)
!2892 = !DISubroutineType(types: !2893)
!2893 = !{!117, !49, !30, !34}
!2894 = !{!2895, !2896, !2897}
!2895 = !DILocalVariable(name: "n", arg: 1, scope: !2891, file: !150, line: 937, type: !49)
!2896 = !DILocalVariable(name: "arg", arg: 2, scope: !2891, file: !150, line: 937, type: !30)
!2897 = !DILocalVariable(name: "argsize", arg: 3, scope: !2891, file: !150, line: 937, type: !34)
!2898 = !DILocation(line: 937, column: 21, scope: !2891)
!2899 = !DILocation(line: 937, column: 36, scope: !2891)
!2900 = !DILocation(line: 937, column: 48, scope: !2891)
!2901 = !DILocation(line: 939, column: 10, scope: !2891)
!2902 = !DILocation(line: 939, column: 3, scope: !2891)
!2903 = distinct !DISubprogram(name: "quotearg", scope: !150, file: !150, line: 943, type: !2904, isLocal: false, isDefinition: true, scopeLine: 944, flags: DIFlagPrototyped, isOptimized: true, unit: !122, retainedNodes: !2906)
!2904 = !DISubroutineType(types: !2905)
!2905 = !{!117, !30}
!2906 = !{!2907}
!2907 = !DILocalVariable(name: "arg", arg: 1, scope: !2903, file: !150, line: 943, type: !30)
!2908 = !DILocation(line: 943, column: 23, scope: !2903)
!2909 = !DILocation(line: 931, column: 17, scope: !2785, inlinedAt: !2910)
!2910 = distinct !DILocation(line: 945, column: 10, scope: !2903)
!2911 = !DILocation(line: 931, column: 32, scope: !2785, inlinedAt: !2910)
!2912 = !DILocation(line: 933, column: 10, scope: !2785, inlinedAt: !2910)
!2913 = !DILocation(line: 945, column: 3, scope: !2903)
!2914 = distinct !DISubprogram(name: "quotearg_mem", scope: !150, file: !150, line: 949, type: !2915, isLocal: false, isDefinition: true, scopeLine: 950, flags: DIFlagPrototyped, isOptimized: true, unit: !122, retainedNodes: !2917)
!2915 = !DISubroutineType(types: !2916)
!2916 = !{!117, !30, !34}
!2917 = !{!2918, !2919}
!2918 = !DILocalVariable(name: "arg", arg: 1, scope: !2914, file: !150, line: 949, type: !30)
!2919 = !DILocalVariable(name: "argsize", arg: 2, scope: !2914, file: !150, line: 949, type: !34)
!2920 = !DILocation(line: 949, column: 27, scope: !2914)
!2921 = !DILocation(line: 949, column: 39, scope: !2914)
!2922 = !DILocation(line: 937, column: 21, scope: !2891, inlinedAt: !2923)
!2923 = distinct !DILocation(line: 951, column: 10, scope: !2914)
!2924 = !DILocation(line: 937, column: 36, scope: !2891, inlinedAt: !2923)
!2925 = !DILocation(line: 937, column: 48, scope: !2891, inlinedAt: !2923)
!2926 = !DILocation(line: 939, column: 10, scope: !2891, inlinedAt: !2923)
!2927 = !DILocation(line: 951, column: 3, scope: !2914)
!2928 = distinct !DISubprogram(name: "quotearg_n_style", scope: !150, file: !150, line: 955, type: !2929, isLocal: false, isDefinition: true, scopeLine: 956, flags: DIFlagPrototyped, isOptimized: true, unit: !122, retainedNodes: !2931)
!2929 = !DISubroutineType(types: !2930)
!2930 = !{!117, !49, !5, !30}
!2931 = !{!2932, !2933, !2934, !2935}
!2932 = !DILocalVariable(name: "n", arg: 1, scope: !2928, file: !150, line: 955, type: !49)
!2933 = !DILocalVariable(name: "s", arg: 2, scope: !2928, file: !150, line: 955, type: !5)
!2934 = !DILocalVariable(name: "arg", arg: 3, scope: !2928, file: !150, line: 955, type: !30)
!2935 = !DILocalVariable(name: "o", scope: !2928, file: !150, line: 957, type: !1694)
!2936 = !DILocation(line: 955, column: 23, scope: !2928)
!2937 = !DILocation(line: 955, column: 45, scope: !2928)
!2938 = !DILocation(line: 955, column: 60, scope: !2928)
!2939 = !DILocation(line: 957, column: 3, scope: !2928)
!2940 = !DILocation(line: 957, column: 32, scope: !2928)
!2941 = !DILocalVariable(name: "style", arg: 1, scope: !2942, file: !150, line: 193, type: !5)
!2942 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !150, file: !150, line: 193, type: !2943, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !122, retainedNodes: !2945)
!2943 = !DISubroutineType(types: !2944)
!2944 = !{!157, !5}
!2945 = !{!2941, !2946}
!2946 = !DILocalVariable(name: "o", scope: !2942, file: !150, line: 195, type: !157)
!2947 = !DILocation(line: 193, column: 48, scope: !2942, inlinedAt: !2948)
!2948 = distinct !DILocation(line: 957, column: 36, scope: !2928)
!2949 = !DILocation(line: 195, column: 26, scope: !2942, inlinedAt: !2948)
!2950 = !{!2951}
!2951 = distinct !{!2951, !2952, !"quoting_options_from_style: argument 0"}
!2952 = distinct !{!2952, !"quoting_options_from_style"}
!2953 = !DILocation(line: 196, column: 13, scope: !2954, inlinedAt: !2948)
!2954 = distinct !DILexicalBlock(scope: !2942, file: !150, line: 196, column: 7)
!2955 = !DILocation(line: 196, column: 7, scope: !2942, inlinedAt: !2948)
!2956 = !DILocation(line: 197, column: 5, scope: !2954, inlinedAt: !2948)
!2957 = !DILocation(line: 198, column: 5, scope: !2942, inlinedAt: !2948)
!2958 = !DILocation(line: 198, column: 11, scope: !2942, inlinedAt: !2948)
!2959 = !DILocation(line: 958, column: 10, scope: !2928)
!2960 = !DILocation(line: 959, column: 1, scope: !2928)
!2961 = !DILocation(line: 958, column: 3, scope: !2928)
!2962 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !150, file: !150, line: 962, type: !2963, isLocal: false, isDefinition: true, scopeLine: 964, flags: DIFlagPrototyped, isOptimized: true, unit: !122, retainedNodes: !2965)
!2963 = !DISubroutineType(types: !2964)
!2964 = !{!117, !49, !5, !30, !34}
!2965 = !{!2966, !2967, !2968, !2969, !2970}
!2966 = !DILocalVariable(name: "n", arg: 1, scope: !2962, file: !150, line: 962, type: !49)
!2967 = !DILocalVariable(name: "s", arg: 2, scope: !2962, file: !150, line: 962, type: !5)
!2968 = !DILocalVariable(name: "arg", arg: 3, scope: !2962, file: !150, line: 963, type: !30)
!2969 = !DILocalVariable(name: "argsize", arg: 4, scope: !2962, file: !150, line: 963, type: !34)
!2970 = !DILocalVariable(name: "o", scope: !2962, file: !150, line: 965, type: !1694)
!2971 = !DILocation(line: 962, column: 27, scope: !2962)
!2972 = !DILocation(line: 962, column: 49, scope: !2962)
!2973 = !DILocation(line: 963, column: 35, scope: !2962)
!2974 = !DILocation(line: 963, column: 47, scope: !2962)
!2975 = !DILocation(line: 965, column: 3, scope: !2962)
!2976 = !DILocation(line: 965, column: 32, scope: !2962)
!2977 = !DILocation(line: 193, column: 48, scope: !2942, inlinedAt: !2978)
!2978 = distinct !DILocation(line: 965, column: 36, scope: !2962)
!2979 = !DILocation(line: 195, column: 26, scope: !2942, inlinedAt: !2978)
!2980 = !{!2981}
!2981 = distinct !{!2981, !2982, !"quoting_options_from_style: argument 0"}
!2982 = distinct !{!2982, !"quoting_options_from_style"}
!2983 = !DILocation(line: 196, column: 13, scope: !2954, inlinedAt: !2978)
!2984 = !DILocation(line: 196, column: 7, scope: !2942, inlinedAt: !2978)
!2985 = !DILocation(line: 197, column: 5, scope: !2954, inlinedAt: !2978)
!2986 = !DILocation(line: 198, column: 5, scope: !2942, inlinedAt: !2978)
!2987 = !DILocation(line: 198, column: 11, scope: !2942, inlinedAt: !2978)
!2988 = !DILocation(line: 966, column: 10, scope: !2962)
!2989 = !DILocation(line: 967, column: 1, scope: !2962)
!2990 = !DILocation(line: 966, column: 3, scope: !2962)
!2991 = distinct !DISubprogram(name: "quotearg_style", scope: !150, file: !150, line: 970, type: !2992, isLocal: false, isDefinition: true, scopeLine: 971, flags: DIFlagPrototyped, isOptimized: true, unit: !122, retainedNodes: !2994)
!2992 = !DISubroutineType(types: !2993)
!2993 = !{!117, !5, !30}
!2994 = !{!2995, !2996}
!2995 = !DILocalVariable(name: "s", arg: 1, scope: !2991, file: !150, line: 970, type: !5)
!2996 = !DILocalVariable(name: "arg", arg: 2, scope: !2991, file: !150, line: 970, type: !30)
!2997 = !DILocation(line: 970, column: 36, scope: !2991)
!2998 = !DILocation(line: 970, column: 51, scope: !2991)
!2999 = !DILocation(line: 955, column: 23, scope: !2928, inlinedAt: !3000)
!3000 = distinct !DILocation(line: 972, column: 10, scope: !2991)
!3001 = !DILocation(line: 955, column: 45, scope: !2928, inlinedAt: !3000)
!3002 = !DILocation(line: 955, column: 60, scope: !2928, inlinedAt: !3000)
!3003 = !DILocation(line: 957, column: 3, scope: !2928, inlinedAt: !3000)
!3004 = !DILocation(line: 957, column: 32, scope: !2928, inlinedAt: !3000)
!3005 = !DILocation(line: 193, column: 48, scope: !2942, inlinedAt: !3006)
!3006 = distinct !DILocation(line: 957, column: 36, scope: !2928, inlinedAt: !3000)
!3007 = !DILocation(line: 195, column: 26, scope: !2942, inlinedAt: !3006)
!3008 = !{!3009}
!3009 = distinct !{!3009, !3010, !"quoting_options_from_style: argument 0"}
!3010 = distinct !{!3010, !"quoting_options_from_style"}
!3011 = !DILocation(line: 196, column: 13, scope: !2954, inlinedAt: !3006)
!3012 = !DILocation(line: 196, column: 7, scope: !2942, inlinedAt: !3006)
!3013 = !DILocation(line: 197, column: 5, scope: !2954, inlinedAt: !3006)
!3014 = !DILocation(line: 198, column: 5, scope: !2942, inlinedAt: !3006)
!3015 = !DILocation(line: 198, column: 11, scope: !2942, inlinedAt: !3006)
!3016 = !DILocation(line: 958, column: 10, scope: !2928, inlinedAt: !3000)
!3017 = !DILocation(line: 959, column: 1, scope: !2928, inlinedAt: !3000)
!3018 = !DILocation(line: 972, column: 3, scope: !2991)
!3019 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !150, file: !150, line: 976, type: !3020, isLocal: false, isDefinition: true, scopeLine: 977, flags: DIFlagPrototyped, isOptimized: true, unit: !122, retainedNodes: !3022)
!3020 = !DISubroutineType(types: !3021)
!3021 = !{!117, !5, !30, !34}
!3022 = !{!3023, !3024, !3025}
!3023 = !DILocalVariable(name: "s", arg: 1, scope: !3019, file: !150, line: 976, type: !5)
!3024 = !DILocalVariable(name: "arg", arg: 2, scope: !3019, file: !150, line: 976, type: !30)
!3025 = !DILocalVariable(name: "argsize", arg: 3, scope: !3019, file: !150, line: 976, type: !34)
!3026 = !DILocation(line: 976, column: 40, scope: !3019)
!3027 = !DILocation(line: 976, column: 55, scope: !3019)
!3028 = !DILocation(line: 976, column: 67, scope: !3019)
!3029 = !DILocation(line: 962, column: 27, scope: !2962, inlinedAt: !3030)
!3030 = distinct !DILocation(line: 978, column: 10, scope: !3019)
!3031 = !DILocation(line: 962, column: 49, scope: !2962, inlinedAt: !3030)
!3032 = !DILocation(line: 963, column: 35, scope: !2962, inlinedAt: !3030)
!3033 = !DILocation(line: 963, column: 47, scope: !2962, inlinedAt: !3030)
!3034 = !DILocation(line: 965, column: 3, scope: !2962, inlinedAt: !3030)
!3035 = !DILocation(line: 965, column: 32, scope: !2962, inlinedAt: !3030)
!3036 = !DILocation(line: 193, column: 48, scope: !2942, inlinedAt: !3037)
!3037 = distinct !DILocation(line: 965, column: 36, scope: !2962, inlinedAt: !3030)
!3038 = !DILocation(line: 195, column: 26, scope: !2942, inlinedAt: !3037)
!3039 = !{!3040}
!3040 = distinct !{!3040, !3041, !"quoting_options_from_style: argument 0"}
!3041 = distinct !{!3041, !"quoting_options_from_style"}
!3042 = !DILocation(line: 196, column: 13, scope: !2954, inlinedAt: !3037)
!3043 = !DILocation(line: 196, column: 7, scope: !2942, inlinedAt: !3037)
!3044 = !DILocation(line: 197, column: 5, scope: !2954, inlinedAt: !3037)
!3045 = !DILocation(line: 198, column: 5, scope: !2942, inlinedAt: !3037)
!3046 = !DILocation(line: 198, column: 11, scope: !2942, inlinedAt: !3037)
!3047 = !DILocation(line: 966, column: 10, scope: !2962, inlinedAt: !3030)
!3048 = !DILocation(line: 967, column: 1, scope: !2962, inlinedAt: !3030)
!3049 = !DILocation(line: 978, column: 3, scope: !3019)
!3050 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !150, file: !150, line: 982, type: !3051, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !122, retainedNodes: !3053)
!3051 = !DISubroutineType(types: !3052)
!3052 = !{!117, !30, !34, !32}
!3053 = !{!3054, !3055, !3056, !3057}
!3054 = !DILocalVariable(name: "arg", arg: 1, scope: !3050, file: !150, line: 982, type: !30)
!3055 = !DILocalVariable(name: "argsize", arg: 2, scope: !3050, file: !150, line: 982, type: !34)
!3056 = !DILocalVariable(name: "ch", arg: 3, scope: !3050, file: !150, line: 982, type: !32)
!3057 = !DILocalVariable(name: "options", scope: !3050, file: !150, line: 984, type: !157)
!3058 = !DILocation(line: 982, column: 32, scope: !3050)
!3059 = !DILocation(line: 982, column: 44, scope: !3050)
!3060 = !DILocation(line: 982, column: 58, scope: !3050)
!3061 = !DILocation(line: 984, column: 3, scope: !3050)
!3062 = !DILocation(line: 985, column: 13, scope: !3050)
!3063 = !{i64 0, i64 4, !1921, i64 4, i64 4, !763, i64 8, i64 32, !1921, i64 40, i64 8, !690, i64 48, i64 8, !690}
!3064 = !DILocation(line: 984, column: 26, scope: !3050)
!3065 = !DILocation(line: 152, column: 43, scope: !1715, inlinedAt: !3066)
!3066 = distinct !DILocation(line: 986, column: 3, scope: !3050)
!3067 = !DILocation(line: 152, column: 51, scope: !1715, inlinedAt: !3066)
!3068 = !DILocation(line: 152, column: 58, scope: !1715, inlinedAt: !3066)
!3069 = !DILocation(line: 154, column: 17, scope: !1715, inlinedAt: !3066)
!3070 = !DILocation(line: 156, column: 62, scope: !1715, inlinedAt: !3066)
!3071 = !DILocation(line: 156, column: 57, scope: !1715, inlinedAt: !3066)
!3072 = !DILocation(line: 155, column: 17, scope: !1715, inlinedAt: !3066)
!3073 = !DILocation(line: 157, column: 15, scope: !1715, inlinedAt: !3066)
!3074 = !DILocation(line: 157, column: 7, scope: !1715, inlinedAt: !3066)
!3075 = !DILocation(line: 158, column: 12, scope: !1715, inlinedAt: !3066)
!3076 = !DILocation(line: 158, column: 15, scope: !1715, inlinedAt: !3066)
!3077 = !DILocation(line: 158, column: 25, scope: !1715, inlinedAt: !3066)
!3078 = !DILocation(line: 158, column: 7, scope: !1715, inlinedAt: !3066)
!3079 = !DILocation(line: 159, column: 18, scope: !1715, inlinedAt: !3066)
!3080 = !DILocation(line: 159, column: 23, scope: !1715, inlinedAt: !3066)
!3081 = !DILocation(line: 159, column: 6, scope: !1715, inlinedAt: !3066)
!3082 = !DILocation(line: 987, column: 10, scope: !3050)
!3083 = !DILocation(line: 988, column: 1, scope: !3050)
!3084 = !DILocation(line: 987, column: 3, scope: !3050)
!3085 = distinct !DISubprogram(name: "quotearg_char", scope: !150, file: !150, line: 991, type: !3086, isLocal: false, isDefinition: true, scopeLine: 992, flags: DIFlagPrototyped, isOptimized: true, unit: !122, retainedNodes: !3088)
!3086 = !DISubroutineType(types: !3087)
!3087 = !{!117, !30, !32}
!3088 = !{!3089, !3090}
!3089 = !DILocalVariable(name: "arg", arg: 1, scope: !3085, file: !150, line: 991, type: !30)
!3090 = !DILocalVariable(name: "ch", arg: 2, scope: !3085, file: !150, line: 991, type: !32)
!3091 = !DILocation(line: 991, column: 28, scope: !3085)
!3092 = !DILocation(line: 991, column: 38, scope: !3085)
!3093 = !DILocation(line: 982, column: 32, scope: !3050, inlinedAt: !3094)
!3094 = distinct !DILocation(line: 993, column: 10, scope: !3085)
!3095 = !DILocation(line: 982, column: 44, scope: !3050, inlinedAt: !3094)
!3096 = !DILocation(line: 982, column: 58, scope: !3050, inlinedAt: !3094)
!3097 = !DILocation(line: 984, column: 3, scope: !3050, inlinedAt: !3094)
!3098 = !DILocation(line: 985, column: 13, scope: !3050, inlinedAt: !3094)
!3099 = !DILocation(line: 984, column: 26, scope: !3050, inlinedAt: !3094)
!3100 = !DILocation(line: 152, column: 43, scope: !1715, inlinedAt: !3101)
!3101 = distinct !DILocation(line: 986, column: 3, scope: !3050, inlinedAt: !3094)
!3102 = !DILocation(line: 152, column: 51, scope: !1715, inlinedAt: !3101)
!3103 = !DILocation(line: 152, column: 58, scope: !1715, inlinedAt: !3101)
!3104 = !DILocation(line: 154, column: 17, scope: !1715, inlinedAt: !3101)
!3105 = !DILocation(line: 156, column: 62, scope: !1715, inlinedAt: !3101)
!3106 = !DILocation(line: 156, column: 57, scope: !1715, inlinedAt: !3101)
!3107 = !DILocation(line: 155, column: 17, scope: !1715, inlinedAt: !3101)
!3108 = !DILocation(line: 157, column: 15, scope: !1715, inlinedAt: !3101)
!3109 = !DILocation(line: 157, column: 7, scope: !1715, inlinedAt: !3101)
!3110 = !DILocation(line: 158, column: 12, scope: !1715, inlinedAt: !3101)
!3111 = !DILocation(line: 158, column: 15, scope: !1715, inlinedAt: !3101)
!3112 = !DILocation(line: 158, column: 25, scope: !1715, inlinedAt: !3101)
!3113 = !DILocation(line: 158, column: 7, scope: !1715, inlinedAt: !3101)
!3114 = !DILocation(line: 159, column: 18, scope: !1715, inlinedAt: !3101)
!3115 = !DILocation(line: 159, column: 23, scope: !1715, inlinedAt: !3101)
!3116 = !DILocation(line: 159, column: 6, scope: !1715, inlinedAt: !3101)
!3117 = !DILocation(line: 987, column: 10, scope: !3050, inlinedAt: !3094)
!3118 = !DILocation(line: 988, column: 1, scope: !3050, inlinedAt: !3094)
!3119 = !DILocation(line: 993, column: 3, scope: !3085)
!3120 = distinct !DISubprogram(name: "quotearg_colon", scope: !150, file: !150, line: 997, type: !2904, isLocal: false, isDefinition: true, scopeLine: 998, flags: DIFlagPrototyped, isOptimized: true, unit: !122, retainedNodes: !3121)
!3121 = !{!3122}
!3122 = !DILocalVariable(name: "arg", arg: 1, scope: !3120, file: !150, line: 997, type: !30)
!3123 = !DILocation(line: 997, column: 29, scope: !3120)
!3124 = !DILocation(line: 991, column: 28, scope: !3085, inlinedAt: !3125)
!3125 = distinct !DILocation(line: 999, column: 10, scope: !3120)
!3126 = !DILocation(line: 991, column: 38, scope: !3085, inlinedAt: !3125)
!3127 = !DILocation(line: 982, column: 32, scope: !3050, inlinedAt: !3128)
!3128 = distinct !DILocation(line: 993, column: 10, scope: !3085, inlinedAt: !3125)
!3129 = !DILocation(line: 982, column: 44, scope: !3050, inlinedAt: !3128)
!3130 = !DILocation(line: 982, column: 58, scope: !3050, inlinedAt: !3128)
!3131 = !DILocation(line: 984, column: 3, scope: !3050, inlinedAt: !3128)
!3132 = !DILocation(line: 985, column: 13, scope: !3050, inlinedAt: !3128)
!3133 = !DILocation(line: 984, column: 26, scope: !3050, inlinedAt: !3128)
!3134 = !DILocation(line: 152, column: 43, scope: !1715, inlinedAt: !3135)
!3135 = distinct !DILocation(line: 986, column: 3, scope: !3050, inlinedAt: !3128)
!3136 = !DILocation(line: 152, column: 51, scope: !1715, inlinedAt: !3135)
!3137 = !DILocation(line: 152, column: 58, scope: !1715, inlinedAt: !3135)
!3138 = !DILocation(line: 154, column: 17, scope: !1715, inlinedAt: !3135)
!3139 = !DILocation(line: 156, column: 57, scope: !1715, inlinedAt: !3135)
!3140 = !DILocation(line: 155, column: 17, scope: !1715, inlinedAt: !3135)
!3141 = !DILocation(line: 157, column: 7, scope: !1715, inlinedAt: !3135)
!3142 = !DILocation(line: 158, column: 12, scope: !1715, inlinedAt: !3135)
!3143 = !DILocation(line: 159, column: 6, scope: !1715, inlinedAt: !3135)
!3144 = !DILocation(line: 987, column: 10, scope: !3050, inlinedAt: !3128)
!3145 = !DILocation(line: 988, column: 1, scope: !3050, inlinedAt: !3128)
!3146 = !DILocation(line: 999, column: 3, scope: !3120)
!3147 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !150, file: !150, line: 1003, type: !2915, isLocal: false, isDefinition: true, scopeLine: 1004, flags: DIFlagPrototyped, isOptimized: true, unit: !122, retainedNodes: !3148)
!3148 = !{!3149, !3150}
!3149 = !DILocalVariable(name: "arg", arg: 1, scope: !3147, file: !150, line: 1003, type: !30)
!3150 = !DILocalVariable(name: "argsize", arg: 2, scope: !3147, file: !150, line: 1003, type: !34)
!3151 = !DILocation(line: 1003, column: 33, scope: !3147)
!3152 = !DILocation(line: 1003, column: 45, scope: !3147)
!3153 = !DILocation(line: 982, column: 32, scope: !3050, inlinedAt: !3154)
!3154 = distinct !DILocation(line: 1005, column: 10, scope: !3147)
!3155 = !DILocation(line: 982, column: 44, scope: !3050, inlinedAt: !3154)
!3156 = !DILocation(line: 982, column: 58, scope: !3050, inlinedAt: !3154)
!3157 = !DILocation(line: 984, column: 3, scope: !3050, inlinedAt: !3154)
!3158 = !DILocation(line: 985, column: 13, scope: !3050, inlinedAt: !3154)
!3159 = !DILocation(line: 984, column: 26, scope: !3050, inlinedAt: !3154)
!3160 = !DILocation(line: 152, column: 43, scope: !1715, inlinedAt: !3161)
!3161 = distinct !DILocation(line: 986, column: 3, scope: !3050, inlinedAt: !3154)
!3162 = !DILocation(line: 152, column: 51, scope: !1715, inlinedAt: !3161)
!3163 = !DILocation(line: 152, column: 58, scope: !1715, inlinedAt: !3161)
!3164 = !DILocation(line: 154, column: 17, scope: !1715, inlinedAt: !3161)
!3165 = !DILocation(line: 156, column: 57, scope: !1715, inlinedAt: !3161)
!3166 = !DILocation(line: 155, column: 17, scope: !1715, inlinedAt: !3161)
!3167 = !DILocation(line: 157, column: 7, scope: !1715, inlinedAt: !3161)
!3168 = !DILocation(line: 158, column: 12, scope: !1715, inlinedAt: !3161)
!3169 = !DILocation(line: 159, column: 6, scope: !1715, inlinedAt: !3161)
!3170 = !DILocation(line: 987, column: 10, scope: !3050, inlinedAt: !3154)
!3171 = !DILocation(line: 988, column: 1, scope: !3050, inlinedAt: !3154)
!3172 = !DILocation(line: 1005, column: 3, scope: !3147)
!3173 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !150, file: !150, line: 1009, type: !2929, isLocal: false, isDefinition: true, scopeLine: 1010, flags: DIFlagPrototyped, isOptimized: true, unit: !122, retainedNodes: !3174)
!3174 = !{!3175, !3176, !3177, !3178}
!3175 = !DILocalVariable(name: "n", arg: 1, scope: !3173, file: !150, line: 1009, type: !49)
!3176 = !DILocalVariable(name: "s", arg: 2, scope: !3173, file: !150, line: 1009, type: !5)
!3177 = !DILocalVariable(name: "arg", arg: 3, scope: !3173, file: !150, line: 1009, type: !30)
!3178 = !DILocalVariable(name: "options", scope: !3173, file: !150, line: 1011, type: !157)
!3179 = !DILocation(line: 195, column: 26, scope: !2942, inlinedAt: !3180)
!3180 = distinct !DILocation(line: 1012, column: 13, scope: !3173)
!3181 = !DILocation(line: 1009, column: 29, scope: !3173)
!3182 = !DILocation(line: 1009, column: 51, scope: !3173)
!3183 = !DILocation(line: 1009, column: 66, scope: !3173)
!3184 = !DILocation(line: 1011, column: 3, scope: !3173)
!3185 = !DILocation(line: 1012, column: 13, scope: !3173)
!3186 = !DILocation(line: 193, column: 48, scope: !2942, inlinedAt: !3180)
!3187 = !{!3188}
!3188 = distinct !{!3188, !3189, !"quoting_options_from_style: argument 0"}
!3189 = distinct !{!3189, !"quoting_options_from_style"}
!3190 = !DILocation(line: 196, column: 13, scope: !2954, inlinedAt: !3180)
!3191 = !DILocation(line: 196, column: 7, scope: !2942, inlinedAt: !3180)
!3192 = !DILocation(line: 197, column: 5, scope: !2954, inlinedAt: !3180)
!3193 = !DILocation(line: 1011, column: 26, scope: !3173)
!3194 = !DILocation(line: 152, column: 43, scope: !1715, inlinedAt: !3195)
!3195 = distinct !DILocation(line: 1013, column: 3, scope: !3173)
!3196 = !DILocation(line: 152, column: 51, scope: !1715, inlinedAt: !3195)
!3197 = !DILocation(line: 152, column: 58, scope: !1715, inlinedAt: !3195)
!3198 = !DILocation(line: 154, column: 17, scope: !1715, inlinedAt: !3195)
!3199 = !DILocation(line: 156, column: 57, scope: !1715, inlinedAt: !3195)
!3200 = !DILocation(line: 155, column: 17, scope: !1715, inlinedAt: !3195)
!3201 = !DILocation(line: 157, column: 7, scope: !1715, inlinedAt: !3195)
!3202 = !DILocation(line: 158, column: 12, scope: !1715, inlinedAt: !3195)
!3203 = !DILocation(line: 159, column: 6, scope: !1715, inlinedAt: !3195)
!3204 = !DILocation(line: 1014, column: 10, scope: !3173)
!3205 = !DILocation(line: 1015, column: 1, scope: !3173)
!3206 = !DILocation(line: 1014, column: 3, scope: !3173)
!3207 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !150, file: !150, line: 1018, type: !3208, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !122, retainedNodes: !3210)
!3208 = !DISubroutineType(types: !3209)
!3209 = !{!117, !49, !30, !30, !30}
!3210 = !{!3211, !3212, !3213, !3214}
!3211 = !DILocalVariable(name: "n", arg: 1, scope: !3207, file: !150, line: 1018, type: !49)
!3212 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3207, file: !150, line: 1018, type: !30)
!3213 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3207, file: !150, line: 1019, type: !30)
!3214 = !DILocalVariable(name: "arg", arg: 4, scope: !3207, file: !150, line: 1019, type: !30)
!3215 = !DILocation(line: 1018, column: 24, scope: !3207)
!3216 = !DILocation(line: 1018, column: 39, scope: !3207)
!3217 = !DILocation(line: 1019, column: 32, scope: !3207)
!3218 = !DILocation(line: 1019, column: 57, scope: !3207)
!3219 = !DILocalVariable(name: "n", arg: 1, scope: !3220, file: !150, line: 1026, type: !49)
!3220 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !150, file: !150, line: 1026, type: !3221, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !122, retainedNodes: !3223)
!3221 = !DISubroutineType(types: !3222)
!3222 = !{!117, !49, !30, !30, !30, !34}
!3223 = !{!3219, !3224, !3225, !3226, !3227, !3228}
!3224 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3220, file: !150, line: 1026, type: !30)
!3225 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3220, file: !150, line: 1027, type: !30)
!3226 = !DILocalVariable(name: "arg", arg: 4, scope: !3220, file: !150, line: 1028, type: !30)
!3227 = !DILocalVariable(name: "argsize", arg: 5, scope: !3220, file: !150, line: 1028, type: !34)
!3228 = !DILocalVariable(name: "o", scope: !3220, file: !150, line: 1030, type: !157)
!3229 = !DILocation(line: 1026, column: 28, scope: !3220, inlinedAt: !3230)
!3230 = distinct !DILocation(line: 1021, column: 10, scope: !3207)
!3231 = !DILocation(line: 1026, column: 43, scope: !3220, inlinedAt: !3230)
!3232 = !DILocation(line: 1027, column: 36, scope: !3220, inlinedAt: !3230)
!3233 = !DILocation(line: 1028, column: 36, scope: !3220, inlinedAt: !3230)
!3234 = !DILocation(line: 1028, column: 48, scope: !3220, inlinedAt: !3230)
!3235 = !DILocation(line: 1030, column: 3, scope: !3220, inlinedAt: !3230)
!3236 = !DILocation(line: 1030, column: 30, scope: !3220, inlinedAt: !3230)
!3237 = !DILocation(line: 1030, column: 26, scope: !3220, inlinedAt: !3230)
!3238 = !DILocation(line: 179, column: 45, scope: !1763, inlinedAt: !3239)
!3239 = distinct !DILocation(line: 1031, column: 3, scope: !3220, inlinedAt: !3230)
!3240 = !DILocation(line: 180, column: 33, scope: !1763, inlinedAt: !3239)
!3241 = !DILocation(line: 180, column: 57, scope: !1763, inlinedAt: !3239)
!3242 = !DILocation(line: 184, column: 6, scope: !1763, inlinedAt: !3239)
!3243 = !DILocation(line: 184, column: 12, scope: !1763, inlinedAt: !3239)
!3244 = !DILocation(line: 185, column: 8, scope: !1779, inlinedAt: !3239)
!3245 = !DILocation(line: 185, column: 23, scope: !1779, inlinedAt: !3239)
!3246 = !DILocation(line: 185, column: 19, scope: !1779, inlinedAt: !3239)
!3247 = !DILocation(line: 186, column: 5, scope: !1779, inlinedAt: !3239)
!3248 = !DILocation(line: 187, column: 6, scope: !1763, inlinedAt: !3239)
!3249 = !DILocation(line: 187, column: 17, scope: !1763, inlinedAt: !3239)
!3250 = !DILocation(line: 188, column: 6, scope: !1763, inlinedAt: !3239)
!3251 = !DILocation(line: 188, column: 18, scope: !1763, inlinedAt: !3239)
!3252 = !DILocation(line: 1032, column: 10, scope: !3220, inlinedAt: !3230)
!3253 = !DILocation(line: 1033, column: 1, scope: !3220, inlinedAt: !3230)
!3254 = !DILocation(line: 1021, column: 3, scope: !3207)
!3255 = !DILocation(line: 1026, column: 28, scope: !3220)
!3256 = !DILocation(line: 1026, column: 43, scope: !3220)
!3257 = !DILocation(line: 1027, column: 36, scope: !3220)
!3258 = !DILocation(line: 1028, column: 36, scope: !3220)
!3259 = !DILocation(line: 1028, column: 48, scope: !3220)
!3260 = !DILocation(line: 1030, column: 3, scope: !3220)
!3261 = !DILocation(line: 1030, column: 30, scope: !3220)
!3262 = !DILocation(line: 1030, column: 26, scope: !3220)
!3263 = !DILocation(line: 179, column: 45, scope: !1763, inlinedAt: !3264)
!3264 = distinct !DILocation(line: 1031, column: 3, scope: !3220)
!3265 = !DILocation(line: 180, column: 33, scope: !1763, inlinedAt: !3264)
!3266 = !DILocation(line: 180, column: 57, scope: !1763, inlinedAt: !3264)
!3267 = !DILocation(line: 184, column: 6, scope: !1763, inlinedAt: !3264)
!3268 = !DILocation(line: 184, column: 12, scope: !1763, inlinedAt: !3264)
!3269 = !DILocation(line: 185, column: 8, scope: !1779, inlinedAt: !3264)
!3270 = !DILocation(line: 185, column: 23, scope: !1779, inlinedAt: !3264)
!3271 = !DILocation(line: 185, column: 19, scope: !1779, inlinedAt: !3264)
!3272 = !DILocation(line: 186, column: 5, scope: !1779, inlinedAt: !3264)
!3273 = !DILocation(line: 187, column: 6, scope: !1763, inlinedAt: !3264)
!3274 = !DILocation(line: 187, column: 17, scope: !1763, inlinedAt: !3264)
!3275 = !DILocation(line: 188, column: 6, scope: !1763, inlinedAt: !3264)
!3276 = !DILocation(line: 188, column: 18, scope: !1763, inlinedAt: !3264)
!3277 = !DILocation(line: 1032, column: 10, scope: !3220)
!3278 = !DILocation(line: 1033, column: 1, scope: !3220)
!3279 = !DILocation(line: 1032, column: 3, scope: !3220)
!3280 = distinct !DISubprogram(name: "quotearg_custom", scope: !150, file: !150, line: 1036, type: !3281, isLocal: false, isDefinition: true, scopeLine: 1038, flags: DIFlagPrototyped, isOptimized: true, unit: !122, retainedNodes: !3283)
!3281 = !DISubroutineType(types: !3282)
!3282 = !{!117, !30, !30, !30}
!3283 = !{!3284, !3285, !3286}
!3284 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3280, file: !150, line: 1036, type: !30)
!3285 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3280, file: !150, line: 1036, type: !30)
!3286 = !DILocalVariable(name: "arg", arg: 3, scope: !3280, file: !150, line: 1037, type: !30)
!3287 = !DILocation(line: 1036, column: 30, scope: !3280)
!3288 = !DILocation(line: 1036, column: 54, scope: !3280)
!3289 = !DILocation(line: 1037, column: 30, scope: !3280)
!3290 = !DILocation(line: 1018, column: 24, scope: !3207, inlinedAt: !3291)
!3291 = distinct !DILocation(line: 1039, column: 10, scope: !3280)
!3292 = !DILocation(line: 1018, column: 39, scope: !3207, inlinedAt: !3291)
!3293 = !DILocation(line: 1019, column: 32, scope: !3207, inlinedAt: !3291)
!3294 = !DILocation(line: 1019, column: 57, scope: !3207, inlinedAt: !3291)
!3295 = !DILocation(line: 1026, column: 28, scope: !3220, inlinedAt: !3296)
!3296 = distinct !DILocation(line: 1021, column: 10, scope: !3207, inlinedAt: !3291)
!3297 = !DILocation(line: 1026, column: 43, scope: !3220, inlinedAt: !3296)
!3298 = !DILocation(line: 1027, column: 36, scope: !3220, inlinedAt: !3296)
!3299 = !DILocation(line: 1028, column: 36, scope: !3220, inlinedAt: !3296)
!3300 = !DILocation(line: 1028, column: 48, scope: !3220, inlinedAt: !3296)
!3301 = !DILocation(line: 1030, column: 3, scope: !3220, inlinedAt: !3296)
!3302 = !DILocation(line: 1030, column: 30, scope: !3220, inlinedAt: !3296)
!3303 = !DILocation(line: 1030, column: 26, scope: !3220, inlinedAt: !3296)
!3304 = !DILocation(line: 179, column: 45, scope: !1763, inlinedAt: !3305)
!3305 = distinct !DILocation(line: 1031, column: 3, scope: !3220, inlinedAt: !3296)
!3306 = !DILocation(line: 180, column: 33, scope: !1763, inlinedAt: !3305)
!3307 = !DILocation(line: 180, column: 57, scope: !1763, inlinedAt: !3305)
!3308 = !DILocation(line: 184, column: 6, scope: !1763, inlinedAt: !3305)
!3309 = !DILocation(line: 184, column: 12, scope: !1763, inlinedAt: !3305)
!3310 = !DILocation(line: 185, column: 8, scope: !1779, inlinedAt: !3305)
!3311 = !DILocation(line: 185, column: 23, scope: !1779, inlinedAt: !3305)
!3312 = !DILocation(line: 185, column: 19, scope: !1779, inlinedAt: !3305)
!3313 = !DILocation(line: 186, column: 5, scope: !1779, inlinedAt: !3305)
!3314 = !DILocation(line: 187, column: 6, scope: !1763, inlinedAt: !3305)
!3315 = !DILocation(line: 187, column: 17, scope: !1763, inlinedAt: !3305)
!3316 = !DILocation(line: 188, column: 6, scope: !1763, inlinedAt: !3305)
!3317 = !DILocation(line: 188, column: 18, scope: !1763, inlinedAt: !3305)
!3318 = !DILocation(line: 1032, column: 10, scope: !3220, inlinedAt: !3296)
!3319 = !DILocation(line: 1033, column: 1, scope: !3220, inlinedAt: !3296)
!3320 = !DILocation(line: 1039, column: 3, scope: !3280)
!3321 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !150, file: !150, line: 1043, type: !3322, isLocal: false, isDefinition: true, scopeLine: 1045, flags: DIFlagPrototyped, isOptimized: true, unit: !122, retainedNodes: !3324)
!3322 = !DISubroutineType(types: !3323)
!3323 = !{!117, !30, !30, !30, !34}
!3324 = !{!3325, !3326, !3327, !3328}
!3325 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3321, file: !150, line: 1043, type: !30)
!3326 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3321, file: !150, line: 1043, type: !30)
!3327 = !DILocalVariable(name: "arg", arg: 3, scope: !3321, file: !150, line: 1044, type: !30)
!3328 = !DILocalVariable(name: "argsize", arg: 4, scope: !3321, file: !150, line: 1044, type: !34)
!3329 = !DILocation(line: 1043, column: 34, scope: !3321)
!3330 = !DILocation(line: 1043, column: 58, scope: !3321)
!3331 = !DILocation(line: 1044, column: 34, scope: !3321)
!3332 = !DILocation(line: 1044, column: 46, scope: !3321)
!3333 = !DILocation(line: 1026, column: 28, scope: !3220, inlinedAt: !3334)
!3334 = distinct !DILocation(line: 1046, column: 10, scope: !3321)
!3335 = !DILocation(line: 1026, column: 43, scope: !3220, inlinedAt: !3334)
!3336 = !DILocation(line: 1027, column: 36, scope: !3220, inlinedAt: !3334)
!3337 = !DILocation(line: 1028, column: 36, scope: !3220, inlinedAt: !3334)
!3338 = !DILocation(line: 1028, column: 48, scope: !3220, inlinedAt: !3334)
!3339 = !DILocation(line: 1030, column: 3, scope: !3220, inlinedAt: !3334)
!3340 = !DILocation(line: 1030, column: 30, scope: !3220, inlinedAt: !3334)
!3341 = !DILocation(line: 1030, column: 26, scope: !3220, inlinedAt: !3334)
!3342 = !DILocation(line: 179, column: 45, scope: !1763, inlinedAt: !3343)
!3343 = distinct !DILocation(line: 1031, column: 3, scope: !3220, inlinedAt: !3334)
!3344 = !DILocation(line: 180, column: 33, scope: !1763, inlinedAt: !3343)
!3345 = !DILocation(line: 180, column: 57, scope: !1763, inlinedAt: !3343)
!3346 = !DILocation(line: 184, column: 6, scope: !1763, inlinedAt: !3343)
!3347 = !DILocation(line: 184, column: 12, scope: !1763, inlinedAt: !3343)
!3348 = !DILocation(line: 185, column: 8, scope: !1779, inlinedAt: !3343)
!3349 = !DILocation(line: 185, column: 23, scope: !1779, inlinedAt: !3343)
!3350 = !DILocation(line: 185, column: 19, scope: !1779, inlinedAt: !3343)
!3351 = !DILocation(line: 186, column: 5, scope: !1779, inlinedAt: !3343)
!3352 = !DILocation(line: 187, column: 6, scope: !1763, inlinedAt: !3343)
!3353 = !DILocation(line: 187, column: 17, scope: !1763, inlinedAt: !3343)
!3354 = !DILocation(line: 188, column: 6, scope: !1763, inlinedAt: !3343)
!3355 = !DILocation(line: 188, column: 18, scope: !1763, inlinedAt: !3343)
!3356 = !DILocation(line: 1032, column: 10, scope: !3220, inlinedAt: !3334)
!3357 = !DILocation(line: 1033, column: 1, scope: !3220, inlinedAt: !3334)
!3358 = !DILocation(line: 1046, column: 3, scope: !3321)
!3359 = distinct !DISubprogram(name: "quote_n_mem", scope: !150, file: !150, line: 1061, type: !3360, isLocal: false, isDefinition: true, scopeLine: 1062, flags: DIFlagPrototyped, isOptimized: true, unit: !122, retainedNodes: !3362)
!3360 = !DISubroutineType(types: !3361)
!3361 = !{!30, !49, !30, !34}
!3362 = !{!3363, !3364, !3365}
!3363 = !DILocalVariable(name: "n", arg: 1, scope: !3359, file: !150, line: 1061, type: !49)
!3364 = !DILocalVariable(name: "arg", arg: 2, scope: !3359, file: !150, line: 1061, type: !30)
!3365 = !DILocalVariable(name: "argsize", arg: 3, scope: !3359, file: !150, line: 1061, type: !34)
!3366 = !DILocation(line: 1061, column: 18, scope: !3359)
!3367 = !DILocation(line: 1061, column: 33, scope: !3359)
!3368 = !DILocation(line: 1061, column: 45, scope: !3359)
!3369 = !DILocation(line: 1063, column: 10, scope: !3359)
!3370 = !DILocation(line: 1063, column: 3, scope: !3359)
!3371 = distinct !DISubprogram(name: "quote_mem", scope: !150, file: !150, line: 1067, type: !3372, isLocal: false, isDefinition: true, scopeLine: 1068, flags: DIFlagPrototyped, isOptimized: true, unit: !122, retainedNodes: !3374)
!3372 = !DISubroutineType(types: !3373)
!3373 = !{!30, !30, !34}
!3374 = !{!3375, !3376}
!3375 = !DILocalVariable(name: "arg", arg: 1, scope: !3371, file: !150, line: 1067, type: !30)
!3376 = !DILocalVariable(name: "argsize", arg: 2, scope: !3371, file: !150, line: 1067, type: !34)
!3377 = !DILocation(line: 1067, column: 24, scope: !3371)
!3378 = !DILocation(line: 1067, column: 36, scope: !3371)
!3379 = !DILocation(line: 1061, column: 18, scope: !3359, inlinedAt: !3380)
!3380 = distinct !DILocation(line: 1069, column: 10, scope: !3371)
!3381 = !DILocation(line: 1061, column: 33, scope: !3359, inlinedAt: !3380)
!3382 = !DILocation(line: 1061, column: 45, scope: !3359, inlinedAt: !3380)
!3383 = !DILocation(line: 1063, column: 10, scope: !3359, inlinedAt: !3380)
!3384 = !DILocation(line: 1069, column: 3, scope: !3371)
!3385 = distinct !DISubprogram(name: "quote_n", scope: !150, file: !150, line: 1073, type: !3386, isLocal: false, isDefinition: true, scopeLine: 1074, flags: DIFlagPrototyped, isOptimized: true, unit: !122, retainedNodes: !3388)
!3386 = !DISubroutineType(types: !3387)
!3387 = !{!30, !49, !30}
!3388 = !{!3389, !3390}
!3389 = !DILocalVariable(name: "n", arg: 1, scope: !3385, file: !150, line: 1073, type: !49)
!3390 = !DILocalVariable(name: "arg", arg: 2, scope: !3385, file: !150, line: 1073, type: !30)
!3391 = !DILocation(line: 1073, column: 14, scope: !3385)
!3392 = !DILocation(line: 1073, column: 29, scope: !3385)
!3393 = !DILocation(line: 1061, column: 18, scope: !3359, inlinedAt: !3394)
!3394 = distinct !DILocation(line: 1075, column: 10, scope: !3385)
!3395 = !DILocation(line: 1061, column: 33, scope: !3359, inlinedAt: !3394)
!3396 = !DILocation(line: 1061, column: 45, scope: !3359, inlinedAt: !3394)
!3397 = !DILocation(line: 1063, column: 10, scope: !3359, inlinedAt: !3394)
!3398 = !DILocation(line: 1075, column: 3, scope: !3385)
!3399 = distinct !DISubprogram(name: "quote", scope: !150, file: !150, line: 1079, type: !3400, isLocal: false, isDefinition: true, scopeLine: 1080, flags: DIFlagPrototyped, isOptimized: true, unit: !122, retainedNodes: !3402)
!3400 = !DISubroutineType(types: !3401)
!3401 = !{!30, !30}
!3402 = !{!3403}
!3403 = !DILocalVariable(name: "arg", arg: 1, scope: !3399, file: !150, line: 1079, type: !30)
!3404 = !DILocation(line: 1079, column: 20, scope: !3399)
!3405 = !DILocation(line: 1073, column: 14, scope: !3385, inlinedAt: !3406)
!3406 = distinct !DILocation(line: 1081, column: 10, scope: !3399)
!3407 = !DILocation(line: 1073, column: 29, scope: !3385, inlinedAt: !3406)
!3408 = !DILocation(line: 1061, column: 18, scope: !3359, inlinedAt: !3409)
!3409 = distinct !DILocation(line: 1075, column: 10, scope: !3385, inlinedAt: !3406)
!3410 = !DILocation(line: 1061, column: 33, scope: !3359, inlinedAt: !3409)
!3411 = !DILocation(line: 1061, column: 45, scope: !3359, inlinedAt: !3409)
!3412 = !DILocation(line: 1063, column: 10, scope: !3359, inlinedAt: !3409)
!3413 = !DILocation(line: 1081, column: 3, scope: !3399)
!3414 = distinct !DISubprogram(name: "init_tokenbuffer", scope: !207, file: !207, line: 44, type: !3415, isLocal: false, isDefinition: true, scopeLine: 45, flags: DIFlagPrototyped, isOptimized: true, unit: !203, retainedNodes: !3423)
!3415 = !DISubroutineType(types: !3416)
!3416 = !{null, !3417}
!3417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3418, size: 64)
!3418 = !DIDerivedType(tag: DW_TAG_typedef, name: "token_buffer", file: !790, line: 31, baseType: !3419)
!3419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tokenbuffer", file: !790, line: 26, size: 128, elements: !3420)
!3420 = !{!3421, !3422}
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3419, file: !790, line: 28, baseType: !34, size: 64)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !3419, file: !790, line: 29, baseType: !117, size: 64, offset: 64)
!3423 = !{!3424}
!3424 = !DILocalVariable(name: "tokenbuffer", arg: 1, scope: !3414, file: !207, line: 44, type: !3417)
!3425 = !DILocation(line: 44, column: 33, scope: !3414)
!3426 = !DILocation(line: 48, column: 1, scope: !3414)
!3427 = !DILocation(line: 47, column: 23, scope: !3414)
!3428 = distinct !DISubprogram(name: "readtoken", scope: !207, file: !207, line: 80, type: !3429, isLocal: false, isDefinition: true, scopeLine: 84, flags: DIFlagPrototyped, isOptimized: true, unit: !203, retainedNodes: !3465)
!3429 = !DISubroutineType(types: !3430)
!3430 = !{!34, !3431, !30, !34, !3417}
!3431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3432, size: 64)
!3432 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1374, line: 7, baseType: !3433)
!3433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1376, line: 49, size: 1728, elements: !3434)
!3434 = !{!3435, !3436, !3437, !3438, !3439, !3440, !3441, !3442, !3443, !3444, !3445, !3446, !3447, !3448, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464}
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3433, file: !1376, line: 51, baseType: !49, size: 32)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3433, file: !1376, line: 54, baseType: !117, size: 64, offset: 64)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3433, file: !1376, line: 55, baseType: !117, size: 64, offset: 128)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3433, file: !1376, line: 56, baseType: !117, size: 64, offset: 192)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3433, file: !1376, line: 57, baseType: !117, size: 64, offset: 256)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3433, file: !1376, line: 58, baseType: !117, size: 64, offset: 320)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3433, file: !1376, line: 59, baseType: !117, size: 64, offset: 384)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3433, file: !1376, line: 60, baseType: !117, size: 64, offset: 448)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3433, file: !1376, line: 61, baseType: !117, size: 64, offset: 512)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3433, file: !1376, line: 64, baseType: !117, size: 64, offset: 576)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3433, file: !1376, line: 65, baseType: !117, size: 64, offset: 640)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3433, file: !1376, line: 66, baseType: !117, size: 64, offset: 704)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3433, file: !1376, line: 68, baseType: !1391, size: 64, offset: 768)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3433, file: !1376, line: 70, baseType: !3449, size: 64, offset: 832)
!3449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3433, size: 64)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3433, file: !1376, line: 72, baseType: !49, size: 32, offset: 896)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3433, file: !1376, line: 73, baseType: !49, size: 32, offset: 928)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3433, file: !1376, line: 74, baseType: !1352, size: 64, offset: 960)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3433, file: !1376, line: 77, baseType: !146, size: 16, offset: 1024)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3433, file: !1376, line: 78, baseType: !1400, size: 8, offset: 1040)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3433, file: !1376, line: 79, baseType: !1402, size: 8, offset: 1048)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3433, file: !1376, line: 81, baseType: !1404, size: 64, offset: 1088)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3433, file: !1376, line: 89, baseType: !1407, size: 64, offset: 1152)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3433, file: !1376, line: 91, baseType: !1409, size: 64, offset: 1216)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3433, file: !1376, line: 92, baseType: !1412, size: 64, offset: 1280)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3433, file: !1376, line: 93, baseType: !3449, size: 64, offset: 1344)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3433, file: !1376, line: 94, baseType: !33, size: 64, offset: 1408)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3433, file: !1376, line: 95, baseType: !34, size: 64, offset: 1472)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3433, file: !1376, line: 96, baseType: !49, size: 32, offset: 1536)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3433, file: !1376, line: 98, baseType: !1419, size: 160, offset: 1568)
!3465 = !{!3466, !3467, !3468, !3469, !3470, !3471, !3472, !3473, !3474, !3477}
!3466 = !DILocalVariable(name: "stream", arg: 1, scope: !3428, file: !207, line: 80, type: !3431)
!3467 = !DILocalVariable(name: "delim", arg: 2, scope: !3428, file: !207, line: 81, type: !30)
!3468 = !DILocalVariable(name: "n_delim", arg: 3, scope: !3428, file: !207, line: 82, type: !34)
!3469 = !DILocalVariable(name: "tokenbuffer", arg: 4, scope: !3428, file: !207, line: 83, type: !3417)
!3470 = !DILocalVariable(name: "p", scope: !3428, file: !207, line: 85, type: !117)
!3471 = !DILocalVariable(name: "c", scope: !3428, file: !207, line: 86, type: !49)
!3472 = !DILocalVariable(name: "i", scope: !3428, file: !207, line: 87, type: !34)
!3473 = !DILocalVariable(name: "n", scope: !3428, file: !207, line: 87, type: !34)
!3474 = !DILocalVariable(name: "isdelim", scope: !3428, file: !207, line: 88, type: !3475)
!3475 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3476, size: 256, elements: !1874)
!3476 = !DIDerivedType(tag: DW_TAG_typedef, name: "word", file: !207, line: 50, baseType: !34)
!3477 = !DILocalVariable(name: "ch", scope: !3478, file: !207, line: 93, type: !225)
!3478 = distinct !DILexicalBlock(scope: !3479, file: !207, line: 92, column: 5)
!3479 = distinct !DILexicalBlock(scope: !3480, file: !207, line: 91, column: 3)
!3480 = distinct !DILexicalBlock(scope: !3428, file: !207, line: 91, column: 3)
!3481 = !DILocation(line: 80, column: 18, scope: !3428)
!3482 = !DILocation(line: 81, column: 24, scope: !3428)
!3483 = !DILocation(line: 82, column: 19, scope: !3428)
!3484 = !DILocation(line: 83, column: 26, scope: !3428)
!3485 = !DILocation(line: 88, column: 3, scope: !3428)
!3486 = !DILocation(line: 88, column: 8, scope: !3428)
!3487 = !DILocation(line: 90, column: 3, scope: !3428)
!3488 = !DILocation(line: 87, column: 10, scope: !3428)
!3489 = !DILocation(line: 91, column: 17, scope: !3479)
!3490 = !DILocation(line: 91, column: 3, scope: !3480)
!3491 = !DILocation(line: 93, column: 26, scope: !3478)
!3492 = !DILocation(line: 93, column: 21, scope: !3478)
!3493 = !DILocation(line: 94, column: 20, scope: !3478)
!3494 = !DILocalVariable(name: "n", arg: 1, scope: !3495, file: !207, line: 60, type: !34)
!3495 = distinct !DISubprogram(name: "set_nth_bit", scope: !207, file: !207, line: 60, type: !3496, isLocal: true, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !203, retainedNodes: !3499)
!3496 = !DISubroutineType(types: !3497)
!3497 = !{null, !34, !3498}
!3498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3476, size: 64)
!3499 = !{!3494, !3500, !3501}
!3500 = !DILocalVariable(name: "bitset", arg: 2, scope: !3495, file: !207, line: 60, type: !3498)
!3501 = !DILocalVariable(name: "one", scope: !3495, file: !207, line: 62, type: !34)
!3502 = !DILocation(line: 60, column: 21, scope: !3495, inlinedAt: !3503)
!3503 = distinct !DILocation(line: 94, column: 7, scope: !3478)
!3504 = !DILocation(line: 60, column: 30, scope: !3495, inlinedAt: !3503)
!3505 = !DILocation(line: 62, column: 10, scope: !3495, inlinedAt: !3503)
!3506 = !DILocation(line: 63, column: 41, scope: !3495, inlinedAt: !3503)
!3507 = !DILocation(line: 63, column: 36, scope: !3495, inlinedAt: !3503)
!3508 = !DILocation(line: 63, column: 12, scope: !3495, inlinedAt: !3503)
!3509 = !DILocation(line: 63, column: 3, scope: !3495, inlinedAt: !3503)
!3510 = !DILocation(line: 63, column: 29, scope: !3495, inlinedAt: !3503)
!3511 = !DILocation(line: 91, column: 29, scope: !3479)
!3512 = distinct !{!3512, !3490, !3513}
!3513 = !DILocation(line: 95, column: 5, scope: !3480)
!3514 = !DILocation(line: 68, column: 10, scope: !3515, inlinedAt: !3521)
!3515 = distinct !DISubprogram(name: "getc_unlocked", scope: !3516, file: !3516, line: 66, type: !3517, isLocal: false, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: true, unit: !203, retainedNodes: !3519)
!3516 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3517 = !DISubroutineType(types: !3518)
!3518 = !{!49, !3431}
!3519 = !{!3520}
!3520 = !DILocalVariable(name: "__fp", arg: 1, scope: !3515, file: !3516, line: 66, type: !3431)
!3521 = distinct !DILocation(line: 98, column: 12, scope: !3522)
!3522 = distinct !DILexicalBlock(scope: !3428, file: !207, line: 98, column: 3)
!3523 = !DILocation(line: 66, column: 22, scope: !3515, inlinedAt: !3521)
!3524 = !{!3525, !691, i64 8}
!3525 = !{!"_IO_FILE", !764, i64 0, !691, i64 8, !691, i64 16, !691, i64 24, !691, i64 32, !691, i64 40, !691, i64 48, !691, i64 56, !691, i64 64, !691, i64 72, !691, i64 80, !691, i64 88, !691, i64 96, !691, i64 104, !764, i64 112, !764, i64 116, !843, i64 120, !2119, i64 128, !692, i64 130, !692, i64 131, !691, i64 136, !843, i64 144, !691, i64 152, !691, i64 160, !691, i64 168, !691, i64 176, !843, i64 184, !764, i64 192, !692, i64 196}
!3526 = !{!3525, !691, i64 16}
!3527 = !{!"branch_weights", i32 2000, i32 1}
!3528 = !DILocation(line: 86, column: 7, scope: !3428)
!3529 = !DILocation(line: 98, column: 34, scope: !3530)
!3530 = distinct !DILexicalBlock(scope: !3522, file: !207, line: 98, column: 3)
!3531 = !DILocation(line: 98, column: 29, scope: !3530)
!3532 = !DILocation(line: 98, column: 50, scope: !3530)
!3533 = !DILocalVariable(name: "n", arg: 1, scope: !3534, file: !207, line: 54, type: !34)
!3534 = distinct !DISubprogram(name: "get_nth_bit", scope: !207, file: !207, line: 54, type: !3535, isLocal: true, isDefinition: true, scopeLine: 55, flags: DIFlagPrototyped, isOptimized: true, unit: !203, retainedNodes: !3539)
!3535 = !DISubroutineType(types: !3536)
!3536 = !{!88, !34, !3537}
!3537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3538, size: 64)
!3538 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3476)
!3539 = !{!3533, !3540}
!3540 = !DILocalVariable(name: "bitset", arg: 2, scope: !3534, file: !207, line: 54, type: !3537)
!3541 = !DILocation(line: 54, column: 21, scope: !3534, inlinedAt: !3542)
!3542 = distinct !DILocation(line: 98, column: 37, scope: !3530)
!3543 = !DILocation(line: 54, column: 36, scope: !3534, inlinedAt: !3542)
!3544 = !DILocation(line: 56, column: 19, scope: !3534, inlinedAt: !3542)
!3545 = !DILocation(line: 56, column: 10, scope: !3534, inlinedAt: !3542)
!3546 = !DILocation(line: 56, column: 41, scope: !3534, inlinedAt: !3542)
!3547 = !DILocation(line: 98, column: 3, scope: !3522)
!3548 = !DILocation(line: 66, column: 22, scope: !3515, inlinedAt: !3549)
!3549 = distinct !DILocation(line: 98, column: 67, scope: !3530)
!3550 = !DILocation(line: 68, column: 10, scope: !3515, inlinedAt: !3549)
!3551 = distinct !{!3551, !3547, !3552}
!3552 = !DILocation(line: 101, column: 5, scope: !3522)
!3553 = !DILocation(line: 103, column: 20, scope: !3428)
!3554 = !DILocation(line: 104, column: 20, scope: !3428)
!3555 = !{!842, !843, i64 0}
!3556 = !DILocation(line: 87, column: 13, scope: !3428)
!3557 = !DILocation(line: 85, column: 9, scope: !3428)
!3558 = !DILocation(line: 111, column: 13, scope: !3559)
!3559 = distinct !DILexicalBlock(scope: !3560, file: !207, line: 111, column: 11)
!3560 = distinct !DILexicalBlock(scope: !3561, file: !207, line: 107, column: 5)
!3561 = distinct !DILexicalBlock(scope: !3562, file: !207, line: 106, column: 3)
!3562 = distinct !DILexicalBlock(scope: !3428, file: !207, line: 106, column: 3)
!3563 = !DILocation(line: 111, column: 11, scope: !3560)
!3564 = !DILocation(line: 174, column: 19, scope: !212, inlinedAt: !3565)
!3565 = distinct !DILocation(line: 112, column: 13, scope: !3559)
!3566 = !DILocation(line: 174, column: 41, scope: !212, inlinedAt: !3565)
!3567 = !DILocation(line: 176, column: 10, scope: !212, inlinedAt: !3565)
!3568 = !DILocation(line: 178, column: 9, scope: !3569, inlinedAt: !3565)
!3569 = distinct !DILexicalBlock(scope: !212, file: !211, line: 178, column: 7)
!3570 = !DILocation(line: 178, column: 7, scope: !212, inlinedAt: !3565)
!3571 = !DILocation(line: 180, column: 13, scope: !3572, inlinedAt: !3565)
!3572 = distinct !DILexicalBlock(scope: !3573, file: !211, line: 180, column: 11)
!3573 = distinct !DILexicalBlock(scope: !3569, file: !211, line: 179, column: 5)
!3574 = !DILocation(line: 180, column: 11, scope: !3573, inlinedAt: !3565)
!3575 = !DILocation(line: 191, column: 11, scope: !3576, inlinedAt: !3565)
!3576 = distinct !DILexicalBlock(scope: !3573, file: !211, line: 191, column: 11)
!3577 = !DILocation(line: 191, column: 11, scope: !3573, inlinedAt: !3565)
!3578 = !DILocation(line: 192, column: 9, scope: !3576, inlinedAt: !3565)
!3579 = !DILocation(line: 201, column: 11, scope: !3580, inlinedAt: !3565)
!3580 = distinct !DILexicalBlock(scope: !3581, file: !211, line: 200, column: 11)
!3581 = distinct !DILexicalBlock(scope: !3569, file: !211, line: 195, column: 5)
!3582 = !DILocation(line: 200, column: 11, scope: !3581, inlinedAt: !3565)
!3583 = !DILocation(line: 202, column: 9, scope: !3580, inlinedAt: !3565)
!3584 = !DILocation(line: 203, column: 14, scope: !3581, inlinedAt: !3565)
!3585 = !DILocation(line: 203, column: 18, scope: !3581, inlinedAt: !3565)
!3586 = !DILocation(line: 203, column: 9, scope: !3581, inlinedAt: !3565)
!3587 = !DILocation(line: 0, scope: !212, inlinedAt: !3565)
!3588 = !DILocation(line: 207, column: 10, scope: !212, inlinedAt: !3565)
!3589 = !DILocation(line: 112, column: 9, scope: !3559)
!3590 = !DILocation(line: 0, scope: !3428)
!3591 = !DILocation(line: 114, column: 11, scope: !3560)
!3592 = !DILocation(line: 119, column: 24, scope: !3593)
!3593 = distinct !DILexicalBlock(scope: !3560, file: !207, line: 119, column: 11)
!3594 = !DILocation(line: 54, column: 21, scope: !3534, inlinedAt: !3595)
!3595 = distinct !DILocation(line: 119, column: 11, scope: !3593)
!3596 = !DILocation(line: 54, column: 36, scope: !3534, inlinedAt: !3595)
!3597 = !DILocation(line: 56, column: 19, scope: !3534, inlinedAt: !3595)
!3598 = !DILocation(line: 56, column: 10, scope: !3534, inlinedAt: !3595)
!3599 = !DILocation(line: 56, column: 41, scope: !3534, inlinedAt: !3595)
!3600 = !DILocation(line: 119, column: 11, scope: !3560)
!3601 = !DILocation(line: 124, column: 16, scope: !3560)
!3602 = !DILocation(line: 124, column: 10, scope: !3560)
!3603 = !DILocation(line: 124, column: 7, scope: !3560)
!3604 = !DILocation(line: 124, column: 14, scope: !3560)
!3605 = !DILocation(line: 66, column: 22, scope: !3515, inlinedAt: !3606)
!3606 = distinct !DILocation(line: 125, column: 11, scope: !3560)
!3607 = !DILocation(line: 68, column: 10, scope: !3515, inlinedAt: !3606)
!3608 = !DILocation(line: 108, column: 13, scope: !3609)
!3609 = distinct !DILexicalBlock(scope: !3560, file: !207, line: 108, column: 11)
!3610 = !DILocation(line: 108, column: 22, scope: !3609)
!3611 = !DILocation(line: 108, column: 17, scope: !3609)
!3612 = distinct !{!3612, !3613, !3614}
!3613 = !DILocation(line: 106, column: 3, scope: !3562)
!3614 = !DILocation(line: 126, column: 5, scope: !3562)
!3615 = !DILocation(line: 0, scope: !3616)
!3616 = distinct !DILexicalBlock(scope: !3617, file: !207, line: 115, column: 9)
!3617 = distinct !DILexicalBlock(scope: !3560, file: !207, line: 114, column: 11)
!3618 = !DILocation(line: 128, column: 23, scope: !3428)
!3619 = !DILocation(line: 129, column: 21, scope: !3428)
!3620 = !DILocation(line: 130, column: 3, scope: !3428)
!3621 = !DILocation(line: 131, column: 1, scope: !3428)
!3622 = distinct !DISubprogram(name: "readtokens", scope: !207, file: !207, line: 141, type: !3623, isLocal: false, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !203, retainedNodes: !3627)
!3623 = !DISubroutineType(types: !3624)
!3624 = !{!34, !3431, !34, !30, !34, !3625, !3626}
!3625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!3626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!3627 = !{!3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3644}
!3628 = !DILocalVariable(name: "stream", arg: 1, scope: !3622, file: !207, line: 141, type: !3431)
!3629 = !DILocalVariable(name: "projected_n_tokens", arg: 2, scope: !3622, file: !207, line: 142, type: !34)
!3630 = !DILocalVariable(name: "delim", arg: 3, scope: !3622, file: !207, line: 143, type: !30)
!3631 = !DILocalVariable(name: "n_delim", arg: 4, scope: !3622, file: !207, line: 144, type: !34)
!3632 = !DILocalVariable(name: "tokens_out", arg: 5, scope: !3622, file: !207, line: 145, type: !3625)
!3633 = !DILocalVariable(name: "token_lengths", arg: 6, scope: !3622, file: !207, line: 146, type: !3626)
!3634 = !DILocalVariable(name: "tb", scope: !3622, file: !207, line: 148, type: !3418)
!3635 = !DILocalVariable(name: "token", scope: !3622, file: !207, line: 148, type: !3417)
!3636 = !DILocalVariable(name: "tokens", scope: !3622, file: !207, line: 149, type: !741)
!3637 = !DILocalVariable(name: "lengths", scope: !3622, file: !207, line: 150, type: !215)
!3638 = !DILocalVariable(name: "sz", scope: !3622, file: !207, line: 151, type: !34)
!3639 = !DILocalVariable(name: "n_tokens", scope: !3622, file: !207, line: 152, type: !34)
!3640 = !DILocalVariable(name: "tmp", scope: !3641, file: !207, line: 167, type: !117)
!3641 = distinct !DILexicalBlock(scope: !3642, file: !207, line: 166, column: 5)
!3642 = distinct !DILexicalBlock(scope: !3643, file: !207, line: 165, column: 3)
!3643 = distinct !DILexicalBlock(scope: !3622, file: !207, line: 165, column: 3)
!3644 = !DILocalVariable(name: "token_length", scope: !3641, file: !207, line: 168, type: !34)
!3645 = !DILocation(line: 141, column: 19, scope: !3622)
!3646 = !DILocation(line: 142, column: 20, scope: !3622)
!3647 = !DILocation(line: 143, column: 25, scope: !3622)
!3648 = !DILocation(line: 144, column: 20, scope: !3622)
!3649 = !DILocation(line: 145, column: 21, scope: !3622)
!3650 = !DILocation(line: 146, column: 22, scope: !3622)
!3651 = !DILocation(line: 148, column: 3, scope: !3622)
!3652 = !DILocation(line: 148, column: 21, scope: !3622)
!3653 = !DILocation(line: 154, column: 26, scope: !3654)
!3654 = distinct !DILexicalBlock(scope: !3622, file: !207, line: 154, column: 7)
!3655 = !DILocation(line: 157, column: 23, scope: !3654)
!3656 = !DILocation(line: 154, column: 7, scope: !3622)
!3657 = !DILocation(line: 151, column: 10, scope: !3622)
!3658 = !DILocalVariable(name: "n", arg: 1, scope: !3659, file: !211, line: 99, type: !34)
!3659 = distinct !DISubprogram(name: "xnmalloc", scope: !211, file: !211, line: 99, type: !3660, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !203, retainedNodes: !3662)
!3660 = !DISubroutineType(types: !3661)
!3661 = !{!33, !34, !34}
!3662 = !{!3658, !3663}
!3663 = !DILocalVariable(name: "s", arg: 2, scope: !3659, file: !211, line: 99, type: !34)
!3664 = !DILocation(line: 99, column: 18, scope: !3659, inlinedAt: !3665)
!3665 = distinct !DILocation(line: 160, column: 12, scope: !3622)
!3666 = !DILocation(line: 99, column: 28, scope: !3659, inlinedAt: !3665)
!3667 = !DILocation(line: 101, column: 7, scope: !3668, inlinedAt: !3665)
!3668 = distinct !DILexicalBlock(scope: !3659, file: !211, line: 101, column: 7)
!3669 = !DILocation(line: 101, column: 7, scope: !3659, inlinedAt: !3665)
!3670 = !DILocation(line: 102, column: 5, scope: !3668, inlinedAt: !3665)
!3671 = !DILocation(line: 103, column: 21, scope: !3659, inlinedAt: !3665)
!3672 = !DILocation(line: 103, column: 10, scope: !3659, inlinedAt: !3665)
!3673 = !DILocation(line: 160, column: 12, scope: !3622)
!3674 = !DILocation(line: 149, column: 10, scope: !3622)
!3675 = !DILocation(line: 99, column: 18, scope: !3659, inlinedAt: !3676)
!3676 = distinct !DILocation(line: 161, column: 13, scope: !3622)
!3677 = !DILocation(line: 99, column: 28, scope: !3659, inlinedAt: !3676)
!3678 = !DILocation(line: 103, column: 10, scope: !3659, inlinedAt: !3676)
!3679 = !DILocation(line: 161, column: 13, scope: !3622)
!3680 = !DILocation(line: 150, column: 11, scope: !3622)
!3681 = !DILocation(line: 152, column: 10, scope: !3622)
!3682 = !DILocation(line: 148, column: 16, scope: !3622)
!3683 = !DILocation(line: 44, column: 33, scope: !3414, inlinedAt: !3684)
!3684 = distinct !DILocation(line: 164, column: 3, scope: !3622)
!3685 = !DILocation(line: 47, column: 23, scope: !3414, inlinedAt: !3684)
!3686 = !DILocation(line: 165, column: 3, scope: !3622)
!3687 = !DILocation(line: 159, column: 6, scope: !3622)
!3688 = !DILocation(line: 0, scope: !3689)
!3689 = distinct !DILexicalBlock(scope: !3690, file: !207, line: 170, column: 9)
!3690 = distinct !DILexicalBlock(scope: !3641, file: !207, line: 169, column: 11)
!3691 = !DILocation(line: 163, column: 12, scope: !3622)
!3692 = !DILocation(line: 168, column: 29, scope: !3641)
!3693 = !DILocation(line: 168, column: 14, scope: !3641)
!3694 = !DILocation(line: 169, column: 20, scope: !3690)
!3695 = !DILocation(line: 169, column: 11, scope: !3641)
!3696 = !DILocation(line: 174, column: 19, scope: !212, inlinedAt: !3697)
!3697 = distinct !DILocation(line: 171, column: 20, scope: !3689)
!3698 = !DILocation(line: 174, column: 41, scope: !212, inlinedAt: !3697)
!3699 = !DILocation(line: 176, column: 10, scope: !212, inlinedAt: !3697)
!3700 = !DILocation(line: 178, column: 9, scope: !3569, inlinedAt: !3697)
!3701 = !DILocation(line: 178, column: 7, scope: !212, inlinedAt: !3697)
!3702 = !DILocation(line: 180, column: 13, scope: !3572, inlinedAt: !3697)
!3703 = !DILocation(line: 180, column: 11, scope: !3573, inlinedAt: !3697)
!3704 = !DILocation(line: 207, column: 10, scope: !212, inlinedAt: !3697)
!3705 = !DILocalVariable(name: "p", arg: 1, scope: !3706, file: !211, line: 112, type: !33)
!3706 = distinct !DISubprogram(name: "xnrealloc", scope: !211, file: !211, line: 112, type: !3707, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: true, unit: !203, retainedNodes: !3709)
!3707 = !DISubroutineType(types: !3708)
!3708 = !{!33, !33, !34, !34}
!3709 = !{!3705, !3710, !3711}
!3710 = !DILocalVariable(name: "n", arg: 2, scope: !3706, file: !211, line: 112, type: !34)
!3711 = !DILocalVariable(name: "s", arg: 3, scope: !3706, file: !211, line: 112, type: !34)
!3712 = !DILocation(line: 112, column: 18, scope: !3706, inlinedAt: !3713)
!3713 = distinct !DILocation(line: 172, column: 21, scope: !3689)
!3714 = !DILocation(line: 112, column: 28, scope: !3706, inlinedAt: !3713)
!3715 = !DILocation(line: 112, column: 38, scope: !3706, inlinedAt: !3713)
!3716 = !DILocation(line: 114, column: 7, scope: !3706, inlinedAt: !3713)
!3717 = !DILocation(line: 191, column: 11, scope: !3576, inlinedAt: !3697)
!3718 = !DILocation(line: 191, column: 11, scope: !3573, inlinedAt: !3697)
!3719 = !DILocation(line: 207, column: 25, scope: !212, inlinedAt: !3697)
!3720 = !DILocation(line: 192, column: 9, scope: !3576, inlinedAt: !3697)
!3721 = !DILocation(line: 201, column: 11, scope: !3580, inlinedAt: !3697)
!3722 = !DILocation(line: 200, column: 11, scope: !3581, inlinedAt: !3697)
!3723 = !DILocation(line: 202, column: 9, scope: !3580, inlinedAt: !3697)
!3724 = !DILocation(line: 203, column: 14, scope: !3581, inlinedAt: !3697)
!3725 = !DILocation(line: 203, column: 18, scope: !3581, inlinedAt: !3697)
!3726 = !DILocation(line: 203, column: 9, scope: !3581, inlinedAt: !3697)
!3727 = !DILocation(line: 114, column: 7, scope: !3728, inlinedAt: !3713)
!3728 = distinct !DILexicalBlock(scope: !3706, file: !211, line: 114, column: 7)
!3729 = !DILocation(line: 115, column: 5, scope: !3728, inlinedAt: !3713)
!3730 = !DILocation(line: 171, column: 20, scope: !3689)
!3731 = !DILocation(line: 116, column: 10, scope: !3706, inlinedAt: !3713)
!3732 = !DILocation(line: 172, column: 21, scope: !3689)
!3733 = !DILocation(line: 173, column: 9, scope: !3689)
!3734 = !DILocation(line: 0, scope: !3622)
!3735 = !DILocation(line: 175, column: 24, scope: !3736)
!3736 = distinct !DILexicalBlock(scope: !3641, file: !207, line: 175, column: 11)
!3737 = !DILocation(line: 175, column: 11, scope: !3641)
!3738 = !DILocation(line: 182, column: 36, scope: !3641)
!3739 = !DILocation(line: 99, column: 18, scope: !3659, inlinedAt: !3740)
!3740 = distinct !DILocation(line: 182, column: 13, scope: !3641)
!3741 = !DILocation(line: 99, column: 28, scope: !3659, inlinedAt: !3740)
!3742 = !DILocation(line: 101, column: 7, scope: !3668, inlinedAt: !3740)
!3743 = !DILocation(line: 101, column: 7, scope: !3659, inlinedAt: !3740)
!3744 = !DILocation(line: 102, column: 5, scope: !3668, inlinedAt: !3740)
!3745 = !DILocation(line: 103, column: 10, scope: !3659, inlinedAt: !3740)
!3746 = !DILocation(line: 167, column: 13, scope: !3641)
!3747 = !DILocation(line: 183, column: 7, scope: !3641)
!3748 = !DILocation(line: 183, column: 25, scope: !3641)
!3749 = !DILocation(line: 184, column: 46, scope: !3641)
!3750 = !DILocation(line: 184, column: 26, scope: !3641)
!3751 = !DILocation(line: 184, column: 7, scope: !3641)
!3752 = !DILocation(line: 184, column: 24, scope: !3641)
!3753 = !DILocation(line: 185, column: 15, scope: !3641)
!3754 = !DILocation(line: 178, column: 11, scope: !3755)
!3755 = distinct !DILexicalBlock(scope: !3736, file: !207, line: 176, column: 9)
!3756 = !DILocation(line: 178, column: 28, scope: !3755)
!3757 = !DILocation(line: 179, column: 11, scope: !3755)
!3758 = !DILocation(line: 179, column: 29, scope: !3755)
!3759 = !DILocation(line: 188, column: 16, scope: !3622)
!3760 = !DILocation(line: 188, column: 3, scope: !3622)
!3761 = !DILocation(line: 189, column: 15, scope: !3622)
!3762 = !DILocation(line: 190, column: 21, scope: !3763)
!3763 = distinct !DILexicalBlock(scope: !3622, file: !207, line: 190, column: 7)
!3764 = !DILocation(line: 190, column: 7, scope: !3622)
!3765 = !DILocation(line: 191, column: 20, scope: !3763)
!3766 = !DILocation(line: 191, column: 5, scope: !3763)
!3767 = !DILocation(line: 193, column: 5, scope: !3763)
!3768 = !DILocation(line: 195, column: 1, scope: !3622)
!3769 = !DILocation(line: 194, column: 3, scope: !3622)
!3770 = distinct !DISubprogram(name: "version_etc_arn", scope: !230, file: !230, line: 62, type: !3771, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !226, retainedNodes: !3808)
!3771 = !DISubroutineType(types: !3772)
!3772 = !{null, !3773, !30, !30, !30, !3807, !34}
!3773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3774, size: 64)
!3774 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1374, line: 7, baseType: !3775)
!3775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1376, line: 49, size: 1728, elements: !3776)
!3776 = !{!3777, !3778, !3779, !3780, !3781, !3782, !3783, !3784, !3785, !3786, !3787, !3788, !3789, !3790, !3792, !3793, !3794, !3795, !3796, !3797, !3798, !3799, !3800, !3801, !3802, !3803, !3804, !3805, !3806}
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3775, file: !1376, line: 51, baseType: !49, size: 32)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3775, file: !1376, line: 54, baseType: !117, size: 64, offset: 64)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3775, file: !1376, line: 55, baseType: !117, size: 64, offset: 128)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3775, file: !1376, line: 56, baseType: !117, size: 64, offset: 192)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3775, file: !1376, line: 57, baseType: !117, size: 64, offset: 256)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3775, file: !1376, line: 58, baseType: !117, size: 64, offset: 320)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3775, file: !1376, line: 59, baseType: !117, size: 64, offset: 384)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3775, file: !1376, line: 60, baseType: !117, size: 64, offset: 448)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3775, file: !1376, line: 61, baseType: !117, size: 64, offset: 512)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3775, file: !1376, line: 64, baseType: !117, size: 64, offset: 576)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3775, file: !1376, line: 65, baseType: !117, size: 64, offset: 640)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3775, file: !1376, line: 66, baseType: !117, size: 64, offset: 704)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3775, file: !1376, line: 68, baseType: !1391, size: 64, offset: 768)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3775, file: !1376, line: 70, baseType: !3791, size: 64, offset: 832)
!3791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3775, size: 64)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3775, file: !1376, line: 72, baseType: !49, size: 32, offset: 896)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3775, file: !1376, line: 73, baseType: !49, size: 32, offset: 928)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3775, file: !1376, line: 74, baseType: !1352, size: 64, offset: 960)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3775, file: !1376, line: 77, baseType: !146, size: 16, offset: 1024)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3775, file: !1376, line: 78, baseType: !1400, size: 8, offset: 1040)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3775, file: !1376, line: 79, baseType: !1402, size: 8, offset: 1048)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3775, file: !1376, line: 81, baseType: !1404, size: 64, offset: 1088)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3775, file: !1376, line: 89, baseType: !1407, size: 64, offset: 1152)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3775, file: !1376, line: 91, baseType: !1409, size: 64, offset: 1216)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3775, file: !1376, line: 92, baseType: !1412, size: 64, offset: 1280)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3775, file: !1376, line: 93, baseType: !3791, size: 64, offset: 1344)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3775, file: !1376, line: 94, baseType: !33, size: 64, offset: 1408)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3775, file: !1376, line: 95, baseType: !34, size: 64, offset: 1472)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3775, file: !1376, line: 96, baseType: !49, size: 32, offset: 1536)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3775, file: !1376, line: 98, baseType: !1419, size: 160, offset: 1568)
!3807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!3808 = !{!3809, !3810, !3811, !3812, !3813, !3814}
!3809 = !DILocalVariable(name: "stream", arg: 1, scope: !3770, file: !230, line: 62, type: !3773)
!3810 = !DILocalVariable(name: "command_name", arg: 2, scope: !3770, file: !230, line: 63, type: !30)
!3811 = !DILocalVariable(name: "package", arg: 3, scope: !3770, file: !230, line: 63, type: !30)
!3812 = !DILocalVariable(name: "version", arg: 4, scope: !3770, file: !230, line: 64, type: !30)
!3813 = !DILocalVariable(name: "authors", arg: 5, scope: !3770, file: !230, line: 65, type: !3807)
!3814 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3770, file: !230, line: 65, type: !34)
!3815 = !DILocation(line: 62, column: 24, scope: !3770)
!3816 = !DILocation(line: 63, column: 30, scope: !3770)
!3817 = !DILocation(line: 63, column: 56, scope: !3770)
!3818 = !DILocation(line: 64, column: 30, scope: !3770)
!3819 = !DILocation(line: 65, column: 39, scope: !3770)
!3820 = !DILocation(line: 65, column: 55, scope: !3770)
!3821 = !DILocation(line: 67, column: 7, scope: !3822)
!3822 = distinct !DILexicalBlock(scope: !3770, file: !230, line: 67, column: 7)
!3823 = !DILocation(line: 67, column: 7, scope: !3770)
!3824 = !DILocation(line: 68, column: 5, scope: !3822)
!3825 = !DILocation(line: 70, column: 5, scope: !3822)
!3826 = !DILocation(line: 84, column: 3, scope: !3770)
!3827 = !DILocation(line: 86, column: 3, scope: !3770)
!3828 = !DILocation(line: 95, column: 3, scope: !3770)
!3829 = !DILocation(line: 99, column: 7, scope: !3830)
!3830 = distinct !DILexicalBlock(scope: !3770, file: !230, line: 96, column: 5)
!3831 = !DILocation(line: 102, column: 7, scope: !3830)
!3832 = !DILocation(line: 103, column: 7, scope: !3830)
!3833 = !DILocation(line: 106, column: 7, scope: !3830)
!3834 = !DILocation(line: 107, column: 7, scope: !3830)
!3835 = !DILocation(line: 110, column: 7, scope: !3830)
!3836 = !DILocation(line: 112, column: 7, scope: !3830)
!3837 = !DILocation(line: 117, column: 7, scope: !3830)
!3838 = !DILocation(line: 119, column: 7, scope: !3830)
!3839 = !DILocation(line: 124, column: 7, scope: !3830)
!3840 = !DILocation(line: 126, column: 7, scope: !3830)
!3841 = !DILocation(line: 131, column: 7, scope: !3830)
!3842 = !DILocation(line: 134, column: 7, scope: !3830)
!3843 = !DILocation(line: 139, column: 7, scope: !3830)
!3844 = !DILocation(line: 142, column: 7, scope: !3830)
!3845 = !DILocation(line: 147, column: 7, scope: !3830)
!3846 = !DILocation(line: 151, column: 7, scope: !3830)
!3847 = !DILocation(line: 156, column: 7, scope: !3830)
!3848 = !DILocation(line: 160, column: 7, scope: !3830)
!3849 = !DILocation(line: 167, column: 7, scope: !3830)
!3850 = !DILocation(line: 171, column: 7, scope: !3830)
!3851 = !DILocation(line: 173, column: 1, scope: !3770)
!3852 = distinct !DISubprogram(name: "version_etc_ar", scope: !230, file: !230, line: 180, type: !3853, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !226, retainedNodes: !3855)
!3853 = !DISubroutineType(types: !3854)
!3854 = !{null, !3773, !30, !30, !30, !3807}
!3855 = !{!3856, !3857, !3858, !3859, !3860, !3861}
!3856 = !DILocalVariable(name: "stream", arg: 1, scope: !3852, file: !230, line: 180, type: !3773)
!3857 = !DILocalVariable(name: "command_name", arg: 2, scope: !3852, file: !230, line: 181, type: !30)
!3858 = !DILocalVariable(name: "package", arg: 3, scope: !3852, file: !230, line: 181, type: !30)
!3859 = !DILocalVariable(name: "version", arg: 4, scope: !3852, file: !230, line: 182, type: !30)
!3860 = !DILocalVariable(name: "authors", arg: 5, scope: !3852, file: !230, line: 182, type: !3807)
!3861 = !DILocalVariable(name: "n_authors", scope: !3852, file: !230, line: 184, type: !34)
!3862 = !DILocation(line: 180, column: 23, scope: !3852)
!3863 = !DILocation(line: 181, column: 29, scope: !3852)
!3864 = !DILocation(line: 181, column: 55, scope: !3852)
!3865 = !DILocation(line: 182, column: 29, scope: !3852)
!3866 = !DILocation(line: 182, column: 59, scope: !3852)
!3867 = !DILocation(line: 184, column: 10, scope: !3852)
!3868 = !DILocation(line: 186, column: 8, scope: !3869)
!3869 = distinct !DILexicalBlock(scope: !3852, file: !230, line: 186, column: 3)
!3870 = !DILocation(line: 0, scope: !3871)
!3871 = distinct !DILexicalBlock(scope: !3869, file: !230, line: 186, column: 3)
!3872 = !DILocation(line: 186, column: 23, scope: !3871)
!3873 = !DILocation(line: 186, column: 3, scope: !3869)
!3874 = !DILocation(line: 186, column: 52, scope: !3871)
!3875 = distinct !{!3875, !3873, !3876}
!3876 = !DILocation(line: 187, column: 5, scope: !3869)
!3877 = !DILocation(line: 188, column: 3, scope: !3852)
!3878 = !DILocation(line: 189, column: 1, scope: !3852)
!3879 = distinct !DISubprogram(name: "version_etc_va", scope: !230, file: !230, line: 196, type: !3880, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !226, retainedNodes: !3889)
!3880 = !DISubroutineType(types: !3881)
!3881 = !{null, !3773, !30, !30, !30, !3882}
!3882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3883, size: 64)
!3883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !227, line: 189, size: 192, elements: !3884)
!3884 = !{!3885, !3886, !3887, !3888}
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3883, file: !227, line: 189, baseType: !7, size: 32)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3883, file: !227, line: 189, baseType: !7, size: 32, offset: 32)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3883, file: !227, line: 189, baseType: !33, size: 64, offset: 64)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3883, file: !227, line: 189, baseType: !33, size: 64, offset: 128)
!3889 = !{!3890, !3891, !3892, !3893, !3894, !3895, !3896}
!3890 = !DILocalVariable(name: "stream", arg: 1, scope: !3879, file: !230, line: 196, type: !3773)
!3891 = !DILocalVariable(name: "command_name", arg: 2, scope: !3879, file: !230, line: 197, type: !30)
!3892 = !DILocalVariable(name: "package", arg: 3, scope: !3879, file: !230, line: 197, type: !30)
!3893 = !DILocalVariable(name: "version", arg: 4, scope: !3879, file: !230, line: 198, type: !30)
!3894 = !DILocalVariable(name: "authors", arg: 5, scope: !3879, file: !230, line: 198, type: !3882)
!3895 = !DILocalVariable(name: "n_authors", scope: !3879, file: !230, line: 200, type: !34)
!3896 = !DILocalVariable(name: "authtab", scope: !3879, file: !230, line: 201, type: !3897)
!3897 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 640, elements: !153)
!3898 = !DILocation(line: 196, column: 23, scope: !3879)
!3899 = !DILocation(line: 197, column: 29, scope: !3879)
!3900 = !DILocation(line: 197, column: 55, scope: !3879)
!3901 = !DILocation(line: 198, column: 29, scope: !3879)
!3902 = !DILocation(line: 198, column: 46, scope: !3879)
!3903 = !DILocation(line: 201, column: 3, scope: !3879)
!3904 = !DILocation(line: 201, column: 15, scope: !3879)
!3905 = !DILocation(line: 200, column: 10, scope: !3879)
!3906 = !DILocation(line: 205, column: 35, scope: !3907)
!3907 = distinct !DILexicalBlock(scope: !3908, file: !230, line: 203, column: 3)
!3908 = distinct !DILexicalBlock(scope: !3879, file: !230, line: 203, column: 3)
!3909 = !DILocation(line: 205, column: 14, scope: !3907)
!3910 = !DILocation(line: 205, column: 33, scope: !3907)
!3911 = !DILocation(line: 205, column: 67, scope: !3907)
!3912 = !DILocation(line: 203, column: 3, scope: !3908)
!3913 = !DILocation(line: 0, scope: !3907)
!3914 = !DILocation(line: 208, column: 3, scope: !3879)
!3915 = !DILocation(line: 210, column: 1, scope: !3879)
!3916 = distinct !DISubprogram(name: "version_etc", scope: !230, file: !230, line: 227, type: !3917, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !226, retainedNodes: !3919)
!3917 = !DISubroutineType(types: !3918)
!3918 = !{null, !3773, !30, !30, !30, null}
!3919 = !{!3920, !3921, !3922, !3923, !3924}
!3920 = !DILocalVariable(name: "stream", arg: 1, scope: !3916, file: !230, line: 227, type: !3773)
!3921 = !DILocalVariable(name: "command_name", arg: 2, scope: !3916, file: !230, line: 228, type: !30)
!3922 = !DILocalVariable(name: "package", arg: 3, scope: !3916, file: !230, line: 228, type: !30)
!3923 = !DILocalVariable(name: "version", arg: 4, scope: !3916, file: !230, line: 229, type: !30)
!3924 = !DILocalVariable(name: "authors", scope: !3916, file: !230, line: 231, type: !3925)
!3925 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1351, line: 52, baseType: !3926)
!3926 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1601, line: 48, baseType: !3927)
!3927 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !227, line: 231, baseType: !3928)
!3928 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3883, size: 192, elements: !72)
!3929 = !DILocation(line: 227, column: 20, scope: !3916)
!3930 = !DILocation(line: 228, column: 26, scope: !3916)
!3931 = !DILocation(line: 228, column: 52, scope: !3916)
!3932 = !DILocation(line: 229, column: 26, scope: !3916)
!3933 = !DILocation(line: 231, column: 3, scope: !3916)
!3934 = !DILocation(line: 231, column: 11, scope: !3916)
!3935 = !DILocation(line: 233, column: 3, scope: !3916)
!3936 = !DILocation(line: 234, column: 3, scope: !3916)
!3937 = !DILocation(line: 235, column: 3, scope: !3916)
!3938 = !DILocation(line: 236, column: 1, scope: !3916)
!3939 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !230, file: !230, line: 239, type: !697, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !226, retainedNodes: !78)
!3940 = !DILocation(line: 245, column: 3, scope: !3939)
!3941 = !DILocation(line: 251, column: 3, scope: !3939)
!3942 = !DILocation(line: 256, column: 3, scope: !3939)
!3943 = !DILocation(line: 258, column: 1, scope: !3939)
!3944 = distinct !DISubprogram(name: "xnmalloc", scope: !211, file: !211, line: 99, type: !3660, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !234, retainedNodes: !3945)
!3945 = !{!3946, !3947}
!3946 = !DILocalVariable(name: "n", arg: 1, scope: !3944, file: !211, line: 99, type: !34)
!3947 = !DILocalVariable(name: "s", arg: 2, scope: !3944, file: !211, line: 99, type: !34)
!3948 = !DILocation(line: 99, column: 18, scope: !3944)
!3949 = !DILocation(line: 99, column: 28, scope: !3944)
!3950 = !DILocation(line: 101, column: 7, scope: !3951)
!3951 = distinct !DILexicalBlock(scope: !3944, file: !211, line: 101, column: 7)
!3952 = !DILocation(line: 101, column: 7, scope: !3944)
!3953 = !DILocation(line: 102, column: 5, scope: !3951)
!3954 = !DILocation(line: 103, column: 21, scope: !3944)
!3955 = !DILocalVariable(name: "n", arg: 1, scope: !3956, file: !3957, line: 39, type: !34)
!3956 = distinct !DISubprogram(name: "xmalloc", scope: !3957, file: !3957, line: 39, type: !3958, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !234, retainedNodes: !3960)
!3957 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3958 = !DISubroutineType(types: !3959)
!3959 = !{!33, !34}
!3960 = !{!3955, !3961}
!3961 = !DILocalVariable(name: "p", scope: !3956, file: !3957, line: 41, type: !33)
!3962 = !DILocation(line: 39, column: 17, scope: !3956, inlinedAt: !3963)
!3963 = distinct !DILocation(line: 103, column: 10, scope: !3944)
!3964 = !DILocation(line: 41, column: 13, scope: !3956, inlinedAt: !3963)
!3965 = !DILocation(line: 41, column: 9, scope: !3956, inlinedAt: !3963)
!3966 = !DILocation(line: 42, column: 8, scope: !3967, inlinedAt: !3963)
!3967 = distinct !DILexicalBlock(scope: !3956, file: !3957, line: 42, column: 7)
!3968 = !DILocation(line: 42, column: 15, scope: !3967, inlinedAt: !3963)
!3969 = !DILocation(line: 42, column: 10, scope: !3967, inlinedAt: !3963)
!3970 = !DILocation(line: 43, column: 5, scope: !3967, inlinedAt: !3963)
!3971 = !DILocation(line: 103, column: 3, scope: !3944)
!3972 = !DILocation(line: 39, column: 17, scope: !3956)
!3973 = !DILocation(line: 41, column: 13, scope: !3956)
!3974 = !DILocation(line: 41, column: 9, scope: !3956)
!3975 = !DILocation(line: 42, column: 8, scope: !3967)
!3976 = !DILocation(line: 42, column: 15, scope: !3967)
!3977 = !DILocation(line: 42, column: 10, scope: !3967)
!3978 = !DILocation(line: 43, column: 5, scope: !3967)
!3979 = !DILocation(line: 44, column: 3, scope: !3956)
!3980 = distinct !DISubprogram(name: "xnrealloc", scope: !211, file: !211, line: 112, type: !3707, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: true, unit: !234, retainedNodes: !3981)
!3981 = !{!3982, !3983, !3984}
!3982 = !DILocalVariable(name: "p", arg: 1, scope: !3980, file: !211, line: 112, type: !33)
!3983 = !DILocalVariable(name: "n", arg: 2, scope: !3980, file: !211, line: 112, type: !34)
!3984 = !DILocalVariable(name: "s", arg: 3, scope: !3980, file: !211, line: 112, type: !34)
!3985 = !DILocation(line: 112, column: 18, scope: !3980)
!3986 = !DILocation(line: 112, column: 28, scope: !3980)
!3987 = !DILocation(line: 112, column: 38, scope: !3980)
!3988 = !DILocation(line: 114, column: 7, scope: !3989)
!3989 = distinct !DILexicalBlock(scope: !3980, file: !211, line: 114, column: 7)
!3990 = !DILocation(line: 114, column: 7, scope: !3980)
!3991 = !DILocation(line: 115, column: 5, scope: !3989)
!3992 = !DILocation(line: 116, column: 25, scope: !3980)
!3993 = !DILocalVariable(name: "p", arg: 1, scope: !3994, file: !3957, line: 51, type: !33)
!3994 = distinct !DISubprogram(name: "xrealloc", scope: !3957, file: !3957, line: 51, type: !3995, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !234, retainedNodes: !3997)
!3995 = !DISubroutineType(types: !3996)
!3996 = !{!33, !33, !34}
!3997 = !{!3993, !3998}
!3998 = !DILocalVariable(name: "n", arg: 2, scope: !3994, file: !3957, line: 51, type: !34)
!3999 = !DILocation(line: 51, column: 17, scope: !3994, inlinedAt: !4000)
!4000 = distinct !DILocation(line: 116, column: 10, scope: !3980)
!4001 = !DILocation(line: 51, column: 27, scope: !3994, inlinedAt: !4000)
!4002 = !DILocation(line: 53, column: 8, scope: !4003, inlinedAt: !4000)
!4003 = distinct !DILexicalBlock(scope: !3994, file: !3957, line: 53, column: 7)
!4004 = !DILocation(line: 53, column: 13, scope: !4003, inlinedAt: !4000)
!4005 = !DILocation(line: 53, column: 10, scope: !4003, inlinedAt: !4000)
!4006 = !DILocation(line: 57, column: 7, scope: !4007, inlinedAt: !4000)
!4007 = distinct !DILexicalBlock(scope: !4003, file: !3957, line: 54, column: 5)
!4008 = !DILocation(line: 58, column: 7, scope: !4007, inlinedAt: !4000)
!4009 = !DILocation(line: 61, column: 7, scope: !3994, inlinedAt: !4000)
!4010 = !DILocation(line: 62, column: 8, scope: !4011, inlinedAt: !4000)
!4011 = distinct !DILexicalBlock(scope: !3994, file: !3957, line: 62, column: 7)
!4012 = !DILocation(line: 62, column: 13, scope: !4011, inlinedAt: !4000)
!4013 = !DILocation(line: 62, column: 10, scope: !4011, inlinedAt: !4000)
!4014 = !DILocation(line: 63, column: 5, scope: !4011, inlinedAt: !4000)
!4015 = !DILocation(line: 0, scope: !3994, inlinedAt: !4000)
!4016 = !DILocation(line: 116, column: 3, scope: !3980)
!4017 = !DILocation(line: 51, column: 17, scope: !3994)
!4018 = !DILocation(line: 51, column: 27, scope: !3994)
!4019 = !DILocation(line: 53, column: 8, scope: !4003)
!4020 = !DILocation(line: 53, column: 13, scope: !4003)
!4021 = !DILocation(line: 53, column: 10, scope: !4003)
!4022 = !DILocation(line: 57, column: 7, scope: !4007)
!4023 = !DILocation(line: 58, column: 7, scope: !4007)
!4024 = !DILocation(line: 61, column: 7, scope: !3994)
!4025 = !DILocation(line: 62, column: 8, scope: !4011)
!4026 = !DILocation(line: 62, column: 13, scope: !4011)
!4027 = !DILocation(line: 62, column: 10, scope: !4011)
!4028 = !DILocation(line: 63, column: 5, scope: !4011)
!4029 = !DILocation(line: 0, scope: !3994)
!4030 = !DILocation(line: 65, column: 1, scope: !3994)
!4031 = !DILocation(line: 174, column: 19, scope: !238)
!4032 = !DILocation(line: 174, column: 30, scope: !238)
!4033 = !DILocation(line: 174, column: 41, scope: !238)
!4034 = !DILocation(line: 176, column: 14, scope: !238)
!4035 = !DILocation(line: 176, column: 10, scope: !238)
!4036 = !DILocation(line: 178, column: 9, scope: !4037)
!4037 = distinct !DILexicalBlock(scope: !238, file: !211, line: 178, column: 7)
!4038 = !DILocation(line: 178, column: 7, scope: !238)
!4039 = !DILocation(line: 180, column: 13, scope: !4040)
!4040 = distinct !DILexicalBlock(scope: !4041, file: !211, line: 180, column: 11)
!4041 = distinct !DILexicalBlock(scope: !4037, file: !211, line: 179, column: 5)
!4042 = !DILocation(line: 180, column: 11, scope: !4041)
!4043 = !DILocation(line: 188, column: 30, scope: !4044)
!4044 = distinct !DILexicalBlock(scope: !4040, file: !211, line: 181, column: 9)
!4045 = !DILocation(line: 189, column: 16, scope: !4044)
!4046 = !DILocation(line: 189, column: 13, scope: !4044)
!4047 = !DILocation(line: 190, column: 9, scope: !4044)
!4048 = !DILocation(line: 0, scope: !4044)
!4049 = !DILocation(line: 191, column: 11, scope: !4050)
!4050 = distinct !DILexicalBlock(scope: !4041, file: !211, line: 191, column: 11)
!4051 = !DILocation(line: 191, column: 11, scope: !4041)
!4052 = !DILocation(line: 206, column: 7, scope: !238)
!4053 = !DILocation(line: 207, column: 25, scope: !238)
!4054 = !DILocation(line: 51, column: 17, scope: !3994, inlinedAt: !4055)
!4055 = distinct !DILocation(line: 207, column: 10, scope: !238)
!4056 = !DILocation(line: 51, column: 27, scope: !3994, inlinedAt: !4055)
!4057 = !DILocation(line: 53, column: 10, scope: !4003, inlinedAt: !4055)
!4058 = !DILocation(line: 192, column: 9, scope: !4050)
!4059 = !DILocation(line: 200, column: 69, scope: !4060)
!4060 = distinct !DILexicalBlock(scope: !4061, file: !211, line: 200, column: 11)
!4061 = distinct !DILexicalBlock(scope: !4037, file: !211, line: 195, column: 5)
!4062 = !DILocation(line: 201, column: 11, scope: !4060)
!4063 = !DILocation(line: 200, column: 11, scope: !4061)
!4064 = !DILocation(line: 202, column: 9, scope: !4060)
!4065 = !DILocation(line: 203, column: 14, scope: !4061)
!4066 = !DILocation(line: 203, column: 18, scope: !4061)
!4067 = !DILocation(line: 203, column: 9, scope: !4061)
!4068 = !DILocation(line: 53, column: 8, scope: !4003, inlinedAt: !4055)
!4069 = !DILocation(line: 57, column: 7, scope: !4007, inlinedAt: !4055)
!4070 = !DILocation(line: 58, column: 7, scope: !4007, inlinedAt: !4055)
!4071 = !DILocation(line: 61, column: 7, scope: !3994, inlinedAt: !4055)
!4072 = !DILocation(line: 62, column: 8, scope: !4011, inlinedAt: !4055)
!4073 = !DILocation(line: 62, column: 13, scope: !4011, inlinedAt: !4055)
!4074 = !DILocation(line: 62, column: 10, scope: !4011, inlinedAt: !4055)
!4075 = !DILocation(line: 63, column: 5, scope: !4011, inlinedAt: !4055)
!4076 = !DILocation(line: 0, scope: !3994, inlinedAt: !4055)
!4077 = !DILocation(line: 207, column: 3, scope: !238)
!4078 = distinct !DISubprogram(name: "xcharalloc", scope: !211, file: !211, line: 216, type: !2700, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !234, retainedNodes: !4079)
!4079 = !{!4080}
!4080 = !DILocalVariable(name: "n", arg: 1, scope: !4078, file: !211, line: 216, type: !34)
!4081 = !DILocation(line: 216, column: 20, scope: !4078)
!4082 = !DILocation(line: 39, column: 17, scope: !3956, inlinedAt: !4083)
!4083 = distinct !DILocation(line: 218, column: 10, scope: !4078)
!4084 = !DILocation(line: 41, column: 13, scope: !3956, inlinedAt: !4083)
!4085 = !DILocation(line: 41, column: 9, scope: !3956, inlinedAt: !4083)
!4086 = !DILocation(line: 42, column: 8, scope: !3967, inlinedAt: !4083)
!4087 = !DILocation(line: 42, column: 15, scope: !3967, inlinedAt: !4083)
!4088 = !DILocation(line: 42, column: 10, scope: !3967, inlinedAt: !4083)
!4089 = !DILocation(line: 43, column: 5, scope: !3967, inlinedAt: !4083)
!4090 = !DILocation(line: 218, column: 3, scope: !4078)
!4091 = distinct !DISubprogram(name: "x2realloc", scope: !3957, file: !3957, line: 74, type: !4092, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !234, retainedNodes: !4094)
!4092 = !DISubroutineType(types: !4093)
!4093 = !{!33, !33, !215}
!4094 = !{!4095, !4096}
!4095 = !DILocalVariable(name: "p", arg: 1, scope: !4091, file: !3957, line: 74, type: !33)
!4096 = !DILocalVariable(name: "pn", arg: 2, scope: !4091, file: !3957, line: 74, type: !215)
!4097 = !DILocation(line: 74, column: 18, scope: !4091)
!4098 = !DILocation(line: 74, column: 29, scope: !4091)
!4099 = !DILocation(line: 174, column: 19, scope: !238, inlinedAt: !4100)
!4100 = distinct !DILocation(line: 76, column: 10, scope: !4091)
!4101 = !DILocation(line: 174, column: 30, scope: !238, inlinedAt: !4100)
!4102 = !DILocation(line: 174, column: 41, scope: !238, inlinedAt: !4100)
!4103 = !DILocation(line: 176, column: 14, scope: !238, inlinedAt: !4100)
!4104 = !DILocation(line: 176, column: 10, scope: !238, inlinedAt: !4100)
!4105 = !DILocation(line: 178, column: 9, scope: !4037, inlinedAt: !4100)
!4106 = !DILocation(line: 178, column: 7, scope: !238, inlinedAt: !4100)
!4107 = !DILocation(line: 180, column: 13, scope: !4040, inlinedAt: !4100)
!4108 = !DILocation(line: 180, column: 11, scope: !4041, inlinedAt: !4100)
!4109 = !DILocation(line: 191, column: 11, scope: !4050, inlinedAt: !4100)
!4110 = !DILocation(line: 191, column: 11, scope: !4041, inlinedAt: !4100)
!4111 = !DILocation(line: 206, column: 7, scope: !238, inlinedAt: !4100)
!4112 = !DILocation(line: 51, column: 17, scope: !3994, inlinedAt: !4113)
!4113 = distinct !DILocation(line: 207, column: 10, scope: !238, inlinedAt: !4100)
!4114 = !DILocation(line: 51, column: 27, scope: !3994, inlinedAt: !4113)
!4115 = !DILocation(line: 53, column: 10, scope: !4003, inlinedAt: !4113)
!4116 = !DILocation(line: 192, column: 9, scope: !4050, inlinedAt: !4100)
!4117 = !DILocation(line: 201, column: 11, scope: !4060, inlinedAt: !4100)
!4118 = !DILocation(line: 200, column: 11, scope: !4061, inlinedAt: !4100)
!4119 = !DILocation(line: 202, column: 9, scope: !4060, inlinedAt: !4100)
!4120 = !DILocation(line: 203, column: 14, scope: !4061, inlinedAt: !4100)
!4121 = !DILocation(line: 203, column: 18, scope: !4061, inlinedAt: !4100)
!4122 = !DILocation(line: 203, column: 9, scope: !4061, inlinedAt: !4100)
!4123 = !DILocation(line: 53, column: 8, scope: !4003, inlinedAt: !4113)
!4124 = !DILocation(line: 57, column: 7, scope: !4007, inlinedAt: !4113)
!4125 = !DILocation(line: 58, column: 7, scope: !4007, inlinedAt: !4113)
!4126 = !DILocation(line: 61, column: 7, scope: !3994, inlinedAt: !4113)
!4127 = !DILocation(line: 62, column: 8, scope: !4011, inlinedAt: !4113)
!4128 = !DILocation(line: 62, column: 13, scope: !4011, inlinedAt: !4113)
!4129 = !DILocation(line: 62, column: 10, scope: !4011, inlinedAt: !4113)
!4130 = !DILocation(line: 63, column: 5, scope: !4011, inlinedAt: !4113)
!4131 = !DILocation(line: 0, scope: !3994, inlinedAt: !4113)
!4132 = !DILocation(line: 76, column: 3, scope: !4091)
!4133 = distinct !DISubprogram(name: "xzalloc", scope: !3957, file: !3957, line: 84, type: !3958, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !234, retainedNodes: !4134)
!4134 = !{!4135}
!4135 = !DILocalVariable(name: "s", arg: 1, scope: !4133, file: !3957, line: 84, type: !34)
!4136 = !DILocation(line: 84, column: 17, scope: !4133)
!4137 = !DILocation(line: 39, column: 17, scope: !3956, inlinedAt: !4138)
!4138 = distinct !DILocation(line: 86, column: 18, scope: !4133)
!4139 = !DILocation(line: 41, column: 13, scope: !3956, inlinedAt: !4138)
!4140 = !DILocation(line: 41, column: 9, scope: !3956, inlinedAt: !4138)
!4141 = !DILocation(line: 42, column: 8, scope: !3967, inlinedAt: !4138)
!4142 = !DILocation(line: 42, column: 15, scope: !3967, inlinedAt: !4138)
!4143 = !DILocation(line: 42, column: 10, scope: !3967, inlinedAt: !4138)
!4144 = !DILocation(line: 43, column: 5, scope: !3967, inlinedAt: !4138)
!4145 = !DILocation(line: 86, column: 10, scope: !4133)
!4146 = !DILocation(line: 86, column: 3, scope: !4133)
!4147 = distinct !DISubprogram(name: "xcalloc", scope: !3957, file: !3957, line: 93, type: !3660, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !234, retainedNodes: !4148)
!4148 = !{!4149, !4150, !4151}
!4149 = !DILocalVariable(name: "n", arg: 1, scope: !4147, file: !3957, line: 93, type: !34)
!4150 = !DILocalVariable(name: "s", arg: 2, scope: !4147, file: !3957, line: 93, type: !34)
!4151 = !DILocalVariable(name: "p", scope: !4147, file: !3957, line: 95, type: !33)
!4152 = !DILocation(line: 93, column: 17, scope: !4147)
!4153 = !DILocation(line: 93, column: 27, scope: !4147)
!4154 = !DILocation(line: 100, column: 7, scope: !4155)
!4155 = distinct !DILexicalBlock(scope: !4147, file: !3957, line: 100, column: 7)
!4156 = !DILocation(line: 101, column: 7, scope: !4155)
!4157 = !DILocation(line: 101, column: 18, scope: !4155)
!4158 = !DILocation(line: 95, column: 9, scope: !4147)
!4159 = !DILocation(line: 101, column: 16, scope: !4155)
!4160 = !DILocation(line: 100, column: 7, scope: !4147)
!4161 = !DILocation(line: 102, column: 5, scope: !4155)
!4162 = !DILocation(line: 103, column: 3, scope: !4147)
!4163 = distinct !DISubprogram(name: "xmemdup", scope: !3957, file: !3957, line: 111, type: !4164, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !234, retainedNodes: !4168)
!4164 = !DISubroutineType(types: !4165)
!4165 = !{!33, !4166, !34}
!4166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4167, size: 64)
!4167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!4168 = !{!4169, !4170}
!4169 = !DILocalVariable(name: "p", arg: 1, scope: !4163, file: !3957, line: 111, type: !4166)
!4170 = !DILocalVariable(name: "s", arg: 2, scope: !4163, file: !3957, line: 111, type: !34)
!4171 = !DILocation(line: 111, column: 22, scope: !4163)
!4172 = !DILocation(line: 111, column: 32, scope: !4163)
!4173 = !DILocation(line: 39, column: 17, scope: !3956, inlinedAt: !4174)
!4174 = distinct !DILocation(line: 113, column: 18, scope: !4163)
!4175 = !DILocation(line: 41, column: 13, scope: !3956, inlinedAt: !4174)
!4176 = !DILocation(line: 41, column: 9, scope: !3956, inlinedAt: !4174)
!4177 = !DILocation(line: 42, column: 8, scope: !3967, inlinedAt: !4174)
!4178 = !DILocation(line: 42, column: 15, scope: !3967, inlinedAt: !4174)
!4179 = !DILocation(line: 42, column: 10, scope: !3967, inlinedAt: !4174)
!4180 = !DILocation(line: 43, column: 5, scope: !3967, inlinedAt: !4174)
!4181 = !DILocation(line: 113, column: 10, scope: !4163)
!4182 = !DILocation(line: 113, column: 3, scope: !4163)
!4183 = distinct !DISubprogram(name: "xstrdup", scope: !3957, file: !3957, line: 119, type: !2904, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !234, retainedNodes: !4184)
!4184 = !{!4185}
!4185 = !DILocalVariable(name: "string", arg: 1, scope: !4183, file: !3957, line: 119, type: !30)
!4186 = !DILocation(line: 119, column: 22, scope: !4183)
!4187 = !DILocation(line: 121, column: 27, scope: !4183)
!4188 = !DILocation(line: 121, column: 43, scope: !4183)
!4189 = !DILocation(line: 111, column: 22, scope: !4163, inlinedAt: !4190)
!4190 = distinct !DILocation(line: 121, column: 10, scope: !4183)
!4191 = !DILocation(line: 111, column: 32, scope: !4163, inlinedAt: !4190)
!4192 = !DILocation(line: 39, column: 17, scope: !3956, inlinedAt: !4193)
!4193 = distinct !DILocation(line: 113, column: 18, scope: !4163, inlinedAt: !4190)
!4194 = !DILocation(line: 41, column: 13, scope: !3956, inlinedAt: !4193)
!4195 = !DILocation(line: 41, column: 9, scope: !3956, inlinedAt: !4193)
!4196 = !DILocation(line: 42, column: 8, scope: !3967, inlinedAt: !4193)
!4197 = !DILocation(line: 42, column: 15, scope: !3967, inlinedAt: !4193)
!4198 = !DILocation(line: 42, column: 10, scope: !3967, inlinedAt: !4193)
!4199 = !DILocation(line: 43, column: 5, scope: !3967, inlinedAt: !4193)
!4200 = !DILocation(line: 113, column: 10, scope: !4163, inlinedAt: !4190)
!4201 = !DILocation(line: 121, column: 3, scope: !4183)
!4202 = distinct !DISubprogram(name: "xalloc_die", scope: !4203, file: !4203, line: 32, type: !697, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !245, retainedNodes: !78)
!4203 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4204 = !DILocation(line: 34, column: 10, scope: !4202)
!4205 = !DILocation(line: 34, column: 33, scope: !4202)
!4206 = !DILocation(line: 34, column: 3, scope: !4202)
!4207 = !DILocation(line: 40, column: 3, scope: !4202)
!4208 = distinct !DISubprogram(name: "rpl_calloc", scope: !4209, file: !4209, line: 42, type: !3660, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !247, retainedNodes: !4210)
!4209 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4210 = !{!4211, !4212, !4213, !4214}
!4211 = !DILocalVariable(name: "n", arg: 1, scope: !4208, file: !4209, line: 42, type: !34)
!4212 = !DILocalVariable(name: "s", arg: 2, scope: !4208, file: !4209, line: 42, type: !34)
!4213 = !DILocalVariable(name: "result", scope: !4208, file: !4209, line: 44, type: !33)
!4214 = !DILocalVariable(name: "bytes", scope: !4215, file: !4209, line: 56, type: !34)
!4215 = distinct !DILexicalBlock(scope: !4216, file: !4209, line: 53, column: 5)
!4216 = distinct !DILexicalBlock(scope: !4208, file: !4209, line: 47, column: 7)
!4217 = !DILocation(line: 42, column: 20, scope: !4208)
!4218 = !DILocation(line: 42, column: 30, scope: !4208)
!4219 = !DILocation(line: 47, column: 9, scope: !4216)
!4220 = !DILocation(line: 47, column: 19, scope: !4216)
!4221 = !DILocation(line: 47, column: 14, scope: !4216)
!4222 = !DILocation(line: 56, column: 24, scope: !4215)
!4223 = !DILocation(line: 56, column: 14, scope: !4215)
!4224 = !DILocation(line: 57, column: 17, scope: !4225)
!4225 = distinct !DILexicalBlock(scope: !4215, file: !4209, line: 57, column: 11)
!4226 = !DILocation(line: 57, column: 21, scope: !4225)
!4227 = !DILocation(line: 57, column: 11, scope: !4215)
!4228 = !DILocation(line: 59, column: 11, scope: !4229)
!4229 = distinct !DILexicalBlock(scope: !4225, file: !4209, line: 58, column: 9)
!4230 = !DILocation(line: 59, column: 17, scope: !4229)
!4231 = !DILocation(line: 65, column: 12, scope: !4208)
!4232 = !DILocation(line: 44, column: 9, scope: !4208)
!4233 = !DILocation(line: 72, column: 3, scope: !4208)
!4234 = !DILocation(line: 0, scope: !4229)
!4235 = !DILocation(line: 73, column: 1, scope: !4208)
!4236 = distinct !DISubprogram(name: "rpl_fclose", scope: !4237, file: !4237, line: 58, type: !4238, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !249, retainedNodes: !4274)
!4237 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4238 = !DISubroutineType(types: !4239)
!4239 = !{!49, !4240}
!4240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4241, size: 64)
!4241 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1374, line: 7, baseType: !4242)
!4242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1376, line: 49, size: 1728, elements: !4243)
!4243 = !{!4244, !4245, !4246, !4247, !4248, !4249, !4250, !4251, !4252, !4253, !4254, !4255, !4256, !4257, !4259, !4260, !4261, !4262, !4263, !4264, !4265, !4266, !4267, !4268, !4269, !4270, !4271, !4272, !4273}
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4242, file: !1376, line: 51, baseType: !49, size: 32)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4242, file: !1376, line: 54, baseType: !117, size: 64, offset: 64)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4242, file: !1376, line: 55, baseType: !117, size: 64, offset: 128)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4242, file: !1376, line: 56, baseType: !117, size: 64, offset: 192)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4242, file: !1376, line: 57, baseType: !117, size: 64, offset: 256)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4242, file: !1376, line: 58, baseType: !117, size: 64, offset: 320)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4242, file: !1376, line: 59, baseType: !117, size: 64, offset: 384)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4242, file: !1376, line: 60, baseType: !117, size: 64, offset: 448)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4242, file: !1376, line: 61, baseType: !117, size: 64, offset: 512)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4242, file: !1376, line: 64, baseType: !117, size: 64, offset: 576)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4242, file: !1376, line: 65, baseType: !117, size: 64, offset: 640)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4242, file: !1376, line: 66, baseType: !117, size: 64, offset: 704)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4242, file: !1376, line: 68, baseType: !1391, size: 64, offset: 768)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4242, file: !1376, line: 70, baseType: !4258, size: 64, offset: 832)
!4258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4242, size: 64)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4242, file: !1376, line: 72, baseType: !49, size: 32, offset: 896)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4242, file: !1376, line: 73, baseType: !49, size: 32, offset: 928)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4242, file: !1376, line: 74, baseType: !1352, size: 64, offset: 960)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4242, file: !1376, line: 77, baseType: !146, size: 16, offset: 1024)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4242, file: !1376, line: 78, baseType: !1400, size: 8, offset: 1040)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4242, file: !1376, line: 79, baseType: !1402, size: 8, offset: 1048)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4242, file: !1376, line: 81, baseType: !1404, size: 64, offset: 1088)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4242, file: !1376, line: 89, baseType: !1407, size: 64, offset: 1152)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4242, file: !1376, line: 91, baseType: !1409, size: 64, offset: 1216)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4242, file: !1376, line: 92, baseType: !1412, size: 64, offset: 1280)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4242, file: !1376, line: 93, baseType: !4258, size: 64, offset: 1344)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4242, file: !1376, line: 94, baseType: !33, size: 64, offset: 1408)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4242, file: !1376, line: 95, baseType: !34, size: 64, offset: 1472)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4242, file: !1376, line: 96, baseType: !49, size: 32, offset: 1536)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4242, file: !1376, line: 98, baseType: !1419, size: 160, offset: 1568)
!4274 = !{!4275, !4276, !4277, !4278}
!4275 = !DILocalVariable(name: "fp", arg: 1, scope: !4236, file: !4237, line: 58, type: !4240)
!4276 = !DILocalVariable(name: "saved_errno", scope: !4236, file: !4237, line: 60, type: !49)
!4277 = !DILocalVariable(name: "fd", scope: !4236, file: !4237, line: 61, type: !49)
!4278 = !DILocalVariable(name: "result", scope: !4236, file: !4237, line: 62, type: !49)
!4279 = !DILocation(line: 58, column: 19, scope: !4236)
!4280 = !DILocation(line: 60, column: 7, scope: !4236)
!4281 = !DILocation(line: 62, column: 7, scope: !4236)
!4282 = !DILocation(line: 65, column: 8, scope: !4236)
!4283 = !DILocation(line: 61, column: 7, scope: !4236)
!4284 = !DILocation(line: 66, column: 10, scope: !4285)
!4285 = distinct !DILexicalBlock(scope: !4236, file: !4237, line: 66, column: 7)
!4286 = !DILocation(line: 66, column: 7, scope: !4236)
!4287 = !DILocation(line: 67, column: 12, scope: !4285)
!4288 = !DILocation(line: 67, column: 5, scope: !4285)
!4289 = !DILocation(line: 72, column: 9, scope: !4290)
!4290 = distinct !DILexicalBlock(scope: !4236, file: !4237, line: 72, column: 7)
!4291 = !DILocation(line: 72, column: 23, scope: !4290)
!4292 = !DILocation(line: 72, column: 33, scope: !4290)
!4293 = !DILocation(line: 72, column: 26, scope: !4290)
!4294 = !DILocation(line: 72, column: 59, scope: !4290)
!4295 = !DILocation(line: 73, column: 7, scope: !4290)
!4296 = !DILocation(line: 73, column: 10, scope: !4290)
!4297 = !DILocation(line: 72, column: 7, scope: !4236)
!4298 = !DILocation(line: 100, column: 12, scope: !4236)
!4299 = !DILocation(line: 105, column: 7, scope: !4236)
!4300 = !DILocation(line: 74, column: 19, scope: !4290)
!4301 = !DILocation(line: 105, column: 19, scope: !4302)
!4302 = distinct !DILexicalBlock(scope: !4236, file: !4237, line: 105, column: 7)
!4303 = !DILocation(line: 107, column: 13, scope: !4304)
!4304 = distinct !DILexicalBlock(scope: !4302, file: !4237, line: 106, column: 5)
!4305 = !DILocation(line: 109, column: 5, scope: !4304)
!4306 = !DILocation(line: 0, scope: !4236)
!4307 = !DILocation(line: 112, column: 1, scope: !4236)
!4308 = distinct !DISubprogram(name: "rpl_fflush", scope: !4309, file: !4309, line: 129, type: !4310, isLocal: false, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, unit: !251, retainedNodes: !4346)
!4309 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4310 = !DISubroutineType(types: !4311)
!4311 = !{!49, !4312}
!4312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4313, size: 64)
!4313 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1374, line: 7, baseType: !4314)
!4314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1376, line: 49, size: 1728, elements: !4315)
!4315 = !{!4316, !4317, !4318, !4319, !4320, !4321, !4322, !4323, !4324, !4325, !4326, !4327, !4328, !4329, !4331, !4332, !4333, !4334, !4335, !4336, !4337, !4338, !4339, !4340, !4341, !4342, !4343, !4344, !4345}
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4314, file: !1376, line: 51, baseType: !49, size: 32)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4314, file: !1376, line: 54, baseType: !117, size: 64, offset: 64)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4314, file: !1376, line: 55, baseType: !117, size: 64, offset: 128)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4314, file: !1376, line: 56, baseType: !117, size: 64, offset: 192)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4314, file: !1376, line: 57, baseType: !117, size: 64, offset: 256)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4314, file: !1376, line: 58, baseType: !117, size: 64, offset: 320)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4314, file: !1376, line: 59, baseType: !117, size: 64, offset: 384)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4314, file: !1376, line: 60, baseType: !117, size: 64, offset: 448)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4314, file: !1376, line: 61, baseType: !117, size: 64, offset: 512)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4314, file: !1376, line: 64, baseType: !117, size: 64, offset: 576)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4314, file: !1376, line: 65, baseType: !117, size: 64, offset: 640)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4314, file: !1376, line: 66, baseType: !117, size: 64, offset: 704)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4314, file: !1376, line: 68, baseType: !1391, size: 64, offset: 768)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4314, file: !1376, line: 70, baseType: !4330, size: 64, offset: 832)
!4330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4314, size: 64)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4314, file: !1376, line: 72, baseType: !49, size: 32, offset: 896)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4314, file: !1376, line: 73, baseType: !49, size: 32, offset: 928)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4314, file: !1376, line: 74, baseType: !1352, size: 64, offset: 960)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4314, file: !1376, line: 77, baseType: !146, size: 16, offset: 1024)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4314, file: !1376, line: 78, baseType: !1400, size: 8, offset: 1040)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4314, file: !1376, line: 79, baseType: !1402, size: 8, offset: 1048)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4314, file: !1376, line: 81, baseType: !1404, size: 64, offset: 1088)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4314, file: !1376, line: 89, baseType: !1407, size: 64, offset: 1152)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4314, file: !1376, line: 91, baseType: !1409, size: 64, offset: 1216)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4314, file: !1376, line: 92, baseType: !1412, size: 64, offset: 1280)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4314, file: !1376, line: 93, baseType: !4330, size: 64, offset: 1344)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4314, file: !1376, line: 94, baseType: !33, size: 64, offset: 1408)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4314, file: !1376, line: 95, baseType: !34, size: 64, offset: 1472)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4314, file: !1376, line: 96, baseType: !49, size: 32, offset: 1536)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4314, file: !1376, line: 98, baseType: !1419, size: 160, offset: 1568)
!4346 = !{!4347}
!4347 = !DILocalVariable(name: "stream", arg: 1, scope: !4308, file: !4309, line: 129, type: !4312)
!4348 = !DILocation(line: 129, column: 19, scope: !4308)
!4349 = !DILocation(line: 150, column: 14, scope: !4350)
!4350 = distinct !DILexicalBlock(scope: !4308, file: !4309, line: 150, column: 7)
!4351 = !DILocation(line: 150, column: 22, scope: !4350)
!4352 = !DILocation(line: 150, column: 27, scope: !4350)
!4353 = !DILocation(line: 150, column: 7, scope: !4308)
!4354 = !DILocation(line: 151, column: 12, scope: !4350)
!4355 = !DILocation(line: 151, column: 5, scope: !4350)
!4356 = !DILocalVariable(name: "fp", arg: 1, scope: !4357, file: !4309, line: 41, type: !4312)
!4357 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !4309, file: !4309, line: 41, type: !4358, isLocal: true, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !251, retainedNodes: !4360)
!4358 = !DISubroutineType(types: !4359)
!4359 = !{null, !4312}
!4360 = !{!4356}
!4361 = !DILocation(line: 41, column: 48, scope: !4357, inlinedAt: !4362)
!4362 = distinct !DILocation(line: 156, column: 3, scope: !4308)
!4363 = !DILocation(line: 43, column: 11, scope: !4364, inlinedAt: !4362)
!4364 = distinct !DILexicalBlock(scope: !4357, file: !4309, line: 43, column: 7)
!4365 = !{!3525, !764, i64 0}
!4366 = !DILocation(line: 43, column: 18, scope: !4364, inlinedAt: !4362)
!4367 = !DILocation(line: 43, column: 7, scope: !4357, inlinedAt: !4362)
!4368 = !DILocation(line: 45, column: 5, scope: !4364, inlinedAt: !4362)
!4369 = !DILocation(line: 158, column: 10, scope: !4308)
!4370 = !DILocation(line: 158, column: 3, scope: !4308)
!4371 = !DILocation(line: 0, scope: !4308)
!4372 = !DILocation(line: 232, column: 1, scope: !4308)
!4373 = distinct !DISubprogram(name: "rpl_fseeko", scope: !4374, file: !4374, line: 28, type: !4375, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !253, retainedNodes: !4411)
!4374 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4375 = !DISubroutineType(types: !4376)
!4376 = !{!49, !4377, !1350, !49}
!4377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4378, size: 64)
!4378 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1374, line: 7, baseType: !4379)
!4379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1376, line: 49, size: 1728, elements: !4380)
!4380 = !{!4381, !4382, !4383, !4384, !4385, !4386, !4387, !4388, !4389, !4390, !4391, !4392, !4393, !4394, !4396, !4397, !4398, !4399, !4400, !4401, !4402, !4403, !4404, !4405, !4406, !4407, !4408, !4409, !4410}
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4379, file: !1376, line: 51, baseType: !49, size: 32)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4379, file: !1376, line: 54, baseType: !117, size: 64, offset: 64)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4379, file: !1376, line: 55, baseType: !117, size: 64, offset: 128)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4379, file: !1376, line: 56, baseType: !117, size: 64, offset: 192)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4379, file: !1376, line: 57, baseType: !117, size: 64, offset: 256)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4379, file: !1376, line: 58, baseType: !117, size: 64, offset: 320)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4379, file: !1376, line: 59, baseType: !117, size: 64, offset: 384)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4379, file: !1376, line: 60, baseType: !117, size: 64, offset: 448)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4379, file: !1376, line: 61, baseType: !117, size: 64, offset: 512)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4379, file: !1376, line: 64, baseType: !117, size: 64, offset: 576)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4379, file: !1376, line: 65, baseType: !117, size: 64, offset: 640)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4379, file: !1376, line: 66, baseType: !117, size: 64, offset: 704)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4379, file: !1376, line: 68, baseType: !1391, size: 64, offset: 768)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4379, file: !1376, line: 70, baseType: !4395, size: 64, offset: 832)
!4395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4379, size: 64)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4379, file: !1376, line: 72, baseType: !49, size: 32, offset: 896)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4379, file: !1376, line: 73, baseType: !49, size: 32, offset: 928)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4379, file: !1376, line: 74, baseType: !1352, size: 64, offset: 960)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4379, file: !1376, line: 77, baseType: !146, size: 16, offset: 1024)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4379, file: !1376, line: 78, baseType: !1400, size: 8, offset: 1040)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4379, file: !1376, line: 79, baseType: !1402, size: 8, offset: 1048)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4379, file: !1376, line: 81, baseType: !1404, size: 64, offset: 1088)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4379, file: !1376, line: 89, baseType: !1407, size: 64, offset: 1152)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4379, file: !1376, line: 91, baseType: !1409, size: 64, offset: 1216)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4379, file: !1376, line: 92, baseType: !1412, size: 64, offset: 1280)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4379, file: !1376, line: 93, baseType: !4395, size: 64, offset: 1344)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4379, file: !1376, line: 94, baseType: !33, size: 64, offset: 1408)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4379, file: !1376, line: 95, baseType: !34, size: 64, offset: 1472)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4379, file: !1376, line: 96, baseType: !49, size: 32, offset: 1536)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4379, file: !1376, line: 98, baseType: !1419, size: 160, offset: 1568)
!4411 = !{!4412, !4413, !4414, !4415}
!4412 = !DILocalVariable(name: "fp", arg: 1, scope: !4373, file: !4374, line: 28, type: !4377)
!4413 = !DILocalVariable(name: "offset", arg: 2, scope: !4373, file: !4374, line: 28, type: !1350)
!4414 = !DILocalVariable(name: "whence", arg: 3, scope: !4373, file: !4374, line: 28, type: !49)
!4415 = !DILocalVariable(name: "pos", scope: !4416, file: !4374, line: 117, type: !1350)
!4416 = distinct !DILexicalBlock(scope: !4417, file: !4374, line: 113, column: 5)
!4417 = distinct !DILexicalBlock(scope: !4373, file: !4374, line: 52, column: 7)
!4418 = !DILocation(line: 28, column: 15, scope: !4373)
!4419 = !DILocation(line: 28, column: 25, scope: !4373)
!4420 = !DILocation(line: 28, column: 37, scope: !4373)
!4421 = !DILocation(line: 52, column: 11, scope: !4417)
!4422 = !DILocation(line: 52, column: 31, scope: !4417)
!4423 = !DILocation(line: 52, column: 24, scope: !4417)
!4424 = !DILocation(line: 53, column: 7, scope: !4417)
!4425 = !DILocation(line: 53, column: 14, scope: !4417)
!4426 = !{!3525, !691, i64 40}
!4427 = !DILocation(line: 53, column: 35, scope: !4417)
!4428 = !{!3525, !691, i64 32}
!4429 = !DILocation(line: 53, column: 28, scope: !4417)
!4430 = !DILocation(line: 54, column: 7, scope: !4417)
!4431 = !DILocation(line: 54, column: 14, scope: !4417)
!4432 = !{!3525, !691, i64 72}
!4433 = !DILocation(line: 54, column: 28, scope: !4417)
!4434 = !DILocation(line: 52, column: 7, scope: !4373)
!4435 = !DILocation(line: 117, column: 26, scope: !4416)
!4436 = !DILocation(line: 117, column: 19, scope: !4416)
!4437 = !DILocation(line: 117, column: 13, scope: !4416)
!4438 = !DILocation(line: 118, column: 15, scope: !4439)
!4439 = distinct !DILexicalBlock(scope: !4416, file: !4374, line: 118, column: 11)
!4440 = !DILocation(line: 118, column: 11, scope: !4416)
!4441 = !DILocation(line: 129, column: 11, scope: !4416)
!4442 = !DILocation(line: 129, column: 18, scope: !4416)
!4443 = !DILocation(line: 130, column: 11, scope: !4416)
!4444 = !DILocation(line: 130, column: 19, scope: !4416)
!4445 = !{!3525, !843, i64 144}
!4446 = !DILocation(line: 161, column: 7, scope: !4416)
!4447 = !DILocation(line: 163, column: 10, scope: !4373)
!4448 = !DILocation(line: 163, column: 3, scope: !4373)
!4449 = !DILocation(line: 0, scope: !4373)
!4450 = !DILocation(line: 164, column: 1, scope: !4373)
!4451 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !4452, file: !4452, line: 385, type: !4453, isLocal: false, isDefinition: true, scopeLine: 386, flags: DIFlagPrototyped, isOptimized: true, unit: !255, retainedNodes: !4467)
!4452 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4453 = !DISubroutineType(types: !4454)
!4454 = !{!34, !4455, !30, !34, !4456}
!4455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1878, size: 64)
!4456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4457, size: 64)
!4457 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1862, line: 6, baseType: !4458)
!4458 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1864, line: 21, baseType: !4459)
!4459 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1864, line: 13, size: 64, elements: !4460)
!4460 = !{!4461, !4462}
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4459, file: !1864, line: 15, baseType: !49, size: 32)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4459, file: !1864, line: 20, baseType: !4463, size: 32, offset: 32)
!4463 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4459, file: !1864, line: 16, size: 32, elements: !4464)
!4464 = !{!4465, !4466}
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4463, file: !1864, line: 18, baseType: !7, size: 32)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4463, file: !1864, line: 19, baseType: !1873, size: 32)
!4467 = !{!4468, !4469, !4470, !4471, !4472, !4473, !4474}
!4468 = !DILocalVariable(name: "pwc", arg: 1, scope: !4451, file: !4452, line: 385, type: !4455)
!4469 = !DILocalVariable(name: "s", arg: 2, scope: !4451, file: !4452, line: 385, type: !30)
!4470 = !DILocalVariable(name: "n", arg: 3, scope: !4451, file: !4452, line: 385, type: !34)
!4471 = !DILocalVariable(name: "ps", arg: 4, scope: !4451, file: !4452, line: 385, type: !4456)
!4472 = !DILocalVariable(name: "ret", scope: !4451, file: !4452, line: 387, type: !34)
!4473 = !DILocalVariable(name: "wc", scope: !4451, file: !4452, line: 388, type: !1878)
!4474 = !DILocalVariable(name: "uc", scope: !4475, file: !4452, line: 449, type: !225)
!4475 = distinct !DILexicalBlock(scope: !4476, file: !4452, line: 448, column: 5)
!4476 = distinct !DILexicalBlock(scope: !4451, file: !4452, line: 447, column: 7)
!4477 = !DILocation(line: 385, column: 23, scope: !4451)
!4478 = !DILocation(line: 385, column: 40, scope: !4451)
!4479 = !DILocation(line: 385, column: 50, scope: !4451)
!4480 = !DILocation(line: 385, column: 64, scope: !4451)
!4481 = !DILocation(line: 388, column: 3, scope: !4451)
!4482 = !DILocation(line: 404, column: 9, scope: !4483)
!4483 = distinct !DILexicalBlock(scope: !4451, file: !4452, line: 404, column: 7)
!4484 = !DILocation(line: 404, column: 7, scope: !4451)
!4485 = !DILocation(line: 439, column: 9, scope: !4451)
!4486 = !DILocation(line: 387, column: 10, scope: !4451)
!4487 = !DILocation(line: 447, column: 19, scope: !4476)
!4488 = !DILocation(line: 447, column: 31, scope: !4476)
!4489 = !DILocation(line: 447, column: 26, scope: !4476)
!4490 = !DILocation(line: 447, column: 41, scope: !4476)
!4491 = !DILocation(line: 447, column: 7, scope: !4451)
!4492 = !DILocation(line: 449, column: 26, scope: !4475)
!4493 = !DILocation(line: 449, column: 21, scope: !4475)
!4494 = !DILocation(line: 450, column: 14, scope: !4475)
!4495 = !DILocation(line: 450, column: 12, scope: !4475)
!4496 = !DILocation(line: 0, scope: !4475)
!4497 = !DILocation(line: 456, column: 1, scope: !4451)
!4498 = distinct !DISubprogram(name: "close_stream", scope: !4499, file: !4499, line: 56, type: !4500, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !4536)
!4499 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4500 = !DISubroutineType(types: !4501)
!4501 = !{!49, !4502}
!4502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4503, size: 64)
!4503 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1374, line: 7, baseType: !4504)
!4504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1376, line: 49, size: 1728, elements: !4505)
!4505 = !{!4506, !4507, !4508, !4509, !4510, !4511, !4512, !4513, !4514, !4515, !4516, !4517, !4518, !4519, !4521, !4522, !4523, !4524, !4525, !4526, !4527, !4528, !4529, !4530, !4531, !4532, !4533, !4534, !4535}
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4504, file: !1376, line: 51, baseType: !49, size: 32)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4504, file: !1376, line: 54, baseType: !117, size: 64, offset: 64)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4504, file: !1376, line: 55, baseType: !117, size: 64, offset: 128)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4504, file: !1376, line: 56, baseType: !117, size: 64, offset: 192)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4504, file: !1376, line: 57, baseType: !117, size: 64, offset: 256)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4504, file: !1376, line: 58, baseType: !117, size: 64, offset: 320)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4504, file: !1376, line: 59, baseType: !117, size: 64, offset: 384)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4504, file: !1376, line: 60, baseType: !117, size: 64, offset: 448)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4504, file: !1376, line: 61, baseType: !117, size: 64, offset: 512)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4504, file: !1376, line: 64, baseType: !117, size: 64, offset: 576)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4504, file: !1376, line: 65, baseType: !117, size: 64, offset: 640)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4504, file: !1376, line: 66, baseType: !117, size: 64, offset: 704)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4504, file: !1376, line: 68, baseType: !1391, size: 64, offset: 768)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4504, file: !1376, line: 70, baseType: !4520, size: 64, offset: 832)
!4520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4504, size: 64)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4504, file: !1376, line: 72, baseType: !49, size: 32, offset: 896)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4504, file: !1376, line: 73, baseType: !49, size: 32, offset: 928)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4504, file: !1376, line: 74, baseType: !1352, size: 64, offset: 960)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4504, file: !1376, line: 77, baseType: !146, size: 16, offset: 1024)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4504, file: !1376, line: 78, baseType: !1400, size: 8, offset: 1040)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4504, file: !1376, line: 79, baseType: !1402, size: 8, offset: 1048)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4504, file: !1376, line: 81, baseType: !1404, size: 64, offset: 1088)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4504, file: !1376, line: 89, baseType: !1407, size: 64, offset: 1152)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4504, file: !1376, line: 91, baseType: !1409, size: 64, offset: 1216)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4504, file: !1376, line: 92, baseType: !1412, size: 64, offset: 1280)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4504, file: !1376, line: 93, baseType: !4520, size: 64, offset: 1344)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4504, file: !1376, line: 94, baseType: !33, size: 64, offset: 1408)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4504, file: !1376, line: 95, baseType: !34, size: 64, offset: 1472)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4504, file: !1376, line: 96, baseType: !49, size: 32, offset: 1536)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4504, file: !1376, line: 98, baseType: !1419, size: 160, offset: 1568)
!4536 = !{!4537, !4538, !4540, !4541}
!4537 = !DILocalVariable(name: "stream", arg: 1, scope: !4498, file: !4499, line: 56, type: !4502)
!4538 = !DILocalVariable(name: "some_pending", scope: !4498, file: !4499, line: 58, type: !4539)
!4539 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !88)
!4540 = !DILocalVariable(name: "prev_fail", scope: !4498, file: !4499, line: 59, type: !4539)
!4541 = !DILocalVariable(name: "fclose_fail", scope: !4498, file: !4499, line: 60, type: !4539)
!4542 = !DILocation(line: 56, column: 21, scope: !4498)
!4543 = !DILocation(line: 58, column: 30, scope: !4498)
!4544 = !DILocalVariable(name: "__stream", arg: 1, scope: !4545, file: !3516, line: 135, type: !4502)
!4545 = distinct !DISubprogram(name: "ferror_unlocked", scope: !3516, file: !3516, line: 135, type: !4500, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !258, retainedNodes: !4546)
!4546 = !{!4544}
!4547 = !DILocation(line: 135, column: 1, scope: !4545, inlinedAt: !4548)
!4548 = distinct !DILocation(line: 59, column: 27, scope: !4498)
!4549 = !DILocation(line: 137, column: 10, scope: !4545, inlinedAt: !4548)
!4550 = !DILocation(line: 59, column: 43, scope: !4498)
!4551 = !DILocation(line: 60, column: 29, scope: !4498)
!4552 = !DILocation(line: 60, column: 45, scope: !4498)
!4553 = !DILocation(line: 70, column: 17, scope: !4554)
!4554 = distinct !DILexicalBlock(scope: !4498, file: !4499, line: 70, column: 7)
!4555 = !DILocation(line: 58, column: 50, scope: !4498)
!4556 = !DILocation(line: 70, column: 33, scope: !4554)
!4557 = !DILocation(line: 70, column: 53, scope: !4554)
!4558 = !DILocation(line: 70, column: 59, scope: !4554)
!4559 = !DILocation(line: 70, column: 7, scope: !4498)
!4560 = !DILocation(line: 72, column: 11, scope: !4561)
!4561 = distinct !DILexicalBlock(scope: !4554, file: !4499, line: 71, column: 5)
!4562 = !DILocation(line: 73, column: 9, scope: !4563)
!4563 = distinct !DILexicalBlock(scope: !4561, file: !4499, line: 72, column: 11)
!4564 = !DILocation(line: 73, column: 15, scope: !4563)
!4565 = !DILocation(line: 0, scope: !4498)
!4566 = !DILocation(line: 78, column: 1, scope: !4498)
!4567 = distinct !DISubprogram(name: "hard_locale", scope: !4568, file: !4568, line: 38, type: !1510, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !260, retainedNodes: !4569)
!4568 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4569 = !{!4570, !4571, !4572}
!4570 = !DILocalVariable(name: "category", arg: 1, scope: !4567, file: !4568, line: 38, type: !49)
!4571 = !DILocalVariable(name: "hard", scope: !4567, file: !4568, line: 40, type: !88)
!4572 = !DILocalVariable(name: "p", scope: !4567, file: !4568, line: 41, type: !30)
!4573 = !DILocation(line: 38, column: 18, scope: !4567)
!4574 = !DILocation(line: 40, column: 8, scope: !4567)
!4575 = !DILocation(line: 41, column: 19, scope: !4567)
!4576 = !DILocation(line: 41, column: 15, scope: !4567)
!4577 = !DILocation(line: 43, column: 7, scope: !4578)
!4578 = distinct !DILexicalBlock(scope: !4567, file: !4568, line: 43, column: 7)
!4579 = !DILocation(line: 43, column: 7, scope: !4567)
!4580 = !DILocation(line: 47, column: 15, scope: !4581)
!4581 = distinct !DILexicalBlock(scope: !4582, file: !4568, line: 47, column: 15)
!4582 = distinct !DILexicalBlock(scope: !4583, file: !4568, line: 46, column: 9)
!4583 = distinct !DILexicalBlock(scope: !4584, file: !4568, line: 45, column: 11)
!4584 = distinct !DILexicalBlock(scope: !4578, file: !4568, line: 44, column: 5)
!4585 = !DILocation(line: 47, column: 31, scope: !4581)
!4586 = !DILocation(line: 47, column: 36, scope: !4581)
!4587 = !DILocation(line: 47, column: 39, scope: !4581)
!4588 = !DILocation(line: 47, column: 59, scope: !4581)
!4589 = !DILocation(line: 47, column: 15, scope: !4582)
!4590 = !DILocation(line: 48, column: 13, scope: !4581)
!4591 = !DILocation(line: 71, column: 3, scope: !4567)
!4592 = distinct !DISubprogram(name: "locale_charset", scope: !4593, file: !4593, line: 687, type: !4594, isLocal: false, isDefinition: true, scopeLine: 688, flags: DIFlagPrototyped, isOptimized: true, unit: !262, retainedNodes: !4596)
!4593 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4594 = !DISubroutineType(types: !4595)
!4595 = !{!30}
!4596 = !{!4597}
!4597 = !DILocalVariable(name: "codeset", scope: !4592, file: !4593, line: 689, type: !30)
!4598 = !DILocation(line: 696, column: 13, scope: !4592)
!4599 = !DILocation(line: 689, column: 15, scope: !4592)
!4600 = !DILocation(line: 754, column: 15, scope: !4601)
!4601 = distinct !DILexicalBlock(scope: !4592, file: !4593, line: 754, column: 7)
!4602 = !DILocation(line: 754, column: 7, scope: !4592)
!4603 = !DILocation(line: 907, column: 13, scope: !4604)
!4604 = distinct !DILexicalBlock(scope: !4605, file: !4593, line: 907, column: 13)
!4605 = distinct !DILexicalBlock(scope: !4606, file: !4593, line: 897, column: 7)
!4606 = distinct !DILexicalBlock(scope: !4592, file: !4593, line: 856, column: 3)
!4607 = !DILocation(line: 907, column: 24, scope: !4604)
!4608 = !DILocation(line: 907, column: 13, scope: !4605)
!4609 = !DILocation(line: 995, column: 3, scope: !4592)
