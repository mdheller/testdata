; ModuleID = 'coreutils-8.30/src/printf.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.infomap = type { i8*, i8* }
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"Usage: %s FORMAT [ARGUMENT]...\0A  or:  %s OPTION\0A\00", align 1
@.str.2 = private unnamed_addr constant [73 x i8] c"Print ARGUMENT(s) according to FORMAT, or execute according to OPTION:\0A\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [97 x i8] c"\0AFORMAT controls the output as in C printf.  Interpreted sequences are:\0A\0A  \5C\22      double quote\0A\00", align 1
@.str.6 = private unnamed_addr constant [229 x i8] c"  \5C\5C      backslash\0A  \5Ca      alert (BEL)\0A  \5Cb      backspace\0A  \5Cc      produce no further output\0A  \5Ce      escape\0A  \5Cf      form feed\0A  \5Cn      new line\0A  \5Cr      carriage return\0A  \5Ct      horizontal tab\0A  \5Cv      vertical tab\0A\00", align 1
@.str.7 = private unnamed_addr constant [252 x i8] c"  \5CNNN    byte with octal value NNN (1 to 3 digits)\0A  \5CxHH    byte with hexadecimal value HH (1 to 2 digits)\0A  \5CuHHHH  Unicode (ISO/IEC 10646) character with hex value HHHH (4 digits)\0A  \5CUHHHHHHHH  Unicode character with hex value HHHHHHHH (8 digits)\0A\00", align 1
@.str.8 = private unnamed_addr constant [448 x i8] c"  %%      a single %\0A  %b      ARGUMENT as a string with '\5C' escapes interpreted,\0A          except that octal escapes are of the form \5C0 or \5C0NNN\0A  %q      ARGUMENT is printed in a format that can be reused as shell input,\0A          escaping non-printable characters with the proposed POSIX $'' syntax.\0A\0Aand all C format specifications ending with one of diouxXfeEgGcs, with\0AARGUMENTs converted to proper type first.  Variable widths are handled.\0A\00", align 1
@.str.9 = private unnamed_addr constant [191 x i8] c"\0ANOTE: your shell may have its own version of %s, which usually supersedes\0Athe version described here.  Please refer to your shell's documentation\0Afor details about the options it supports.\0A\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"printf\00", align 1
@emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.24, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.22 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.30 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.31 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.33 = private unnamed_addr constant [70 x i8] c"Report %s translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.34 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.35 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@exit_status = internal unnamed_addr global i1 false, align 4, !dbg !0
@.str.14 = private unnamed_addr constant [16 x i8] c"POSIXLY_CORRECT\00", align 1
@posixly_correct = internal unnamed_addr global i8 0, align 1, !dbg !44
@.str.15 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@.str.37 = private unnamed_addr constant [24 x i8] c"invalid field width: %s\00", align 1
@.str.38 = private unnamed_addr constant [22 x i8] c"invalid precision: %s\00", align 1
@.str.39 = private unnamed_addr constant [39 x i8] c"%.*s: invalid conversion specification\00", align 1
@.str.45 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c"ld\00", align 1
@.str.40 = private unnamed_addr constant [73 x i8] c"warning: %s: character(s) following character constant have been ignored\00", align 1
@.str.21 = private unnamed_addr constant [53 x i8] c"warning: ignoring excess arguments, starting with %s\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.42 = private unnamed_addr constant [29 x i8] c"%s: expected a numeric value\00", align 1
@.str.43 = private unnamed_addr constant [35 x i8] c"%s: value not completely converted\00", align 1
@.str.46 = private unnamed_addr constant [37 x i8] c"missing hexadecimal number in escape\00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c"\22\5Cabcefnrtv\00", align 1
@.str.48 = private unnamed_addr constant [41 x i8] c"invalid universal character name \5C%c%0*x\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i64 0, i64 0), align 8, !dbg !52
@.str.49 = private unnamed_addr constant [5 x i8] c"8.30\00", align 1
@c_locale_cache = internal global %struct.__locale_struct* null, align 8, !dbg !58
@.str.52 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !88
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !93
@.str.55 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.56 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.57 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !96
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !103
@.str.64 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.65 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.66 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.68, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.69, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.70, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.71, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.72, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.73, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.74, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.75, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.76, i32 0, i32 0), i8* null], align 16, !dbg !110
@.str.67 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.68 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.69 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.70 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.71 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.72 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.73 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.74 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.75 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.76 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !125
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !132
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !144
@.str.11.77 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.78 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.79 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.80 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.81 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.82 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.83 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !151
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !158
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !146
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !160
@unicode_to_mb.initialized = internal unnamed_addr global i1 false, align 4, !dbg !165
@.str.90 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@unicode_to_mb.is_utf8 = internal unnamed_addr global i32 0, align 4, !dbg !241
@unicode_to_mb.utf8_to_local = internal unnamed_addr global i8* null, align 8, !dbg !243
@.str.1.91 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1
@.str.2.92 = private unnamed_addr constant [26 x i8] c"iconv function not usable\00", align 1
@.str.3.93 = private unnamed_addr constant [23 x i8] c"character out of range\00", align 1
@.str.4.96 = private unnamed_addr constant [45 x i8] c"cannot convert U+%04X to local character set\00", align 1
@.str.5.97 = private unnamed_addr constant [49 x i8] c"cannot convert U+%04X to local character set: %s\00", align 1
@.str.6.98 = private unnamed_addr constant [7 x i8] c"\5Cu%04X\00", align 1
@.str.7.99 = private unnamed_addr constant [7 x i8] c"\5CU%08X\00", align 1
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
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !269
@.str.1.134 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.135 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.138 = private unnamed_addr constant [32 x i8] c"cannot perform formatted output\00", align 1
@.str.147 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.148 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.151 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.152 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32) local_unnamed_addr #0 !dbg !719 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !724, metadata !DIExpression()), !dbg !743
  call void @llvm.dbg.value(metadata i32 %0, metadata !723, metadata !DIExpression()), !dbg !747
  %3 = icmp eq i32 %0, 0, !dbg !748
  br i1 %3, label %9, label %4, !dbg !749

; <label>:4:                                      ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !750, !tbaa !752
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #11, !dbg !750
  %7 = load i8*, i8** @program_name, align 8, !dbg !750, !tbaa !752
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #11, !dbg !750
  br label %71, !dbg !750

; <label>:9:                                      ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 5) #11, !dbg !756
  %11 = load i8*, i8** @program_name, align 8, !dbg !756, !tbaa !752
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11, i8* %11) #11, !dbg !756
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i32 5) #11, !dbg !757
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !757, !tbaa !752
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !757
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #11, !dbg !758
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !758, !tbaa !752
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17), !dbg !758
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 5) #11, !dbg !759
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !759, !tbaa !752
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !759
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.5, i64 0, i64 0), i32 5) #11, !dbg !760
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !760, !tbaa !752
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !760
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([229 x i8], [229 x i8]* @.str.6, i64 0, i64 0), i32 5) #11, !dbg !761
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !761, !tbaa !752
  %27 = tail call i32 @fputs_unlocked(i8* %25, %struct._IO_FILE* %26), !dbg !761
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([252 x i8], [252 x i8]* @.str.7, i64 0, i64 0), i32 5) #11, !dbg !762
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !762, !tbaa !752
  %30 = tail call i32 @fputs_unlocked(i8* %28, %struct._IO_FILE* %29), !dbg !762
  %31 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([448 x i8], [448 x i8]* @.str.8, i64 0, i64 0), i32 5) #11, !dbg !763
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !763, !tbaa !752
  %33 = tail call i32 @fputs_unlocked(i8* %31, %struct._IO_FILE* %32), !dbg !763
  %34 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([191 x i8], [191 x i8]* @.str.9, i64 0, i64 0), i32 5) #11, !dbg !764
  %35 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0)) #11, !dbg !764
  %36 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !765
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %36) #11, !dbg !765
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %36, i8* align 16 bitcast ([7 x %struct.infomap]* @emit_ancillary_info.infomap to i8*), i64 112, i1 false) #11, !dbg !743
  %37 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !766
  call void @llvm.dbg.value(metadata %struct.infomap* %37, metadata !732, metadata !DIExpression()) #11, !dbg !767
  br label %38, !dbg !768

; <label>:38:                                     ; preds = %43, %9
  %39 = phi i8* [ %46, %43 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), %9 ]
  %40 = phi %struct.infomap* [ %44, %43 ], [ %37, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %40, metadata !732, metadata !DIExpression()) #11, !dbg !767
  %41 = tail call i32 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* nonnull %39) #9, !dbg !768
  %42 = icmp eq i32 %41, 0, !dbg !768
  br i1 %42, label %48, label %43, !dbg !769

; <label>:43:                                     ; preds = %38
  %44 = getelementptr inbounds %struct.infomap, %struct.infomap* %40, i64 1, !dbg !770
  call void @llvm.dbg.value(metadata %struct.infomap* %44, metadata !732, metadata !DIExpression()) #11, !dbg !767
  %45 = getelementptr inbounds %struct.infomap, %struct.infomap* %44, i64 0, i32 0, !dbg !771
  %46 = load i8*, i8** %45, align 8, !dbg !771, !tbaa !772
  %47 = icmp eq i8* %46, null, !dbg !774
  br i1 %47, label %48, label %38, !dbg !775, !llvm.loop !776

; <label>:48:                                     ; preds = %43, %38
  %49 = phi %struct.infomap* [ %44, %43 ], [ %40, %38 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %49, metadata !732, metadata !DIExpression()) #11, !dbg !767
  call void @llvm.dbg.value(metadata %struct.infomap* %49, metadata !732, metadata !DIExpression()) #11, !dbg !767
  %50 = getelementptr inbounds %struct.infomap, %struct.infomap* %49, i64 0, i32 1, !dbg !779
  %51 = load i8*, i8** %50, align 8, !dbg !779, !tbaa !781
  %52 = icmp eq i8* %51, null, !dbg !782
  %53 = select i1 %52, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* %51, !dbg !783
  call void @llvm.dbg.value(metadata i8* %53, metadata !731, metadata !DIExpression()) #11, !dbg !784
  %54 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.30, i64 0, i64 0), i32 5) #11, !dbg !785
  %55 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %54, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.31, i64 0, i64 0)) #11, !dbg !785
  %56 = tail call i8* @setlocale(i32 5, i8* null) #11, !dbg !786
  call void @llvm.dbg.value(metadata i8* %56, metadata !739, metadata !DIExpression()) #11, !dbg !787
  %57 = icmp eq i8* %56, null, !dbg !788
  br i1 %57, label %64, label %58, !dbg !790

; <label>:58:                                     ; preds = %48
  %59 = tail call i32 @strncmp(i8* nonnull %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0), i64 3) #9, !dbg !791
  %60 = icmp eq i32 %59, 0, !dbg !791
  br i1 %60, label %64, label %61, !dbg !792

; <label>:61:                                     ; preds = %58
  %62 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.33, i64 0, i64 0), i32 5) #11, !dbg !793
  %63 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %62, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0)) #11, !dbg !793
  br label %64, !dbg !795

; <label>:64:                                     ; preds = %48, %58, %61
  %65 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.34, i64 0, i64 0), i32 5) #11, !dbg !796
  %66 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %65, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0)) #11, !dbg !796
  %67 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.35, i64 0, i64 0), i32 5) #11, !dbg !797
  %68 = icmp eq i8* %53, getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), !dbg !797
  %69 = select i1 %68, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), !dbg !797
  %70 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %67, i8* %53, i8* %69) #11, !dbg !797
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %36) #11, !dbg !798
  br label %71

; <label>:71:                                     ; preds = %64, %4
  tail call void @exit(i32 %0) #15, !dbg !799
  unreachable, !dbg !799
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
define dso_local i32 @main(i32, i8** nocapture readonly) local_unnamed_addr #7 !dbg !800 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [256 x i8], align 16
  call void @llvm.dbg.declare(metadata [256 x i8]* %5, metadata !808, metadata !DIExpression()), !dbg !845
  call void @llvm.dbg.value(metadata i32 %0, metadata !804, metadata !DIExpression()), !dbg !848
  call void @llvm.dbg.value(metadata i8** %1, metadata !805, metadata !DIExpression()), !dbg !849
  %6 = load i8*, i8** %1, align 8, !dbg !850, !tbaa !752
  tail call void @set_program_name(i8* %6) #11, !dbg !851
  %7 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)) #11, !dbg !852
  %8 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0)) #11, !dbg !853
  %9 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0)) #11, !dbg !854
  %10 = tail call i32 @atexit(void ()* nonnull @close_stdout) #11, !dbg !855
  store i1 false, i1* @exit_status, align 4
  %11 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0)) #11, !dbg !856
  %12 = icmp ne i8* %11, null, !dbg !857
  %13 = zext i1 %12 to i8, !dbg !858
  store i8 %13, i8* @posixly_correct, align 1, !dbg !858, !tbaa !859
  %14 = icmp eq i32 %0, 2, !dbg !861
  br i1 %14, label %15, label %27, !dbg !863

; <label>:15:                                     ; preds = %2
  %16 = getelementptr inbounds i8*, i8** %1, i64 1, !dbg !864
  %17 = load i8*, i8** %16, align 8, !dbg !864, !tbaa !752
  %18 = tail call i32 @strcmp(i8* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0)) #9, !dbg !864
  %19 = icmp eq i32 %18, 0, !dbg !864
  br i1 %19, label %20, label %21, !dbg !867

; <label>:20:                                     ; preds = %15
  tail call void @usage(i32 0) #16, !dbg !868
  unreachable, !dbg !868

; <label>:21:                                     ; preds = %15
  %22 = tail call i32 @strcmp(i8* %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0)) #9, !dbg !869
  %23 = icmp eq i32 %22, 0, !dbg !869
  br i1 %23, label %24, label %32, !dbg !871

; <label>:24:                                     ; preds = %21
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !872, !tbaa !752
  %26 = load i8*, i8** @Version, align 8, !dbg !874, !tbaa !752
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i8* %26, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i8* null) #11, !dbg !875
  br label %415, !dbg !876

; <label>:27:                                     ; preds = %2
  %28 = icmp sgt i32 %0, 1, !dbg !877
  br i1 %28, label %29, label %43, !dbg !879

; <label>:29:                                     ; preds = %27
  %30 = getelementptr inbounds i8*, i8** %1, i64 1
  %31 = load i8*, i8** %30, align 8, !dbg !880, !tbaa !752
  br label %32, !dbg !879

; <label>:32:                                     ; preds = %29, %21
  %33 = phi i8** [ %30, %29 ], [ %16, %21 ], !dbg !880
  %34 = phi i8* [ %31, %29 ], [ %17, %21 ], !dbg !880
  %35 = tail call i32 @strcmp(i8* %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0)) #9, !dbg !880
  %36 = icmp eq i32 %35, 0, !dbg !880
  br i1 %36, label %37, label %45, !dbg !881

; <label>:37:                                     ; preds = %32
  call void @llvm.dbg.value(metadata i8** %33, metadata !805, metadata !DIExpression()), !dbg !849
  call void @llvm.dbg.value(metadata i8** %33, metadata !805, metadata !DIExpression()), !dbg !849
  %38 = icmp slt i32 %0, 3, !dbg !882
  br i1 %38, label %43, label %39, !dbg !884

; <label>:39:                                     ; preds = %37
  %40 = add nsw i32 %0, -1, !dbg !885
  call void @llvm.dbg.value(metadata i32 %40, metadata !804, metadata !DIExpression()), !dbg !848
  call void @llvm.dbg.value(metadata i32 %40, metadata !804, metadata !DIExpression()), !dbg !848
  %41 = getelementptr inbounds i8*, i8** %1, i64 2
  %42 = load i8*, i8** %41, align 8, !dbg !887, !tbaa !752
  br label %45, !dbg !884

; <label>:43:                                     ; preds = %27, %37
  %44 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0), i32 5) #11, !dbg !888
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %44) #11, !dbg !890
  tail call void @usage(i32 1) #16, !dbg !891
  unreachable, !dbg !891

; <label>:45:                                     ; preds = %39, %32
  %46 = phi i8* [ %42, %39 ], [ %34, %32 ], !dbg !887
  %47 = phi i32 [ %40, %39 ], [ %0, %32 ]
  %48 = phi i8** [ %33, %39 ], [ %1, %32 ]
  call void @llvm.dbg.value(metadata i8* %46, metadata !806, metadata !DIExpression()), !dbg !892
  %49 = add nsw i32 %47, -2, !dbg !893
  call void @llvm.dbg.value(metadata i32 %49, metadata !804, metadata !DIExpression()), !dbg !848
  %50 = getelementptr inbounds i8*, i8** %48, i64 2, !dbg !894
  call void @llvm.dbg.value(metadata i8** %50, metadata !805, metadata !DIExpression()), !dbg !849
  %51 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %52 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 88
  %53 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 120
  %54 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 117
  %55 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 115
  %56 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 111
  %57 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 105
  %58 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 71
  %59 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 70
  %60 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 69
  %61 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 101
  %62 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 100
  %63 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 99
  %64 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 65
  %65 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 97
  %66 = bitcast i8** %4 to i8*
  %67 = bitcast i8** %3 to i8*
  br label %68, !dbg !895

; <label>:68:                                     ; preds = %399, %45
  %69 = phi i8** [ %50, %45 ], [ %403, %399 ], !dbg !896
  %70 = phi i32 [ %49, %45 ], [ %400, %399 ], !dbg !896
  call void @llvm.dbg.value(metadata i32 %70, metadata !804, metadata !DIExpression()), !dbg !848
  call void @llvm.dbg.value(metadata i8** %69, metadata !805, metadata !DIExpression()), !dbg !849
  call void @llvm.dbg.value(metadata i8* %46, metadata !813, metadata !DIExpression()) #11, !dbg !897
  call void @llvm.dbg.value(metadata i32 %70, metadata !814, metadata !DIExpression()) #11, !dbg !898
  call void @llvm.dbg.value(metadata i8** %69, metadata !815, metadata !DIExpression()) #11, !dbg !899
  call void @llvm.dbg.value(metadata i32 %70, metadata !816, metadata !DIExpression()) #11, !dbg !900
  call void @llvm.dbg.value(metadata i32 0, metadata !821, metadata !DIExpression()) #11, !dbg !901
  call void @llvm.dbg.value(metadata i32 0, metadata !823, metadata !DIExpression()) #11, !dbg !902
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %51) #11, !dbg !903
  call void @llvm.dbg.value(metadata i8* %46, metadata !817, metadata !DIExpression()) #11, !dbg !904
  call void @llvm.dbg.value(metadata i32 %70, metadata !814, metadata !DIExpression()) #11, !dbg !898
  call void @llvm.dbg.value(metadata i8** %69, metadata !815, metadata !DIExpression()) #11, !dbg !899
  call void @llvm.dbg.value(metadata i32 0, metadata !823, metadata !DIExpression()) #11, !dbg !902
  call void @llvm.dbg.value(metadata i32 0, metadata !821, metadata !DIExpression()) #11, !dbg !901
  %71 = load i8, i8* %46, align 1, !dbg !905, !tbaa !906
  %72 = icmp eq i8 %71, 0, !dbg !907
  br i1 %72, label %399, label %73, !dbg !907

; <label>:73:                                     ; preds = %68, %390
  %74 = phi i8 [ %397, %390 ], [ %71, %68 ]
  %75 = phi i32 [ %395, %390 ], [ %70, %68 ]
  %76 = phi i8** [ %394, %390 ], [ %69, %68 ]
  %77 = phi i8* [ %396, %390 ], [ %46, %68 ]
  %78 = phi i32 [ %392, %390 ], [ 0, %68 ]
  %79 = phi i32 [ %391, %390 ], [ 0, %68 ]
  call void @llvm.dbg.value(metadata i32 %75, metadata !814, metadata !DIExpression()) #11, !dbg !898
  call void @llvm.dbg.value(metadata i8** %76, metadata !815, metadata !DIExpression()) #11, !dbg !899
  call void @llvm.dbg.value(metadata i8* %77, metadata !817, metadata !DIExpression()) #11, !dbg !904
  call void @llvm.dbg.value(metadata i32 %78, metadata !823, metadata !DIExpression()) #11, !dbg !902
  call void @llvm.dbg.value(metadata i32 %79, metadata !821, metadata !DIExpression()) #11, !dbg !901
  %80 = sext i8 %74 to i32, !dbg !908
  switch i32 %80, label %378 [
    i32 37, label %81
    i32 92, label %374
  ], !dbg !909

; <label>:81:                                     ; preds = %73
  %82 = getelementptr inbounds i8, i8* %77, i64 1, !dbg !910
  call void @llvm.dbg.value(metadata i8* %82, metadata !817, metadata !DIExpression()) #11, !dbg !904
  call void @llvm.dbg.value(metadata i8* %77, metadata !818, metadata !DIExpression()) #11, !dbg !911
  call void @llvm.dbg.value(metadata i64 1, metadata !819, metadata !DIExpression()) #11, !dbg !912
  call void @llvm.dbg.value(metadata i8 0, metadata !822, metadata !DIExpression()) #11, !dbg !913
  call void @llvm.dbg.value(metadata i8 0, metadata !820, metadata !DIExpression()) #11, !dbg !914
  %83 = load i8, i8* %82, align 1, !dbg !915, !tbaa !906
  switch i8 %83, label %133 [
    i8 37, label %84
    i8 98, label %95
    i8 113, label %124
  ], !dbg !917

; <label>:84:                                     ; preds = %81
  call void @llvm.dbg.value(metadata i32 37, metadata !918, metadata !DIExpression()) #11, !dbg !924
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !927, !tbaa !752
  %86 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %85, i64 0, i32 5, !dbg !927
  %87 = load i8*, i8** %86, align 8, !dbg !927, !tbaa !928
  %88 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %85, i64 0, i32 6, !dbg !927
  %89 = load i8*, i8** %88, align 8, !dbg !927, !tbaa !933
  %90 = icmp ult i8* %87, %89, !dbg !927
  br i1 %90, label %93, label %91, !dbg !927, !prof !934

; <label>:91:                                     ; preds = %84
  %92 = call i32 @__overflow(%struct._IO_FILE* %85, i32 37) #11, !dbg !927
  br label %390, !dbg !927

; <label>:93:                                     ; preds = %84
  %94 = getelementptr inbounds i8, i8* %87, i64 1, !dbg !927
  store i8* %94, i8** %86, align 8, !dbg !927, !tbaa !928
  store i8 37, i8* %87, align 1, !dbg !927, !tbaa !906
  br label %390, !dbg !927

; <label>:95:                                     ; preds = %81
  %96 = icmp sgt i32 %75, 0, !dbg !935
  br i1 %96, label %97, label %390, !dbg !939

; <label>:97:                                     ; preds = %95
  %98 = load i8*, i8** %76, align 8, !dbg !940, !tbaa !752
  call void @llvm.dbg.value(metadata i8* %98, metadata !942, metadata !DIExpression()) #11, !dbg !945
  br label %99, !dbg !947

; <label>:99:                                     ; preds = %118, %97
  %100 = phi i8* [ %98, %97 ], [ %120, %118 ]
  call void @llvm.dbg.value(metadata i8* %100, metadata !942, metadata !DIExpression()) #11, !dbg !945
  %101 = load i8, i8* %100, align 1, !dbg !948, !tbaa !906
  switch i8 %101, label %106 [
    i8 0, label %121
    i8 92, label %102
  ], !dbg !951

; <label>:102:                                    ; preds = %99
  %103 = call fastcc i32 @print_esc(i8* %100, i1 zeroext true) #11, !dbg !952
  %104 = sext i32 %103 to i64, !dbg !954
  %105 = getelementptr inbounds i8, i8* %100, i64 %104, !dbg !954
  call void @llvm.dbg.value(metadata i8* %105, metadata !942, metadata !DIExpression()) #11, !dbg !945
  br label %118, !dbg !955

; <label>:106:                                    ; preds = %99
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !956, !tbaa !752
  %108 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %107, i64 0, i32 5, !dbg !956
  %109 = load i8*, i8** %108, align 8, !dbg !956, !tbaa !928
  %110 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %107, i64 0, i32 6, !dbg !956
  %111 = load i8*, i8** %110, align 8, !dbg !956, !tbaa !933
  %112 = icmp ult i8* %109, %111, !dbg !956
  br i1 %112, label %116, label %113, !dbg !956, !prof !934

; <label>:113:                                    ; preds = %106
  %114 = zext i8 %101 to i32, !dbg !958
  %115 = call i32 @__overflow(%struct._IO_FILE* %107, i32 %114) #11, !dbg !956
  br label %118, !dbg !956

; <label>:116:                                    ; preds = %106
  %117 = getelementptr inbounds i8, i8* %109, i64 1, !dbg !956
  store i8* %117, i8** %108, align 8, !dbg !956, !tbaa !928
  store i8 %101, i8* %109, align 1, !dbg !956, !tbaa !906
  br label %118, !dbg !956

; <label>:118:                                    ; preds = %116, %113, %102
  %119 = phi i8* [ %105, %102 ], [ %100, %113 ], [ %100, %116 ]
  call void @llvm.dbg.value(metadata i8* %119, metadata !942, metadata !DIExpression()) #11, !dbg !945
  %120 = getelementptr inbounds i8, i8* %119, i64 1, !dbg !959
  call void @llvm.dbg.value(metadata i8* %120, metadata !942, metadata !DIExpression()) #11, !dbg !945
  br label %99, !dbg !960, !llvm.loop !961

; <label>:121:                                    ; preds = %99
  %122 = getelementptr inbounds i8*, i8** %76, i64 1, !dbg !964
  call void @llvm.dbg.value(metadata i8** %122, metadata !815, metadata !DIExpression()) #11, !dbg !899
  %123 = add nsw i32 %75, -1, !dbg !965
  call void @llvm.dbg.value(metadata i32 %123, metadata !814, metadata !DIExpression()) #11, !dbg !898
  br label %390, !dbg !966

; <label>:124:                                    ; preds = %81
  %125 = icmp sgt i32 %75, 0, !dbg !967
  br i1 %125, label %126, label %390, !dbg !971

; <label>:126:                                    ; preds = %124
  %127 = load i8*, i8** %76, align 8, !dbg !972, !tbaa !752
  %128 = call i8* @quotearg_style(i32 3, i8* %127) #11, !dbg !972
  %129 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !972, !tbaa !752
  %130 = call i32 @fputs_unlocked(i8* %128, %struct._IO_FILE* %129) #11, !dbg !972
  %131 = getelementptr inbounds i8*, i8** %76, i64 1, !dbg !974
  call void @llvm.dbg.value(metadata i8** %131, metadata !815, metadata !DIExpression()) #11, !dbg !899
  %132 = add nsw i32 %75, -1, !dbg !975
  call void @llvm.dbg.value(metadata i32 %132, metadata !814, metadata !DIExpression()) #11, !dbg !898
  br label %390, !dbg !976

; <label>:133:                                    ; preds = %81
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %51, i8 0, i64 256, i1 false) #11, !dbg !977
  store i8 1, i8* %52, align 8, !dbg !978, !tbaa !906
  store i8 1, i8* %53, align 8, !dbg !979, !tbaa !906
  store i8 1, i8* %54, align 1, !dbg !980, !tbaa !906
  store i8 1, i8* %55, align 1, !dbg !981, !tbaa !906
  store i8 1, i8* %56, align 1, !dbg !982, !tbaa !906
  store i8 1, i8* %57, align 1, !dbg !983, !tbaa !906
  store i8 1, i8* %58, align 1, !dbg !984, !tbaa !906
  store i8 1, i8* %59, align 2, !dbg !985, !tbaa !906
  store i8 1, i8* %60, align 1, !dbg !986, !tbaa !906
  store i8 1, i8* %64, align 1, !dbg !987, !tbaa !906
  store i8 1, i8* %65, align 1, !dbg !988, !tbaa !906
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %63, i8 1, i64 5, i1 false) #11, !dbg !989
  br label %134, !dbg !990

; <label>:134:                                    ; preds = %142, %133
  %135 = phi i64 [ 1, %133 ], [ %144, %142 ], !dbg !991
  %136 = phi i8* [ %82, %133 ], [ %143, %142 ], !dbg !991
  call void @llvm.dbg.value(metadata i8* %136, metadata !817, metadata !DIExpression()) #11, !dbg !904
  call void @llvm.dbg.value(metadata i64 %135, metadata !819, metadata !DIExpression()) #11, !dbg !912
  %137 = load i8, i8* %136, align 1, !dbg !994, !tbaa !906
  %138 = sext i8 %137 to i32, !dbg !994
  switch i32 %138, label %145 [
    i32 73, label %139
    i32 39, label %139
    i32 45, label %142
    i32 43, label %142
    i32 32, label %142
    i32 35, label %140
    i32 48, label %141
  ], !dbg !995

; <label>:139:                                    ; preds = %134, %134
  store i8 0, i8* %52, align 8, !dbg !996, !tbaa !906
  store i8 0, i8* %53, align 8, !dbg !998, !tbaa !906
  store i8 0, i8* %55, align 1, !dbg !999, !tbaa !906
  store i8 0, i8* %56, align 1, !dbg !1000, !tbaa !906
  store i8 0, i8* %60, align 1, !dbg !1001, !tbaa !906
  store i8 0, i8* %61, align 1, !dbg !1002, !tbaa !906
  store i8 0, i8* %63, align 1, !dbg !1003, !tbaa !906
  store i8 0, i8* %64, align 1, !dbg !1004, !tbaa !906
  store i8 0, i8* %65, align 1, !dbg !1005, !tbaa !906
  br label %142, !dbg !1006

; <label>:140:                                    ; preds = %134
  store i8 0, i8* %54, align 1, !dbg !1007, !tbaa !906
  store i8 0, i8* %55, align 1, !dbg !1008, !tbaa !906
  store i8 0, i8* %57, align 1, !dbg !1009, !tbaa !906
  store i8 0, i8* %62, align 4, !dbg !1010, !tbaa !906
  store i8 0, i8* %63, align 1, !dbg !1011, !tbaa !906
  br label %142, !dbg !1012

; <label>:141:                                    ; preds = %134
  store i8 0, i8* %55, align 1, !dbg !1013, !tbaa !906
  store i8 0, i8* %63, align 1, !dbg !1014, !tbaa !906
  br label %142, !dbg !1015

; <label>:142:                                    ; preds = %141, %140, %139, %134, %134, %134
  %143 = getelementptr inbounds i8, i8* %136, i64 1, !dbg !1016
  call void @llvm.dbg.value(metadata i8* %143, metadata !817, metadata !DIExpression()) #11, !dbg !904
  %144 = add i64 %135, 1, !dbg !1017
  call void @llvm.dbg.value(metadata i64 %144, metadata !819, metadata !DIExpression()) #11, !dbg !912
  br label %134, !dbg !1018, !llvm.loop !1019

; <label>:145:                                    ; preds = %134
  call void @llvm.dbg.value(metadata i64 %135, metadata !819, metadata !DIExpression()) #11, !dbg !912
  call void @llvm.dbg.value(metadata i8* %136, metadata !817, metadata !DIExpression()) #11, !dbg !904
  call void @llvm.dbg.value(metadata i64 %135, metadata !819, metadata !DIExpression()) #11, !dbg !912
  call void @llvm.dbg.value(metadata i8* %136, metadata !817, metadata !DIExpression()) #11, !dbg !904
  call void @llvm.dbg.value(metadata i64 %135, metadata !819, metadata !DIExpression()) #11, !dbg !912
  call void @llvm.dbg.value(metadata i8* %136, metadata !817, metadata !DIExpression()) #11, !dbg !904
  call void @llvm.dbg.value(metadata i64 %135, metadata !819, metadata !DIExpression()) #11, !dbg !912
  call void @llvm.dbg.value(metadata i8* %136, metadata !817, metadata !DIExpression()) #11, !dbg !904
  call void @llvm.dbg.value(metadata i64 %135, metadata !819, metadata !DIExpression()) #11, !dbg !912
  call void @llvm.dbg.value(metadata i8* %136, metadata !817, metadata !DIExpression()) #11, !dbg !904
  call void @llvm.dbg.value(metadata i64 %135, metadata !819, metadata !DIExpression()) #11, !dbg !912
  call void @llvm.dbg.value(metadata i8* %136, metadata !817, metadata !DIExpression()) #11, !dbg !904
  call void @llvm.dbg.value(metadata i64 %135, metadata !819, metadata !DIExpression()) #11, !dbg !912
  call void @llvm.dbg.value(metadata i8* %136, metadata !817, metadata !DIExpression()) #11, !dbg !904
  call void @llvm.dbg.value(metadata i64 %135, metadata !819, metadata !DIExpression()) #11, !dbg !912
  call void @llvm.dbg.value(metadata i8* %136, metadata !817, metadata !DIExpression()) #11, !dbg !904
  call void @llvm.dbg.value(metadata i64 %135, metadata !819, metadata !DIExpression()) #11, !dbg !912
  call void @llvm.dbg.value(metadata i8* %136, metadata !817, metadata !DIExpression()) #11, !dbg !904
  %146 = icmp eq i8 %137, 42, !dbg !1022
  br i1 %146, label %151, label %147, !dbg !1023

; <label>:147:                                    ; preds = %145
  %148 = sext i8 %137 to i32, !dbg !994
  call void @llvm.dbg.value(metadata i8* %136, metadata !817, metadata !DIExpression()) #11, !dbg !904
  call void @llvm.dbg.value(metadata i64 %135, metadata !819, metadata !DIExpression()) #11, !dbg !912
  %149 = add nsw i32 %148, -48, !dbg !1024
  %150 = icmp ult i32 %149, 10, !dbg !1024
  br i1 %150, label %168, label %182, !dbg !1025

; <label>:151:                                    ; preds = %145
  %152 = getelementptr inbounds i8, i8* %136, i64 1, !dbg !1026
  call void @llvm.dbg.value(metadata i8* %152, metadata !817, metadata !DIExpression()) #11, !dbg !904
  %153 = add i64 %135, 1, !dbg !1027
  call void @llvm.dbg.value(metadata i64 %153, metadata !819, metadata !DIExpression()) #11, !dbg !912
  %154 = icmp sgt i32 %75, 0, !dbg !1028
  br i1 %154, label %155, label %177, !dbg !1029

; <label>:155:                                    ; preds = %151
  %156 = load i8*, i8** %76, align 8, !dbg !1030, !tbaa !752
  %157 = call fastcc i64 @vstrtoimax(i8* %156) #11, !dbg !1031
  call void @llvm.dbg.value(metadata i64 %157, metadata !824, metadata !DIExpression()) #11, !dbg !1032
  %158 = add i64 %157, 2147483648, !dbg !1033
  %159 = icmp ult i64 %158, 4294967296, !dbg !1033
  br i1 %159, label %160, label %164, !dbg !1033

; <label>:160:                                    ; preds = %155
  %161 = trunc i64 %157 to i32, !dbg !1035
  call void @llvm.dbg.value(metadata i32 %161, metadata !821, metadata !DIExpression()) #11, !dbg !901
  %162 = getelementptr inbounds i8*, i8** %76, i64 1, !dbg !1036
  call void @llvm.dbg.value(metadata i8** %162, metadata !815, metadata !DIExpression()) #11, !dbg !899
  %163 = add nsw i32 %75, -1, !dbg !1037
  call void @llvm.dbg.value(metadata i32 %163, metadata !814, metadata !DIExpression()) #11, !dbg !898
  br label %177, !dbg !1038

; <label>:164:                                    ; preds = %155
  call void @llvm.dbg.value(metadata i8** %76, metadata !815, metadata !DIExpression()) #11, !dbg !899
  call void @llvm.dbg.value(metadata i8** %76, metadata !815, metadata !DIExpression()) #11, !dbg !899
  call void @llvm.dbg.value(metadata i8** %76, metadata !815, metadata !DIExpression()) #11, !dbg !899
  call void @llvm.dbg.value(metadata i8** %76, metadata !815, metadata !DIExpression()) #11, !dbg !899
  call void @llvm.dbg.value(metadata i8** %76, metadata !815, metadata !DIExpression()) #11, !dbg !899
  call void @llvm.dbg.value(metadata i8** %76, metadata !815, metadata !DIExpression()) #11, !dbg !899
  call void @llvm.dbg.value(metadata i8** %76, metadata !815, metadata !DIExpression()) #11, !dbg !899
  call void @llvm.dbg.value(metadata i8** %76, metadata !815, metadata !DIExpression()) #11, !dbg !899
  call void @llvm.dbg.value(metadata i8** %76, metadata !815, metadata !DIExpression()) #11, !dbg !899
  %165 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.37, i64 0, i64 0), i32 5) #11, !dbg !1039
  %166 = load i8*, i8** %76, align 8, !dbg !1039, !tbaa !752
  %167 = call i8* @quote(i8* %166) #11, !dbg !1039
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %165, i8* %167) #11, !dbg !1039
  unreachable, !dbg !1039

; <label>:168:                                    ; preds = %147, %168
  %169 = phi i8* [ %171, %168 ], [ %136, %147 ]
  %170 = phi i64 [ %172, %168 ], [ %135, %147 ]
  call void @llvm.dbg.value(metadata i8* %169, metadata !817, metadata !DIExpression()) #11, !dbg !904
  call void @llvm.dbg.value(metadata i64 %170, metadata !819, metadata !DIExpression()) #11, !dbg !912
  %171 = getelementptr inbounds i8, i8* %169, i64 1, !dbg !1040
  %172 = add i64 %170, 1, !dbg !1042
  call void @llvm.dbg.value(metadata i8* %171, metadata !817, metadata !DIExpression()) #11, !dbg !904
  call void @llvm.dbg.value(metadata i64 %172, metadata !819, metadata !DIExpression()) #11, !dbg !912
  %173 = load i8, i8* %171, align 1, !dbg !1024, !tbaa !906
  %174 = sext i8 %173 to i32, !dbg !1024
  %175 = add nsw i32 %174, -48, !dbg !1024
  %176 = icmp ult i32 %175, 10, !dbg !1024
  br i1 %176, label %168, label %182, !dbg !1025, !llvm.loop !1043

; <label>:177:                                    ; preds = %160, %151
  %178 = phi i32 [ 0, %151 ], [ %161, %160 ]
  %179 = phi i8** [ %76, %151 ], [ %162, %160 ]
  %180 = phi i32 [ %75, %151 ], [ %163, %160 ]
  %181 = load i8, i8* %152, align 1, !dbg !1046, !tbaa !906
  br label %182, !dbg !1046

; <label>:182:                                    ; preds = %168, %177, %147
  %183 = phi i8 [ %181, %177 ], [ %137, %147 ], [ %173, %168 ], !dbg !1046
  %184 = phi i64 [ %153, %177 ], [ %135, %147 ], [ %172, %168 ], !dbg !1047
  %185 = phi i1 [ true, %177 ], [ false, %147 ], [ false, %168 ]
  %186 = phi i32 [ %178, %177 ], [ %79, %147 ], [ %79, %168 ], !dbg !1048
  %187 = phi i8* [ %152, %177 ], [ %136, %147 ], [ %171, %168 ], !dbg !1047
  %188 = phi i8** [ %179, %177 ], [ %76, %147 ], [ %76, %168 ]
  %189 = phi i32 [ %180, %177 ], [ %75, %147 ], [ %75, %168 ]
  call void @llvm.dbg.value(metadata i32 %189, metadata !814, metadata !DIExpression()) #11, !dbg !898
  call void @llvm.dbg.value(metadata i8** %188, metadata !815, metadata !DIExpression()) #11, !dbg !899
  call void @llvm.dbg.value(metadata i8* %187, metadata !817, metadata !DIExpression()) #11, !dbg !904
  call void @llvm.dbg.value(metadata i32 %186, metadata !821, metadata !DIExpression()) #11, !dbg !901
  call void @llvm.dbg.value(metadata i64 %184, metadata !819, metadata !DIExpression()) #11, !dbg !912
  %190 = icmp eq i8 %183, 46, !dbg !1049
  br i1 %190, label %191, label %231, !dbg !1050

; <label>:191:                                    ; preds = %182
  %192 = getelementptr inbounds i8, i8* %187, i64 1, !dbg !1051
  call void @llvm.dbg.value(metadata i8* %192, metadata !817, metadata !DIExpression()) #11, !dbg !904
  call void @llvm.dbg.value(metadata i64 %184, metadata !819, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #11, !dbg !912
  store i8 0, i8* %63, align 1, !dbg !1052, !tbaa !906
  %193 = load i8, i8* %192, align 1, !dbg !1053, !tbaa !906
  %194 = icmp eq i8 %193, 42, !dbg !1054
  br i1 %194, label %202, label %195, !dbg !1055

; <label>:195:                                    ; preds = %191
  %196 = add i64 %184, 1, !dbg !1056
  call void @llvm.dbg.value(metadata i8* %192, metadata !817, metadata !DIExpression()) #11, !dbg !904
  call void @llvm.dbg.value(metadata i64 %196, metadata !819, metadata !DIExpression()) #11, !dbg !912
  %197 = sext i8 %193 to i32, !dbg !1058
  %198 = add nsw i32 %197, -48, !dbg !1058
  %199 = icmp ult i32 %198, 10, !dbg !1058
  call void @llvm.dbg.value(metadata i64 %196, metadata !819, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #11, !dbg !912
  br i1 %199, label %200, label %231, !dbg !1059, !llvm.loop !1060

; <label>:200:                                    ; preds = %195
  %201 = getelementptr inbounds i8, i8* %187, i64 2, !dbg !1063
  call void @llvm.dbg.value(metadata i8* %201, metadata !817, metadata !DIExpression()) #11, !dbg !904
  br label %222, !dbg !1058

; <label>:202:                                    ; preds = %191
  %203 = getelementptr inbounds i8, i8* %187, i64 2, !dbg !1064
  call void @llvm.dbg.value(metadata i8* %203, metadata !817, metadata !DIExpression()) #11, !dbg !904
  %204 = add i64 %184, 2, !dbg !1065
  call void @llvm.dbg.value(metadata i64 %204, metadata !819, metadata !DIExpression()) #11, !dbg !912
  %205 = icmp sgt i32 %189, 0, !dbg !1066
  br i1 %205, label %206, label %231, !dbg !1067

; <label>:206:                                    ; preds = %202
  %207 = load i8*, i8** %188, align 8, !dbg !1068, !tbaa !752
  %208 = call fastcc i64 @vstrtoimax(i8* %207) #11, !dbg !1069
  call void @llvm.dbg.value(metadata i64 %208, metadata !836, metadata !DIExpression()) #11, !dbg !1070
  %209 = icmp slt i64 %208, 0, !dbg !1071
  br i1 %209, label %218, label %210, !dbg !1073

; <label>:210:                                    ; preds = %206
  %211 = icmp sgt i64 %208, 2147483647, !dbg !1074
  br i1 %211, label %212, label %216, !dbg !1076

; <label>:212:                                    ; preds = %210
  call void @llvm.dbg.value(metadata i8** %188, metadata !815, metadata !DIExpression()) #11, !dbg !899
  call void @llvm.dbg.value(metadata i8** %188, metadata !815, metadata !DIExpression()) #11, !dbg !899
  call void @llvm.dbg.value(metadata i8** %188, metadata !815, metadata !DIExpression()) #11, !dbg !899
  call void @llvm.dbg.value(metadata i8** %188, metadata !815, metadata !DIExpression()) #11, !dbg !899
  call void @llvm.dbg.value(metadata i8** %188, metadata !815, metadata !DIExpression()) #11, !dbg !899
  call void @llvm.dbg.value(metadata i8** %188, metadata !815, metadata !DIExpression()) #11, !dbg !899
  call void @llvm.dbg.value(metadata i8** %188, metadata !815, metadata !DIExpression()) #11, !dbg !899
  call void @llvm.dbg.value(metadata i8** %188, metadata !815, metadata !DIExpression()) #11, !dbg !899
  call void @llvm.dbg.value(metadata i8** %188, metadata !815, metadata !DIExpression()) #11, !dbg !899
  %213 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.38, i64 0, i64 0), i32 5) #11, !dbg !1077
  %214 = load i8*, i8** %188, align 8, !dbg !1077, !tbaa !752
  %215 = call i8* @quote(i8* %214) #11, !dbg !1077
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %213, i8* %215) #11, !dbg !1077
  unreachable, !dbg !1077

; <label>:216:                                    ; preds = %210
  %217 = trunc i64 %208 to i32, !dbg !1078
  call void @llvm.dbg.value(metadata i32 %217, metadata !823, metadata !DIExpression()) #11, !dbg !902
  br label %218

; <label>:218:                                    ; preds = %216, %206
  %219 = phi i32 [ %217, %216 ], [ -1, %206 ], !dbg !1079
  call void @llvm.dbg.value(metadata i32 %219, metadata !823, metadata !DIExpression()) #11, !dbg !902
  %220 = getelementptr inbounds i8*, i8** %188, i64 1, !dbg !1080
  call void @llvm.dbg.value(metadata i8** %220, metadata !815, metadata !DIExpression()) #11, !dbg !899
  %221 = add nsw i32 %189, -1, !dbg !1081
  call void @llvm.dbg.value(metadata i32 %221, metadata !814, metadata !DIExpression()) #11, !dbg !898
  br label %231, !dbg !1082

; <label>:222:                                    ; preds = %200, %222
  %223 = phi i8* [ %230, %222 ], [ %201, %200 ]
  %224 = phi i64 [ %226, %222 ], [ %196, %200 ]
  %225 = load i8, i8* %223, align 1, !dbg !1058, !tbaa !906
  %226 = add i64 %224, 1, !dbg !1056
  call void @llvm.dbg.value(metadata i8* %223, metadata !817, metadata !DIExpression()) #11, !dbg !904
  call void @llvm.dbg.value(metadata i64 %226, metadata !819, metadata !DIExpression()) #11, !dbg !912
  %227 = sext i8 %225 to i32, !dbg !1058
  %228 = add nsw i32 %227, -48, !dbg !1058
  %229 = icmp ult i32 %228, 10, !dbg !1058
  %230 = getelementptr inbounds i8, i8* %223, i64 1, !dbg !1063
  call void @llvm.dbg.value(metadata i8* %230, metadata !817, metadata !DIExpression()) #11, !dbg !904
  call void @llvm.dbg.value(metadata i64 %226, metadata !819, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #11, !dbg !912
  br i1 %229, label %222, label %231, !dbg !1059, !llvm.loop !1060

; <label>:231:                                    ; preds = %222, %195, %218, %202, %182
  %232 = phi i64 [ %184, %182 ], [ %204, %202 ], [ %204, %218 ], [ %196, %195 ], [ %226, %222 ], !dbg !1083
  %233 = phi i1 [ false, %182 ], [ true, %202 ], [ true, %218 ], [ false, %195 ], [ false, %222 ]
  %234 = phi i32 [ %78, %182 ], [ 0, %202 ], [ %219, %218 ], [ %78, %195 ], [ %78, %222 ], !dbg !1048
  %235 = phi i8* [ %187, %182 ], [ %203, %202 ], [ %203, %218 ], [ %192, %195 ], [ %223, %222 ], !dbg !1083
  %236 = phi i8** [ %188, %182 ], [ %188, %202 ], [ %220, %218 ], [ %188, %195 ], [ %188, %222 ], !dbg !1084
  %237 = phi i32 [ %189, %182 ], [ %189, %202 ], [ %221, %218 ], [ %189, %195 ], [ %189, %222 ], !dbg !1084
  call void @llvm.dbg.value(metadata i32 %237, metadata !814, metadata !DIExpression()) #11, !dbg !898
  call void @llvm.dbg.value(metadata i8** %236, metadata !815, metadata !DIExpression()) #11, !dbg !899
  call void @llvm.dbg.value(metadata i8* %235, metadata !817, metadata !DIExpression()) #11, !dbg !904
  call void @llvm.dbg.value(metadata i32 %234, metadata !823, metadata !DIExpression()) #11, !dbg !902
  call void @llvm.dbg.value(metadata i64 %232, metadata !819, metadata !DIExpression()) #11, !dbg !912
  br label %238, !dbg !1085

; <label>:238:                                    ; preds = %241, %231
  %239 = phi i8* [ %235, %231 ], [ %242, %241 ], !dbg !1047
  call void @llvm.dbg.value(metadata i8* %239, metadata !817, metadata !DIExpression()) #11, !dbg !904
  %240 = load i8, i8* %239, align 1, !dbg !1086, !tbaa !906
  switch i8 %240, label %243 [
    i8 108, label %241
    i8 76, label %241
    i8 104, label %241
    i8 106, label %241
    i8 116, label %241
    i8 122, label %241
  ], !dbg !1087

; <label>:241:                                    ; preds = %238, %238, %238, %238, %238, %238
  %242 = getelementptr inbounds i8, i8* %239, i64 1, !dbg !1088
  call void @llvm.dbg.value(metadata i8* %242, metadata !817, metadata !DIExpression()) #11, !dbg !904
  br label %238, !dbg !1085, !llvm.loop !1089

; <label>:243:                                    ; preds = %238
  call void @llvm.dbg.value(metadata i8* %239, metadata !817, metadata !DIExpression()) #11, !dbg !904
  call void @llvm.dbg.value(metadata i8* %239, metadata !817, metadata !DIExpression()) #11, !dbg !904
  call void @llvm.dbg.value(metadata i8* %239, metadata !817, metadata !DIExpression()) #11, !dbg !904
  call void @llvm.dbg.value(metadata i8* %239, metadata !817, metadata !DIExpression()) #11, !dbg !904
  call void @llvm.dbg.value(metadata i8* %239, metadata !817, metadata !DIExpression()) #11, !dbg !904
  call void @llvm.dbg.value(metadata i8* %239, metadata !817, metadata !DIExpression()) #11, !dbg !904
  call void @llvm.dbg.value(metadata i8* %239, metadata !817, metadata !DIExpression()) #11, !dbg !904
  call void @llvm.dbg.value(metadata i8* %239, metadata !817, metadata !DIExpression()) #11, !dbg !904
  call void @llvm.dbg.value(metadata i8* %239, metadata !817, metadata !DIExpression()) #11, !dbg !904
  call void @llvm.dbg.value(metadata i8 %240, metadata !843, metadata !DIExpression()) #11, !dbg !1092
  %244 = zext i8 %240 to i64, !dbg !1093
  %245 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 %244, !dbg !1093
  %246 = load i8, i8* %245, align 1, !dbg !1093, !tbaa !906
  %247 = icmp eq i8 %246, 0, !dbg !1093
  br i1 %247, label %248, label %255, !dbg !1095

; <label>:248:                                    ; preds = %243
  call void @llvm.dbg.value(metadata i8* %77, metadata !817, metadata !DIExpression()) #11, !dbg !904
  call void @llvm.dbg.value(metadata i8* %239, metadata !817, metadata !DIExpression()) #11, !dbg !904
  call void @llvm.dbg.value(metadata i8* %77, metadata !817, metadata !DIExpression()) #11, !dbg !904
  call void @llvm.dbg.value(metadata i8* %239, metadata !817, metadata !DIExpression()) #11, !dbg !904
  call void @llvm.dbg.value(metadata i8* %77, metadata !817, metadata !DIExpression()) #11, !dbg !904
  call void @llvm.dbg.value(metadata i8* %239, metadata !817, metadata !DIExpression()) #11, !dbg !904
  call void @llvm.dbg.value(metadata i8* %77, metadata !817, metadata !DIExpression()) #11, !dbg !904
  call void @llvm.dbg.value(metadata i8* %239, metadata !817, metadata !DIExpression()) #11, !dbg !904
  call void @llvm.dbg.value(metadata i8* %77, metadata !817, metadata !DIExpression()) #11, !dbg !904
  call void @llvm.dbg.value(metadata i8* %239, metadata !817, metadata !DIExpression()) #11, !dbg !904
  call void @llvm.dbg.value(metadata i8* %77, metadata !817, metadata !DIExpression()) #11, !dbg !904
  call void @llvm.dbg.value(metadata i8* %239, metadata !817, metadata !DIExpression()) #11, !dbg !904
  call void @llvm.dbg.value(metadata i8* %77, metadata !817, metadata !DIExpression()) #11, !dbg !904
  call void @llvm.dbg.value(metadata i8* %239, metadata !817, metadata !DIExpression()) #11, !dbg !904
  call void @llvm.dbg.value(metadata i8* %77, metadata !817, metadata !DIExpression()) #11, !dbg !904
  call void @llvm.dbg.value(metadata i8* %239, metadata !817, metadata !DIExpression()) #11, !dbg !904
  call void @llvm.dbg.value(metadata i8* %77, metadata !817, metadata !DIExpression()) #11, !dbg !904
  call void @llvm.dbg.value(metadata i8* %239, metadata !817, metadata !DIExpression()) #11, !dbg !904
  %249 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.39, i64 0, i64 0), i32 5) #11, !dbg !1096
  %250 = getelementptr inbounds i8, i8* %239, i64 1, !dbg !1096
  %251 = ptrtoint i8* %250 to i64, !dbg !1096
  %252 = ptrtoint i8* %77 to i64, !dbg !1096
  %253 = sub i64 %251, %252, !dbg !1096
  %254 = trunc i64 %253 to i32, !dbg !1096
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %249, i32 %254, i8* %77) #11, !dbg !1096
  unreachable, !dbg !1096

; <label>:255:                                    ; preds = %243
  %256 = icmp slt i32 %237, 1, !dbg !1097
  br i1 %256, label %261, label %257, !dbg !1098

; <label>:257:                                    ; preds = %255
  %258 = add nsw i32 %237, -1, !dbg !1099
  call void @llvm.dbg.value(metadata i32 %258, metadata !814, metadata !DIExpression()) #11, !dbg !898
  %259 = getelementptr inbounds i8*, i8** %236, i64 1, !dbg !1100
  call void @llvm.dbg.value(metadata i8** %259, metadata !815, metadata !DIExpression()) #11, !dbg !899
  %260 = load i8*, i8** %236, align 8, !dbg !1101, !tbaa !752
  br label %261, !dbg !1098

; <label>:261:                                    ; preds = %257, %255
  %262 = phi i8** [ %236, %255 ], [ %259, %257 ], !dbg !1047
  %263 = phi i32 [ %237, %255 ], [ %258, %257 ], !dbg !1047
  %264 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), %255 ], [ %260, %257 ], !dbg !1098
  call void @llvm.dbg.value(metadata i32 %263, metadata !814, metadata !DIExpression()) #11, !dbg !898
  call void @llvm.dbg.value(metadata i8** %262, metadata !815, metadata !DIExpression()) #11, !dbg !899
  call void @llvm.dbg.value(metadata i8* %77, metadata !1102, metadata !DIExpression()) #11, !dbg !1129
  call void @llvm.dbg.value(metadata i64 %232, metadata !1107, metadata !DIExpression()) #11, !dbg !1131
  call void @llvm.dbg.value(metadata i8 %240, metadata !1108, metadata !DIExpression()) #11, !dbg !1132
  call void @llvm.dbg.value(metadata i1 %185, metadata !1109, metadata !DIExpression()) #11, !dbg !1133
  call void @llvm.dbg.value(metadata i32 %186, metadata !1110, metadata !DIExpression()) #11, !dbg !1134
  call void @llvm.dbg.value(metadata i1 %233, metadata !1111, metadata !DIExpression()) #11, !dbg !1135
  call void @llvm.dbg.value(metadata i32 %234, metadata !1112, metadata !DIExpression()) #11, !dbg !1136
  call void @llvm.dbg.value(metadata i8* %264, metadata !1113, metadata !DIExpression()) #11, !dbg !1137
  %265 = sext i8 %240 to i32, !dbg !1138
  switch i32 %265, label %267 [
    i32 100, label %268
    i32 105, label %268
    i32 111, label %268
    i32 117, label %268
    i32 120, label %268
    i32 88, label %268
    i32 97, label %266
    i32 101, label %266
    i32 102, label %266
    i32 103, label %266
    i32 65, label %266
    i32 69, label %266
    i32 70, label %266
    i32 71, label %266
  ], !dbg !1139

; <label>:266:                                    ; preds = %261, %261, %261, %261, %261, %261, %261, %261
  call void @llvm.dbg.value(metadata i64 1, metadata !1118, metadata !DIExpression()) #11, !dbg !1140
  br label %268, !dbg !1141

; <label>:267:                                    ; preds = %261
  call void @llvm.dbg.value(metadata i8* %77, metadata !1117, metadata !DIExpression()) #11, !dbg !1143
  call void @llvm.dbg.value(metadata i64 0, metadata !1118, metadata !DIExpression()) #11, !dbg !1140
  br label %268, !dbg !1144

; <label>:268:                                    ; preds = %267, %266, %261, %261, %261, %261, %261, %261
  %269 = phi i64 [ 0, %267 ], [ 1, %266 ], [ 1, %261 ], [ 1, %261 ], [ 1, %261 ], [ 1, %261 ], [ 1, %261 ], [ 1, %261 ], !dbg !1145
  %270 = phi i8* [ %77, %267 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i64 0, i64 0), %266 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i64 0, i64 0), %261 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i64 0, i64 0), %261 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i64 0, i64 0), %261 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i64 0, i64 0), %261 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i64 0, i64 0), %261 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i64 0, i64 0), %261 ], !dbg !1145
  call void @llvm.dbg.value(metadata i8* %270, metadata !1117, metadata !DIExpression()) #11, !dbg !1143
  call void @llvm.dbg.value(metadata i64 %269, metadata !1118, metadata !DIExpression()) #11, !dbg !1140
  %271 = add i64 %232, 2, !dbg !1146
  %272 = add i64 %271, %269, !dbg !1147
  %273 = call noalias i8* @xmalloc(i64 %272) #11, !dbg !1148
  call void @llvm.dbg.value(metadata i8* %273, metadata !1114, metadata !DIExpression()) #11, !dbg !1149
  call void @llvm.dbg.value(metadata i8* %273, metadata !1150, metadata !DIExpression()) #11, !dbg !1162
  call void @llvm.dbg.value(metadata i8* %77, metadata !1160, metadata !DIExpression()) #11, !dbg !1162
  call void @llvm.dbg.value(metadata i64 %232, metadata !1161, metadata !DIExpression()) #11, !dbg !1162
  %274 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %273, i1 false, i1 true) #11, !dbg !1164
  %275 = call i8* @__mempcpy_chk(i8* nonnull %273, i8* nonnull %77, i64 %232, i64 %274) #11, !dbg !1165
  call void @llvm.dbg.value(metadata i8* %275, metadata !1115, metadata !DIExpression()) #11, !dbg !1166
  call void @llvm.dbg.value(metadata i8* %275, metadata !1150, metadata !DIExpression()) #11, !dbg !1167
  call void @llvm.dbg.value(metadata i8* %270, metadata !1160, metadata !DIExpression()) #11, !dbg !1167
  call void @llvm.dbg.value(metadata i64 %269, metadata !1161, metadata !DIExpression()) #11, !dbg !1167
  %276 = call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %275, i1 false, i1 true) #11, !dbg !1169
  %277 = call i8* @__mempcpy_chk(i8* nonnull %275, i8* nonnull %270, i64 %269, i64 %276) #11, !dbg !1170
  call void @llvm.dbg.value(metadata i8* %277, metadata !1115, metadata !DIExpression()) #11, !dbg !1166
  %278 = getelementptr inbounds i8, i8* %277, i64 1, !dbg !1171
  call void @llvm.dbg.value(metadata i8* %278, metadata !1115, metadata !DIExpression()) #11, !dbg !1166
  store i8 %240, i8* %277, align 1, !dbg !1172, !tbaa !906
  store i8 0, i8* %278, align 1, !dbg !1173, !tbaa !906
  switch i32 %265, label %373 [
    i32 100, label %279
    i32 105, label %279
    i32 111, label %291
    i32 117, label %291
    i32 120, label %291
    i32 88, label %291
    i32 97, label %323
    i32 65, label %323
    i32 101, label %323
    i32 69, label %323
    i32 102, label %323
    i32 70, label %323
    i32 103, label %323
    i32 71, label %323
    i32 99, label %355
    i32 115, label %362
  ], !dbg !1174

; <label>:279:                                    ; preds = %268, %268
  %280 = call fastcc i64 @vstrtoimax(i8* %264) #11, !dbg !1175
  call void @llvm.dbg.value(metadata i64 %280, metadata !1119, metadata !DIExpression()) #11, !dbg !1176
  br i1 %185, label %286, label %281, !dbg !1177

; <label>:281:                                    ; preds = %279
  br i1 %233, label %284, label %282, !dbg !1178

; <label>:282:                                    ; preds = %281
  %283 = call i32 (i8*, ...) @xprintf(i8* nonnull %273, i64 %280) #11, !dbg !1181
  br label %373, !dbg !1181

; <label>:284:                                    ; preds = %281
  %285 = call i32 (i8*, ...) @xprintf(i8* nonnull %273, i32 %234, i64 %280) #11, !dbg !1183
  br label %373

; <label>:286:                                    ; preds = %279
  br i1 %233, label %289, label %287, !dbg !1184

; <label>:287:                                    ; preds = %286
  %288 = call i32 (i8*, ...) @xprintf(i8* nonnull %273, i32 %186, i64 %280) #11, !dbg !1186
  br label %373, !dbg !1186

; <label>:289:                                    ; preds = %286
  %290 = call i32 (i8*, ...) @xprintf(i8* nonnull %273, i32 %186, i32 %234, i64 %280) #11, !dbg !1188
  br label %373

; <label>:291:                                    ; preds = %268, %268, %268, %268
  call void @llvm.dbg.value(metadata i8* %264, metadata !1189, metadata !DIExpression()) #11, !dbg !1199
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %66) #11, !dbg !1199
  %292 = load i8, i8* %264, align 1, !dbg !1201, !tbaa !906
  switch i8 %292, label %307 [
    i8 34, label %293
    i8 39, label %293
  ], !dbg !1201

; <label>:293:                                    ; preds = %291, %291
  %294 = getelementptr inbounds i8, i8* %264, i64 1, !dbg !1201
  %295 = load i8, i8* %294, align 1, !dbg !1201, !tbaa !906
  %296 = icmp eq i8 %295, 0, !dbg !1201
  br i1 %296, label %307, label %297, !dbg !1199

; <label>:297:                                    ; preds = %293
  call void @llvm.dbg.value(metadata i8* %294, metadata !1189, metadata !DIExpression()) #11, !dbg !1199
  call void @llvm.dbg.value(metadata i8 %295, metadata !1196, metadata !DIExpression()) #11, !dbg !1202
  %298 = zext i8 %295 to i64, !dbg !1202
  call void @llvm.dbg.value(metadata i64 %298, metadata !1195, metadata !DIExpression()) #11, !dbg !1199
  %299 = getelementptr inbounds i8, i8* %264, i64 2, !dbg !1203
  call void @llvm.dbg.value(metadata i8* %299, metadata !1189, metadata !DIExpression()) #11, !dbg !1199
  %300 = load i8, i8* %299, align 1, !dbg !1203, !tbaa !906
  %301 = icmp ne i8 %300, 0, !dbg !1203
  %302 = load i8, i8* @posixly_correct, align 1, !dbg !1203
  %303 = icmp eq i8 %302, 0, !dbg !1203
  %304 = and i1 %301, %303, !dbg !1203
  br i1 %304, label %305, label %311, !dbg !1203

; <label>:305:                                    ; preds = %297
  %306 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.40, i64 0, i64 0), i32 5) #11, !dbg !1203
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %306, i8* nonnull %299) #11, !dbg !1203
  br label %311, !dbg !1203

; <label>:307:                                    ; preds = %293, %291
  %308 = tail call i32* @__errno_location() #17, !dbg !1205
  store i32 0, i32* %308, align 4, !dbg !1205, !tbaa !1207
  call void @llvm.dbg.value(metadata i8** %4, metadata !1194, metadata !DIExpression(DW_OP_deref)) #11, !dbg !1199
  call void @llvm.dbg.value(metadata i8* %264, metadata !1208, metadata !DIExpression()) #11, !dbg !1218
  call void @llvm.dbg.value(metadata i8** %4, metadata !1216, metadata !DIExpression()) #11, !dbg !1218
  call void @llvm.dbg.value(metadata i32 0, metadata !1217, metadata !DIExpression()) #11, !dbg !1218
  %309 = call i64 @__strtoul_internal(i8* nonnull %264, i8** nonnull %4, i32 0, i32 0) #11, !dbg !1220
  call void @llvm.dbg.value(metadata i64 %309, metadata !1195, metadata !DIExpression()) #11, !dbg !1199
  %310 = load i8*, i8** %4, align 8, !dbg !1205, !tbaa !752
  call void @llvm.dbg.value(metadata i8* %310, metadata !1194, metadata !DIExpression()) #11, !dbg !1199
  call fastcc void @verify_numeric(i8* nonnull %264, i8* %310) #11, !dbg !1205
  br label %311

; <label>:311:                                    ; preds = %307, %305, %297
  %312 = phi i64 [ %309, %307 ], [ %298, %297 ], [ %298, %305 ], !dbg !1202
  call void @llvm.dbg.value(metadata i64 %312, metadata !1195, metadata !DIExpression()) #11, !dbg !1199
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %66) #11, !dbg !1199
  call void @llvm.dbg.value(metadata i64 %312, metadata !1122, metadata !DIExpression()) #11, !dbg !1221
  br i1 %185, label %318, label %313, !dbg !1222

; <label>:313:                                    ; preds = %311
  br i1 %233, label %316, label %314, !dbg !1223

; <label>:314:                                    ; preds = %313
  %315 = call i32 (i8*, ...) @xprintf(i8* nonnull %273, i64 %312) #11, !dbg !1226
  br label %373, !dbg !1226

; <label>:316:                                    ; preds = %313
  %317 = call i32 (i8*, ...) @xprintf(i8* nonnull %273, i32 %234, i64 %312) #11, !dbg !1228
  br label %373

; <label>:318:                                    ; preds = %311
  br i1 %233, label %321, label %319, !dbg !1229

; <label>:319:                                    ; preds = %318
  %320 = call i32 (i8*, ...) @xprintf(i8* nonnull %273, i32 %186, i64 %312) #11, !dbg !1231
  br label %373, !dbg !1231

; <label>:321:                                    ; preds = %318
  %322 = call i32 (i8*, ...) @xprintf(i8* nonnull %273, i32 %186, i32 %234, i64 %312) #11, !dbg !1233
  br label %373

; <label>:323:                                    ; preds = %268, %268, %268, %268, %268, %268, %268, %268
  call void @llvm.dbg.value(metadata i8* %264, metadata !1234, metadata !DIExpression()) #11, !dbg !1244
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %67) #11, !dbg !1244
  %324 = load i8, i8* %264, align 1, !dbg !1246, !tbaa !906
  switch i8 %324, label %339 [
    i8 34, label %325
    i8 39, label %325
  ], !dbg !1246

; <label>:325:                                    ; preds = %323, %323
  %326 = getelementptr inbounds i8, i8* %264, i64 1, !dbg !1246
  %327 = load i8, i8* %326, align 1, !dbg !1246, !tbaa !906
  %328 = icmp eq i8 %327, 0, !dbg !1246
  br i1 %328, label %339, label %329, !dbg !1244

; <label>:329:                                    ; preds = %325
  call void @llvm.dbg.value(metadata i8* %326, metadata !1234, metadata !DIExpression()) #11, !dbg !1244
  call void @llvm.dbg.value(metadata i8 %327, metadata !1241, metadata !DIExpression()) #11, !dbg !1247
  %330 = uitofp i8 %327 to x86_fp80, !dbg !1247
  call void @llvm.dbg.value(metadata x86_fp80 %330, metadata !1240, metadata !DIExpression()) #11, !dbg !1244
  %331 = getelementptr inbounds i8, i8* %264, i64 2, !dbg !1248
  call void @llvm.dbg.value(metadata i8* %331, metadata !1234, metadata !DIExpression()) #11, !dbg !1244
  %332 = load i8, i8* %331, align 1, !dbg !1248, !tbaa !906
  %333 = icmp ne i8 %332, 0, !dbg !1248
  %334 = load i8, i8* @posixly_correct, align 1, !dbg !1248
  %335 = icmp eq i8 %334, 0, !dbg !1248
  %336 = and i1 %333, %335, !dbg !1248
  br i1 %336, label %337, label %343, !dbg !1248

; <label>:337:                                    ; preds = %329
  %338 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.40, i64 0, i64 0), i32 5) #11, !dbg !1248
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %338, i8* nonnull %331) #11, !dbg !1248
  br label %343, !dbg !1248

; <label>:339:                                    ; preds = %325, %323
  %340 = tail call i32* @__errno_location() #17, !dbg !1250
  store i32 0, i32* %340, align 4, !dbg !1250, !tbaa !1207
  call void @llvm.dbg.value(metadata i8** %3, metadata !1239, metadata !DIExpression(DW_OP_deref)) #11, !dbg !1244
  %341 = call x86_fp80 @c_strtold(i8* nonnull %264, i8** nonnull %3) #11, !dbg !1250
  call void @llvm.dbg.value(metadata x86_fp80 %341, metadata !1240, metadata !DIExpression()) #11, !dbg !1244
  %342 = load i8*, i8** %3, align 8, !dbg !1250, !tbaa !752
  call void @llvm.dbg.value(metadata i8* %342, metadata !1239, metadata !DIExpression()) #11, !dbg !1244
  call fastcc void @verify_numeric(i8* nonnull %264, i8* %342) #11, !dbg !1250
  br label %343

; <label>:343:                                    ; preds = %339, %337, %329
  %344 = phi x86_fp80 [ %341, %339 ], [ %330, %329 ], [ %330, %337 ], !dbg !1247
  call void @llvm.dbg.value(metadata x86_fp80 %344, metadata !1240, metadata !DIExpression()) #11, !dbg !1244
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %67) #11, !dbg !1244
  call void @llvm.dbg.value(metadata x86_fp80 %344, metadata !1126, metadata !DIExpression()) #11, !dbg !1252
  br i1 %185, label %350, label %345, !dbg !1253

; <label>:345:                                    ; preds = %343
  br i1 %233, label %348, label %346, !dbg !1254

; <label>:346:                                    ; preds = %345
  %347 = call i32 (i8*, ...) @xprintf(i8* nonnull %273, x86_fp80 %344) #11, !dbg !1257
  br label %373, !dbg !1257

; <label>:348:                                    ; preds = %345
  %349 = call i32 (i8*, ...) @xprintf(i8* nonnull %273, i32 %234, x86_fp80 %344) #11, !dbg !1259
  br label %373

; <label>:350:                                    ; preds = %343
  br i1 %233, label %353, label %351, !dbg !1260

; <label>:351:                                    ; preds = %350
  %352 = call i32 (i8*, ...) @xprintf(i8* nonnull %273, i32 %186, x86_fp80 %344) #11, !dbg !1262
  br label %373, !dbg !1262

; <label>:353:                                    ; preds = %350
  %354 = call i32 (i8*, ...) @xprintf(i8* nonnull %273, i32 %186, i32 %234, x86_fp80 %344) #11, !dbg !1264
  br label %373

; <label>:355:                                    ; preds = %268
  %356 = load i8, i8* %264, align 1, !dbg !1265, !tbaa !906
  %357 = sext i8 %356 to i32, !dbg !1265
  br i1 %185, label %360, label %358, !dbg !1267

; <label>:358:                                    ; preds = %355
  %359 = call i32 (i8*, ...) @xprintf(i8* nonnull %273, i32 %357) #11, !dbg !1268
  br label %373, !dbg !1268

; <label>:360:                                    ; preds = %355
  %361 = call i32 (i8*, ...) @xprintf(i8* nonnull %273, i32 %186, i32 %357) #11, !dbg !1269
  br label %373

; <label>:362:                                    ; preds = %268
  br i1 %185, label %368, label %363, !dbg !1270

; <label>:363:                                    ; preds = %362
  br i1 %233, label %366, label %364, !dbg !1271

; <label>:364:                                    ; preds = %363
  %365 = call i32 (i8*, ...) @xprintf(i8* nonnull %273, i8* %264) #11, !dbg !1274
  br label %373, !dbg !1274

; <label>:366:                                    ; preds = %363
  %367 = call i32 (i8*, ...) @xprintf(i8* nonnull %273, i32 %234, i8* %264) #11, !dbg !1276
  br label %373

; <label>:368:                                    ; preds = %362
  br i1 %233, label %371, label %369, !dbg !1277

; <label>:369:                                    ; preds = %368
  %370 = call i32 (i8*, ...) @xprintf(i8* nonnull %273, i32 %186, i8* %264) #11, !dbg !1279
  br label %373, !dbg !1279

; <label>:371:                                    ; preds = %368
  %372 = call i32 (i8*, ...) @xprintf(i8* nonnull %273, i32 %186, i32 %234, i8* %264) #11, !dbg !1281
  br label %373

; <label>:373:                                    ; preds = %371, %369, %366, %364, %360, %358, %353, %351, %348, %346, %321, %319, %316, %314, %289, %287, %284, %282, %268
  call void @free(i8* %273) #11, !dbg !1282
  br label %390, !dbg !1283

; <label>:374:                                    ; preds = %73
  %375 = call fastcc i32 @print_esc(i8* nonnull %77, i1 zeroext false) #11, !dbg !1284
  %376 = sext i32 %375 to i64, !dbg !1285
  %377 = getelementptr inbounds i8, i8* %77, i64 %376, !dbg !1285
  call void @llvm.dbg.value(metadata i8* %377, metadata !817, metadata !DIExpression()) #11, !dbg !904
  br label %390, !dbg !1286

; <label>:378:                                    ; preds = %73
  call void @llvm.dbg.value(metadata i32 %80, metadata !918, metadata !DIExpression()) #11, !dbg !1287
  %379 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1289, !tbaa !752
  %380 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %379, i64 0, i32 5, !dbg !1289
  %381 = load i8*, i8** %380, align 8, !dbg !1289, !tbaa !928
  %382 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %379, i64 0, i32 6, !dbg !1289
  %383 = load i8*, i8** %382, align 8, !dbg !1289, !tbaa !933
  %384 = icmp ult i8* %381, %383, !dbg !1289
  br i1 %384, label %388, label %385, !dbg !1289, !prof !934

; <label>:385:                                    ; preds = %378
  %386 = and i32 %80, 255, !dbg !1289
  %387 = call i32 @__overflow(%struct._IO_FILE* %379, i32 %386) #11, !dbg !1289
  br label %390, !dbg !1289

; <label>:388:                                    ; preds = %378
  %389 = getelementptr inbounds i8, i8* %381, i64 1, !dbg !1289
  store i8* %389, i8** %380, align 8, !dbg !1289, !tbaa !928
  store i8 %74, i8* %381, align 1, !dbg !1289, !tbaa !906
  br label %390, !dbg !1289

; <label>:390:                                    ; preds = %388, %385, %374, %373, %126, %124, %121, %95, %93, %91
  %391 = phi i32 [ %79, %374 ], [ %79, %121 ], [ %79, %95 ], [ %79, %126 ], [ %79, %124 ], [ %186, %373 ], [ %79, %91 ], [ %79, %93 ], [ %79, %385 ], [ %79, %388 ], !dbg !1290
  %392 = phi i32 [ %78, %374 ], [ %78, %121 ], [ %78, %95 ], [ %78, %126 ], [ %78, %124 ], [ %234, %373 ], [ %78, %91 ], [ %78, %93 ], [ %78, %385 ], [ %78, %388 ], !dbg !1291
  %393 = phi i8* [ %377, %374 ], [ %82, %121 ], [ %82, %95 ], [ %82, %126 ], [ %82, %124 ], [ %239, %373 ], [ %82, %91 ], [ %82, %93 ], [ %77, %385 ], [ %77, %388 ], !dbg !1293
  %394 = phi i8** [ %76, %374 ], [ %122, %121 ], [ %76, %95 ], [ %131, %126 ], [ %76, %124 ], [ %262, %373 ], [ %76, %91 ], [ %76, %93 ], [ %76, %385 ], [ %76, %388 ]
  %395 = phi i32 [ %75, %374 ], [ %123, %121 ], [ %75, %95 ], [ %132, %126 ], [ %75, %124 ], [ %263, %373 ], [ %75, %91 ], [ %75, %93 ], [ %75, %385 ], [ %75, %388 ]
  call void @llvm.dbg.value(metadata i8* %393, metadata !817, metadata !DIExpression()) #11, !dbg !904
  %396 = getelementptr inbounds i8, i8* %393, i64 1, !dbg !1294
  call void @llvm.dbg.value(metadata i32 %395, metadata !814, metadata !DIExpression()) #11, !dbg !898
  call void @llvm.dbg.value(metadata i8** %394, metadata !815, metadata !DIExpression()) #11, !dbg !899
  call void @llvm.dbg.value(metadata i8* %396, metadata !817, metadata !DIExpression()) #11, !dbg !904
  call void @llvm.dbg.value(metadata i32 %392, metadata !823, metadata !DIExpression()) #11, !dbg !902
  call void @llvm.dbg.value(metadata i32 %391, metadata !821, metadata !DIExpression()) #11, !dbg !901
  %397 = load i8, i8* %396, align 1, !dbg !905, !tbaa !906
  %398 = icmp eq i8 %397, 0, !dbg !907
  br i1 %398, label %399, label %73, !dbg !907, !llvm.loop !1295

; <label>:399:                                    ; preds = %390, %68
  %400 = phi i32 [ %70, %68 ], [ %395, %390 ]
  call void @llvm.dbg.value(metadata i32 %400, metadata !814, metadata !DIExpression()) #11, !dbg !898
  %401 = sub nsw i32 %70, %400, !dbg !1298
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %51) #11, !dbg !1299
  call void @llvm.dbg.value(metadata i32 %401, metadata !807, metadata !DIExpression()), !dbg !1300
  call void @llvm.dbg.value(metadata i32 %400, metadata !804, metadata !DIExpression()), !dbg !848
  %402 = sext i32 %401 to i64, !dbg !1301
  %403 = getelementptr inbounds i8*, i8** %69, i64 %402, !dbg !1301
  call void @llvm.dbg.value(metadata i8** %403, metadata !805, metadata !DIExpression()), !dbg !849
  %404 = icmp sgt i32 %401, 0, !dbg !1302
  %405 = icmp sgt i32 %400, 0, !dbg !1303
  %406 = and i1 %405, %404, !dbg !1304
  br i1 %406, label %68, label %407, !dbg !1305, !llvm.loop !1306

; <label>:407:                                    ; preds = %399
  br i1 %405, label %408, label %412, !dbg !1308

; <label>:408:                                    ; preds = %407
  %409 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.21, i64 0, i64 0), i32 5) #11, !dbg !1309
  %410 = load i8*, i8** %403, align 8, !dbg !1311, !tbaa !752
  %411 = call i8* @quote(i8* %410) #11, !dbg !1312
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %409, i8* %411) #11, !dbg !1313
  br label %412, !dbg !1313

; <label>:412:                                    ; preds = %408, %407
  %413 = load i1, i1* @exit_status, align 4
  %414 = zext i1 %413 to i32
  br label %415, !dbg !1314

; <label>:415:                                    ; preds = %412, %24
  %416 = phi i32 [ 0, %24 ], [ %414, %412 ], !dbg !1315
  ret i32 %416, !dbg !1316
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @getenv(i8* nocapture) local_unnamed_addr #5

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @print_esc(i8*, i1 zeroext) unnamed_addr #7 !dbg !1317 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1321, metadata !DIExpression()), !dbg !1333
  call void @llvm.dbg.value(metadata i1 %1, metadata !1322, metadata !DIExpression()), !dbg !1334
  %3 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1335
  call void @llvm.dbg.value(metadata i8* %3, metadata !1323, metadata !DIExpression()), !dbg !1336
  call void @llvm.dbg.value(metadata i32 0, metadata !1324, metadata !DIExpression()), !dbg !1337
  %4 = load i8, i8* %3, align 1, !dbg !1338, !tbaa !906
  %5 = icmp eq i8 %4, 120, !dbg !1339
  br i1 %5, label %6, label %51, !dbg !1340

; <label>:6:                                      ; preds = %2
  call void @llvm.dbg.value(metadata i32 0, metadata !1325, metadata !DIExpression()), !dbg !1341
  %7 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !1342
  call void @llvm.dbg.value(metadata i8* %7, metadata !1323, metadata !DIExpression()), !dbg !1336
  call void @llvm.dbg.value(metadata i32 0, metadata !1325, metadata !DIExpression()), !dbg !1341
  call void @llvm.dbg.value(metadata i32 0, metadata !1324, metadata !DIExpression()), !dbg !1337
  %8 = tail call i16** @__ctype_b_loc() #17, !dbg !1345
  %9 = load i16*, i16** %8, align 8, !tbaa !752
  call void @llvm.dbg.value(metadata i8* %7, metadata !1323, metadata !DIExpression()), !dbg !1336
  call void @llvm.dbg.value(metadata i32 0, metadata !1325, metadata !DIExpression()), !dbg !1341
  call void @llvm.dbg.value(metadata i32 0, metadata !1324, metadata !DIExpression()), !dbg !1337
  %10 = load i8, i8* %7, align 1, !dbg !1345, !tbaa !906
  %11 = zext i8 %10 to i64, !dbg !1345
  %12 = getelementptr inbounds i16, i16* %9, i64 %11, !dbg !1345
  %13 = load i16, i16* %12, align 2, !dbg !1345, !tbaa !1347
  %14 = and i16 %13, 4096, !dbg !1345
  %15 = icmp eq i16 %14, 0, !dbg !1348
  br i1 %15, label %34, label %16, !dbg !1349

; <label>:16:                                     ; preds = %6
  %17 = sext i8 %10 to i32, !dbg !1350
  %18 = add i8 %10, -97, !dbg !1350
  %19 = icmp ult i8 %18, 6, !dbg !1350
  br i1 %19, label %24, label %20, !dbg !1350

; <label>:20:                                     ; preds = %16
  %21 = add i8 %10, -65, !dbg !1350
  %22 = icmp ult i8 %21, 6, !dbg !1350
  %23 = select i1 %22, i32 -55, i32 -48, !dbg !1350
  br label %24, !dbg !1350

; <label>:24:                                     ; preds = %20, %16
  %25 = phi i32 [ -87, %16 ], [ %23, %20 ]
  %26 = add nsw i32 %25, %17, !dbg !1350
  %27 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !1351
  call void @llvm.dbg.value(metadata i8* %27, metadata !1323, metadata !DIExpression()), !dbg !1336
  call void @llvm.dbg.value(metadata i32 1, metadata !1325, metadata !DIExpression()), !dbg !1341
  call void @llvm.dbg.value(metadata i32 %26, metadata !1324, metadata !DIExpression()), !dbg !1337
  call void @llvm.dbg.value(metadata i8* %27, metadata !1323, metadata !DIExpression()), !dbg !1336
  call void @llvm.dbg.value(metadata i32 1, metadata !1325, metadata !DIExpression()), !dbg !1341
  call void @llvm.dbg.value(metadata i32 %26, metadata !1324, metadata !DIExpression()), !dbg !1337
  %28 = load i8, i8* %27, align 1, !dbg !1345, !tbaa !906
  %29 = zext i8 %28 to i64, !dbg !1345
  %30 = getelementptr inbounds i16, i16* %9, i64 %29, !dbg !1345
  %31 = load i16, i16* %30, align 2, !dbg !1345, !tbaa !1347
  %32 = and i16 %31, 4096, !dbg !1345
  %33 = icmp eq i16 %32, 0, !dbg !1348
  br i1 %33, label %36, label %273, !dbg !1349

; <label>:34:                                     ; preds = %6
  call void @llvm.dbg.value(metadata i32 0, metadata !1324, metadata !DIExpression()), !dbg !1337
  call void @llvm.dbg.value(metadata i32 0, metadata !1325, metadata !DIExpression()), !dbg !1341
  call void @llvm.dbg.value(metadata i8* %7, metadata !1323, metadata !DIExpression()), !dbg !1336
  %35 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.46, i64 0, i64 0), i32 5) #11, !dbg !1352
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %35) #11, !dbg !1352
  unreachable, !dbg !1352

; <label>:36:                                     ; preds = %24, %282
  %37 = phi i32 [ %285, %282 ], [ %26, %24 ]
  %38 = phi i8* [ %286, %282 ], [ %27, %24 ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !918, metadata !DIExpression()) #11, !dbg !1354
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1356, !tbaa !752
  %40 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %39, i64 0, i32 5, !dbg !1356
  %41 = load i8*, i8** %40, align 8, !dbg !1356, !tbaa !928
  %42 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %39, i64 0, i32 6, !dbg !1356
  %43 = load i8*, i8** %42, align 8, !dbg !1356, !tbaa !933
  %44 = icmp ult i8* %41, %43, !dbg !1356
  br i1 %44, label %48, label %45, !dbg !1356, !prof !934

; <label>:45:                                     ; preds = %36
  %46 = and i32 %37, 255, !dbg !1356
  %47 = tail call i32 @__overflow(%struct._IO_FILE* %39, i32 %46) #11, !dbg !1356
  br label %266, !dbg !1356

; <label>:48:                                     ; preds = %36
  %49 = trunc i32 %37 to i8, !dbg !1356
  %50 = getelementptr inbounds i8, i8* %41, i64 1, !dbg !1356
  store i8* %50, i8** %40, align 8, !dbg !1356, !tbaa !928
  store i8 %49, i8* %41, align 1, !dbg !1356, !tbaa !906
  br label %266, !dbg !1356

; <label>:51:                                     ; preds = %2
  %52 = and i8 %4, -8, !dbg !1357
  %53 = icmp eq i8 %52, 48, !dbg !1357
  br i1 %53, label %54, label %84, !dbg !1357

; <label>:54:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i32 0, metadata !1325, metadata !DIExpression()), !dbg !1341
  %55 = icmp eq i8 %4, 48, !dbg !1358
  %56 = and i1 %55, %1, !dbg !1361
  %57 = zext i1 %56 to i64, !dbg !1361
  %58 = getelementptr inbounds i8, i8* %3, i64 %57, !dbg !1362
  call void @llvm.dbg.value(metadata i8* %58, metadata !1323, metadata !DIExpression()), !dbg !1336
  call void @llvm.dbg.value(metadata i32 0, metadata !1325, metadata !DIExpression()), !dbg !1341
  call void @llvm.dbg.value(metadata i32 0, metadata !1324, metadata !DIExpression()), !dbg !1337
  call void @llvm.dbg.value(metadata i8* %58, metadata !1323, metadata !DIExpression()), !dbg !1336
  call void @llvm.dbg.value(metadata i32 0, metadata !1325, metadata !DIExpression()), !dbg !1341
  call void @llvm.dbg.value(metadata i32 0, metadata !1324, metadata !DIExpression()), !dbg !1337
  %59 = load i8, i8* %58, align 1, !dbg !1363, !tbaa !906
  %60 = and i8 %59, -8, !dbg !1363
  %61 = icmp eq i8 %60, 48, !dbg !1363
  br i1 %61, label %62, label %69, !dbg !1365

; <label>:62:                                     ; preds = %54
  %63 = sext i8 %59 to i32, !dbg !1366
  %64 = add nsw i32 %63, -48, !dbg !1367
  %65 = getelementptr inbounds i8, i8* %58, i64 1, !dbg !1368
  call void @llvm.dbg.value(metadata i8* %65, metadata !1323, metadata !DIExpression()), !dbg !1336
  call void @llvm.dbg.value(metadata i32 1, metadata !1325, metadata !DIExpression()), !dbg !1341
  call void @llvm.dbg.value(metadata i32 %64, metadata !1324, metadata !DIExpression()), !dbg !1337
  call void @llvm.dbg.value(metadata i8* %65, metadata !1323, metadata !DIExpression()), !dbg !1336
  call void @llvm.dbg.value(metadata i32 1, metadata !1325, metadata !DIExpression()), !dbg !1341
  call void @llvm.dbg.value(metadata i32 %64, metadata !1324, metadata !DIExpression()), !dbg !1337
  %66 = load i8, i8* %65, align 1, !dbg !1363, !tbaa !906
  %67 = and i8 %66, -8, !dbg !1363
  %68 = icmp eq i8 %67, 48, !dbg !1363
  br i1 %68, label %287, label %69, !dbg !1365

; <label>:69:                                     ; preds = %296, %287, %62, %54
  %70 = phi i32 [ 0, %54 ], [ %64, %62 ], [ %291, %287 ], [ %300, %296 ], !dbg !1369
  %71 = phi i8* [ %58, %54 ], [ %65, %62 ], [ %292, %287 ], [ %301, %296 ], !dbg !1369
  call void @llvm.dbg.value(metadata i32 %70, metadata !1324, metadata !DIExpression()), !dbg !1337
  call void @llvm.dbg.value(metadata i32 %70, metadata !1324, metadata !DIExpression()), !dbg !1337
  call void @llvm.dbg.value(metadata i8* %71, metadata !1323, metadata !DIExpression()), !dbg !1336
  call void @llvm.dbg.value(metadata i8* %71, metadata !1323, metadata !DIExpression()), !dbg !1336
  call void @llvm.dbg.value(metadata i32 undef, metadata !918, metadata !DIExpression()) #11, !dbg !1370
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1372, !tbaa !752
  %73 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %72, i64 0, i32 5, !dbg !1372
  %74 = load i8*, i8** %73, align 8, !dbg !1372, !tbaa !928
  %75 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %72, i64 0, i32 6, !dbg !1372
  %76 = load i8*, i8** %75, align 8, !dbg !1372, !tbaa !933
  %77 = icmp ult i8* %74, %76, !dbg !1372
  br i1 %77, label %81, label %78, !dbg !1372, !prof !934

; <label>:78:                                     ; preds = %69
  %79 = and i32 %70, 255, !dbg !1372
  %80 = tail call i32 @__overflow(%struct._IO_FILE* %72, i32 %79) #11, !dbg !1372
  br label %266, !dbg !1372

; <label>:81:                                     ; preds = %69
  %82 = trunc i32 %70 to i8, !dbg !1372
  %83 = getelementptr inbounds i8, i8* %74, i64 1, !dbg !1372
  store i8* %83, i8** %73, align 8, !dbg !1372, !tbaa !928
  store i8 %82, i8* %74, align 1, !dbg !1372, !tbaa !906
  br label %266, !dbg !1372

; <label>:84:                                     ; preds = %51
  %85 = icmp eq i8 %4, 0, !dbg !1373
  br i1 %85, label %238, label %86, !dbg !1374

; <label>:86:                                     ; preds = %84
  %87 = sext i8 %4 to i32, !dbg !1373
  %88 = tail call i8* @memchr(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i64 0, i64 0), i32 %87, i64 12), !dbg !1375
  %89 = icmp eq i8* %88, null, !dbg !1375
  br i1 %89, label %193, label %90, !dbg !1376

; <label>:90:                                     ; preds = %86
  %91 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !1377
  call void @llvm.dbg.value(metadata i8* %91, metadata !1323, metadata !DIExpression()), !dbg !1336
  call void @llvm.dbg.value(metadata i8 %4, metadata !1378, metadata !DIExpression()) #11, !dbg !1383
  switch i32 %87, label %181 [
    i32 97, label %92
    i32 98, label %103
    i32 99, label %114
    i32 101, label %115
    i32 102, label %126
    i32 110, label %137
    i32 114, label %148
    i32 116, label %159
    i32 118, label %170
  ], !dbg !1385

; <label>:92:                                     ; preds = %90
  call void @llvm.dbg.value(metadata i32 7, metadata !918, metadata !DIExpression()) #11, !dbg !1386
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1389, !tbaa !752
  %94 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %93, i64 0, i32 5, !dbg !1389
  %95 = load i8*, i8** %94, align 8, !dbg !1389, !tbaa !928
  %96 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %93, i64 0, i32 6, !dbg !1389
  %97 = load i8*, i8** %96, align 8, !dbg !1389, !tbaa !933
  %98 = icmp ult i8* %95, %97, !dbg !1389
  br i1 %98, label %101, label %99, !dbg !1389, !prof !934

; <label>:99:                                     ; preds = %92
  %100 = tail call i32 @__overflow(%struct._IO_FILE* %93, i32 7) #11, !dbg !1389
  br label %266, !dbg !1389

; <label>:101:                                    ; preds = %92
  %102 = getelementptr inbounds i8, i8* %95, i64 1, !dbg !1389
  store i8* %102, i8** %94, align 8, !dbg !1389, !tbaa !928
  store i8 7, i8* %95, align 1, !dbg !1389, !tbaa !906
  br label %266, !dbg !1389

; <label>:103:                                    ; preds = %90
  call void @llvm.dbg.value(metadata i32 8, metadata !918, metadata !DIExpression()) #11, !dbg !1390
  %104 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1392, !tbaa !752
  %105 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %104, i64 0, i32 5, !dbg !1392
  %106 = load i8*, i8** %105, align 8, !dbg !1392, !tbaa !928
  %107 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %104, i64 0, i32 6, !dbg !1392
  %108 = load i8*, i8** %107, align 8, !dbg !1392, !tbaa !933
  %109 = icmp ult i8* %106, %108, !dbg !1392
  br i1 %109, label %112, label %110, !dbg !1392, !prof !934

; <label>:110:                                    ; preds = %103
  %111 = tail call i32 @__overflow(%struct._IO_FILE* %104, i32 8) #11, !dbg !1392
  br label %266, !dbg !1392

; <label>:112:                                    ; preds = %103
  %113 = getelementptr inbounds i8, i8* %106, i64 1, !dbg !1392
  store i8* %113, i8** %105, align 8, !dbg !1392, !tbaa !928
  store i8 8, i8* %106, align 1, !dbg !1392, !tbaa !906
  br label %266, !dbg !1392

; <label>:114:                                    ; preds = %90
  tail call void @exit(i32 0) #15, !dbg !1393
  unreachable, !dbg !1393

; <label>:115:                                    ; preds = %90
  call void @llvm.dbg.value(metadata i32 27, metadata !918, metadata !DIExpression()) #11, !dbg !1394
  %116 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1396, !tbaa !752
  %117 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %116, i64 0, i32 5, !dbg !1396
  %118 = load i8*, i8** %117, align 8, !dbg !1396, !tbaa !928
  %119 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %116, i64 0, i32 6, !dbg !1396
  %120 = load i8*, i8** %119, align 8, !dbg !1396, !tbaa !933
  %121 = icmp ult i8* %118, %120, !dbg !1396
  br i1 %121, label %124, label %122, !dbg !1396, !prof !934

; <label>:122:                                    ; preds = %115
  %123 = tail call i32 @__overflow(%struct._IO_FILE* %116, i32 27) #11, !dbg !1396
  br label %266, !dbg !1396

; <label>:124:                                    ; preds = %115
  %125 = getelementptr inbounds i8, i8* %118, i64 1, !dbg !1396
  store i8* %125, i8** %117, align 8, !dbg !1396, !tbaa !928
  store i8 27, i8* %118, align 1, !dbg !1396, !tbaa !906
  br label %266, !dbg !1396

; <label>:126:                                    ; preds = %90
  call void @llvm.dbg.value(metadata i32 12, metadata !918, metadata !DIExpression()) #11, !dbg !1397
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1399, !tbaa !752
  %128 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %127, i64 0, i32 5, !dbg !1399
  %129 = load i8*, i8** %128, align 8, !dbg !1399, !tbaa !928
  %130 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %127, i64 0, i32 6, !dbg !1399
  %131 = load i8*, i8** %130, align 8, !dbg !1399, !tbaa !933
  %132 = icmp ult i8* %129, %131, !dbg !1399
  br i1 %132, label %135, label %133, !dbg !1399, !prof !934

; <label>:133:                                    ; preds = %126
  %134 = tail call i32 @__overflow(%struct._IO_FILE* %127, i32 12) #11, !dbg !1399
  br label %266, !dbg !1399

; <label>:135:                                    ; preds = %126
  %136 = getelementptr inbounds i8, i8* %129, i64 1, !dbg !1399
  store i8* %136, i8** %128, align 8, !dbg !1399, !tbaa !928
  store i8 12, i8* %129, align 1, !dbg !1399, !tbaa !906
  br label %266, !dbg !1399

; <label>:137:                                    ; preds = %90
  call void @llvm.dbg.value(metadata i32 10, metadata !918, metadata !DIExpression()) #11, !dbg !1400
  %138 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1402, !tbaa !752
  %139 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %138, i64 0, i32 5, !dbg !1402
  %140 = load i8*, i8** %139, align 8, !dbg !1402, !tbaa !928
  %141 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %138, i64 0, i32 6, !dbg !1402
  %142 = load i8*, i8** %141, align 8, !dbg !1402, !tbaa !933
  %143 = icmp ult i8* %140, %142, !dbg !1402
  br i1 %143, label %146, label %144, !dbg !1402, !prof !934

; <label>:144:                                    ; preds = %137
  %145 = tail call i32 @__overflow(%struct._IO_FILE* %138, i32 10) #11, !dbg !1402
  br label %266, !dbg !1402

; <label>:146:                                    ; preds = %137
  %147 = getelementptr inbounds i8, i8* %140, i64 1, !dbg !1402
  store i8* %147, i8** %139, align 8, !dbg !1402, !tbaa !928
  store i8 10, i8* %140, align 1, !dbg !1402, !tbaa !906
  br label %266, !dbg !1402

; <label>:148:                                    ; preds = %90
  call void @llvm.dbg.value(metadata i32 13, metadata !918, metadata !DIExpression()) #11, !dbg !1403
  %149 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1405, !tbaa !752
  %150 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %149, i64 0, i32 5, !dbg !1405
  %151 = load i8*, i8** %150, align 8, !dbg !1405, !tbaa !928
  %152 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %149, i64 0, i32 6, !dbg !1405
  %153 = load i8*, i8** %152, align 8, !dbg !1405, !tbaa !933
  %154 = icmp ult i8* %151, %153, !dbg !1405
  br i1 %154, label %157, label %155, !dbg !1405, !prof !934

; <label>:155:                                    ; preds = %148
  %156 = tail call i32 @__overflow(%struct._IO_FILE* %149, i32 13) #11, !dbg !1405
  br label %266, !dbg !1405

; <label>:157:                                    ; preds = %148
  %158 = getelementptr inbounds i8, i8* %151, i64 1, !dbg !1405
  store i8* %158, i8** %150, align 8, !dbg !1405, !tbaa !928
  store i8 13, i8* %151, align 1, !dbg !1405, !tbaa !906
  br label %266, !dbg !1405

; <label>:159:                                    ; preds = %90
  call void @llvm.dbg.value(metadata i32 9, metadata !918, metadata !DIExpression()) #11, !dbg !1406
  %160 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1408, !tbaa !752
  %161 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %160, i64 0, i32 5, !dbg !1408
  %162 = load i8*, i8** %161, align 8, !dbg !1408, !tbaa !928
  %163 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %160, i64 0, i32 6, !dbg !1408
  %164 = load i8*, i8** %163, align 8, !dbg !1408, !tbaa !933
  %165 = icmp ult i8* %162, %164, !dbg !1408
  br i1 %165, label %168, label %166, !dbg !1408, !prof !934

; <label>:166:                                    ; preds = %159
  %167 = tail call i32 @__overflow(%struct._IO_FILE* %160, i32 9) #11, !dbg !1408
  br label %266, !dbg !1408

; <label>:168:                                    ; preds = %159
  %169 = getelementptr inbounds i8, i8* %162, i64 1, !dbg !1408
  store i8* %169, i8** %161, align 8, !dbg !1408, !tbaa !928
  store i8 9, i8* %162, align 1, !dbg !1408, !tbaa !906
  br label %266, !dbg !1408

; <label>:170:                                    ; preds = %90
  call void @llvm.dbg.value(metadata i32 11, metadata !918, metadata !DIExpression()) #11, !dbg !1409
  %171 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1411, !tbaa !752
  %172 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %171, i64 0, i32 5, !dbg !1411
  %173 = load i8*, i8** %172, align 8, !dbg !1411, !tbaa !928
  %174 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %171, i64 0, i32 6, !dbg !1411
  %175 = load i8*, i8** %174, align 8, !dbg !1411, !tbaa !933
  %176 = icmp ult i8* %173, %175, !dbg !1411
  br i1 %176, label %179, label %177, !dbg !1411, !prof !934

; <label>:177:                                    ; preds = %170
  %178 = tail call i32 @__overflow(%struct._IO_FILE* %171, i32 11) #11, !dbg !1411
  br label %266, !dbg !1411

; <label>:179:                                    ; preds = %170
  %180 = getelementptr inbounds i8, i8* %173, i64 1, !dbg !1411
  store i8* %180, i8** %172, align 8, !dbg !1411, !tbaa !928
  store i8 11, i8* %173, align 1, !dbg !1411, !tbaa !906
  br label %266, !dbg !1411

; <label>:181:                                    ; preds = %90
  call void @llvm.dbg.value(metadata i32 %87, metadata !918, metadata !DIExpression()) #11, !dbg !1412
  %182 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1414, !tbaa !752
  %183 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %182, i64 0, i32 5, !dbg !1414
  %184 = load i8*, i8** %183, align 8, !dbg !1414, !tbaa !928
  %185 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %182, i64 0, i32 6, !dbg !1414
  %186 = load i8*, i8** %185, align 8, !dbg !1414, !tbaa !933
  %187 = icmp ult i8* %184, %186, !dbg !1414
  br i1 %187, label %191, label %188, !dbg !1414, !prof !934

; <label>:188:                                    ; preds = %181
  %189 = and i32 %87, 255, !dbg !1414
  %190 = tail call i32 @__overflow(%struct._IO_FILE* %182, i32 %189) #11, !dbg !1414
  br label %266, !dbg !1414

; <label>:191:                                    ; preds = %181
  %192 = getelementptr inbounds i8, i8* %184, i64 1, !dbg !1414
  store i8* %192, i8** %183, align 8, !dbg !1414, !tbaa !928
  store i8 %4, i8* %184, align 1, !dbg !1414, !tbaa !906
  br label %266, !dbg !1414

; <label>:193:                                    ; preds = %86
  switch i8 %4, label %238 [
    i8 117, label %194
    i8 85, label %194
  ], !dbg !1415

; <label>:194:                                    ; preds = %193, %193
  call void @llvm.dbg.value(metadata i8 %4, metadata !1326, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i32 0, metadata !1332, metadata !DIExpression()), !dbg !1417
  %195 = icmp eq i8 %4, 117, !dbg !1418
  %196 = select i1 %195, i32 4, i32 8, !dbg !1420
  call void @llvm.dbg.value(metadata i32 %196, metadata !1325, metadata !DIExpression()), !dbg !1341
  %197 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !1421
  call void @llvm.dbg.value(metadata i8* %197, metadata !1323, metadata !DIExpression()), !dbg !1336
  call void @llvm.dbg.value(metadata i32 0, metadata !1332, metadata !DIExpression()), !dbg !1417
  call void @llvm.dbg.value(metadata i32 %196, metadata !1325, metadata !DIExpression()), !dbg !1341
  %198 = tail call i16** @__ctype_b_loc() #17, !dbg !1422
  %199 = load i16*, i16** %198, align 8, !tbaa !752
  br label %200, !dbg !1426

; <label>:200:                                    ; preds = %194, %221
  %201 = phi i32 [ 0, %194 ], [ %224, %221 ]
  %202 = phi i8* [ %197, %194 ], [ %226, %221 ]
  %203 = phi i32 [ %196, %194 ], [ %225, %221 ]
  call void @llvm.dbg.value(metadata i32 %201, metadata !1332, metadata !DIExpression()), !dbg !1417
  call void @llvm.dbg.value(metadata i8* %202, metadata !1323, metadata !DIExpression()), !dbg !1336
  call void @llvm.dbg.value(metadata i32 %203, metadata !1325, metadata !DIExpression()), !dbg !1341
  %204 = load i8, i8* %202, align 1, !dbg !1422, !tbaa !906
  %205 = zext i8 %204 to i64, !dbg !1422
  %206 = getelementptr inbounds i16, i16* %199, i64 %205, !dbg !1422
  %207 = load i16, i16* %206, align 2, !dbg !1422, !tbaa !1347
  %208 = and i16 %207, 4096, !dbg !1422
  %209 = icmp eq i16 %208, 0, !dbg !1422
  br i1 %209, label %210, label %212, !dbg !1427

; <label>:210:                                    ; preds = %200
  %211 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.46, i64 0, i64 0), i32 5) #11, !dbg !1428
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %211) #11, !dbg !1428
  unreachable, !dbg !1428

; <label>:212:                                    ; preds = %200
  %213 = shl i32 %201, 4, !dbg !1429
  %214 = sext i8 %204 to i32, !dbg !1430
  %215 = add i8 %204, -97, !dbg !1430
  %216 = icmp ult i8 %215, 6, !dbg !1430
  br i1 %216, label %221, label %217, !dbg !1430

; <label>:217:                                    ; preds = %212
  %218 = add i8 %204, -65, !dbg !1430
  %219 = icmp ult i8 %218, 6, !dbg !1430
  %220 = select i1 %219, i32 -55, i32 -48, !dbg !1430
  br label %221, !dbg !1430

; <label>:221:                                    ; preds = %217, %212
  %222 = phi i32 [ -87, %212 ], [ %220, %217 ]
  %223 = add nsw i32 %222, %214, !dbg !1430
  %224 = add i32 %223, %213, !dbg !1431
  %225 = add nsw i32 %203, -1, !dbg !1432
  %226 = getelementptr inbounds i8, i8* %202, i64 1, !dbg !1433
  call void @llvm.dbg.value(metadata i32 %224, metadata !1332, metadata !DIExpression()), !dbg !1417
  call void @llvm.dbg.value(metadata i8* %226, metadata !1323, metadata !DIExpression()), !dbg !1336
  call void @llvm.dbg.value(metadata i32 %225, metadata !1325, metadata !DIExpression()), !dbg !1341
  %227 = icmp sgt i32 %203, 1, !dbg !1434
  br i1 %227, label %200, label %228, !dbg !1426, !llvm.loop !1435

; <label>:228:                                    ; preds = %221
  call void @llvm.dbg.value(metadata i8* %226, metadata !1323, metadata !DIExpression()), !dbg !1336
  call void @llvm.dbg.value(metadata i32 %224, metadata !1332, metadata !DIExpression()), !dbg !1417
  %229 = icmp ult i32 %224, 160, !dbg !1437
  br i1 %229, label %230, label %231, !dbg !1439

; <label>:230:                                    ; preds = %228
  switch i32 %224, label %234 [
    i32 96, label %231
    i32 64, label %231
    i32 36, label %231
  ], !dbg !1439

; <label>:231:                                    ; preds = %230, %230, %230, %228
  %232 = and i32 %224, -2048, !dbg !1440
  %233 = icmp eq i32 %232, 55296, !dbg !1440
  br i1 %233, label %234, label %236, !dbg !1440

; <label>:234:                                    ; preds = %230, %231
  %235 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.48, i64 0, i64 0), i32 5) #11, !dbg !1441
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %235, i32 %87, i32 %196, i32 %224) #11, !dbg !1441
  unreachable, !dbg !1441

; <label>:236:                                    ; preds = %231
  %237 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1442, !tbaa !752
  tail call void @print_unicode_char(%struct._IO_FILE* %237, i32 %224, i32 0) #11, !dbg !1443
  br label %266, !dbg !1444

; <label>:238:                                    ; preds = %84, %193
  call void @llvm.dbg.value(metadata i32 92, metadata !918, metadata !DIExpression()) #11, !dbg !1445
  %239 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1448, !tbaa !752
  %240 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %239, i64 0, i32 5, !dbg !1448
  %241 = load i8*, i8** %240, align 8, !dbg !1448, !tbaa !928
  %242 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %239, i64 0, i32 6, !dbg !1448
  %243 = load i8*, i8** %242, align 8, !dbg !1448, !tbaa !933
  %244 = icmp ult i8* %241, %243, !dbg !1448
  br i1 %244, label %247, label %245, !dbg !1448, !prof !934

; <label>:245:                                    ; preds = %238
  %246 = tail call i32 @__overflow(%struct._IO_FILE* %239, i32 92) #11, !dbg !1448
  br label %249, !dbg !1448

; <label>:247:                                    ; preds = %238
  %248 = getelementptr inbounds i8, i8* %241, i64 1, !dbg !1448
  store i8* %248, i8** %240, align 8, !dbg !1448, !tbaa !928
  store i8 92, i8* %241, align 1, !dbg !1448, !tbaa !906
  br label %249, !dbg !1448

; <label>:249:                                    ; preds = %245, %247
  %250 = load i8, i8* %3, align 1, !dbg !1449, !tbaa !906
  %251 = icmp eq i8 %250, 0, !dbg !1449
  br i1 %251, label %266, label %252, !dbg !1451

; <label>:252:                                    ; preds = %249
  %253 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1452, !tbaa !752
  %254 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %253, i64 0, i32 5, !dbg !1452
  %255 = load i8*, i8** %254, align 8, !dbg !1452, !tbaa !928
  %256 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %253, i64 0, i32 6, !dbg !1452
  %257 = load i8*, i8** %256, align 8, !dbg !1452, !tbaa !933
  %258 = icmp ult i8* %255, %257, !dbg !1452
  br i1 %258, label %262, label %259, !dbg !1452, !prof !934

; <label>:259:                                    ; preds = %252
  %260 = zext i8 %250 to i32, !dbg !1455
  %261 = tail call i32 @__overflow(%struct._IO_FILE* %253, i32 %260) #11, !dbg !1452
  br label %264, !dbg !1452

; <label>:262:                                    ; preds = %252
  %263 = getelementptr inbounds i8, i8* %255, i64 1, !dbg !1452
  store i8* %263, i8** %254, align 8, !dbg !1452, !tbaa !928
  store i8 %250, i8* %255, align 1, !dbg !1452, !tbaa !906
  br label %264, !dbg !1452

; <label>:264:                                    ; preds = %259, %262
  %265 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !1456
  call void @llvm.dbg.value(metadata i8* %265, metadata !1323, metadata !DIExpression()), !dbg !1336
  br label %266, !dbg !1457

; <label>:266:                                    ; preds = %191, %188, %179, %177, %168, %166, %157, %155, %146, %144, %135, %133, %124, %122, %112, %110, %101, %99, %81, %78, %48, %45, %249, %236, %264
  %267 = phi i8* [ %226, %236 ], [ %265, %264 ], [ %3, %249 ], [ %38, %45 ], [ %38, %48 ], [ %71, %78 ], [ %71, %81 ], [ %91, %99 ], [ %91, %101 ], [ %91, %110 ], [ %91, %112 ], [ %91, %122 ], [ %91, %124 ], [ %91, %133 ], [ %91, %135 ], [ %91, %144 ], [ %91, %146 ], [ %91, %155 ], [ %91, %157 ], [ %91, %166 ], [ %91, %168 ], [ %91, %177 ], [ %91, %179 ], [ %91, %188 ], [ %91, %191 ], !dbg !1458
  call void @llvm.dbg.value(metadata i8* %267, metadata !1323, metadata !DIExpression()), !dbg !1336
  %268 = ptrtoint i8* %267 to i64, !dbg !1459
  %269 = ptrtoint i8* %0 to i64, !dbg !1459
  %270 = xor i64 %269, 4294967295, !dbg !1460
  %271 = add i64 %270, %268, !dbg !1460
  %272 = trunc i64 %271 to i32, !dbg !1461
  ret i32 %272, !dbg !1462

; <label>:273:                                    ; preds = %24
  %274 = shl nsw i32 %26, 4, !dbg !1463
  %275 = sext i8 %28 to i32, !dbg !1350
  %276 = add i8 %28, -97, !dbg !1350
  %277 = icmp ult i8 %276, 6, !dbg !1350
  br i1 %277, label %282, label %278, !dbg !1350

; <label>:278:                                    ; preds = %273
  %279 = add i8 %28, -65, !dbg !1350
  %280 = icmp ult i8 %279, 6, !dbg !1350
  %281 = select i1 %280, i32 -55, i32 -48, !dbg !1350
  br label %282, !dbg !1350

; <label>:282:                                    ; preds = %273, %278
  %283 = phi i32 [ %281, %278 ], [ -87, %273 ]
  %284 = add nsw i32 %283, %275, !dbg !1350
  %285 = add nsw i32 %284, %274, !dbg !1464
  %286 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !1351
  call void @llvm.dbg.value(metadata i8* %286, metadata !1323, metadata !DIExpression()), !dbg !1336
  call void @llvm.dbg.value(metadata i32 2, metadata !1325, metadata !DIExpression()), !dbg !1341
  call void @llvm.dbg.value(metadata i32 %285, metadata !1324, metadata !DIExpression()), !dbg !1337
  br label %36, !dbg !1356

; <label>:287:                                    ; preds = %62
  %288 = shl nsw i32 %64, 3, !dbg !1465
  %289 = sext i8 %66 to i32, !dbg !1366
  %290 = add nsw i32 %288, -48, !dbg !1366
  %291 = add nsw i32 %290, %289, !dbg !1367
  %292 = getelementptr inbounds i8, i8* %65, i64 1, !dbg !1368
  call void @llvm.dbg.value(metadata i8* %292, metadata !1323, metadata !DIExpression()), !dbg !1336
  call void @llvm.dbg.value(metadata i32 2, metadata !1325, metadata !DIExpression()), !dbg !1341
  call void @llvm.dbg.value(metadata i32 %291, metadata !1324, metadata !DIExpression()), !dbg !1337
  call void @llvm.dbg.value(metadata i8* %292, metadata !1323, metadata !DIExpression()), !dbg !1336
  call void @llvm.dbg.value(metadata i32 2, metadata !1325, metadata !DIExpression()), !dbg !1341
  call void @llvm.dbg.value(metadata i32 %291, metadata !1324, metadata !DIExpression()), !dbg !1337
  %293 = load i8, i8* %292, align 1, !dbg !1363, !tbaa !906
  %294 = and i8 %293, -8, !dbg !1363
  %295 = icmp eq i8 %294, 48, !dbg !1363
  br i1 %295, label %296, label %69, !dbg !1365

; <label>:296:                                    ; preds = %287
  %297 = shl nsw i32 %291, 3, !dbg !1465
  %298 = sext i8 %293 to i32, !dbg !1366
  %299 = add nsw i32 %297, -48, !dbg !1366
  %300 = add i32 %299, %298, !dbg !1367
  %301 = getelementptr inbounds i8, i8* %292, i64 1, !dbg !1368
  call void @llvm.dbg.value(metadata i8* %301, metadata !1323, metadata !DIExpression()), !dbg !1336
  call void @llvm.dbg.value(metadata i32 3, metadata !1325, metadata !DIExpression()), !dbg !1341
  call void @llvm.dbg.value(metadata i32 %300, metadata !1324, metadata !DIExpression()), !dbg !1337
  br label %69
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @vstrtoimax(i8*) unnamed_addr #7 !dbg !1466 {
  %2 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1470, metadata !DIExpression()), !dbg !1476
  %3 = bitcast i8** %2 to i8*, !dbg !1476
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #11, !dbg !1476
  %4 = load i8, i8* %0, align 1, !dbg !1477, !tbaa !906
  switch i8 %4, label %19 [
    i8 34, label %5
    i8 39, label %5
  ], !dbg !1477

; <label>:5:                                      ; preds = %1, %1
  %6 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1477
  %7 = load i8, i8* %6, align 1, !dbg !1477, !tbaa !906
  %8 = icmp eq i8 %7, 0, !dbg !1477
  br i1 %8, label %19, label %9, !dbg !1476

; <label>:9:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1470, metadata !DIExpression()), !dbg !1476
  call void @llvm.dbg.value(metadata i8 %7, metadata !1473, metadata !DIExpression()), !dbg !1478
  %10 = zext i8 %7 to i64, !dbg !1478
  call void @llvm.dbg.value(metadata i64 %10, metadata !1472, metadata !DIExpression()), !dbg !1476
  %11 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !1479
  call void @llvm.dbg.value(metadata i8* %11, metadata !1470, metadata !DIExpression()), !dbg !1476
  %12 = load i8, i8* %11, align 1, !dbg !1479, !tbaa !906
  %13 = icmp ne i8 %12, 0, !dbg !1479
  %14 = load i8, i8* @posixly_correct, align 1, !dbg !1479
  %15 = icmp eq i8 %14, 0, !dbg !1479
  %16 = and i1 %13, %15, !dbg !1479
  br i1 %16, label %17, label %23, !dbg !1479

; <label>:17:                                     ; preds = %9
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.40, i64 0, i64 0), i32 5) #11, !dbg !1479
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %18, i8* nonnull %11) #11, !dbg !1479
  br label %23, !dbg !1479

; <label>:19:                                     ; preds = %1, %5
  %20 = tail call i32* @__errno_location() #17, !dbg !1481
  store i32 0, i32* %20, align 4, !dbg !1481, !tbaa !1207
  call void @llvm.dbg.value(metadata i8** %2, metadata !1471, metadata !DIExpression(DW_OP_deref)), !dbg !1476
  call void @llvm.dbg.value(metadata i8* %0, metadata !1483, metadata !DIExpression()) #11, !dbg !1490
  call void @llvm.dbg.value(metadata i8** %2, metadata !1488, metadata !DIExpression()) #11, !dbg !1490
  call void @llvm.dbg.value(metadata i32 0, metadata !1489, metadata !DIExpression()) #11, !dbg !1490
  %21 = call i64 @__strtol_internal(i8* nonnull %0, i8** nonnull %2, i32 0, i32 0) #11, !dbg !1492
  call void @llvm.dbg.value(metadata i64 %21, metadata !1472, metadata !DIExpression()), !dbg !1476
  %22 = load i8*, i8** %2, align 8, !dbg !1481, !tbaa !752
  call void @llvm.dbg.value(metadata i8* %22, metadata !1471, metadata !DIExpression()), !dbg !1476
  call fastcc void @verify_numeric(i8* nonnull %0, i8* %22), !dbg !1481
  br label %23

; <label>:23:                                     ; preds = %17, %9, %19
  %24 = phi i64 [ %21, %19 ], [ %10, %9 ], [ %10, %17 ], !dbg !1478
  call void @llvm.dbg.value(metadata i64 %24, metadata !1472, metadata !DIExpression()), !dbg !1476
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #11, !dbg !1476
  ret i64 %24, !dbg !1476
}

; Function Attrs: nounwind readnone speculatable
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1, i1) #1

; Function Attrs: nounwind
declare i8* @__mempcpy_chk(i8*, i8*, i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

; Function Attrs: nounwind
declare i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @verify_numeric(i8*, i8* readonly) unnamed_addr #7 !dbg !1493 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1497, metadata !DIExpression()), !dbg !1499
  call void @llvm.dbg.value(metadata i8* %1, metadata !1498, metadata !DIExpression()), !dbg !1500
  %3 = tail call i32* @__errno_location() #17, !dbg !1501
  %4 = load i32, i32* %3, align 4, !dbg !1501, !tbaa !1207
  %5 = icmp eq i32 %4, 0, !dbg !1501
  br i1 %5, label %8, label %6, !dbg !1503

; <label>:6:                                      ; preds = %2
  %7 = tail call i8* @quote(i8* %0) #11, !dbg !1504
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i64 0, i64 0), i8* %7) #11, !dbg !1506
  br label %19, !dbg !1507

; <label>:8:                                      ; preds = %2
  %9 = load i8, i8* %1, align 1, !dbg !1508, !tbaa !906
  %10 = icmp eq i8 %9, 0, !dbg !1508
  br i1 %10, label %20, label %11, !dbg !1510

; <label>:11:                                     ; preds = %8
  %12 = icmp eq i8* %0, %1, !dbg !1511
  br i1 %12, label %13, label %16, !dbg !1514

; <label>:13:                                     ; preds = %11
  %14 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.42, i64 0, i64 0), i32 5) #11, !dbg !1515
  %15 = tail call i8* @quote(i8* %0) #11, !dbg !1516
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %14, i8* %15) #11, !dbg !1517
  br label %19, !dbg !1517

; <label>:16:                                     ; preds = %11
  %17 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.43, i64 0, i64 0), i32 5) #11, !dbg !1518
  %18 = tail call i8* @quote(i8* %0) #11, !dbg !1519
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %17, i8* %18) #11, !dbg !1520
  br label %19

; <label>:19:                                     ; preds = %13, %16, %6
  store i1 true, i1* @exit_status, align 4
  br label %20, !dbg !1521

; <label>:20:                                     ; preds = %19, %8
  ret void, !dbg !1521
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #8

; Function Attrs: nounwind readonly
declare i8* @memchr(i8*, i32, i64) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define dso_local x86_fp80 @c_strtold(i8*, i8**) local_unnamed_addr #7 !dbg !1522 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1526, metadata !DIExpression()), !dbg !1530
  call void @llvm.dbg.value(metadata i8** %1, metadata !1527, metadata !DIExpression()), !dbg !1531
  %3 = load volatile %struct.__locale_struct*, %struct.__locale_struct** @c_locale_cache, align 8, !dbg !1532, !tbaa !752
  %4 = icmp eq %struct.__locale_struct* %3, null, !dbg !1532
  br i1 %4, label %5, label %7, !dbg !1538

; <label>:5:                                      ; preds = %2
  %6 = tail call %struct.__locale_struct* @newlocale(i32 8127, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i64 0, i64 0), %struct.__locale_struct* null) #11, !dbg !1539
  store volatile %struct.__locale_struct* %6, %struct.__locale_struct** @c_locale_cache, align 8, !dbg !1540, !tbaa !752
  br label %7, !dbg !1541

; <label>:7:                                      ; preds = %2, %5
  %8 = load volatile %struct.__locale_struct*, %struct.__locale_struct** @c_locale_cache, align 8, !dbg !1542, !tbaa !752
  call void @llvm.dbg.value(metadata %struct.__locale_struct* %8, metadata !1529, metadata !DIExpression()), !dbg !1543
  %9 = icmp eq %struct.__locale_struct* %8, null, !dbg !1544
  br i1 %9, label %10, label %13, !dbg !1546

; <label>:10:                                     ; preds = %7
  %11 = icmp eq i8** %1, null, !dbg !1547
  br i1 %11, label %15, label %12, !dbg !1550

; <label>:12:                                     ; preds = %10
  store i8* %0, i8** %1, align 8, !dbg !1551, !tbaa !752
  br label %15, !dbg !1552

; <label>:13:                                     ; preds = %7
  %14 = tail call x86_fp80 @strtold_l(i8* %0, i8** %1, %struct.__locale_struct* nonnull %8) #11, !dbg !1553
  call void @llvm.dbg.value(metadata x86_fp80 %14, metadata !1528, metadata !DIExpression()), !dbg !1554
  br label %15, !dbg !1555

; <label>:15:                                     ; preds = %12, %10, %13
  %16 = phi x86_fp80 [ %14, %13 ], [ 0xK00000000000000000000, %10 ], [ 0xK00000000000000000000, %12 ], !dbg !1556
  ret x86_fp80 %16, !dbg !1557
}

; Function Attrs: nounwind
declare %struct.__locale_struct* @newlocale(i32, i8*, %struct.__locale_struct*) local_unnamed_addr #2

; Function Attrs: nounwind
declare x86_fp80 @strtold_l(i8*, i8**, %struct.__locale_struct*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_file_name(i8*) local_unnamed_addr #7 !dbg !1558 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1560, metadata !DIExpression()), !dbg !1561
  store i8* %0, i8** @file_name, align 8, !dbg !1562, !tbaa !752
  ret void, !dbg !1563
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #7 !dbg !1564 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i1 %0, metadata !1568, metadata !DIExpression()), !dbg !1569
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1570, !tbaa !859
  ret void, !dbg !1571
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #7 !dbg !1572 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1579, !tbaa !752
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #11, !dbg !1580
  %3 = icmp eq i32 %2, 0, !dbg !1581
  br i1 %3, label %22, label %4, !dbg !1582

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1583, !tbaa !859, !range !1584
  %6 = icmp eq i8 %5, 0, !dbg !1583
  br i1 %6, label %11, label %7, !dbg !1585

; <label>:7:                                      ; preds = %4
  %8 = tail call i32* @__errno_location() #17, !dbg !1586
  %9 = load i32, i32* %8, align 4, !dbg !1586, !tbaa !1207
  %10 = icmp eq i32 %9, 32, !dbg !1587
  br i1 %10, label %22, label %11, !dbg !1588

; <label>:11:                                     ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.55, i64 0, i64 0), i32 5) #11, !dbg !1589
  call void @llvm.dbg.value(metadata i8* %12, metadata !1576, metadata !DIExpression()), !dbg !1590
  %13 = load i8*, i8** @file_name, align 8, !dbg !1591, !tbaa !752
  %14 = icmp eq i8* %13, null, !dbg !1591
  %15 = tail call i32* @__errno_location() #17, !dbg !1593
  %16 = load i32, i32* %15, align 4, !dbg !1593, !tbaa !1207
  br i1 %14, label %19, label %17, !dbg !1594

; <label>:17:                                     ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #11, !dbg !1595
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.56, i64 0, i64 0), i8* %18, i8* %12) #11, !dbg !1596
  br label %20, !dbg !1596

; <label>:19:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.57, i64 0, i64 0), i8* %12) #11, !dbg !1597
  br label %20

; <label>:20:                                     ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1598, !tbaa !1207
  tail call void @_exit(i32 %21) #15, !dbg !1599
  unreachable, !dbg !1599

; <label>:22:                                     ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1600, !tbaa !752
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #11, !dbg !1602
  %25 = icmp eq i32 %24, 0, !dbg !1603
  br i1 %25, label %28, label %26, !dbg !1604

; <label>:26:                                     ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1605, !tbaa !1207
  tail call void @_exit(i32 %27) #15, !dbg !1606
  unreachable, !dbg !1606

; <label>:28:                                     ; preds = %22
  ret void, !dbg !1607
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8*) local_unnamed_addr #7 !dbg !1608 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1610, metadata !DIExpression()), !dbg !1613
  %2 = icmp eq i8* %0, null, !dbg !1614
  br i1 %2, label %3, label %6, !dbg !1616

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1617, !tbaa !752
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.64, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !1619
  tail call void @abort() #15, !dbg !1620
  unreachable, !dbg !1620

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #9, !dbg !1621
  call void @llvm.dbg.value(metadata i8* %7, metadata !1611, metadata !DIExpression()), !dbg !1622
  %8 = icmp eq i8* %7, null, !dbg !1623
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1624
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1625
  call void @llvm.dbg.value(metadata i8* %10, metadata !1612, metadata !DIExpression()), !dbg !1626
  %11 = ptrtoint i8* %10 to i64, !dbg !1627
  %12 = ptrtoint i8* %0 to i64, !dbg !1627
  %13 = sub i64 %11, %12, !dbg !1627
  %14 = icmp sgt i64 %13, 6, !dbg !1629
  br i1 %14, label %15, label %24, !dbg !1630

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1631
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.65, i64 0, i64 0), i64 7) #9, !dbg !1632
  %18 = icmp eq i32 %17, 0, !dbg !1633
  br i1 %18, label %19, label %24, !dbg !1634

; <label>:19:                                     ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1610, metadata !DIExpression()), !dbg !1613
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.66, i64 0, i64 0), i64 3) #9, !dbg !1635
  %21 = icmp eq i32 %20, 0, !dbg !1638
  br i1 %21, label %22, label %24, !dbg !1639

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1640
  call void @llvm.dbg.value(metadata i8* %23, metadata !1610, metadata !DIExpression()), !dbg !1613
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1642, !tbaa !752
  br label %24, !dbg !1643

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1610, metadata !DIExpression()), !dbg !1613
  store i8* %25, i8** @program_name, align 8, !dbg !1644, !tbaa !752
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1645, !tbaa !752
  ret void, !dbg !1646
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #11

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #7 !dbg !1647 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1652, metadata !DIExpression()), !dbg !1655
  %2 = tail call i32* @__errno_location() #17, !dbg !1656
  %3 = load i32, i32* %2, align 4, !dbg !1656, !tbaa !1207
  call void @llvm.dbg.value(metadata i32 %3, metadata !1653, metadata !DIExpression()), !dbg !1657
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1658
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1658
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1658
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #11, !dbg !1659
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1659
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1654, metadata !DIExpression()), !dbg !1660
  store i32 %3, i32* %2, align 4, !dbg !1661, !tbaa !1207
  ret %struct.quoting_options* %8, !dbg !1662
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #12 !dbg !1663 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1669, metadata !DIExpression()), !dbg !1670
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1671
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1671
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1672
  %5 = load i32, i32* %4, align 8, !dbg !1672, !tbaa !1673
  ret i32 %5, !dbg !1675
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !1676 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1680, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i32 %1, metadata !1681, metadata !DIExpression()), !dbg !1683
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1684
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1684
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1685
  store i32 %1, i32* %5, align 8, !dbg !1686, !tbaa !1673
  ret void, !dbg !1687
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #7 !dbg !1688 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1692, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata i8 %1, metadata !1693, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i32 %2, metadata !1694, metadata !DIExpression()), !dbg !1702
  call void @llvm.dbg.value(metadata i8 %1, metadata !1695, metadata !DIExpression()), !dbg !1703
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1704
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1704
  %6 = lshr i8 %1, 5, !dbg !1705
  %7 = zext i8 %6 to i64, !dbg !1705
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1706
  call void @llvm.dbg.value(metadata i32* %8, metadata !1696, metadata !DIExpression()), !dbg !1707
  %9 = and i8 %1, 31, !dbg !1708
  %10 = zext i8 %9 to i32, !dbg !1708
  call void @llvm.dbg.value(metadata i32 %10, metadata !1698, metadata !DIExpression()), !dbg !1709
  %11 = load i32, i32* %8, align 4, !dbg !1710, !tbaa !1207
  %12 = lshr i32 %11, %10, !dbg !1711
  %13 = and i32 %12, 1, !dbg !1712
  call void @llvm.dbg.value(metadata i32 %13, metadata !1699, metadata !DIExpression()), !dbg !1713
  %14 = and i32 %2, 1, !dbg !1714
  %15 = xor i32 %13, %14, !dbg !1715
  %16 = shl i32 %15, %10, !dbg !1716
  %17 = xor i32 %16, %11, !dbg !1717
  store i32 %17, i32* %8, align 4, !dbg !1717, !tbaa !1207
  ret i32 %13, !dbg !1718
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !1719 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1723, metadata !DIExpression()), !dbg !1726
  call void @llvm.dbg.value(metadata i32 %1, metadata !1724, metadata !DIExpression()), !dbg !1727
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1728
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1730
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1723, metadata !DIExpression()), !dbg !1726
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1731
  %6 = load i32, i32* %5, align 4, !dbg !1731, !tbaa !1732
  call void @llvm.dbg.value(metadata i32 %6, metadata !1725, metadata !DIExpression()), !dbg !1733
  store i32 %1, i32* %5, align 4, !dbg !1734, !tbaa !1732
  ret i32 %6, !dbg !1735
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #7 !dbg !1736 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1740, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.value(metadata i8* %1, metadata !1741, metadata !DIExpression()), !dbg !1744
  call void @llvm.dbg.value(metadata i8* %2, metadata !1742, metadata !DIExpression()), !dbg !1745
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1746
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1748
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1740, metadata !DIExpression()), !dbg !1743
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1749
  store i32 10, i32* %6, align 8, !dbg !1750, !tbaa !1673
  %7 = icmp ne i8* %1, null, !dbg !1751
  %8 = icmp ne i8* %2, null, !dbg !1753
  %9 = and i1 %7, %8, !dbg !1754
  br i1 %9, label %11, label %10, !dbg !1754

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !1755
  unreachable, !dbg !1755

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1756
  store i8* %1, i8** %12, align 8, !dbg !1757, !tbaa !1758
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1759
  store i8* %2, i8** %13, align 8, !dbg !1760, !tbaa !1761
  ret void, !dbg !1762
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #7 !dbg !1763 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1767, metadata !DIExpression()), !dbg !1775
  call void @llvm.dbg.value(metadata i64 %1, metadata !1768, metadata !DIExpression()), !dbg !1776
  call void @llvm.dbg.value(metadata i8* %2, metadata !1769, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata i64 %3, metadata !1770, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1771, metadata !DIExpression()), !dbg !1779
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1780
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1780
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1772, metadata !DIExpression()), !dbg !1781
  %8 = tail call i32* @__errno_location() #17, !dbg !1782
  %9 = load i32, i32* %8, align 4, !dbg !1782, !tbaa !1207
  call void @llvm.dbg.value(metadata i32 %9, metadata !1773, metadata !DIExpression()), !dbg !1783
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1784
  %11 = load i32, i32* %10, align 8, !dbg !1784, !tbaa !1673
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1785
  %13 = load i32, i32* %12, align 4, !dbg !1785, !tbaa !1732
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1786
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1787
  %16 = load i8*, i8** %15, align 8, !dbg !1787, !tbaa !1758
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1788
  %18 = load i8*, i8** %17, align 8, !dbg !1788, !tbaa !1761
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1789
  call void @llvm.dbg.value(metadata i64 %19, metadata !1774, metadata !DIExpression()), !dbg !1790
  store i32 %9, i32* %8, align 4, !dbg !1791, !tbaa !1207
  ret i64 %19, !dbg !1792
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #7 !dbg !1793 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1799, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata i64 %1, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8* %2, metadata !1801, metadata !DIExpression()), !dbg !1865
  call void @llvm.dbg.value(metadata i64 %3, metadata !1802, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i32 %4, metadata !1803, metadata !DIExpression()), !dbg !1867
  call void @llvm.dbg.value(metadata i32 %5, metadata !1804, metadata !DIExpression()), !dbg !1868
  call void @llvm.dbg.value(metadata i32* %6, metadata !1805, metadata !DIExpression()), !dbg !1869
  call void @llvm.dbg.value(metadata i8* %7, metadata !1806, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata i8* %8, metadata !1807, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata i64 0, metadata !1809, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i64 0, metadata !1810, metadata !DIExpression()), !dbg !1873
  call void @llvm.dbg.value(metadata i8* null, metadata !1811, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata i64 0, metadata !1812, metadata !DIExpression()), !dbg !1875
  call void @llvm.dbg.value(metadata i8 0, metadata !1813, metadata !DIExpression()), !dbg !1876
  %13 = tail call i64 @__ctype_get_mb_cur_max() #11, !dbg !1877
  %14 = icmp eq i64 %13, 1, !dbg !1878
  %15 = lshr i32 %5, 1, !dbg !1879
  %16 = trunc i32 %15 to i8, !dbg !1879
  %17 = and i8 %16, 1, !dbg !1879
  call void @llvm.dbg.value(metadata i8 %17, metadata !1815, metadata !DIExpression()), !dbg !1879
  call void @llvm.dbg.value(metadata i8 0, metadata !1816, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i8 0, metadata !1817, metadata !DIExpression()), !dbg !1881
  call void @llvm.dbg.value(metadata i8 1, metadata !1818, metadata !DIExpression()), !dbg !1882
  %18 = icmp ne i32* %6, null
  %19 = bitcast i64* %10 to i8*
  %20 = icmp eq i32* %6, null
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 4
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr inbounds i8, i8* %2, i64 1
  %26 = bitcast i32* %12 to i8*
  br label %27, !dbg !1883

; <label>:27:                                     ; preds = %634, %9
  %28 = phi i32 [ %4, %9 ], [ %94, %634 ]
  %29 = phi i8* [ %7, %9 ], [ %95, %634 ]
  %30 = phi i8* [ %8, %9 ], [ %96, %634 ]
  %31 = phi i64 [ 0, %9 ], [ %124, %634 ], !dbg !1873
  %32 = phi i8* [ null, %9 ], [ %98, %634 ], !dbg !1874
  %33 = phi i64 [ 0, %9 ], [ %99, %634 ], !dbg !1875
  %34 = phi i8 [ 0, %9 ], [ %100, %634 ], !dbg !1876
  %35 = phi i64 [ %3, %9 ], [ %618, %634 ]
  %36 = phi i8 [ %17, %9 ], [ %101, %634 ], !dbg !1884
  %37 = phi i8 [ 0, %9 ], [ %126, %634 ], !dbg !1880
  %38 = phi i8 [ 0, %9 ], [ %127, %634 ], !dbg !1881
  %39 = phi i8 [ 1, %9 ], [ %128, %634 ], !dbg !1882
  %40 = phi i64 [ %1, %9 ], [ %124, %634 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8 %39, metadata !1818, metadata !DIExpression()), !dbg !1882
  call void @llvm.dbg.value(metadata i8 %38, metadata !1817, metadata !DIExpression()), !dbg !1881
  call void @llvm.dbg.value(metadata i8 %37, metadata !1816, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i8 %36, metadata !1815, metadata !DIExpression()), !dbg !1879
  call void @llvm.dbg.value(metadata i64 %35, metadata !1802, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i8 %34, metadata !1813, metadata !DIExpression()), !dbg !1876
  call void @llvm.dbg.value(metadata i64 %33, metadata !1812, metadata !DIExpression()), !dbg !1875
  call void @llvm.dbg.value(metadata i8* %32, metadata !1811, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata i64 %31, metadata !1810, metadata !DIExpression()), !dbg !1873
  call void @llvm.dbg.value(metadata i64 0, metadata !1809, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i8* %30, metadata !1807, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata i8* %29, metadata !1806, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata i32 %28, metadata !1803, metadata !DIExpression()), !dbg !1867
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
  ], !dbg !1886

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, metadata !1803, metadata !DIExpression()), !dbg !1867
  call void @llvm.dbg.value(metadata i8 1, metadata !1815, metadata !DIExpression()), !dbg !1879
  call void @llvm.dbg.value(metadata i8 %36, metadata !1815, metadata !DIExpression()), !dbg !1879
  call void @llvm.dbg.value(metadata i32 5, metadata !1803, metadata !DIExpression()), !dbg !1867
  br label %93, !dbg !1887

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, metadata !1815, metadata !DIExpression()), !dbg !1879
  call void @llvm.dbg.value(metadata i32 5, metadata !1803, metadata !DIExpression()), !dbg !1867
  %43 = and i8 %36, 1, !dbg !1888
  %44 = icmp eq i8 %43, 0, !dbg !1888
  br i1 %44, label %45, label %93, !dbg !1887

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1890
  br i1 %46, label %93, label %47, !dbg !1893

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1890, !tbaa !906
  br label %93, !dbg !1890

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.77, i64 0, i64 0), i32 %28), !dbg !1894
  call void @llvm.dbg.value(metadata i8* %49, metadata !1806, metadata !DIExpression()), !dbg !1870
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.78, i64 0, i64 0), i32 %28), !dbg !1898
  call void @llvm.dbg.value(metadata i8* %50, metadata !1807, metadata !DIExpression()), !dbg !1871
  br label %51, !dbg !1899

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, metadata !1807, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata i8* %52, metadata !1806, metadata !DIExpression()), !dbg !1870
  %54 = and i8 %36, 1, !dbg !1900
  %55 = icmp eq i8 %54, 0, !dbg !1900
  br i1 %55, label %56, label %71, !dbg !1902

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, metadata !1811, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata i64 0, metadata !1809, metadata !DIExpression()), !dbg !1872
  %57 = load i8, i8* %52, align 1, !dbg !1903, !tbaa !906
  %58 = icmp eq i8 %57, 0, !dbg !1906
  br i1 %58, label %71, label %59, !dbg !1906

; <label>:59:                                     ; preds = %56, %66
  %60 = phi i8 [ %69, %66 ], [ %57, %56 ]
  %61 = phi i8* [ %68, %66 ], [ %52, %56 ]
  %62 = phi i64 [ %67, %66 ], [ 0, %56 ]
  call void @llvm.dbg.value(metadata i8* %61, metadata !1811, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata i64 %62, metadata !1809, metadata !DIExpression()), !dbg !1872
  %63 = icmp ult i64 %62, %40, !dbg !1907
  br i1 %63, label %64, label %66, !dbg !1910

; <label>:64:                                     ; preds = %59
  %65 = getelementptr inbounds i8, i8* %0, i64 %62, !dbg !1907
  store i8 %60, i8* %65, align 1, !dbg !1907, !tbaa !906
  br label %66, !dbg !1907

; <label>:66:                                     ; preds = %64, %59
  %67 = add i64 %62, 1, !dbg !1910
  %68 = getelementptr inbounds i8, i8* %61, i64 1, !dbg !1911
  call void @llvm.dbg.value(metadata i8* %68, metadata !1811, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata i64 %67, metadata !1809, metadata !DIExpression()), !dbg !1872
  %69 = load i8, i8* %68, align 1, !dbg !1903, !tbaa !906
  %70 = icmp eq i8 %69, 0, !dbg !1906
  br i1 %70, label %71, label %59, !dbg !1906, !llvm.loop !1912

; <label>:71:                                     ; preds = %66, %56, %51
  %72 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %67, %66 ], !dbg !1872
  call void @llvm.dbg.value(metadata i64 %72, metadata !1809, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i8 1, metadata !1813, metadata !DIExpression()), !dbg !1876
  call void @llvm.dbg.value(metadata i8* %53, metadata !1811, metadata !DIExpression()), !dbg !1874
  %73 = call i64 @strlen(i8* %53) #9, !dbg !1914
  call void @llvm.dbg.value(metadata i64 %73, metadata !1812, metadata !DIExpression()), !dbg !1875
  br label %93, !dbg !1915

; <label>:74:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !1813, metadata !DIExpression()), !dbg !1876
  br label %75, !dbg !1916

; <label>:75:                                     ; preds = %27, %74
  %76 = phi i8 [ %34, %27 ], [ 1, %74 ], !dbg !1884
  call void @llvm.dbg.value(metadata i8 %76, metadata !1813, metadata !DIExpression()), !dbg !1876
  call void @llvm.dbg.value(metadata i8 1, metadata !1815, metadata !DIExpression()), !dbg !1879
  br label %77, !dbg !1917

; <label>:77:                                     ; preds = %27, %75
  %78 = phi i8 [ %34, %27 ], [ %76, %75 ], !dbg !1876
  %79 = phi i8 [ %36, %27 ], [ 1, %75 ], !dbg !1884
  call void @llvm.dbg.value(metadata i8 %79, metadata !1815, metadata !DIExpression()), !dbg !1879
  call void @llvm.dbg.value(metadata i8 %78, metadata !1813, metadata !DIExpression()), !dbg !1876
  %80 = and i8 %79, 1, !dbg !1918
  %81 = icmp eq i8 %80, 0, !dbg !1918
  %82 = select i1 %81, i8 1, i8 %78, !dbg !1920
  br label %83, !dbg !1920

; <label>:83:                                     ; preds = %77, %27
  %84 = phi i8 [ %34, %27 ], [ %82, %77 ], !dbg !1921
  %85 = phi i8 [ %36, %27 ], [ %79, %77 ], !dbg !1879
  call void @llvm.dbg.value(metadata i8 %85, metadata !1815, metadata !DIExpression()), !dbg !1879
  call void @llvm.dbg.value(metadata i8 %84, metadata !1813, metadata !DIExpression()), !dbg !1876
  call void @llvm.dbg.value(metadata i32 2, metadata !1803, metadata !DIExpression()), !dbg !1867
  %86 = and i8 %85, 1, !dbg !1922
  %87 = icmp eq i8 %86, 0, !dbg !1922
  br i1 %87, label %88, label %93, !dbg !1924

; <label>:88:                                     ; preds = %83
  %89 = icmp eq i64 %40, 0, !dbg !1925
  br i1 %89, label %93, label %90, !dbg !1928

; <label>:90:                                     ; preds = %88
  store i8 39, i8* %0, align 1, !dbg !1925, !tbaa !906
  br label %93, !dbg !1925

; <label>:91:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !1815, metadata !DIExpression()), !dbg !1879
  br label %93, !dbg !1929

; <label>:92:                                     ; preds = %27
  call void @abort() #15, !dbg !1930
  unreachable, !dbg !1930

; <label>:93:                                     ; preds = %41, %83, %88, %90, %27, %42, %45, %47, %91, %71
  %94 = phi i32 [ 0, %91 ], [ %28, %71 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ %28, %27 ], [ 2, %90 ], [ 2, %88 ], [ 2, %83 ], [ 5, %41 ]
  %95 = phi i8* [ %29, %91 ], [ %52, %71 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %90 ], [ %29, %88 ], [ %29, %83 ], [ %29, %41 ]
  %96 = phi i8* [ %30, %91 ], [ %53, %71 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %90 ], [ %30, %88 ], [ %30, %83 ], [ %30, %41 ]
  %97 = phi i64 [ 0, %91 ], [ %72, %71 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %90 ], [ 1, %88 ], [ 0, %83 ], [ 0, %41 ], !dbg !1872
  %98 = phi i8* [ %32, %91 ], [ %53, %71 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.79, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.79, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.79, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.78, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.78, i64 0, i64 0), %88 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.78, i64 0, i64 0), %83 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.79, i64 0, i64 0), %41 ], !dbg !1884
  %99 = phi i64 [ %33, %91 ], [ %73, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %90 ], [ 1, %88 ], [ 1, %83 ], [ 1, %41 ], !dbg !1884
  %100 = phi i8 [ %34, %91 ], [ 1, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %84, %90 ], [ %84, %88 ], [ %84, %83 ], [ 1, %41 ], !dbg !1884
  %101 = phi i8 [ 0, %91 ], [ %36, %71 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %85, %90 ], [ %85, %88 ], [ %85, %83 ], [ 1, %41 ], !dbg !1931
  call void @llvm.dbg.value(metadata i8 %101, metadata !1815, metadata !DIExpression()), !dbg !1879
  call void @llvm.dbg.value(metadata i8 %100, metadata !1813, metadata !DIExpression()), !dbg !1876
  call void @llvm.dbg.value(metadata i64 %99, metadata !1812, metadata !DIExpression()), !dbg !1875
  call void @llvm.dbg.value(metadata i8* %98, metadata !1811, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata i64 %97, metadata !1809, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i8* %96, metadata !1807, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata i8* %95, metadata !1806, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata i32 %94, metadata !1803, metadata !DIExpression()), !dbg !1867
  call void @llvm.dbg.value(metadata i64 0, metadata !1808, metadata !DIExpression()), !dbg !1932
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
  br label %121, !dbg !1933

; <label>:121:                                    ; preds = %607, %93
  %122 = phi i64 [ 0, %93 ], [ %616, %607 ], !dbg !1934
  %123 = phi i64 [ %97, %93 ], [ %609, %607 ], !dbg !1872
  %124 = phi i64 [ %31, %93 ], [ %610, %607 ], !dbg !1873
  %125 = phi i64 [ %35, %93 ], [ %611, %607 ]
  %126 = phi i8 [ %37, %93 ], [ %612, %607 ], !dbg !1880
  %127 = phi i8 [ %38, %93 ], [ %613, %607 ], !dbg !1881
  %128 = phi i8 [ %39, %93 ], [ %614, %607 ], !dbg !1882
  %129 = phi i64 [ %40, %93 ], [ %615, %607 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8 %128, metadata !1818, metadata !DIExpression()), !dbg !1882
  call void @llvm.dbg.value(metadata i8 %127, metadata !1817, metadata !DIExpression()), !dbg !1881
  call void @llvm.dbg.value(metadata i8 %126, metadata !1816, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i64 %125, metadata !1802, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i64 %124, metadata !1810, metadata !DIExpression()), !dbg !1873
  call void @llvm.dbg.value(metadata i64 %123, metadata !1809, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i64 %122, metadata !1808, metadata !DIExpression()), !dbg !1932
  %130 = icmp eq i64 %125, -1, !dbg !1935
  br i1 %130, label %131, label %135, !dbg !1936

; <label>:131:                                    ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1937
  %133 = load i8, i8* %132, align 1, !dbg !1937, !tbaa !906
  %134 = icmp eq i8 %133, 0, !dbg !1938
  br i1 %134, label %617, label %137, !dbg !1939

; <label>:135:                                    ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !1940
  br i1 %136, label %617, label %137, !dbg !1939

; <label>:137:                                    ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !1824, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i8 0, metadata !1825, metadata !DIExpression()), !dbg !1942
  call void @llvm.dbg.value(metadata i8 0, metadata !1826, metadata !DIExpression()), !dbg !1943
  br i1 %107, label %138, label %153, !dbg !1944

; <label>:138:                                    ; preds = %137
  %139 = add i64 %122, %99, !dbg !1946
  %140 = and i1 %108, %130, !dbg !1947
  br i1 %140, label %141, label %143, !dbg !1947

; <label>:141:                                    ; preds = %138
  %142 = call i64 @strlen(i8* %2) #9, !dbg !1948
  call void @llvm.dbg.value(metadata i64 %142, metadata !1802, metadata !DIExpression()), !dbg !1866
  br label %143, !dbg !1949

; <label>:143:                                    ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ]
  call void @llvm.dbg.value(metadata i64 %144, metadata !1802, metadata !DIExpression()), !dbg !1866
  %145 = icmp ugt i64 %139, %144, !dbg !1950
  br i1 %145, label %153, label %146, !dbg !1951

; <label>:146:                                    ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1952
  %148 = call i32 @memcmp(i8* %147, i8* %98, i64 %99) #9, !dbg !1953
  %149 = icmp ne i32 %148, 0, !dbg !1954
  %150 = or i1 %149, %110, !dbg !1955
  %151 = xor i1 %149, true, !dbg !1955
  %152 = zext i1 %151 to i8, !dbg !1955
  br i1 %150, label %153, label %661, !dbg !1955

; <label>:153:                                    ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !1956
  call void @llvm.dbg.value(metadata i8 %155, metadata !1824, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i64 %154, metadata !1802, metadata !DIExpression()), !dbg !1866
  %156 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1957
  %157 = load i8, i8* %156, align 1, !dbg !1957, !tbaa !906
  call void @llvm.dbg.value(metadata i8 %157, metadata !1819, metadata !DIExpression()), !dbg !1958
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
  ], !dbg !1959

; <label>:158:                                    ; preds = %153
  br i1 %103, label %159, label %207, !dbg !1960

; <label>:159:                                    ; preds = %158
  br i1 %110, label %160, label %661, !dbg !1961

; <label>:160:                                    ; preds = %159
  call void @llvm.dbg.value(metadata i8 1, metadata !1825, metadata !DIExpression()), !dbg !1942
  %161 = and i8 %126, 1, !dbg !1965
  %162 = icmp eq i8 %161, 0, !dbg !1965
  %163 = and i1 %114, %162, !dbg !1965
  br i1 %163, label %164, label %180, !dbg !1965

; <label>:164:                                    ; preds = %160
  %165 = icmp ult i64 %123, %129, !dbg !1967
  br i1 %165, label %166, label %168, !dbg !1971

; <label>:166:                                    ; preds = %164
  %167 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1967
  store i8 39, i8* %167, align 1, !dbg !1967, !tbaa !906
  br label %168, !dbg !1967

; <label>:168:                                    ; preds = %166, %164
  %169 = add i64 %123, 1, !dbg !1971
  call void @llvm.dbg.value(metadata i64 %169, metadata !1809, metadata !DIExpression()), !dbg !1872
  %170 = icmp ult i64 %169, %129, !dbg !1972
  br i1 %170, label %171, label %173, !dbg !1975

; <label>:171:                                    ; preds = %168
  %172 = getelementptr inbounds i8, i8* %0, i64 %169, !dbg !1972
  store i8 36, i8* %172, align 1, !dbg !1972, !tbaa !906
  br label %173, !dbg !1972

; <label>:173:                                    ; preds = %171, %168
  %174 = add i64 %123, 2, !dbg !1975
  call void @llvm.dbg.value(metadata i64 %174, metadata !1809, metadata !DIExpression()), !dbg !1872
  %175 = icmp ult i64 %174, %129, !dbg !1976
  br i1 %175, label %176, label %178, !dbg !1979

; <label>:176:                                    ; preds = %173
  %177 = getelementptr inbounds i8, i8* %0, i64 %174, !dbg !1976
  store i8 39, i8* %177, align 1, !dbg !1976, !tbaa !906
  br label %178, !dbg !1976

; <label>:178:                                    ; preds = %176, %173
  %179 = add i64 %123, 3, !dbg !1979
  call void @llvm.dbg.value(metadata i64 %179, metadata !1809, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i8 1, metadata !1816, metadata !DIExpression()), !dbg !1880
  br label %180, !dbg !1980

; <label>:180:                                    ; preds = %160, %178
  %181 = phi i64 [ %179, %178 ], [ %123, %160 ], !dbg !1931
  %182 = phi i8 [ 1, %178 ], [ %126, %160 ], !dbg !1931
  call void @llvm.dbg.value(metadata i8 %182, metadata !1816, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i64 %181, metadata !1809, metadata !DIExpression()), !dbg !1872
  %183 = icmp ult i64 %181, %129, !dbg !1981
  br i1 %183, label %184, label %186, !dbg !1984

; <label>:184:                                    ; preds = %180
  %185 = getelementptr inbounds i8, i8* %0, i64 %181, !dbg !1981
  store i8 92, i8* %185, align 1, !dbg !1981, !tbaa !906
  br label %186, !dbg !1981

; <label>:186:                                    ; preds = %184, %180
  %187 = add i64 %181, 1, !dbg !1984
  call void @llvm.dbg.value(metadata i64 %187, metadata !1809, metadata !DIExpression()), !dbg !1872
  br i1 %104, label %188, label %478, !dbg !1985

; <label>:188:                                    ; preds = %186
  %189 = add i64 %122, 1, !dbg !1987
  %190 = icmp ult i64 %189, %154, !dbg !1988
  br i1 %190, label %191, label %467, !dbg !1989

; <label>:191:                                    ; preds = %188
  %192 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !1990
  %193 = load i8, i8* %192, align 1, !dbg !1990, !tbaa !906
  %194 = add i8 %193, -48, !dbg !1991
  %195 = icmp ult i8 %194, 10, !dbg !1991
  br i1 %195, label %196, label %467, !dbg !1991

; <label>:196:                                    ; preds = %191
  %197 = icmp ult i64 %187, %129, !dbg !1992
  br i1 %197, label %198, label %200, !dbg !1996

; <label>:198:                                    ; preds = %196
  %199 = getelementptr inbounds i8, i8* %0, i64 %187, !dbg !1992
  store i8 48, i8* %199, align 1, !dbg !1992, !tbaa !906
  br label %200, !dbg !1992

; <label>:200:                                    ; preds = %198, %196
  %201 = add i64 %181, 2, !dbg !1996
  call void @llvm.dbg.value(metadata i64 %201, metadata !1809, metadata !DIExpression()), !dbg !1872
  %202 = icmp ult i64 %201, %129, !dbg !1997
  br i1 %202, label %203, label %205, !dbg !2000

; <label>:203:                                    ; preds = %200
  %204 = getelementptr inbounds i8, i8* %0, i64 %201, !dbg !1997
  store i8 48, i8* %204, align 1, !dbg !1997, !tbaa !906
  br label %205, !dbg !1997

; <label>:205:                                    ; preds = %203, %200
  %206 = add i64 %181, 3, !dbg !2000
  call void @llvm.dbg.value(metadata i64 %206, metadata !1809, metadata !DIExpression()), !dbg !1872
  br label %467, !dbg !2001

; <label>:207:                                    ; preds = %158
  br i1 %22, label %478, label %607, !dbg !2002

; <label>:208:                                    ; preds = %153
  switch i32 %94, label %467 [
    i32 2, label %209
    i32 5, label %210
  ], !dbg !2003

; <label>:209:                                    ; preds = %208
  br i1 %110, label %467, label %661, !dbg !2004

; <label>:210:                                    ; preds = %208
  br i1 %24, label %467, label %211, !dbg !2006

; <label>:211:                                    ; preds = %210
  %212 = add i64 %122, 2, !dbg !2008
  %213 = icmp ult i64 %212, %154, !dbg !2009
  br i1 %213, label %214, label %467, !dbg !2010

; <label>:214:                                    ; preds = %211
  %215 = add i64 %122, 1, !dbg !2011
  %216 = getelementptr inbounds i8, i8* %2, i64 %215, !dbg !2012
  %217 = load i8, i8* %216, align 1, !dbg !2012, !tbaa !906
  %218 = icmp eq i8 %217, 63, !dbg !2013
  br i1 %218, label %219, label %467, !dbg !2014

; <label>:219:                                    ; preds = %214
  %220 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !2015
  %221 = load i8, i8* %220, align 1, !dbg !2015, !tbaa !906
  %222 = sext i8 %221 to i32, !dbg !2015
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
  ], !dbg !2016

; <label>:223:                                    ; preds = %219, %219, %219, %219, %219, %219, %219, %219, %219
  br i1 %110, label %224, label %661, !dbg !2017

; <label>:224:                                    ; preds = %223
  call void @llvm.dbg.value(metadata i8 %221, metadata !1819, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i64 %212, metadata !1808, metadata !DIExpression()), !dbg !1932
  %225 = icmp ult i64 %123, %129, !dbg !2019
  br i1 %225, label %226, label %228, !dbg !2022

; <label>:226:                                    ; preds = %224
  %227 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2019
  store i8 63, i8* %227, align 1, !dbg !2019, !tbaa !906
  br label %228, !dbg !2019

; <label>:228:                                    ; preds = %226, %224
  %229 = add i64 %123, 1, !dbg !2022
  call void @llvm.dbg.value(metadata i64 %229, metadata !1809, metadata !DIExpression()), !dbg !1872
  %230 = icmp ult i64 %229, %129, !dbg !2023
  br i1 %230, label %231, label %233, !dbg !2026

; <label>:231:                                    ; preds = %228
  %232 = getelementptr inbounds i8, i8* %0, i64 %229, !dbg !2023
  store i8 34, i8* %232, align 1, !dbg !2023, !tbaa !906
  br label %233, !dbg !2023

; <label>:233:                                    ; preds = %231, %228
  %234 = add i64 %123, 2, !dbg !2026
  call void @llvm.dbg.value(metadata i64 %234, metadata !1809, metadata !DIExpression()), !dbg !1872
  %235 = icmp ult i64 %234, %129, !dbg !2027
  br i1 %235, label %236, label %238, !dbg !2030

; <label>:236:                                    ; preds = %233
  %237 = getelementptr inbounds i8, i8* %0, i64 %234, !dbg !2027
  store i8 34, i8* %237, align 1, !dbg !2027, !tbaa !906
  br label %238, !dbg !2027

; <label>:238:                                    ; preds = %236, %233
  %239 = add i64 %123, 3, !dbg !2030
  call void @llvm.dbg.value(metadata i64 %239, metadata !1809, metadata !DIExpression()), !dbg !1872
  %240 = icmp ult i64 %239, %129, !dbg !2031
  br i1 %240, label %241, label %243, !dbg !2034

; <label>:241:                                    ; preds = %238
  %242 = getelementptr inbounds i8, i8* %0, i64 %239, !dbg !2031
  store i8 63, i8* %242, align 1, !dbg !2031, !tbaa !906
  br label %243, !dbg !2031

; <label>:243:                                    ; preds = %241, %238
  %244 = add i64 %123, 4, !dbg !2034
  call void @llvm.dbg.value(metadata i64 %244, metadata !1809, metadata !DIExpression()), !dbg !1872
  br label %467, !dbg !2035

; <label>:245:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !1823, metadata !DIExpression()), !dbg !2036
  br label %255, !dbg !2037

; <label>:246:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !1823, metadata !DIExpression()), !dbg !2036
  br label %255, !dbg !2038

; <label>:247:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !1823, metadata !DIExpression()), !dbg !2036
  br label %253, !dbg !2039

; <label>:248:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !1823, metadata !DIExpression()), !dbg !2036
  br label %253, !dbg !2040

; <label>:249:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !1823, metadata !DIExpression()), !dbg !2036
  br label %255, !dbg !2041

; <label>:250:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 %157, metadata !1823, metadata !DIExpression()), !dbg !2036
  br i1 %114, label %251, label %252, !dbg !2042

; <label>:251:                                    ; preds = %250
  br i1 %110, label %562, label %661, !dbg !2043

; <label>:252:                                    ; preds = %250
  br i1 %120, label %562, label %253, !dbg !2046

; <label>:253:                                    ; preds = %252, %153, %248, %247
  %254 = phi i8 [ 92, %252 ], [ 116, %248 ], [ 114, %247 ], [ 110, %153 ], !dbg !2048
  call void @llvm.dbg.value(metadata i8 %254, metadata !1823, metadata !DIExpression()), !dbg !2036
  br i1 %113, label %255, label %661, !dbg !2049

; <label>:255:                                    ; preds = %253, %153, %249, %246, %245
  %256 = phi i8 [ %254, %253 ], [ 118, %249 ], [ 102, %246 ], [ 98, %245 ], [ 97, %153 ], !dbg !2048
  call void @llvm.dbg.value(metadata i8 %256, metadata !1823, metadata !DIExpression()), !dbg !2036
  br i1 %103, label %524, label %478, !dbg !2051

; <label>:257:                                    ; preds = %153, %153
  %258 = icmp eq i64 %154, -1, !dbg !2052
  br i1 %258, label %259, label %264, !dbg !2054

; <label>:259:                                    ; preds = %257
  %260 = load i8, i8* %25, align 1, !dbg !2055, !tbaa !906
  %261 = icmp ne i8 %260, 0, !dbg !2056
  %262 = icmp ne i64 %122, 0, !dbg !2057
  %263 = or i1 %262, %261, !dbg !2059
  br i1 %263, label %467, label %270, !dbg !2059

; <label>:264:                                    ; preds = %257
  %265 = icmp ne i64 %154, 1, !dbg !2060
  %266 = icmp ne i64 %122, 0, !dbg !2057
  %267 = or i1 %266, %265, !dbg !2054
  br i1 %267, label %467, label %270, !dbg !2054

; <label>:268:                                    ; preds = %153, %153
  %269 = icmp eq i64 %122, 0, !dbg !2057
  br i1 %269, label %270, label %467, !dbg !2061

; <label>:270:                                    ; preds = %268, %264, %259, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1826, metadata !DIExpression()), !dbg !1943
  br label %271, !dbg !2062

; <label>:271:                                    ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %270
  %272 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %270 ], !dbg !2048
  call void @llvm.dbg.value(metadata i8 %272, metadata !1826, metadata !DIExpression()), !dbg !1943
  br i1 %113, label %467, label %661, !dbg !2063

; <label>:273:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1817, metadata !DIExpression()), !dbg !1881
  call void @llvm.dbg.value(metadata i8 1, metadata !1826, metadata !DIExpression()), !dbg !1943
  br i1 %114, label %274, label %467, !dbg !2065

; <label>:274:                                    ; preds = %273
  br i1 %110, label %275, label %661, !dbg !2066

; <label>:275:                                    ; preds = %274
  %276 = icmp eq i64 %129, 0, !dbg !2069
  %277 = icmp ne i64 %124, 0, !dbg !2071
  %278 = or i1 %277, %276, !dbg !2072
  %279 = select i1 %278, i64 %124, i64 %129, !dbg !2072
  %280 = select i1 %278, i64 %129, i64 0, !dbg !2072
  call void @llvm.dbg.value(metadata i64 %280, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %279, metadata !1810, metadata !DIExpression()), !dbg !1873
  %281 = icmp ult i64 %123, %280, !dbg !2073
  br i1 %281, label %282, label %284, !dbg !2076

; <label>:282:                                    ; preds = %275
  %283 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2073
  store i8 39, i8* %283, align 1, !dbg !2073, !tbaa !906
  br label %284, !dbg !2073

; <label>:284:                                    ; preds = %282, %275
  %285 = add i64 %123, 1, !dbg !2076
  call void @llvm.dbg.value(metadata i64 %285, metadata !1809, metadata !DIExpression()), !dbg !1872
  %286 = icmp ult i64 %285, %280, !dbg !2077
  br i1 %286, label %287, label %289, !dbg !2080

; <label>:287:                                    ; preds = %284
  %288 = getelementptr inbounds i8, i8* %0, i64 %285, !dbg !2077
  store i8 92, i8* %288, align 1, !dbg !2077, !tbaa !906
  br label %289, !dbg !2077

; <label>:289:                                    ; preds = %287, %284
  %290 = add i64 %123, 2, !dbg !2080
  call void @llvm.dbg.value(metadata i64 %290, metadata !1809, metadata !DIExpression()), !dbg !1872
  %291 = icmp ult i64 %290, %280, !dbg !2081
  br i1 %291, label %292, label %294, !dbg !2084

; <label>:292:                                    ; preds = %289
  %293 = getelementptr inbounds i8, i8* %0, i64 %290, !dbg !2081
  store i8 39, i8* %293, align 1, !dbg !2081, !tbaa !906
  br label %294, !dbg !2081

; <label>:294:                                    ; preds = %292, %289
  %295 = add i64 %123, 3, !dbg !2084
  call void @llvm.dbg.value(metadata i64 %295, metadata !1809, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i8 0, metadata !1816, metadata !DIExpression()), !dbg !1880
  br label %467, !dbg !2085

; <label>:296:                                    ; preds = %153
  br i1 %14, label %297, label %306, !dbg !2086

; <label>:297:                                    ; preds = %296
  call void @llvm.dbg.value(metadata i64 1, metadata !1827, metadata !DIExpression()), !dbg !2087
  %298 = tail call i16** @__ctype_b_loc() #17, !dbg !2088
  %299 = load i16*, i16** %298, align 8, !dbg !2088, !tbaa !752
  %300 = zext i8 %157 to i64, !dbg !2088
  %301 = getelementptr inbounds i16, i16* %299, i64 %300, !dbg !2088
  %302 = load i16, i16* %301, align 2, !dbg !2088, !tbaa !1347
  %303 = lshr i16 %302, 14, !dbg !2090
  %304 = trunc i16 %303 to i8, !dbg !2090
  %305 = and i8 %304, 1, !dbg !2090
  call void @llvm.dbg.value(metadata i8 %305, metadata !1830, metadata !DIExpression()), !dbg !2091
  br label %359, !dbg !2092

; <label>:306:                                    ; preds = %296
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %19) #11, !dbg !2093
  store i64 0, i64* %10, align 8, !dbg !2094
  call void @llvm.dbg.value(metadata i64 0, metadata !1827, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i8 1, metadata !1830, metadata !DIExpression()), !dbg !2091
  %307 = icmp eq i64 %154, -1, !dbg !2095
  br i1 %307, label %308, label %310, !dbg !2097

; <label>:308:                                    ; preds = %306
  %309 = call i64 @strlen(i8* nonnull %2) #9, !dbg !2098
  call void @llvm.dbg.value(metadata i64 %309, metadata !1802, metadata !DIExpression()), !dbg !1866
  br label %310, !dbg !2099

; <label>:310:                                    ; preds = %308, %306
  %311 = phi i64 [ %309, %308 ], [ %154, %306 ], !dbg !2100
  call void @llvm.dbg.value(metadata i64 %311, metadata !1802, metadata !DIExpression()), !dbg !1866
  br label %312, !dbg !2101

; <label>:312:                                    ; preds = %347, %310
  %313 = phi i64 [ 0, %310 ], [ %352, %347 ], !dbg !2102
  %314 = phi i8 [ 1, %310 ], [ %351, %347 ], !dbg !2103
  call void @llvm.dbg.value(metadata i8 %314, metadata !1830, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i64 %313, metadata !1827, metadata !DIExpression()), !dbg !2087
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #11, !dbg !2104
  %315 = add i64 %313, %122, !dbg !2105
  %316 = getelementptr inbounds i8, i8* %2, i64 %315, !dbg !2106
  %317 = sub i64 %311, %315, !dbg !2107
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !1831, metadata !DIExpression(DW_OP_deref)), !dbg !2108
  call void @llvm.dbg.value(metadata i32* %12, metadata !1849, metadata !DIExpression(DW_OP_deref)), !dbg !2109
  %318 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %316, i64 %317, %struct.__mbstate_t* nonnull %11) #11, !dbg !2110
  call void @llvm.dbg.value(metadata i64 %318, metadata !1852, metadata !DIExpression()), !dbg !2111
  switch i64 %318, label %331 [
    i64 0, label %343
    i64 -1, label %344
    i64 -2, label %319
  ], !dbg !2112

; <label>:319:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !1827, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i64 %313, metadata !1827, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i64 %313, metadata !1827, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i64 %313, metadata !1827, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i64 %313, metadata !1827, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i64 %313, metadata !1827, metadata !DIExpression()), !dbg !2087
  %320 = icmp ugt i64 %311, %315, !dbg !2113
  br i1 %320, label %321, label %344, !dbg !2115

; <label>:321:                                    ; preds = %319, %327
  %322 = phi i64 [ %329, %327 ], [ %315, %319 ]
  %323 = phi i64 [ %328, %327 ], [ %313, %319 ]
  call void @llvm.dbg.value(metadata i64 %323, metadata !1827, metadata !DIExpression()), !dbg !2087
  %324 = getelementptr inbounds i8, i8* %2, i64 %322, !dbg !2116
  %325 = load i8, i8* %324, align 1, !dbg !2116, !tbaa !906
  %326 = icmp eq i8 %325, 0, !dbg !2115
  br i1 %326, label %344, label %327, !dbg !2117

; <label>:327:                                    ; preds = %321
  %328 = add i64 %323, 1, !dbg !2118
  call void @llvm.dbg.value(metadata i64 %328, metadata !1827, metadata !DIExpression()), !dbg !2087
  %329 = add i64 %328, %122, !dbg !2119
  %330 = icmp ult i64 %329, %311, !dbg !2113
  br i1 %330, label %321, label %344, !dbg !2115, !llvm.loop !2120

; <label>:331:                                    ; preds = %312
  %332 = icmp ugt i64 %318, 1, !dbg !2121
  %333 = and i1 %116, %332, !dbg !2124
  call void @llvm.dbg.value(metadata i64 1, metadata !1853, metadata !DIExpression()), !dbg !2125
  br i1 %333, label %334, label %347, !dbg !2124

; <label>:334:                                    ; preds = %331, %340
  %335 = phi i64 [ %341, %340 ], [ 1, %331 ]
  call void @llvm.dbg.value(metadata i64 %335, metadata !1853, metadata !DIExpression()), !dbg !2125
  %336 = add i64 %335, %315, !dbg !2126
  %337 = getelementptr inbounds i8, i8* %2, i64 %336, !dbg !2127
  %338 = load i8, i8* %337, align 1, !dbg !2127, !tbaa !906
  %339 = sext i8 %338 to i32, !dbg !2127
  switch i32 %339, label %340 [
    i32 91, label %358
    i32 92, label %358
    i32 94, label %358
    i32 96, label %358
    i32 124, label %358
  ], !dbg !2128

; <label>:340:                                    ; preds = %334
  %341 = add nuw i64 %335, 1, !dbg !2129
  call void @llvm.dbg.value(metadata i64 %341, metadata !1853, metadata !DIExpression()), !dbg !2125
  %342 = icmp ult i64 %341, %318, !dbg !2121
  br i1 %342, label %334, label %347, !dbg !2130, !llvm.loop !2131

; <label>:343:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !1827, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i8 %314, metadata !1830, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i64 %313, metadata !1827, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i8 %314, metadata !1830, metadata !DIExpression()), !dbg !2091
  br label %344, !dbg !2133

; <label>:344:                                    ; preds = %327, %321, %312, %343, %319
  %345 = phi i64 [ %313, %319 ], [ %313, %343 ], [ %313, %312 ], [ %323, %321 ], [ %328, %327 ]
  %346 = phi i8 [ 0, %319 ], [ %314, %343 ], [ 0, %312 ], [ 0, %321 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i8 %351, metadata !1830, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i64 %352, metadata !1827, metadata !DIExpression()), !dbg !2087
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #11, !dbg !2133
  br label %355

; <label>:347:                                    ; preds = %340, %331
  %348 = load i32, i32* %12, align 4, !dbg !2134, !tbaa !1207
  call void @llvm.dbg.value(metadata i32 %348, metadata !1849, metadata !DIExpression()), !dbg !2109
  %349 = call i32 @iswprint(i32 %348) #11, !dbg !2136
  %350 = icmp eq i32 %349, 0, !dbg !2136
  %351 = select i1 %350, i8 0, i8 %314, !dbg !2137
  call void @llvm.dbg.value(metadata i8 %351, metadata !1830, metadata !DIExpression()), !dbg !2091
  %352 = add i64 %318, %313, !dbg !2138
  call void @llvm.dbg.value(metadata i64 %352, metadata !1827, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i8 %351, metadata !1830, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i64 %352, metadata !1827, metadata !DIExpression()), !dbg !2087
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #11, !dbg !2133
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !1831, metadata !DIExpression(DW_OP_deref)), !dbg !2108
  %353 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #9, !dbg !2139
  %354 = icmp eq i32 %353, 0, !dbg !2140
  br i1 %354, label %312, label %355, !dbg !2141, !llvm.loop !2142

; <label>:355:                                    ; preds = %347, %344
  %356 = phi i8 [ %346, %344 ], [ %351, %347 ]
  %357 = phi i64 [ %345, %344 ], [ %352, %347 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #11, !dbg !2144
  br label %359

; <label>:358:                                    ; preds = %334, %334, %334, %334, %334
  call void @llvm.dbg.value(metadata i8* %95, metadata !1806, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata i8* %95, metadata !1806, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata i8* %95, metadata !1806, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata i8* %95, metadata !1806, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata i8* %95, metadata !1806, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata i8* %96, metadata !1807, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata i8* %96, metadata !1807, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata i8* %96, metadata !1807, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata i8* %96, metadata !1807, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata i8* %96, metadata !1807, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata i64 %129, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %129, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %129, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %129, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %129, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %311, metadata !1802, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i64 %311, metadata !1802, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i64 %311, metadata !1802, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i64 %311, metadata !1802, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i64 %311, metadata !1802, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i8* %95, metadata !1806, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata i8* %95, metadata !1806, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata i8* %95, metadata !1806, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata i8* %95, metadata !1806, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata i8* %95, metadata !1806, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata i8* %96, metadata !1807, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata i8* %96, metadata !1807, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata i8* %96, metadata !1807, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata i8* %96, metadata !1807, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata i8* %96, metadata !1807, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata i64 %129, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %129, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %129, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %129, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %129, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %311, metadata !1802, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i64 %311, metadata !1802, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i64 %311, metadata !1802, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i64 %311, metadata !1802, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i64 %311, metadata !1802, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i8* %95, metadata !1806, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata i8* %95, metadata !1806, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata i8* %95, metadata !1806, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata i8* %95, metadata !1806, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata i8* %95, metadata !1806, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata i8* %96, metadata !1807, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata i8* %96, metadata !1807, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata i8* %96, metadata !1807, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata i8* %96, metadata !1807, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata i8* %96, metadata !1807, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata i64 %129, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %129, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %129, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %129, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %129, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %311, metadata !1802, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i64 %311, metadata !1802, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i64 %311, metadata !1802, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i64 %311, metadata !1802, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i64 %311, metadata !1802, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i8* %95, metadata !1806, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata i8* %95, metadata !1806, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata i8* %95, metadata !1806, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata i8* %95, metadata !1806, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata i8* %95, metadata !1806, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata i8* %96, metadata !1807, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata i8* %96, metadata !1807, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata i8* %96, metadata !1807, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata i8* %96, metadata !1807, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata i8* %96, metadata !1807, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata i64 %129, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %129, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %129, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %129, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %129, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %311, metadata !1802, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i64 %311, metadata !1802, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i64 %311, metadata !1802, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i64 %311, metadata !1802, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i64 %311, metadata !1802, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i32 2, metadata !1803, metadata !DIExpression()), !dbg !1867
  call void @llvm.dbg.value(metadata i32 2, metadata !1803, metadata !DIExpression()), !dbg !1867
  call void @llvm.dbg.value(metadata i32 2, metadata !1803, metadata !DIExpression()), !dbg !1867
  call void @llvm.dbg.value(metadata i32 2, metadata !1803, metadata !DIExpression()), !dbg !1867
  call void @llvm.dbg.value(metadata i32 2, metadata !1803, metadata !DIExpression()), !dbg !1867
  call void @llvm.dbg.value(metadata i8* %95, metadata !1806, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata i8* %95, metadata !1806, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata i8* %95, metadata !1806, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata i8* %95, metadata !1806, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata i8* %95, metadata !1806, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata i8* %96, metadata !1807, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata i8* %96, metadata !1807, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata i8* %96, metadata !1807, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata i8* %96, metadata !1807, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata i8* %96, metadata !1807, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata i8 %100, metadata !1813, metadata !DIExpression()), !dbg !1876
  call void @llvm.dbg.value(metadata i8 %100, metadata !1813, metadata !DIExpression()), !dbg !1876
  call void @llvm.dbg.value(metadata i8 %100, metadata !1813, metadata !DIExpression()), !dbg !1876
  call void @llvm.dbg.value(metadata i8 %100, metadata !1813, metadata !DIExpression()), !dbg !1876
  call void @llvm.dbg.value(metadata i8 %100, metadata !1813, metadata !DIExpression()), !dbg !1876
  call void @llvm.dbg.value(metadata i64 %129, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %129, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %129, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %129, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %129, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %311, metadata !1802, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i64 %311, metadata !1802, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i64 %311, metadata !1802, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i64 %311, metadata !1802, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i64 %311, metadata !1802, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i32 %94, metadata !1803, metadata !DIExpression()), !dbg !1867
  call void @llvm.dbg.value(metadata i32 %94, metadata !1803, metadata !DIExpression()), !dbg !1867
  call void @llvm.dbg.value(metadata i32 %94, metadata !1803, metadata !DIExpression()), !dbg !1867
  call void @llvm.dbg.value(metadata i32 %94, metadata !1803, metadata !DIExpression()), !dbg !1867
  call void @llvm.dbg.value(metadata i32 %94, metadata !1803, metadata !DIExpression()), !dbg !1867
  call void @llvm.dbg.value(metadata i8* %95, metadata !1806, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata i8* %95, metadata !1806, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata i8* %95, metadata !1806, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata i8* %95, metadata !1806, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata i8* %95, metadata !1806, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata i8* %96, metadata !1807, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata i8* %96, metadata !1807, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata i8* %96, metadata !1807, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata i8* %96, metadata !1807, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata i8* %96, metadata !1807, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata i8 %100, metadata !1813, metadata !DIExpression()), !dbg !1876
  call void @llvm.dbg.value(metadata i8 %100, metadata !1813, metadata !DIExpression()), !dbg !1876
  call void @llvm.dbg.value(metadata i8 %100, metadata !1813, metadata !DIExpression()), !dbg !1876
  call void @llvm.dbg.value(metadata i8 %100, metadata !1813, metadata !DIExpression()), !dbg !1876
  call void @llvm.dbg.value(metadata i8 %100, metadata !1813, metadata !DIExpression()), !dbg !1876
  call void @llvm.dbg.value(metadata i64 %129, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %129, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %129, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %129, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %129, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %311, metadata !1802, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i64 %311, metadata !1802, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i64 %311, metadata !1802, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i64 %311, metadata !1802, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i64 %311, metadata !1802, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i8 %351, metadata !1830, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i64 %352, metadata !1827, metadata !DIExpression()), !dbg !2087
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #11, !dbg !2133
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #11, !dbg !2144
  br label %661

; <label>:359:                                    ; preds = %355, %297
  %360 = phi i64 [ %154, %297 ], [ %311, %355 ], !dbg !2145
  %361 = phi i64 [ 1, %297 ], [ %357, %355 ], !dbg !2146
  %362 = phi i8 [ %305, %297 ], [ %356, %355 ], !dbg !2146
  call void @llvm.dbg.value(metadata i8 %362, metadata !1830, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i64 %361, metadata !1827, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i64 %360, metadata !1802, metadata !DIExpression()), !dbg !1866
  %363 = and i8 %362, 1, !dbg !2147
  %364 = icmp ne i8 %363, 0, !dbg !2147
  call void @llvm.dbg.value(metadata i8 %363, metadata !1826, metadata !DIExpression()), !dbg !1943
  %365 = icmp ult i64 %361, 2, !dbg !2148
  %366 = or i1 %364, %115, !dbg !2149
  %367 = and i1 %365, %366, !dbg !2150
  br i1 %367, label %467, label %368, !dbg !2150

; <label>:368:                                    ; preds = %359
  %369 = add i64 %361, %122, !dbg !2151
  call void @llvm.dbg.value(metadata i64 %369, metadata !1860, metadata !DIExpression()), !dbg !2152
  br label %370, !dbg !2153

; <label>:370:                                    ; preds = %463, %368
  %371 = phi i64 [ %122, %368 ], [ %438, %463 ], !dbg !2154
  %372 = phi i64 [ %123, %368 ], [ %464, %463 ], !dbg !2158
  %373 = phi i8 [ %126, %368 ], [ %459, %463 ], !dbg !1880
  %374 = phi i8 [ %157, %368 ], [ %466, %463 ], !dbg !2154
  %375 = phi i8 [ %155, %368 ], [ %436, %463 ], !dbg !2160
  %376 = phi i8 [ 0, %368 ], [ %437, %463 ], !dbg !1942
  call void @llvm.dbg.value(metadata i8 %376, metadata !1825, metadata !DIExpression()), !dbg !1942
  call void @llvm.dbg.value(metadata i8 %375, metadata !1824, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i8 %374, metadata !1819, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i8 %373, metadata !1816, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i64 %372, metadata !1809, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i64 %371, metadata !1808, metadata !DIExpression()), !dbg !1932
  br i1 %366, label %423, label %377, !dbg !2164

; <label>:377:                                    ; preds = %370
  br i1 %110, label %378, label %661, !dbg !2165

; <label>:378:                                    ; preds = %377
  call void @llvm.dbg.value(metadata i8 1, metadata !1825, metadata !DIExpression()), !dbg !1942
  %379 = and i8 %373, 1, !dbg !2168
  %380 = icmp eq i8 %379, 0, !dbg !2168
  %381 = and i1 %114, %380, !dbg !2168
  br i1 %381, label %382, label %398, !dbg !2168

; <label>:382:                                    ; preds = %378
  %383 = icmp ult i64 %372, %129, !dbg !2170
  br i1 %383, label %384, label %386, !dbg !2174

; <label>:384:                                    ; preds = %382
  %385 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !2170
  store i8 39, i8* %385, align 1, !dbg !2170, !tbaa !906
  br label %386, !dbg !2170

; <label>:386:                                    ; preds = %384, %382
  %387 = add i64 %372, 1, !dbg !2174
  call void @llvm.dbg.value(metadata i64 %387, metadata !1809, metadata !DIExpression()), !dbg !1872
  %388 = icmp ult i64 %387, %129, !dbg !2175
  br i1 %388, label %389, label %391, !dbg !2178

; <label>:389:                                    ; preds = %386
  %390 = getelementptr inbounds i8, i8* %0, i64 %387, !dbg !2175
  store i8 36, i8* %390, align 1, !dbg !2175, !tbaa !906
  br label %391, !dbg !2175

; <label>:391:                                    ; preds = %389, %386
  %392 = add i64 %372, 2, !dbg !2178
  call void @llvm.dbg.value(metadata i64 %392, metadata !1809, metadata !DIExpression()), !dbg !1872
  %393 = icmp ult i64 %392, %129, !dbg !2179
  br i1 %393, label %394, label %396, !dbg !2182

; <label>:394:                                    ; preds = %391
  %395 = getelementptr inbounds i8, i8* %0, i64 %392, !dbg !2179
  store i8 39, i8* %395, align 1, !dbg !2179, !tbaa !906
  br label %396, !dbg !2179

; <label>:396:                                    ; preds = %394, %391
  %397 = add i64 %372, 3, !dbg !2182
  call void @llvm.dbg.value(metadata i64 %397, metadata !1809, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i8 1, metadata !1816, metadata !DIExpression()), !dbg !1880
  br label %398, !dbg !2183

; <label>:398:                                    ; preds = %378, %396
  %399 = phi i64 [ %397, %396 ], [ %372, %378 ], !dbg !1931
  %400 = phi i8 [ 1, %396 ], [ %373, %378 ], !dbg !1931
  call void @llvm.dbg.value(metadata i8 %400, metadata !1816, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i64 %399, metadata !1809, metadata !DIExpression()), !dbg !1872
  %401 = icmp ult i64 %399, %129, !dbg !2184
  br i1 %401, label %402, label %404, !dbg !2187

; <label>:402:                                    ; preds = %398
  %403 = getelementptr inbounds i8, i8* %0, i64 %399, !dbg !2184
  store i8 92, i8* %403, align 1, !dbg !2184, !tbaa !906
  br label %404, !dbg !2184

; <label>:404:                                    ; preds = %402, %398
  %405 = add i64 %399, 1, !dbg !2187
  call void @llvm.dbg.value(metadata i64 %405, metadata !1809, metadata !DIExpression()), !dbg !1872
  %406 = icmp ult i64 %405, %129, !dbg !2188
  br i1 %406, label %407, label %411, !dbg !2191

; <label>:407:                                    ; preds = %404
  %408 = lshr i8 %374, 6, !dbg !2188
  %409 = or i8 %408, 48, !dbg !2188
  %410 = getelementptr inbounds i8, i8* %0, i64 %405, !dbg !2188
  store i8 %409, i8* %410, align 1, !dbg !2188, !tbaa !906
  br label %411, !dbg !2188

; <label>:411:                                    ; preds = %407, %404
  %412 = add i64 %399, 2, !dbg !2191
  call void @llvm.dbg.value(metadata i64 %412, metadata !1809, metadata !DIExpression()), !dbg !1872
  %413 = icmp ult i64 %412, %129, !dbg !2192
  br i1 %413, label %414, label %419, !dbg !2195

; <label>:414:                                    ; preds = %411
  %415 = lshr i8 %374, 3, !dbg !2192
  %416 = and i8 %415, 7, !dbg !2192
  %417 = or i8 %416, 48, !dbg !2192
  %418 = getelementptr inbounds i8, i8* %0, i64 %412, !dbg !2192
  store i8 %417, i8* %418, align 1, !dbg !2192, !tbaa !906
  br label %419, !dbg !2192

; <label>:419:                                    ; preds = %414, %411
  %420 = add i64 %399, 3, !dbg !2195
  call void @llvm.dbg.value(metadata i64 %420, metadata !1809, metadata !DIExpression()), !dbg !1872
  %421 = and i8 %374, 7, !dbg !2196
  %422 = or i8 %421, 48, !dbg !2197
  call void @llvm.dbg.value(metadata i8 %422, metadata !1819, metadata !DIExpression()), !dbg !1958
  br label %432, !dbg !2198

; <label>:423:                                    ; preds = %370
  %424 = and i8 %375, 1, !dbg !2199
  %425 = icmp eq i8 %424, 0, !dbg !2199
  br i1 %425, label %432, label %426, !dbg !2200

; <label>:426:                                    ; preds = %423
  %427 = icmp ult i64 %372, %129, !dbg !2201
  br i1 %427, label %428, label %430, !dbg !2204

; <label>:428:                                    ; preds = %426
  %429 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !2201
  store i8 92, i8* %429, align 1, !dbg !2201, !tbaa !906
  br label %430, !dbg !2201

; <label>:430:                                    ; preds = %428, %426
  %431 = add i64 %372, 1, !dbg !2204
  call void @llvm.dbg.value(metadata i64 %431, metadata !1809, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i8 0, metadata !1824, metadata !DIExpression()), !dbg !1941
  br label %432, !dbg !2205

; <label>:432:                                    ; preds = %423, %430, %419
  %433 = phi i64 [ %431, %430 ], [ %372, %423 ], [ %420, %419 ], !dbg !2206
  %434 = phi i8 [ %373, %430 ], [ %373, %423 ], [ %400, %419 ], !dbg !1880
  %435 = phi i8 [ %374, %430 ], [ %374, %423 ], [ %422, %419 ], !dbg !2207
  %436 = phi i8 [ 0, %430 ], [ %375, %423 ], [ %375, %419 ], !dbg !2208
  %437 = phi i8 [ %376, %430 ], [ %376, %423 ], [ 1, %419 ], !dbg !2210
  call void @llvm.dbg.value(metadata i8 %437, metadata !1825, metadata !DIExpression()), !dbg !1942
  call void @llvm.dbg.value(metadata i8 %436, metadata !1824, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i8 %435, metadata !1819, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i8 %434, metadata !1816, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i64 %433, metadata !1809, metadata !DIExpression()), !dbg !1872
  %438 = add i64 %371, 1, !dbg !2211
  %439 = icmp ugt i64 %369, %438, !dbg !2213
  br i1 %439, label %440, label %562, !dbg !2214

; <label>:440:                                    ; preds = %432
  %441 = and i8 %434, 1, !dbg !2215
  %442 = icmp ne i8 %441, 0, !dbg !2215
  %443 = and i8 %437, 1, !dbg !2215
  %444 = icmp eq i8 %443, 0, !dbg !2215
  %445 = and i1 %442, %444, !dbg !2215
  br i1 %445, label %446, label %457, !dbg !2215

; <label>:446:                                    ; preds = %440
  %447 = icmp ult i64 %433, %129, !dbg !2218
  br i1 %447, label %448, label %450, !dbg !2222

; <label>:448:                                    ; preds = %446
  %449 = getelementptr inbounds i8, i8* %0, i64 %433, !dbg !2218
  store i8 39, i8* %449, align 1, !dbg !2218, !tbaa !906
  br label %450, !dbg !2218

; <label>:450:                                    ; preds = %448, %446
  %451 = add i64 %433, 1, !dbg !2222
  call void @llvm.dbg.value(metadata i64 %451, metadata !1809, metadata !DIExpression()), !dbg !1872
  %452 = icmp ult i64 %451, %129, !dbg !2223
  br i1 %452, label %453, label %455, !dbg !2226

; <label>:453:                                    ; preds = %450
  %454 = getelementptr inbounds i8, i8* %0, i64 %451, !dbg !2223
  store i8 39, i8* %454, align 1, !dbg !2223, !tbaa !906
  br label %455, !dbg !2223

; <label>:455:                                    ; preds = %453, %450
  %456 = add i64 %433, 2, !dbg !2226
  call void @llvm.dbg.value(metadata i64 %456, metadata !1809, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i8 0, metadata !1816, metadata !DIExpression()), !dbg !1880
  br label %457, !dbg !2227

; <label>:457:                                    ; preds = %440, %455
  %458 = phi i64 [ %456, %455 ], [ %433, %440 ], !dbg !2228
  %459 = phi i8 [ 0, %455 ], [ %434, %440 ], !dbg !1931
  call void @llvm.dbg.value(metadata i8 %459, metadata !1816, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i64 %458, metadata !1809, metadata !DIExpression()), !dbg !1872
  %460 = icmp ult i64 %458, %129, !dbg !2229
  br i1 %460, label %461, label %463, !dbg !2231

; <label>:461:                                    ; preds = %457
  %462 = getelementptr inbounds i8, i8* %0, i64 %458, !dbg !2229
  store i8 %435, i8* %462, align 1, !dbg !2229, !tbaa !906
  br label %463, !dbg !2229

; <label>:463:                                    ; preds = %461, %457
  %464 = add i64 %458, 1, !dbg !2231
  call void @llvm.dbg.value(metadata i64 %464, metadata !1809, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i64 %438, metadata !1808, metadata !DIExpression()), !dbg !1932
  %465 = getelementptr inbounds i8, i8* %2, i64 %438, !dbg !2232
  %466 = load i8, i8* %465, align 1, !dbg !2232, !tbaa !906
  call void @llvm.dbg.value(metadata i8 %466, metadata !1819, metadata !DIExpression()), !dbg !1958
  br label %370, !dbg !2233, !llvm.loop !2234

; <label>:467:                                    ; preds = %359, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %271, %188, %191, %205, %209, %210, %268, %264, %259, %273, %294, %243, %219, %214, %211, %208
  %468 = phi i64 [ %122, %294 ], [ %122, %273 ], [ %122, %271 ], [ %122, %268 ], [ %122, %259 ], [ %122, %264 ], [ %122, %208 ], [ %122, %219 ], [ %212, %243 ], [ %122, %214 ], [ %122, %211 ], [ %122, %210 ], [ %122, %209 ], [ %122, %205 ], [ %122, %191 ], [ %122, %188 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %359 ], !dbg !2237
  %469 = phi i64 [ %295, %294 ], [ %123, %273 ], [ %123, %271 ], [ %123, %268 ], [ %123, %259 ], [ %123, %264 ], [ %123, %208 ], [ %123, %219 ], [ %244, %243 ], [ %123, %214 ], [ %123, %211 ], [ %123, %210 ], [ %123, %209 ], [ %206, %205 ], [ %187, %191 ], [ %187, %188 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %359 ], !dbg !1931
  %470 = phi i64 [ %279, %294 ], [ %124, %273 ], [ %124, %271 ], [ %124, %268 ], [ %124, %259 ], [ %124, %264 ], [ %124, %208 ], [ %124, %219 ], [ %124, %243 ], [ %124, %214 ], [ %124, %211 ], [ %124, %210 ], [ %124, %209 ], [ %124, %205 ], [ %124, %191 ], [ %124, %188 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %359 ], !dbg !1873
  %471 = phi i64 [ %154, %294 ], [ %154, %273 ], [ %154, %271 ], [ %154, %268 ], [ -1, %259 ], [ %154, %264 ], [ %154, %208 ], [ %154, %219 ], [ %154, %243 ], [ %154, %214 ], [ %154, %211 ], [ %154, %210 ], [ %154, %209 ], [ %154, %205 ], [ %154, %191 ], [ %154, %188 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %360, %359 ], !dbg !2238
  %472 = phi i8 [ 0, %294 ], [ %126, %273 ], [ %126, %271 ], [ %126, %268 ], [ %126, %259 ], [ %126, %264 ], [ %126, %208 ], [ %126, %219 ], [ %126, %243 ], [ %126, %214 ], [ %126, %211 ], [ %126, %210 ], [ %126, %209 ], [ %182, %205 ], [ %182, %191 ], [ %182, %188 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %359 ], !dbg !1931
  %473 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %127, %271 ], [ %127, %268 ], [ %127, %259 ], [ %127, %264 ], [ %127, %208 ], [ %127, %219 ], [ %127, %243 ], [ %127, %214 ], [ %127, %211 ], [ %127, %210 ], [ %127, %209 ], [ %127, %205 ], [ %127, %191 ], [ %127, %188 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %359 ], !dbg !1931
  %474 = phi i8 [ 39, %294 ], [ 39, %273 ], [ %157, %271 ], [ %157, %268 ], [ %157, %259 ], [ %157, %264 ], [ 63, %208 ], [ 63, %219 ], [ %221, %243 ], [ 63, %214 ], [ 63, %211 ], [ 63, %210 ], [ 63, %209 ], [ 48, %205 ], [ 48, %191 ], [ 48, %188 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %359 ], !dbg !1956
  %475 = phi i8 [ 0, %294 ], [ 0, %273 ], [ 0, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 1, %205 ], [ 1, %191 ], [ 1, %188 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %359 ], !dbg !1956
  %476 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %272, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 0, %205 ], [ 0, %191 ], [ 0, %188 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %363, %359 ], !dbg !1956
  %477 = phi i64 [ %280, %294 ], [ %129, %273 ], [ %129, %271 ], [ %129, %268 ], [ %129, %259 ], [ %129, %264 ], [ %129, %208 ], [ %129, %219 ], [ %129, %243 ], [ %129, %214 ], [ %129, %211 ], [ %129, %210 ], [ %129, %209 ], [ %129, %205 ], [ %129, %191 ], [ %129, %188 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %359 ]
  call void @llvm.dbg.value(metadata i64 %477, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8 %476, metadata !1826, metadata !DIExpression()), !dbg !1943
  call void @llvm.dbg.value(metadata i8 %475, metadata !1825, metadata !DIExpression()), !dbg !1942
  call void @llvm.dbg.value(metadata i8 %155, metadata !1824, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i8 %474, metadata !1819, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i8 %473, metadata !1817, metadata !DIExpression()), !dbg !1881
  call void @llvm.dbg.value(metadata i8 %472, metadata !1816, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i64 %471, metadata !1802, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i64 %470, metadata !1810, metadata !DIExpression()), !dbg !1873
  call void @llvm.dbg.value(metadata i64 %469, metadata !1809, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i64 %468, metadata !1808, metadata !DIExpression()), !dbg !1932
  br i1 %105, label %489, label %478, !dbg !2239

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
  br i1 %112, label %490, label %512, !dbg !2241

; <label>:489:                                    ; preds = %467
  br i1 %20, label %512, label %490, !dbg !2242

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
  %501 = lshr i8 %494, 5, !dbg !2243
  %502 = zext i8 %501 to i64, !dbg !2243
  %503 = getelementptr inbounds i32, i32* %6, i64 %502, !dbg !2244
  %504 = load i32, i32* %503, align 4, !dbg !2244, !tbaa !1207
  %505 = and i8 %494, 31, !dbg !2245
  %506 = zext i8 %505 to i32, !dbg !2245
  %507 = shl i32 1, %506, !dbg !2246
  %508 = and i32 %504, %507, !dbg !2246
  %509 = icmp eq i32 %508, 0, !dbg !2246
  %510 = icmp eq i8 %155, 0, !dbg !2247
  %511 = and i1 %510, %509, !dbg !2248
  br i1 %511, label %562, label %524, !dbg !2248

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
  %523 = icmp eq i8 %155, 0, !dbg !2247
  br i1 %523, label %562, label %524, !dbg !2249

; <label>:524:                                    ; preds = %255, %490, %512
  %525 = phi i64 [ %500, %490 ], [ %522, %512 ], [ %122, %255 ], !dbg !2250
  %526 = phi i64 [ %499, %490 ], [ %521, %512 ], [ %123, %255 ], !dbg !1931
  %527 = phi i64 [ %498, %490 ], [ %520, %512 ], [ %124, %255 ], !dbg !1873
  %528 = phi i64 [ %497, %490 ], [ %519, %512 ], [ %154, %255 ], !dbg !2238
  %529 = phi i8 [ %496, %490 ], [ %518, %512 ], [ %126, %255 ], !dbg !1880
  %530 = phi i8 [ %495, %490 ], [ %517, %512 ], [ %127, %255 ], !dbg !1881
  %531 = phi i8 [ %494, %490 ], [ %516, %512 ], [ %256, %255 ], !dbg !2251
  %532 = phi i8 [ %492, %490 ], [ %514, %512 ], [ 0, %255 ], !dbg !1956
  %533 = phi i64 [ %491, %490 ], [ %513, %512 ], [ %129, %255 ]
  call void @llvm.dbg.value(metadata i64 %533, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8 %532, metadata !1826, metadata !DIExpression()), !dbg !1943
  call void @llvm.dbg.value(metadata i8 %531, metadata !1819, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i8 %530, metadata !1817, metadata !DIExpression()), !dbg !1881
  call void @llvm.dbg.value(metadata i8 %529, metadata !1816, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i64 %528, metadata !1802, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i64 %527, metadata !1810, metadata !DIExpression()), !dbg !1873
  call void @llvm.dbg.value(metadata i64 %526, metadata !1809, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i64 %525, metadata !1808, metadata !DIExpression()), !dbg !1932
  br i1 %110, label %534, label %661, !dbg !2254

; <label>:534:                                    ; preds = %524
  call void @llvm.dbg.value(metadata i8 1, metadata !1825, metadata !DIExpression()), !dbg !1942
  %535 = and i8 %529, 1, !dbg !2256
  %536 = icmp eq i8 %535, 0, !dbg !2256
  %537 = and i1 %114, %536, !dbg !2256
  br i1 %537, label %538, label %554, !dbg !2256

; <label>:538:                                    ; preds = %534
  %539 = icmp ult i64 %526, %533, !dbg !2258
  br i1 %539, label %540, label %542, !dbg !2262

; <label>:540:                                    ; preds = %538
  %541 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !2258
  store i8 39, i8* %541, align 1, !dbg !2258, !tbaa !906
  br label %542, !dbg !2258

; <label>:542:                                    ; preds = %540, %538
  %543 = add i64 %526, 1, !dbg !2262
  call void @llvm.dbg.value(metadata i64 %543, metadata !1809, metadata !DIExpression()), !dbg !1872
  %544 = icmp ult i64 %543, %533, !dbg !2263
  br i1 %544, label %545, label %547, !dbg !2266

; <label>:545:                                    ; preds = %542
  %546 = getelementptr inbounds i8, i8* %0, i64 %543, !dbg !2263
  store i8 36, i8* %546, align 1, !dbg !2263, !tbaa !906
  br label %547, !dbg !2263

; <label>:547:                                    ; preds = %545, %542
  %548 = add i64 %526, 2, !dbg !2266
  call void @llvm.dbg.value(metadata i64 %548, metadata !1809, metadata !DIExpression()), !dbg !1872
  %549 = icmp ult i64 %548, %533, !dbg !2267
  br i1 %549, label %550, label %552, !dbg !2270

; <label>:550:                                    ; preds = %547
  %551 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !2267
  store i8 39, i8* %551, align 1, !dbg !2267, !tbaa !906
  br label %552, !dbg !2267

; <label>:552:                                    ; preds = %550, %547
  %553 = add i64 %526, 3, !dbg !2270
  call void @llvm.dbg.value(metadata i64 %553, metadata !1809, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i8 1, metadata !1816, metadata !DIExpression()), !dbg !1880
  br label %554, !dbg !2271

; <label>:554:                                    ; preds = %534, %552
  %555 = phi i64 [ %553, %552 ], [ %526, %534 ], !dbg !2228
  %556 = phi i8 [ 1, %552 ], [ %529, %534 ], !dbg !1931
  call void @llvm.dbg.value(metadata i8 %556, metadata !1816, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i64 %555, metadata !1809, metadata !DIExpression()), !dbg !1872
  %557 = icmp ult i64 %555, %533, !dbg !2272
  br i1 %557, label %558, label %560, !dbg !2275

; <label>:558:                                    ; preds = %554
  %559 = getelementptr inbounds i8, i8* %0, i64 %555, !dbg !2272
  store i8 92, i8* %559, align 1, !dbg !2272, !tbaa !906
  br label %560, !dbg !2272

; <label>:560:                                    ; preds = %554, %558
  %561 = add i64 %555, 1, !dbg !2275
  call void @llvm.dbg.value(metadata i64 %561, metadata !1809, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i64 %572, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8 %571, metadata !1826, metadata !DIExpression()), !dbg !1943
  call void @llvm.dbg.value(metadata i8 %570, metadata !1825, metadata !DIExpression()), !dbg !1942
  call void @llvm.dbg.value(metadata i8 %569, metadata !1819, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i8 %568, metadata !1817, metadata !DIExpression()), !dbg !1881
  call void @llvm.dbg.value(metadata i8 %567, metadata !1816, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i64 %566, metadata !1802, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i64 %565, metadata !1810, metadata !DIExpression()), !dbg !1873
  call void @llvm.dbg.value(metadata i64 %564, metadata !1809, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i64 %563, metadata !1808, metadata !DIExpression()), !dbg !1932
  br label %589, !dbg !2276

; <label>:562:                                    ; preds = %432, %252, %490, %251, %512
  %563 = phi i64 [ %522, %512 ], [ %122, %251 ], [ %500, %490 ], [ %122, %252 ], [ %371, %432 ], !dbg !2250
  %564 = phi i64 [ %521, %512 ], [ %123, %251 ], [ %499, %490 ], [ %123, %252 ], [ %433, %432 ], !dbg !1931
  %565 = phi i64 [ %520, %512 ], [ %124, %251 ], [ %498, %490 ], [ %124, %252 ], [ %124, %432 ], !dbg !1873
  %566 = phi i64 [ %519, %512 ], [ %154, %251 ], [ %497, %490 ], [ %154, %252 ], [ %360, %432 ], !dbg !2238
  %567 = phi i8 [ %518, %512 ], [ %126, %251 ], [ %496, %490 ], [ %126, %252 ], [ %434, %432 ], !dbg !1880
  %568 = phi i8 [ %517, %512 ], [ %127, %251 ], [ %495, %490 ], [ %127, %252 ], [ %127, %432 ], !dbg !1881
  %569 = phi i8 [ %516, %512 ], [ 92, %251 ], [ %494, %490 ], [ 92, %252 ], [ %435, %432 ], !dbg !2279
  %570 = phi i8 [ %515, %512 ], [ 0, %251 ], [ %493, %490 ], [ 0, %252 ], [ %437, %432 ], !dbg !1956
  %571 = phi i8 [ %514, %512 ], [ 0, %251 ], [ %492, %490 ], [ 0, %252 ], [ %363, %432 ], !dbg !1956
  %572 = phi i64 [ %513, %512 ], [ %129, %251 ], [ %491, %490 ], [ %129, %252 ], [ %129, %432 ]
  call void @llvm.dbg.value(metadata i64 %572, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8 %571, metadata !1826, metadata !DIExpression()), !dbg !1943
  call void @llvm.dbg.value(metadata i8 %570, metadata !1825, metadata !DIExpression()), !dbg !1942
  call void @llvm.dbg.value(metadata i8 %569, metadata !1819, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i8 %568, metadata !1817, metadata !DIExpression()), !dbg !1881
  call void @llvm.dbg.value(metadata i8 %567, metadata !1816, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i64 %566, metadata !1802, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i64 %565, metadata !1810, metadata !DIExpression()), !dbg !1873
  call void @llvm.dbg.value(metadata i64 %564, metadata !1809, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i64 %563, metadata !1808, metadata !DIExpression()), !dbg !1932
  %573 = and i8 %567, 1, !dbg !2276
  %574 = icmp ne i8 %573, 0, !dbg !2276
  %575 = and i8 %570, 1, !dbg !2276
  %576 = icmp eq i8 %575, 0, !dbg !2276
  %577 = and i1 %574, %576, !dbg !2276
  br i1 %577, label %578, label %589, !dbg !2276

; <label>:578:                                    ; preds = %562
  %579 = icmp ult i64 %564, %572, !dbg !2280
  br i1 %579, label %580, label %582, !dbg !2284

; <label>:580:                                    ; preds = %578
  %581 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !2280
  store i8 39, i8* %581, align 1, !dbg !2280, !tbaa !906
  br label %582, !dbg !2280

; <label>:582:                                    ; preds = %580, %578
  %583 = add i64 %564, 1, !dbg !2284
  call void @llvm.dbg.value(metadata i64 %583, metadata !1809, metadata !DIExpression()), !dbg !1872
  %584 = icmp ult i64 %583, %572, !dbg !2285
  br i1 %584, label %585, label %587, !dbg !2288

; <label>:585:                                    ; preds = %582
  %586 = getelementptr inbounds i8, i8* %0, i64 %583, !dbg !2285
  store i8 39, i8* %586, align 1, !dbg !2285, !tbaa !906
  br label %587, !dbg !2285

; <label>:587:                                    ; preds = %585, %582
  %588 = add i64 %564, 2, !dbg !2288
  call void @llvm.dbg.value(metadata i64 %588, metadata !1809, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i8 0, metadata !1816, metadata !DIExpression()), !dbg !1880
  br label %589, !dbg !2289

; <label>:589:                                    ; preds = %560, %562, %587
  %590 = phi i64 [ %572, %587 ], [ %572, %562 ], [ %533, %560 ]
  %591 = phi i8 [ %571, %587 ], [ %571, %562 ], [ %532, %560 ]
  %592 = phi i8 [ %569, %587 ], [ %569, %562 ], [ %531, %560 ]
  %593 = phi i8 [ %568, %587 ], [ %568, %562 ], [ %530, %560 ]
  %594 = phi i64 [ %566, %587 ], [ %566, %562 ], [ %528, %560 ]
  %595 = phi i64 [ %565, %587 ], [ %565, %562 ], [ %527, %560 ]
  %596 = phi i64 [ %563, %587 ], [ %563, %562 ], [ %525, %560 ]
  %597 = phi i64 [ %588, %587 ], [ %564, %562 ], [ %561, %560 ], !dbg !2228
  %598 = phi i8 [ 0, %587 ], [ %567, %562 ], [ %556, %560 ], !dbg !1931
  call void @llvm.dbg.value(metadata i8 %598, metadata !1816, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i64 %597, metadata !1809, metadata !DIExpression()), !dbg !1872
  %599 = icmp ult i64 %597, %590, !dbg !2290
  br i1 %599, label %600, label %602, !dbg !2293

; <label>:600:                                    ; preds = %589
  %601 = getelementptr inbounds i8, i8* %0, i64 %597, !dbg !2290
  store i8 %592, i8* %601, align 1, !dbg !2290, !tbaa !906
  br label %602, !dbg !2290

; <label>:602:                                    ; preds = %600, %589
  %603 = add i64 %597, 1, !dbg !2293
  call void @llvm.dbg.value(metadata i64 %603, metadata !1809, metadata !DIExpression()), !dbg !1872
  %604 = and i8 %591, 1, !dbg !2294
  %605 = icmp eq i8 %604, 0, !dbg !2294
  %606 = select i1 %605, i8 0, i8 %128, !dbg !2296
  call void @llvm.dbg.value(metadata i8 %606, metadata !1818, metadata !DIExpression()), !dbg !1882
  br label %607, !dbg !2297

; <label>:607:                                    ; preds = %602, %207
  %608 = phi i64 [ %596, %602 ], [ %122, %207 ], !dbg !2250
  %609 = phi i64 [ %603, %602 ], [ %123, %207 ], !dbg !1931
  %610 = phi i64 [ %595, %602 ], [ %124, %207 ], !dbg !1873
  %611 = phi i64 [ %594, %602 ], [ %154, %207 ], !dbg !2238
  %612 = phi i8 [ %598, %602 ], [ %126, %207 ], !dbg !1880
  %613 = phi i8 [ %593, %602 ], [ %127, %207 ], !dbg !1931
  %614 = phi i8 [ %606, %602 ], [ %128, %207 ], !dbg !1882
  %615 = phi i64 [ %590, %602 ], [ %129, %207 ]
  call void @llvm.dbg.value(metadata i64 %615, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8 %614, metadata !1818, metadata !DIExpression()), !dbg !1882
  call void @llvm.dbg.value(metadata i8 %613, metadata !1817, metadata !DIExpression()), !dbg !1881
  call void @llvm.dbg.value(metadata i8 %612, metadata !1816, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i64 %611, metadata !1802, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i64 %610, metadata !1810, metadata !DIExpression()), !dbg !1873
  call void @llvm.dbg.value(metadata i64 %609, metadata !1809, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i64 %608, metadata !1808, metadata !DIExpression()), !dbg !1932
  %616 = add i64 %608, 1, !dbg !2298
  call void @llvm.dbg.value(metadata i64 %616, metadata !1808, metadata !DIExpression()), !dbg !1932
  br label %121, !dbg !2299, !llvm.loop !2300

; <label>:617:                                    ; preds = %131, %135
  %618 = phi i64 [ -1, %131 ], [ %122, %135 ]
  call void @llvm.dbg.value(metadata i64 %123, metadata !1809, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i64 %123, metadata !1809, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i64 %124, metadata !1810, metadata !DIExpression()), !dbg !1873
  call void @llvm.dbg.value(metadata i64 %124, metadata !1810, metadata !DIExpression()), !dbg !1873
  call void @llvm.dbg.value(metadata i8 %126, metadata !1816, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i8 %126, metadata !1816, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i8 %127, metadata !1817, metadata !DIExpression()), !dbg !1881
  call void @llvm.dbg.value(metadata i8 %127, metadata !1817, metadata !DIExpression()), !dbg !1881
  call void @llvm.dbg.value(metadata i8 %128, metadata !1818, metadata !DIExpression()), !dbg !1882
  call void @llvm.dbg.value(metadata i8 %128, metadata !1818, metadata !DIExpression()), !dbg !1882
  call void @llvm.dbg.value(metadata i64 %129, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %129, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %123, metadata !1809, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i64 %123, metadata !1809, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i64 %124, metadata !1810, metadata !DIExpression()), !dbg !1873
  call void @llvm.dbg.value(metadata i64 %124, metadata !1810, metadata !DIExpression()), !dbg !1873
  call void @llvm.dbg.value(metadata i8 %126, metadata !1816, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i8 %126, metadata !1816, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i8 %127, metadata !1817, metadata !DIExpression()), !dbg !1881
  call void @llvm.dbg.value(metadata i8 %127, metadata !1817, metadata !DIExpression()), !dbg !1881
  call void @llvm.dbg.value(metadata i8 %128, metadata !1818, metadata !DIExpression()), !dbg !1882
  call void @llvm.dbg.value(metadata i8 %128, metadata !1818, metadata !DIExpression()), !dbg !1882
  call void @llvm.dbg.value(metadata i64 %129, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %129, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %123, metadata !1809, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i64 %123, metadata !1809, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i64 %124, metadata !1810, metadata !DIExpression()), !dbg !1873
  call void @llvm.dbg.value(metadata i64 %124, metadata !1810, metadata !DIExpression()), !dbg !1873
  call void @llvm.dbg.value(metadata i8 %126, metadata !1816, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i8 %126, metadata !1816, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i8 %127, metadata !1817, metadata !DIExpression()), !dbg !1881
  call void @llvm.dbg.value(metadata i8 %127, metadata !1817, metadata !DIExpression()), !dbg !1881
  call void @llvm.dbg.value(metadata i8 %128, metadata !1818, metadata !DIExpression()), !dbg !1882
  call void @llvm.dbg.value(metadata i8 %128, metadata !1818, metadata !DIExpression()), !dbg !1882
  call void @llvm.dbg.value(metadata i64 %129, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %129, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %123, metadata !1809, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i64 %123, metadata !1809, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i64 %124, metadata !1810, metadata !DIExpression()), !dbg !1873
  call void @llvm.dbg.value(metadata i64 %124, metadata !1810, metadata !DIExpression()), !dbg !1873
  call void @llvm.dbg.value(metadata i8 %126, metadata !1816, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i8 %126, metadata !1816, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i8 %127, metadata !1817, metadata !DIExpression()), !dbg !1881
  call void @llvm.dbg.value(metadata i8 %127, metadata !1817, metadata !DIExpression()), !dbg !1881
  call void @llvm.dbg.value(metadata i8 %128, metadata !1818, metadata !DIExpression()), !dbg !1882
  call void @llvm.dbg.value(metadata i8 %128, metadata !1818, metadata !DIExpression()), !dbg !1882
  call void @llvm.dbg.value(metadata i64 %129, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %129, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %123, metadata !1809, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i64 %123, metadata !1809, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i64 %124, metadata !1810, metadata !DIExpression()), !dbg !1873
  call void @llvm.dbg.value(metadata i64 %124, metadata !1810, metadata !DIExpression()), !dbg !1873
  call void @llvm.dbg.value(metadata i64 %618, metadata !1802, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i64 %618, metadata !1802, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i8 %126, metadata !1816, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i8 %126, metadata !1816, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i8 %127, metadata !1817, metadata !DIExpression()), !dbg !1881
  call void @llvm.dbg.value(metadata i8 %127, metadata !1817, metadata !DIExpression()), !dbg !1881
  call void @llvm.dbg.value(metadata i8 %128, metadata !1818, metadata !DIExpression()), !dbg !1882
  call void @llvm.dbg.value(metadata i8 %128, metadata !1818, metadata !DIExpression()), !dbg !1882
  call void @llvm.dbg.value(metadata i64 %129, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %129, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %123, metadata !1809, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i64 %123, metadata !1809, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i64 %124, metadata !1810, metadata !DIExpression()), !dbg !1873
  call void @llvm.dbg.value(metadata i64 %124, metadata !1810, metadata !DIExpression()), !dbg !1873
  call void @llvm.dbg.value(metadata i64 %125, metadata !1802, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i64 %125, metadata !1802, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i8 %126, metadata !1816, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i8 %126, metadata !1816, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i8 %127, metadata !1817, metadata !DIExpression()), !dbg !1881
  call void @llvm.dbg.value(metadata i8 %127, metadata !1817, metadata !DIExpression()), !dbg !1881
  call void @llvm.dbg.value(metadata i8 %128, metadata !1818, metadata !DIExpression()), !dbg !1882
  call void @llvm.dbg.value(metadata i8 %128, metadata !1818, metadata !DIExpression()), !dbg !1882
  call void @llvm.dbg.value(metadata i64 %129, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %129, metadata !1800, metadata !DIExpression()), !dbg !1864
  %619 = icmp eq i64 %123, 0, !dbg !2302
  %620 = and i1 %114, %619, !dbg !2304
  %621 = xor i1 %620, true, !dbg !2304
  %622 = or i1 %110, %621, !dbg !2304
  br i1 %622, label %623, label %661, !dbg !2304

; <label>:623:                                    ; preds = %617
  %624 = and i1 %114, %110, !dbg !2305
  %625 = xor i1 %624, true, !dbg !2305
  %626 = and i8 %127, 1, !dbg !2307
  %627 = icmp eq i8 %626, 0, !dbg !2307
  %628 = or i1 %627, %625, !dbg !2305
  br i1 %628, label %638, label %629, !dbg !2305

; <label>:629:                                    ; preds = %623
  %630 = and i8 %128, 1, !dbg !2308
  %631 = icmp eq i8 %630, 0, !dbg !2308
  br i1 %631, label %634, label %632, !dbg !2311

; <label>:632:                                    ; preds = %629
  call void @llvm.dbg.value(metadata i64 %618, metadata !1802, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i8* %95, metadata !1806, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata i8* %96, metadata !1807, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata i64 %124, metadata !1810, metadata !DIExpression()), !dbg !1873
  call void @llvm.dbg.value(metadata i64 %618, metadata !1802, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i8* %95, metadata !1806, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata i8* %96, metadata !1807, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata i64 %124, metadata !1810, metadata !DIExpression()), !dbg !1873
  call void @llvm.dbg.value(metadata i64 %618, metadata !1802, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i8* %95, metadata !1806, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata i8* %96, metadata !1807, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata i64 %124, metadata !1810, metadata !DIExpression()), !dbg !1873
  call void @llvm.dbg.value(metadata i64 %618, metadata !1802, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i8* %95, metadata !1806, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata i8* %96, metadata !1807, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata i64 %124, metadata !1810, metadata !DIExpression()), !dbg !1873
  call void @llvm.dbg.value(metadata i8* %95, metadata !1806, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata i8* %96, metadata !1807, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata i64 %124, metadata !1810, metadata !DIExpression()), !dbg !1873
  call void @llvm.dbg.value(metadata i64 %618, metadata !1802, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i8* %95, metadata !1806, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata i8* %96, metadata !1807, metadata !DIExpression()), !dbg !1871
  call void @llvm.dbg.value(metadata i64 %124, metadata !1810, metadata !DIExpression()), !dbg !1873
  call void @llvm.dbg.value(metadata i64 %125, metadata !1802, metadata !DIExpression()), !dbg !1866
  %633 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %618, i32 5, i32 %5, i32* %6, i8* %95, i8* %96), !dbg !2312
  br label %671, !dbg !2313

; <label>:634:                                    ; preds = %629
  %635 = icmp eq i64 %129, 0, !dbg !2314
  %636 = icmp ne i64 %124, 0, !dbg !2316
  %637 = and i1 %636, %635, !dbg !2317
  br i1 %637, label %27, label %638, !dbg !2317

; <label>:638:                                    ; preds = %623, %634
  call void @llvm.dbg.value(metadata i8* %98, metadata !1811, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata i8* %98, metadata !1811, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata i64 %123, metadata !1809, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i64 %123, metadata !1809, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i64 %129, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %129, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8* %98, metadata !1811, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata i8* %98, metadata !1811, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata i64 %123, metadata !1809, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i64 %123, metadata !1809, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i64 %129, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %129, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8* %98, metadata !1811, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata i8* %98, metadata !1811, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata i64 %123, metadata !1809, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i64 %123, metadata !1809, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i64 %129, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %129, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8* %98, metadata !1811, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata i8* %98, metadata !1811, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata i64 %123, metadata !1809, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i64 %123, metadata !1809, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i64 %129, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %129, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8* %98, metadata !1811, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata i8* %98, metadata !1811, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata i64 %123, metadata !1809, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i64 %123, metadata !1809, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i64 %129, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %129, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i8* %98, metadata !1811, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata i8* %98, metadata !1811, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata i64 %123, metadata !1809, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i64 %123, metadata !1809, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i64 %129, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %129, metadata !1800, metadata !DIExpression()), !dbg !1864
  %639 = icmp ne i8* %98, null, !dbg !2318
  %640 = and i1 %639, %110, !dbg !2320
  br i1 %640, label %641, label %656, !dbg !2320

; <label>:641:                                    ; preds = %638
  call void @llvm.dbg.value(metadata i8* %98, metadata !1811, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata i64 %123, metadata !1809, metadata !DIExpression()), !dbg !1872
  %642 = load i8, i8* %98, align 1, !dbg !2321, !tbaa !906
  %643 = icmp eq i8 %642, 0, !dbg !2324
  br i1 %643, label %656, label %644, !dbg !2324

; <label>:644:                                    ; preds = %641, %651
  %645 = phi i8 [ %654, %651 ], [ %642, %641 ]
  %646 = phi i8* [ %653, %651 ], [ %98, %641 ]
  %647 = phi i64 [ %652, %651 ], [ %123, %641 ]
  call void @llvm.dbg.value(metadata i8* %646, metadata !1811, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata i64 %647, metadata !1809, metadata !DIExpression()), !dbg !1872
  %648 = icmp ult i64 %647, %129, !dbg !2325
  br i1 %648, label %649, label %651, !dbg !2328

; <label>:649:                                    ; preds = %644
  %650 = getelementptr inbounds i8, i8* %0, i64 %647, !dbg !2325
  store i8 %645, i8* %650, align 1, !dbg !2325, !tbaa !906
  br label %651, !dbg !2325

; <label>:651:                                    ; preds = %649, %644
  %652 = add i64 %647, 1, !dbg !2328
  %653 = getelementptr inbounds i8, i8* %646, i64 1, !dbg !2329
  call void @llvm.dbg.value(metadata i8* %653, metadata !1811, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata i64 %652, metadata !1809, metadata !DIExpression()), !dbg !1872
  %654 = load i8, i8* %653, align 1, !dbg !2321, !tbaa !906
  %655 = icmp eq i8 %654, 0, !dbg !2324
  br i1 %655, label %656, label %644, !dbg !2324, !llvm.loop !2330

; <label>:656:                                    ; preds = %651, %641, %638
  %657 = phi i64 [ %123, %638 ], [ %123, %641 ], [ %652, %651 ], !dbg !1872
  call void @llvm.dbg.value(metadata i64 %657, metadata !1809, metadata !DIExpression()), !dbg !1872
  %658 = icmp ult i64 %657, %129, !dbg !2332
  br i1 %658, label %659, label %671, !dbg !2334

; <label>:659:                                    ; preds = %656
  %660 = getelementptr inbounds i8, i8* %0, i64 %657, !dbg !2335
  store i8 0, i8* %660, align 1, !dbg !2336, !tbaa !906
  br label %671, !dbg !2335

; <label>:661:                                    ; preds = %617, %524, %274, %271, %253, %251, %223, %209, %159, %146, %377, %358
  %662 = phi i32 [ 2, %358 ], [ %94, %377 ], [ %94, %146 ], [ %94, %159 ], [ 2, %209 ], [ 5, %223 ], [ 2, %251 ], [ 2, %253 ], [ 2, %271 ], [ 2, %274 ], [ %94, %524 ], [ %94, %617 ]
  %663 = phi i64 [ %311, %358 ], [ %360, %377 ], [ %144, %146 ], [ %154, %159 ], [ %154, %209 ], [ %154, %223 ], [ %154, %251 ], [ %154, %253 ], [ %154, %271 ], [ %154, %274 ], [ %528, %524 ], [ %618, %617 ]
  %664 = phi i64 [ %129, %358 ], [ %129, %377 ], [ %129, %146 ], [ %129, %159 ], [ %129, %209 ], [ %129, %223 ], [ %129, %251 ], [ %129, %253 ], [ %129, %271 ], [ %129, %274 ], [ %533, %524 ], [ %129, %617 ]
  call void @llvm.dbg.value(metadata i64 %664, metadata !1800, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i64 %663, metadata !1802, metadata !DIExpression()), !dbg !1866
  %665 = icmp ne i32 %662, 2, !dbg !2337
  %666 = icmp eq i8 %102, 0, !dbg !2339
  %667 = or i1 %665, %666, !dbg !2340
  call void @llvm.dbg.value(metadata i32 4, metadata !1803, metadata !DIExpression()), !dbg !1867
  %668 = select i1 %667, i32 %662, i32 4, !dbg !2340
  call void @llvm.dbg.value(metadata i32 %668, metadata !1803, metadata !DIExpression()), !dbg !1867
  %669 = and i32 %5, -3, !dbg !2341
  %670 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %664, i8* %2, i64 %663, i32 %668, i32 %669, i32* null, i8* %95, i8* %96), !dbg !2342
  br label %671, !dbg !2343

; <label>:671:                                    ; preds = %656, %659, %661, %632
  %672 = phi i64 [ %670, %661 ], [ %633, %632 ], [ %657, %659 ], [ %657, %656 ]
  ret i64 %672, !dbg !2344
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #7 !dbg !2345 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2349, metadata !DIExpression()), !dbg !2353
  call void @llvm.dbg.value(metadata i32 %1, metadata !2350, metadata !DIExpression()), !dbg !2354
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #11, !dbg !2355
  call void @llvm.dbg.value(metadata i8* %3, metadata !2351, metadata !DIExpression()), !dbg !2356
  %4 = icmp eq i8* %3, %0, !dbg !2357
  br i1 %4, label %5, label %71, !dbg !2359

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #11, !dbg !2360
  call void @llvm.dbg.value(metadata i8* %6, metadata !2352, metadata !DIExpression()), !dbg !2361
  call void @llvm.dbg.value(metadata i8* %6, metadata !2362, metadata !DIExpression()), !dbg !2378
  call void @llvm.dbg.value(metadata i8* null, metadata !2368, metadata !DIExpression()), !dbg !2381
  call void @llvm.dbg.value(metadata i8 85, metadata !2369, metadata !DIExpression()), !dbg !2382
  call void @llvm.dbg.value(metadata i8 84, metadata !2370, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i8 70, metadata !2371, metadata !DIExpression()), !dbg !2384
  call void @llvm.dbg.value(metadata i8 45, metadata !2372, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata i8 56, metadata !2373, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i8 0, metadata !2374, metadata !DIExpression()), !dbg !2387
  call void @llvm.dbg.value(metadata i8 0, metadata !2375, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i8 0, metadata !2376, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata i8 0, metadata !2377, metadata !DIExpression()), !dbg !2390
  %7 = load i8, i8* %6, align 1, !dbg !2391, !tbaa !906
  %8 = and i8 %7, -33, !dbg !2391
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !2391

; <label>:9:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2393, metadata !DIExpression()), !dbg !2407
  call void @llvm.dbg.value(metadata i8* null, metadata !2398, metadata !DIExpression()), !dbg !2411
  call void @llvm.dbg.value(metadata i8 84, metadata !2399, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i8 70, metadata !2400, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i8 45, metadata !2401, metadata !DIExpression()), !dbg !2414
  call void @llvm.dbg.value(metadata i8 56, metadata !2402, metadata !DIExpression()), !dbg !2415
  call void @llvm.dbg.value(metadata i8 0, metadata !2403, metadata !DIExpression()), !dbg !2416
  call void @llvm.dbg.value(metadata i8 0, metadata !2404, metadata !DIExpression()), !dbg !2417
  call void @llvm.dbg.value(metadata i8 0, metadata !2405, metadata !DIExpression()), !dbg !2418
  call void @llvm.dbg.value(metadata i8 0, metadata !2406, metadata !DIExpression()), !dbg !2419
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2420
  %11 = load i8, i8* %10, align 1, !dbg !2420, !tbaa !906
  %12 = and i8 %11, -33, !dbg !2420
  %13 = icmp eq i8 %12, 84, !dbg !2420
  br i1 %13, label %14, label %68, !dbg !2420

; <label>:14:                                     ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !2422, metadata !DIExpression()), !dbg !2435
  call void @llvm.dbg.value(metadata i8* null, metadata !2427, metadata !DIExpression()), !dbg !2439
  call void @llvm.dbg.value(metadata i8 70, metadata !2428, metadata !DIExpression()), !dbg !2440
  call void @llvm.dbg.value(metadata i8 45, metadata !2429, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8 56, metadata !2430, metadata !DIExpression()), !dbg !2442
  call void @llvm.dbg.value(metadata i8 0, metadata !2431, metadata !DIExpression()), !dbg !2443
  call void @llvm.dbg.value(metadata i8 0, metadata !2432, metadata !DIExpression()), !dbg !2444
  call void @llvm.dbg.value(metadata i8 0, metadata !2433, metadata !DIExpression()), !dbg !2445
  call void @llvm.dbg.value(metadata i8 0, metadata !2434, metadata !DIExpression()), !dbg !2446
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2447
  %16 = load i8, i8* %15, align 1, !dbg !2447, !tbaa !906
  %17 = and i8 %16, -33, !dbg !2447
  %18 = icmp eq i8 %17, 70, !dbg !2447
  br i1 %18, label %19, label %68, !dbg !2447

; <label>:19:                                     ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !2449, metadata !DIExpression()), !dbg !2461
  call void @llvm.dbg.value(metadata i8* null, metadata !2454, metadata !DIExpression()), !dbg !2465
  call void @llvm.dbg.value(metadata i8 45, metadata !2455, metadata !DIExpression()), !dbg !2466
  call void @llvm.dbg.value(metadata i8 56, metadata !2456, metadata !DIExpression()), !dbg !2467
  call void @llvm.dbg.value(metadata i8 0, metadata !2457, metadata !DIExpression()), !dbg !2468
  call void @llvm.dbg.value(metadata i8 0, metadata !2458, metadata !DIExpression()), !dbg !2469
  call void @llvm.dbg.value(metadata i8 0, metadata !2459, metadata !DIExpression()), !dbg !2470
  call void @llvm.dbg.value(metadata i8 0, metadata !2460, metadata !DIExpression()), !dbg !2471
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2472
  %21 = load i8, i8* %20, align 1, !dbg !2472, !tbaa !906
  %22 = icmp eq i8 %21, 45, !dbg !2472
  br i1 %22, label %23, label %68, !dbg !2474

; <label>:23:                                     ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !2475, metadata !DIExpression()), !dbg !2486
  call void @llvm.dbg.value(metadata i8* null, metadata !2480, metadata !DIExpression()), !dbg !2490
  call void @llvm.dbg.value(metadata i8 56, metadata !2481, metadata !DIExpression()), !dbg !2491
  call void @llvm.dbg.value(metadata i8 0, metadata !2482, metadata !DIExpression()), !dbg !2492
  call void @llvm.dbg.value(metadata i8 0, metadata !2483, metadata !DIExpression()), !dbg !2493
  call void @llvm.dbg.value(metadata i8 0, metadata !2484, metadata !DIExpression()), !dbg !2494
  call void @llvm.dbg.value(metadata i8 0, metadata !2485, metadata !DIExpression()), !dbg !2495
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2496
  %25 = load i8, i8* %24, align 1, !dbg !2496, !tbaa !906
  %26 = icmp eq i8 %25, 56, !dbg !2496
  br i1 %26, label %27, label %68, !dbg !2498

; <label>:27:                                     ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !2499, metadata !DIExpression()), !dbg !2509
  call void @llvm.dbg.value(metadata i8* null, metadata !2504, metadata !DIExpression()), !dbg !2513
  call void @llvm.dbg.value(metadata i8 0, metadata !2505, metadata !DIExpression()), !dbg !2514
  call void @llvm.dbg.value(metadata i8 0, metadata !2506, metadata !DIExpression()), !dbg !2515
  call void @llvm.dbg.value(metadata i8 0, metadata !2507, metadata !DIExpression()), !dbg !2516
  call void @llvm.dbg.value(metadata i8 0, metadata !2508, metadata !DIExpression()), !dbg !2517
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2518
  %29 = load i8, i8* %28, align 1, !dbg !2518, !tbaa !906
  %30 = icmp eq i8 %29, 0, !dbg !2518
  br i1 %30, label %31, label %68, !dbg !2520

; <label>:31:                                     ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !2521, !tbaa !906
  %33 = icmp eq i8 %32, 96, !dbg !2522
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.80, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.81, i64 0, i64 0), !dbg !2521
  br label %71, !dbg !2523

; <label>:35:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2393, metadata !DIExpression()), !dbg !2524
  call void @llvm.dbg.value(metadata i8* null, metadata !2398, metadata !DIExpression()), !dbg !2528
  call void @llvm.dbg.value(metadata i8 66, metadata !2399, metadata !DIExpression()), !dbg !2529
  call void @llvm.dbg.value(metadata i8 49, metadata !2400, metadata !DIExpression()), !dbg !2530
  call void @llvm.dbg.value(metadata i8 56, metadata !2401, metadata !DIExpression()), !dbg !2531
  call void @llvm.dbg.value(metadata i8 48, metadata !2402, metadata !DIExpression()), !dbg !2532
  call void @llvm.dbg.value(metadata i8 51, metadata !2403, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8 48, metadata !2404, metadata !DIExpression()), !dbg !2534
  call void @llvm.dbg.value(metadata i8 0, metadata !2405, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i8 0, metadata !2406, metadata !DIExpression()), !dbg !2536
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2537
  %37 = load i8, i8* %36, align 1, !dbg !2537, !tbaa !906
  %38 = and i8 %37, -33, !dbg !2537
  %39 = icmp eq i8 %38, 66, !dbg !2537
  br i1 %39, label %40, label %68, !dbg !2537

; <label>:40:                                     ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !2422, metadata !DIExpression()), !dbg !2538
  call void @llvm.dbg.value(metadata i8* null, metadata !2427, metadata !DIExpression()), !dbg !2540
  call void @llvm.dbg.value(metadata i8 49, metadata !2428, metadata !DIExpression()), !dbg !2541
  call void @llvm.dbg.value(metadata i8 56, metadata !2429, metadata !DIExpression()), !dbg !2542
  call void @llvm.dbg.value(metadata i8 48, metadata !2430, metadata !DIExpression()), !dbg !2543
  call void @llvm.dbg.value(metadata i8 51, metadata !2431, metadata !DIExpression()), !dbg !2544
  call void @llvm.dbg.value(metadata i8 48, metadata !2432, metadata !DIExpression()), !dbg !2545
  call void @llvm.dbg.value(metadata i8 0, metadata !2433, metadata !DIExpression()), !dbg !2546
  call void @llvm.dbg.value(metadata i8 0, metadata !2434, metadata !DIExpression()), !dbg !2547
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2548
  %42 = load i8, i8* %41, align 1, !dbg !2548, !tbaa !906
  %43 = icmp eq i8 %42, 49, !dbg !2548
  br i1 %43, label %44, label %68, !dbg !2549

; <label>:44:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !2449, metadata !DIExpression()), !dbg !2550
  call void @llvm.dbg.value(metadata i8* null, metadata !2454, metadata !DIExpression()), !dbg !2552
  call void @llvm.dbg.value(metadata i8 56, metadata !2455, metadata !DIExpression()), !dbg !2553
  call void @llvm.dbg.value(metadata i8 48, metadata !2456, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata i8 51, metadata !2457, metadata !DIExpression()), !dbg !2555
  call void @llvm.dbg.value(metadata i8 48, metadata !2458, metadata !DIExpression()), !dbg !2556
  call void @llvm.dbg.value(metadata i8 0, metadata !2459, metadata !DIExpression()), !dbg !2557
  call void @llvm.dbg.value(metadata i8 0, metadata !2460, metadata !DIExpression()), !dbg !2558
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2559
  %46 = load i8, i8* %45, align 1, !dbg !2559, !tbaa !906
  %47 = icmp eq i8 %46, 56, !dbg !2559
  br i1 %47, label %48, label %68, !dbg !2560

; <label>:48:                                     ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !2475, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata i8* null, metadata !2480, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata i8 48, metadata !2481, metadata !DIExpression()), !dbg !2564
  call void @llvm.dbg.value(metadata i8 51, metadata !2482, metadata !DIExpression()), !dbg !2565
  call void @llvm.dbg.value(metadata i8 48, metadata !2483, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i8 0, metadata !2484, metadata !DIExpression()), !dbg !2567
  call void @llvm.dbg.value(metadata i8 0, metadata !2485, metadata !DIExpression()), !dbg !2568
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2569
  %50 = load i8, i8* %49, align 1, !dbg !2569, !tbaa !906
  %51 = icmp eq i8 %50, 48, !dbg !2569
  br i1 %51, label %52, label %68, !dbg !2570

; <label>:52:                                     ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !2499, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8* null, metadata !2504, metadata !DIExpression()), !dbg !2573
  call void @llvm.dbg.value(metadata i8 51, metadata !2505, metadata !DIExpression()), !dbg !2574
  call void @llvm.dbg.value(metadata i8 48, metadata !2506, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata i8 0, metadata !2507, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i8 0, metadata !2508, metadata !DIExpression()), !dbg !2577
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2578
  %54 = load i8, i8* %53, align 1, !dbg !2578, !tbaa !906
  %55 = icmp eq i8 %54, 51, !dbg !2578
  br i1 %55, label %56, label %68, !dbg !2579

; <label>:56:                                     ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !2580, metadata !DIExpression()), !dbg !2589
  call void @llvm.dbg.value(metadata i8* null, metadata !2585, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i8 48, metadata !2586, metadata !DIExpression()), !dbg !2594
  call void @llvm.dbg.value(metadata i8 0, metadata !2587, metadata !DIExpression()), !dbg !2595
  call void @llvm.dbg.value(metadata i8 0, metadata !2588, metadata !DIExpression()), !dbg !2596
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2597
  %58 = load i8, i8* %57, align 1, !dbg !2597, !tbaa !906
  %59 = icmp eq i8 %58, 48, !dbg !2597
  br i1 %59, label %60, label %68, !dbg !2599

; <label>:60:                                     ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !2600, metadata !DIExpression()), !dbg !2608
  call void @llvm.dbg.value(metadata i8* null, metadata !2605, metadata !DIExpression()), !dbg !2612
  call void @llvm.dbg.value(metadata i8 0, metadata !2606, metadata !DIExpression()), !dbg !2613
  call void @llvm.dbg.value(metadata i8 0, metadata !2607, metadata !DIExpression()), !dbg !2614
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2615
  %62 = load i8, i8* %61, align 1, !dbg !2615, !tbaa !906
  %63 = icmp eq i8 %62, 0, !dbg !2615
  br i1 %63, label %64, label %68, !dbg !2617

; <label>:64:                                     ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !2618, !tbaa !906
  %66 = icmp eq i8 %65, 96, !dbg !2619
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.82, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.83, i64 0, i64 0), !dbg !2618
  br label %71, !dbg !2620

; <label>:68:                                     ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !2621
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.79, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.78, i64 0, i64 0), !dbg !2622
  br label %71, !dbg !2623

; <label>:71:                                     ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !2624
  ret i8* %72, !dbg !2625
}

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #13

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #7 !dbg !2626 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2630, metadata !DIExpression()), !dbg !2633
  call void @llvm.dbg.value(metadata i64 %1, metadata !2631, metadata !DIExpression()), !dbg !2634
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2632, metadata !DIExpression()), !dbg !2635
  call void @llvm.dbg.value(metadata i8* %0, metadata !2636, metadata !DIExpression()) #11, !dbg !2649
  call void @llvm.dbg.value(metadata i64 %1, metadata !2641, metadata !DIExpression()) #11, !dbg !2651
  call void @llvm.dbg.value(metadata i64* null, metadata !2642, metadata !DIExpression()) #11, !dbg !2652
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2643, metadata !DIExpression()) #11, !dbg !2653
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2654
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2654
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2644, metadata !DIExpression()) #11, !dbg !2655
  %6 = tail call i32* @__errno_location() #17, !dbg !2656
  %7 = load i32, i32* %6, align 4, !dbg !2656, !tbaa !1207
  call void @llvm.dbg.value(metadata i32 %7, metadata !2645, metadata !DIExpression()) #11, !dbg !2657
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2658
  %9 = load i32, i32* %8, align 4, !dbg !2658, !tbaa !1732
  %10 = or i32 %9, 1, !dbg !2659
  call void @llvm.dbg.value(metadata i32 %10, metadata !2646, metadata !DIExpression()) #11, !dbg !2660
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2661
  %12 = load i32, i32* %11, align 8, !dbg !2661, !tbaa !1673
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2662
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2663
  %15 = load i8*, i8** %14, align 8, !dbg !2663, !tbaa !1758
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2664
  %17 = load i8*, i8** %16, align 8, !dbg !2664, !tbaa !1761
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #11, !dbg !2665
  %19 = add i64 %18, 1, !dbg !2666
  call void @llvm.dbg.value(metadata i64 %19, metadata !2647, metadata !DIExpression()) #11, !dbg !2667
  call void @llvm.dbg.value(metadata i64 %19, metadata !2668, metadata !DIExpression()) #11, !dbg !2673
  %20 = tail call noalias i8* @xmalloc(i64 %19) #11, !dbg !2675
  call void @llvm.dbg.value(metadata i8* %20, metadata !2648, metadata !DIExpression()) #11, !dbg !2676
  %21 = load i32, i32* %11, align 8, !dbg !2677, !tbaa !1673
  %22 = load i8*, i8** %14, align 8, !dbg !2678, !tbaa !1758
  %23 = load i8*, i8** %16, align 8, !dbg !2679, !tbaa !1761
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #11, !dbg !2680
  store i32 %7, i32* %6, align 4, !dbg !2681, !tbaa !1207
  ret i8* %20, !dbg !2682
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #7 !dbg !2637 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2636, metadata !DIExpression()), !dbg !2683
  call void @llvm.dbg.value(metadata i64 %1, metadata !2641, metadata !DIExpression()), !dbg !2684
  call void @llvm.dbg.value(metadata i64* %2, metadata !2642, metadata !DIExpression()), !dbg !2685
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2643, metadata !DIExpression()), !dbg !2686
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2687
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2687
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2644, metadata !DIExpression()), !dbg !2688
  %7 = tail call i32* @__errno_location() #17, !dbg !2689
  %8 = load i32, i32* %7, align 4, !dbg !2689, !tbaa !1207
  call void @llvm.dbg.value(metadata i32 %8, metadata !2645, metadata !DIExpression()), !dbg !2690
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2691
  %10 = load i32, i32* %9, align 4, !dbg !2691, !tbaa !1732
  %11 = icmp ne i64* %2, null, !dbg !2692
  %12 = xor i1 %11, true, !dbg !2692
  %13 = zext i1 %12 to i32, !dbg !2692
  %14 = or i32 %10, %13, !dbg !2693
  call void @llvm.dbg.value(metadata i32 %14, metadata !2646, metadata !DIExpression()), !dbg !2694
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2695
  %16 = load i32, i32* %15, align 8, !dbg !2695, !tbaa !1673
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2696
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2697
  %19 = load i8*, i8** %18, align 8, !dbg !2697, !tbaa !1758
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2698
  %21 = load i8*, i8** %20, align 8, !dbg !2698, !tbaa !1761
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !2699
  %23 = add i64 %22, 1, !dbg !2700
  call void @llvm.dbg.value(metadata i64 %23, metadata !2647, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i64 %23, metadata !2668, metadata !DIExpression()) #11, !dbg !2702
  %24 = tail call noalias i8* @xmalloc(i64 %23) #11, !dbg !2704
  call void @llvm.dbg.value(metadata i8* %24, metadata !2648, metadata !DIExpression()), !dbg !2705
  %25 = load i32, i32* %15, align 8, !dbg !2706, !tbaa !1673
  %26 = load i8*, i8** %18, align 8, !dbg !2707, !tbaa !1758
  %27 = load i8*, i8** %20, align 8, !dbg !2708, !tbaa !1761
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !2709
  store i32 %8, i32* %7, align 4, !dbg !2710, !tbaa !1207
  br i1 %11, label %29, label %30, !dbg !2711

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2712, !tbaa !2714
  br label %30, !dbg !2715

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2716
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #7 !dbg !2717 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2721, !tbaa !752
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2719, metadata !DIExpression()), !dbg !2722
  call void @llvm.dbg.value(metadata i32 1, metadata !2720, metadata !DIExpression()), !dbg !2723
  %2 = load i32, i32* @nslots, align 4, !dbg !2724, !tbaa !1207
  %3 = icmp sgt i32 %2, 1, !dbg !2727
  br i1 %3, label %4, label %12, !dbg !2728

; <label>:4:                                      ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !2720, metadata !DIExpression()), !dbg !2723
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !2729
  %7 = load i8*, i8** %6, align 8, !dbg !2729, !tbaa !2730
  tail call void @free(i8* %7) #11, !dbg !2732
  %8 = add nuw nsw i64 %5, 1, !dbg !2733
  call void @llvm.dbg.value(metadata i32 undef, metadata !2720, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2723
  %9 = load i32, i32* @nslots, align 4, !dbg !2724, !tbaa !1207
  %10 = sext i32 %9 to i64, !dbg !2727
  %11 = icmp slt i64 %8, %10, !dbg !2727
  br i1 %11, label %4, label %12, !dbg !2728, !llvm.loop !2734

; <label>:12:                                     ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2736
  %14 = load i8*, i8** %13, align 8, !dbg !2736, !tbaa !2730
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2738
  br i1 %15, label %17, label %16, !dbg !2739

; <label>:16:                                     ; preds = %12
  tail call void @free(i8* %14) #11, !dbg !2740
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2742, !tbaa !2743
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2744, !tbaa !2730
  br label %17, !dbg !2745

; <label>:17:                                     ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2746
  br i1 %18, label %21, label %19, !dbg !2748

; <label>:19:                                     ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2749
  tail call void @free(i8* %20) #11, !dbg !2751
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2752, !tbaa !752
  br label %21, !dbg !2753

; <label>:21:                                     ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !2754, !tbaa !1207
  ret void, !dbg !2755
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32, i8*) local_unnamed_addr #7 !dbg !2756 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2760, metadata !DIExpression()), !dbg !2762
  call void @llvm.dbg.value(metadata i8* %1, metadata !2761, metadata !DIExpression()), !dbg !2763
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2764
  ret i8* %3, !dbg !2765
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #7 !dbg !2766 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2770, metadata !DIExpression()), !dbg !2785
  call void @llvm.dbg.value(metadata i8* %1, metadata !2771, metadata !DIExpression()), !dbg !2786
  call void @llvm.dbg.value(metadata i64 %2, metadata !2772, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2773, metadata !DIExpression()), !dbg !2788
  %5 = tail call i32* @__errno_location() #17, !dbg !2789
  %6 = load i32, i32* %5, align 4, !dbg !2789, !tbaa !1207
  call void @llvm.dbg.value(metadata i32 %6, metadata !2774, metadata !DIExpression()), !dbg !2790
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2791, !tbaa !752
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2775, metadata !DIExpression()), !dbg !2792
  %8 = icmp slt i32 %0, 0, !dbg !2793
  br i1 %8, label %9, label %10, !dbg !2795

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2796
  unreachable, !dbg !2796

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2797, !tbaa !1207
  %12 = icmp sgt i32 %11, %0, !dbg !2798
  br i1 %12, label %34, label %13, !dbg !2799

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2800
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2779, metadata !DIExpression()), !dbg !2801
  %15 = icmp eq i32 %0, 2147483647, !dbg !2802
  br i1 %15, label %16, label %17, !dbg !2804

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2805
  unreachable, !dbg !2805

; <label>:17:                                     ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2806
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2806
  %20 = add nsw i32 %0, 1, !dbg !2807
  %21 = sext i32 %20 to i64, !dbg !2808
  %22 = shl nsw i64 %21, 4, !dbg !2809
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #11, !dbg !2810
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2810
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2775, metadata !DIExpression()), !dbg !2792
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2811, !tbaa !752
  br i1 %14, label %25, label %26, !dbg !2812

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2813, !tbaa.struct !2815
  br label %26, !dbg !2816

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2817, !tbaa !1207
  %28 = sext i32 %27 to i64, !dbg !2818
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2818
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2819
  %31 = sub nsw i32 %20, %27, !dbg !2820
  %32 = sext i32 %31 to i64, !dbg !2821
  %33 = shl nsw i64 %32, 4, !dbg !2822
  tail call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 %33, i1 false), !dbg !2819
  store i32 %20, i32* @nslots, align 4, !dbg !2823, !tbaa !1207
  br label %34, !dbg !2824

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2825
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2775, metadata !DIExpression()), !dbg !2792
  %36 = sext i32 %0 to i64, !dbg !2826
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2827
  %38 = load i64, i64* %37, align 8, !dbg !2827, !tbaa !2743
  call void @llvm.dbg.value(metadata i64 %38, metadata !2780, metadata !DIExpression()), !dbg !2828
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2829
  %40 = load i8*, i8** %39, align 8, !dbg !2829, !tbaa !2730
  call void @llvm.dbg.value(metadata i8* %40, metadata !2782, metadata !DIExpression()), !dbg !2830
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2831
  %42 = load i32, i32* %41, align 4, !dbg !2831, !tbaa !1732
  %43 = or i32 %42, 1, !dbg !2832
  call void @llvm.dbg.value(metadata i32 %43, metadata !2783, metadata !DIExpression()), !dbg !2833
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2834
  %45 = load i32, i32* %44, align 8, !dbg !2834, !tbaa !1673
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2835
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2836
  %48 = load i8*, i8** %47, align 8, !dbg !2836, !tbaa !1758
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2837
  %50 = load i8*, i8** %49, align 8, !dbg !2837, !tbaa !1761
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2838
  call void @llvm.dbg.value(metadata i64 %51, metadata !2784, metadata !DIExpression()), !dbg !2839
  %52 = icmp ugt i64 %38, %51, !dbg !2840
  br i1 %52, label %63, label %53, !dbg !2842

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2843
  call void @llvm.dbg.value(metadata i64 %54, metadata !2780, metadata !DIExpression()), !dbg !2828
  store i64 %54, i64* %37, align 8, !dbg !2845, !tbaa !2743
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2846
  br i1 %55, label %57, label %56, !dbg !2848

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #11, !dbg !2849
  br label %57, !dbg !2849

; <label>:57:                                     ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !2668, metadata !DIExpression()) #11, !dbg !2850
  %58 = tail call noalias i8* @xmalloc(i64 %54) #11, !dbg !2852
  call void @llvm.dbg.value(metadata i8* %58, metadata !2782, metadata !DIExpression()), !dbg !2830
  store i8* %58, i8** %39, align 8, !dbg !2853, !tbaa !2730
  %59 = load i32, i32* %44, align 8, !dbg !2854, !tbaa !1673
  %60 = load i8*, i8** %47, align 8, !dbg !2855, !tbaa !1758
  %61 = load i8*, i8** %49, align 8, !dbg !2856, !tbaa !1761
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2857
  br label %63, !dbg !2858

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2859
  call void @llvm.dbg.value(metadata i8* %64, metadata !2782, metadata !DIExpression()), !dbg !2830
  store i32 %6, i32* %5, align 4, !dbg !2860, !tbaa !1207
  ret i8* %64, !dbg !2861
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2862 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2866, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i8* %1, metadata !2867, metadata !DIExpression()), !dbg !2870
  call void @llvm.dbg.value(metadata i64 %2, metadata !2868, metadata !DIExpression()), !dbg !2871
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2872
  ret i8* %4, !dbg !2873
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8*) local_unnamed_addr #7 !dbg !2874 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2878, metadata !DIExpression()), !dbg !2879
  call void @llvm.dbg.value(metadata i32 0, metadata !2760, metadata !DIExpression()) #11, !dbg !2880
  call void @llvm.dbg.value(metadata i8* %0, metadata !2761, metadata !DIExpression()) #11, !dbg !2882
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !2883
  ret i8* %2, !dbg !2884
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8*, i64) local_unnamed_addr #7 !dbg !2885 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2889, metadata !DIExpression()), !dbg !2891
  call void @llvm.dbg.value(metadata i64 %1, metadata !2890, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata i32 0, metadata !2866, metadata !DIExpression()) #11, !dbg !2893
  call void @llvm.dbg.value(metadata i8* %0, metadata !2867, metadata !DIExpression()) #11, !dbg !2895
  call void @llvm.dbg.value(metadata i64 %1, metadata !2868, metadata !DIExpression()) #11, !dbg !2896
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !2897
  ret i8* %3, !dbg !2898
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #7 !dbg !2899 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2903, metadata !DIExpression()), !dbg !2907
  call void @llvm.dbg.value(metadata i32 %1, metadata !2904, metadata !DIExpression()), !dbg !2908
  call void @llvm.dbg.value(metadata i8* %2, metadata !2905, metadata !DIExpression()), !dbg !2909
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2910
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2910
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2906, metadata !DIExpression(DW_OP_deref)), !dbg !2911
  call void @llvm.dbg.value(metadata i32 %1, metadata !2912, metadata !DIExpression()) #11, !dbg !2918
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #11, !dbg !2920, !alias.scope !2921
  %6 = icmp eq i32 %1, 10, !dbg !2924
  br i1 %6, label %7, label %8, !dbg !2926

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2927, !noalias !2921
  unreachable, !dbg !2927

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2928
  store i32 %1, i32* %9, align 8, !dbg !2929, !tbaa !1673, !alias.scope !2921
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2906, metadata !DIExpression(DW_OP_deref)), !dbg !2911
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2917, metadata !DIExpression(DW_OP_deref)), !dbg !2920
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2930
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2931
  ret i8* %10, !dbg !2932
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #7 !dbg !2933 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2937, metadata !DIExpression()), !dbg !2942
  call void @llvm.dbg.value(metadata i32 %1, metadata !2938, metadata !DIExpression()), !dbg !2943
  call void @llvm.dbg.value(metadata i8* %2, metadata !2939, metadata !DIExpression()), !dbg !2944
  call void @llvm.dbg.value(metadata i64 %3, metadata !2940, metadata !DIExpression()), !dbg !2945
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2946
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2946
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2941, metadata !DIExpression(DW_OP_deref)), !dbg !2947
  call void @llvm.dbg.value(metadata i32 %1, metadata !2912, metadata !DIExpression()) #11, !dbg !2948
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %6, i8 0, i64 56, i1 false) #11, !dbg !2950, !alias.scope !2951
  %7 = icmp eq i32 %1, 10, !dbg !2954
  br i1 %7, label %8, label %9, !dbg !2955

; <label>:8:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2956, !noalias !2951
  unreachable, !dbg !2956

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2957
  store i32 %1, i32* %10, align 8, !dbg !2958, !tbaa !1673, !alias.scope !2951
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2941, metadata !DIExpression(DW_OP_deref)), !dbg !2947
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2917, metadata !DIExpression(DW_OP_deref)), !dbg !2950
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2959
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2960
  ret i8* %11, !dbg !2961
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32, i8*) local_unnamed_addr #7 !dbg !2962 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2966, metadata !DIExpression()), !dbg !2968
  call void @llvm.dbg.value(metadata i8* %1, metadata !2967, metadata !DIExpression()), !dbg !2969
  call void @llvm.dbg.value(metadata i32 0, metadata !2903, metadata !DIExpression()) #11, !dbg !2970
  call void @llvm.dbg.value(metadata i32 %0, metadata !2904, metadata !DIExpression()) #11, !dbg !2972
  call void @llvm.dbg.value(metadata i8* %1, metadata !2905, metadata !DIExpression()) #11, !dbg !2973
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2974
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #11, !dbg !2974
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2906, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2975
  call void @llvm.dbg.value(metadata i32 %0, metadata !2912, metadata !DIExpression()) #11, !dbg !2976
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %4, i8 0, i64 56, i1 false) #11, !dbg !2978, !alias.scope !2979
  %5 = icmp eq i32 %0, 10, !dbg !2982
  br i1 %5, label %6, label %7, !dbg !2983

; <label>:6:                                      ; preds = %2
  tail call void @abort() #15, !dbg !2984, !noalias !2979
  unreachable, !dbg !2984

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2985
  store i32 %0, i32* %8, align 8, !dbg !2986, !tbaa !1673, !alias.scope !2979
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2906, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2975
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2917, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2978
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #11, !dbg !2987
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #11, !dbg !2988
  ret i8* %9, !dbg !2989
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2990 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2994, metadata !DIExpression()), !dbg !2997
  call void @llvm.dbg.value(metadata i8* %1, metadata !2995, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i64 %2, metadata !2996, metadata !DIExpression()), !dbg !2999
  call void @llvm.dbg.value(metadata i32 0, metadata !2937, metadata !DIExpression()) #11, !dbg !3000
  call void @llvm.dbg.value(metadata i32 %0, metadata !2938, metadata !DIExpression()) #11, !dbg !3002
  call void @llvm.dbg.value(metadata i8* %1, metadata !2939, metadata !DIExpression()) #11, !dbg !3003
  call void @llvm.dbg.value(metadata i64 %2, metadata !2940, metadata !DIExpression()) #11, !dbg !3004
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3005
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3005
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2941, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3006
  call void @llvm.dbg.value(metadata i32 %0, metadata !2912, metadata !DIExpression()) #11, !dbg !3007
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #11, !dbg !3009, !alias.scope !3010
  %6 = icmp eq i32 %0, 10, !dbg !3013
  br i1 %6, label %7, label %8, !dbg !3014

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !3015, !noalias !3010
  unreachable, !dbg !3015

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3016
  store i32 %0, i32* %9, align 8, !dbg !3017, !tbaa !1673, !alias.scope !3010
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2941, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3006
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2917, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3009
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #11, !dbg !3018
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3019
  ret i8* %10, !dbg !3020
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #7 !dbg !3021 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3025, metadata !DIExpression()), !dbg !3029
  call void @llvm.dbg.value(metadata i64 %1, metadata !3026, metadata !DIExpression()), !dbg !3030
  call void @llvm.dbg.value(metadata i8 %2, metadata !3027, metadata !DIExpression()), !dbg !3031
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3032
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3032
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3033, !tbaa.struct !3034
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3028, metadata !DIExpression(DW_OP_deref)), !dbg !3035
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1692, metadata !DIExpression()), !dbg !3036
  call void @llvm.dbg.value(metadata i8 %2, metadata !1693, metadata !DIExpression()), !dbg !3038
  call void @llvm.dbg.value(metadata i32 1, metadata !1694, metadata !DIExpression()), !dbg !3039
  call void @llvm.dbg.value(metadata i8 %2, metadata !1695, metadata !DIExpression()), !dbg !3040
  %6 = lshr i8 %2, 5, !dbg !3041
  %7 = zext i8 %6 to i64, !dbg !3041
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3042
  call void @llvm.dbg.value(metadata i32* %8, metadata !1696, metadata !DIExpression()), !dbg !3043
  %9 = and i8 %2, 31, !dbg !3044
  %10 = zext i8 %9 to i32, !dbg !3044
  call void @llvm.dbg.value(metadata i32 %10, metadata !1698, metadata !DIExpression()), !dbg !3045
  %11 = load i32, i32* %8, align 4, !dbg !3046, !tbaa !1207
  %12 = lshr i32 %11, %10, !dbg !3047
  %13 = and i32 %12, 1, !dbg !3048
  call void @llvm.dbg.value(metadata i32 %13, metadata !1699, metadata !DIExpression()), !dbg !3049
  %14 = xor i32 %13, 1, !dbg !3050
  %15 = shl i32 %14, %10, !dbg !3051
  %16 = xor i32 %15, %11, !dbg !3052
  store i32 %16, i32* %8, align 4, !dbg !3052, !tbaa !1207
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3028, metadata !DIExpression(DW_OP_deref)), !dbg !3035
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3053
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3054
  ret i8* %17, !dbg !3055
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #7 !dbg !3056 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3060, metadata !DIExpression()), !dbg !3062
  call void @llvm.dbg.value(metadata i8 %1, metadata !3061, metadata !DIExpression()), !dbg !3063
  call void @llvm.dbg.value(metadata i8* %0, metadata !3025, metadata !DIExpression()) #11, !dbg !3064
  call void @llvm.dbg.value(metadata i64 -1, metadata !3026, metadata !DIExpression()) #11, !dbg !3066
  call void @llvm.dbg.value(metadata i8 %1, metadata !3027, metadata !DIExpression()) #11, !dbg !3067
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3068
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #11, !dbg !3068
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !3069, !tbaa.struct !3034
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3028, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3070
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1692, metadata !DIExpression()) #11, !dbg !3071
  call void @llvm.dbg.value(metadata i8 %1, metadata !1693, metadata !DIExpression()) #11, !dbg !3073
  call void @llvm.dbg.value(metadata i32 1, metadata !1694, metadata !DIExpression()) #11, !dbg !3074
  call void @llvm.dbg.value(metadata i8 %1, metadata !1695, metadata !DIExpression()) #11, !dbg !3075
  %5 = lshr i8 %1, 5, !dbg !3076
  %6 = zext i8 %5 to i64, !dbg !3076
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3077
  call void @llvm.dbg.value(metadata i32* %7, metadata !1696, metadata !DIExpression()) #11, !dbg !3078
  %8 = and i8 %1, 31, !dbg !3079
  %9 = zext i8 %8 to i32, !dbg !3079
  call void @llvm.dbg.value(metadata i32 %9, metadata !1698, metadata !DIExpression()) #11, !dbg !3080
  %10 = load i32, i32* %7, align 4, !dbg !3081, !tbaa !1207
  %11 = lshr i32 %10, %9, !dbg !3082
  %12 = and i32 %11, 1, !dbg !3083
  call void @llvm.dbg.value(metadata i32 %12, metadata !1699, metadata !DIExpression()) #11, !dbg !3084
  %13 = xor i32 %12, 1, !dbg !3085
  %14 = shl i32 %13, %9, !dbg !3086
  %15 = xor i32 %14, %10, !dbg !3087
  store i32 %15, i32* %7, align 4, !dbg !3087, !tbaa !1207
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3028, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3070
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #11, !dbg !3088
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #11, !dbg !3089
  ret i8* %16, !dbg !3090
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8*) local_unnamed_addr #7 !dbg !3091 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3093, metadata !DIExpression()), !dbg !3094
  call void @llvm.dbg.value(metadata i8* %0, metadata !3060, metadata !DIExpression()) #11, !dbg !3095
  call void @llvm.dbg.value(metadata i8 58, metadata !3061, metadata !DIExpression()) #11, !dbg !3097
  call void @llvm.dbg.value(metadata i8* %0, metadata !3025, metadata !DIExpression()) #11, !dbg !3098
  call void @llvm.dbg.value(metadata i64 -1, metadata !3026, metadata !DIExpression()) #11, !dbg !3100
  call void @llvm.dbg.value(metadata i8 58, metadata !3027, metadata !DIExpression()) #11, !dbg !3101
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3102
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #11, !dbg !3102
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !3103, !tbaa.struct !3034
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3028, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3104
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1692, metadata !DIExpression()) #11, !dbg !3105
  call void @llvm.dbg.value(metadata i8 58, metadata !1693, metadata !DIExpression()) #11, !dbg !3107
  call void @llvm.dbg.value(metadata i32 1, metadata !1694, metadata !DIExpression()) #11, !dbg !3108
  call void @llvm.dbg.value(metadata i8 58, metadata !1695, metadata !DIExpression()) #11, !dbg !3109
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3110
  call void @llvm.dbg.value(metadata i32* %4, metadata !1696, metadata !DIExpression()) #11, !dbg !3111
  call void @llvm.dbg.value(metadata i32 26, metadata !1698, metadata !DIExpression()) #11, !dbg !3112
  %5 = load i32, i32* %4, align 4, !dbg !3113, !tbaa !1207
  %6 = or i32 %5, 67108864, !dbg !3114
  store i32 %6, i32* %4, align 4, !dbg !3114, !tbaa !1207
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3028, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3104
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #11, !dbg !3115
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #11, !dbg !3116
  ret i8* %7, !dbg !3117
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #7 !dbg !3118 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3120, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i64 %1, metadata !3121, metadata !DIExpression()), !dbg !3123
  call void @llvm.dbg.value(metadata i8* %0, metadata !3025, metadata !DIExpression()) #11, !dbg !3124
  call void @llvm.dbg.value(metadata i64 %1, metadata !3026, metadata !DIExpression()) #11, !dbg !3126
  call void @llvm.dbg.value(metadata i8 58, metadata !3027, metadata !DIExpression()) #11, !dbg !3127
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3128
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #11, !dbg !3128
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !3129, !tbaa.struct !3034
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3028, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3130
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1692, metadata !DIExpression()) #11, !dbg !3131
  call void @llvm.dbg.value(metadata i8 58, metadata !1693, metadata !DIExpression()) #11, !dbg !3133
  call void @llvm.dbg.value(metadata i32 1, metadata !1694, metadata !DIExpression()) #11, !dbg !3134
  call void @llvm.dbg.value(metadata i8 58, metadata !1695, metadata !DIExpression()) #11, !dbg !3135
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3136
  call void @llvm.dbg.value(metadata i32* %5, metadata !1696, metadata !DIExpression()) #11, !dbg !3137
  call void @llvm.dbg.value(metadata i32 26, metadata !1698, metadata !DIExpression()) #11, !dbg !3138
  %6 = load i32, i32* %5, align 4, !dbg !3139, !tbaa !1207
  %7 = or i32 %6, 67108864, !dbg !3140
  store i32 %7, i32* %5, align 4, !dbg !3140, !tbaa !1207
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3028, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3130
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #11, !dbg !3141
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #11, !dbg !3142
  ret i8* %8, !dbg !3143
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #7 !dbg !3144 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2917, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3150
  call void @llvm.dbg.value(metadata i32 %0, metadata !3146, metadata !DIExpression()), !dbg !3152
  call void @llvm.dbg.value(metadata i32 %1, metadata !3147, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i8* %2, metadata !3148, metadata !DIExpression()), !dbg !3154
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3155
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3155
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3156
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3156
  call void @llvm.dbg.value(metadata i32 %1, metadata !2912, metadata !DIExpression()) #11, !dbg !3157
  call void @llvm.dbg.value(metadata i32 0, metadata !2917, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3150
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 %7, i8 0, i64 52, i1 false), !dbg !3150, !alias.scope !3158
  %8 = icmp eq i32 %1, 10, !dbg !3161
  br i1 %8, label %9, label %10, !dbg !3162

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !3163, !noalias !3158
  unreachable, !dbg !3163

; <label>:10:                                     ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2917, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3150
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3156
  store i32 %1, i32* %11, align 8, !dbg !3156
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3156
  %13 = bitcast i32* %12 to i8*, !dbg !3156
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %13, i8* nonnull align 4 %7, i64 52, i1 false), !dbg !3156
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3156
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3149, metadata !DIExpression(DW_OP_deref)), !dbg !3164
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1692, metadata !DIExpression()), !dbg !3165
  call void @llvm.dbg.value(metadata i8 58, metadata !1693, metadata !DIExpression()), !dbg !3167
  call void @llvm.dbg.value(metadata i32 1, metadata !1694, metadata !DIExpression()), !dbg !3168
  call void @llvm.dbg.value(metadata i8 58, metadata !1695, metadata !DIExpression()), !dbg !3169
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3170
  call void @llvm.dbg.value(metadata i32* %14, metadata !1696, metadata !DIExpression()), !dbg !3171
  call void @llvm.dbg.value(metadata i32 26, metadata !1698, metadata !DIExpression()), !dbg !3172
  %15 = load i32, i32* %14, align 4, !dbg !3173, !tbaa !1207
  %16 = or i32 %15, 67108864, !dbg !3174
  store i32 %16, i32* %14, align 4, !dbg !3174, !tbaa !1207
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3149, metadata !DIExpression(DW_OP_deref)), !dbg !3164
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3175
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3176
  ret i8* %17, !dbg !3177
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #7 !dbg !3178 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3182, metadata !DIExpression()), !dbg !3186
  call void @llvm.dbg.value(metadata i8* %1, metadata !3183, metadata !DIExpression()), !dbg !3187
  call void @llvm.dbg.value(metadata i8* %2, metadata !3184, metadata !DIExpression()), !dbg !3188
  call void @llvm.dbg.value(metadata i8* %3, metadata !3185, metadata !DIExpression()), !dbg !3189
  call void @llvm.dbg.value(metadata i32 %0, metadata !3190, metadata !DIExpression()) #11, !dbg !3200
  call void @llvm.dbg.value(metadata i8* %1, metadata !3195, metadata !DIExpression()) #11, !dbg !3202
  call void @llvm.dbg.value(metadata i8* %2, metadata !3196, metadata !DIExpression()) #11, !dbg !3203
  call void @llvm.dbg.value(metadata i8* %3, metadata !3197, metadata !DIExpression()) #11, !dbg !3204
  call void @llvm.dbg.value(metadata i64 -1, metadata !3198, metadata !DIExpression()) #11, !dbg !3205
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3206
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3206
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !3207, !tbaa.struct !3034
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3199, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3208
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1740, metadata !DIExpression()) #11, !dbg !3209
  call void @llvm.dbg.value(metadata i8* %1, metadata !1741, metadata !DIExpression()) #11, !dbg !3211
  call void @llvm.dbg.value(metadata i8* %2, metadata !1742, metadata !DIExpression()) #11, !dbg !3212
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1740, metadata !DIExpression()) #11, !dbg !3209
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3213
  store i32 10, i32* %7, align 8, !dbg !3214, !tbaa !1673
  %8 = icmp ne i8* %1, null, !dbg !3215
  %9 = icmp ne i8* %2, null, !dbg !3216
  %10 = and i1 %8, %9, !dbg !3217
  br i1 %10, label %12, label %11, !dbg !3217

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3218
  unreachable, !dbg !3218

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3219
  store i8* %1, i8** %13, align 8, !dbg !3220, !tbaa !1758
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3221
  store i8* %2, i8** %14, align 8, !dbg !3222, !tbaa !1761
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3199, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3208
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #11, !dbg !3223
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3224
  ret i8* %15, !dbg !3225
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !3191 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3190, metadata !DIExpression()), !dbg !3226
  call void @llvm.dbg.value(metadata i8* %1, metadata !3195, metadata !DIExpression()), !dbg !3227
  call void @llvm.dbg.value(metadata i8* %2, metadata !3196, metadata !DIExpression()), !dbg !3228
  call void @llvm.dbg.value(metadata i8* %3, metadata !3197, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i64 %4, metadata !3198, metadata !DIExpression()), !dbg !3230
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3231
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #11, !dbg !3231
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %7, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3232, !tbaa.struct !3034
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3199, metadata !DIExpression(DW_OP_deref)), !dbg !3233
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1740, metadata !DIExpression()) #11, !dbg !3234
  call void @llvm.dbg.value(metadata i8* %1, metadata !1741, metadata !DIExpression()) #11, !dbg !3236
  call void @llvm.dbg.value(metadata i8* %2, metadata !1742, metadata !DIExpression()) #11, !dbg !3237
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1740, metadata !DIExpression()) #11, !dbg !3234
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3238
  store i32 10, i32* %8, align 8, !dbg !3239, !tbaa !1673
  %9 = icmp ne i8* %1, null, !dbg !3240
  %10 = icmp ne i8* %2, null, !dbg !3241
  %11 = and i1 %9, %10, !dbg !3242
  br i1 %11, label %13, label %12, !dbg !3242

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !3243
  unreachable, !dbg !3243

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3244
  store i8* %1, i8** %14, align 8, !dbg !3245, !tbaa !1758
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3246
  store i8* %2, i8** %15, align 8, !dbg !3247, !tbaa !1761
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3199, metadata !DIExpression(DW_OP_deref)), !dbg !3233
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3248
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #11, !dbg !3249
  ret i8* %16, !dbg !3250
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #7 !dbg !3251 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3255, metadata !DIExpression()), !dbg !3258
  call void @llvm.dbg.value(metadata i8* %1, metadata !3256, metadata !DIExpression()), !dbg !3259
  call void @llvm.dbg.value(metadata i8* %2, metadata !3257, metadata !DIExpression()), !dbg !3260
  call void @llvm.dbg.value(metadata i32 0, metadata !3182, metadata !DIExpression()) #11, !dbg !3261
  call void @llvm.dbg.value(metadata i8* %0, metadata !3183, metadata !DIExpression()) #11, !dbg !3263
  call void @llvm.dbg.value(metadata i8* %1, metadata !3184, metadata !DIExpression()) #11, !dbg !3264
  call void @llvm.dbg.value(metadata i8* %2, metadata !3185, metadata !DIExpression()) #11, !dbg !3265
  call void @llvm.dbg.value(metadata i32 0, metadata !3190, metadata !DIExpression()) #11, !dbg !3266
  call void @llvm.dbg.value(metadata i8* %0, metadata !3195, metadata !DIExpression()) #11, !dbg !3268
  call void @llvm.dbg.value(metadata i8* %1, metadata !3196, metadata !DIExpression()) #11, !dbg !3269
  call void @llvm.dbg.value(metadata i8* %2, metadata !3197, metadata !DIExpression()) #11, !dbg !3270
  call void @llvm.dbg.value(metadata i64 -1, metadata !3198, metadata !DIExpression()) #11, !dbg !3271
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3272
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3272
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !3273, !tbaa.struct !3034
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3199, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3274
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1740, metadata !DIExpression()) #11, !dbg !3275
  call void @llvm.dbg.value(metadata i8* %0, metadata !1741, metadata !DIExpression()) #11, !dbg !3277
  call void @llvm.dbg.value(metadata i8* %1, metadata !1742, metadata !DIExpression()) #11, !dbg !3278
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1740, metadata !DIExpression()) #11, !dbg !3275
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3279
  store i32 10, i32* %6, align 8, !dbg !3280, !tbaa !1673
  %7 = icmp ne i8* %0, null, !dbg !3281
  %8 = icmp ne i8* %1, null, !dbg !3282
  %9 = and i1 %7, %8, !dbg !3283
  br i1 %9, label %11, label %10, !dbg !3283

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !3284
  unreachable, !dbg !3284

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3285
  store i8* %0, i8** %12, align 8, !dbg !3286, !tbaa !1758
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3287
  store i8* %1, i8** %13, align 8, !dbg !3288, !tbaa !1761
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3199, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3274
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #11, !dbg !3289
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3290
  ret i8* %14, !dbg !3291
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !3292 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3296, metadata !DIExpression()), !dbg !3300
  call void @llvm.dbg.value(metadata i8* %1, metadata !3297, metadata !DIExpression()), !dbg !3301
  call void @llvm.dbg.value(metadata i8* %2, metadata !3298, metadata !DIExpression()), !dbg !3302
  call void @llvm.dbg.value(metadata i64 %3, metadata !3299, metadata !DIExpression()), !dbg !3303
  call void @llvm.dbg.value(metadata i32 0, metadata !3190, metadata !DIExpression()) #11, !dbg !3304
  call void @llvm.dbg.value(metadata i8* %0, metadata !3195, metadata !DIExpression()) #11, !dbg !3306
  call void @llvm.dbg.value(metadata i8* %1, metadata !3196, metadata !DIExpression()) #11, !dbg !3307
  call void @llvm.dbg.value(metadata i8* %2, metadata !3197, metadata !DIExpression()) #11, !dbg !3308
  call void @llvm.dbg.value(metadata i64 %3, metadata !3198, metadata !DIExpression()) #11, !dbg !3309
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3310
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3310
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !3311, !tbaa.struct !3034
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3199, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3312
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1740, metadata !DIExpression()) #11, !dbg !3313
  call void @llvm.dbg.value(metadata i8* %0, metadata !1741, metadata !DIExpression()) #11, !dbg !3315
  call void @llvm.dbg.value(metadata i8* %1, metadata !1742, metadata !DIExpression()) #11, !dbg !3316
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1740, metadata !DIExpression()) #11, !dbg !3313
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3317
  store i32 10, i32* %7, align 8, !dbg !3318, !tbaa !1673
  %8 = icmp ne i8* %0, null, !dbg !3319
  %9 = icmp ne i8* %1, null, !dbg !3320
  %10 = and i1 %8, %9, !dbg !3321
  br i1 %10, label %12, label %11, !dbg !3321

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3322
  unreachable, !dbg !3322

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3323
  store i8* %0, i8** %13, align 8, !dbg !3324, !tbaa !1758
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3325
  store i8* %1, i8** %14, align 8, !dbg !3326, !tbaa !1761
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3199, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3312
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #11, !dbg !3327
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3328
  ret i8* %15, !dbg !3329
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !3330 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3334, metadata !DIExpression()), !dbg !3337
  call void @llvm.dbg.value(metadata i8* %1, metadata !3335, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.value(metadata i64 %2, metadata !3336, metadata !DIExpression()), !dbg !3339
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3340
  ret i8* %4, !dbg !3341
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8*, i64) local_unnamed_addr #7 !dbg !3342 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3346, metadata !DIExpression()), !dbg !3348
  call void @llvm.dbg.value(metadata i64 %1, metadata !3347, metadata !DIExpression()), !dbg !3349
  call void @llvm.dbg.value(metadata i32 0, metadata !3334, metadata !DIExpression()) #11, !dbg !3350
  call void @llvm.dbg.value(metadata i8* %0, metadata !3335, metadata !DIExpression()) #11, !dbg !3352
  call void @llvm.dbg.value(metadata i64 %1, metadata !3336, metadata !DIExpression()) #11, !dbg !3353
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !3354
  ret i8* %3, !dbg !3355
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32, i8*) local_unnamed_addr #7 !dbg !3356 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3360, metadata !DIExpression()), !dbg !3362
  call void @llvm.dbg.value(metadata i8* %1, metadata !3361, metadata !DIExpression()), !dbg !3363
  call void @llvm.dbg.value(metadata i32 %0, metadata !3334, metadata !DIExpression()) #11, !dbg !3364
  call void @llvm.dbg.value(metadata i8* %1, metadata !3335, metadata !DIExpression()) #11, !dbg !3366
  call void @llvm.dbg.value(metadata i64 -1, metadata !3336, metadata !DIExpression()) #11, !dbg !3367
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !3368
  ret i8* %3, !dbg !3369
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8*) local_unnamed_addr #7 !dbg !3370 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3374, metadata !DIExpression()), !dbg !3375
  call void @llvm.dbg.value(metadata i32 0, metadata !3360, metadata !DIExpression()) #11, !dbg !3376
  call void @llvm.dbg.value(metadata i8* %0, metadata !3361, metadata !DIExpression()) #11, !dbg !3378
  call void @llvm.dbg.value(metadata i32 0, metadata !3334, metadata !DIExpression()) #11, !dbg !3379
  call void @llvm.dbg.value(metadata i8* %0, metadata !3335, metadata !DIExpression()) #11, !dbg !3381
  call void @llvm.dbg.value(metadata i64 -1, metadata !3336, metadata !DIExpression()) #11, !dbg !3382
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !3383
  ret i8* %2, !dbg !3384
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @unicode_to_mb(i32, i64 (i8*, i64, i8*)* nocapture, i64 (i32, i8*, i8*)* nocapture, i8*) local_unnamed_addr #7 !dbg !167 {
  %5 = alloca [6 x i8], align 1
  %6 = alloca [25 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !246, metadata !DIExpression()), !dbg !3385
  call void @llvm.dbg.value(metadata i64 (i8*, i64, i8*)* %1, metadata !247, metadata !DIExpression()), !dbg !3386
  call void @llvm.dbg.value(metadata i64 (i32, i8*, i8*)* %2, metadata !248, metadata !DIExpression()), !dbg !3387
  call void @llvm.dbg.value(metadata i8* %3, metadata !249, metadata !DIExpression()), !dbg !3388
  %11 = getelementptr inbounds [6 x i8], [6 x i8]* %5, i64 0, i64 0, !dbg !3389
  call void @llvm.lifetime.start.p0i8(i64 6, i8* nonnull %11) #11, !dbg !3389
  call void @llvm.dbg.declare(metadata [6 x i8]* %5, metadata !250, metadata !DIExpression()), !dbg !3390
  %12 = load i1, i1* @unicode_to_mb.initialized, align 4
  br i1 %12, label %24, label %13, !dbg !3391

; <label>:13:                                     ; preds = %4
  %14 = tail call i8* @locale_charset() #11, !dbg !3392
  call void @llvm.dbg.value(metadata i8* %14, metadata !255, metadata !DIExpression()), !dbg !3393
  %15 = tail call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.90, i64 0, i64 0)) #9, !dbg !3394
  %16 = icmp eq i32 %15, 0, !dbg !3395
  %17 = zext i1 %16 to i32, !dbg !3395
  store i32 %17, i32* @unicode_to_mb.is_utf8, align 4, !dbg !3396, !tbaa !1207
  br i1 %16, label %23, label %18, !dbg !3397

; <label>:18:                                     ; preds = %13
  %19 = tail call i8* @iconv_open(i8* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.90, i64 0, i64 0)) #11, !dbg !3398
  store i8* %19, i8** @unicode_to_mb.utf8_to_local, align 8, !dbg !3401, !tbaa !752
  %20 = icmp eq i8* %19, inttoptr (i64 -1 to i8*), !dbg !3402
  br i1 %20, label %21, label %23, !dbg !3404

; <label>:21:                                     ; preds = %18
  %22 = tail call i8* @iconv_open(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.91, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.90, i64 0, i64 0)) #11, !dbg !3405
  store i8* %22, i8** @unicode_to_mb.utf8_to_local, align 8, !dbg !3406, !tbaa !752
  br label %23, !dbg !3407

; <label>:23:                                     ; preds = %18, %21, %13
  store i1 true, i1* @unicode_to_mb.initialized, align 4
  br label %24, !dbg !3408

; <label>:24:                                     ; preds = %23, %4
  %25 = load i32, i32* @unicode_to_mb.is_utf8, align 4, !dbg !3409, !tbaa !1207
  %26 = icmp eq i32 %25, 0, !dbg !3409
  %27 = load i8*, i8** @unicode_to_mb.utf8_to_local, align 8, !dbg !3411
  %28 = icmp eq i8* %27, inttoptr (i64 -1 to i8*), !dbg !3414
  %29 = and i1 %26, %28, !dbg !3415
  br i1 %29, label %30, label %32, !dbg !3415

; <label>:30:                                     ; preds = %24
  %31 = tail call i64 %2(i32 %0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2.92, i64 0, i64 0), i8* %3) #11, !dbg !3416
  br label %78, !dbg !3417

; <label>:32:                                     ; preds = %24
  call void @llvm.dbg.value(metadata i8* %11, metadata !3418, metadata !DIExpression()) #11, !dbg !3434
  call void @llvm.dbg.value(metadata i32 %0, metadata !3432, metadata !DIExpression()) #11, !dbg !3436
  call void @llvm.dbg.value(metadata i32 6, metadata !3433, metadata !DIExpression()) #11, !dbg !3437
  %33 = icmp ult i32 %0, 128, !dbg !3438
  br i1 %33, label %34, label %36, !dbg !3440

; <label>:34:                                     ; preds = %32
  %35 = trunc i32 %0 to i8, !dbg !3441
  store i8 %35, i8* %11, align 1, !dbg !3443, !tbaa !906
  call void @llvm.dbg.value(metadata i32 %37, metadata !254, metadata !DIExpression()), !dbg !3444
  br label %44, !dbg !3445

; <label>:36:                                     ; preds = %32
  %37 = call i32 @u8_uctomb_aux(i8* nonnull %11, i32 %0, i32 6) #11, !dbg !3446
  call void @llvm.dbg.value(metadata i32 %37, metadata !254, metadata !DIExpression()), !dbg !3444
  %38 = icmp slt i32 %37, 0, !dbg !3447
  br i1 %38, label %42, label %39, !dbg !3445

; <label>:39:                                     ; preds = %36
  %40 = load i32, i32* @unicode_to_mb.is_utf8, align 4, !dbg !3449, !tbaa !1207
  %41 = sext i32 %37 to i64, !dbg !3445
  br label %44, !dbg !3445

; <label>:42:                                     ; preds = %36
  %43 = call i64 %2(i32 %0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3.93, i64 0, i64 0), i8* %3) #11, !dbg !3450
  br label %78, !dbg !3451

; <label>:44:                                     ; preds = %39, %34
  %45 = phi i32 [ %25, %34 ], [ %40, %39 ], !dbg !3449
  %46 = phi i64 [ 1, %34 ], [ %41, %39 ]
  %47 = icmp eq i32 %45, 0, !dbg !3449
  br i1 %47, label %48, label %76, !dbg !3452

; <label>:48:                                     ; preds = %44
  %49 = getelementptr inbounds [25 x i8], [25 x i8]* %6, i64 0, i64 0, !dbg !3453
  call void @llvm.lifetime.start.p0i8(i64 25, i8* nonnull %49) #11, !dbg !3453
  call void @llvm.dbg.declare(metadata [25 x i8]* %6, metadata !258, metadata !DIExpression()), !dbg !3454
  %50 = bitcast i8** %7 to i8*, !dbg !3455
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %50) #11, !dbg !3455
  %51 = bitcast i64* %8 to i8*, !dbg !3456
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %51) #11, !dbg !3456
  %52 = bitcast i8** %9 to i8*, !dbg !3457
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %52) #11, !dbg !3457
  %53 = bitcast i64* %10 to i8*, !dbg !3458
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %53) #11, !dbg !3458
  call void @llvm.dbg.value(metadata i8* %11, metadata !264, metadata !DIExpression()), !dbg !3459
  store i8* %11, i8** %7, align 8, !dbg !3460, !tbaa !752
  call void @llvm.dbg.value(metadata i64 %46, metadata !265, metadata !DIExpression()), !dbg !3461
  store i64 %46, i64* %8, align 8, !dbg !3462, !tbaa !2714
  call void @llvm.dbg.value(metadata i8* %49, metadata !266, metadata !DIExpression()), !dbg !3463
  store i8* %49, i8** %9, align 8, !dbg !3464, !tbaa !752
  call void @llvm.dbg.value(metadata i64 25, metadata !267, metadata !DIExpression()), !dbg !3465
  store i64 25, i64* %10, align 8, !dbg !3466, !tbaa !2714
  %54 = load i8*, i8** @unicode_to_mb.utf8_to_local, align 8, !dbg !3467, !tbaa !752
  call void @llvm.dbg.value(metadata i8** %7, metadata !264, metadata !DIExpression(DW_OP_deref)), !dbg !3459
  call void @llvm.dbg.value(metadata i64* %8, metadata !265, metadata !DIExpression(DW_OP_deref)), !dbg !3461
  call void @llvm.dbg.value(metadata i8** %9, metadata !266, metadata !DIExpression(DW_OP_deref)), !dbg !3463
  call void @llvm.dbg.value(metadata i64* %10, metadata !267, metadata !DIExpression(DW_OP_deref)), !dbg !3465
  %55 = call i64 @iconv(i8* %54, i8** nonnull %7, i64* nonnull %8, i8** nonnull %9, i64* nonnull %10) #11, !dbg !3468
  call void @llvm.dbg.value(metadata i64 %55, metadata !268, metadata !DIExpression()), !dbg !3469
  %56 = load i64, i64* %8, align 8, !dbg !3470, !tbaa !2714
  call void @llvm.dbg.value(metadata i64 %56, metadata !265, metadata !DIExpression()), !dbg !3461
  %57 = icmp ne i64 %56, 0, !dbg !3472
  %58 = icmp eq i64 %55, -1, !dbg !3473
  %59 = or i1 %58, %57, !dbg !3474
  br i1 %59, label %60, label %62, !dbg !3474

; <label>:60:                                     ; preds = %48
  %61 = call i64 %2(i32 %0, i8* null, i8* %3) #11, !dbg !3475
  br label %74, !dbg !3476

; <label>:62:                                     ; preds = %48
  %63 = load i8*, i8** @unicode_to_mb.utf8_to_local, align 8, !dbg !3477, !tbaa !752
  call void @llvm.dbg.value(metadata i8** %9, metadata !266, metadata !DIExpression(DW_OP_deref)), !dbg !3463
  call void @llvm.dbg.value(metadata i64* %10, metadata !267, metadata !DIExpression(DW_OP_deref)), !dbg !3465
  %64 = call i64 @iconv(i8* %63, i8** null, i64* null, i8** nonnull %9, i64* nonnull %10) #11, !dbg !3478
  call void @llvm.dbg.value(metadata i64 %64, metadata !268, metadata !DIExpression()), !dbg !3469
  %65 = icmp eq i64 %64, -1, !dbg !3479
  br i1 %65, label %66, label %68, !dbg !3481

; <label>:66:                                     ; preds = %62
  %67 = call i64 %2(i32 %0, i8* null, i8* %3) #11, !dbg !3482
  br label %74, !dbg !3483

; <label>:68:                                     ; preds = %62
  %69 = bitcast i8** %9 to i64*, !dbg !3484
  %70 = load i64, i64* %69, align 8, !dbg !3484, !tbaa !752
  call void @llvm.dbg.value(metadata i8** %9, metadata !266, metadata !DIExpression(DW_OP_deref)), !dbg !3463
  %71 = ptrtoint [25 x i8]* %6 to i64, !dbg !3485
  %72 = sub i64 %70, %71, !dbg !3485
  %73 = call i64 %1(i8* nonnull %49, i64 %72, i8* %3) #11, !dbg !3486
  br label %74, !dbg !3487

; <label>:74:                                     ; preds = %68, %66, %60
  %75 = phi i64 [ %61, %60 ], [ %67, %66 ], [ %73, %68 ], !dbg !3488
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %53) #11, !dbg !3489
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %52) #11, !dbg !3489
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %51) #11, !dbg !3489
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %50) #11, !dbg !3489
  call void @llvm.lifetime.end.p0i8(i64 25, i8* nonnull %49) #11, !dbg !3489
  br label %78

; <label>:76:                                     ; preds = %44
  %77 = call i64 %1(i8* nonnull %11, i64 %46, i8* %3) #11, !dbg !3490
  br label %78, !dbg !3491

; <label>:78:                                     ; preds = %76, %74, %42, %30
  %79 = phi i64 [ %31, %30 ], [ %43, %42 ], [ %77, %76 ], [ %75, %74 ], !dbg !3492
  call void @llvm.lifetime.end.p0i8(i64 6, i8* nonnull %11) #11, !dbg !3493
  ret i64 %79, !dbg !3493
}

declare i8* @iconv_open(i8*, i8*) local_unnamed_addr #3

declare i64 @iconv(i8*, i8**, i64*, i8**, i64*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @fwrite_success_callback(i8* nocapture, i64, i8* nocapture) #7 !dbg !3494 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3496, metadata !DIExpression()), !dbg !3500
  call void @llvm.dbg.value(metadata i64 %1, metadata !3497, metadata !DIExpression()), !dbg !3501
  call void @llvm.dbg.value(metadata i8* %2, metadata !3498, metadata !DIExpression()), !dbg !3502
  %4 = bitcast i8* %2 to %struct._IO_FILE*, !dbg !3503
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %4, metadata !3499, metadata !DIExpression()), !dbg !3504
  %5 = tail call i64 @fwrite(i8* %0, i64 1, i64 %1, %struct._IO_FILE* %4), !dbg !3505
  ret i64 0, !dbg !3506
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @print_unicode_char(%struct._IO_FILE*, i32, i32) local_unnamed_addr #7 !dbg !3507 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3511, metadata !DIExpression()), !dbg !3514
  call void @llvm.dbg.value(metadata i32 %1, metadata !3512, metadata !DIExpression()), !dbg !3515
  call void @llvm.dbg.value(metadata i32 %2, metadata !3513, metadata !DIExpression()), !dbg !3516
  %4 = icmp eq i32 %2, 0, !dbg !3517
  %5 = select i1 %4, i64 (i32, i8*, i8*)* @fallback_failure_callback, i64 (i32, i8*, i8*)* @exit_failure_callback, !dbg !3517
  %6 = bitcast %struct._IO_FILE* %0 to i8*, !dbg !3518
  %7 = tail call i64 @unicode_to_mb(i32 %1, i64 (i8*, i64, i8*)* nonnull @fwrite_success_callback, i64 (i32, i8*, i8*)* nonnull %5, i8* %6), !dbg !3519
  ret void, !dbg !3520
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @fallback_failure_callback(i32, i8* nocapture readnone, i8*) #7 !dbg !3521 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3523, metadata !DIExpression()), !dbg !3527
  call void @llvm.dbg.value(metadata i8* %1, metadata !3524, metadata !DIExpression()), !dbg !3528
  call void @llvm.dbg.value(metadata i8* %2, metadata !3525, metadata !DIExpression()), !dbg !3529
  %4 = bitcast i8* %2 to %struct._IO_FILE*, !dbg !3530
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %4, metadata !3526, metadata !DIExpression()), !dbg !3531
  %5 = icmp ult i32 %0, 65536, !dbg !3532
  br i1 %5, label %6, label %8, !dbg !3534

; <label>:6:                                      ; preds = %3
  %7 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6.98, i64 0, i64 0), i32 %0) #11, !dbg !3535
  br label %10, !dbg !3535

; <label>:8:                                      ; preds = %3
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %4, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.99, i64 0, i64 0), i32 %0) #11, !dbg !3536
  br label %10

; <label>:10:                                     ; preds = %8, %6
  ret i64 -1, !dbg !3537
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @exit_failure_callback(i32, i8*, i8* nocapture readnone) #7 !dbg !3538 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3540, metadata !DIExpression()), !dbg !3543
  call void @llvm.dbg.value(metadata i8* %1, metadata !3541, metadata !DIExpression()), !dbg !3544
  call void @llvm.dbg.value(metadata i8* %2, metadata !3542, metadata !DIExpression()), !dbg !3545
  %4 = icmp eq i8* %1, null, !dbg !3546
  br i1 %4, label %5, label %7, !dbg !3548

; <label>:5:                                      ; preds = %3
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4.96, i64 0, i64 0), i32 5) #11, !dbg !3549
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %6, i32 %0) #11, !dbg !3550
  br label %10, !dbg !3550

; <label>:7:                                      ; preds = %3
  %8 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5.97, i64 0, i64 0), i32 5) #11, !dbg !3551
  %9 = tail call i8* @dcgettext(i8* null, i8* nonnull %1, i32 5) #11, !dbg !3552
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %8, i32 %0, i8* %9) #11, !dbg !3553
  br label %10

; <label>:10:                                     ; preds = %7, %5
  ret i64 -1, !dbg !3554
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @u8_uctomb_aux(i8* nocapture, i32, i32) local_unnamed_addr #7 !dbg !3555 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3557, metadata !DIExpression()), !dbg !3561
  call void @llvm.dbg.value(metadata i32 %1, metadata !3558, metadata !DIExpression()), !dbg !3562
  call void @llvm.dbg.value(metadata i32 %2, metadata !3559, metadata !DIExpression()), !dbg !3563
  %4 = icmp ult i32 %1, 128, !dbg !3564
  br i1 %4, label %43, label %5, !dbg !3566

; <label>:5:                                      ; preds = %3
  %6 = icmp ult i32 %1, 2048, !dbg !3567
  br i1 %6, label %14, label %7, !dbg !3569

; <label>:7:                                      ; preds = %5
  %8 = icmp ult i32 %1, 65536, !dbg !3570
  br i1 %8, label %9, label %12, !dbg !3572

; <label>:9:                                      ; preds = %7
  %10 = and i32 %1, -2048, !dbg !3573
  %11 = icmp eq i32 %10, 55296, !dbg !3573
  br i1 %11, label %43, label %14, !dbg !3573

; <label>:12:                                     ; preds = %7
  %13 = icmp ult i32 %1, 1114112, !dbg !3576
  br i1 %13, label %14, label %43, !dbg !3578

; <label>:14:                                     ; preds = %12, %9, %5
  %15 = phi i32 [ 2, %5 ], [ 3, %9 ], [ 4, %12 ], !dbg !3579
  call void @llvm.dbg.value(metadata i32 %15, metadata !3560, metadata !DIExpression()), !dbg !3580
  %16 = icmp sgt i32 %15, %2, !dbg !3581
  br i1 %16, label %43, label %17, !dbg !3583

; <label>:17:                                     ; preds = %14
  %18 = trunc i32 %15 to i3, !dbg !3584
  switch i3 %18, label %43 [
    i3 -4, label %19
    i3 3, label %26
    i3 2, label %34
  ], !dbg !3584

; <label>:19:                                     ; preds = %17
  %20 = trunc i32 %1 to i8, !dbg !3585
  %21 = and i8 %20, 63, !dbg !3585
  %22 = or i8 %21, -128, !dbg !3585
  %23 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !3587
  store i8 %22, i8* %23, align 1, !dbg !3588, !tbaa !906
  %24 = lshr i32 %1, 6, !dbg !3589
  call void @llvm.dbg.value(metadata i32 %24, metadata !3558, metadata !DIExpression()), !dbg !3562
  %25 = or i32 %24, 65536, !dbg !3590
  call void @llvm.dbg.value(metadata i32 %25, metadata !3558, metadata !DIExpression()), !dbg !3562
  br label %26, !dbg !3591

; <label>:26:                                     ; preds = %17, %19
  %27 = phi i32 [ %1, %17 ], [ %25, %19 ]
  call void @llvm.dbg.value(metadata i32 %27, metadata !3558, metadata !DIExpression()), !dbg !3562
  %28 = trunc i32 %27 to i8, !dbg !3592
  %29 = and i8 %28, 63, !dbg !3592
  %30 = or i8 %29, -128, !dbg !3592
  %31 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !3593
  store i8 %30, i8* %31, align 1, !dbg !3594, !tbaa !906
  %32 = lshr i32 %27, 6, !dbg !3595
  call void @llvm.dbg.value(metadata i32 %32, metadata !3558, metadata !DIExpression()), !dbg !3562
  %33 = or i32 %32, 2048, !dbg !3596
  call void @llvm.dbg.value(metadata i32 %33, metadata !3558, metadata !DIExpression()), !dbg !3562
  br label %34, !dbg !3597

; <label>:34:                                     ; preds = %17, %26
  %35 = phi i32 [ %1, %17 ], [ %33, %26 ]
  call void @llvm.dbg.value(metadata i32 %35, metadata !3558, metadata !DIExpression()), !dbg !3562
  %36 = trunc i32 %35 to i8, !dbg !3598
  %37 = and i8 %36, 63, !dbg !3598
  %38 = or i8 %37, -128, !dbg !3598
  %39 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !3599
  store i8 %38, i8* %39, align 1, !dbg !3600, !tbaa !906
  %40 = lshr i32 %35, 6, !dbg !3601
  call void @llvm.dbg.value(metadata i32 %40, metadata !3558, metadata !DIExpression()), !dbg !3562
  call void @llvm.dbg.value(metadata i32 %40, metadata !3558, metadata !DIExpression(DW_OP_constu, 192, DW_OP_or, DW_OP_stack_value)), !dbg !3562
  %41 = trunc i32 %40 to i8, !dbg !3602
  %42 = or i8 %41, -64, !dbg !3602
  store i8 %42, i8* %0, align 1, !dbg !3603, !tbaa !906
  br label %43, !dbg !3604

; <label>:43:                                     ; preds = %17, %34, %14, %12, %9, %3
  %44 = phi i32 [ -2, %3 ], [ -1, %9 ], [ -1, %12 ], [ -2, %14 ], [ %15, %34 ], [ %15, %17 ], !dbg !3579
  ret i32 %44, !dbg !3605
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #7 !dbg !3606 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3645, metadata !DIExpression()), !dbg !3651
  call void @llvm.dbg.value(metadata i8* %1, metadata !3646, metadata !DIExpression()), !dbg !3652
  call void @llvm.dbg.value(metadata i8* %2, metadata !3647, metadata !DIExpression()), !dbg !3653
  call void @llvm.dbg.value(metadata i8* %3, metadata !3648, metadata !DIExpression()), !dbg !3654
  call void @llvm.dbg.value(metadata i8** %4, metadata !3649, metadata !DIExpression()), !dbg !3655
  call void @llvm.dbg.value(metadata i64 %5, metadata !3650, metadata !DIExpression()), !dbg !3656
  %7 = icmp eq i8* %1, null, !dbg !3657
  br i1 %7, label %10, label %8, !dbg !3659

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.102, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #11, !dbg !3660
  br label %12, !dbg !3660

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.103, i64 0, i64 0), i8* %2, i8* %3) #11, !dbg !3661
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.104, i64 0, i64 0), i32 5) #11, !dbg !3662
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2018) #11, !dbg !3662
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([204 x i8], [204 x i8]* @.str.3.105, i64 0, i64 0), i32 5) #11, !dbg !3663
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0), !dbg !3663
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
  ], !dbg !3664

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !3665
  unreachable, !dbg !3665

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.106, i64 0, i64 0), i32 5) #11, !dbg !3667
  %20 = load i8*, i8** %4, align 8, !dbg !3667, !tbaa !752
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #11, !dbg !3667
  br label %146, !dbg !3668

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.107, i64 0, i64 0), i32 5) #11, !dbg !3669
  %24 = load i8*, i8** %4, align 8, !dbg !3669, !tbaa !752
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3669
  %26 = load i8*, i8** %25, align 8, !dbg !3669, !tbaa !752
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #11, !dbg !3669
  br label %146, !dbg !3670

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.108, i64 0, i64 0), i32 5) #11, !dbg !3671
  %30 = load i8*, i8** %4, align 8, !dbg !3671, !tbaa !752
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3671
  %32 = load i8*, i8** %31, align 8, !dbg !3671, !tbaa !752
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3671
  %34 = load i8*, i8** %33, align 8, !dbg !3671, !tbaa !752
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #11, !dbg !3671
  br label %146, !dbg !3672

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.109, i64 0, i64 0), i32 5) #11, !dbg !3673
  %38 = load i8*, i8** %4, align 8, !dbg !3673, !tbaa !752
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3673
  %40 = load i8*, i8** %39, align 8, !dbg !3673, !tbaa !752
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3673
  %42 = load i8*, i8** %41, align 8, !dbg !3673, !tbaa !752
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3673
  %44 = load i8*, i8** %43, align 8, !dbg !3673, !tbaa !752
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #11, !dbg !3673
  br label %146, !dbg !3674

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.110, i64 0, i64 0), i32 5) #11, !dbg !3675
  %48 = load i8*, i8** %4, align 8, !dbg !3675, !tbaa !752
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3675
  %50 = load i8*, i8** %49, align 8, !dbg !3675, !tbaa !752
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3675
  %52 = load i8*, i8** %51, align 8, !dbg !3675, !tbaa !752
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3675
  %54 = load i8*, i8** %53, align 8, !dbg !3675, !tbaa !752
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3675
  %56 = load i8*, i8** %55, align 8, !dbg !3675, !tbaa !752
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #11, !dbg !3675
  br label %146, !dbg !3676

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.111, i64 0, i64 0), i32 5) #11, !dbg !3677
  %60 = load i8*, i8** %4, align 8, !dbg !3677, !tbaa !752
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3677
  %62 = load i8*, i8** %61, align 8, !dbg !3677, !tbaa !752
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3677
  %64 = load i8*, i8** %63, align 8, !dbg !3677, !tbaa !752
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3677
  %66 = load i8*, i8** %65, align 8, !dbg !3677, !tbaa !752
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3677
  %68 = load i8*, i8** %67, align 8, !dbg !3677, !tbaa !752
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3677
  %70 = load i8*, i8** %69, align 8, !dbg !3677, !tbaa !752
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #11, !dbg !3677
  br label %146, !dbg !3678

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.112, i64 0, i64 0), i32 5) #11, !dbg !3679
  %74 = load i8*, i8** %4, align 8, !dbg !3679, !tbaa !752
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3679
  %76 = load i8*, i8** %75, align 8, !dbg !3679, !tbaa !752
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3679
  %78 = load i8*, i8** %77, align 8, !dbg !3679, !tbaa !752
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3679
  %80 = load i8*, i8** %79, align 8, !dbg !3679, !tbaa !752
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3679
  %82 = load i8*, i8** %81, align 8, !dbg !3679, !tbaa !752
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3679
  %84 = load i8*, i8** %83, align 8, !dbg !3679, !tbaa !752
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3679
  %86 = load i8*, i8** %85, align 8, !dbg !3679, !tbaa !752
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #11, !dbg !3679
  br label %146, !dbg !3680

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.113, i64 0, i64 0), i32 5) #11, !dbg !3681
  %90 = load i8*, i8** %4, align 8, !dbg !3681, !tbaa !752
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3681
  %92 = load i8*, i8** %91, align 8, !dbg !3681, !tbaa !752
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3681
  %94 = load i8*, i8** %93, align 8, !dbg !3681, !tbaa !752
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3681
  %96 = load i8*, i8** %95, align 8, !dbg !3681, !tbaa !752
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3681
  %98 = load i8*, i8** %97, align 8, !dbg !3681, !tbaa !752
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3681
  %100 = load i8*, i8** %99, align 8, !dbg !3681, !tbaa !752
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3681
  %102 = load i8*, i8** %101, align 8, !dbg !3681, !tbaa !752
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3681
  %104 = load i8*, i8** %103, align 8, !dbg !3681, !tbaa !752
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #11, !dbg !3681
  br label %146, !dbg !3682

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.114, i64 0, i64 0), i32 5) #11, !dbg !3683
  %108 = load i8*, i8** %4, align 8, !dbg !3683, !tbaa !752
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3683
  %110 = load i8*, i8** %109, align 8, !dbg !3683, !tbaa !752
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3683
  %112 = load i8*, i8** %111, align 8, !dbg !3683, !tbaa !752
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3683
  %114 = load i8*, i8** %113, align 8, !dbg !3683, !tbaa !752
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3683
  %116 = load i8*, i8** %115, align 8, !dbg !3683, !tbaa !752
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3683
  %118 = load i8*, i8** %117, align 8, !dbg !3683, !tbaa !752
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3683
  %120 = load i8*, i8** %119, align 8, !dbg !3683, !tbaa !752
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3683
  %122 = load i8*, i8** %121, align 8, !dbg !3683, !tbaa !752
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3683
  %124 = load i8*, i8** %123, align 8, !dbg !3683, !tbaa !752
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #11, !dbg !3683
  br label %146, !dbg !3684

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.115, i64 0, i64 0), i32 5) #11, !dbg !3685
  %128 = load i8*, i8** %4, align 8, !dbg !3685, !tbaa !752
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3685
  %130 = load i8*, i8** %129, align 8, !dbg !3685, !tbaa !752
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3685
  %132 = load i8*, i8** %131, align 8, !dbg !3685, !tbaa !752
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3685
  %134 = load i8*, i8** %133, align 8, !dbg !3685, !tbaa !752
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3685
  %136 = load i8*, i8** %135, align 8, !dbg !3685, !tbaa !752
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3685
  %138 = load i8*, i8** %137, align 8, !dbg !3685, !tbaa !752
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3685
  %140 = load i8*, i8** %139, align 8, !dbg !3685, !tbaa !752
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3685
  %142 = load i8*, i8** %141, align 8, !dbg !3685, !tbaa !752
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3685
  %144 = load i8*, i8** %143, align 8, !dbg !3685, !tbaa !752
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #11, !dbg !3685
  br label %146, !dbg !3686

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3687
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #7 !dbg !3688 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3692, metadata !DIExpression()), !dbg !3698
  call void @llvm.dbg.value(metadata i8* %1, metadata !3693, metadata !DIExpression()), !dbg !3699
  call void @llvm.dbg.value(metadata i8* %2, metadata !3694, metadata !DIExpression()), !dbg !3700
  call void @llvm.dbg.value(metadata i8* %3, metadata !3695, metadata !DIExpression()), !dbg !3701
  call void @llvm.dbg.value(metadata i8** %4, metadata !3696, metadata !DIExpression()), !dbg !3702
  call void @llvm.dbg.value(metadata i64 0, metadata !3697, metadata !DIExpression()), !dbg !3703
  br label %6, !dbg !3704

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3706
  call void @llvm.dbg.value(metadata i64 %7, metadata !3697, metadata !DIExpression()), !dbg !3703
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3708
  %9 = load i8*, i8** %8, align 8, !dbg !3708, !tbaa !752
  %10 = icmp eq i8* %9, null, !dbg !3709
  %11 = add i64 %7, 1, !dbg !3710
  call void @llvm.dbg.value(metadata i64 %11, metadata !3697, metadata !DIExpression()), !dbg !3703
  br i1 %10, label %12, label %6, !dbg !3709, !llvm.loop !3711

; <label>:12:                                     ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !3697, metadata !DIExpression()), !dbg !3703
  call void @llvm.dbg.value(metadata i64 %7, metadata !3697, metadata !DIExpression()), !dbg !3703
  call void @llvm.dbg.value(metadata i64 %7, metadata !3697, metadata !DIExpression()), !dbg !3703
  call void @llvm.dbg.value(metadata i64 %7, metadata !3697, metadata !DIExpression()), !dbg !3703
  call void @llvm.dbg.value(metadata i64 %7, metadata !3697, metadata !DIExpression()), !dbg !3703
  call void @llvm.dbg.value(metadata i64 %7, metadata !3697, metadata !DIExpression()), !dbg !3703
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3713
  ret void, !dbg !3714
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #7 !dbg !3715 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3726, metadata !DIExpression()), !dbg !3734
  call void @llvm.dbg.value(metadata i8* %1, metadata !3727, metadata !DIExpression()), !dbg !3735
  call void @llvm.dbg.value(metadata i8* %2, metadata !3728, metadata !DIExpression()), !dbg !3736
  call void @llvm.dbg.value(metadata i8* %3, metadata !3729, metadata !DIExpression()), !dbg !3737
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3730, metadata !DIExpression()), !dbg !3738
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3739
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #11, !dbg !3739
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3732, metadata !DIExpression()), !dbg !3740
  call void @llvm.dbg.value(metadata i64 0, metadata !3731, metadata !DIExpression()), !dbg !3741
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  call void @llvm.dbg.value(metadata i64 0, metadata !3731, metadata !DIExpression()), !dbg !3741
  %11 = load i32, i32* %8, align 8, !dbg !3742
  %12 = icmp ult i32 %11, 41, !dbg !3742
  br i1 %12, label %13, label %18, !dbg !3742

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3742
  %15 = sext i32 %11 to i64, !dbg !3742
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3742
  %17 = add i32 %11, 8, !dbg !3742
  store i32 %17, i32* %8, align 8, !dbg !3742
  br label %21, !dbg !3742

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3742
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3742
  store i8* %20, i8** %10, align 8, !dbg !3742
  br label %21, !dbg !3742

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3742
  %25 = load i8*, i8** %24, align 8, !dbg !3742
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3745
  store i8* %25, i8** %26, align 16, !dbg !3746, !tbaa !752
  %27 = icmp eq i8* %25, null, !dbg !3747
  br i1 %27, label %30, label %28, !dbg !3748

; <label>:28:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !3731, metadata !DIExpression()), !dbg !3741
  call void @llvm.dbg.value(metadata i64 1, metadata !3731, metadata !DIExpression()), !dbg !3741
  %29 = icmp ult i32 %22, 41, !dbg !3742
  br i1 %29, label %35, label %32, !dbg !3742

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !3749
  call void @llvm.dbg.value(metadata i64 %31, metadata !3731, metadata !DIExpression()), !dbg !3741
  call void @llvm.dbg.value(metadata i64 %31, metadata !3731, metadata !DIExpression()), !dbg !3741
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3750
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #11, !dbg !3751
  ret void, !dbg !3751

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3742
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3742
  store i8* %34, i8** %10, align 8, !dbg !3742
  br label %40, !dbg !3742

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3742
  %37 = sext i32 %22 to i64, !dbg !3742
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3742
  %39 = add i32 %22, 8, !dbg !3742
  store i32 %39, i32* %8, align 8, !dbg !3742
  br label %40, !dbg !3742

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3742
  %44 = load i8*, i8** %43, align 8, !dbg !3742
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3745
  store i8* %44, i8** %45, align 8, !dbg !3746, !tbaa !752
  %46 = icmp eq i8* %44, null, !dbg !3747
  br i1 %46, label %30, label %47, !dbg !3748

; <label>:47:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3731, metadata !DIExpression()), !dbg !3741
  call void @llvm.dbg.value(metadata i64 2, metadata !3731, metadata !DIExpression()), !dbg !3741
  %48 = icmp ult i32 %41, 41, !dbg !3742
  br i1 %48, label %52, label %49, !dbg !3742

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3742
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3742
  store i8* %51, i8** %10, align 8, !dbg !3742
  br label %57, !dbg !3742

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3742
  %54 = sext i32 %41 to i64, !dbg !3742
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3742
  %56 = add i32 %41, 8, !dbg !3742
  store i32 %56, i32* %8, align 8, !dbg !3742
  br label %57, !dbg !3742

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3742
  %61 = load i8*, i8** %60, align 8, !dbg !3742
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3745
  store i8* %61, i8** %62, align 16, !dbg !3746, !tbaa !752
  %63 = icmp eq i8* %61, null, !dbg !3747
  br i1 %63, label %30, label %64, !dbg !3748

; <label>:64:                                     ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !3731, metadata !DIExpression()), !dbg !3741
  call void @llvm.dbg.value(metadata i64 3, metadata !3731, metadata !DIExpression()), !dbg !3741
  %65 = icmp ult i32 %58, 41, !dbg !3742
  br i1 %65, label %69, label %66, !dbg !3742

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3742
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3742
  store i8* %68, i8** %10, align 8, !dbg !3742
  br label %74, !dbg !3742

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3742
  %71 = sext i32 %58 to i64, !dbg !3742
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3742
  %73 = add i32 %58, 8, !dbg !3742
  store i32 %73, i32* %8, align 8, !dbg !3742
  br label %74, !dbg !3742

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3742
  %78 = load i8*, i8** %77, align 8, !dbg !3742
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3745
  store i8* %78, i8** %79, align 8, !dbg !3746, !tbaa !752
  %80 = icmp eq i8* %78, null, !dbg !3747
  br i1 %80, label %30, label %81, !dbg !3748

; <label>:81:                                     ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !3731, metadata !DIExpression()), !dbg !3741
  call void @llvm.dbg.value(metadata i64 4, metadata !3731, metadata !DIExpression()), !dbg !3741
  %82 = icmp ult i32 %75, 41, !dbg !3742
  br i1 %82, label %86, label %83, !dbg !3742

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3742
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3742
  store i8* %85, i8** %10, align 8, !dbg !3742
  br label %91, !dbg !3742

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3742
  %88 = sext i32 %75 to i64, !dbg !3742
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3742
  %90 = add i32 %75, 8, !dbg !3742
  store i32 %90, i32* %8, align 8, !dbg !3742
  br label %91, !dbg !3742

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3742
  %95 = load i8*, i8** %94, align 8, !dbg !3742
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3745
  store i8* %95, i8** %96, align 16, !dbg !3746, !tbaa !752
  %97 = icmp eq i8* %95, null, !dbg !3747
  br i1 %97, label %30, label %98, !dbg !3748

; <label>:98:                                     ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !3731, metadata !DIExpression()), !dbg !3741
  call void @llvm.dbg.value(metadata i64 5, metadata !3731, metadata !DIExpression()), !dbg !3741
  %99 = icmp ult i32 %92, 41, !dbg !3742
  br i1 %99, label %103, label %100, !dbg !3742

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3742
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3742
  store i8* %102, i8** %10, align 8, !dbg !3742
  br label %108, !dbg !3742

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3742
  %105 = sext i32 %92 to i64, !dbg !3742
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3742
  %107 = add i32 %92, 8, !dbg !3742
  store i32 %107, i32* %8, align 8, !dbg !3742
  br label %108, !dbg !3742

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3742
  %111 = load i8*, i8** %110, align 8, !dbg !3742
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3745
  store i8* %111, i8** %112, align 8, !dbg !3746, !tbaa !752
  %113 = icmp eq i8* %111, null, !dbg !3747
  br i1 %113, label %30, label %114, !dbg !3748

; <label>:114:                                    ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !3731, metadata !DIExpression()), !dbg !3741
  call void @llvm.dbg.value(metadata i64 6, metadata !3731, metadata !DIExpression()), !dbg !3741
  %115 = load i8*, i8** %10, align 8, !dbg !3742
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3742
  store i8* %116, i8** %10, align 8, !dbg !3742
  %117 = bitcast i8* %115 to i8**, !dbg !3742
  %118 = load i8*, i8** %117, align 8, !dbg !3742
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3745
  store i8* %118, i8** %119, align 16, !dbg !3746, !tbaa !752
  %120 = icmp eq i8* %118, null, !dbg !3747
  br i1 %120, label %30, label %121, !dbg !3748

; <label>:121:                                    ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !3731, metadata !DIExpression()), !dbg !3741
  call void @llvm.dbg.value(metadata i64 7, metadata !3731, metadata !DIExpression()), !dbg !3741
  %122 = load i8*, i8** %10, align 8, !dbg !3742
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3742
  store i8* %123, i8** %10, align 8, !dbg !3742
  %124 = bitcast i8* %122 to i8**, !dbg !3742
  %125 = load i8*, i8** %124, align 8, !dbg !3742
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3745
  store i8* %125, i8** %126, align 8, !dbg !3746, !tbaa !752
  %127 = icmp eq i8* %125, null, !dbg !3747
  br i1 %127, label %30, label %128, !dbg !3748

; <label>:128:                                    ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !3731, metadata !DIExpression()), !dbg !3741
  call void @llvm.dbg.value(metadata i64 8, metadata !3731, metadata !DIExpression()), !dbg !3741
  %129 = load i8*, i8** %10, align 8, !dbg !3742
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3742
  store i8* %130, i8** %10, align 8, !dbg !3742
  %131 = bitcast i8* %129 to i8**, !dbg !3742
  %132 = load i8*, i8** %131, align 8, !dbg !3742
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3745
  store i8* %132, i8** %133, align 16, !dbg !3746, !tbaa !752
  %134 = icmp eq i8* %132, null, !dbg !3747
  br i1 %134, label %30, label %135, !dbg !3748

; <label>:135:                                    ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !3731, metadata !DIExpression()), !dbg !3741
  call void @llvm.dbg.value(metadata i64 9, metadata !3731, metadata !DIExpression()), !dbg !3741
  %136 = load i8*, i8** %10, align 8, !dbg !3742
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3742
  store i8* %137, i8** %10, align 8, !dbg !3742
  %138 = bitcast i8* %136 to i8**, !dbg !3742
  %139 = load i8*, i8** %138, align 8, !dbg !3742
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3745
  store i8* %139, i8** %140, align 8, !dbg !3746, !tbaa !752
  %141 = icmp eq i8* %139, null, !dbg !3747
  %142 = select i1 %141, i64 9, i64 10, !dbg !3748
  br label %30, !dbg !3748
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #7 !dbg !3752 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3756, metadata !DIExpression()), !dbg !3767
  call void @llvm.dbg.value(metadata i8* %1, metadata !3757, metadata !DIExpression()), !dbg !3768
  call void @llvm.dbg.value(metadata i8* %2, metadata !3758, metadata !DIExpression()), !dbg !3769
  call void @llvm.dbg.value(metadata i8* %3, metadata !3759, metadata !DIExpression()), !dbg !3770
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3771
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #11, !dbg !3771
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3760, metadata !DIExpression()), !dbg !3772
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3773
  call void @llvm.va_start(i8* nonnull %6), !dbg !3773
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3774
  call void @llvm.va_end(i8* nonnull %6), !dbg !3775
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #11, !dbg !3776
  ret void, !dbg !3776
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #11

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #11

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #7 !dbg !3777 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.118, i64 0, i64 0), i32 5) #11, !dbg !3778
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.119, i64 0, i64 0)) #11, !dbg !3778
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.120, i64 0, i64 0), i32 5) #11, !dbg !3779
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.121, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18.122, i64 0, i64 0)) #11, !dbg !3779
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.19.123, i64 0, i64 0), i32 5) #11, !dbg !3780
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3780, !tbaa !752
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6), !dbg !3780
  ret void, !dbg !3781
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #14 !dbg !3782 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3786, metadata !DIExpression()), !dbg !3788
  call void @llvm.dbg.value(metadata i64 %1, metadata !3787, metadata !DIExpression()), !dbg !3789
  %3 = udiv i64 9223372036854775807, %1, !dbg !3790
  %4 = icmp ult i64 %3, %0, !dbg !3790
  br i1 %4, label %5, label %6, !dbg !3792

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3793
  unreachable, !dbg !3793

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3794
  call void @llvm.dbg.value(metadata i64 %7, metadata !3795, metadata !DIExpression()) #11, !dbg !3802
  %8 = tail call noalias i8* @malloc(i64 %7) #11, !dbg !3804
  call void @llvm.dbg.value(metadata i8* %8, metadata !3801, metadata !DIExpression()) #11, !dbg !3805
  %9 = icmp eq i8* %8, null, !dbg !3806
  %10 = icmp ne i64 %7, 0, !dbg !3808
  %11 = and i1 %10, %9, !dbg !3809
  br i1 %11, label %12, label %13, !dbg !3809

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !3810
  unreachable, !dbg !3810

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3811
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64) local_unnamed_addr #7 !dbg !3796 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3795, metadata !DIExpression()), !dbg !3812
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !3813
  call void @llvm.dbg.value(metadata i8* %2, metadata !3801, metadata !DIExpression()), !dbg !3814
  %3 = icmp eq i8* %2, null, !dbg !3815
  %4 = icmp ne i64 %0, 0, !dbg !3816
  %5 = and i1 %4, %3, !dbg !3817
  br i1 %5, label %6, label %7, !dbg !3817

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3818
  unreachable, !dbg !3818

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3819
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #14 !dbg !3820 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3824, metadata !DIExpression()), !dbg !3827
  call void @llvm.dbg.value(metadata i64 %1, metadata !3825, metadata !DIExpression()), !dbg !3828
  call void @llvm.dbg.value(metadata i64 %2, metadata !3826, metadata !DIExpression()), !dbg !3829
  %4 = udiv i64 9223372036854775807, %2, !dbg !3830
  %5 = icmp ult i64 %4, %1, !dbg !3830
  br i1 %5, label %6, label %7, !dbg !3832

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !3833
  unreachable, !dbg !3833

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3834
  call void @llvm.dbg.value(metadata i8* %0, metadata !3835, metadata !DIExpression()) #11, !dbg !3841
  call void @llvm.dbg.value(metadata i64 %8, metadata !3840, metadata !DIExpression()) #11, !dbg !3843
  %9 = icmp eq i64 %8, 0, !dbg !3844
  %10 = icmp ne i8* %0, null, !dbg !3846
  %11 = and i1 %10, %9, !dbg !3847
  br i1 %11, label %12, label %13, !dbg !3847

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #11, !dbg !3848
  br label %19, !dbg !3850

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #11, !dbg !3851
  call void @llvm.dbg.value(metadata i8* %14, metadata !3835, metadata !DIExpression()) #11, !dbg !3841
  %15 = icmp eq i8* %14, null, !dbg !3852
  %16 = icmp ne i64 %8, 0, !dbg !3854
  %17 = and i1 %16, %15, !dbg !3855
  br i1 %17, label %18, label %19, !dbg !3855

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3856
  unreachable, !dbg !3856

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3857
  ret i8* %20, !dbg !3858
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #7 !dbg !3836 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3835, metadata !DIExpression()), !dbg !3859
  call void @llvm.dbg.value(metadata i64 %1, metadata !3840, metadata !DIExpression()), !dbg !3860
  %3 = icmp eq i64 %1, 0, !dbg !3861
  %4 = icmp ne i8* %0, null, !dbg !3862
  %5 = and i1 %4, %3, !dbg !3863
  br i1 %5, label %6, label %7, !dbg !3863

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #11, !dbg !3864
  br label %13, !dbg !3865

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #11, !dbg !3866
  call void @llvm.dbg.value(metadata i8* %8, metadata !3835, metadata !DIExpression()), !dbg !3859
  %9 = icmp eq i8* %8, null, !dbg !3867
  %10 = icmp ne i64 %1, 0, !dbg !3868
  %11 = and i1 %10, %9, !dbg !3869
  br i1 %11, label %12, label %13, !dbg !3869

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3870
  unreachable, !dbg !3870

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3871
  ret i8* %14, !dbg !3872
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #14 !dbg !293 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !298, metadata !DIExpression()), !dbg !3873
  call void @llvm.dbg.value(metadata i64* %1, metadata !299, metadata !DIExpression()), !dbg !3874
  call void @llvm.dbg.value(metadata i64 %2, metadata !300, metadata !DIExpression()), !dbg !3875
  %4 = load i64, i64* %1, align 8, !dbg !3876, !tbaa !2714
  call void @llvm.dbg.value(metadata i64 %4, metadata !301, metadata !DIExpression()), !dbg !3877
  %5 = icmp eq i8* %0, null, !dbg !3878
  br i1 %5, label %6, label %20, !dbg !3880

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3881
  br i1 %7, label %8, label %13, !dbg !3884

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3885
  call void @llvm.dbg.value(metadata i64 %9, metadata !301, metadata !DIExpression()), !dbg !3877
  %10 = icmp ugt i64 %2, 128, !dbg !3887
  %11 = zext i1 %10 to i64, !dbg !3887
  %12 = add nuw nsw i64 %9, %11, !dbg !3888
  call void @llvm.dbg.value(metadata i64 %12, metadata !301, metadata !DIExpression()), !dbg !3877
  br label %13, !dbg !3889

; <label>:13:                                     ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3890
  call void @llvm.dbg.value(metadata i64 %14, metadata !301, metadata !DIExpression()), !dbg !3877
  %15 = udiv i64 9223372036854775807, %2, !dbg !3891
  %16 = icmp ult i64 %15, %14, !dbg !3891
  br i1 %16, label %19, label %17, !dbg !3893

; <label>:17:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !301, metadata !DIExpression()), !dbg !3877
  store i64 %14, i64* %1, align 8, !dbg !3894, !tbaa !2714
  %18 = mul i64 %14, %2, !dbg !3895
  call void @llvm.dbg.value(metadata i8* %0, metadata !3835, metadata !DIExpression()) #11, !dbg !3896
  call void @llvm.dbg.value(metadata i64 %28, metadata !3840, metadata !DIExpression()) #11, !dbg !3898
  br label %31, !dbg !3899

; <label>:19:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3900
  unreachable, !dbg !3900

; <label>:20:                                     ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3901
  %22 = icmp ugt i64 %21, %4, !dbg !3904
  br i1 %22, label %24, label %23, !dbg !3905

; <label>:23:                                     ; preds = %20
  tail call void @xalloc_die() #15, !dbg !3906
  unreachable, !dbg !3906

; <label>:24:                                     ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3907
  %26 = add i64 %4, 1, !dbg !3908
  %27 = add i64 %26, %25, !dbg !3909
  call void @llvm.dbg.value(metadata i64 %27, metadata !301, metadata !DIExpression()), !dbg !3877
  call void @llvm.dbg.value(metadata i64 %27, metadata !301, metadata !DIExpression()), !dbg !3877
  store i64 %27, i64* %1, align 8, !dbg !3894, !tbaa !2714
  %28 = mul i64 %27, %2, !dbg !3895
  call void @llvm.dbg.value(metadata i8* %0, metadata !3835, metadata !DIExpression()) #11, !dbg !3896
  call void @llvm.dbg.value(metadata i64 %28, metadata !3840, metadata !DIExpression()) #11, !dbg !3898
  %29 = icmp eq i64 %28, 0, !dbg !3910
  br i1 %29, label %30, label %31, !dbg !3899

; <label>:30:                                     ; preds = %24
  tail call void @free(i8* nonnull %0) #11, !dbg !3911
  br label %38, !dbg !3912

; <label>:31:                                     ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #11, !dbg !3913
  call void @llvm.dbg.value(metadata i8* %33, metadata !3835, metadata !DIExpression()) #11, !dbg !3896
  %34 = icmp eq i8* %33, null, !dbg !3914
  %35 = icmp ne i64 %32, 0, !dbg !3915
  %36 = and i1 %35, %34, !dbg !3916
  br i1 %36, label %37, label %38, !dbg !3916

; <label>:37:                                     ; preds = %31
  tail call void @xalloc_die() #15, !dbg !3917
  unreachable, !dbg !3917

; <label>:38:                                     ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3918
  ret i8* %39, !dbg !3919
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64) local_unnamed_addr #14 !dbg !3920 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3922, metadata !DIExpression()), !dbg !3923
  call void @llvm.dbg.value(metadata i64 %0, metadata !3795, metadata !DIExpression()) #11, !dbg !3924
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !3926
  call void @llvm.dbg.value(metadata i8* %2, metadata !3801, metadata !DIExpression()) #11, !dbg !3927
  %3 = icmp eq i8* %2, null, !dbg !3928
  %4 = icmp ne i64 %0, 0, !dbg !3929
  %5 = and i1 %4, %3, !dbg !3930
  br i1 %5, label %6, label %7, !dbg !3930

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3931
  unreachable, !dbg !3931

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3932
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #7 !dbg !3933 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3937, metadata !DIExpression()), !dbg !3939
  call void @llvm.dbg.value(metadata i64* %1, metadata !3938, metadata !DIExpression()), !dbg !3940
  call void @llvm.dbg.value(metadata i8* %0, metadata !298, metadata !DIExpression()) #11, !dbg !3941
  call void @llvm.dbg.value(metadata i64* %1, metadata !299, metadata !DIExpression()) #11, !dbg !3943
  call void @llvm.dbg.value(metadata i64 1, metadata !300, metadata !DIExpression()) #11, !dbg !3944
  %3 = load i64, i64* %1, align 8, !dbg !3945, !tbaa !2714
  call void @llvm.dbg.value(metadata i64 %3, metadata !301, metadata !DIExpression()) #11, !dbg !3946
  %4 = icmp eq i8* %0, null, !dbg !3947
  br i1 %4, label %5, label %12, !dbg !3948

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3949
  br i1 %6, label %9, label %7, !dbg !3950

; <label>:7:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !301, metadata !DIExpression()) #11, !dbg !3946
  %8 = icmp slt i64 %3, 0, !dbg !3951
  br i1 %8, label %11, label %9, !dbg !3952

; <label>:9:                                      ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !301, metadata !DIExpression()) #11, !dbg !3946
  store i64 %10, i64* %1, align 8, !dbg !3953, !tbaa !2714
  call void @llvm.dbg.value(metadata i8* %0, metadata !3835, metadata !DIExpression()) #11, !dbg !3954
  call void @llvm.dbg.value(metadata i64 %18, metadata !3840, metadata !DIExpression()) #11, !dbg !3956
  br label %21, !dbg !3957

; <label>:11:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3958
  unreachable, !dbg !3958

; <label>:12:                                     ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !3959
  br i1 %13, label %15, label %14, !dbg !3960

; <label>:14:                                     ; preds = %12
  tail call void @xalloc_die() #15, !dbg !3961
  unreachable, !dbg !3961

; <label>:15:                                     ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !3962
  %17 = add i64 %3, 1, !dbg !3963
  %18 = add i64 %17, %16, !dbg !3964
  call void @llvm.dbg.value(metadata i64 %18, metadata !301, metadata !DIExpression()) #11, !dbg !3946
  call void @llvm.dbg.value(metadata i64 %18, metadata !301, metadata !DIExpression()) #11, !dbg !3946
  store i64 %18, i64* %1, align 8, !dbg !3953, !tbaa !2714
  call void @llvm.dbg.value(metadata i8* %0, metadata !3835, metadata !DIExpression()) #11, !dbg !3954
  call void @llvm.dbg.value(metadata i64 %18, metadata !3840, metadata !DIExpression()) #11, !dbg !3956
  %19 = icmp eq i64 %18, 0, !dbg !3965
  br i1 %19, label %20, label %21, !dbg !3957

; <label>:20:                                     ; preds = %15
  tail call void @free(i8* nonnull %0) #11, !dbg !3966
  br label %28, !dbg !3967

; <label>:21:                                     ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #11, !dbg !3968
  call void @llvm.dbg.value(metadata i8* %23, metadata !3835, metadata !DIExpression()) #11, !dbg !3954
  %24 = icmp eq i8* %23, null, !dbg !3969
  %25 = icmp ne i64 %22, 0, !dbg !3970
  %26 = and i1 %25, %24, !dbg !3971
  br i1 %26, label %27, label %28, !dbg !3971

; <label>:27:                                     ; preds = %21
  tail call void @xalloc_die() #15, !dbg !3972
  unreachable, !dbg !3972

; <label>:28:                                     ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !3973
  ret i8* %29, !dbg !3974
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64) local_unnamed_addr #7 !dbg !3975 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3977, metadata !DIExpression()), !dbg !3978
  call void @llvm.dbg.value(metadata i64 %0, metadata !3795, metadata !DIExpression()) #11, !dbg !3979
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !3981
  call void @llvm.dbg.value(metadata i8* %2, metadata !3801, metadata !DIExpression()) #11, !dbg !3982
  %3 = icmp eq i8* %2, null, !dbg !3983
  %4 = icmp ne i64 %0, 0, !dbg !3984
  %5 = and i1 %4, %3, !dbg !3985
  br i1 %5, label %6, label %7, !dbg !3985

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3986
  unreachable, !dbg !3986

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* align 1 %2, i8 0, i64 %0, i1 false), !dbg !3987
  ret i8* %2, !dbg !3988
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64, i64) local_unnamed_addr #7 !dbg !3989 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3991, metadata !DIExpression()), !dbg !3994
  call void @llvm.dbg.value(metadata i64 %1, metadata !3992, metadata !DIExpression()), !dbg !3995
  %3 = udiv i64 9223372036854775807, %1, !dbg !3996
  %4 = icmp ult i64 %3, %0, !dbg !3996
  br i1 %4, label %8, label %5, !dbg !3998

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #11, !dbg !3999
  call void @llvm.dbg.value(metadata i8* %6, metadata !3993, metadata !DIExpression()), !dbg !4000
  %7 = icmp eq i8* %6, null, !dbg !4001
  br i1 %7, label %8, label %9, !dbg !4002

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !4003
  unreachable, !dbg !4003

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !4004
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #7 !dbg !4005 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4009, metadata !DIExpression()), !dbg !4011
  call void @llvm.dbg.value(metadata i64 %1, metadata !4010, metadata !DIExpression()), !dbg !4012
  call void @llvm.dbg.value(metadata i64 %1, metadata !3795, metadata !DIExpression()) #11, !dbg !4013
  %3 = tail call noalias i8* @malloc(i64 %1) #11, !dbg !4015
  call void @llvm.dbg.value(metadata i8* %3, metadata !3801, metadata !DIExpression()) #11, !dbg !4016
  %4 = icmp eq i8* %3, null, !dbg !4017
  %5 = icmp ne i64 %1, 0, !dbg !4018
  %6 = and i1 %5, %4, !dbg !4019
  br i1 %6, label %7, label %8, !dbg !4019

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !4020
  unreachable, !dbg !4020

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 %0, i64 %1, i1 false), !dbg !4021
  ret i8* %3, !dbg !4022
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #7 !dbg !4023 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4025, metadata !DIExpression()), !dbg !4026
  %2 = tail call i64 @strlen(i8* %0) #9, !dbg !4027
  %3 = add i64 %2, 1, !dbg !4028
  call void @llvm.dbg.value(metadata i8* %0, metadata !4009, metadata !DIExpression()) #11, !dbg !4029
  call void @llvm.dbg.value(metadata i64 %3, metadata !4010, metadata !DIExpression()) #11, !dbg !4031
  call void @llvm.dbg.value(metadata i64 %3, metadata !3795, metadata !DIExpression()) #11, !dbg !4032
  %4 = tail call noalias i8* @malloc(i64 %3) #11, !dbg !4034
  call void @llvm.dbg.value(metadata i8* %4, metadata !3801, metadata !DIExpression()) #11, !dbg !4035
  %5 = icmp eq i8* %4, null, !dbg !4036
  %6 = icmp ne i64 %3, 0, !dbg !4037
  %7 = and i1 %6, %5, !dbg !4038
  br i1 %7, label %8, label %9, !dbg !4038

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !4039
  unreachable, !dbg !4039

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %0, i64 %3, i1 false) #11, !dbg !4040
  ret i8* %4, !dbg !4041
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4042 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4044, !tbaa !1207
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.134, i64 0, i64 0), i32 5) #11, !dbg !4045
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.135, i64 0, i64 0), i8* %2) #11, !dbg !4046
  tail call void @abort() #15, !dbg !4047
  unreachable, !dbg !4047
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @xprintf(i8* noalias, ...) local_unnamed_addr #7 !dbg !4048 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i8* %0, metadata !4053, metadata !DIExpression()), !dbg !4066
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !4067
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #11, !dbg !4067
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %2, metadata !4054, metadata !DIExpression()), !dbg !4068
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !4069
  call void @llvm.va_start(i8* nonnull %3), !dbg !4069
  call void @llvm.dbg.value(metadata i8* %0, metadata !4070, metadata !DIExpression()) #11, !dbg !4078
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !4076, metadata !DIExpression()) #11, !dbg !4080
  call void @llvm.dbg.value(metadata i8* %0, metadata !4081, metadata !DIExpression()) #11, !dbg !4086
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !4085, metadata !DIExpression()) #11, !dbg !4088
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !4089, !tbaa !752, !noalias !4090
  %6 = call i32 @__vfprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %0, %struct.__va_list_tag* nonnull %4) #11, !dbg !4095
  call void @llvm.dbg.value(metadata i32 %6, metadata !4077, metadata !DIExpression()) #11, !dbg !4096
  %7 = icmp slt i32 %6, 0, !dbg !4097
  br i1 %7, label %8, label %17, !dbg !4099

; <label>:8:                                      ; preds = %1
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !4100, !tbaa !752
  %10 = call i32 @ferror(%struct._IO_FILE* %9) #11, !dbg !4101
  %11 = icmp eq i32 %10, 0, !dbg !4101
  br i1 %11, label %12, label %17, !dbg !4102

; <label>:12:                                     ; preds = %8
  %13 = load volatile i32, i32* @exit_failure, align 4, !dbg !4103, !tbaa !1207
  %14 = tail call i32* @__errno_location() #17, !dbg !4104
  %15 = load i32, i32* %14, align 4, !dbg !4104, !tbaa !1207
  %16 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.138, i64 0, i64 0), i32 5) #11, !dbg !4105
  call void (i32, i32, i8*, ...) @error(i32 %13, i32 %15, i8* %16) #11, !dbg !4106
  br label %17, !dbg !4106

; <label>:17:                                     ; preds = %1, %8, %12
  call void @llvm.dbg.value(metadata i32 %6, metadata !4065, metadata !DIExpression()), !dbg !4107
  call void @llvm.va_end(i8* nonnull %3), !dbg !4108
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #11, !dbg !4109
  ret i32 %6, !dbg !4110
}

declare i32 @__vfprintf_chk(%struct._IO_FILE*, i32, i8*, %struct.__va_list_tag*) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @ferror(%struct._IO_FILE* nocapture) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @xvprintf(i8* noalias, %struct.__va_list_tag*) local_unnamed_addr #7 !dbg !4071 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4070, metadata !DIExpression()), !dbg !4111
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %1, metadata !4076, metadata !DIExpression()), !dbg !4112
  call void @llvm.dbg.value(metadata i8* %0, metadata !4081, metadata !DIExpression()) #11, !dbg !4113
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %1, metadata !4085, metadata !DIExpression()) #11, !dbg !4115
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !4116, !tbaa !752, !noalias !4117
  %4 = tail call i32 @__vfprintf_chk(%struct._IO_FILE* %3, i32 1, i8* %0, %struct.__va_list_tag* %1) #11, !dbg !4120
  call void @llvm.dbg.value(metadata i32 %4, metadata !4077, metadata !DIExpression()), !dbg !4121
  %5 = icmp slt i32 %4, 0, !dbg !4122
  br i1 %5, label %6, label %15, !dbg !4123

; <label>:6:                                      ; preds = %2
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !4124, !tbaa !752
  %8 = tail call i32 @ferror(%struct._IO_FILE* %7) #11, !dbg !4125
  %9 = icmp eq i32 %8, 0, !dbg !4125
  br i1 %9, label %10, label %15, !dbg !4126

; <label>:10:                                     ; preds = %6
  %11 = load volatile i32, i32* @exit_failure, align 4, !dbg !4127, !tbaa !1207
  %12 = tail call i32* @__errno_location() #17, !dbg !4128
  %13 = load i32, i32* %12, align 4, !dbg !4128, !tbaa !1207
  %14 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.138, i64 0, i64 0), i32 5) #11, !dbg !4129
  tail call void (i32, i32, i8*, ...) @error(i32 %11, i32 %13, i8* %14) #11, !dbg !4130
  br label %15, !dbg !4130

; <label>:15:                                     ; preds = %6, %10, %2
  ret i32 %4, !dbg !4131
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @xfprintf(%struct._IO_FILE* noalias, i8* noalias, ...) local_unnamed_addr #7 !dbg !4132 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4171, metadata !DIExpression()), !dbg !4175
  call void @llvm.dbg.value(metadata i8* %1, metadata !4172, metadata !DIExpression()), !dbg !4176
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*, !dbg !4177
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #11, !dbg !4177
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !4173, metadata !DIExpression()), !dbg !4178
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, !dbg !4179
  call void @llvm.va_start(i8* nonnull %4), !dbg !4179
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4180, metadata !DIExpression()) #11, !dbg !4188
  call void @llvm.dbg.value(metadata i8* %1, metadata !4185, metadata !DIExpression()) #11, !dbg !4190
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %5, metadata !4186, metadata !DIExpression()) #11, !dbg !4191
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4192, metadata !DIExpression()) #11, !dbg !4197
  call void @llvm.dbg.value(metadata i8* %1, metadata !4195, metadata !DIExpression()) #11, !dbg !4199
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %5, metadata !4196, metadata !DIExpression()) #11, !dbg !4200
  %6 = call i32 @__vfprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %1, %struct.__va_list_tag* nonnull %5) #11, !dbg !4201
  call void @llvm.dbg.value(metadata i32 %6, metadata !4187, metadata !DIExpression()) #11, !dbg !4202
  %7 = icmp slt i32 %6, 0, !dbg !4203
  br i1 %7, label %8, label %16, !dbg !4205

; <label>:8:                                      ; preds = %2
  %9 = call i32 @ferror(%struct._IO_FILE* %0) #11, !dbg !4206
  %10 = icmp eq i32 %9, 0, !dbg !4206
  br i1 %10, label %11, label %16, !dbg !4207

; <label>:11:                                     ; preds = %8
  %12 = load volatile i32, i32* @exit_failure, align 4, !dbg !4208, !tbaa !1207
  %13 = tail call i32* @__errno_location() #17, !dbg !4209
  %14 = load i32, i32* %13, align 4, !dbg !4209, !tbaa !1207
  %15 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.138, i64 0, i64 0), i32 5) #11, !dbg !4210
  call void (i32, i32, i8*, ...) @error(i32 %12, i32 %14, i8* %15) #11, !dbg !4211
  br label %16, !dbg !4211

; <label>:16:                                     ; preds = %2, %8, %11
  call void @llvm.dbg.value(metadata i32 %6, metadata !4174, metadata !DIExpression()), !dbg !4212
  call void @llvm.va_end(i8* nonnull %4), !dbg !4213
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #11, !dbg !4214
  ret i32 %6, !dbg !4215
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @xvfprintf(%struct._IO_FILE* noalias, i8* noalias, %struct.__va_list_tag*) local_unnamed_addr #7 !dbg !4181 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4180, metadata !DIExpression()), !dbg !4216
  call void @llvm.dbg.value(metadata i8* %1, metadata !4185, metadata !DIExpression()), !dbg !4217
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %2, metadata !4186, metadata !DIExpression()), !dbg !4218
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4192, metadata !DIExpression()) #11, !dbg !4219
  call void @llvm.dbg.value(metadata i8* %1, metadata !4195, metadata !DIExpression()) #11, !dbg !4221
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %2, metadata !4196, metadata !DIExpression()) #11, !dbg !4222
  %4 = tail call i32 @__vfprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %1, %struct.__va_list_tag* %2) #11, !dbg !4223
  call void @llvm.dbg.value(metadata i32 %4, metadata !4187, metadata !DIExpression()), !dbg !4224
  %5 = icmp slt i32 %4, 0, !dbg !4225
  br i1 %5, label %6, label %14, !dbg !4226

; <label>:6:                                      ; preds = %3
  %7 = tail call i32 @ferror(%struct._IO_FILE* %0) #11, !dbg !4227
  %8 = icmp eq i32 %7, 0, !dbg !4227
  br i1 %8, label %9, label %14, !dbg !4228

; <label>:9:                                      ; preds = %6
  %10 = load volatile i32, i32* @exit_failure, align 4, !dbg !4229, !tbaa !1207
  %11 = tail call i32* @__errno_location() #17, !dbg !4230
  %12 = load i32, i32* %11, align 4, !dbg !4230, !tbaa !1207
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.138, i64 0, i64 0), i32 5) #11, !dbg !4231
  tail call void (i32, i32, i8*, ...) @error(i32 %10, i32 %12, i8* %13) #11, !dbg !4232
  br label %14, !dbg !4232

; <label>:14:                                     ; preds = %6, %9, %3
  ret i32 %4, !dbg !4233
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #7 !dbg !4234 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4237, metadata !DIExpression()), !dbg !4243
  call void @llvm.dbg.value(metadata i64 %1, metadata !4238, metadata !DIExpression()), !dbg !4244
  %3 = icmp eq i64 %0, 0, !dbg !4245
  %4 = icmp eq i64 %1, 0, !dbg !4246
  %5 = or i1 %3, %4, !dbg !4247
  br i1 %5, label %12, label %6, !dbg !4247

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4248
  call void @llvm.dbg.value(metadata i64 %7, metadata !4240, metadata !DIExpression()), !dbg !4249
  %8 = udiv i64 %7, %1, !dbg !4250
  %9 = icmp eq i64 %8, %0, !dbg !4252
  br i1 %9, label %12, label %10, !dbg !4253

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !4254
  store i32 12, i32* %11, align 4, !dbg !4256, !tbaa !1207
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %14, metadata !4237, metadata !DIExpression()), !dbg !4243
  call void @llvm.dbg.value(metadata i64 %13, metadata !4238, metadata !DIExpression()), !dbg !4244
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #11, !dbg !4257
  call void @llvm.dbg.value(metadata i8* %15, metadata !4239, metadata !DIExpression()), !dbg !4258
  br label %16, !dbg !4259

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ], !dbg !4260
  ret i8* %17, !dbg !4261
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #7 !dbg !4262 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !4279, metadata !DIExpression()), !dbg !4288
  call void @llvm.dbg.value(metadata i8* %1, metadata !4280, metadata !DIExpression()), !dbg !4289
  call void @llvm.dbg.value(metadata i64 %2, metadata !4281, metadata !DIExpression()), !dbg !4290
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !4282, metadata !DIExpression()), !dbg !4291
  %6 = bitcast i32* %5 to i8*, !dbg !4292
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #11, !dbg !4292
  %7 = icmp eq i32* %0, null, !dbg !4293
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4295
  call void @llvm.dbg.value(metadata i32* %8, metadata !4279, metadata !DIExpression()), !dbg !4288
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #11, !dbg !4296
  call void @llvm.dbg.value(metadata i64 %9, metadata !4283, metadata !DIExpression()), !dbg !4297
  %10 = icmp ugt i64 %9, -3, !dbg !4298
  %11 = icmp ne i64 %2, 0, !dbg !4299
  %12 = and i1 %11, %10, !dbg !4300
  br i1 %12, label %13, label %18, !dbg !4300

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #11, !dbg !4301
  br i1 %14, label %18, label %15, !dbg !4302

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4303, !tbaa !906
  call void @llvm.dbg.value(metadata i8 %16, metadata !4285, metadata !DIExpression()), !dbg !4304
  %17 = zext i8 %16 to i32, !dbg !4305
  store i32 %17, i32* %8, align 4, !dbg !4306, !tbaa !1207
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !4307
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #11, !dbg !4308
  ret i64 %19, !dbg !4308
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !4309 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4348, metadata !DIExpression()), !dbg !4353
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #11, !dbg !4354
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4355, metadata !DIExpression()), !dbg !4358
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4360
  %4 = load i32, i32* %3, align 8, !dbg !4360, !tbaa !4361
  %5 = and i32 %4, 32, !dbg !4360
  %6 = icmp eq i32 %5, 0, !dbg !4362
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #11, !dbg !4363
  %8 = icmp ne i32 %7, 0, !dbg !4364
  br i1 %6, label %9, label %19, !dbg !4365

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4367
  %11 = xor i1 %8, true, !dbg !4368
  %12 = or i1 %10, %11, !dbg !4368
  %13 = sext i1 %8 to i32, !dbg !4368
  br i1 %12, label %22, label %14, !dbg !4368

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !4369
  %16 = load i32, i32* %15, align 4, !dbg !4369, !tbaa !1207
  %17 = icmp ne i32 %16, 9, !dbg !4370
  %18 = sext i1 %17 to i32, !dbg !4371
  br label %22, !dbg !4371

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4372

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !4374
  store i32 0, i32* %21, align 4, !dbg !4376, !tbaa !1207
  br label %22, !dbg !4374

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4377
  ret i32 %23, !dbg !4378
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32) local_unnamed_addr #7 !dbg !4379 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4384, metadata !DIExpression()), !dbg !4387
  call void @llvm.dbg.value(metadata i8 1, metadata !4385, metadata !DIExpression()), !dbg !4388
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #11, !dbg !4389
  call void @llvm.dbg.value(metadata i8* %2, metadata !4386, metadata !DIExpression()), !dbg !4390
  %3 = icmp eq i8* %2, null, !dbg !4391
  br i1 %3, label %11, label %4, !dbg !4393

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.147, i64 0, i64 0)) #9, !dbg !4394
  %6 = icmp eq i32 %5, 0, !dbg !4399
  br i1 %6, label %10, label %7, !dbg !4400

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.148, i64 0, i64 0)) #9, !dbg !4401
  %9 = icmp eq i32 %8, 0, !dbg !4402
  br i1 %9, label %10, label %11, !dbg !4403

; <label>:10:                                     ; preds = %7, %4
  call void @llvm.dbg.value(metadata i8 0, metadata !4385, metadata !DIExpression()), !dbg !4388
  br label %11, !dbg !4404

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !4405
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #7 !dbg !4406 {
  %1 = tail call i8* @nl_langinfo(i32 14) #11, !dbg !4412
  call void @llvm.dbg.value(metadata i8* %1, metadata !4411, metadata !DIExpression()), !dbg !4413
  %2 = icmp eq i8* %1, null, !dbg !4414
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.151, i64 0, i64 0), i8* %1, !dbg !4416
  call void @llvm.dbg.value(metadata i8* %3, metadata !4411, metadata !DIExpression()), !dbg !4413
  %4 = load i8, i8* %3, align 1, !dbg !4417, !tbaa !906
  %5 = icmp eq i8 %4, 0, !dbg !4421
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.152, i64 0, i64 0), i8* %3, !dbg !4422
  call void @llvm.dbg.value(metadata i8* %6, metadata !4411, metadata !DIExpression()), !dbg !4413
  ret i8* %6, !dbg !4423
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #7 !dbg !4424 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4463, metadata !DIExpression()), !dbg !4467
  call void @llvm.dbg.value(metadata i32 0, metadata !4464, metadata !DIExpression()), !dbg !4468
  call void @llvm.dbg.value(metadata i32 0, metadata !4466, metadata !DIExpression()), !dbg !4469
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !4470
  call void @llvm.dbg.value(metadata i32 %2, metadata !4465, metadata !DIExpression()), !dbg !4471
  %3 = icmp slt i32 %2, 0, !dbg !4472
  br i1 %3, label %4, label %6, !dbg !4474

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4475
  br label %24, !dbg !4476

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !4477
  %8 = icmp eq i32 %7, 0, !dbg !4477
  br i1 %8, label %13, label %9, !dbg !4479

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !4480
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #11, !dbg !4481
  %12 = icmp eq i64 %11, -1, !dbg !4482
  br i1 %12, label %16, label %13, !dbg !4483

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #11, !dbg !4484
  %15 = icmp eq i32 %14, 0, !dbg !4484
  br i1 %15, label %16, label %18, !dbg !4485

; <label>:16:                                     ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !4464, metadata !DIExpression()), !dbg !4468
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4486
  call void @llvm.dbg.value(metadata i32 %21, metadata !4466, metadata !DIExpression()), !dbg !4469
  br label %24, !dbg !4487

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !4488
  %20 = load i32, i32* %19, align 4, !dbg !4488, !tbaa !1207
  call void @llvm.dbg.value(metadata i32 %20, metadata !4464, metadata !DIExpression()), !dbg !4468
  call void @llvm.dbg.value(metadata i32 %20, metadata !4464, metadata !DIExpression()), !dbg !4468
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4486
  call void @llvm.dbg.value(metadata i32 %21, metadata !4466, metadata !DIExpression()), !dbg !4469
  %22 = icmp eq i32 %20, 0, !dbg !4489
  br i1 %22, label %24, label %23, !dbg !4487

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4491, !tbaa !1207
  call void @llvm.dbg.value(metadata i32 -1, metadata !4466, metadata !DIExpression()), !dbg !4469
  br label %24, !dbg !4493

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4494
  ret i32 %25, !dbg !4495
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
define dso_local i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !4496 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4535, metadata !DIExpression()), !dbg !4536
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4537
  br i1 %2, label %6, label %3, !dbg !4539

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !4540
  %5 = icmp eq i32 %4, 0, !dbg !4540
  br i1 %5, label %6, label %8, !dbg !4541

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4542
  br label %17, !dbg !4543

; <label>:8:                                      ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4544, metadata !DIExpression()) #11, !dbg !4549
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4551
  %10 = load i32, i32* %9, align 8, !dbg !4551, !tbaa !4361
  %11 = and i32 %10, 256, !dbg !4553
  %12 = icmp eq i32 %11, 0, !dbg !4553
  br i1 %12, label %15, label %13, !dbg !4554

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #11, !dbg !4555
  br label %15, !dbg !4555

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4556
  br label %17, !dbg !4557

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !4558
  ret i32 %18, !dbg !4559
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #7 !dbg !4560 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4600, metadata !DIExpression()), !dbg !4606
  call void @llvm.dbg.value(metadata i64 %1, metadata !4601, metadata !DIExpression()), !dbg !4607
  call void @llvm.dbg.value(metadata i32 %2, metadata !4602, metadata !DIExpression()), !dbg !4608
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4609
  %5 = load i8*, i8** %4, align 8, !dbg !4609, !tbaa !4610
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4611
  %7 = load i8*, i8** %6, align 8, !dbg !4611, !tbaa !4612
  %8 = icmp eq i8* %5, %7, !dbg !4613
  br i1 %8, label %9, label %28, !dbg !4614

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4615
  %11 = load i8*, i8** %10, align 8, !dbg !4615, !tbaa !928
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4616
  %13 = load i8*, i8** %12, align 8, !dbg !4616, !tbaa !4617
  %14 = icmp eq i8* %11, %13, !dbg !4618
  br i1 %14, label %15, label %28, !dbg !4619

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4620
  %17 = load i8*, i8** %16, align 8, !dbg !4620, !tbaa !4621
  %18 = icmp eq i8* %17, null, !dbg !4622
  br i1 %18, label %19, label %28, !dbg !4623

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !4624
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #11, !dbg !4625
  call void @llvm.dbg.value(metadata i64 %21, metadata !4603, metadata !DIExpression()), !dbg !4626
  %22 = icmp eq i64 %21, -1, !dbg !4627
  br i1 %22, label %30, label %23, !dbg !4629

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4630
  %25 = load i32, i32* %24, align 8, !dbg !4631, !tbaa !4361
  %26 = and i32 %25, -17, !dbg !4631
  store i32 %26, i32* %24, align 8, !dbg !4631, !tbaa !4361
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4632
  store i64 %21, i64* %27, align 8, !dbg !4633, !tbaa !4634
  br label %30, !dbg !4635

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4636
  br label %30, !dbg !4637

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !4638
  ret i32 %31, !dbg !4639
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
attributes #9 = { nounwind readonly }
attributes #10 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind }
attributes #12 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { argmemonly nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #15 = { noreturn nounwind }
attributes #16 = { noreturn }
attributes #17 = { nounwind readnone }
attributes #18 = { cold }

!llvm.dbg.cu = !{!2, !54, !60, !90, !98, !105, !112, !178, !278, !280, !271, !288, !305, !307, !309, !311, !314, !316, !318, !707, !709, !711}
!llvm.ident = !{!713, !713, !713, !713, !713, !713, !713, !713, !713, !713, !713, !713, !713, !713, !713, !713, !713, !713, !713, !713, !713, !713}
!llvm.module.flags = !{!714, !715, !716, !717, !718}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!1 = distinct !DIGlobalVariable(name: "exit_status", scope: !2, file: !3, line: 76, type: !39, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !35, globals: !42)
!3 = !DIFile(filename: "src/printf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
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
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !21, line: 46, baseType: !7, size: 32, elements: !22)
!21 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!22 = !{!23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34}
!23 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!24 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!25 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!26 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!27 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!28 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!29 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!30 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!31 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!32 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!33 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!34 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!35 = !{!36, !37, !7, !39, !40, !41}
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!39 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!40 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!41 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!42 = !{!43, !44, !47}
!43 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(name: "posixly_correct", scope: !2, file: !3, line: 79, type: !46, isLocal: true, isDefinition: true)
!46 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(name: "cfcc_msg", scope: !2, file: !3, line: 83, type: !49, isLocal: true, isDefinition: true)
!49 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(name: "Version", scope: !54, file: !55, line: 2, type: !50, isLocal: false, isDefinition: true)
!54 = distinct !DICompileUnit(language: DW_LANG_C99, file: !55, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !56, globals: !57)
!55 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!56 = !{}
!57 = !{!52}
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(name: "c_locale_cache", scope: !60, file: !86, line: 51, type: !87, isLocal: true, isDefinition: true)
!60 = distinct !DICompileUnit(language: DW_LANG_C99, file: !61, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !56, retainedTypes: !62, globals: !85)
!61 = !DIFile(filename: "./lib/c-strtold.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!62 = !{!37, !63}
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "locale_t", file: !64, line: 24, baseType: !65)
!64 = !DIFile(filename: "/usr/include/bits/types/locale_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "__locale_t", file: !66, line: 42, baseType: !67)
!66 = !DIFile(filename: "/usr/include/bits/types/__locale_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_struct", file: !66, line: 28, size: 1856, elements: !69)
!69 = !{!70, !76, !79, !82, !83}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "__locales", scope: !68, file: !66, line: 31, baseType: !71, size: 832)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 832, elements: !74)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_data", file: !66, line: 31, flags: DIFlagFwdDecl)
!74 = !{!75}
!75 = !DISubrange(count: 13)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_b", scope: !68, file: !66, line: 34, baseType: !77, size: 64, offset: 832)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_tolower", scope: !68, file: !66, line: 35, baseType: !80, size: 64, offset: 896)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "__ctype_toupper", scope: !68, file: !66, line: 36, baseType: !80, size: 64, offset: 960)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "__names", scope: !68, file: !66, line: 39, baseType: !84, size: 832, offset: 1024)
!84 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 832, elements: !74)
!85 = !{!58}
!86 = !DIFile(filename: "./lib/c-strtod.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!87 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !63)
!88 = !DIGlobalVariableExpression(var: !89, expr: !DIExpression())
!89 = distinct !DIGlobalVariable(name: "file_name", scope: !90, file: !95, line: 46, type: !50, isLocal: true, isDefinition: true)
!90 = distinct !DICompileUnit(language: DW_LANG_C99, file: !91, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !56, globals: !92)
!91 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!92 = !{!88, !93}
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !90, file: !95, line: 56, type: !46, isLocal: true, isDefinition: true)
!95 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!96 = !DIGlobalVariableExpression(var: !97, expr: !DIExpression())
!97 = distinct !DIGlobalVariable(name: "exit_failure", scope: !98, file: !101, line: 24, type: !102, isLocal: false, isDefinition: true)
!98 = distinct !DICompileUnit(language: DW_LANG_C99, file: !99, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !56, globals: !100)
!99 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!100 = !{!96}
!101 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!102 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !39)
!103 = !DIGlobalVariableExpression(var: !104, expr: !DIExpression())
!104 = distinct !DIGlobalVariable(name: "program_name", scope: !105, file: !109, line: 33, type: !50, isLocal: false, isDefinition: true)
!105 = distinct !DICompileUnit(language: DW_LANG_C99, file: !106, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !56, retainedTypes: !107, globals: !108)
!106 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!107 = !{!36, !37}
!108 = !{!103}
!109 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!110 = !DIGlobalVariableExpression(var: !111, expr: !DIExpression())
!111 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !112, file: !127, line: 85, type: !162, isLocal: false, isDefinition: true)
!112 = distinct !DICompileUnit(language: DW_LANG_C99, file: !113, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !114, retainedTypes: !120, globals: !124)
!113 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!114 = !{!5, !115, !20}
!115 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 242, baseType: !7, size: 32, elements: !116)
!116 = !{!117, !118, !119}
!117 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!118 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!119 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!120 = !{!39, !41, !121, !37}
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !122, line: 62, baseType: !123)
!122 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!123 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!124 = !{!110, !125, !132, !144, !146, !151, !158, !160}
!125 = !DIGlobalVariableExpression(var: !126, expr: !DIExpression())
!126 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !112, file: !127, line: 101, type: !128, isLocal: false, isDefinition: true)
!127 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 320, elements: !130)
!129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!130 = !{!131}
!131 = !DISubrange(count: 10)
!132 = !DIGlobalVariableExpression(var: !133, expr: !DIExpression())
!133 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !112, file: !127, line: 1052, type: !134, isLocal: false, isDefinition: true)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !127, line: 65, size: 448, elements: !135)
!135 = !{!136, !137, !138, !142, !143}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !134, file: !127, line: 68, baseType: !5, size: 32)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !134, file: !127, line: 71, baseType: !39, size: 32, offset: 32)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !134, file: !127, line: 75, baseType: !139, size: 256, offset: 64)
!139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !140)
!140 = !{!141}
!141 = !DISubrange(count: 8)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !134, file: !127, line: 78, baseType: !50, size: 64, offset: 320)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !134, file: !127, line: 81, baseType: !50, size: 64, offset: 384)
!144 = !DIGlobalVariableExpression(var: !145, expr: !DIExpression())
!145 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !112, file: !127, line: 116, type: !134, isLocal: true, isDefinition: true)
!146 = !DIGlobalVariableExpression(var: !147, expr: !DIExpression())
!147 = distinct !DIGlobalVariable(name: "slot0", scope: !112, file: !127, line: 842, type: !148, isLocal: true, isDefinition: true)
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 2048, elements: !149)
!149 = !{!150}
!150 = !DISubrange(count: 256)
!151 = !DIGlobalVariableExpression(var: !152, expr: !DIExpression())
!152 = distinct !DIGlobalVariable(name: "slotvec", scope: !112, file: !127, line: 845, type: !153, isLocal: true, isDefinition: true)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !127, line: 834, size: 128, elements: !155)
!155 = !{!156, !157}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !154, file: !127, line: 836, baseType: !121, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !154, file: !127, line: 837, baseType: !37, size: 64, offset: 64)
!158 = !DIGlobalVariableExpression(var: !159, expr: !DIExpression())
!159 = distinct !DIGlobalVariable(name: "nslots", scope: !112, file: !127, line: 843, type: !39, isLocal: true, isDefinition: true)
!160 = !DIGlobalVariableExpression(var: !161, expr: !DIExpression())
!161 = distinct !DIGlobalVariable(name: "slotvec0", scope: !112, file: !127, line: 844, type: !154, isLocal: true, isDefinition: true)
!162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 704, elements: !163)
!163 = !{!164}
!164 = !DISubrange(count: 11)
!165 = !DIGlobalVariableExpression(var: !166, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!166 = distinct !DIGlobalVariable(name: "initialized", scope: !167, file: !168, line: 71, type: !39, isLocal: true, isDefinition: true)
!167 = distinct !DISubprogram(name: "unicode_to_mb", scope: !168, file: !168, line: 64, type: !169, isLocal: false, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: true, unit: !178, retainedNodes: !245)
!168 = !DIFile(filename: "lib/unicodeio.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!169 = !DISubroutineType(types: !170)
!170 = !{!171, !7, !172, !175, !36}
!171 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DISubroutineType(types: !174)
!174 = !{!171, !50, !121, !36}
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = !DISubroutineType(types: !177)
!177 = !{!171, !7, !50, !36}
!178 = distinct !DICompileUnit(language: DW_LANG_C99, file: !179, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !56, retainedTypes: !180, globals: !239)
!179 = !DIFile(filename: "./lib/unicodeio.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!180 = !{!181, !183, !184, !121, !185, !36}
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "iconv_t", file: !182, line: 29, baseType: !36)
!182 = !DIFile(filename: "/usr/include/iconv.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !187, line: 7, baseType: !188)
!187 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !189, line: 49, size: 1728, elements: !190)
!189 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!190 = !{!191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !206, !208, !209, !210, !213, !214, !216, !220, !223, !225, !228, !231, !232, !233, !234, !235}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !188, file: !189, line: 51, baseType: !39, size: 32)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !188, file: !189, line: 54, baseType: !37, size: 64, offset: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !188, file: !189, line: 55, baseType: !37, size: 64, offset: 128)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !188, file: !189, line: 56, baseType: !37, size: 64, offset: 192)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !188, file: !189, line: 57, baseType: !37, size: 64, offset: 256)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !188, file: !189, line: 58, baseType: !37, size: 64, offset: 320)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !188, file: !189, line: 59, baseType: !37, size: 64, offset: 384)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !188, file: !189, line: 60, baseType: !37, size: 64, offset: 448)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !188, file: !189, line: 61, baseType: !37, size: 64, offset: 512)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !188, file: !189, line: 64, baseType: !37, size: 64, offset: 576)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !188, file: !189, line: 65, baseType: !37, size: 64, offset: 640)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !188, file: !189, line: 66, baseType: !37, size: 64, offset: 704)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !188, file: !189, line: 68, baseType: !204, size: 64, offset: 768)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !189, line: 36, flags: DIFlagFwdDecl)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !188, file: !189, line: 70, baseType: !207, size: 64, offset: 832)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !188, file: !189, line: 72, baseType: !39, size: 32, offset: 896)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !188, file: !189, line: 73, baseType: !39, size: 32, offset: 928)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !188, file: !189, line: 74, baseType: !211, size: 64, offset: 960)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !212, line: 150, baseType: !171)
!212 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!213 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !188, file: !189, line: 77, baseType: !41, size: 16, offset: 1024)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !188, file: !189, line: 78, baseType: !215, size: 8, offset: 1040)
!215 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !188, file: !189, line: 79, baseType: !217, size: 8, offset: 1048)
!217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 8, elements: !218)
!218 = !{!219}
!219 = !DISubrange(count: 1)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !188, file: !189, line: 81, baseType: !221, size: 64, offset: 1088)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !189, line: 43, baseType: null)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !188, file: !189, line: 89, baseType: !224, size: 64, offset: 1152)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !212, line: 151, baseType: !171)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !188, file: !189, line: 91, baseType: !226, size: 64, offset: 1216)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !189, line: 37, flags: DIFlagFwdDecl)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !188, file: !189, line: 92, baseType: !229, size: 64, offset: 1280)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !189, line: 38, flags: DIFlagFwdDecl)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !188, file: !189, line: 93, baseType: !207, size: 64, offset: 1344)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !188, file: !189, line: 94, baseType: !36, size: 64, offset: 1408)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !188, file: !189, line: 95, baseType: !121, size: 64, offset: 1472)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !188, file: !189, line: 96, baseType: !39, size: 32, offset: 1536)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !188, file: !189, line: 98, baseType: !236, size: 160, offset: 1568)
!236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 160, elements: !237)
!237 = !{!238}
!238 = !DISubrange(count: 20)
!239 = !{!240, !241, !243}
!240 = !DIGlobalVariableExpression(var: !166, expr: !DIExpression())
!241 = !DIGlobalVariableExpression(var: !242, expr: !DIExpression())
!242 = distinct !DIGlobalVariable(name: "is_utf8", scope: !167, file: !168, line: 72, type: !39, isLocal: true, isDefinition: true)
!243 = !DIGlobalVariableExpression(var: !244, expr: !DIExpression())
!244 = distinct !DIGlobalVariable(name: "utf8_to_local", scope: !167, file: !168, line: 74, type: !181, isLocal: true, isDefinition: true)
!245 = !{!246, !247, !248, !249, !250, !254, !255, !258, !264, !265, !266, !267, !268}
!246 = !DILocalVariable(name: "code", arg: 1, scope: !167, file: !168, line: 64, type: !7)
!247 = !DILocalVariable(name: "success", arg: 2, scope: !167, file: !168, line: 65, type: !172)
!248 = !DILocalVariable(name: "failure", arg: 3, scope: !167, file: !168, line: 67, type: !175)
!249 = !DILocalVariable(name: "callback_arg", arg: 4, scope: !167, file: !168, line: 69, type: !36)
!250 = !DILocalVariable(name: "inbuf", scope: !167, file: !168, line: 77, type: !251)
!251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 48, elements: !252)
!252 = !{!253}
!253 = !DISubrange(count: 6)
!254 = !DILocalVariable(name: "count", scope: !167, file: !168, line: 78, type: !39)
!255 = !DILocalVariable(name: "charset", scope: !256, file: !168, line: 82, type: !50)
!256 = distinct !DILexicalBlock(scope: !257, file: !168, line: 81, column: 5)
!257 = distinct !DILexicalBlock(scope: !167, file: !168, line: 80, column: 7)
!258 = !DILocalVariable(name: "outbuf", scope: !259, file: !168, line: 116, type: !261)
!259 = distinct !DILexicalBlock(scope: !260, file: !168, line: 115, column: 5)
!260 = distinct !DILexicalBlock(scope: !167, file: !168, line: 114, column: 7)
!261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 200, elements: !262)
!262 = !{!263}
!263 = !DISubrange(count: 25)
!264 = !DILocalVariable(name: "inptr", scope: !259, file: !168, line: 117, type: !50)
!265 = !DILocalVariable(name: "inbytesleft", scope: !259, file: !168, line: 118, type: !121)
!266 = !DILocalVariable(name: "outptr", scope: !259, file: !168, line: 119, type: !37)
!267 = !DILocalVariable(name: "outbytesleft", scope: !259, file: !168, line: 120, type: !121)
!268 = !DILocalVariable(name: "res", scope: !259, file: !168, line: 121, type: !121)
!269 = !DIGlobalVariableExpression(var: !270, expr: !DIExpression())
!270 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !271, file: !274, line: 26, type: !275, isLocal: false, isDefinition: true)
!271 = distinct !DICompileUnit(language: DW_LANG_C99, file: !272, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !56, globals: !273)
!272 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!273 = !{!269}
!274 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 376, elements: !276)
!276 = !{!277}
!277 = !DISubrange(count: 47)
!278 = distinct !DICompileUnit(language: DW_LANG_C99, file: !279, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !56)
!279 = !DIFile(filename: "lib/unistr/u8-uctomb-aux.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!280 = distinct !DICompileUnit(language: DW_LANG_C99, file: !281, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !282, retainedTypes: !287)
!281 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!282 = !{!283}
!283 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !284, line: 41, baseType: !7, size: 32, elements: !285)
!284 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!285 = !{!286}
!286 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2018, isUnsigned: true)
!287 = !{!36}
!288 = distinct !DICompileUnit(language: DW_LANG_C99, file: !289, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !290, retainedTypes: !304)
!289 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!290 = !{!291}
!291 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !293, file: !292, line: 186, baseType: !7, size: 32, elements: !302)
!292 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!293 = distinct !DISubprogram(name: "x2nrealloc", scope: !292, file: !292, line: 174, type: !294, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !288, retainedNodes: !297)
!294 = !DISubroutineType(types: !295)
!295 = !{!36, !36, !296, !121}
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!297 = !{!298, !299, !300, !301}
!298 = !DILocalVariable(name: "p", arg: 1, scope: !293, file: !292, line: 174, type: !36)
!299 = !DILocalVariable(name: "pn", arg: 2, scope: !293, file: !292, line: 174, type: !296)
!300 = !DILocalVariable(name: "s", arg: 3, scope: !293, file: !292, line: 174, type: !121)
!301 = !DILocalVariable(name: "n", scope: !293, file: !292, line: 176, type: !121)
!302 = !{!303}
!303 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!304 = !{!121, !37, !36}
!305 = distinct !DICompileUnit(language: DW_LANG_C99, file: !306, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !56)
!306 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!307 = distinct !DICompileUnit(language: DW_LANG_C99, file: !308, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !56)
!308 = !DIFile(filename: "./lib/xprintf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!309 = distinct !DICompileUnit(language: DW_LANG_C99, file: !310, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !56, retainedTypes: !287)
!310 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!311 = distinct !DICompileUnit(language: DW_LANG_C99, file: !312, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !56, retainedTypes: !313)
!312 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!313 = !{!121}
!314 = distinct !DICompileUnit(language: DW_LANG_C99, file: !315, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !56)
!315 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!316 = distinct !DICompileUnit(language: DW_LANG_C99, file: !317, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !56)
!317 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!318 = distinct !DICompileUnit(language: DW_LANG_C99, file: !319, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !320, retainedTypes: !287)
!319 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!320 = !{!321}
!321 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !322, line: 41, baseType: !7, size: 32, elements: !323)
!322 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!323 = !{!324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706}
!324 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!325 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!326 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!327 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!328 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!329 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!330 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!331 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!332 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!333 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!334 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!335 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!336 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!337 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!338 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!339 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!340 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!341 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!342 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!343 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!344 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!345 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!346 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!347 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!348 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!349 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!350 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!351 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!352 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!353 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!354 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!355 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!356 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!357 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!358 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!359 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!360 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!361 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!362 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!363 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!364 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!365 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!366 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!367 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!368 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!369 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!370 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!371 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!372 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!373 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!374 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!375 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!376 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!377 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!378 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!379 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!380 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!381 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!382 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!383 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!384 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!385 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!386 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!387 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!388 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!389 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!390 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!391 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!392 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!393 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!394 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!395 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!396 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!400 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!405 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!406 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!408 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!409 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!410 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!411 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!412 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!413 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!414 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!415 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!416 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!417 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!418 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!419 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!420 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!421 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!432 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!435 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!436 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!437 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!438 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!439 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!440 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!441 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!442 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!443 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!444 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!445 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!446 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!456 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!457 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!458 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!459 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!460 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!461 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!462 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!463 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!465 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!466 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!468 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!469 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!473 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!474 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!475 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!476 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!477 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!478 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!479 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!481 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!482 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!483 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!484 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!485 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!486 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!487 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!488 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!489 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!490 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!491 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!492 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!493 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!494 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!495 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!496 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!497 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!498 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!499 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!500 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!501 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!502 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!503 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!504 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!505 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!506 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!507 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!508 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!509 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!510 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!511 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!512 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!513 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!514 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!515 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!516 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!517 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!519 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!520 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!521 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!522 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!523 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!524 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!525 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!526 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!527 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!528 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!529 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!530 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!531 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!532 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!535 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!536 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!537 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!540 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!541 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!542 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!543 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!544 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!545 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!546 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!547 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!549 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!550 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!551 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!552 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!553 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!559 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!560 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!567 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!568 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!571 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!572 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!573 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!574 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!575 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!576 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!577 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!578 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!579 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!580 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!581 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!582 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!583 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!584 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!585 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!586 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!587 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!588 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!589 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!590 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!591 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!592 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!593 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!594 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!595 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!596 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!597 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!598 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!599 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!600 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!601 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!602 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!603 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!604 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!605 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!606 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!607 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!608 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!609 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!610 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!611 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!612 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!613 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!614 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!615 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!616 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!617 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!618 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!619 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!620 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!621 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!622 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!623 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!624 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!625 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!626 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!627 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!628 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!629 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!630 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!631 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!632 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!633 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!634 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!635 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!636 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!637 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!638 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!639 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!640 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!641 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!642 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!643 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!644 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!645 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!646 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!647 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!648 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!649 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!650 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!651 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!652 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!653 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!654 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!655 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!656 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!657 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!658 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!659 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!660 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!661 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!662 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!663 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!664 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!665 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!666 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!667 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!668 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!669 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!670 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!671 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!672 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!673 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!674 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!675 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!676 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!677 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!678 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!679 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!680 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!681 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!682 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!683 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!684 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!685 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!686 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!687 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!688 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!689 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!690 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!691 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!692 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!693 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!694 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!695 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!696 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!697 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!698 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!699 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!700 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!701 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!702 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!703 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!704 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!705 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!706 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!707 = distinct !DICompileUnit(language: DW_LANG_C99, file: !708, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !56)
!708 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!709 = distinct !DICompileUnit(language: DW_LANG_C99, file: !710, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !56, retainedTypes: !287)
!710 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!711 = distinct !DICompileUnit(language: DW_LANG_C99, file: !712, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !56, retainedTypes: !287)
!712 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!713 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!714 = !{i32 2, !"Dwarf Version", i32 4}
!715 = !{i32 2, !"Debug Info Version", i32 3}
!716 = !{i32 1, !"wchar_size", i32 4}
!717 = !{i32 7, !"PIC Level", i32 2}
!718 = !{i32 7, !"PIE Level", i32 2}
!719 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 87, type: !720, isLocal: false, isDefinition: true, scopeLine: 88, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, retainedNodes: !722)
!720 = !DISubroutineType(types: !721)
!721 = !{null, !39}
!722 = !{!723}
!723 = !DILocalVariable(name: "status", arg: 1, scope: !719, file: !3, line: 87, type: !39)
!724 = !DILocalVariable(name: "infomap", scope: !725, file: !726, line: 632, type: !740)
!725 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !726, file: !726, line: 630, type: !727, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !729)
!726 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!727 = !DISubroutineType(types: !728)
!728 = !{null, !50}
!729 = !{!730, !724, !731, !732, !739}
!730 = !DILocalVariable(name: "program", arg: 1, scope: !725, file: !726, line: 630, type: !50)
!731 = !DILocalVariable(name: "node", scope: !725, file: !726, line: 642, type: !50)
!732 = !DILocalVariable(name: "map_prog", scope: !725, file: !726, line: 643, type: !733)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !735)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !725, file: !726, line: 632, size: 128, elements: !736)
!736 = !{!737, !738}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !735, file: !726, line: 632, baseType: !50, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !735, file: !726, line: 632, baseType: !50, size: 64, offset: 64)
!739 = !DILocalVariable(name: "lc_messages", scope: !725, file: !726, line: 655, type: !50)
!740 = !DICompositeType(tag: DW_TAG_array_type, baseType: !734, size: 896, elements: !741)
!741 = !{!742}
!742 = !DISubrange(count: 7)
!743 = !DILocation(line: 632, column: 67, scope: !725, inlinedAt: !744)
!744 = distinct !DILocation(line: 139, column: 7, scope: !745)
!745 = distinct !DILexicalBlock(scope: !746, file: !3, line: 92, column: 5)
!746 = distinct !DILexicalBlock(scope: !719, file: !3, line: 89, column: 7)
!747 = !DILocation(line: 87, column: 12, scope: !719)
!748 = !DILocation(line: 89, column: 14, scope: !746)
!749 = !DILocation(line: 89, column: 7, scope: !719)
!750 = !DILocation(line: 90, column: 5, scope: !751)
!751 = distinct !DILexicalBlock(scope: !746, file: !3, line: 90, column: 5)
!752 = !{!753, !753, i64 0}
!753 = !{!"any pointer", !754, i64 0}
!754 = !{!"omnipotent char", !755, i64 0}
!755 = !{!"Simple C/C++ TBAA"}
!756 = !DILocation(line: 93, column: 7, scope: !745)
!757 = !DILocation(line: 98, column: 7, scope: !745)
!758 = !DILocation(line: 102, column: 7, scope: !745)
!759 = !DILocation(line: 103, column: 7, scope: !745)
!760 = !DILocation(line: 104, column: 7, scope: !745)
!761 = !DILocation(line: 110, column: 7, scope: !745)
!762 = !DILocation(line: 122, column: 7, scope: !745)
!763 = !DILocation(line: 128, column: 7, scope: !745)
!764 = !DILocation(line: 138, column: 7, scope: !745)
!765 = !DILocation(line: 632, column: 3, scope: !725, inlinedAt: !744)
!766 = !DILocation(line: 643, column: 36, scope: !725, inlinedAt: !744)
!767 = !DILocation(line: 643, column: 25, scope: !725, inlinedAt: !744)
!768 = !DILocation(line: 645, column: 33, scope: !725, inlinedAt: !744)
!769 = !DILocation(line: 645, column: 3, scope: !725, inlinedAt: !744)
!770 = !DILocation(line: 646, column: 13, scope: !725, inlinedAt: !744)
!771 = !DILocation(line: 645, column: 20, scope: !725, inlinedAt: !744)
!772 = !{!773, !753, i64 0}
!773 = !{!"infomap", !753, i64 0, !753, i64 8}
!774 = !DILocation(line: 645, column: 10, scope: !725, inlinedAt: !744)
!775 = !DILocation(line: 645, column: 28, scope: !725, inlinedAt: !744)
!776 = distinct !{!776, !777, !778}
!777 = !DILocation(line: 645, column: 3, scope: !725)
!778 = !DILocation(line: 646, column: 13, scope: !725)
!779 = !DILocation(line: 648, column: 17, scope: !780, inlinedAt: !744)
!780 = distinct !DILexicalBlock(scope: !725, file: !726, line: 648, column: 7)
!781 = !{!773, !753, i64 8}
!782 = !DILocation(line: 648, column: 7, scope: !780, inlinedAt: !744)
!783 = !DILocation(line: 648, column: 7, scope: !725, inlinedAt: !744)
!784 = !DILocation(line: 642, column: 15, scope: !725, inlinedAt: !744)
!785 = !DILocation(line: 651, column: 3, scope: !725, inlinedAt: !744)
!786 = !DILocation(line: 655, column: 29, scope: !725, inlinedAt: !744)
!787 = !DILocation(line: 655, column: 15, scope: !725, inlinedAt: !744)
!788 = !DILocation(line: 656, column: 7, scope: !789, inlinedAt: !744)
!789 = distinct !DILexicalBlock(scope: !725, file: !726, line: 656, column: 7)
!790 = !DILocation(line: 656, column: 19, scope: !789, inlinedAt: !744)
!791 = !DILocation(line: 656, column: 22, scope: !789, inlinedAt: !744)
!792 = !DILocation(line: 656, column: 7, scope: !725, inlinedAt: !744)
!793 = !DILocation(line: 662, column: 7, scope: !794, inlinedAt: !744)
!794 = distinct !DILexicalBlock(scope: !789, file: !726, line: 657, column: 5)
!795 = !DILocation(line: 664, column: 5, scope: !794, inlinedAt: !744)
!796 = !DILocation(line: 665, column: 3, scope: !725, inlinedAt: !744)
!797 = !DILocation(line: 667, column: 3, scope: !725, inlinedAt: !744)
!798 = !DILocation(line: 669, column: 1, scope: !725, inlinedAt: !744)
!799 = !DILocation(line: 141, column: 3, scope: !719)
!800 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 651, type: !801, isLocal: false, isDefinition: true, scopeLine: 652, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !803)
!801 = !DISubroutineType(types: !802)
!802 = !{!39, !39, !184}
!803 = !{!804, !805, !806, !807}
!804 = !DILocalVariable(name: "argc", arg: 1, scope: !800, file: !3, line: 651, type: !39)
!805 = !DILocalVariable(name: "argv", arg: 2, scope: !800, file: !3, line: 651, type: !184)
!806 = !DILocalVariable(name: "format", scope: !800, file: !3, line: 653, type: !37)
!807 = !DILocalVariable(name: "args_used", scope: !800, file: !3, line: 654, type: !39)
!808 = !DILocalVariable(name: "ok", scope: !809, file: !3, line: 488, type: !148)
!809 = distinct !DISubprogram(name: "print_formatted", scope: !3, file: !3, line: 478, type: !810, isLocal: true, isDefinition: true, scopeLine: 479, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !812)
!810 = !DISubroutineType(types: !811)
!811 = !{!39, !50, !39, !184}
!812 = !{!813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !808, !824, !836, !843}
!813 = !DILocalVariable(name: "format", arg: 1, scope: !809, file: !3, line: 478, type: !50)
!814 = !DILocalVariable(name: "argc", arg: 2, scope: !809, file: !3, line: 478, type: !39)
!815 = !DILocalVariable(name: "argv", arg: 3, scope: !809, file: !3, line: 478, type: !184)
!816 = !DILocalVariable(name: "save_argc", scope: !809, file: !3, line: 480, type: !39)
!817 = !DILocalVariable(name: "f", scope: !809, file: !3, line: 481, type: !50)
!818 = !DILocalVariable(name: "direc_start", scope: !809, file: !3, line: 482, type: !50)
!819 = !DILocalVariable(name: "direc_length", scope: !809, file: !3, line: 483, type: !121)
!820 = !DILocalVariable(name: "have_field_width", scope: !809, file: !3, line: 484, type: !46)
!821 = !DILocalVariable(name: "field_width", scope: !809, file: !3, line: 485, type: !39)
!822 = !DILocalVariable(name: "have_precision", scope: !809, file: !3, line: 486, type: !46)
!823 = !DILocalVariable(name: "precision", scope: !809, file: !3, line: 487, type: !39)
!824 = !DILocalVariable(name: "width", scope: !825, file: !3, line: 562, type: !833)
!825 = distinct !DILexicalBlock(scope: !826, file: !3, line: 561, column: 17)
!826 = distinct !DILexicalBlock(scope: !827, file: !3, line: 560, column: 19)
!827 = distinct !DILexicalBlock(scope: !828, file: !3, line: 557, column: 13)
!828 = distinct !DILexicalBlock(scope: !829, file: !3, line: 556, column: 15)
!829 = distinct !DILexicalBlock(scope: !830, file: !3, line: 493, column: 9)
!830 = distinct !DILexicalBlock(scope: !831, file: !3, line: 491, column: 5)
!831 = distinct !DILexicalBlock(scope: !832, file: !3, line: 490, column: 3)
!832 = distinct !DILexicalBlock(scope: !809, file: !3, line: 490, column: 3)
!833 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !834, line: 101, baseType: !835)
!834 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!835 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !212, line: 71, baseType: !171)
!836 = !DILocalVariable(name: "prec", scope: !837, file: !3, line: 592, type: !833)
!837 = distinct !DILexicalBlock(scope: !838, file: !3, line: 591, column: 21)
!838 = distinct !DILexicalBlock(scope: !839, file: !3, line: 590, column: 23)
!839 = distinct !DILexicalBlock(scope: !840, file: !3, line: 587, column: 17)
!840 = distinct !DILexicalBlock(scope: !841, file: !3, line: 586, column: 19)
!841 = distinct !DILexicalBlock(scope: !842, file: !3, line: 582, column: 13)
!842 = distinct !DILexicalBlock(scope: !829, file: !3, line: 581, column: 15)
!843 = !DILocalVariable(name: "conversion", scope: !844, file: !3, line: 625, type: !40)
!844 = distinct !DILexicalBlock(scope: !829, file: !3, line: 624, column: 11)
!845 = !DILocation(line: 488, column: 8, scope: !809, inlinedAt: !846)
!846 = distinct !DILocation(line: 703, column: 19, scope: !847)
!847 = distinct !DILexicalBlock(scope: !800, file: !3, line: 702, column: 5)
!848 = !DILocation(line: 651, column: 11, scope: !800)
!849 = !DILocation(line: 651, column: 24, scope: !800)
!850 = !DILocation(line: 657, column: 21, scope: !800)
!851 = !DILocation(line: 657, column: 3, scope: !800)
!852 = !DILocation(line: 658, column: 3, scope: !800)
!853 = !DILocation(line: 659, column: 3, scope: !800)
!854 = !DILocation(line: 660, column: 3, scope: !800)
!855 = !DILocation(line: 662, column: 3, scope: !800)
!856 = !DILocation(line: 666, column: 22, scope: !800)
!857 = !DILocation(line: 666, column: 49, scope: !800)
!858 = !DILocation(line: 666, column: 19, scope: !800)
!859 = !{!860, !860, i64 0}
!860 = !{!"_Bool", !754, i64 0}
!861 = !DILocation(line: 670, column: 12, scope: !862)
!862 = distinct !DILexicalBlock(scope: !800, file: !3, line: 670, column: 7)
!863 = !DILocation(line: 670, column: 7, scope: !800)
!864 = !DILocation(line: 672, column: 11, scope: !865)
!865 = distinct !DILexicalBlock(scope: !866, file: !3, line: 672, column: 11)
!866 = distinct !DILexicalBlock(scope: !862, file: !3, line: 671, column: 5)
!867 = !DILocation(line: 672, column: 11, scope: !866)
!868 = !DILocation(line: 673, column: 9, scope: !865)
!869 = !DILocation(line: 675, column: 11, scope: !870)
!870 = distinct !DILexicalBlock(scope: !866, file: !3, line: 675, column: 11)
!871 = !DILocation(line: 675, column: 11, scope: !866)
!872 = !DILocation(line: 677, column: 24, scope: !873)
!873 = distinct !DILexicalBlock(scope: !870, file: !3, line: 676, column: 9)
!874 = !DILocation(line: 677, column: 60, scope: !873)
!875 = !DILocation(line: 677, column: 11, scope: !873)
!876 = !DILocation(line: 679, column: 11, scope: !873)
!877 = !DILocation(line: 685, column: 9, scope: !878)
!878 = distinct !DILexicalBlock(scope: !800, file: !3, line: 685, column: 7)
!879 = !DILocation(line: 685, column: 16, scope: !878)
!880 = !DILocation(line: 685, column: 19, scope: !878)
!881 = !DILocation(line: 685, column: 7, scope: !800)
!882 = !DILocation(line: 691, column: 12, scope: !883)
!883 = distinct !DILexicalBlock(scope: !800, file: !3, line: 691, column: 7)
!884 = !DILocation(line: 691, column: 7, scope: !800)
!885 = !DILocation(line: 687, column: 7, scope: !886)
!886 = distinct !DILexicalBlock(scope: !878, file: !3, line: 686, column: 5)
!887 = !DILocation(line: 697, column: 12, scope: !800)
!888 = !DILocation(line: 693, column: 20, scope: !889)
!889 = distinct !DILexicalBlock(scope: !883, file: !3, line: 692, column: 5)
!890 = !DILocation(line: 693, column: 7, scope: !889)
!891 = !DILocation(line: 694, column: 7, scope: !889)
!892 = !DILocation(line: 653, column: 9, scope: !800)
!893 = !DILocation(line: 698, column: 8, scope: !800)
!894 = !DILocation(line: 699, column: 8, scope: !800)
!895 = !DILocation(line: 701, column: 3, scope: !800)
!896 = !DILocation(line: 0, scope: !847)
!897 = !DILocation(line: 478, column: 30, scope: !809, inlinedAt: !846)
!898 = !DILocation(line: 478, column: 42, scope: !809, inlinedAt: !846)
!899 = !DILocation(line: 478, column: 55, scope: !809, inlinedAt: !846)
!900 = !DILocation(line: 480, column: 7, scope: !809, inlinedAt: !846)
!901 = !DILocation(line: 485, column: 7, scope: !809, inlinedAt: !846)
!902 = !DILocation(line: 487, column: 7, scope: !809, inlinedAt: !846)
!903 = !DILocation(line: 488, column: 3, scope: !809, inlinedAt: !846)
!904 = !DILocation(line: 481, column: 15, scope: !809, inlinedAt: !846)
!905 = !DILocation(line: 490, column: 20, scope: !831, inlinedAt: !846)
!906 = !{!754, !754, i64 0}
!907 = !DILocation(line: 490, column: 3, scope: !832, inlinedAt: !846)
!908 = !DILocation(line: 492, column: 15, scope: !830, inlinedAt: !846)
!909 = !DILocation(line: 492, column: 7, scope: !830, inlinedAt: !846)
!910 = !DILocation(line: 495, column: 26, scope: !829, inlinedAt: !846)
!911 = !DILocation(line: 482, column: 15, scope: !809, inlinedAt: !846)
!912 = !DILocation(line: 483, column: 10, scope: !809, inlinedAt: !846)
!913 = !DILocation(line: 486, column: 8, scope: !809, inlinedAt: !846)
!914 = !DILocation(line: 484, column: 8, scope: !809, inlinedAt: !846)
!915 = !DILocation(line: 498, column: 15, scope: !916, inlinedAt: !846)
!916 = distinct !DILexicalBlock(scope: !829, file: !3, line: 498, column: 15)
!917 = !DILocation(line: 498, column: 15, scope: !829, inlinedAt: !846)
!918 = !DILocalVariable(name: "__c", arg: 1, scope: !919, file: !920, line: 108, type: !39)
!919 = distinct !DISubprogram(name: "putchar_unlocked", scope: !920, file: !920, line: 108, type: !921, isLocal: false, isDefinition: true, scopeLine: 109, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !923)
!920 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!921 = !DISubroutineType(types: !922)
!922 = !{!39, !39}
!923 = !{!918}
!924 = !DILocation(line: 108, column: 23, scope: !919, inlinedAt: !925)
!925 = distinct !DILocation(line: 500, column: 15, scope: !926, inlinedAt: !846)
!926 = distinct !DILexicalBlock(scope: !916, file: !3, line: 499, column: 13)
!927 = !DILocation(line: 110, column: 10, scope: !919, inlinedAt: !925)
!928 = !{!929, !753, i64 40}
!929 = !{!"_IO_FILE", !930, i64 0, !753, i64 8, !753, i64 16, !753, i64 24, !753, i64 32, !753, i64 40, !753, i64 48, !753, i64 56, !753, i64 64, !753, i64 72, !753, i64 80, !753, i64 88, !753, i64 96, !753, i64 104, !930, i64 112, !930, i64 116, !931, i64 120, !932, i64 128, !754, i64 130, !754, i64 131, !753, i64 136, !931, i64 144, !753, i64 152, !753, i64 160, !753, i64 168, !753, i64 176, !931, i64 184, !930, i64 192, !754, i64 196}
!930 = !{!"int", !754, i64 0}
!931 = !{!"long", !754, i64 0}
!932 = !{!"short", !754, i64 0}
!933 = !{!929, !753, i64 48}
!934 = !{!"branch_weights", i32 2000, i32 1}
!935 = !DILocation(line: 507, column: 24, scope: !936, inlinedAt: !846)
!936 = distinct !DILexicalBlock(scope: !937, file: !3, line: 507, column: 19)
!937 = distinct !DILexicalBlock(scope: !938, file: !3, line: 504, column: 13)
!938 = distinct !DILexicalBlock(scope: !829, file: !3, line: 503, column: 15)
!939 = !DILocation(line: 507, column: 19, scope: !937, inlinedAt: !846)
!940 = !DILocation(line: 509, column: 37, scope: !941, inlinedAt: !846)
!941 = distinct !DILexicalBlock(scope: !936, file: !3, line: 508, column: 17)
!942 = !DILocalVariable(name: "str", arg: 1, scope: !943, file: !3, line: 313, type: !50)
!943 = distinct !DISubprogram(name: "print_esc_string", scope: !3, file: !3, line: 313, type: !727, isLocal: true, isDefinition: true, scopeLine: 314, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !944)
!944 = !{!942}
!945 = !DILocation(line: 313, column: 31, scope: !943, inlinedAt: !946)
!946 = distinct !DILocation(line: 509, column: 19, scope: !941, inlinedAt: !846)
!947 = !DILocation(line: 315, column: 3, scope: !943, inlinedAt: !946)
!948 = !DILocation(line: 315, column: 10, scope: !949, inlinedAt: !946)
!949 = distinct !DILexicalBlock(scope: !950, file: !3, line: 315, column: 3)
!950 = distinct !DILexicalBlock(scope: !943, file: !3, line: 315, column: 3)
!951 = !DILocation(line: 315, column: 3, scope: !950, inlinedAt: !946)
!952 = !DILocation(line: 317, column: 14, scope: !953, inlinedAt: !946)
!953 = distinct !DILexicalBlock(scope: !949, file: !3, line: 316, column: 9)
!954 = !DILocation(line: 317, column: 11, scope: !953, inlinedAt: !946)
!955 = !DILocation(line: 317, column: 7, scope: !953, inlinedAt: !946)
!956 = !DILocation(line: 110, column: 10, scope: !919, inlinedAt: !957)
!957 = distinct !DILocation(line: 319, column: 7, scope: !953, inlinedAt: !946)
!958 = !DILocation(line: 316, column: 9, scope: !953, inlinedAt: !946)
!959 = !DILocation(line: 315, column: 19, scope: !949, inlinedAt: !946)
!960 = !DILocation(line: 315, column: 3, scope: !949, inlinedAt: !946)
!961 = distinct !{!961, !962, !963}
!962 = !DILocation(line: 315, column: 3, scope: !950)
!963 = !DILocation(line: 319, column: 7, scope: !950)
!964 = !DILocation(line: 510, column: 19, scope: !941, inlinedAt: !846)
!965 = !DILocation(line: 511, column: 19, scope: !941, inlinedAt: !846)
!966 = !DILocation(line: 512, column: 17, scope: !941, inlinedAt: !846)
!967 = !DILocation(line: 518, column: 24, scope: !968, inlinedAt: !846)
!968 = distinct !DILexicalBlock(scope: !969, file: !3, line: 518, column: 19)
!969 = distinct !DILexicalBlock(scope: !970, file: !3, line: 517, column: 13)
!970 = distinct !DILexicalBlock(scope: !829, file: !3, line: 516, column: 15)
!971 = !DILocation(line: 518, column: 19, scope: !969, inlinedAt: !846)
!972 = !DILocation(line: 520, column: 19, scope: !973, inlinedAt: !846)
!973 = distinct !DILexicalBlock(scope: !968, file: !3, line: 519, column: 17)
!974 = !DILocation(line: 522, column: 19, scope: !973, inlinedAt: !846)
!975 = !DILocation(line: 523, column: 19, scope: !973, inlinedAt: !846)
!976 = !DILocation(line: 524, column: 17, scope: !973, inlinedAt: !846)
!977 = !DILocation(line: 528, column: 11, scope: !829, inlinedAt: !846)
!978 = !DILocation(line: 531, column: 51, scope: !829, inlinedAt: !846)
!979 = !DILocation(line: 531, column: 41, scope: !829, inlinedAt: !846)
!980 = !DILocation(line: 531, column: 31, scope: !829, inlinedAt: !846)
!981 = !DILocation(line: 531, column: 21, scope: !829, inlinedAt: !846)
!982 = !DILocation(line: 530, column: 71, scope: !829, inlinedAt: !846)
!983 = !DILocation(line: 530, column: 61, scope: !829, inlinedAt: !846)
!984 = !DILocation(line: 530, column: 51, scope: !829, inlinedAt: !846)
!985 = !DILocation(line: 530, column: 31, scope: !829, inlinedAt: !846)
!986 = !DILocation(line: 529, column: 69, scope: !829, inlinedAt: !846)
!987 = !DILocation(line: 529, column: 29, scope: !829, inlinedAt: !846)
!988 = !DILocation(line: 529, column: 19, scope: !829, inlinedAt: !846)
!989 = !DILocation(line: 530, column: 41, scope: !829, inlinedAt: !846)
!990 = !DILocation(line: 533, column: 11, scope: !829, inlinedAt: !846)
!991 = !DILocation(line: 0, scope: !992, inlinedAt: !846)
!992 = distinct !DILexicalBlock(scope: !993, file: !3, line: 533, column: 11)
!993 = distinct !DILexicalBlock(scope: !829, file: !3, line: 533, column: 11)
!994 = !DILocation(line: 534, column: 21, scope: !992, inlinedAt: !846)
!995 = !DILocation(line: 534, column: 13, scope: !992, inlinedAt: !846)
!996 = !DILocation(line: 541, column: 57, scope: !997, inlinedAt: !846)
!997 = distinct !DILexicalBlock(scope: !992, file: !3, line: 535, column: 15)
!998 = !DILocation(line: 541, column: 47, scope: !997, inlinedAt: !846)
!999 = !DILocation(line: 541, column: 37, scope: !997, inlinedAt: !846)
!1000 = !DILocation(line: 541, column: 27, scope: !997, inlinedAt: !846)
!1001 = !DILocation(line: 540, column: 65, scope: !997, inlinedAt: !846)
!1002 = !DILocation(line: 540, column: 55, scope: !997, inlinedAt: !846)
!1003 = !DILocation(line: 540, column: 45, scope: !997, inlinedAt: !846)
!1004 = !DILocation(line: 540, column: 35, scope: !997, inlinedAt: !846)
!1005 = !DILocation(line: 540, column: 25, scope: !997, inlinedAt: !846)
!1006 = !DILocation(line: 542, column: 17, scope: !997, inlinedAt: !846)
!1007 = !DILocation(line: 546, column: 65, scope: !997, inlinedAt: !846)
!1008 = !DILocation(line: 546, column: 55, scope: !997, inlinedAt: !846)
!1009 = !DILocation(line: 546, column: 45, scope: !997, inlinedAt: !846)
!1010 = !DILocation(line: 546, column: 35, scope: !997, inlinedAt: !846)
!1011 = !DILocation(line: 546, column: 25, scope: !997, inlinedAt: !846)
!1012 = !DILocation(line: 547, column: 17, scope: !997, inlinedAt: !846)
!1013 = !DILocation(line: 549, column: 35, scope: !997, inlinedAt: !846)
!1014 = !DILocation(line: 549, column: 25, scope: !997, inlinedAt: !846)
!1015 = !DILocation(line: 550, column: 17, scope: !997, inlinedAt: !846)
!1016 = !DILocation(line: 533, column: 20, scope: !992, inlinedAt: !846)
!1017 = !DILocation(line: 533, column: 36, scope: !992, inlinedAt: !846)
!1018 = !DILocation(line: 533, column: 11, scope: !992, inlinedAt: !846)
!1019 = distinct !{!1019, !1020, !1021}
!1020 = !DILocation(line: 533, column: 11, scope: !993)
!1021 = !DILocation(line: 553, column: 15, scope: !993)
!1022 = !DILocation(line: 556, column: 18, scope: !828, inlinedAt: !846)
!1023 = !DILocation(line: 556, column: 15, scope: !829, inlinedAt: !846)
!1024 = !DILocation(line: 576, column: 20, scope: !828, inlinedAt: !846)
!1025 = !DILocation(line: 576, column: 13, scope: !828, inlinedAt: !846)
!1026 = !DILocation(line: 558, column: 15, scope: !827, inlinedAt: !846)
!1027 = !DILocation(line: 559, column: 15, scope: !827, inlinedAt: !846)
!1028 = !DILocation(line: 560, column: 24, scope: !826, inlinedAt: !846)
!1029 = !DILocation(line: 560, column: 19, scope: !827, inlinedAt: !846)
!1030 = !DILocation(line: 562, column: 48, scope: !825, inlinedAt: !846)
!1031 = !DILocation(line: 562, column: 36, scope: !825, inlinedAt: !846)
!1032 = !DILocation(line: 562, column: 28, scope: !825, inlinedAt: !846)
!1033 = !DILocation(line: 563, column: 40, scope: !1034, inlinedAt: !846)
!1034 = distinct !DILexicalBlock(scope: !825, file: !3, line: 563, column: 23)
!1035 = !DILocation(line: 564, column: 35, scope: !1034, inlinedAt: !846)
!1036 = !DILocation(line: 568, column: 19, scope: !825, inlinedAt: !846)
!1037 = !DILocation(line: 569, column: 19, scope: !825, inlinedAt: !846)
!1038 = !DILocation(line: 570, column: 17, scope: !825, inlinedAt: !846)
!1039 = !DILocation(line: 566, column: 21, scope: !1034, inlinedAt: !846)
!1040 = !DILocation(line: 578, column: 17, scope: !1041, inlinedAt: !846)
!1041 = distinct !DILexicalBlock(scope: !828, file: !3, line: 577, column: 15)
!1042 = !DILocation(line: 579, column: 17, scope: !1041, inlinedAt: !846)
!1043 = distinct !{!1043, !1044, !1045}
!1044 = !DILocation(line: 576, column: 13, scope: !828)
!1045 = !DILocation(line: 580, column: 15, scope: !828)
!1046 = !DILocation(line: 581, column: 15, scope: !842, inlinedAt: !846)
!1047 = !DILocation(line: 0, scope: !829, inlinedAt: !846)
!1048 = !DILocation(line: 0, scope: !809, inlinedAt: !846)
!1049 = !DILocation(line: 581, column: 18, scope: !842, inlinedAt: !846)
!1050 = !DILocation(line: 581, column: 15, scope: !829, inlinedAt: !846)
!1051 = !DILocation(line: 583, column: 15, scope: !841, inlinedAt: !846)
!1052 = !DILocation(line: 585, column: 23, scope: !841, inlinedAt: !846)
!1053 = !DILocation(line: 586, column: 19, scope: !840, inlinedAt: !846)
!1054 = !DILocation(line: 586, column: 22, scope: !840, inlinedAt: !846)
!1055 = !DILocation(line: 586, column: 19, scope: !841, inlinedAt: !846)
!1056 = !DILocation(line: 0, scope: !1057, inlinedAt: !846)
!1057 = distinct !DILexicalBlock(scope: !840, file: !3, line: 614, column: 19)
!1058 = !DILocation(line: 613, column: 24, scope: !840, inlinedAt: !846)
!1059 = !DILocation(line: 613, column: 17, scope: !840, inlinedAt: !846)
!1060 = distinct !{!1060, !1061, !1062}
!1061 = !DILocation(line: 613, column: 17, scope: !840)
!1062 = !DILocation(line: 617, column: 19, scope: !840)
!1063 = !DILocation(line: 615, column: 21, scope: !1057, inlinedAt: !846)
!1064 = !DILocation(line: 588, column: 19, scope: !839, inlinedAt: !846)
!1065 = !DILocation(line: 589, column: 19, scope: !839, inlinedAt: !846)
!1066 = !DILocation(line: 590, column: 28, scope: !838, inlinedAt: !846)
!1067 = !DILocation(line: 590, column: 23, scope: !839, inlinedAt: !846)
!1068 = !DILocation(line: 592, column: 51, scope: !837, inlinedAt: !846)
!1069 = !DILocation(line: 592, column: 39, scope: !837, inlinedAt: !846)
!1070 = !DILocation(line: 592, column: 32, scope: !837, inlinedAt: !846)
!1071 = !DILocation(line: 593, column: 32, scope: !1072, inlinedAt: !846)
!1072 = distinct !DILexicalBlock(scope: !837, file: !3, line: 593, column: 27)
!1073 = !DILocation(line: 593, column: 27, scope: !837, inlinedAt: !846)
!1074 = !DILocation(line: 600, column: 40, scope: !1075, inlinedAt: !846)
!1075 = distinct !DILexicalBlock(scope: !1072, file: !3, line: 600, column: 32)
!1076 = !DILocation(line: 600, column: 32, scope: !1072, inlinedAt: !846)
!1077 = !DILocation(line: 601, column: 25, scope: !1075, inlinedAt: !846)
!1078 = !DILocation(line: 604, column: 37, scope: !1075, inlinedAt: !846)
!1079 = !DILocation(line: 0, scope: !1075, inlinedAt: !846)
!1080 = !DILocation(line: 605, column: 23, scope: !837, inlinedAt: !846)
!1081 = !DILocation(line: 606, column: 23, scope: !837, inlinedAt: !846)
!1082 = !DILocation(line: 607, column: 21, scope: !837, inlinedAt: !846)
!1083 = !DILocation(line: 0, scope: !827, inlinedAt: !846)
!1084 = !DILocation(line: 0, scope: !825, inlinedAt: !846)
!1085 = !DILocation(line: 620, column: 11, scope: !829, inlinedAt: !846)
!1086 = !DILocation(line: 620, column: 18, scope: !829, inlinedAt: !846)
!1087 = !DILocation(line: 620, column: 28, scope: !829, inlinedAt: !846)
!1088 = !DILocation(line: 622, column: 13, scope: !829, inlinedAt: !846)
!1089 = distinct !{!1089, !1090, !1091}
!1090 = !DILocation(line: 620, column: 11, scope: !829)
!1091 = !DILocation(line: 622, column: 15, scope: !829)
!1092 = !DILocation(line: 625, column: 27, scope: !844, inlinedAt: !846)
!1093 = !DILocation(line: 626, column: 19, scope: !1094, inlinedAt: !846)
!1094 = distinct !DILexicalBlock(scope: !844, file: !3, line: 626, column: 17)
!1095 = !DILocation(line: 626, column: 17, scope: !844, inlinedAt: !846)
!1096 = !DILocation(line: 627, column: 15, scope: !1094, inlinedAt: !846)
!1097 = !DILocation(line: 635, column: 30, scope: !829, inlinedAt: !846)
!1098 = !DILocation(line: 635, column: 25, scope: !829, inlinedAt: !846)
!1099 = !DILocation(line: 635, column: 47, scope: !829, inlinedAt: !846)
!1100 = !DILocation(line: 635, column: 56, scope: !829, inlinedAt: !846)
!1101 = !DILocation(line: 635, column: 51, scope: !829, inlinedAt: !846)
!1102 = !DILocalVariable(name: "start", arg: 1, scope: !1103, file: !3, line: 331, type: !50)
!1103 = distinct !DISubprogram(name: "print_direc", scope: !3, file: !3, line: 331, type: !1104, isLocal: true, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1106)
!1104 = !DISubroutineType(types: !1105)
!1105 = !{null, !50, !121, !38, !46, !39, !46, !39, !50}
!1106 = !{!1102, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1117, !1118, !1119, !1122, !1126}
!1107 = !DILocalVariable(name: "length", arg: 2, scope: !1103, file: !3, line: 331, type: !121)
!1108 = !DILocalVariable(name: "conversion", arg: 3, scope: !1103, file: !3, line: 331, type: !38)
!1109 = !DILocalVariable(name: "have_field_width", arg: 4, scope: !1103, file: !3, line: 332, type: !46)
!1110 = !DILocalVariable(name: "field_width", arg: 5, scope: !1103, file: !3, line: 332, type: !39)
!1111 = !DILocalVariable(name: "have_precision", arg: 6, scope: !1103, file: !3, line: 333, type: !46)
!1112 = !DILocalVariable(name: "precision", arg: 7, scope: !1103, file: !3, line: 333, type: !39)
!1113 = !DILocalVariable(name: "argument", arg: 8, scope: !1103, file: !3, line: 334, type: !50)
!1114 = !DILocalVariable(name: "p", scope: !1103, file: !3, line: 336, type: !37)
!1115 = !DILocalVariable(name: "q", scope: !1116, file: !3, line: 342, type: !37)
!1116 = distinct !DILexicalBlock(scope: !1103, file: !3, line: 341, column: 3)
!1117 = !DILocalVariable(name: "length_modifier", scope: !1116, file: !3, line: 343, type: !50)
!1118 = !DILocalVariable(name: "length_modifier_len", scope: !1116, file: !3, line: 344, type: !121)
!1119 = !DILocalVariable(name: "arg", scope: !1120, file: !3, line: 377, type: !833)
!1120 = distinct !DILexicalBlock(scope: !1121, file: !3, line: 376, column: 7)
!1121 = distinct !DILexicalBlock(scope: !1103, file: !3, line: 373, column: 5)
!1122 = !DILocalVariable(name: "arg", scope: !1123, file: !3, line: 400, type: !1124)
!1123 = distinct !DILexicalBlock(scope: !1121, file: !3, line: 399, column: 7)
!1124 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !834, line: 102, baseType: !1125)
!1125 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !212, line: 72, baseType: !123)
!1126 = !DILocalVariable(name: "arg", scope: !1127, file: !3, line: 427, type: !1128)
!1127 = distinct !DILexicalBlock(scope: !1121, file: !3, line: 426, column: 7)
!1128 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!1129 = !DILocation(line: 331, column: 26, scope: !1103, inlinedAt: !1130)
!1130 = distinct !DILocation(line: 632, column: 11, scope: !829, inlinedAt: !846)
!1131 = !DILocation(line: 331, column: 40, scope: !1103, inlinedAt: !1130)
!1132 = !DILocation(line: 331, column: 53, scope: !1103, inlinedAt: !1130)
!1133 = !DILocation(line: 332, column: 19, scope: !1103, inlinedAt: !1130)
!1134 = !DILocation(line: 332, column: 41, scope: !1103, inlinedAt: !1130)
!1135 = !DILocation(line: 333, column: 19, scope: !1103, inlinedAt: !1130)
!1136 = !DILocation(line: 333, column: 39, scope: !1103, inlinedAt: !1130)
!1137 = !DILocation(line: 334, column: 26, scope: !1103, inlinedAt: !1130)
!1138 = !DILocation(line: 346, column: 13, scope: !1116, inlinedAt: !1130)
!1139 = !DILocation(line: 346, column: 5, scope: !1116, inlinedAt: !1130)
!1140 = !DILocation(line: 344, column: 12, scope: !1116, inlinedAt: !1130)
!1141 = !DILocation(line: 357, column: 9, scope: !1142, inlinedAt: !1130)
!1142 = distinct !DILexicalBlock(scope: !1116, file: !3, line: 347, column: 7)
!1143 = !DILocation(line: 343, column: 17, scope: !1116, inlinedAt: !1130)
!1144 = !DILocation(line: 362, column: 9, scope: !1142, inlinedAt: !1130)
!1145 = !DILocation(line: 0, scope: !1142, inlinedAt: !1130)
!1146 = !DILocation(line: 365, column: 25, scope: !1116, inlinedAt: !1130)
!1147 = !DILocation(line: 365, column: 47, scope: !1116, inlinedAt: !1130)
!1148 = !DILocation(line: 365, column: 9, scope: !1116, inlinedAt: !1130)
!1149 = !DILocation(line: 336, column: 9, scope: !1103, inlinedAt: !1130)
!1150 = !DILocalVariable(name: "__dest", arg: 1, scope: !1151, file: !1152, line: 45, type: !1155)
!1151 = distinct !DISubprogram(name: "mempcpy", scope: !1152, file: !1152, line: 45, type: !1153, isLocal: false, isDefinition: true, scopeLine: 47, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1159)
!1152 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1153 = !DISubroutineType(types: !1154)
!1154 = !{!36, !1155, !1156, !121}
!1155 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !36)
!1156 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1157)
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1158 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1159 = !{!1150, !1160, !1161}
!1160 = !DILocalVariable(name: "__src", arg: 2, scope: !1151, file: !1152, line: 45, type: !1156)
!1161 = !DILocalVariable(name: "__len", arg: 3, scope: !1151, file: !1152, line: 45, type: !121)
!1162 = !DILocation(line: 45, column: 1, scope: !1151, inlinedAt: !1163)
!1163 = distinct !DILocation(line: 366, column: 9, scope: !1116, inlinedAt: !1130)
!1164 = !DILocation(line: 48, column: 57, scope: !1151, inlinedAt: !1163)
!1165 = !DILocation(line: 48, column: 10, scope: !1151, inlinedAt: !1163)
!1166 = !DILocation(line: 342, column: 11, scope: !1116, inlinedAt: !1130)
!1167 = !DILocation(line: 45, column: 1, scope: !1151, inlinedAt: !1168)
!1168 = distinct !DILocation(line: 367, column: 9, scope: !1116, inlinedAt: !1130)
!1169 = !DILocation(line: 48, column: 57, scope: !1151, inlinedAt: !1168)
!1170 = !DILocation(line: 48, column: 10, scope: !1151, inlinedAt: !1168)
!1171 = !DILocation(line: 368, column: 7, scope: !1116, inlinedAt: !1130)
!1172 = !DILocation(line: 368, column: 10, scope: !1116, inlinedAt: !1130)
!1173 = !DILocation(line: 369, column: 8, scope: !1116, inlinedAt: !1130)
!1174 = !DILocation(line: 372, column: 3, scope: !1103, inlinedAt: !1130)
!1175 = !DILocation(line: 377, column: 24, scope: !1120, inlinedAt: !1130)
!1176 = !DILocation(line: 377, column: 18, scope: !1120, inlinedAt: !1130)
!1177 = !DILocation(line: 378, column: 13, scope: !1120, inlinedAt: !1130)
!1178 = !DILocation(line: 380, column: 17, scope: !1179, inlinedAt: !1130)
!1179 = distinct !DILexicalBlock(scope: !1180, file: !3, line: 379, column: 11)
!1180 = distinct !DILexicalBlock(scope: !1120, file: !3, line: 378, column: 13)
!1181 = !DILocation(line: 381, column: 15, scope: !1182, inlinedAt: !1130)
!1182 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 380, column: 17)
!1183 = !DILocation(line: 383, column: 15, scope: !1182, inlinedAt: !1130)
!1184 = !DILocation(line: 387, column: 17, scope: !1185, inlinedAt: !1130)
!1185 = distinct !DILexicalBlock(scope: !1180, file: !3, line: 386, column: 11)
!1186 = !DILocation(line: 388, column: 15, scope: !1187, inlinedAt: !1130)
!1187 = distinct !DILexicalBlock(scope: !1185, file: !3, line: 387, column: 17)
!1188 = !DILocation(line: 390, column: 15, scope: !1187, inlinedAt: !1130)
!1189 = !DILocalVariable(name: "s", arg: 1, scope: !1190, file: !3, line: 190, type: !50)
!1190 = distinct !DISubprogram(name: "vstrtoumax", scope: !3, file: !3, line: 190, type: !1191, isLocal: true, isDefinition: true, scopeLine: 190, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1193)
!1191 = !DISubroutineType(types: !1192)
!1192 = !{!1124, !50}
!1193 = !{!1189, !1194, !1195, !1196}
!1194 = !DILocalVariable(name: "end", scope: !1190, file: !3, line: 190, type: !37)
!1195 = !DILocalVariable(name: "val", scope: !1190, file: !3, line: 190, type: !1124)
!1196 = !DILocalVariable(name: "ch", scope: !1197, file: !3, line: 190, type: !40)
!1197 = distinct !DILexicalBlock(scope: !1198, file: !3, line: 190, column: 1)
!1198 = distinct !DILexicalBlock(scope: !1190, file: !3, line: 190, column: 1)
!1199 = !DILocation(line: 190, column: 1, scope: !1190, inlinedAt: !1200)
!1200 = distinct !DILocation(line: 400, column: 25, scope: !1123, inlinedAt: !1130)
!1201 = !DILocation(line: 190, column: 1, scope: !1198, inlinedAt: !1200)
!1202 = !DILocation(line: 190, column: 1, scope: !1197, inlinedAt: !1200)
!1203 = !DILocation(line: 190, column: 1, scope: !1204, inlinedAt: !1200)
!1204 = distinct !DILexicalBlock(scope: !1197, file: !3, line: 190, column: 1)
!1205 = !DILocation(line: 190, column: 1, scope: !1206, inlinedAt: !1200)
!1206 = distinct !DILexicalBlock(scope: !1198, file: !3, line: 190, column: 1)
!1207 = !{!930, !930, i64 0}
!1208 = !DILocalVariable(name: "nptr", arg: 1, scope: !1209, file: !1210, line: 336, type: !1213)
!1209 = distinct !DISubprogram(name: "strtoumax", scope: !1210, file: !1210, line: 336, type: !1211, isLocal: false, isDefinition: true, scopeLine: 338, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1215)
!1210 = !DIFile(filename: "/usr/include/inttypes.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1211 = !DISubroutineType(types: !1212)
!1212 = !{!1124, !1213, !1214, !39}
!1213 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !50)
!1214 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !184)
!1215 = !{!1208, !1216, !1217}
!1216 = !DILocalVariable(name: "endptr", arg: 2, scope: !1209, file: !1210, line: 336, type: !1214)
!1217 = !DILocalVariable(name: "base", arg: 3, scope: !1209, file: !1210, line: 336, type: !39)
!1218 = !DILocation(line: 336, column: 1, scope: !1209, inlinedAt: !1219)
!1219 = distinct !DILocation(line: 190, column: 1, scope: !1206, inlinedAt: !1200)
!1220 = !DILocation(line: 339, column: 10, scope: !1209, inlinedAt: !1219)
!1221 = !DILocation(line: 400, column: 19, scope: !1123, inlinedAt: !1130)
!1222 = !DILocation(line: 401, column: 13, scope: !1123, inlinedAt: !1130)
!1223 = !DILocation(line: 403, column: 17, scope: !1224, inlinedAt: !1130)
!1224 = distinct !DILexicalBlock(scope: !1225, file: !3, line: 402, column: 11)
!1225 = distinct !DILexicalBlock(scope: !1123, file: !3, line: 401, column: 13)
!1226 = !DILocation(line: 404, column: 15, scope: !1227, inlinedAt: !1130)
!1227 = distinct !DILexicalBlock(scope: !1224, file: !3, line: 403, column: 17)
!1228 = !DILocation(line: 406, column: 15, scope: !1227, inlinedAt: !1130)
!1229 = !DILocation(line: 410, column: 17, scope: !1230, inlinedAt: !1130)
!1230 = distinct !DILexicalBlock(scope: !1225, file: !3, line: 409, column: 11)
!1231 = !DILocation(line: 411, column: 15, scope: !1232, inlinedAt: !1130)
!1232 = distinct !DILexicalBlock(scope: !1230, file: !3, line: 410, column: 17)
!1233 = !DILocation(line: 413, column: 15, scope: !1232, inlinedAt: !1130)
!1234 = !DILocalVariable(name: "s", arg: 1, scope: !1235, file: !3, line: 191, type: !50)
!1235 = distinct !DISubprogram(name: "vstrtold", scope: !3, file: !3, line: 191, type: !1236, isLocal: true, isDefinition: true, scopeLine: 191, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1238)
!1236 = !DISubroutineType(types: !1237)
!1237 = !{!1128, !50}
!1238 = !{!1234, !1239, !1240, !1241}
!1239 = !DILocalVariable(name: "end", scope: !1235, file: !3, line: 191, type: !37)
!1240 = !DILocalVariable(name: "val", scope: !1235, file: !3, line: 191, type: !1128)
!1241 = !DILocalVariable(name: "ch", scope: !1242, file: !3, line: 191, type: !40)
!1242 = distinct !DILexicalBlock(scope: !1243, file: !3, line: 191, column: 1)
!1243 = distinct !DILexicalBlock(scope: !1235, file: !3, line: 191, column: 1)
!1244 = !DILocation(line: 191, column: 1, scope: !1235, inlinedAt: !1245)
!1245 = distinct !DILocation(line: 427, column: 27, scope: !1127, inlinedAt: !1130)
!1246 = !DILocation(line: 191, column: 1, scope: !1243, inlinedAt: !1245)
!1247 = !DILocation(line: 191, column: 1, scope: !1242, inlinedAt: !1245)
!1248 = !DILocation(line: 191, column: 1, scope: !1249, inlinedAt: !1245)
!1249 = distinct !DILexicalBlock(scope: !1242, file: !3, line: 191, column: 1)
!1250 = !DILocation(line: 191, column: 1, scope: !1251, inlinedAt: !1245)
!1251 = distinct !DILexicalBlock(scope: !1243, file: !3, line: 191, column: 1)
!1252 = !DILocation(line: 427, column: 21, scope: !1127, inlinedAt: !1130)
!1253 = !DILocation(line: 428, column: 13, scope: !1127, inlinedAt: !1130)
!1254 = !DILocation(line: 430, column: 17, scope: !1255, inlinedAt: !1130)
!1255 = distinct !DILexicalBlock(scope: !1256, file: !3, line: 429, column: 11)
!1256 = distinct !DILexicalBlock(scope: !1127, file: !3, line: 428, column: 13)
!1257 = !DILocation(line: 431, column: 15, scope: !1258, inlinedAt: !1130)
!1258 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 430, column: 17)
!1259 = !DILocation(line: 433, column: 15, scope: !1258, inlinedAt: !1130)
!1260 = !DILocation(line: 437, column: 17, scope: !1261, inlinedAt: !1130)
!1261 = distinct !DILexicalBlock(scope: !1256, file: !3, line: 436, column: 11)
!1262 = !DILocation(line: 438, column: 15, scope: !1263, inlinedAt: !1130)
!1263 = distinct !DILexicalBlock(scope: !1261, file: !3, line: 437, column: 17)
!1264 = !DILocation(line: 440, column: 15, scope: !1263, inlinedAt: !1130)
!1265 = !DILocation(line: 0, scope: !1266, inlinedAt: !1130)
!1266 = distinct !DILexicalBlock(scope: !1121, file: !3, line: 446, column: 11)
!1267 = !DILocation(line: 446, column: 11, scope: !1121, inlinedAt: !1130)
!1268 = !DILocation(line: 447, column: 9, scope: !1266, inlinedAt: !1130)
!1269 = !DILocation(line: 449, column: 9, scope: !1266, inlinedAt: !1130)
!1270 = !DILocation(line: 453, column: 11, scope: !1121, inlinedAt: !1130)
!1271 = !DILocation(line: 455, column: 15, scope: !1272, inlinedAt: !1130)
!1272 = distinct !DILexicalBlock(scope: !1273, file: !3, line: 454, column: 9)
!1273 = distinct !DILexicalBlock(scope: !1121, file: !3, line: 453, column: 11)
!1274 = !DILocation(line: 456, column: 13, scope: !1275, inlinedAt: !1130)
!1275 = distinct !DILexicalBlock(scope: !1272, file: !3, line: 455, column: 15)
!1276 = !DILocation(line: 458, column: 13, scope: !1275, inlinedAt: !1130)
!1277 = !DILocation(line: 462, column: 15, scope: !1278, inlinedAt: !1130)
!1278 = distinct !DILexicalBlock(scope: !1273, file: !3, line: 461, column: 9)
!1279 = !DILocation(line: 463, column: 13, scope: !1280, inlinedAt: !1130)
!1280 = distinct !DILexicalBlock(scope: !1278, file: !3, line: 462, column: 15)
!1281 = !DILocation(line: 465, column: 13, scope: !1280, inlinedAt: !1130)
!1282 = !DILocation(line: 470, column: 3, scope: !1103, inlinedAt: !1130)
!1283 = !DILocation(line: 636, column: 11, scope: !829, inlinedAt: !846)
!1284 = !DILocation(line: 639, column: 16, scope: !829, inlinedAt: !846)
!1285 = !DILocation(line: 639, column: 13, scope: !829, inlinedAt: !846)
!1286 = !DILocation(line: 640, column: 11, scope: !829, inlinedAt: !846)
!1287 = !DILocation(line: 108, column: 23, scope: !919, inlinedAt: !1288)
!1288 = distinct !DILocation(line: 643, column: 11, scope: !829, inlinedAt: !846)
!1289 = !DILocation(line: 110, column: 10, scope: !919, inlinedAt: !1288)
!1290 = !DILocation(line: 0, scope: !1034, inlinedAt: !846)
!1291 = !DILocation(line: 0, scope: !1292, inlinedAt: !846)
!1292 = distinct !DILexicalBlock(scope: !1072, file: !3, line: 594, column: 25)
!1293 = !DILocation(line: 0, scope: !839, inlinedAt: !846)
!1294 = !DILocation(line: 490, column: 24, scope: !831, inlinedAt: !846)
!1295 = distinct !{!1295, !1296, !1297}
!1296 = !DILocation(line: 490, column: 3, scope: !832)
!1297 = !DILocation(line: 645, column: 5, scope: !832)
!1298 = !DILocation(line: 647, column: 20, scope: !809, inlinedAt: !846)
!1299 = !DILocation(line: 648, column: 1, scope: !809, inlinedAt: !846)
!1300 = !DILocation(line: 654, column: 7, scope: !800)
!1301 = !DILocation(line: 705, column: 12, scope: !847)
!1302 = !DILocation(line: 707, column: 20, scope: !800)
!1303 = !DILocation(line: 707, column: 32, scope: !800)
!1304 = !DILocation(line: 707, column: 24, scope: !800)
!1305 = !DILocation(line: 706, column: 5, scope: !847)
!1306 = distinct !{!1306, !895, !1307}
!1307 = !DILocation(line: 707, column: 35, scope: !800)
!1308 = !DILocation(line: 709, column: 7, scope: !800)
!1309 = !DILocation(line: 711, column: 12, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !800, file: !3, line: 709, column: 7)
!1311 = !DILocation(line: 712, column: 19, scope: !1310)
!1312 = !DILocation(line: 712, column: 12, scope: !1310)
!1313 = !DILocation(line: 710, column: 5, scope: !1310)
!1314 = !DILocation(line: 714, column: 3, scope: !800)
!1315 = !DILocation(line: 0, scope: !800)
!1316 = !DILocation(line: 715, column: 1, scope: !800)
!1317 = distinct !DISubprogram(name: "print_esc", scope: !3, file: !3, line: 240, type: !1318, isLocal: true, isDefinition: true, scopeLine: 241, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1320)
!1318 = !DISubroutineType(types: !1319)
!1319 = !{!39, !50, !46}
!1320 = !{!1321, !1322, !1323, !1324, !1325, !1326, !1332}
!1321 = !DILocalVariable(name: "escstart", arg: 1, scope: !1317, file: !3, line: 240, type: !50)
!1322 = !DILocalVariable(name: "octal_0", arg: 2, scope: !1317, file: !3, line: 240, type: !46)
!1323 = !DILocalVariable(name: "p", scope: !1317, file: !3, line: 242, type: !50)
!1324 = !DILocalVariable(name: "esc_value", scope: !1317, file: !3, line: 243, type: !39)
!1325 = !DILocalVariable(name: "esc_length", scope: !1317, file: !3, line: 244, type: !39)
!1326 = !DILocalVariable(name: "esc_char", scope: !1327, file: !3, line: 272, type: !38)
!1327 = distinct !DILexicalBlock(scope: !1328, file: !3, line: 271, column: 5)
!1328 = distinct !DILexicalBlock(scope: !1329, file: !3, line: 270, column: 12)
!1329 = distinct !DILexicalBlock(scope: !1330, file: !3, line: 268, column: 12)
!1330 = distinct !DILexicalBlock(scope: !1331, file: !3, line: 257, column: 12)
!1331 = distinct !DILexicalBlock(scope: !1317, file: !3, line: 246, column: 7)
!1332 = !DILocalVariable(name: "uni_value", scope: !1327, file: !3, line: 273, type: !7)
!1333 = !DILocation(line: 240, column: 24, scope: !1317)
!1334 = !DILocation(line: 240, column: 39, scope: !1317)
!1335 = !DILocation(line: 242, column: 28, scope: !1317)
!1336 = !DILocation(line: 242, column: 15, scope: !1317)
!1337 = !DILocation(line: 243, column: 7, scope: !1317)
!1338 = !DILocation(line: 246, column: 7, scope: !1331)
!1339 = !DILocation(line: 246, column: 10, scope: !1331)
!1340 = !DILocation(line: 246, column: 7, scope: !1317)
!1341 = !DILocation(line: 244, column: 7, scope: !1317)
!1342 = !DILocation(line: 249, column: 28, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1344, file: !3, line: 249, column: 7)
!1344 = distinct !DILexicalBlock(scope: !1331, file: !3, line: 247, column: 5)
!1345 = !DILocation(line: 250, column: 30, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1343, file: !3, line: 249, column: 7)
!1347 = !{!932, !932, i64 0}
!1348 = !DILocation(line: 250, column: 27, scope: !1346)
!1349 = !DILocation(line: 249, column: 7, scope: !1343)
!1350 = !DILocation(line: 252, column: 38, scope: !1346)
!1351 = !DILocation(line: 251, column: 26, scope: !1346)
!1352 = !DILocation(line: 254, column: 9, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1344, file: !3, line: 253, column: 11)
!1354 = !DILocation(line: 108, column: 23, scope: !919, inlinedAt: !1355)
!1355 = distinct !DILocation(line: 255, column: 7, scope: !1344)
!1356 = !DILocation(line: 110, column: 10, scope: !919, inlinedAt: !1355)
!1357 = !DILocation(line: 257, column: 12, scope: !1330)
!1358 = !DILocation(line: 262, column: 47, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1360, file: !3, line: 262, column: 7)
!1360 = distinct !DILexicalBlock(scope: !1330, file: !3, line: 258, column: 5)
!1361 = !DILocation(line: 262, column: 41, scope: !1359)
!1362 = !DILocation(line: 262, column: 30, scope: !1359)
!1363 = !DILocation(line: 263, column: 30, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1359, file: !3, line: 262, column: 7)
!1365 = !DILocation(line: 262, column: 7, scope: !1359)
!1366 = !DILocation(line: 265, column: 37, scope: !1364)
!1367 = !DILocation(line: 265, column: 35, scope: !1364)
!1368 = !DILocation(line: 264, column: 26, scope: !1364)
!1369 = !DILocation(line: 0, scope: !1364)
!1370 = !DILocation(line: 108, column: 23, scope: !919, inlinedAt: !1371)
!1371 = distinct !DILocation(line: 266, column: 7, scope: !1360)
!1372 = !DILocation(line: 110, column: 10, scope: !919, inlinedAt: !1371)
!1373 = !DILocation(line: 268, column: 12, scope: !1329)
!1374 = !DILocation(line: 268, column: 15, scope: !1329)
!1375 = !DILocation(line: 268, column: 18, scope: !1329)
!1376 = !DILocation(line: 268, column: 12, scope: !1330)
!1377 = !DILocation(line: 269, column: 23, scope: !1329)
!1378 = !DILocalVariable(name: "c", arg: 1, scope: !1379, file: !3, line: 196, type: !38)
!1379 = distinct !DISubprogram(name: "print_esc_char", scope: !3, file: !3, line: 196, type: !1380, isLocal: true, isDefinition: true, scopeLine: 197, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1382)
!1380 = !DISubroutineType(types: !1381)
!1381 = !{null, !38}
!1382 = !{!1378}
!1383 = !DILocation(line: 196, column: 22, scope: !1379, inlinedAt: !1384)
!1384 = distinct !DILocation(line: 269, column: 5, scope: !1329)
!1385 = !DILocation(line: 198, column: 3, scope: !1379, inlinedAt: !1384)
!1386 = !DILocation(line: 108, column: 23, scope: !919, inlinedAt: !1387)
!1387 = distinct !DILocation(line: 201, column: 7, scope: !1388, inlinedAt: !1384)
!1388 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 199, column: 5)
!1389 = !DILocation(line: 110, column: 10, scope: !919, inlinedAt: !1387)
!1390 = !DILocation(line: 108, column: 23, scope: !919, inlinedAt: !1391)
!1391 = distinct !DILocation(line: 204, column: 7, scope: !1388, inlinedAt: !1384)
!1392 = !DILocation(line: 110, column: 10, scope: !919, inlinedAt: !1391)
!1393 = !DILocation(line: 207, column: 7, scope: !1388, inlinedAt: !1384)
!1394 = !DILocation(line: 108, column: 23, scope: !919, inlinedAt: !1395)
!1395 = distinct !DILocation(line: 210, column: 7, scope: !1388, inlinedAt: !1384)
!1396 = !DILocation(line: 110, column: 10, scope: !919, inlinedAt: !1395)
!1397 = !DILocation(line: 108, column: 23, scope: !919, inlinedAt: !1398)
!1398 = distinct !DILocation(line: 213, column: 7, scope: !1388, inlinedAt: !1384)
!1399 = !DILocation(line: 110, column: 10, scope: !919, inlinedAt: !1398)
!1400 = !DILocation(line: 108, column: 23, scope: !919, inlinedAt: !1401)
!1401 = distinct !DILocation(line: 216, column: 7, scope: !1388, inlinedAt: !1384)
!1402 = !DILocation(line: 110, column: 10, scope: !919, inlinedAt: !1401)
!1403 = !DILocation(line: 108, column: 23, scope: !919, inlinedAt: !1404)
!1404 = distinct !DILocation(line: 219, column: 7, scope: !1388, inlinedAt: !1384)
!1405 = !DILocation(line: 110, column: 10, scope: !919, inlinedAt: !1404)
!1406 = !DILocation(line: 108, column: 23, scope: !919, inlinedAt: !1407)
!1407 = distinct !DILocation(line: 222, column: 7, scope: !1388, inlinedAt: !1384)
!1408 = !DILocation(line: 110, column: 10, scope: !919, inlinedAt: !1407)
!1409 = !DILocation(line: 108, column: 23, scope: !919, inlinedAt: !1410)
!1410 = distinct !DILocation(line: 225, column: 7, scope: !1388, inlinedAt: !1384)
!1411 = !DILocation(line: 110, column: 10, scope: !919, inlinedAt: !1410)
!1412 = !DILocation(line: 108, column: 23, scope: !919, inlinedAt: !1413)
!1413 = distinct !DILocation(line: 228, column: 7, scope: !1388, inlinedAt: !1384)
!1414 = !DILocation(line: 110, column: 10, scope: !919, inlinedAt: !1413)
!1415 = !DILocation(line: 270, column: 22, scope: !1328)
!1416 = !DILocation(line: 272, column: 12, scope: !1327)
!1417 = !DILocation(line: 273, column: 20, scope: !1327)
!1418 = !DILocation(line: 276, column: 35, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1327, file: !3, line: 276, column: 7)
!1420 = !DILocation(line: 276, column: 26, scope: !1419)
!1421 = !DILocation(line: 276, column: 52, scope: !1419)
!1422 = !DILocation(line: 280, column: 17, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1424, file: !3, line: 280, column: 15)
!1424 = distinct !DILexicalBlock(scope: !1425, file: !3, line: 279, column: 9)
!1425 = distinct !DILexicalBlock(scope: !1419, file: !3, line: 276, column: 7)
!1426 = !DILocation(line: 276, column: 7, scope: !1419)
!1427 = !DILocation(line: 280, column: 15, scope: !1424)
!1428 = !DILocation(line: 281, column: 13, scope: !1423)
!1429 = !DILocation(line: 282, column: 33, scope: !1424)
!1430 = !DILocation(line: 282, column: 40, scope: !1424)
!1431 = !DILocation(line: 282, column: 38, scope: !1424)
!1432 = !DILocation(line: 278, column: 12, scope: !1425)
!1433 = !DILocation(line: 278, column: 26, scope: !1425)
!1434 = !DILocation(line: 277, column: 23, scope: !1425)
!1435 = distinct !{!1435, !1426, !1436}
!1436 = !DILocation(line: 283, column: 9, scope: !1419)
!1437 = !DILocation(line: 290, column: 22, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1327, file: !3, line: 290, column: 11)
!1439 = !DILocation(line: 291, column: 12, scope: !1438)
!1440 = !DILocation(line: 292, column: 35, scope: !1438)
!1441 = !DILocation(line: 293, column: 9, scope: !1438)
!1442 = !DILocation(line: 296, column: 27, scope: !1327)
!1443 = !DILocation(line: 296, column: 7, scope: !1327)
!1444 = !DILocation(line: 297, column: 5, scope: !1327)
!1445 = !DILocation(line: 108, column: 23, scope: !919, inlinedAt: !1446)
!1446 = distinct !DILocation(line: 300, column: 7, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1328, file: !3, line: 299, column: 5)
!1448 = !DILocation(line: 110, column: 10, scope: !919, inlinedAt: !1446)
!1449 = !DILocation(line: 301, column: 11, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1447, file: !3, line: 301, column: 11)
!1451 = !DILocation(line: 301, column: 11, scope: !1447)
!1452 = !DILocation(line: 110, column: 10, scope: !919, inlinedAt: !1453)
!1453 = distinct !DILocation(line: 303, column: 11, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1450, file: !3, line: 302, column: 9)
!1455 = !DILocation(line: 303, column: 11, scope: !1454)
!1456 = !DILocation(line: 304, column: 12, scope: !1454)
!1457 = !DILocation(line: 305, column: 9, scope: !1454)
!1458 = !DILocation(line: 0, scope: !1317)
!1459 = !DILocation(line: 307, column: 12, scope: !1317)
!1460 = !DILocation(line: 307, column: 23, scope: !1317)
!1461 = !DILocation(line: 307, column: 10, scope: !1317)
!1462 = !DILocation(line: 307, column: 3, scope: !1317)
!1463 = !DILocation(line: 252, column: 31, scope: !1346)
!1464 = !DILocation(line: 252, column: 36, scope: !1346)
!1465 = !DILocation(line: 265, column: 31, scope: !1364)
!1466 = distinct !DISubprogram(name: "vstrtoimax", scope: !3, file: !3, line: 189, type: !1467, isLocal: true, isDefinition: true, scopeLine: 189, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1469)
!1467 = !DISubroutineType(types: !1468)
!1468 = !{!833, !50}
!1469 = !{!1470, !1471, !1472, !1473}
!1470 = !DILocalVariable(name: "s", arg: 1, scope: !1466, file: !3, line: 189, type: !50)
!1471 = !DILocalVariable(name: "end", scope: !1466, file: !3, line: 189, type: !37)
!1472 = !DILocalVariable(name: "val", scope: !1466, file: !3, line: 189, type: !833)
!1473 = !DILocalVariable(name: "ch", scope: !1474, file: !3, line: 189, type: !40)
!1474 = distinct !DILexicalBlock(scope: !1475, file: !3, line: 189, column: 1)
!1475 = distinct !DILexicalBlock(scope: !1466, file: !3, line: 189, column: 1)
!1476 = !DILocation(line: 189, column: 1, scope: !1466)
!1477 = !DILocation(line: 189, column: 1, scope: !1475)
!1478 = !DILocation(line: 189, column: 1, scope: !1474)
!1479 = !DILocation(line: 189, column: 1, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1474, file: !3, line: 189, column: 1)
!1481 = !DILocation(line: 189, column: 1, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1475, file: !3, line: 189, column: 1)
!1483 = !DILocalVariable(name: "nptr", arg: 1, scope: !1484, file: !1210, line: 324, type: !1213)
!1484 = distinct !DISubprogram(name: "strtoimax", scope: !1210, file: !1210, line: 324, type: !1485, isLocal: false, isDefinition: true, scopeLine: 326, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1487)
!1485 = !DISubroutineType(types: !1486)
!1486 = !{!833, !1213, !1214, !39}
!1487 = !{!1483, !1488, !1489}
!1488 = !DILocalVariable(name: "endptr", arg: 2, scope: !1484, file: !1210, line: 324, type: !1214)
!1489 = !DILocalVariable(name: "base", arg: 3, scope: !1484, file: !1210, line: 324, type: !39)
!1490 = !DILocation(line: 324, column: 1, scope: !1484, inlinedAt: !1491)
!1491 = distinct !DILocation(line: 189, column: 1, scope: !1482)
!1492 = !DILocation(line: 327, column: 10, scope: !1484, inlinedAt: !1491)
!1493 = distinct !DISubprogram(name: "verify_numeric", scope: !3, file: !3, line: 145, type: !1494, isLocal: true, isDefinition: true, scopeLine: 146, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1496)
!1494 = !DISubroutineType(types: !1495)
!1495 = !{null, !50, !50}
!1496 = !{!1497, !1498}
!1497 = !DILocalVariable(name: "s", arg: 1, scope: !1493, file: !3, line: 145, type: !50)
!1498 = !DILocalVariable(name: "end", arg: 2, scope: !1493, file: !3, line: 145, type: !50)
!1499 = !DILocation(line: 145, column: 29, scope: !1493)
!1500 = !DILocation(line: 145, column: 44, scope: !1493)
!1501 = !DILocation(line: 147, column: 7, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1493, file: !3, line: 147, column: 7)
!1503 = !DILocation(line: 147, column: 7, scope: !1493)
!1504 = !DILocation(line: 149, column: 30, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1502, file: !3, line: 148, column: 5)
!1506 = !DILocation(line: 149, column: 7, scope: !1505)
!1507 = !DILocation(line: 151, column: 5, scope: !1505)
!1508 = !DILocation(line: 152, column: 12, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1502, file: !3, line: 152, column: 12)
!1510 = !DILocation(line: 152, column: 12, scope: !1502)
!1511 = !DILocation(line: 154, column: 13, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !1513, file: !3, line: 154, column: 11)
!1513 = distinct !DILexicalBlock(scope: !1509, file: !3, line: 153, column: 5)
!1514 = !DILocation(line: 154, column: 11, scope: !1513)
!1515 = !DILocation(line: 155, column: 22, scope: !1512)
!1516 = !DILocation(line: 155, column: 57, scope: !1512)
!1517 = !DILocation(line: 155, column: 9, scope: !1512)
!1518 = !DILocation(line: 157, column: 22, scope: !1512)
!1519 = !DILocation(line: 157, column: 63, scope: !1512)
!1520 = !DILocation(line: 157, column: 9, scope: !1512)
!1521 = !DILocation(line: 160, column: 1, scope: !1493)
!1522 = distinct !DISubprogram(name: "c_strtold", scope: !86, file: !86, line: 66, type: !1523, isLocal: false, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: true, unit: !60, retainedNodes: !1525)
!1523 = !DISubroutineType(types: !1524)
!1524 = !{!1128, !50, !184}
!1525 = !{!1526, !1527, !1528, !1529}
!1526 = !DILocalVariable(name: "nptr", arg: 1, scope: !1522, file: !86, line: 66, type: !50)
!1527 = !DILocalVariable(name: "endptr", arg: 2, scope: !1522, file: !86, line: 66, type: !184)
!1528 = !DILocalVariable(name: "r", scope: !1522, file: !86, line: 68, type: !1128)
!1529 = !DILocalVariable(name: "locale", scope: !1522, file: !86, line: 72, type: !63)
!1530 = !DILocation(line: 66, column: 23, scope: !1522)
!1531 = !DILocation(line: 66, column: 36, scope: !1522)
!1532 = !DILocation(line: 58, column: 8, scope: !1533, inlinedAt: !1537)
!1533 = distinct !DILexicalBlock(scope: !1534, file: !86, line: 58, column: 7)
!1534 = distinct !DISubprogram(name: "c_locale", scope: !86, file: !86, line: 56, type: !1535, isLocal: true, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !60, retainedNodes: !56)
!1535 = !DISubroutineType(types: !1536)
!1536 = !{!63}
!1537 = distinct !DILocation(line: 72, column: 21, scope: !1522)
!1538 = !DILocation(line: 58, column: 7, scope: !1534, inlinedAt: !1537)
!1539 = !DILocation(line: 59, column: 22, scope: !1533, inlinedAt: !1537)
!1540 = !DILocation(line: 59, column: 20, scope: !1533, inlinedAt: !1537)
!1541 = !DILocation(line: 59, column: 5, scope: !1533, inlinedAt: !1537)
!1542 = !DILocation(line: 60, column: 10, scope: !1534, inlinedAt: !1537)
!1543 = !DILocation(line: 72, column: 12, scope: !1522)
!1544 = !DILocation(line: 73, column: 8, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1522, file: !86, line: 73, column: 7)
!1546 = !DILocation(line: 73, column: 7, scope: !1522)
!1547 = !DILocation(line: 75, column: 11, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1549, file: !86, line: 75, column: 11)
!1549 = distinct !DILexicalBlock(scope: !1545, file: !86, line: 74, column: 5)
!1550 = !DILocation(line: 75, column: 11, scope: !1549)
!1551 = !DILocation(line: 76, column: 17, scope: !1548)
!1552 = !DILocation(line: 76, column: 9, scope: !1548)
!1553 = !DILocation(line: 80, column: 7, scope: !1522)
!1554 = !DILocation(line: 68, column: 10, scope: !1522)
!1555 = !DILocation(line: 111, column: 3, scope: !1522)
!1556 = !DILocation(line: 0, scope: !1549)
!1557 = !DILocation(line: 112, column: 1, scope: !1522)
!1558 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !95, file: !95, line: 51, type: !727, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !90, retainedNodes: !1559)
!1559 = !{!1560}
!1560 = !DILocalVariable(name: "file", arg: 1, scope: !1558, file: !95, line: 51, type: !50)
!1561 = !DILocation(line: 51, column: 41, scope: !1558)
!1562 = !DILocation(line: 53, column: 13, scope: !1558)
!1563 = !DILocation(line: 54, column: 1, scope: !1558)
!1564 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !95, file: !95, line: 88, type: !1565, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !90, retainedNodes: !1567)
!1565 = !DISubroutineType(types: !1566)
!1566 = !{null, !46}
!1567 = !{!1568}
!1568 = !DILocalVariable(name: "ignore", arg: 1, scope: !1564, file: !95, line: 88, type: !46)
!1569 = !DILocation(line: 88, column: 37, scope: !1564)
!1570 = !DILocation(line: 90, column: 16, scope: !1564)
!1571 = !DILocation(line: 91, column: 1, scope: !1564)
!1572 = distinct !DISubprogram(name: "close_stdout", scope: !95, file: !95, line: 117, type: !1573, isLocal: false, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: true, unit: !90, retainedNodes: !1575)
!1573 = !DISubroutineType(types: !1574)
!1574 = !{null}
!1575 = !{!1576}
!1576 = !DILocalVariable(name: "write_error", scope: !1577, file: !95, line: 122, type: !50)
!1577 = distinct !DILexicalBlock(scope: !1578, file: !95, line: 121, column: 5)
!1578 = distinct !DILexicalBlock(scope: !1572, file: !95, line: 119, column: 7)
!1579 = !DILocation(line: 119, column: 21, scope: !1578)
!1580 = !DILocation(line: 119, column: 7, scope: !1578)
!1581 = !DILocation(line: 119, column: 29, scope: !1578)
!1582 = !DILocation(line: 120, column: 7, scope: !1578)
!1583 = !DILocation(line: 120, column: 12, scope: !1578)
!1584 = !{i8 0, i8 2}
!1585 = !DILocation(line: 120, column: 25, scope: !1578)
!1586 = !DILocation(line: 120, column: 28, scope: !1578)
!1587 = !DILocation(line: 120, column: 34, scope: !1578)
!1588 = !DILocation(line: 119, column: 7, scope: !1572)
!1589 = !DILocation(line: 122, column: 33, scope: !1577)
!1590 = !DILocation(line: 122, column: 19, scope: !1577)
!1591 = !DILocation(line: 123, column: 11, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1577, file: !95, line: 123, column: 11)
!1593 = !DILocation(line: 0, scope: !1592)
!1594 = !DILocation(line: 123, column: 11, scope: !1577)
!1595 = !DILocation(line: 124, column: 36, scope: !1592)
!1596 = !DILocation(line: 124, column: 9, scope: !1592)
!1597 = !DILocation(line: 127, column: 9, scope: !1592)
!1598 = !DILocation(line: 129, column: 14, scope: !1577)
!1599 = !DILocation(line: 129, column: 7, scope: !1577)
!1600 = !DILocation(line: 134, column: 42, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1572, file: !95, line: 134, column: 7)
!1602 = !DILocation(line: 134, column: 28, scope: !1601)
!1603 = !DILocation(line: 134, column: 50, scope: !1601)
!1604 = !DILocation(line: 134, column: 7, scope: !1572)
!1605 = !DILocation(line: 135, column: 12, scope: !1601)
!1606 = !DILocation(line: 135, column: 5, scope: !1601)
!1607 = !DILocation(line: 136, column: 1, scope: !1572)
!1608 = distinct !DISubprogram(name: "set_program_name", scope: !109, file: !109, line: 39, type: !727, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !105, retainedNodes: !1609)
!1609 = !{!1610, !1611, !1612}
!1610 = !DILocalVariable(name: "argv0", arg: 1, scope: !1608, file: !109, line: 39, type: !50)
!1611 = !DILocalVariable(name: "slash", scope: !1608, file: !109, line: 46, type: !50)
!1612 = !DILocalVariable(name: "base", scope: !1608, file: !109, line: 47, type: !50)
!1613 = !DILocation(line: 39, column: 31, scope: !1608)
!1614 = !DILocation(line: 51, column: 13, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1608, file: !109, line: 51, column: 7)
!1616 = !DILocation(line: 51, column: 7, scope: !1608)
!1617 = !DILocation(line: 55, column: 14, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1615, file: !109, line: 52, column: 5)
!1619 = !DILocation(line: 54, column: 7, scope: !1618)
!1620 = !DILocation(line: 56, column: 7, scope: !1618)
!1621 = !DILocation(line: 59, column: 11, scope: !1608)
!1622 = !DILocation(line: 46, column: 15, scope: !1608)
!1623 = !DILocation(line: 60, column: 17, scope: !1608)
!1624 = !DILocation(line: 60, column: 33, scope: !1608)
!1625 = !DILocation(line: 60, column: 11, scope: !1608)
!1626 = !DILocation(line: 47, column: 15, scope: !1608)
!1627 = !DILocation(line: 61, column: 12, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1608, file: !109, line: 61, column: 7)
!1629 = !DILocation(line: 61, column: 20, scope: !1628)
!1630 = !DILocation(line: 61, column: 25, scope: !1628)
!1631 = !DILocation(line: 61, column: 42, scope: !1628)
!1632 = !DILocation(line: 61, column: 28, scope: !1628)
!1633 = !DILocation(line: 61, column: 61, scope: !1628)
!1634 = !DILocation(line: 61, column: 7, scope: !1608)
!1635 = !DILocation(line: 64, column: 11, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1637, file: !109, line: 64, column: 11)
!1637 = distinct !DILexicalBlock(scope: !1628, file: !109, line: 62, column: 5)
!1638 = !DILocation(line: 64, column: 36, scope: !1636)
!1639 = !DILocation(line: 64, column: 11, scope: !1637)
!1640 = !DILocation(line: 66, column: 24, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1636, file: !109, line: 65, column: 9)
!1642 = !DILocation(line: 70, column: 41, scope: !1641)
!1643 = !DILocation(line: 72, column: 9, scope: !1641)
!1644 = !DILocation(line: 84, column: 16, scope: !1608)
!1645 = !DILocation(line: 90, column: 27, scope: !1608)
!1646 = !DILocation(line: 92, column: 1, scope: !1608)
!1647 = distinct !DISubprogram(name: "clone_quoting_options", scope: !127, file: !127, line: 122, type: !1648, isLocal: false, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, unit: !112, retainedNodes: !1651)
!1648 = !DISubroutineType(types: !1649)
!1649 = !{!1650, !1650}
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!1651 = !{!1652, !1653, !1654}
!1652 = !DILocalVariable(name: "o", arg: 1, scope: !1647, file: !127, line: 122, type: !1650)
!1653 = !DILocalVariable(name: "e", scope: !1647, file: !127, line: 124, type: !39)
!1654 = !DILocalVariable(name: "p", scope: !1647, file: !127, line: 125, type: !1650)
!1655 = !DILocation(line: 122, column: 48, scope: !1647)
!1656 = !DILocation(line: 124, column: 11, scope: !1647)
!1657 = !DILocation(line: 124, column: 7, scope: !1647)
!1658 = !DILocation(line: 125, column: 40, scope: !1647)
!1659 = !DILocation(line: 125, column: 31, scope: !1647)
!1660 = !DILocation(line: 125, column: 27, scope: !1647)
!1661 = !DILocation(line: 127, column: 9, scope: !1647)
!1662 = !DILocation(line: 128, column: 3, scope: !1647)
!1663 = distinct !DISubprogram(name: "get_quoting_style", scope: !127, file: !127, line: 133, type: !1664, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !112, retainedNodes: !1668)
!1664 = !DISubroutineType(types: !1665)
!1665 = !{!5, !1666}
!1666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1667, size: 64)
!1667 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !134)
!1668 = !{!1669}
!1669 = !DILocalVariable(name: "o", arg: 1, scope: !1663, file: !127, line: 133, type: !1666)
!1670 = !DILocation(line: 133, column: 50, scope: !1663)
!1671 = !DILocation(line: 135, column: 11, scope: !1663)
!1672 = !DILocation(line: 135, column: 46, scope: !1663)
!1673 = !{!1674, !754, i64 0}
!1674 = !{!"quoting_options", !754, i64 0, !930, i64 4, !754, i64 8, !753, i64 40, !753, i64 48}
!1675 = !DILocation(line: 135, column: 3, scope: !1663)
!1676 = distinct !DISubprogram(name: "set_quoting_style", scope: !127, file: !127, line: 141, type: !1677, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: true, unit: !112, retainedNodes: !1679)
!1677 = !DISubroutineType(types: !1678)
!1678 = !{null, !1650, !5}
!1679 = !{!1680, !1681}
!1680 = !DILocalVariable(name: "o", arg: 1, scope: !1676, file: !127, line: 141, type: !1650)
!1681 = !DILocalVariable(name: "s", arg: 2, scope: !1676, file: !127, line: 141, type: !5)
!1682 = !DILocation(line: 141, column: 44, scope: !1676)
!1683 = !DILocation(line: 141, column: 66, scope: !1676)
!1684 = !DILocation(line: 143, column: 4, scope: !1676)
!1685 = !DILocation(line: 143, column: 39, scope: !1676)
!1686 = !DILocation(line: 143, column: 45, scope: !1676)
!1687 = !DILocation(line: 144, column: 1, scope: !1676)
!1688 = distinct !DISubprogram(name: "set_char_quoting", scope: !127, file: !127, line: 152, type: !1689, isLocal: false, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, unit: !112, retainedNodes: !1691)
!1689 = !DISubroutineType(types: !1690)
!1690 = !{!39, !1650, !38, !39}
!1691 = !{!1692, !1693, !1694, !1695, !1696, !1698, !1699}
!1692 = !DILocalVariable(name: "o", arg: 1, scope: !1688, file: !127, line: 152, type: !1650)
!1693 = !DILocalVariable(name: "c", arg: 2, scope: !1688, file: !127, line: 152, type: !38)
!1694 = !DILocalVariable(name: "i", arg: 3, scope: !1688, file: !127, line: 152, type: !39)
!1695 = !DILocalVariable(name: "uc", scope: !1688, file: !127, line: 154, type: !40)
!1696 = !DILocalVariable(name: "p", scope: !1688, file: !127, line: 155, type: !1697)
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1698 = !DILocalVariable(name: "shift", scope: !1688, file: !127, line: 157, type: !39)
!1699 = !DILocalVariable(name: "r", scope: !1688, file: !127, line: 158, type: !39)
!1700 = !DILocation(line: 152, column: 43, scope: !1688)
!1701 = !DILocation(line: 152, column: 51, scope: !1688)
!1702 = !DILocation(line: 152, column: 58, scope: !1688)
!1703 = !DILocation(line: 154, column: 17, scope: !1688)
!1704 = !DILocation(line: 156, column: 6, scope: !1688)
!1705 = !DILocation(line: 156, column: 62, scope: !1688)
!1706 = !DILocation(line: 156, column: 57, scope: !1688)
!1707 = !DILocation(line: 155, column: 17, scope: !1688)
!1708 = !DILocation(line: 157, column: 15, scope: !1688)
!1709 = !DILocation(line: 157, column: 7, scope: !1688)
!1710 = !DILocation(line: 158, column: 12, scope: !1688)
!1711 = !DILocation(line: 158, column: 15, scope: !1688)
!1712 = !DILocation(line: 158, column: 25, scope: !1688)
!1713 = !DILocation(line: 158, column: 7, scope: !1688)
!1714 = !DILocation(line: 159, column: 13, scope: !1688)
!1715 = !DILocation(line: 159, column: 18, scope: !1688)
!1716 = !DILocation(line: 159, column: 23, scope: !1688)
!1717 = !DILocation(line: 159, column: 6, scope: !1688)
!1718 = !DILocation(line: 160, column: 3, scope: !1688)
!1719 = distinct !DISubprogram(name: "set_quoting_flags", scope: !127, file: !127, line: 168, type: !1720, isLocal: false, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true, unit: !112, retainedNodes: !1722)
!1720 = !DISubroutineType(types: !1721)
!1721 = !{!39, !1650, !39}
!1722 = !{!1723, !1724, !1725}
!1723 = !DILocalVariable(name: "o", arg: 1, scope: !1719, file: !127, line: 168, type: !1650)
!1724 = !DILocalVariable(name: "i", arg: 2, scope: !1719, file: !127, line: 168, type: !39)
!1725 = !DILocalVariable(name: "r", scope: !1719, file: !127, line: 170, type: !39)
!1726 = !DILocation(line: 168, column: 44, scope: !1719)
!1727 = !DILocation(line: 168, column: 51, scope: !1719)
!1728 = !DILocation(line: 171, column: 8, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !1719, file: !127, line: 171, column: 7)
!1730 = !DILocation(line: 171, column: 7, scope: !1719)
!1731 = !DILocation(line: 173, column: 10, scope: !1719)
!1732 = !{!1674, !930, i64 4}
!1733 = !DILocation(line: 170, column: 7, scope: !1719)
!1734 = !DILocation(line: 174, column: 12, scope: !1719)
!1735 = !DILocation(line: 175, column: 3, scope: !1719)
!1736 = distinct !DISubprogram(name: "set_custom_quoting", scope: !127, file: !127, line: 179, type: !1737, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !112, retainedNodes: !1739)
!1737 = !DISubroutineType(types: !1738)
!1738 = !{null, !1650, !50, !50}
!1739 = !{!1740, !1741, !1742}
!1740 = !DILocalVariable(name: "o", arg: 1, scope: !1736, file: !127, line: 179, type: !1650)
!1741 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1736, file: !127, line: 180, type: !50)
!1742 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1736, file: !127, line: 180, type: !50)
!1743 = !DILocation(line: 179, column: 45, scope: !1736)
!1744 = !DILocation(line: 180, column: 33, scope: !1736)
!1745 = !DILocation(line: 180, column: 57, scope: !1736)
!1746 = !DILocation(line: 182, column: 8, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !1736, file: !127, line: 182, column: 7)
!1748 = !DILocation(line: 182, column: 7, scope: !1736)
!1749 = !DILocation(line: 184, column: 6, scope: !1736)
!1750 = !DILocation(line: 184, column: 12, scope: !1736)
!1751 = !DILocation(line: 185, column: 8, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1736, file: !127, line: 185, column: 7)
!1753 = !DILocation(line: 185, column: 23, scope: !1752)
!1754 = !DILocation(line: 185, column: 19, scope: !1752)
!1755 = !DILocation(line: 186, column: 5, scope: !1752)
!1756 = !DILocation(line: 187, column: 6, scope: !1736)
!1757 = !DILocation(line: 187, column: 17, scope: !1736)
!1758 = !{!1674, !753, i64 40}
!1759 = !DILocation(line: 188, column: 6, scope: !1736)
!1760 = !DILocation(line: 188, column: 18, scope: !1736)
!1761 = !{!1674, !753, i64 48}
!1762 = !DILocation(line: 189, column: 1, scope: !1736)
!1763 = distinct !DISubprogram(name: "quotearg_buffer", scope: !127, file: !127, line: 784, type: !1764, isLocal: false, isDefinition: true, scopeLine: 787, flags: DIFlagPrototyped, isOptimized: true, unit: !112, retainedNodes: !1766)
!1764 = !DISubroutineType(types: !1765)
!1765 = !{!121, !37, !121, !50, !121, !1666}
!1766 = !{!1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774}
!1767 = !DILocalVariable(name: "buffer", arg: 1, scope: !1763, file: !127, line: 784, type: !37)
!1768 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1763, file: !127, line: 784, type: !121)
!1769 = !DILocalVariable(name: "arg", arg: 3, scope: !1763, file: !127, line: 785, type: !50)
!1770 = !DILocalVariable(name: "argsize", arg: 4, scope: !1763, file: !127, line: 785, type: !121)
!1771 = !DILocalVariable(name: "o", arg: 5, scope: !1763, file: !127, line: 786, type: !1666)
!1772 = !DILocalVariable(name: "p", scope: !1763, file: !127, line: 788, type: !1666)
!1773 = !DILocalVariable(name: "e", scope: !1763, file: !127, line: 789, type: !39)
!1774 = !DILocalVariable(name: "r", scope: !1763, file: !127, line: 790, type: !121)
!1775 = !DILocation(line: 784, column: 24, scope: !1763)
!1776 = !DILocation(line: 784, column: 39, scope: !1763)
!1777 = !DILocation(line: 785, column: 30, scope: !1763)
!1778 = !DILocation(line: 785, column: 42, scope: !1763)
!1779 = !DILocation(line: 786, column: 48, scope: !1763)
!1780 = !DILocation(line: 788, column: 37, scope: !1763)
!1781 = !DILocation(line: 788, column: 33, scope: !1763)
!1782 = !DILocation(line: 789, column: 11, scope: !1763)
!1783 = !DILocation(line: 789, column: 7, scope: !1763)
!1784 = !DILocation(line: 791, column: 43, scope: !1763)
!1785 = !DILocation(line: 791, column: 53, scope: !1763)
!1786 = !DILocation(line: 791, column: 60, scope: !1763)
!1787 = !DILocation(line: 792, column: 43, scope: !1763)
!1788 = !DILocation(line: 792, column: 58, scope: !1763)
!1789 = !DILocation(line: 790, column: 14, scope: !1763)
!1790 = !DILocation(line: 790, column: 10, scope: !1763)
!1791 = !DILocation(line: 793, column: 9, scope: !1763)
!1792 = !DILocation(line: 794, column: 3, scope: !1763)
!1793 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !127, file: !127, line: 256, type: !1794, isLocal: true, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: true, unit: !112, retainedNodes: !1798)
!1794 = !DISubroutineType(types: !1795)
!1795 = !{!121, !37, !121, !50, !121, !5, !39, !1796, !50, !50}
!1796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1797, size: 64)
!1797 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1798 = !{!1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1823, !1824, !1825, !1826, !1827, !1830, !1831, !1849, !1852, !1853, !1860}
!1799 = !DILocalVariable(name: "buffer", arg: 1, scope: !1793, file: !127, line: 256, type: !37)
!1800 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1793, file: !127, line: 256, type: !121)
!1801 = !DILocalVariable(name: "arg", arg: 3, scope: !1793, file: !127, line: 257, type: !50)
!1802 = !DILocalVariable(name: "argsize", arg: 4, scope: !1793, file: !127, line: 257, type: !121)
!1803 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1793, file: !127, line: 258, type: !5)
!1804 = !DILocalVariable(name: "flags", arg: 6, scope: !1793, file: !127, line: 258, type: !39)
!1805 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1793, file: !127, line: 259, type: !1796)
!1806 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1793, file: !127, line: 260, type: !50)
!1807 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1793, file: !127, line: 261, type: !50)
!1808 = !DILocalVariable(name: "i", scope: !1793, file: !127, line: 263, type: !121)
!1809 = !DILocalVariable(name: "len", scope: !1793, file: !127, line: 264, type: !121)
!1810 = !DILocalVariable(name: "orig_buffersize", scope: !1793, file: !127, line: 265, type: !121)
!1811 = !DILocalVariable(name: "quote_string", scope: !1793, file: !127, line: 266, type: !50)
!1812 = !DILocalVariable(name: "quote_string_len", scope: !1793, file: !127, line: 267, type: !121)
!1813 = !DILocalVariable(name: "backslash_escapes", scope: !1793, file: !127, line: 268, type: !46)
!1814 = !DILocalVariable(name: "unibyte_locale", scope: !1793, file: !127, line: 269, type: !46)
!1815 = !DILocalVariable(name: "elide_outer_quotes", scope: !1793, file: !127, line: 270, type: !46)
!1816 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1793, file: !127, line: 271, type: !46)
!1817 = !DILocalVariable(name: "encountered_single_quote", scope: !1793, file: !127, line: 272, type: !46)
!1818 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1793, file: !127, line: 273, type: !46)
!1819 = !DILocalVariable(name: "c", scope: !1820, file: !127, line: 402, type: !40)
!1820 = distinct !DILexicalBlock(scope: !1821, file: !127, line: 401, column: 5)
!1821 = distinct !DILexicalBlock(scope: !1822, file: !127, line: 400, column: 3)
!1822 = distinct !DILexicalBlock(scope: !1793, file: !127, line: 400, column: 3)
!1823 = !DILocalVariable(name: "esc", scope: !1820, file: !127, line: 403, type: !40)
!1824 = !DILocalVariable(name: "is_right_quote", scope: !1820, file: !127, line: 404, type: !46)
!1825 = !DILocalVariable(name: "escaping", scope: !1820, file: !127, line: 405, type: !46)
!1826 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1820, file: !127, line: 406, type: !46)
!1827 = !DILocalVariable(name: "m", scope: !1828, file: !127, line: 610, type: !121)
!1828 = distinct !DILexicalBlock(scope: !1829, file: !127, line: 608, column: 11)
!1829 = distinct !DILexicalBlock(scope: !1820, file: !127, line: 426, column: 9)
!1830 = !DILocalVariable(name: "printable", scope: !1828, file: !127, line: 612, type: !46)
!1831 = !DILocalVariable(name: "mbstate", scope: !1832, file: !127, line: 621, type: !1834)
!1832 = distinct !DILexicalBlock(scope: !1833, file: !127, line: 620, column: 15)
!1833 = distinct !DILexicalBlock(scope: !1828, file: !127, line: 614, column: 17)
!1834 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1835, line: 6, baseType: !1836)
!1835 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1836 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1837, line: 21, baseType: !1838)
!1837 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1838 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1837, line: 13, size: 64, elements: !1839)
!1839 = !{!1840, !1841}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1838, file: !1837, line: 15, baseType: !39, size: 32)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1838, file: !1837, line: 20, baseType: !1842, size: 32, offset: 32)
!1842 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1838, file: !1837, line: 16, size: 32, elements: !1843)
!1843 = !{!1844, !1845}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1842, file: !1837, line: 18, baseType: !7, size: 32)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1842, file: !1837, line: 19, baseType: !1846, size: 32)
!1846 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 32, elements: !1847)
!1847 = !{!1848}
!1848 = !DISubrange(count: 4)
!1849 = !DILocalVariable(name: "w", scope: !1850, file: !127, line: 631, type: !1851)
!1850 = distinct !DILexicalBlock(scope: !1832, file: !127, line: 630, column: 19)
!1851 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !122, line: 90, baseType: !39)
!1852 = !DILocalVariable(name: "bytes", scope: !1850, file: !127, line: 632, type: !121)
!1853 = !DILocalVariable(name: "j", scope: !1854, file: !127, line: 657, type: !121)
!1854 = distinct !DILexicalBlock(scope: !1855, file: !127, line: 656, column: 27)
!1855 = distinct !DILexicalBlock(scope: !1856, file: !127, line: 654, column: 29)
!1856 = distinct !DILexicalBlock(scope: !1857, file: !127, line: 649, column: 23)
!1857 = distinct !DILexicalBlock(scope: !1858, file: !127, line: 641, column: 30)
!1858 = distinct !DILexicalBlock(scope: !1859, file: !127, line: 636, column: 30)
!1859 = distinct !DILexicalBlock(scope: !1850, file: !127, line: 634, column: 25)
!1860 = !DILocalVariable(name: "ilim", scope: !1861, file: !127, line: 684, type: !121)
!1861 = distinct !DILexicalBlock(scope: !1862, file: !127, line: 681, column: 15)
!1862 = distinct !DILexicalBlock(scope: !1828, file: !127, line: 680, column: 17)
!1863 = !DILocation(line: 256, column: 33, scope: !1793)
!1864 = !DILocation(line: 256, column: 48, scope: !1793)
!1865 = !DILocation(line: 257, column: 39, scope: !1793)
!1866 = !DILocation(line: 257, column: 51, scope: !1793)
!1867 = !DILocation(line: 258, column: 46, scope: !1793)
!1868 = !DILocation(line: 258, column: 65, scope: !1793)
!1869 = !DILocation(line: 259, column: 47, scope: !1793)
!1870 = !DILocation(line: 260, column: 39, scope: !1793)
!1871 = !DILocation(line: 261, column: 39, scope: !1793)
!1872 = !DILocation(line: 264, column: 10, scope: !1793)
!1873 = !DILocation(line: 265, column: 10, scope: !1793)
!1874 = !DILocation(line: 266, column: 15, scope: !1793)
!1875 = !DILocation(line: 267, column: 10, scope: !1793)
!1876 = !DILocation(line: 268, column: 8, scope: !1793)
!1877 = !DILocation(line: 269, column: 25, scope: !1793)
!1878 = !DILocation(line: 269, column: 36, scope: !1793)
!1879 = !DILocation(line: 270, column: 8, scope: !1793)
!1880 = !DILocation(line: 271, column: 8, scope: !1793)
!1881 = !DILocation(line: 272, column: 8, scope: !1793)
!1882 = !DILocation(line: 273, column: 8, scope: !1793)
!1883 = !DILocation(line: 273, column: 3, scope: !1793)
!1884 = !DILocation(line: 0, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1793, file: !127, line: 317, column: 5)
!1886 = !DILocation(line: 316, column: 3, scope: !1793)
!1887 = !DILocation(line: 323, column: 11, scope: !1885)
!1888 = !DILocation(line: 323, column: 12, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !1885, file: !127, line: 323, column: 11)
!1890 = !DILocation(line: 324, column: 9, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1892, file: !127, line: 324, column: 9)
!1892 = distinct !DILexicalBlock(scope: !1889, file: !127, line: 324, column: 9)
!1893 = !DILocation(line: 324, column: 9, scope: !1892)
!1894 = !DILocation(line: 362, column: 26, scope: !1895)
!1895 = distinct !DILexicalBlock(scope: !1896, file: !127, line: 340, column: 11)
!1896 = distinct !DILexicalBlock(scope: !1897, file: !127, line: 339, column: 13)
!1897 = distinct !DILexicalBlock(scope: !1885, file: !127, line: 338, column: 7)
!1898 = !DILocation(line: 363, column: 27, scope: !1895)
!1899 = !DILocation(line: 364, column: 11, scope: !1895)
!1900 = !DILocation(line: 365, column: 14, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1897, file: !127, line: 365, column: 13)
!1902 = !DILocation(line: 365, column: 13, scope: !1897)
!1903 = !DILocation(line: 366, column: 43, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1905, file: !127, line: 366, column: 11)
!1905 = distinct !DILexicalBlock(scope: !1901, file: !127, line: 366, column: 11)
!1906 = !DILocation(line: 366, column: 11, scope: !1905)
!1907 = !DILocation(line: 367, column: 13, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1909, file: !127, line: 367, column: 13)
!1909 = distinct !DILexicalBlock(scope: !1904, file: !127, line: 367, column: 13)
!1910 = !DILocation(line: 367, column: 13, scope: !1909)
!1911 = !DILocation(line: 366, column: 70, scope: !1904)
!1912 = distinct !{!1912, !1906, !1913}
!1913 = !DILocation(line: 367, column: 13, scope: !1905)
!1914 = !DILocation(line: 370, column: 28, scope: !1897)
!1915 = !DILocation(line: 372, column: 7, scope: !1885)
!1916 = !DILocation(line: 376, column: 7, scope: !1885)
!1917 = !DILocation(line: 379, column: 7, scope: !1885)
!1918 = !DILocation(line: 381, column: 12, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1885, file: !127, line: 381, column: 11)
!1920 = !DILocation(line: 381, column: 11, scope: !1885)
!1921 = !DILocation(line: 0, scope: !1919)
!1922 = !DILocation(line: 386, column: 12, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1885, file: !127, line: 386, column: 11)
!1924 = !DILocation(line: 386, column: 11, scope: !1885)
!1925 = !DILocation(line: 387, column: 9, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1927, file: !127, line: 387, column: 9)
!1927 = distinct !DILexicalBlock(scope: !1923, file: !127, line: 387, column: 9)
!1928 = !DILocation(line: 387, column: 9, scope: !1927)
!1929 = !DILocation(line: 394, column: 7, scope: !1885)
!1930 = !DILocation(line: 397, column: 7, scope: !1885)
!1931 = !DILocation(line: 0, scope: !1793)
!1932 = !DILocation(line: 263, column: 10, scope: !1793)
!1933 = !DILocation(line: 400, column: 8, scope: !1822)
!1934 = !DILocation(line: 0, scope: !1821)
!1935 = !DILocation(line: 400, column: 27, scope: !1821)
!1936 = !DILocation(line: 400, column: 19, scope: !1821)
!1937 = !DILocation(line: 400, column: 41, scope: !1821)
!1938 = !DILocation(line: 400, column: 48, scope: !1821)
!1939 = !DILocation(line: 400, column: 3, scope: !1822)
!1940 = !DILocation(line: 400, column: 60, scope: !1821)
!1941 = !DILocation(line: 404, column: 12, scope: !1820)
!1942 = !DILocation(line: 405, column: 12, scope: !1820)
!1943 = !DILocation(line: 406, column: 12, scope: !1820)
!1944 = !DILocation(line: 409, column: 11, scope: !1945)
!1945 = distinct !DILexicalBlock(scope: !1820, file: !127, line: 408, column: 11)
!1946 = !DILocation(line: 411, column: 17, scope: !1945)
!1947 = !DILocation(line: 412, column: 39, scope: !1945)
!1948 = !DILocation(line: 416, column: 32, scope: !1945)
!1949 = !DILocation(line: 412, column: 19, scope: !1945)
!1950 = !DILocation(line: 412, column: 15, scope: !1945)
!1951 = !DILocation(line: 417, column: 11, scope: !1945)
!1952 = !DILocation(line: 417, column: 26, scope: !1945)
!1953 = !DILocation(line: 417, column: 14, scope: !1945)
!1954 = !DILocation(line: 417, column: 63, scope: !1945)
!1955 = !DILocation(line: 408, column: 11, scope: !1820)
!1956 = !DILocation(line: 0, scope: !1820)
!1957 = !DILocation(line: 424, column: 11, scope: !1820)
!1958 = !DILocation(line: 402, column: 21, scope: !1820)
!1959 = !DILocation(line: 425, column: 7, scope: !1820)
!1960 = !DILocation(line: 428, column: 15, scope: !1829)
!1961 = !DILocation(line: 430, column: 15, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1963, file: !127, line: 430, column: 15)
!1963 = distinct !DILexicalBlock(scope: !1964, file: !127, line: 429, column: 13)
!1964 = distinct !DILexicalBlock(scope: !1829, file: !127, line: 428, column: 15)
!1965 = !DILocation(line: 430, column: 15, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1962, file: !127, line: 430, column: 15)
!1967 = !DILocation(line: 430, column: 15, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1969, file: !127, line: 430, column: 15)
!1969 = distinct !DILexicalBlock(scope: !1970, file: !127, line: 430, column: 15)
!1970 = distinct !DILexicalBlock(scope: !1966, file: !127, line: 430, column: 15)
!1971 = !DILocation(line: 430, column: 15, scope: !1969)
!1972 = !DILocation(line: 430, column: 15, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !1974, file: !127, line: 430, column: 15)
!1974 = distinct !DILexicalBlock(scope: !1970, file: !127, line: 430, column: 15)
!1975 = !DILocation(line: 430, column: 15, scope: !1974)
!1976 = !DILocation(line: 430, column: 15, scope: !1977)
!1977 = distinct !DILexicalBlock(scope: !1978, file: !127, line: 430, column: 15)
!1978 = distinct !DILexicalBlock(scope: !1970, file: !127, line: 430, column: 15)
!1979 = !DILocation(line: 430, column: 15, scope: !1978)
!1980 = !DILocation(line: 430, column: 15, scope: !1970)
!1981 = !DILocation(line: 430, column: 15, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1983, file: !127, line: 430, column: 15)
!1983 = distinct !DILexicalBlock(scope: !1962, file: !127, line: 430, column: 15)
!1984 = !DILocation(line: 430, column: 15, scope: !1983)
!1985 = !DILocation(line: 438, column: 19, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1963, file: !127, line: 437, column: 19)
!1987 = !DILocation(line: 438, column: 24, scope: !1986)
!1988 = !DILocation(line: 438, column: 28, scope: !1986)
!1989 = !DILocation(line: 438, column: 38, scope: !1986)
!1990 = !DILocation(line: 438, column: 48, scope: !1986)
!1991 = !DILocation(line: 438, column: 59, scope: !1986)
!1992 = !DILocation(line: 440, column: 19, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1994, file: !127, line: 440, column: 19)
!1994 = distinct !DILexicalBlock(scope: !1995, file: !127, line: 440, column: 19)
!1995 = distinct !DILexicalBlock(scope: !1986, file: !127, line: 439, column: 17)
!1996 = !DILocation(line: 440, column: 19, scope: !1994)
!1997 = !DILocation(line: 441, column: 19, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1999, file: !127, line: 441, column: 19)
!1999 = distinct !DILexicalBlock(scope: !1995, file: !127, line: 441, column: 19)
!2000 = !DILocation(line: 441, column: 19, scope: !1999)
!2001 = !DILocation(line: 442, column: 17, scope: !1995)
!2002 = !DILocation(line: 449, column: 20, scope: !1964)
!2003 = !DILocation(line: 454, column: 11, scope: !1829)
!2004 = !DILocation(line: 457, column: 19, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !1829, file: !127, line: 455, column: 13)
!2006 = !DILocation(line: 463, column: 19, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !2005, file: !127, line: 462, column: 19)
!2008 = !DILocation(line: 463, column: 24, scope: !2007)
!2009 = !DILocation(line: 463, column: 28, scope: !2007)
!2010 = !DILocation(line: 463, column: 38, scope: !2007)
!2011 = !DILocation(line: 463, column: 47, scope: !2007)
!2012 = !DILocation(line: 463, column: 41, scope: !2007)
!2013 = !DILocation(line: 463, column: 52, scope: !2007)
!2014 = !DILocation(line: 462, column: 19, scope: !2005)
!2015 = !DILocation(line: 464, column: 25, scope: !2007)
!2016 = !DILocation(line: 464, column: 17, scope: !2007)
!2017 = !DILocation(line: 471, column: 25, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !2007, file: !127, line: 465, column: 19)
!2019 = !DILocation(line: 475, column: 21, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !2021, file: !127, line: 475, column: 21)
!2021 = distinct !DILexicalBlock(scope: !2018, file: !127, line: 475, column: 21)
!2022 = !DILocation(line: 475, column: 21, scope: !2021)
!2023 = !DILocation(line: 476, column: 21, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !2025, file: !127, line: 476, column: 21)
!2025 = distinct !DILexicalBlock(scope: !2018, file: !127, line: 476, column: 21)
!2026 = !DILocation(line: 476, column: 21, scope: !2025)
!2027 = !DILocation(line: 477, column: 21, scope: !2028)
!2028 = distinct !DILexicalBlock(scope: !2029, file: !127, line: 477, column: 21)
!2029 = distinct !DILexicalBlock(scope: !2018, file: !127, line: 477, column: 21)
!2030 = !DILocation(line: 477, column: 21, scope: !2029)
!2031 = !DILocation(line: 478, column: 21, scope: !2032)
!2032 = distinct !DILexicalBlock(scope: !2033, file: !127, line: 478, column: 21)
!2033 = distinct !DILexicalBlock(scope: !2018, file: !127, line: 478, column: 21)
!2034 = !DILocation(line: 478, column: 21, scope: !2033)
!2035 = !DILocation(line: 479, column: 21, scope: !2018)
!2036 = !DILocation(line: 403, column: 21, scope: !1820)
!2037 = !DILocation(line: 492, column: 31, scope: !1829)
!2038 = !DILocation(line: 493, column: 31, scope: !1829)
!2039 = !DILocation(line: 495, column: 31, scope: !1829)
!2040 = !DILocation(line: 496, column: 31, scope: !1829)
!2041 = !DILocation(line: 497, column: 31, scope: !1829)
!2042 = !DILocation(line: 500, column: 15, scope: !1829)
!2043 = !DILocation(line: 502, column: 19, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !2045, file: !127, line: 501, column: 13)
!2045 = distinct !DILexicalBlock(scope: !1829, file: !127, line: 500, column: 15)
!2046 = !DILocation(line: 509, column: 33, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !1829, file: !127, line: 509, column: 15)
!2048 = !DILocation(line: 0, scope: !1829)
!2049 = !DILocation(line: 514, column: 15, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !1829, file: !127, line: 513, column: 15)
!2051 = !DILocation(line: 518, column: 15, scope: !1829)
!2052 = !DILocation(line: 526, column: 26, scope: !2053)
!2053 = distinct !DILexicalBlock(scope: !1829, file: !127, line: 526, column: 15)
!2054 = !DILocation(line: 526, column: 15, scope: !1829)
!2055 = !DILocation(line: 526, column: 40, scope: !2053)
!2056 = !DILocation(line: 526, column: 47, scope: !2053)
!2057 = !DILocation(line: 530, column: 17, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !1829, file: !127, line: 530, column: 15)
!2059 = !DILocation(line: 526, column: 18, scope: !2053)
!2060 = !DILocation(line: 526, column: 65, scope: !2053)
!2061 = !DILocation(line: 530, column: 15, scope: !1829)
!2062 = !DILocation(line: 535, column: 11, scope: !1829)
!2063 = !DILocation(line: 549, column: 15, scope: !2064)
!2064 = distinct !DILexicalBlock(scope: !1829, file: !127, line: 548, column: 15)
!2065 = !DILocation(line: 556, column: 15, scope: !1829)
!2066 = !DILocation(line: 558, column: 19, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !2068, file: !127, line: 557, column: 13)
!2068 = distinct !DILexicalBlock(scope: !1829, file: !127, line: 556, column: 15)
!2069 = !DILocation(line: 561, column: 19, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !2067, file: !127, line: 561, column: 19)
!2071 = !DILocation(line: 561, column: 35, scope: !2070)
!2072 = !DILocation(line: 561, column: 30, scope: !2070)
!2073 = !DILocation(line: 570, column: 15, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !2075, file: !127, line: 570, column: 15)
!2075 = distinct !DILexicalBlock(scope: !2067, file: !127, line: 570, column: 15)
!2076 = !DILocation(line: 570, column: 15, scope: !2075)
!2077 = !DILocation(line: 571, column: 15, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !2079, file: !127, line: 571, column: 15)
!2079 = distinct !DILexicalBlock(scope: !2067, file: !127, line: 571, column: 15)
!2080 = !DILocation(line: 571, column: 15, scope: !2079)
!2081 = !DILocation(line: 572, column: 15, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !2083, file: !127, line: 572, column: 15)
!2083 = distinct !DILexicalBlock(scope: !2067, file: !127, line: 572, column: 15)
!2084 = !DILocation(line: 572, column: 15, scope: !2083)
!2085 = !DILocation(line: 574, column: 13, scope: !2067)
!2086 = !DILocation(line: 614, column: 17, scope: !1828)
!2087 = !DILocation(line: 610, column: 20, scope: !1828)
!2088 = !DILocation(line: 617, column: 29, scope: !2089)
!2089 = distinct !DILexicalBlock(scope: !1833, file: !127, line: 615, column: 15)
!2090 = !DILocation(line: 617, column: 27, scope: !2089)
!2091 = !DILocation(line: 612, column: 18, scope: !1828)
!2092 = !DILocation(line: 618, column: 15, scope: !2089)
!2093 = !DILocation(line: 621, column: 17, scope: !1832)
!2094 = !DILocation(line: 622, column: 17, scope: !1832)
!2095 = !DILocation(line: 626, column: 29, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !1832, file: !127, line: 626, column: 21)
!2097 = !DILocation(line: 626, column: 21, scope: !1832)
!2098 = !DILocation(line: 627, column: 29, scope: !2096)
!2099 = !DILocation(line: 627, column: 19, scope: !2096)
!2100 = !DILocation(line: 0, scope: !1945)
!2101 = !DILocation(line: 629, column: 17, scope: !1832)
!2102 = !DILocation(line: 624, column: 19, scope: !1832)
!2103 = !DILocation(line: 625, column: 27, scope: !1832)
!2104 = !DILocation(line: 631, column: 21, scope: !1850)
!2105 = !DILocation(line: 632, column: 56, scope: !1850)
!2106 = !DILocation(line: 632, column: 50, scope: !1850)
!2107 = !DILocation(line: 633, column: 53, scope: !1850)
!2108 = !DILocation(line: 621, column: 27, scope: !1832)
!2109 = !DILocation(line: 631, column: 29, scope: !1850)
!2110 = !DILocation(line: 632, column: 36, scope: !1850)
!2111 = !DILocation(line: 632, column: 28, scope: !1850)
!2112 = !DILocation(line: 634, column: 25, scope: !1850)
!2113 = !DILocation(line: 644, column: 38, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !1857, file: !127, line: 642, column: 23)
!2115 = !DILocation(line: 644, column: 48, scope: !2114)
!2116 = !DILocation(line: 644, column: 51, scope: !2114)
!2117 = !DILocation(line: 644, column: 25, scope: !2114)
!2118 = !DILocation(line: 645, column: 28, scope: !2114)
!2119 = !DILocation(line: 644, column: 34, scope: !2114)
!2120 = distinct !{!2120, !2117, !2118}
!2121 = !DILocation(line: 658, column: 43, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !2123, file: !127, line: 658, column: 29)
!2123 = distinct !DILexicalBlock(scope: !1854, file: !127, line: 658, column: 29)
!2124 = !DILocation(line: 655, column: 29, scope: !1855)
!2125 = !DILocation(line: 657, column: 36, scope: !1854)
!2126 = !DILocation(line: 659, column: 49, scope: !2122)
!2127 = !DILocation(line: 659, column: 39, scope: !2122)
!2128 = !DILocation(line: 659, column: 31, scope: !2122)
!2129 = !DILocation(line: 658, column: 53, scope: !2122)
!2130 = !DILocation(line: 658, column: 29, scope: !2123)
!2131 = distinct !{!2131, !2130, !2132}
!2132 = !DILocation(line: 667, column: 33, scope: !2123)
!2133 = !DILocation(line: 674, column: 19, scope: !1832)
!2134 = !DILocation(line: 670, column: 41, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !1856, file: !127, line: 670, column: 29)
!2136 = !DILocation(line: 670, column: 31, scope: !2135)
!2137 = !DILocation(line: 670, column: 29, scope: !1856)
!2138 = !DILocation(line: 672, column: 27, scope: !1856)
!2139 = !DILocation(line: 675, column: 26, scope: !1832)
!2140 = !DILocation(line: 675, column: 24, scope: !1832)
!2141 = !DILocation(line: 674, column: 19, scope: !1850)
!2142 = distinct !{!2142, !2101, !2143}
!2143 = !DILocation(line: 675, column: 44, scope: !1832)
!2144 = !DILocation(line: 676, column: 15, scope: !1833)
!2145 = !DILocation(line: 0, scope: !2096)
!2146 = !DILocation(line: 0, scope: !1832)
!2147 = !DILocation(line: 678, column: 40, scope: !1828)
!2148 = !DILocation(line: 680, column: 19, scope: !1862)
!2149 = !DILocation(line: 680, column: 45, scope: !1862)
!2150 = !DILocation(line: 680, column: 23, scope: !1862)
!2151 = !DILocation(line: 684, column: 33, scope: !1861)
!2152 = !DILocation(line: 684, column: 24, scope: !1861)
!2153 = !DILocation(line: 686, column: 17, scope: !1861)
!2154 = !DILocation(line: 0, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !2156, file: !127, line: 687, column: 19)
!2156 = distinct !DILexicalBlock(scope: !2157, file: !127, line: 686, column: 17)
!2157 = distinct !DILexicalBlock(scope: !1861, file: !127, line: 686, column: 17)
!2158 = !DILocation(line: 0, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !2155, file: !127, line: 703, column: 21)
!2160 = !DILocation(line: 0, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !2162, file: !127, line: 696, column: 23)
!2162 = distinct !DILexicalBlock(scope: !2163, file: !127, line: 695, column: 30)
!2163 = distinct !DILexicalBlock(scope: !2155, file: !127, line: 688, column: 25)
!2164 = !DILocation(line: 688, column: 43, scope: !2163)
!2165 = !DILocation(line: 690, column: 25, scope: !2166)
!2166 = distinct !DILexicalBlock(scope: !2167, file: !127, line: 690, column: 25)
!2167 = distinct !DILexicalBlock(scope: !2163, file: !127, line: 689, column: 23)
!2168 = !DILocation(line: 690, column: 25, scope: !2169)
!2169 = distinct !DILexicalBlock(scope: !2166, file: !127, line: 690, column: 25)
!2170 = !DILocation(line: 690, column: 25, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2172, file: !127, line: 690, column: 25)
!2172 = distinct !DILexicalBlock(scope: !2173, file: !127, line: 690, column: 25)
!2173 = distinct !DILexicalBlock(scope: !2169, file: !127, line: 690, column: 25)
!2174 = !DILocation(line: 690, column: 25, scope: !2172)
!2175 = !DILocation(line: 690, column: 25, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !2177, file: !127, line: 690, column: 25)
!2177 = distinct !DILexicalBlock(scope: !2173, file: !127, line: 690, column: 25)
!2178 = !DILocation(line: 690, column: 25, scope: !2177)
!2179 = !DILocation(line: 690, column: 25, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2181, file: !127, line: 690, column: 25)
!2181 = distinct !DILexicalBlock(scope: !2173, file: !127, line: 690, column: 25)
!2182 = !DILocation(line: 690, column: 25, scope: !2181)
!2183 = !DILocation(line: 690, column: 25, scope: !2173)
!2184 = !DILocation(line: 690, column: 25, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !2186, file: !127, line: 690, column: 25)
!2186 = distinct !DILexicalBlock(scope: !2166, file: !127, line: 690, column: 25)
!2187 = !DILocation(line: 690, column: 25, scope: !2186)
!2188 = !DILocation(line: 691, column: 25, scope: !2189)
!2189 = distinct !DILexicalBlock(scope: !2190, file: !127, line: 691, column: 25)
!2190 = distinct !DILexicalBlock(scope: !2167, file: !127, line: 691, column: 25)
!2191 = !DILocation(line: 691, column: 25, scope: !2190)
!2192 = !DILocation(line: 692, column: 25, scope: !2193)
!2193 = distinct !DILexicalBlock(scope: !2194, file: !127, line: 692, column: 25)
!2194 = distinct !DILexicalBlock(scope: !2167, file: !127, line: 692, column: 25)
!2195 = !DILocation(line: 692, column: 25, scope: !2194)
!2196 = !DILocation(line: 693, column: 38, scope: !2167)
!2197 = !DILocation(line: 693, column: 33, scope: !2167)
!2198 = !DILocation(line: 694, column: 23, scope: !2167)
!2199 = !DILocation(line: 695, column: 30, scope: !2162)
!2200 = !DILocation(line: 695, column: 30, scope: !2163)
!2201 = !DILocation(line: 697, column: 25, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !2203, file: !127, line: 697, column: 25)
!2203 = distinct !DILexicalBlock(scope: !2161, file: !127, line: 697, column: 25)
!2204 = !DILocation(line: 697, column: 25, scope: !2203)
!2205 = !DILocation(line: 699, column: 23, scope: !2161)
!2206 = !DILocation(line: 0, scope: !2194)
!2207 = !DILocation(line: 0, scope: !2167)
!2208 = !DILocation(line: 0, scope: !2209)
!2209 = distinct !DILexicalBlock(scope: !1945, file: !127, line: 418, column: 9)
!2210 = !DILocation(line: 0, scope: !2166)
!2211 = !DILocation(line: 700, column: 35, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !2155, file: !127, line: 700, column: 25)
!2213 = !DILocation(line: 700, column: 30, scope: !2212)
!2214 = !DILocation(line: 700, column: 25, scope: !2155)
!2215 = !DILocation(line: 702, column: 21, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !2217, file: !127, line: 702, column: 21)
!2217 = distinct !DILexicalBlock(scope: !2155, file: !127, line: 702, column: 21)
!2218 = !DILocation(line: 702, column: 21, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !2220, file: !127, line: 702, column: 21)
!2220 = distinct !DILexicalBlock(scope: !2221, file: !127, line: 702, column: 21)
!2221 = distinct !DILexicalBlock(scope: !2216, file: !127, line: 702, column: 21)
!2222 = !DILocation(line: 702, column: 21, scope: !2220)
!2223 = !DILocation(line: 702, column: 21, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !2225, file: !127, line: 702, column: 21)
!2225 = distinct !DILexicalBlock(scope: !2221, file: !127, line: 702, column: 21)
!2226 = !DILocation(line: 702, column: 21, scope: !2225)
!2227 = !DILocation(line: 702, column: 21, scope: !2221)
!2228 = !DILocation(line: 0, scope: !2203)
!2229 = !DILocation(line: 703, column: 21, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !2159, file: !127, line: 703, column: 21)
!2231 = !DILocation(line: 703, column: 21, scope: !2159)
!2232 = !DILocation(line: 704, column: 25, scope: !2155)
!2233 = !DILocation(line: 686, column: 17, scope: !2156)
!2234 = distinct !{!2234, !2235, !2236}
!2235 = !DILocation(line: 686, column: 17, scope: !2157)
!2236 = !DILocation(line: 705, column: 19, scope: !2157)
!2237 = !DILocation(line: 0, scope: !1822)
!2238 = !DILocation(line: 416, column: 30, scope: !1945)
!2239 = !DILocation(line: 712, column: 34, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !1820, file: !127, line: 712, column: 11)
!2241 = !DILocation(line: 714, column: 14, scope: !2240)
!2242 = !DILocation(line: 715, column: 14, scope: !2240)
!2243 = !DILocation(line: 715, column: 35, scope: !2240)
!2244 = !DILocation(line: 715, column: 17, scope: !2240)
!2245 = !DILocation(line: 715, column: 47, scope: !2240)
!2246 = !DILocation(line: 715, column: 65, scope: !2240)
!2247 = !DILocation(line: 716, column: 15, scope: !2240)
!2248 = !DILocation(line: 716, column: 11, scope: !2240)
!2249 = !DILocation(line: 712, column: 11, scope: !1820)
!2250 = !DILocation(line: 400, column: 10, scope: !1822)
!2251 = !DILocation(line: 0, scope: !2252)
!2252 = distinct !DILexicalBlock(scope: !2253, file: !127, line: 519, column: 13)
!2253 = distinct !DILexicalBlock(scope: !1829, file: !127, line: 518, column: 15)
!2254 = !DILocation(line: 720, column: 7, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !1820, file: !127, line: 720, column: 7)
!2256 = !DILocation(line: 720, column: 7, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !2255, file: !127, line: 720, column: 7)
!2258 = !DILocation(line: 720, column: 7, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2260, file: !127, line: 720, column: 7)
!2260 = distinct !DILexicalBlock(scope: !2261, file: !127, line: 720, column: 7)
!2261 = distinct !DILexicalBlock(scope: !2257, file: !127, line: 720, column: 7)
!2262 = !DILocation(line: 720, column: 7, scope: !2260)
!2263 = !DILocation(line: 720, column: 7, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2265, file: !127, line: 720, column: 7)
!2265 = distinct !DILexicalBlock(scope: !2261, file: !127, line: 720, column: 7)
!2266 = !DILocation(line: 720, column: 7, scope: !2265)
!2267 = !DILocation(line: 720, column: 7, scope: !2268)
!2268 = distinct !DILexicalBlock(scope: !2269, file: !127, line: 720, column: 7)
!2269 = distinct !DILexicalBlock(scope: !2261, file: !127, line: 720, column: 7)
!2270 = !DILocation(line: 720, column: 7, scope: !2269)
!2271 = !DILocation(line: 720, column: 7, scope: !2261)
!2272 = !DILocation(line: 720, column: 7, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !2274, file: !127, line: 720, column: 7)
!2274 = distinct !DILexicalBlock(scope: !2255, file: !127, line: 720, column: 7)
!2275 = !DILocation(line: 720, column: 7, scope: !2274)
!2276 = !DILocation(line: 723, column: 7, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !2278, file: !127, line: 723, column: 7)
!2278 = distinct !DILexicalBlock(scope: !1820, file: !127, line: 723, column: 7)
!2279 = !DILocation(line: 424, column: 9, scope: !1820)
!2280 = !DILocation(line: 723, column: 7, scope: !2281)
!2281 = distinct !DILexicalBlock(scope: !2282, file: !127, line: 723, column: 7)
!2282 = distinct !DILexicalBlock(scope: !2283, file: !127, line: 723, column: 7)
!2283 = distinct !DILexicalBlock(scope: !2277, file: !127, line: 723, column: 7)
!2284 = !DILocation(line: 723, column: 7, scope: !2282)
!2285 = !DILocation(line: 723, column: 7, scope: !2286)
!2286 = distinct !DILexicalBlock(scope: !2287, file: !127, line: 723, column: 7)
!2287 = distinct !DILexicalBlock(scope: !2283, file: !127, line: 723, column: 7)
!2288 = !DILocation(line: 723, column: 7, scope: !2287)
!2289 = !DILocation(line: 723, column: 7, scope: !2283)
!2290 = !DILocation(line: 724, column: 7, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !2292, file: !127, line: 724, column: 7)
!2292 = distinct !DILexicalBlock(scope: !1820, file: !127, line: 724, column: 7)
!2293 = !DILocation(line: 724, column: 7, scope: !2292)
!2294 = !DILocation(line: 726, column: 13, scope: !2295)
!2295 = distinct !DILexicalBlock(scope: !1820, file: !127, line: 726, column: 11)
!2296 = !DILocation(line: 726, column: 11, scope: !1820)
!2297 = !DILocation(line: 728, column: 5, scope: !1821)
!2298 = !DILocation(line: 400, column: 75, scope: !1821)
!2299 = !DILocation(line: 400, column: 3, scope: !1821)
!2300 = distinct !{!2300, !1939, !2301}
!2301 = !DILocation(line: 728, column: 5, scope: !1822)
!2302 = !DILocation(line: 730, column: 11, scope: !2303)
!2303 = distinct !DILexicalBlock(scope: !1793, file: !127, line: 730, column: 7)
!2304 = !DILocation(line: 730, column: 16, scope: !2303)
!2305 = !DILocation(line: 738, column: 51, scope: !2306)
!2306 = distinct !DILexicalBlock(scope: !1793, file: !127, line: 738, column: 7)
!2307 = !DILocation(line: 739, column: 10, scope: !2306)
!2308 = !DILocation(line: 741, column: 11, scope: !2309)
!2309 = distinct !DILexicalBlock(scope: !2310, file: !127, line: 741, column: 11)
!2310 = distinct !DILexicalBlock(scope: !2306, file: !127, line: 740, column: 5)
!2311 = !DILocation(line: 741, column: 11, scope: !2310)
!2312 = !DILocation(line: 742, column: 16, scope: !2309)
!2313 = !DILocation(line: 742, column: 9, scope: !2309)
!2314 = !DILocation(line: 746, column: 18, scope: !2315)
!2315 = distinct !DILexicalBlock(scope: !2309, file: !127, line: 746, column: 16)
!2316 = !DILocation(line: 746, column: 32, scope: !2315)
!2317 = !DILocation(line: 746, column: 29, scope: !2315)
!2318 = !DILocation(line: 755, column: 7, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !1793, file: !127, line: 755, column: 7)
!2320 = !DILocation(line: 755, column: 20, scope: !2319)
!2321 = !DILocation(line: 756, column: 12, scope: !2322)
!2322 = distinct !DILexicalBlock(scope: !2323, file: !127, line: 756, column: 5)
!2323 = distinct !DILexicalBlock(scope: !2319, file: !127, line: 756, column: 5)
!2324 = !DILocation(line: 756, column: 5, scope: !2323)
!2325 = !DILocation(line: 757, column: 7, scope: !2326)
!2326 = distinct !DILexicalBlock(scope: !2327, file: !127, line: 757, column: 7)
!2327 = distinct !DILexicalBlock(scope: !2322, file: !127, line: 757, column: 7)
!2328 = !DILocation(line: 757, column: 7, scope: !2327)
!2329 = !DILocation(line: 756, column: 39, scope: !2322)
!2330 = distinct !{!2330, !2324, !2331}
!2331 = !DILocation(line: 757, column: 7, scope: !2323)
!2332 = !DILocation(line: 759, column: 11, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !1793, file: !127, line: 759, column: 7)
!2334 = !DILocation(line: 759, column: 7, scope: !1793)
!2335 = !DILocation(line: 760, column: 5, scope: !2333)
!2336 = !DILocation(line: 760, column: 17, scope: !2333)
!2337 = !DILocation(line: 766, column: 21, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !1793, file: !127, line: 766, column: 7)
!2339 = !DILocation(line: 766, column: 54, scope: !2338)
!2340 = !DILocation(line: 766, column: 51, scope: !2338)
!2341 = !DILocation(line: 770, column: 42, scope: !1793)
!2342 = !DILocation(line: 768, column: 10, scope: !1793)
!2343 = !DILocation(line: 768, column: 3, scope: !1793)
!2344 = !DILocation(line: 772, column: 1, scope: !1793)
!2345 = distinct !DISubprogram(name: "gettext_quote", scope: !127, file: !127, line: 207, type: !2346, isLocal: true, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: true, unit: !112, retainedNodes: !2348)
!2346 = !DISubroutineType(types: !2347)
!2347 = !{!50, !50, !5}
!2348 = !{!2349, !2350, !2351, !2352}
!2349 = !DILocalVariable(name: "msgid", arg: 1, scope: !2345, file: !127, line: 207, type: !50)
!2350 = !DILocalVariable(name: "s", arg: 2, scope: !2345, file: !127, line: 207, type: !5)
!2351 = !DILocalVariable(name: "translation", scope: !2345, file: !127, line: 209, type: !50)
!2352 = !DILocalVariable(name: "locale_code", scope: !2345, file: !127, line: 210, type: !50)
!2353 = !DILocation(line: 207, column: 28, scope: !2345)
!2354 = !DILocation(line: 207, column: 54, scope: !2345)
!2355 = !DILocation(line: 209, column: 29, scope: !2345)
!2356 = !DILocation(line: 209, column: 15, scope: !2345)
!2357 = !DILocation(line: 212, column: 19, scope: !2358)
!2358 = distinct !DILexicalBlock(scope: !2345, file: !127, line: 212, column: 7)
!2359 = !DILocation(line: 212, column: 7, scope: !2345)
!2360 = !DILocation(line: 233, column: 17, scope: !2345)
!2361 = !DILocation(line: 210, column: 15, scope: !2345)
!2362 = !DILocalVariable(name: "s1", arg: 1, scope: !2363, file: !2364, line: 160, type: !50)
!2363 = distinct !DISubprogram(name: "strcaseeq0", scope: !2364, file: !2364, line: 160, type: !2365, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !112, retainedNodes: !2367)
!2364 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2365 = !DISubroutineType(types: !2366)
!2366 = !{!39, !50, !50, !38, !38, !38, !38, !38, !38, !38, !38, !38}
!2367 = !{!2362, !2368, !2369, !2370, !2371, !2372, !2373, !2374, !2375, !2376, !2377}
!2368 = !DILocalVariable(name: "s2", arg: 2, scope: !2363, file: !2364, line: 160, type: !50)
!2369 = !DILocalVariable(name: "s20", arg: 3, scope: !2363, file: !2364, line: 160, type: !38)
!2370 = !DILocalVariable(name: "s21", arg: 4, scope: !2363, file: !2364, line: 160, type: !38)
!2371 = !DILocalVariable(name: "s22", arg: 5, scope: !2363, file: !2364, line: 160, type: !38)
!2372 = !DILocalVariable(name: "s23", arg: 6, scope: !2363, file: !2364, line: 160, type: !38)
!2373 = !DILocalVariable(name: "s24", arg: 7, scope: !2363, file: !2364, line: 160, type: !38)
!2374 = !DILocalVariable(name: "s25", arg: 8, scope: !2363, file: !2364, line: 160, type: !38)
!2375 = !DILocalVariable(name: "s26", arg: 9, scope: !2363, file: !2364, line: 160, type: !38)
!2376 = !DILocalVariable(name: "s27", arg: 10, scope: !2363, file: !2364, line: 160, type: !38)
!2377 = !DILocalVariable(name: "s28", arg: 11, scope: !2363, file: !2364, line: 160, type: !38)
!2378 = !DILocation(line: 160, column: 25, scope: !2363, inlinedAt: !2379)
!2379 = distinct !DILocation(line: 234, column: 7, scope: !2380)
!2380 = distinct !DILexicalBlock(scope: !2345, file: !127, line: 234, column: 7)
!2381 = !DILocation(line: 160, column: 41, scope: !2363, inlinedAt: !2379)
!2382 = !DILocation(line: 160, column: 50, scope: !2363, inlinedAt: !2379)
!2383 = !DILocation(line: 160, column: 60, scope: !2363, inlinedAt: !2379)
!2384 = !DILocation(line: 160, column: 70, scope: !2363, inlinedAt: !2379)
!2385 = !DILocation(line: 160, column: 80, scope: !2363, inlinedAt: !2379)
!2386 = !DILocation(line: 160, column: 90, scope: !2363, inlinedAt: !2379)
!2387 = !DILocation(line: 160, column: 100, scope: !2363, inlinedAt: !2379)
!2388 = !DILocation(line: 160, column: 110, scope: !2363, inlinedAt: !2379)
!2389 = !DILocation(line: 160, column: 120, scope: !2363, inlinedAt: !2379)
!2390 = !DILocation(line: 160, column: 130, scope: !2363, inlinedAt: !2379)
!2391 = !DILocation(line: 162, column: 7, scope: !2392, inlinedAt: !2379)
!2392 = distinct !DILexicalBlock(scope: !2363, file: !2364, line: 162, column: 7)
!2393 = !DILocalVariable(name: "s1", arg: 1, scope: !2394, file: !2364, line: 146, type: !50)
!2394 = distinct !DISubprogram(name: "strcaseeq1", scope: !2364, file: !2364, line: 146, type: !2395, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !112, retainedNodes: !2397)
!2395 = !DISubroutineType(types: !2396)
!2396 = !{!39, !50, !50, !38, !38, !38, !38, !38, !38, !38, !38}
!2397 = !{!2393, !2398, !2399, !2400, !2401, !2402, !2403, !2404, !2405, !2406}
!2398 = !DILocalVariable(name: "s2", arg: 2, scope: !2394, file: !2364, line: 146, type: !50)
!2399 = !DILocalVariable(name: "s21", arg: 3, scope: !2394, file: !2364, line: 146, type: !38)
!2400 = !DILocalVariable(name: "s22", arg: 4, scope: !2394, file: !2364, line: 146, type: !38)
!2401 = !DILocalVariable(name: "s23", arg: 5, scope: !2394, file: !2364, line: 146, type: !38)
!2402 = !DILocalVariable(name: "s24", arg: 6, scope: !2394, file: !2364, line: 146, type: !38)
!2403 = !DILocalVariable(name: "s25", arg: 7, scope: !2394, file: !2364, line: 146, type: !38)
!2404 = !DILocalVariable(name: "s26", arg: 8, scope: !2394, file: !2364, line: 146, type: !38)
!2405 = !DILocalVariable(name: "s27", arg: 9, scope: !2394, file: !2364, line: 146, type: !38)
!2406 = !DILocalVariable(name: "s28", arg: 10, scope: !2394, file: !2364, line: 146, type: !38)
!2407 = !DILocation(line: 146, column: 25, scope: !2394, inlinedAt: !2408)
!2408 = distinct !DILocation(line: 167, column: 16, scope: !2409, inlinedAt: !2379)
!2409 = distinct !DILexicalBlock(scope: !2410, file: !2364, line: 164, column: 11)
!2410 = distinct !DILexicalBlock(scope: !2392, file: !2364, line: 163, column: 5)
!2411 = !DILocation(line: 146, column: 41, scope: !2394, inlinedAt: !2408)
!2412 = !DILocation(line: 146, column: 50, scope: !2394, inlinedAt: !2408)
!2413 = !DILocation(line: 146, column: 60, scope: !2394, inlinedAt: !2408)
!2414 = !DILocation(line: 146, column: 70, scope: !2394, inlinedAt: !2408)
!2415 = !DILocation(line: 146, column: 80, scope: !2394, inlinedAt: !2408)
!2416 = !DILocation(line: 146, column: 90, scope: !2394, inlinedAt: !2408)
!2417 = !DILocation(line: 146, column: 100, scope: !2394, inlinedAt: !2408)
!2418 = !DILocation(line: 146, column: 110, scope: !2394, inlinedAt: !2408)
!2419 = !DILocation(line: 146, column: 120, scope: !2394, inlinedAt: !2408)
!2420 = !DILocation(line: 148, column: 7, scope: !2421, inlinedAt: !2408)
!2421 = distinct !DILexicalBlock(scope: !2394, file: !2364, line: 148, column: 7)
!2422 = !DILocalVariable(name: "s1", arg: 1, scope: !2423, file: !2364, line: 132, type: !50)
!2423 = distinct !DISubprogram(name: "strcaseeq2", scope: !2364, file: !2364, line: 132, type: !2424, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !112, retainedNodes: !2426)
!2424 = !DISubroutineType(types: !2425)
!2425 = !{!39, !50, !50, !38, !38, !38, !38, !38, !38, !38}
!2426 = !{!2422, !2427, !2428, !2429, !2430, !2431, !2432, !2433, !2434}
!2427 = !DILocalVariable(name: "s2", arg: 2, scope: !2423, file: !2364, line: 132, type: !50)
!2428 = !DILocalVariable(name: "s22", arg: 3, scope: !2423, file: !2364, line: 132, type: !38)
!2429 = !DILocalVariable(name: "s23", arg: 4, scope: !2423, file: !2364, line: 132, type: !38)
!2430 = !DILocalVariable(name: "s24", arg: 5, scope: !2423, file: !2364, line: 132, type: !38)
!2431 = !DILocalVariable(name: "s25", arg: 6, scope: !2423, file: !2364, line: 132, type: !38)
!2432 = !DILocalVariable(name: "s26", arg: 7, scope: !2423, file: !2364, line: 132, type: !38)
!2433 = !DILocalVariable(name: "s27", arg: 8, scope: !2423, file: !2364, line: 132, type: !38)
!2434 = !DILocalVariable(name: "s28", arg: 9, scope: !2423, file: !2364, line: 132, type: !38)
!2435 = !DILocation(line: 132, column: 25, scope: !2423, inlinedAt: !2436)
!2436 = distinct !DILocation(line: 153, column: 16, scope: !2437, inlinedAt: !2408)
!2437 = distinct !DILexicalBlock(scope: !2438, file: !2364, line: 150, column: 11)
!2438 = distinct !DILexicalBlock(scope: !2421, file: !2364, line: 149, column: 5)
!2439 = !DILocation(line: 132, column: 41, scope: !2423, inlinedAt: !2436)
!2440 = !DILocation(line: 132, column: 50, scope: !2423, inlinedAt: !2436)
!2441 = !DILocation(line: 132, column: 60, scope: !2423, inlinedAt: !2436)
!2442 = !DILocation(line: 132, column: 70, scope: !2423, inlinedAt: !2436)
!2443 = !DILocation(line: 132, column: 80, scope: !2423, inlinedAt: !2436)
!2444 = !DILocation(line: 132, column: 90, scope: !2423, inlinedAt: !2436)
!2445 = !DILocation(line: 132, column: 100, scope: !2423, inlinedAt: !2436)
!2446 = !DILocation(line: 132, column: 110, scope: !2423, inlinedAt: !2436)
!2447 = !DILocation(line: 134, column: 7, scope: !2448, inlinedAt: !2436)
!2448 = distinct !DILexicalBlock(scope: !2423, file: !2364, line: 134, column: 7)
!2449 = !DILocalVariable(name: "s1", arg: 1, scope: !2450, file: !2364, line: 118, type: !50)
!2450 = distinct !DISubprogram(name: "strcaseeq3", scope: !2364, file: !2364, line: 118, type: !2451, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !112, retainedNodes: !2453)
!2451 = !DISubroutineType(types: !2452)
!2452 = !{!39, !50, !50, !38, !38, !38, !38, !38, !38}
!2453 = !{!2449, !2454, !2455, !2456, !2457, !2458, !2459, !2460}
!2454 = !DILocalVariable(name: "s2", arg: 2, scope: !2450, file: !2364, line: 118, type: !50)
!2455 = !DILocalVariable(name: "s23", arg: 3, scope: !2450, file: !2364, line: 118, type: !38)
!2456 = !DILocalVariable(name: "s24", arg: 4, scope: !2450, file: !2364, line: 118, type: !38)
!2457 = !DILocalVariable(name: "s25", arg: 5, scope: !2450, file: !2364, line: 118, type: !38)
!2458 = !DILocalVariable(name: "s26", arg: 6, scope: !2450, file: !2364, line: 118, type: !38)
!2459 = !DILocalVariable(name: "s27", arg: 7, scope: !2450, file: !2364, line: 118, type: !38)
!2460 = !DILocalVariable(name: "s28", arg: 8, scope: !2450, file: !2364, line: 118, type: !38)
!2461 = !DILocation(line: 118, column: 25, scope: !2450, inlinedAt: !2462)
!2462 = distinct !DILocation(line: 139, column: 16, scope: !2463, inlinedAt: !2436)
!2463 = distinct !DILexicalBlock(scope: !2464, file: !2364, line: 136, column: 11)
!2464 = distinct !DILexicalBlock(scope: !2448, file: !2364, line: 135, column: 5)
!2465 = !DILocation(line: 118, column: 41, scope: !2450, inlinedAt: !2462)
!2466 = !DILocation(line: 118, column: 50, scope: !2450, inlinedAt: !2462)
!2467 = !DILocation(line: 118, column: 60, scope: !2450, inlinedAt: !2462)
!2468 = !DILocation(line: 118, column: 70, scope: !2450, inlinedAt: !2462)
!2469 = !DILocation(line: 118, column: 80, scope: !2450, inlinedAt: !2462)
!2470 = !DILocation(line: 118, column: 90, scope: !2450, inlinedAt: !2462)
!2471 = !DILocation(line: 118, column: 100, scope: !2450, inlinedAt: !2462)
!2472 = !DILocation(line: 120, column: 7, scope: !2473, inlinedAt: !2462)
!2473 = distinct !DILexicalBlock(scope: !2450, file: !2364, line: 120, column: 7)
!2474 = !DILocation(line: 120, column: 7, scope: !2450, inlinedAt: !2462)
!2475 = !DILocalVariable(name: "s1", arg: 1, scope: !2476, file: !2364, line: 104, type: !50)
!2476 = distinct !DISubprogram(name: "strcaseeq4", scope: !2364, file: !2364, line: 104, type: !2477, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !112, retainedNodes: !2479)
!2477 = !DISubroutineType(types: !2478)
!2478 = !{!39, !50, !50, !38, !38, !38, !38, !38}
!2479 = !{!2475, !2480, !2481, !2482, !2483, !2484, !2485}
!2480 = !DILocalVariable(name: "s2", arg: 2, scope: !2476, file: !2364, line: 104, type: !50)
!2481 = !DILocalVariable(name: "s24", arg: 3, scope: !2476, file: !2364, line: 104, type: !38)
!2482 = !DILocalVariable(name: "s25", arg: 4, scope: !2476, file: !2364, line: 104, type: !38)
!2483 = !DILocalVariable(name: "s26", arg: 5, scope: !2476, file: !2364, line: 104, type: !38)
!2484 = !DILocalVariable(name: "s27", arg: 6, scope: !2476, file: !2364, line: 104, type: !38)
!2485 = !DILocalVariable(name: "s28", arg: 7, scope: !2476, file: !2364, line: 104, type: !38)
!2486 = !DILocation(line: 104, column: 25, scope: !2476, inlinedAt: !2487)
!2487 = distinct !DILocation(line: 125, column: 16, scope: !2488, inlinedAt: !2462)
!2488 = distinct !DILexicalBlock(scope: !2489, file: !2364, line: 122, column: 11)
!2489 = distinct !DILexicalBlock(scope: !2473, file: !2364, line: 121, column: 5)
!2490 = !DILocation(line: 104, column: 41, scope: !2476, inlinedAt: !2487)
!2491 = !DILocation(line: 104, column: 50, scope: !2476, inlinedAt: !2487)
!2492 = !DILocation(line: 104, column: 60, scope: !2476, inlinedAt: !2487)
!2493 = !DILocation(line: 104, column: 70, scope: !2476, inlinedAt: !2487)
!2494 = !DILocation(line: 104, column: 80, scope: !2476, inlinedAt: !2487)
!2495 = !DILocation(line: 104, column: 90, scope: !2476, inlinedAt: !2487)
!2496 = !DILocation(line: 106, column: 7, scope: !2497, inlinedAt: !2487)
!2497 = distinct !DILexicalBlock(scope: !2476, file: !2364, line: 106, column: 7)
!2498 = !DILocation(line: 106, column: 7, scope: !2476, inlinedAt: !2487)
!2499 = !DILocalVariable(name: "s1", arg: 1, scope: !2500, file: !2364, line: 90, type: !50)
!2500 = distinct !DISubprogram(name: "strcaseeq5", scope: !2364, file: !2364, line: 90, type: !2501, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !112, retainedNodes: !2503)
!2501 = !DISubroutineType(types: !2502)
!2502 = !{!39, !50, !50, !38, !38, !38, !38}
!2503 = !{!2499, !2504, !2505, !2506, !2507, !2508}
!2504 = !DILocalVariable(name: "s2", arg: 2, scope: !2500, file: !2364, line: 90, type: !50)
!2505 = !DILocalVariable(name: "s25", arg: 3, scope: !2500, file: !2364, line: 90, type: !38)
!2506 = !DILocalVariable(name: "s26", arg: 4, scope: !2500, file: !2364, line: 90, type: !38)
!2507 = !DILocalVariable(name: "s27", arg: 5, scope: !2500, file: !2364, line: 90, type: !38)
!2508 = !DILocalVariable(name: "s28", arg: 6, scope: !2500, file: !2364, line: 90, type: !38)
!2509 = !DILocation(line: 90, column: 25, scope: !2500, inlinedAt: !2510)
!2510 = distinct !DILocation(line: 111, column: 16, scope: !2511, inlinedAt: !2487)
!2511 = distinct !DILexicalBlock(scope: !2512, file: !2364, line: 108, column: 11)
!2512 = distinct !DILexicalBlock(scope: !2497, file: !2364, line: 107, column: 5)
!2513 = !DILocation(line: 90, column: 41, scope: !2500, inlinedAt: !2510)
!2514 = !DILocation(line: 90, column: 50, scope: !2500, inlinedAt: !2510)
!2515 = !DILocation(line: 90, column: 60, scope: !2500, inlinedAt: !2510)
!2516 = !DILocation(line: 90, column: 70, scope: !2500, inlinedAt: !2510)
!2517 = !DILocation(line: 90, column: 80, scope: !2500, inlinedAt: !2510)
!2518 = !DILocation(line: 92, column: 7, scope: !2519, inlinedAt: !2510)
!2519 = distinct !DILexicalBlock(scope: !2500, file: !2364, line: 92, column: 7)
!2520 = !DILocation(line: 92, column: 7, scope: !2500, inlinedAt: !2510)
!2521 = !DILocation(line: 235, column: 12, scope: !2380)
!2522 = !DILocation(line: 235, column: 21, scope: !2380)
!2523 = !DILocation(line: 235, column: 5, scope: !2380)
!2524 = !DILocation(line: 146, column: 25, scope: !2394, inlinedAt: !2525)
!2525 = distinct !DILocation(line: 167, column: 16, scope: !2409, inlinedAt: !2526)
!2526 = distinct !DILocation(line: 236, column: 7, scope: !2527)
!2527 = distinct !DILexicalBlock(scope: !2345, file: !127, line: 236, column: 7)
!2528 = !DILocation(line: 146, column: 41, scope: !2394, inlinedAt: !2525)
!2529 = !DILocation(line: 146, column: 50, scope: !2394, inlinedAt: !2525)
!2530 = !DILocation(line: 146, column: 60, scope: !2394, inlinedAt: !2525)
!2531 = !DILocation(line: 146, column: 70, scope: !2394, inlinedAt: !2525)
!2532 = !DILocation(line: 146, column: 80, scope: !2394, inlinedAt: !2525)
!2533 = !DILocation(line: 146, column: 90, scope: !2394, inlinedAt: !2525)
!2534 = !DILocation(line: 146, column: 100, scope: !2394, inlinedAt: !2525)
!2535 = !DILocation(line: 146, column: 110, scope: !2394, inlinedAt: !2525)
!2536 = !DILocation(line: 146, column: 120, scope: !2394, inlinedAt: !2525)
!2537 = !DILocation(line: 148, column: 7, scope: !2421, inlinedAt: !2525)
!2538 = !DILocation(line: 132, column: 25, scope: !2423, inlinedAt: !2539)
!2539 = distinct !DILocation(line: 153, column: 16, scope: !2437, inlinedAt: !2525)
!2540 = !DILocation(line: 132, column: 41, scope: !2423, inlinedAt: !2539)
!2541 = !DILocation(line: 132, column: 50, scope: !2423, inlinedAt: !2539)
!2542 = !DILocation(line: 132, column: 60, scope: !2423, inlinedAt: !2539)
!2543 = !DILocation(line: 132, column: 70, scope: !2423, inlinedAt: !2539)
!2544 = !DILocation(line: 132, column: 80, scope: !2423, inlinedAt: !2539)
!2545 = !DILocation(line: 132, column: 90, scope: !2423, inlinedAt: !2539)
!2546 = !DILocation(line: 132, column: 100, scope: !2423, inlinedAt: !2539)
!2547 = !DILocation(line: 132, column: 110, scope: !2423, inlinedAt: !2539)
!2548 = !DILocation(line: 134, column: 7, scope: !2448, inlinedAt: !2539)
!2549 = !DILocation(line: 134, column: 7, scope: !2423, inlinedAt: !2539)
!2550 = !DILocation(line: 118, column: 25, scope: !2450, inlinedAt: !2551)
!2551 = distinct !DILocation(line: 139, column: 16, scope: !2463, inlinedAt: !2539)
!2552 = !DILocation(line: 118, column: 41, scope: !2450, inlinedAt: !2551)
!2553 = !DILocation(line: 118, column: 50, scope: !2450, inlinedAt: !2551)
!2554 = !DILocation(line: 118, column: 60, scope: !2450, inlinedAt: !2551)
!2555 = !DILocation(line: 118, column: 70, scope: !2450, inlinedAt: !2551)
!2556 = !DILocation(line: 118, column: 80, scope: !2450, inlinedAt: !2551)
!2557 = !DILocation(line: 118, column: 90, scope: !2450, inlinedAt: !2551)
!2558 = !DILocation(line: 118, column: 100, scope: !2450, inlinedAt: !2551)
!2559 = !DILocation(line: 120, column: 7, scope: !2473, inlinedAt: !2551)
!2560 = !DILocation(line: 120, column: 7, scope: !2450, inlinedAt: !2551)
!2561 = !DILocation(line: 104, column: 25, scope: !2476, inlinedAt: !2562)
!2562 = distinct !DILocation(line: 125, column: 16, scope: !2488, inlinedAt: !2551)
!2563 = !DILocation(line: 104, column: 41, scope: !2476, inlinedAt: !2562)
!2564 = !DILocation(line: 104, column: 50, scope: !2476, inlinedAt: !2562)
!2565 = !DILocation(line: 104, column: 60, scope: !2476, inlinedAt: !2562)
!2566 = !DILocation(line: 104, column: 70, scope: !2476, inlinedAt: !2562)
!2567 = !DILocation(line: 104, column: 80, scope: !2476, inlinedAt: !2562)
!2568 = !DILocation(line: 104, column: 90, scope: !2476, inlinedAt: !2562)
!2569 = !DILocation(line: 106, column: 7, scope: !2497, inlinedAt: !2562)
!2570 = !DILocation(line: 106, column: 7, scope: !2476, inlinedAt: !2562)
!2571 = !DILocation(line: 90, column: 25, scope: !2500, inlinedAt: !2572)
!2572 = distinct !DILocation(line: 111, column: 16, scope: !2511, inlinedAt: !2562)
!2573 = !DILocation(line: 90, column: 41, scope: !2500, inlinedAt: !2572)
!2574 = !DILocation(line: 90, column: 50, scope: !2500, inlinedAt: !2572)
!2575 = !DILocation(line: 90, column: 60, scope: !2500, inlinedAt: !2572)
!2576 = !DILocation(line: 90, column: 70, scope: !2500, inlinedAt: !2572)
!2577 = !DILocation(line: 90, column: 80, scope: !2500, inlinedAt: !2572)
!2578 = !DILocation(line: 92, column: 7, scope: !2519, inlinedAt: !2572)
!2579 = !DILocation(line: 92, column: 7, scope: !2500, inlinedAt: !2572)
!2580 = !DILocalVariable(name: "s1", arg: 1, scope: !2581, file: !2364, line: 76, type: !50)
!2581 = distinct !DISubprogram(name: "strcaseeq6", scope: !2364, file: !2364, line: 76, type: !2582, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !112, retainedNodes: !2584)
!2582 = !DISubroutineType(types: !2583)
!2583 = !{!39, !50, !50, !38, !38, !38}
!2584 = !{!2580, !2585, !2586, !2587, !2588}
!2585 = !DILocalVariable(name: "s2", arg: 2, scope: !2581, file: !2364, line: 76, type: !50)
!2586 = !DILocalVariable(name: "s26", arg: 3, scope: !2581, file: !2364, line: 76, type: !38)
!2587 = !DILocalVariable(name: "s27", arg: 4, scope: !2581, file: !2364, line: 76, type: !38)
!2588 = !DILocalVariable(name: "s28", arg: 5, scope: !2581, file: !2364, line: 76, type: !38)
!2589 = !DILocation(line: 76, column: 25, scope: !2581, inlinedAt: !2590)
!2590 = distinct !DILocation(line: 97, column: 16, scope: !2591, inlinedAt: !2572)
!2591 = distinct !DILexicalBlock(scope: !2592, file: !2364, line: 94, column: 11)
!2592 = distinct !DILexicalBlock(scope: !2519, file: !2364, line: 93, column: 5)
!2593 = !DILocation(line: 76, column: 41, scope: !2581, inlinedAt: !2590)
!2594 = !DILocation(line: 76, column: 50, scope: !2581, inlinedAt: !2590)
!2595 = !DILocation(line: 76, column: 60, scope: !2581, inlinedAt: !2590)
!2596 = !DILocation(line: 76, column: 70, scope: !2581, inlinedAt: !2590)
!2597 = !DILocation(line: 78, column: 7, scope: !2598, inlinedAt: !2590)
!2598 = distinct !DILexicalBlock(scope: !2581, file: !2364, line: 78, column: 7)
!2599 = !DILocation(line: 78, column: 7, scope: !2581, inlinedAt: !2590)
!2600 = !DILocalVariable(name: "s1", arg: 1, scope: !2601, file: !2364, line: 62, type: !50)
!2601 = distinct !DISubprogram(name: "strcaseeq7", scope: !2364, file: !2364, line: 62, type: !2602, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !112, retainedNodes: !2604)
!2602 = !DISubroutineType(types: !2603)
!2603 = !{!39, !50, !50, !38, !38}
!2604 = !{!2600, !2605, !2606, !2607}
!2605 = !DILocalVariable(name: "s2", arg: 2, scope: !2601, file: !2364, line: 62, type: !50)
!2606 = !DILocalVariable(name: "s27", arg: 3, scope: !2601, file: !2364, line: 62, type: !38)
!2607 = !DILocalVariable(name: "s28", arg: 4, scope: !2601, file: !2364, line: 62, type: !38)
!2608 = !DILocation(line: 62, column: 25, scope: !2601, inlinedAt: !2609)
!2609 = distinct !DILocation(line: 83, column: 16, scope: !2610, inlinedAt: !2590)
!2610 = distinct !DILexicalBlock(scope: !2611, file: !2364, line: 80, column: 11)
!2611 = distinct !DILexicalBlock(scope: !2598, file: !2364, line: 79, column: 5)
!2612 = !DILocation(line: 62, column: 41, scope: !2601, inlinedAt: !2609)
!2613 = !DILocation(line: 62, column: 50, scope: !2601, inlinedAt: !2609)
!2614 = !DILocation(line: 62, column: 60, scope: !2601, inlinedAt: !2609)
!2615 = !DILocation(line: 64, column: 7, scope: !2616, inlinedAt: !2609)
!2616 = distinct !DILexicalBlock(scope: !2601, file: !2364, line: 64, column: 7)
!2617 = !DILocation(line: 236, column: 7, scope: !2345)
!2618 = !DILocation(line: 237, column: 12, scope: !2527)
!2619 = !DILocation(line: 237, column: 21, scope: !2527)
!2620 = !DILocation(line: 237, column: 5, scope: !2527)
!2621 = !DILocation(line: 239, column: 13, scope: !2345)
!2622 = !DILocation(line: 239, column: 11, scope: !2345)
!2623 = !DILocation(line: 239, column: 3, scope: !2345)
!2624 = !DILocation(line: 0, scope: !2345)
!2625 = !DILocation(line: 240, column: 1, scope: !2345)
!2626 = distinct !DISubprogram(name: "quotearg_alloc", scope: !127, file: !127, line: 799, type: !2627, isLocal: false, isDefinition: true, scopeLine: 801, flags: DIFlagPrototyped, isOptimized: true, unit: !112, retainedNodes: !2629)
!2627 = !DISubroutineType(types: !2628)
!2628 = !{!37, !50, !121, !1666}
!2629 = !{!2630, !2631, !2632}
!2630 = !DILocalVariable(name: "arg", arg: 1, scope: !2626, file: !127, line: 799, type: !50)
!2631 = !DILocalVariable(name: "argsize", arg: 2, scope: !2626, file: !127, line: 799, type: !121)
!2632 = !DILocalVariable(name: "o", arg: 3, scope: !2626, file: !127, line: 800, type: !1666)
!2633 = !DILocation(line: 799, column: 29, scope: !2626)
!2634 = !DILocation(line: 799, column: 41, scope: !2626)
!2635 = !DILocation(line: 800, column: 47, scope: !2626)
!2636 = !DILocalVariable(name: "arg", arg: 1, scope: !2637, file: !127, line: 812, type: !50)
!2637 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !127, file: !127, line: 812, type: !2638, isLocal: false, isDefinition: true, scopeLine: 814, flags: DIFlagPrototyped, isOptimized: true, unit: !112, retainedNodes: !2640)
!2638 = !DISubroutineType(types: !2639)
!2639 = !{!37, !50, !121, !296, !1666}
!2640 = !{!2636, !2641, !2642, !2643, !2644, !2645, !2646, !2647, !2648}
!2641 = !DILocalVariable(name: "argsize", arg: 2, scope: !2637, file: !127, line: 812, type: !121)
!2642 = !DILocalVariable(name: "size", arg: 3, scope: !2637, file: !127, line: 812, type: !296)
!2643 = !DILocalVariable(name: "o", arg: 4, scope: !2637, file: !127, line: 813, type: !1666)
!2644 = !DILocalVariable(name: "p", scope: !2637, file: !127, line: 815, type: !1666)
!2645 = !DILocalVariable(name: "e", scope: !2637, file: !127, line: 816, type: !39)
!2646 = !DILocalVariable(name: "flags", scope: !2637, file: !127, line: 818, type: !39)
!2647 = !DILocalVariable(name: "bufsize", scope: !2637, file: !127, line: 819, type: !121)
!2648 = !DILocalVariable(name: "buf", scope: !2637, file: !127, line: 823, type: !37)
!2649 = !DILocation(line: 812, column: 33, scope: !2637, inlinedAt: !2650)
!2650 = distinct !DILocation(line: 802, column: 10, scope: !2626)
!2651 = !DILocation(line: 812, column: 45, scope: !2637, inlinedAt: !2650)
!2652 = !DILocation(line: 812, column: 62, scope: !2637, inlinedAt: !2650)
!2653 = !DILocation(line: 813, column: 51, scope: !2637, inlinedAt: !2650)
!2654 = !DILocation(line: 815, column: 37, scope: !2637, inlinedAt: !2650)
!2655 = !DILocation(line: 815, column: 33, scope: !2637, inlinedAt: !2650)
!2656 = !DILocation(line: 816, column: 11, scope: !2637, inlinedAt: !2650)
!2657 = !DILocation(line: 816, column: 7, scope: !2637, inlinedAt: !2650)
!2658 = !DILocation(line: 818, column: 18, scope: !2637, inlinedAt: !2650)
!2659 = !DILocation(line: 818, column: 24, scope: !2637, inlinedAt: !2650)
!2660 = !DILocation(line: 818, column: 7, scope: !2637, inlinedAt: !2650)
!2661 = !DILocation(line: 819, column: 69, scope: !2637, inlinedAt: !2650)
!2662 = !DILocation(line: 820, column: 53, scope: !2637, inlinedAt: !2650)
!2663 = !DILocation(line: 821, column: 49, scope: !2637, inlinedAt: !2650)
!2664 = !DILocation(line: 822, column: 49, scope: !2637, inlinedAt: !2650)
!2665 = !DILocation(line: 819, column: 20, scope: !2637, inlinedAt: !2650)
!2666 = !DILocation(line: 822, column: 62, scope: !2637, inlinedAt: !2650)
!2667 = !DILocation(line: 819, column: 10, scope: !2637, inlinedAt: !2650)
!2668 = !DILocalVariable(name: "n", arg: 1, scope: !2669, file: !292, line: 216, type: !121)
!2669 = distinct !DISubprogram(name: "xcharalloc", scope: !292, file: !292, line: 216, type: !2670, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !112, retainedNodes: !2672)
!2670 = !DISubroutineType(types: !2671)
!2671 = !{!37, !121}
!2672 = !{!2668}
!2673 = !DILocation(line: 216, column: 20, scope: !2669, inlinedAt: !2674)
!2674 = distinct !DILocation(line: 823, column: 15, scope: !2637, inlinedAt: !2650)
!2675 = !DILocation(line: 218, column: 10, scope: !2669, inlinedAt: !2674)
!2676 = !DILocation(line: 823, column: 9, scope: !2637, inlinedAt: !2650)
!2677 = !DILocation(line: 824, column: 60, scope: !2637, inlinedAt: !2650)
!2678 = !DILocation(line: 826, column: 32, scope: !2637, inlinedAt: !2650)
!2679 = !DILocation(line: 826, column: 47, scope: !2637, inlinedAt: !2650)
!2680 = !DILocation(line: 824, column: 3, scope: !2637, inlinedAt: !2650)
!2681 = !DILocation(line: 827, column: 9, scope: !2637, inlinedAt: !2650)
!2682 = !DILocation(line: 802, column: 3, scope: !2626)
!2683 = !DILocation(line: 812, column: 33, scope: !2637)
!2684 = !DILocation(line: 812, column: 45, scope: !2637)
!2685 = !DILocation(line: 812, column: 62, scope: !2637)
!2686 = !DILocation(line: 813, column: 51, scope: !2637)
!2687 = !DILocation(line: 815, column: 37, scope: !2637)
!2688 = !DILocation(line: 815, column: 33, scope: !2637)
!2689 = !DILocation(line: 816, column: 11, scope: !2637)
!2690 = !DILocation(line: 816, column: 7, scope: !2637)
!2691 = !DILocation(line: 818, column: 18, scope: !2637)
!2692 = !DILocation(line: 818, column: 27, scope: !2637)
!2693 = !DILocation(line: 818, column: 24, scope: !2637)
!2694 = !DILocation(line: 818, column: 7, scope: !2637)
!2695 = !DILocation(line: 819, column: 69, scope: !2637)
!2696 = !DILocation(line: 820, column: 53, scope: !2637)
!2697 = !DILocation(line: 821, column: 49, scope: !2637)
!2698 = !DILocation(line: 822, column: 49, scope: !2637)
!2699 = !DILocation(line: 819, column: 20, scope: !2637)
!2700 = !DILocation(line: 822, column: 62, scope: !2637)
!2701 = !DILocation(line: 819, column: 10, scope: !2637)
!2702 = !DILocation(line: 216, column: 20, scope: !2669, inlinedAt: !2703)
!2703 = distinct !DILocation(line: 823, column: 15, scope: !2637)
!2704 = !DILocation(line: 218, column: 10, scope: !2669, inlinedAt: !2703)
!2705 = !DILocation(line: 823, column: 9, scope: !2637)
!2706 = !DILocation(line: 824, column: 60, scope: !2637)
!2707 = !DILocation(line: 826, column: 32, scope: !2637)
!2708 = !DILocation(line: 826, column: 47, scope: !2637)
!2709 = !DILocation(line: 824, column: 3, scope: !2637)
!2710 = !DILocation(line: 827, column: 9, scope: !2637)
!2711 = !DILocation(line: 828, column: 7, scope: !2637)
!2712 = !DILocation(line: 829, column: 11, scope: !2713)
!2713 = distinct !DILexicalBlock(scope: !2637, file: !127, line: 828, column: 7)
!2714 = !{!931, !931, i64 0}
!2715 = !DILocation(line: 829, column: 5, scope: !2713)
!2716 = !DILocation(line: 830, column: 3, scope: !2637)
!2717 = distinct !DISubprogram(name: "quotearg_free", scope: !127, file: !127, line: 848, type: !1573, isLocal: false, isDefinition: true, scopeLine: 849, flags: DIFlagPrototyped, isOptimized: true, unit: !112, retainedNodes: !2718)
!2718 = !{!2719, !2720}
!2719 = !DILocalVariable(name: "sv", scope: !2717, file: !127, line: 850, type: !153)
!2720 = !DILocalVariable(name: "i", scope: !2717, file: !127, line: 851, type: !39)
!2721 = !DILocation(line: 850, column: 24, scope: !2717)
!2722 = !DILocation(line: 850, column: 19, scope: !2717)
!2723 = !DILocation(line: 851, column: 7, scope: !2717)
!2724 = !DILocation(line: 852, column: 19, scope: !2725)
!2725 = distinct !DILexicalBlock(scope: !2726, file: !127, line: 852, column: 3)
!2726 = distinct !DILexicalBlock(scope: !2717, file: !127, line: 852, column: 3)
!2727 = !DILocation(line: 852, column: 17, scope: !2725)
!2728 = !DILocation(line: 852, column: 3, scope: !2726)
!2729 = !DILocation(line: 853, column: 17, scope: !2725)
!2730 = !{!2731, !753, i64 8}
!2731 = !{!"slotvec", !931, i64 0, !753, i64 8}
!2732 = !DILocation(line: 853, column: 5, scope: !2725)
!2733 = !DILocation(line: 852, column: 28, scope: !2725)
!2734 = distinct !{!2734, !2728, !2735}
!2735 = !DILocation(line: 853, column: 20, scope: !2726)
!2736 = !DILocation(line: 854, column: 13, scope: !2737)
!2737 = distinct !DILexicalBlock(scope: !2717, file: !127, line: 854, column: 7)
!2738 = !DILocation(line: 854, column: 17, scope: !2737)
!2739 = !DILocation(line: 854, column: 7, scope: !2717)
!2740 = !DILocation(line: 856, column: 7, scope: !2741)
!2741 = distinct !DILexicalBlock(scope: !2737, file: !127, line: 855, column: 5)
!2742 = !DILocation(line: 857, column: 21, scope: !2741)
!2743 = !{!2731, !931, i64 0}
!2744 = !DILocation(line: 858, column: 20, scope: !2741)
!2745 = !DILocation(line: 859, column: 5, scope: !2741)
!2746 = !DILocation(line: 860, column: 10, scope: !2747)
!2747 = distinct !DILexicalBlock(scope: !2717, file: !127, line: 860, column: 7)
!2748 = !DILocation(line: 860, column: 7, scope: !2717)
!2749 = !DILocation(line: 862, column: 13, scope: !2750)
!2750 = distinct !DILexicalBlock(scope: !2747, file: !127, line: 861, column: 5)
!2751 = !DILocation(line: 862, column: 7, scope: !2750)
!2752 = !DILocation(line: 863, column: 15, scope: !2750)
!2753 = !DILocation(line: 864, column: 5, scope: !2750)
!2754 = !DILocation(line: 865, column: 10, scope: !2717)
!2755 = !DILocation(line: 866, column: 1, scope: !2717)
!2756 = distinct !DISubprogram(name: "quotearg_n", scope: !127, file: !127, line: 931, type: !2757, isLocal: false, isDefinition: true, scopeLine: 932, flags: DIFlagPrototyped, isOptimized: true, unit: !112, retainedNodes: !2759)
!2757 = !DISubroutineType(types: !2758)
!2758 = !{!37, !39, !50}
!2759 = !{!2760, !2761}
!2760 = !DILocalVariable(name: "n", arg: 1, scope: !2756, file: !127, line: 931, type: !39)
!2761 = !DILocalVariable(name: "arg", arg: 2, scope: !2756, file: !127, line: 931, type: !50)
!2762 = !DILocation(line: 931, column: 17, scope: !2756)
!2763 = !DILocation(line: 931, column: 32, scope: !2756)
!2764 = !DILocation(line: 933, column: 10, scope: !2756)
!2765 = !DILocation(line: 933, column: 3, scope: !2756)
!2766 = distinct !DISubprogram(name: "quotearg_n_options", scope: !127, file: !127, line: 877, type: !2767, isLocal: true, isDefinition: true, scopeLine: 879, flags: DIFlagPrototyped, isOptimized: true, unit: !112, retainedNodes: !2769)
!2767 = !DISubroutineType(types: !2768)
!2768 = !{!37, !39, !50, !121, !1666}
!2769 = !{!2770, !2771, !2772, !2773, !2774, !2775, !2776, !2779, !2780, !2782, !2783, !2784}
!2770 = !DILocalVariable(name: "n", arg: 1, scope: !2766, file: !127, line: 877, type: !39)
!2771 = !DILocalVariable(name: "arg", arg: 2, scope: !2766, file: !127, line: 877, type: !50)
!2772 = !DILocalVariable(name: "argsize", arg: 3, scope: !2766, file: !127, line: 877, type: !121)
!2773 = !DILocalVariable(name: "options", arg: 4, scope: !2766, file: !127, line: 878, type: !1666)
!2774 = !DILocalVariable(name: "e", scope: !2766, file: !127, line: 880, type: !39)
!2775 = !DILocalVariable(name: "sv", scope: !2766, file: !127, line: 882, type: !153)
!2776 = !DILocalVariable(name: "preallocated", scope: !2777, file: !127, line: 889, type: !46)
!2777 = distinct !DILexicalBlock(scope: !2778, file: !127, line: 888, column: 5)
!2778 = distinct !DILexicalBlock(scope: !2766, file: !127, line: 887, column: 7)
!2779 = !DILocalVariable(name: "nmax", scope: !2777, file: !127, line: 890, type: !39)
!2780 = !DILocalVariable(name: "size", scope: !2781, file: !127, line: 903, type: !121)
!2781 = distinct !DILexicalBlock(scope: !2766, file: !127, line: 902, column: 3)
!2782 = !DILocalVariable(name: "val", scope: !2781, file: !127, line: 904, type: !37)
!2783 = !DILocalVariable(name: "flags", scope: !2781, file: !127, line: 906, type: !39)
!2784 = !DILocalVariable(name: "qsize", scope: !2781, file: !127, line: 907, type: !121)
!2785 = !DILocation(line: 877, column: 25, scope: !2766)
!2786 = !DILocation(line: 877, column: 40, scope: !2766)
!2787 = !DILocation(line: 877, column: 52, scope: !2766)
!2788 = !DILocation(line: 878, column: 51, scope: !2766)
!2789 = !DILocation(line: 880, column: 11, scope: !2766)
!2790 = !DILocation(line: 880, column: 7, scope: !2766)
!2791 = !DILocation(line: 882, column: 24, scope: !2766)
!2792 = !DILocation(line: 882, column: 19, scope: !2766)
!2793 = !DILocation(line: 884, column: 9, scope: !2794)
!2794 = distinct !DILexicalBlock(scope: !2766, file: !127, line: 884, column: 7)
!2795 = !DILocation(line: 884, column: 7, scope: !2766)
!2796 = !DILocation(line: 885, column: 5, scope: !2794)
!2797 = !DILocation(line: 887, column: 7, scope: !2778)
!2798 = !DILocation(line: 887, column: 14, scope: !2778)
!2799 = !DILocation(line: 887, column: 7, scope: !2766)
!2800 = !DILocation(line: 889, column: 31, scope: !2777)
!2801 = !DILocation(line: 890, column: 11, scope: !2777)
!2802 = !DILocation(line: 892, column: 16, scope: !2803)
!2803 = distinct !DILexicalBlock(scope: !2777, file: !127, line: 892, column: 11)
!2804 = !DILocation(line: 892, column: 11, scope: !2777)
!2805 = !DILocation(line: 893, column: 9, scope: !2803)
!2806 = !DILocation(line: 895, column: 32, scope: !2777)
!2807 = !DILocation(line: 895, column: 61, scope: !2777)
!2808 = !DILocation(line: 895, column: 58, scope: !2777)
!2809 = !DILocation(line: 895, column: 66, scope: !2777)
!2810 = !DILocation(line: 895, column: 22, scope: !2777)
!2811 = !DILocation(line: 895, column: 15, scope: !2777)
!2812 = !DILocation(line: 896, column: 11, scope: !2777)
!2813 = !DILocation(line: 897, column: 15, scope: !2814)
!2814 = distinct !DILexicalBlock(scope: !2777, file: !127, line: 896, column: 11)
!2815 = !{i64 0, i64 8, !2714, i64 8, i64 8, !752}
!2816 = !DILocation(line: 897, column: 9, scope: !2814)
!2817 = !DILocation(line: 898, column: 20, scope: !2777)
!2818 = !DILocation(line: 898, column: 18, scope: !2777)
!2819 = !DILocation(line: 898, column: 7, scope: !2777)
!2820 = !DILocation(line: 898, column: 38, scope: !2777)
!2821 = !DILocation(line: 898, column: 31, scope: !2777)
!2822 = !DILocation(line: 898, column: 48, scope: !2777)
!2823 = !DILocation(line: 899, column: 14, scope: !2777)
!2824 = !DILocation(line: 900, column: 5, scope: !2777)
!2825 = !DILocation(line: 0, scope: !2766)
!2826 = !DILocation(line: 903, column: 19, scope: !2781)
!2827 = !DILocation(line: 903, column: 25, scope: !2781)
!2828 = !DILocation(line: 903, column: 12, scope: !2781)
!2829 = !DILocation(line: 904, column: 23, scope: !2781)
!2830 = !DILocation(line: 904, column: 11, scope: !2781)
!2831 = !DILocation(line: 906, column: 26, scope: !2781)
!2832 = !DILocation(line: 906, column: 32, scope: !2781)
!2833 = !DILocation(line: 906, column: 9, scope: !2781)
!2834 = !DILocation(line: 908, column: 55, scope: !2781)
!2835 = !DILocation(line: 909, column: 46, scope: !2781)
!2836 = !DILocation(line: 910, column: 55, scope: !2781)
!2837 = !DILocation(line: 911, column: 55, scope: !2781)
!2838 = !DILocation(line: 907, column: 20, scope: !2781)
!2839 = !DILocation(line: 907, column: 12, scope: !2781)
!2840 = !DILocation(line: 913, column: 14, scope: !2841)
!2841 = distinct !DILexicalBlock(scope: !2781, file: !127, line: 913, column: 9)
!2842 = !DILocation(line: 913, column: 9, scope: !2781)
!2843 = !DILocation(line: 915, column: 35, scope: !2844)
!2844 = distinct !DILexicalBlock(scope: !2841, file: !127, line: 914, column: 7)
!2845 = !DILocation(line: 915, column: 20, scope: !2844)
!2846 = !DILocation(line: 916, column: 17, scope: !2847)
!2847 = distinct !DILexicalBlock(scope: !2844, file: !127, line: 916, column: 13)
!2848 = !DILocation(line: 916, column: 13, scope: !2844)
!2849 = !DILocation(line: 917, column: 11, scope: !2847)
!2850 = !DILocation(line: 216, column: 20, scope: !2669, inlinedAt: !2851)
!2851 = distinct !DILocation(line: 918, column: 27, scope: !2844)
!2852 = !DILocation(line: 218, column: 10, scope: !2669, inlinedAt: !2851)
!2853 = !DILocation(line: 918, column: 19, scope: !2844)
!2854 = !DILocation(line: 919, column: 69, scope: !2844)
!2855 = !DILocation(line: 921, column: 44, scope: !2844)
!2856 = !DILocation(line: 922, column: 44, scope: !2844)
!2857 = !DILocation(line: 919, column: 9, scope: !2844)
!2858 = !DILocation(line: 923, column: 7, scope: !2844)
!2859 = !DILocation(line: 0, scope: !2781)
!2860 = !DILocation(line: 925, column: 11, scope: !2781)
!2861 = !DILocation(line: 926, column: 5, scope: !2781)
!2862 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !127, file: !127, line: 937, type: !2863, isLocal: false, isDefinition: true, scopeLine: 938, flags: DIFlagPrototyped, isOptimized: true, unit: !112, retainedNodes: !2865)
!2863 = !DISubroutineType(types: !2864)
!2864 = !{!37, !39, !50, !121}
!2865 = !{!2866, !2867, !2868}
!2866 = !DILocalVariable(name: "n", arg: 1, scope: !2862, file: !127, line: 937, type: !39)
!2867 = !DILocalVariable(name: "arg", arg: 2, scope: !2862, file: !127, line: 937, type: !50)
!2868 = !DILocalVariable(name: "argsize", arg: 3, scope: !2862, file: !127, line: 937, type: !121)
!2869 = !DILocation(line: 937, column: 21, scope: !2862)
!2870 = !DILocation(line: 937, column: 36, scope: !2862)
!2871 = !DILocation(line: 937, column: 48, scope: !2862)
!2872 = !DILocation(line: 939, column: 10, scope: !2862)
!2873 = !DILocation(line: 939, column: 3, scope: !2862)
!2874 = distinct !DISubprogram(name: "quotearg", scope: !127, file: !127, line: 943, type: !2875, isLocal: false, isDefinition: true, scopeLine: 944, flags: DIFlagPrototyped, isOptimized: true, unit: !112, retainedNodes: !2877)
!2875 = !DISubroutineType(types: !2876)
!2876 = !{!37, !50}
!2877 = !{!2878}
!2878 = !DILocalVariable(name: "arg", arg: 1, scope: !2874, file: !127, line: 943, type: !50)
!2879 = !DILocation(line: 943, column: 23, scope: !2874)
!2880 = !DILocation(line: 931, column: 17, scope: !2756, inlinedAt: !2881)
!2881 = distinct !DILocation(line: 945, column: 10, scope: !2874)
!2882 = !DILocation(line: 931, column: 32, scope: !2756, inlinedAt: !2881)
!2883 = !DILocation(line: 933, column: 10, scope: !2756, inlinedAt: !2881)
!2884 = !DILocation(line: 945, column: 3, scope: !2874)
!2885 = distinct !DISubprogram(name: "quotearg_mem", scope: !127, file: !127, line: 949, type: !2886, isLocal: false, isDefinition: true, scopeLine: 950, flags: DIFlagPrototyped, isOptimized: true, unit: !112, retainedNodes: !2888)
!2886 = !DISubroutineType(types: !2887)
!2887 = !{!37, !50, !121}
!2888 = !{!2889, !2890}
!2889 = !DILocalVariable(name: "arg", arg: 1, scope: !2885, file: !127, line: 949, type: !50)
!2890 = !DILocalVariable(name: "argsize", arg: 2, scope: !2885, file: !127, line: 949, type: !121)
!2891 = !DILocation(line: 949, column: 27, scope: !2885)
!2892 = !DILocation(line: 949, column: 39, scope: !2885)
!2893 = !DILocation(line: 937, column: 21, scope: !2862, inlinedAt: !2894)
!2894 = distinct !DILocation(line: 951, column: 10, scope: !2885)
!2895 = !DILocation(line: 937, column: 36, scope: !2862, inlinedAt: !2894)
!2896 = !DILocation(line: 937, column: 48, scope: !2862, inlinedAt: !2894)
!2897 = !DILocation(line: 939, column: 10, scope: !2862, inlinedAt: !2894)
!2898 = !DILocation(line: 951, column: 3, scope: !2885)
!2899 = distinct !DISubprogram(name: "quotearg_n_style", scope: !127, file: !127, line: 955, type: !2900, isLocal: false, isDefinition: true, scopeLine: 956, flags: DIFlagPrototyped, isOptimized: true, unit: !112, retainedNodes: !2902)
!2900 = !DISubroutineType(types: !2901)
!2901 = !{!37, !39, !5, !50}
!2902 = !{!2903, !2904, !2905, !2906}
!2903 = !DILocalVariable(name: "n", arg: 1, scope: !2899, file: !127, line: 955, type: !39)
!2904 = !DILocalVariable(name: "s", arg: 2, scope: !2899, file: !127, line: 955, type: !5)
!2905 = !DILocalVariable(name: "arg", arg: 3, scope: !2899, file: !127, line: 955, type: !50)
!2906 = !DILocalVariable(name: "o", scope: !2899, file: !127, line: 957, type: !1667)
!2907 = !DILocation(line: 955, column: 23, scope: !2899)
!2908 = !DILocation(line: 955, column: 45, scope: !2899)
!2909 = !DILocation(line: 955, column: 60, scope: !2899)
!2910 = !DILocation(line: 957, column: 3, scope: !2899)
!2911 = !DILocation(line: 957, column: 32, scope: !2899)
!2912 = !DILocalVariable(name: "style", arg: 1, scope: !2913, file: !127, line: 193, type: !5)
!2913 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !127, file: !127, line: 193, type: !2914, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !112, retainedNodes: !2916)
!2914 = !DISubroutineType(types: !2915)
!2915 = !{!134, !5}
!2916 = !{!2912, !2917}
!2917 = !DILocalVariable(name: "o", scope: !2913, file: !127, line: 195, type: !134)
!2918 = !DILocation(line: 193, column: 48, scope: !2913, inlinedAt: !2919)
!2919 = distinct !DILocation(line: 957, column: 36, scope: !2899)
!2920 = !DILocation(line: 195, column: 26, scope: !2913, inlinedAt: !2919)
!2921 = !{!2922}
!2922 = distinct !{!2922, !2923, !"quoting_options_from_style: argument 0"}
!2923 = distinct !{!2923, !"quoting_options_from_style"}
!2924 = !DILocation(line: 196, column: 13, scope: !2925, inlinedAt: !2919)
!2925 = distinct !DILexicalBlock(scope: !2913, file: !127, line: 196, column: 7)
!2926 = !DILocation(line: 196, column: 7, scope: !2913, inlinedAt: !2919)
!2927 = !DILocation(line: 197, column: 5, scope: !2925, inlinedAt: !2919)
!2928 = !DILocation(line: 198, column: 5, scope: !2913, inlinedAt: !2919)
!2929 = !DILocation(line: 198, column: 11, scope: !2913, inlinedAt: !2919)
!2930 = !DILocation(line: 958, column: 10, scope: !2899)
!2931 = !DILocation(line: 959, column: 1, scope: !2899)
!2932 = !DILocation(line: 958, column: 3, scope: !2899)
!2933 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !127, file: !127, line: 962, type: !2934, isLocal: false, isDefinition: true, scopeLine: 964, flags: DIFlagPrototyped, isOptimized: true, unit: !112, retainedNodes: !2936)
!2934 = !DISubroutineType(types: !2935)
!2935 = !{!37, !39, !5, !50, !121}
!2936 = !{!2937, !2938, !2939, !2940, !2941}
!2937 = !DILocalVariable(name: "n", arg: 1, scope: !2933, file: !127, line: 962, type: !39)
!2938 = !DILocalVariable(name: "s", arg: 2, scope: !2933, file: !127, line: 962, type: !5)
!2939 = !DILocalVariable(name: "arg", arg: 3, scope: !2933, file: !127, line: 963, type: !50)
!2940 = !DILocalVariable(name: "argsize", arg: 4, scope: !2933, file: !127, line: 963, type: !121)
!2941 = !DILocalVariable(name: "o", scope: !2933, file: !127, line: 965, type: !1667)
!2942 = !DILocation(line: 962, column: 27, scope: !2933)
!2943 = !DILocation(line: 962, column: 49, scope: !2933)
!2944 = !DILocation(line: 963, column: 35, scope: !2933)
!2945 = !DILocation(line: 963, column: 47, scope: !2933)
!2946 = !DILocation(line: 965, column: 3, scope: !2933)
!2947 = !DILocation(line: 965, column: 32, scope: !2933)
!2948 = !DILocation(line: 193, column: 48, scope: !2913, inlinedAt: !2949)
!2949 = distinct !DILocation(line: 965, column: 36, scope: !2933)
!2950 = !DILocation(line: 195, column: 26, scope: !2913, inlinedAt: !2949)
!2951 = !{!2952}
!2952 = distinct !{!2952, !2953, !"quoting_options_from_style: argument 0"}
!2953 = distinct !{!2953, !"quoting_options_from_style"}
!2954 = !DILocation(line: 196, column: 13, scope: !2925, inlinedAt: !2949)
!2955 = !DILocation(line: 196, column: 7, scope: !2913, inlinedAt: !2949)
!2956 = !DILocation(line: 197, column: 5, scope: !2925, inlinedAt: !2949)
!2957 = !DILocation(line: 198, column: 5, scope: !2913, inlinedAt: !2949)
!2958 = !DILocation(line: 198, column: 11, scope: !2913, inlinedAt: !2949)
!2959 = !DILocation(line: 966, column: 10, scope: !2933)
!2960 = !DILocation(line: 967, column: 1, scope: !2933)
!2961 = !DILocation(line: 966, column: 3, scope: !2933)
!2962 = distinct !DISubprogram(name: "quotearg_style", scope: !127, file: !127, line: 970, type: !2963, isLocal: false, isDefinition: true, scopeLine: 971, flags: DIFlagPrototyped, isOptimized: true, unit: !112, retainedNodes: !2965)
!2963 = !DISubroutineType(types: !2964)
!2964 = !{!37, !5, !50}
!2965 = !{!2966, !2967}
!2966 = !DILocalVariable(name: "s", arg: 1, scope: !2962, file: !127, line: 970, type: !5)
!2967 = !DILocalVariable(name: "arg", arg: 2, scope: !2962, file: !127, line: 970, type: !50)
!2968 = !DILocation(line: 970, column: 36, scope: !2962)
!2969 = !DILocation(line: 970, column: 51, scope: !2962)
!2970 = !DILocation(line: 955, column: 23, scope: !2899, inlinedAt: !2971)
!2971 = distinct !DILocation(line: 972, column: 10, scope: !2962)
!2972 = !DILocation(line: 955, column: 45, scope: !2899, inlinedAt: !2971)
!2973 = !DILocation(line: 955, column: 60, scope: !2899, inlinedAt: !2971)
!2974 = !DILocation(line: 957, column: 3, scope: !2899, inlinedAt: !2971)
!2975 = !DILocation(line: 957, column: 32, scope: !2899, inlinedAt: !2971)
!2976 = !DILocation(line: 193, column: 48, scope: !2913, inlinedAt: !2977)
!2977 = distinct !DILocation(line: 957, column: 36, scope: !2899, inlinedAt: !2971)
!2978 = !DILocation(line: 195, column: 26, scope: !2913, inlinedAt: !2977)
!2979 = !{!2980}
!2980 = distinct !{!2980, !2981, !"quoting_options_from_style: argument 0"}
!2981 = distinct !{!2981, !"quoting_options_from_style"}
!2982 = !DILocation(line: 196, column: 13, scope: !2925, inlinedAt: !2977)
!2983 = !DILocation(line: 196, column: 7, scope: !2913, inlinedAt: !2977)
!2984 = !DILocation(line: 197, column: 5, scope: !2925, inlinedAt: !2977)
!2985 = !DILocation(line: 198, column: 5, scope: !2913, inlinedAt: !2977)
!2986 = !DILocation(line: 198, column: 11, scope: !2913, inlinedAt: !2977)
!2987 = !DILocation(line: 958, column: 10, scope: !2899, inlinedAt: !2971)
!2988 = !DILocation(line: 959, column: 1, scope: !2899, inlinedAt: !2971)
!2989 = !DILocation(line: 972, column: 3, scope: !2962)
!2990 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !127, file: !127, line: 976, type: !2991, isLocal: false, isDefinition: true, scopeLine: 977, flags: DIFlagPrototyped, isOptimized: true, unit: !112, retainedNodes: !2993)
!2991 = !DISubroutineType(types: !2992)
!2992 = !{!37, !5, !50, !121}
!2993 = !{!2994, !2995, !2996}
!2994 = !DILocalVariable(name: "s", arg: 1, scope: !2990, file: !127, line: 976, type: !5)
!2995 = !DILocalVariable(name: "arg", arg: 2, scope: !2990, file: !127, line: 976, type: !50)
!2996 = !DILocalVariable(name: "argsize", arg: 3, scope: !2990, file: !127, line: 976, type: !121)
!2997 = !DILocation(line: 976, column: 40, scope: !2990)
!2998 = !DILocation(line: 976, column: 55, scope: !2990)
!2999 = !DILocation(line: 976, column: 67, scope: !2990)
!3000 = !DILocation(line: 962, column: 27, scope: !2933, inlinedAt: !3001)
!3001 = distinct !DILocation(line: 978, column: 10, scope: !2990)
!3002 = !DILocation(line: 962, column: 49, scope: !2933, inlinedAt: !3001)
!3003 = !DILocation(line: 963, column: 35, scope: !2933, inlinedAt: !3001)
!3004 = !DILocation(line: 963, column: 47, scope: !2933, inlinedAt: !3001)
!3005 = !DILocation(line: 965, column: 3, scope: !2933, inlinedAt: !3001)
!3006 = !DILocation(line: 965, column: 32, scope: !2933, inlinedAt: !3001)
!3007 = !DILocation(line: 193, column: 48, scope: !2913, inlinedAt: !3008)
!3008 = distinct !DILocation(line: 965, column: 36, scope: !2933, inlinedAt: !3001)
!3009 = !DILocation(line: 195, column: 26, scope: !2913, inlinedAt: !3008)
!3010 = !{!3011}
!3011 = distinct !{!3011, !3012, !"quoting_options_from_style: argument 0"}
!3012 = distinct !{!3012, !"quoting_options_from_style"}
!3013 = !DILocation(line: 196, column: 13, scope: !2925, inlinedAt: !3008)
!3014 = !DILocation(line: 196, column: 7, scope: !2913, inlinedAt: !3008)
!3015 = !DILocation(line: 197, column: 5, scope: !2925, inlinedAt: !3008)
!3016 = !DILocation(line: 198, column: 5, scope: !2913, inlinedAt: !3008)
!3017 = !DILocation(line: 198, column: 11, scope: !2913, inlinedAt: !3008)
!3018 = !DILocation(line: 966, column: 10, scope: !2933, inlinedAt: !3001)
!3019 = !DILocation(line: 967, column: 1, scope: !2933, inlinedAt: !3001)
!3020 = !DILocation(line: 978, column: 3, scope: !2990)
!3021 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !127, file: !127, line: 982, type: !3022, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !112, retainedNodes: !3024)
!3022 = !DISubroutineType(types: !3023)
!3023 = !{!37, !50, !121, !38}
!3024 = !{!3025, !3026, !3027, !3028}
!3025 = !DILocalVariable(name: "arg", arg: 1, scope: !3021, file: !127, line: 982, type: !50)
!3026 = !DILocalVariable(name: "argsize", arg: 2, scope: !3021, file: !127, line: 982, type: !121)
!3027 = !DILocalVariable(name: "ch", arg: 3, scope: !3021, file: !127, line: 982, type: !38)
!3028 = !DILocalVariable(name: "options", scope: !3021, file: !127, line: 984, type: !134)
!3029 = !DILocation(line: 982, column: 32, scope: !3021)
!3030 = !DILocation(line: 982, column: 44, scope: !3021)
!3031 = !DILocation(line: 982, column: 58, scope: !3021)
!3032 = !DILocation(line: 984, column: 3, scope: !3021)
!3033 = !DILocation(line: 985, column: 13, scope: !3021)
!3034 = !{i64 0, i64 4, !906, i64 4, i64 4, !1207, i64 8, i64 32, !906, i64 40, i64 8, !752, i64 48, i64 8, !752}
!3035 = !DILocation(line: 984, column: 26, scope: !3021)
!3036 = !DILocation(line: 152, column: 43, scope: !1688, inlinedAt: !3037)
!3037 = distinct !DILocation(line: 986, column: 3, scope: !3021)
!3038 = !DILocation(line: 152, column: 51, scope: !1688, inlinedAt: !3037)
!3039 = !DILocation(line: 152, column: 58, scope: !1688, inlinedAt: !3037)
!3040 = !DILocation(line: 154, column: 17, scope: !1688, inlinedAt: !3037)
!3041 = !DILocation(line: 156, column: 62, scope: !1688, inlinedAt: !3037)
!3042 = !DILocation(line: 156, column: 57, scope: !1688, inlinedAt: !3037)
!3043 = !DILocation(line: 155, column: 17, scope: !1688, inlinedAt: !3037)
!3044 = !DILocation(line: 157, column: 15, scope: !1688, inlinedAt: !3037)
!3045 = !DILocation(line: 157, column: 7, scope: !1688, inlinedAt: !3037)
!3046 = !DILocation(line: 158, column: 12, scope: !1688, inlinedAt: !3037)
!3047 = !DILocation(line: 158, column: 15, scope: !1688, inlinedAt: !3037)
!3048 = !DILocation(line: 158, column: 25, scope: !1688, inlinedAt: !3037)
!3049 = !DILocation(line: 158, column: 7, scope: !1688, inlinedAt: !3037)
!3050 = !DILocation(line: 159, column: 18, scope: !1688, inlinedAt: !3037)
!3051 = !DILocation(line: 159, column: 23, scope: !1688, inlinedAt: !3037)
!3052 = !DILocation(line: 159, column: 6, scope: !1688, inlinedAt: !3037)
!3053 = !DILocation(line: 987, column: 10, scope: !3021)
!3054 = !DILocation(line: 988, column: 1, scope: !3021)
!3055 = !DILocation(line: 987, column: 3, scope: !3021)
!3056 = distinct !DISubprogram(name: "quotearg_char", scope: !127, file: !127, line: 991, type: !3057, isLocal: false, isDefinition: true, scopeLine: 992, flags: DIFlagPrototyped, isOptimized: true, unit: !112, retainedNodes: !3059)
!3057 = !DISubroutineType(types: !3058)
!3058 = !{!37, !50, !38}
!3059 = !{!3060, !3061}
!3060 = !DILocalVariable(name: "arg", arg: 1, scope: !3056, file: !127, line: 991, type: !50)
!3061 = !DILocalVariable(name: "ch", arg: 2, scope: !3056, file: !127, line: 991, type: !38)
!3062 = !DILocation(line: 991, column: 28, scope: !3056)
!3063 = !DILocation(line: 991, column: 38, scope: !3056)
!3064 = !DILocation(line: 982, column: 32, scope: !3021, inlinedAt: !3065)
!3065 = distinct !DILocation(line: 993, column: 10, scope: !3056)
!3066 = !DILocation(line: 982, column: 44, scope: !3021, inlinedAt: !3065)
!3067 = !DILocation(line: 982, column: 58, scope: !3021, inlinedAt: !3065)
!3068 = !DILocation(line: 984, column: 3, scope: !3021, inlinedAt: !3065)
!3069 = !DILocation(line: 985, column: 13, scope: !3021, inlinedAt: !3065)
!3070 = !DILocation(line: 984, column: 26, scope: !3021, inlinedAt: !3065)
!3071 = !DILocation(line: 152, column: 43, scope: !1688, inlinedAt: !3072)
!3072 = distinct !DILocation(line: 986, column: 3, scope: !3021, inlinedAt: !3065)
!3073 = !DILocation(line: 152, column: 51, scope: !1688, inlinedAt: !3072)
!3074 = !DILocation(line: 152, column: 58, scope: !1688, inlinedAt: !3072)
!3075 = !DILocation(line: 154, column: 17, scope: !1688, inlinedAt: !3072)
!3076 = !DILocation(line: 156, column: 62, scope: !1688, inlinedAt: !3072)
!3077 = !DILocation(line: 156, column: 57, scope: !1688, inlinedAt: !3072)
!3078 = !DILocation(line: 155, column: 17, scope: !1688, inlinedAt: !3072)
!3079 = !DILocation(line: 157, column: 15, scope: !1688, inlinedAt: !3072)
!3080 = !DILocation(line: 157, column: 7, scope: !1688, inlinedAt: !3072)
!3081 = !DILocation(line: 158, column: 12, scope: !1688, inlinedAt: !3072)
!3082 = !DILocation(line: 158, column: 15, scope: !1688, inlinedAt: !3072)
!3083 = !DILocation(line: 158, column: 25, scope: !1688, inlinedAt: !3072)
!3084 = !DILocation(line: 158, column: 7, scope: !1688, inlinedAt: !3072)
!3085 = !DILocation(line: 159, column: 18, scope: !1688, inlinedAt: !3072)
!3086 = !DILocation(line: 159, column: 23, scope: !1688, inlinedAt: !3072)
!3087 = !DILocation(line: 159, column: 6, scope: !1688, inlinedAt: !3072)
!3088 = !DILocation(line: 987, column: 10, scope: !3021, inlinedAt: !3065)
!3089 = !DILocation(line: 988, column: 1, scope: !3021, inlinedAt: !3065)
!3090 = !DILocation(line: 993, column: 3, scope: !3056)
!3091 = distinct !DISubprogram(name: "quotearg_colon", scope: !127, file: !127, line: 997, type: !2875, isLocal: false, isDefinition: true, scopeLine: 998, flags: DIFlagPrototyped, isOptimized: true, unit: !112, retainedNodes: !3092)
!3092 = !{!3093}
!3093 = !DILocalVariable(name: "arg", arg: 1, scope: !3091, file: !127, line: 997, type: !50)
!3094 = !DILocation(line: 997, column: 29, scope: !3091)
!3095 = !DILocation(line: 991, column: 28, scope: !3056, inlinedAt: !3096)
!3096 = distinct !DILocation(line: 999, column: 10, scope: !3091)
!3097 = !DILocation(line: 991, column: 38, scope: !3056, inlinedAt: !3096)
!3098 = !DILocation(line: 982, column: 32, scope: !3021, inlinedAt: !3099)
!3099 = distinct !DILocation(line: 993, column: 10, scope: !3056, inlinedAt: !3096)
!3100 = !DILocation(line: 982, column: 44, scope: !3021, inlinedAt: !3099)
!3101 = !DILocation(line: 982, column: 58, scope: !3021, inlinedAt: !3099)
!3102 = !DILocation(line: 984, column: 3, scope: !3021, inlinedAt: !3099)
!3103 = !DILocation(line: 985, column: 13, scope: !3021, inlinedAt: !3099)
!3104 = !DILocation(line: 984, column: 26, scope: !3021, inlinedAt: !3099)
!3105 = !DILocation(line: 152, column: 43, scope: !1688, inlinedAt: !3106)
!3106 = distinct !DILocation(line: 986, column: 3, scope: !3021, inlinedAt: !3099)
!3107 = !DILocation(line: 152, column: 51, scope: !1688, inlinedAt: !3106)
!3108 = !DILocation(line: 152, column: 58, scope: !1688, inlinedAt: !3106)
!3109 = !DILocation(line: 154, column: 17, scope: !1688, inlinedAt: !3106)
!3110 = !DILocation(line: 156, column: 57, scope: !1688, inlinedAt: !3106)
!3111 = !DILocation(line: 155, column: 17, scope: !1688, inlinedAt: !3106)
!3112 = !DILocation(line: 157, column: 7, scope: !1688, inlinedAt: !3106)
!3113 = !DILocation(line: 158, column: 12, scope: !1688, inlinedAt: !3106)
!3114 = !DILocation(line: 159, column: 6, scope: !1688, inlinedAt: !3106)
!3115 = !DILocation(line: 987, column: 10, scope: !3021, inlinedAt: !3099)
!3116 = !DILocation(line: 988, column: 1, scope: !3021, inlinedAt: !3099)
!3117 = !DILocation(line: 999, column: 3, scope: !3091)
!3118 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !127, file: !127, line: 1003, type: !2886, isLocal: false, isDefinition: true, scopeLine: 1004, flags: DIFlagPrototyped, isOptimized: true, unit: !112, retainedNodes: !3119)
!3119 = !{!3120, !3121}
!3120 = !DILocalVariable(name: "arg", arg: 1, scope: !3118, file: !127, line: 1003, type: !50)
!3121 = !DILocalVariable(name: "argsize", arg: 2, scope: !3118, file: !127, line: 1003, type: !121)
!3122 = !DILocation(line: 1003, column: 33, scope: !3118)
!3123 = !DILocation(line: 1003, column: 45, scope: !3118)
!3124 = !DILocation(line: 982, column: 32, scope: !3021, inlinedAt: !3125)
!3125 = distinct !DILocation(line: 1005, column: 10, scope: !3118)
!3126 = !DILocation(line: 982, column: 44, scope: !3021, inlinedAt: !3125)
!3127 = !DILocation(line: 982, column: 58, scope: !3021, inlinedAt: !3125)
!3128 = !DILocation(line: 984, column: 3, scope: !3021, inlinedAt: !3125)
!3129 = !DILocation(line: 985, column: 13, scope: !3021, inlinedAt: !3125)
!3130 = !DILocation(line: 984, column: 26, scope: !3021, inlinedAt: !3125)
!3131 = !DILocation(line: 152, column: 43, scope: !1688, inlinedAt: !3132)
!3132 = distinct !DILocation(line: 986, column: 3, scope: !3021, inlinedAt: !3125)
!3133 = !DILocation(line: 152, column: 51, scope: !1688, inlinedAt: !3132)
!3134 = !DILocation(line: 152, column: 58, scope: !1688, inlinedAt: !3132)
!3135 = !DILocation(line: 154, column: 17, scope: !1688, inlinedAt: !3132)
!3136 = !DILocation(line: 156, column: 57, scope: !1688, inlinedAt: !3132)
!3137 = !DILocation(line: 155, column: 17, scope: !1688, inlinedAt: !3132)
!3138 = !DILocation(line: 157, column: 7, scope: !1688, inlinedAt: !3132)
!3139 = !DILocation(line: 158, column: 12, scope: !1688, inlinedAt: !3132)
!3140 = !DILocation(line: 159, column: 6, scope: !1688, inlinedAt: !3132)
!3141 = !DILocation(line: 987, column: 10, scope: !3021, inlinedAt: !3125)
!3142 = !DILocation(line: 988, column: 1, scope: !3021, inlinedAt: !3125)
!3143 = !DILocation(line: 1005, column: 3, scope: !3118)
!3144 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !127, file: !127, line: 1009, type: !2900, isLocal: false, isDefinition: true, scopeLine: 1010, flags: DIFlagPrototyped, isOptimized: true, unit: !112, retainedNodes: !3145)
!3145 = !{!3146, !3147, !3148, !3149}
!3146 = !DILocalVariable(name: "n", arg: 1, scope: !3144, file: !127, line: 1009, type: !39)
!3147 = !DILocalVariable(name: "s", arg: 2, scope: !3144, file: !127, line: 1009, type: !5)
!3148 = !DILocalVariable(name: "arg", arg: 3, scope: !3144, file: !127, line: 1009, type: !50)
!3149 = !DILocalVariable(name: "options", scope: !3144, file: !127, line: 1011, type: !134)
!3150 = !DILocation(line: 195, column: 26, scope: !2913, inlinedAt: !3151)
!3151 = distinct !DILocation(line: 1012, column: 13, scope: !3144)
!3152 = !DILocation(line: 1009, column: 29, scope: !3144)
!3153 = !DILocation(line: 1009, column: 51, scope: !3144)
!3154 = !DILocation(line: 1009, column: 66, scope: !3144)
!3155 = !DILocation(line: 1011, column: 3, scope: !3144)
!3156 = !DILocation(line: 1012, column: 13, scope: !3144)
!3157 = !DILocation(line: 193, column: 48, scope: !2913, inlinedAt: !3151)
!3158 = !{!3159}
!3159 = distinct !{!3159, !3160, !"quoting_options_from_style: argument 0"}
!3160 = distinct !{!3160, !"quoting_options_from_style"}
!3161 = !DILocation(line: 196, column: 13, scope: !2925, inlinedAt: !3151)
!3162 = !DILocation(line: 196, column: 7, scope: !2913, inlinedAt: !3151)
!3163 = !DILocation(line: 197, column: 5, scope: !2925, inlinedAt: !3151)
!3164 = !DILocation(line: 1011, column: 26, scope: !3144)
!3165 = !DILocation(line: 152, column: 43, scope: !1688, inlinedAt: !3166)
!3166 = distinct !DILocation(line: 1013, column: 3, scope: !3144)
!3167 = !DILocation(line: 152, column: 51, scope: !1688, inlinedAt: !3166)
!3168 = !DILocation(line: 152, column: 58, scope: !1688, inlinedAt: !3166)
!3169 = !DILocation(line: 154, column: 17, scope: !1688, inlinedAt: !3166)
!3170 = !DILocation(line: 156, column: 57, scope: !1688, inlinedAt: !3166)
!3171 = !DILocation(line: 155, column: 17, scope: !1688, inlinedAt: !3166)
!3172 = !DILocation(line: 157, column: 7, scope: !1688, inlinedAt: !3166)
!3173 = !DILocation(line: 158, column: 12, scope: !1688, inlinedAt: !3166)
!3174 = !DILocation(line: 159, column: 6, scope: !1688, inlinedAt: !3166)
!3175 = !DILocation(line: 1014, column: 10, scope: !3144)
!3176 = !DILocation(line: 1015, column: 1, scope: !3144)
!3177 = !DILocation(line: 1014, column: 3, scope: !3144)
!3178 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !127, file: !127, line: 1018, type: !3179, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !112, retainedNodes: !3181)
!3179 = !DISubroutineType(types: !3180)
!3180 = !{!37, !39, !50, !50, !50}
!3181 = !{!3182, !3183, !3184, !3185}
!3182 = !DILocalVariable(name: "n", arg: 1, scope: !3178, file: !127, line: 1018, type: !39)
!3183 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3178, file: !127, line: 1018, type: !50)
!3184 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3178, file: !127, line: 1019, type: !50)
!3185 = !DILocalVariable(name: "arg", arg: 4, scope: !3178, file: !127, line: 1019, type: !50)
!3186 = !DILocation(line: 1018, column: 24, scope: !3178)
!3187 = !DILocation(line: 1018, column: 39, scope: !3178)
!3188 = !DILocation(line: 1019, column: 32, scope: !3178)
!3189 = !DILocation(line: 1019, column: 57, scope: !3178)
!3190 = !DILocalVariable(name: "n", arg: 1, scope: !3191, file: !127, line: 1026, type: !39)
!3191 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !127, file: !127, line: 1026, type: !3192, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !112, retainedNodes: !3194)
!3192 = !DISubroutineType(types: !3193)
!3193 = !{!37, !39, !50, !50, !50, !121}
!3194 = !{!3190, !3195, !3196, !3197, !3198, !3199}
!3195 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3191, file: !127, line: 1026, type: !50)
!3196 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3191, file: !127, line: 1027, type: !50)
!3197 = !DILocalVariable(name: "arg", arg: 4, scope: !3191, file: !127, line: 1028, type: !50)
!3198 = !DILocalVariable(name: "argsize", arg: 5, scope: !3191, file: !127, line: 1028, type: !121)
!3199 = !DILocalVariable(name: "o", scope: !3191, file: !127, line: 1030, type: !134)
!3200 = !DILocation(line: 1026, column: 28, scope: !3191, inlinedAt: !3201)
!3201 = distinct !DILocation(line: 1021, column: 10, scope: !3178)
!3202 = !DILocation(line: 1026, column: 43, scope: !3191, inlinedAt: !3201)
!3203 = !DILocation(line: 1027, column: 36, scope: !3191, inlinedAt: !3201)
!3204 = !DILocation(line: 1028, column: 36, scope: !3191, inlinedAt: !3201)
!3205 = !DILocation(line: 1028, column: 48, scope: !3191, inlinedAt: !3201)
!3206 = !DILocation(line: 1030, column: 3, scope: !3191, inlinedAt: !3201)
!3207 = !DILocation(line: 1030, column: 30, scope: !3191, inlinedAt: !3201)
!3208 = !DILocation(line: 1030, column: 26, scope: !3191, inlinedAt: !3201)
!3209 = !DILocation(line: 179, column: 45, scope: !1736, inlinedAt: !3210)
!3210 = distinct !DILocation(line: 1031, column: 3, scope: !3191, inlinedAt: !3201)
!3211 = !DILocation(line: 180, column: 33, scope: !1736, inlinedAt: !3210)
!3212 = !DILocation(line: 180, column: 57, scope: !1736, inlinedAt: !3210)
!3213 = !DILocation(line: 184, column: 6, scope: !1736, inlinedAt: !3210)
!3214 = !DILocation(line: 184, column: 12, scope: !1736, inlinedAt: !3210)
!3215 = !DILocation(line: 185, column: 8, scope: !1752, inlinedAt: !3210)
!3216 = !DILocation(line: 185, column: 23, scope: !1752, inlinedAt: !3210)
!3217 = !DILocation(line: 185, column: 19, scope: !1752, inlinedAt: !3210)
!3218 = !DILocation(line: 186, column: 5, scope: !1752, inlinedAt: !3210)
!3219 = !DILocation(line: 187, column: 6, scope: !1736, inlinedAt: !3210)
!3220 = !DILocation(line: 187, column: 17, scope: !1736, inlinedAt: !3210)
!3221 = !DILocation(line: 188, column: 6, scope: !1736, inlinedAt: !3210)
!3222 = !DILocation(line: 188, column: 18, scope: !1736, inlinedAt: !3210)
!3223 = !DILocation(line: 1032, column: 10, scope: !3191, inlinedAt: !3201)
!3224 = !DILocation(line: 1033, column: 1, scope: !3191, inlinedAt: !3201)
!3225 = !DILocation(line: 1021, column: 3, scope: !3178)
!3226 = !DILocation(line: 1026, column: 28, scope: !3191)
!3227 = !DILocation(line: 1026, column: 43, scope: !3191)
!3228 = !DILocation(line: 1027, column: 36, scope: !3191)
!3229 = !DILocation(line: 1028, column: 36, scope: !3191)
!3230 = !DILocation(line: 1028, column: 48, scope: !3191)
!3231 = !DILocation(line: 1030, column: 3, scope: !3191)
!3232 = !DILocation(line: 1030, column: 30, scope: !3191)
!3233 = !DILocation(line: 1030, column: 26, scope: !3191)
!3234 = !DILocation(line: 179, column: 45, scope: !1736, inlinedAt: !3235)
!3235 = distinct !DILocation(line: 1031, column: 3, scope: !3191)
!3236 = !DILocation(line: 180, column: 33, scope: !1736, inlinedAt: !3235)
!3237 = !DILocation(line: 180, column: 57, scope: !1736, inlinedAt: !3235)
!3238 = !DILocation(line: 184, column: 6, scope: !1736, inlinedAt: !3235)
!3239 = !DILocation(line: 184, column: 12, scope: !1736, inlinedAt: !3235)
!3240 = !DILocation(line: 185, column: 8, scope: !1752, inlinedAt: !3235)
!3241 = !DILocation(line: 185, column: 23, scope: !1752, inlinedAt: !3235)
!3242 = !DILocation(line: 185, column: 19, scope: !1752, inlinedAt: !3235)
!3243 = !DILocation(line: 186, column: 5, scope: !1752, inlinedAt: !3235)
!3244 = !DILocation(line: 187, column: 6, scope: !1736, inlinedAt: !3235)
!3245 = !DILocation(line: 187, column: 17, scope: !1736, inlinedAt: !3235)
!3246 = !DILocation(line: 188, column: 6, scope: !1736, inlinedAt: !3235)
!3247 = !DILocation(line: 188, column: 18, scope: !1736, inlinedAt: !3235)
!3248 = !DILocation(line: 1032, column: 10, scope: !3191)
!3249 = !DILocation(line: 1033, column: 1, scope: !3191)
!3250 = !DILocation(line: 1032, column: 3, scope: !3191)
!3251 = distinct !DISubprogram(name: "quotearg_custom", scope: !127, file: !127, line: 1036, type: !3252, isLocal: false, isDefinition: true, scopeLine: 1038, flags: DIFlagPrototyped, isOptimized: true, unit: !112, retainedNodes: !3254)
!3252 = !DISubroutineType(types: !3253)
!3253 = !{!37, !50, !50, !50}
!3254 = !{!3255, !3256, !3257}
!3255 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3251, file: !127, line: 1036, type: !50)
!3256 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3251, file: !127, line: 1036, type: !50)
!3257 = !DILocalVariable(name: "arg", arg: 3, scope: !3251, file: !127, line: 1037, type: !50)
!3258 = !DILocation(line: 1036, column: 30, scope: !3251)
!3259 = !DILocation(line: 1036, column: 54, scope: !3251)
!3260 = !DILocation(line: 1037, column: 30, scope: !3251)
!3261 = !DILocation(line: 1018, column: 24, scope: !3178, inlinedAt: !3262)
!3262 = distinct !DILocation(line: 1039, column: 10, scope: !3251)
!3263 = !DILocation(line: 1018, column: 39, scope: !3178, inlinedAt: !3262)
!3264 = !DILocation(line: 1019, column: 32, scope: !3178, inlinedAt: !3262)
!3265 = !DILocation(line: 1019, column: 57, scope: !3178, inlinedAt: !3262)
!3266 = !DILocation(line: 1026, column: 28, scope: !3191, inlinedAt: !3267)
!3267 = distinct !DILocation(line: 1021, column: 10, scope: !3178, inlinedAt: !3262)
!3268 = !DILocation(line: 1026, column: 43, scope: !3191, inlinedAt: !3267)
!3269 = !DILocation(line: 1027, column: 36, scope: !3191, inlinedAt: !3267)
!3270 = !DILocation(line: 1028, column: 36, scope: !3191, inlinedAt: !3267)
!3271 = !DILocation(line: 1028, column: 48, scope: !3191, inlinedAt: !3267)
!3272 = !DILocation(line: 1030, column: 3, scope: !3191, inlinedAt: !3267)
!3273 = !DILocation(line: 1030, column: 30, scope: !3191, inlinedAt: !3267)
!3274 = !DILocation(line: 1030, column: 26, scope: !3191, inlinedAt: !3267)
!3275 = !DILocation(line: 179, column: 45, scope: !1736, inlinedAt: !3276)
!3276 = distinct !DILocation(line: 1031, column: 3, scope: !3191, inlinedAt: !3267)
!3277 = !DILocation(line: 180, column: 33, scope: !1736, inlinedAt: !3276)
!3278 = !DILocation(line: 180, column: 57, scope: !1736, inlinedAt: !3276)
!3279 = !DILocation(line: 184, column: 6, scope: !1736, inlinedAt: !3276)
!3280 = !DILocation(line: 184, column: 12, scope: !1736, inlinedAt: !3276)
!3281 = !DILocation(line: 185, column: 8, scope: !1752, inlinedAt: !3276)
!3282 = !DILocation(line: 185, column: 23, scope: !1752, inlinedAt: !3276)
!3283 = !DILocation(line: 185, column: 19, scope: !1752, inlinedAt: !3276)
!3284 = !DILocation(line: 186, column: 5, scope: !1752, inlinedAt: !3276)
!3285 = !DILocation(line: 187, column: 6, scope: !1736, inlinedAt: !3276)
!3286 = !DILocation(line: 187, column: 17, scope: !1736, inlinedAt: !3276)
!3287 = !DILocation(line: 188, column: 6, scope: !1736, inlinedAt: !3276)
!3288 = !DILocation(line: 188, column: 18, scope: !1736, inlinedAt: !3276)
!3289 = !DILocation(line: 1032, column: 10, scope: !3191, inlinedAt: !3267)
!3290 = !DILocation(line: 1033, column: 1, scope: !3191, inlinedAt: !3267)
!3291 = !DILocation(line: 1039, column: 3, scope: !3251)
!3292 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !127, file: !127, line: 1043, type: !3293, isLocal: false, isDefinition: true, scopeLine: 1045, flags: DIFlagPrototyped, isOptimized: true, unit: !112, retainedNodes: !3295)
!3293 = !DISubroutineType(types: !3294)
!3294 = !{!37, !50, !50, !50, !121}
!3295 = !{!3296, !3297, !3298, !3299}
!3296 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3292, file: !127, line: 1043, type: !50)
!3297 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3292, file: !127, line: 1043, type: !50)
!3298 = !DILocalVariable(name: "arg", arg: 3, scope: !3292, file: !127, line: 1044, type: !50)
!3299 = !DILocalVariable(name: "argsize", arg: 4, scope: !3292, file: !127, line: 1044, type: !121)
!3300 = !DILocation(line: 1043, column: 34, scope: !3292)
!3301 = !DILocation(line: 1043, column: 58, scope: !3292)
!3302 = !DILocation(line: 1044, column: 34, scope: !3292)
!3303 = !DILocation(line: 1044, column: 46, scope: !3292)
!3304 = !DILocation(line: 1026, column: 28, scope: !3191, inlinedAt: !3305)
!3305 = distinct !DILocation(line: 1046, column: 10, scope: !3292)
!3306 = !DILocation(line: 1026, column: 43, scope: !3191, inlinedAt: !3305)
!3307 = !DILocation(line: 1027, column: 36, scope: !3191, inlinedAt: !3305)
!3308 = !DILocation(line: 1028, column: 36, scope: !3191, inlinedAt: !3305)
!3309 = !DILocation(line: 1028, column: 48, scope: !3191, inlinedAt: !3305)
!3310 = !DILocation(line: 1030, column: 3, scope: !3191, inlinedAt: !3305)
!3311 = !DILocation(line: 1030, column: 30, scope: !3191, inlinedAt: !3305)
!3312 = !DILocation(line: 1030, column: 26, scope: !3191, inlinedAt: !3305)
!3313 = !DILocation(line: 179, column: 45, scope: !1736, inlinedAt: !3314)
!3314 = distinct !DILocation(line: 1031, column: 3, scope: !3191, inlinedAt: !3305)
!3315 = !DILocation(line: 180, column: 33, scope: !1736, inlinedAt: !3314)
!3316 = !DILocation(line: 180, column: 57, scope: !1736, inlinedAt: !3314)
!3317 = !DILocation(line: 184, column: 6, scope: !1736, inlinedAt: !3314)
!3318 = !DILocation(line: 184, column: 12, scope: !1736, inlinedAt: !3314)
!3319 = !DILocation(line: 185, column: 8, scope: !1752, inlinedAt: !3314)
!3320 = !DILocation(line: 185, column: 23, scope: !1752, inlinedAt: !3314)
!3321 = !DILocation(line: 185, column: 19, scope: !1752, inlinedAt: !3314)
!3322 = !DILocation(line: 186, column: 5, scope: !1752, inlinedAt: !3314)
!3323 = !DILocation(line: 187, column: 6, scope: !1736, inlinedAt: !3314)
!3324 = !DILocation(line: 187, column: 17, scope: !1736, inlinedAt: !3314)
!3325 = !DILocation(line: 188, column: 6, scope: !1736, inlinedAt: !3314)
!3326 = !DILocation(line: 188, column: 18, scope: !1736, inlinedAt: !3314)
!3327 = !DILocation(line: 1032, column: 10, scope: !3191, inlinedAt: !3305)
!3328 = !DILocation(line: 1033, column: 1, scope: !3191, inlinedAt: !3305)
!3329 = !DILocation(line: 1046, column: 3, scope: !3292)
!3330 = distinct !DISubprogram(name: "quote_n_mem", scope: !127, file: !127, line: 1061, type: !3331, isLocal: false, isDefinition: true, scopeLine: 1062, flags: DIFlagPrototyped, isOptimized: true, unit: !112, retainedNodes: !3333)
!3331 = !DISubroutineType(types: !3332)
!3332 = !{!50, !39, !50, !121}
!3333 = !{!3334, !3335, !3336}
!3334 = !DILocalVariable(name: "n", arg: 1, scope: !3330, file: !127, line: 1061, type: !39)
!3335 = !DILocalVariable(name: "arg", arg: 2, scope: !3330, file: !127, line: 1061, type: !50)
!3336 = !DILocalVariable(name: "argsize", arg: 3, scope: !3330, file: !127, line: 1061, type: !121)
!3337 = !DILocation(line: 1061, column: 18, scope: !3330)
!3338 = !DILocation(line: 1061, column: 33, scope: !3330)
!3339 = !DILocation(line: 1061, column: 45, scope: !3330)
!3340 = !DILocation(line: 1063, column: 10, scope: !3330)
!3341 = !DILocation(line: 1063, column: 3, scope: !3330)
!3342 = distinct !DISubprogram(name: "quote_mem", scope: !127, file: !127, line: 1067, type: !3343, isLocal: false, isDefinition: true, scopeLine: 1068, flags: DIFlagPrototyped, isOptimized: true, unit: !112, retainedNodes: !3345)
!3343 = !DISubroutineType(types: !3344)
!3344 = !{!50, !50, !121}
!3345 = !{!3346, !3347}
!3346 = !DILocalVariable(name: "arg", arg: 1, scope: !3342, file: !127, line: 1067, type: !50)
!3347 = !DILocalVariable(name: "argsize", arg: 2, scope: !3342, file: !127, line: 1067, type: !121)
!3348 = !DILocation(line: 1067, column: 24, scope: !3342)
!3349 = !DILocation(line: 1067, column: 36, scope: !3342)
!3350 = !DILocation(line: 1061, column: 18, scope: !3330, inlinedAt: !3351)
!3351 = distinct !DILocation(line: 1069, column: 10, scope: !3342)
!3352 = !DILocation(line: 1061, column: 33, scope: !3330, inlinedAt: !3351)
!3353 = !DILocation(line: 1061, column: 45, scope: !3330, inlinedAt: !3351)
!3354 = !DILocation(line: 1063, column: 10, scope: !3330, inlinedAt: !3351)
!3355 = !DILocation(line: 1069, column: 3, scope: !3342)
!3356 = distinct !DISubprogram(name: "quote_n", scope: !127, file: !127, line: 1073, type: !3357, isLocal: false, isDefinition: true, scopeLine: 1074, flags: DIFlagPrototyped, isOptimized: true, unit: !112, retainedNodes: !3359)
!3357 = !DISubroutineType(types: !3358)
!3358 = !{!50, !39, !50}
!3359 = !{!3360, !3361}
!3360 = !DILocalVariable(name: "n", arg: 1, scope: !3356, file: !127, line: 1073, type: !39)
!3361 = !DILocalVariable(name: "arg", arg: 2, scope: !3356, file: !127, line: 1073, type: !50)
!3362 = !DILocation(line: 1073, column: 14, scope: !3356)
!3363 = !DILocation(line: 1073, column: 29, scope: !3356)
!3364 = !DILocation(line: 1061, column: 18, scope: !3330, inlinedAt: !3365)
!3365 = distinct !DILocation(line: 1075, column: 10, scope: !3356)
!3366 = !DILocation(line: 1061, column: 33, scope: !3330, inlinedAt: !3365)
!3367 = !DILocation(line: 1061, column: 45, scope: !3330, inlinedAt: !3365)
!3368 = !DILocation(line: 1063, column: 10, scope: !3330, inlinedAt: !3365)
!3369 = !DILocation(line: 1075, column: 3, scope: !3356)
!3370 = distinct !DISubprogram(name: "quote", scope: !127, file: !127, line: 1079, type: !3371, isLocal: false, isDefinition: true, scopeLine: 1080, flags: DIFlagPrototyped, isOptimized: true, unit: !112, retainedNodes: !3373)
!3371 = !DISubroutineType(types: !3372)
!3372 = !{!50, !50}
!3373 = !{!3374}
!3374 = !DILocalVariable(name: "arg", arg: 1, scope: !3370, file: !127, line: 1079, type: !50)
!3375 = !DILocation(line: 1079, column: 20, scope: !3370)
!3376 = !DILocation(line: 1073, column: 14, scope: !3356, inlinedAt: !3377)
!3377 = distinct !DILocation(line: 1081, column: 10, scope: !3370)
!3378 = !DILocation(line: 1073, column: 29, scope: !3356, inlinedAt: !3377)
!3379 = !DILocation(line: 1061, column: 18, scope: !3330, inlinedAt: !3380)
!3380 = distinct !DILocation(line: 1075, column: 10, scope: !3356, inlinedAt: !3377)
!3381 = !DILocation(line: 1061, column: 33, scope: !3330, inlinedAt: !3380)
!3382 = !DILocation(line: 1061, column: 45, scope: !3330, inlinedAt: !3380)
!3383 = !DILocation(line: 1063, column: 10, scope: !3330, inlinedAt: !3380)
!3384 = !DILocation(line: 1081, column: 3, scope: !3370)
!3385 = !DILocation(line: 64, column: 29, scope: !167)
!3386 = !DILocation(line: 65, column: 23, scope: !167)
!3387 = !DILocation(line: 67, column: 23, scope: !167)
!3388 = !DILocation(line: 69, column: 22, scope: !167)
!3389 = !DILocation(line: 77, column: 3, scope: !167)
!3390 = !DILocation(line: 77, column: 8, scope: !167)
!3391 = !DILocation(line: 80, column: 7, scope: !167)
!3392 = !DILocation(line: 82, column: 29, scope: !256)
!3393 = !DILocation(line: 82, column: 19, scope: !256)
!3394 = !DILocation(line: 84, column: 18, scope: !256)
!3395 = !DILocation(line: 84, column: 17, scope: !256)
!3396 = !DILocation(line: 84, column: 15, scope: !256)
!3397 = !DILocation(line: 86, column: 11, scope: !256)
!3398 = !DILocation(line: 88, column: 27, scope: !3399)
!3399 = distinct !DILexicalBlock(scope: !3400, file: !168, line: 87, column: 9)
!3400 = distinct !DILexicalBlock(scope: !256, file: !168, line: 86, column: 11)
!3401 = !DILocation(line: 88, column: 25, scope: !3399)
!3402 = !DILocation(line: 89, column: 29, scope: !3403)
!3403 = distinct !DILexicalBlock(scope: !3399, file: !168, line: 89, column: 15)
!3404 = !DILocation(line: 89, column: 15, scope: !3399)
!3405 = !DILocation(line: 91, column: 29, scope: !3403)
!3406 = !DILocation(line: 91, column: 27, scope: !3403)
!3407 = !DILocation(line: 91, column: 13, scope: !3403)
!3408 = !DILocation(line: 95, column: 5, scope: !256)
!3409 = !DILocation(line: 98, column: 8, scope: !3410)
!3410 = distinct !DILexicalBlock(scope: !167, file: !168, line: 98, column: 7)
!3411 = !DILocation(line: 101, column: 11, scope: !3412)
!3412 = distinct !DILexicalBlock(scope: !3413, file: !168, line: 101, column: 11)
!3413 = distinct !DILexicalBlock(scope: !3410, file: !168, line: 99, column: 5)
!3414 = !DILocation(line: 101, column: 25, scope: !3412)
!3415 = !DILocation(line: 98, column: 7, scope: !167)
!3416 = !DILocation(line: 102, column: 16, scope: !3412)
!3417 = !DILocation(line: 102, column: 9, scope: !3412)
!3418 = !DILocalVariable(name: "s", arg: 1, scope: !3419, file: !3420, line: 315, type: !3423)
!3419 = distinct !DISubprogram(name: "u8_uctomb", scope: !3420, file: !3420, line: 315, type: !3421, isLocal: true, isDefinition: true, scopeLine: 316, flags: DIFlagPrototyped, isOptimized: true, unit: !178, retainedNodes: !3431)
!3420 = !DIFile(filename: "./lib/unistr.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3421 = !DISubroutineType(types: !3422)
!3422 = !{!39, !3423, !3427, !39}
!3423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3424, size: 64)
!3424 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !3425, line: 24, baseType: !3426)
!3425 = !DIFile(filename: "/usr/include/bits/stdint-uintn.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3426 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !212, line: 37, baseType: !40)
!3427 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs4_t", file: !3428, line: 25, baseType: !3429)
!3428 = !DIFile(filename: "./lib/unitypes.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3429 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !3425, line: 26, baseType: !3430)
!3430 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !212, line: 41, baseType: !7)
!3431 = !{!3418, !3432, !3433}
!3432 = !DILocalVariable(name: "uc", arg: 2, scope: !3419, file: !3420, line: 315, type: !3427)
!3433 = !DILocalVariable(name: "n", arg: 3, scope: !3419, file: !3420, line: 315, type: !39)
!3434 = !DILocation(line: 315, column: 21, scope: !3419, inlinedAt: !3435)
!3435 = distinct !DILocation(line: 109, column: 11, scope: !167)
!3436 = !DILocation(line: 315, column: 31, scope: !3419, inlinedAt: !3435)
!3437 = !DILocation(line: 315, column: 39, scope: !3419, inlinedAt: !3435)
!3438 = !DILocation(line: 317, column: 10, scope: !3439, inlinedAt: !3435)
!3439 = distinct !DILexicalBlock(scope: !3419, file: !3420, line: 317, column: 7)
!3440 = !DILocation(line: 317, column: 17, scope: !3439, inlinedAt: !3435)
!3441 = !DILocation(line: 319, column: 14, scope: !3442, inlinedAt: !3435)
!3442 = distinct !DILexicalBlock(scope: !3439, file: !3420, line: 318, column: 5)
!3443 = !DILocation(line: 319, column: 12, scope: !3442, inlinedAt: !3435)
!3444 = !DILocation(line: 78, column: 7, scope: !167)
!3445 = !DILocation(line: 110, column: 7, scope: !167)
!3446 = !DILocation(line: 323, column: 12, scope: !3439, inlinedAt: !3435)
!3447 = !DILocation(line: 110, column: 13, scope: !3448)
!3448 = distinct !DILexicalBlock(scope: !167, file: !168, line: 110, column: 7)
!3449 = !DILocation(line: 114, column: 8, scope: !260)
!3450 = !DILocation(line: 111, column: 12, scope: !3448)
!3451 = !DILocation(line: 111, column: 5, scope: !3448)
!3452 = !DILocation(line: 114, column: 7, scope: !167)
!3453 = !DILocation(line: 116, column: 7, scope: !259)
!3454 = !DILocation(line: 116, column: 12, scope: !259)
!3455 = !DILocation(line: 117, column: 7, scope: !259)
!3456 = !DILocation(line: 118, column: 7, scope: !259)
!3457 = !DILocation(line: 119, column: 7, scope: !259)
!3458 = !DILocation(line: 120, column: 7, scope: !259)
!3459 = !DILocation(line: 117, column: 19, scope: !259)
!3460 = !DILocation(line: 123, column: 13, scope: !259)
!3461 = !DILocation(line: 118, column: 14, scope: !259)
!3462 = !DILocation(line: 124, column: 19, scope: !259)
!3463 = !DILocation(line: 119, column: 13, scope: !259)
!3464 = !DILocation(line: 125, column: 14, scope: !259)
!3465 = !DILocation(line: 120, column: 14, scope: !259)
!3466 = !DILocation(line: 126, column: 20, scope: !259)
!3467 = !DILocation(line: 129, column: 20, scope: !259)
!3468 = !DILocation(line: 129, column: 13, scope: !259)
!3469 = !DILocation(line: 121, column: 14, scope: !259)
!3470 = !DILocation(line: 132, column: 11, scope: !3471)
!3471 = distinct !DILexicalBlock(scope: !259, file: !168, line: 132, column: 11)
!3472 = !DILocation(line: 132, column: 23, scope: !3471)
!3473 = !DILocation(line: 132, column: 34, scope: !3471)
!3474 = !DILocation(line: 132, column: 27, scope: !3471)
!3475 = !DILocation(line: 138, column: 16, scope: !3471)
!3476 = !DILocation(line: 138, column: 9, scope: !3471)
!3477 = !DILocation(line: 147, column: 20, scope: !259)
!3478 = !DILocation(line: 147, column: 13, scope: !259)
!3479 = !DILocation(line: 148, column: 15, scope: !3480)
!3480 = distinct !DILexicalBlock(scope: !259, file: !168, line: 148, column: 11)
!3481 = !DILocation(line: 148, column: 11, scope: !259)
!3482 = !DILocation(line: 149, column: 16, scope: !3480)
!3483 = !DILocation(line: 149, column: 9, scope: !3480)
!3484 = !DILocation(line: 152, column: 31, scope: !259)
!3485 = !DILocation(line: 152, column: 38, scope: !259)
!3486 = !DILocation(line: 152, column: 14, scope: !259)
!3487 = !DILocation(line: 152, column: 7, scope: !259)
!3488 = !DILocation(line: 0, scope: !259)
!3489 = !DILocation(line: 153, column: 5, scope: !260)
!3490 = !DILocation(line: 157, column: 10, scope: !167)
!3491 = !DILocation(line: 157, column: 3, scope: !167)
!3492 = !DILocation(line: 0, scope: !3471)
!3493 = !DILocation(line: 158, column: 1, scope: !167)
!3494 = distinct !DISubprogram(name: "fwrite_success_callback", scope: !168, file: !168, line: 163, type: !173, isLocal: false, isDefinition: true, scopeLine: 164, flags: DIFlagPrototyped, isOptimized: true, unit: !178, retainedNodes: !3495)
!3495 = !{!3496, !3497, !3498, !3499}
!3496 = !DILocalVariable(name: "buf", arg: 1, scope: !3494, file: !168, line: 163, type: !50)
!3497 = !DILocalVariable(name: "buflen", arg: 2, scope: !3494, file: !168, line: 163, type: !121)
!3498 = !DILocalVariable(name: "callback_arg", arg: 3, scope: !3494, file: !168, line: 163, type: !36)
!3499 = !DILocalVariable(name: "stream", scope: !3494, file: !168, line: 165, type: !185)
!3500 = !DILocation(line: 163, column: 38, scope: !3494)
!3501 = !DILocation(line: 163, column: 50, scope: !3494)
!3502 = !DILocation(line: 163, column: 64, scope: !3494)
!3503 = !DILocation(line: 165, column: 18, scope: !3494)
!3504 = !DILocation(line: 165, column: 9, scope: !3494)
!3505 = !DILocation(line: 171, column: 3, scope: !3494)
!3506 = !DILocation(line: 172, column: 3, scope: !3494)
!3507 = distinct !DISubprogram(name: "print_unicode_char", scope: !168, file: !168, line: 208, type: !3508, isLocal: false, isDefinition: true, scopeLine: 209, flags: DIFlagPrototyped, isOptimized: true, unit: !178, retainedNodes: !3510)
!3508 = !DISubroutineType(types: !3509)
!3509 = !{null, !185, !7, !39}
!3510 = !{!3511, !3512, !3513}
!3511 = !DILocalVariable(name: "stream", arg: 1, scope: !3507, file: !168, line: 208, type: !185)
!3512 = !DILocalVariable(name: "code", arg: 2, scope: !3507, file: !168, line: 208, type: !7)
!3513 = !DILocalVariable(name: "exit_on_error", arg: 3, scope: !3507, file: !168, line: 208, type: !39)
!3514 = !DILocation(line: 208, column: 27, scope: !3507)
!3515 = !DILocation(line: 208, column: 48, scope: !3507)
!3516 = !DILocation(line: 208, column: 58, scope: !3507)
!3517 = !DILocation(line: 211, column: 18, scope: !3507)
!3518 = !DILocation(line: 214, column: 18, scope: !3507)
!3519 = !DILocation(line: 210, column: 3, scope: !3507)
!3520 = !DILocation(line: 215, column: 1, scope: !3507)
!3521 = distinct !DISubprogram(name: "fallback_failure_callback", scope: !168, file: !168, line: 191, type: !176, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !178, retainedNodes: !3522)
!3522 = !{!3523, !3524, !3525, !3526}
!3523 = !DILocalVariable(name: "code", arg: 1, scope: !3521, file: !168, line: 191, type: !7)
!3524 = !DILocalVariable(name: "msg", arg: 2, scope: !3521, file: !168, line: 192, type: !50)
!3525 = !DILocalVariable(name: "callback_arg", arg: 3, scope: !3521, file: !168, line: 193, type: !36)
!3526 = !DILocalVariable(name: "stream", scope: !3521, file: !168, line: 195, type: !185)
!3527 = !DILocation(line: 191, column: 41, scope: !3521)
!3528 = !DILocation(line: 192, column: 40, scope: !3521)
!3529 = !DILocation(line: 193, column: 34, scope: !3521)
!3530 = !DILocation(line: 195, column: 18, scope: !3521)
!3531 = !DILocation(line: 195, column: 9, scope: !3521)
!3532 = !DILocation(line: 197, column: 12, scope: !3533)
!3533 = distinct !DILexicalBlock(scope: !3521, file: !168, line: 197, column: 7)
!3534 = !DILocation(line: 197, column: 7, scope: !3521)
!3535 = !DILocation(line: 198, column: 5, scope: !3533)
!3536 = !DILocation(line: 200, column: 5, scope: !3533)
!3537 = !DILocation(line: 201, column: 3, scope: !3521)
!3538 = distinct !DISubprogram(name: "exit_failure_callback", scope: !168, file: !168, line: 177, type: !176, isLocal: true, isDefinition: true, scopeLine: 179, flags: DIFlagPrototyped, isOptimized: true, unit: !178, retainedNodes: !3539)
!3539 = !{!3540, !3541, !3542}
!3540 = !DILocalVariable(name: "code", arg: 1, scope: !3538, file: !168, line: 177, type: !7)
!3541 = !DILocalVariable(name: "msg", arg: 2, scope: !3538, file: !168, line: 177, type: !50)
!3542 = !DILocalVariable(name: "callback_arg", arg: 3, scope: !3538, file: !168, line: 178, type: !36)
!3543 = !DILocation(line: 177, column: 37, scope: !3538)
!3544 = !DILocation(line: 177, column: 55, scope: !3538)
!3545 = !DILocation(line: 178, column: 30, scope: !3538)
!3546 = !DILocation(line: 180, column: 11, scope: !3547)
!3547 = distinct !DILexicalBlock(scope: !3538, file: !168, line: 180, column: 7)
!3548 = !DILocation(line: 180, column: 7, scope: !3538)
!3549 = !DILocation(line: 181, column: 18, scope: !3547)
!3550 = !DILocation(line: 181, column: 5, scope: !3547)
!3551 = !DILocation(line: 183, column: 18, scope: !3547)
!3552 = !DILocation(line: 184, column: 12, scope: !3547)
!3553 = !DILocation(line: 183, column: 5, scope: !3547)
!3554 = !DILocation(line: 185, column: 3, scope: !3538)
!3555 = distinct !DISubprogram(name: "u8_uctomb_aux", scope: !279, file: !279, line: 32, type: !3421, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped, isOptimized: true, unit: !278, retainedNodes: !3556)
!3556 = !{!3557, !3558, !3559, !3560}
!3557 = !DILocalVariable(name: "s", arg: 1, scope: !3555, file: !279, line: 32, type: !3423)
!3558 = !DILocalVariable(name: "uc", arg: 2, scope: !3555, file: !279, line: 32, type: !3427)
!3559 = !DILocalVariable(name: "n", arg: 3, scope: !3555, file: !279, line: 32, type: !39)
!3560 = !DILocalVariable(name: "count", scope: !3555, file: !279, line: 34, type: !39)
!3561 = !DILocation(line: 32, column: 25, scope: !3555)
!3562 = !DILocation(line: 32, column: 35, scope: !3555)
!3563 = !DILocation(line: 32, column: 43, scope: !3555)
!3564 = !DILocation(line: 36, column: 10, scope: !3565)
!3565 = distinct !DILexicalBlock(scope: !3555, file: !279, line: 36, column: 7)
!3566 = !DILocation(line: 36, column: 7, scope: !3555)
!3567 = !DILocation(line: 39, column: 15, scope: !3568)
!3568 = distinct !DILexicalBlock(scope: !3565, file: !279, line: 39, column: 12)
!3569 = !DILocation(line: 39, column: 12, scope: !3565)
!3570 = !DILocation(line: 41, column: 15, scope: !3571)
!3571 = distinct !DILexicalBlock(scope: !3568, file: !279, line: 41, column: 12)
!3572 = !DILocation(line: 41, column: 12, scope: !3568)
!3573 = !DILocation(line: 43, column: 23, scope: !3574)
!3574 = distinct !DILexicalBlock(scope: !3575, file: !279, line: 43, column: 11)
!3575 = distinct !DILexicalBlock(scope: !3571, file: !279, line: 42, column: 5)
!3576 = !DILocation(line: 48, column: 15, scope: !3577)
!3577 = distinct !DILexicalBlock(scope: !3571, file: !279, line: 48, column: 12)
!3578 = !DILocation(line: 48, column: 12, scope: !3571)
!3579 = !DILocation(line: 0, scope: !3577)
!3580 = !DILocation(line: 34, column: 7, scope: !3555)
!3581 = !DILocation(line: 53, column: 9, scope: !3582)
!3582 = distinct !DILexicalBlock(scope: !3555, file: !279, line: 53, column: 7)
!3583 = !DILocation(line: 53, column: 7, scope: !3555)
!3584 = !DILocation(line: 56, column: 3, scope: !3555)
!3585 = !DILocation(line: 58, column: 20, scope: !3586)
!3586 = distinct !DILexicalBlock(scope: !3555, file: !279, line: 57, column: 5)
!3587 = !DILocation(line: 58, column: 13, scope: !3586)
!3588 = !DILocation(line: 58, column: 18, scope: !3586)
!3589 = !DILocation(line: 58, column: 48, scope: !3586)
!3590 = !DILocation(line: 58, column: 57, scope: !3586)
!3591 = !DILocation(line: 59, column: 7, scope: !3586)
!3592 = !DILocation(line: 60, column: 20, scope: !3586)
!3593 = !DILocation(line: 60, column: 13, scope: !3586)
!3594 = !DILocation(line: 60, column: 18, scope: !3586)
!3595 = !DILocation(line: 60, column: 48, scope: !3586)
!3596 = !DILocation(line: 60, column: 57, scope: !3586)
!3597 = !DILocation(line: 61, column: 7, scope: !3586)
!3598 = !DILocation(line: 62, column: 20, scope: !3586)
!3599 = !DILocation(line: 62, column: 13, scope: !3586)
!3600 = !DILocation(line: 62, column: 18, scope: !3586)
!3601 = !DILocation(line: 62, column: 48, scope: !3586)
!3602 = !DILocation(line: 63, column: 22, scope: !3586)
!3603 = !DILocation(line: 63, column: 20, scope: !3586)
!3604 = !DILocation(line: 64, column: 5, scope: !3586)
!3605 = !DILocation(line: 66, column: 1, scope: !3555)
!3606 = distinct !DISubprogram(name: "version_etc_arn", scope: !284, file: !284, line: 62, type: !3607, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !280, retainedNodes: !3644)
!3607 = !DISubroutineType(types: !3608)
!3608 = !{null, !3609, !50, !50, !50, !3643, !121}
!3609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3610, size: 64)
!3610 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !187, line: 7, baseType: !3611)
!3611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !189, line: 49, size: 1728, elements: !3612)
!3612 = !{!3613, !3614, !3615, !3616, !3617, !3618, !3619, !3620, !3621, !3622, !3623, !3624, !3625, !3626, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642}
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3611, file: !189, line: 51, baseType: !39, size: 32)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3611, file: !189, line: 54, baseType: !37, size: 64, offset: 64)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3611, file: !189, line: 55, baseType: !37, size: 64, offset: 128)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3611, file: !189, line: 56, baseType: !37, size: 64, offset: 192)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3611, file: !189, line: 57, baseType: !37, size: 64, offset: 256)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3611, file: !189, line: 58, baseType: !37, size: 64, offset: 320)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3611, file: !189, line: 59, baseType: !37, size: 64, offset: 384)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3611, file: !189, line: 60, baseType: !37, size: 64, offset: 448)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3611, file: !189, line: 61, baseType: !37, size: 64, offset: 512)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3611, file: !189, line: 64, baseType: !37, size: 64, offset: 576)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3611, file: !189, line: 65, baseType: !37, size: 64, offset: 640)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3611, file: !189, line: 66, baseType: !37, size: 64, offset: 704)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3611, file: !189, line: 68, baseType: !204, size: 64, offset: 768)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3611, file: !189, line: 70, baseType: !3627, size: 64, offset: 832)
!3627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3611, size: 64)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3611, file: !189, line: 72, baseType: !39, size: 32, offset: 896)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3611, file: !189, line: 73, baseType: !39, size: 32, offset: 928)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3611, file: !189, line: 74, baseType: !211, size: 64, offset: 960)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3611, file: !189, line: 77, baseType: !41, size: 16, offset: 1024)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3611, file: !189, line: 78, baseType: !215, size: 8, offset: 1040)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3611, file: !189, line: 79, baseType: !217, size: 8, offset: 1048)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3611, file: !189, line: 81, baseType: !221, size: 64, offset: 1088)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3611, file: !189, line: 89, baseType: !224, size: 64, offset: 1152)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3611, file: !189, line: 91, baseType: !226, size: 64, offset: 1216)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3611, file: !189, line: 92, baseType: !229, size: 64, offset: 1280)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3611, file: !189, line: 93, baseType: !3627, size: 64, offset: 1344)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3611, file: !189, line: 94, baseType: !36, size: 64, offset: 1408)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3611, file: !189, line: 95, baseType: !121, size: 64, offset: 1472)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3611, file: !189, line: 96, baseType: !39, size: 32, offset: 1536)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3611, file: !189, line: 98, baseType: !236, size: 160, offset: 1568)
!3643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!3644 = !{!3645, !3646, !3647, !3648, !3649, !3650}
!3645 = !DILocalVariable(name: "stream", arg: 1, scope: !3606, file: !284, line: 62, type: !3609)
!3646 = !DILocalVariable(name: "command_name", arg: 2, scope: !3606, file: !284, line: 63, type: !50)
!3647 = !DILocalVariable(name: "package", arg: 3, scope: !3606, file: !284, line: 63, type: !50)
!3648 = !DILocalVariable(name: "version", arg: 4, scope: !3606, file: !284, line: 64, type: !50)
!3649 = !DILocalVariable(name: "authors", arg: 5, scope: !3606, file: !284, line: 65, type: !3643)
!3650 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3606, file: !284, line: 65, type: !121)
!3651 = !DILocation(line: 62, column: 24, scope: !3606)
!3652 = !DILocation(line: 63, column: 30, scope: !3606)
!3653 = !DILocation(line: 63, column: 56, scope: !3606)
!3654 = !DILocation(line: 64, column: 30, scope: !3606)
!3655 = !DILocation(line: 65, column: 39, scope: !3606)
!3656 = !DILocation(line: 65, column: 55, scope: !3606)
!3657 = !DILocation(line: 67, column: 7, scope: !3658)
!3658 = distinct !DILexicalBlock(scope: !3606, file: !284, line: 67, column: 7)
!3659 = !DILocation(line: 67, column: 7, scope: !3606)
!3660 = !DILocation(line: 68, column: 5, scope: !3658)
!3661 = !DILocation(line: 70, column: 5, scope: !3658)
!3662 = !DILocation(line: 84, column: 3, scope: !3606)
!3663 = !DILocation(line: 86, column: 3, scope: !3606)
!3664 = !DILocation(line: 95, column: 3, scope: !3606)
!3665 = !DILocation(line: 99, column: 7, scope: !3666)
!3666 = distinct !DILexicalBlock(scope: !3606, file: !284, line: 96, column: 5)
!3667 = !DILocation(line: 102, column: 7, scope: !3666)
!3668 = !DILocation(line: 103, column: 7, scope: !3666)
!3669 = !DILocation(line: 106, column: 7, scope: !3666)
!3670 = !DILocation(line: 107, column: 7, scope: !3666)
!3671 = !DILocation(line: 110, column: 7, scope: !3666)
!3672 = !DILocation(line: 112, column: 7, scope: !3666)
!3673 = !DILocation(line: 117, column: 7, scope: !3666)
!3674 = !DILocation(line: 119, column: 7, scope: !3666)
!3675 = !DILocation(line: 124, column: 7, scope: !3666)
!3676 = !DILocation(line: 126, column: 7, scope: !3666)
!3677 = !DILocation(line: 131, column: 7, scope: !3666)
!3678 = !DILocation(line: 134, column: 7, scope: !3666)
!3679 = !DILocation(line: 139, column: 7, scope: !3666)
!3680 = !DILocation(line: 142, column: 7, scope: !3666)
!3681 = !DILocation(line: 147, column: 7, scope: !3666)
!3682 = !DILocation(line: 151, column: 7, scope: !3666)
!3683 = !DILocation(line: 156, column: 7, scope: !3666)
!3684 = !DILocation(line: 160, column: 7, scope: !3666)
!3685 = !DILocation(line: 167, column: 7, scope: !3666)
!3686 = !DILocation(line: 171, column: 7, scope: !3666)
!3687 = !DILocation(line: 173, column: 1, scope: !3606)
!3688 = distinct !DISubprogram(name: "version_etc_ar", scope: !284, file: !284, line: 180, type: !3689, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !280, retainedNodes: !3691)
!3689 = !DISubroutineType(types: !3690)
!3690 = !{null, !3609, !50, !50, !50, !3643}
!3691 = !{!3692, !3693, !3694, !3695, !3696, !3697}
!3692 = !DILocalVariable(name: "stream", arg: 1, scope: !3688, file: !284, line: 180, type: !3609)
!3693 = !DILocalVariable(name: "command_name", arg: 2, scope: !3688, file: !284, line: 181, type: !50)
!3694 = !DILocalVariable(name: "package", arg: 3, scope: !3688, file: !284, line: 181, type: !50)
!3695 = !DILocalVariable(name: "version", arg: 4, scope: !3688, file: !284, line: 182, type: !50)
!3696 = !DILocalVariable(name: "authors", arg: 5, scope: !3688, file: !284, line: 182, type: !3643)
!3697 = !DILocalVariable(name: "n_authors", scope: !3688, file: !284, line: 184, type: !121)
!3698 = !DILocation(line: 180, column: 23, scope: !3688)
!3699 = !DILocation(line: 181, column: 29, scope: !3688)
!3700 = !DILocation(line: 181, column: 55, scope: !3688)
!3701 = !DILocation(line: 182, column: 29, scope: !3688)
!3702 = !DILocation(line: 182, column: 59, scope: !3688)
!3703 = !DILocation(line: 184, column: 10, scope: !3688)
!3704 = !DILocation(line: 186, column: 8, scope: !3705)
!3705 = distinct !DILexicalBlock(scope: !3688, file: !284, line: 186, column: 3)
!3706 = !DILocation(line: 0, scope: !3707)
!3707 = distinct !DILexicalBlock(scope: !3705, file: !284, line: 186, column: 3)
!3708 = !DILocation(line: 186, column: 23, scope: !3707)
!3709 = !DILocation(line: 186, column: 3, scope: !3705)
!3710 = !DILocation(line: 186, column: 52, scope: !3707)
!3711 = distinct !{!3711, !3709, !3712}
!3712 = !DILocation(line: 187, column: 5, scope: !3705)
!3713 = !DILocation(line: 188, column: 3, scope: !3688)
!3714 = !DILocation(line: 189, column: 1, scope: !3688)
!3715 = distinct !DISubprogram(name: "version_etc_va", scope: !284, file: !284, line: 196, type: !3716, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !280, retainedNodes: !3725)
!3716 = !DISubroutineType(types: !3717)
!3717 = !{null, !3609, !50, !50, !50, !3718}
!3718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3719, size: 64)
!3719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !281, line: 189, size: 192, elements: !3720)
!3720 = !{!3721, !3722, !3723, !3724}
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3719, file: !281, line: 189, baseType: !7, size: 32)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3719, file: !281, line: 189, baseType: !7, size: 32, offset: 32)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3719, file: !281, line: 189, baseType: !36, size: 64, offset: 64)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3719, file: !281, line: 189, baseType: !36, size: 64, offset: 128)
!3725 = !{!3726, !3727, !3728, !3729, !3730, !3731, !3732}
!3726 = !DILocalVariable(name: "stream", arg: 1, scope: !3715, file: !284, line: 196, type: !3609)
!3727 = !DILocalVariable(name: "command_name", arg: 2, scope: !3715, file: !284, line: 197, type: !50)
!3728 = !DILocalVariable(name: "package", arg: 3, scope: !3715, file: !284, line: 197, type: !50)
!3729 = !DILocalVariable(name: "version", arg: 4, scope: !3715, file: !284, line: 198, type: !50)
!3730 = !DILocalVariable(name: "authors", arg: 5, scope: !3715, file: !284, line: 198, type: !3718)
!3731 = !DILocalVariable(name: "n_authors", scope: !3715, file: !284, line: 200, type: !121)
!3732 = !DILocalVariable(name: "authtab", scope: !3715, file: !284, line: 201, type: !3733)
!3733 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 640, elements: !130)
!3734 = !DILocation(line: 196, column: 23, scope: !3715)
!3735 = !DILocation(line: 197, column: 29, scope: !3715)
!3736 = !DILocation(line: 197, column: 55, scope: !3715)
!3737 = !DILocation(line: 198, column: 29, scope: !3715)
!3738 = !DILocation(line: 198, column: 46, scope: !3715)
!3739 = !DILocation(line: 201, column: 3, scope: !3715)
!3740 = !DILocation(line: 201, column: 15, scope: !3715)
!3741 = !DILocation(line: 200, column: 10, scope: !3715)
!3742 = !DILocation(line: 205, column: 35, scope: !3743)
!3743 = distinct !DILexicalBlock(scope: !3744, file: !284, line: 203, column: 3)
!3744 = distinct !DILexicalBlock(scope: !3715, file: !284, line: 203, column: 3)
!3745 = !DILocation(line: 205, column: 14, scope: !3743)
!3746 = !DILocation(line: 205, column: 33, scope: !3743)
!3747 = !DILocation(line: 205, column: 67, scope: !3743)
!3748 = !DILocation(line: 203, column: 3, scope: !3744)
!3749 = !DILocation(line: 0, scope: !3743)
!3750 = !DILocation(line: 208, column: 3, scope: !3715)
!3751 = !DILocation(line: 210, column: 1, scope: !3715)
!3752 = distinct !DISubprogram(name: "version_etc", scope: !284, file: !284, line: 227, type: !3753, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !280, retainedNodes: !3755)
!3753 = !DISubroutineType(types: !3754)
!3754 = !{null, !3609, !50, !50, !50, null}
!3755 = !{!3756, !3757, !3758, !3759, !3760}
!3756 = !DILocalVariable(name: "stream", arg: 1, scope: !3752, file: !284, line: 227, type: !3609)
!3757 = !DILocalVariable(name: "command_name", arg: 2, scope: !3752, file: !284, line: 228, type: !50)
!3758 = !DILocalVariable(name: "package", arg: 3, scope: !3752, file: !284, line: 228, type: !50)
!3759 = !DILocalVariable(name: "version", arg: 4, scope: !3752, file: !284, line: 229, type: !50)
!3760 = !DILocalVariable(name: "authors", scope: !3752, file: !284, line: 231, type: !3761)
!3761 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !3762, line: 52, baseType: !3763)
!3762 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3763 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3764, line: 48, baseType: !3765)
!3764 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3765 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !281, line: 231, baseType: !3766)
!3766 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3719, size: 192, elements: !218)
!3767 = !DILocation(line: 227, column: 20, scope: !3752)
!3768 = !DILocation(line: 228, column: 26, scope: !3752)
!3769 = !DILocation(line: 228, column: 52, scope: !3752)
!3770 = !DILocation(line: 229, column: 26, scope: !3752)
!3771 = !DILocation(line: 231, column: 3, scope: !3752)
!3772 = !DILocation(line: 231, column: 11, scope: !3752)
!3773 = !DILocation(line: 233, column: 3, scope: !3752)
!3774 = !DILocation(line: 234, column: 3, scope: !3752)
!3775 = !DILocation(line: 235, column: 3, scope: !3752)
!3776 = !DILocation(line: 236, column: 1, scope: !3752)
!3777 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !284, file: !284, line: 239, type: !1573, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !280, retainedNodes: !56)
!3778 = !DILocation(line: 245, column: 3, scope: !3777)
!3779 = !DILocation(line: 251, column: 3, scope: !3777)
!3780 = !DILocation(line: 256, column: 3, scope: !3777)
!3781 = !DILocation(line: 258, column: 1, scope: !3777)
!3782 = distinct !DISubprogram(name: "xnmalloc", scope: !292, file: !292, line: 99, type: !3783, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !288, retainedNodes: !3785)
!3783 = !DISubroutineType(types: !3784)
!3784 = !{!36, !121, !121}
!3785 = !{!3786, !3787}
!3786 = !DILocalVariable(name: "n", arg: 1, scope: !3782, file: !292, line: 99, type: !121)
!3787 = !DILocalVariable(name: "s", arg: 2, scope: !3782, file: !292, line: 99, type: !121)
!3788 = !DILocation(line: 99, column: 18, scope: !3782)
!3789 = !DILocation(line: 99, column: 28, scope: !3782)
!3790 = !DILocation(line: 101, column: 7, scope: !3791)
!3791 = distinct !DILexicalBlock(scope: !3782, file: !292, line: 101, column: 7)
!3792 = !DILocation(line: 101, column: 7, scope: !3782)
!3793 = !DILocation(line: 102, column: 5, scope: !3791)
!3794 = !DILocation(line: 103, column: 21, scope: !3782)
!3795 = !DILocalVariable(name: "n", arg: 1, scope: !3796, file: !3797, line: 39, type: !121)
!3796 = distinct !DISubprogram(name: "xmalloc", scope: !3797, file: !3797, line: 39, type: !3798, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !288, retainedNodes: !3800)
!3797 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3798 = !DISubroutineType(types: !3799)
!3799 = !{!36, !121}
!3800 = !{!3795, !3801}
!3801 = !DILocalVariable(name: "p", scope: !3796, file: !3797, line: 41, type: !36)
!3802 = !DILocation(line: 39, column: 17, scope: !3796, inlinedAt: !3803)
!3803 = distinct !DILocation(line: 103, column: 10, scope: !3782)
!3804 = !DILocation(line: 41, column: 13, scope: !3796, inlinedAt: !3803)
!3805 = !DILocation(line: 41, column: 9, scope: !3796, inlinedAt: !3803)
!3806 = !DILocation(line: 42, column: 8, scope: !3807, inlinedAt: !3803)
!3807 = distinct !DILexicalBlock(scope: !3796, file: !3797, line: 42, column: 7)
!3808 = !DILocation(line: 42, column: 15, scope: !3807, inlinedAt: !3803)
!3809 = !DILocation(line: 42, column: 10, scope: !3807, inlinedAt: !3803)
!3810 = !DILocation(line: 43, column: 5, scope: !3807, inlinedAt: !3803)
!3811 = !DILocation(line: 103, column: 3, scope: !3782)
!3812 = !DILocation(line: 39, column: 17, scope: !3796)
!3813 = !DILocation(line: 41, column: 13, scope: !3796)
!3814 = !DILocation(line: 41, column: 9, scope: !3796)
!3815 = !DILocation(line: 42, column: 8, scope: !3807)
!3816 = !DILocation(line: 42, column: 15, scope: !3807)
!3817 = !DILocation(line: 42, column: 10, scope: !3807)
!3818 = !DILocation(line: 43, column: 5, scope: !3807)
!3819 = !DILocation(line: 44, column: 3, scope: !3796)
!3820 = distinct !DISubprogram(name: "xnrealloc", scope: !292, file: !292, line: 112, type: !3821, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: true, unit: !288, retainedNodes: !3823)
!3821 = !DISubroutineType(types: !3822)
!3822 = !{!36, !36, !121, !121}
!3823 = !{!3824, !3825, !3826}
!3824 = !DILocalVariable(name: "p", arg: 1, scope: !3820, file: !292, line: 112, type: !36)
!3825 = !DILocalVariable(name: "n", arg: 2, scope: !3820, file: !292, line: 112, type: !121)
!3826 = !DILocalVariable(name: "s", arg: 3, scope: !3820, file: !292, line: 112, type: !121)
!3827 = !DILocation(line: 112, column: 18, scope: !3820)
!3828 = !DILocation(line: 112, column: 28, scope: !3820)
!3829 = !DILocation(line: 112, column: 38, scope: !3820)
!3830 = !DILocation(line: 114, column: 7, scope: !3831)
!3831 = distinct !DILexicalBlock(scope: !3820, file: !292, line: 114, column: 7)
!3832 = !DILocation(line: 114, column: 7, scope: !3820)
!3833 = !DILocation(line: 115, column: 5, scope: !3831)
!3834 = !DILocation(line: 116, column: 25, scope: !3820)
!3835 = !DILocalVariable(name: "p", arg: 1, scope: !3836, file: !3797, line: 51, type: !36)
!3836 = distinct !DISubprogram(name: "xrealloc", scope: !3797, file: !3797, line: 51, type: !3837, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !288, retainedNodes: !3839)
!3837 = !DISubroutineType(types: !3838)
!3838 = !{!36, !36, !121}
!3839 = !{!3835, !3840}
!3840 = !DILocalVariable(name: "n", arg: 2, scope: !3836, file: !3797, line: 51, type: !121)
!3841 = !DILocation(line: 51, column: 17, scope: !3836, inlinedAt: !3842)
!3842 = distinct !DILocation(line: 116, column: 10, scope: !3820)
!3843 = !DILocation(line: 51, column: 27, scope: !3836, inlinedAt: !3842)
!3844 = !DILocation(line: 53, column: 8, scope: !3845, inlinedAt: !3842)
!3845 = distinct !DILexicalBlock(scope: !3836, file: !3797, line: 53, column: 7)
!3846 = !DILocation(line: 53, column: 13, scope: !3845, inlinedAt: !3842)
!3847 = !DILocation(line: 53, column: 10, scope: !3845, inlinedAt: !3842)
!3848 = !DILocation(line: 57, column: 7, scope: !3849, inlinedAt: !3842)
!3849 = distinct !DILexicalBlock(scope: !3845, file: !3797, line: 54, column: 5)
!3850 = !DILocation(line: 58, column: 7, scope: !3849, inlinedAt: !3842)
!3851 = !DILocation(line: 61, column: 7, scope: !3836, inlinedAt: !3842)
!3852 = !DILocation(line: 62, column: 8, scope: !3853, inlinedAt: !3842)
!3853 = distinct !DILexicalBlock(scope: !3836, file: !3797, line: 62, column: 7)
!3854 = !DILocation(line: 62, column: 13, scope: !3853, inlinedAt: !3842)
!3855 = !DILocation(line: 62, column: 10, scope: !3853, inlinedAt: !3842)
!3856 = !DILocation(line: 63, column: 5, scope: !3853, inlinedAt: !3842)
!3857 = !DILocation(line: 0, scope: !3836, inlinedAt: !3842)
!3858 = !DILocation(line: 116, column: 3, scope: !3820)
!3859 = !DILocation(line: 51, column: 17, scope: !3836)
!3860 = !DILocation(line: 51, column: 27, scope: !3836)
!3861 = !DILocation(line: 53, column: 8, scope: !3845)
!3862 = !DILocation(line: 53, column: 13, scope: !3845)
!3863 = !DILocation(line: 53, column: 10, scope: !3845)
!3864 = !DILocation(line: 57, column: 7, scope: !3849)
!3865 = !DILocation(line: 58, column: 7, scope: !3849)
!3866 = !DILocation(line: 61, column: 7, scope: !3836)
!3867 = !DILocation(line: 62, column: 8, scope: !3853)
!3868 = !DILocation(line: 62, column: 13, scope: !3853)
!3869 = !DILocation(line: 62, column: 10, scope: !3853)
!3870 = !DILocation(line: 63, column: 5, scope: !3853)
!3871 = !DILocation(line: 0, scope: !3836)
!3872 = !DILocation(line: 65, column: 1, scope: !3836)
!3873 = !DILocation(line: 174, column: 19, scope: !293)
!3874 = !DILocation(line: 174, column: 30, scope: !293)
!3875 = !DILocation(line: 174, column: 41, scope: !293)
!3876 = !DILocation(line: 176, column: 14, scope: !293)
!3877 = !DILocation(line: 176, column: 10, scope: !293)
!3878 = !DILocation(line: 178, column: 9, scope: !3879)
!3879 = distinct !DILexicalBlock(scope: !293, file: !292, line: 178, column: 7)
!3880 = !DILocation(line: 178, column: 7, scope: !293)
!3881 = !DILocation(line: 180, column: 13, scope: !3882)
!3882 = distinct !DILexicalBlock(scope: !3883, file: !292, line: 180, column: 11)
!3883 = distinct !DILexicalBlock(scope: !3879, file: !292, line: 179, column: 5)
!3884 = !DILocation(line: 180, column: 11, scope: !3883)
!3885 = !DILocation(line: 188, column: 30, scope: !3886)
!3886 = distinct !DILexicalBlock(scope: !3882, file: !292, line: 181, column: 9)
!3887 = !DILocation(line: 189, column: 16, scope: !3886)
!3888 = !DILocation(line: 189, column: 13, scope: !3886)
!3889 = !DILocation(line: 190, column: 9, scope: !3886)
!3890 = !DILocation(line: 0, scope: !3886)
!3891 = !DILocation(line: 191, column: 11, scope: !3892)
!3892 = distinct !DILexicalBlock(scope: !3883, file: !292, line: 191, column: 11)
!3893 = !DILocation(line: 191, column: 11, scope: !3883)
!3894 = !DILocation(line: 206, column: 7, scope: !293)
!3895 = !DILocation(line: 207, column: 25, scope: !293)
!3896 = !DILocation(line: 51, column: 17, scope: !3836, inlinedAt: !3897)
!3897 = distinct !DILocation(line: 207, column: 10, scope: !293)
!3898 = !DILocation(line: 51, column: 27, scope: !3836, inlinedAt: !3897)
!3899 = !DILocation(line: 53, column: 10, scope: !3845, inlinedAt: !3897)
!3900 = !DILocation(line: 192, column: 9, scope: !3892)
!3901 = !DILocation(line: 200, column: 69, scope: !3902)
!3902 = distinct !DILexicalBlock(scope: !3903, file: !292, line: 200, column: 11)
!3903 = distinct !DILexicalBlock(scope: !3879, file: !292, line: 195, column: 5)
!3904 = !DILocation(line: 201, column: 11, scope: !3902)
!3905 = !DILocation(line: 200, column: 11, scope: !3903)
!3906 = !DILocation(line: 202, column: 9, scope: !3902)
!3907 = !DILocation(line: 203, column: 14, scope: !3903)
!3908 = !DILocation(line: 203, column: 18, scope: !3903)
!3909 = !DILocation(line: 203, column: 9, scope: !3903)
!3910 = !DILocation(line: 53, column: 8, scope: !3845, inlinedAt: !3897)
!3911 = !DILocation(line: 57, column: 7, scope: !3849, inlinedAt: !3897)
!3912 = !DILocation(line: 58, column: 7, scope: !3849, inlinedAt: !3897)
!3913 = !DILocation(line: 61, column: 7, scope: !3836, inlinedAt: !3897)
!3914 = !DILocation(line: 62, column: 8, scope: !3853, inlinedAt: !3897)
!3915 = !DILocation(line: 62, column: 13, scope: !3853, inlinedAt: !3897)
!3916 = !DILocation(line: 62, column: 10, scope: !3853, inlinedAt: !3897)
!3917 = !DILocation(line: 63, column: 5, scope: !3853, inlinedAt: !3897)
!3918 = !DILocation(line: 0, scope: !3836, inlinedAt: !3897)
!3919 = !DILocation(line: 207, column: 3, scope: !293)
!3920 = distinct !DISubprogram(name: "xcharalloc", scope: !292, file: !292, line: 216, type: !2670, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !288, retainedNodes: !3921)
!3921 = !{!3922}
!3922 = !DILocalVariable(name: "n", arg: 1, scope: !3920, file: !292, line: 216, type: !121)
!3923 = !DILocation(line: 216, column: 20, scope: !3920)
!3924 = !DILocation(line: 39, column: 17, scope: !3796, inlinedAt: !3925)
!3925 = distinct !DILocation(line: 218, column: 10, scope: !3920)
!3926 = !DILocation(line: 41, column: 13, scope: !3796, inlinedAt: !3925)
!3927 = !DILocation(line: 41, column: 9, scope: !3796, inlinedAt: !3925)
!3928 = !DILocation(line: 42, column: 8, scope: !3807, inlinedAt: !3925)
!3929 = !DILocation(line: 42, column: 15, scope: !3807, inlinedAt: !3925)
!3930 = !DILocation(line: 42, column: 10, scope: !3807, inlinedAt: !3925)
!3931 = !DILocation(line: 43, column: 5, scope: !3807, inlinedAt: !3925)
!3932 = !DILocation(line: 218, column: 3, scope: !3920)
!3933 = distinct !DISubprogram(name: "x2realloc", scope: !3797, file: !3797, line: 74, type: !3934, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !288, retainedNodes: !3936)
!3934 = !DISubroutineType(types: !3935)
!3935 = !{!36, !36, !296}
!3936 = !{!3937, !3938}
!3937 = !DILocalVariable(name: "p", arg: 1, scope: !3933, file: !3797, line: 74, type: !36)
!3938 = !DILocalVariable(name: "pn", arg: 2, scope: !3933, file: !3797, line: 74, type: !296)
!3939 = !DILocation(line: 74, column: 18, scope: !3933)
!3940 = !DILocation(line: 74, column: 29, scope: !3933)
!3941 = !DILocation(line: 174, column: 19, scope: !293, inlinedAt: !3942)
!3942 = distinct !DILocation(line: 76, column: 10, scope: !3933)
!3943 = !DILocation(line: 174, column: 30, scope: !293, inlinedAt: !3942)
!3944 = !DILocation(line: 174, column: 41, scope: !293, inlinedAt: !3942)
!3945 = !DILocation(line: 176, column: 14, scope: !293, inlinedAt: !3942)
!3946 = !DILocation(line: 176, column: 10, scope: !293, inlinedAt: !3942)
!3947 = !DILocation(line: 178, column: 9, scope: !3879, inlinedAt: !3942)
!3948 = !DILocation(line: 178, column: 7, scope: !293, inlinedAt: !3942)
!3949 = !DILocation(line: 180, column: 13, scope: !3882, inlinedAt: !3942)
!3950 = !DILocation(line: 180, column: 11, scope: !3883, inlinedAt: !3942)
!3951 = !DILocation(line: 191, column: 11, scope: !3892, inlinedAt: !3942)
!3952 = !DILocation(line: 191, column: 11, scope: !3883, inlinedAt: !3942)
!3953 = !DILocation(line: 206, column: 7, scope: !293, inlinedAt: !3942)
!3954 = !DILocation(line: 51, column: 17, scope: !3836, inlinedAt: !3955)
!3955 = distinct !DILocation(line: 207, column: 10, scope: !293, inlinedAt: !3942)
!3956 = !DILocation(line: 51, column: 27, scope: !3836, inlinedAt: !3955)
!3957 = !DILocation(line: 53, column: 10, scope: !3845, inlinedAt: !3955)
!3958 = !DILocation(line: 192, column: 9, scope: !3892, inlinedAt: !3942)
!3959 = !DILocation(line: 201, column: 11, scope: !3902, inlinedAt: !3942)
!3960 = !DILocation(line: 200, column: 11, scope: !3903, inlinedAt: !3942)
!3961 = !DILocation(line: 202, column: 9, scope: !3902, inlinedAt: !3942)
!3962 = !DILocation(line: 203, column: 14, scope: !3903, inlinedAt: !3942)
!3963 = !DILocation(line: 203, column: 18, scope: !3903, inlinedAt: !3942)
!3964 = !DILocation(line: 203, column: 9, scope: !3903, inlinedAt: !3942)
!3965 = !DILocation(line: 53, column: 8, scope: !3845, inlinedAt: !3955)
!3966 = !DILocation(line: 57, column: 7, scope: !3849, inlinedAt: !3955)
!3967 = !DILocation(line: 58, column: 7, scope: !3849, inlinedAt: !3955)
!3968 = !DILocation(line: 61, column: 7, scope: !3836, inlinedAt: !3955)
!3969 = !DILocation(line: 62, column: 8, scope: !3853, inlinedAt: !3955)
!3970 = !DILocation(line: 62, column: 13, scope: !3853, inlinedAt: !3955)
!3971 = !DILocation(line: 62, column: 10, scope: !3853, inlinedAt: !3955)
!3972 = !DILocation(line: 63, column: 5, scope: !3853, inlinedAt: !3955)
!3973 = !DILocation(line: 0, scope: !3836, inlinedAt: !3955)
!3974 = !DILocation(line: 76, column: 3, scope: !3933)
!3975 = distinct !DISubprogram(name: "xzalloc", scope: !3797, file: !3797, line: 84, type: !3798, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !288, retainedNodes: !3976)
!3976 = !{!3977}
!3977 = !DILocalVariable(name: "s", arg: 1, scope: !3975, file: !3797, line: 84, type: !121)
!3978 = !DILocation(line: 84, column: 17, scope: !3975)
!3979 = !DILocation(line: 39, column: 17, scope: !3796, inlinedAt: !3980)
!3980 = distinct !DILocation(line: 86, column: 18, scope: !3975)
!3981 = !DILocation(line: 41, column: 13, scope: !3796, inlinedAt: !3980)
!3982 = !DILocation(line: 41, column: 9, scope: !3796, inlinedAt: !3980)
!3983 = !DILocation(line: 42, column: 8, scope: !3807, inlinedAt: !3980)
!3984 = !DILocation(line: 42, column: 15, scope: !3807, inlinedAt: !3980)
!3985 = !DILocation(line: 42, column: 10, scope: !3807, inlinedAt: !3980)
!3986 = !DILocation(line: 43, column: 5, scope: !3807, inlinedAt: !3980)
!3987 = !DILocation(line: 86, column: 10, scope: !3975)
!3988 = !DILocation(line: 86, column: 3, scope: !3975)
!3989 = distinct !DISubprogram(name: "xcalloc", scope: !3797, file: !3797, line: 93, type: !3783, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !288, retainedNodes: !3990)
!3990 = !{!3991, !3992, !3993}
!3991 = !DILocalVariable(name: "n", arg: 1, scope: !3989, file: !3797, line: 93, type: !121)
!3992 = !DILocalVariable(name: "s", arg: 2, scope: !3989, file: !3797, line: 93, type: !121)
!3993 = !DILocalVariable(name: "p", scope: !3989, file: !3797, line: 95, type: !36)
!3994 = !DILocation(line: 93, column: 17, scope: !3989)
!3995 = !DILocation(line: 93, column: 27, scope: !3989)
!3996 = !DILocation(line: 100, column: 7, scope: !3997)
!3997 = distinct !DILexicalBlock(scope: !3989, file: !3797, line: 100, column: 7)
!3998 = !DILocation(line: 101, column: 7, scope: !3997)
!3999 = !DILocation(line: 101, column: 18, scope: !3997)
!4000 = !DILocation(line: 95, column: 9, scope: !3989)
!4001 = !DILocation(line: 101, column: 16, scope: !3997)
!4002 = !DILocation(line: 100, column: 7, scope: !3989)
!4003 = !DILocation(line: 102, column: 5, scope: !3997)
!4004 = !DILocation(line: 103, column: 3, scope: !3989)
!4005 = distinct !DISubprogram(name: "xmemdup", scope: !3797, file: !3797, line: 111, type: !4006, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !288, retainedNodes: !4008)
!4006 = !DISubroutineType(types: !4007)
!4007 = !{!36, !1157, !121}
!4008 = !{!4009, !4010}
!4009 = !DILocalVariable(name: "p", arg: 1, scope: !4005, file: !3797, line: 111, type: !1157)
!4010 = !DILocalVariable(name: "s", arg: 2, scope: !4005, file: !3797, line: 111, type: !121)
!4011 = !DILocation(line: 111, column: 22, scope: !4005)
!4012 = !DILocation(line: 111, column: 32, scope: !4005)
!4013 = !DILocation(line: 39, column: 17, scope: !3796, inlinedAt: !4014)
!4014 = distinct !DILocation(line: 113, column: 18, scope: !4005)
!4015 = !DILocation(line: 41, column: 13, scope: !3796, inlinedAt: !4014)
!4016 = !DILocation(line: 41, column: 9, scope: !3796, inlinedAt: !4014)
!4017 = !DILocation(line: 42, column: 8, scope: !3807, inlinedAt: !4014)
!4018 = !DILocation(line: 42, column: 15, scope: !3807, inlinedAt: !4014)
!4019 = !DILocation(line: 42, column: 10, scope: !3807, inlinedAt: !4014)
!4020 = !DILocation(line: 43, column: 5, scope: !3807, inlinedAt: !4014)
!4021 = !DILocation(line: 113, column: 10, scope: !4005)
!4022 = !DILocation(line: 113, column: 3, scope: !4005)
!4023 = distinct !DISubprogram(name: "xstrdup", scope: !3797, file: !3797, line: 119, type: !2875, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !288, retainedNodes: !4024)
!4024 = !{!4025}
!4025 = !DILocalVariable(name: "string", arg: 1, scope: !4023, file: !3797, line: 119, type: !50)
!4026 = !DILocation(line: 119, column: 22, scope: !4023)
!4027 = !DILocation(line: 121, column: 27, scope: !4023)
!4028 = !DILocation(line: 121, column: 43, scope: !4023)
!4029 = !DILocation(line: 111, column: 22, scope: !4005, inlinedAt: !4030)
!4030 = distinct !DILocation(line: 121, column: 10, scope: !4023)
!4031 = !DILocation(line: 111, column: 32, scope: !4005, inlinedAt: !4030)
!4032 = !DILocation(line: 39, column: 17, scope: !3796, inlinedAt: !4033)
!4033 = distinct !DILocation(line: 113, column: 18, scope: !4005, inlinedAt: !4030)
!4034 = !DILocation(line: 41, column: 13, scope: !3796, inlinedAt: !4033)
!4035 = !DILocation(line: 41, column: 9, scope: !3796, inlinedAt: !4033)
!4036 = !DILocation(line: 42, column: 8, scope: !3807, inlinedAt: !4033)
!4037 = !DILocation(line: 42, column: 15, scope: !3807, inlinedAt: !4033)
!4038 = !DILocation(line: 42, column: 10, scope: !3807, inlinedAt: !4033)
!4039 = !DILocation(line: 43, column: 5, scope: !3807, inlinedAt: !4033)
!4040 = !DILocation(line: 113, column: 10, scope: !4005, inlinedAt: !4030)
!4041 = !DILocation(line: 121, column: 3, scope: !4023)
!4042 = distinct !DISubprogram(name: "xalloc_die", scope: !4043, file: !4043, line: 32, type: !1573, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !305, retainedNodes: !56)
!4043 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4044 = !DILocation(line: 34, column: 10, scope: !4042)
!4045 = !DILocation(line: 34, column: 33, scope: !4042)
!4046 = !DILocation(line: 34, column: 3, scope: !4042)
!4047 = !DILocation(line: 40, column: 3, scope: !4042)
!4048 = distinct !DISubprogram(name: "xprintf", scope: !4049, file: !4049, line: 32, type: !4050, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped, isOptimized: true, unit: !307, retainedNodes: !4052)
!4049 = !DIFile(filename: "lib/xprintf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4050 = !DISubroutineType(types: !4051)
!4051 = !{!39, !1213, null}
!4052 = !{!4053, !4054, !4065}
!4053 = !DILocalVariable(name: "format", arg: 1, scope: !4048, file: !4049, line: 32, type: !1213)
!4054 = !DILocalVariable(name: "args", scope: !4048, file: !4049, line: 34, type: !4055)
!4055 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !3762, line: 52, baseType: !4056)
!4056 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3764, line: 48, baseType: !4057)
!4057 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !308, line: 34, baseType: !4058)
!4058 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4059, size: 192, elements: !218)
!4059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !308, line: 34, size: 192, elements: !4060)
!4060 = !{!4061, !4062, !4063, !4064}
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4059, file: !308, line: 34, baseType: !7, size: 32)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4059, file: !308, line: 34, baseType: !7, size: 32, offset: 32)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4059, file: !308, line: 34, baseType: !36, size: 64, offset: 64)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4059, file: !308, line: 34, baseType: !36, size: 64, offset: 128)
!4065 = !DILocalVariable(name: "retval", scope: !4048, file: !4049, line: 35, type: !39)
!4066 = !DILocation(line: 32, column: 31, scope: !4048)
!4067 = !DILocation(line: 34, column: 3, scope: !4048)
!4068 = !DILocation(line: 34, column: 11, scope: !4048)
!4069 = !DILocation(line: 36, column: 3, scope: !4048)
!4070 = !DILocalVariable(name: "format", arg: 1, scope: !4071, file: !4049, line: 46, type: !1213)
!4071 = distinct !DISubprogram(name: "xvprintf", scope: !4049, file: !4049, line: 46, type: !4072, isLocal: false, isDefinition: true, scopeLine: 47, flags: DIFlagPrototyped, isOptimized: true, unit: !307, retainedNodes: !4075)
!4072 = !DISubroutineType(types: !4073)
!4073 = !{!39, !1213, !4074}
!4074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4059, size: 64)
!4075 = !{!4070, !4076, !4077}
!4076 = !DILocalVariable(name: "args", arg: 2, scope: !4071, file: !4049, line: 46, type: !4074)
!4077 = !DILocalVariable(name: "retval", scope: !4071, file: !4049, line: 48, type: !39)
!4078 = !DILocation(line: 46, column: 32, scope: !4071, inlinedAt: !4079)
!4079 = distinct !DILocation(line: 37, column: 12, scope: !4048)
!4080 = !DILocation(line: 46, column: 48, scope: !4071, inlinedAt: !4079)
!4081 = !DILocalVariable(name: "__fmt", arg: 1, scope: !4082, file: !4083, line: 117, type: !1213)
!4082 = distinct !DISubprogram(name: "vprintf", scope: !4083, file: !4083, line: 117, type: !4072, isLocal: false, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: true, unit: !307, retainedNodes: !4084)
!4083 = !DIFile(filename: "/usr/include/bits/stdio2.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4084 = !{!4081, !4085}
!4085 = !DILocalVariable(name: "__ap", arg: 2, scope: !4082, file: !4083, line: 117, type: !4074)
!4086 = !DILocation(line: 117, column: 33, scope: !4082, inlinedAt: !4087)
!4087 = distinct !DILocation(line: 48, column: 16, scope: !4071, inlinedAt: !4079)
!4088 = !DILocation(line: 117, column: 55, scope: !4082, inlinedAt: !4087)
!4089 = !DILocation(line: 120, column: 26, scope: !4082, inlinedAt: !4087)
!4090 = !{!4091, !4093}
!4091 = distinct !{!4091, !4092, !"vprintf: argument 0"}
!4092 = distinct !{!4092, !"vprintf"}
!4093 = distinct !{!4093, !4094, !"xvprintf: argument 0"}
!4094 = distinct !{!4094, !"xvprintf"}
!4095 = !DILocation(line: 120, column: 10, scope: !4082, inlinedAt: !4087)
!4096 = !DILocation(line: 48, column: 7, scope: !4071, inlinedAt: !4079)
!4097 = !DILocation(line: 49, column: 14, scope: !4098, inlinedAt: !4079)
!4098 = distinct !DILexicalBlock(scope: !4071, file: !4049, line: 49, column: 7)
!4099 = !DILocation(line: 49, column: 18, scope: !4098, inlinedAt: !4079)
!4100 = !DILocation(line: 49, column: 31, scope: !4098, inlinedAt: !4079)
!4101 = !DILocation(line: 49, column: 23, scope: !4098, inlinedAt: !4079)
!4102 = !DILocation(line: 49, column: 7, scope: !4071, inlinedAt: !4079)
!4103 = !DILocation(line: 50, column: 12, scope: !4098, inlinedAt: !4079)
!4104 = !DILocation(line: 50, column: 26, scope: !4098, inlinedAt: !4079)
!4105 = !DILocation(line: 50, column: 33, scope: !4098, inlinedAt: !4079)
!4106 = !DILocation(line: 50, column: 5, scope: !4098, inlinedAt: !4079)
!4107 = !DILocation(line: 35, column: 7, scope: !4048)
!4108 = !DILocation(line: 38, column: 3, scope: !4048)
!4109 = !DILocation(line: 41, column: 1, scope: !4048)
!4110 = !DILocation(line: 40, column: 3, scope: !4048)
!4111 = !DILocation(line: 46, column: 32, scope: !4071)
!4112 = !DILocation(line: 46, column: 48, scope: !4071)
!4113 = !DILocation(line: 117, column: 33, scope: !4082, inlinedAt: !4114)
!4114 = distinct !DILocation(line: 48, column: 16, scope: !4071)
!4115 = !DILocation(line: 117, column: 55, scope: !4082, inlinedAt: !4114)
!4116 = !DILocation(line: 120, column: 26, scope: !4082, inlinedAt: !4114)
!4117 = !{!4118}
!4118 = distinct !{!4118, !4119, !"vprintf: argument 0"}
!4119 = distinct !{!4119, !"vprintf"}
!4120 = !DILocation(line: 120, column: 10, scope: !4082, inlinedAt: !4114)
!4121 = !DILocation(line: 48, column: 7, scope: !4071)
!4122 = !DILocation(line: 49, column: 14, scope: !4098)
!4123 = !DILocation(line: 49, column: 18, scope: !4098)
!4124 = !DILocation(line: 49, column: 31, scope: !4098)
!4125 = !DILocation(line: 49, column: 23, scope: !4098)
!4126 = !DILocation(line: 49, column: 7, scope: !4071)
!4127 = !DILocation(line: 50, column: 12, scope: !4098)
!4128 = !DILocation(line: 50, column: 26, scope: !4098)
!4129 = !DILocation(line: 50, column: 33, scope: !4098)
!4130 = !DILocation(line: 50, column: 5, scope: !4098)
!4131 = !DILocation(line: 52, column: 3, scope: !4071)
!4132 = distinct !DISubprogram(name: "xfprintf", scope: !4049, file: !4049, line: 58, type: !4133, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !307, retainedNodes: !4170)
!4133 = !DISubroutineType(types: !4134)
!4134 = !{!39, !4135, !1213, null}
!4135 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !4136)
!4136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4137, size: 64)
!4137 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !187, line: 7, baseType: !4138)
!4138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !189, line: 49, size: 1728, elements: !4139)
!4139 = !{!4140, !4141, !4142, !4143, !4144, !4145, !4146, !4147, !4148, !4149, !4150, !4151, !4152, !4153, !4155, !4156, !4157, !4158, !4159, !4160, !4161, !4162, !4163, !4164, !4165, !4166, !4167, !4168, !4169}
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4138, file: !189, line: 51, baseType: !39, size: 32)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4138, file: !189, line: 54, baseType: !37, size: 64, offset: 64)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4138, file: !189, line: 55, baseType: !37, size: 64, offset: 128)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4138, file: !189, line: 56, baseType: !37, size: 64, offset: 192)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4138, file: !189, line: 57, baseType: !37, size: 64, offset: 256)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4138, file: !189, line: 58, baseType: !37, size: 64, offset: 320)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4138, file: !189, line: 59, baseType: !37, size: 64, offset: 384)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4138, file: !189, line: 60, baseType: !37, size: 64, offset: 448)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4138, file: !189, line: 61, baseType: !37, size: 64, offset: 512)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4138, file: !189, line: 64, baseType: !37, size: 64, offset: 576)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4138, file: !189, line: 65, baseType: !37, size: 64, offset: 640)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4138, file: !189, line: 66, baseType: !37, size: 64, offset: 704)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4138, file: !189, line: 68, baseType: !204, size: 64, offset: 768)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4138, file: !189, line: 70, baseType: !4154, size: 64, offset: 832)
!4154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4138, size: 64)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4138, file: !189, line: 72, baseType: !39, size: 32, offset: 896)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4138, file: !189, line: 73, baseType: !39, size: 32, offset: 928)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4138, file: !189, line: 74, baseType: !211, size: 64, offset: 960)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4138, file: !189, line: 77, baseType: !41, size: 16, offset: 1024)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4138, file: !189, line: 78, baseType: !215, size: 8, offset: 1040)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4138, file: !189, line: 79, baseType: !217, size: 8, offset: 1048)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4138, file: !189, line: 81, baseType: !221, size: 64, offset: 1088)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4138, file: !189, line: 89, baseType: !224, size: 64, offset: 1152)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4138, file: !189, line: 91, baseType: !226, size: 64, offset: 1216)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4138, file: !189, line: 92, baseType: !229, size: 64, offset: 1280)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4138, file: !189, line: 93, baseType: !4154, size: 64, offset: 1344)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4138, file: !189, line: 94, baseType: !36, size: 64, offset: 1408)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4138, file: !189, line: 95, baseType: !121, size: 64, offset: 1472)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4138, file: !189, line: 96, baseType: !39, size: 32, offset: 1536)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4138, file: !189, line: 98, baseType: !236, size: 160, offset: 1568)
!4170 = !{!4171, !4172, !4173, !4174}
!4171 = !DILocalVariable(name: "stream", arg: 1, scope: !4132, file: !4049, line: 58, type: !4135)
!4172 = !DILocalVariable(name: "format", arg: 2, scope: !4132, file: !4049, line: 58, type: !1213)
!4173 = !DILocalVariable(name: "args", scope: !4132, file: !4049, line: 60, type: !4055)
!4174 = !DILocalVariable(name: "retval", scope: !4132, file: !4049, line: 61, type: !39)
!4175 = !DILocation(line: 58, column: 26, scope: !4132)
!4176 = !DILocation(line: 58, column: 55, scope: !4132)
!4177 = !DILocation(line: 60, column: 3, scope: !4132)
!4178 = !DILocation(line: 60, column: 11, scope: !4132)
!4179 = !DILocation(line: 62, column: 3, scope: !4132)
!4180 = !DILocalVariable(name: "stream", arg: 1, scope: !4181, file: !4049, line: 72, type: !4135)
!4181 = distinct !DISubprogram(name: "xvfprintf", scope: !4049, file: !4049, line: 72, type: !4182, isLocal: false, isDefinition: true, scopeLine: 73, flags: DIFlagPrototyped, isOptimized: true, unit: !307, retainedNodes: !4184)
!4182 = !DISubroutineType(types: !4183)
!4183 = !{!39, !4135, !1213, !4074}
!4184 = !{!4180, !4185, !4186, !4187}
!4185 = !DILocalVariable(name: "format", arg: 2, scope: !4181, file: !4049, line: 72, type: !1213)
!4186 = !DILocalVariable(name: "args", arg: 3, scope: !4181, file: !4049, line: 72, type: !4074)
!4187 = !DILocalVariable(name: "retval", scope: !4181, file: !4049, line: 74, type: !39)
!4188 = !DILocation(line: 72, column: 27, scope: !4181, inlinedAt: !4189)
!4189 = distinct !DILocation(line: 63, column: 12, scope: !4132)
!4190 = !DILocation(line: 72, column: 56, scope: !4181, inlinedAt: !4189)
!4191 = !DILocation(line: 72, column: 72, scope: !4181, inlinedAt: !4189)
!4192 = !DILocalVariable(name: "__stream", arg: 1, scope: !4193, file: !4083, line: 127, type: !4135)
!4193 = distinct !DISubprogram(name: "vfprintf", scope: !4083, file: !4083, line: 127, type: !4182, isLocal: false, isDefinition: true, scopeLine: 129, flags: DIFlagPrototyped, isOptimized: true, unit: !307, retainedNodes: !4194)
!4194 = !{!4192, !4195, !4196}
!4195 = !DILocalVariable(name: "__fmt", arg: 2, scope: !4193, file: !4083, line: 128, type: !1213)
!4196 = !DILocalVariable(name: "__ap", arg: 3, scope: !4193, file: !4083, line: 128, type: !4074)
!4197 = !DILocation(line: 127, column: 28, scope: !4193, inlinedAt: !4198)
!4198 = distinct !DILocation(line: 74, column: 16, scope: !4181, inlinedAt: !4189)
!4199 = !DILocation(line: 128, column: 27, scope: !4193, inlinedAt: !4198)
!4200 = !DILocation(line: 128, column: 49, scope: !4193, inlinedAt: !4198)
!4201 = !DILocation(line: 130, column: 10, scope: !4193, inlinedAt: !4198)
!4202 = !DILocation(line: 74, column: 7, scope: !4181, inlinedAt: !4189)
!4203 = !DILocation(line: 75, column: 14, scope: !4204, inlinedAt: !4189)
!4204 = distinct !DILexicalBlock(scope: !4181, file: !4049, line: 75, column: 7)
!4205 = !DILocation(line: 75, column: 18, scope: !4204, inlinedAt: !4189)
!4206 = !DILocation(line: 75, column: 23, scope: !4204, inlinedAt: !4189)
!4207 = !DILocation(line: 75, column: 7, scope: !4181, inlinedAt: !4189)
!4208 = !DILocation(line: 76, column: 12, scope: !4204, inlinedAt: !4189)
!4209 = !DILocation(line: 76, column: 26, scope: !4204, inlinedAt: !4189)
!4210 = !DILocation(line: 76, column: 33, scope: !4204, inlinedAt: !4189)
!4211 = !DILocation(line: 76, column: 5, scope: !4204, inlinedAt: !4189)
!4212 = !DILocation(line: 61, column: 7, scope: !4132)
!4213 = !DILocation(line: 64, column: 3, scope: !4132)
!4214 = !DILocation(line: 67, column: 1, scope: !4132)
!4215 = !DILocation(line: 66, column: 3, scope: !4132)
!4216 = !DILocation(line: 72, column: 27, scope: !4181)
!4217 = !DILocation(line: 72, column: 56, scope: !4181)
!4218 = !DILocation(line: 72, column: 72, scope: !4181)
!4219 = !DILocation(line: 127, column: 28, scope: !4193, inlinedAt: !4220)
!4220 = distinct !DILocation(line: 74, column: 16, scope: !4181)
!4221 = !DILocation(line: 128, column: 27, scope: !4193, inlinedAt: !4220)
!4222 = !DILocation(line: 128, column: 49, scope: !4193, inlinedAt: !4220)
!4223 = !DILocation(line: 130, column: 10, scope: !4193, inlinedAt: !4220)
!4224 = !DILocation(line: 74, column: 7, scope: !4181)
!4225 = !DILocation(line: 75, column: 14, scope: !4204)
!4226 = !DILocation(line: 75, column: 18, scope: !4204)
!4227 = !DILocation(line: 75, column: 23, scope: !4204)
!4228 = !DILocation(line: 75, column: 7, scope: !4181)
!4229 = !DILocation(line: 76, column: 12, scope: !4204)
!4230 = !DILocation(line: 76, column: 26, scope: !4204)
!4231 = !DILocation(line: 76, column: 33, scope: !4204)
!4232 = !DILocation(line: 76, column: 5, scope: !4204)
!4233 = !DILocation(line: 78, column: 3, scope: !4181)
!4234 = distinct !DISubprogram(name: "rpl_calloc", scope: !4235, file: !4235, line: 42, type: !3783, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !309, retainedNodes: !4236)
!4235 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4236 = !{!4237, !4238, !4239, !4240}
!4237 = !DILocalVariable(name: "n", arg: 1, scope: !4234, file: !4235, line: 42, type: !121)
!4238 = !DILocalVariable(name: "s", arg: 2, scope: !4234, file: !4235, line: 42, type: !121)
!4239 = !DILocalVariable(name: "result", scope: !4234, file: !4235, line: 44, type: !36)
!4240 = !DILocalVariable(name: "bytes", scope: !4241, file: !4235, line: 56, type: !121)
!4241 = distinct !DILexicalBlock(scope: !4242, file: !4235, line: 53, column: 5)
!4242 = distinct !DILexicalBlock(scope: !4234, file: !4235, line: 47, column: 7)
!4243 = !DILocation(line: 42, column: 20, scope: !4234)
!4244 = !DILocation(line: 42, column: 30, scope: !4234)
!4245 = !DILocation(line: 47, column: 9, scope: !4242)
!4246 = !DILocation(line: 47, column: 19, scope: !4242)
!4247 = !DILocation(line: 47, column: 14, scope: !4242)
!4248 = !DILocation(line: 56, column: 24, scope: !4241)
!4249 = !DILocation(line: 56, column: 14, scope: !4241)
!4250 = !DILocation(line: 57, column: 17, scope: !4251)
!4251 = distinct !DILexicalBlock(scope: !4241, file: !4235, line: 57, column: 11)
!4252 = !DILocation(line: 57, column: 21, scope: !4251)
!4253 = !DILocation(line: 57, column: 11, scope: !4241)
!4254 = !DILocation(line: 59, column: 11, scope: !4255)
!4255 = distinct !DILexicalBlock(scope: !4251, file: !4235, line: 58, column: 9)
!4256 = !DILocation(line: 59, column: 17, scope: !4255)
!4257 = !DILocation(line: 65, column: 12, scope: !4234)
!4258 = !DILocation(line: 44, column: 9, scope: !4234)
!4259 = !DILocation(line: 72, column: 3, scope: !4234)
!4260 = !DILocation(line: 0, scope: !4255)
!4261 = !DILocation(line: 73, column: 1, scope: !4234)
!4262 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !4263, file: !4263, line: 385, type: !4264, isLocal: false, isDefinition: true, scopeLine: 386, flags: DIFlagPrototyped, isOptimized: true, unit: !311, retainedNodes: !4278)
!4263 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4264 = !DISubroutineType(types: !4265)
!4265 = !{!121, !4266, !50, !121, !4267}
!4266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1851, size: 64)
!4267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4268, size: 64)
!4268 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1835, line: 6, baseType: !4269)
!4269 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1837, line: 21, baseType: !4270)
!4270 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1837, line: 13, size: 64, elements: !4271)
!4271 = !{!4272, !4273}
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4270, file: !1837, line: 15, baseType: !39, size: 32)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4270, file: !1837, line: 20, baseType: !4274, size: 32, offset: 32)
!4274 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4270, file: !1837, line: 16, size: 32, elements: !4275)
!4275 = !{!4276, !4277}
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4274, file: !1837, line: 18, baseType: !7, size: 32)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4274, file: !1837, line: 19, baseType: !1846, size: 32)
!4278 = !{!4279, !4280, !4281, !4282, !4283, !4284, !4285}
!4279 = !DILocalVariable(name: "pwc", arg: 1, scope: !4262, file: !4263, line: 385, type: !4266)
!4280 = !DILocalVariable(name: "s", arg: 2, scope: !4262, file: !4263, line: 385, type: !50)
!4281 = !DILocalVariable(name: "n", arg: 3, scope: !4262, file: !4263, line: 385, type: !121)
!4282 = !DILocalVariable(name: "ps", arg: 4, scope: !4262, file: !4263, line: 385, type: !4267)
!4283 = !DILocalVariable(name: "ret", scope: !4262, file: !4263, line: 387, type: !121)
!4284 = !DILocalVariable(name: "wc", scope: !4262, file: !4263, line: 388, type: !1851)
!4285 = !DILocalVariable(name: "uc", scope: !4286, file: !4263, line: 449, type: !40)
!4286 = distinct !DILexicalBlock(scope: !4287, file: !4263, line: 448, column: 5)
!4287 = distinct !DILexicalBlock(scope: !4262, file: !4263, line: 447, column: 7)
!4288 = !DILocation(line: 385, column: 23, scope: !4262)
!4289 = !DILocation(line: 385, column: 40, scope: !4262)
!4290 = !DILocation(line: 385, column: 50, scope: !4262)
!4291 = !DILocation(line: 385, column: 64, scope: !4262)
!4292 = !DILocation(line: 388, column: 3, scope: !4262)
!4293 = !DILocation(line: 404, column: 9, scope: !4294)
!4294 = distinct !DILexicalBlock(scope: !4262, file: !4263, line: 404, column: 7)
!4295 = !DILocation(line: 404, column: 7, scope: !4262)
!4296 = !DILocation(line: 439, column: 9, scope: !4262)
!4297 = !DILocation(line: 387, column: 10, scope: !4262)
!4298 = !DILocation(line: 447, column: 19, scope: !4287)
!4299 = !DILocation(line: 447, column: 31, scope: !4287)
!4300 = !DILocation(line: 447, column: 26, scope: !4287)
!4301 = !DILocation(line: 447, column: 41, scope: !4287)
!4302 = !DILocation(line: 447, column: 7, scope: !4262)
!4303 = !DILocation(line: 449, column: 26, scope: !4286)
!4304 = !DILocation(line: 449, column: 21, scope: !4286)
!4305 = !DILocation(line: 450, column: 14, scope: !4286)
!4306 = !DILocation(line: 450, column: 12, scope: !4286)
!4307 = !DILocation(line: 0, scope: !4286)
!4308 = !DILocation(line: 456, column: 1, scope: !4262)
!4309 = distinct !DISubprogram(name: "close_stream", scope: !4310, file: !4310, line: 56, type: !4311, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !314, retainedNodes: !4347)
!4310 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4311 = !DISubroutineType(types: !4312)
!4312 = !{!39, !4313}
!4313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4314, size: 64)
!4314 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !187, line: 7, baseType: !4315)
!4315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !189, line: 49, size: 1728, elements: !4316)
!4316 = !{!4317, !4318, !4319, !4320, !4321, !4322, !4323, !4324, !4325, !4326, !4327, !4328, !4329, !4330, !4332, !4333, !4334, !4335, !4336, !4337, !4338, !4339, !4340, !4341, !4342, !4343, !4344, !4345, !4346}
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4315, file: !189, line: 51, baseType: !39, size: 32)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4315, file: !189, line: 54, baseType: !37, size: 64, offset: 64)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4315, file: !189, line: 55, baseType: !37, size: 64, offset: 128)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4315, file: !189, line: 56, baseType: !37, size: 64, offset: 192)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4315, file: !189, line: 57, baseType: !37, size: 64, offset: 256)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4315, file: !189, line: 58, baseType: !37, size: 64, offset: 320)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4315, file: !189, line: 59, baseType: !37, size: 64, offset: 384)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4315, file: !189, line: 60, baseType: !37, size: 64, offset: 448)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4315, file: !189, line: 61, baseType: !37, size: 64, offset: 512)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4315, file: !189, line: 64, baseType: !37, size: 64, offset: 576)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4315, file: !189, line: 65, baseType: !37, size: 64, offset: 640)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4315, file: !189, line: 66, baseType: !37, size: 64, offset: 704)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4315, file: !189, line: 68, baseType: !204, size: 64, offset: 768)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4315, file: !189, line: 70, baseType: !4331, size: 64, offset: 832)
!4331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4315, size: 64)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4315, file: !189, line: 72, baseType: !39, size: 32, offset: 896)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4315, file: !189, line: 73, baseType: !39, size: 32, offset: 928)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4315, file: !189, line: 74, baseType: !211, size: 64, offset: 960)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4315, file: !189, line: 77, baseType: !41, size: 16, offset: 1024)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4315, file: !189, line: 78, baseType: !215, size: 8, offset: 1040)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4315, file: !189, line: 79, baseType: !217, size: 8, offset: 1048)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4315, file: !189, line: 81, baseType: !221, size: 64, offset: 1088)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4315, file: !189, line: 89, baseType: !224, size: 64, offset: 1152)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4315, file: !189, line: 91, baseType: !226, size: 64, offset: 1216)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4315, file: !189, line: 92, baseType: !229, size: 64, offset: 1280)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4315, file: !189, line: 93, baseType: !4331, size: 64, offset: 1344)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4315, file: !189, line: 94, baseType: !36, size: 64, offset: 1408)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4315, file: !189, line: 95, baseType: !121, size: 64, offset: 1472)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4315, file: !189, line: 96, baseType: !39, size: 32, offset: 1536)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4315, file: !189, line: 98, baseType: !236, size: 160, offset: 1568)
!4347 = !{!4348, !4349, !4351, !4352}
!4348 = !DILocalVariable(name: "stream", arg: 1, scope: !4309, file: !4310, line: 56, type: !4313)
!4349 = !DILocalVariable(name: "some_pending", scope: !4309, file: !4310, line: 58, type: !4350)
!4350 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!4351 = !DILocalVariable(name: "prev_fail", scope: !4309, file: !4310, line: 59, type: !4350)
!4352 = !DILocalVariable(name: "fclose_fail", scope: !4309, file: !4310, line: 60, type: !4350)
!4353 = !DILocation(line: 56, column: 21, scope: !4309)
!4354 = !DILocation(line: 58, column: 30, scope: !4309)
!4355 = !DILocalVariable(name: "__stream", arg: 1, scope: !4356, file: !920, line: 135, type: !4313)
!4356 = distinct !DISubprogram(name: "ferror_unlocked", scope: !920, file: !920, line: 135, type: !4311, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !314, retainedNodes: !4357)
!4357 = !{!4355}
!4358 = !DILocation(line: 135, column: 1, scope: !4356, inlinedAt: !4359)
!4359 = distinct !DILocation(line: 59, column: 27, scope: !4309)
!4360 = !DILocation(line: 137, column: 10, scope: !4356, inlinedAt: !4359)
!4361 = !{!929, !930, i64 0}
!4362 = !DILocation(line: 59, column: 43, scope: !4309)
!4363 = !DILocation(line: 60, column: 29, scope: !4309)
!4364 = !DILocation(line: 60, column: 45, scope: !4309)
!4365 = !DILocation(line: 70, column: 17, scope: !4366)
!4366 = distinct !DILexicalBlock(scope: !4309, file: !4310, line: 70, column: 7)
!4367 = !DILocation(line: 58, column: 50, scope: !4309)
!4368 = !DILocation(line: 70, column: 33, scope: !4366)
!4369 = !DILocation(line: 70, column: 53, scope: !4366)
!4370 = !DILocation(line: 70, column: 59, scope: !4366)
!4371 = !DILocation(line: 70, column: 7, scope: !4309)
!4372 = !DILocation(line: 72, column: 11, scope: !4373)
!4373 = distinct !DILexicalBlock(scope: !4366, file: !4310, line: 71, column: 5)
!4374 = !DILocation(line: 73, column: 9, scope: !4375)
!4375 = distinct !DILexicalBlock(scope: !4373, file: !4310, line: 72, column: 11)
!4376 = !DILocation(line: 73, column: 15, scope: !4375)
!4377 = !DILocation(line: 0, scope: !4309)
!4378 = !DILocation(line: 78, column: 1, scope: !4309)
!4379 = distinct !DISubprogram(name: "hard_locale", scope: !4380, file: !4380, line: 38, type: !4381, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !316, retainedNodes: !4383)
!4380 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4381 = !DISubroutineType(types: !4382)
!4382 = !{!46, !39}
!4383 = !{!4384, !4385, !4386}
!4384 = !DILocalVariable(name: "category", arg: 1, scope: !4379, file: !4380, line: 38, type: !39)
!4385 = !DILocalVariable(name: "hard", scope: !4379, file: !4380, line: 40, type: !46)
!4386 = !DILocalVariable(name: "p", scope: !4379, file: !4380, line: 41, type: !50)
!4387 = !DILocation(line: 38, column: 18, scope: !4379)
!4388 = !DILocation(line: 40, column: 8, scope: !4379)
!4389 = !DILocation(line: 41, column: 19, scope: !4379)
!4390 = !DILocation(line: 41, column: 15, scope: !4379)
!4391 = !DILocation(line: 43, column: 7, scope: !4392)
!4392 = distinct !DILexicalBlock(scope: !4379, file: !4380, line: 43, column: 7)
!4393 = !DILocation(line: 43, column: 7, scope: !4379)
!4394 = !DILocation(line: 47, column: 15, scope: !4395)
!4395 = distinct !DILexicalBlock(scope: !4396, file: !4380, line: 47, column: 15)
!4396 = distinct !DILexicalBlock(scope: !4397, file: !4380, line: 46, column: 9)
!4397 = distinct !DILexicalBlock(scope: !4398, file: !4380, line: 45, column: 11)
!4398 = distinct !DILexicalBlock(scope: !4392, file: !4380, line: 44, column: 5)
!4399 = !DILocation(line: 47, column: 31, scope: !4395)
!4400 = !DILocation(line: 47, column: 36, scope: !4395)
!4401 = !DILocation(line: 47, column: 39, scope: !4395)
!4402 = !DILocation(line: 47, column: 59, scope: !4395)
!4403 = !DILocation(line: 47, column: 15, scope: !4396)
!4404 = !DILocation(line: 48, column: 13, scope: !4395)
!4405 = !DILocation(line: 71, column: 3, scope: !4379)
!4406 = distinct !DISubprogram(name: "locale_charset", scope: !4407, file: !4407, line: 687, type: !4408, isLocal: false, isDefinition: true, scopeLine: 688, flags: DIFlagPrototyped, isOptimized: true, unit: !318, retainedNodes: !4410)
!4407 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4408 = !DISubroutineType(types: !4409)
!4409 = !{!50}
!4410 = !{!4411}
!4411 = !DILocalVariable(name: "codeset", scope: !4406, file: !4407, line: 689, type: !50)
!4412 = !DILocation(line: 696, column: 13, scope: !4406)
!4413 = !DILocation(line: 689, column: 15, scope: !4406)
!4414 = !DILocation(line: 754, column: 15, scope: !4415)
!4415 = distinct !DILexicalBlock(scope: !4406, file: !4407, line: 754, column: 7)
!4416 = !DILocation(line: 754, column: 7, scope: !4406)
!4417 = !DILocation(line: 907, column: 13, scope: !4418)
!4418 = distinct !DILexicalBlock(scope: !4419, file: !4407, line: 907, column: 13)
!4419 = distinct !DILexicalBlock(scope: !4420, file: !4407, line: 897, column: 7)
!4420 = distinct !DILexicalBlock(scope: !4406, file: !4407, line: 856, column: 3)
!4421 = !DILocation(line: 907, column: 24, scope: !4418)
!4422 = !DILocation(line: 907, column: 13, scope: !4419)
!4423 = !DILocation(line: 995, column: 3, scope: !4406)
!4424 = distinct !DISubprogram(name: "rpl_fclose", scope: !4425, file: !4425, line: 58, type: !4426, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !707, retainedNodes: !4462)
!4425 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4426 = !DISubroutineType(types: !4427)
!4427 = !{!39, !4428}
!4428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4429, size: 64)
!4429 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !187, line: 7, baseType: !4430)
!4430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !189, line: 49, size: 1728, elements: !4431)
!4431 = !{!4432, !4433, !4434, !4435, !4436, !4437, !4438, !4439, !4440, !4441, !4442, !4443, !4444, !4445, !4447, !4448, !4449, !4450, !4451, !4452, !4453, !4454, !4455, !4456, !4457, !4458, !4459, !4460, !4461}
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4430, file: !189, line: 51, baseType: !39, size: 32)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4430, file: !189, line: 54, baseType: !37, size: 64, offset: 64)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4430, file: !189, line: 55, baseType: !37, size: 64, offset: 128)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4430, file: !189, line: 56, baseType: !37, size: 64, offset: 192)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4430, file: !189, line: 57, baseType: !37, size: 64, offset: 256)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4430, file: !189, line: 58, baseType: !37, size: 64, offset: 320)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4430, file: !189, line: 59, baseType: !37, size: 64, offset: 384)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4430, file: !189, line: 60, baseType: !37, size: 64, offset: 448)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4430, file: !189, line: 61, baseType: !37, size: 64, offset: 512)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4430, file: !189, line: 64, baseType: !37, size: 64, offset: 576)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4430, file: !189, line: 65, baseType: !37, size: 64, offset: 640)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4430, file: !189, line: 66, baseType: !37, size: 64, offset: 704)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4430, file: !189, line: 68, baseType: !204, size: 64, offset: 768)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4430, file: !189, line: 70, baseType: !4446, size: 64, offset: 832)
!4446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4430, size: 64)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4430, file: !189, line: 72, baseType: !39, size: 32, offset: 896)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4430, file: !189, line: 73, baseType: !39, size: 32, offset: 928)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4430, file: !189, line: 74, baseType: !211, size: 64, offset: 960)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4430, file: !189, line: 77, baseType: !41, size: 16, offset: 1024)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4430, file: !189, line: 78, baseType: !215, size: 8, offset: 1040)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4430, file: !189, line: 79, baseType: !217, size: 8, offset: 1048)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4430, file: !189, line: 81, baseType: !221, size: 64, offset: 1088)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4430, file: !189, line: 89, baseType: !224, size: 64, offset: 1152)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4430, file: !189, line: 91, baseType: !226, size: 64, offset: 1216)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4430, file: !189, line: 92, baseType: !229, size: 64, offset: 1280)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4430, file: !189, line: 93, baseType: !4446, size: 64, offset: 1344)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4430, file: !189, line: 94, baseType: !36, size: 64, offset: 1408)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4430, file: !189, line: 95, baseType: !121, size: 64, offset: 1472)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4430, file: !189, line: 96, baseType: !39, size: 32, offset: 1536)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4430, file: !189, line: 98, baseType: !236, size: 160, offset: 1568)
!4462 = !{!4463, !4464, !4465, !4466}
!4463 = !DILocalVariable(name: "fp", arg: 1, scope: !4424, file: !4425, line: 58, type: !4428)
!4464 = !DILocalVariable(name: "saved_errno", scope: !4424, file: !4425, line: 60, type: !39)
!4465 = !DILocalVariable(name: "fd", scope: !4424, file: !4425, line: 61, type: !39)
!4466 = !DILocalVariable(name: "result", scope: !4424, file: !4425, line: 62, type: !39)
!4467 = !DILocation(line: 58, column: 19, scope: !4424)
!4468 = !DILocation(line: 60, column: 7, scope: !4424)
!4469 = !DILocation(line: 62, column: 7, scope: !4424)
!4470 = !DILocation(line: 65, column: 8, scope: !4424)
!4471 = !DILocation(line: 61, column: 7, scope: !4424)
!4472 = !DILocation(line: 66, column: 10, scope: !4473)
!4473 = distinct !DILexicalBlock(scope: !4424, file: !4425, line: 66, column: 7)
!4474 = !DILocation(line: 66, column: 7, scope: !4424)
!4475 = !DILocation(line: 67, column: 12, scope: !4473)
!4476 = !DILocation(line: 67, column: 5, scope: !4473)
!4477 = !DILocation(line: 72, column: 9, scope: !4478)
!4478 = distinct !DILexicalBlock(scope: !4424, file: !4425, line: 72, column: 7)
!4479 = !DILocation(line: 72, column: 23, scope: !4478)
!4480 = !DILocation(line: 72, column: 33, scope: !4478)
!4481 = !DILocation(line: 72, column: 26, scope: !4478)
!4482 = !DILocation(line: 72, column: 59, scope: !4478)
!4483 = !DILocation(line: 73, column: 7, scope: !4478)
!4484 = !DILocation(line: 73, column: 10, scope: !4478)
!4485 = !DILocation(line: 72, column: 7, scope: !4424)
!4486 = !DILocation(line: 100, column: 12, scope: !4424)
!4487 = !DILocation(line: 105, column: 7, scope: !4424)
!4488 = !DILocation(line: 74, column: 19, scope: !4478)
!4489 = !DILocation(line: 105, column: 19, scope: !4490)
!4490 = distinct !DILexicalBlock(scope: !4424, file: !4425, line: 105, column: 7)
!4491 = !DILocation(line: 107, column: 13, scope: !4492)
!4492 = distinct !DILexicalBlock(scope: !4490, file: !4425, line: 106, column: 5)
!4493 = !DILocation(line: 109, column: 5, scope: !4492)
!4494 = !DILocation(line: 0, scope: !4424)
!4495 = !DILocation(line: 112, column: 1, scope: !4424)
!4496 = distinct !DISubprogram(name: "rpl_fflush", scope: !4497, file: !4497, line: 129, type: !4498, isLocal: false, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, unit: !709, retainedNodes: !4534)
!4497 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4498 = !DISubroutineType(types: !4499)
!4499 = !{!39, !4500}
!4500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4501, size: 64)
!4501 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !187, line: 7, baseType: !4502)
!4502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !189, line: 49, size: 1728, elements: !4503)
!4503 = !{!4504, !4505, !4506, !4507, !4508, !4509, !4510, !4511, !4512, !4513, !4514, !4515, !4516, !4517, !4519, !4520, !4521, !4522, !4523, !4524, !4525, !4526, !4527, !4528, !4529, !4530, !4531, !4532, !4533}
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4502, file: !189, line: 51, baseType: !39, size: 32)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4502, file: !189, line: 54, baseType: !37, size: 64, offset: 64)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4502, file: !189, line: 55, baseType: !37, size: 64, offset: 128)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4502, file: !189, line: 56, baseType: !37, size: 64, offset: 192)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4502, file: !189, line: 57, baseType: !37, size: 64, offset: 256)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4502, file: !189, line: 58, baseType: !37, size: 64, offset: 320)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4502, file: !189, line: 59, baseType: !37, size: 64, offset: 384)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4502, file: !189, line: 60, baseType: !37, size: 64, offset: 448)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4502, file: !189, line: 61, baseType: !37, size: 64, offset: 512)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4502, file: !189, line: 64, baseType: !37, size: 64, offset: 576)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4502, file: !189, line: 65, baseType: !37, size: 64, offset: 640)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4502, file: !189, line: 66, baseType: !37, size: 64, offset: 704)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4502, file: !189, line: 68, baseType: !204, size: 64, offset: 768)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4502, file: !189, line: 70, baseType: !4518, size: 64, offset: 832)
!4518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4502, size: 64)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4502, file: !189, line: 72, baseType: !39, size: 32, offset: 896)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4502, file: !189, line: 73, baseType: !39, size: 32, offset: 928)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4502, file: !189, line: 74, baseType: !211, size: 64, offset: 960)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4502, file: !189, line: 77, baseType: !41, size: 16, offset: 1024)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4502, file: !189, line: 78, baseType: !215, size: 8, offset: 1040)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4502, file: !189, line: 79, baseType: !217, size: 8, offset: 1048)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4502, file: !189, line: 81, baseType: !221, size: 64, offset: 1088)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4502, file: !189, line: 89, baseType: !224, size: 64, offset: 1152)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4502, file: !189, line: 91, baseType: !226, size: 64, offset: 1216)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4502, file: !189, line: 92, baseType: !229, size: 64, offset: 1280)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4502, file: !189, line: 93, baseType: !4518, size: 64, offset: 1344)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4502, file: !189, line: 94, baseType: !36, size: 64, offset: 1408)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4502, file: !189, line: 95, baseType: !121, size: 64, offset: 1472)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4502, file: !189, line: 96, baseType: !39, size: 32, offset: 1536)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4502, file: !189, line: 98, baseType: !236, size: 160, offset: 1568)
!4534 = !{!4535}
!4535 = !DILocalVariable(name: "stream", arg: 1, scope: !4496, file: !4497, line: 129, type: !4500)
!4536 = !DILocation(line: 129, column: 19, scope: !4496)
!4537 = !DILocation(line: 150, column: 14, scope: !4538)
!4538 = distinct !DILexicalBlock(scope: !4496, file: !4497, line: 150, column: 7)
!4539 = !DILocation(line: 150, column: 22, scope: !4538)
!4540 = !DILocation(line: 150, column: 27, scope: !4538)
!4541 = !DILocation(line: 150, column: 7, scope: !4496)
!4542 = !DILocation(line: 151, column: 12, scope: !4538)
!4543 = !DILocation(line: 151, column: 5, scope: !4538)
!4544 = !DILocalVariable(name: "fp", arg: 1, scope: !4545, file: !4497, line: 41, type: !4500)
!4545 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !4497, file: !4497, line: 41, type: !4546, isLocal: true, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !709, retainedNodes: !4548)
!4546 = !DISubroutineType(types: !4547)
!4547 = !{null, !4500}
!4548 = !{!4544}
!4549 = !DILocation(line: 41, column: 48, scope: !4545, inlinedAt: !4550)
!4550 = distinct !DILocation(line: 156, column: 3, scope: !4496)
!4551 = !DILocation(line: 43, column: 11, scope: !4552, inlinedAt: !4550)
!4552 = distinct !DILexicalBlock(scope: !4545, file: !4497, line: 43, column: 7)
!4553 = !DILocation(line: 43, column: 18, scope: !4552, inlinedAt: !4550)
!4554 = !DILocation(line: 43, column: 7, scope: !4545, inlinedAt: !4550)
!4555 = !DILocation(line: 45, column: 5, scope: !4552, inlinedAt: !4550)
!4556 = !DILocation(line: 158, column: 10, scope: !4496)
!4557 = !DILocation(line: 158, column: 3, scope: !4496)
!4558 = !DILocation(line: 0, scope: !4496)
!4559 = !DILocation(line: 232, column: 1, scope: !4496)
!4560 = distinct !DISubprogram(name: "rpl_fseeko", scope: !4561, file: !4561, line: 28, type: !4562, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !711, retainedNodes: !4599)
!4561 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4562 = !DISubroutineType(types: !4563)
!4563 = !{!39, !4564, !4598, !39}
!4564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4565, size: 64)
!4565 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !187, line: 7, baseType: !4566)
!4566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !189, line: 49, size: 1728, elements: !4567)
!4567 = !{!4568, !4569, !4570, !4571, !4572, !4573, !4574, !4575, !4576, !4577, !4578, !4579, !4580, !4581, !4583, !4584, !4585, !4586, !4587, !4588, !4589, !4590, !4591, !4592, !4593, !4594, !4595, !4596, !4597}
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4566, file: !189, line: 51, baseType: !39, size: 32)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4566, file: !189, line: 54, baseType: !37, size: 64, offset: 64)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4566, file: !189, line: 55, baseType: !37, size: 64, offset: 128)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4566, file: !189, line: 56, baseType: !37, size: 64, offset: 192)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4566, file: !189, line: 57, baseType: !37, size: 64, offset: 256)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4566, file: !189, line: 58, baseType: !37, size: 64, offset: 320)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4566, file: !189, line: 59, baseType: !37, size: 64, offset: 384)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4566, file: !189, line: 60, baseType: !37, size: 64, offset: 448)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4566, file: !189, line: 61, baseType: !37, size: 64, offset: 512)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4566, file: !189, line: 64, baseType: !37, size: 64, offset: 576)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4566, file: !189, line: 65, baseType: !37, size: 64, offset: 640)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4566, file: !189, line: 66, baseType: !37, size: 64, offset: 704)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4566, file: !189, line: 68, baseType: !204, size: 64, offset: 768)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4566, file: !189, line: 70, baseType: !4582, size: 64, offset: 832)
!4582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4566, size: 64)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4566, file: !189, line: 72, baseType: !39, size: 32, offset: 896)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4566, file: !189, line: 73, baseType: !39, size: 32, offset: 928)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4566, file: !189, line: 74, baseType: !211, size: 64, offset: 960)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4566, file: !189, line: 77, baseType: !41, size: 16, offset: 1024)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4566, file: !189, line: 78, baseType: !215, size: 8, offset: 1040)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4566, file: !189, line: 79, baseType: !217, size: 8, offset: 1048)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4566, file: !189, line: 81, baseType: !221, size: 64, offset: 1088)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4566, file: !189, line: 89, baseType: !224, size: 64, offset: 1152)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4566, file: !189, line: 91, baseType: !226, size: 64, offset: 1216)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4566, file: !189, line: 92, baseType: !229, size: 64, offset: 1280)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4566, file: !189, line: 93, baseType: !4582, size: 64, offset: 1344)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4566, file: !189, line: 94, baseType: !36, size: 64, offset: 1408)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4566, file: !189, line: 95, baseType: !121, size: 64, offset: 1472)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4566, file: !189, line: 96, baseType: !39, size: 32, offset: 1536)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4566, file: !189, line: 98, baseType: !236, size: 160, offset: 1568)
!4598 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !3762, line: 63, baseType: !211)
!4599 = !{!4600, !4601, !4602, !4603}
!4600 = !DILocalVariable(name: "fp", arg: 1, scope: !4560, file: !4561, line: 28, type: !4564)
!4601 = !DILocalVariable(name: "offset", arg: 2, scope: !4560, file: !4561, line: 28, type: !4598)
!4602 = !DILocalVariable(name: "whence", arg: 3, scope: !4560, file: !4561, line: 28, type: !39)
!4603 = !DILocalVariable(name: "pos", scope: !4604, file: !4561, line: 117, type: !4598)
!4604 = distinct !DILexicalBlock(scope: !4605, file: !4561, line: 113, column: 5)
!4605 = distinct !DILexicalBlock(scope: !4560, file: !4561, line: 52, column: 7)
!4606 = !DILocation(line: 28, column: 15, scope: !4560)
!4607 = !DILocation(line: 28, column: 25, scope: !4560)
!4608 = !DILocation(line: 28, column: 37, scope: !4560)
!4609 = !DILocation(line: 52, column: 11, scope: !4605)
!4610 = !{!929, !753, i64 16}
!4611 = !DILocation(line: 52, column: 31, scope: !4605)
!4612 = !{!929, !753, i64 8}
!4613 = !DILocation(line: 52, column: 24, scope: !4605)
!4614 = !DILocation(line: 53, column: 7, scope: !4605)
!4615 = !DILocation(line: 53, column: 14, scope: !4605)
!4616 = !DILocation(line: 53, column: 35, scope: !4605)
!4617 = !{!929, !753, i64 32}
!4618 = !DILocation(line: 53, column: 28, scope: !4605)
!4619 = !DILocation(line: 54, column: 7, scope: !4605)
!4620 = !DILocation(line: 54, column: 14, scope: !4605)
!4621 = !{!929, !753, i64 72}
!4622 = !DILocation(line: 54, column: 28, scope: !4605)
!4623 = !DILocation(line: 52, column: 7, scope: !4560)
!4624 = !DILocation(line: 117, column: 26, scope: !4604)
!4625 = !DILocation(line: 117, column: 19, scope: !4604)
!4626 = !DILocation(line: 117, column: 13, scope: !4604)
!4627 = !DILocation(line: 118, column: 15, scope: !4628)
!4628 = distinct !DILexicalBlock(scope: !4604, file: !4561, line: 118, column: 11)
!4629 = !DILocation(line: 118, column: 11, scope: !4604)
!4630 = !DILocation(line: 129, column: 11, scope: !4604)
!4631 = !DILocation(line: 129, column: 18, scope: !4604)
!4632 = !DILocation(line: 130, column: 11, scope: !4604)
!4633 = !DILocation(line: 130, column: 19, scope: !4604)
!4634 = !{!929, !931, i64 144}
!4635 = !DILocation(line: 161, column: 7, scope: !4604)
!4636 = !DILocation(line: 163, column: 10, scope: !4560)
!4637 = !DILocation(line: 163, column: 3, scope: !4560)
!4638 = !DILocation(line: 0, scope: !4560)
!4639 = !DILocation(line: 164, column: 1, scope: !4560)
