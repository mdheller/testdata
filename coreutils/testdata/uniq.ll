; ModuleID = 'coreutils-8.30/src/uniq.bc'
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
%struct.linebuffer = type { i64, i64, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Usage: %s [OPTION]... [INPUT [OUTPUT]]\0A\00", align 1
@.str.2 = private unnamed_addr constant [173 x i8] c"Filter adjacent matching lines from INPUT (or standard input),\0Awriting to OUTPUT (or standard output).\0A\0AWith no options, matching lines are merged to the first occurrence.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.33 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.3 = private unnamed_addr constant [138 x i8] c"  -c, --count           prefix lines by the number of occurrences\0A  -d, --repeated        only print duplicate lines, one for each group\0A\00", align 1
@.str.4 = private unnamed_addr constant [245 x i8] c"  -D                    print all duplicate lines\0A      --all-repeated[=METHOD]  like -D, but allow separating groups\0A                                 with an empty line;\0A                                 METHOD={none(default),prepend,separate}\0A\00", align 1
@.str.5 = private unnamed_addr constant [60 x i8] c"  -f, --skip-fields=N   avoid comparing the first N fields\0A\00", align 1
@.str.6 = private unnamed_addr constant [152 x i8] c"      --group[=METHOD]  show all items, separating groups with an empty line;\0A                          METHOD={separate(default),prepend,append,both}\0A\00", align 1
@.str.7 = private unnamed_addr constant [178 x i8] c"  -i, --ignore-case     ignore differences in case when comparing\0A  -s, --skip-chars=N    avoid comparing the first N characters\0A  -u, --unique          only print unique lines\0A\00", align 1
@.str.8 = private unnamed_addr constant [64 x i8] c"  -z, --zero-terminated     line delimiter is NUL, not newline\0A\00", align 1
@.str.9 = private unnamed_addr constant [68 x i8] c"  -w, --check-chars=N   compare no more than N characters in lines\0A\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.11 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.12 = private unnamed_addr constant [120 x i8] c"\0AA field is a run of blanks (usually spaces and/or TABs), then non-blank\0Acharacters.  Fields are skipped before chars.\0A\00", align 1
@.str.13 = private unnamed_addr constant [204 x i8] c"\0ANote: 'uniq' does not detect repeated lines unless they are adjacent.\0AYou may want to sort the input first, or use 'sort -u' without 'uniq'.\0AAlso, comparisons honor the rules specified by 'LC_COLLATE'.\0A\00", align 1
@emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.35, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.36, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.34 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"uniq\00", align 1
@.str.42 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.43 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.45 = private unnamed_addr constant [70 x i8] c"Report %s translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.46 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.47 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.17 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.35 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.36 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"POSIXLY_CORRECT\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@hard_LC_COLLATE = internal unnamed_addr global i8 0, align 1, !dbg !0
@skip_chars = internal unnamed_addr global i64 0, align 8, !dbg !89
@skip_fields = internal unnamed_addr global i64 0, align 8, !dbg !87
@check_chars = internal unnamed_addr global i64 0, align 8, !dbg !91
@output_first_repeated = internal unnamed_addr global i1 false, align 1, !dbg !143
@output_unique = internal unnamed_addr global i1 false, align 1, !dbg !144
@output_later_repeated = internal unnamed_addr global i1 false, align 1, !dbg !145
@countmode = internal unnamed_addr global i1 false, align 4, !dbg !146
@delimit_groups = internal unnamed_addr global i32 0, align 4, !dbg !104
@.str.20 = private unnamed_addr constant [24 x i8] c"-0123456789Dcdf:is:uw:z\00", align 1
@longopts = internal constant [13 x %struct.option] [%struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i32 0, i32 0), i32 0, i32* null, i32 99 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i32 0, i32 0), i32 0, i32* null, i32 100 }, %struct.option { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.51, i32 0, i32 0), i32 2, i32* null, i32 68 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i32 0, i32 0), i32 2, i32* null, i32 128 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.53, i32 0, i32 0), i32 0, i32* null, i32 105 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i32 0, i32 0), i32 0, i32* null, i32 117 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.55, i32 0, i32 0), i32 1, i32* null, i32 102 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.56, i32 0, i32 0), i32 1, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.57, i32 0, i32 0), i32 1, i32* null, i32 119 }, %struct.option { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.58, i32 0, i32 0), i32 0, i32* null, i32 122 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.60, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !106
@optind = external local_unnamed_addr global i32, align 4
@.str.21 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@optarg = external local_unnamed_addr global i8*, align 8
@.str.22 = private unnamed_addr constant [15 x i8] c"--all-repeated\00", align 1
@delimit_method_string = internal constant [4 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.63, i32 0, i32 0), i8* null], align 16, !dbg !126
@delimit_method_map = internal constant [3 x i32] [i32 0, i32 1, i32 2], align 4, !dbg !120
@grouping = internal unnamed_addr global i32 0, align 4, !dbg !132
@.str.23 = private unnamed_addr constant [8 x i8] c"--group\00", align 1
@grouping_method_string = internal constant [5 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.65, i32 0, i32 0), i8* null], align 16, !dbg !138
@grouping_method_map = internal constant [4 x i32] [i32 1, i32 2, i32 3, i32 4], align 16, !dbg !134
@.str.24 = private unnamed_addr constant [33 x i8] c"invalid number of fields to skip\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@ignore_case = internal unnamed_addr global i1 false, align 1, !dbg !147
@.str.25 = private unnamed_addr constant [32 x i8] c"invalid number of bytes to skip\00", align 1
@.str.26 = private unnamed_addr constant [35 x i8] c"invalid number of bytes to compare\00", align 1
@.str.28 = private unnamed_addr constant [20 x i8] c"Richard M. Stallman\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.30 = private unnamed_addr constant [47 x i8] c"--group is mutually exclusive with -c/-d/-D/-u\00", align 1
@.str.31 = private unnamed_addr constant [51 x i8] c"grouping and printing repeat counts is meaningless\00", align 1
@.str.32 = private unnamed_addr constant [63 x i8] c"printing all duplicated lines and repeat counts is meaningless\00", align 1
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.67 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.68 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.69 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.71 = private unnamed_addr constant [6 x i8] c"%7lu \00", align 1
@.str.70 = private unnamed_addr constant [17 x i8] c"error reading %s\00", align 1
@.str.62 = private unnamed_addr constant [8 x i8] c"prepend\00", align 1
@.str.64 = private unnamed_addr constant [7 x i8] c"append\00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c"separate\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"both\00", align 1
@.str.61 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"repeated\00", align 1
@.str.51 = private unnamed_addr constant [13 x i8] c"all-repeated\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"group\00", align 1
@.str.53 = private unnamed_addr constant [12 x i8] c"ignore-case\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"unique\00", align 1
@.str.55 = private unnamed_addr constant [12 x i8] c"skip-fields\00", align 1
@.str.56 = private unnamed_addr constant [11 x i8] c"skip-chars\00", align 1
@.str.57 = private unnamed_addr constant [12 x i8] c"check-chars\00", align 1
@.str.58 = private unnamed_addr constant [16 x i8] c"zero-terminated\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.60 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.72, i64 0, i64 0), align 8, !dbg !148
@.str.72 = private unnamed_addr constant [5 x i8] c"8.30\00", align 1
@argmatch_die = dso_local local_unnamed_addr global void ()* @__argmatch_die, align 8, !dbg !154
@.str.75 = private unnamed_addr constant [27 x i8] c"invalid argument %s for %s\00", align 1
@.str.1.76 = private unnamed_addr constant [29 x i8] c"ambiguous argument %s for %s\00", align 1
@.str.2.77 = private unnamed_addr constant [21 x i8] c"Valid arguments are:\00", align 1
@.str.3.78 = private unnamed_addr constant [8 x i8] c"\0A  - %s\00", align 1
@.str.4.79 = private unnamed_addr constant [5 x i8] c", %s\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !167
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !172
@.str.84 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.85 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.86 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !175
@.str.93 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@.str.96 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.97 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.106 = private unnamed_addr constant [16 x i8] c"_POSIX2_VERSION\00", align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !182
@.str.111 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.112 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.113 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.114, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.115, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.116, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.117, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.118, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.119, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.120, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.121, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.122, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.123, i32 0, i32 0), i8* null], align 16, !dbg !189
@.str.114 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.115 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.116 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.117 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.118 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.119 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.120 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.121 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.122 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.123 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !201
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !208
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !220
@.str.11.124 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.125 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.126 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.127 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.128 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.129 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.130 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !227
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !234
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !222
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !236
@.str.143 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.144 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.145 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.146 = private unnamed_addr constant [204 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.147 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.148 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.149 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.150 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.151 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.152 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.153 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.154 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.155 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.156 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.159 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.160 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.161 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.162 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.163 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.19.164 = private unnamed_addr constant [65 x i8] c"General help using GNU software: <https://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !241
@.str.1.177 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.178 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.181 = private unnamed_addr constant [25 x i8] c"string comparison failed\00", align 1
@.str.1.182 = private unnamed_addr constant [43 x i8] c"Set LC_ALL='C' to work around the problem.\00", align 1
@.str.2.183 = private unnamed_addr constant [37 x i8] c"The strings compared were %s and %s.\00", align 1
@.str.186 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str.1.187 = private unnamed_addr constant [16 x i8] c"./lib/xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtoul = private unnamed_addr constant [81 x i8] c"strtol_error xstrtoul(const char *, char **, int, unsigned long *, const char *)\00", align 1
@.str.202 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.203 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32) local_unnamed_addr #0 !dbg !708 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !713, metadata !DIExpression()), !dbg !732
  call void @llvm.dbg.value(metadata i32 %0, metadata !712, metadata !DIExpression()), !dbg !736
  %3 = icmp eq i32 %0, 0, !dbg !737
  br i1 %3, label %9, label %4, !dbg !738

; <label>:4:                                      ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !739, !tbaa !741
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #12, !dbg !739
  %7 = load i8*, i8** @program_name, align 8, !dbg !739, !tbaa !741
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #12, !dbg !739
  br label %87, !dbg !739

; <label>:9:                                      ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 5) #12, !dbg !745
  %11 = load i8*, i8** @program_name, align 8, !dbg !745, !tbaa !741
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #12, !dbg !745
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([173 x i8], [173 x i8]* @.str.2, i64 0, i64 0), i32 5) #12, !dbg !746
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !746, !tbaa !741
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !746
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.33, i64 0, i64 0), i32 5) #12, !dbg !747
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !747, !tbaa !741
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17) #12, !dbg !747
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([138 x i8], [138 x i8]* @.str.3, i64 0, i64 0), i32 5) #12, !dbg !750
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !750, !tbaa !741
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !750
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([245 x i8], [245 x i8]* @.str.4, i64 0, i64 0), i32 5) #12, !dbg !751
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !751, !tbaa !741
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !751
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.5, i64 0, i64 0), i32 5) #12, !dbg !752
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !752, !tbaa !741
  %27 = tail call i32 @fputs_unlocked(i8* %25, %struct._IO_FILE* %26), !dbg !752
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([152 x i8], [152 x i8]* @.str.6, i64 0, i64 0), i32 5) #12, !dbg !753
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !753, !tbaa !741
  %30 = tail call i32 @fputs_unlocked(i8* %28, %struct._IO_FILE* %29), !dbg !753
  %31 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([178 x i8], [178 x i8]* @.str.7, i64 0, i64 0), i32 5) #12, !dbg !754
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !754, !tbaa !741
  %33 = tail call i32 @fputs_unlocked(i8* %31, %struct._IO_FILE* %32), !dbg !754
  %34 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.8, i64 0, i64 0), i32 5) #12, !dbg !755
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !755, !tbaa !741
  %36 = tail call i32 @fputs_unlocked(i8* %34, %struct._IO_FILE* %35), !dbg !755
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.9, i64 0, i64 0), i32 5) #12, !dbg !756
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !756, !tbaa !741
  %39 = tail call i32 @fputs_unlocked(i8* %37, %struct._IO_FILE* %38), !dbg !756
  %40 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i64 0, i64 0), i32 5) #12, !dbg !757
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !757, !tbaa !741
  %42 = tail call i32 @fputs_unlocked(i8* %40, %struct._IO_FILE* %41), !dbg !757
  %43 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.11, i64 0, i64 0), i32 5) #12, !dbg !758
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !758, !tbaa !741
  %45 = tail call i32 @fputs_unlocked(i8* %43, %struct._IO_FILE* %44), !dbg !758
  %46 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.12, i64 0, i64 0), i32 5) #12, !dbg !759
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !759, !tbaa !741
  %48 = tail call i32 @fputs_unlocked(i8* %46, %struct._IO_FILE* %47), !dbg !759
  %49 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([204 x i8], [204 x i8]* @.str.13, i64 0, i64 0), i32 5) #12, !dbg !760
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !760, !tbaa !741
  %51 = tail call i32 @fputs_unlocked(i8* %49, %struct._IO_FILE* %50), !dbg !760
  %52 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !761
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %52) #12, !dbg !761
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %52, i8* align 16 bitcast ([7 x %struct.infomap]* @emit_ancillary_info.infomap to i8*), i64 112, i1 false) #12, !dbg !732
  %53 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !762
  call void @llvm.dbg.value(metadata %struct.infomap* %53, metadata !721, metadata !DIExpression()) #12, !dbg !763
  br label %54, !dbg !764

; <label>:54:                                     ; preds = %59, %9
  %55 = phi i8* [ %62, %59 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i64 0, i64 0), %9 ]
  %56 = phi %struct.infomap* [ %60, %59 ], [ %53, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %56, metadata !721, metadata !DIExpression()) #12, !dbg !763
  %57 = tail call i32 @strcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* nonnull %55) #14, !dbg !764
  %58 = icmp eq i32 %57, 0, !dbg !764
  br i1 %58, label %64, label %59, !dbg !765

; <label>:59:                                     ; preds = %54
  %60 = getelementptr inbounds %struct.infomap, %struct.infomap* %56, i64 1, !dbg !766
  call void @llvm.dbg.value(metadata %struct.infomap* %60, metadata !721, metadata !DIExpression()) #12, !dbg !763
  %61 = getelementptr inbounds %struct.infomap, %struct.infomap* %60, i64 0, i32 0, !dbg !767
  %62 = load i8*, i8** %61, align 8, !dbg !767, !tbaa !768
  %63 = icmp eq i8* %62, null, !dbg !770
  br i1 %63, label %64, label %54, !dbg !771, !llvm.loop !772

; <label>:64:                                     ; preds = %59, %54
  %65 = phi %struct.infomap* [ %60, %59 ], [ %56, %54 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %65, metadata !721, metadata !DIExpression()) #12, !dbg !763
  call void @llvm.dbg.value(metadata %struct.infomap* %65, metadata !721, metadata !DIExpression()) #12, !dbg !763
  %66 = getelementptr inbounds %struct.infomap, %struct.infomap* %65, i64 0, i32 1, !dbg !775
  %67 = load i8*, i8** %66, align 8, !dbg !775, !tbaa !777
  %68 = icmp eq i8* %67, null, !dbg !778
  %69 = select i1 %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* %67, !dbg !779
  call void @llvm.dbg.value(metadata i8* %69, metadata !720, metadata !DIExpression()) #12, !dbg !780
  %70 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.42, i64 0, i64 0), i32 5) #12, !dbg !781
  %71 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %70, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.43, i64 0, i64 0)) #12, !dbg !781
  %72 = tail call i8* @setlocale(i32 5, i8* null) #12, !dbg !782
  call void @llvm.dbg.value(metadata i8* %72, metadata !728, metadata !DIExpression()) #12, !dbg !783
  %73 = icmp eq i8* %72, null, !dbg !784
  br i1 %73, label %80, label %74, !dbg !786

; <label>:74:                                     ; preds = %64
  %75 = tail call i32 @strncmp(i8* nonnull %72, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i64 0, i64 0), i64 3) #14, !dbg !787
  %76 = icmp eq i32 %75, 0, !dbg !787
  br i1 %76, label %80, label %77, !dbg !788

; <label>:77:                                     ; preds = %74
  %78 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.45, i64 0, i64 0), i32 5) #12, !dbg !789
  %79 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %78, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0)) #12, !dbg !789
  br label %80, !dbg !791

; <label>:80:                                     ; preds = %64, %74, %77
  %81 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.46, i64 0, i64 0), i32 5) #12, !dbg !792
  %82 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %81, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.43, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0)) #12, !dbg !792
  %83 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.47, i64 0, i64 0), i32 5) #12, !dbg !793
  %84 = icmp eq i8* %69, getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), !dbg !793
  %85 = select i1 %84, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.48, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i64 0, i64 0), !dbg !793
  %86 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %83, i8* %69, i8* %85) #12, !dbg !793
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %52) #12, !dbg !794
  br label %87

; <label>:87:                                     ; preds = %80, %4
  tail call void @exit(i32 %0) #15, !dbg !795
  unreachable, !dbg !795
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
define dso_local i32 @main(i32, i8**) local_unnamed_addr #7 !dbg !796 {
  %3 = alloca %struct.linebuffer, align 8
  %4 = alloca %struct.linebuffer, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca <2 x i8*>, align 16
  %9 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !801, metadata !DIExpression()), !dbg !818
  call void @llvm.dbg.value(metadata i8** %1, metadata !802, metadata !DIExpression()), !dbg !819
  call void @llvm.dbg.value(metadata i32 0, metadata !803, metadata !DIExpression()), !dbg !820
  %10 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0)) #12, !dbg !821
  %11 = icmp ne i8* %10, null, !dbg !822
  call void @llvm.dbg.value(metadata i32 0, metadata !805, metadata !DIExpression()), !dbg !823
  call void @llvm.dbg.value(metadata i32 0, metadata !806, metadata !DIExpression()), !dbg !824
  %12 = bitcast <2 x i8*>* %8 to i8*, !dbg !825
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %12) #12, !dbg !825
  call void @llvm.dbg.value(metadata i8 10, metadata !811, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.value(metadata i8 0, metadata !812, metadata !DIExpression()), !dbg !827
  %13 = getelementptr inbounds <2 x i8*>, <2 x i8*>* %8, i64 0, i64 1, !dbg !828
  %14 = getelementptr inbounds <2 x i8*>, <2 x i8*>* %8, i64 0, i64 0, !dbg !829
  call void @llvm.dbg.value(metadata <2 x i8*> <i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0)>, metadata !807, metadata !DIExpression()), !dbg !830
  store <2 x i8*> <i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0)>, <2 x i8*>* %8, align 16, !dbg !831, !tbaa !741
  %15 = load i8*, i8** %1, align 8, !dbg !832, !tbaa !741
  tail call void @set_program_name(i8* %15) #12, !dbg !833
  %16 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i64 0, i64 0)) #12, !dbg !834
  %17 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i64 0, i64 0)) #12, !dbg !835
  %18 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0)) #12, !dbg !836
  %19 = tail call zeroext i1 @hard_locale(i32 3) #12, !dbg !837
  %20 = zext i1 %19 to i8, !dbg !838
  store i8 %20, i8* @hard_LC_COLLATE, align 1, !dbg !838, !tbaa !839
  %21 = tail call i32 @atexit(void ()* nonnull @close_stdout) #12, !dbg !841
  store i64 0, i64* @skip_chars, align 8, !dbg !842, !tbaa !843
  store i64 0, i64* @skip_fields, align 8, !dbg !845, !tbaa !843
  store i64 -1, i64* @check_chars, align 8, !dbg !846, !tbaa !843
  store i1 true, i1* @output_first_repeated, align 1
  store i1 true, i1* @output_unique, align 1
  store i1 false, i1* @output_later_repeated, align 1
  store i1 true, i1* @countmode, align 4
  store i32 0, i32* @delimit_groups, align 4, !dbg !847, !tbaa !848
  %22 = bitcast i64* %9 to i8*
  %23 = bitcast i64* %7 to i8*
  %24 = bitcast i64* %6 to i8*
  %25 = bitcast i64* %5 to i8*
  br label %26, !dbg !849

; <label>:26:                                     ; preds = %38, %2
  %27 = phi i32 [ 0, %2 ], [ %39, %38 ], !dbg !820
  %28 = phi i32 [ 0, %2 ], [ %40, %38 ], !dbg !823
  %29 = phi i32 [ 0, %2 ], [ %41, %38 ], !dbg !850
  %30 = phi i8 [ 10, %2 ], [ %42, %38 ], !dbg !826
  %31 = phi i8 [ 0, %2 ], [ %43, %38 ], !dbg !827
  call void @llvm.dbg.value(metadata i8 %31, metadata !812, metadata !DIExpression()), !dbg !827
  call void @llvm.dbg.value(metadata i8 %30, metadata !811, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.value(metadata i32 %29, metadata !806, metadata !DIExpression()), !dbg !824
  call void @llvm.dbg.value(metadata i32 %28, metadata !805, metadata !DIExpression()), !dbg !823
  call void @llvm.dbg.value(metadata i32 %27, metadata !803, metadata !DIExpression()), !dbg !820
  %32 = icmp eq i32 %27, -1, !dbg !852
  %33 = icmp ne i32 %29, 0, !dbg !853
  %34 = and i1 %11, %33, !dbg !854
  %35 = or i1 %32, %34, !dbg !855
  br i1 %35, label %44, label %36, !dbg !855

; <label>:36:                                     ; preds = %26
  %37 = call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i64 0, i64 0), %struct.option* getelementptr inbounds ([13 x %struct.option], [13 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #12, !dbg !856
  call void @llvm.dbg.value(metadata i32 %37, metadata !803, metadata !DIExpression()), !dbg !820
  switch i32 %37, label %163 [
    i32 -1, label %44
    i32 1, label %67
    i32 48, label %95
    i32 49, label %95
    i32 50, label %95
    i32 51, label %95
    i32 52, label %95
    i32 53, label %95
    i32 54, label %95
    i32 55, label %95
    i32 56, label %95
    i32 57, label %95
    i32 99, label %112
    i32 100, label %113
    i32 68, label %114
    i32 128, label %124
    i32 102, label %133
    i32 105, label %141
    i32 115, label %142
    i32 117, label %150
    i32 119, label %151
    i32 122, label %38
    i32 -130, label %159
    i32 -131, label %160
  ], !dbg !857

; <label>:38:                                     ; preds = %36, %111, %109, %93, %112, %113, %122, %139, %141, %148, %150, %157, %128, %127, %57
  %39 = phi i32 [ %45, %57 ], [ 119, %157 ], [ 117, %150 ], [ 115, %148 ], [ 105, %141 ], [ 102, %139 ], [ 128, %127 ], [ 128, %128 ], [ 68, %122 ], [ 100, %113 ], [ 99, %112 ], [ 1, %93 ], [ %37, %109 ], [ %37, %111 ], [ %37, %36 ]
  %40 = phi i32 [ %28, %57 ], [ %28, %157 ], [ %28, %150 ], [ %28, %148 ], [ %28, %141 ], [ 2, %139 ], [ %28, %127 ], [ %28, %128 ], [ %28, %122 ], [ %28, %113 ], [ %28, %112 ], [ %28, %93 ], [ 1, %109 ], [ 1, %111 ], [ %28, %36 ]
  %41 = phi i32 [ %63, %57 ], [ %29, %157 ], [ %29, %150 ], [ %29, %148 ], [ %29, %141 ], [ %29, %139 ], [ %29, %127 ], [ %29, %128 ], [ %29, %122 ], [ %29, %113 ], [ %29, %112 ], [ %94, %93 ], [ %29, %109 ], [ %29, %111 ], [ %29, %36 ]
  %42 = phi i8 [ %30, %57 ], [ %30, %157 ], [ %30, %150 ], [ %30, %148 ], [ %30, %141 ], [ %30, %139 ], [ %30, %127 ], [ %30, %128 ], [ %30, %122 ], [ %30, %113 ], [ %30, %112 ], [ %30, %93 ], [ %30, %109 ], [ %30, %111 ], [ 0, %36 ]
  %43 = phi i8 [ %31, %57 ], [ %31, %157 ], [ 1, %150 ], [ %31, %148 ], [ %31, %141 ], [ %31, %139 ], [ %31, %127 ], [ %31, %128 ], [ 1, %122 ], [ 1, %113 ], [ 1, %112 ], [ %31, %93 ], [ %31, %109 ], [ %31, %111 ], [ %31, %36 ]
  br label %26, !dbg !827, !llvm.loop !858

; <label>:44:                                     ; preds = %36, %26
  %45 = phi i32 [ %27, %26 ], [ %37, %36 ], !dbg !860
  call void @llvm.dbg.value(metadata i32 %45, metadata !803, metadata !DIExpression()), !dbg !820
  %46 = load i32, i32* @optind, align 4, !dbg !861, !tbaa !863
  %47 = icmp slt i32 %46, %0, !dbg !865
  br i1 %47, label %48, label %164, !dbg !866

; <label>:48:                                     ; preds = %44
  %49 = icmp eq i32 %29, 2, !dbg !867
  br i1 %49, label %50, label %57, !dbg !869

; <label>:50:                                     ; preds = %48
  %51 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i64 0, i64 0), i32 5) #12, !dbg !870
  %52 = load i32, i32* @optind, align 4, !dbg !872, !tbaa !863
  %53 = sext i32 %52 to i64, !dbg !873
  %54 = getelementptr inbounds i8*, i8** %1, i64 %53, !dbg !873
  %55 = load i8*, i8** %54, align 8, !dbg !873, !tbaa !741
  %56 = call i8* @quote(i8* %55) #12, !dbg !874
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %51, i8* %56) #12, !dbg !875
  call void @usage(i32 1) #16, !dbg !876
  unreachable, !dbg !876

; <label>:57:                                     ; preds = %48
  %58 = add nsw i32 %46, 1, !dbg !877
  store i32 %58, i32* @optind, align 4, !dbg !877, !tbaa !863
  %59 = sext i32 %46 to i64, !dbg !878
  %60 = getelementptr inbounds i8*, i8** %1, i64 %59, !dbg !878
  %61 = bitcast i8** %60 to i64*, !dbg !878
  %62 = load i64, i64* %61, align 8, !dbg !878, !tbaa !741
  %63 = add i32 %29, 1, !dbg !879
  call void @llvm.dbg.value(metadata i32 %63, metadata !806, metadata !DIExpression()), !dbg !824
  %64 = zext i32 %29 to i64, !dbg !880
  %65 = getelementptr inbounds <2 x i8*>, <2 x i8*>* %8, i64 0, i64 %64, !dbg !880
  %66 = bitcast i8** %65 to i64*, !dbg !881
  store i64 %62, i64* %66, align 8, !dbg !881, !tbaa !741
  br label %38, !dbg !882

; <label>:67:                                     ; preds = %36
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %22) #12, !dbg !883
  %68 = load i8*, i8** @optarg, align 8, !dbg !884, !tbaa !741
  %69 = load i8, i8* %68, align 1, !dbg !884, !tbaa !848
  %70 = icmp eq i8 %69, 43, !dbg !886
  br i1 %70, label %71, label %81, !dbg !887

; <label>:71:                                     ; preds = %67
  %72 = call i32 @posix2_version() #12, !dbg !888
  call void @llvm.dbg.value(metadata i32 %72, metadata !893, metadata !DIExpression()) #12, !dbg !895
  %73 = add i32 %72, -200112, !dbg !896
  %74 = icmp ult i32 %73, 697, !dbg !896
  br i1 %74, label %81, label %75, !dbg !897

; <label>:75:                                     ; preds = %71
  %76 = load i8*, i8** @optarg, align 8, !dbg !898, !tbaa !741
  call void @llvm.dbg.value(metadata i64* %9, metadata !813, metadata !DIExpression(DW_OP_deref)), !dbg !899
  %77 = call i32 @xstrtoul(i8* %76, i8** null, i32 10, i64* nonnull %9, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i64 0, i64 0)) #12, !dbg !900
  %78 = icmp eq i32 %77, 0, !dbg !901
  br i1 %78, label %79, label %81, !dbg !902

; <label>:79:                                     ; preds = %75
  %80 = load i64, i64* %9, align 8, !dbg !903
  call void @llvm.dbg.value(metadata i64 %80, metadata !813, metadata !DIExpression()), !dbg !899
  store i64 %80, i64* @skip_chars, align 8, !dbg !904, !tbaa !843
  br label %93, !dbg !905

; <label>:81:                                     ; preds = %75, %71, %67
  %82 = icmp eq i32 %29, 2, !dbg !906
  br i1 %82, label %83, label %87, !dbg !908

; <label>:83:                                     ; preds = %81
  %84 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i64 0, i64 0), i32 5) #12, !dbg !909
  %85 = load i8*, i8** @optarg, align 8, !dbg !911, !tbaa !741
  %86 = call i8* @quote(i8* %85) #12, !dbg !912
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %84, i8* %86) #12, !dbg !913
  call void @usage(i32 1) #16, !dbg !914
  unreachable, !dbg !914

; <label>:87:                                     ; preds = %81
  %88 = load i64, i64* bitcast (i8** @optarg to i64*), align 8, !dbg !915, !tbaa !741
  %89 = add i32 %29, 1, !dbg !916
  call void @llvm.dbg.value(metadata i32 %89, metadata !806, metadata !DIExpression()), !dbg !824
  %90 = zext i32 %29 to i64, !dbg !917
  %91 = getelementptr inbounds <2 x i8*>, <2 x i8*>* %8, i64 0, i64 %90, !dbg !917
  %92 = bitcast i8** %91 to i64*, !dbg !918
  store i64 %88, i64* %92, align 8, !dbg !918, !tbaa !741
  br label %93

; <label>:93:                                     ; preds = %87, %79
  %94 = phi i32 [ %89, %87 ], [ %29, %79 ], !dbg !919
  call void @llvm.dbg.value(metadata i32 %94, metadata !806, metadata !DIExpression()), !dbg !824
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %22) #12, !dbg !920
  br label %38, !dbg !921

; <label>:95:                                     ; preds = %36, %36, %36, %36, %36, %36, %36, %36, %36, %36
  %96 = icmp eq i32 %28, 2, !dbg !922
  br i1 %96, label %97, label %100, !dbg !925

; <label>:97:                                     ; preds = %95
  store i64 0, i64* @skip_fields, align 8, !dbg !926, !tbaa !843
  %98 = add nsw i32 %37, -48, !dbg !927
  %99 = sext i32 %98 to i64, !dbg !927
  br label %109, !dbg !927

; <label>:100:                                    ; preds = %95
  %101 = load i64, i64* @skip_fields, align 8, !dbg !927, !tbaa !843
  %102 = icmp ugt i64 %101, 1844674407370955161, !dbg !927
  br i1 %102, label %111, label %103, !dbg !927

; <label>:103:                                    ; preds = %100
  %104 = mul i64 %101, 10, !dbg !927
  %105 = add nsw i32 %37, -48, !dbg !927
  %106 = sext i32 %105 to i64, !dbg !927
  %107 = add i64 %104, %106, !dbg !927
  %108 = icmp ult i64 %107, %101, !dbg !927
  br i1 %108, label %111, label %109, !dbg !927

; <label>:109:                                    ; preds = %97, %103
  %110 = phi i64 [ %99, %97 ], [ %107, %103 ]
  store i64 %110, i64* @skip_fields, align 8, !dbg !927, !tbaa !843
  br label %38

; <label>:111:                                    ; preds = %103, %100
  store i64 -1, i64* @skip_fields, align 8, !dbg !929, !tbaa !843
  br label %38, !dbg !930

; <label>:112:                                    ; preds = %36
  store i1 false, i1* @countmode, align 4
  call void @llvm.dbg.value(metadata i8 1, metadata !812, metadata !DIExpression()), !dbg !827
  br label %38, !dbg !931

; <label>:113:                                    ; preds = %36
  store i1 false, i1* @output_unique, align 1
  call void @llvm.dbg.value(metadata i8 1, metadata !812, metadata !DIExpression()), !dbg !827
  br label %38, !dbg !932

; <label>:114:                                    ; preds = %36
  store i1 false, i1* @output_unique, align 1
  store i1 true, i1* @output_later_repeated, align 1
  %115 = load i8*, i8** @optarg, align 8, !dbg !933, !tbaa !741
  %116 = icmp eq i8* %115, null, !dbg !935
  br i1 %116, label %122, label %117, !dbg !936

; <label>:117:                                    ; preds = %114
  %118 = load void ()*, void ()** @argmatch_die, align 8, !dbg !937, !tbaa !741
  %119 = call i64 @__xargmatch_internal(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i64 0, i64 0), i8* nonnull %115, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @delimit_method_string, i64 0, i64 0), i8* bitcast ([3 x i32]* @delimit_method_map to i8*), i64 4, void ()* %118) #12, !dbg !937
  %120 = getelementptr inbounds [3 x i32], [3 x i32]* @delimit_method_map, i64 0, i64 %119, !dbg !937
  %121 = load i32, i32* %120, align 4, !dbg !937, !tbaa !848
  br label %122

; <label>:122:                                    ; preds = %114, %117
  %123 = phi i32 [ %121, %117 ], [ 0, %114 ]
  store i32 %123, i32* @delimit_groups, align 4, !dbg !938, !tbaa !848
  call void @llvm.dbg.value(metadata i8 1, metadata !812, metadata !DIExpression()), !dbg !827
  br label %38, !dbg !939

; <label>:124:                                    ; preds = %36
  %125 = load i8*, i8** @optarg, align 8, !dbg !940, !tbaa !741
  %126 = icmp eq i8* %125, null, !dbg !942
  br i1 %126, label %127, label %128, !dbg !943

; <label>:127:                                    ; preds = %124
  store i32 3, i32* @grouping, align 4, !dbg !944, !tbaa !848
  br label %38, !dbg !945

; <label>:128:                                    ; preds = %124
  %129 = load void ()*, void ()** @argmatch_die, align 8, !dbg !946, !tbaa !741
  %130 = call i64 @__xargmatch_internal(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i64 0, i64 0), i8* nonnull %125, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @grouping_method_string, i64 0, i64 0), i8* bitcast ([4 x i32]* @grouping_method_map to i8*), i64 4, void ()* %129) #12, !dbg !946
  %131 = getelementptr inbounds [4 x i32], [4 x i32]* @grouping_method_map, i64 0, i64 %130, !dbg !946
  %132 = load i32, i32* %131, align 4, !dbg !946, !tbaa !848
  store i32 %132, i32* @grouping, align 4, !dbg !947, !tbaa !848
  br label %38

; <label>:133:                                    ; preds = %36
  call void @llvm.dbg.value(metadata i32 2, metadata !805, metadata !DIExpression()), !dbg !823
  %134 = load i8*, i8** @optarg, align 8, !dbg !948, !tbaa !741
  call void @llvm.dbg.value(metadata i8* %134, metadata !949, metadata !DIExpression()) #12, !dbg !956
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.24, i64 0, i64 0), metadata !954, metadata !DIExpression()) #12, !dbg !958
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #12, !dbg !959
  call void @llvm.dbg.value(metadata i64* %7, metadata !955, metadata !DIExpression(DW_OP_deref)) #12, !dbg !960
  %135 = call i32 @xstrtoul(i8* %134, i8** null, i32 10, i64* nonnull %7, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i64 0, i64 0)) #12, !dbg !961
  %136 = icmp ult i32 %135, 2, !dbg !962
  br i1 %136, label %139, label %137, !dbg !962

; <label>:137:                                    ; preds = %133
  %138 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.24, i64 0, i64 0), i32 5) #12, !dbg !963
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i64 0, i64 0), i8* %134, i8* %138) #12, !dbg !963
  unreachable, !dbg !963

; <label>:139:                                    ; preds = %133
  %140 = load i64, i64* %7, align 8, !dbg !965, !tbaa !843
  call void @llvm.dbg.value(metadata i64 %140, metadata !955, metadata !DIExpression()) #12, !dbg !960
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #12, !dbg !966
  store i64 %140, i64* @skip_fields, align 8, !dbg !967, !tbaa !843
  br label %38, !dbg !968

; <label>:141:                                    ; preds = %36
  store i1 true, i1* @ignore_case, align 1
  br label %38, !dbg !969

; <label>:142:                                    ; preds = %36
  %143 = load i8*, i8** @optarg, align 8, !dbg !970, !tbaa !741
  call void @llvm.dbg.value(metadata i8* %143, metadata !949, metadata !DIExpression()) #12, !dbg !971
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.25, i64 0, i64 0), metadata !954, metadata !DIExpression()) #12, !dbg !973
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %24) #12, !dbg !974
  call void @llvm.dbg.value(metadata i64* %6, metadata !955, metadata !DIExpression(DW_OP_deref)) #12, !dbg !975
  %144 = call i32 @xstrtoul(i8* %143, i8** null, i32 10, i64* nonnull %6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i64 0, i64 0)) #12, !dbg !976
  %145 = icmp ult i32 %144, 2, !dbg !977
  br i1 %145, label %148, label %146, !dbg !977

; <label>:146:                                    ; preds = %142
  %147 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.25, i64 0, i64 0), i32 5) #12, !dbg !978
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i64 0, i64 0), i8* %143, i8* %147) #12, !dbg !978
  unreachable, !dbg !978

; <label>:148:                                    ; preds = %142
  %149 = load i64, i64* %6, align 8, !dbg !979, !tbaa !843
  call void @llvm.dbg.value(metadata i64 %149, metadata !955, metadata !DIExpression()) #12, !dbg !975
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %24) #12, !dbg !980
  store i64 %149, i64* @skip_chars, align 8, !dbg !981, !tbaa !843
  br label %38, !dbg !982

; <label>:150:                                    ; preds = %36
  store i1 false, i1* @output_first_repeated, align 1
  call void @llvm.dbg.value(metadata i8 1, metadata !812, metadata !DIExpression()), !dbg !827
  br label %38, !dbg !983

; <label>:151:                                    ; preds = %36
  %152 = load i8*, i8** @optarg, align 8, !dbg !984, !tbaa !741
  call void @llvm.dbg.value(metadata i8* %152, metadata !949, metadata !DIExpression()) #12, !dbg !985
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.26, i64 0, i64 0), metadata !954, metadata !DIExpression()) #12, !dbg !987
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %25) #12, !dbg !988
  call void @llvm.dbg.value(metadata i64* %5, metadata !955, metadata !DIExpression(DW_OP_deref)) #12, !dbg !989
  %153 = call i32 @xstrtoul(i8* %152, i8** null, i32 10, i64* nonnull %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i64 0, i64 0)) #12, !dbg !990
  %154 = icmp ult i32 %153, 2, !dbg !991
  br i1 %154, label %157, label %155, !dbg !991

; <label>:155:                                    ; preds = %151
  %156 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.26, i64 0, i64 0), i32 5) #12, !dbg !992
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i64 0, i64 0), i8* %152, i8* %156) #12, !dbg !992
  unreachable, !dbg !992

; <label>:157:                                    ; preds = %151
  %158 = load i64, i64* %5, align 8, !dbg !993, !tbaa !843
  call void @llvm.dbg.value(metadata i64 %158, metadata !955, metadata !DIExpression()) #12, !dbg !989
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %25) #12, !dbg !994
  store i64 %158, i64* @check_chars, align 8, !dbg !995, !tbaa !843
  br label %38, !dbg !996

; <label>:159:                                    ; preds = %36
  call void @usage(i32 0) #16, !dbg !997
  unreachable, !dbg !997

; <label>:160:                                    ; preds = %36
  %161 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !998, !tbaa !741
  %162 = load i8*, i8** @Version, align 8, !dbg !998, !tbaa !741
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %161, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0), i8* %162, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i64 0, i64 0), i8* null) #12, !dbg !998
  call void @exit(i32 0) #15, !dbg !998
  unreachable, !dbg !998

; <label>:163:                                    ; preds = %36
  call void @usage(i32 1) #16, !dbg !999
  unreachable, !dbg !999

; <label>:164:                                    ; preds = %44
  call void @llvm.dbg.value(metadata i8 %30, metadata !811, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.value(metadata i8 %31, metadata !812, metadata !DIExpression()), !dbg !827
  call void @llvm.dbg.value(metadata i8 %30, metadata !811, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.value(metadata i8 %31, metadata !812, metadata !DIExpression()), !dbg !827
  call void @llvm.dbg.value(metadata i8 %30, metadata !811, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.value(metadata i8 %31, metadata !812, metadata !DIExpression()), !dbg !827
  call void @llvm.dbg.value(metadata i8 %30, metadata !811, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.value(metadata i8 %31, metadata !812, metadata !DIExpression()), !dbg !827
  call void @llvm.dbg.value(metadata i8 %30, metadata !811, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.value(metadata i8 %31, metadata !812, metadata !DIExpression()), !dbg !827
  call void @llvm.dbg.value(metadata i8 %30, metadata !811, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.value(metadata i8 %31, metadata !812, metadata !DIExpression()), !dbg !827
  %165 = load i32, i32* @grouping, align 4, !dbg !1000, !tbaa !848
  %166 = icmp eq i32 %165, 0, !dbg !1002
  %167 = icmp eq i8 %31, 0, !dbg !1003
  %168 = or i1 %167, %166, !dbg !1004
  br i1 %168, label %171, label %169, !dbg !1004

; <label>:169:                                    ; preds = %164
  %170 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.30, i64 0, i64 0), i32 5) #12, !dbg !1005
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %170) #12, !dbg !1007
  call void @usage(i32 1) #16, !dbg !1008
  unreachable, !dbg !1008

; <label>:171:                                    ; preds = %164
  %172 = icmp ne i32 %165, 0, !dbg !1009
  %173 = load i1, i1* @countmode, align 4
  %174 = xor i1 %173, true, !dbg !1011
  %175 = and i1 %172, %174, !dbg !1012
  br i1 %175, label %176, label %178, !dbg !1012

; <label>:176:                                    ; preds = %171
  %177 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.31, i64 0, i64 0), i32 5) #12, !dbg !1013
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %177) #12, !dbg !1015
  call void @usage(i32 1) #16, !dbg !1016
  unreachable, !dbg !1016

; <label>:178:                                    ; preds = %171
  br i1 %173, label %183, label %179, !dbg !1017

; <label>:179:                                    ; preds = %178
  %180 = load i1, i1* @output_later_repeated, align 1
  br i1 %180, label %181, label %183, !dbg !1019

; <label>:181:                                    ; preds = %179
  %182 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.32, i64 0, i64 0), i32 5) #12, !dbg !1020
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %182) #12, !dbg !1022
  call void @usage(i32 1) #16, !dbg !1023
  unreachable, !dbg !1023

; <label>:183:                                    ; preds = %178, %179
  %184 = load i8*, i8** %14, align 16, !dbg !1024, !tbaa !741
  %185 = load i8*, i8** %13, align 8, !dbg !1025, !tbaa !741
  call void @llvm.dbg.value(metadata i8* %184, metadata !1026, metadata !DIExpression()) #12, !dbg !1074
  call void @llvm.dbg.value(metadata i8* %185, metadata !1031, metadata !DIExpression()) #12, !dbg !1076
  call void @llvm.dbg.value(metadata i8 %30, metadata !1032, metadata !DIExpression()) #12, !dbg !1077
  %186 = bitcast %struct.linebuffer* %3 to i8*, !dbg !1078
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %186) #12, !dbg !1078
  %187 = bitcast %struct.linebuffer* %4 to i8*, !dbg !1078
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %187) #12, !dbg !1078
  %188 = call i32 @strcmp(i8* %184, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0)) #14, !dbg !1079
  %189 = icmp eq i32 %188, 0, !dbg !1079
  br i1 %189, label %198, label %190, !dbg !1081

; <label>:190:                                    ; preds = %183
  %191 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1082, !tbaa !741
  %192 = call %struct._IO_FILE* @freopen_safer(i8* %184, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.67, i64 0, i64 0), %struct._IO_FILE* %191) #12, !dbg !1083
  %193 = icmp eq %struct._IO_FILE* %192, null, !dbg !1083
  br i1 %193, label %194, label %198, !dbg !1084

; <label>:194:                                    ; preds = %190
  %195 = tail call i32* @__errno_location() #17, !dbg !1085
  %196 = load i32, i32* %195, align 4, !dbg !1085, !tbaa !863
  %197 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %184) #12, !dbg !1085
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %196, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.68, i64 0, i64 0), i8* %197) #12, !dbg !1085
  unreachable, !dbg !1085

; <label>:198:                                    ; preds = %190, %183
  %199 = call i32 @strcmp(i8* %185, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0)) #14, !dbg !1086
  %200 = icmp eq i32 %199, 0, !dbg !1086
  br i1 %200, label %209, label %201, !dbg !1088

; <label>:201:                                    ; preds = %198
  %202 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1089, !tbaa !741
  %203 = call %struct._IO_FILE* @freopen_safer(i8* %185, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.69, i64 0, i64 0), %struct._IO_FILE* %202) #12, !dbg !1090
  %204 = icmp eq %struct._IO_FILE* %203, null, !dbg !1090
  br i1 %204, label %205, label %209, !dbg !1091

; <label>:205:                                    ; preds = %201
  %206 = tail call i32* @__errno_location() #17, !dbg !1092
  %207 = load i32, i32* %206, align 4, !dbg !1092, !tbaa !863
  %208 = call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %185) #12, !dbg !1092
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %207, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.68, i64 0, i64 0), i8* %208) #12, !dbg !1092
  unreachable, !dbg !1092

; <label>:209:                                    ; preds = %201, %198
  %210 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1093, !tbaa !741
  call void @fadvise(%struct._IO_FILE* %210, i32 2) #12, !dbg !1094
  call void @llvm.dbg.value(metadata %struct.linebuffer* %3, metadata !1041, metadata !DIExpression()) #12, !dbg !1095
  call void @llvm.dbg.value(metadata %struct.linebuffer* %4, metadata !1043, metadata !DIExpression()) #12, !dbg !1096
  call void @llvm.dbg.value(metadata %struct.linebuffer* %3, metadata !1033, metadata !DIExpression(DW_OP_deref)) #12, !dbg !1097
  call void @initbuffer(%struct.linebuffer* nonnull %3) #12, !dbg !1098
  call void @llvm.dbg.value(metadata %struct.linebuffer* %4, metadata !1040, metadata !DIExpression(DW_OP_deref)) #12, !dbg !1099
  call void @initbuffer(%struct.linebuffer* nonnull %4) #12, !dbg !1100
  %211 = load i1, i1* @output_unique, align 1
  br i1 %211, label %212, label %332, !dbg !1101

; <label>:212:                                    ; preds = %209
  %213 = load i1, i1* @output_first_repeated, align 1
  %214 = load i1, i1* @countmode, align 4
  %215 = and i1 %213, %214, !dbg !1102
  br i1 %215, label %216, label %332, !dbg !1102

; <label>:216:                                    ; preds = %212
  call void @llvm.dbg.value(metadata %struct.linebuffer* %3, metadata !1041, metadata !DIExpression()) #12, !dbg !1095
  call void @llvm.dbg.value(metadata %struct.linebuffer* %4, metadata !1043, metadata !DIExpression()) #12, !dbg !1096
  call void @llvm.dbg.value(metadata i8* undef, metadata !1044, metadata !DIExpression()) #12, !dbg !1103
  call void @llvm.dbg.value(metadata i64 undef, metadata !1047, metadata !DIExpression()) #12, !dbg !1104
  call void @llvm.dbg.value(metadata i8 0, metadata !1048, metadata !DIExpression()) #12, !dbg !1105
  %217 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1106, !tbaa !741
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %217, metadata !1107, metadata !DIExpression()) #12, !dbg !1167
  %218 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %217, i64 0, i32 0, !dbg !1169
  %219 = load i32, i32* %218, align 8, !dbg !1169, !tbaa !1170
  %220 = and i32 %219, 16, !dbg !1169
  %221 = icmp eq i32 %220, 0, !dbg !1173
  br i1 %221, label %222, label %314, !dbg !1174

; <label>:222:                                    ; preds = %216
  %223 = zext i8 %30 to i32
  br label %224, !dbg !1174

; <label>:224:                                    ; preds = %303, %222
  %225 = phi %struct._IO_FILE* [ %217, %222 ], [ %309, %303 ]
  %226 = phi %struct.linebuffer* [ %3, %222 ], [ %308, %303 ]
  %227 = phi %struct.linebuffer* [ %4, %222 ], [ %307, %303 ]
  %228 = phi i8* [ undef, %222 ], [ %306, %303 ]
  %229 = phi i64 [ undef, %222 ], [ %305, %303 ]
  %230 = phi i8 [ 0, %222 ], [ %304, %303 ]
  call void @llvm.dbg.value(metadata %struct.linebuffer* %226, metadata !1041, metadata !DIExpression()) #12, !dbg !1095
  call void @llvm.dbg.value(metadata %struct.linebuffer* %227, metadata !1043, metadata !DIExpression()) #12, !dbg !1096
  call void @llvm.dbg.value(metadata i8* %228, metadata !1044, metadata !DIExpression()) #12, !dbg !1103
  call void @llvm.dbg.value(metadata i64 %229, metadata !1047, metadata !DIExpression()) #12, !dbg !1104
  call void @llvm.dbg.value(metadata i8 %230, metadata !1048, metadata !DIExpression()) #12, !dbg !1105
  %231 = call %struct.linebuffer* @readlinebuffer_delim(%struct.linebuffer* %226, %struct._IO_FILE* %225, i8 signext %30) #12, !dbg !1175
  %232 = icmp eq %struct.linebuffer* %231, null, !dbg !1177
  br i1 %232, label %314, label %233, !dbg !1178

; <label>:233:                                    ; preds = %224
  %234 = call fastcc i8* @find_field(%struct.linebuffer* %226) #14, !dbg !1179
  call void @llvm.dbg.value(metadata i8* %234, metadata !1049, metadata !DIExpression()) #12, !dbg !1180
  %235 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %226, i64 0, i32 1, !dbg !1181
  %236 = load i64, i64* %235, align 8, !dbg !1181, !tbaa !1182
  %237 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %226, i64 0, i32 2, !dbg !1184
  %238 = bitcast i8** %237 to i64*, !dbg !1184
  %239 = load i64, i64* %238, align 8, !dbg !1184, !tbaa !1185
  %240 = ptrtoint i8* %234 to i64, !dbg !1186
  %241 = xor i64 %240, -1, !dbg !1187
  %242 = add i64 %236, %241, !dbg !1187
  %243 = add i64 %242, %239, !dbg !1187
  call void @llvm.dbg.value(metadata i64 %243, metadata !1051, metadata !DIExpression()) #12, !dbg !1188
  %244 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %227, i64 0, i32 1, !dbg !1189
  %245 = load i64, i64* %244, align 8, !dbg !1189, !tbaa !1182
  %246 = icmp eq i64 %245, 0, !dbg !1190
  br i1 %246, label %270, label %247, !dbg !1191

; <label>:247:                                    ; preds = %233
  call void @llvm.dbg.value(metadata i8* %234, metadata !1192, metadata !DIExpression()) #12, !dbg !1200
  call void @llvm.dbg.value(metadata i8* undef, metadata !1197, metadata !DIExpression()) #12, !dbg !1202
  call void @llvm.dbg.value(metadata i64 %243, metadata !1198, metadata !DIExpression()) #12, !dbg !1203
  call void @llvm.dbg.value(metadata i64 %229, metadata !1199, metadata !DIExpression()) #12, !dbg !1204
  %248 = load i64, i64* @check_chars, align 8, !dbg !1205, !tbaa !843
  %249 = icmp ult i64 %248, %243, !dbg !1207
  %250 = select i1 %249, i64 %248, i64 %243, !dbg !1208
  call void @llvm.dbg.value(metadata i64 %250, metadata !1198, metadata !DIExpression()) #12, !dbg !1203
  %251 = icmp ult i64 %248, %229, !dbg !1209
  call void @llvm.dbg.value(metadata i64 %248, metadata !1199, metadata !DIExpression()) #12, !dbg !1204
  %252 = select i1 %251, i64 %248, i64 %229, !dbg !1211
  call void @llvm.dbg.value(metadata i64 %252, metadata !1199, metadata !DIExpression()) #12, !dbg !1204
  %253 = load i1, i1* @ignore_case, align 1
  br i1 %253, label %254, label %259, !dbg !1212

; <label>:254:                                    ; preds = %247
  %255 = icmp eq i64 %250, %252, !dbg !1213
  br i1 %255, label %256, label %270, !dbg !1216

; <label>:256:                                    ; preds = %254
  %257 = call i32 @memcasecmp(i8* %234, i8* %228, i64 %250) #14, !dbg !1217
  %258 = icmp ne i32 %257, 0, !dbg !1216
  br label %270, !dbg !1216

; <label>:259:                                    ; preds = %247
  %260 = load i8, i8* @hard_LC_COLLATE, align 1, !dbg !1218, !tbaa !839, !range !1220
  %261 = icmp eq i8 %260, 0, !dbg !1218
  br i1 %261, label %265, label %262, !dbg !1221

; <label>:262:                                    ; preds = %259
  %263 = call i32 @xmemcoll(i8* %234, i64 %250, i8* %228, i64 %252) #12, !dbg !1222
  %264 = icmp ne i32 %263, 0, !dbg !1223
  br label %270, !dbg !1224

; <label>:265:                                    ; preds = %259
  %266 = icmp eq i64 %250, %252, !dbg !1225
  br i1 %266, label %267, label %270, !dbg !1226

; <label>:267:                                    ; preds = %265
  %268 = call i32 @memcmp(i8* %234, i8* %228, i64 %250) #14, !dbg !1227
  %269 = icmp ne i32 %268, 0, !dbg !1226
  br label %270, !dbg !1226

; <label>:270:                                    ; preds = %267, %265, %262, %256, %254, %233
  %271 = phi i1 [ true, %233 ], [ %264, %262 ], [ true, %254 ], [ %258, %256 ], [ true, %265 ], [ %269, %267 ]
  %272 = load i32, i32* @grouping, align 4, !dbg !1228
  %273 = icmp ne i32 %272, 0, !dbg !1230
  %274 = and i1 %271, %273, !dbg !1231
  br i1 %274, label %275, label %294, !dbg !1231

; <label>:275:                                    ; preds = %270
  switch i32 %272, label %276 [
    i32 4, label %282
    i32 1, label %282
  ], !dbg !1232

; <label>:276:                                    ; preds = %275
  %277 = and i8 %230, 1, !dbg !1233
  %278 = icmp ne i8 %277, 0, !dbg !1233
  %279 = or i32 %272, 1, !dbg !1234
  %280 = icmp eq i32 %279, 3, !dbg !1234
  %281 = and i1 %278, %280, !dbg !1235
  br i1 %281, label %282, label %298, !dbg !1235

; <label>:282:                                    ; preds = %276, %275, %275
  %283 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1236, !tbaa !741
  %284 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %283, i64 0, i32 5, !dbg !1236
  %285 = load i8*, i8** %284, align 8, !dbg !1236, !tbaa !1243
  %286 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %283, i64 0, i32 6, !dbg !1236
  %287 = load i8*, i8** %286, align 8, !dbg !1236, !tbaa !1244
  %288 = icmp ult i8* %285, %287, !dbg !1236
  br i1 %288, label %292, label %289, !dbg !1236, !prof !1245

; <label>:289:                                    ; preds = %282
  %290 = call i32 @__overflow(%struct._IO_FILE* %283, i32 %223) #12, !dbg !1236
  %291 = load i32, i32* @grouping, align 4, !dbg !1246
  br label %294, !dbg !1236

; <label>:292:                                    ; preds = %282
  %293 = getelementptr inbounds i8, i8* %285, i64 1, !dbg !1236
  store i8* %293, i8** %284, align 8, !dbg !1236, !tbaa !1243
  store i8 %30, i8* %285, align 1, !dbg !1236, !tbaa !848
  br label %298, !dbg !1236

; <label>:294:                                    ; preds = %289, %270
  %295 = phi i32 [ %291, %289 ], [ %272, %270 ], !dbg !1246
  %296 = icmp ne i32 %295, 0, !dbg !1247
  %297 = or i1 %271, %296, !dbg !1248
  br i1 %297, label %298, label %303, !dbg !1248

; <label>:298:                                    ; preds = %294, %292, %276
  %299 = load i8*, i8** %237, align 8, !dbg !1249, !tbaa !1185
  %300 = load i64, i64* %235, align 8, !dbg !1249, !tbaa !1182
  %301 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1249, !tbaa !741
  %302 = call i64 @fwrite_unlocked(i8* %299, i64 1, i64 %300, %struct._IO_FILE* %301) #12, !dbg !1249
  call void @llvm.dbg.value(metadata %struct.linebuffer* %227, metadata !1053, metadata !DIExpression()) #12, !dbg !1250
  call void @llvm.dbg.value(metadata %struct.linebuffer* %226, metadata !1043, metadata !DIExpression()) #12, !dbg !1096
  call void @llvm.dbg.value(metadata %struct.linebuffer* %227, metadata !1041, metadata !DIExpression()) #12, !dbg !1095
  call void @llvm.dbg.value(metadata i8* %234, metadata !1044, metadata !DIExpression()) #12, !dbg !1103
  call void @llvm.dbg.value(metadata i64 %243, metadata !1047, metadata !DIExpression()) #12, !dbg !1104
  call void @llvm.dbg.value(metadata i8 1, metadata !1048, metadata !DIExpression()) #12, !dbg !1105
  br label %303, !dbg !1251

; <label>:303:                                    ; preds = %298, %294
  %304 = phi i8 [ 1, %298 ], [ %230, %294 ], !dbg !1252
  %305 = phi i64 [ %243, %298 ], [ %229, %294 ]
  %306 = phi i8* [ %234, %298 ], [ %228, %294 ]
  %307 = phi %struct.linebuffer* [ %226, %298 ], [ %227, %294 ], !dbg !1253
  %308 = phi %struct.linebuffer* [ %227, %298 ], [ %226, %294 ], !dbg !1253
  call void @llvm.dbg.value(metadata %struct.linebuffer* %308, metadata !1041, metadata !DIExpression()) #12, !dbg !1095
  call void @llvm.dbg.value(metadata %struct.linebuffer* %307, metadata !1043, metadata !DIExpression()) #12, !dbg !1096
  call void @llvm.dbg.value(metadata i8* %306, metadata !1044, metadata !DIExpression()) #12, !dbg !1103
  call void @llvm.dbg.value(metadata i64 %305, metadata !1047, metadata !DIExpression()) #12, !dbg !1104
  call void @llvm.dbg.value(metadata i8 %304, metadata !1048, metadata !DIExpression()) #12, !dbg !1105
  %309 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1106, !tbaa !741
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %309, metadata !1107, metadata !DIExpression()) #12, !dbg !1167
  %310 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %309, i64 0, i32 0, !dbg !1169
  %311 = load i32, i32* %310, align 8, !dbg !1169, !tbaa !1170
  %312 = and i32 %311, 16, !dbg !1169
  %313 = icmp eq i32 %312, 0, !dbg !1173
  br i1 %313, label %224, label %314, !dbg !1174

; <label>:314:                                    ; preds = %303, %224, %216
  %315 = phi i8 [ 0, %216 ], [ %304, %303 ], [ %230, %224 ], !dbg !1105
  call void @llvm.dbg.value(metadata i8 %315, metadata !1048, metadata !DIExpression()) #12, !dbg !1105
  call void @llvm.dbg.value(metadata i8 %315, metadata !1048, metadata !DIExpression()) #12, !dbg !1105
  call void @llvm.dbg.value(metadata i8 undef, metadata !1048, metadata !DIExpression()) #12, !dbg !1105
  %316 = load i32, i32* @grouping, align 4, !dbg !1254, !tbaa !848
  switch i32 %316, label %489 [
    i32 4, label %317
    i32 2, label %317
  ], !dbg !1256

; <label>:317:                                    ; preds = %314, %314
  %318 = and i8 %315, 1, !dbg !1257
  %319 = icmp eq i8 %318, 0, !dbg !1257
  br i1 %319, label %489, label %320, !dbg !1258

; <label>:320:                                    ; preds = %317
  %321 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1259, !tbaa !741
  %322 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %321, i64 0, i32 5, !dbg !1259
  %323 = load i8*, i8** %322, align 8, !dbg !1259, !tbaa !1243
  %324 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %321, i64 0, i32 6, !dbg !1259
  %325 = load i8*, i8** %324, align 8, !dbg !1259, !tbaa !1244
  %326 = icmp ult i8* %323, %325, !dbg !1259
  br i1 %326, label %330, label %327, !dbg !1259, !prof !1245

; <label>:327:                                    ; preds = %320
  %328 = zext i8 %30 to i32, !dbg !1261
  %329 = call i32 @__overflow(%struct._IO_FILE* %321, i32 %328) #12, !dbg !1259
  br label %489, !dbg !1259

; <label>:330:                                    ; preds = %320
  %331 = getelementptr inbounds i8, i8* %323, i64 1, !dbg !1259
  store i8* %331, i8** %322, align 8, !dbg !1259, !tbaa !1243
  store i8 %30, i8* %323, align 1, !dbg !1259, !tbaa !848
  br label %489, !dbg !1259

; <label>:332:                                    ; preds = %212, %209
  call void @llvm.dbg.value(metadata i64 0, metadata !1060, metadata !DIExpression()) #12, !dbg !1262
  call void @llvm.dbg.value(metadata i8 1, metadata !1065, metadata !DIExpression()) #12, !dbg !1263
  %333 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1264, !tbaa !741
  call void @llvm.dbg.value(metadata %struct.linebuffer* %4, metadata !1040, metadata !DIExpression(DW_OP_deref)) #12, !dbg !1099
  %334 = call %struct.linebuffer* @readlinebuffer_delim(%struct.linebuffer* nonnull %4, %struct._IO_FILE* %333, i8 signext %30) #12, !dbg !1266
  %335 = icmp eq %struct.linebuffer* %334, null, !dbg !1267
  br i1 %335, label %489, label %336, !dbg !1268

; <label>:336:                                    ; preds = %332
  call void @llvm.dbg.value(metadata %struct.linebuffer* %4, metadata !1040, metadata !DIExpression(DW_OP_deref)) #12, !dbg !1099
  %337 = call fastcc i8* @find_field(%struct.linebuffer* nonnull %4) #14, !dbg !1269
  call void @llvm.dbg.value(metadata i8* %337, metadata !1057, metadata !DIExpression()) #12, !dbg !1270
  %338 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %4, i64 0, i32 1, !dbg !1271
  %339 = load i64, i64* %338, align 8, !dbg !1271, !tbaa !1182
  %340 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %4, i64 0, i32 2, !dbg !1272
  %341 = bitcast i8** %340 to i64*, !dbg !1272
  %342 = load i64, i64* %341, align 8, !dbg !1272, !tbaa !1185
  %343 = ptrtoint i8* %337 to i64, !dbg !1273
  %344 = xor i64 %343, -1, !dbg !1274
  %345 = add i64 %339, %344, !dbg !1274
  %346 = add i64 %345, %342, !dbg !1274
  call void @llvm.dbg.value(metadata i64 %346, metadata !1059, metadata !DIExpression()) #12, !dbg !1275
  %347 = zext i8 %30 to i32
  br label %348, !dbg !1276

; <label>:348:                                    ; preds = %461, %336
  %349 = phi i8* [ %337, %336 ], [ %463, %461 ], !dbg !1277
  %350 = phi i64 [ %346, %336 ], [ %464, %461 ], !dbg !1278
  %351 = phi i64 [ 0, %336 ], [ %465, %461 ], !dbg !1262
  %352 = phi i8 [ 1, %336 ], [ %466, %461 ], !dbg !1263
  %353 = phi %struct.linebuffer* [ %4, %336 ], [ %467, %461 ], !dbg !1279
  %354 = phi %struct.linebuffer* [ %3, %336 ], [ %468, %461 ], !dbg !1280
  call void @llvm.dbg.value(metadata %struct.linebuffer* %354, metadata !1041, metadata !DIExpression()) #12, !dbg !1095
  call void @llvm.dbg.value(metadata %struct.linebuffer* %353, metadata !1043, metadata !DIExpression()) #12, !dbg !1096
  call void @llvm.dbg.value(metadata i8 %352, metadata !1065, metadata !DIExpression()) #12, !dbg !1263
  call void @llvm.dbg.value(metadata i64 %351, metadata !1060, metadata !DIExpression()) #12, !dbg !1262
  call void @llvm.dbg.value(metadata i64 %350, metadata !1059, metadata !DIExpression()) #12, !dbg !1275
  call void @llvm.dbg.value(metadata i8* %349, metadata !1057, metadata !DIExpression()) #12, !dbg !1270
  %355 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1281, !tbaa !741
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %355, metadata !1107, metadata !DIExpression()) #12, !dbg !1282
  %356 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %355, i64 0, i32 0, !dbg !1284
  %357 = load i32, i32* %356, align 8, !dbg !1284, !tbaa !1170
  %358 = and i32 %357, 16, !dbg !1284
  %359 = icmp eq i32 %358, 0, !dbg !1285
  br i1 %359, label %360, label %469, !dbg !1276

; <label>:360:                                    ; preds = %348
  %361 = call %struct.linebuffer* @readlinebuffer_delim(%struct.linebuffer* %354, %struct._IO_FILE* %355, i8 signext %30) #12, !dbg !1286
  %362 = icmp eq %struct.linebuffer* %361, null, !dbg !1288
  br i1 %362, label %363, label %370, !dbg !1289

; <label>:363:                                    ; preds = %360
  %364 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1290, !tbaa !741
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %364, metadata !1293, metadata !DIExpression()) #12, !dbg !1296
  %365 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %364, i64 0, i32 0, !dbg !1298
  %366 = load i32, i32* %365, align 8, !dbg !1298, !tbaa !1170
  %367 = and i32 %366, 32, !dbg !1298
  %368 = icmp eq i32 %367, 0, !dbg !1290
  %369 = select i1 %368, i4 -8, i4 6, !dbg !1299
  br label %461, !dbg !1299

; <label>:370:                                    ; preds = %360
  %371 = call fastcc i8* @find_field(%struct.linebuffer* %354) #14, !dbg !1300
  call void @llvm.dbg.value(metadata i8* %371, metadata !1068, metadata !DIExpression()) #12, !dbg !1301
  %372 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %354, i64 0, i32 1, !dbg !1302
  %373 = load i64, i64* %372, align 8, !dbg !1302, !tbaa !1182
  %374 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %354, i64 0, i32 2, !dbg !1303
  %375 = bitcast i8** %374 to i64*, !dbg !1303
  %376 = load i64, i64* %375, align 8, !dbg !1303, !tbaa !1185
  %377 = ptrtoint i8* %371 to i64, !dbg !1304
  %378 = xor i64 %377, -1, !dbg !1305
  %379 = add i64 %373, %378, !dbg !1305
  %380 = add i64 %379, %376, !dbg !1305
  call void @llvm.dbg.value(metadata i64 %380, metadata !1069, metadata !DIExpression()) #12, !dbg !1306
  call void @llvm.dbg.value(metadata i8* %371, metadata !1192, metadata !DIExpression()) #12, !dbg !1307
  call void @llvm.dbg.value(metadata i8* %349, metadata !1197, metadata !DIExpression()) #12, !dbg !1309
  call void @llvm.dbg.value(metadata i64 %380, metadata !1198, metadata !DIExpression()) #12, !dbg !1310
  call void @llvm.dbg.value(metadata i64 %350, metadata !1199, metadata !DIExpression()) #12, !dbg !1311
  %381 = load i64, i64* @check_chars, align 8, !dbg !1312, !tbaa !843
  %382 = icmp ult i64 %381, %380, !dbg !1313
  %383 = select i1 %382, i64 %381, i64 %380, !dbg !1314
  call void @llvm.dbg.value(metadata i64 %383, metadata !1198, metadata !DIExpression()) #12, !dbg !1310
  %384 = icmp ult i64 %381, %350, !dbg !1315
  call void @llvm.dbg.value(metadata i64 %381, metadata !1199, metadata !DIExpression()) #12, !dbg !1311
  %385 = select i1 %384, i64 %381, i64 %350, !dbg !1316
  call void @llvm.dbg.value(metadata i64 %385, metadata !1199, metadata !DIExpression()) #12, !dbg !1311
  %386 = load i1, i1* @ignore_case, align 1
  br i1 %386, label %387, label %392, !dbg !1317

; <label>:387:                                    ; preds = %370
  %388 = icmp eq i64 %383, %385, !dbg !1318
  br i1 %388, label %389, label %403, !dbg !1319

; <label>:389:                                    ; preds = %387
  %390 = call i32 @memcasecmp(i8* %371, i8* %349, i64 %383) #14, !dbg !1320
  %391 = icmp ne i32 %390, 0, !dbg !1319
  br label %403, !dbg !1319

; <label>:392:                                    ; preds = %370
  %393 = load i8, i8* @hard_LC_COLLATE, align 1, !dbg !1321, !tbaa !839, !range !1220
  %394 = icmp eq i8 %393, 0, !dbg !1321
  br i1 %394, label %398, label %395, !dbg !1322

; <label>:395:                                    ; preds = %392
  %396 = call i32 @xmemcoll(i8* %371, i64 %383, i8* %349, i64 %385) #12, !dbg !1323
  %397 = icmp ne i32 %396, 0, !dbg !1324
  br label %403, !dbg !1325

; <label>:398:                                    ; preds = %392
  %399 = icmp eq i64 %383, %385, !dbg !1326
  br i1 %399, label %400, label %403, !dbg !1327

; <label>:400:                                    ; preds = %398
  %401 = call i32 @memcmp(i8* %371, i8* %349, i64 %383) #14, !dbg !1328
  %402 = icmp ne i32 %401, 0, !dbg !1327
  br label %403, !dbg !1327

; <label>:403:                                    ; preds = %400, %398, %395, %389, %387
  %404 = phi i1 [ %397, %395 ], [ true, %387 ], [ %391, %389 ], [ true, %398 ], [ %402, %400 ], !dbg !1329
  %405 = xor i1 %404, true, !dbg !1330
  %406 = zext i1 %405 to i64, !dbg !1331
  %407 = add i64 %351, %406, !dbg !1332
  call void @llvm.dbg.value(metadata i64 %407, metadata !1060, metadata !DIExpression()) #12, !dbg !1262
  %408 = icmp eq i64 %407, -1, !dbg !1333
  %409 = sext i1 %408 to i64, !dbg !1335
  %410 = add i64 %407, %409, !dbg !1335
  call void @llvm.dbg.value(metadata i64 %410, metadata !1060, metadata !DIExpression()) #12, !dbg !1262
  %411 = load i32, i32* @delimit_groups, align 4, !dbg !1336, !tbaa !848
  %412 = icmp eq i32 %411, 0, !dbg !1338
  br i1 %412, label %434, label %413, !dbg !1339

; <label>:413:                                    ; preds = %403
  br i1 %404, label %414, label %417, !dbg !1340

; <label>:414:                                    ; preds = %413
  %415 = icmp eq i64 %410, 0, !dbg !1342
  %416 = select i1 %415, i8 %352, i8 0, !dbg !1346
  call void @llvm.dbg.value(metadata i8 %352, metadata !1065, metadata !DIExpression()) #12, !dbg !1263
  br label %437, !dbg !1347

; <label>:417:                                    ; preds = %413
  %418 = icmp eq i64 %410, 1, !dbg !1348
  br i1 %418, label %419, label %435, !dbg !1350

; <label>:419:                                    ; preds = %417
  switch i32 %411, label %435 [
    i32 1, label %423
    i32 2, label %420
  ], !dbg !1351

; <label>:420:                                    ; preds = %419
  %421 = and i8 %352, 1, !dbg !1354
  %422 = icmp eq i8 %421, 0, !dbg !1354
  br i1 %422, label %423, label %435, !dbg !1355

; <label>:423:                                    ; preds = %420, %419
  %424 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1356, !tbaa !741
  %425 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %424, i64 0, i32 5, !dbg !1356
  %426 = load i8*, i8** %425, align 8, !dbg !1356, !tbaa !1243
  %427 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %424, i64 0, i32 6, !dbg !1356
  %428 = load i8*, i8** %427, align 8, !dbg !1356, !tbaa !1244
  %429 = icmp ult i8* %426, %428, !dbg !1356
  br i1 %429, label %432, label %430, !dbg !1356, !prof !1245

; <label>:430:                                    ; preds = %423
  %431 = call i32 @__overflow(%struct._IO_FILE* %424, i32 %347) #12, !dbg !1356
  br label %435, !dbg !1356

; <label>:432:                                    ; preds = %423
  %433 = getelementptr inbounds i8, i8* %426, i64 1, !dbg !1356
  store i8* %433, i8** %425, align 8, !dbg !1356, !tbaa !1243
  store i8 %30, i8* %426, align 1, !dbg !1356, !tbaa !848
  br label %435, !dbg !1356

; <label>:434:                                    ; preds = %403
  call void @llvm.dbg.value(metadata i8 %352, metadata !1065, metadata !DIExpression()) #12, !dbg !1263
  br i1 %404, label %437, label %435, !dbg !1347

; <label>:435:                                    ; preds = %434, %432, %430, %420, %419, %417
  %436 = load i1, i1* @output_later_repeated, align 1
  br i1 %436, label %437, label %461, !dbg !1358

; <label>:437:                                    ; preds = %435, %434, %414
  %438 = phi i8 [ %352, %434 ], [ %352, %435 ], [ %416, %414 ]
  call void @llvm.dbg.value(metadata %struct.linebuffer* %353, metadata !1359, metadata !DIExpression()) #12, !dbg !1368
  call void @llvm.dbg.value(metadata i1 %405, metadata !1366, metadata !DIExpression()) #12, !dbg !1370
  call void @llvm.dbg.value(metadata i64 %410, metadata !1367, metadata !DIExpression()) #12, !dbg !1371
  %439 = icmp eq i64 %410, 0, !dbg !1372
  br i1 %439, label %440, label %442, !dbg !1374

; <label>:440:                                    ; preds = %437
  %441 = load i1, i1* @output_unique, align 1
  br i1 %441, label %447, label %459, !dbg !1375

; <label>:442:                                    ; preds = %437
  br i1 %404, label %443, label %445, !dbg !1374

; <label>:443:                                    ; preds = %442
  %444 = load i1, i1* @output_first_repeated, align 1
  br i1 %444, label %447, label %459, !dbg !1376

; <label>:445:                                    ; preds = %442
  %446 = load i1, i1* @output_later_repeated, align 1
  br i1 %446, label %447, label %459, !dbg !1374

; <label>:447:                                    ; preds = %445, %443, %440
  %448 = load i1, i1* @countmode, align 4
  br i1 %448, label %452, label %449, !dbg !1377

; <label>:449:                                    ; preds = %447
  %450 = add i64 %410, 1, !dbg !1378
  %451 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.71, i64 0, i64 0), i64 %450) #12, !dbg !1378
  br label %452, !dbg !1378

; <label>:452:                                    ; preds = %449, %447
  %453 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %353, i64 0, i32 2, !dbg !1380
  %454 = load i8*, i8** %453, align 8, !dbg !1380, !tbaa !1185
  %455 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %353, i64 0, i32 1, !dbg !1380
  %456 = load i64, i64* %455, align 8, !dbg !1380, !tbaa !1182
  %457 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1380, !tbaa !741
  %458 = call i64 @fwrite_unlocked(i8* %454, i64 1, i64 %456, %struct._IO_FILE* %457) #12, !dbg !1380
  br label %459, !dbg !1381

; <label>:459:                                    ; preds = %452, %445, %443, %440
  call void @llvm.dbg.value(metadata %struct.linebuffer* %353, metadata !1070, metadata !DIExpression()) #12, !dbg !1382
  call void @llvm.dbg.value(metadata %struct.linebuffer* %354, metadata !1043, metadata !DIExpression()) #12, !dbg !1096
  call void @llvm.dbg.value(metadata %struct.linebuffer* %353, metadata !1041, metadata !DIExpression()) #12, !dbg !1095
  call void @llvm.dbg.value(metadata i8* %371, metadata !1057, metadata !DIExpression()) #12, !dbg !1270
  call void @llvm.dbg.value(metadata i64 %380, metadata !1059, metadata !DIExpression()) #12, !dbg !1275
  %460 = select i1 %404, i64 0, i64 %410, !dbg !1383
  br label %461, !dbg !1383

; <label>:461:                                    ; preds = %459, %435, %363
  %462 = phi i4 [ %369, %363 ], [ 0, %459 ], [ 0, %435 ]
  %463 = phi i8* [ %349, %363 ], [ %371, %459 ], [ %349, %435 ], !dbg !1384
  %464 = phi i64 [ %350, %363 ], [ %380, %459 ], [ %350, %435 ], !dbg !1384
  %465 = phi i64 [ %351, %363 ], [ %460, %459 ], [ %410, %435 ], !dbg !1385
  %466 = phi i8 [ %352, %363 ], [ %438, %459 ], [ %352, %435 ], !dbg !1263
  %467 = phi %struct.linebuffer* [ %353, %363 ], [ %354, %459 ], [ %353, %435 ], !dbg !1387
  %468 = phi %struct.linebuffer* [ %354, %363 ], [ %353, %459 ], [ %354, %435 ], !dbg !1387
  call void @llvm.dbg.value(metadata %struct.linebuffer* %468, metadata !1041, metadata !DIExpression()) #12, !dbg !1095
  call void @llvm.dbg.value(metadata %struct.linebuffer* %467, metadata !1043, metadata !DIExpression()) #12, !dbg !1096
  call void @llvm.dbg.value(metadata i8 %466, metadata !1065, metadata !DIExpression()) #12, !dbg !1263
  call void @llvm.dbg.value(metadata i64 %465, metadata !1060, metadata !DIExpression()) #12, !dbg !1262
  call void @llvm.dbg.value(metadata i64 %464, metadata !1059, metadata !DIExpression()) #12, !dbg !1275
  call void @llvm.dbg.value(metadata i8* %463, metadata !1057, metadata !DIExpression()) #12, !dbg !1270
  switch i4 %462, label %489 [
    i4 0, label %348
    i4 -8, label %469
  ], !llvm.loop !1388

; <label>:469:                                    ; preds = %461, %348
  %470 = phi i64 [ %465, %461 ], [ %351, %348 ], !dbg !1262
  %471 = phi %struct.linebuffer* [ %467, %461 ], [ %353, %348 ], !dbg !1279
  call void @llvm.dbg.value(metadata %struct.linebuffer* %471, metadata !1043, metadata !DIExpression()) #12, !dbg !1096
  call void @llvm.dbg.value(metadata i64 %470, metadata !1060, metadata !DIExpression()) #12, !dbg !1262
  call void @llvm.dbg.value(metadata %struct.linebuffer* %471, metadata !1359, metadata !DIExpression()) #12, !dbg !1391
  call void @llvm.dbg.value(metadata i1 false, metadata !1366, metadata !DIExpression()) #12, !dbg !1393
  call void @llvm.dbg.value(metadata i64 %470, metadata !1367, metadata !DIExpression()) #12, !dbg !1394
  %472 = icmp eq i64 %470, 0, !dbg !1395
  br i1 %472, label %473, label %475, !dbg !1396

; <label>:473:                                    ; preds = %469
  %474 = load i1, i1* @output_unique, align 1
  br i1 %474, label %477, label %489, !dbg !1397

; <label>:475:                                    ; preds = %469
  %476 = load i1, i1* @output_first_repeated, align 1
  br i1 %476, label %477, label %489, !dbg !1398

; <label>:477:                                    ; preds = %475, %473
  %478 = load i1, i1* @countmode, align 4
  br i1 %478, label %482, label %479, !dbg !1399

; <label>:479:                                    ; preds = %477
  %480 = add i64 %470, 1, !dbg !1400
  %481 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.71, i64 0, i64 0), i64 %480) #12, !dbg !1400
  br label %482, !dbg !1400

; <label>:482:                                    ; preds = %479, %477
  %483 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %471, i64 0, i32 2, !dbg !1401
  %484 = load i8*, i8** %483, align 8, !dbg !1401, !tbaa !1185
  %485 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %471, i64 0, i32 1, !dbg !1401
  %486 = load i64, i64* %485, align 8, !dbg !1401, !tbaa !1182
  %487 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1401, !tbaa !741
  %488 = call i64 @fwrite_unlocked(i8* %484, i64 1, i64 %486, %struct._IO_FILE* %487) #12, !dbg !1401
  br label %489, !dbg !1402

; <label>:489:                                    ; preds = %461, %482, %475, %473, %332, %330, %327, %317, %314
  %490 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1403, !tbaa !741
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %490, metadata !1293, metadata !DIExpression()) #12, !dbg !1405
  %491 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %490, i64 0, i32 0, !dbg !1407
  %492 = load i32, i32* %491, align 8, !dbg !1407, !tbaa !1170
  %493 = and i32 %492, 32, !dbg !1407
  %494 = icmp eq i32 %493, 0, !dbg !1403
  br i1 %494, label %495, label %498, !dbg !1408

; <label>:495:                                    ; preds = %489
  %496 = call i32 @rpl_fclose(%struct._IO_FILE* %490) #12, !dbg !1409
  %497 = icmp eq i32 %496, 0, !dbg !1410
  br i1 %497, label %501, label %498, !dbg !1411

; <label>:498:                                    ; preds = %495, %489
  %499 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.70, i64 0, i64 0), i32 5) #12, !dbg !1412
  %500 = call i8* @quotearg_style(i32 4, i8* %184) #12, !dbg !1412
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %499, i8* %500) #12, !dbg !1412
  unreachable, !dbg !1412

; <label>:501:                                    ; preds = %495
  %502 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %3, i64 0, i32 2, !dbg !1413
  %503 = load i8*, i8** %502, align 8, !dbg !1413, !tbaa !1185
  call void @free(i8* %503) #12, !dbg !1414
  %504 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %4, i64 0, i32 2, !dbg !1415
  %505 = load i8*, i8** %504, align 8, !dbg !1415, !tbaa !1185
  call void @free(i8* %505) #12, !dbg !1416
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %187) #12, !dbg !1417
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %186) #12, !dbg !1417
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %12) #12, !dbg !1418
  ret i32 0, !dbg !1418
}

; Function Attrs: nounwind readonly
declare i8* @getenv(i8* nocapture) local_unnamed_addr #5

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

; Function Attrs: nounwind readonly sspstrong uwtable
define internal fastcc i8* @find_field(%struct.linebuffer* nocapture readonly) unnamed_addr #9 !dbg !1419 {
  call void @llvm.dbg.value(metadata %struct.linebuffer* %0, metadata !1423, metadata !DIExpression()), !dbg !1428
  %2 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 2, !dbg !1429
  %3 = load i8*, i8** %2, align 8, !dbg !1429, !tbaa !1185
  call void @llvm.dbg.value(metadata i8* %3, metadata !1425, metadata !DIExpression()), !dbg !1430
  %4 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 1, !dbg !1431
  %5 = load i64, i64* %4, align 8, !dbg !1431, !tbaa !1182
  %6 = add i64 %5, -1, !dbg !1432
  call void @llvm.dbg.value(metadata i64 %6, metadata !1426, metadata !DIExpression()), !dbg !1433
  call void @llvm.dbg.value(metadata i64 0, metadata !1427, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata i64 0, metadata !1424, metadata !DIExpression()), !dbg !1435
  %7 = load i64, i64* @skip_fields, align 8, !dbg !1436, !tbaa !843
  %8 = icmp ne i64 %7, 0, !dbg !1439
  %9 = icmp ne i64 %6, 0, !dbg !1440
  %10 = and i1 %9, %8, !dbg !1441
  br i1 %10, label %11, label %58, !dbg !1441

; <label>:11:                                     ; preds = %1, %52
  %12 = phi i64 [ %53, %52 ], [ 0, %1 ]
  %13 = phi i64 [ %54, %52 ], [ 0, %1 ]
  call void @llvm.dbg.value(metadata i64 %12, metadata !1427, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata i64 %13, metadata !1424, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i64 %12, metadata !1427, metadata !DIExpression()), !dbg !1434
  %14 = icmp ult i64 %12, %6, !dbg !1442
  br i1 %14, label %15, label %32, !dbg !1444

; <label>:15:                                     ; preds = %11
  %16 = tail call i16** @__ctype_b_loc() #17, !dbg !1445
  %17 = load i16*, i16** %16, align 8, !tbaa !741
  br label %18, !dbg !1444

; <label>:18:                                     ; preds = %15, %29
  %19 = phi i64 [ %12, %15 ], [ %30, %29 ]
  call void @llvm.dbg.value(metadata i64 %19, metadata !1427, metadata !DIExpression()), !dbg !1434
  %20 = getelementptr inbounds i8, i8* %3, i64 %19, !dbg !1452
  %21 = load i8, i8* %20, align 1, !dbg !1452, !tbaa !848
  call void @llvm.dbg.value(metadata i8 %21, metadata !1450, metadata !DIExpression()) #12, !dbg !1453
  %22 = zext i8 %21 to i64, !dbg !1445
  %23 = getelementptr inbounds i16, i16* %17, i64 %22, !dbg !1445
  %24 = load i16, i16* %23, align 2, !dbg !1445, !tbaa !1454
  %25 = and i16 %24, 1, !dbg !1445
  %26 = icmp ne i16 %25, 0, !dbg !1445
  %27 = icmp eq i8 %21, 10, !dbg !1455
  %28 = or i1 %27, %26, !dbg !1456
  br i1 %28, label %29, label %32, !dbg !1457

; <label>:29:                                     ; preds = %18
  %30 = add nuw i64 %19, 1, !dbg !1458
  call void @llvm.dbg.value(metadata i64 %30, metadata !1427, metadata !DIExpression()), !dbg !1434
  %31 = icmp ult i64 %30, %6, !dbg !1442
  br i1 %31, label %18, label %32, !dbg !1444, !llvm.loop !1459

; <label>:32:                                     ; preds = %18, %29, %11
  %33 = phi i64 [ %12, %11 ], [ %30, %29 ], [ %19, %18 ], !dbg !1460
  call void @llvm.dbg.value(metadata i64 %33, metadata !1427, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata i64 %33, metadata !1427, metadata !DIExpression()), !dbg !1434
  %34 = icmp ult i64 %33, %6, !dbg !1461
  br i1 %34, label %35, label %52, !dbg !1462

; <label>:35:                                     ; preds = %32
  %36 = tail call i16** @__ctype_b_loc() #17, !dbg !1463
  %37 = load i16*, i16** %36, align 8, !tbaa !741
  br label %38, !dbg !1462

; <label>:38:                                     ; preds = %35, %49
  %39 = phi i64 [ %33, %35 ], [ %50, %49 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1427, metadata !DIExpression()), !dbg !1434
  %40 = getelementptr inbounds i8, i8* %3, i64 %39, !dbg !1465
  %41 = load i8, i8* %40, align 1, !dbg !1465, !tbaa !848
  call void @llvm.dbg.value(metadata i8 %41, metadata !1450, metadata !DIExpression()) #12, !dbg !1466
  %42 = zext i8 %41 to i64, !dbg !1463
  %43 = getelementptr inbounds i16, i16* %37, i64 %42, !dbg !1463
  %44 = load i16, i16* %43, align 2, !dbg !1463, !tbaa !1454
  %45 = and i16 %44, 1, !dbg !1463
  %46 = icmp ne i16 %45, 0, !dbg !1463
  %47 = icmp eq i8 %41, 10, !dbg !1467
  %48 = or i1 %47, %46, !dbg !1468
  br i1 %48, label %52, label %49, !dbg !1469

; <label>:49:                                     ; preds = %38
  %50 = add nuw i64 %39, 1, !dbg !1470
  call void @llvm.dbg.value(metadata i64 %50, metadata !1427, metadata !DIExpression()), !dbg !1434
  %51 = icmp ult i64 %50, %6, !dbg !1461
  br i1 %51, label %38, label %52, !dbg !1462, !llvm.loop !1471

; <label>:52:                                     ; preds = %49, %38, %32
  %53 = phi i64 [ %33, %32 ], [ %39, %38 ], [ %50, %49 ], !dbg !1460
  %54 = add nuw i64 %13, 1, !dbg !1472
  call void @llvm.dbg.value(metadata i64 %53, metadata !1427, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata i64 %54, metadata !1424, metadata !DIExpression()), !dbg !1435
  %55 = icmp ult i64 %54, %7, !dbg !1439
  %56 = icmp ugt i64 %6, %53, !dbg !1440
  %57 = and i1 %56, %55, !dbg !1441
  br i1 %57, label %11, label %58, !dbg !1441, !llvm.loop !1473

; <label>:58:                                     ; preds = %52, %1
  %59 = phi i64 [ 0, %1 ], [ %53, %52 ], !dbg !1434
  call void @llvm.dbg.value(metadata i64 %59, metadata !1427, metadata !DIExpression()), !dbg !1434
  %60 = load i64, i64* @skip_chars, align 8, !dbg !1476, !tbaa !843
  %61 = sub i64 %6, %59, !dbg !1476
  %62 = icmp ult i64 %60, %61, !dbg !1476
  %63 = select i1 %62, i64 %60, i64 %61, !dbg !1476
  %64 = add i64 %63, %59, !dbg !1477
  call void @llvm.dbg.value(metadata i64 %64, metadata !1427, metadata !DIExpression()), !dbg !1434
  %65 = getelementptr inbounds i8, i8* %3, i64 %64, !dbg !1478
  ret i8* %65, !dbg !1479
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #5

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare i64 @fwrite_unlocked(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define internal void @__argmatch_die() #7 !dbg !1480 {
  tail call void @usage(i32 1) #12, !dbg !1481
  ret void, !dbg !1482
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i64 @argmatch(i8* nocapture readonly, i8** nocapture readonly, i8* readonly, i64) local_unnamed_addr #9 !dbg !1483 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1489, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i8** %1, metadata !1490, metadata !DIExpression()), !dbg !1498
  call void @llvm.dbg.value(metadata i8* %2, metadata !1491, metadata !DIExpression()), !dbg !1499
  call void @llvm.dbg.value(metadata i64 %3, metadata !1492, metadata !DIExpression()), !dbg !1500
  call void @llvm.dbg.value(metadata i64 -1, metadata !1495, metadata !DIExpression()), !dbg !1501
  call void @llvm.dbg.value(metadata i8 0, metadata !1496, metadata !DIExpression()), !dbg !1502
  %5 = tail call i64 @strlen(i8* %0) #14, !dbg !1503
  call void @llvm.dbg.value(metadata i64 %5, metadata !1494, metadata !DIExpression()), !dbg !1504
  call void @llvm.dbg.value(metadata i64 0, metadata !1493, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i8 0, metadata !1496, metadata !DIExpression()), !dbg !1502
  call void @llvm.dbg.value(metadata i64 -1, metadata !1495, metadata !DIExpression()), !dbg !1501
  %6 = load i8*, i8** %1, align 8, !dbg !1506, !tbaa !741
  %7 = icmp eq i8* %6, null, !dbg !1509
  br i1 %7, label %38, label %8, !dbg !1509

; <label>:8:                                      ; preds = %4
  %9 = icmp eq i8* %2, null
  br label %10, !dbg !1509

; <label>:10:                                     ; preds = %8, %31
  %11 = phi i8* [ %6, %8 ], [ %36, %31 ]
  %12 = phi i8 [ 0, %8 ], [ %33, %31 ]
  %13 = phi i64 [ -1, %8 ], [ %32, %31 ]
  %14 = phi i64 [ 0, %8 ], [ %34, %31 ]
  call void @llvm.dbg.value(metadata i8 %12, metadata !1496, metadata !DIExpression()), !dbg !1502
  call void @llvm.dbg.value(metadata i64 %13, metadata !1495, metadata !DIExpression()), !dbg !1501
  call void @llvm.dbg.value(metadata i64 %14, metadata !1493, metadata !DIExpression()), !dbg !1505
  %15 = tail call i32 @strncmp(i8* nonnull %11, i8* %0, i64 %5) #14, !dbg !1510
  %16 = icmp eq i32 %15, 0, !dbg !1510
  br i1 %16, label %17, label %31, !dbg !1513

; <label>:17:                                     ; preds = %10
  %18 = tail call i64 @strlen(i8* nonnull %11) #14, !dbg !1514
  %19 = icmp eq i64 %18, %5, !dbg !1517
  br i1 %19, label %44, label %20, !dbg !1518

; <label>:20:                                     ; preds = %17
  %21 = icmp eq i64 %13, -1, !dbg !1519
  br i1 %21, label %31, label %22, !dbg !1521

; <label>:22:                                     ; preds = %20
  br i1 %9, label %30, label %23, !dbg !1522

; <label>:23:                                     ; preds = %22
  %24 = mul i64 %13, %3, !dbg !1525
  %25 = getelementptr inbounds i8, i8* %2, i64 %24, !dbg !1526
  %26 = mul i64 %14, %3, !dbg !1527
  %27 = getelementptr inbounds i8, i8* %2, i64 %26, !dbg !1528
  %28 = tail call i32 @memcmp(i8* nonnull %25, i8* nonnull %27, i64 %3) #14, !dbg !1529
  %29 = icmp eq i32 %28, 0, !dbg !1529
  br i1 %29, label %31, label %30, !dbg !1530

; <label>:30:                                     ; preds = %23, %22
  call void @llvm.dbg.value(metadata i8 1, metadata !1496, metadata !DIExpression()), !dbg !1502
  br label %31, !dbg !1531

; <label>:31:                                     ; preds = %20, %23, %10, %30
  %32 = phi i64 [ %13, %10 ], [ %13, %30 ], [ %13, %23 ], [ %14, %20 ], !dbg !1533
  %33 = phi i8 [ %12, %10 ], [ 1, %30 ], [ %12, %23 ], [ %12, %20 ], !dbg !1533
  %34 = add i64 %14, 1, !dbg !1534
  call void @llvm.dbg.value(metadata i8 %33, metadata !1496, metadata !DIExpression()), !dbg !1502
  call void @llvm.dbg.value(metadata i64 %32, metadata !1495, metadata !DIExpression()), !dbg !1501
  call void @llvm.dbg.value(metadata i64 %34, metadata !1493, metadata !DIExpression()), !dbg !1505
  %35 = getelementptr inbounds i8*, i8** %1, i64 %34, !dbg !1506
  %36 = load i8*, i8** %35, align 8, !dbg !1506, !tbaa !741
  %37 = icmp eq i8* %36, null, !dbg !1509
  br i1 %37, label %38, label %10, !dbg !1509, !llvm.loop !1535

; <label>:38:                                     ; preds = %31, %4
  %39 = phi i64 [ -1, %4 ], [ %32, %31 ], !dbg !1501
  %40 = phi i8 [ 0, %4 ], [ %33, %31 ], !dbg !1502
  call void @llvm.dbg.value(metadata i64 %39, metadata !1495, metadata !DIExpression()), !dbg !1501
  call void @llvm.dbg.value(metadata i8 %40, metadata !1496, metadata !DIExpression()), !dbg !1502
  %41 = and i8 %40, 1, !dbg !1537
  %42 = icmp eq i8 %41, 0, !dbg !1537
  %43 = select i1 %42, i64 %39, i64 -2, !dbg !1539
  br label %44, !dbg !1539

; <label>:44:                                     ; preds = %17, %38
  %45 = phi i64 [ %43, %38 ], [ %14, %17 ], !dbg !1540
  ret i64 %45, !dbg !1541
}

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @argmatch_invalid(i8*, i8*, i64) local_unnamed_addr #7 !dbg !1542 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1546, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata i8* %1, metadata !1547, metadata !DIExpression()), !dbg !1551
  call void @llvm.dbg.value(metadata i64 %2, metadata !1548, metadata !DIExpression()), !dbg !1552
  %4 = icmp eq i64 %2, -1, !dbg !1553
  %5 = select i1 %4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.75, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1.76, i64 0, i64 0), !dbg !1554
  %6 = tail call i8* @dcgettext(i8* null, i8* %5, i32 5) #12, !dbg !1555
  call void @llvm.dbg.value(metadata i8* %6, metadata !1549, metadata !DIExpression()), !dbg !1556
  %7 = tail call i8* @quotearg_n_style(i32 0, i32 8, i8* %1) #12, !dbg !1557
  %8 = tail call i8* @quote_n(i32 1, i8* %0) #12, !dbg !1558
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %6, i8* %7, i8* %8) #12, !dbg !1559
  ret void, !dbg !1560
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @argmatch_valid(i8** nocapture readonly, i8* nocapture readonly, i64) local_unnamed_addr #7 !dbg !1561 {
  call void @llvm.dbg.value(metadata i8** %0, metadata !1565, metadata !DIExpression()), !dbg !1570
  call void @llvm.dbg.value(metadata i8* %1, metadata !1566, metadata !DIExpression()), !dbg !1571
  call void @llvm.dbg.value(metadata i64 %2, metadata !1567, metadata !DIExpression()), !dbg !1572
  call void @llvm.dbg.value(metadata i8* null, metadata !1569, metadata !DIExpression()), !dbg !1573
  %4 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2.77, i64 0, i64 0), i32 5) #12, !dbg !1574
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1574, !tbaa !741
  %6 = tail call i32 @fputs_unlocked(i8* %4, %struct._IO_FILE* %5), !dbg !1574
  call void @llvm.dbg.value(metadata i64 0, metadata !1568, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata i8* null, metadata !1569, metadata !DIExpression()), !dbg !1573
  %7 = load i8*, i8** %0, align 8, !dbg !1576, !tbaa !741
  %8 = icmp eq i8* %7, null, !dbg !1579
  br i1 %8, label %33, label %9, !dbg !1579

; <label>:9:                                      ; preds = %3, %27
  %10 = phi i8* [ %31, %27 ], [ %7, %3 ]
  %11 = phi i8* [ %28, %27 ], [ null, %3 ]
  %12 = phi i64 [ %29, %27 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i8* %11, metadata !1569, metadata !DIExpression()), !dbg !1573
  call void @llvm.dbg.value(metadata i64 %12, metadata !1568, metadata !DIExpression()), !dbg !1575
  %13 = icmp eq i64 %12, 0, !dbg !1580
  %14 = mul i64 %12, %2, !dbg !1582
  %15 = getelementptr inbounds i8, i8* %1, i64 %14, !dbg !1582
  br i1 %13, label %19, label %16, !dbg !1583

; <label>:16:                                     ; preds = %9
  %17 = tail call i32 @memcmp(i8* %11, i8* %15, i64 %2) #14, !dbg !1584
  %18 = icmp eq i32 %17, 0, !dbg !1584
  br i1 %18, label %23, label %19, !dbg !1585

; <label>:19:                                     ; preds = %9, %16
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1586, !tbaa !741
  %21 = tail call i8* @quote(i8* nonnull %10) #12, !dbg !1586
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %20, i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3.78, i64 0, i64 0), i8* %21) #12, !dbg !1586
  call void @llvm.dbg.value(metadata i8* %15, metadata !1569, metadata !DIExpression()), !dbg !1573
  br label %27, !dbg !1588

; <label>:23:                                     ; preds = %16
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1589, !tbaa !741
  %25 = tail call i8* @quote(i8* nonnull %10) #12, !dbg !1589
  %26 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %24, i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4.79, i64 0, i64 0), i8* %25) #12, !dbg !1589
  br label %27

; <label>:27:                                     ; preds = %19, %23
  %28 = phi i8* [ %15, %19 ], [ %11, %23 ], !dbg !1591
  %29 = add i64 %12, 1, !dbg !1592
  call void @llvm.dbg.value(metadata i8* %28, metadata !1569, metadata !DIExpression()), !dbg !1573
  call void @llvm.dbg.value(metadata i64 %29, metadata !1568, metadata !DIExpression()), !dbg !1575
  %30 = getelementptr inbounds i8*, i8** %0, i64 %29, !dbg !1576
  %31 = load i8*, i8** %30, align 8, !dbg !1576, !tbaa !741
  %32 = icmp eq i8* %31, null, !dbg !1579
  br i1 %32, label %33, label %9, !dbg !1579, !llvm.loop !1593

; <label>:33:                                     ; preds = %27, %3
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1595, !tbaa !741
  call void @llvm.dbg.value(metadata i32 10, metadata !1596, metadata !DIExpression()) #12, !dbg !1636
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %34, metadata !1635, metadata !DIExpression()) #12, !dbg !1638
  %35 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %34, i64 0, i32 5, !dbg !1639
  %36 = load i8*, i8** %35, align 8, !dbg !1639, !tbaa !1243
  %37 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %34, i64 0, i32 6, !dbg !1639
  %38 = load i8*, i8** %37, align 8, !dbg !1639, !tbaa !1244
  %39 = icmp ult i8* %36, %38, !dbg !1639
  br i1 %39, label %42, label %40, !dbg !1639, !prof !1245

; <label>:40:                                     ; preds = %33
  %41 = tail call i32 @__overflow(%struct._IO_FILE* nonnull %34, i32 10) #12, !dbg !1639
  br label %44, !dbg !1639

; <label>:42:                                     ; preds = %33
  %43 = getelementptr inbounds i8, i8* %36, i64 1, !dbg !1639
  store i8* %43, i8** %35, align 8, !dbg !1639, !tbaa !1243
  store i8 10, i8* %36, align 1, !dbg !1639, !tbaa !848
  br label %44, !dbg !1639

; <label>:44:                                     ; preds = %40, %42
  ret void, !dbg !1640
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @__xargmatch_internal(i8*, i8*, i8** nocapture readonly, i8* readonly, i64, void ()* nocapture) local_unnamed_addr #7 !dbg !1641 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1645, metadata !DIExpression()), !dbg !1652
  call void @llvm.dbg.value(metadata i8* %1, metadata !1646, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata i8** %2, metadata !1647, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8* %3, metadata !1648, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i64 %4, metadata !1649, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata void ()* %5, metadata !1650, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i8* %1, metadata !1489, metadata !DIExpression()) #12, !dbg !1658
  call void @llvm.dbg.value(metadata i8** %2, metadata !1490, metadata !DIExpression()) #12, !dbg !1660
  call void @llvm.dbg.value(metadata i8* %3, metadata !1491, metadata !DIExpression()) #12, !dbg !1661
  call void @llvm.dbg.value(metadata i64 %4, metadata !1492, metadata !DIExpression()) #12, !dbg !1662
  call void @llvm.dbg.value(metadata i64 -1, metadata !1495, metadata !DIExpression()) #12, !dbg !1663
  call void @llvm.dbg.value(metadata i8 0, metadata !1496, metadata !DIExpression()) #12, !dbg !1664
  %7 = tail call i64 @strlen(i8* %1) #14, !dbg !1665
  call void @llvm.dbg.value(metadata i64 %7, metadata !1494, metadata !DIExpression()) #12, !dbg !1666
  call void @llvm.dbg.value(metadata i64 0, metadata !1493, metadata !DIExpression()) #12, !dbg !1667
  call void @llvm.dbg.value(metadata i8 0, metadata !1496, metadata !DIExpression()) #12, !dbg !1664
  call void @llvm.dbg.value(metadata i64 -1, metadata !1495, metadata !DIExpression()) #12, !dbg !1663
  %8 = load i8*, i8** %2, align 8, !dbg !1668, !tbaa !741
  %9 = icmp eq i8* %8, null, !dbg !1669
  br i1 %9, label %49, label %10, !dbg !1669

; <label>:10:                                     ; preds = %6
  %11 = icmp eq i8* %3, null
  br label %12, !dbg !1669

; <label>:12:                                     ; preds = %33, %10
  %13 = phi i8* [ %8, %10 ], [ %38, %33 ]
  %14 = phi i8 [ 0, %10 ], [ %35, %33 ]
  %15 = phi i64 [ -1, %10 ], [ %34, %33 ]
  %16 = phi i64 [ 0, %10 ], [ %36, %33 ]
  call void @llvm.dbg.value(metadata i8 %14, metadata !1496, metadata !DIExpression()) #12, !dbg !1664
  call void @llvm.dbg.value(metadata i64 %15, metadata !1495, metadata !DIExpression()) #12, !dbg !1663
  call void @llvm.dbg.value(metadata i64 %16, metadata !1493, metadata !DIExpression()) #12, !dbg !1667
  %17 = tail call i32 @strncmp(i8* nonnull %13, i8* %1, i64 %7) #14, !dbg !1670
  %18 = icmp eq i32 %17, 0, !dbg !1670
  br i1 %18, label %19, label %33, !dbg !1671

; <label>:19:                                     ; preds = %12
  %20 = tail call i64 @strlen(i8* nonnull %13) #14, !dbg !1672
  %21 = icmp eq i64 %20, %7, !dbg !1673
  br i1 %21, label %43, label %22, !dbg !1674

; <label>:22:                                     ; preds = %19
  %23 = icmp eq i64 %15, -1, !dbg !1675
  br i1 %23, label %33, label %24, !dbg !1676

; <label>:24:                                     ; preds = %22
  br i1 %11, label %32, label %25, !dbg !1677

; <label>:25:                                     ; preds = %24
  %26 = mul i64 %15, %4, !dbg !1678
  %27 = getelementptr inbounds i8, i8* %3, i64 %26, !dbg !1679
  %28 = mul i64 %16, %4, !dbg !1680
  %29 = getelementptr inbounds i8, i8* %3, i64 %28, !dbg !1681
  %30 = tail call i32 @memcmp(i8* nonnull %27, i8* nonnull %29, i64 %4) #14, !dbg !1682
  %31 = icmp eq i32 %30, 0, !dbg !1682
  br i1 %31, label %33, label %32, !dbg !1683

; <label>:32:                                     ; preds = %25, %24
  call void @llvm.dbg.value(metadata i8 1, metadata !1496, metadata !DIExpression()) #12, !dbg !1664
  br label %33, !dbg !1684

; <label>:33:                                     ; preds = %32, %25, %22, %12
  %34 = phi i64 [ %15, %12 ], [ %15, %32 ], [ %15, %25 ], [ %16, %22 ], !dbg !1685
  %35 = phi i8 [ %14, %12 ], [ 1, %32 ], [ %14, %25 ], [ %14, %22 ], !dbg !1685
  %36 = add i64 %16, 1, !dbg !1686
  call void @llvm.dbg.value(metadata i8 %35, metadata !1496, metadata !DIExpression()) #12, !dbg !1664
  call void @llvm.dbg.value(metadata i64 %34, metadata !1495, metadata !DIExpression()) #12, !dbg !1663
  call void @llvm.dbg.value(metadata i64 %36, metadata !1493, metadata !DIExpression()) #12, !dbg !1667
  %37 = getelementptr inbounds i8*, i8** %2, i64 %36, !dbg !1668
  %38 = load i8*, i8** %37, align 8, !dbg !1668, !tbaa !741
  %39 = icmp eq i8* %38, null, !dbg !1669
  br i1 %39, label %40, label %12, !dbg !1669, !llvm.loop !1535

; <label>:40:                                     ; preds = %33
  call void @llvm.dbg.value(metadata i64 %34, metadata !1495, metadata !DIExpression()) #12, !dbg !1663
  call void @llvm.dbg.value(metadata i8 %35, metadata !1496, metadata !DIExpression()) #12, !dbg !1664
  call void @llvm.dbg.value(metadata i64 %34, metadata !1495, metadata !DIExpression()) #12, !dbg !1663
  call void @llvm.dbg.value(metadata i8 %35, metadata !1496, metadata !DIExpression()) #12, !dbg !1664
  call void @llvm.dbg.value(metadata i64 %34, metadata !1495, metadata !DIExpression()) #12, !dbg !1663
  call void @llvm.dbg.value(metadata i8 %35, metadata !1496, metadata !DIExpression()) #12, !dbg !1664
  call void @llvm.dbg.value(metadata i64 %34, metadata !1495, metadata !DIExpression()) #12, !dbg !1663
  call void @llvm.dbg.value(metadata i8 %35, metadata !1496, metadata !DIExpression()) #12, !dbg !1664
  call void @llvm.dbg.value(metadata i64 %34, metadata !1495, metadata !DIExpression()) #12, !dbg !1663
  call void @llvm.dbg.value(metadata i8 %35, metadata !1496, metadata !DIExpression()) #12, !dbg !1664
  call void @llvm.dbg.value(metadata i64 %34, metadata !1495, metadata !DIExpression()) #12, !dbg !1663
  call void @llvm.dbg.value(metadata i8 %35, metadata !1496, metadata !DIExpression()) #12, !dbg !1664
  call void @llvm.dbg.value(metadata i64 %34, metadata !1495, metadata !DIExpression()) #12, !dbg !1663
  call void @llvm.dbg.value(metadata i8 %35, metadata !1496, metadata !DIExpression()) #12, !dbg !1664
  %41 = and i8 %35, 1, !dbg !1687
  %42 = icmp eq i8 %41, 0, !dbg !1687
  br i1 %42, label %43, label %48

; <label>:43:                                     ; preds = %19, %40
  %44 = phi i64 [ %34, %40 ], [ %16, %19 ], !dbg !1688
  call void @llvm.dbg.value(metadata i64 %44, metadata !1651, metadata !DIExpression()), !dbg !1689
  %45 = icmp sgt i64 %44, -1, !dbg !1690
  br i1 %45, label %54, label %46, !dbg !1692

; <label>:46:                                     ; preds = %43
  call void @llvm.dbg.value(metadata i8* %0, metadata !1546, metadata !DIExpression()) #12, !dbg !1693
  call void @llvm.dbg.value(metadata i8* %1, metadata !1547, metadata !DIExpression()) #12, !dbg !1695
  call void @llvm.dbg.value(metadata i64 %44, metadata !1548, metadata !DIExpression()) #12, !dbg !1696
  %47 = icmp eq i64 %44, -1, !dbg !1697
  br i1 %47, label %49, label %48, !dbg !1698

; <label>:48:                                     ; preds = %40, %46
  br label %49, !dbg !1698

; <label>:49:                                     ; preds = %46, %6, %48
  %50 = phi i8* [ getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1.76, i64 0, i64 0), %48 ], [ getelementptr inbounds ([27 x i8], [27 x i8]* @.str.75, i64 0, i64 0), %6 ], [ getelementptr inbounds ([27 x i8], [27 x i8]* @.str.75, i64 0, i64 0), %46 ]
  %51 = tail call i8* @dcgettext(i8* null, i8* %50, i32 5) #12, !dbg !1699
  call void @llvm.dbg.value(metadata i8* %51, metadata !1549, metadata !DIExpression()) #12, !dbg !1700
  %52 = tail call i8* @quotearg_n_style(i32 0, i32 8, i8* %1) #12, !dbg !1701
  %53 = tail call i8* @quote_n(i32 1, i8* %0) #12, !dbg !1702
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %51, i8* %52, i8* %53) #12, !dbg !1703
  tail call void @argmatch_valid(i8** nonnull %2, i8* %3, i64 %4), !dbg !1704
  tail call void %5() #12, !dbg !1705
  br label %54, !dbg !1706

; <label>:54:                                     ; preds = %43, %49
  %55 = phi i64 [ -1, %49 ], [ %44, %43 ], !dbg !1699
  ret i64 %55, !dbg !1707
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i8* @argmatch_to_argument(i8* nocapture readonly, i8** nocapture readonly, i8* nocapture readonly, i64) local_unnamed_addr #9 !dbg !1708 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1712, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i8** %1, metadata !1713, metadata !DIExpression()), !dbg !1718
  call void @llvm.dbg.value(metadata i8* %2, metadata !1714, metadata !DIExpression()), !dbg !1719
  call void @llvm.dbg.value(metadata i64 %3, metadata !1715, metadata !DIExpression()), !dbg !1720
  call void @llvm.dbg.value(metadata i64 0, metadata !1716, metadata !DIExpression()), !dbg !1721
  %5 = load i8*, i8** %1, align 8, !dbg !1722, !tbaa !741
  %6 = icmp eq i8* %5, null, !dbg !1725
  br i1 %6, label %21, label %7, !dbg !1725

; <label>:7:                                      ; preds = %4
  call void @llvm.dbg.value(metadata i64 0, metadata !1716, metadata !DIExpression()), !dbg !1721
  %8 = tail call i32 @memcmp(i8* %0, i8* %2, i64 %3) #14, !dbg !1726
  %9 = icmp eq i32 %8, 0, !dbg !1726
  call void @llvm.dbg.value(metadata i64 1, metadata !1716, metadata !DIExpression()), !dbg !1721
  br i1 %9, label %21, label %10, !dbg !1728

; <label>:10:                                     ; preds = %7, %15
  %11 = phi i64 [ %20, %15 ], [ 1, %7 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !1716, metadata !DIExpression()), !dbg !1721
  %12 = getelementptr inbounds i8*, i8** %1, i64 %11, !dbg !1722
  %13 = load i8*, i8** %12, align 8, !dbg !1722, !tbaa !741
  %14 = icmp eq i8* %13, null, !dbg !1725
  br i1 %14, label %21, label %15, !dbg !1725, !llvm.loop !1729

; <label>:15:                                     ; preds = %10
  call void @llvm.dbg.value(metadata i64 %11, metadata !1716, metadata !DIExpression()), !dbg !1721
  %16 = mul i64 %11, %3, !dbg !1731
  %17 = getelementptr inbounds i8, i8* %2, i64 %16, !dbg !1732
  %18 = tail call i32 @memcmp(i8* %0, i8* %17, i64 %3) #14, !dbg !1726
  %19 = icmp eq i32 %18, 0, !dbg !1726
  %20 = add i64 %11, 1, !dbg !1733
  call void @llvm.dbg.value(metadata i64 %20, metadata !1716, metadata !DIExpression()), !dbg !1721
  br i1 %19, label %21, label %10, !dbg !1728, !llvm.loop !1729

; <label>:21:                                     ; preds = %10, %15, %7, %4
  %22 = phi i8* [ null, %4 ], [ %5, %7 ], [ %13, %15 ], [ null, %10 ], !dbg !1722
  ret i8* %22, !dbg !1734
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_file_name(i8*) local_unnamed_addr #7 !dbg !1735 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1737, metadata !DIExpression()), !dbg !1738
  store i8* %0, i8** @file_name, align 8, !dbg !1739, !tbaa !741
  ret void, !dbg !1740
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #7 !dbg !1741 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i1 %0, metadata !1745, metadata !DIExpression()), !dbg !1746
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1747, !tbaa !839
  ret void, !dbg !1748
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #7 !dbg !1749 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1754, !tbaa !741
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #12, !dbg !1755
  %3 = icmp eq i32 %2, 0, !dbg !1756
  br i1 %3, label %22, label %4, !dbg !1757

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1758, !tbaa !839, !range !1220
  %6 = icmp eq i8 %5, 0, !dbg !1758
  br i1 %6, label %11, label %7, !dbg !1759

; <label>:7:                                      ; preds = %4
  %8 = tail call i32* @__errno_location() #17, !dbg !1760
  %9 = load i32, i32* %8, align 4, !dbg !1760, !tbaa !863
  %10 = icmp eq i32 %9, 32, !dbg !1761
  br i1 %10, label %22, label %11, !dbg !1762

; <label>:11:                                     ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.84, i64 0, i64 0), i32 5) #12, !dbg !1763
  call void @llvm.dbg.value(metadata i8* %12, metadata !1751, metadata !DIExpression()), !dbg !1764
  %13 = load i8*, i8** @file_name, align 8, !dbg !1765, !tbaa !741
  %14 = icmp eq i8* %13, null, !dbg !1765
  %15 = tail call i32* @__errno_location() #17, !dbg !1767
  %16 = load i32, i32* %15, align 4, !dbg !1767, !tbaa !863
  br i1 %14, label %19, label %17, !dbg !1768

; <label>:17:                                     ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #12, !dbg !1769
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.85, i64 0, i64 0), i8* %18, i8* %12) #12, !dbg !1770
  br label %20, !dbg !1770

; <label>:19:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.86, i64 0, i64 0), i8* %12) #12, !dbg !1771
  br label %20

; <label>:20:                                     ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1772, !tbaa !863
  tail call void @_exit(i32 %21) #15, !dbg !1773
  unreachable, !dbg !1773

; <label>:22:                                     ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1774, !tbaa !741
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #12, !dbg !1776
  %25 = icmp eq i32 %24, 0, !dbg !1777
  br i1 %25, label %28, label %26, !dbg !1778

; <label>:26:                                     ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1779, !tbaa !863
  tail call void @_exit(i32 %27) #15, !dbg !1780
  unreachable, !dbg !1780

; <label>:28:                                     ; preds = %22
  ret void, !dbg !1781
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fdadvise(i32, i64, i64, i32) local_unnamed_addr #7 !dbg !1782 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1790, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i64 %1, metadata !1791, metadata !DIExpression()), !dbg !1797
  call void @llvm.dbg.value(metadata i64 %2, metadata !1792, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i32 %3, metadata !1793, metadata !DIExpression()), !dbg !1799
  %5 = tail call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #12, !dbg !1800
  call void @llvm.dbg.value(metadata i32 %5, metadata !1794, metadata !DIExpression()), !dbg !1800
  ret void, !dbg !1801
}

; Function Attrs: nounwind
declare i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fadvise(%struct._IO_FILE*, i32) local_unnamed_addr #7 !dbg !1802 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1840, metadata !DIExpression()), !dbg !1842
  call void @llvm.dbg.value(metadata i32 %1, metadata !1841, metadata !DIExpression()), !dbg !1843
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !1844
  br i1 %3, label %7, label %4, !dbg !1846

; <label>:4:                                      ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !1847
  call void @llvm.dbg.value(metadata i32 %5, metadata !1790, metadata !DIExpression()) #12, !dbg !1848
  call void @llvm.dbg.value(metadata i64 0, metadata !1791, metadata !DIExpression()) #12, !dbg !1850
  call void @llvm.dbg.value(metadata i64 0, metadata !1792, metadata !DIExpression()) #12, !dbg !1851
  call void @llvm.dbg.value(metadata i32 %1, metadata !1793, metadata !DIExpression()) #12, !dbg !1852
  %6 = tail call i32 @posix_fadvise(i32 %5, i64 0, i64 0, i32 %1) #12, !dbg !1853
  call void @llvm.dbg.value(metadata i32 %6, metadata !1794, metadata !DIExpression()) #12, !dbg !1853
  br label %7, !dbg !1854

; <label>:7:                                      ; preds = %2, %4
  ret void, !dbg !1855
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct._IO_FILE* @freopen_safer(i8*, i8*, %struct._IO_FILE*) local_unnamed_addr #7 !dbg !1856 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1895, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i8* %1, metadata !1896, metadata !DIExpression()), !dbg !1903
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %2, metadata !1897, metadata !DIExpression()), !dbg !1904
  call void @llvm.dbg.value(metadata i8 0, metadata !1898, metadata !DIExpression()), !dbg !1905
  call void @llvm.dbg.value(metadata i8 0, metadata !1899, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i8 0, metadata !1900, metadata !DIExpression()), !dbg !1907
  %4 = tail call i32 @fileno(%struct._IO_FILE* %2) #12, !dbg !1908
  switch i32 %4, label %5 [
    i32 2, label %9
    i32 1, label %14
    i32 0, label %49
  ], !dbg !1909

; <label>:5:                                      ; preds = %3
  %6 = tail call i32 @dup2(i32 2, i32 2) #12, !dbg !1910
  %7 = icmp ne i32 %6, 2, !dbg !1913
  %8 = zext i1 %7 to i8, !dbg !1914
  br label %9, !dbg !1914

; <label>:9:                                      ; preds = %5, %3
  %10 = phi i8 [ 0, %3 ], [ %8, %5 ], !dbg !1915
  call void @llvm.dbg.value(metadata i8 %10, metadata !1900, metadata !DIExpression()), !dbg !1907
  %11 = tail call i32 @dup2(i32 1, i32 1) #12, !dbg !1916
  %12 = icmp ne i32 %11, 1, !dbg !1918
  %13 = zext i1 %12 to i8, !dbg !1919
  br label %14, !dbg !1919

; <label>:14:                                     ; preds = %3, %9
  %15 = phi i8 [ 0, %3 ], [ %13, %9 ], !dbg !1915
  %16 = phi i8 [ 0, %3 ], [ %10, %9 ], !dbg !1915
  call void @llvm.dbg.value(metadata i8 %16, metadata !1900, metadata !DIExpression()), !dbg !1907
  call void @llvm.dbg.value(metadata i8 %15, metadata !1899, metadata !DIExpression()), !dbg !1906
  %17 = tail call i32 @dup2(i32 0, i32 0) #12, !dbg !1920
  %18 = icmp eq i32 %17, 0, !dbg !1922
  call void @llvm.dbg.value(metadata i8 %16, metadata !1900, metadata !DIExpression()), !dbg !1907
  call void @llvm.dbg.value(metadata i8 %15, metadata !1899, metadata !DIExpression()), !dbg !1906
  br i1 %18, label %27, label %19, !dbg !1923

; <label>:19:                                     ; preds = %14
  call void @llvm.dbg.value(metadata i32 0, metadata !1925, metadata !DIExpression()) #12, !dbg !1931
  %20 = tail call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.93, i64 0, i64 0), i32 0) #12, !dbg !1933
  call void @llvm.dbg.value(metadata i32 %20, metadata !1930, metadata !DIExpression()) #12, !dbg !1934
  %21 = icmp eq i32 %20, 0, !dbg !1935
  br i1 %21, label %27, label %22, !dbg !1937

; <label>:22:                                     ; preds = %19
  %23 = icmp sgt i32 %20, -1, !dbg !1938
  br i1 %23, label %24, label %54, !dbg !1941

; <label>:24:                                     ; preds = %22
  %25 = tail call i32 @close(i32 %20) #12, !dbg !1942
  %26 = tail call i32* @__errno_location() #17, !dbg !1944
  store i32 9, i32* %26, align 4, !dbg !1945, !tbaa !863
  br label %54, !dbg !1946

; <label>:27:                                     ; preds = %14, %19
  %28 = phi i1 [ false, %14 ], [ true, %19 ]
  %29 = icmp eq i8 %15, 0, !dbg !1947
  br i1 %29, label %38, label %30, !dbg !1949

; <label>:30:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 1, metadata !1925, metadata !DIExpression()) #12, !dbg !1950
  %31 = tail call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.93, i64 0, i64 0), i32 0) #12, !dbg !1952
  call void @llvm.dbg.value(metadata i32 %31, metadata !1930, metadata !DIExpression()) #12, !dbg !1953
  %32 = icmp eq i32 %31, 1, !dbg !1954
  br i1 %32, label %38, label %33, !dbg !1955

; <label>:33:                                     ; preds = %30
  %34 = icmp sgt i32 %31, -1, !dbg !1956
  br i1 %34, label %35, label %54, !dbg !1957

; <label>:35:                                     ; preds = %33
  %36 = tail call i32 @close(i32 %31) #12, !dbg !1958
  %37 = tail call i32* @__errno_location() #17, !dbg !1959
  store i32 9, i32* %37, align 4, !dbg !1960, !tbaa !863
  br label %54, !dbg !1961

; <label>:38:                                     ; preds = %30, %27
  %39 = and i8 %16, 1, !dbg !1962
  %40 = icmp eq i8 %39, 0, !dbg !1962
  br i1 %40, label %49, label %41, !dbg !1964

; <label>:41:                                     ; preds = %38
  call void @llvm.dbg.value(metadata i32 2, metadata !1925, metadata !DIExpression()) #12, !dbg !1965
  %42 = tail call i32 (i8*, i32, ...) @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.93, i64 0, i64 0), i32 0) #12, !dbg !1967
  call void @llvm.dbg.value(metadata i32 %42, metadata !1930, metadata !DIExpression()) #12, !dbg !1968
  %43 = icmp eq i32 %42, 2, !dbg !1969
  br i1 %43, label %49, label %44, !dbg !1970

; <label>:44:                                     ; preds = %41
  %45 = icmp sgt i32 %42, -1, !dbg !1971
  br i1 %45, label %46, label %54, !dbg !1972

; <label>:46:                                     ; preds = %44
  %47 = tail call i32 @close(i32 %42) #12, !dbg !1973
  %48 = tail call i32* @__errno_location() #17, !dbg !1974
  store i32 9, i32* %48, align 4, !dbg !1975, !tbaa !863
  br label %54, !dbg !1976

; <label>:49:                                     ; preds = %3, %41, %38
  %50 = phi i8 [ %16, %38 ], [ %16, %41 ], [ 0, %3 ]
  %51 = phi i8 [ %15, %38 ], [ %15, %41 ], [ 0, %3 ]
  %52 = phi i1 [ %28, %38 ], [ %28, %41 ], [ false, %3 ]
  %53 = tail call %struct._IO_FILE* @freopen(i8* %0, i8* %1, %struct._IO_FILE* %2) #12, !dbg !1977
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %53, metadata !1897, metadata !DIExpression()), !dbg !1904
  br label %54

; <label>:54:                                     ; preds = %44, %46, %33, %35, %22, %24, %49
  %55 = phi i8 [ %50, %49 ], [ %16, %24 ], [ %16, %22 ], [ %16, %35 ], [ %16, %33 ], [ %16, %46 ], [ %16, %44 ]
  %56 = phi i8 [ %51, %49 ], [ %15, %24 ], [ %15, %22 ], [ 1, %35 ], [ 1, %33 ], [ %15, %46 ], [ %15, %44 ]
  %57 = phi i1 [ %52, %49 ], [ true, %24 ], [ true, %22 ], [ %28, %35 ], [ %28, %33 ], [ %28, %46 ], [ %28, %44 ]
  %58 = phi %struct._IO_FILE* [ %53, %49 ], [ null, %24 ], [ null, %22 ], [ null, %35 ], [ null, %33 ], [ null, %46 ], [ null, %44 ], !dbg !1978
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %58, metadata !1897, metadata !DIExpression()), !dbg !1904
  %59 = tail call i32* @__errno_location() #17, !dbg !1979
  %60 = load i32, i32* %59, align 4, !dbg !1979, !tbaa !863
  call void @llvm.dbg.value(metadata i32 %60, metadata !1901, metadata !DIExpression()), !dbg !1980
  %61 = and i8 %55, 1, !dbg !1981
  %62 = icmp eq i8 %61, 0, !dbg !1981
  br i1 %62, label %65, label %63, !dbg !1983

; <label>:63:                                     ; preds = %54
  %64 = tail call i32 @close(i32 2) #12, !dbg !1984
  br label %65, !dbg !1984

; <label>:65:                                     ; preds = %54, %63
  %66 = and i8 %56, 1, !dbg !1985
  %67 = icmp eq i8 %66, 0, !dbg !1985
  br i1 %67, label %70, label %68, !dbg !1987

; <label>:68:                                     ; preds = %65
  %69 = tail call i32 @close(i32 1) #12, !dbg !1988
  br label %70, !dbg !1988

; <label>:70:                                     ; preds = %65, %68
  br i1 %57, label %71, label %73, !dbg !1989

; <label>:71:                                     ; preds = %70
  %72 = tail call i32 @close(i32 0) #12, !dbg !1990
  br label %73, !dbg !1990

; <label>:73:                                     ; preds = %71, %70
  %74 = icmp eq %struct._IO_FILE* %58, null, !dbg !1992
  br i1 %74, label %75, label %76, !dbg !1994

; <label>:75:                                     ; preds = %73
  store i32 %60, i32* %59, align 4, !dbg !1995, !tbaa !863
  br label %76, !dbg !1996

; <label>:76:                                     ; preds = %73, %75
  ret %struct._IO_FILE* %58, !dbg !1997
}

; Function Attrs: nounwind
declare i32 @dup2(i32, i32) local_unnamed_addr #2

declare i32 @open(i8* nocapture readonly, i32, ...) local_unnamed_addr #3

declare i32 @close(i32) local_unnamed_addr #3

declare %struct._IO_FILE* @freopen(i8*, i8*, %struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32) local_unnamed_addr #7 !dbg !1998 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2001, metadata !DIExpression()), !dbg !2004
  call void @llvm.dbg.value(metadata i8 1, metadata !2002, metadata !DIExpression()), !dbg !2005
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #12, !dbg !2006
  call void @llvm.dbg.value(metadata i8* %2, metadata !2003, metadata !DIExpression()), !dbg !2007
  %3 = icmp eq i8* %2, null, !dbg !2008
  br i1 %3, label %11, label %4, !dbg !2010

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.96, i64 0, i64 0)) #14, !dbg !2011
  %6 = icmp eq i32 %5, 0, !dbg !2016
  br i1 %6, label %10, label %7, !dbg !2017

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.97, i64 0, i64 0)) #14, !dbg !2018
  %9 = icmp eq i32 %8, 0, !dbg !2019
  br i1 %9, label %10, label %11, !dbg !2020

; <label>:10:                                     ; preds = %7, %4
  call void @llvm.dbg.value(metadata i8 0, metadata !2002, metadata !DIExpression()), !dbg !2005
  br label %11, !dbg !2021

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !2022
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @initbuffer(%struct.linebuffer* nocapture) local_unnamed_addr #7 !dbg !2023 {
  call void @llvm.dbg.value(metadata %struct.linebuffer* %0, metadata !2034, metadata !DIExpression()), !dbg !2035
  %2 = bitcast %struct.linebuffer* %0 to i8*, !dbg !2036
  tail call void @llvm.memset.p0i8.i64(i8* align 8 %2, i8 0, i64 24, i1 false), !dbg !2036
  ret void, !dbg !2037
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.linebuffer* @readlinebuffer(%struct.linebuffer*, %struct._IO_FILE*) local_unnamed_addr #7 !dbg !2038 {
  call void @llvm.dbg.value(metadata %struct.linebuffer* %0, metadata !2076, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, metadata !2077, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata %struct.linebuffer* %0, metadata !2080, metadata !DIExpression()) #12, !dbg !2095
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, metadata !2085, metadata !DIExpression()) #12, !dbg !2097
  call void @llvm.dbg.value(metadata i8 10, metadata !2086, metadata !DIExpression()) #12, !dbg !2098
  %3 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 2, !dbg !2099
  %4 = load i8*, i8** %3, align 8, !dbg !2099, !tbaa !1185
  call void @llvm.dbg.value(metadata i8* %4, metadata !2088, metadata !DIExpression()) #12, !dbg !2100
  call void @llvm.dbg.value(metadata i8* %4, metadata !2089, metadata !DIExpression()) #12, !dbg !2101
  %5 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 0, !dbg !2102
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, metadata !2103, metadata !DIExpression()) #12, !dbg !2108
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 0, !dbg !2111
  %7 = load i32, i32* %6, align 8, !dbg !2111, !tbaa !1170
  %8 = and i32 %7, 16, !dbg !2111
  %9 = icmp eq i32 %8, 0, !dbg !2112
  br i1 %9, label %10, label %62, !dbg !2113

; <label>:10:                                     ; preds = %2
  %11 = load i64, i64* %5, align 8, !dbg !2102, !tbaa !2114
  %12 = getelementptr inbounds i8, i8* %4, i64 %11, !dbg !2115
  call void @llvm.dbg.value(metadata i8* %12, metadata !2090, metadata !DIExpression()) #12, !dbg !2116
  %13 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 1
  %14 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 2
  br label %15, !dbg !2117

; <label>:15:                                     ; preds = %48, %10
  %16 = phi i8* [ %49, %48 ], [ %4, %10 ], !dbg !2122
  %17 = phi i8* [ %53, %48 ], [ %4, %10 ], !dbg !2123
  %18 = phi i8* [ %51, %48 ], [ %12, %10 ], !dbg !2122
  call void @llvm.dbg.value(metadata i8* %18, metadata !2090, metadata !DIExpression()) #12, !dbg !2116
  call void @llvm.dbg.value(metadata i8* %17, metadata !2089, metadata !DIExpression()) #12, !dbg !2101
  call void @llvm.dbg.value(metadata i8* %16, metadata !2088, metadata !DIExpression()) #12, !dbg !2100
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, metadata !2120, metadata !DIExpression()) #12, !dbg !2124
  %19 = load i8*, i8** %13, align 8, !dbg !2117, !tbaa !2125
  %20 = load i8*, i8** %14, align 8, !dbg !2117, !tbaa !2126
  %21 = icmp ult i8* %19, %20, !dbg !2117
  br i1 %21, label %22, label %26, !dbg !2117, !prof !1245

; <label>:22:                                     ; preds = %15
  %23 = getelementptr inbounds i8, i8* %19, i64 1, !dbg !2117
  store i8* %23, i8** %13, align 8, !dbg !2117, !tbaa !2125
  %24 = load i8, i8* %19, align 1, !dbg !2117, !tbaa !848
  %25 = zext i8 %24 to i32, !dbg !2117
  call void @llvm.dbg.value(metadata i32 %27, metadata !2087, metadata !DIExpression()) #12, !dbg !2127
  br label %39, !dbg !2128

; <label>:26:                                     ; preds = %15
  %27 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %1) #12, !dbg !2117
  call void @llvm.dbg.value(metadata i32 %27, metadata !2087, metadata !DIExpression()) #12, !dbg !2127
  %28 = icmp eq i32 %27, -1, !dbg !2129
  br i1 %28, label %29, label %39, !dbg !2128

; <label>:29:                                     ; preds = %26
  %30 = icmp eq i8* %17, %16, !dbg !2131
  br i1 %30, label %62, label %31, !dbg !2134

; <label>:31:                                     ; preds = %29
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, metadata !2135, metadata !DIExpression()) #12, !dbg !2138
  %32 = load i32, i32* %6, align 8, !dbg !2140, !tbaa !1170
  %33 = and i32 %32, 32, !dbg !2140
  %34 = icmp eq i32 %33, 0, !dbg !2141
  br i1 %34, label %35, label %62, !dbg !2142

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %17, i64 -1, !dbg !2143
  %37 = load i8, i8* %36, align 1, !dbg !2143, !tbaa !848
  %38 = icmp eq i8 %37, 10, !dbg !2145
  br i1 %38, label %55, label %39, !dbg !2146

; <label>:39:                                     ; preds = %35, %26, %22
  %40 = phi i32 [ %27, %26 ], [ %25, %22 ], [ 10, %35 ], !dbg !2123
  call void @llvm.dbg.value(metadata i32 %40, metadata !2087, metadata !DIExpression()) #12, !dbg !2127
  %41 = icmp eq i8* %17, %18, !dbg !2147
  br i1 %41, label %42, label %48, !dbg !2148

; <label>:42:                                     ; preds = %39
  %43 = load i64, i64* %5, align 8, !dbg !2149, !tbaa !2114
  call void @llvm.dbg.value(metadata i64 %43, metadata !2091, metadata !DIExpression()) #12, !dbg !2150
  %44 = tail call i8* @x2realloc(i8* %16, i64* %5) #12, !dbg !2151
  call void @llvm.dbg.value(metadata i8* %44, metadata !2088, metadata !DIExpression()) #12, !dbg !2100
  %45 = getelementptr inbounds i8, i8* %44, i64 %43, !dbg !2152
  call void @llvm.dbg.value(metadata i8* %45, metadata !2089, metadata !DIExpression()) #12, !dbg !2101
  store i8* %44, i8** %3, align 8, !dbg !2153, !tbaa !1185
  %46 = load i64, i64* %5, align 8, !dbg !2154, !tbaa !2114
  %47 = getelementptr inbounds i8, i8* %44, i64 %46, !dbg !2155
  call void @llvm.dbg.value(metadata i8* %47, metadata !2090, metadata !DIExpression()) #12, !dbg !2116
  br label %48, !dbg !2156

; <label>:48:                                     ; preds = %42, %39
  %49 = phi i8* [ %44, %42 ], [ %16, %39 ], !dbg !2157
  %50 = phi i8* [ %45, %42 ], [ %17, %39 ], !dbg !2157
  %51 = phi i8* [ %47, %42 ], [ %18, %39 ], !dbg !2157
  call void @llvm.dbg.value(metadata i8* %51, metadata !2090, metadata !DIExpression()) #12, !dbg !2116
  call void @llvm.dbg.value(metadata i8* %50, metadata !2089, metadata !DIExpression()) #12, !dbg !2101
  call void @llvm.dbg.value(metadata i8* %49, metadata !2088, metadata !DIExpression()) #12, !dbg !2100
  %52 = trunc i32 %40 to i8, !dbg !2158
  %53 = getelementptr inbounds i8, i8* %50, i64 1, !dbg !2159
  call void @llvm.dbg.value(metadata i8* %53, metadata !2089, metadata !DIExpression()) #12, !dbg !2101
  store i8 %52, i8* %50, align 1, !dbg !2160, !tbaa !848
  %54 = icmp eq i32 %40, 10, !dbg !2161
  br i1 %54, label %55, label %15, !dbg !2162, !llvm.loop !2163

; <label>:55:                                     ; preds = %48, %35
  %56 = phi i8* [ %16, %35 ], [ %49, %48 ], !dbg !2122
  %57 = phi i8* [ %17, %35 ], [ %53, %48 ], !dbg !2123
  call void @llvm.dbg.value(metadata i8* %57, metadata !2089, metadata !DIExpression()) #12, !dbg !2101
  call void @llvm.dbg.value(metadata i8* %56, metadata !2088, metadata !DIExpression()) #12, !dbg !2100
  %58 = ptrtoint i8* %57 to i64, !dbg !2166
  %59 = ptrtoint i8* %56 to i64, !dbg !2166
  %60 = sub i64 %58, %59, !dbg !2166
  %61 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 1, !dbg !2167
  store i64 %60, i64* %61, align 8, !dbg !2168, !tbaa !1182
  br label %62, !dbg !2169

; <label>:62:                                     ; preds = %29, %31, %2, %55
  %63 = phi %struct.linebuffer* [ %0, %55 ], [ null, %2 ], [ null, %31 ], [ null, %29 ], !dbg !2157
  ret %struct.linebuffer* %63, !dbg !2170
}

declare i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.linebuffer* @readlinebuffer_delim(%struct.linebuffer*, %struct._IO_FILE*, i8 signext) local_unnamed_addr #7 !dbg !2081 {
  call void @llvm.dbg.value(metadata %struct.linebuffer* %0, metadata !2080, metadata !DIExpression()), !dbg !2171
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, metadata !2085, metadata !DIExpression()), !dbg !2172
  call void @llvm.dbg.value(metadata i8 %2, metadata !2086, metadata !DIExpression()), !dbg !2173
  %4 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 2, !dbg !2174
  %5 = load i8*, i8** %4, align 8, !dbg !2174, !tbaa !1185
  call void @llvm.dbg.value(metadata i8* %5, metadata !2088, metadata !DIExpression()), !dbg !2175
  call void @llvm.dbg.value(metadata i8* %5, metadata !2089, metadata !DIExpression()), !dbg !2176
  %6 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 0, !dbg !2177
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, metadata !2103, metadata !DIExpression()), !dbg !2178
  %7 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 0, !dbg !2180
  %8 = load i32, i32* %7, align 8, !dbg !2180, !tbaa !1170
  %9 = and i32 %8, 16, !dbg !2180
  %10 = icmp eq i32 %9, 0, !dbg !2181
  br i1 %10, label %11, label %64, !dbg !2182

; <label>:11:                                     ; preds = %3
  %12 = load i64, i64* %6, align 8, !dbg !2177, !tbaa !2114
  %13 = getelementptr inbounds i8, i8* %5, i64 %12, !dbg !2183
  call void @llvm.dbg.value(metadata i8* %13, metadata !2090, metadata !DIExpression()), !dbg !2184
  %14 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 1
  %15 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 2
  %16 = sext i8 %2 to i32
  br label %17, !dbg !2185

; <label>:17:                                     ; preds = %11, %50
  %18 = phi i8* [ %51, %50 ], [ %5, %11 ], !dbg !2187
  %19 = phi i8* [ %55, %50 ], [ %5, %11 ], !dbg !2188
  %20 = phi i8* [ %53, %50 ], [ %13, %11 ], !dbg !2187
  call void @llvm.dbg.value(metadata i8* %20, metadata !2090, metadata !DIExpression()), !dbg !2184
  call void @llvm.dbg.value(metadata i8* %19, metadata !2089, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i8* %18, metadata !2088, metadata !DIExpression()), !dbg !2175
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, metadata !2120, metadata !DIExpression()) #12, !dbg !2189
  %21 = load i8*, i8** %14, align 8, !dbg !2185, !tbaa !2125
  %22 = load i8*, i8** %15, align 8, !dbg !2185, !tbaa !2126
  %23 = icmp ult i8* %21, %22, !dbg !2185
  br i1 %23, label %24, label %28, !dbg !2185, !prof !1245

; <label>:24:                                     ; preds = %17
  %25 = getelementptr inbounds i8, i8* %21, i64 1, !dbg !2185
  store i8* %25, i8** %14, align 8, !dbg !2185, !tbaa !2125
  %26 = load i8, i8* %21, align 1, !dbg !2185, !tbaa !848
  %27 = zext i8 %26 to i32, !dbg !2185
  call void @llvm.dbg.value(metadata i32 %29, metadata !2087, metadata !DIExpression()), !dbg !2190
  br label %41, !dbg !2191

; <label>:28:                                     ; preds = %17
  %29 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %1) #12, !dbg !2185
  call void @llvm.dbg.value(metadata i32 %29, metadata !2087, metadata !DIExpression()), !dbg !2190
  %30 = icmp eq i32 %29, -1, !dbg !2192
  br i1 %30, label %31, label %41, !dbg !2191

; <label>:31:                                     ; preds = %28
  %32 = icmp eq i8* %19, %18, !dbg !2193
  br i1 %32, label %64, label %33, !dbg !2194

; <label>:33:                                     ; preds = %31
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, metadata !2135, metadata !DIExpression()), !dbg !2195
  %34 = load i32, i32* %7, align 8, !dbg !2197, !tbaa !1170
  %35 = and i32 %34, 32, !dbg !2197
  %36 = icmp eq i32 %35, 0, !dbg !2198
  br i1 %36, label %37, label %64, !dbg !2199

; <label>:37:                                     ; preds = %33
  %38 = getelementptr inbounds i8, i8* %19, i64 -1, !dbg !2200
  %39 = load i8, i8* %38, align 1, !dbg !2200, !tbaa !848
  %40 = icmp eq i8 %39, %2, !dbg !2201
  br i1 %40, label %57, label %41, !dbg !2202

; <label>:41:                                     ; preds = %37, %24, %28
  %42 = phi i32 [ %29, %28 ], [ %27, %24 ], [ %16, %37 ], !dbg !2188
  call void @llvm.dbg.value(metadata i32 %42, metadata !2087, metadata !DIExpression()), !dbg !2190
  %43 = icmp eq i8* %19, %20, !dbg !2203
  br i1 %43, label %44, label %50, !dbg !2204

; <label>:44:                                     ; preds = %41
  %45 = load i64, i64* %6, align 8, !dbg !2205, !tbaa !2114
  call void @llvm.dbg.value(metadata i64 %45, metadata !2091, metadata !DIExpression()), !dbg !2206
  %46 = tail call i8* @x2realloc(i8* %18, i64* %6) #12, !dbg !2207
  call void @llvm.dbg.value(metadata i8* %46, metadata !2088, metadata !DIExpression()), !dbg !2175
  %47 = getelementptr inbounds i8, i8* %46, i64 %45, !dbg !2208
  call void @llvm.dbg.value(metadata i8* %47, metadata !2089, metadata !DIExpression()), !dbg !2176
  store i8* %46, i8** %4, align 8, !dbg !2209, !tbaa !1185
  %48 = load i64, i64* %6, align 8, !dbg !2210, !tbaa !2114
  %49 = getelementptr inbounds i8, i8* %46, i64 %48, !dbg !2211
  call void @llvm.dbg.value(metadata i8* %49, metadata !2090, metadata !DIExpression()), !dbg !2184
  br label %50, !dbg !2212

; <label>:50:                                     ; preds = %44, %41
  %51 = phi i8* [ %46, %44 ], [ %18, %41 ], !dbg !2213
  %52 = phi i8* [ %47, %44 ], [ %19, %41 ], !dbg !2213
  %53 = phi i8* [ %49, %44 ], [ %20, %41 ], !dbg !2213
  call void @llvm.dbg.value(metadata i8* %53, metadata !2090, metadata !DIExpression()), !dbg !2184
  call void @llvm.dbg.value(metadata i8* %52, metadata !2089, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i8* %51, metadata !2088, metadata !DIExpression()), !dbg !2175
  %54 = trunc i32 %42 to i8, !dbg !2214
  %55 = getelementptr inbounds i8, i8* %52, i64 1, !dbg !2215
  call void @llvm.dbg.value(metadata i8* %55, metadata !2089, metadata !DIExpression()), !dbg !2176
  store i8 %54, i8* %52, align 1, !dbg !2216, !tbaa !848
  %56 = icmp eq i32 %42, %16, !dbg !2217
  br i1 %56, label %57, label %17, !dbg !2218, !llvm.loop !2163

; <label>:57:                                     ; preds = %50, %37
  %58 = phi i8* [ %18, %37 ], [ %51, %50 ], !dbg !2187
  %59 = phi i8* [ %19, %37 ], [ %55, %50 ], !dbg !2188
  call void @llvm.dbg.value(metadata i8* %59, metadata !2089, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i8* %58, metadata !2088, metadata !DIExpression()), !dbg !2175
  %60 = ptrtoint i8* %59 to i64, !dbg !2219
  %61 = ptrtoint i8* %58 to i64, !dbg !2219
  %62 = sub i64 %60, %61, !dbg !2219
  %63 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 1, !dbg !2220
  store i64 %62, i64* %63, align 8, !dbg !2221, !tbaa !1182
  br label %64, !dbg !2222

; <label>:64:                                     ; preds = %31, %33, %3, %57
  %65 = phi %struct.linebuffer* [ %0, %57 ], [ null, %3 ], [ null, %33 ], [ null, %31 ], !dbg !2213
  ret %struct.linebuffer* %65, !dbg !2223
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @freebuffer(%struct.linebuffer* nocapture readonly) local_unnamed_addr #7 !dbg !2224 {
  call void @llvm.dbg.value(metadata %struct.linebuffer* %0, metadata !2226, metadata !DIExpression()), !dbg !2227
  %2 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 2, !dbg !2228
  %3 = load i8*, i8** %2, align 8, !dbg !2228, !tbaa !1185
  tail call void @free(i8* %3) #12, !dbg !2229
  ret void, !dbg !2230
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i32 @memcasecmp(i8* nocapture readonly, i8* nocapture readonly, i64) local_unnamed_addr #9 !dbg !2231 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2238, metadata !DIExpression()), !dbg !2256
  call void @llvm.dbg.value(metadata i8* %1, metadata !2239, metadata !DIExpression()), !dbg !2257
  call void @llvm.dbg.value(metadata i64 %2, metadata !2240, metadata !DIExpression()), !dbg !2258
  call void @llvm.dbg.value(metadata i8* %0, metadata !2242, metadata !DIExpression()), !dbg !2259
  call void @llvm.dbg.value(metadata i8* %1, metadata !2243, metadata !DIExpression()), !dbg !2260
  call void @llvm.dbg.value(metadata i64 0, metadata !2241, metadata !DIExpression()), !dbg !2261
  %4 = icmp eq i64 %2, 0, !dbg !2262
  br i1 %4, label %25, label %5, !dbg !2263

; <label>:5:                                      ; preds = %3
  %6 = tail call i32** @__ctype_toupper_loc() #17, !dbg !2264
  %7 = load i32*, i32** %6, align 8, !tbaa !741
  br label %10, !dbg !2263

; <label>:8:                                      ; preds = %10
  call void @llvm.dbg.value(metadata i64 %24, metadata !2241, metadata !DIExpression()), !dbg !2261
  %9 = icmp ult i64 %24, %2, !dbg !2262
  br i1 %9, label %10, label %25, !dbg !2263, !llvm.loop !2266

; <label>:10:                                     ; preds = %5, %8
  %11 = phi i64 [ 0, %5 ], [ %24, %8 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !2241, metadata !DIExpression()), !dbg !2261
  %12 = getelementptr inbounds i8, i8* %0, i64 %11, !dbg !2268
  %13 = load i8, i8* %12, align 1, !dbg !2268, !tbaa !848
  call void @llvm.dbg.value(metadata i8 %13, metadata !2244, metadata !DIExpression()), !dbg !2269
  %14 = getelementptr inbounds i8, i8* %1, i64 %11, !dbg !2270
  %15 = load i8, i8* %14, align 1, !dbg !2270, !tbaa !848
  call void @llvm.dbg.value(metadata i8 %15, metadata !2248, metadata !DIExpression()), !dbg !2271
  %16 = zext i8 %13 to i64, !dbg !2264
  %17 = getelementptr inbounds i32, i32* %7, i64 %16, !dbg !2264
  %18 = load i32, i32* %17, align 4, !dbg !2264, !tbaa !863
  call void @llvm.dbg.value(metadata i32 %18, metadata !2250, metadata !DIExpression()), !dbg !2272
  call void @llvm.dbg.value(metadata i32 %18, metadata !2249, metadata !DIExpression()), !dbg !2273
  %19 = zext i8 %15 to i64, !dbg !2274
  %20 = getelementptr inbounds i32, i32* %7, i64 %19, !dbg !2274
  %21 = load i32, i32* %20, align 4, !dbg !2274, !tbaa !863
  call void @llvm.dbg.value(metadata i32 %21, metadata !2253, metadata !DIExpression()), !dbg !2276
  call void @llvm.dbg.value(metadata i32 %21, metadata !2252, metadata !DIExpression()), !dbg !2277
  %22 = sub nsw i32 %18, %21, !dbg !2278
  call void @llvm.dbg.value(metadata i32 %22, metadata !2255, metadata !DIExpression()), !dbg !2279
  %23 = icmp eq i32 %22, 0, !dbg !2280
  %24 = add nuw i64 %11, 1, !dbg !2282
  call void @llvm.dbg.value(metadata i64 %24, metadata !2241, metadata !DIExpression()), !dbg !2261
  br i1 %23, label %8, label %25

; <label>:25:                                     ; preds = %10, %8, %3
  %26 = phi i32 [ 0, %3 ], [ 0, %8 ], [ %22, %10 ], !dbg !2283
  ret i32 %26, !dbg !2284
}

; Function Attrs: nounwind readnone
declare i32** @__ctype_toupper_loc() local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @posix2_version() local_unnamed_addr #7 !dbg !2285 {
  %1 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i64 200809, metadata !2289, metadata !DIExpression()), !dbg !2295
  %2 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.106, i64 0, i64 0)) #12, !dbg !2296
  call void @llvm.dbg.value(metadata i8* %2, metadata !2290, metadata !DIExpression()), !dbg !2297
  %3 = icmp eq i8* %2, null, !dbg !2298
  br i1 %3, label %16, label %4, !dbg !2299

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* %2, align 1, !dbg !2300, !tbaa !848
  %6 = icmp eq i8 %5, 0, !dbg !2300
  br i1 %6, label %16, label %7, !dbg !2301

; <label>:7:                                      ; preds = %4
  %8 = bitcast i8** %1 to i8*, !dbg !2302
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #12, !dbg !2302
  call void @llvm.dbg.value(metadata i8** %1, metadata !2291, metadata !DIExpression(DW_OP_deref)), !dbg !2303
  %9 = call i64 @strtol(i8* nonnull %2, i8** nonnull %1, i32 10) #12, !dbg !2304
  call void @llvm.dbg.value(metadata i64 %9, metadata !2294, metadata !DIExpression()), !dbg !2305
  %10 = load i8*, i8** %1, align 8, !dbg !2306, !tbaa !741
  call void @llvm.dbg.value(metadata i8* %10, metadata !2291, metadata !DIExpression()), !dbg !2303
  %11 = load i8, i8* %10, align 1, !dbg !2308, !tbaa !848
  %12 = icmp eq i8 %11, 0, !dbg !2308
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #12, !dbg !2309
  br i1 %12, label %13, label %16

; <label>:13:                                     ; preds = %7
  call void @llvm.dbg.value(metadata i64 %9, metadata !2289, metadata !DIExpression()), !dbg !2295
  %14 = icmp slt i64 %9, -2147483648, !dbg !2310
  %15 = icmp slt i64 %9, 2147483647, !dbg !2311
  br i1 %15, label %16, label %19, !dbg !2312

; <label>:16:                                     ; preds = %0, %4, %7, %13
  %17 = phi i1 [ %14, %13 ], [ false, %7 ], [ false, %4 ], [ false, %0 ]
  %18 = phi i64 [ %9, %13 ], [ 200809, %7 ], [ 200809, %4 ], [ 200809, %0 ]
  br label %19, !dbg !2312

; <label>:19:                                     ; preds = %13, %16
  %20 = phi i1 [ %17, %16 ], [ %14, %13 ]
  %21 = phi i64 [ %18, %16 ], [ 2147483647, %13 ]
  %22 = trunc i64 %21 to i32, !dbg !2312
  %23 = select i1 %20, i32 -2147483648, i32 %22, !dbg !2313
  ret i32 %23, !dbg !2314
}

; Function Attrs: nounwind
declare i64 @strtol(i8* readonly, i8** nocapture, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8*) local_unnamed_addr #7 !dbg !2315 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2317, metadata !DIExpression()), !dbg !2320
  %2 = icmp eq i8* %0, null, !dbg !2321
  br i1 %2, label %3, label %6, !dbg !2323

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2324, !tbaa !741
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.111, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !2326
  tail call void @abort() #15, !dbg !2327
  unreachable, !dbg !2327

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !2328
  call void @llvm.dbg.value(metadata i8* %7, metadata !2318, metadata !DIExpression()), !dbg !2329
  %8 = icmp eq i8* %7, null, !dbg !2330
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !2331
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !2332
  call void @llvm.dbg.value(metadata i8* %10, metadata !2319, metadata !DIExpression()), !dbg !2333
  %11 = ptrtoint i8* %10 to i64, !dbg !2334
  %12 = ptrtoint i8* %0 to i64, !dbg !2334
  %13 = sub i64 %11, %12, !dbg !2334
  %14 = icmp sgt i64 %13, 6, !dbg !2336
  br i1 %14, label %15, label %24, !dbg !2337

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !2338
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.112, i64 0, i64 0), i64 7) #14, !dbg !2339
  %18 = icmp eq i32 %17, 0, !dbg !2340
  br i1 %18, label %19, label %24, !dbg !2341

; <label>:19:                                     ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !2317, metadata !DIExpression()), !dbg !2320
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.113, i64 0, i64 0), i64 3) #14, !dbg !2342
  %21 = icmp eq i32 %20, 0, !dbg !2345
  br i1 %21, label %22, label %24, !dbg !2346

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !2347
  call void @llvm.dbg.value(metadata i8* %23, metadata !2317, metadata !DIExpression()), !dbg !2320
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !2349, !tbaa !741
  br label %24, !dbg !2350

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !2317, metadata !DIExpression()), !dbg !2320
  store i8* %25, i8** @program_name, align 8, !dbg !2351, !tbaa !741
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !2352, !tbaa !741
  ret void, !dbg !2353
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #12

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #7 !dbg !2354 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2359, metadata !DIExpression()), !dbg !2362
  %2 = tail call i32* @__errno_location() #17, !dbg !2363
  %3 = load i32, i32* %2, align 4, !dbg !2363, !tbaa !863
  call void @llvm.dbg.value(metadata i32 %3, metadata !2360, metadata !DIExpression()), !dbg !2364
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2365
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2365
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2365
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #12, !dbg !2366
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !2366
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !2361, metadata !DIExpression()), !dbg !2367
  store i32 %3, i32* %2, align 4, !dbg !2368, !tbaa !863
  ret %struct.quoting_options* %8, !dbg !2369
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #9 !dbg !2370 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2376, metadata !DIExpression()), !dbg !2377
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !2378
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2378
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2379
  %5 = load i32, i32* %4, align 8, !dbg !2379, !tbaa !2380
  ret i32 %5, !dbg !2382
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !2383 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2387, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata i32 %1, metadata !2388, metadata !DIExpression()), !dbg !2390
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2391
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2391
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2392
  store i32 %1, i32* %5, align 8, !dbg !2393, !tbaa !2380
  ret void, !dbg !2394
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #7 !dbg !2395 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2399, metadata !DIExpression()), !dbg !2407
  call void @llvm.dbg.value(metadata i8 %1, metadata !2400, metadata !DIExpression()), !dbg !2408
  call void @llvm.dbg.value(metadata i32 %2, metadata !2401, metadata !DIExpression()), !dbg !2409
  call void @llvm.dbg.value(metadata i8 %1, metadata !2402, metadata !DIExpression()), !dbg !2410
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2411
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2411
  %6 = lshr i8 %1, 5, !dbg !2412
  %7 = zext i8 %6 to i64, !dbg !2412
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !2413
  call void @llvm.dbg.value(metadata i32* %8, metadata !2403, metadata !DIExpression()), !dbg !2414
  %9 = and i8 %1, 31, !dbg !2415
  %10 = zext i8 %9 to i32, !dbg !2415
  call void @llvm.dbg.value(metadata i32 %10, metadata !2405, metadata !DIExpression()), !dbg !2416
  %11 = load i32, i32* %8, align 4, !dbg !2417, !tbaa !863
  %12 = lshr i32 %11, %10, !dbg !2418
  %13 = and i32 %12, 1, !dbg !2419
  call void @llvm.dbg.value(metadata i32 %13, metadata !2406, metadata !DIExpression()), !dbg !2420
  %14 = and i32 %2, 1, !dbg !2421
  %15 = xor i32 %13, %14, !dbg !2422
  %16 = shl i32 %15, %10, !dbg !2423
  %17 = xor i32 %16, %11, !dbg !2424
  store i32 %17, i32* %8, align 4, !dbg !2424, !tbaa !863
  ret i32 %13, !dbg !2425
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !2426 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2430, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata i32 %1, metadata !2431, metadata !DIExpression()), !dbg !2434
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2435
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2437
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2430, metadata !DIExpression()), !dbg !2433
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2438
  %6 = load i32, i32* %5, align 4, !dbg !2438, !tbaa !2439
  call void @llvm.dbg.value(metadata i32 %6, metadata !2432, metadata !DIExpression()), !dbg !2440
  store i32 %1, i32* %5, align 4, !dbg !2441, !tbaa !2439
  ret i32 %6, !dbg !2442
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #7 !dbg !2443 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2447, metadata !DIExpression()), !dbg !2450
  call void @llvm.dbg.value(metadata i8* %1, metadata !2448, metadata !DIExpression()), !dbg !2451
  call void @llvm.dbg.value(metadata i8* %2, metadata !2449, metadata !DIExpression()), !dbg !2452
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2453
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2455
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2447, metadata !DIExpression()), !dbg !2450
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2456
  store i32 10, i32* %6, align 8, !dbg !2457, !tbaa !2380
  %7 = icmp ne i8* %1, null, !dbg !2458
  %8 = icmp ne i8* %2, null, !dbg !2460
  %9 = and i1 %7, %8, !dbg !2461
  br i1 %9, label %11, label %10, !dbg !2461

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2462
  unreachable, !dbg !2462

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2463
  store i8* %1, i8** %12, align 8, !dbg !2464, !tbaa !2465
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2466
  store i8* %2, i8** %13, align 8, !dbg !2467, !tbaa !2468
  ret void, !dbg !2469
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #7 !dbg !2470 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2474, metadata !DIExpression()), !dbg !2482
  call void @llvm.dbg.value(metadata i64 %1, metadata !2475, metadata !DIExpression()), !dbg !2483
  call void @llvm.dbg.value(metadata i8* %2, metadata !2476, metadata !DIExpression()), !dbg !2484
  call void @llvm.dbg.value(metadata i64 %3, metadata !2477, metadata !DIExpression()), !dbg !2485
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2478, metadata !DIExpression()), !dbg !2486
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !2487
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !2487
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !2479, metadata !DIExpression()), !dbg !2488
  %8 = tail call i32* @__errno_location() #17, !dbg !2489
  %9 = load i32, i32* %8, align 4, !dbg !2489, !tbaa !863
  call void @llvm.dbg.value(metadata i32 %9, metadata !2480, metadata !DIExpression()), !dbg !2490
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2491
  %11 = load i32, i32* %10, align 8, !dbg !2491, !tbaa !2380
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2492
  %13 = load i32, i32* %12, align 4, !dbg !2492, !tbaa !2439
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2493
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2494
  %16 = load i8*, i8** %15, align 8, !dbg !2494, !tbaa !2465
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2495
  %18 = load i8*, i8** %17, align 8, !dbg !2495, !tbaa !2468
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !2496
  call void @llvm.dbg.value(metadata i64 %19, metadata !2481, metadata !DIExpression()), !dbg !2497
  store i32 %9, i32* %8, align 4, !dbg !2498, !tbaa !863
  ret i64 %19, !dbg !2499
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #7 !dbg !2500 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2506, metadata !DIExpression()), !dbg !2568
  call void @llvm.dbg.value(metadata i64 %1, metadata !2507, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i8* %2, metadata !2508, metadata !DIExpression()), !dbg !2570
  call void @llvm.dbg.value(metadata i64 %3, metadata !2509, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i32 %4, metadata !2510, metadata !DIExpression()), !dbg !2572
  call void @llvm.dbg.value(metadata i32 %5, metadata !2511, metadata !DIExpression()), !dbg !2573
  call void @llvm.dbg.value(metadata i32* %6, metadata !2512, metadata !DIExpression()), !dbg !2574
  call void @llvm.dbg.value(metadata i8* %7, metadata !2513, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata i8* %8, metadata !2514, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i64 0, metadata !2516, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i64 0, metadata !2517, metadata !DIExpression()), !dbg !2578
  call void @llvm.dbg.value(metadata i8* null, metadata !2518, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i64 0, metadata !2519, metadata !DIExpression()), !dbg !2580
  call void @llvm.dbg.value(metadata i8 0, metadata !2520, metadata !DIExpression()), !dbg !2581
  %13 = tail call i64 @__ctype_get_mb_cur_max() #12, !dbg !2582
  %14 = icmp eq i64 %13, 1, !dbg !2583
  %15 = lshr i32 %5, 1, !dbg !2584
  %16 = trunc i32 %15 to i8, !dbg !2584
  %17 = and i8 %16, 1, !dbg !2584
  call void @llvm.dbg.value(metadata i8 %17, metadata !2522, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i8 0, metadata !2523, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i8 0, metadata !2524, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.value(metadata i8 1, metadata !2525, metadata !DIExpression()), !dbg !2587
  %18 = icmp ne i32* %6, null
  %19 = bitcast i64* %10 to i8*
  %20 = icmp eq i32* %6, null
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 4
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr inbounds i8, i8* %2, i64 1
  %26 = bitcast i32* %12 to i8*
  br label %27, !dbg !2588

; <label>:27:                                     ; preds = %634, %9
  %28 = phi i32 [ %4, %9 ], [ %94, %634 ]
  %29 = phi i8* [ %7, %9 ], [ %95, %634 ]
  %30 = phi i8* [ %8, %9 ], [ %96, %634 ]
  %31 = phi i64 [ 0, %9 ], [ %124, %634 ], !dbg !2578
  %32 = phi i8* [ null, %9 ], [ %98, %634 ], !dbg !2579
  %33 = phi i64 [ 0, %9 ], [ %99, %634 ], !dbg !2580
  %34 = phi i8 [ 0, %9 ], [ %100, %634 ], !dbg !2581
  %35 = phi i64 [ %3, %9 ], [ %618, %634 ]
  %36 = phi i8 [ %17, %9 ], [ %101, %634 ], !dbg !2589
  %37 = phi i8 [ 0, %9 ], [ %126, %634 ], !dbg !2585
  %38 = phi i8 [ 0, %9 ], [ %127, %634 ], !dbg !2586
  %39 = phi i8 [ 1, %9 ], [ %128, %634 ], !dbg !2587
  %40 = phi i64 [ %1, %9 ], [ %124, %634 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !2507, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i8 %39, metadata !2525, metadata !DIExpression()), !dbg !2587
  call void @llvm.dbg.value(metadata i8 %38, metadata !2524, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.value(metadata i8 %37, metadata !2523, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i8 %36, metadata !2522, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i64 %35, metadata !2509, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8 %34, metadata !2520, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata i64 %33, metadata !2519, metadata !DIExpression()), !dbg !2580
  call void @llvm.dbg.value(metadata i8* %32, metadata !2518, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i64 %31, metadata !2517, metadata !DIExpression()), !dbg !2578
  call void @llvm.dbg.value(metadata i64 0, metadata !2516, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i8* %30, metadata !2514, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i8* %29, metadata !2513, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata i32 %28, metadata !2510, metadata !DIExpression()), !dbg !2572
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
  ], !dbg !2591

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, metadata !2510, metadata !DIExpression()), !dbg !2572
  call void @llvm.dbg.value(metadata i8 1, metadata !2522, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i8 %36, metadata !2522, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i32 5, metadata !2510, metadata !DIExpression()), !dbg !2572
  br label %93, !dbg !2592

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, metadata !2522, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i32 5, metadata !2510, metadata !DIExpression()), !dbg !2572
  %43 = and i8 %36, 1, !dbg !2593
  %44 = icmp eq i8 %43, 0, !dbg !2593
  br i1 %44, label %45, label %93, !dbg !2592

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !2595
  br i1 %46, label %93, label %47, !dbg !2598

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !2595, !tbaa !848
  br label %93, !dbg !2595

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.124, i64 0, i64 0), i32 %28), !dbg !2599
  call void @llvm.dbg.value(metadata i8* %49, metadata !2513, metadata !DIExpression()), !dbg !2575
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.125, i64 0, i64 0), i32 %28), !dbg !2603
  call void @llvm.dbg.value(metadata i8* %50, metadata !2514, metadata !DIExpression()), !dbg !2576
  br label %51, !dbg !2604

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, metadata !2514, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i8* %52, metadata !2513, metadata !DIExpression()), !dbg !2575
  %54 = and i8 %36, 1, !dbg !2605
  %55 = icmp eq i8 %54, 0, !dbg !2605
  br i1 %55, label %56, label %71, !dbg !2607

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, metadata !2518, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i64 0, metadata !2516, metadata !DIExpression()), !dbg !2577
  %57 = load i8, i8* %52, align 1, !dbg !2608, !tbaa !848
  %58 = icmp eq i8 %57, 0, !dbg !2611
  br i1 %58, label %71, label %59, !dbg !2611

; <label>:59:                                     ; preds = %56, %66
  %60 = phi i8 [ %69, %66 ], [ %57, %56 ]
  %61 = phi i8* [ %68, %66 ], [ %52, %56 ]
  %62 = phi i64 [ %67, %66 ], [ 0, %56 ]
  call void @llvm.dbg.value(metadata i8* %61, metadata !2518, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i64 %62, metadata !2516, metadata !DIExpression()), !dbg !2577
  %63 = icmp ult i64 %62, %40, !dbg !2612
  br i1 %63, label %64, label %66, !dbg !2615

; <label>:64:                                     ; preds = %59
  %65 = getelementptr inbounds i8, i8* %0, i64 %62, !dbg !2612
  store i8 %60, i8* %65, align 1, !dbg !2612, !tbaa !848
  br label %66, !dbg !2612

; <label>:66:                                     ; preds = %64, %59
  %67 = add i64 %62, 1, !dbg !2615
  %68 = getelementptr inbounds i8, i8* %61, i64 1, !dbg !2616
  call void @llvm.dbg.value(metadata i8* %68, metadata !2518, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i64 %67, metadata !2516, metadata !DIExpression()), !dbg !2577
  %69 = load i8, i8* %68, align 1, !dbg !2608, !tbaa !848
  %70 = icmp eq i8 %69, 0, !dbg !2611
  br i1 %70, label %71, label %59, !dbg !2611, !llvm.loop !2617

; <label>:71:                                     ; preds = %66, %56, %51
  %72 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %67, %66 ], !dbg !2577
  call void @llvm.dbg.value(metadata i64 %72, metadata !2516, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i8 1, metadata !2520, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata i8* %53, metadata !2518, metadata !DIExpression()), !dbg !2579
  %73 = call i64 @strlen(i8* %53) #14, !dbg !2619
  call void @llvm.dbg.value(metadata i64 %73, metadata !2519, metadata !DIExpression()), !dbg !2580
  br label %93, !dbg !2620

; <label>:74:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !2520, metadata !DIExpression()), !dbg !2581
  br label %75, !dbg !2621

; <label>:75:                                     ; preds = %27, %74
  %76 = phi i8 [ %34, %27 ], [ 1, %74 ], !dbg !2589
  call void @llvm.dbg.value(metadata i8 %76, metadata !2520, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata i8 1, metadata !2522, metadata !DIExpression()), !dbg !2584
  br label %77, !dbg !2622

; <label>:77:                                     ; preds = %27, %75
  %78 = phi i8 [ %34, %27 ], [ %76, %75 ], !dbg !2581
  %79 = phi i8 [ %36, %27 ], [ 1, %75 ], !dbg !2589
  call void @llvm.dbg.value(metadata i8 %79, metadata !2522, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i8 %78, metadata !2520, metadata !DIExpression()), !dbg !2581
  %80 = and i8 %79, 1, !dbg !2623
  %81 = icmp eq i8 %80, 0, !dbg !2623
  %82 = select i1 %81, i8 1, i8 %78, !dbg !2625
  br label %83, !dbg !2625

; <label>:83:                                     ; preds = %77, %27
  %84 = phi i8 [ %34, %27 ], [ %82, %77 ], !dbg !2626
  %85 = phi i8 [ %36, %27 ], [ %79, %77 ], !dbg !2584
  call void @llvm.dbg.value(metadata i8 %85, metadata !2522, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i8 %84, metadata !2520, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata i32 2, metadata !2510, metadata !DIExpression()), !dbg !2572
  %86 = and i8 %85, 1, !dbg !2627
  %87 = icmp eq i8 %86, 0, !dbg !2627
  br i1 %87, label %88, label %93, !dbg !2629

; <label>:88:                                     ; preds = %83
  %89 = icmp eq i64 %40, 0, !dbg !2630
  br i1 %89, label %93, label %90, !dbg !2633

; <label>:90:                                     ; preds = %88
  store i8 39, i8* %0, align 1, !dbg !2630, !tbaa !848
  br label %93, !dbg !2630

; <label>:91:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !2522, metadata !DIExpression()), !dbg !2584
  br label %93, !dbg !2634

; <label>:92:                                     ; preds = %27
  call void @abort() #15, !dbg !2635
  unreachable, !dbg !2635

; <label>:93:                                     ; preds = %41, %83, %88, %90, %27, %42, %45, %47, %91, %71
  %94 = phi i32 [ 0, %91 ], [ %28, %71 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ %28, %27 ], [ 2, %90 ], [ 2, %88 ], [ 2, %83 ], [ 5, %41 ]
  %95 = phi i8* [ %29, %91 ], [ %52, %71 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %90 ], [ %29, %88 ], [ %29, %83 ], [ %29, %41 ]
  %96 = phi i8* [ %30, %91 ], [ %53, %71 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %90 ], [ %30, %88 ], [ %30, %83 ], [ %30, %41 ]
  %97 = phi i64 [ 0, %91 ], [ %72, %71 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %90 ], [ 1, %88 ], [ 0, %83 ], [ 0, %41 ], !dbg !2577
  %98 = phi i8* [ %32, %91 ], [ %53, %71 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.126, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.126, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.126, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.125, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.125, i64 0, i64 0), %88 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.125, i64 0, i64 0), %83 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.126, i64 0, i64 0), %41 ], !dbg !2589
  %99 = phi i64 [ %33, %91 ], [ %73, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %90 ], [ 1, %88 ], [ 1, %83 ], [ 1, %41 ], !dbg !2589
  %100 = phi i8 [ %34, %91 ], [ 1, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %84, %90 ], [ %84, %88 ], [ %84, %83 ], [ 1, %41 ], !dbg !2589
  %101 = phi i8 [ 0, %91 ], [ %36, %71 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %85, %90 ], [ %85, %88 ], [ %85, %83 ], [ 1, %41 ], !dbg !2636
  call void @llvm.dbg.value(metadata i8 %101, metadata !2522, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i8 %100, metadata !2520, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata i64 %99, metadata !2519, metadata !DIExpression()), !dbg !2580
  call void @llvm.dbg.value(metadata i8* %98, metadata !2518, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i64 %97, metadata !2516, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i8* %96, metadata !2514, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i8* %95, metadata !2513, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata i32 %94, metadata !2510, metadata !DIExpression()), !dbg !2572
  call void @llvm.dbg.value(metadata i64 0, metadata !2515, metadata !DIExpression()), !dbg !2637
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
  br label %121, !dbg !2638

; <label>:121:                                    ; preds = %607, %93
  %122 = phi i64 [ 0, %93 ], [ %616, %607 ], !dbg !2639
  %123 = phi i64 [ %97, %93 ], [ %609, %607 ], !dbg !2577
  %124 = phi i64 [ %31, %93 ], [ %610, %607 ], !dbg !2578
  %125 = phi i64 [ %35, %93 ], [ %611, %607 ]
  %126 = phi i8 [ %37, %93 ], [ %612, %607 ], !dbg !2585
  %127 = phi i8 [ %38, %93 ], [ %613, %607 ], !dbg !2586
  %128 = phi i8 [ %39, %93 ], [ %614, %607 ], !dbg !2587
  %129 = phi i64 [ %40, %93 ], [ %615, %607 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !2507, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i8 %128, metadata !2525, metadata !DIExpression()), !dbg !2587
  call void @llvm.dbg.value(metadata i8 %127, metadata !2524, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.value(metadata i8 %126, metadata !2523, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i64 %125, metadata !2509, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %124, metadata !2517, metadata !DIExpression()), !dbg !2578
  call void @llvm.dbg.value(metadata i64 %123, metadata !2516, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i64 %122, metadata !2515, metadata !DIExpression()), !dbg !2637
  %130 = icmp eq i64 %125, -1, !dbg !2640
  br i1 %130, label %131, label %135, !dbg !2641

; <label>:131:                                    ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2642
  %133 = load i8, i8* %132, align 1, !dbg !2642, !tbaa !848
  %134 = icmp eq i8 %133, 0, !dbg !2643
  br i1 %134, label %617, label %137, !dbg !2644

; <label>:135:                                    ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !2645
  br i1 %136, label %617, label %137, !dbg !2644

; <label>:137:                                    ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !2531, metadata !DIExpression()), !dbg !2646
  call void @llvm.dbg.value(metadata i8 0, metadata !2532, metadata !DIExpression()), !dbg !2647
  call void @llvm.dbg.value(metadata i8 0, metadata !2533, metadata !DIExpression()), !dbg !2648
  br i1 %107, label %138, label %153, !dbg !2649

; <label>:138:                                    ; preds = %137
  %139 = add i64 %122, %99, !dbg !2651
  %140 = and i1 %108, %130, !dbg !2652
  br i1 %140, label %141, label %143, !dbg !2652

; <label>:141:                                    ; preds = %138
  %142 = call i64 @strlen(i8* %2) #14, !dbg !2653
  call void @llvm.dbg.value(metadata i64 %142, metadata !2509, metadata !DIExpression()), !dbg !2571
  br label %143, !dbg !2654

; <label>:143:                                    ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ]
  call void @llvm.dbg.value(metadata i64 %144, metadata !2509, metadata !DIExpression()), !dbg !2571
  %145 = icmp ugt i64 %139, %144, !dbg !2655
  br i1 %145, label %153, label %146, !dbg !2656

; <label>:146:                                    ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2657
  %148 = call i32 @memcmp(i8* %147, i8* %98, i64 %99) #14, !dbg !2658
  %149 = icmp ne i32 %148, 0, !dbg !2659
  %150 = or i1 %149, %110, !dbg !2660
  %151 = xor i1 %149, true, !dbg !2660
  %152 = zext i1 %151 to i8, !dbg !2660
  br i1 %150, label %153, label %661, !dbg !2660

; <label>:153:                                    ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !2661
  call void @llvm.dbg.value(metadata i8 %155, metadata !2531, metadata !DIExpression()), !dbg !2646
  call void @llvm.dbg.value(metadata i64 %154, metadata !2509, metadata !DIExpression()), !dbg !2571
  %156 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2662
  %157 = load i8, i8* %156, align 1, !dbg !2662, !tbaa !848
  call void @llvm.dbg.value(metadata i8 %157, metadata !2526, metadata !DIExpression()), !dbg !2663
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
  ], !dbg !2664

; <label>:158:                                    ; preds = %153
  br i1 %103, label %159, label %207, !dbg !2665

; <label>:159:                                    ; preds = %158
  br i1 %110, label %160, label %661, !dbg !2666

; <label>:160:                                    ; preds = %159
  call void @llvm.dbg.value(metadata i8 1, metadata !2532, metadata !DIExpression()), !dbg !2647
  %161 = and i8 %126, 1, !dbg !2670
  %162 = icmp eq i8 %161, 0, !dbg !2670
  %163 = and i1 %114, %162, !dbg !2670
  br i1 %163, label %164, label %180, !dbg !2670

; <label>:164:                                    ; preds = %160
  %165 = icmp ult i64 %123, %129, !dbg !2672
  br i1 %165, label %166, label %168, !dbg !2676

; <label>:166:                                    ; preds = %164
  %167 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2672
  store i8 39, i8* %167, align 1, !dbg !2672, !tbaa !848
  br label %168, !dbg !2672

; <label>:168:                                    ; preds = %166, %164
  %169 = add i64 %123, 1, !dbg !2676
  call void @llvm.dbg.value(metadata i64 %169, metadata !2516, metadata !DIExpression()), !dbg !2577
  %170 = icmp ult i64 %169, %129, !dbg !2677
  br i1 %170, label %171, label %173, !dbg !2680

; <label>:171:                                    ; preds = %168
  %172 = getelementptr inbounds i8, i8* %0, i64 %169, !dbg !2677
  store i8 36, i8* %172, align 1, !dbg !2677, !tbaa !848
  br label %173, !dbg !2677

; <label>:173:                                    ; preds = %171, %168
  %174 = add i64 %123, 2, !dbg !2680
  call void @llvm.dbg.value(metadata i64 %174, metadata !2516, metadata !DIExpression()), !dbg !2577
  %175 = icmp ult i64 %174, %129, !dbg !2681
  br i1 %175, label %176, label %178, !dbg !2684

; <label>:176:                                    ; preds = %173
  %177 = getelementptr inbounds i8, i8* %0, i64 %174, !dbg !2681
  store i8 39, i8* %177, align 1, !dbg !2681, !tbaa !848
  br label %178, !dbg !2681

; <label>:178:                                    ; preds = %176, %173
  %179 = add i64 %123, 3, !dbg !2684
  call void @llvm.dbg.value(metadata i64 %179, metadata !2516, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i8 1, metadata !2523, metadata !DIExpression()), !dbg !2585
  br label %180, !dbg !2685

; <label>:180:                                    ; preds = %160, %178
  %181 = phi i64 [ %179, %178 ], [ %123, %160 ], !dbg !2636
  %182 = phi i8 [ 1, %178 ], [ %126, %160 ], !dbg !2636
  call void @llvm.dbg.value(metadata i8 %182, metadata !2523, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i64 %181, metadata !2516, metadata !DIExpression()), !dbg !2577
  %183 = icmp ult i64 %181, %129, !dbg !2686
  br i1 %183, label %184, label %186, !dbg !2689

; <label>:184:                                    ; preds = %180
  %185 = getelementptr inbounds i8, i8* %0, i64 %181, !dbg !2686
  store i8 92, i8* %185, align 1, !dbg !2686, !tbaa !848
  br label %186, !dbg !2686

; <label>:186:                                    ; preds = %184, %180
  %187 = add i64 %181, 1, !dbg !2689
  call void @llvm.dbg.value(metadata i64 %187, metadata !2516, metadata !DIExpression()), !dbg !2577
  br i1 %104, label %188, label %478, !dbg !2690

; <label>:188:                                    ; preds = %186
  %189 = add i64 %122, 1, !dbg !2692
  %190 = icmp ult i64 %189, %154, !dbg !2693
  br i1 %190, label %191, label %467, !dbg !2694

; <label>:191:                                    ; preds = %188
  %192 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !2695
  %193 = load i8, i8* %192, align 1, !dbg !2695, !tbaa !848
  %194 = add i8 %193, -48, !dbg !2696
  %195 = icmp ult i8 %194, 10, !dbg !2696
  br i1 %195, label %196, label %467, !dbg !2696

; <label>:196:                                    ; preds = %191
  %197 = icmp ult i64 %187, %129, !dbg !2697
  br i1 %197, label %198, label %200, !dbg !2701

; <label>:198:                                    ; preds = %196
  %199 = getelementptr inbounds i8, i8* %0, i64 %187, !dbg !2697
  store i8 48, i8* %199, align 1, !dbg !2697, !tbaa !848
  br label %200, !dbg !2697

; <label>:200:                                    ; preds = %198, %196
  %201 = add i64 %181, 2, !dbg !2701
  call void @llvm.dbg.value(metadata i64 %201, metadata !2516, metadata !DIExpression()), !dbg !2577
  %202 = icmp ult i64 %201, %129, !dbg !2702
  br i1 %202, label %203, label %205, !dbg !2705

; <label>:203:                                    ; preds = %200
  %204 = getelementptr inbounds i8, i8* %0, i64 %201, !dbg !2702
  store i8 48, i8* %204, align 1, !dbg !2702, !tbaa !848
  br label %205, !dbg !2702

; <label>:205:                                    ; preds = %203, %200
  %206 = add i64 %181, 3, !dbg !2705
  call void @llvm.dbg.value(metadata i64 %206, metadata !2516, metadata !DIExpression()), !dbg !2577
  br label %467, !dbg !2706

; <label>:207:                                    ; preds = %158
  br i1 %22, label %478, label %607, !dbg !2707

; <label>:208:                                    ; preds = %153
  switch i32 %94, label %467 [
    i32 2, label %209
    i32 5, label %210
  ], !dbg !2708

; <label>:209:                                    ; preds = %208
  br i1 %110, label %467, label %661, !dbg !2709

; <label>:210:                                    ; preds = %208
  br i1 %24, label %467, label %211, !dbg !2711

; <label>:211:                                    ; preds = %210
  %212 = add i64 %122, 2, !dbg !2713
  %213 = icmp ult i64 %212, %154, !dbg !2714
  br i1 %213, label %214, label %467, !dbg !2715

; <label>:214:                                    ; preds = %211
  %215 = add i64 %122, 1, !dbg !2716
  %216 = getelementptr inbounds i8, i8* %2, i64 %215, !dbg !2717
  %217 = load i8, i8* %216, align 1, !dbg !2717, !tbaa !848
  %218 = icmp eq i8 %217, 63, !dbg !2718
  br i1 %218, label %219, label %467, !dbg !2719

; <label>:219:                                    ; preds = %214
  %220 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !2720
  %221 = load i8, i8* %220, align 1, !dbg !2720, !tbaa !848
  %222 = sext i8 %221 to i32, !dbg !2720
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
  ], !dbg !2721

; <label>:223:                                    ; preds = %219, %219, %219, %219, %219, %219, %219, %219, %219
  br i1 %110, label %224, label %661, !dbg !2722

; <label>:224:                                    ; preds = %223
  call void @llvm.dbg.value(metadata i8 %221, metadata !2526, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i64 %212, metadata !2515, metadata !DIExpression()), !dbg !2637
  %225 = icmp ult i64 %123, %129, !dbg !2724
  br i1 %225, label %226, label %228, !dbg !2727

; <label>:226:                                    ; preds = %224
  %227 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2724
  store i8 63, i8* %227, align 1, !dbg !2724, !tbaa !848
  br label %228, !dbg !2724

; <label>:228:                                    ; preds = %226, %224
  %229 = add i64 %123, 1, !dbg !2727
  call void @llvm.dbg.value(metadata i64 %229, metadata !2516, metadata !DIExpression()), !dbg !2577
  %230 = icmp ult i64 %229, %129, !dbg !2728
  br i1 %230, label %231, label %233, !dbg !2731

; <label>:231:                                    ; preds = %228
  %232 = getelementptr inbounds i8, i8* %0, i64 %229, !dbg !2728
  store i8 34, i8* %232, align 1, !dbg !2728, !tbaa !848
  br label %233, !dbg !2728

; <label>:233:                                    ; preds = %231, %228
  %234 = add i64 %123, 2, !dbg !2731
  call void @llvm.dbg.value(metadata i64 %234, metadata !2516, metadata !DIExpression()), !dbg !2577
  %235 = icmp ult i64 %234, %129, !dbg !2732
  br i1 %235, label %236, label %238, !dbg !2735

; <label>:236:                                    ; preds = %233
  %237 = getelementptr inbounds i8, i8* %0, i64 %234, !dbg !2732
  store i8 34, i8* %237, align 1, !dbg !2732, !tbaa !848
  br label %238, !dbg !2732

; <label>:238:                                    ; preds = %236, %233
  %239 = add i64 %123, 3, !dbg !2735
  call void @llvm.dbg.value(metadata i64 %239, metadata !2516, metadata !DIExpression()), !dbg !2577
  %240 = icmp ult i64 %239, %129, !dbg !2736
  br i1 %240, label %241, label %243, !dbg !2739

; <label>:241:                                    ; preds = %238
  %242 = getelementptr inbounds i8, i8* %0, i64 %239, !dbg !2736
  store i8 63, i8* %242, align 1, !dbg !2736, !tbaa !848
  br label %243, !dbg !2736

; <label>:243:                                    ; preds = %241, %238
  %244 = add i64 %123, 4, !dbg !2739
  call void @llvm.dbg.value(metadata i64 %244, metadata !2516, metadata !DIExpression()), !dbg !2577
  br label %467, !dbg !2740

; <label>:245:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !2530, metadata !DIExpression()), !dbg !2741
  br label %255, !dbg !2742

; <label>:246:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !2530, metadata !DIExpression()), !dbg !2741
  br label %255, !dbg !2743

; <label>:247:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !2530, metadata !DIExpression()), !dbg !2741
  br label %253, !dbg !2744

; <label>:248:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !2530, metadata !DIExpression()), !dbg !2741
  br label %253, !dbg !2745

; <label>:249:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !2530, metadata !DIExpression()), !dbg !2741
  br label %255, !dbg !2746

; <label>:250:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 %157, metadata !2530, metadata !DIExpression()), !dbg !2741
  br i1 %114, label %251, label %252, !dbg !2747

; <label>:251:                                    ; preds = %250
  br i1 %110, label %562, label %661, !dbg !2748

; <label>:252:                                    ; preds = %250
  br i1 %120, label %562, label %253, !dbg !2751

; <label>:253:                                    ; preds = %252, %153, %248, %247
  %254 = phi i8 [ 92, %252 ], [ 116, %248 ], [ 114, %247 ], [ 110, %153 ], !dbg !2753
  call void @llvm.dbg.value(metadata i8 %254, metadata !2530, metadata !DIExpression()), !dbg !2741
  br i1 %113, label %255, label %661, !dbg !2754

; <label>:255:                                    ; preds = %253, %153, %249, %246, %245
  %256 = phi i8 [ %254, %253 ], [ 118, %249 ], [ 102, %246 ], [ 98, %245 ], [ 97, %153 ], !dbg !2753
  call void @llvm.dbg.value(metadata i8 %256, metadata !2530, metadata !DIExpression()), !dbg !2741
  br i1 %103, label %524, label %478, !dbg !2756

; <label>:257:                                    ; preds = %153, %153
  %258 = icmp eq i64 %154, -1, !dbg !2757
  br i1 %258, label %259, label %264, !dbg !2759

; <label>:259:                                    ; preds = %257
  %260 = load i8, i8* %25, align 1, !dbg !2760, !tbaa !848
  %261 = icmp ne i8 %260, 0, !dbg !2761
  %262 = icmp ne i64 %122, 0, !dbg !2762
  %263 = or i1 %262, %261, !dbg !2764
  br i1 %263, label %467, label %270, !dbg !2764

; <label>:264:                                    ; preds = %257
  %265 = icmp ne i64 %154, 1, !dbg !2765
  %266 = icmp ne i64 %122, 0, !dbg !2762
  %267 = or i1 %266, %265, !dbg !2759
  br i1 %267, label %467, label %270, !dbg !2759

; <label>:268:                                    ; preds = %153, %153
  %269 = icmp eq i64 %122, 0, !dbg !2762
  br i1 %269, label %270, label %467, !dbg !2766

; <label>:270:                                    ; preds = %268, %264, %259, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !2533, metadata !DIExpression()), !dbg !2648
  br label %271, !dbg !2767

; <label>:271:                                    ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %270
  %272 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %270 ], !dbg !2753
  call void @llvm.dbg.value(metadata i8 %272, metadata !2533, metadata !DIExpression()), !dbg !2648
  br i1 %113, label %467, label %661, !dbg !2768

; <label>:273:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !2524, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.value(metadata i8 1, metadata !2533, metadata !DIExpression()), !dbg !2648
  br i1 %114, label %274, label %467, !dbg !2770

; <label>:274:                                    ; preds = %273
  br i1 %110, label %275, label %661, !dbg !2771

; <label>:275:                                    ; preds = %274
  %276 = icmp eq i64 %129, 0, !dbg !2774
  %277 = icmp ne i64 %124, 0, !dbg !2776
  %278 = or i1 %277, %276, !dbg !2777
  %279 = select i1 %278, i64 %124, i64 %129, !dbg !2777
  %280 = select i1 %278, i64 %129, i64 0, !dbg !2777
  call void @llvm.dbg.value(metadata i64 %280, metadata !2507, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i64 %279, metadata !2517, metadata !DIExpression()), !dbg !2578
  %281 = icmp ult i64 %123, %280, !dbg !2778
  br i1 %281, label %282, label %284, !dbg !2781

; <label>:282:                                    ; preds = %275
  %283 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2778
  store i8 39, i8* %283, align 1, !dbg !2778, !tbaa !848
  br label %284, !dbg !2778

; <label>:284:                                    ; preds = %282, %275
  %285 = add i64 %123, 1, !dbg !2781
  call void @llvm.dbg.value(metadata i64 %285, metadata !2516, metadata !DIExpression()), !dbg !2577
  %286 = icmp ult i64 %285, %280, !dbg !2782
  br i1 %286, label %287, label %289, !dbg !2785

; <label>:287:                                    ; preds = %284
  %288 = getelementptr inbounds i8, i8* %0, i64 %285, !dbg !2782
  store i8 92, i8* %288, align 1, !dbg !2782, !tbaa !848
  br label %289, !dbg !2782

; <label>:289:                                    ; preds = %287, %284
  %290 = add i64 %123, 2, !dbg !2785
  call void @llvm.dbg.value(metadata i64 %290, metadata !2516, metadata !DIExpression()), !dbg !2577
  %291 = icmp ult i64 %290, %280, !dbg !2786
  br i1 %291, label %292, label %294, !dbg !2789

; <label>:292:                                    ; preds = %289
  %293 = getelementptr inbounds i8, i8* %0, i64 %290, !dbg !2786
  store i8 39, i8* %293, align 1, !dbg !2786, !tbaa !848
  br label %294, !dbg !2786

; <label>:294:                                    ; preds = %292, %289
  %295 = add i64 %123, 3, !dbg !2789
  call void @llvm.dbg.value(metadata i64 %295, metadata !2516, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i8 0, metadata !2523, metadata !DIExpression()), !dbg !2585
  br label %467, !dbg !2790

; <label>:296:                                    ; preds = %153
  br i1 %14, label %297, label %306, !dbg !2791

; <label>:297:                                    ; preds = %296
  call void @llvm.dbg.value(metadata i64 1, metadata !2534, metadata !DIExpression()), !dbg !2792
  %298 = tail call i16** @__ctype_b_loc() #17, !dbg !2793
  %299 = load i16*, i16** %298, align 8, !dbg !2793, !tbaa !741
  %300 = zext i8 %157 to i64, !dbg !2793
  %301 = getelementptr inbounds i16, i16* %299, i64 %300, !dbg !2793
  %302 = load i16, i16* %301, align 2, !dbg !2793, !tbaa !1454
  %303 = lshr i16 %302, 14, !dbg !2795
  %304 = trunc i16 %303 to i8, !dbg !2795
  %305 = and i8 %304, 1, !dbg !2795
  call void @llvm.dbg.value(metadata i8 %305, metadata !2537, metadata !DIExpression()), !dbg !2796
  br label %359, !dbg !2797

; <label>:306:                                    ; preds = %296
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %19) #12, !dbg !2798
  store i64 0, i64* %10, align 8, !dbg !2799
  call void @llvm.dbg.value(metadata i64 0, metadata !2534, metadata !DIExpression()), !dbg !2792
  call void @llvm.dbg.value(metadata i8 1, metadata !2537, metadata !DIExpression()), !dbg !2796
  %307 = icmp eq i64 %154, -1, !dbg !2800
  br i1 %307, label %308, label %310, !dbg !2802

; <label>:308:                                    ; preds = %306
  %309 = call i64 @strlen(i8* nonnull %2) #14, !dbg !2803
  call void @llvm.dbg.value(metadata i64 %309, metadata !2509, metadata !DIExpression()), !dbg !2571
  br label %310, !dbg !2804

; <label>:310:                                    ; preds = %308, %306
  %311 = phi i64 [ %309, %308 ], [ %154, %306 ], !dbg !2805
  call void @llvm.dbg.value(metadata i64 %311, metadata !2509, metadata !DIExpression()), !dbg !2571
  br label %312, !dbg !2806

; <label>:312:                                    ; preds = %347, %310
  %313 = phi i64 [ 0, %310 ], [ %352, %347 ], !dbg !2807
  %314 = phi i8 [ 1, %310 ], [ %351, %347 ], !dbg !2808
  call void @llvm.dbg.value(metadata i8 %314, metadata !2537, metadata !DIExpression()), !dbg !2796
  call void @llvm.dbg.value(metadata i64 %313, metadata !2534, metadata !DIExpression()), !dbg !2792
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #12, !dbg !2809
  %315 = add i64 %313, %122, !dbg !2810
  %316 = getelementptr inbounds i8, i8* %2, i64 %315, !dbg !2811
  %317 = sub i64 %311, %315, !dbg !2812
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !2538, metadata !DIExpression(DW_OP_deref)), !dbg !2813
  call void @llvm.dbg.value(metadata i32* %12, metadata !2554, metadata !DIExpression(DW_OP_deref)), !dbg !2814
  %318 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %316, i64 %317, %struct.__mbstate_t* nonnull %11) #12, !dbg !2815
  call void @llvm.dbg.value(metadata i64 %318, metadata !2557, metadata !DIExpression()), !dbg !2816
  switch i64 %318, label %331 [
    i64 0, label %343
    i64 -1, label %344
    i64 -2, label %319
  ], !dbg !2817

; <label>:319:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !2534, metadata !DIExpression()), !dbg !2792
  call void @llvm.dbg.value(metadata i64 %313, metadata !2534, metadata !DIExpression()), !dbg !2792
  call void @llvm.dbg.value(metadata i64 %313, metadata !2534, metadata !DIExpression()), !dbg !2792
  call void @llvm.dbg.value(metadata i64 %313, metadata !2534, metadata !DIExpression()), !dbg !2792
  call void @llvm.dbg.value(metadata i64 %313, metadata !2534, metadata !DIExpression()), !dbg !2792
  call void @llvm.dbg.value(metadata i64 %313, metadata !2534, metadata !DIExpression()), !dbg !2792
  %320 = icmp ugt i64 %311, %315, !dbg !2818
  br i1 %320, label %321, label %344, !dbg !2820

; <label>:321:                                    ; preds = %319, %327
  %322 = phi i64 [ %329, %327 ], [ %315, %319 ]
  %323 = phi i64 [ %328, %327 ], [ %313, %319 ]
  call void @llvm.dbg.value(metadata i64 %323, metadata !2534, metadata !DIExpression()), !dbg !2792
  %324 = getelementptr inbounds i8, i8* %2, i64 %322, !dbg !2821
  %325 = load i8, i8* %324, align 1, !dbg !2821, !tbaa !848
  %326 = icmp eq i8 %325, 0, !dbg !2820
  br i1 %326, label %344, label %327, !dbg !2822

; <label>:327:                                    ; preds = %321
  %328 = add i64 %323, 1, !dbg !2823
  call void @llvm.dbg.value(metadata i64 %328, metadata !2534, metadata !DIExpression()), !dbg !2792
  %329 = add i64 %328, %122, !dbg !2824
  %330 = icmp ult i64 %329, %311, !dbg !2818
  br i1 %330, label %321, label %344, !dbg !2820, !llvm.loop !2825

; <label>:331:                                    ; preds = %312
  %332 = icmp ugt i64 %318, 1, !dbg !2826
  %333 = and i1 %116, %332, !dbg !2829
  call void @llvm.dbg.value(metadata i64 1, metadata !2558, metadata !DIExpression()), !dbg !2830
  br i1 %333, label %334, label %347, !dbg !2829

; <label>:334:                                    ; preds = %331, %340
  %335 = phi i64 [ %341, %340 ], [ 1, %331 ]
  call void @llvm.dbg.value(metadata i64 %335, metadata !2558, metadata !DIExpression()), !dbg !2830
  %336 = add i64 %335, %315, !dbg !2831
  %337 = getelementptr inbounds i8, i8* %2, i64 %336, !dbg !2832
  %338 = load i8, i8* %337, align 1, !dbg !2832, !tbaa !848
  %339 = sext i8 %338 to i32, !dbg !2832
  switch i32 %339, label %340 [
    i32 91, label %358
    i32 92, label %358
    i32 94, label %358
    i32 96, label %358
    i32 124, label %358
  ], !dbg !2833

; <label>:340:                                    ; preds = %334
  %341 = add nuw i64 %335, 1, !dbg !2834
  call void @llvm.dbg.value(metadata i64 %341, metadata !2558, metadata !DIExpression()), !dbg !2830
  %342 = icmp ult i64 %341, %318, !dbg !2826
  br i1 %342, label %334, label %347, !dbg !2835, !llvm.loop !2836

; <label>:343:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !2534, metadata !DIExpression()), !dbg !2792
  call void @llvm.dbg.value(metadata i8 %314, metadata !2537, metadata !DIExpression()), !dbg !2796
  call void @llvm.dbg.value(metadata i64 %313, metadata !2534, metadata !DIExpression()), !dbg !2792
  call void @llvm.dbg.value(metadata i8 %314, metadata !2537, metadata !DIExpression()), !dbg !2796
  br label %344, !dbg !2838

; <label>:344:                                    ; preds = %327, %321, %312, %343, %319
  %345 = phi i64 [ %313, %319 ], [ %313, %343 ], [ %313, %312 ], [ %323, %321 ], [ %328, %327 ]
  %346 = phi i8 [ 0, %319 ], [ %314, %343 ], [ 0, %312 ], [ 0, %321 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i8 %351, metadata !2537, metadata !DIExpression()), !dbg !2796
  call void @llvm.dbg.value(metadata i64 %352, metadata !2534, metadata !DIExpression()), !dbg !2792
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #12, !dbg !2838
  br label %355

; <label>:347:                                    ; preds = %340, %331
  %348 = load i32, i32* %12, align 4, !dbg !2839, !tbaa !863
  call void @llvm.dbg.value(metadata i32 %348, metadata !2554, metadata !DIExpression()), !dbg !2814
  %349 = call i32 @iswprint(i32 %348) #12, !dbg !2841
  %350 = icmp eq i32 %349, 0, !dbg !2841
  %351 = select i1 %350, i8 0, i8 %314, !dbg !2842
  call void @llvm.dbg.value(metadata i8 %351, metadata !2537, metadata !DIExpression()), !dbg !2796
  %352 = add i64 %318, %313, !dbg !2843
  call void @llvm.dbg.value(metadata i64 %352, metadata !2534, metadata !DIExpression()), !dbg !2792
  call void @llvm.dbg.value(metadata i8 %351, metadata !2537, metadata !DIExpression()), !dbg !2796
  call void @llvm.dbg.value(metadata i64 %352, metadata !2534, metadata !DIExpression()), !dbg !2792
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #12, !dbg !2838
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !2538, metadata !DIExpression(DW_OP_deref)), !dbg !2813
  %353 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !2844
  %354 = icmp eq i32 %353, 0, !dbg !2845
  br i1 %354, label %312, label %355, !dbg !2846, !llvm.loop !2847

; <label>:355:                                    ; preds = %347, %344
  %356 = phi i8 [ %346, %344 ], [ %351, %347 ]
  %357 = phi i64 [ %345, %344 ], [ %352, %347 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #12, !dbg !2849
  br label %359

; <label>:358:                                    ; preds = %334, %334, %334, %334, %334
  call void @llvm.dbg.value(metadata i8* %95, metadata !2513, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata i8* %95, metadata !2513, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata i8* %95, metadata !2513, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata i8* %95, metadata !2513, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata i8* %95, metadata !2513, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata i8* %96, metadata !2514, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i8* %96, metadata !2514, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i8* %96, metadata !2514, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i8* %96, metadata !2514, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i8* %96, metadata !2514, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i64 %129, metadata !2507, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i64 %129, metadata !2507, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i64 %129, metadata !2507, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i64 %129, metadata !2507, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i64 %129, metadata !2507, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i64 %311, metadata !2509, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %311, metadata !2509, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %311, metadata !2509, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %311, metadata !2509, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %311, metadata !2509, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8* %95, metadata !2513, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata i8* %95, metadata !2513, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata i8* %95, metadata !2513, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata i8* %95, metadata !2513, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata i8* %95, metadata !2513, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata i8* %96, metadata !2514, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i8* %96, metadata !2514, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i8* %96, metadata !2514, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i8* %96, metadata !2514, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i8* %96, metadata !2514, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i64 %129, metadata !2507, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i64 %129, metadata !2507, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i64 %129, metadata !2507, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i64 %129, metadata !2507, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i64 %129, metadata !2507, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i64 %311, metadata !2509, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %311, metadata !2509, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %311, metadata !2509, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %311, metadata !2509, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %311, metadata !2509, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8* %95, metadata !2513, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata i8* %95, metadata !2513, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata i8* %95, metadata !2513, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata i8* %95, metadata !2513, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata i8* %95, metadata !2513, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata i8* %96, metadata !2514, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i8* %96, metadata !2514, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i8* %96, metadata !2514, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i8* %96, metadata !2514, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i8* %96, metadata !2514, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i64 %129, metadata !2507, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i64 %129, metadata !2507, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i64 %129, metadata !2507, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i64 %129, metadata !2507, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i64 %129, metadata !2507, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i64 %311, metadata !2509, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %311, metadata !2509, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %311, metadata !2509, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %311, metadata !2509, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %311, metadata !2509, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8* %95, metadata !2513, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata i8* %95, metadata !2513, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata i8* %95, metadata !2513, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata i8* %95, metadata !2513, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata i8* %95, metadata !2513, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata i8* %96, metadata !2514, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i8* %96, metadata !2514, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i8* %96, metadata !2514, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i8* %96, metadata !2514, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i8* %96, metadata !2514, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i64 %129, metadata !2507, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i64 %129, metadata !2507, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i64 %129, metadata !2507, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i64 %129, metadata !2507, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i64 %129, metadata !2507, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i64 %311, metadata !2509, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %311, metadata !2509, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %311, metadata !2509, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %311, metadata !2509, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %311, metadata !2509, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i32 2, metadata !2510, metadata !DIExpression()), !dbg !2572
  call void @llvm.dbg.value(metadata i32 2, metadata !2510, metadata !DIExpression()), !dbg !2572
  call void @llvm.dbg.value(metadata i32 2, metadata !2510, metadata !DIExpression()), !dbg !2572
  call void @llvm.dbg.value(metadata i32 2, metadata !2510, metadata !DIExpression()), !dbg !2572
  call void @llvm.dbg.value(metadata i32 2, metadata !2510, metadata !DIExpression()), !dbg !2572
  call void @llvm.dbg.value(metadata i8* %95, metadata !2513, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata i8* %95, metadata !2513, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata i8* %95, metadata !2513, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata i8* %95, metadata !2513, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata i8* %95, metadata !2513, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata i8* %96, metadata !2514, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i8* %96, metadata !2514, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i8* %96, metadata !2514, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i8* %96, metadata !2514, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i8* %96, metadata !2514, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i8 %100, metadata !2520, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata i8 %100, metadata !2520, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata i8 %100, metadata !2520, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata i8 %100, metadata !2520, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata i8 %100, metadata !2520, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata i64 %129, metadata !2507, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i64 %129, metadata !2507, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i64 %129, metadata !2507, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i64 %129, metadata !2507, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i64 %129, metadata !2507, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i64 %311, metadata !2509, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %311, metadata !2509, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %311, metadata !2509, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %311, metadata !2509, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %311, metadata !2509, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i32 %94, metadata !2510, metadata !DIExpression()), !dbg !2572
  call void @llvm.dbg.value(metadata i32 %94, metadata !2510, metadata !DIExpression()), !dbg !2572
  call void @llvm.dbg.value(metadata i32 %94, metadata !2510, metadata !DIExpression()), !dbg !2572
  call void @llvm.dbg.value(metadata i32 %94, metadata !2510, metadata !DIExpression()), !dbg !2572
  call void @llvm.dbg.value(metadata i32 %94, metadata !2510, metadata !DIExpression()), !dbg !2572
  call void @llvm.dbg.value(metadata i8* %95, metadata !2513, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata i8* %95, metadata !2513, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata i8* %95, metadata !2513, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata i8* %95, metadata !2513, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata i8* %95, metadata !2513, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata i8* %96, metadata !2514, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i8* %96, metadata !2514, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i8* %96, metadata !2514, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i8* %96, metadata !2514, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i8* %96, metadata !2514, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i8 %100, metadata !2520, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata i8 %100, metadata !2520, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata i8 %100, metadata !2520, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata i8 %100, metadata !2520, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata i8 %100, metadata !2520, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata i64 %129, metadata !2507, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i64 %129, metadata !2507, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i64 %129, metadata !2507, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i64 %129, metadata !2507, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i64 %129, metadata !2507, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i64 %311, metadata !2509, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %311, metadata !2509, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %311, metadata !2509, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %311, metadata !2509, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %311, metadata !2509, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8 %351, metadata !2537, metadata !DIExpression()), !dbg !2796
  call void @llvm.dbg.value(metadata i64 %352, metadata !2534, metadata !DIExpression()), !dbg !2792
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #12, !dbg !2838
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #12, !dbg !2849
  br label %661

; <label>:359:                                    ; preds = %355, %297
  %360 = phi i64 [ %154, %297 ], [ %311, %355 ], !dbg !2850
  %361 = phi i64 [ 1, %297 ], [ %357, %355 ], !dbg !2851
  %362 = phi i8 [ %305, %297 ], [ %356, %355 ], !dbg !2851
  call void @llvm.dbg.value(metadata i8 %362, metadata !2537, metadata !DIExpression()), !dbg !2796
  call void @llvm.dbg.value(metadata i64 %361, metadata !2534, metadata !DIExpression()), !dbg !2792
  call void @llvm.dbg.value(metadata i64 %360, metadata !2509, metadata !DIExpression()), !dbg !2571
  %363 = and i8 %362, 1, !dbg !2852
  %364 = icmp ne i8 %363, 0, !dbg !2852
  call void @llvm.dbg.value(metadata i8 %363, metadata !2533, metadata !DIExpression()), !dbg !2648
  %365 = icmp ult i64 %361, 2, !dbg !2853
  %366 = or i1 %364, %115, !dbg !2854
  %367 = and i1 %365, %366, !dbg !2855
  br i1 %367, label %467, label %368, !dbg !2855

; <label>:368:                                    ; preds = %359
  %369 = add i64 %361, %122, !dbg !2856
  call void @llvm.dbg.value(metadata i64 %369, metadata !2565, metadata !DIExpression()), !dbg !2857
  br label %370, !dbg !2858

; <label>:370:                                    ; preds = %463, %368
  %371 = phi i64 [ %122, %368 ], [ %438, %463 ], !dbg !2859
  %372 = phi i64 [ %123, %368 ], [ %464, %463 ], !dbg !2863
  %373 = phi i8 [ %126, %368 ], [ %459, %463 ], !dbg !2585
  %374 = phi i8 [ %157, %368 ], [ %466, %463 ], !dbg !2859
  %375 = phi i8 [ %155, %368 ], [ %436, %463 ], !dbg !2865
  %376 = phi i8 [ 0, %368 ], [ %437, %463 ], !dbg !2647
  call void @llvm.dbg.value(metadata i8 %376, metadata !2532, metadata !DIExpression()), !dbg !2647
  call void @llvm.dbg.value(metadata i8 %375, metadata !2531, metadata !DIExpression()), !dbg !2646
  call void @llvm.dbg.value(metadata i8 %374, metadata !2526, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i8 %373, metadata !2523, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i64 %372, metadata !2516, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i64 %371, metadata !2515, metadata !DIExpression()), !dbg !2637
  br i1 %366, label %423, label %377, !dbg !2869

; <label>:377:                                    ; preds = %370
  br i1 %110, label %378, label %661, !dbg !2870

; <label>:378:                                    ; preds = %377
  call void @llvm.dbg.value(metadata i8 1, metadata !2532, metadata !DIExpression()), !dbg !2647
  %379 = and i8 %373, 1, !dbg !2873
  %380 = icmp eq i8 %379, 0, !dbg !2873
  %381 = and i1 %114, %380, !dbg !2873
  br i1 %381, label %382, label %398, !dbg !2873

; <label>:382:                                    ; preds = %378
  %383 = icmp ult i64 %372, %129, !dbg !2875
  br i1 %383, label %384, label %386, !dbg !2879

; <label>:384:                                    ; preds = %382
  %385 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !2875
  store i8 39, i8* %385, align 1, !dbg !2875, !tbaa !848
  br label %386, !dbg !2875

; <label>:386:                                    ; preds = %384, %382
  %387 = add i64 %372, 1, !dbg !2879
  call void @llvm.dbg.value(metadata i64 %387, metadata !2516, metadata !DIExpression()), !dbg !2577
  %388 = icmp ult i64 %387, %129, !dbg !2880
  br i1 %388, label %389, label %391, !dbg !2883

; <label>:389:                                    ; preds = %386
  %390 = getelementptr inbounds i8, i8* %0, i64 %387, !dbg !2880
  store i8 36, i8* %390, align 1, !dbg !2880, !tbaa !848
  br label %391, !dbg !2880

; <label>:391:                                    ; preds = %389, %386
  %392 = add i64 %372, 2, !dbg !2883
  call void @llvm.dbg.value(metadata i64 %392, metadata !2516, metadata !DIExpression()), !dbg !2577
  %393 = icmp ult i64 %392, %129, !dbg !2884
  br i1 %393, label %394, label %396, !dbg !2887

; <label>:394:                                    ; preds = %391
  %395 = getelementptr inbounds i8, i8* %0, i64 %392, !dbg !2884
  store i8 39, i8* %395, align 1, !dbg !2884, !tbaa !848
  br label %396, !dbg !2884

; <label>:396:                                    ; preds = %394, %391
  %397 = add i64 %372, 3, !dbg !2887
  call void @llvm.dbg.value(metadata i64 %397, metadata !2516, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i8 1, metadata !2523, metadata !DIExpression()), !dbg !2585
  br label %398, !dbg !2888

; <label>:398:                                    ; preds = %378, %396
  %399 = phi i64 [ %397, %396 ], [ %372, %378 ], !dbg !2636
  %400 = phi i8 [ 1, %396 ], [ %373, %378 ], !dbg !2636
  call void @llvm.dbg.value(metadata i8 %400, metadata !2523, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i64 %399, metadata !2516, metadata !DIExpression()), !dbg !2577
  %401 = icmp ult i64 %399, %129, !dbg !2889
  br i1 %401, label %402, label %404, !dbg !2892

; <label>:402:                                    ; preds = %398
  %403 = getelementptr inbounds i8, i8* %0, i64 %399, !dbg !2889
  store i8 92, i8* %403, align 1, !dbg !2889, !tbaa !848
  br label %404, !dbg !2889

; <label>:404:                                    ; preds = %402, %398
  %405 = add i64 %399, 1, !dbg !2892
  call void @llvm.dbg.value(metadata i64 %405, metadata !2516, metadata !DIExpression()), !dbg !2577
  %406 = icmp ult i64 %405, %129, !dbg !2893
  br i1 %406, label %407, label %411, !dbg !2896

; <label>:407:                                    ; preds = %404
  %408 = lshr i8 %374, 6, !dbg !2893
  %409 = or i8 %408, 48, !dbg !2893
  %410 = getelementptr inbounds i8, i8* %0, i64 %405, !dbg !2893
  store i8 %409, i8* %410, align 1, !dbg !2893, !tbaa !848
  br label %411, !dbg !2893

; <label>:411:                                    ; preds = %407, %404
  %412 = add i64 %399, 2, !dbg !2896
  call void @llvm.dbg.value(metadata i64 %412, metadata !2516, metadata !DIExpression()), !dbg !2577
  %413 = icmp ult i64 %412, %129, !dbg !2897
  br i1 %413, label %414, label %419, !dbg !2900

; <label>:414:                                    ; preds = %411
  %415 = lshr i8 %374, 3, !dbg !2897
  %416 = and i8 %415, 7, !dbg !2897
  %417 = or i8 %416, 48, !dbg !2897
  %418 = getelementptr inbounds i8, i8* %0, i64 %412, !dbg !2897
  store i8 %417, i8* %418, align 1, !dbg !2897, !tbaa !848
  br label %419, !dbg !2897

; <label>:419:                                    ; preds = %414, %411
  %420 = add i64 %399, 3, !dbg !2900
  call void @llvm.dbg.value(metadata i64 %420, metadata !2516, metadata !DIExpression()), !dbg !2577
  %421 = and i8 %374, 7, !dbg !2901
  %422 = or i8 %421, 48, !dbg !2902
  call void @llvm.dbg.value(metadata i8 %422, metadata !2526, metadata !DIExpression()), !dbg !2663
  br label %432, !dbg !2903

; <label>:423:                                    ; preds = %370
  %424 = and i8 %375, 1, !dbg !2904
  %425 = icmp eq i8 %424, 0, !dbg !2904
  br i1 %425, label %432, label %426, !dbg !2905

; <label>:426:                                    ; preds = %423
  %427 = icmp ult i64 %372, %129, !dbg !2906
  br i1 %427, label %428, label %430, !dbg !2909

; <label>:428:                                    ; preds = %426
  %429 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !2906
  store i8 92, i8* %429, align 1, !dbg !2906, !tbaa !848
  br label %430, !dbg !2906

; <label>:430:                                    ; preds = %428, %426
  %431 = add i64 %372, 1, !dbg !2909
  call void @llvm.dbg.value(metadata i64 %431, metadata !2516, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i8 0, metadata !2531, metadata !DIExpression()), !dbg !2646
  br label %432, !dbg !2910

; <label>:432:                                    ; preds = %423, %430, %419
  %433 = phi i64 [ %431, %430 ], [ %372, %423 ], [ %420, %419 ], !dbg !2911
  %434 = phi i8 [ %373, %430 ], [ %373, %423 ], [ %400, %419 ], !dbg !2585
  %435 = phi i8 [ %374, %430 ], [ %374, %423 ], [ %422, %419 ], !dbg !2912
  %436 = phi i8 [ 0, %430 ], [ %375, %423 ], [ %375, %419 ], !dbg !2913
  %437 = phi i8 [ %376, %430 ], [ %376, %423 ], [ 1, %419 ], !dbg !2915
  call void @llvm.dbg.value(metadata i8 %437, metadata !2532, metadata !DIExpression()), !dbg !2647
  call void @llvm.dbg.value(metadata i8 %436, metadata !2531, metadata !DIExpression()), !dbg !2646
  call void @llvm.dbg.value(metadata i8 %435, metadata !2526, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i8 %434, metadata !2523, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i64 %433, metadata !2516, metadata !DIExpression()), !dbg !2577
  %438 = add i64 %371, 1, !dbg !2916
  %439 = icmp ugt i64 %369, %438, !dbg !2918
  br i1 %439, label %440, label %562, !dbg !2919

; <label>:440:                                    ; preds = %432
  %441 = and i8 %434, 1, !dbg !2920
  %442 = icmp ne i8 %441, 0, !dbg !2920
  %443 = and i8 %437, 1, !dbg !2920
  %444 = icmp eq i8 %443, 0, !dbg !2920
  %445 = and i1 %442, %444, !dbg !2920
  br i1 %445, label %446, label %457, !dbg !2920

; <label>:446:                                    ; preds = %440
  %447 = icmp ult i64 %433, %129, !dbg !2923
  br i1 %447, label %448, label %450, !dbg !2927

; <label>:448:                                    ; preds = %446
  %449 = getelementptr inbounds i8, i8* %0, i64 %433, !dbg !2923
  store i8 39, i8* %449, align 1, !dbg !2923, !tbaa !848
  br label %450, !dbg !2923

; <label>:450:                                    ; preds = %448, %446
  %451 = add i64 %433, 1, !dbg !2927
  call void @llvm.dbg.value(metadata i64 %451, metadata !2516, metadata !DIExpression()), !dbg !2577
  %452 = icmp ult i64 %451, %129, !dbg !2928
  br i1 %452, label %453, label %455, !dbg !2931

; <label>:453:                                    ; preds = %450
  %454 = getelementptr inbounds i8, i8* %0, i64 %451, !dbg !2928
  store i8 39, i8* %454, align 1, !dbg !2928, !tbaa !848
  br label %455, !dbg !2928

; <label>:455:                                    ; preds = %453, %450
  %456 = add i64 %433, 2, !dbg !2931
  call void @llvm.dbg.value(metadata i64 %456, metadata !2516, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i8 0, metadata !2523, metadata !DIExpression()), !dbg !2585
  br label %457, !dbg !2932

; <label>:457:                                    ; preds = %440, %455
  %458 = phi i64 [ %456, %455 ], [ %433, %440 ], !dbg !2933
  %459 = phi i8 [ 0, %455 ], [ %434, %440 ], !dbg !2636
  call void @llvm.dbg.value(metadata i8 %459, metadata !2523, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i64 %458, metadata !2516, metadata !DIExpression()), !dbg !2577
  %460 = icmp ult i64 %458, %129, !dbg !2934
  br i1 %460, label %461, label %463, !dbg !2936

; <label>:461:                                    ; preds = %457
  %462 = getelementptr inbounds i8, i8* %0, i64 %458, !dbg !2934
  store i8 %435, i8* %462, align 1, !dbg !2934, !tbaa !848
  br label %463, !dbg !2934

; <label>:463:                                    ; preds = %461, %457
  %464 = add i64 %458, 1, !dbg !2936
  call void @llvm.dbg.value(metadata i64 %464, metadata !2516, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i64 %438, metadata !2515, metadata !DIExpression()), !dbg !2637
  %465 = getelementptr inbounds i8, i8* %2, i64 %438, !dbg !2937
  %466 = load i8, i8* %465, align 1, !dbg !2937, !tbaa !848
  call void @llvm.dbg.value(metadata i8 %466, metadata !2526, metadata !DIExpression()), !dbg !2663
  br label %370, !dbg !2938, !llvm.loop !2939

; <label>:467:                                    ; preds = %359, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %271, %188, %191, %205, %209, %210, %268, %264, %259, %273, %294, %243, %219, %214, %211, %208
  %468 = phi i64 [ %122, %294 ], [ %122, %273 ], [ %122, %271 ], [ %122, %268 ], [ %122, %259 ], [ %122, %264 ], [ %122, %208 ], [ %122, %219 ], [ %212, %243 ], [ %122, %214 ], [ %122, %211 ], [ %122, %210 ], [ %122, %209 ], [ %122, %205 ], [ %122, %191 ], [ %122, %188 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %359 ], !dbg !2942
  %469 = phi i64 [ %295, %294 ], [ %123, %273 ], [ %123, %271 ], [ %123, %268 ], [ %123, %259 ], [ %123, %264 ], [ %123, %208 ], [ %123, %219 ], [ %244, %243 ], [ %123, %214 ], [ %123, %211 ], [ %123, %210 ], [ %123, %209 ], [ %206, %205 ], [ %187, %191 ], [ %187, %188 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %359 ], !dbg !2636
  %470 = phi i64 [ %279, %294 ], [ %124, %273 ], [ %124, %271 ], [ %124, %268 ], [ %124, %259 ], [ %124, %264 ], [ %124, %208 ], [ %124, %219 ], [ %124, %243 ], [ %124, %214 ], [ %124, %211 ], [ %124, %210 ], [ %124, %209 ], [ %124, %205 ], [ %124, %191 ], [ %124, %188 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %359 ], !dbg !2578
  %471 = phi i64 [ %154, %294 ], [ %154, %273 ], [ %154, %271 ], [ %154, %268 ], [ -1, %259 ], [ %154, %264 ], [ %154, %208 ], [ %154, %219 ], [ %154, %243 ], [ %154, %214 ], [ %154, %211 ], [ %154, %210 ], [ %154, %209 ], [ %154, %205 ], [ %154, %191 ], [ %154, %188 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %360, %359 ], !dbg !2943
  %472 = phi i8 [ 0, %294 ], [ %126, %273 ], [ %126, %271 ], [ %126, %268 ], [ %126, %259 ], [ %126, %264 ], [ %126, %208 ], [ %126, %219 ], [ %126, %243 ], [ %126, %214 ], [ %126, %211 ], [ %126, %210 ], [ %126, %209 ], [ %182, %205 ], [ %182, %191 ], [ %182, %188 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %359 ], !dbg !2636
  %473 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %127, %271 ], [ %127, %268 ], [ %127, %259 ], [ %127, %264 ], [ %127, %208 ], [ %127, %219 ], [ %127, %243 ], [ %127, %214 ], [ %127, %211 ], [ %127, %210 ], [ %127, %209 ], [ %127, %205 ], [ %127, %191 ], [ %127, %188 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %359 ], !dbg !2636
  %474 = phi i8 [ 39, %294 ], [ 39, %273 ], [ %157, %271 ], [ %157, %268 ], [ %157, %259 ], [ %157, %264 ], [ 63, %208 ], [ 63, %219 ], [ %221, %243 ], [ 63, %214 ], [ 63, %211 ], [ 63, %210 ], [ 63, %209 ], [ 48, %205 ], [ 48, %191 ], [ 48, %188 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %359 ], !dbg !2661
  %475 = phi i8 [ 0, %294 ], [ 0, %273 ], [ 0, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 1, %205 ], [ 1, %191 ], [ 1, %188 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %359 ], !dbg !2661
  %476 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %272, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 0, %205 ], [ 0, %191 ], [ 0, %188 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %363, %359 ], !dbg !2661
  %477 = phi i64 [ %280, %294 ], [ %129, %273 ], [ %129, %271 ], [ %129, %268 ], [ %129, %259 ], [ %129, %264 ], [ %129, %208 ], [ %129, %219 ], [ %129, %243 ], [ %129, %214 ], [ %129, %211 ], [ %129, %210 ], [ %129, %209 ], [ %129, %205 ], [ %129, %191 ], [ %129, %188 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %359 ]
  call void @llvm.dbg.value(metadata i64 %477, metadata !2507, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i8 %476, metadata !2533, metadata !DIExpression()), !dbg !2648
  call void @llvm.dbg.value(metadata i8 %475, metadata !2532, metadata !DIExpression()), !dbg !2647
  call void @llvm.dbg.value(metadata i8 %155, metadata !2531, metadata !DIExpression()), !dbg !2646
  call void @llvm.dbg.value(metadata i8 %474, metadata !2526, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i8 %473, metadata !2524, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.value(metadata i8 %472, metadata !2523, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i64 %471, metadata !2509, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %470, metadata !2517, metadata !DIExpression()), !dbg !2578
  call void @llvm.dbg.value(metadata i64 %469, metadata !2516, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i64 %468, metadata !2515, metadata !DIExpression()), !dbg !2637
  br i1 %105, label %489, label %478, !dbg !2944

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
  br i1 %112, label %490, label %512, !dbg !2946

; <label>:489:                                    ; preds = %467
  br i1 %20, label %512, label %490, !dbg !2947

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
  %501 = lshr i8 %494, 5, !dbg !2948
  %502 = zext i8 %501 to i64, !dbg !2948
  %503 = getelementptr inbounds i32, i32* %6, i64 %502, !dbg !2949
  %504 = load i32, i32* %503, align 4, !dbg !2949, !tbaa !863
  %505 = and i8 %494, 31, !dbg !2950
  %506 = zext i8 %505 to i32, !dbg !2950
  %507 = shl i32 1, %506, !dbg !2951
  %508 = and i32 %504, %507, !dbg !2951
  %509 = icmp eq i32 %508, 0, !dbg !2951
  %510 = icmp eq i8 %155, 0, !dbg !2952
  %511 = and i1 %510, %509, !dbg !2953
  br i1 %511, label %562, label %524, !dbg !2953

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
  %523 = icmp eq i8 %155, 0, !dbg !2952
  br i1 %523, label %562, label %524, !dbg !2954

; <label>:524:                                    ; preds = %255, %490, %512
  %525 = phi i64 [ %500, %490 ], [ %522, %512 ], [ %122, %255 ], !dbg !2955
  %526 = phi i64 [ %499, %490 ], [ %521, %512 ], [ %123, %255 ], !dbg !2636
  %527 = phi i64 [ %498, %490 ], [ %520, %512 ], [ %124, %255 ], !dbg !2578
  %528 = phi i64 [ %497, %490 ], [ %519, %512 ], [ %154, %255 ], !dbg !2943
  %529 = phi i8 [ %496, %490 ], [ %518, %512 ], [ %126, %255 ], !dbg !2585
  %530 = phi i8 [ %495, %490 ], [ %517, %512 ], [ %127, %255 ], !dbg !2586
  %531 = phi i8 [ %494, %490 ], [ %516, %512 ], [ %256, %255 ], !dbg !2956
  %532 = phi i8 [ %492, %490 ], [ %514, %512 ], [ 0, %255 ], !dbg !2661
  %533 = phi i64 [ %491, %490 ], [ %513, %512 ], [ %129, %255 ]
  call void @llvm.dbg.value(metadata i64 %533, metadata !2507, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i8 %532, metadata !2533, metadata !DIExpression()), !dbg !2648
  call void @llvm.dbg.value(metadata i8 %531, metadata !2526, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i8 %530, metadata !2524, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.value(metadata i8 %529, metadata !2523, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i64 %528, metadata !2509, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %527, metadata !2517, metadata !DIExpression()), !dbg !2578
  call void @llvm.dbg.value(metadata i64 %526, metadata !2516, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i64 %525, metadata !2515, metadata !DIExpression()), !dbg !2637
  br i1 %110, label %534, label %661, !dbg !2959

; <label>:534:                                    ; preds = %524
  call void @llvm.dbg.value(metadata i8 1, metadata !2532, metadata !DIExpression()), !dbg !2647
  %535 = and i8 %529, 1, !dbg !2961
  %536 = icmp eq i8 %535, 0, !dbg !2961
  %537 = and i1 %114, %536, !dbg !2961
  br i1 %537, label %538, label %554, !dbg !2961

; <label>:538:                                    ; preds = %534
  %539 = icmp ult i64 %526, %533, !dbg !2963
  br i1 %539, label %540, label %542, !dbg !2967

; <label>:540:                                    ; preds = %538
  %541 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !2963
  store i8 39, i8* %541, align 1, !dbg !2963, !tbaa !848
  br label %542, !dbg !2963

; <label>:542:                                    ; preds = %540, %538
  %543 = add i64 %526, 1, !dbg !2967
  call void @llvm.dbg.value(metadata i64 %543, metadata !2516, metadata !DIExpression()), !dbg !2577
  %544 = icmp ult i64 %543, %533, !dbg !2968
  br i1 %544, label %545, label %547, !dbg !2971

; <label>:545:                                    ; preds = %542
  %546 = getelementptr inbounds i8, i8* %0, i64 %543, !dbg !2968
  store i8 36, i8* %546, align 1, !dbg !2968, !tbaa !848
  br label %547, !dbg !2968

; <label>:547:                                    ; preds = %545, %542
  %548 = add i64 %526, 2, !dbg !2971
  call void @llvm.dbg.value(metadata i64 %548, metadata !2516, metadata !DIExpression()), !dbg !2577
  %549 = icmp ult i64 %548, %533, !dbg !2972
  br i1 %549, label %550, label %552, !dbg !2975

; <label>:550:                                    ; preds = %547
  %551 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !2972
  store i8 39, i8* %551, align 1, !dbg !2972, !tbaa !848
  br label %552, !dbg !2972

; <label>:552:                                    ; preds = %550, %547
  %553 = add i64 %526, 3, !dbg !2975
  call void @llvm.dbg.value(metadata i64 %553, metadata !2516, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i8 1, metadata !2523, metadata !DIExpression()), !dbg !2585
  br label %554, !dbg !2976

; <label>:554:                                    ; preds = %534, %552
  %555 = phi i64 [ %553, %552 ], [ %526, %534 ], !dbg !2933
  %556 = phi i8 [ 1, %552 ], [ %529, %534 ], !dbg !2636
  call void @llvm.dbg.value(metadata i8 %556, metadata !2523, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i64 %555, metadata !2516, metadata !DIExpression()), !dbg !2577
  %557 = icmp ult i64 %555, %533, !dbg !2977
  br i1 %557, label %558, label %560, !dbg !2980

; <label>:558:                                    ; preds = %554
  %559 = getelementptr inbounds i8, i8* %0, i64 %555, !dbg !2977
  store i8 92, i8* %559, align 1, !dbg !2977, !tbaa !848
  br label %560, !dbg !2977

; <label>:560:                                    ; preds = %554, %558
  %561 = add i64 %555, 1, !dbg !2980
  call void @llvm.dbg.value(metadata i64 %561, metadata !2516, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i64 %572, metadata !2507, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i8 %571, metadata !2533, metadata !DIExpression()), !dbg !2648
  call void @llvm.dbg.value(metadata i8 %570, metadata !2532, metadata !DIExpression()), !dbg !2647
  call void @llvm.dbg.value(metadata i8 %569, metadata !2526, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i8 %568, metadata !2524, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.value(metadata i8 %567, metadata !2523, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i64 %566, metadata !2509, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %565, metadata !2517, metadata !DIExpression()), !dbg !2578
  call void @llvm.dbg.value(metadata i64 %564, metadata !2516, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i64 %563, metadata !2515, metadata !DIExpression()), !dbg !2637
  br label %589, !dbg !2981

; <label>:562:                                    ; preds = %432, %252, %490, %251, %512
  %563 = phi i64 [ %522, %512 ], [ %122, %251 ], [ %500, %490 ], [ %122, %252 ], [ %371, %432 ], !dbg !2955
  %564 = phi i64 [ %521, %512 ], [ %123, %251 ], [ %499, %490 ], [ %123, %252 ], [ %433, %432 ], !dbg !2636
  %565 = phi i64 [ %520, %512 ], [ %124, %251 ], [ %498, %490 ], [ %124, %252 ], [ %124, %432 ], !dbg !2578
  %566 = phi i64 [ %519, %512 ], [ %154, %251 ], [ %497, %490 ], [ %154, %252 ], [ %360, %432 ], !dbg !2943
  %567 = phi i8 [ %518, %512 ], [ %126, %251 ], [ %496, %490 ], [ %126, %252 ], [ %434, %432 ], !dbg !2585
  %568 = phi i8 [ %517, %512 ], [ %127, %251 ], [ %495, %490 ], [ %127, %252 ], [ %127, %432 ], !dbg !2586
  %569 = phi i8 [ %516, %512 ], [ 92, %251 ], [ %494, %490 ], [ 92, %252 ], [ %435, %432 ], !dbg !2984
  %570 = phi i8 [ %515, %512 ], [ 0, %251 ], [ %493, %490 ], [ 0, %252 ], [ %437, %432 ], !dbg !2661
  %571 = phi i8 [ %514, %512 ], [ 0, %251 ], [ %492, %490 ], [ 0, %252 ], [ %363, %432 ], !dbg !2661
  %572 = phi i64 [ %513, %512 ], [ %129, %251 ], [ %491, %490 ], [ %129, %252 ], [ %129, %432 ]
  call void @llvm.dbg.value(metadata i64 %572, metadata !2507, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i8 %571, metadata !2533, metadata !DIExpression()), !dbg !2648
  call void @llvm.dbg.value(metadata i8 %570, metadata !2532, metadata !DIExpression()), !dbg !2647
  call void @llvm.dbg.value(metadata i8 %569, metadata !2526, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i8 %568, metadata !2524, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.value(metadata i8 %567, metadata !2523, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i64 %566, metadata !2509, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %565, metadata !2517, metadata !DIExpression()), !dbg !2578
  call void @llvm.dbg.value(metadata i64 %564, metadata !2516, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i64 %563, metadata !2515, metadata !DIExpression()), !dbg !2637
  %573 = and i8 %567, 1, !dbg !2981
  %574 = icmp ne i8 %573, 0, !dbg !2981
  %575 = and i8 %570, 1, !dbg !2981
  %576 = icmp eq i8 %575, 0, !dbg !2981
  %577 = and i1 %574, %576, !dbg !2981
  br i1 %577, label %578, label %589, !dbg !2981

; <label>:578:                                    ; preds = %562
  %579 = icmp ult i64 %564, %572, !dbg !2985
  br i1 %579, label %580, label %582, !dbg !2989

; <label>:580:                                    ; preds = %578
  %581 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !2985
  store i8 39, i8* %581, align 1, !dbg !2985, !tbaa !848
  br label %582, !dbg !2985

; <label>:582:                                    ; preds = %580, %578
  %583 = add i64 %564, 1, !dbg !2989
  call void @llvm.dbg.value(metadata i64 %583, metadata !2516, metadata !DIExpression()), !dbg !2577
  %584 = icmp ult i64 %583, %572, !dbg !2990
  br i1 %584, label %585, label %587, !dbg !2993

; <label>:585:                                    ; preds = %582
  %586 = getelementptr inbounds i8, i8* %0, i64 %583, !dbg !2990
  store i8 39, i8* %586, align 1, !dbg !2990, !tbaa !848
  br label %587, !dbg !2990

; <label>:587:                                    ; preds = %585, %582
  %588 = add i64 %564, 2, !dbg !2993
  call void @llvm.dbg.value(metadata i64 %588, metadata !2516, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i8 0, metadata !2523, metadata !DIExpression()), !dbg !2585
  br label %589, !dbg !2994

; <label>:589:                                    ; preds = %560, %562, %587
  %590 = phi i64 [ %572, %587 ], [ %572, %562 ], [ %533, %560 ]
  %591 = phi i8 [ %571, %587 ], [ %571, %562 ], [ %532, %560 ]
  %592 = phi i8 [ %569, %587 ], [ %569, %562 ], [ %531, %560 ]
  %593 = phi i8 [ %568, %587 ], [ %568, %562 ], [ %530, %560 ]
  %594 = phi i64 [ %566, %587 ], [ %566, %562 ], [ %528, %560 ]
  %595 = phi i64 [ %565, %587 ], [ %565, %562 ], [ %527, %560 ]
  %596 = phi i64 [ %563, %587 ], [ %563, %562 ], [ %525, %560 ]
  %597 = phi i64 [ %588, %587 ], [ %564, %562 ], [ %561, %560 ], !dbg !2933
  %598 = phi i8 [ 0, %587 ], [ %567, %562 ], [ %556, %560 ], !dbg !2636
  call void @llvm.dbg.value(metadata i8 %598, metadata !2523, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i64 %597, metadata !2516, metadata !DIExpression()), !dbg !2577
  %599 = icmp ult i64 %597, %590, !dbg !2995
  br i1 %599, label %600, label %602, !dbg !2998

; <label>:600:                                    ; preds = %589
  %601 = getelementptr inbounds i8, i8* %0, i64 %597, !dbg !2995
  store i8 %592, i8* %601, align 1, !dbg !2995, !tbaa !848
  br label %602, !dbg !2995

; <label>:602:                                    ; preds = %600, %589
  %603 = add i64 %597, 1, !dbg !2998
  call void @llvm.dbg.value(metadata i64 %603, metadata !2516, metadata !DIExpression()), !dbg !2577
  %604 = and i8 %591, 1, !dbg !2999
  %605 = icmp eq i8 %604, 0, !dbg !2999
  %606 = select i1 %605, i8 0, i8 %128, !dbg !3001
  call void @llvm.dbg.value(metadata i8 %606, metadata !2525, metadata !DIExpression()), !dbg !2587
  br label %607, !dbg !3002

; <label>:607:                                    ; preds = %602, %207
  %608 = phi i64 [ %596, %602 ], [ %122, %207 ], !dbg !2955
  %609 = phi i64 [ %603, %602 ], [ %123, %207 ], !dbg !2636
  %610 = phi i64 [ %595, %602 ], [ %124, %207 ], !dbg !2578
  %611 = phi i64 [ %594, %602 ], [ %154, %207 ], !dbg !2943
  %612 = phi i8 [ %598, %602 ], [ %126, %207 ], !dbg !2585
  %613 = phi i8 [ %593, %602 ], [ %127, %207 ], !dbg !2636
  %614 = phi i8 [ %606, %602 ], [ %128, %207 ], !dbg !2587
  %615 = phi i64 [ %590, %602 ], [ %129, %207 ]
  call void @llvm.dbg.value(metadata i64 %615, metadata !2507, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i8 %614, metadata !2525, metadata !DIExpression()), !dbg !2587
  call void @llvm.dbg.value(metadata i8 %613, metadata !2524, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.value(metadata i8 %612, metadata !2523, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i64 %611, metadata !2509, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %610, metadata !2517, metadata !DIExpression()), !dbg !2578
  call void @llvm.dbg.value(metadata i64 %609, metadata !2516, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i64 %608, metadata !2515, metadata !DIExpression()), !dbg !2637
  %616 = add i64 %608, 1, !dbg !3003
  call void @llvm.dbg.value(metadata i64 %616, metadata !2515, metadata !DIExpression()), !dbg !2637
  br label %121, !dbg !3004, !llvm.loop !3005

; <label>:617:                                    ; preds = %131, %135
  %618 = phi i64 [ -1, %131 ], [ %122, %135 ]
  call void @llvm.dbg.value(metadata i64 %123, metadata !2516, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i64 %123, metadata !2516, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i64 %124, metadata !2517, metadata !DIExpression()), !dbg !2578
  call void @llvm.dbg.value(metadata i64 %124, metadata !2517, metadata !DIExpression()), !dbg !2578
  call void @llvm.dbg.value(metadata i8 %126, metadata !2523, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i8 %126, metadata !2523, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i8 %127, metadata !2524, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.value(metadata i8 %127, metadata !2524, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.value(metadata i8 %128, metadata !2525, metadata !DIExpression()), !dbg !2587
  call void @llvm.dbg.value(metadata i8 %128, metadata !2525, metadata !DIExpression()), !dbg !2587
  call void @llvm.dbg.value(metadata i64 %129, metadata !2507, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i64 %129, metadata !2507, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i64 %123, metadata !2516, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i64 %123, metadata !2516, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i64 %124, metadata !2517, metadata !DIExpression()), !dbg !2578
  call void @llvm.dbg.value(metadata i64 %124, metadata !2517, metadata !DIExpression()), !dbg !2578
  call void @llvm.dbg.value(metadata i8 %126, metadata !2523, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i8 %126, metadata !2523, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i8 %127, metadata !2524, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.value(metadata i8 %127, metadata !2524, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.value(metadata i8 %128, metadata !2525, metadata !DIExpression()), !dbg !2587
  call void @llvm.dbg.value(metadata i8 %128, metadata !2525, metadata !DIExpression()), !dbg !2587
  call void @llvm.dbg.value(metadata i64 %129, metadata !2507, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i64 %129, metadata !2507, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i64 %123, metadata !2516, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i64 %123, metadata !2516, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i64 %124, metadata !2517, metadata !DIExpression()), !dbg !2578
  call void @llvm.dbg.value(metadata i64 %124, metadata !2517, metadata !DIExpression()), !dbg !2578
  call void @llvm.dbg.value(metadata i8 %126, metadata !2523, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i8 %126, metadata !2523, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i8 %127, metadata !2524, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.value(metadata i8 %127, metadata !2524, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.value(metadata i8 %128, metadata !2525, metadata !DIExpression()), !dbg !2587
  call void @llvm.dbg.value(metadata i8 %128, metadata !2525, metadata !DIExpression()), !dbg !2587
  call void @llvm.dbg.value(metadata i64 %129, metadata !2507, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i64 %129, metadata !2507, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i64 %123, metadata !2516, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i64 %123, metadata !2516, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i64 %124, metadata !2517, metadata !DIExpression()), !dbg !2578
  call void @llvm.dbg.value(metadata i64 %124, metadata !2517, metadata !DIExpression()), !dbg !2578
  call void @llvm.dbg.value(metadata i8 %126, metadata !2523, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i8 %126, metadata !2523, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i8 %127, metadata !2524, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.value(metadata i8 %127, metadata !2524, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.value(metadata i8 %128, metadata !2525, metadata !DIExpression()), !dbg !2587
  call void @llvm.dbg.value(metadata i8 %128, metadata !2525, metadata !DIExpression()), !dbg !2587
  call void @llvm.dbg.value(metadata i64 %129, metadata !2507, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i64 %129, metadata !2507, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i64 %123, metadata !2516, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i64 %123, metadata !2516, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i64 %124, metadata !2517, metadata !DIExpression()), !dbg !2578
  call void @llvm.dbg.value(metadata i64 %124, metadata !2517, metadata !DIExpression()), !dbg !2578
  call void @llvm.dbg.value(metadata i64 %618, metadata !2509, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %618, metadata !2509, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8 %126, metadata !2523, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i8 %126, metadata !2523, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i8 %127, metadata !2524, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.value(metadata i8 %127, metadata !2524, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.value(metadata i8 %128, metadata !2525, metadata !DIExpression()), !dbg !2587
  call void @llvm.dbg.value(metadata i8 %128, metadata !2525, metadata !DIExpression()), !dbg !2587
  call void @llvm.dbg.value(metadata i64 %129, metadata !2507, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i64 %129, metadata !2507, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i64 %123, metadata !2516, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i64 %123, metadata !2516, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i64 %124, metadata !2517, metadata !DIExpression()), !dbg !2578
  call void @llvm.dbg.value(metadata i64 %124, metadata !2517, metadata !DIExpression()), !dbg !2578
  call void @llvm.dbg.value(metadata i64 %125, metadata !2509, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %125, metadata !2509, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8 %126, metadata !2523, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i8 %126, metadata !2523, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i8 %127, metadata !2524, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.value(metadata i8 %127, metadata !2524, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.value(metadata i8 %128, metadata !2525, metadata !DIExpression()), !dbg !2587
  call void @llvm.dbg.value(metadata i8 %128, metadata !2525, metadata !DIExpression()), !dbg !2587
  call void @llvm.dbg.value(metadata i64 %129, metadata !2507, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i64 %129, metadata !2507, metadata !DIExpression()), !dbg !2569
  %619 = icmp eq i64 %123, 0, !dbg !3007
  %620 = and i1 %114, %619, !dbg !3009
  %621 = xor i1 %620, true, !dbg !3009
  %622 = or i1 %110, %621, !dbg !3009
  br i1 %622, label %623, label %661, !dbg !3009

; <label>:623:                                    ; preds = %617
  %624 = and i1 %114, %110, !dbg !3010
  %625 = xor i1 %624, true, !dbg !3010
  %626 = and i8 %127, 1, !dbg !3012
  %627 = icmp eq i8 %626, 0, !dbg !3012
  %628 = or i1 %627, %625, !dbg !3010
  br i1 %628, label %638, label %629, !dbg !3010

; <label>:629:                                    ; preds = %623
  %630 = and i8 %128, 1, !dbg !3013
  %631 = icmp eq i8 %630, 0, !dbg !3013
  br i1 %631, label %634, label %632, !dbg !3016

; <label>:632:                                    ; preds = %629
  call void @llvm.dbg.value(metadata i64 %618, metadata !2509, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8* %95, metadata !2513, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata i8* %96, metadata !2514, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i64 %124, metadata !2517, metadata !DIExpression()), !dbg !2578
  call void @llvm.dbg.value(metadata i64 %618, metadata !2509, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8* %95, metadata !2513, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata i8* %96, metadata !2514, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i64 %124, metadata !2517, metadata !DIExpression()), !dbg !2578
  call void @llvm.dbg.value(metadata i64 %618, metadata !2509, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8* %95, metadata !2513, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata i8* %96, metadata !2514, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i64 %124, metadata !2517, metadata !DIExpression()), !dbg !2578
  call void @llvm.dbg.value(metadata i64 %618, metadata !2509, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8* %95, metadata !2513, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata i8* %96, metadata !2514, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i64 %124, metadata !2517, metadata !DIExpression()), !dbg !2578
  call void @llvm.dbg.value(metadata i8* %95, metadata !2513, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata i8* %96, metadata !2514, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i64 %124, metadata !2517, metadata !DIExpression()), !dbg !2578
  call void @llvm.dbg.value(metadata i64 %618, metadata !2509, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8* %95, metadata !2513, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata i8* %96, metadata !2514, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i64 %124, metadata !2517, metadata !DIExpression()), !dbg !2578
  call void @llvm.dbg.value(metadata i64 %125, metadata !2509, metadata !DIExpression()), !dbg !2571
  %633 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %618, i32 5, i32 %5, i32* %6, i8* %95, i8* %96), !dbg !3017
  br label %671, !dbg !3018

; <label>:634:                                    ; preds = %629
  %635 = icmp eq i64 %129, 0, !dbg !3019
  %636 = icmp ne i64 %124, 0, !dbg !3021
  %637 = and i1 %636, %635, !dbg !3022
  br i1 %637, label %27, label %638, !dbg !3022

; <label>:638:                                    ; preds = %623, %634
  call void @llvm.dbg.value(metadata i8* %98, metadata !2518, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i8* %98, metadata !2518, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i64 %123, metadata !2516, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i64 %123, metadata !2516, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i64 %129, metadata !2507, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i64 %129, metadata !2507, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i8* %98, metadata !2518, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i8* %98, metadata !2518, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i64 %123, metadata !2516, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i64 %123, metadata !2516, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i64 %129, metadata !2507, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i64 %129, metadata !2507, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i8* %98, metadata !2518, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i8* %98, metadata !2518, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i64 %123, metadata !2516, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i64 %123, metadata !2516, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i64 %129, metadata !2507, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i64 %129, metadata !2507, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i8* %98, metadata !2518, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i8* %98, metadata !2518, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i64 %123, metadata !2516, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i64 %123, metadata !2516, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i64 %129, metadata !2507, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i64 %129, metadata !2507, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i8* %98, metadata !2518, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i8* %98, metadata !2518, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i64 %123, metadata !2516, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i64 %123, metadata !2516, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i64 %129, metadata !2507, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i64 %129, metadata !2507, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i8* %98, metadata !2518, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i8* %98, metadata !2518, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i64 %123, metadata !2516, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i64 %123, metadata !2516, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i64 %129, metadata !2507, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i64 %129, metadata !2507, metadata !DIExpression()), !dbg !2569
  %639 = icmp ne i8* %98, null, !dbg !3023
  %640 = and i1 %639, %110, !dbg !3025
  br i1 %640, label %641, label %656, !dbg !3025

; <label>:641:                                    ; preds = %638
  call void @llvm.dbg.value(metadata i8* %98, metadata !2518, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i64 %123, metadata !2516, metadata !DIExpression()), !dbg !2577
  %642 = load i8, i8* %98, align 1, !dbg !3026, !tbaa !848
  %643 = icmp eq i8 %642, 0, !dbg !3029
  br i1 %643, label %656, label %644, !dbg !3029

; <label>:644:                                    ; preds = %641, %651
  %645 = phi i8 [ %654, %651 ], [ %642, %641 ]
  %646 = phi i8* [ %653, %651 ], [ %98, %641 ]
  %647 = phi i64 [ %652, %651 ], [ %123, %641 ]
  call void @llvm.dbg.value(metadata i8* %646, metadata !2518, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i64 %647, metadata !2516, metadata !DIExpression()), !dbg !2577
  %648 = icmp ult i64 %647, %129, !dbg !3030
  br i1 %648, label %649, label %651, !dbg !3033

; <label>:649:                                    ; preds = %644
  %650 = getelementptr inbounds i8, i8* %0, i64 %647, !dbg !3030
  store i8 %645, i8* %650, align 1, !dbg !3030, !tbaa !848
  br label %651, !dbg !3030

; <label>:651:                                    ; preds = %649, %644
  %652 = add i64 %647, 1, !dbg !3033
  %653 = getelementptr inbounds i8, i8* %646, i64 1, !dbg !3034
  call void @llvm.dbg.value(metadata i8* %653, metadata !2518, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i64 %652, metadata !2516, metadata !DIExpression()), !dbg !2577
  %654 = load i8, i8* %653, align 1, !dbg !3026, !tbaa !848
  %655 = icmp eq i8 %654, 0, !dbg !3029
  br i1 %655, label %656, label %644, !dbg !3029, !llvm.loop !3035

; <label>:656:                                    ; preds = %651, %641, %638
  %657 = phi i64 [ %123, %638 ], [ %123, %641 ], [ %652, %651 ], !dbg !2577
  call void @llvm.dbg.value(metadata i64 %657, metadata !2516, metadata !DIExpression()), !dbg !2577
  %658 = icmp ult i64 %657, %129, !dbg !3037
  br i1 %658, label %659, label %671, !dbg !3039

; <label>:659:                                    ; preds = %656
  %660 = getelementptr inbounds i8, i8* %0, i64 %657, !dbg !3040
  store i8 0, i8* %660, align 1, !dbg !3041, !tbaa !848
  br label %671, !dbg !3040

; <label>:661:                                    ; preds = %617, %524, %274, %271, %253, %251, %223, %209, %159, %146, %377, %358
  %662 = phi i32 [ 2, %358 ], [ %94, %377 ], [ %94, %146 ], [ %94, %159 ], [ 2, %209 ], [ 5, %223 ], [ 2, %251 ], [ 2, %253 ], [ 2, %271 ], [ 2, %274 ], [ %94, %524 ], [ %94, %617 ]
  %663 = phi i64 [ %311, %358 ], [ %360, %377 ], [ %144, %146 ], [ %154, %159 ], [ %154, %209 ], [ %154, %223 ], [ %154, %251 ], [ %154, %253 ], [ %154, %271 ], [ %154, %274 ], [ %528, %524 ], [ %618, %617 ]
  %664 = phi i64 [ %129, %358 ], [ %129, %377 ], [ %129, %146 ], [ %129, %159 ], [ %129, %209 ], [ %129, %223 ], [ %129, %251 ], [ %129, %253 ], [ %129, %271 ], [ %129, %274 ], [ %533, %524 ], [ %129, %617 ]
  call void @llvm.dbg.value(metadata i64 %664, metadata !2507, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i64 %663, metadata !2509, metadata !DIExpression()), !dbg !2571
  %665 = icmp ne i32 %662, 2, !dbg !3042
  %666 = icmp eq i8 %102, 0, !dbg !3044
  %667 = or i1 %665, %666, !dbg !3045
  call void @llvm.dbg.value(metadata i32 4, metadata !2510, metadata !DIExpression()), !dbg !2572
  %668 = select i1 %667, i32 %662, i32 4, !dbg !3045
  call void @llvm.dbg.value(metadata i32 %668, metadata !2510, metadata !DIExpression()), !dbg !2572
  %669 = and i32 %5, -3, !dbg !3046
  %670 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %664, i8* %2, i64 %663, i32 %668, i32 %669, i32* null, i8* %95, i8* %96), !dbg !3047
  br label %671, !dbg !3048

; <label>:671:                                    ; preds = %656, %659, %661, %632
  %672 = phi i64 [ %670, %661 ], [ %633, %632 ], [ %657, %659 ], [ %657, %656 ]
  ret i64 %672, !dbg !3049
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #7 !dbg !3050 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3054, metadata !DIExpression()), !dbg !3058
  call void @llvm.dbg.value(metadata i32 %1, metadata !3055, metadata !DIExpression()), !dbg !3059
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #12, !dbg !3060
  call void @llvm.dbg.value(metadata i8* %3, metadata !3056, metadata !DIExpression()), !dbg !3061
  %4 = icmp eq i8* %3, %0, !dbg !3062
  br i1 %4, label %5, label %71, !dbg !3064

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #12, !dbg !3065
  call void @llvm.dbg.value(metadata i8* %6, metadata !3057, metadata !DIExpression()), !dbg !3066
  call void @llvm.dbg.value(metadata i8* %6, metadata !3067, metadata !DIExpression()), !dbg !3083
  call void @llvm.dbg.value(metadata i8* null, metadata !3073, metadata !DIExpression()), !dbg !3086
  call void @llvm.dbg.value(metadata i8 85, metadata !3074, metadata !DIExpression()), !dbg !3087
  call void @llvm.dbg.value(metadata i8 84, metadata !3075, metadata !DIExpression()), !dbg !3088
  call void @llvm.dbg.value(metadata i8 70, metadata !3076, metadata !DIExpression()), !dbg !3089
  call void @llvm.dbg.value(metadata i8 45, metadata !3077, metadata !DIExpression()), !dbg !3090
  call void @llvm.dbg.value(metadata i8 56, metadata !3078, metadata !DIExpression()), !dbg !3091
  call void @llvm.dbg.value(metadata i8 0, metadata !3079, metadata !DIExpression()), !dbg !3092
  call void @llvm.dbg.value(metadata i8 0, metadata !3080, metadata !DIExpression()), !dbg !3093
  call void @llvm.dbg.value(metadata i8 0, metadata !3081, metadata !DIExpression()), !dbg !3094
  call void @llvm.dbg.value(metadata i8 0, metadata !3082, metadata !DIExpression()), !dbg !3095
  %7 = load i8, i8* %6, align 1, !dbg !3096, !tbaa !848
  %8 = and i8 %7, -33, !dbg !3096
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !3096

; <label>:9:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !3098, metadata !DIExpression()), !dbg !3112
  call void @llvm.dbg.value(metadata i8* null, metadata !3103, metadata !DIExpression()), !dbg !3116
  call void @llvm.dbg.value(metadata i8 84, metadata !3104, metadata !DIExpression()), !dbg !3117
  call void @llvm.dbg.value(metadata i8 70, metadata !3105, metadata !DIExpression()), !dbg !3118
  call void @llvm.dbg.value(metadata i8 45, metadata !3106, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i8 56, metadata !3107, metadata !DIExpression()), !dbg !3120
  call void @llvm.dbg.value(metadata i8 0, metadata !3108, metadata !DIExpression()), !dbg !3121
  call void @llvm.dbg.value(metadata i8 0, metadata !3109, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i8 0, metadata !3110, metadata !DIExpression()), !dbg !3123
  call void @llvm.dbg.value(metadata i8 0, metadata !3111, metadata !DIExpression()), !dbg !3124
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !3125
  %11 = load i8, i8* %10, align 1, !dbg !3125, !tbaa !848
  %12 = and i8 %11, -33, !dbg !3125
  %13 = icmp eq i8 %12, 84, !dbg !3125
  br i1 %13, label %14, label %68, !dbg !3125

; <label>:14:                                     ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !3127, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i8* null, metadata !3132, metadata !DIExpression()), !dbg !3144
  call void @llvm.dbg.value(metadata i8 70, metadata !3133, metadata !DIExpression()), !dbg !3145
  call void @llvm.dbg.value(metadata i8 45, metadata !3134, metadata !DIExpression()), !dbg !3146
  call void @llvm.dbg.value(metadata i8 56, metadata !3135, metadata !DIExpression()), !dbg !3147
  call void @llvm.dbg.value(metadata i8 0, metadata !3136, metadata !DIExpression()), !dbg !3148
  call void @llvm.dbg.value(metadata i8 0, metadata !3137, metadata !DIExpression()), !dbg !3149
  call void @llvm.dbg.value(metadata i8 0, metadata !3138, metadata !DIExpression()), !dbg !3150
  call void @llvm.dbg.value(metadata i8 0, metadata !3139, metadata !DIExpression()), !dbg !3151
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !3152
  %16 = load i8, i8* %15, align 1, !dbg !3152, !tbaa !848
  %17 = and i8 %16, -33, !dbg !3152
  %18 = icmp eq i8 %17, 70, !dbg !3152
  br i1 %18, label %19, label %68, !dbg !3152

; <label>:19:                                     ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !3154, metadata !DIExpression()), !dbg !3166
  call void @llvm.dbg.value(metadata i8* null, metadata !3159, metadata !DIExpression()), !dbg !3170
  call void @llvm.dbg.value(metadata i8 45, metadata !3160, metadata !DIExpression()), !dbg !3171
  call void @llvm.dbg.value(metadata i8 56, metadata !3161, metadata !DIExpression()), !dbg !3172
  call void @llvm.dbg.value(metadata i8 0, metadata !3162, metadata !DIExpression()), !dbg !3173
  call void @llvm.dbg.value(metadata i8 0, metadata !3163, metadata !DIExpression()), !dbg !3174
  call void @llvm.dbg.value(metadata i8 0, metadata !3164, metadata !DIExpression()), !dbg !3175
  call void @llvm.dbg.value(metadata i8 0, metadata !3165, metadata !DIExpression()), !dbg !3176
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !3177
  %21 = load i8, i8* %20, align 1, !dbg !3177, !tbaa !848
  %22 = icmp eq i8 %21, 45, !dbg !3177
  br i1 %22, label %23, label %68, !dbg !3179

; <label>:23:                                     ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !3180, metadata !DIExpression()), !dbg !3191
  call void @llvm.dbg.value(metadata i8* null, metadata !3185, metadata !DIExpression()), !dbg !3195
  call void @llvm.dbg.value(metadata i8 56, metadata !3186, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i8 0, metadata !3187, metadata !DIExpression()), !dbg !3197
  call void @llvm.dbg.value(metadata i8 0, metadata !3188, metadata !DIExpression()), !dbg !3198
  call void @llvm.dbg.value(metadata i8 0, metadata !3189, metadata !DIExpression()), !dbg !3199
  call void @llvm.dbg.value(metadata i8 0, metadata !3190, metadata !DIExpression()), !dbg !3200
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !3201
  %25 = load i8, i8* %24, align 1, !dbg !3201, !tbaa !848
  %26 = icmp eq i8 %25, 56, !dbg !3201
  br i1 %26, label %27, label %68, !dbg !3203

; <label>:27:                                     ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !3204, metadata !DIExpression()), !dbg !3214
  call void @llvm.dbg.value(metadata i8* null, metadata !3209, metadata !DIExpression()), !dbg !3218
  call void @llvm.dbg.value(metadata i8 0, metadata !3210, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i8 0, metadata !3211, metadata !DIExpression()), !dbg !3220
  call void @llvm.dbg.value(metadata i8 0, metadata !3212, metadata !DIExpression()), !dbg !3221
  call void @llvm.dbg.value(metadata i8 0, metadata !3213, metadata !DIExpression()), !dbg !3222
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !3223
  %29 = load i8, i8* %28, align 1, !dbg !3223, !tbaa !848
  %30 = icmp eq i8 %29, 0, !dbg !3223
  br i1 %30, label %31, label %68, !dbg !3225

; <label>:31:                                     ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !3226, !tbaa !848
  %33 = icmp eq i8 %32, 96, !dbg !3227
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.127, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.128, i64 0, i64 0), !dbg !3226
  br label %71, !dbg !3228

; <label>:35:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !3098, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i8* null, metadata !3103, metadata !DIExpression()), !dbg !3233
  call void @llvm.dbg.value(metadata i8 66, metadata !3104, metadata !DIExpression()), !dbg !3234
  call void @llvm.dbg.value(metadata i8 49, metadata !3105, metadata !DIExpression()), !dbg !3235
  call void @llvm.dbg.value(metadata i8 56, metadata !3106, metadata !DIExpression()), !dbg !3236
  call void @llvm.dbg.value(metadata i8 48, metadata !3107, metadata !DIExpression()), !dbg !3237
  call void @llvm.dbg.value(metadata i8 51, metadata !3108, metadata !DIExpression()), !dbg !3238
  call void @llvm.dbg.value(metadata i8 48, metadata !3109, metadata !DIExpression()), !dbg !3239
  call void @llvm.dbg.value(metadata i8 0, metadata !3110, metadata !DIExpression()), !dbg !3240
  call void @llvm.dbg.value(metadata i8 0, metadata !3111, metadata !DIExpression()), !dbg !3241
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !3242
  %37 = load i8, i8* %36, align 1, !dbg !3242, !tbaa !848
  %38 = and i8 %37, -33, !dbg !3242
  %39 = icmp eq i8 %38, 66, !dbg !3242
  br i1 %39, label %40, label %68, !dbg !3242

; <label>:40:                                     ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !3127, metadata !DIExpression()), !dbg !3243
  call void @llvm.dbg.value(metadata i8* null, metadata !3132, metadata !DIExpression()), !dbg !3245
  call void @llvm.dbg.value(metadata i8 49, metadata !3133, metadata !DIExpression()), !dbg !3246
  call void @llvm.dbg.value(metadata i8 56, metadata !3134, metadata !DIExpression()), !dbg !3247
  call void @llvm.dbg.value(metadata i8 48, metadata !3135, metadata !DIExpression()), !dbg !3248
  call void @llvm.dbg.value(metadata i8 51, metadata !3136, metadata !DIExpression()), !dbg !3249
  call void @llvm.dbg.value(metadata i8 48, metadata !3137, metadata !DIExpression()), !dbg !3250
  call void @llvm.dbg.value(metadata i8 0, metadata !3138, metadata !DIExpression()), !dbg !3251
  call void @llvm.dbg.value(metadata i8 0, metadata !3139, metadata !DIExpression()), !dbg !3252
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !3253
  %42 = load i8, i8* %41, align 1, !dbg !3253, !tbaa !848
  %43 = icmp eq i8 %42, 49, !dbg !3253
  br i1 %43, label %44, label %68, !dbg !3254

; <label>:44:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !3154, metadata !DIExpression()), !dbg !3255
  call void @llvm.dbg.value(metadata i8* null, metadata !3159, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata i8 56, metadata !3160, metadata !DIExpression()), !dbg !3258
  call void @llvm.dbg.value(metadata i8 48, metadata !3161, metadata !DIExpression()), !dbg !3259
  call void @llvm.dbg.value(metadata i8 51, metadata !3162, metadata !DIExpression()), !dbg !3260
  call void @llvm.dbg.value(metadata i8 48, metadata !3163, metadata !DIExpression()), !dbg !3261
  call void @llvm.dbg.value(metadata i8 0, metadata !3164, metadata !DIExpression()), !dbg !3262
  call void @llvm.dbg.value(metadata i8 0, metadata !3165, metadata !DIExpression()), !dbg !3263
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !3264
  %46 = load i8, i8* %45, align 1, !dbg !3264, !tbaa !848
  %47 = icmp eq i8 %46, 56, !dbg !3264
  br i1 %47, label %48, label %68, !dbg !3265

; <label>:48:                                     ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !3180, metadata !DIExpression()), !dbg !3266
  call void @llvm.dbg.value(metadata i8* null, metadata !3185, metadata !DIExpression()), !dbg !3268
  call void @llvm.dbg.value(metadata i8 48, metadata !3186, metadata !DIExpression()), !dbg !3269
  call void @llvm.dbg.value(metadata i8 51, metadata !3187, metadata !DIExpression()), !dbg !3270
  call void @llvm.dbg.value(metadata i8 48, metadata !3188, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata i8 0, metadata !3189, metadata !DIExpression()), !dbg !3272
  call void @llvm.dbg.value(metadata i8 0, metadata !3190, metadata !DIExpression()), !dbg !3273
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !3274
  %50 = load i8, i8* %49, align 1, !dbg !3274, !tbaa !848
  %51 = icmp eq i8 %50, 48, !dbg !3274
  br i1 %51, label %52, label %68, !dbg !3275

; <label>:52:                                     ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !3204, metadata !DIExpression()), !dbg !3276
  call void @llvm.dbg.value(metadata i8* null, metadata !3209, metadata !DIExpression()), !dbg !3278
  call void @llvm.dbg.value(metadata i8 51, metadata !3210, metadata !DIExpression()), !dbg !3279
  call void @llvm.dbg.value(metadata i8 48, metadata !3211, metadata !DIExpression()), !dbg !3280
  call void @llvm.dbg.value(metadata i8 0, metadata !3212, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.value(metadata i8 0, metadata !3213, metadata !DIExpression()), !dbg !3282
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !3283
  %54 = load i8, i8* %53, align 1, !dbg !3283, !tbaa !848
  %55 = icmp eq i8 %54, 51, !dbg !3283
  br i1 %55, label %56, label %68, !dbg !3284

; <label>:56:                                     ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !3285, metadata !DIExpression()), !dbg !3294
  call void @llvm.dbg.value(metadata i8* null, metadata !3290, metadata !DIExpression()), !dbg !3298
  call void @llvm.dbg.value(metadata i8 48, metadata !3291, metadata !DIExpression()), !dbg !3299
  call void @llvm.dbg.value(metadata i8 0, metadata !3292, metadata !DIExpression()), !dbg !3300
  call void @llvm.dbg.value(metadata i8 0, metadata !3293, metadata !DIExpression()), !dbg !3301
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !3302
  %58 = load i8, i8* %57, align 1, !dbg !3302, !tbaa !848
  %59 = icmp eq i8 %58, 48, !dbg !3302
  br i1 %59, label %60, label %68, !dbg !3304

; <label>:60:                                     ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !3305, metadata !DIExpression()), !dbg !3313
  call void @llvm.dbg.value(metadata i8* null, metadata !3310, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata i8 0, metadata !3311, metadata !DIExpression()), !dbg !3318
  call void @llvm.dbg.value(metadata i8 0, metadata !3312, metadata !DIExpression()), !dbg !3319
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !3320
  %62 = load i8, i8* %61, align 1, !dbg !3320, !tbaa !848
  %63 = icmp eq i8 %62, 0, !dbg !3320
  br i1 %63, label %64, label %68, !dbg !3322

; <label>:64:                                     ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !3323, !tbaa !848
  %66 = icmp eq i8 %65, 96, !dbg !3324
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.129, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.130, i64 0, i64 0), !dbg !3323
  br label %71, !dbg !3325

; <label>:68:                                     ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !3326
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.126, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.125, i64 0, i64 0), !dbg !3327
  br label %71, !dbg !3328

; <label>:71:                                     ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !3329
  ret i8* %72, !dbg !3330
}

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #7 !dbg !3331 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3335, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.value(metadata i64 %1, metadata !3336, metadata !DIExpression()), !dbg !3339
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3337, metadata !DIExpression()), !dbg !3340
  call void @llvm.dbg.value(metadata i8* %0, metadata !3341, metadata !DIExpression()) #12, !dbg !3354
  call void @llvm.dbg.value(metadata i64 %1, metadata !3346, metadata !DIExpression()) #12, !dbg !3356
  call void @llvm.dbg.value(metadata i64* null, metadata !3347, metadata !DIExpression()) #12, !dbg !3357
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3348, metadata !DIExpression()) #12, !dbg !3358
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !3359
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !3359
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3349, metadata !DIExpression()) #12, !dbg !3360
  %6 = tail call i32* @__errno_location() #17, !dbg !3361
  %7 = load i32, i32* %6, align 4, !dbg !3361, !tbaa !863
  call void @llvm.dbg.value(metadata i32 %7, metadata !3350, metadata !DIExpression()) #12, !dbg !3362
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3363
  %9 = load i32, i32* %8, align 4, !dbg !3363, !tbaa !2439
  %10 = or i32 %9, 1, !dbg !3364
  call void @llvm.dbg.value(metadata i32 %10, metadata !3351, metadata !DIExpression()) #12, !dbg !3365
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3366
  %12 = load i32, i32* %11, align 8, !dbg !3366, !tbaa !2380
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !3367
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3368
  %15 = load i8*, i8** %14, align 8, !dbg !3368, !tbaa !2465
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3369
  %17 = load i8*, i8** %16, align 8, !dbg !3369, !tbaa !2468
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #12, !dbg !3370
  %19 = add i64 %18, 1, !dbg !3371
  call void @llvm.dbg.value(metadata i64 %19, metadata !3352, metadata !DIExpression()) #12, !dbg !3372
  call void @llvm.dbg.value(metadata i64 %19, metadata !3373, metadata !DIExpression()) #12, !dbg !3378
  %20 = tail call noalias i8* @xmalloc(i64 %19) #12, !dbg !3380
  call void @llvm.dbg.value(metadata i8* %20, metadata !3353, metadata !DIExpression()) #12, !dbg !3381
  %21 = load i32, i32* %11, align 8, !dbg !3382, !tbaa !2380
  %22 = load i8*, i8** %14, align 8, !dbg !3383, !tbaa !2465
  %23 = load i8*, i8** %16, align 8, !dbg !3384, !tbaa !2468
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #12, !dbg !3385
  store i32 %7, i32* %6, align 4, !dbg !3386, !tbaa !863
  ret i8* %20, !dbg !3387
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #7 !dbg !3342 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3341, metadata !DIExpression()), !dbg !3388
  call void @llvm.dbg.value(metadata i64 %1, metadata !3346, metadata !DIExpression()), !dbg !3389
  call void @llvm.dbg.value(metadata i64* %2, metadata !3347, metadata !DIExpression()), !dbg !3390
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3348, metadata !DIExpression()), !dbg !3391
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !3392
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !3392
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3349, metadata !DIExpression()), !dbg !3393
  %7 = tail call i32* @__errno_location() #17, !dbg !3394
  %8 = load i32, i32* %7, align 4, !dbg !3394, !tbaa !863
  call void @llvm.dbg.value(metadata i32 %8, metadata !3350, metadata !DIExpression()), !dbg !3395
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3396
  %10 = load i32, i32* %9, align 4, !dbg !3396, !tbaa !2439
  %11 = icmp ne i64* %2, null, !dbg !3397
  %12 = xor i1 %11, true, !dbg !3397
  %13 = zext i1 %12 to i32, !dbg !3397
  %14 = or i32 %10, %13, !dbg !3398
  call void @llvm.dbg.value(metadata i32 %14, metadata !3351, metadata !DIExpression()), !dbg !3399
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3400
  %16 = load i32, i32* %15, align 8, !dbg !3400, !tbaa !2380
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !3401
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3402
  %19 = load i8*, i8** %18, align 8, !dbg !3402, !tbaa !2465
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3403
  %21 = load i8*, i8** %20, align 8, !dbg !3403, !tbaa !2468
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !3404
  %23 = add i64 %22, 1, !dbg !3405
  call void @llvm.dbg.value(metadata i64 %23, metadata !3352, metadata !DIExpression()), !dbg !3406
  call void @llvm.dbg.value(metadata i64 %23, metadata !3373, metadata !DIExpression()) #12, !dbg !3407
  %24 = tail call noalias i8* @xmalloc(i64 %23) #12, !dbg !3409
  call void @llvm.dbg.value(metadata i8* %24, metadata !3353, metadata !DIExpression()), !dbg !3410
  %25 = load i32, i32* %15, align 8, !dbg !3411, !tbaa !2380
  %26 = load i8*, i8** %18, align 8, !dbg !3412, !tbaa !2465
  %27 = load i8*, i8** %20, align 8, !dbg !3413, !tbaa !2468
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !3414
  store i32 %8, i32* %7, align 4, !dbg !3415, !tbaa !863
  br i1 %11, label %29, label %30, !dbg !3416

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !3417, !tbaa !843
  br label %30, !dbg !3419

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !3420
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #7 !dbg !3421 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3425, !tbaa !741
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !3423, metadata !DIExpression()), !dbg !3426
  call void @llvm.dbg.value(metadata i32 1, metadata !3424, metadata !DIExpression()), !dbg !3427
  %2 = load i32, i32* @nslots, align 4, !dbg !3428, !tbaa !863
  %3 = icmp sgt i32 %2, 1, !dbg !3431
  br i1 %3, label %4, label %12, !dbg !3432

; <label>:4:                                      ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !3424, metadata !DIExpression()), !dbg !3427
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !3433
  %7 = load i8*, i8** %6, align 8, !dbg !3433, !tbaa !3434
  tail call void @free(i8* %7) #12, !dbg !3436
  %8 = add nuw nsw i64 %5, 1, !dbg !3437
  call void @llvm.dbg.value(metadata i32 undef, metadata !3424, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3427
  %9 = load i32, i32* @nslots, align 4, !dbg !3428, !tbaa !863
  %10 = sext i32 %9 to i64, !dbg !3431
  %11 = icmp slt i64 %8, %10, !dbg !3431
  br i1 %11, label %4, label %12, !dbg !3432, !llvm.loop !3438

; <label>:12:                                     ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !3440
  %14 = load i8*, i8** %13, align 8, !dbg !3440, !tbaa !3434
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3442
  br i1 %15, label %17, label %16, !dbg !3443

; <label>:16:                                     ; preds = %12
  tail call void @free(i8* %14) #12, !dbg !3444
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !3446, !tbaa !3447
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !3448, !tbaa !3434
  br label %17, !dbg !3449

; <label>:17:                                     ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !3450
  br i1 %18, label %21, label %19, !dbg !3452

; <label>:19:                                     ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !3453
  tail call void @free(i8* %20) #12, !dbg !3455
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !3456, !tbaa !741
  br label %21, !dbg !3457

; <label>:21:                                     ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !3458, !tbaa !863
  ret void, !dbg !3459
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32, i8*) local_unnamed_addr #7 !dbg !3460 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3464, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.value(metadata i8* %1, metadata !3465, metadata !DIExpression()), !dbg !3467
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3468
  ret i8* %3, !dbg !3469
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #7 !dbg !3470 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3474, metadata !DIExpression()), !dbg !3489
  call void @llvm.dbg.value(metadata i8* %1, metadata !3475, metadata !DIExpression()), !dbg !3490
  call void @llvm.dbg.value(metadata i64 %2, metadata !3476, metadata !DIExpression()), !dbg !3491
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3477, metadata !DIExpression()), !dbg !3492
  %5 = tail call i32* @__errno_location() #17, !dbg !3493
  %6 = load i32, i32* %5, align 4, !dbg !3493, !tbaa !863
  call void @llvm.dbg.value(metadata i32 %6, metadata !3478, metadata !DIExpression()), !dbg !3494
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3495, !tbaa !741
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !3479, metadata !DIExpression()), !dbg !3496
  %8 = icmp slt i32 %0, 0, !dbg !3497
  br i1 %8, label %9, label %10, !dbg !3499

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !3500
  unreachable, !dbg !3500

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !3501, !tbaa !863
  %12 = icmp sgt i32 %11, %0, !dbg !3502
  br i1 %12, label %34, label %13, !dbg !3503

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !3504
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !3483, metadata !DIExpression()), !dbg !3505
  %15 = icmp eq i32 %0, 2147483647, !dbg !3506
  br i1 %15, label %16, label %17, !dbg !3508

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3509
  unreachable, !dbg !3509

; <label>:17:                                     ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !3510
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !3510
  %20 = add nsw i32 %0, 1, !dbg !3511
  %21 = sext i32 %20 to i64, !dbg !3512
  %22 = shl nsw i64 %21, 4, !dbg !3513
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #12, !dbg !3514
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !3514
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !3479, metadata !DIExpression()), !dbg !3496
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !3515, !tbaa !741
  br i1 %14, label %25, label %26, !dbg !3516

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !3517, !tbaa.struct !3519
  br label %26, !dbg !3520

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !3521, !tbaa !863
  %28 = sext i32 %27 to i64, !dbg !3522
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !3522
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !3523
  %31 = sub nsw i32 %20, %27, !dbg !3524
  %32 = sext i32 %31 to i64, !dbg !3525
  %33 = shl nsw i64 %32, 4, !dbg !3526
  tail call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 %33, i1 false), !dbg !3523
  store i32 %20, i32* @nslots, align 4, !dbg !3527, !tbaa !863
  br label %34, !dbg !3528

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !3529
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !3479, metadata !DIExpression()), !dbg !3496
  %36 = sext i32 %0 to i64, !dbg !3530
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !3531
  %38 = load i64, i64* %37, align 8, !dbg !3531, !tbaa !3447
  call void @llvm.dbg.value(metadata i64 %38, metadata !3484, metadata !DIExpression()), !dbg !3532
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !3533
  %40 = load i8*, i8** %39, align 8, !dbg !3533, !tbaa !3434
  call void @llvm.dbg.value(metadata i8* %40, metadata !3486, metadata !DIExpression()), !dbg !3534
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !3535
  %42 = load i32, i32* %41, align 4, !dbg !3535, !tbaa !2439
  %43 = or i32 %42, 1, !dbg !3536
  call void @llvm.dbg.value(metadata i32 %43, metadata !3487, metadata !DIExpression()), !dbg !3537
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3538
  %45 = load i32, i32* %44, align 8, !dbg !3538, !tbaa !2380
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3539
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3540
  %48 = load i8*, i8** %47, align 8, !dbg !3540, !tbaa !2465
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3541
  %50 = load i8*, i8** %49, align 8, !dbg !3541, !tbaa !2468
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !3542
  call void @llvm.dbg.value(metadata i64 %51, metadata !3488, metadata !DIExpression()), !dbg !3543
  %52 = icmp ugt i64 %38, %51, !dbg !3544
  br i1 %52, label %63, label %53, !dbg !3546

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !3547
  call void @llvm.dbg.value(metadata i64 %54, metadata !3484, metadata !DIExpression()), !dbg !3532
  store i64 %54, i64* %37, align 8, !dbg !3549, !tbaa !3447
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3550
  br i1 %55, label %57, label %56, !dbg !3552

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #12, !dbg !3553
  br label %57, !dbg !3553

; <label>:57:                                     ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !3373, metadata !DIExpression()) #12, !dbg !3554
  %58 = tail call noalias i8* @xmalloc(i64 %54) #12, !dbg !3556
  call void @llvm.dbg.value(metadata i8* %58, metadata !3486, metadata !DIExpression()), !dbg !3534
  store i8* %58, i8** %39, align 8, !dbg !3557, !tbaa !3434
  %59 = load i32, i32* %44, align 8, !dbg !3558, !tbaa !2380
  %60 = load i8*, i8** %47, align 8, !dbg !3559, !tbaa !2465
  %61 = load i8*, i8** %49, align 8, !dbg !3560, !tbaa !2468
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !3561
  br label %63, !dbg !3562

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !3563
  call void @llvm.dbg.value(metadata i8* %64, metadata !3486, metadata !DIExpression()), !dbg !3534
  store i32 %6, i32* %5, align 4, !dbg !3564, !tbaa !863
  ret i8* %64, !dbg !3565
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !3566 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3570, metadata !DIExpression()), !dbg !3573
  call void @llvm.dbg.value(metadata i8* %1, metadata !3571, metadata !DIExpression()), !dbg !3574
  call void @llvm.dbg.value(metadata i64 %2, metadata !3572, metadata !DIExpression()), !dbg !3575
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3576
  ret i8* %4, !dbg !3577
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8*) local_unnamed_addr #7 !dbg !3578 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3582, metadata !DIExpression()), !dbg !3583
  call void @llvm.dbg.value(metadata i32 0, metadata !3464, metadata !DIExpression()) #12, !dbg !3584
  call void @llvm.dbg.value(metadata i8* %0, metadata !3465, metadata !DIExpression()) #12, !dbg !3586
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #12, !dbg !3587
  ret i8* %2, !dbg !3588
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8*, i64) local_unnamed_addr #7 !dbg !3589 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3593, metadata !DIExpression()), !dbg !3595
  call void @llvm.dbg.value(metadata i64 %1, metadata !3594, metadata !DIExpression()), !dbg !3596
  call void @llvm.dbg.value(metadata i32 0, metadata !3570, metadata !DIExpression()) #12, !dbg !3597
  call void @llvm.dbg.value(metadata i8* %0, metadata !3571, metadata !DIExpression()) #12, !dbg !3599
  call void @llvm.dbg.value(metadata i64 %1, metadata !3572, metadata !DIExpression()) #12, !dbg !3600
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #12, !dbg !3601
  ret i8* %3, !dbg !3602
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #7 !dbg !3603 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3607, metadata !DIExpression()), !dbg !3611
  call void @llvm.dbg.value(metadata i32 %1, metadata !3608, metadata !DIExpression()), !dbg !3612
  call void @llvm.dbg.value(metadata i8* %2, metadata !3609, metadata !DIExpression()), !dbg !3613
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3614
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !3614
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3610, metadata !DIExpression(DW_OP_deref)), !dbg !3615
  call void @llvm.dbg.value(metadata i32 %1, metadata !3616, metadata !DIExpression()) #12, !dbg !3622
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #12, !dbg !3624, !alias.scope !3625
  %6 = icmp eq i32 %1, 10, !dbg !3628
  br i1 %6, label %7, label %8, !dbg !3630

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !3631, !noalias !3625
  unreachable, !dbg !3631

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3632
  store i32 %1, i32* %9, align 8, !dbg !3633, !tbaa !2380, !alias.scope !3625
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3610, metadata !DIExpression(DW_OP_deref)), !dbg !3615
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3621, metadata !DIExpression(DW_OP_deref)), !dbg !3624
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3634
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !3635
  ret i8* %10, !dbg !3636
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #7 !dbg !3637 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3641, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata i32 %1, metadata !3642, metadata !DIExpression()), !dbg !3647
  call void @llvm.dbg.value(metadata i8* %2, metadata !3643, metadata !DIExpression()), !dbg !3648
  call void @llvm.dbg.value(metadata i64 %3, metadata !3644, metadata !DIExpression()), !dbg !3649
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3650
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3650
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3645, metadata !DIExpression(DW_OP_deref)), !dbg !3651
  call void @llvm.dbg.value(metadata i32 %1, metadata !3616, metadata !DIExpression()) #12, !dbg !3652
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %6, i8 0, i64 56, i1 false) #12, !dbg !3654, !alias.scope !3655
  %7 = icmp eq i32 %1, 10, !dbg !3658
  br i1 %7, label %8, label %9, !dbg !3659

; <label>:8:                                      ; preds = %4
  tail call void @abort() #15, !dbg !3660, !noalias !3655
  unreachable, !dbg !3660

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3661
  store i32 %1, i32* %10, align 8, !dbg !3662, !tbaa !2380, !alias.scope !3655
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3645, metadata !DIExpression(DW_OP_deref)), !dbg !3651
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3621, metadata !DIExpression(DW_OP_deref)), !dbg !3654
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !3663
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3664
  ret i8* %11, !dbg !3665
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32, i8*) local_unnamed_addr #7 !dbg !3666 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3670, metadata !DIExpression()), !dbg !3672
  call void @llvm.dbg.value(metadata i8* %1, metadata !3671, metadata !DIExpression()), !dbg !3673
  call void @llvm.dbg.value(metadata i32 0, metadata !3607, metadata !DIExpression()) #12, !dbg !3674
  call void @llvm.dbg.value(metadata i32 %0, metadata !3608, metadata !DIExpression()) #12, !dbg !3676
  call void @llvm.dbg.value(metadata i8* %1, metadata !3609, metadata !DIExpression()) #12, !dbg !3677
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3678
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #12, !dbg !3678
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3610, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3679
  call void @llvm.dbg.value(metadata i32 %0, metadata !3616, metadata !DIExpression()) #12, !dbg !3680
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %4, i8 0, i64 56, i1 false) #12, !dbg !3682, !alias.scope !3683
  %5 = icmp eq i32 %0, 10, !dbg !3686
  br i1 %5, label %6, label %7, !dbg !3687

; <label>:6:                                      ; preds = %2
  tail call void @abort() #15, !dbg !3688, !noalias !3683
  unreachable, !dbg !3688

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3689
  store i32 %0, i32* %8, align 8, !dbg !3690, !tbaa !2380, !alias.scope !3683
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3610, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3679
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3621, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3682
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #12, !dbg !3691
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #12, !dbg !3692
  ret i8* %9, !dbg !3693
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !3694 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3698, metadata !DIExpression()), !dbg !3701
  call void @llvm.dbg.value(metadata i8* %1, metadata !3699, metadata !DIExpression()), !dbg !3702
  call void @llvm.dbg.value(metadata i64 %2, metadata !3700, metadata !DIExpression()), !dbg !3703
  call void @llvm.dbg.value(metadata i32 0, metadata !3641, metadata !DIExpression()) #12, !dbg !3704
  call void @llvm.dbg.value(metadata i32 %0, metadata !3642, metadata !DIExpression()) #12, !dbg !3706
  call void @llvm.dbg.value(metadata i8* %1, metadata !3643, metadata !DIExpression()) #12, !dbg !3707
  call void @llvm.dbg.value(metadata i64 %2, metadata !3644, metadata !DIExpression()) #12, !dbg !3708
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3709
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !3709
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3645, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3710
  call void @llvm.dbg.value(metadata i32 %0, metadata !3616, metadata !DIExpression()) #12, !dbg !3711
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #12, !dbg !3713, !alias.scope !3714
  %6 = icmp eq i32 %0, 10, !dbg !3717
  br i1 %6, label %7, label %8, !dbg !3718

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !3719, !noalias !3714
  unreachable, !dbg !3719

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3720
  store i32 %0, i32* %9, align 8, !dbg !3721, !tbaa !2380, !alias.scope !3714
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3645, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3710
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3621, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3713
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #12, !dbg !3722
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !3723
  ret i8* %10, !dbg !3724
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #7 !dbg !3725 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3729, metadata !DIExpression()), !dbg !3733
  call void @llvm.dbg.value(metadata i64 %1, metadata !3730, metadata !DIExpression()), !dbg !3734
  call void @llvm.dbg.value(metadata i8 %2, metadata !3731, metadata !DIExpression()), !dbg !3735
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3736
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !3736
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3737, !tbaa.struct !3738
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3732, metadata !DIExpression(DW_OP_deref)), !dbg !3739
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2399, metadata !DIExpression()), !dbg !3740
  call void @llvm.dbg.value(metadata i8 %2, metadata !2400, metadata !DIExpression()), !dbg !3742
  call void @llvm.dbg.value(metadata i32 1, metadata !2401, metadata !DIExpression()), !dbg !3743
  call void @llvm.dbg.value(metadata i8 %2, metadata !2402, metadata !DIExpression()), !dbg !3744
  %6 = lshr i8 %2, 5, !dbg !3745
  %7 = zext i8 %6 to i64, !dbg !3745
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3746
  call void @llvm.dbg.value(metadata i32* %8, metadata !2403, metadata !DIExpression()), !dbg !3747
  %9 = and i8 %2, 31, !dbg !3748
  %10 = zext i8 %9 to i32, !dbg !3748
  call void @llvm.dbg.value(metadata i32 %10, metadata !2405, metadata !DIExpression()), !dbg !3749
  %11 = load i32, i32* %8, align 4, !dbg !3750, !tbaa !863
  %12 = lshr i32 %11, %10, !dbg !3751
  %13 = and i32 %12, 1, !dbg !3752
  call void @llvm.dbg.value(metadata i32 %13, metadata !2406, metadata !DIExpression()), !dbg !3753
  %14 = xor i32 %13, 1, !dbg !3754
  %15 = shl i32 %14, %10, !dbg !3755
  %16 = xor i32 %15, %11, !dbg !3756
  store i32 %16, i32* %8, align 4, !dbg !3756, !tbaa !863
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3732, metadata !DIExpression(DW_OP_deref)), !dbg !3739
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3757
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !3758
  ret i8* %17, !dbg !3759
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #7 !dbg !3760 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3764, metadata !DIExpression()), !dbg !3766
  call void @llvm.dbg.value(metadata i8 %1, metadata !3765, metadata !DIExpression()), !dbg !3767
  call void @llvm.dbg.value(metadata i8* %0, metadata !3729, metadata !DIExpression()) #12, !dbg !3768
  call void @llvm.dbg.value(metadata i64 -1, metadata !3730, metadata !DIExpression()) #12, !dbg !3770
  call void @llvm.dbg.value(metadata i8 %1, metadata !3731, metadata !DIExpression()) #12, !dbg !3771
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3772
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #12, !dbg !3772
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !3773, !tbaa.struct !3738
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3732, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3774
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2399, metadata !DIExpression()) #12, !dbg !3775
  call void @llvm.dbg.value(metadata i8 %1, metadata !2400, metadata !DIExpression()) #12, !dbg !3777
  call void @llvm.dbg.value(metadata i32 1, metadata !2401, metadata !DIExpression()) #12, !dbg !3778
  call void @llvm.dbg.value(metadata i8 %1, metadata !2402, metadata !DIExpression()) #12, !dbg !3779
  %5 = lshr i8 %1, 5, !dbg !3780
  %6 = zext i8 %5 to i64, !dbg !3780
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3781
  call void @llvm.dbg.value(metadata i32* %7, metadata !2403, metadata !DIExpression()) #12, !dbg !3782
  %8 = and i8 %1, 31, !dbg !3783
  %9 = zext i8 %8 to i32, !dbg !3783
  call void @llvm.dbg.value(metadata i32 %9, metadata !2405, metadata !DIExpression()) #12, !dbg !3784
  %10 = load i32, i32* %7, align 4, !dbg !3785, !tbaa !863
  %11 = lshr i32 %10, %9, !dbg !3786
  %12 = and i32 %11, 1, !dbg !3787
  call void @llvm.dbg.value(metadata i32 %12, metadata !2406, metadata !DIExpression()) #12, !dbg !3788
  %13 = xor i32 %12, 1, !dbg !3789
  %14 = shl i32 %13, %9, !dbg !3790
  %15 = xor i32 %14, %10, !dbg !3791
  store i32 %15, i32* %7, align 4, !dbg !3791, !tbaa !863
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3732, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3774
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #12, !dbg !3792
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #12, !dbg !3793
  ret i8* %16, !dbg !3794
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8*) local_unnamed_addr #7 !dbg !3795 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3797, metadata !DIExpression()), !dbg !3798
  call void @llvm.dbg.value(metadata i8* %0, metadata !3764, metadata !DIExpression()) #12, !dbg !3799
  call void @llvm.dbg.value(metadata i8 58, metadata !3765, metadata !DIExpression()) #12, !dbg !3801
  call void @llvm.dbg.value(metadata i8* %0, metadata !3729, metadata !DIExpression()) #12, !dbg !3802
  call void @llvm.dbg.value(metadata i64 -1, metadata !3730, metadata !DIExpression()) #12, !dbg !3804
  call void @llvm.dbg.value(metadata i8 58, metadata !3731, metadata !DIExpression()) #12, !dbg !3805
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3806
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #12, !dbg !3806
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !3807, !tbaa.struct !3738
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3732, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3808
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2399, metadata !DIExpression()) #12, !dbg !3809
  call void @llvm.dbg.value(metadata i8 58, metadata !2400, metadata !DIExpression()) #12, !dbg !3811
  call void @llvm.dbg.value(metadata i32 1, metadata !2401, metadata !DIExpression()) #12, !dbg !3812
  call void @llvm.dbg.value(metadata i8 58, metadata !2402, metadata !DIExpression()) #12, !dbg !3813
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3814
  call void @llvm.dbg.value(metadata i32* %4, metadata !2403, metadata !DIExpression()) #12, !dbg !3815
  call void @llvm.dbg.value(metadata i32 26, metadata !2405, metadata !DIExpression()) #12, !dbg !3816
  %5 = load i32, i32* %4, align 4, !dbg !3817, !tbaa !863
  %6 = or i32 %5, 67108864, !dbg !3818
  store i32 %6, i32* %4, align 4, !dbg !3818, !tbaa !863
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3732, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3808
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #12, !dbg !3819
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #12, !dbg !3820
  ret i8* %7, !dbg !3821
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #7 !dbg !3822 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3824, metadata !DIExpression()), !dbg !3826
  call void @llvm.dbg.value(metadata i64 %1, metadata !3825, metadata !DIExpression()), !dbg !3827
  call void @llvm.dbg.value(metadata i8* %0, metadata !3729, metadata !DIExpression()) #12, !dbg !3828
  call void @llvm.dbg.value(metadata i64 %1, metadata !3730, metadata !DIExpression()) #12, !dbg !3830
  call void @llvm.dbg.value(metadata i8 58, metadata !3731, metadata !DIExpression()) #12, !dbg !3831
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3832
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #12, !dbg !3832
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !3833, !tbaa.struct !3738
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3732, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3834
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2399, metadata !DIExpression()) #12, !dbg !3835
  call void @llvm.dbg.value(metadata i8 58, metadata !2400, metadata !DIExpression()) #12, !dbg !3837
  call void @llvm.dbg.value(metadata i32 1, metadata !2401, metadata !DIExpression()) #12, !dbg !3838
  call void @llvm.dbg.value(metadata i8 58, metadata !2402, metadata !DIExpression()) #12, !dbg !3839
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3840
  call void @llvm.dbg.value(metadata i32* %5, metadata !2403, metadata !DIExpression()) #12, !dbg !3841
  call void @llvm.dbg.value(metadata i32 26, metadata !2405, metadata !DIExpression()) #12, !dbg !3842
  %6 = load i32, i32* %5, align 4, !dbg !3843, !tbaa !863
  %7 = or i32 %6, 67108864, !dbg !3844
  store i32 %7, i32* %5, align 4, !dbg !3844, !tbaa !863
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3732, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3834
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #12, !dbg !3845
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #12, !dbg !3846
  ret i8* %8, !dbg !3847
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #7 !dbg !3848 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !3621, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3854
  call void @llvm.dbg.value(metadata i32 %0, metadata !3850, metadata !DIExpression()), !dbg !3856
  call void @llvm.dbg.value(metadata i32 %1, metadata !3851, metadata !DIExpression()), !dbg !3857
  call void @llvm.dbg.value(metadata i8* %2, metadata !3852, metadata !DIExpression()), !dbg !3858
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3859
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3859
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3860
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3860
  call void @llvm.dbg.value(metadata i32 %1, metadata !3616, metadata !DIExpression()) #12, !dbg !3861
  call void @llvm.dbg.value(metadata i32 0, metadata !3621, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3854
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 %7, i8 0, i64 52, i1 false), !dbg !3854, !alias.scope !3862
  %8 = icmp eq i32 %1, 10, !dbg !3865
  br i1 %8, label %9, label %10, !dbg !3866

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !3867, !noalias !3862
  unreachable, !dbg !3867

; <label>:10:                                     ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3621, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3854
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3860
  store i32 %1, i32* %11, align 8, !dbg !3860
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3860
  %13 = bitcast i32* %12 to i8*, !dbg !3860
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %13, i8* nonnull align 4 %7, i64 52, i1 false), !dbg !3860
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3860
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3853, metadata !DIExpression(DW_OP_deref)), !dbg !3868
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2399, metadata !DIExpression()), !dbg !3869
  call void @llvm.dbg.value(metadata i8 58, metadata !2400, metadata !DIExpression()), !dbg !3871
  call void @llvm.dbg.value(metadata i32 1, metadata !2401, metadata !DIExpression()), !dbg !3872
  call void @llvm.dbg.value(metadata i8 58, metadata !2402, metadata !DIExpression()), !dbg !3873
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3874
  call void @llvm.dbg.value(metadata i32* %14, metadata !2403, metadata !DIExpression()), !dbg !3875
  call void @llvm.dbg.value(metadata i32 26, metadata !2405, metadata !DIExpression()), !dbg !3876
  %15 = load i32, i32* %14, align 4, !dbg !3877, !tbaa !863
  %16 = or i32 %15, 67108864, !dbg !3878
  store i32 %16, i32* %14, align 4, !dbg !3878, !tbaa !863
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3853, metadata !DIExpression(DW_OP_deref)), !dbg !3868
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3879
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3880
  ret i8* %17, !dbg !3881
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #7 !dbg !3882 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3886, metadata !DIExpression()), !dbg !3890
  call void @llvm.dbg.value(metadata i8* %1, metadata !3887, metadata !DIExpression()), !dbg !3891
  call void @llvm.dbg.value(metadata i8* %2, metadata !3888, metadata !DIExpression()), !dbg !3892
  call void @llvm.dbg.value(metadata i8* %3, metadata !3889, metadata !DIExpression()), !dbg !3893
  call void @llvm.dbg.value(metadata i32 %0, metadata !3894, metadata !DIExpression()) #12, !dbg !3904
  call void @llvm.dbg.value(metadata i8* %1, metadata !3899, metadata !DIExpression()) #12, !dbg !3906
  call void @llvm.dbg.value(metadata i8* %2, metadata !3900, metadata !DIExpression()) #12, !dbg !3907
  call void @llvm.dbg.value(metadata i8* %3, metadata !3901, metadata !DIExpression()) #12, !dbg !3908
  call void @llvm.dbg.value(metadata i64 -1, metadata !3902, metadata !DIExpression()) #12, !dbg !3909
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3910
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3910
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !3911, !tbaa.struct !3738
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3903, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3912
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2447, metadata !DIExpression()) #12, !dbg !3913
  call void @llvm.dbg.value(metadata i8* %1, metadata !2448, metadata !DIExpression()) #12, !dbg !3915
  call void @llvm.dbg.value(metadata i8* %2, metadata !2449, metadata !DIExpression()) #12, !dbg !3916
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2447, metadata !DIExpression()) #12, !dbg !3913
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3917
  store i32 10, i32* %7, align 8, !dbg !3918, !tbaa !2380
  %8 = icmp ne i8* %1, null, !dbg !3919
  %9 = icmp ne i8* %2, null, !dbg !3920
  %10 = and i1 %8, %9, !dbg !3921
  br i1 %10, label %12, label %11, !dbg !3921

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3922
  unreachable, !dbg !3922

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3923
  store i8* %1, i8** %13, align 8, !dbg !3924, !tbaa !2465
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3925
  store i8* %2, i8** %14, align 8, !dbg !3926, !tbaa !2468
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3903, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3912
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #12, !dbg !3927
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3928
  ret i8* %15, !dbg !3929
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !3895 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3894, metadata !DIExpression()), !dbg !3930
  call void @llvm.dbg.value(metadata i8* %1, metadata !3899, metadata !DIExpression()), !dbg !3931
  call void @llvm.dbg.value(metadata i8* %2, metadata !3900, metadata !DIExpression()), !dbg !3932
  call void @llvm.dbg.value(metadata i8* %3, metadata !3901, metadata !DIExpression()), !dbg !3933
  call void @llvm.dbg.value(metadata i64 %4, metadata !3902, metadata !DIExpression()), !dbg !3934
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3935
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #12, !dbg !3935
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %7, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3936, !tbaa.struct !3738
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3903, metadata !DIExpression(DW_OP_deref)), !dbg !3937
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2447, metadata !DIExpression()) #12, !dbg !3938
  call void @llvm.dbg.value(metadata i8* %1, metadata !2448, metadata !DIExpression()) #12, !dbg !3940
  call void @llvm.dbg.value(metadata i8* %2, metadata !2449, metadata !DIExpression()) #12, !dbg !3941
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2447, metadata !DIExpression()) #12, !dbg !3938
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3942
  store i32 10, i32* %8, align 8, !dbg !3943, !tbaa !2380
  %9 = icmp ne i8* %1, null, !dbg !3944
  %10 = icmp ne i8* %2, null, !dbg !3945
  %11 = and i1 %9, %10, !dbg !3946
  br i1 %11, label %13, label %12, !dbg !3946

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !3947
  unreachable, !dbg !3947

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3948
  store i8* %1, i8** %14, align 8, !dbg !3949, !tbaa !2465
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3950
  store i8* %2, i8** %15, align 8, !dbg !3951, !tbaa !2468
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3903, metadata !DIExpression(DW_OP_deref)), !dbg !3937
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3952
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #12, !dbg !3953
  ret i8* %16, !dbg !3954
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #7 !dbg !3955 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3959, metadata !DIExpression()), !dbg !3962
  call void @llvm.dbg.value(metadata i8* %1, metadata !3960, metadata !DIExpression()), !dbg !3963
  call void @llvm.dbg.value(metadata i8* %2, metadata !3961, metadata !DIExpression()), !dbg !3964
  call void @llvm.dbg.value(metadata i32 0, metadata !3886, metadata !DIExpression()) #12, !dbg !3965
  call void @llvm.dbg.value(metadata i8* %0, metadata !3887, metadata !DIExpression()) #12, !dbg !3967
  call void @llvm.dbg.value(metadata i8* %1, metadata !3888, metadata !DIExpression()) #12, !dbg !3968
  call void @llvm.dbg.value(metadata i8* %2, metadata !3889, metadata !DIExpression()) #12, !dbg !3969
  call void @llvm.dbg.value(metadata i32 0, metadata !3894, metadata !DIExpression()) #12, !dbg !3970
  call void @llvm.dbg.value(metadata i8* %0, metadata !3899, metadata !DIExpression()) #12, !dbg !3972
  call void @llvm.dbg.value(metadata i8* %1, metadata !3900, metadata !DIExpression()) #12, !dbg !3973
  call void @llvm.dbg.value(metadata i8* %2, metadata !3901, metadata !DIExpression()) #12, !dbg !3974
  call void @llvm.dbg.value(metadata i64 -1, metadata !3902, metadata !DIExpression()) #12, !dbg !3975
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3976
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !3976
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !3977, !tbaa.struct !3738
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3903, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3978
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2447, metadata !DIExpression()) #12, !dbg !3979
  call void @llvm.dbg.value(metadata i8* %0, metadata !2448, metadata !DIExpression()) #12, !dbg !3981
  call void @llvm.dbg.value(metadata i8* %1, metadata !2449, metadata !DIExpression()) #12, !dbg !3982
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2447, metadata !DIExpression()) #12, !dbg !3979
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3983
  store i32 10, i32* %6, align 8, !dbg !3984, !tbaa !2380
  %7 = icmp ne i8* %0, null, !dbg !3985
  %8 = icmp ne i8* %1, null, !dbg !3986
  %9 = and i1 %7, %8, !dbg !3987
  br i1 %9, label %11, label %10, !dbg !3987

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !3988
  unreachable, !dbg !3988

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3989
  store i8* %0, i8** %12, align 8, !dbg !3990, !tbaa !2465
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3991
  store i8* %1, i8** %13, align 8, !dbg !3992, !tbaa !2468
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3903, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3978
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #12, !dbg !3993
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !3994
  ret i8* %14, !dbg !3995
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !3996 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !4000, metadata !DIExpression()), !dbg !4004
  call void @llvm.dbg.value(metadata i8* %1, metadata !4001, metadata !DIExpression()), !dbg !4005
  call void @llvm.dbg.value(metadata i8* %2, metadata !4002, metadata !DIExpression()), !dbg !4006
  call void @llvm.dbg.value(metadata i64 %3, metadata !4003, metadata !DIExpression()), !dbg !4007
  call void @llvm.dbg.value(metadata i32 0, metadata !3894, metadata !DIExpression()) #12, !dbg !4008
  call void @llvm.dbg.value(metadata i8* %0, metadata !3899, metadata !DIExpression()) #12, !dbg !4010
  call void @llvm.dbg.value(metadata i8* %1, metadata !3900, metadata !DIExpression()) #12, !dbg !4011
  call void @llvm.dbg.value(metadata i8* %2, metadata !3901, metadata !DIExpression()) #12, !dbg !4012
  call void @llvm.dbg.value(metadata i64 %3, metadata !3902, metadata !DIExpression()) #12, !dbg !4013
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !4014
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !4014
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !4015, !tbaa.struct !3738
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3903, metadata !DIExpression(DW_OP_deref)) #12, !dbg !4016
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2447, metadata !DIExpression()) #12, !dbg !4017
  call void @llvm.dbg.value(metadata i8* %0, metadata !2448, metadata !DIExpression()) #12, !dbg !4019
  call void @llvm.dbg.value(metadata i8* %1, metadata !2449, metadata !DIExpression()) #12, !dbg !4020
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2447, metadata !DIExpression()) #12, !dbg !4017
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4021
  store i32 10, i32* %7, align 8, !dbg !4022, !tbaa !2380
  %8 = icmp ne i8* %0, null, !dbg !4023
  %9 = icmp ne i8* %1, null, !dbg !4024
  %10 = and i1 %8, %9, !dbg !4025
  br i1 %10, label %12, label %11, !dbg !4025

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !4026
  unreachable, !dbg !4026

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !4027
  store i8* %0, i8** %13, align 8, !dbg !4028, !tbaa !2465
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !4029
  store i8* %1, i8** %14, align 8, !dbg !4030, !tbaa !2468
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3903, metadata !DIExpression(DW_OP_deref)) #12, !dbg !4016
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #12, !dbg !4031
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !4032
  ret i8* %15, !dbg !4033
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !4034 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4038, metadata !DIExpression()), !dbg !4041
  call void @llvm.dbg.value(metadata i8* %1, metadata !4039, metadata !DIExpression()), !dbg !4042
  call void @llvm.dbg.value(metadata i64 %2, metadata !4040, metadata !DIExpression()), !dbg !4043
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !4044
  ret i8* %4, !dbg !4045
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8*, i64) local_unnamed_addr #7 !dbg !4046 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4050, metadata !DIExpression()), !dbg !4052
  call void @llvm.dbg.value(metadata i64 %1, metadata !4051, metadata !DIExpression()), !dbg !4053
  call void @llvm.dbg.value(metadata i32 0, metadata !4038, metadata !DIExpression()) #12, !dbg !4054
  call void @llvm.dbg.value(metadata i8* %0, metadata !4039, metadata !DIExpression()) #12, !dbg !4056
  call void @llvm.dbg.value(metadata i64 %1, metadata !4040, metadata !DIExpression()) #12, !dbg !4057
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !4058
  ret i8* %3, !dbg !4059
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32, i8*) local_unnamed_addr #7 !dbg !4060 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4064, metadata !DIExpression()), !dbg !4066
  call void @llvm.dbg.value(metadata i8* %1, metadata !4065, metadata !DIExpression()), !dbg !4067
  call void @llvm.dbg.value(metadata i32 %0, metadata !4038, metadata !DIExpression()) #12, !dbg !4068
  call void @llvm.dbg.value(metadata i8* %1, metadata !4039, metadata !DIExpression()) #12, !dbg !4070
  call void @llvm.dbg.value(metadata i64 -1, metadata !4040, metadata !DIExpression()) #12, !dbg !4071
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !4072
  ret i8* %3, !dbg !4073
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8*) local_unnamed_addr #7 !dbg !4074 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4078, metadata !DIExpression()), !dbg !4079
  call void @llvm.dbg.value(metadata i32 0, metadata !4064, metadata !DIExpression()) #12, !dbg !4080
  call void @llvm.dbg.value(metadata i8* %0, metadata !4065, metadata !DIExpression()) #12, !dbg !4082
  call void @llvm.dbg.value(metadata i32 0, metadata !4038, metadata !DIExpression()) #12, !dbg !4083
  call void @llvm.dbg.value(metadata i8* %0, metadata !4039, metadata !DIExpression()) #12, !dbg !4085
  call void @llvm.dbg.value(metadata i64 -1, metadata !4040, metadata !DIExpression()) #12, !dbg !4086
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !4087
  ret i8* %2, !dbg !4088
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #7 !dbg !4089 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4127, metadata !DIExpression()), !dbg !4133
  call void @llvm.dbg.value(metadata i8* %1, metadata !4128, metadata !DIExpression()), !dbg !4134
  call void @llvm.dbg.value(metadata i8* %2, metadata !4129, metadata !DIExpression()), !dbg !4135
  call void @llvm.dbg.value(metadata i8* %3, metadata !4130, metadata !DIExpression()), !dbg !4136
  call void @llvm.dbg.value(metadata i8** %4, metadata !4131, metadata !DIExpression()), !dbg !4137
  call void @llvm.dbg.value(metadata i64 %5, metadata !4132, metadata !DIExpression()), !dbg !4138
  %7 = icmp eq i8* %1, null, !dbg !4139
  br i1 %7, label %10, label %8, !dbg !4141

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.143, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #12, !dbg !4142
  br label %12, !dbg !4142

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.144, i64 0, i64 0), i8* %2, i8* %3) #12, !dbg !4143
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.145, i64 0, i64 0), i32 5) #12, !dbg !4144
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2018) #12, !dbg !4144
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([204 x i8], [204 x i8]* @.str.3.146, i64 0, i64 0), i32 5) #12, !dbg !4145
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0), !dbg !4145
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
  ], !dbg !4146

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !4147
  unreachable, !dbg !4147

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.147, i64 0, i64 0), i32 5) #12, !dbg !4149
  %20 = load i8*, i8** %4, align 8, !dbg !4149, !tbaa !741
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #12, !dbg !4149
  br label %146, !dbg !4150

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.148, i64 0, i64 0), i32 5) #12, !dbg !4151
  %24 = load i8*, i8** %4, align 8, !dbg !4151, !tbaa !741
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4151
  %26 = load i8*, i8** %25, align 8, !dbg !4151, !tbaa !741
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #12, !dbg !4151
  br label %146, !dbg !4152

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.149, i64 0, i64 0), i32 5) #12, !dbg !4153
  %30 = load i8*, i8** %4, align 8, !dbg !4153, !tbaa !741
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4153
  %32 = load i8*, i8** %31, align 8, !dbg !4153, !tbaa !741
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4153
  %34 = load i8*, i8** %33, align 8, !dbg !4153, !tbaa !741
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #12, !dbg !4153
  br label %146, !dbg !4154

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.150, i64 0, i64 0), i32 5) #12, !dbg !4155
  %38 = load i8*, i8** %4, align 8, !dbg !4155, !tbaa !741
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4155
  %40 = load i8*, i8** %39, align 8, !dbg !4155, !tbaa !741
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4155
  %42 = load i8*, i8** %41, align 8, !dbg !4155, !tbaa !741
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4155
  %44 = load i8*, i8** %43, align 8, !dbg !4155, !tbaa !741
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #12, !dbg !4155
  br label %146, !dbg !4156

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.151, i64 0, i64 0), i32 5) #12, !dbg !4157
  %48 = load i8*, i8** %4, align 8, !dbg !4157, !tbaa !741
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4157
  %50 = load i8*, i8** %49, align 8, !dbg !4157, !tbaa !741
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4157
  %52 = load i8*, i8** %51, align 8, !dbg !4157, !tbaa !741
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4157
  %54 = load i8*, i8** %53, align 8, !dbg !4157, !tbaa !741
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4157
  %56 = load i8*, i8** %55, align 8, !dbg !4157, !tbaa !741
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #12, !dbg !4157
  br label %146, !dbg !4158

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.152, i64 0, i64 0), i32 5) #12, !dbg !4159
  %60 = load i8*, i8** %4, align 8, !dbg !4159, !tbaa !741
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4159
  %62 = load i8*, i8** %61, align 8, !dbg !4159, !tbaa !741
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4159
  %64 = load i8*, i8** %63, align 8, !dbg !4159, !tbaa !741
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4159
  %66 = load i8*, i8** %65, align 8, !dbg !4159, !tbaa !741
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4159
  %68 = load i8*, i8** %67, align 8, !dbg !4159, !tbaa !741
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4159
  %70 = load i8*, i8** %69, align 8, !dbg !4159, !tbaa !741
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #12, !dbg !4159
  br label %146, !dbg !4160

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.153, i64 0, i64 0), i32 5) #12, !dbg !4161
  %74 = load i8*, i8** %4, align 8, !dbg !4161, !tbaa !741
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4161
  %76 = load i8*, i8** %75, align 8, !dbg !4161, !tbaa !741
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4161
  %78 = load i8*, i8** %77, align 8, !dbg !4161, !tbaa !741
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4161
  %80 = load i8*, i8** %79, align 8, !dbg !4161, !tbaa !741
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4161
  %82 = load i8*, i8** %81, align 8, !dbg !4161, !tbaa !741
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4161
  %84 = load i8*, i8** %83, align 8, !dbg !4161, !tbaa !741
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4161
  %86 = load i8*, i8** %85, align 8, !dbg !4161, !tbaa !741
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #12, !dbg !4161
  br label %146, !dbg !4162

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.154, i64 0, i64 0), i32 5) #12, !dbg !4163
  %90 = load i8*, i8** %4, align 8, !dbg !4163, !tbaa !741
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4163
  %92 = load i8*, i8** %91, align 8, !dbg !4163, !tbaa !741
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4163
  %94 = load i8*, i8** %93, align 8, !dbg !4163, !tbaa !741
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4163
  %96 = load i8*, i8** %95, align 8, !dbg !4163, !tbaa !741
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4163
  %98 = load i8*, i8** %97, align 8, !dbg !4163, !tbaa !741
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4163
  %100 = load i8*, i8** %99, align 8, !dbg !4163, !tbaa !741
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4163
  %102 = load i8*, i8** %101, align 8, !dbg !4163, !tbaa !741
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4163
  %104 = load i8*, i8** %103, align 8, !dbg !4163, !tbaa !741
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #12, !dbg !4163
  br label %146, !dbg !4164

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.155, i64 0, i64 0), i32 5) #12, !dbg !4165
  %108 = load i8*, i8** %4, align 8, !dbg !4165, !tbaa !741
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4165
  %110 = load i8*, i8** %109, align 8, !dbg !4165, !tbaa !741
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4165
  %112 = load i8*, i8** %111, align 8, !dbg !4165, !tbaa !741
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4165
  %114 = load i8*, i8** %113, align 8, !dbg !4165, !tbaa !741
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4165
  %116 = load i8*, i8** %115, align 8, !dbg !4165, !tbaa !741
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4165
  %118 = load i8*, i8** %117, align 8, !dbg !4165, !tbaa !741
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4165
  %120 = load i8*, i8** %119, align 8, !dbg !4165, !tbaa !741
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4165
  %122 = load i8*, i8** %121, align 8, !dbg !4165, !tbaa !741
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !4165
  %124 = load i8*, i8** %123, align 8, !dbg !4165, !tbaa !741
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #12, !dbg !4165
  br label %146, !dbg !4166

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.156, i64 0, i64 0), i32 5) #12, !dbg !4167
  %128 = load i8*, i8** %4, align 8, !dbg !4167, !tbaa !741
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4167
  %130 = load i8*, i8** %129, align 8, !dbg !4167, !tbaa !741
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4167
  %132 = load i8*, i8** %131, align 8, !dbg !4167, !tbaa !741
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4167
  %134 = load i8*, i8** %133, align 8, !dbg !4167, !tbaa !741
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4167
  %136 = load i8*, i8** %135, align 8, !dbg !4167, !tbaa !741
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4167
  %138 = load i8*, i8** %137, align 8, !dbg !4167, !tbaa !741
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4167
  %140 = load i8*, i8** %139, align 8, !dbg !4167, !tbaa !741
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4167
  %142 = load i8*, i8** %141, align 8, !dbg !4167, !tbaa !741
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !4167
  %144 = load i8*, i8** %143, align 8, !dbg !4167, !tbaa !741
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #12, !dbg !4167
  br label %146, !dbg !4168

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !4169
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #7 !dbg !4170 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4174, metadata !DIExpression()), !dbg !4180
  call void @llvm.dbg.value(metadata i8* %1, metadata !4175, metadata !DIExpression()), !dbg !4181
  call void @llvm.dbg.value(metadata i8* %2, metadata !4176, metadata !DIExpression()), !dbg !4182
  call void @llvm.dbg.value(metadata i8* %3, metadata !4177, metadata !DIExpression()), !dbg !4183
  call void @llvm.dbg.value(metadata i8** %4, metadata !4178, metadata !DIExpression()), !dbg !4184
  call void @llvm.dbg.value(metadata i64 0, metadata !4179, metadata !DIExpression()), !dbg !4185
  br label %6, !dbg !4186

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !4188
  call void @llvm.dbg.value(metadata i64 %7, metadata !4179, metadata !DIExpression()), !dbg !4185
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !4190
  %9 = load i8*, i8** %8, align 8, !dbg !4190, !tbaa !741
  %10 = icmp eq i8* %9, null, !dbg !4191
  %11 = add i64 %7, 1, !dbg !4192
  call void @llvm.dbg.value(metadata i64 %11, metadata !4179, metadata !DIExpression()), !dbg !4185
  br i1 %10, label %12, label %6, !dbg !4191, !llvm.loop !4193

; <label>:12:                                     ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !4179, metadata !DIExpression()), !dbg !4185
  call void @llvm.dbg.value(metadata i64 %7, metadata !4179, metadata !DIExpression()), !dbg !4185
  call void @llvm.dbg.value(metadata i64 %7, metadata !4179, metadata !DIExpression()), !dbg !4185
  call void @llvm.dbg.value(metadata i64 %7, metadata !4179, metadata !DIExpression()), !dbg !4185
  call void @llvm.dbg.value(metadata i64 %7, metadata !4179, metadata !DIExpression()), !dbg !4185
  call void @llvm.dbg.value(metadata i64 %7, metadata !4179, metadata !DIExpression()), !dbg !4185
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !4195
  ret void, !dbg !4196
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #7 !dbg !4197 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4208, metadata !DIExpression()), !dbg !4216
  call void @llvm.dbg.value(metadata i8* %1, metadata !4209, metadata !DIExpression()), !dbg !4217
  call void @llvm.dbg.value(metadata i8* %2, metadata !4210, metadata !DIExpression()), !dbg !4218
  call void @llvm.dbg.value(metadata i8* %3, metadata !4211, metadata !DIExpression()), !dbg !4219
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !4212, metadata !DIExpression()), !dbg !4220
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !4221
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #12, !dbg !4221
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !4214, metadata !DIExpression()), !dbg !4222
  call void @llvm.dbg.value(metadata i64 0, metadata !4213, metadata !DIExpression()), !dbg !4223
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  call void @llvm.dbg.value(metadata i64 0, metadata !4213, metadata !DIExpression()), !dbg !4223
  %11 = load i32, i32* %8, align 8, !dbg !4224
  %12 = icmp ult i32 %11, 41, !dbg !4224
  br i1 %12, label %13, label %18, !dbg !4224

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !4224
  %15 = sext i32 %11 to i64, !dbg !4224
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !4224
  %17 = add i32 %11, 8, !dbg !4224
  store i32 %17, i32* %8, align 8, !dbg !4224
  br label %21, !dbg !4224

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !4224
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !4224
  store i8* %20, i8** %10, align 8, !dbg !4224
  br label %21, !dbg !4224

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !4224
  %25 = load i8*, i8** %24, align 8, !dbg !4224
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !4227
  store i8* %25, i8** %26, align 16, !dbg !4228, !tbaa !741
  %27 = icmp eq i8* %25, null, !dbg !4229
  br i1 %27, label %30, label %28, !dbg !4230

; <label>:28:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !4213, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata i64 1, metadata !4213, metadata !DIExpression()), !dbg !4223
  %29 = icmp ult i32 %22, 41, !dbg !4224
  br i1 %29, label %35, label %32, !dbg !4224

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !4231
  call void @llvm.dbg.value(metadata i64 %31, metadata !4213, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata i64 %31, metadata !4213, metadata !DIExpression()), !dbg !4223
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !4232
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #12, !dbg !4233
  ret void, !dbg !4233

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !4224
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !4224
  store i8* %34, i8** %10, align 8, !dbg !4224
  br label %40, !dbg !4224

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !4224
  %37 = sext i32 %22 to i64, !dbg !4224
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !4224
  %39 = add i32 %22, 8, !dbg !4224
  store i32 %39, i32* %8, align 8, !dbg !4224
  br label %40, !dbg !4224

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !4224
  %44 = load i8*, i8** %43, align 8, !dbg !4224
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !4227
  store i8* %44, i8** %45, align 8, !dbg !4228, !tbaa !741
  %46 = icmp eq i8* %44, null, !dbg !4229
  br i1 %46, label %30, label %47, !dbg !4230

; <label>:47:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !4213, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata i64 2, metadata !4213, metadata !DIExpression()), !dbg !4223
  %48 = icmp ult i32 %41, 41, !dbg !4224
  br i1 %48, label %52, label %49, !dbg !4224

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !4224
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !4224
  store i8* %51, i8** %10, align 8, !dbg !4224
  br label %57, !dbg !4224

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !4224
  %54 = sext i32 %41 to i64, !dbg !4224
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !4224
  %56 = add i32 %41, 8, !dbg !4224
  store i32 %56, i32* %8, align 8, !dbg !4224
  br label %57, !dbg !4224

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !4224
  %61 = load i8*, i8** %60, align 8, !dbg !4224
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !4227
  store i8* %61, i8** %62, align 16, !dbg !4228, !tbaa !741
  %63 = icmp eq i8* %61, null, !dbg !4229
  br i1 %63, label %30, label %64, !dbg !4230

; <label>:64:                                     ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !4213, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata i64 3, metadata !4213, metadata !DIExpression()), !dbg !4223
  %65 = icmp ult i32 %58, 41, !dbg !4224
  br i1 %65, label %69, label %66, !dbg !4224

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !4224
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !4224
  store i8* %68, i8** %10, align 8, !dbg !4224
  br label %74, !dbg !4224

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !4224
  %71 = sext i32 %58 to i64, !dbg !4224
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !4224
  %73 = add i32 %58, 8, !dbg !4224
  store i32 %73, i32* %8, align 8, !dbg !4224
  br label %74, !dbg !4224

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !4224
  %78 = load i8*, i8** %77, align 8, !dbg !4224
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !4227
  store i8* %78, i8** %79, align 8, !dbg !4228, !tbaa !741
  %80 = icmp eq i8* %78, null, !dbg !4229
  br i1 %80, label %30, label %81, !dbg !4230

; <label>:81:                                     ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !4213, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata i64 4, metadata !4213, metadata !DIExpression()), !dbg !4223
  %82 = icmp ult i32 %75, 41, !dbg !4224
  br i1 %82, label %86, label %83, !dbg !4224

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !4224
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !4224
  store i8* %85, i8** %10, align 8, !dbg !4224
  br label %91, !dbg !4224

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !4224
  %88 = sext i32 %75 to i64, !dbg !4224
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !4224
  %90 = add i32 %75, 8, !dbg !4224
  store i32 %90, i32* %8, align 8, !dbg !4224
  br label %91, !dbg !4224

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !4224
  %95 = load i8*, i8** %94, align 8, !dbg !4224
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !4227
  store i8* %95, i8** %96, align 16, !dbg !4228, !tbaa !741
  %97 = icmp eq i8* %95, null, !dbg !4229
  br i1 %97, label %30, label %98, !dbg !4230

; <label>:98:                                     ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !4213, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata i64 5, metadata !4213, metadata !DIExpression()), !dbg !4223
  %99 = icmp ult i32 %92, 41, !dbg !4224
  br i1 %99, label %103, label %100, !dbg !4224

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !4224
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !4224
  store i8* %102, i8** %10, align 8, !dbg !4224
  br label %108, !dbg !4224

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !4224
  %105 = sext i32 %92 to i64, !dbg !4224
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !4224
  %107 = add i32 %92, 8, !dbg !4224
  store i32 %107, i32* %8, align 8, !dbg !4224
  br label %108, !dbg !4224

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !4224
  %111 = load i8*, i8** %110, align 8, !dbg !4224
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !4227
  store i8* %111, i8** %112, align 8, !dbg !4228, !tbaa !741
  %113 = icmp eq i8* %111, null, !dbg !4229
  br i1 %113, label %30, label %114, !dbg !4230

; <label>:114:                                    ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !4213, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata i64 6, metadata !4213, metadata !DIExpression()), !dbg !4223
  %115 = load i8*, i8** %10, align 8, !dbg !4224
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !4224
  store i8* %116, i8** %10, align 8, !dbg !4224
  %117 = bitcast i8* %115 to i8**, !dbg !4224
  %118 = load i8*, i8** %117, align 8, !dbg !4224
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !4227
  store i8* %118, i8** %119, align 16, !dbg !4228, !tbaa !741
  %120 = icmp eq i8* %118, null, !dbg !4229
  br i1 %120, label %30, label %121, !dbg !4230

; <label>:121:                                    ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !4213, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata i64 7, metadata !4213, metadata !DIExpression()), !dbg !4223
  %122 = load i8*, i8** %10, align 8, !dbg !4224
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !4224
  store i8* %123, i8** %10, align 8, !dbg !4224
  %124 = bitcast i8* %122 to i8**, !dbg !4224
  %125 = load i8*, i8** %124, align 8, !dbg !4224
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !4227
  store i8* %125, i8** %126, align 8, !dbg !4228, !tbaa !741
  %127 = icmp eq i8* %125, null, !dbg !4229
  br i1 %127, label %30, label %128, !dbg !4230

; <label>:128:                                    ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !4213, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata i64 8, metadata !4213, metadata !DIExpression()), !dbg !4223
  %129 = load i8*, i8** %10, align 8, !dbg !4224
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !4224
  store i8* %130, i8** %10, align 8, !dbg !4224
  %131 = bitcast i8* %129 to i8**, !dbg !4224
  %132 = load i8*, i8** %131, align 8, !dbg !4224
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !4227
  store i8* %132, i8** %133, align 16, !dbg !4228, !tbaa !741
  %134 = icmp eq i8* %132, null, !dbg !4229
  br i1 %134, label %30, label %135, !dbg !4230

; <label>:135:                                    ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !4213, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata i64 9, metadata !4213, metadata !DIExpression()), !dbg !4223
  %136 = load i8*, i8** %10, align 8, !dbg !4224
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !4224
  store i8* %137, i8** %10, align 8, !dbg !4224
  %138 = bitcast i8* %136 to i8**, !dbg !4224
  %139 = load i8*, i8** %138, align 8, !dbg !4224
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !4227
  store i8* %139, i8** %140, align 8, !dbg !4228, !tbaa !741
  %141 = icmp eq i8* %139, null, !dbg !4229
  %142 = select i1 %141, i64 9, i64 10, !dbg !4230
  br label %30, !dbg !4230
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #7 !dbg !4234 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4238, metadata !DIExpression()), !dbg !4248
  call void @llvm.dbg.value(metadata i8* %1, metadata !4239, metadata !DIExpression()), !dbg !4249
  call void @llvm.dbg.value(metadata i8* %2, metadata !4240, metadata !DIExpression()), !dbg !4250
  call void @llvm.dbg.value(metadata i8* %3, metadata !4241, metadata !DIExpression()), !dbg !4251
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !4252
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #12, !dbg !4252
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !4242, metadata !DIExpression()), !dbg !4253
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !4254
  call void @llvm.va_start(i8* nonnull %6), !dbg !4254
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !4255
  call void @llvm.va_end(i8* nonnull %6), !dbg !4256
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #12, !dbg !4257
  ret void, !dbg !4257
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #12

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #12

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #7 !dbg !4258 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.159, i64 0, i64 0), i32 5) #12, !dbg !4259
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.160, i64 0, i64 0)) #12, !dbg !4259
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.161, i64 0, i64 0), i32 5) #12, !dbg !4260
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.162, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18.163, i64 0, i64 0)) #12, !dbg !4260
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.19.164, i64 0, i64 0), i32 5) #12, !dbg !4261
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !4261, !tbaa !741
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6), !dbg !4261
  ret void, !dbg !4262
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !4263 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4267, metadata !DIExpression()), !dbg !4269
  call void @llvm.dbg.value(metadata i64 %1, metadata !4268, metadata !DIExpression()), !dbg !4270
  %3 = udiv i64 9223372036854775807, %1, !dbg !4271
  %4 = icmp ult i64 %3, %0, !dbg !4271
  br i1 %4, label %5, label %6, !dbg !4273

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !4274
  unreachable, !dbg !4274

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4275
  call void @llvm.dbg.value(metadata i64 %7, metadata !4276, metadata !DIExpression()) #12, !dbg !4283
  %8 = tail call noalias i8* @malloc(i64 %7) #12, !dbg !4285
  call void @llvm.dbg.value(metadata i8* %8, metadata !4282, metadata !DIExpression()) #12, !dbg !4286
  %9 = icmp eq i8* %8, null, !dbg !4287
  %10 = icmp ne i64 %7, 0, !dbg !4289
  %11 = and i1 %10, %9, !dbg !4290
  br i1 %11, label %12, label %13, !dbg !4290

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !4291
  unreachable, !dbg !4291

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !4292
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64) local_unnamed_addr #7 !dbg !4277 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4276, metadata !DIExpression()), !dbg !4293
  %2 = tail call noalias i8* @malloc(i64 %0) #12, !dbg !4294
  call void @llvm.dbg.value(metadata i8* %2, metadata !4282, metadata !DIExpression()), !dbg !4295
  %3 = icmp eq i8* %2, null, !dbg !4296
  %4 = icmp ne i64 %0, 0, !dbg !4297
  %5 = and i1 %4, %3, !dbg !4298
  br i1 %5, label %6, label %7, !dbg !4298

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !4299
  unreachable, !dbg !4299

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !4300
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !4301 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4305, metadata !DIExpression()), !dbg !4308
  call void @llvm.dbg.value(metadata i64 %1, metadata !4306, metadata !DIExpression()), !dbg !4309
  call void @llvm.dbg.value(metadata i64 %2, metadata !4307, metadata !DIExpression()), !dbg !4310
  %4 = udiv i64 9223372036854775807, %2, !dbg !4311
  %5 = icmp ult i64 %4, %1, !dbg !4311
  br i1 %5, label %6, label %7, !dbg !4313

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !4314
  unreachable, !dbg !4314

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !4315
  call void @llvm.dbg.value(metadata i8* %0, metadata !4316, metadata !DIExpression()) #12, !dbg !4322
  call void @llvm.dbg.value(metadata i64 %8, metadata !4321, metadata !DIExpression()) #12, !dbg !4324
  %9 = icmp eq i64 %8, 0, !dbg !4325
  %10 = icmp ne i8* %0, null, !dbg !4327
  %11 = and i1 %10, %9, !dbg !4328
  br i1 %11, label %12, label %13, !dbg !4328

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #12, !dbg !4329
  br label %19, !dbg !4331

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #12, !dbg !4332
  call void @llvm.dbg.value(metadata i8* %14, metadata !4316, metadata !DIExpression()) #12, !dbg !4322
  %15 = icmp eq i8* %14, null, !dbg !4333
  %16 = icmp ne i64 %8, 0, !dbg !4335
  %17 = and i1 %16, %15, !dbg !4336
  br i1 %17, label %18, label %19, !dbg !4336

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !4337
  unreachable, !dbg !4337

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !4338
  ret i8* %20, !dbg !4339
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #7 !dbg !4317 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4316, metadata !DIExpression()), !dbg !4340
  call void @llvm.dbg.value(metadata i64 %1, metadata !4321, metadata !DIExpression()), !dbg !4341
  %3 = icmp eq i64 %1, 0, !dbg !4342
  %4 = icmp ne i8* %0, null, !dbg !4343
  %5 = and i1 %4, %3, !dbg !4344
  br i1 %5, label %6, label %7, !dbg !4344

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #12, !dbg !4345
  br label %13, !dbg !4346

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #12, !dbg !4347
  call void @llvm.dbg.value(metadata i8* %8, metadata !4316, metadata !DIExpression()), !dbg !4340
  %9 = icmp eq i8* %8, null, !dbg !4348
  %10 = icmp ne i64 %1, 0, !dbg !4349
  %11 = and i1 %10, %9, !dbg !4350
  br i1 %11, label %12, label %13, !dbg !4350

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !4351
  unreachable, !dbg !4351

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !4352
  ret i8* %14, !dbg !4353
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !279 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !283, metadata !DIExpression()), !dbg !4354
  call void @llvm.dbg.value(metadata i64* %1, metadata !284, metadata !DIExpression()), !dbg !4355
  call void @llvm.dbg.value(metadata i64 %2, metadata !285, metadata !DIExpression()), !dbg !4356
  %4 = load i64, i64* %1, align 8, !dbg !4357, !tbaa !843
  call void @llvm.dbg.value(metadata i64 %4, metadata !286, metadata !DIExpression()), !dbg !4358
  %5 = icmp eq i8* %0, null, !dbg !4359
  br i1 %5, label %6, label %20, !dbg !4361

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4362
  br i1 %7, label %8, label %13, !dbg !4365

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4366
  call void @llvm.dbg.value(metadata i64 %9, metadata !286, metadata !DIExpression()), !dbg !4358
  %10 = icmp ugt i64 %2, 128, !dbg !4368
  %11 = zext i1 %10 to i64, !dbg !4368
  %12 = add nuw nsw i64 %9, %11, !dbg !4369
  call void @llvm.dbg.value(metadata i64 %12, metadata !286, metadata !DIExpression()), !dbg !4358
  br label %13, !dbg !4370

; <label>:13:                                     ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !4371
  call void @llvm.dbg.value(metadata i64 %14, metadata !286, metadata !DIExpression()), !dbg !4358
  %15 = udiv i64 9223372036854775807, %2, !dbg !4372
  %16 = icmp ult i64 %15, %14, !dbg !4372
  br i1 %16, label %19, label %17, !dbg !4374

; <label>:17:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !286, metadata !DIExpression()), !dbg !4358
  store i64 %14, i64* %1, align 8, !dbg !4375, !tbaa !843
  %18 = mul i64 %14, %2, !dbg !4376
  call void @llvm.dbg.value(metadata i8* %0, metadata !4316, metadata !DIExpression()) #12, !dbg !4377
  call void @llvm.dbg.value(metadata i64 %28, metadata !4321, metadata !DIExpression()) #12, !dbg !4379
  br label %31, !dbg !4380

; <label>:19:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !4381
  unreachable, !dbg !4381

; <label>:20:                                     ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !4382
  %22 = icmp ugt i64 %21, %4, !dbg !4385
  br i1 %22, label %24, label %23, !dbg !4386

; <label>:23:                                     ; preds = %20
  tail call void @xalloc_die() #15, !dbg !4387
  unreachable, !dbg !4387

; <label>:24:                                     ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !4388
  %26 = add i64 %4, 1, !dbg !4389
  %27 = add i64 %26, %25, !dbg !4390
  call void @llvm.dbg.value(metadata i64 %27, metadata !286, metadata !DIExpression()), !dbg !4358
  call void @llvm.dbg.value(metadata i64 %27, metadata !286, metadata !DIExpression()), !dbg !4358
  store i64 %27, i64* %1, align 8, !dbg !4375, !tbaa !843
  %28 = mul i64 %27, %2, !dbg !4376
  call void @llvm.dbg.value(metadata i8* %0, metadata !4316, metadata !DIExpression()) #12, !dbg !4377
  call void @llvm.dbg.value(metadata i64 %28, metadata !4321, metadata !DIExpression()) #12, !dbg !4379
  %29 = icmp eq i64 %28, 0, !dbg !4391
  br i1 %29, label %30, label %31, !dbg !4380

; <label>:30:                                     ; preds = %24
  tail call void @free(i8* nonnull %0) #12, !dbg !4392
  br label %38, !dbg !4393

; <label>:31:                                     ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #12, !dbg !4394
  call void @llvm.dbg.value(metadata i8* %33, metadata !4316, metadata !DIExpression()) #12, !dbg !4377
  %34 = icmp eq i8* %33, null, !dbg !4395
  %35 = icmp ne i64 %32, 0, !dbg !4396
  %36 = and i1 %35, %34, !dbg !4397
  br i1 %36, label %37, label %38, !dbg !4397

; <label>:37:                                     ; preds = %31
  tail call void @xalloc_die() #15, !dbg !4398
  unreachable, !dbg !4398

; <label>:38:                                     ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !4399
  ret i8* %39, !dbg !4400
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !4401 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4403, metadata !DIExpression()), !dbg !4404
  call void @llvm.dbg.value(metadata i64 %0, metadata !4276, metadata !DIExpression()) #12, !dbg !4405
  %2 = tail call noalias i8* @malloc(i64 %0) #12, !dbg !4407
  call void @llvm.dbg.value(metadata i8* %2, metadata !4282, metadata !DIExpression()) #12, !dbg !4408
  %3 = icmp eq i8* %2, null, !dbg !4409
  %4 = icmp ne i64 %0, 0, !dbg !4410
  %5 = and i1 %4, %3, !dbg !4411
  br i1 %5, label %6, label %7, !dbg !4411

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !4412
  unreachable, !dbg !4412

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !4413
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #7 !dbg !4414 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4418, metadata !DIExpression()), !dbg !4420
  call void @llvm.dbg.value(metadata i64* %1, metadata !4419, metadata !DIExpression()), !dbg !4421
  call void @llvm.dbg.value(metadata i8* %0, metadata !283, metadata !DIExpression()) #12, !dbg !4422
  call void @llvm.dbg.value(metadata i64* %1, metadata !284, metadata !DIExpression()) #12, !dbg !4424
  call void @llvm.dbg.value(metadata i64 1, metadata !285, metadata !DIExpression()) #12, !dbg !4425
  %3 = load i64, i64* %1, align 8, !dbg !4426, !tbaa !843
  call void @llvm.dbg.value(metadata i64 %3, metadata !286, metadata !DIExpression()) #12, !dbg !4427
  %4 = icmp eq i8* %0, null, !dbg !4428
  br i1 %4, label %5, label %12, !dbg !4429

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4430
  br i1 %6, label %9, label %7, !dbg !4431

; <label>:7:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !286, metadata !DIExpression()) #12, !dbg !4427
  %8 = icmp slt i64 %3, 0, !dbg !4432
  br i1 %8, label %11, label %9, !dbg !4433

; <label>:9:                                      ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !286, metadata !DIExpression()) #12, !dbg !4427
  store i64 %10, i64* %1, align 8, !dbg !4434, !tbaa !843
  call void @llvm.dbg.value(metadata i8* %0, metadata !4316, metadata !DIExpression()) #12, !dbg !4435
  call void @llvm.dbg.value(metadata i64 %18, metadata !4321, metadata !DIExpression()) #12, !dbg !4437
  br label %21, !dbg !4438

; <label>:11:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !4439
  unreachable, !dbg !4439

; <label>:12:                                     ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !4440
  br i1 %13, label %15, label %14, !dbg !4441

; <label>:14:                                     ; preds = %12
  tail call void @xalloc_die() #15, !dbg !4442
  unreachable, !dbg !4442

; <label>:15:                                     ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !4443
  %17 = add i64 %3, 1, !dbg !4444
  %18 = add i64 %17, %16, !dbg !4445
  call void @llvm.dbg.value(metadata i64 %18, metadata !286, metadata !DIExpression()) #12, !dbg !4427
  call void @llvm.dbg.value(metadata i64 %18, metadata !286, metadata !DIExpression()) #12, !dbg !4427
  store i64 %18, i64* %1, align 8, !dbg !4434, !tbaa !843
  call void @llvm.dbg.value(metadata i8* %0, metadata !4316, metadata !DIExpression()) #12, !dbg !4435
  call void @llvm.dbg.value(metadata i64 %18, metadata !4321, metadata !DIExpression()) #12, !dbg !4437
  %19 = icmp eq i64 %18, 0, !dbg !4446
  br i1 %19, label %20, label %21, !dbg !4438

; <label>:20:                                     ; preds = %15
  tail call void @free(i8* nonnull %0) #12, !dbg !4447
  br label %28, !dbg !4448

; <label>:21:                                     ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #12, !dbg !4449
  call void @llvm.dbg.value(metadata i8* %23, metadata !4316, metadata !DIExpression()) #12, !dbg !4435
  %24 = icmp eq i8* %23, null, !dbg !4450
  %25 = icmp ne i64 %22, 0, !dbg !4451
  %26 = and i1 %25, %24, !dbg !4452
  br i1 %26, label %27, label %28, !dbg !4452

; <label>:27:                                     ; preds = %21
  tail call void @xalloc_die() #15, !dbg !4453
  unreachable, !dbg !4453

; <label>:28:                                     ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !4454
  ret i8* %29, !dbg !4455
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64) local_unnamed_addr #7 !dbg !4456 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4458, metadata !DIExpression()), !dbg !4459
  call void @llvm.dbg.value(metadata i64 %0, metadata !4276, metadata !DIExpression()) #12, !dbg !4460
  %2 = tail call noalias i8* @malloc(i64 %0) #12, !dbg !4462
  call void @llvm.dbg.value(metadata i8* %2, metadata !4282, metadata !DIExpression()) #12, !dbg !4463
  %3 = icmp eq i8* %2, null, !dbg !4464
  %4 = icmp ne i64 %0, 0, !dbg !4465
  %5 = and i1 %4, %3, !dbg !4466
  br i1 %5, label %6, label %7, !dbg !4466

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !4467
  unreachable, !dbg !4467

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* align 1 %2, i8 0, i64 %0, i1 false), !dbg !4468
  ret i8* %2, !dbg !4469
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64, i64) local_unnamed_addr #7 !dbg !4470 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4472, metadata !DIExpression()), !dbg !4475
  call void @llvm.dbg.value(metadata i64 %1, metadata !4473, metadata !DIExpression()), !dbg !4476
  %3 = udiv i64 9223372036854775807, %1, !dbg !4477
  %4 = icmp ult i64 %3, %0, !dbg !4477
  br i1 %4, label %8, label %5, !dbg !4479

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #12, !dbg !4480
  call void @llvm.dbg.value(metadata i8* %6, metadata !4474, metadata !DIExpression()), !dbg !4481
  %7 = icmp eq i8* %6, null, !dbg !4482
  br i1 %7, label %8, label %9, !dbg !4483

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !4484
  unreachable, !dbg !4484

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !4485
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #7 !dbg !4486 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4490, metadata !DIExpression()), !dbg !4492
  call void @llvm.dbg.value(metadata i64 %1, metadata !4491, metadata !DIExpression()), !dbg !4493
  call void @llvm.dbg.value(metadata i64 %1, metadata !4276, metadata !DIExpression()) #12, !dbg !4494
  %3 = tail call noalias i8* @malloc(i64 %1) #12, !dbg !4496
  call void @llvm.dbg.value(metadata i8* %3, metadata !4282, metadata !DIExpression()) #12, !dbg !4497
  %4 = icmp eq i8* %3, null, !dbg !4498
  %5 = icmp ne i64 %1, 0, !dbg !4499
  %6 = and i1 %5, %4, !dbg !4500
  br i1 %6, label %7, label %8, !dbg !4500

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !4501
  unreachable, !dbg !4501

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 %0, i64 %1, i1 false), !dbg !4502
  ret i8* %3, !dbg !4503
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #7 !dbg !4504 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4506, metadata !DIExpression()), !dbg !4507
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !4508
  %3 = add i64 %2, 1, !dbg !4509
  call void @llvm.dbg.value(metadata i8* %0, metadata !4490, metadata !DIExpression()) #12, !dbg !4510
  call void @llvm.dbg.value(metadata i64 %3, metadata !4491, metadata !DIExpression()) #12, !dbg !4512
  call void @llvm.dbg.value(metadata i64 %3, metadata !4276, metadata !DIExpression()) #12, !dbg !4513
  %4 = tail call noalias i8* @malloc(i64 %3) #12, !dbg !4515
  call void @llvm.dbg.value(metadata i8* %4, metadata !4282, metadata !DIExpression()) #12, !dbg !4516
  %5 = icmp eq i8* %4, null, !dbg !4517
  %6 = icmp ne i64 %3, 0, !dbg !4518
  %7 = and i1 %6, %5, !dbg !4519
  br i1 %7, label %8, label %9, !dbg !4519

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !4520
  unreachable, !dbg !4520

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %0, i64 %3, i1 false) #12, !dbg !4521
  ret i8* %4, !dbg !4522
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4523 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4525, !tbaa !863
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.177, i64 0, i64 0), i32 5) #12, !dbg !4526
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.178, i64 0, i64 0), i8* %2) #12, !dbg !4527
  tail call void @abort() #15, !dbg !4528
  unreachable, !dbg !4528
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @xmemcoll(i8*, i64, i8*, i64) local_unnamed_addr #7 !dbg !4529 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4534, metadata !DIExpression()), !dbg !4540
  call void @llvm.dbg.value(metadata i64 %1, metadata !4535, metadata !DIExpression()), !dbg !4541
  call void @llvm.dbg.value(metadata i8* %2, metadata !4536, metadata !DIExpression()), !dbg !4542
  call void @llvm.dbg.value(metadata i64 %3, metadata !4537, metadata !DIExpression()), !dbg !4543
  %5 = tail call i32 @memcoll(i8* %0, i64 %1, i8* %2, i64 %3) #12, !dbg !4544
  call void @llvm.dbg.value(metadata i32 %5, metadata !4538, metadata !DIExpression()), !dbg !4545
  %6 = tail call i32* @__errno_location() #17, !dbg !4546
  %7 = load i32, i32* %6, align 4, !dbg !4546, !tbaa !863
  call void @llvm.dbg.value(metadata i32 %7, metadata !4539, metadata !DIExpression()), !dbg !4547
  %8 = icmp eq i32 %7, 0, !dbg !4548
  br i1 %8, label %16, label %9, !dbg !4550

; <label>:9:                                      ; preds = %4
  call void @llvm.dbg.value(metadata i32 %7, metadata !4551, metadata !DIExpression()) #12, !dbg !4560
  call void @llvm.dbg.value(metadata i8* %0, metadata !4556, metadata !DIExpression()) #12, !dbg !4562
  call void @llvm.dbg.value(metadata i64 %1, metadata !4557, metadata !DIExpression()) #12, !dbg !4563
  call void @llvm.dbg.value(metadata i8* %2, metadata !4558, metadata !DIExpression()) #12, !dbg !4564
  call void @llvm.dbg.value(metadata i64 %3, metadata !4559, metadata !DIExpression()) #12, !dbg !4565
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.181, i64 0, i64 0), i32 5) #12, !dbg !4566
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %7, i8* %10) #12, !dbg !4567
  %11 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1.182, i64 0, i64 0), i32 5) #12, !dbg !4568
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %11) #12, !dbg !4569
  %12 = load volatile i32, i32* @exit_failure, align 4, !dbg !4570, !tbaa !863
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2.183, i64 0, i64 0), i32 5) #12, !dbg !4571
  %14 = tail call i8* @quotearg_n_style_mem(i32 0, i32 8, i8* %0, i64 %1) #12, !dbg !4572
  %15 = tail call i8* @quotearg_n_style_mem(i32 1, i32 8, i8* %2, i64 %3) #12, !dbg !4573
  tail call void (i32, i32, i8*, ...) @error(i32 %12, i32 0, i8* %13, i8* %14, i8* %15) #12, !dbg !4574
  br label %16, !dbg !4575

; <label>:16:                                     ; preds = %4, %9
  ret i32 %5, !dbg !4576
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @xmemcoll0(i8*, i64, i8*, i64) local_unnamed_addr #7 !dbg !4577 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4581, metadata !DIExpression()), !dbg !4587
  call void @llvm.dbg.value(metadata i64 %1, metadata !4582, metadata !DIExpression()), !dbg !4588
  call void @llvm.dbg.value(metadata i8* %2, metadata !4583, metadata !DIExpression()), !dbg !4589
  call void @llvm.dbg.value(metadata i64 %3, metadata !4584, metadata !DIExpression()), !dbg !4590
  %5 = tail call i32 @memcoll0(i8* %0, i64 %1, i8* %2, i64 %3) #12, !dbg !4591
  call void @llvm.dbg.value(metadata i32 %5, metadata !4585, metadata !DIExpression()), !dbg !4592
  %6 = tail call i32* @__errno_location() #17, !dbg !4593
  %7 = load i32, i32* %6, align 4, !dbg !4593, !tbaa !863
  call void @llvm.dbg.value(metadata i32 %7, metadata !4586, metadata !DIExpression()), !dbg !4594
  %8 = icmp eq i32 %7, 0, !dbg !4595
  br i1 %8, label %18, label %9, !dbg !4597

; <label>:9:                                      ; preds = %4
  %10 = add i64 %1, -1, !dbg !4598
  %11 = add i64 %3, -1, !dbg !4599
  call void @llvm.dbg.value(metadata i32 %7, metadata !4551, metadata !DIExpression()) #12, !dbg !4600
  call void @llvm.dbg.value(metadata i8* %0, metadata !4556, metadata !DIExpression()) #12, !dbg !4602
  call void @llvm.dbg.value(metadata i64 %10, metadata !4557, metadata !DIExpression()) #12, !dbg !4603
  call void @llvm.dbg.value(metadata i8* %2, metadata !4558, metadata !DIExpression()) #12, !dbg !4604
  call void @llvm.dbg.value(metadata i64 %11, metadata !4559, metadata !DIExpression()) #12, !dbg !4605
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.181, i64 0, i64 0), i32 5) #12, !dbg !4606
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %7, i8* %12) #12, !dbg !4607
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1.182, i64 0, i64 0), i32 5) #12, !dbg !4608
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %13) #12, !dbg !4609
  %14 = load volatile i32, i32* @exit_failure, align 4, !dbg !4610, !tbaa !863
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2.183, i64 0, i64 0), i32 5) #12, !dbg !4611
  %16 = tail call i8* @quotearg_n_style_mem(i32 0, i32 8, i8* %0, i64 %10) #12, !dbg !4612
  %17 = tail call i8* @quotearg_n_style_mem(i32 1, i32 8, i8* %2, i64 %11) #12, !dbg !4613
  tail call void (i32, i32, i8*, ...) @error(i32 %14, i32 0, i8* %15, i8* %16, i8* %17) #12, !dbg !4614
  br label %18, !dbg !4615

; <label>:18:                                     ; preds = %4, %9
  ret i32 %5, !dbg !4616
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @xstrtoul(i8*, i8**, i32, i64* nocapture, i8* readonly) local_unnamed_addr #7 !dbg !4617 {
  %6 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !4624, metadata !DIExpression()), !dbg !4642
  call void @llvm.dbg.value(metadata i8** %1, metadata !4625, metadata !DIExpression()), !dbg !4643
  call void @llvm.dbg.value(metadata i32 %2, metadata !4626, metadata !DIExpression()), !dbg !4644
  call void @llvm.dbg.value(metadata i64* %3, metadata !4627, metadata !DIExpression()), !dbg !4645
  call void @llvm.dbg.value(metadata i8* %4, metadata !4628, metadata !DIExpression()), !dbg !4646
  %7 = bitcast i8** %6 to i8*, !dbg !4647
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #12, !dbg !4647
  call void @llvm.dbg.value(metadata i32 0, metadata !4632, metadata !DIExpression()), !dbg !4648
  %8 = icmp ult i32 %2, 37, !dbg !4649
  br i1 %8, label %10, label %9, !dbg !4649

; <label>:9:                                      ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.186, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.187, i64 0, i64 0), i32 96, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @__PRETTY_FUNCTION__.xstrtoul, i64 0, i64 0)) #15, !dbg !4649
  unreachable, !dbg !4649

; <label>:10:                                     ; preds = %5
  %11 = icmp eq i8** %1, null, !dbg !4652
  call void @llvm.dbg.value(metadata i8** %25, metadata !4630, metadata !DIExpression()), !dbg !4653
  %12 = tail call i32* @__errno_location() #17, !dbg !4654
  store i32 0, i32* %12, align 4, !dbg !4655, !tbaa !863
  call void @llvm.dbg.value(metadata i8* %0, metadata !4633, metadata !DIExpression()), !dbg !4656
  call void @llvm.dbg.value(metadata i8* %0, metadata !4636, metadata !DIExpression(DW_OP_deref)), !dbg !4657
  %13 = tail call i16** @__ctype_b_loc() #17, !dbg !4658
  %14 = load i16*, i16** %13, align 8, !tbaa !741
  br label %15, !dbg !4659

; <label>:15:                                     ; preds = %15, %10
  %16 = phi i8* [ %0, %10 ], [ %23, %15 ], !dbg !4660
  %17 = load i8, i8* %16, align 1, !dbg !4660, !tbaa !848
  call void @llvm.dbg.value(metadata i8 %17, metadata !4636, metadata !DIExpression()), !dbg !4657
  call void @llvm.dbg.value(metadata i8* %16, metadata !4633, metadata !DIExpression()), !dbg !4656
  %18 = zext i8 %17 to i64, !dbg !4658
  %19 = getelementptr inbounds i16, i16* %14, i64 %18, !dbg !4658
  %20 = load i16, i16* %19, align 2, !dbg !4658, !tbaa !1454
  %21 = and i16 %20, 8192, !dbg !4658
  %22 = icmp eq i16 %21, 0, !dbg !4659
  %23 = getelementptr inbounds i8, i8* %16, i64 1, !dbg !4661
  call void @llvm.dbg.value(metadata i8* %23, metadata !4633, metadata !DIExpression()), !dbg !4656
  call void @llvm.dbg.value(metadata i8* %23, metadata !4636, metadata !DIExpression(DW_OP_deref)), !dbg !4657
  br i1 %22, label %24, label %15, !dbg !4659, !llvm.loop !4662

; <label>:24:                                     ; preds = %15
  %25 = select i1 %11, i8** %6, i8** %1, !dbg !4652
  %26 = icmp eq i8 %17, 45, !dbg !4664
  br i1 %26, label %265, label %27

; <label>:27:                                     ; preds = %24
  %28 = call i64 @strtoul(i8* %0, i8** %25, i32 %2) #12, !dbg !4666
  call void @llvm.dbg.value(metadata i64 %28, metadata !4631, metadata !DIExpression()), !dbg !4667
  %29 = load i8*, i8** %25, align 8, !dbg !4668, !tbaa !741
  %30 = icmp eq i8* %29, %0, !dbg !4670
  br i1 %30, label %31, label %40, !dbg !4671

; <label>:31:                                     ; preds = %27
  %32 = icmp eq i8* %4, null, !dbg !4672
  br i1 %32, label %265, label %33, !dbg !4675

; <label>:33:                                     ; preds = %31
  %34 = load i8, i8* %0, align 1, !dbg !4676, !tbaa !848
  %35 = icmp eq i8 %34, 0, !dbg !4676
  br i1 %35, label %265, label %36, !dbg !4677

; <label>:36:                                     ; preds = %33
  %37 = sext i8 %34 to i32, !dbg !4676
  %38 = tail call i8* @strchr(i8* nonnull %4, i32 %37) #14, !dbg !4678
  %39 = icmp eq i8* %38, null, !dbg !4678
  br i1 %39, label %265, label %47, !dbg !4679

; <label>:40:                                     ; preds = %27
  %41 = load i32, i32* %12, align 4, !dbg !4680, !tbaa !863
  switch i32 %41, label %265 [
    i32 0, label %43
    i32 34, label %42
  ], !dbg !4682

; <label>:42:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i32 1, metadata !4632, metadata !DIExpression()), !dbg !4648
  br label %43, !dbg !4683

; <label>:43:                                     ; preds = %40, %42
  %44 = phi i32 [ 1, %42 ], [ %41, %40 ], !dbg !4685
  call void @llvm.dbg.value(metadata i32 %44, metadata !4632, metadata !DIExpression()), !dbg !4648
  %45 = icmp eq i8* %4, null, !dbg !4686
  br i1 %45, label %46, label %47, !dbg !4688

; <label>:46:                                     ; preds = %43
  call void @llvm.dbg.value(metadata i64 %28, metadata !4631, metadata !DIExpression()), !dbg !4667
  store i64 %28, i64* %3, align 8, !dbg !4689, !tbaa !843
  br label %265, !dbg !4691

; <label>:47:                                     ; preds = %36, %43
  %48 = phi i32 [ %44, %43 ], [ 0, %36 ]
  %49 = phi i64 [ %28, %43 ], [ 1, %36 ]
  %50 = load i8, i8* %29, align 1, !dbg !4692, !tbaa !848
  %51 = sext i8 %50 to i32, !dbg !4692
  %52 = icmp eq i8 %50, 0, !dbg !4693
  br i1 %52, label %262, label %53, !dbg !4694

; <label>:53:                                     ; preds = %47
  call void @llvm.dbg.value(metadata i32 1024, metadata !4637, metadata !DIExpression()), !dbg !4695
  call void @llvm.dbg.value(metadata i32 1, metadata !4640, metadata !DIExpression()), !dbg !4696
  %54 = tail call i8* @strchr(i8* nonnull %4, i32 %51) #14, !dbg !4697
  %55 = icmp eq i8* %54, null, !dbg !4697
  br i1 %55, label %56, label %58, !dbg !4699

; <label>:56:                                     ; preds = %53
  call void @llvm.dbg.value(metadata i64 %28, metadata !4631, metadata !DIExpression()), !dbg !4667
  store i64 %49, i64* %3, align 8, !dbg !4700, !tbaa !843
  %57 = or i32 %48, 2, !dbg !4702
  br label %265, !dbg !4703

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
  ], !dbg !4704

; <label>:59:                                     ; preds = %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58, %58
  %60 = tail call i8* @strchr(i8* nonnull %4, i32 48) #14, !dbg !4705
  %61 = icmp eq i8* %60, null, !dbg !4705
  br i1 %61, label %72, label %62, !dbg !4708

; <label>:62:                                     ; preds = %59
  %63 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !4709
  %64 = load i8, i8* %63, align 1, !dbg !4709, !tbaa !848
  %65 = sext i8 %64 to i32, !dbg !4709
  switch i32 %65, label %72 [
    i32 105, label %66
    i32 66, label %71
    i32 68, label %71
  ], !dbg !4710

; <label>:66:                                     ; preds = %62
  %67 = getelementptr inbounds i8, i8* %29, i64 2, !dbg !4711
  %68 = load i8, i8* %67, align 1, !dbg !4711, !tbaa !848
  %69 = icmp eq i8 %68, 66, !dbg !4714
  %70 = select i1 %69, i64 3, i64 1, !dbg !4715
  br label %72, !dbg !4715

; <label>:71:                                     ; preds = %62, %62
  call void @llvm.dbg.value(metadata i32 1000, metadata !4637, metadata !DIExpression()), !dbg !4695
  call void @llvm.dbg.value(metadata i32 2, metadata !4640, metadata !DIExpression()), !dbg !4696
  br label %72, !dbg !4716

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
  ], !dbg !4717

; <label>:75:                                     ; preds = %72
  call void @llvm.dbg.value(metadata i32 512, metadata !4718, metadata !DIExpression()), !dbg !4724
  %76 = icmp ugt i64 %49, 36028797018963967, !dbg !4727
  %77 = shl i64 %49, 9, !dbg !4729
  %78 = select i1 %76, i64 -1, i64 %77, !dbg !4730
  %79 = zext i1 %76 to i32, !dbg !4730
  call void @llvm.dbg.value(metadata i32 %79, metadata !4641, metadata !DIExpression()), !dbg !4731
  br label %253, !dbg !4732

; <label>:80:                                     ; preds = %72
  call void @llvm.dbg.value(metadata i32 1024, metadata !4718, metadata !DIExpression()), !dbg !4733
  %81 = icmp ugt i64 %49, 18014398509481983, !dbg !4735
  %82 = shl i64 %49, 10, !dbg !4736
  %83 = select i1 %81, i64 -1, i64 %82, !dbg !4737
  %84 = zext i1 %81 to i32, !dbg !4737
  call void @llvm.dbg.value(metadata i32 %84, metadata !4641, metadata !DIExpression()), !dbg !4731
  br label %253, !dbg !4738

; <label>:85:                                     ; preds = %72
  call void @llvm.dbg.value(metadata i32 6, metadata !4739, metadata !DIExpression()), !dbg !4747
  call void @llvm.dbg.value(metadata i32 0, metadata !4746, metadata !DIExpression()), !dbg !4749
  %86 = udiv i64 -1, %73
  call void @llvm.dbg.value(metadata i32 0, metadata !4746, metadata !DIExpression()), !dbg !4749
  call void @llvm.dbg.value(metadata i32 6, metadata !4739, metadata !DIExpression()), !dbg !4747
  %87 = icmp ult i64 %86, %49, !dbg !4750
  %88 = mul i64 %49, %73, !dbg !4752
  %89 = select i1 %87, i64 -1, i64 %88, !dbg !4753
  call void @llvm.dbg.value(metadata i32 5, metadata !4739, metadata !DIExpression()), !dbg !4747
  call void @llvm.dbg.value(metadata i32 5, metadata !4739, metadata !DIExpression()), !dbg !4747
  %90 = icmp ult i64 %86, %89, !dbg !4750
  %91 = mul i64 %89, %73, !dbg !4752
  %92 = select i1 %90, i64 -1, i64 %91, !dbg !4753
  %93 = or i1 %87, %90, !dbg !4754
  call void @llvm.dbg.value(metadata i32 4, metadata !4739, metadata !DIExpression()), !dbg !4747
  call void @llvm.dbg.value(metadata i32 4, metadata !4739, metadata !DIExpression()), !dbg !4747
  %94 = icmp ult i64 %86, %92, !dbg !4750
  %95 = mul i64 %92, %73, !dbg !4752
  %96 = select i1 %94, i64 -1, i64 %95, !dbg !4753
  %97 = or i1 %93, %94, !dbg !4754
  call void @llvm.dbg.value(metadata i32 3, metadata !4739, metadata !DIExpression()), !dbg !4747
  call void @llvm.dbg.value(metadata i32 3, metadata !4739, metadata !DIExpression()), !dbg !4747
  %98 = icmp ult i64 %86, %96, !dbg !4750
  %99 = mul i64 %96, %73, !dbg !4752
  %100 = select i1 %98, i64 -1, i64 %99, !dbg !4753
  %101 = or i1 %97, %98, !dbg !4754
  call void @llvm.dbg.value(metadata i32 2, metadata !4739, metadata !DIExpression()), !dbg !4747
  call void @llvm.dbg.value(metadata i32 2, metadata !4739, metadata !DIExpression()), !dbg !4747
  %102 = icmp ult i64 %86, %100, !dbg !4750
  %103 = mul i64 %100, %73, !dbg !4752
  %104 = select i1 %102, i64 -1, i64 %103, !dbg !4753
  %105 = or i1 %101, %102, !dbg !4754
  call void @llvm.dbg.value(metadata i32 1, metadata !4739, metadata !DIExpression()), !dbg !4747
  call void @llvm.dbg.value(metadata i32 1, metadata !4739, metadata !DIExpression()), !dbg !4747
  %106 = icmp ult i64 %86, %104, !dbg !4750
  %107 = mul i64 %104, %73, !dbg !4752
  %108 = select i1 %106, i64 -1, i64 %107, !dbg !4753
  %109 = or i1 %105, %106, !dbg !4754
  %110 = zext i1 %109 to i32, !dbg !4754
  call void @llvm.dbg.value(metadata i32 %110, metadata !4746, metadata !DIExpression()), !dbg !4749
  call void @llvm.dbg.value(metadata i32 0, metadata !4739, metadata !DIExpression()), !dbg !4747
  br label %253, !dbg !4755

; <label>:111:                                    ; preds = %72, %72
  call void @llvm.dbg.value(metadata i32 3, metadata !4739, metadata !DIExpression()), !dbg !4756
  call void @llvm.dbg.value(metadata i32 0, metadata !4746, metadata !DIExpression()), !dbg !4758
  %112 = udiv i64 -1, %73
  call void @llvm.dbg.value(metadata i32 0, metadata !4746, metadata !DIExpression()), !dbg !4758
  call void @llvm.dbg.value(metadata i32 3, metadata !4739, metadata !DIExpression()), !dbg !4756
  %113 = icmp ult i64 %112, %49, !dbg !4759
  %114 = mul i64 %49, %73, !dbg !4761
  %115 = select i1 %113, i64 -1, i64 %114, !dbg !4762
  call void @llvm.dbg.value(metadata i32 2, metadata !4739, metadata !DIExpression()), !dbg !4756
  call void @llvm.dbg.value(metadata i32 2, metadata !4739, metadata !DIExpression()), !dbg !4756
  %116 = icmp ult i64 %112, %115, !dbg !4759
  %117 = mul i64 %115, %73, !dbg !4761
  %118 = select i1 %116, i64 -1, i64 %117, !dbg !4762
  %119 = or i1 %113, %116, !dbg !4763
  call void @llvm.dbg.value(metadata i32 1, metadata !4739, metadata !DIExpression()), !dbg !4756
  call void @llvm.dbg.value(metadata i32 1, metadata !4739, metadata !DIExpression()), !dbg !4756
  %120 = icmp ult i64 %112, %118, !dbg !4759
  %121 = mul i64 %118, %73, !dbg !4761
  %122 = select i1 %120, i64 -1, i64 %121, !dbg !4762
  %123 = or i1 %119, %120, !dbg !4763
  %124 = zext i1 %123 to i32, !dbg !4763
  call void @llvm.dbg.value(metadata i32 %124, metadata !4746, metadata !DIExpression()), !dbg !4758
  call void @llvm.dbg.value(metadata i32 0, metadata !4739, metadata !DIExpression()), !dbg !4756
  br label %253, !dbg !4755

; <label>:125:                                    ; preds = %72, %72
  call void @llvm.dbg.value(metadata i32 1, metadata !4739, metadata !DIExpression()), !dbg !4764
  call void @llvm.dbg.value(metadata i32 0, metadata !4746, metadata !DIExpression()), !dbg !4766
  %126 = udiv i64 -1, %73
  call void @llvm.dbg.value(metadata i32 0, metadata !4746, metadata !DIExpression()), !dbg !4766
  call void @llvm.dbg.value(metadata i32 undef, metadata !4739, metadata !DIExpression()), !dbg !4764
  %127 = icmp ult i64 %126, %49, !dbg !4767
  %128 = mul i64 %49, %73, !dbg !4769
  %129 = select i1 %127, i64 -1, i64 %128, !dbg !4770
  %130 = zext i1 %127 to i32, !dbg !4770
  call void @llvm.dbg.value(metadata i32 %130, metadata !4746, metadata !DIExpression()), !dbg !4766
  call void @llvm.dbg.value(metadata i32 undef, metadata !4739, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4764
  br label %253, !dbg !4755

; <label>:131:                                    ; preds = %72, %72
  call void @llvm.dbg.value(metadata i32 2, metadata !4739, metadata !DIExpression()), !dbg !4771
  call void @llvm.dbg.value(metadata i32 0, metadata !4746, metadata !DIExpression()), !dbg !4773
  %132 = udiv i64 -1, %73
  call void @llvm.dbg.value(metadata i32 0, metadata !4746, metadata !DIExpression()), !dbg !4773
  call void @llvm.dbg.value(metadata i32 2, metadata !4739, metadata !DIExpression()), !dbg !4771
  %133 = icmp ult i64 %132, %49, !dbg !4774
  %134 = mul i64 %49, %73, !dbg !4776
  %135 = select i1 %133, i64 -1, i64 %134, !dbg !4777
  call void @llvm.dbg.value(metadata i32 1, metadata !4739, metadata !DIExpression()), !dbg !4771
  call void @llvm.dbg.value(metadata i32 1, metadata !4739, metadata !DIExpression()), !dbg !4771
  %136 = icmp ult i64 %132, %135, !dbg !4774
  %137 = mul i64 %135, %73, !dbg !4776
  %138 = select i1 %136, i64 -1, i64 %137, !dbg !4777
  %139 = or i1 %133, %136, !dbg !4778
  %140 = zext i1 %139 to i32, !dbg !4778
  call void @llvm.dbg.value(metadata i32 %140, metadata !4746, metadata !DIExpression()), !dbg !4773
  call void @llvm.dbg.value(metadata i32 0, metadata !4739, metadata !DIExpression()), !dbg !4771
  br label %253, !dbg !4755

; <label>:141:                                    ; preds = %72
  call void @llvm.dbg.value(metadata i32 5, metadata !4739, metadata !DIExpression()), !dbg !4779
  call void @llvm.dbg.value(metadata i32 0, metadata !4746, metadata !DIExpression()), !dbg !4781
  %142 = udiv i64 -1, %73
  call void @llvm.dbg.value(metadata i32 0, metadata !4746, metadata !DIExpression()), !dbg !4781
  call void @llvm.dbg.value(metadata i32 5, metadata !4739, metadata !DIExpression()), !dbg !4779
  %143 = icmp ult i64 %142, %49, !dbg !4782
  %144 = mul i64 %49, %73, !dbg !4784
  %145 = select i1 %143, i64 -1, i64 %144, !dbg !4785
  call void @llvm.dbg.value(metadata i32 4, metadata !4739, metadata !DIExpression()), !dbg !4779
  call void @llvm.dbg.value(metadata i32 4, metadata !4739, metadata !DIExpression()), !dbg !4779
  %146 = icmp ult i64 %142, %145, !dbg !4782
  %147 = mul i64 %145, %73, !dbg !4784
  %148 = select i1 %146, i64 -1, i64 %147, !dbg !4785
  %149 = or i1 %143, %146, !dbg !4786
  call void @llvm.dbg.value(metadata i32 3, metadata !4739, metadata !DIExpression()), !dbg !4779
  call void @llvm.dbg.value(metadata i32 3, metadata !4739, metadata !DIExpression()), !dbg !4779
  %150 = icmp ult i64 %142, %148, !dbg !4782
  %151 = mul i64 %148, %73, !dbg !4784
  %152 = select i1 %150, i64 -1, i64 %151, !dbg !4785
  %153 = or i1 %149, %150, !dbg !4786
  call void @llvm.dbg.value(metadata i32 2, metadata !4739, metadata !DIExpression()), !dbg !4779
  call void @llvm.dbg.value(metadata i32 2, metadata !4739, metadata !DIExpression()), !dbg !4779
  %154 = icmp ult i64 %142, %152, !dbg !4782
  %155 = mul i64 %152, %73, !dbg !4784
  %156 = select i1 %154, i64 -1, i64 %155, !dbg !4785
  %157 = or i1 %153, %154, !dbg !4786
  call void @llvm.dbg.value(metadata i32 1, metadata !4739, metadata !DIExpression()), !dbg !4779
  call void @llvm.dbg.value(metadata i32 1, metadata !4739, metadata !DIExpression()), !dbg !4779
  %158 = icmp ult i64 %142, %156, !dbg !4782
  %159 = mul i64 %156, %73, !dbg !4784
  %160 = select i1 %158, i64 -1, i64 %159, !dbg !4785
  %161 = or i1 %157, %158, !dbg !4786
  %162 = zext i1 %161 to i32, !dbg !4786
  call void @llvm.dbg.value(metadata i32 %162, metadata !4746, metadata !DIExpression()), !dbg !4781
  call void @llvm.dbg.value(metadata i32 0, metadata !4739, metadata !DIExpression()), !dbg !4779
  br label %253, !dbg !4755

; <label>:163:                                    ; preds = %72, %72
  call void @llvm.dbg.value(metadata i32 4, metadata !4739, metadata !DIExpression()), !dbg !4787
  call void @llvm.dbg.value(metadata i32 0, metadata !4746, metadata !DIExpression()), !dbg !4789
  %164 = udiv i64 -1, %73
  call void @llvm.dbg.value(metadata i32 0, metadata !4746, metadata !DIExpression()), !dbg !4789
  call void @llvm.dbg.value(metadata i32 4, metadata !4739, metadata !DIExpression()), !dbg !4787
  %165 = icmp ult i64 %164, %49, !dbg !4790
  %166 = mul i64 %49, %73, !dbg !4792
  %167 = select i1 %165, i64 -1, i64 %166, !dbg !4793
  call void @llvm.dbg.value(metadata i32 3, metadata !4739, metadata !DIExpression()), !dbg !4787
  call void @llvm.dbg.value(metadata i32 3, metadata !4739, metadata !DIExpression()), !dbg !4787
  %168 = icmp ult i64 %164, %167, !dbg !4790
  %169 = mul i64 %167, %73, !dbg !4792
  %170 = select i1 %168, i64 -1, i64 %169, !dbg !4793
  %171 = or i1 %165, %168, !dbg !4794
  call void @llvm.dbg.value(metadata i32 2, metadata !4739, metadata !DIExpression()), !dbg !4787
  call void @llvm.dbg.value(metadata i32 2, metadata !4739, metadata !DIExpression()), !dbg !4787
  %172 = icmp ult i64 %164, %170, !dbg !4790
  %173 = mul i64 %170, %73, !dbg !4792
  %174 = select i1 %172, i64 -1, i64 %173, !dbg !4793
  %175 = or i1 %171, %172, !dbg !4794
  call void @llvm.dbg.value(metadata i32 1, metadata !4739, metadata !DIExpression()), !dbg !4787
  call void @llvm.dbg.value(metadata i32 1, metadata !4739, metadata !DIExpression()), !dbg !4787
  %176 = icmp ult i64 %164, %174, !dbg !4790
  %177 = mul i64 %174, %73, !dbg !4792
  %178 = select i1 %176, i64 -1, i64 %177, !dbg !4793
  %179 = or i1 %175, %176, !dbg !4794
  %180 = zext i1 %179 to i32, !dbg !4794
  call void @llvm.dbg.value(metadata i32 %180, metadata !4746, metadata !DIExpression()), !dbg !4789
  call void @llvm.dbg.value(metadata i32 0, metadata !4739, metadata !DIExpression()), !dbg !4787
  br label %253, !dbg !4755

; <label>:181:                                    ; preds = %72
  call void @llvm.dbg.value(metadata i32 2, metadata !4718, metadata !DIExpression()), !dbg !4795
  %182 = icmp slt i64 %49, 0, !dbg !4797
  %183 = shl i64 %49, 1, !dbg !4798
  %184 = select i1 %182, i64 -1, i64 %183, !dbg !4799
  %185 = lshr i64 %49, 63, !dbg !4799
  %186 = trunc i64 %185 to i32, !dbg !4799
  call void @llvm.dbg.value(metadata i32 %186, metadata !4641, metadata !DIExpression()), !dbg !4731
  br label %253, !dbg !4800

; <label>:187:                                    ; preds = %72
  call void @llvm.dbg.value(metadata i32 8, metadata !4739, metadata !DIExpression()), !dbg !4801
  call void @llvm.dbg.value(metadata i32 0, metadata !4746, metadata !DIExpression()), !dbg !4803
  %188 = udiv i64 -1, %73
  call void @llvm.dbg.value(metadata i32 0, metadata !4746, metadata !DIExpression()), !dbg !4803
  call void @llvm.dbg.value(metadata i32 8, metadata !4739, metadata !DIExpression()), !dbg !4801
  %189 = icmp ult i64 %188, %49, !dbg !4804
  %190 = mul i64 %49, %73, !dbg !4806
  %191 = select i1 %189, i64 -1, i64 %190, !dbg !4807
  call void @llvm.dbg.value(metadata i32 7, metadata !4739, metadata !DIExpression()), !dbg !4801
  call void @llvm.dbg.value(metadata i32 7, metadata !4739, metadata !DIExpression()), !dbg !4801
  %192 = icmp ult i64 %188, %191, !dbg !4804
  %193 = mul i64 %191, %73, !dbg !4806
  %194 = select i1 %192, i64 -1, i64 %193, !dbg !4807
  %195 = or i1 %189, %192, !dbg !4808
  call void @llvm.dbg.value(metadata i32 6, metadata !4739, metadata !DIExpression()), !dbg !4801
  call void @llvm.dbg.value(metadata i32 6, metadata !4739, metadata !DIExpression()), !dbg !4801
  %196 = icmp ult i64 %188, %194, !dbg !4804
  %197 = mul i64 %194, %73, !dbg !4806
  %198 = select i1 %196, i64 -1, i64 %197, !dbg !4807
  %199 = or i1 %195, %196, !dbg !4808
  call void @llvm.dbg.value(metadata i32 5, metadata !4739, metadata !DIExpression()), !dbg !4801
  call void @llvm.dbg.value(metadata i32 5, metadata !4739, metadata !DIExpression()), !dbg !4801
  %200 = icmp ult i64 %188, %198, !dbg !4804
  %201 = mul i64 %198, %73, !dbg !4806
  %202 = select i1 %200, i64 -1, i64 %201, !dbg !4807
  %203 = or i1 %199, %200, !dbg !4808
  call void @llvm.dbg.value(metadata i32 4, metadata !4739, metadata !DIExpression()), !dbg !4801
  call void @llvm.dbg.value(metadata i32 4, metadata !4739, metadata !DIExpression()), !dbg !4801
  %204 = icmp ult i64 %188, %202, !dbg !4804
  %205 = mul i64 %202, %73, !dbg !4806
  %206 = select i1 %204, i64 -1, i64 %205, !dbg !4807
  %207 = or i1 %203, %204, !dbg !4808
  call void @llvm.dbg.value(metadata i32 3, metadata !4739, metadata !DIExpression()), !dbg !4801
  call void @llvm.dbg.value(metadata i32 3, metadata !4739, metadata !DIExpression()), !dbg !4801
  %208 = icmp ult i64 %188, %206, !dbg !4804
  %209 = mul i64 %206, %73, !dbg !4806
  %210 = select i1 %208, i64 -1, i64 %209, !dbg !4807
  %211 = or i1 %207, %208, !dbg !4808
  call void @llvm.dbg.value(metadata i32 2, metadata !4739, metadata !DIExpression()), !dbg !4801
  call void @llvm.dbg.value(metadata i32 2, metadata !4739, metadata !DIExpression()), !dbg !4801
  %212 = icmp ult i64 %188, %210, !dbg !4804
  %213 = mul i64 %210, %73, !dbg !4806
  %214 = select i1 %212, i64 -1, i64 %213, !dbg !4807
  %215 = or i1 %211, %212, !dbg !4808
  call void @llvm.dbg.value(metadata i32 1, metadata !4739, metadata !DIExpression()), !dbg !4801
  call void @llvm.dbg.value(metadata i32 1, metadata !4739, metadata !DIExpression()), !dbg !4801
  %216 = icmp ult i64 %188, %214, !dbg !4804
  %217 = mul i64 %214, %73, !dbg !4806
  %218 = select i1 %216, i64 -1, i64 %217, !dbg !4807
  %219 = or i1 %215, %216, !dbg !4808
  %220 = zext i1 %219 to i32, !dbg !4808
  call void @llvm.dbg.value(metadata i32 %220, metadata !4746, metadata !DIExpression()), !dbg !4803
  call void @llvm.dbg.value(metadata i32 0, metadata !4739, metadata !DIExpression()), !dbg !4801
  br label %253, !dbg !4755

; <label>:221:                                    ; preds = %72
  call void @llvm.dbg.value(metadata i32 7, metadata !4739, metadata !DIExpression()), !dbg !4809
  call void @llvm.dbg.value(metadata i32 0, metadata !4746, metadata !DIExpression()), !dbg !4811
  %222 = udiv i64 -1, %73
  call void @llvm.dbg.value(metadata i32 0, metadata !4746, metadata !DIExpression()), !dbg !4811
  call void @llvm.dbg.value(metadata i32 7, metadata !4739, metadata !DIExpression()), !dbg !4809
  %223 = icmp ult i64 %222, %49, !dbg !4812
  %224 = mul i64 %49, %73, !dbg !4814
  %225 = select i1 %223, i64 -1, i64 %224, !dbg !4815
  call void @llvm.dbg.value(metadata i32 6, metadata !4739, metadata !DIExpression()), !dbg !4809
  call void @llvm.dbg.value(metadata i32 6, metadata !4739, metadata !DIExpression()), !dbg !4809
  %226 = icmp ult i64 %222, %225, !dbg !4812
  %227 = mul i64 %225, %73, !dbg !4814
  %228 = select i1 %226, i64 -1, i64 %227, !dbg !4815
  %229 = or i1 %223, %226, !dbg !4816
  call void @llvm.dbg.value(metadata i32 5, metadata !4739, metadata !DIExpression()), !dbg !4809
  call void @llvm.dbg.value(metadata i32 5, metadata !4739, metadata !DIExpression()), !dbg !4809
  %230 = icmp ult i64 %222, %228, !dbg !4812
  %231 = mul i64 %228, %73, !dbg !4814
  %232 = select i1 %230, i64 -1, i64 %231, !dbg !4815
  %233 = or i1 %229, %230, !dbg !4816
  call void @llvm.dbg.value(metadata i32 4, metadata !4739, metadata !DIExpression()), !dbg !4809
  call void @llvm.dbg.value(metadata i32 4, metadata !4739, metadata !DIExpression()), !dbg !4809
  %234 = icmp ult i64 %222, %232, !dbg !4812
  %235 = mul i64 %232, %73, !dbg !4814
  %236 = select i1 %234, i64 -1, i64 %235, !dbg !4815
  %237 = or i1 %233, %234, !dbg !4816
  call void @llvm.dbg.value(metadata i32 3, metadata !4739, metadata !DIExpression()), !dbg !4809
  call void @llvm.dbg.value(metadata i32 3, metadata !4739, metadata !DIExpression()), !dbg !4809
  %238 = icmp ult i64 %222, %236, !dbg !4812
  %239 = mul i64 %236, %73, !dbg !4814
  %240 = select i1 %238, i64 -1, i64 %239, !dbg !4815
  %241 = or i1 %237, %238, !dbg !4816
  call void @llvm.dbg.value(metadata i32 2, metadata !4739, metadata !DIExpression()), !dbg !4809
  call void @llvm.dbg.value(metadata i32 2, metadata !4739, metadata !DIExpression()), !dbg !4809
  %242 = icmp ult i64 %222, %240, !dbg !4812
  %243 = mul i64 %240, %73, !dbg !4814
  %244 = select i1 %242, i64 -1, i64 %243, !dbg !4815
  %245 = or i1 %241, %242, !dbg !4816
  call void @llvm.dbg.value(metadata i32 1, metadata !4739, metadata !DIExpression()), !dbg !4809
  call void @llvm.dbg.value(metadata i32 1, metadata !4739, metadata !DIExpression()), !dbg !4809
  %246 = icmp ult i64 %222, %244, !dbg !4812
  %247 = mul i64 %244, %73, !dbg !4814
  %248 = select i1 %246, i64 -1, i64 %247, !dbg !4815
  %249 = or i1 %245, %246, !dbg !4816
  %250 = zext i1 %249 to i32, !dbg !4816
  call void @llvm.dbg.value(metadata i32 %250, metadata !4746, metadata !DIExpression()), !dbg !4811
  call void @llvm.dbg.value(metadata i32 0, metadata !4739, metadata !DIExpression()), !dbg !4809
  br label %253, !dbg !4755

; <label>:251:                                    ; preds = %72
  call void @llvm.dbg.value(metadata i64 %28, metadata !4631, metadata !DIExpression()), !dbg !4667
  store i64 %49, i64* %3, align 8, !dbg !4817, !tbaa !843
  %252 = or i32 %48, 2, !dbg !4818
  br label %265, !dbg !4819

; <label>:253:                                    ; preds = %221, %187, %163, %141, %131, %125, %111, %85, %75, %80, %181, %72
  %254 = phi i64 [ %184, %181 ], [ %49, %72 ], [ %83, %80 ], [ %78, %75 ], [ %108, %85 ], [ %122, %111 ], [ %129, %125 ], [ %138, %131 ], [ %160, %141 ], [ %178, %163 ], [ %218, %187 ], [ %248, %221 ], !dbg !4820
  %255 = phi i32 [ %186, %181 ], [ 0, %72 ], [ %84, %80 ], [ %79, %75 ], [ %110, %85 ], [ %124, %111 ], [ %130, %125 ], [ %140, %131 ], [ %162, %141 ], [ %180, %163 ], [ %220, %187 ], [ %250, %221 ], !dbg !4821
  call void @llvm.dbg.value(metadata i32 %255, metadata !4641, metadata !DIExpression()), !dbg !4731
  %256 = or i32 %255, %48, !dbg !4755
  call void @llvm.dbg.value(metadata i32 %256, metadata !4632, metadata !DIExpression()), !dbg !4648
  %257 = getelementptr inbounds i8, i8* %29, i64 %74, !dbg !4822
  store i8* %257, i8** %25, align 8, !dbg !4822, !tbaa !741
  %258 = load i8, i8* %257, align 1, !dbg !4823, !tbaa !848
  %259 = icmp eq i8 %258, 0, !dbg !4823
  %260 = or i32 %256, 2, !dbg !4825
  %261 = select i1 %259, i32 %256, i32 %260, !dbg !4826
  call void @llvm.dbg.value(metadata i32 %261, metadata !4632, metadata !DIExpression()), !dbg !4648
  call void @llvm.dbg.value(metadata i32 %261, metadata !4632, metadata !DIExpression()), !dbg !4648
  br label %262

; <label>:262:                                    ; preds = %253, %47
  %263 = phi i64 [ %49, %47 ], [ %254, %253 ], !dbg !4827
  %264 = phi i32 [ %48, %47 ], [ %261, %253 ], !dbg !4648
  call void @llvm.dbg.value(metadata i32 %264, metadata !4632, metadata !DIExpression()), !dbg !4648
  call void @llvm.dbg.value(metadata i64 %263, metadata !4631, metadata !DIExpression()), !dbg !4667
  store i64 %263, i64* %3, align 8, !dbg !4828, !tbaa !843
  br label %265, !dbg !4829

; <label>:265:                                    ; preds = %24, %56, %251, %40, %31, %33, %36, %262, %46
  %266 = phi i32 [ %264, %262 ], [ %44, %46 ], [ 4, %24 ], [ 4, %36 ], [ 4, %33 ], [ 4, %31 ], [ 4, %40 ], [ %57, %56 ], [ %252, %251 ], !dbg !4830
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #12, !dbg !4831
  ret i32 %266, !dbg !4831
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #6

; Function Attrs: nounwind
declare i64 @strtoul(i8* readonly, i8** nocapture, i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #7 !dbg !4832 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4835, metadata !DIExpression()), !dbg !4841
  call void @llvm.dbg.value(metadata i64 %1, metadata !4836, metadata !DIExpression()), !dbg !4842
  %3 = icmp eq i64 %0, 0, !dbg !4843
  %4 = icmp eq i64 %1, 0, !dbg !4844
  %5 = or i1 %3, %4, !dbg !4845
  br i1 %5, label %12, label %6, !dbg !4845

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4846
  call void @llvm.dbg.value(metadata i64 %7, metadata !4838, metadata !DIExpression()), !dbg !4847
  %8 = udiv i64 %7, %1, !dbg !4848
  %9 = icmp eq i64 %8, %0, !dbg !4850
  br i1 %9, label %12, label %10, !dbg !4851

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !4852
  store i32 12, i32* %11, align 4, !dbg !4854, !tbaa !863
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %14, metadata !4835, metadata !DIExpression()), !dbg !4841
  call void @llvm.dbg.value(metadata i64 %13, metadata !4836, metadata !DIExpression()), !dbg !4842
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #12, !dbg !4855
  call void @llvm.dbg.value(metadata i8* %15, metadata !4837, metadata !DIExpression()), !dbg !4856
  br label %16, !dbg !4857

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ], !dbg !4858
  ret i8* %17, !dbg !4859
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #7 !dbg !4860 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4899, metadata !DIExpression()), !dbg !4903
  call void @llvm.dbg.value(metadata i32 0, metadata !4900, metadata !DIExpression()), !dbg !4904
  call void @llvm.dbg.value(metadata i32 0, metadata !4902, metadata !DIExpression()), !dbg !4905
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !4906
  call void @llvm.dbg.value(metadata i32 %2, metadata !4901, metadata !DIExpression()), !dbg !4907
  %3 = icmp slt i32 %2, 0, !dbg !4908
  br i1 %3, label %4, label %6, !dbg !4910

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4911
  br label %24, !dbg !4912

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #12, !dbg !4913
  %8 = icmp eq i32 %7, 0, !dbg !4913
  br i1 %8, label %13, label %9, !dbg !4915

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !4916
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #12, !dbg !4917
  %12 = icmp eq i64 %11, -1, !dbg !4918
  br i1 %12, label %16, label %13, !dbg !4919

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #12, !dbg !4920
  %15 = icmp eq i32 %14, 0, !dbg !4920
  br i1 %15, label %16, label %18, !dbg !4921

; <label>:16:                                     ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !4900, metadata !DIExpression()), !dbg !4904
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4922
  call void @llvm.dbg.value(metadata i32 %21, metadata !4902, metadata !DIExpression()), !dbg !4905
  br label %24, !dbg !4923

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !4924
  %20 = load i32, i32* %19, align 4, !dbg !4924, !tbaa !863
  call void @llvm.dbg.value(metadata i32 %20, metadata !4900, metadata !DIExpression()), !dbg !4904
  call void @llvm.dbg.value(metadata i32 %20, metadata !4900, metadata !DIExpression()), !dbg !4904
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4922
  call void @llvm.dbg.value(metadata i32 %21, metadata !4902, metadata !DIExpression()), !dbg !4905
  %22 = icmp eq i32 %20, 0, !dbg !4925
  br i1 %22, label %24, label %23, !dbg !4923

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4927, !tbaa !863
  call void @llvm.dbg.value(metadata i32 -1, metadata !4902, metadata !DIExpression()), !dbg !4905
  br label %24, !dbg !4929

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4930
  ret i32 %25, !dbg !4931
}

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !4932 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4971, metadata !DIExpression()), !dbg !4972
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4973
  br i1 %2, label %6, label %3, !dbg !4975

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #12, !dbg !4976
  %5 = icmp eq i32 %4, 0, !dbg !4976
  br i1 %5, label %6, label %8, !dbg !4977

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4978
  br label %17, !dbg !4979

; <label>:8:                                      ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4980, metadata !DIExpression()) #12, !dbg !4985
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4987
  %10 = load i32, i32* %9, align 8, !dbg !4987, !tbaa !1170
  %11 = and i32 %10, 256, !dbg !4989
  %12 = icmp eq i32 %11, 0, !dbg !4989
  br i1 %12, label %15, label %13, !dbg !4990

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #12, !dbg !4991
  br label %15, !dbg !4991

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4992
  br label %17, !dbg !4993

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !4994
  ret i32 %18, !dbg !4995
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #7 !dbg !4996 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !5035, metadata !DIExpression()), !dbg !5041
  call void @llvm.dbg.value(metadata i64 %1, metadata !5036, metadata !DIExpression()), !dbg !5042
  call void @llvm.dbg.value(metadata i32 %2, metadata !5037, metadata !DIExpression()), !dbg !5043
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !5044
  %5 = load i8*, i8** %4, align 8, !dbg !5044, !tbaa !2126
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !5045
  %7 = load i8*, i8** %6, align 8, !dbg !5045, !tbaa !2125
  %8 = icmp eq i8* %5, %7, !dbg !5046
  br i1 %8, label %9, label %28, !dbg !5047

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !5048
  %11 = load i8*, i8** %10, align 8, !dbg !5048, !tbaa !1243
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !5049
  %13 = load i8*, i8** %12, align 8, !dbg !5049, !tbaa !5050
  %14 = icmp eq i8* %11, %13, !dbg !5051
  br i1 %14, label %15, label %28, !dbg !5052

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !5053
  %17 = load i8*, i8** %16, align 8, !dbg !5053, !tbaa !5054
  %18 = icmp eq i8* %17, null, !dbg !5055
  br i1 %18, label %19, label %28, !dbg !5056

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !5057
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #12, !dbg !5058
  call void @llvm.dbg.value(metadata i64 %21, metadata !5038, metadata !DIExpression()), !dbg !5059
  %22 = icmp eq i64 %21, -1, !dbg !5060
  br i1 %22, label %30, label %23, !dbg !5062

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5063
  %25 = load i32, i32* %24, align 8, !dbg !5064, !tbaa !1170
  %26 = and i32 %25, -17, !dbg !5064
  store i32 %26, i32* %24, align 8, !dbg !5064, !tbaa !1170
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !5065
  store i64 %21, i64* %27, align 8, !dbg !5066, !tbaa !5067
  br label %30, !dbg !5068

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !5069
  br label %30, !dbg !5070

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !5071
  ret i32 %31, !dbg !5072
}

; Function Attrs: nounwind
declare i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #7 !dbg !5073 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !5090, metadata !DIExpression()), !dbg !5099
  call void @llvm.dbg.value(metadata i8* %1, metadata !5091, metadata !DIExpression()), !dbg !5100
  call void @llvm.dbg.value(metadata i64 %2, metadata !5092, metadata !DIExpression()), !dbg !5101
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !5093, metadata !DIExpression()), !dbg !5102
  %6 = bitcast i32* %5 to i8*, !dbg !5103
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #12, !dbg !5103
  %7 = icmp eq i32* %0, null, !dbg !5104
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !5106
  call void @llvm.dbg.value(metadata i32* %8, metadata !5090, metadata !DIExpression()), !dbg !5099
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #12, !dbg !5107
  call void @llvm.dbg.value(metadata i64 %9, metadata !5094, metadata !DIExpression()), !dbg !5108
  %10 = icmp ugt i64 %9, -3, !dbg !5109
  %11 = icmp ne i64 %2, 0, !dbg !5110
  %12 = and i1 %11, %10, !dbg !5111
  br i1 %12, label %13, label %18, !dbg !5111

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #12, !dbg !5112
  br i1 %14, label %18, label %15, !dbg !5113

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !5114, !tbaa !848
  call void @llvm.dbg.value(metadata i8 %16, metadata !5096, metadata !DIExpression()), !dbg !5115
  %17 = zext i8 %16 to i32, !dbg !5116
  store i32 %17, i32* %8, align 4, !dbg !5117, !tbaa !863
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !5118
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #12, !dbg !5119
  ret i64 %19, !dbg !5119
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !5120 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !5159, metadata !DIExpression()), !dbg !5164
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #12, !dbg !5165
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !5166, metadata !DIExpression()), !dbg !5169
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5171
  %4 = load i32, i32* %3, align 8, !dbg !5171, !tbaa !1170
  %5 = and i32 %4, 32, !dbg !5171
  %6 = icmp eq i32 %5, 0, !dbg !5172
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #12, !dbg !5173
  %8 = icmp ne i32 %7, 0, !dbg !5174
  br i1 %6, label %9, label %19, !dbg !5175

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !5177
  %11 = xor i1 %8, true, !dbg !5178
  %12 = or i1 %10, %11, !dbg !5178
  %13 = sext i1 %8 to i32, !dbg !5178
  br i1 %12, label %22, label %14, !dbg !5178

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !5179
  %16 = load i32, i32* %15, align 4, !dbg !5179, !tbaa !863
  %17 = icmp ne i32 %16, 9, !dbg !5180
  %18 = sext i1 %17 to i32, !dbg !5181
  br label %22, !dbg !5181

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !5182

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !5184
  store i32 0, i32* %21, align 4, !dbg !5186, !tbaa !863
  br label %22, !dbg !5184

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !5187
  ret i32 %23, !dbg !5188
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #7 !dbg !5189 {
  %1 = tail call i8* @nl_langinfo(i32 14) #12, !dbg !5195
  call void @llvm.dbg.value(metadata i8* %1, metadata !5194, metadata !DIExpression()), !dbg !5196
  %2 = icmp eq i8* %1, null, !dbg !5197
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.202, i64 0, i64 0), i8* %1, !dbg !5199
  call void @llvm.dbg.value(metadata i8* %3, metadata !5194, metadata !DIExpression()), !dbg !5196
  %4 = load i8, i8* %3, align 1, !dbg !5200, !tbaa !848
  %5 = icmp eq i8 %4, 0, !dbg !5204
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.203, i64 0, i64 0), i8* %3, !dbg !5205
  call void @llvm.dbg.value(metadata i8* %6, metadata !5194, metadata !DIExpression()), !dbg !5196
  ret i8* %6, !dbg !5206
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @memcoll(i8* nocapture, i64, i8* nocapture, i64) local_unnamed_addr #7 !dbg !5207 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !5210, metadata !DIExpression()), !dbg !5219
  call void @llvm.dbg.value(metadata i64 %1, metadata !5211, metadata !DIExpression()), !dbg !5220
  call void @llvm.dbg.value(metadata i8* %2, metadata !5212, metadata !DIExpression()), !dbg !5221
  call void @llvm.dbg.value(metadata i64 %3, metadata !5213, metadata !DIExpression()), !dbg !5222
  %5 = icmp eq i64 %1, %3, !dbg !5223
  br i1 %5, label %6, label %11, !dbg !5224

; <label>:6:                                      ; preds = %4
  %7 = tail call i32 @memcmp(i8* %0, i8* %2, i64 %1) #14, !dbg !5225
  %8 = icmp eq i32 %7, 0, !dbg !5226
  br i1 %8, label %9, label %11, !dbg !5227

; <label>:9:                                      ; preds = %6
  %10 = tail call i32* @__errno_location() #17, !dbg !5228
  store i32 0, i32* %10, align 4, !dbg !5230, !tbaa !863
  call void @llvm.dbg.value(metadata i32 0, metadata !5214, metadata !DIExpression()), !dbg !5231
  br label %43, !dbg !5232

; <label>:11:                                     ; preds = %6, %4
  %12 = getelementptr inbounds i8, i8* %0, i64 %1, !dbg !5233
  %13 = load i8, i8* %12, align 1, !dbg !5233, !tbaa !848
  call void @llvm.dbg.value(metadata i8 %13, metadata !5215, metadata !DIExpression()), !dbg !5234
  %14 = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !5235
  %15 = load i8, i8* %14, align 1, !dbg !5235, !tbaa !848
  call void @llvm.dbg.value(metadata i8 %15, metadata !5218, metadata !DIExpression()), !dbg !5236
  store i8 0, i8* %12, align 1, !dbg !5237, !tbaa !848
  store i8 0, i8* %14, align 1, !dbg !5238, !tbaa !848
  %16 = add i64 %1, 1, !dbg !5239
  %17 = add i64 %3, 1, !dbg !5240
  call void @llvm.dbg.value(metadata i8* %0, metadata !5241, metadata !DIExpression()) #12, !dbg !5251
  call void @llvm.dbg.value(metadata i64 %16, metadata !5244, metadata !DIExpression()) #12, !dbg !5253
  call void @llvm.dbg.value(metadata i8* %2, metadata !5245, metadata !DIExpression()) #12, !dbg !5254
  call void @llvm.dbg.value(metadata i64 %17, metadata !5246, metadata !DIExpression()) #12, !dbg !5255
  %18 = tail call i32* @__errno_location() #17, !dbg !5256
  br label %19, !dbg !5257

; <label>:19:                                     ; preds = %37, %11
  %20 = phi i8* [ %2, %11 ], [ %38, %37 ]
  %21 = phi i64 [ %17, %11 ], [ %32, %37 ]
  %22 = phi i64 [ %16, %11 ], [ %31, %37 ]
  %23 = phi i8* [ %0, %11 ], [ %39, %37 ]
  call void @llvm.dbg.value(metadata i8* %23, metadata !5241, metadata !DIExpression()) #12, !dbg !5251
  call void @llvm.dbg.value(metadata i64 %22, metadata !5244, metadata !DIExpression()) #12, !dbg !5253
  call void @llvm.dbg.value(metadata i64 %21, metadata !5246, metadata !DIExpression()) #12, !dbg !5255
  call void @llvm.dbg.value(metadata i8* %20, metadata !5245, metadata !DIExpression()) #12, !dbg !5254
  store i32 0, i32* %18, align 4, !dbg !5258, !tbaa !863
  %24 = tail call i32 @strcoll(i8* %23, i8* %20) #14, !dbg !5259
  call void @llvm.dbg.value(metadata i32 %24, metadata !5247, metadata !DIExpression()) #12, !dbg !5260
  %25 = icmp eq i32 %24, 0, !dbg !5261
  br i1 %25, label %26, label %41, !dbg !5257

; <label>:26:                                     ; preds = %19
  %27 = tail call i64 @strlen(i8* %23) #14, !dbg !5262
  %28 = add i64 %27, 1, !dbg !5263
  call void @llvm.dbg.value(metadata i64 %28, metadata !5248, metadata !DIExpression()) #12, !dbg !5264
  %29 = tail call i64 @strlen(i8* %20) #14, !dbg !5265
  %30 = add i64 %29, 1, !dbg !5266
  call void @llvm.dbg.value(metadata i64 %30, metadata !5250, metadata !DIExpression()) #12, !dbg !5267
  %31 = sub i64 %22, %28, !dbg !5268
  call void @llvm.dbg.value(metadata i64 %31, metadata !5244, metadata !DIExpression()) #12, !dbg !5253
  %32 = sub i64 %21, %30, !dbg !5269
  call void @llvm.dbg.value(metadata i64 %32, metadata !5246, metadata !DIExpression()) #12, !dbg !5255
  %33 = icmp eq i64 %31, 0, !dbg !5270
  br i1 %33, label %34, label %37, !dbg !5272

; <label>:34:                                     ; preds = %26
  %35 = icmp ne i64 %32, 0, !dbg !5273
  %36 = sext i1 %35 to i32, !dbg !5274
  br label %41

; <label>:37:                                     ; preds = %26
  %38 = getelementptr inbounds i8, i8* %20, i64 %30, !dbg !5275
  call void @llvm.dbg.value(metadata i8* %38, metadata !5245, metadata !DIExpression()) #12, !dbg !5254
  %39 = getelementptr inbounds i8, i8* %23, i64 %28, !dbg !5276
  call void @llvm.dbg.value(metadata i8* %39, metadata !5241, metadata !DIExpression()) #12, !dbg !5251
  %40 = icmp eq i64 %32, 0, !dbg !5277
  br i1 %40, label %41, label %19, !llvm.loop !5279

; <label>:41:                                     ; preds = %19, %37, %34
  %42 = phi i32 [ %36, %34 ], [ 1, %37 ], [ %24, %19 ], !dbg !5282
  call void @llvm.dbg.value(metadata i32 %42, metadata !5214, metadata !DIExpression()), !dbg !5231
  store i8 %13, i8* %12, align 1, !dbg !5283, !tbaa !848
  store i8 %15, i8* %14, align 1, !dbg !5284, !tbaa !848
  br label %43

; <label>:43:                                     ; preds = %41, %9
  %44 = phi i32 [ 0, %9 ], [ %42, %41 ], !dbg !5285
  call void @llvm.dbg.value(metadata i32 %44, metadata !5214, metadata !DIExpression()), !dbg !5231
  ret i32 %44, !dbg !5286
}

; Function Attrs: nounwind readonly
declare i32 @strcoll(i8* nocapture, i8* nocapture) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @memcoll0(i8* nocapture readonly, i64, i8* nocapture readonly, i64) local_unnamed_addr #7 !dbg !5287 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !5289, metadata !DIExpression()), !dbg !5293
  call void @llvm.dbg.value(metadata i64 %1, metadata !5290, metadata !DIExpression()), !dbg !5294
  call void @llvm.dbg.value(metadata i8* %2, metadata !5291, metadata !DIExpression()), !dbg !5295
  call void @llvm.dbg.value(metadata i64 %3, metadata !5292, metadata !DIExpression()), !dbg !5296
  %5 = icmp eq i64 %1, %3, !dbg !5297
  br i1 %5, label %6, label %11, !dbg !5299

; <label>:6:                                      ; preds = %4
  %7 = tail call i32 @memcmp(i8* %0, i8* %2, i64 %1) #14, !dbg !5300
  %8 = icmp eq i32 %7, 0, !dbg !5301
  br i1 %8, label %9, label %11, !dbg !5302

; <label>:9:                                      ; preds = %6
  %10 = tail call i32* @__errno_location() #17, !dbg !5303
  store i32 0, i32* %10, align 4, !dbg !5305, !tbaa !863
  br label %35, !dbg !5306

; <label>:11:                                     ; preds = %6, %4
  call void @llvm.dbg.value(metadata i8* %0, metadata !5241, metadata !DIExpression()) #12, !dbg !5307
  call void @llvm.dbg.value(metadata i64 %1, metadata !5244, metadata !DIExpression()) #12, !dbg !5309
  call void @llvm.dbg.value(metadata i8* %2, metadata !5245, metadata !DIExpression()) #12, !dbg !5310
  call void @llvm.dbg.value(metadata i64 %3, metadata !5246, metadata !DIExpression()) #12, !dbg !5311
  %12 = tail call i32* @__errno_location() #17, !dbg !5312
  br label %13, !dbg !5313

; <label>:13:                                     ; preds = %31, %11
  %14 = phi i8* [ %2, %11 ], [ %32, %31 ]
  %15 = phi i64 [ %3, %11 ], [ %26, %31 ]
  %16 = phi i64 [ %1, %11 ], [ %25, %31 ]
  %17 = phi i8* [ %0, %11 ], [ %33, %31 ]
  call void @llvm.dbg.value(metadata i8* %17, metadata !5241, metadata !DIExpression()) #12, !dbg !5307
  call void @llvm.dbg.value(metadata i64 %16, metadata !5244, metadata !DIExpression()) #12, !dbg !5309
  call void @llvm.dbg.value(metadata i64 %15, metadata !5246, metadata !DIExpression()) #12, !dbg !5311
  call void @llvm.dbg.value(metadata i8* %14, metadata !5245, metadata !DIExpression()) #12, !dbg !5310
  store i32 0, i32* %12, align 4, !dbg !5314, !tbaa !863
  %18 = tail call i32 @strcoll(i8* %17, i8* %14) #14, !dbg !5315
  call void @llvm.dbg.value(metadata i32 %18, metadata !5247, metadata !DIExpression()) #12, !dbg !5316
  %19 = icmp eq i32 %18, 0, !dbg !5317
  br i1 %19, label %20, label %35, !dbg !5313

; <label>:20:                                     ; preds = %13
  %21 = tail call i64 @strlen(i8* %17) #14, !dbg !5318
  %22 = add i64 %21, 1, !dbg !5319
  call void @llvm.dbg.value(metadata i64 %22, metadata !5248, metadata !DIExpression()) #12, !dbg !5320
  %23 = tail call i64 @strlen(i8* %14) #14, !dbg !5321
  %24 = add i64 %23, 1, !dbg !5322
  call void @llvm.dbg.value(metadata i64 %24, metadata !5250, metadata !DIExpression()) #12, !dbg !5323
  %25 = sub i64 %16, %22, !dbg !5324
  call void @llvm.dbg.value(metadata i64 %25, metadata !5244, metadata !DIExpression()) #12, !dbg !5309
  %26 = sub i64 %15, %24, !dbg !5325
  call void @llvm.dbg.value(metadata i64 %26, metadata !5246, metadata !DIExpression()) #12, !dbg !5311
  %27 = icmp eq i64 %25, 0, !dbg !5326
  br i1 %27, label %28, label %31, !dbg !5327

; <label>:28:                                     ; preds = %20
  %29 = icmp ne i64 %26, 0, !dbg !5328
  %30 = sext i1 %29 to i32, !dbg !5329
  br label %35

; <label>:31:                                     ; preds = %20
  %32 = getelementptr inbounds i8, i8* %14, i64 %24, !dbg !5330
  call void @llvm.dbg.value(metadata i8* %32, metadata !5245, metadata !DIExpression()) #12, !dbg !5310
  %33 = getelementptr inbounds i8, i8* %17, i64 %22, !dbg !5331
  call void @llvm.dbg.value(metadata i8* %33, metadata !5241, metadata !DIExpression()) #12, !dbg !5307
  %34 = icmp eq i64 %26, 0, !dbg !5332
  br i1 %34, label %35, label %13, !llvm.loop !5279

; <label>:35:                                     ; preds = %31, %13, %28, %9
  %36 = phi i32 [ 0, %9 ], [ %30, %28 ], [ 1, %31 ], [ %18, %13 ], !dbg !5333
  ret i32 %36, !dbg !5334
}

attributes #0 = { noreturn nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { argmemonly nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nounwind }
attributes #13 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nounwind readonly }
attributes #15 = { noreturn nounwind }
attributes #16 = { noreturn }
attributes #17 = { nounwind readnone }
attributes #18 = { cold }

!llvm.dbg.cu = !{!2, !150, !156, !169, !177, !250, !253, !255, !257, !261, !264, !184, !191, !266, !243, !274, !290, !292, !294, !298, !300, !302, !304, !306, !309, !311, !700}
!llvm.ident = !{!702, !702, !702, !702, !702, !702, !702, !702, !702, !702, !702, !702, !702, !702, !702, !702, !702, !702, !702, !702, !702, !702, !702, !702, !702, !702, !702}
!llvm.module.flags = !{!703, !704, !705, !706, !707}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "hard_LC_COLLATE", scope: !2, file: !3, line: 56, type: !97, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !73, globals: !86)
!3 = !DIFile(filename: "src/uniq.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4 = !{!5, !11, !15, !20, !28, !35, !49, !58}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "Skip_field_option_type", file: !3, line: 481, baseType: !6, size: 32, elements: !7)
!6 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!7 = !{!8, !9, !10}
!8 = !DIEnumerator(name: "SFO_NONE", value: 0, isUnsigned: true)
!9 = !DIEnumerator(name: "SFO_OBSOLETE", value: 1, isUnsigned: true)
!10 = !DIEnumerator(name: "SFO_NEW", value: 2, isUnsigned: true)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "countmode", file: !3, line: 67, baseType: !6, size: 32, elements: !12)
!12 = !{!13, !14}
!13 = !DIEnumerator(name: "count_occurrences", value: 0, isUnsigned: true)
!14 = !DIEnumerator(name: "count_none", value: 1, isUnsigned: true)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "delimit_method", file: !3, line: 87, baseType: !6, size: 32, elements: !16)
!16 = !{!17, !18, !19}
!17 = !DIEnumerator(name: "DM_NONE", value: 0, isUnsigned: true)
!18 = !DIEnumerator(name: "DM_PREPEND", value: 1, isUnsigned: true)
!19 = !DIEnumerator(name: "DM_SEPARATE", value: 2, isUnsigned: true)
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !21, line: 26, baseType: !6, size: 32, elements: !22)
!21 = !DIFile(filename: "./lib/xstrtol.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!22 = !{!23, !24, !25, !26, !27}
!23 = !DIEnumerator(name: "LONGINT_OK", value: 0, isUnsigned: true)
!24 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1, isUnsigned: true)
!25 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2, isUnsigned: true)
!26 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3, isUnsigned: true)
!27 = !DIEnumerator(name: "LONGINT_INVALID", value: 4, isUnsigned: true)
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "grouping_method", file: !3, line: 112, baseType: !6, size: 32, elements: !29)
!29 = !{!30, !31, !32, !33, !34}
!30 = !DIEnumerator(name: "GM_NONE", value: 0, isUnsigned: true)
!31 = !DIEnumerator(name: "GM_PREPEND", value: 1, isUnsigned: true)
!32 = !DIEnumerator(name: "GM_APPEND", value: 2, isUnsigned: true)
!33 = !DIEnumerator(name: "GM_SEPARATE", value: 3, isUnsigned: true)
!34 = !DIEnumerator(name: "GM_BOTH", value: 4, isUnsigned: true)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !36, line: 32, baseType: !6, size: 32, elements: !37)
!36 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!37 = !{!38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48}
!38 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!39 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!40 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!41 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!42 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!43 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!44 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!45 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!46 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!47 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!48 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!49 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !50, line: 45, baseType: !6, size: 32, elements: !51)
!50 = !DIFile(filename: "./lib/fadvise.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!51 = !{!52, !53, !54, !55, !56, !57}
!52 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0, isUnsigned: true)
!53 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2, isUnsigned: true)
!54 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5, isUnsigned: true)
!55 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4, isUnsigned: true)
!56 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3, isUnsigned: true)
!57 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1, isUnsigned: true)
!58 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !59, line: 46, baseType: !6, size: 32, elements: !60)
!59 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!60 = !{!61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72}
!61 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!62 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!63 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!64 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!65 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!66 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!67 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!68 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!69 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!70 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!71 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!72 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!73 = !{!74, !75, !76, !79, !82, !83, !84, !85}
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !77, line: 62, baseType: !78)
!77 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!78 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !81)
!81 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!83 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!84 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!85 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!86 = !{!0, !87, !89, !91, !93, !95, !98, !100, !102, !104, !106, !120, !126, !132, !134, !138}
!87 = !DIGlobalVariableExpression(var: !88, expr: !DIExpression())
!88 = distinct !DIGlobalVariable(name: "skip_fields", scope: !2, file: !3, line: 59, type: !76, isLocal: true, isDefinition: true)
!89 = !DIGlobalVariableExpression(var: !90, expr: !DIExpression())
!90 = distinct !DIGlobalVariable(name: "skip_chars", scope: !2, file: !3, line: 62, type: !76, isLocal: true, isDefinition: true)
!91 = !DIGlobalVariableExpression(var: !92, expr: !DIExpression())
!92 = distinct !DIGlobalVariable(name: "check_chars", scope: !2, file: !3, line: 65, type: !76, isLocal: true, isDefinition: true)
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(name: "countmode", scope: !2, file: !3, line: 75, type: !11, isLocal: true, isDefinition: true)
!95 = !DIGlobalVariableExpression(var: !96, expr: !DIExpression())
!96 = distinct !DIGlobalVariable(name: "output_unique", scope: !2, file: !3, line: 80, type: !97, isLocal: true, isDefinition: true)
!97 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!98 = !DIGlobalVariableExpression(var: !99, expr: !DIExpression())
!99 = distinct !DIGlobalVariable(name: "output_first_repeated", scope: !2, file: !3, line: 81, type: !97, isLocal: true, isDefinition: true)
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression())
!101 = distinct !DIGlobalVariable(name: "output_later_repeated", scope: !2, file: !3, line: 82, type: !97, isLocal: true, isDefinition: true)
!102 = !DIGlobalVariableExpression(var: !103, expr: !DIExpression())
!103 = distinct !DIGlobalVariable(name: "ignore_case", scope: !2, file: !3, line: 85, type: !97, isLocal: true, isDefinition: true)
!104 = !DIGlobalVariableExpression(var: !105, expr: !DIExpression())
!105 = distinct !DIGlobalVariable(name: "delimit_groups", scope: !2, file: !3, line: 110, type: !15, isLocal: true, isDefinition: true)
!106 = !DIGlobalVariableExpression(var: !107, expr: !DIExpression())
!107 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 147, type: !108, isLocal: true, isDefinition: true)
!108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 3328, elements: !118)
!109 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !110)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !111, line: 50, size: 256, elements: !112)
!111 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!112 = !{!113, !114, !115, !117}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !110, file: !111, line: 52, baseType: !79, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !110, file: !111, line: 55, baseType: !83, size: 32, offset: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !110, file: !111, line: 56, baseType: !116, size: 64, offset: 128)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !110, file: !111, line: 57, baseType: !83, size: 32, offset: 192)
!118 = !{!119}
!119 = !DISubrange(count: 13)
!120 = !DIGlobalVariableExpression(var: !121, expr: !DIExpression())
!121 = distinct !DIGlobalVariable(name: "delimit_method_map", scope: !2, file: !3, line: 104, type: !122, isLocal: true, isDefinition: true)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 96, elements: !124)
!123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!124 = !{!125}
!125 = !DISubrange(count: 3)
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression())
!127 = distinct !DIGlobalVariable(name: "delimit_method_string", scope: !2, file: !3, line: 99, type: !128, isLocal: true, isDefinition: true)
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 256, elements: !130)
!129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !79)
!130 = !{!131}
!131 = !DISubrange(count: 4)
!132 = !DIGlobalVariableExpression(var: !133, expr: !DIExpression())
!133 = distinct !DIGlobalVariable(name: "grouping", scope: !2, file: !3, line: 140, type: !28, isLocal: true, isDefinition: true)
!134 = !DIGlobalVariableExpression(var: !135, expr: !DIExpression())
!135 = distinct !DIGlobalVariable(name: "grouping_method_map", scope: !2, file: !3, line: 135, type: !136, isLocal: true, isDefinition: true)
!136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 128, elements: !130)
!137 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!138 = !DIGlobalVariableExpression(var: !139, expr: !DIExpression())
!139 = distinct !DIGlobalVariable(name: "grouping_method_string", scope: !2, file: !3, line: 130, type: !140, isLocal: true, isDefinition: true)
!140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 320, elements: !141)
!141 = !{!142}
!142 = !DISubrange(count: 5)
!143 = !DIGlobalVariableExpression(var: !99, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!144 = !DIGlobalVariableExpression(var: !96, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!145 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!146 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!147 = !DIGlobalVariableExpression(var: !103, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!148 = !DIGlobalVariableExpression(var: !149, expr: !DIExpression())
!149 = distinct !DIGlobalVariable(name: "Version", scope: !150, file: !151, line: 2, type: !79, isLocal: false, isDefinition: true)
!150 = distinct !DICompileUnit(language: DW_LANG_C99, file: !151, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !152, globals: !153)
!151 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!152 = !{}
!153 = !{!148}
!154 = !DIGlobalVariableExpression(var: !155, expr: !DIExpression())
!155 = distinct !DIGlobalVariable(name: "argmatch_die", scope: !156, file: !161, line: 69, type: !162, isLocal: false, isDefinition: true)
!156 = distinct !DICompileUnit(language: DW_LANG_C99, file: !157, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !158, retainedTypes: !159, globals: !160)
!157 = !DIFile(filename: "./lib/argmatch.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!158 = !{!35}
!159 = !{!74, !85}
!160 = !{!154}
!161 = !DIFile(filename: "lib/argmatch.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "argmatch_exit_fn", file: !163, line: 55, baseType: !164)
!163 = !DIFile(filename: "./lib/argmatch.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = !DISubroutineType(types: !166)
!166 = !{null}
!167 = !DIGlobalVariableExpression(var: !168, expr: !DIExpression())
!168 = distinct !DIGlobalVariable(name: "file_name", scope: !169, file: !174, line: 46, type: !79, isLocal: true, isDefinition: true)
!169 = distinct !DICompileUnit(language: DW_LANG_C99, file: !170, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !152, globals: !171)
!170 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!171 = !{!167, !172}
!172 = !DIGlobalVariableExpression(var: !173, expr: !DIExpression())
!173 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !169, file: !174, line: 56, type: !97, isLocal: true, isDefinition: true)
!174 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!175 = !DIGlobalVariableExpression(var: !176, expr: !DIExpression())
!176 = distinct !DIGlobalVariable(name: "exit_failure", scope: !177, file: !180, line: 24, type: !181, isLocal: false, isDefinition: true)
!177 = distinct !DICompileUnit(language: DW_LANG_C99, file: !178, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !152, globals: !179)
!178 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!179 = !{!175}
!180 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!181 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !83)
!182 = !DIGlobalVariableExpression(var: !183, expr: !DIExpression())
!183 = distinct !DIGlobalVariable(name: "program_name", scope: !184, file: !188, line: 33, type: !79, isLocal: false, isDefinition: true)
!184 = distinct !DICompileUnit(language: DW_LANG_C99, file: !185, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !152, retainedTypes: !186, globals: !187)
!185 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!186 = !{!74, !82}
!187 = !{!182}
!188 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!189 = !DIGlobalVariableExpression(var: !190, expr: !DIExpression())
!190 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !191, file: !203, line: 85, type: !238, isLocal: false, isDefinition: true)
!191 = distinct !DICompileUnit(language: DW_LANG_C99, file: !192, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !193, retainedTypes: !199, globals: !200)
!192 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!193 = !{!35, !194, !58}
!194 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !36, line: 242, baseType: !6, size: 32, elements: !195)
!195 = !{!196, !197, !198}
!196 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!197 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!198 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!199 = !{!83, !84, !76, !82}
!200 = !{!189, !201, !208, !220, !222, !227, !234, !236}
!201 = !DIGlobalVariableExpression(var: !202, expr: !DIExpression())
!202 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !191, file: !203, line: 101, type: !204, isLocal: false, isDefinition: true)
!203 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 320, elements: !206)
!205 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!206 = !{!207}
!207 = !DISubrange(count: 10)
!208 = !DIGlobalVariableExpression(var: !209, expr: !DIExpression())
!209 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !191, file: !203, line: 1052, type: !210, isLocal: false, isDefinition: true)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !203, line: 65, size: 448, elements: !211)
!211 = !{!212, !213, !214, !218, !219}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !210, file: !203, line: 68, baseType: !35, size: 32)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !210, file: !203, line: 71, baseType: !83, size: 32, offset: 32)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !210, file: !203, line: 75, baseType: !215, size: 256, offset: 64)
!215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 256, elements: !216)
!216 = !{!217}
!217 = !DISubrange(count: 8)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !210, file: !203, line: 78, baseType: !79, size: 64, offset: 320)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !210, file: !203, line: 81, baseType: !79, size: 64, offset: 384)
!220 = !DIGlobalVariableExpression(var: !221, expr: !DIExpression())
!221 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !191, file: !203, line: 116, type: !210, isLocal: true, isDefinition: true)
!222 = !DIGlobalVariableExpression(var: !223, expr: !DIExpression())
!223 = distinct !DIGlobalVariable(name: "slot0", scope: !191, file: !203, line: 842, type: !224, isLocal: true, isDefinition: true)
!224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 2048, elements: !225)
!225 = !{!226}
!226 = !DISubrange(count: 256)
!227 = !DIGlobalVariableExpression(var: !228, expr: !DIExpression())
!228 = distinct !DIGlobalVariable(name: "slotvec", scope: !191, file: !203, line: 845, type: !229, isLocal: true, isDefinition: true)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !203, line: 834, size: 128, elements: !231)
!231 = !{!232, !233}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !230, file: !203, line: 836, baseType: !76, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !230, file: !203, line: 837, baseType: !82, size: 64, offset: 64)
!234 = !DIGlobalVariableExpression(var: !235, expr: !DIExpression())
!235 = distinct !DIGlobalVariable(name: "nslots", scope: !191, file: !203, line: 843, type: !83, isLocal: true, isDefinition: true)
!236 = !DIGlobalVariableExpression(var: !237, expr: !DIExpression())
!237 = distinct !DIGlobalVariable(name: "slotvec0", scope: !191, file: !203, line: 844, type: !230, isLocal: true, isDefinition: true)
!238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 704, elements: !239)
!239 = !{!240}
!240 = !DISubrange(count: 11)
!241 = !DIGlobalVariableExpression(var: !242, expr: !DIExpression())
!242 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !243, file: !246, line: 26, type: !247, isLocal: false, isDefinition: true)
!243 = distinct !DICompileUnit(language: DW_LANG_C99, file: !244, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !152, globals: !245)
!244 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!245 = !{!241}
!246 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 376, elements: !248)
!248 = !{!249}
!249 = !DISubrange(count: 47)
!250 = distinct !DICompileUnit(language: DW_LANG_C99, file: !251, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !252)
!251 = !DIFile(filename: "./lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!252 = !{!49}
!253 = distinct !DICompileUnit(language: DW_LANG_C99, file: !254, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !152)
!254 = !DIFile(filename: "./lib/freopen-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!255 = distinct !DICompileUnit(language: DW_LANG_C99, file: !256, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !152)
!256 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!257 = distinct !DICompileUnit(language: DW_LANG_C99, file: !258, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !152, retainedTypes: !259)
!258 = !DIFile(filename: "./lib/linebuffer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!259 = !{!260}
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!261 = distinct !DICompileUnit(language: DW_LANG_C99, file: !262, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !152, retainedTypes: !263)
!262 = !DIFile(filename: "./lib/memcasecmp.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!263 = !{!83}
!264 = distinct !DICompileUnit(language: DW_LANG_C99, file: !265, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !152)
!265 = !DIFile(filename: "./lib/posixver.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!266 = distinct !DICompileUnit(language: DW_LANG_C99, file: !267, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !268, retainedTypes: !273)
!267 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!268 = !{!269}
!269 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !270, line: 41, baseType: !6, size: 32, elements: !271)
!270 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!271 = !{!272}
!272 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2018, isUnsigned: true)
!273 = !{!74}
!274 = distinct !DICompileUnit(language: DW_LANG_C99, file: !275, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !276, retainedTypes: !289)
!275 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!276 = !{!277}
!277 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !279, file: !278, line: 186, baseType: !6, size: 32, elements: !287)
!278 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!279 = distinct !DISubprogram(name: "x2nrealloc", scope: !278, file: !278, line: 174, type: !280, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !274, retainedNodes: !282)
!280 = !DISubroutineType(types: !281)
!281 = !{!74, !74, !75, !76}
!282 = !{!283, !284, !285, !286}
!283 = !DILocalVariable(name: "p", arg: 1, scope: !279, file: !278, line: 174, type: !74)
!284 = !DILocalVariable(name: "pn", arg: 2, scope: !279, file: !278, line: 174, type: !75)
!285 = !DILocalVariable(name: "s", arg: 3, scope: !279, file: !278, line: 174, type: !76)
!286 = !DILocalVariable(name: "n", scope: !279, file: !278, line: 176, type: !76)
!287 = !{!288}
!288 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!289 = !{!76, !82, !74}
!290 = distinct !DICompileUnit(language: DW_LANG_C99, file: !291, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !152)
!291 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!292 = distinct !DICompileUnit(language: DW_LANG_C99, file: !293, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !158)
!293 = !DIFile(filename: "./lib/xmemcoll.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!294 = distinct !DICompileUnit(language: DW_LANG_C99, file: !295, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !296, retainedTypes: !297)
!295 = !DIFile(filename: "./lib/xstrtoul.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!296 = !{!20, !58}
!297 = !{!83, !84}
!298 = distinct !DICompileUnit(language: DW_LANG_C99, file: !299, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !152, retainedTypes: !273)
!299 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!300 = distinct !DICompileUnit(language: DW_LANG_C99, file: !301, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !152)
!301 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!302 = distinct !DICompileUnit(language: DW_LANG_C99, file: !303, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !152, retainedTypes: !273)
!303 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!304 = distinct !DICompileUnit(language: DW_LANG_C99, file: !305, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !152, retainedTypes: !273)
!305 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!306 = distinct !DICompileUnit(language: DW_LANG_C99, file: !307, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !152, retainedTypes: !308)
!307 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!308 = !{!76}
!309 = distinct !DICompileUnit(language: DW_LANG_C99, file: !310, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !152)
!310 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!311 = distinct !DICompileUnit(language: DW_LANG_C99, file: !312, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !313, retainedTypes: !273)
!312 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!313 = !{!314}
!314 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !315, line: 41, baseType: !6, size: 32, elements: !316)
!315 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!316 = !{!317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699}
!317 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!318 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!319 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!320 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!321 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!322 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!323 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!324 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!325 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!326 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!327 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!328 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!329 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!330 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!331 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!332 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!333 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!334 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!335 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!336 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!337 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!338 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!339 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!340 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!341 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!342 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!343 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!344 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!345 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!346 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!347 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!348 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!349 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!350 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!351 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!352 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!353 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!354 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!355 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!356 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!357 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!358 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!359 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!360 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!361 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!362 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!363 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!364 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!365 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!366 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!367 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!368 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!369 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!370 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!371 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!372 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!373 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!374 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!375 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!376 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!377 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!378 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!379 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!380 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!381 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!382 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!383 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!384 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!385 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!386 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!387 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!388 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!389 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!390 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!391 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!392 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!393 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!394 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!395 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!396 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!400 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!405 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!406 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!408 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!409 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!410 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!411 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!412 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!413 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!414 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!415 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!416 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!417 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!418 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!419 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!420 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!421 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!425 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!428 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!429 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!430 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!431 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!432 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!433 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!434 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!435 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!436 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!437 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!438 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!439 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!456 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!457 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!458 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!459 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!460 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!461 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!462 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!463 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!465 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!466 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!468 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!469 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!473 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!474 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!475 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!476 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!477 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!478 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!479 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!481 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!482 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!483 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!484 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!485 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!486 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!487 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!488 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!489 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!490 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!491 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!492 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!493 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!494 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!495 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!496 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!497 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!498 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!499 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!500 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!501 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!502 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!503 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!504 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!505 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!506 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!507 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!508 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!509 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!510 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!511 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!512 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!513 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!514 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!515 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!516 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!517 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!519 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!520 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!521 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!522 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!523 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!524 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!525 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!526 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!527 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!528 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!529 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!530 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!531 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!532 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!535 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!536 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!537 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!540 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!541 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!542 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!543 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!544 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!545 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!546 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!547 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!549 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!550 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!551 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!552 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!553 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!559 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!560 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!567 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!568 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!571 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!572 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!573 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!574 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!575 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!576 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!577 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!578 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!579 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!580 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!581 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!582 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!583 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!584 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!585 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!586 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!587 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!588 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!589 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!590 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!591 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!592 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!593 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!594 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!595 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!596 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!597 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!598 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!599 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!600 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!601 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!602 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!603 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!604 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!605 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!606 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!607 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!608 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!609 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!610 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!611 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!612 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!613 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!614 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!615 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!616 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!617 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!618 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!619 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!620 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!621 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!622 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!623 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!624 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!625 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!626 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!627 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!628 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!629 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!630 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!631 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!632 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!633 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!634 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!635 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!636 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!637 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!638 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!639 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!640 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!641 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!642 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!643 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!644 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!645 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!646 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!647 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!648 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!649 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!650 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!651 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!652 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!653 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!654 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!655 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!656 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!657 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!658 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!659 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!660 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!661 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!662 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!663 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!664 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!665 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!666 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!667 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!668 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!669 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!670 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!671 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!672 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!673 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!674 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!675 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!676 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!677 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!678 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!679 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!680 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!681 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!682 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!683 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!684 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!685 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!686 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!687 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!688 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!689 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!690 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!691 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!692 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!693 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!694 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!695 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!696 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!697 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!698 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!699 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!700 = distinct !DICompileUnit(language: DW_LANG_C99, file: !701, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !152)
!701 = !DIFile(filename: "./lib/memcoll.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!702 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!703 = !{i32 2, !"Dwarf Version", i32 4}
!704 = !{i32 2, !"Debug Info Version", i32 3}
!705 = !{i32 1, !"wchar_size", i32 4}
!706 = !{i32 7, !"PIC Level", i32 2}
!707 = !{i32 7, !"PIE Level", i32 2}
!708 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 165, type: !709, isLocal: false, isDefinition: true, scopeLine: 166, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, retainedNodes: !711)
!709 = !DISubroutineType(types: !710)
!710 = !{null, !83}
!711 = !{!712}
!712 = !DILocalVariable(name: "status", arg: 1, scope: !708, file: !3, line: 165, type: !83)
!713 = !DILocalVariable(name: "infomap", scope: !714, file: !715, line: 632, type: !729)
!714 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !715, file: !715, line: 630, type: !716, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !718)
!715 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!716 = !DISubroutineType(types: !717)
!717 = !{null, !79}
!718 = !{!719, !713, !720, !721, !728}
!719 = !DILocalVariable(name: "program", arg: 1, scope: !714, file: !715, line: 630, type: !79)
!720 = !DILocalVariable(name: "node", scope: !714, file: !715, line: 642, type: !79)
!721 = !DILocalVariable(name: "map_prog", scope: !714, file: !715, line: 643, type: !722)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !724)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !714, file: !715, line: 632, size: 128, elements: !725)
!725 = !{!726, !727}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !724, file: !715, line: 632, baseType: !79, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !724, file: !715, line: 632, baseType: !79, size: 64, offset: 64)
!728 = !DILocalVariable(name: "lc_messages", scope: !714, file: !715, line: 655, type: !79)
!729 = !DICompositeType(tag: DW_TAG_array_type, baseType: !723, size: 896, elements: !730)
!730 = !{!731}
!731 = !DISubrange(count: 7)
!732 = !DILocation(line: 632, column: 67, scope: !714, inlinedAt: !733)
!733 = distinct !DILocation(line: 225, column: 7, scope: !734)
!734 = distinct !DILexicalBlock(scope: !735, file: !3, line: 170, column: 5)
!735 = distinct !DILexicalBlock(scope: !708, file: !3, line: 167, column: 7)
!736 = !DILocation(line: 165, column: 12, scope: !708)
!737 = !DILocation(line: 167, column: 14, scope: !735)
!738 = !DILocation(line: 167, column: 7, scope: !708)
!739 = !DILocation(line: 168, column: 5, scope: !740)
!740 = distinct !DILexicalBlock(scope: !735, file: !3, line: 168, column: 5)
!741 = !{!742, !742, i64 0}
!742 = !{!"any pointer", !743, i64 0}
!743 = !{!"omnipotent char", !744, i64 0}
!744 = !{!"Simple C/C++ TBAA"}
!745 = !DILocation(line: 171, column: 7, scope: !734)
!746 = !DILocation(line: 175, column: 7, scope: !734)
!747 = !DILocation(line: 587, column: 3, scope: !748, inlinedAt: !749)
!748 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !715, file: !715, line: 585, type: !165, isLocal: true, isDefinition: true, scopeLine: 586, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !152)
!749 = distinct !DILocation(line: 182, column: 7, scope: !734)
!750 = !DILocation(line: 184, column: 6, scope: !734)
!751 = !DILocation(line: 188, column: 6, scope: !734)
!752 = !DILocation(line: 194, column: 6, scope: !734)
!753 = !DILocation(line: 197, column: 6, scope: !734)
!754 = !DILocation(line: 201, column: 6, scope: !734)
!755 = !DILocation(line: 206, column: 7, scope: !734)
!756 = !DILocation(line: 209, column: 6, scope: !734)
!757 = !DILocation(line: 212, column: 6, scope: !734)
!758 = !DILocation(line: 213, column: 6, scope: !734)
!759 = !DILocation(line: 214, column: 6, scope: !734)
!760 = !DILocation(line: 219, column: 6, scope: !734)
!761 = !DILocation(line: 632, column: 3, scope: !714, inlinedAt: !733)
!762 = !DILocation(line: 643, column: 36, scope: !714, inlinedAt: !733)
!763 = !DILocation(line: 643, column: 25, scope: !714, inlinedAt: !733)
!764 = !DILocation(line: 645, column: 33, scope: !714, inlinedAt: !733)
!765 = !DILocation(line: 645, column: 3, scope: !714, inlinedAt: !733)
!766 = !DILocation(line: 646, column: 13, scope: !714, inlinedAt: !733)
!767 = !DILocation(line: 645, column: 20, scope: !714, inlinedAt: !733)
!768 = !{!769, !742, i64 0}
!769 = !{!"infomap", !742, i64 0, !742, i64 8}
!770 = !DILocation(line: 645, column: 10, scope: !714, inlinedAt: !733)
!771 = !DILocation(line: 645, column: 28, scope: !714, inlinedAt: !733)
!772 = distinct !{!772, !773, !774}
!773 = !DILocation(line: 645, column: 3, scope: !714)
!774 = !DILocation(line: 646, column: 13, scope: !714)
!775 = !DILocation(line: 648, column: 17, scope: !776, inlinedAt: !733)
!776 = distinct !DILexicalBlock(scope: !714, file: !715, line: 648, column: 7)
!777 = !{!769, !742, i64 8}
!778 = !DILocation(line: 648, column: 7, scope: !776, inlinedAt: !733)
!779 = !DILocation(line: 648, column: 7, scope: !714, inlinedAt: !733)
!780 = !DILocation(line: 642, column: 15, scope: !714, inlinedAt: !733)
!781 = !DILocation(line: 651, column: 3, scope: !714, inlinedAt: !733)
!782 = !DILocation(line: 655, column: 29, scope: !714, inlinedAt: !733)
!783 = !DILocation(line: 655, column: 15, scope: !714, inlinedAt: !733)
!784 = !DILocation(line: 656, column: 7, scope: !785, inlinedAt: !733)
!785 = distinct !DILexicalBlock(scope: !714, file: !715, line: 656, column: 7)
!786 = !DILocation(line: 656, column: 19, scope: !785, inlinedAt: !733)
!787 = !DILocation(line: 656, column: 22, scope: !785, inlinedAt: !733)
!788 = !DILocation(line: 656, column: 7, scope: !714, inlinedAt: !733)
!789 = !DILocation(line: 662, column: 7, scope: !790, inlinedAt: !733)
!790 = distinct !DILexicalBlock(scope: !785, file: !715, line: 657, column: 5)
!791 = !DILocation(line: 664, column: 5, scope: !790, inlinedAt: !733)
!792 = !DILocation(line: 665, column: 3, scope: !714, inlinedAt: !733)
!793 = !DILocation(line: 667, column: 3, scope: !714, inlinedAt: !733)
!794 = !DILocation(line: 669, column: 1, scope: !714, inlinedAt: !733)
!795 = !DILocation(line: 227, column: 3, scope: !708)
!796 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 489, type: !797, isLocal: false, isDefinition: true, scopeLine: 490, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !800)
!797 = !DISubroutineType(types: !798)
!798 = !{!83, !83, !799}
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!800 = !{!801, !802, !803, !804, !805, !806, !807, !811, !812, !813}
!801 = !DILocalVariable(name: "argc", arg: 1, scope: !796, file: !3, line: 489, type: !83)
!802 = !DILocalVariable(name: "argv", arg: 2, scope: !796, file: !3, line: 489, type: !799)
!803 = !DILocalVariable(name: "optc", scope: !796, file: !3, line: 491, type: !83)
!804 = !DILocalVariable(name: "posixly_correct", scope: !796, file: !3, line: 492, type: !97)
!805 = !DILocalVariable(name: "skip_field_option_type", scope: !796, file: !3, line: 493, type: !5)
!806 = !DILocalVariable(name: "nfiles", scope: !796, file: !3, line: 494, type: !6)
!807 = !DILocalVariable(name: "file", scope: !796, file: !3, line: 495, type: !808)
!808 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 128, elements: !809)
!809 = !{!810}
!810 = !DISubrange(count: 2)
!811 = !DILocalVariable(name: "delimiter", scope: !796, file: !3, line: 496, type: !81)
!812 = !DILocalVariable(name: "output_option_used", scope: !796, file: !3, line: 497, type: !97)
!813 = !DILocalVariable(name: "size", scope: !814, file: !3, line: 542, type: !78)
!814 = distinct !DILexicalBlock(scope: !815, file: !3, line: 541, column: 11)
!815 = distinct !DILexicalBlock(scope: !816, file: !3, line: 539, column: 9)
!816 = distinct !DILexicalBlock(scope: !817, file: !3, line: 523, column: 11)
!817 = distinct !DILexicalBlock(scope: !796, file: !3, line: 518, column: 5)
!818 = !DILocation(line: 489, column: 11, scope: !796)
!819 = !DILocation(line: 489, column: 24, scope: !796)
!820 = !DILocation(line: 491, column: 7, scope: !796)
!821 = !DILocation(line: 492, column: 27, scope: !796)
!822 = !DILocation(line: 492, column: 54, scope: !796)
!823 = !DILocation(line: 493, column: 31, scope: !796)
!824 = !DILocation(line: 494, column: 16, scope: !796)
!825 = !DILocation(line: 495, column: 3, scope: !796)
!826 = !DILocation(line: 496, column: 8, scope: !796)
!827 = !DILocation(line: 497, column: 8, scope: !796)
!828 = !DILocation(line: 499, column: 13, scope: !796)
!829 = !DILocation(line: 499, column: 3, scope: !796)
!830 = !DILocation(line: 495, column: 15, scope: !796)
!831 = !DILocation(line: 499, column: 11, scope: !796)
!832 = !DILocation(line: 501, column: 21, scope: !796)
!833 = !DILocation(line: 501, column: 3, scope: !796)
!834 = !DILocation(line: 502, column: 3, scope: !796)
!835 = !DILocation(line: 503, column: 3, scope: !796)
!836 = !DILocation(line: 504, column: 3, scope: !796)
!837 = !DILocation(line: 505, column: 21, scope: !796)
!838 = !DILocation(line: 505, column: 19, scope: !796)
!839 = !{!840, !840, i64 0}
!840 = !{!"_Bool", !743, i64 0}
!841 = !DILocation(line: 507, column: 3, scope: !796)
!842 = !DILocation(line: 509, column: 14, scope: !796)
!843 = !{!844, !844, i64 0}
!844 = !{!"long", !743, i64 0}
!845 = !DILocation(line: 510, column: 15, scope: !796)
!846 = !DILocation(line: 511, column: 15, scope: !796)
!847 = !DILocation(line: 515, column: 18, scope: !796)
!848 = !{!743, !743, i64 0}
!849 = !DILocation(line: 517, column: 3, scope: !796)
!850 = !DILocation(line: 0, scope: !851)
!851 = distinct !DILexicalBlock(scope: !816, file: !3, line: 528, column: 9)
!852 = !DILocation(line: 523, column: 16, scope: !816)
!853 = !DILocation(line: 524, column: 41, scope: !816)
!854 = !DILocation(line: 524, column: 31, scope: !816)
!855 = !DILocation(line: 524, column: 11, scope: !816)
!856 = !DILocation(line: 525, column: 23, scope: !816)
!857 = !DILocation(line: 523, column: 11, scope: !817)
!858 = distinct !{!858, !849, !859}
!859 = !DILocation(line: 646, column: 5, scope: !796)
!860 = !DILocation(line: 0, scope: !816)
!861 = !DILocation(line: 529, column: 23, scope: !862)
!862 = distinct !DILexicalBlock(scope: !851, file: !3, line: 529, column: 15)
!863 = !{!864, !864, i64 0}
!864 = !{!"int", !743, i64 0}
!865 = !DILocation(line: 529, column: 20, scope: !862)
!866 = !DILocation(line: 529, column: 15, scope: !851)
!867 = !DILocation(line: 531, column: 22, scope: !868)
!868 = distinct !DILexicalBlock(scope: !851, file: !3, line: 531, column: 15)
!869 = !DILocation(line: 531, column: 15, scope: !851)
!870 = !DILocation(line: 533, column: 28, scope: !871)
!871 = distinct !DILexicalBlock(scope: !868, file: !3, line: 532, column: 13)
!872 = !DILocation(line: 533, column: 63, scope: !871)
!873 = !DILocation(line: 533, column: 58, scope: !871)
!874 = !DILocation(line: 533, column: 51, scope: !871)
!875 = !DILocation(line: 533, column: 15, scope: !871)
!876 = !DILocation(line: 534, column: 15, scope: !871)
!877 = !DILocation(line: 536, column: 39, scope: !851)
!878 = !DILocation(line: 536, column: 28, scope: !851)
!879 = !DILocation(line: 536, column: 22, scope: !851)
!880 = !DILocation(line: 536, column: 11, scope: !851)
!881 = !DILocation(line: 536, column: 26, scope: !851)
!882 = !DILocation(line: 537, column: 9, scope: !851)
!883 = !DILocation(line: 542, column: 13, scope: !814)
!884 = !DILocation(line: 543, column: 17, scope: !885)
!885 = distinct !DILexicalBlock(scope: !814, file: !3, line: 543, column: 17)
!886 = !DILocation(line: 543, column: 27, scope: !885)
!887 = !DILocation(line: 544, column: 17, scope: !885)
!888 = !DILocation(line: 233, column: 19, scope: !889, inlinedAt: !894)
!889 = distinct !DISubprogram(name: "strict_posix2", scope: !3, file: !3, line: 231, type: !890, isLocal: true, isDefinition: true, scopeLine: 232, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !892)
!890 = !DISubroutineType(types: !891)
!891 = !{!97}
!892 = !{!893}
!893 = !DILocalVariable(name: "posix_ver", scope: !889, file: !3, line: 233, type: !83)
!894 = distinct !DILocation(line: 544, column: 22, scope: !885)
!895 = !DILocation(line: 233, column: 7, scope: !889, inlinedAt: !894)
!896 = !DILocation(line: 234, column: 30, scope: !889, inlinedAt: !894)
!897 = !DILocation(line: 545, column: 17, scope: !885)
!898 = !DILocation(line: 545, column: 30, scope: !885)
!899 = !DILocation(line: 542, column: 31, scope: !814)
!900 = !DILocation(line: 545, column: 20, scope: !885)
!901 = !DILocation(line: 545, column: 59, scope: !885)
!902 = !DILocation(line: 546, column: 17, scope: !885)
!903 = !DILocation(line: 546, column: 20, scope: !885)
!904 = !DILocation(line: 547, column: 26, scope: !885)
!905 = !DILocation(line: 547, column: 15, scope: !885)
!906 = !DILocation(line: 548, column: 29, scope: !907)
!907 = distinct !DILexicalBlock(scope: !885, file: !3, line: 548, column: 22)
!908 = !DILocation(line: 548, column: 22, scope: !885)
!909 = !DILocation(line: 550, column: 30, scope: !910)
!910 = distinct !DILexicalBlock(scope: !907, file: !3, line: 549, column: 15)
!911 = !DILocation(line: 550, column: 60, scope: !910)
!912 = !DILocation(line: 550, column: 53, scope: !910)
!913 = !DILocation(line: 550, column: 17, scope: !910)
!914 = !DILocation(line: 551, column: 17, scope: !910)
!915 = !DILocation(line: 554, column: 32, scope: !907)
!916 = !DILocation(line: 554, column: 26, scope: !907)
!917 = !DILocation(line: 554, column: 15, scope: !907)
!918 = !DILocation(line: 554, column: 30, scope: !907)
!919 = !DILocation(line: 0, scope: !796)
!920 = !DILocation(line: 555, column: 11, scope: !815)
!921 = !DILocation(line: 556, column: 11, scope: !815)
!922 = !DILocation(line: 569, column: 40, scope: !923)
!923 = distinct !DILexicalBlock(scope: !924, file: !3, line: 569, column: 17)
!924 = distinct !DILexicalBlock(scope: !815, file: !3, line: 568, column: 11)
!925 = !DILocation(line: 569, column: 17, scope: !924)
!926 = !DILocation(line: 570, column: 27, scope: !923)
!927 = !DILocation(line: 572, column: 18, scope: !928)
!928 = distinct !DILexicalBlock(scope: !924, file: !3, line: 572, column: 17)
!929 = !DILocation(line: 573, column: 27, scope: !928)
!930 = !DILocation(line: 573, column: 15, scope: !928)
!931 = !DILocation(line: 582, column: 11, scope: !815)
!932 = !DILocation(line: 587, column: 11, scope: !815)
!933 = !DILocation(line: 592, column: 15, scope: !934)
!934 = distinct !DILexicalBlock(scope: !815, file: !3, line: 592, column: 15)
!935 = !DILocation(line: 592, column: 22, scope: !934)
!936 = !DILocation(line: 592, column: 15, scope: !815)
!937 = !DILocation(line: 595, column: 30, scope: !934)
!938 = !DILocation(line: 0, scope: !934)
!939 = !DILocation(line: 599, column: 11, scope: !815)
!940 = !DILocation(line: 602, column: 15, scope: !941)
!941 = distinct !DILexicalBlock(scope: !815, file: !3, line: 602, column: 15)
!942 = !DILocation(line: 602, column: 22, scope: !941)
!943 = !DILocation(line: 602, column: 15, scope: !815)
!944 = !DILocation(line: 603, column: 22, scope: !941)
!945 = !DILocation(line: 603, column: 13, scope: !941)
!946 = !DILocation(line: 605, column: 24, scope: !941)
!947 = !DILocation(line: 605, column: 22, scope: !941)
!948 = !DILocation(line: 612, column: 35, scope: !815)
!949 = !DILocalVariable(name: "opt", arg: 1, scope: !950, file: !3, line: 241, type: !79)
!950 = distinct !DISubprogram(name: "size_opt", scope: !3, file: !3, line: 241, type: !951, isLocal: true, isDefinition: true, scopeLine: 242, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !953)
!951 = !DISubroutineType(types: !952)
!952 = !{!76, !79, !79}
!953 = !{!949, !954, !955}
!954 = !DILocalVariable(name: "msgid", arg: 2, scope: !950, file: !3, line: 241, type: !79)
!955 = !DILocalVariable(name: "size", scope: !950, file: !3, line: 243, type: !78)
!956 = !DILocation(line: 241, column: 23, scope: !950, inlinedAt: !957)
!957 = distinct !DILocation(line: 612, column: 25, scope: !815)
!958 = !DILocation(line: 241, column: 40, scope: !950, inlinedAt: !957)
!959 = !DILocation(line: 243, column: 3, scope: !950, inlinedAt: !957)
!960 = !DILocation(line: 243, column: 21, scope: !950, inlinedAt: !957)
!961 = !DILocation(line: 246, column: 11, scope: !950, inlinedAt: !957)
!962 = !DILocation(line: 246, column: 3, scope: !950, inlinedAt: !957)
!963 = !DILocation(line: 253, column: 7, scope: !964, inlinedAt: !957)
!964 = distinct !DILexicalBlock(scope: !950, file: !3, line: 247, column: 5)
!965 = !DILocation(line: 256, column: 10, scope: !950, inlinedAt: !957)
!966 = !DILocation(line: 257, column: 1, scope: !950, inlinedAt: !957)
!967 = !DILocation(line: 612, column: 23, scope: !815)
!968 = !DILocation(line: 614, column: 11, scope: !815)
!969 = !DILocation(line: 618, column: 11, scope: !815)
!970 = !DILocation(line: 621, column: 34, scope: !815)
!971 = !DILocation(line: 241, column: 23, scope: !950, inlinedAt: !972)
!972 = distinct !DILocation(line: 621, column: 24, scope: !815)
!973 = !DILocation(line: 241, column: 40, scope: !950, inlinedAt: !972)
!974 = !DILocation(line: 243, column: 3, scope: !950, inlinedAt: !972)
!975 = !DILocation(line: 243, column: 21, scope: !950, inlinedAt: !972)
!976 = !DILocation(line: 246, column: 11, scope: !950, inlinedAt: !972)
!977 = !DILocation(line: 246, column: 3, scope: !950, inlinedAt: !972)
!978 = !DILocation(line: 253, column: 7, scope: !964, inlinedAt: !972)
!979 = !DILocation(line: 256, column: 10, scope: !950, inlinedAt: !972)
!980 = !DILocation(line: 257, column: 1, scope: !950, inlinedAt: !972)
!981 = !DILocation(line: 621, column: 22, scope: !815)
!982 = !DILocation(line: 623, column: 11, scope: !815)
!983 = !DILocation(line: 628, column: 11, scope: !815)
!984 = !DILocation(line: 631, column: 35, scope: !815)
!985 = !DILocation(line: 241, column: 23, scope: !950, inlinedAt: !986)
!986 = distinct !DILocation(line: 631, column: 25, scope: !815)
!987 = !DILocation(line: 241, column: 40, scope: !950, inlinedAt: !986)
!988 = !DILocation(line: 243, column: 3, scope: !950, inlinedAt: !986)
!989 = !DILocation(line: 243, column: 21, scope: !950, inlinedAt: !986)
!990 = !DILocation(line: 246, column: 11, scope: !950, inlinedAt: !986)
!991 = !DILocation(line: 246, column: 3, scope: !950, inlinedAt: !986)
!992 = !DILocation(line: 253, column: 7, scope: !964, inlinedAt: !986)
!993 = !DILocation(line: 256, column: 10, scope: !950, inlinedAt: !986)
!994 = !DILocation(line: 257, column: 1, scope: !950, inlinedAt: !986)
!995 = !DILocation(line: 631, column: 23, scope: !815)
!996 = !DILocation(line: 633, column: 11, scope: !815)
!997 = !DILocation(line: 639, column: 9, scope: !815)
!998 = !DILocation(line: 641, column: 9, scope: !815)
!999 = !DILocation(line: 644, column: 11, scope: !815)
!1000 = !DILocation(line: 652, column: 7, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !796, file: !3, line: 652, column: 7)
!1002 = !DILocation(line: 652, column: 16, scope: !1001)
!1003 = !DILocation(line: 652, column: 30, scope: !1001)
!1004 = !DILocation(line: 652, column: 27, scope: !1001)
!1005 = !DILocation(line: 654, column: 20, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !1001, file: !3, line: 653, column: 5)
!1007 = !DILocation(line: 654, column: 7, scope: !1006)
!1008 = !DILocation(line: 655, column: 7, scope: !1006)
!1009 = !DILocation(line: 658, column: 16, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !796, file: !3, line: 658, column: 7)
!1011 = !DILocation(line: 658, column: 40, scope: !1010)
!1012 = !DILocation(line: 658, column: 27, scope: !1010)
!1013 = !DILocation(line: 661, column: 12, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !1010, file: !3, line: 659, column: 5)
!1015 = !DILocation(line: 660, column: 7, scope: !1014)
!1016 = !DILocation(line: 662, column: 7, scope: !1014)
!1017 = !DILocation(line: 665, column: 38, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !796, file: !3, line: 665, column: 7)
!1019 = !DILocation(line: 665, column: 7, scope: !796)
!1020 = !DILocation(line: 668, column: 12, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !1018, file: !3, line: 666, column: 5)
!1022 = !DILocation(line: 667, column: 7, scope: !1021)
!1023 = !DILocation(line: 669, column: 7, scope: !1021)
!1024 = !DILocation(line: 672, column: 15, scope: !796)
!1025 = !DILocation(line: 672, column: 24, scope: !796)
!1026 = !DILocalVariable(name: "infile", arg: 1, scope: !1027, file: !3, line: 332, type: !79)
!1027 = distinct !DISubprogram(name: "check_file", scope: !3, file: !3, line: 332, type: !1028, isLocal: true, isDefinition: true, scopeLine: 333, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1030)
!1028 = !DISubroutineType(types: !1029)
!1029 = !{null, !79, !79, !81}
!1030 = !{!1026, !1031, !1032, !1033, !1040, !1041, !1043, !1044, !1047, !1048, !1049, !1051, !1052, !1053, !1057, !1059, !1060, !1065, !1066, !1068, !1069, !1070}
!1031 = !DILocalVariable(name: "outfile", arg: 2, scope: !1027, file: !3, line: 332, type: !79)
!1032 = !DILocalVariable(name: "delimiter", arg: 3, scope: !1027, file: !3, line: 332, type: !81)
!1033 = !DILocalVariable(name: "lb1", scope: !1027, file: !3, line: 334, type: !1034)
!1034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "linebuffer", file: !1035, line: 26, size: 192, elements: !1036)
!1035 = !DIFile(filename: "./lib/linebuffer.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1036 = !{!1037, !1038, !1039}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1034, file: !1035, line: 28, baseType: !76, size: 64)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1034, file: !1035, line: 29, baseType: !76, size: 64, offset: 64)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1034, file: !1035, line: 30, baseType: !82, size: 64, offset: 128)
!1040 = !DILocalVariable(name: "lb2", scope: !1027, file: !3, line: 334, type: !1034)
!1041 = !DILocalVariable(name: "thisline", scope: !1027, file: !3, line: 335, type: !1042)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1043 = !DILocalVariable(name: "prevline", scope: !1027, file: !3, line: 335, type: !1042)
!1044 = !DILocalVariable(name: "prevfield", scope: !1045, file: !3, line: 367, type: !82)
!1045 = distinct !DILexicalBlock(scope: !1046, file: !3, line: 366, column: 5)
!1046 = distinct !DILexicalBlock(scope: !1027, file: !3, line: 365, column: 7)
!1047 = !DILocalVariable(name: "prevlen", scope: !1045, file: !3, line: 368, type: !76)
!1048 = !DILocalVariable(name: "first_group_printed", scope: !1045, file: !3, line: 369, type: !97)
!1049 = !DILocalVariable(name: "thisfield", scope: !1050, file: !3, line: 373, type: !82)
!1050 = distinct !DILexicalBlock(scope: !1045, file: !3, line: 372, column: 9)
!1051 = !DILocalVariable(name: "thislen", scope: !1050, file: !3, line: 374, type: !76)
!1052 = !DILocalVariable(name: "new_group", scope: !1050, file: !3, line: 375, type: !97)
!1053 = !DILocalVariable(name: "_tmp", scope: !1054, file: !3, line: 397, type: !1042)
!1054 = distinct !DILexicalBlock(scope: !1055, file: !3, line: 397, column: 15)
!1055 = distinct !DILexicalBlock(scope: !1056, file: !3, line: 393, column: 13)
!1056 = distinct !DILexicalBlock(scope: !1050, file: !3, line: 392, column: 15)
!1057 = !DILocalVariable(name: "prevfield", scope: !1058, file: !3, line: 408, type: !82)
!1058 = distinct !DILexicalBlock(scope: !1046, file: !3, line: 407, column: 5)
!1059 = !DILocalVariable(name: "prevlen", scope: !1058, file: !3, line: 409, type: !76)
!1060 = !DILocalVariable(name: "match_count", scope: !1058, file: !3, line: 410, type: !1061)
!1061 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !1062, line: 102, baseType: !1063)
!1062 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1063 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !1064, line: 72, baseType: !78)
!1064 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1065 = !DILocalVariable(name: "first_delimiter", scope: !1058, file: !3, line: 411, type: !97)
!1066 = !DILocalVariable(name: "match", scope: !1067, file: !3, line: 420, type: !97)
!1067 = distinct !DILexicalBlock(scope: !1058, file: !3, line: 419, column: 9)
!1068 = !DILocalVariable(name: "thisfield", scope: !1067, file: !3, line: 421, type: !82)
!1069 = !DILocalVariable(name: "thislen", scope: !1067, file: !3, line: 422, type: !76)
!1070 = !DILocalVariable(name: "_tmp", scope: !1071, file: !3, line: 460, type: !1042)
!1071 = distinct !DILexicalBlock(scope: !1072, file: !3, line: 460, column: 15)
!1072 = distinct !DILexicalBlock(scope: !1073, file: !3, line: 458, column: 13)
!1073 = distinct !DILexicalBlock(scope: !1067, file: !3, line: 457, column: 15)
!1074 = !DILocation(line: 332, column: 25, scope: !1027, inlinedAt: !1075)
!1075 = distinct !DILocation(line: 672, column: 3, scope: !796)
!1076 = !DILocation(line: 332, column: 45, scope: !1027, inlinedAt: !1075)
!1077 = !DILocation(line: 332, column: 59, scope: !1027, inlinedAt: !1075)
!1078 = !DILocation(line: 334, column: 3, scope: !1027, inlinedAt: !1075)
!1079 = !DILocation(line: 337, column: 10, scope: !1080, inlinedAt: !1075)
!1080 = distinct !DILexicalBlock(scope: !1027, file: !3, line: 337, column: 7)
!1081 = !DILocation(line: 337, column: 30, scope: !1080, inlinedAt: !1075)
!1082 = !DILocation(line: 337, column: 55, scope: !1080, inlinedAt: !1075)
!1083 = !DILocation(line: 337, column: 33, scope: !1080, inlinedAt: !1075)
!1084 = !DILocation(line: 337, column: 7, scope: !1027, inlinedAt: !1075)
!1085 = !DILocation(line: 338, column: 5, scope: !1080, inlinedAt: !1075)
!1086 = !DILocation(line: 339, column: 10, scope: !1087, inlinedAt: !1075)
!1087 = distinct !DILexicalBlock(scope: !1027, file: !3, line: 339, column: 7)
!1088 = !DILocation(line: 339, column: 31, scope: !1087, inlinedAt: !1075)
!1089 = !DILocation(line: 339, column: 57, scope: !1087, inlinedAt: !1075)
!1090 = !DILocation(line: 339, column: 34, scope: !1087, inlinedAt: !1075)
!1091 = !DILocation(line: 339, column: 7, scope: !1027, inlinedAt: !1075)
!1092 = !DILocation(line: 340, column: 5, scope: !1087, inlinedAt: !1075)
!1093 = !DILocation(line: 342, column: 12, scope: !1027, inlinedAt: !1075)
!1094 = !DILocation(line: 342, column: 3, scope: !1027, inlinedAt: !1075)
!1095 = !DILocation(line: 335, column: 22, scope: !1027, inlinedAt: !1075)
!1096 = !DILocation(line: 335, column: 33, scope: !1027, inlinedAt: !1075)
!1097 = !DILocation(line: 334, column: 21, scope: !1027, inlinedAt: !1075)
!1098 = !DILocation(line: 347, column: 3, scope: !1027, inlinedAt: !1075)
!1099 = !DILocation(line: 334, column: 26, scope: !1027, inlinedAt: !1075)
!1100 = !DILocation(line: 348, column: 3, scope: !1027, inlinedAt: !1075)
!1101 = !DILocation(line: 365, column: 21, scope: !1046, inlinedAt: !1075)
!1102 = !DILocation(line: 365, column: 46, scope: !1046, inlinedAt: !1075)
!1103 = !DILocation(line: 367, column: 13, scope: !1045, inlinedAt: !1075)
!1104 = !DILocation(line: 368, column: 14, scope: !1045, inlinedAt: !1075)
!1105 = !DILocation(line: 369, column: 12, scope: !1045, inlinedAt: !1075)
!1106 = !DILocation(line: 371, column: 15, scope: !1045, inlinedAt: !1075)
!1107 = !DILocalVariable(name: "__stream", arg: 1, scope: !1108, file: !1109, line: 128, type: !1112)
!1108 = distinct !DISubprogram(name: "feof_unlocked", scope: !1109, file: !1109, line: 128, type: !1110, isLocal: false, isDefinition: true, scopeLine: 129, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1166)
!1109 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1110 = !DISubroutineType(types: !1111)
!1111 = !{!83, !1112}
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1113 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1114, line: 7, baseType: !1115)
!1114 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1116, line: 49, size: 1728, elements: !1117)
!1116 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1117 = !{!1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1133, !1135, !1136, !1137, !1140, !1141, !1143, !1147, !1150, !1152, !1155, !1158, !1159, !1160, !1161, !1162}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1115, file: !1116, line: 51, baseType: !83, size: 32)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1115, file: !1116, line: 54, baseType: !82, size: 64, offset: 64)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1115, file: !1116, line: 55, baseType: !82, size: 64, offset: 128)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1115, file: !1116, line: 56, baseType: !82, size: 64, offset: 192)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1115, file: !1116, line: 57, baseType: !82, size: 64, offset: 256)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1115, file: !1116, line: 58, baseType: !82, size: 64, offset: 320)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1115, file: !1116, line: 59, baseType: !82, size: 64, offset: 384)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1115, file: !1116, line: 60, baseType: !82, size: 64, offset: 448)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1115, file: !1116, line: 61, baseType: !82, size: 64, offset: 512)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1115, file: !1116, line: 64, baseType: !82, size: 64, offset: 576)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1115, file: !1116, line: 65, baseType: !82, size: 64, offset: 640)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1115, file: !1116, line: 66, baseType: !82, size: 64, offset: 704)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1115, file: !1116, line: 68, baseType: !1131, size: 64, offset: 768)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1132 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1116, line: 36, flags: DIFlagFwdDecl)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1115, file: !1116, line: 70, baseType: !1134, size: 64, offset: 832)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1115, file: !1116, line: 72, baseType: !83, size: 32, offset: 896)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1115, file: !1116, line: 73, baseType: !83, size: 32, offset: 928)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1115, file: !1116, line: 74, baseType: !1138, size: 64, offset: 960)
!1138 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1064, line: 150, baseType: !1139)
!1139 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1115, file: !1116, line: 77, baseType: !84, size: 16, offset: 1024)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1115, file: !1116, line: 78, baseType: !1142, size: 8, offset: 1040)
!1142 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1115, file: !1116, line: 79, baseType: !1144, size: 8, offset: 1048)
!1144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 8, elements: !1145)
!1145 = !{!1146}
!1146 = !DISubrange(count: 1)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1115, file: !1116, line: 81, baseType: !1148, size: 64, offset: 1088)
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1149 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1116, line: 43, baseType: null)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1115, file: !1116, line: 89, baseType: !1151, size: 64, offset: 1152)
!1151 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1064, line: 151, baseType: !1139)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1115, file: !1116, line: 91, baseType: !1153, size: 64, offset: 1216)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1154 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1116, line: 37, flags: DIFlagFwdDecl)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1115, file: !1116, line: 92, baseType: !1156, size: 64, offset: 1280)
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1157 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1116, line: 38, flags: DIFlagFwdDecl)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1115, file: !1116, line: 93, baseType: !1134, size: 64, offset: 1344)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1115, file: !1116, line: 94, baseType: !74, size: 64, offset: 1408)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1115, file: !1116, line: 95, baseType: !76, size: 64, offset: 1472)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1115, file: !1116, line: 96, baseType: !83, size: 32, offset: 1536)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1115, file: !1116, line: 98, baseType: !1163, size: 160, offset: 1568)
!1163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 160, elements: !1164)
!1164 = !{!1165}
!1165 = !DISubrange(count: 20)
!1166 = !{!1107}
!1167 = !DILocation(line: 128, column: 1, scope: !1108, inlinedAt: !1168)
!1168 = distinct !DILocation(line: 371, column: 15, scope: !1045, inlinedAt: !1075)
!1169 = !DILocation(line: 130, column: 10, scope: !1108, inlinedAt: !1168)
!1170 = !{!1171, !864, i64 0}
!1171 = !{!"_IO_FILE", !864, i64 0, !742, i64 8, !742, i64 16, !742, i64 24, !742, i64 32, !742, i64 40, !742, i64 48, !742, i64 56, !742, i64 64, !742, i64 72, !742, i64 80, !742, i64 88, !742, i64 96, !742, i64 104, !864, i64 112, !864, i64 116, !844, i64 120, !1172, i64 128, !743, i64 130, !743, i64 131, !742, i64 136, !844, i64 144, !742, i64 152, !742, i64 160, !742, i64 168, !742, i64 176, !844, i64 184, !864, i64 192, !743, i64 196}
!1172 = !{!"short", !743, i64 0}
!1173 = !DILocation(line: 371, column: 14, scope: !1045, inlinedAt: !1075)
!1174 = !DILocation(line: 371, column: 7, scope: !1045, inlinedAt: !1075)
!1175 = !DILocation(line: 377, column: 15, scope: !1176, inlinedAt: !1075)
!1176 = distinct !DILexicalBlock(scope: !1050, file: !3, line: 377, column: 15)
!1177 = !DILocation(line: 377, column: 65, scope: !1176, inlinedAt: !1075)
!1178 = !DILocation(line: 377, column: 15, scope: !1050, inlinedAt: !1075)
!1179 = !DILocation(line: 380, column: 23, scope: !1050, inlinedAt: !1075)
!1180 = !DILocation(line: 373, column: 17, scope: !1050, inlinedAt: !1075)
!1181 = !DILocation(line: 381, column: 31, scope: !1050, inlinedAt: !1075)
!1182 = !{!1183, !844, i64 8}
!1183 = !{!"linebuffer", !844, i64 0, !844, i64 8, !742, i64 16}
!1184 = !DILocation(line: 381, column: 67, scope: !1050, inlinedAt: !1075)
!1185 = !{!1183, !742, i64 16}
!1186 = !DILocation(line: 381, column: 55, scope: !1050, inlinedAt: !1075)
!1187 = !DILocation(line: 381, column: 42, scope: !1050, inlinedAt: !1075)
!1188 = !DILocation(line: 374, column: 18, scope: !1050, inlinedAt: !1075)
!1189 = !DILocation(line: 383, column: 34, scope: !1050, inlinedAt: !1075)
!1190 = !DILocation(line: 383, column: 41, scope: !1050, inlinedAt: !1075)
!1191 = !DILocation(line: 384, column: 24, scope: !1050, inlinedAt: !1075)
!1192 = !DILocalVariable(name: "old", arg: 1, scope: !1193, file: !3, line: 289, type: !82)
!1193 = distinct !DISubprogram(name: "different", scope: !3, file: !3, line: 289, type: !1194, isLocal: true, isDefinition: true, scopeLine: 290, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1196)
!1194 = !DISubroutineType(types: !1195)
!1195 = !{!97, !82, !82, !76, !76}
!1196 = !{!1192, !1197, !1198, !1199}
!1197 = !DILocalVariable(name: "new", arg: 2, scope: !1193, file: !3, line: 289, type: !82)
!1198 = !DILocalVariable(name: "oldlen", arg: 3, scope: !1193, file: !3, line: 289, type: !76)
!1199 = !DILocalVariable(name: "newlen", arg: 4, scope: !1193, file: !3, line: 289, type: !76)
!1200 = !DILocation(line: 289, column: 18, scope: !1193, inlinedAt: !1201)
!1201 = distinct !DILocation(line: 384, column: 27, scope: !1050, inlinedAt: !1075)
!1202 = !DILocation(line: 289, column: 29, scope: !1193, inlinedAt: !1201)
!1203 = !DILocation(line: 289, column: 41, scope: !1193, inlinedAt: !1201)
!1204 = !DILocation(line: 289, column: 56, scope: !1193, inlinedAt: !1201)
!1205 = !DILocation(line: 291, column: 7, scope: !1206, inlinedAt: !1201)
!1206 = distinct !DILexicalBlock(scope: !1193, file: !3, line: 291, column: 7)
!1207 = !DILocation(line: 291, column: 19, scope: !1206, inlinedAt: !1201)
!1208 = !DILocation(line: 291, column: 7, scope: !1193, inlinedAt: !1201)
!1209 = !DILocation(line: 293, column: 19, scope: !1210, inlinedAt: !1201)
!1210 = distinct !DILexicalBlock(scope: !1193, file: !3, line: 293, column: 7)
!1211 = !DILocation(line: 293, column: 7, scope: !1193, inlinedAt: !1201)
!1212 = !DILocation(line: 296, column: 7, scope: !1193, inlinedAt: !1201)
!1213 = !DILocation(line: 299, column: 21, scope: !1214, inlinedAt: !1201)
!1214 = distinct !DILexicalBlock(scope: !1215, file: !3, line: 297, column: 5)
!1215 = distinct !DILexicalBlock(scope: !1193, file: !3, line: 296, column: 7)
!1216 = !DILocation(line: 299, column: 31, scope: !1214, inlinedAt: !1201)
!1217 = !DILocation(line: 299, column: 34, scope: !1214, inlinedAt: !1201)
!1218 = !DILocation(line: 301, column: 12, scope: !1219, inlinedAt: !1201)
!1219 = distinct !DILexicalBlock(scope: !1215, file: !3, line: 301, column: 12)
!1220 = !{i8 0, i8 2}
!1221 = !DILocation(line: 301, column: 12, scope: !1215, inlinedAt: !1201)
!1222 = !DILocation(line: 302, column: 12, scope: !1219, inlinedAt: !1201)
!1223 = !DILocation(line: 302, column: 48, scope: !1219, inlinedAt: !1201)
!1224 = !DILocation(line: 302, column: 5, scope: !1219, inlinedAt: !1201)
!1225 = !DILocation(line: 304, column: 19, scope: !1219, inlinedAt: !1201)
!1226 = !DILocation(line: 304, column: 29, scope: !1219, inlinedAt: !1201)
!1227 = !DILocation(line: 304, column: 32, scope: !1219, inlinedAt: !1201)
!1228 = !DILocation(line: 386, column: 28, scope: !1229, inlinedAt: !1075)
!1229 = distinct !DILexicalBlock(scope: !1050, file: !3, line: 386, column: 15)
!1230 = !DILocation(line: 386, column: 37, scope: !1229, inlinedAt: !1075)
!1231 = !DILocation(line: 386, column: 25, scope: !1229, inlinedAt: !1075)
!1232 = !DILocation(line: 387, column: 42, scope: !1229, inlinedAt: !1075)
!1233 = !DILocation(line: 388, column: 23, scope: !1229, inlinedAt: !1075)
!1234 = !DILocation(line: 389, column: 47, scope: !1229, inlinedAt: !1075)
!1235 = !DILocation(line: 388, column: 43, scope: !1229, inlinedAt: !1075)
!1236 = !DILocation(line: 110, column: 10, scope: !1237, inlinedAt: !1242)
!1237 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1109, file: !1109, line: 108, type: !1238, isLocal: false, isDefinition: true, scopeLine: 109, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1240)
!1238 = !DISubroutineType(types: !1239)
!1239 = !{!83, !83}
!1240 = !{!1241}
!1241 = !DILocalVariable(name: "__c", arg: 1, scope: !1237, file: !1109, line: 108, type: !83)
!1242 = distinct !DILocation(line: 390, column: 13, scope: !1229, inlinedAt: !1075)
!1243 = !{!1171, !742, i64 40}
!1244 = !{!1171, !742, i64 48}
!1245 = !{!"branch_weights", i32 2000, i32 1}
!1246 = !DILocation(line: 392, column: 28, scope: !1056, inlinedAt: !1075)
!1247 = !DILocation(line: 392, column: 37, scope: !1056, inlinedAt: !1075)
!1248 = !DILocation(line: 392, column: 25, scope: !1056, inlinedAt: !1075)
!1249 = !DILocation(line: 394, column: 15, scope: !1055, inlinedAt: !1075)
!1250 = !DILocation(line: 397, column: 15, scope: !1054, inlinedAt: !1075)
!1251 = !DILocation(line: 401, column: 13, scope: !1055, inlinedAt: !1075)
!1252 = !DILocation(line: 0, scope: !1055, inlinedAt: !1075)
!1253 = !DILocation(line: 0, scope: !1054, inlinedAt: !1075)
!1254 = !DILocation(line: 403, column: 12, scope: !1255, inlinedAt: !1075)
!1255 = distinct !DILexicalBlock(scope: !1045, file: !3, line: 403, column: 11)
!1256 = !DILocation(line: 403, column: 32, scope: !1255, inlinedAt: !1075)
!1257 = !DILocation(line: 403, column: 61, scope: !1255, inlinedAt: !1075)
!1258 = !DILocation(line: 403, column: 11, scope: !1045, inlinedAt: !1075)
!1259 = !DILocation(line: 110, column: 10, scope: !1237, inlinedAt: !1260)
!1260 = distinct !DILocation(line: 404, column: 9, scope: !1255, inlinedAt: !1075)
!1261 = !DILocation(line: 404, column: 9, scope: !1255, inlinedAt: !1075)
!1262 = !DILocation(line: 410, column: 17, scope: !1058, inlinedAt: !1075)
!1263 = !DILocation(line: 411, column: 12, scope: !1058, inlinedAt: !1075)
!1264 = !DILocation(line: 413, column: 43, scope: !1265, inlinedAt: !1075)
!1265 = distinct !DILexicalBlock(scope: !1058, file: !3, line: 413, column: 11)
!1266 = !DILocation(line: 413, column: 11, scope: !1265, inlinedAt: !1075)
!1267 = !DILocation(line: 413, column: 61, scope: !1265, inlinedAt: !1075)
!1268 = !DILocation(line: 413, column: 11, scope: !1058, inlinedAt: !1075)
!1269 = !DILocation(line: 415, column: 19, scope: !1058, inlinedAt: !1075)
!1270 = !DILocation(line: 408, column: 13, scope: !1058, inlinedAt: !1075)
!1271 = !DILocation(line: 416, column: 27, scope: !1058, inlinedAt: !1075)
!1272 = !DILocation(line: 416, column: 63, scope: !1058, inlinedAt: !1075)
!1273 = !DILocation(line: 416, column: 51, scope: !1058, inlinedAt: !1075)
!1274 = !DILocation(line: 416, column: 38, scope: !1058, inlinedAt: !1075)
!1275 = !DILocation(line: 409, column: 14, scope: !1058, inlinedAt: !1075)
!1276 = !DILocation(line: 418, column: 7, scope: !1058, inlinedAt: !1075)
!1277 = !DILocation(line: 415, column: 17, scope: !1058, inlinedAt: !1075)
!1278 = !DILocation(line: 416, column: 15, scope: !1058, inlinedAt: !1075)
!1279 = !DILocation(line: 345, column: 12, scope: !1027, inlinedAt: !1075)
!1280 = !DILocation(line: 344, column: 12, scope: !1027, inlinedAt: !1075)
!1281 = !DILocation(line: 418, column: 15, scope: !1058, inlinedAt: !1075)
!1282 = !DILocation(line: 128, column: 1, scope: !1108, inlinedAt: !1283)
!1283 = distinct !DILocation(line: 418, column: 15, scope: !1058, inlinedAt: !1075)
!1284 = !DILocation(line: 130, column: 10, scope: !1108, inlinedAt: !1283)
!1285 = !DILocation(line: 418, column: 14, scope: !1058, inlinedAt: !1075)
!1286 = !DILocation(line: 423, column: 15, scope: !1287, inlinedAt: !1075)
!1287 = distinct !DILexicalBlock(scope: !1067, file: !3, line: 423, column: 15)
!1288 = !DILocation(line: 423, column: 65, scope: !1287, inlinedAt: !1075)
!1289 = !DILocation(line: 423, column: 15, scope: !1067, inlinedAt: !1075)
!1290 = !DILocation(line: 425, column: 19, scope: !1291, inlinedAt: !1075)
!1291 = distinct !DILexicalBlock(scope: !1292, file: !3, line: 425, column: 19)
!1292 = distinct !DILexicalBlock(scope: !1287, file: !3, line: 424, column: 13)
!1293 = !DILocalVariable(name: "__stream", arg: 1, scope: !1294, file: !1109, line: 135, type: !1112)
!1294 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1109, file: !1109, line: 135, type: !1110, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1295)
!1295 = !{!1293}
!1296 = !DILocation(line: 135, column: 1, scope: !1294, inlinedAt: !1297)
!1297 = distinct !DILocation(line: 425, column: 19, scope: !1291, inlinedAt: !1075)
!1298 = !DILocation(line: 137, column: 10, scope: !1294, inlinedAt: !1297)
!1299 = !DILocation(line: 427, column: 15, scope: !1292, inlinedAt: !1075)
!1300 = !DILocation(line: 429, column: 23, scope: !1067, inlinedAt: !1075)
!1301 = !DILocation(line: 421, column: 17, scope: !1067, inlinedAt: !1075)
!1302 = !DILocation(line: 430, column: 31, scope: !1067, inlinedAt: !1075)
!1303 = !DILocation(line: 430, column: 67, scope: !1067, inlinedAt: !1075)
!1304 = !DILocation(line: 430, column: 55, scope: !1067, inlinedAt: !1075)
!1305 = !DILocation(line: 430, column: 42, scope: !1067, inlinedAt: !1075)
!1306 = !DILocation(line: 422, column: 18, scope: !1067, inlinedAt: !1075)
!1307 = !DILocation(line: 289, column: 18, scope: !1193, inlinedAt: !1308)
!1308 = distinct !DILocation(line: 431, column: 20, scope: !1067, inlinedAt: !1075)
!1309 = !DILocation(line: 289, column: 29, scope: !1193, inlinedAt: !1308)
!1310 = !DILocation(line: 289, column: 41, scope: !1193, inlinedAt: !1308)
!1311 = !DILocation(line: 289, column: 56, scope: !1193, inlinedAt: !1308)
!1312 = !DILocation(line: 291, column: 7, scope: !1206, inlinedAt: !1308)
!1313 = !DILocation(line: 291, column: 19, scope: !1206, inlinedAt: !1308)
!1314 = !DILocation(line: 291, column: 7, scope: !1193, inlinedAt: !1308)
!1315 = !DILocation(line: 293, column: 19, scope: !1210, inlinedAt: !1308)
!1316 = !DILocation(line: 293, column: 7, scope: !1193, inlinedAt: !1308)
!1317 = !DILocation(line: 296, column: 7, scope: !1193, inlinedAt: !1308)
!1318 = !DILocation(line: 299, column: 21, scope: !1214, inlinedAt: !1308)
!1319 = !DILocation(line: 299, column: 31, scope: !1214, inlinedAt: !1308)
!1320 = !DILocation(line: 299, column: 34, scope: !1214, inlinedAt: !1308)
!1321 = !DILocation(line: 301, column: 12, scope: !1219, inlinedAt: !1308)
!1322 = !DILocation(line: 301, column: 12, scope: !1215, inlinedAt: !1308)
!1323 = !DILocation(line: 302, column: 12, scope: !1219, inlinedAt: !1308)
!1324 = !DILocation(line: 302, column: 48, scope: !1219, inlinedAt: !1308)
!1325 = !DILocation(line: 302, column: 5, scope: !1219, inlinedAt: !1308)
!1326 = !DILocation(line: 304, column: 19, scope: !1219, inlinedAt: !1308)
!1327 = !DILocation(line: 304, column: 29, scope: !1219, inlinedAt: !1308)
!1328 = !DILocation(line: 304, column: 32, scope: !1219, inlinedAt: !1308)
!1329 = !DILocation(line: 0, scope: !1219, inlinedAt: !1308)
!1330 = !DILocation(line: 431, column: 19, scope: !1067, inlinedAt: !1075)
!1331 = !DILocation(line: 432, column: 26, scope: !1067, inlinedAt: !1075)
!1332 = !DILocation(line: 432, column: 23, scope: !1067, inlinedAt: !1075)
!1333 = !DILocation(line: 434, column: 27, scope: !1334, inlinedAt: !1075)
!1334 = distinct !DILexicalBlock(scope: !1067, file: !3, line: 434, column: 15)
!1335 = !DILocation(line: 434, column: 15, scope: !1067, inlinedAt: !1075)
!1336 = !DILocation(line: 441, column: 15, scope: !1337, inlinedAt: !1075)
!1337 = distinct !DILexicalBlock(scope: !1067, file: !3, line: 441, column: 15)
!1338 = !DILocation(line: 441, column: 30, scope: !1337, inlinedAt: !1075)
!1339 = !DILocation(line: 441, column: 15, scope: !1067, inlinedAt: !1075)
!1340 = !DILocation(line: 443, column: 19, scope: !1341, inlinedAt: !1075)
!1341 = distinct !DILexicalBlock(scope: !1337, file: !3, line: 442, column: 13)
!1342 = !DILocation(line: 445, column: 23, scope: !1343, inlinedAt: !1075)
!1343 = distinct !DILexicalBlock(scope: !1344, file: !3, line: 445, column: 23)
!1344 = distinct !DILexicalBlock(scope: !1345, file: !3, line: 444, column: 17)
!1345 = distinct !DILexicalBlock(scope: !1341, file: !3, line: 443, column: 19)
!1346 = !DILocation(line: 445, column: 23, scope: !1344, inlinedAt: !1075)
!1347 = !DILocation(line: 457, column: 22, scope: !1073, inlinedAt: !1075)
!1348 = !DILocation(line: 448, column: 36, scope: !1349, inlinedAt: !1075)
!1349 = distinct !DILexicalBlock(scope: !1345, file: !3, line: 448, column: 24)
!1350 = !DILocation(line: 448, column: 24, scope: !1345, inlinedAt: !1075)
!1351 = !DILocation(line: 451, column: 23, scope: !1352, inlinedAt: !1075)
!1352 = distinct !DILexicalBlock(scope: !1353, file: !3, line: 450, column: 23)
!1353 = distinct !DILexicalBlock(scope: !1349, file: !3, line: 449, column: 17)
!1354 = !DILocation(line: 452, column: 31, scope: !1352, inlinedAt: !1075)
!1355 = !DILocation(line: 450, column: 23, scope: !1353, inlinedAt: !1075)
!1356 = !DILocation(line: 110, column: 10, scope: !1237, inlinedAt: !1357)
!1357 = distinct !DILocation(line: 453, column: 21, scope: !1352, inlinedAt: !1075)
!1358 = !DILocation(line: 457, column: 15, scope: !1067, inlinedAt: !1075)
!1359 = !DILocalVariable(name: "line", arg: 1, scope: !1360, file: !3, line: 314, type: !1363)
!1360 = distinct !DISubprogram(name: "writeline", scope: !3, file: !3, line: 314, type: !1361, isLocal: true, isDefinition: true, scopeLine: 316, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1365)
!1361 = !DISubroutineType(types: !1362)
!1362 = !{null, !1363, !97, !1061}
!1363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1364, size: 64)
!1364 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1034)
!1365 = !{!1359, !1366, !1367}
!1366 = !DILocalVariable(name: "match", arg: 2, scope: !1360, file: !3, line: 315, type: !97)
!1367 = !DILocalVariable(name: "linecount", arg: 3, scope: !1360, file: !3, line: 315, type: !1061)
!1368 = !DILocation(line: 314, column: 37, scope: !1360, inlinedAt: !1369)
!1369 = distinct !DILocation(line: 459, column: 15, scope: !1072, inlinedAt: !1075)
!1370 = !DILocation(line: 315, column: 17, scope: !1360, inlinedAt: !1369)
!1371 = !DILocation(line: 315, column: 34, scope: !1360, inlinedAt: !1369)
!1372 = !DILocation(line: 317, column: 20, scope: !1373, inlinedAt: !1369)
!1373 = distinct !DILexicalBlock(scope: !1360, file: !3, line: 317, column: 7)
!1374 = !DILocation(line: 317, column: 7, scope: !1360, inlinedAt: !1369)
!1375 = !DILocation(line: 317, column: 10, scope: !1373, inlinedAt: !1369)
!1376 = !DILocation(line: 318, column: 12, scope: !1373, inlinedAt: !1369)
!1377 = !DILocation(line: 322, column: 7, scope: !1360, inlinedAt: !1369)
!1378 = !DILocation(line: 323, column: 5, scope: !1379, inlinedAt: !1369)
!1379 = distinct !DILexicalBlock(scope: !1360, file: !3, line: 322, column: 7)
!1380 = !DILocation(line: 325, column: 3, scope: !1360, inlinedAt: !1369)
!1381 = !DILocation(line: 326, column: 1, scope: !1360, inlinedAt: !1369)
!1382 = !DILocation(line: 460, column: 15, scope: !1071, inlinedAt: !1075)
!1383 = !DILocation(line: 463, column: 19, scope: !1072, inlinedAt: !1075)
!1384 = !DILocation(line: 0, scope: !1072, inlinedAt: !1075)
!1385 = !DILocation(line: 0, scope: !1386, inlinedAt: !1075)
!1386 = distinct !DILexicalBlock(scope: !1334, file: !3, line: 435, column: 13)
!1387 = !DILocation(line: 0, scope: !1071, inlinedAt: !1075)
!1388 = distinct !{!1388, !1389, !1390}
!1389 = !DILocation(line: 418, column: 7, scope: !1058)
!1390 = !DILocation(line: 466, column: 9, scope: !1058)
!1391 = !DILocation(line: 314, column: 37, scope: !1360, inlinedAt: !1392)
!1392 = distinct !DILocation(line: 468, column: 7, scope: !1058, inlinedAt: !1075)
!1393 = !DILocation(line: 315, column: 17, scope: !1360, inlinedAt: !1392)
!1394 = !DILocation(line: 315, column: 34, scope: !1360, inlinedAt: !1392)
!1395 = !DILocation(line: 317, column: 20, scope: !1373, inlinedAt: !1392)
!1396 = !DILocation(line: 317, column: 7, scope: !1360, inlinedAt: !1392)
!1397 = !DILocation(line: 317, column: 10, scope: !1373, inlinedAt: !1392)
!1398 = !DILocation(line: 318, column: 12, scope: !1373, inlinedAt: !1392)
!1399 = !DILocation(line: 322, column: 7, scope: !1360, inlinedAt: !1392)
!1400 = !DILocation(line: 323, column: 5, scope: !1379, inlinedAt: !1392)
!1401 = !DILocation(line: 325, column: 3, scope: !1360, inlinedAt: !1392)
!1402 = !DILocation(line: 326, column: 1, scope: !1360, inlinedAt: !1392)
!1403 = !DILocation(line: 472, column: 7, scope: !1404, inlinedAt: !1075)
!1404 = distinct !DILexicalBlock(scope: !1027, file: !3, line: 472, column: 7)
!1405 = !DILocation(line: 135, column: 1, scope: !1294, inlinedAt: !1406)
!1406 = distinct !DILocation(line: 472, column: 7, scope: !1404, inlinedAt: !1075)
!1407 = !DILocation(line: 137, column: 10, scope: !1294, inlinedAt: !1406)
!1408 = !DILocation(line: 472, column: 22, scope: !1404, inlinedAt: !1075)
!1409 = !DILocation(line: 472, column: 25, scope: !1404, inlinedAt: !1075)
!1410 = !DILocation(line: 472, column: 40, scope: !1404, inlinedAt: !1075)
!1411 = !DILocation(line: 472, column: 7, scope: !1027, inlinedAt: !1075)
!1412 = !DILocation(line: 473, column: 5, scope: !1404, inlinedAt: !1075)
!1413 = !DILocation(line: 477, column: 13, scope: !1027, inlinedAt: !1075)
!1414 = !DILocation(line: 477, column: 3, scope: !1027, inlinedAt: !1075)
!1415 = !DILocation(line: 478, column: 13, scope: !1027, inlinedAt: !1075)
!1416 = !DILocation(line: 478, column: 3, scope: !1027, inlinedAt: !1075)
!1417 = !DILocation(line: 479, column: 1, scope: !1027, inlinedAt: !1075)
!1418 = !DILocation(line: 675, column: 1, scope: !796)
!1419 = distinct !DISubprogram(name: "find_field", scope: !3, file: !3, line: 263, type: !1420, isLocal: true, isDefinition: true, scopeLine: 264, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1422)
!1420 = !DISubroutineType(types: !1421)
!1421 = !{!82, !1363}
!1422 = !{!1423, !1424, !1425, !1426, !1427}
!1423 = !DILocalVariable(name: "line", arg: 1, scope: !1419, file: !3, line: 263, type: !1363)
!1424 = !DILocalVariable(name: "count", scope: !1419, file: !3, line: 265, type: !76)
!1425 = !DILocalVariable(name: "lp", scope: !1419, file: !3, line: 266, type: !79)
!1426 = !DILocalVariable(name: "size", scope: !1419, file: !3, line: 267, type: !76)
!1427 = !DILocalVariable(name: "i", scope: !1419, file: !3, line: 268, type: !76)
!1428 = !DILocation(line: 263, column: 38, scope: !1419)
!1429 = !DILocation(line: 266, column: 26, scope: !1419)
!1430 = !DILocation(line: 266, column: 15, scope: !1419)
!1431 = !DILocation(line: 267, column: 23, scope: !1419)
!1432 = !DILocation(line: 267, column: 30, scope: !1419)
!1433 = !DILocation(line: 267, column: 10, scope: !1419)
!1434 = !DILocation(line: 268, column: 10, scope: !1419)
!1435 = !DILocation(line: 265, column: 10, scope: !1419)
!1436 = !DILocation(line: 270, column: 27, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1438, file: !3, line: 270, column: 3)
!1438 = distinct !DILexicalBlock(scope: !1419, file: !3, line: 270, column: 3)
!1439 = !DILocation(line: 270, column: 25, scope: !1437)
!1440 = !DILocation(line: 270, column: 44, scope: !1437)
!1441 = !DILocation(line: 270, column: 39, scope: !1437)
!1442 = !DILocation(line: 272, column: 16, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1437, file: !3, line: 271, column: 5)
!1444 = !DILocation(line: 272, column: 23, scope: !1443)
!1445 = !DILocation(line: 162, column: 10, scope: !1446, inlinedAt: !1451)
!1446 = distinct !DISubprogram(name: "field_sep", scope: !715, file: !715, line: 160, type: !1447, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1449)
!1447 = !DISubroutineType(types: !1448)
!1448 = !{!97, !85}
!1449 = !{!1450}
!1450 = !DILocalVariable(name: "ch", arg: 1, scope: !1446, file: !715, line: 160, type: !85)
!1451 = distinct !DILocation(line: 272, column: 26, scope: !1443)
!1452 = !DILocation(line: 272, column: 37, scope: !1443)
!1453 = !DILocation(line: 160, column: 26, scope: !1446, inlinedAt: !1451)
!1454 = !{!1172, !1172, i64 0}
!1455 = !DILocation(line: 162, column: 29, scope: !1446, inlinedAt: !1451)
!1456 = !DILocation(line: 162, column: 23, scope: !1446, inlinedAt: !1451)
!1457 = !DILocation(line: 272, column: 7, scope: !1443)
!1458 = !DILocation(line: 273, column: 10, scope: !1443)
!1459 = distinct !{!1459, !1457, !1458}
!1460 = !DILocation(line: 0, scope: !1443)
!1461 = !DILocation(line: 274, column: 16, scope: !1443)
!1462 = !DILocation(line: 274, column: 23, scope: !1443)
!1463 = !DILocation(line: 162, column: 10, scope: !1446, inlinedAt: !1464)
!1464 = distinct !DILocation(line: 274, column: 27, scope: !1443)
!1465 = !DILocation(line: 274, column: 38, scope: !1443)
!1466 = !DILocation(line: 160, column: 26, scope: !1446, inlinedAt: !1464)
!1467 = !DILocation(line: 162, column: 29, scope: !1446, inlinedAt: !1464)
!1468 = !DILocation(line: 162, column: 23, scope: !1446, inlinedAt: !1464)
!1469 = !DILocation(line: 274, column: 7, scope: !1443)
!1470 = !DILocation(line: 275, column: 10, scope: !1443)
!1471 = distinct !{!1471, !1469, !1470}
!1472 = !DILocation(line: 270, column: 57, scope: !1437)
!1473 = distinct !{!1473, !1474, !1475}
!1474 = !DILocation(line: 270, column: 3, scope: !1438)
!1475 = !DILocation(line: 276, column: 5, scope: !1438)
!1476 = !DILocation(line: 278, column: 8, scope: !1419)
!1477 = !DILocation(line: 278, column: 5, scope: !1419)
!1478 = !DILocation(line: 280, column: 23, scope: !1419)
!1479 = !DILocation(line: 280, column: 3, scope: !1419)
!1480 = distinct !DISubprogram(name: "__argmatch_die", scope: !161, file: !161, line: 62, type: !165, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !156, retainedNodes: !152)
!1481 = !DILocation(line: 64, column: 3, scope: !1480)
!1482 = !DILocation(line: 65, column: 1, scope: !1480)
!1483 = distinct !DISubprogram(name: "argmatch", scope: !161, file: !161, line: 84, type: !1484, isLocal: false, isDefinition: true, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: true, unit: !156, retainedNodes: !1488)
!1484 = !DISubroutineType(types: !1485)
!1485 = !{!1486, !79, !1487, !79, !76}
!1486 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !77, line: 51, baseType: !1139)
!1487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!1488 = !{!1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496}
!1489 = !DILocalVariable(name: "arg", arg: 1, scope: !1483, file: !161, line: 84, type: !79)
!1490 = !DILocalVariable(name: "arglist", arg: 2, scope: !1483, file: !161, line: 84, type: !1487)
!1491 = !DILocalVariable(name: "vallist", arg: 3, scope: !1483, file: !161, line: 85, type: !79)
!1492 = !DILocalVariable(name: "valsize", arg: 4, scope: !1483, file: !161, line: 85, type: !76)
!1493 = !DILocalVariable(name: "i", scope: !1483, file: !161, line: 87, type: !76)
!1494 = !DILocalVariable(name: "arglen", scope: !1483, file: !161, line: 88, type: !76)
!1495 = !DILocalVariable(name: "matchind", scope: !1483, file: !161, line: 89, type: !1486)
!1496 = !DILocalVariable(name: "ambiguous", scope: !1483, file: !161, line: 90, type: !97)
!1497 = !DILocation(line: 84, column: 23, scope: !1483)
!1498 = !DILocation(line: 84, column: 47, scope: !1483)
!1499 = !DILocation(line: 85, column: 23, scope: !1483)
!1500 = !DILocation(line: 85, column: 39, scope: !1483)
!1501 = !DILocation(line: 89, column: 13, scope: !1483)
!1502 = !DILocation(line: 90, column: 8, scope: !1483)
!1503 = !DILocation(line: 92, column: 12, scope: !1483)
!1504 = !DILocation(line: 88, column: 10, scope: !1483)
!1505 = !DILocation(line: 87, column: 10, scope: !1483)
!1506 = !DILocation(line: 95, column: 15, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1508, file: !161, line: 95, column: 3)
!1508 = distinct !DILexicalBlock(scope: !1483, file: !161, line: 95, column: 3)
!1509 = !DILocation(line: 95, column: 3, scope: !1508)
!1510 = !DILocation(line: 97, column: 12, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1512, file: !161, line: 97, column: 11)
!1512 = distinct !DILexicalBlock(scope: !1507, file: !161, line: 96, column: 5)
!1513 = !DILocation(line: 97, column: 11, scope: !1512)
!1514 = !DILocation(line: 99, column: 15, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1516, file: !161, line: 99, column: 15)
!1516 = distinct !DILexicalBlock(scope: !1511, file: !161, line: 98, column: 9)
!1517 = !DILocation(line: 99, column: 35, scope: !1515)
!1518 = !DILocation(line: 99, column: 15, scope: !1516)
!1519 = !DILocation(line: 102, column: 29, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1515, file: !161, line: 102, column: 20)
!1521 = !DILocation(line: 102, column: 20, scope: !1515)
!1522 = !DILocation(line: 109, column: 19, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1524, file: !161, line: 108, column: 19)
!1524 = distinct !DILexicalBlock(scope: !1520, file: !161, line: 106, column: 13)
!1525 = !DILocation(line: 109, column: 48, scope: !1523)
!1526 = !DILocation(line: 109, column: 38, scope: !1523)
!1527 = !DILocation(line: 110, column: 48, scope: !1523)
!1528 = !DILocation(line: 110, column: 38, scope: !1523)
!1529 = !DILocation(line: 109, column: 22, scope: !1523)
!1530 = !DILocation(line: 108, column: 19, scope: !1524)
!1531 = !DILocation(line: 115, column: 17, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1523, file: !161, line: 111, column: 17)
!1533 = !DILocation(line: 0, scope: !1483)
!1534 = !DILocation(line: 95, column: 28, scope: !1507)
!1535 = distinct !{!1535, !1509, !1536}
!1536 = !DILocation(line: 118, column: 5, scope: !1508)
!1537 = !DILocation(line: 119, column: 7, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1483, file: !161, line: 119, column: 7)
!1539 = !DILocation(line: 122, column: 5, scope: !1538)
!1540 = !DILocation(line: 0, scope: !1538)
!1541 = !DILocation(line: 123, column: 1, scope: !1483)
!1542 = distinct !DISubprogram(name: "argmatch_invalid", scope: !161, file: !161, line: 131, type: !1543, isLocal: false, isDefinition: true, scopeLine: 132, flags: DIFlagPrototyped, isOptimized: true, unit: !156, retainedNodes: !1545)
!1543 = !DISubroutineType(types: !1544)
!1544 = !{null, !79, !79, !1486}
!1545 = !{!1546, !1547, !1548, !1549}
!1546 = !DILocalVariable(name: "context", arg: 1, scope: !1542, file: !161, line: 131, type: !79)
!1547 = !DILocalVariable(name: "value", arg: 2, scope: !1542, file: !161, line: 131, type: !79)
!1548 = !DILocalVariable(name: "problem", arg: 3, scope: !1542, file: !161, line: 131, type: !1486)
!1549 = !DILocalVariable(name: "format", scope: !1542, file: !161, line: 133, type: !79)
!1550 = !DILocation(line: 131, column: 31, scope: !1542)
!1551 = !DILocation(line: 131, column: 52, scope: !1542)
!1552 = !DILocation(line: 131, column: 69, scope: !1542)
!1553 = !DILocation(line: 133, column: 33, scope: !1542)
!1554 = !DILocation(line: 133, column: 25, scope: !1542)
!1555 = !DILocation(line: 0, scope: !1542)
!1556 = !DILocation(line: 133, column: 15, scope: !1542)
!1557 = !DILocation(line: 137, column: 24, scope: !1542)
!1558 = !DILocation(line: 138, column: 10, scope: !1542)
!1559 = !DILocation(line: 137, column: 3, scope: !1542)
!1560 = !DILocation(line: 139, column: 1, scope: !1542)
!1561 = distinct !DISubprogram(name: "argmatch_valid", scope: !161, file: !161, line: 146, type: !1562, isLocal: false, isDefinition: true, scopeLine: 148, flags: DIFlagPrototyped, isOptimized: true, unit: !156, retainedNodes: !1564)
!1562 = !DISubroutineType(types: !1563)
!1563 = !{null, !1487, !79, !76}
!1564 = !{!1565, !1566, !1567, !1568, !1569}
!1565 = !DILocalVariable(name: "arglist", arg: 1, scope: !1561, file: !161, line: 146, type: !1487)
!1566 = !DILocalVariable(name: "vallist", arg: 2, scope: !1561, file: !161, line: 147, type: !79)
!1567 = !DILocalVariable(name: "valsize", arg: 3, scope: !1561, file: !161, line: 147, type: !76)
!1568 = !DILocalVariable(name: "i", scope: !1561, file: !161, line: 149, type: !76)
!1569 = !DILocalVariable(name: "last_val", scope: !1561, file: !161, line: 150, type: !79)
!1570 = !DILocation(line: 146, column: 36, scope: !1561)
!1571 = !DILocation(line: 147, column: 29, scope: !1561)
!1572 = !DILocation(line: 147, column: 45, scope: !1561)
!1573 = !DILocation(line: 150, column: 15, scope: !1561)
!1574 = !DILocation(line: 154, column: 3, scope: !1561)
!1575 = !DILocation(line: 149, column: 10, scope: !1561)
!1576 = !DILocation(line: 155, column: 15, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1578, file: !161, line: 155, column: 3)
!1578 = distinct !DILexicalBlock(scope: !1561, file: !161, line: 155, column: 3)
!1579 = !DILocation(line: 155, column: 3, scope: !1578)
!1580 = !DILocation(line: 156, column: 12, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1577, file: !161, line: 156, column: 9)
!1582 = !DILocation(line: 0, scope: !1581)
!1583 = !DILocation(line: 157, column: 9, scope: !1581)
!1584 = !DILocation(line: 157, column: 12, scope: !1581)
!1585 = !DILocation(line: 156, column: 9, scope: !1577)
!1586 = !DILocation(line: 159, column: 9, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !1581, file: !161, line: 158, column: 7)
!1588 = !DILocation(line: 161, column: 7, scope: !1587)
!1589 = !DILocation(line: 164, column: 9, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1581, file: !161, line: 163, column: 7)
!1591 = !DILocation(line: 0, scope: !1561)
!1592 = !DILocation(line: 155, column: 28, scope: !1577)
!1593 = distinct !{!1593, !1579, !1594}
!1594 = !DILocation(line: 165, column: 7, scope: !1578)
!1595 = !DILocation(line: 166, column: 3, scope: !1561)
!1596 = !DILocalVariable(name: "__c", arg: 1, scope: !1597, file: !1109, line: 101, type: !83)
!1597 = distinct !DISubprogram(name: "putc_unlocked", scope: !1109, file: !1109, line: 101, type: !1598, isLocal: false, isDefinition: true, scopeLine: 102, flags: DIFlagPrototyped, isOptimized: true, unit: !156, retainedNodes: !1634)
!1598 = !DISubroutineType(types: !1599)
!1599 = !{!83, !83, !1600}
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1601, size: 64)
!1601 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1114, line: 7, baseType: !1602)
!1602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1116, line: 49, size: 1728, elements: !1603)
!1603 = !{!1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633}
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1602, file: !1116, line: 51, baseType: !83, size: 32)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1602, file: !1116, line: 54, baseType: !82, size: 64, offset: 64)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1602, file: !1116, line: 55, baseType: !82, size: 64, offset: 128)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1602, file: !1116, line: 56, baseType: !82, size: 64, offset: 192)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1602, file: !1116, line: 57, baseType: !82, size: 64, offset: 256)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1602, file: !1116, line: 58, baseType: !82, size: 64, offset: 320)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1602, file: !1116, line: 59, baseType: !82, size: 64, offset: 384)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1602, file: !1116, line: 60, baseType: !82, size: 64, offset: 448)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1602, file: !1116, line: 61, baseType: !82, size: 64, offset: 512)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1602, file: !1116, line: 64, baseType: !82, size: 64, offset: 576)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1602, file: !1116, line: 65, baseType: !82, size: 64, offset: 640)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1602, file: !1116, line: 66, baseType: !82, size: 64, offset: 704)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1602, file: !1116, line: 68, baseType: !1131, size: 64, offset: 768)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1602, file: !1116, line: 70, baseType: !1618, size: 64, offset: 832)
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1602, file: !1116, line: 72, baseType: !83, size: 32, offset: 896)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1602, file: !1116, line: 73, baseType: !83, size: 32, offset: 928)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1602, file: !1116, line: 74, baseType: !1138, size: 64, offset: 960)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1602, file: !1116, line: 77, baseType: !84, size: 16, offset: 1024)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1602, file: !1116, line: 78, baseType: !1142, size: 8, offset: 1040)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1602, file: !1116, line: 79, baseType: !1144, size: 8, offset: 1048)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1602, file: !1116, line: 81, baseType: !1148, size: 64, offset: 1088)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1602, file: !1116, line: 89, baseType: !1151, size: 64, offset: 1152)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1602, file: !1116, line: 91, baseType: !1153, size: 64, offset: 1216)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1602, file: !1116, line: 92, baseType: !1156, size: 64, offset: 1280)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1602, file: !1116, line: 93, baseType: !1618, size: 64, offset: 1344)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1602, file: !1116, line: 94, baseType: !74, size: 64, offset: 1408)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1602, file: !1116, line: 95, baseType: !76, size: 64, offset: 1472)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1602, file: !1116, line: 96, baseType: !83, size: 32, offset: 1536)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1602, file: !1116, line: 98, baseType: !1163, size: 160, offset: 1568)
!1634 = !{!1596, !1635}
!1635 = !DILocalVariable(name: "__stream", arg: 2, scope: !1597, file: !1109, line: 101, type: !1600)
!1636 = !DILocation(line: 101, column: 20, scope: !1597, inlinedAt: !1637)
!1637 = distinct !DILocation(line: 166, column: 3, scope: !1561)
!1638 = !DILocation(line: 101, column: 31, scope: !1597, inlinedAt: !1637)
!1639 = !DILocation(line: 103, column: 10, scope: !1597, inlinedAt: !1637)
!1640 = !DILocation(line: 167, column: 1, scope: !1561)
!1641 = distinct !DISubprogram(name: "__xargmatch_internal", scope: !161, file: !161, line: 176, type: !1642, isLocal: false, isDefinition: true, scopeLine: 180, flags: DIFlagPrototyped, isOptimized: true, unit: !156, retainedNodes: !1644)
!1642 = !DISubroutineType(types: !1643)
!1643 = !{!1486, !79, !79, !1487, !79, !76, !162}
!1644 = !{!1645, !1646, !1647, !1648, !1649, !1650, !1651}
!1645 = !DILocalVariable(name: "context", arg: 1, scope: !1641, file: !161, line: 176, type: !79)
!1646 = !DILocalVariable(name: "arg", arg: 2, scope: !1641, file: !161, line: 177, type: !79)
!1647 = !DILocalVariable(name: "arglist", arg: 3, scope: !1641, file: !161, line: 177, type: !1487)
!1648 = !DILocalVariable(name: "vallist", arg: 4, scope: !1641, file: !161, line: 178, type: !79)
!1649 = !DILocalVariable(name: "valsize", arg: 5, scope: !1641, file: !161, line: 178, type: !76)
!1650 = !DILocalVariable(name: "exit_fn", arg: 6, scope: !1641, file: !161, line: 179, type: !162)
!1651 = !DILocalVariable(name: "res", scope: !1641, file: !161, line: 181, type: !1486)
!1652 = !DILocation(line: 176, column: 35, scope: !1641)
!1653 = !DILocation(line: 177, column: 35, scope: !1641)
!1654 = !DILocation(line: 177, column: 59, scope: !1641)
!1655 = !DILocation(line: 178, column: 35, scope: !1641)
!1656 = !DILocation(line: 178, column: 51, scope: !1641)
!1657 = !DILocation(line: 179, column: 40, scope: !1641)
!1658 = !DILocation(line: 84, column: 23, scope: !1483, inlinedAt: !1659)
!1659 = distinct !DILocation(line: 181, column: 19, scope: !1641)
!1660 = !DILocation(line: 84, column: 47, scope: !1483, inlinedAt: !1659)
!1661 = !DILocation(line: 85, column: 23, scope: !1483, inlinedAt: !1659)
!1662 = !DILocation(line: 85, column: 39, scope: !1483, inlinedAt: !1659)
!1663 = !DILocation(line: 89, column: 13, scope: !1483, inlinedAt: !1659)
!1664 = !DILocation(line: 90, column: 8, scope: !1483, inlinedAt: !1659)
!1665 = !DILocation(line: 92, column: 12, scope: !1483, inlinedAt: !1659)
!1666 = !DILocation(line: 88, column: 10, scope: !1483, inlinedAt: !1659)
!1667 = !DILocation(line: 87, column: 10, scope: !1483, inlinedAt: !1659)
!1668 = !DILocation(line: 95, column: 15, scope: !1507, inlinedAt: !1659)
!1669 = !DILocation(line: 95, column: 3, scope: !1508, inlinedAt: !1659)
!1670 = !DILocation(line: 97, column: 12, scope: !1511, inlinedAt: !1659)
!1671 = !DILocation(line: 97, column: 11, scope: !1512, inlinedAt: !1659)
!1672 = !DILocation(line: 99, column: 15, scope: !1515, inlinedAt: !1659)
!1673 = !DILocation(line: 99, column: 35, scope: !1515, inlinedAt: !1659)
!1674 = !DILocation(line: 99, column: 15, scope: !1516, inlinedAt: !1659)
!1675 = !DILocation(line: 102, column: 29, scope: !1520, inlinedAt: !1659)
!1676 = !DILocation(line: 102, column: 20, scope: !1515, inlinedAt: !1659)
!1677 = !DILocation(line: 109, column: 19, scope: !1523, inlinedAt: !1659)
!1678 = !DILocation(line: 109, column: 48, scope: !1523, inlinedAt: !1659)
!1679 = !DILocation(line: 109, column: 38, scope: !1523, inlinedAt: !1659)
!1680 = !DILocation(line: 110, column: 48, scope: !1523, inlinedAt: !1659)
!1681 = !DILocation(line: 110, column: 38, scope: !1523, inlinedAt: !1659)
!1682 = !DILocation(line: 109, column: 22, scope: !1523, inlinedAt: !1659)
!1683 = !DILocation(line: 108, column: 19, scope: !1524, inlinedAt: !1659)
!1684 = !DILocation(line: 115, column: 17, scope: !1532, inlinedAt: !1659)
!1685 = !DILocation(line: 0, scope: !1483, inlinedAt: !1659)
!1686 = !DILocation(line: 95, column: 28, scope: !1507, inlinedAt: !1659)
!1687 = !DILocation(line: 119, column: 7, scope: !1538, inlinedAt: !1659)
!1688 = !DILocation(line: 0, scope: !1538, inlinedAt: !1659)
!1689 = !DILocation(line: 181, column: 13, scope: !1641)
!1690 = !DILocation(line: 182, column: 11, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1641, file: !161, line: 182, column: 7)
!1692 = !DILocation(line: 182, column: 7, scope: !1641)
!1693 = !DILocation(line: 131, column: 31, scope: !1542, inlinedAt: !1694)
!1694 = distinct !DILocation(line: 187, column: 3, scope: !1641)
!1695 = !DILocation(line: 131, column: 52, scope: !1542, inlinedAt: !1694)
!1696 = !DILocation(line: 131, column: 69, scope: !1542, inlinedAt: !1694)
!1697 = !DILocation(line: 133, column: 33, scope: !1542, inlinedAt: !1694)
!1698 = !DILocation(line: 133, column: 25, scope: !1542, inlinedAt: !1694)
!1699 = !DILocation(line: 0, scope: !1641)
!1700 = !DILocation(line: 133, column: 15, scope: !1542, inlinedAt: !1694)
!1701 = !DILocation(line: 137, column: 24, scope: !1542, inlinedAt: !1694)
!1702 = !DILocation(line: 138, column: 10, scope: !1542, inlinedAt: !1694)
!1703 = !DILocation(line: 137, column: 3, scope: !1542, inlinedAt: !1694)
!1704 = !DILocation(line: 188, column: 3, scope: !1641)
!1705 = !DILocation(line: 189, column: 3, scope: !1641)
!1706 = !DILocation(line: 191, column: 3, scope: !1641)
!1707 = !DILocation(line: 192, column: 1, scope: !1641)
!1708 = distinct !DISubprogram(name: "argmatch_to_argument", scope: !161, file: !161, line: 197, type: !1709, isLocal: false, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !156, retainedNodes: !1711)
!1709 = !DISubroutineType(types: !1710)
!1710 = !{!79, !79, !1487, !79, !76}
!1711 = !{!1712, !1713, !1714, !1715, !1716}
!1712 = !DILocalVariable(name: "value", arg: 1, scope: !1708, file: !161, line: 197, type: !79)
!1713 = !DILocalVariable(name: "arglist", arg: 2, scope: !1708, file: !161, line: 198, type: !1487)
!1714 = !DILocalVariable(name: "vallist", arg: 3, scope: !1708, file: !161, line: 199, type: !79)
!1715 = !DILocalVariable(name: "valsize", arg: 4, scope: !1708, file: !161, line: 199, type: !76)
!1716 = !DILocalVariable(name: "i", scope: !1708, file: !161, line: 201, type: !76)
!1717 = !DILocation(line: 197, column: 35, scope: !1708)
!1718 = !DILocation(line: 198, column: 42, scope: !1708)
!1719 = !DILocation(line: 199, column: 35, scope: !1708)
!1720 = !DILocation(line: 199, column: 51, scope: !1708)
!1721 = !DILocation(line: 201, column: 10, scope: !1708)
!1722 = !DILocation(line: 203, column: 15, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1724, file: !161, line: 203, column: 3)
!1724 = distinct !DILexicalBlock(scope: !1708, file: !161, line: 203, column: 3)
!1725 = !DILocation(line: 203, column: 3, scope: !1724)
!1726 = !DILocation(line: 204, column: 10, scope: !1727)
!1727 = distinct !DILexicalBlock(scope: !1723, file: !161, line: 204, column: 9)
!1728 = !DILocation(line: 204, column: 9, scope: !1723)
!1729 = distinct !{!1729, !1725, !1730}
!1730 = !DILocation(line: 205, column: 23, scope: !1724)
!1731 = !DILocation(line: 204, column: 43, scope: !1727)
!1732 = !DILocation(line: 204, column: 33, scope: !1727)
!1733 = !DILocation(line: 203, column: 28, scope: !1723)
!1734 = !DILocation(line: 207, column: 1, scope: !1708)
!1735 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !174, file: !174, line: 51, type: !716, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !169, retainedNodes: !1736)
!1736 = !{!1737}
!1737 = !DILocalVariable(name: "file", arg: 1, scope: !1735, file: !174, line: 51, type: !79)
!1738 = !DILocation(line: 51, column: 41, scope: !1735)
!1739 = !DILocation(line: 53, column: 13, scope: !1735)
!1740 = !DILocation(line: 54, column: 1, scope: !1735)
!1741 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !174, file: !174, line: 88, type: !1742, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !169, retainedNodes: !1744)
!1742 = !DISubroutineType(types: !1743)
!1743 = !{null, !97}
!1744 = !{!1745}
!1745 = !DILocalVariable(name: "ignore", arg: 1, scope: !1741, file: !174, line: 88, type: !97)
!1746 = !DILocation(line: 88, column: 37, scope: !1741)
!1747 = !DILocation(line: 90, column: 16, scope: !1741)
!1748 = !DILocation(line: 91, column: 1, scope: !1741)
!1749 = distinct !DISubprogram(name: "close_stdout", scope: !174, file: !174, line: 117, type: !165, isLocal: false, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: true, unit: !169, retainedNodes: !1750)
!1750 = !{!1751}
!1751 = !DILocalVariable(name: "write_error", scope: !1752, file: !174, line: 122, type: !79)
!1752 = distinct !DILexicalBlock(scope: !1753, file: !174, line: 121, column: 5)
!1753 = distinct !DILexicalBlock(scope: !1749, file: !174, line: 119, column: 7)
!1754 = !DILocation(line: 119, column: 21, scope: !1753)
!1755 = !DILocation(line: 119, column: 7, scope: !1753)
!1756 = !DILocation(line: 119, column: 29, scope: !1753)
!1757 = !DILocation(line: 120, column: 7, scope: !1753)
!1758 = !DILocation(line: 120, column: 12, scope: !1753)
!1759 = !DILocation(line: 120, column: 25, scope: !1753)
!1760 = !DILocation(line: 120, column: 28, scope: !1753)
!1761 = !DILocation(line: 120, column: 34, scope: !1753)
!1762 = !DILocation(line: 119, column: 7, scope: !1749)
!1763 = !DILocation(line: 122, column: 33, scope: !1752)
!1764 = !DILocation(line: 122, column: 19, scope: !1752)
!1765 = !DILocation(line: 123, column: 11, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1752, file: !174, line: 123, column: 11)
!1767 = !DILocation(line: 0, scope: !1766)
!1768 = !DILocation(line: 123, column: 11, scope: !1752)
!1769 = !DILocation(line: 124, column: 36, scope: !1766)
!1770 = !DILocation(line: 124, column: 9, scope: !1766)
!1771 = !DILocation(line: 127, column: 9, scope: !1766)
!1772 = !DILocation(line: 129, column: 14, scope: !1752)
!1773 = !DILocation(line: 129, column: 7, scope: !1752)
!1774 = !DILocation(line: 134, column: 42, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !1749, file: !174, line: 134, column: 7)
!1776 = !DILocation(line: 134, column: 28, scope: !1775)
!1777 = !DILocation(line: 134, column: 50, scope: !1775)
!1778 = !DILocation(line: 134, column: 7, scope: !1749)
!1779 = !DILocation(line: 135, column: 12, scope: !1775)
!1780 = !DILocation(line: 135, column: 5, scope: !1775)
!1781 = !DILocation(line: 136, column: 1, scope: !1749)
!1782 = distinct !DISubprogram(name: "fdadvise", scope: !1783, file: !1783, line: 31, type: !1784, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !250, retainedNodes: !1789)
!1783 = !DIFile(filename: "lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1784 = !DISubroutineType(types: !1785)
!1785 = !{null, !83, !1786, !1786, !1788}
!1786 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !1787, line: 63, baseType: !1138)
!1787 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1788 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !50, line: 52, baseType: !49)
!1789 = !{!1790, !1791, !1792, !1793, !1794}
!1790 = !DILocalVariable(name: "fd", arg: 1, scope: !1782, file: !1783, line: 31, type: !83)
!1791 = !DILocalVariable(name: "offset", arg: 2, scope: !1782, file: !1783, line: 31, type: !1786)
!1792 = !DILocalVariable(name: "len", arg: 3, scope: !1782, file: !1783, line: 31, type: !1786)
!1793 = !DILocalVariable(name: "advice", arg: 4, scope: !1782, file: !1783, line: 31, type: !1788)
!1794 = !DILocalVariable(name: "__x", scope: !1795, file: !1783, line: 34, type: !83)
!1795 = distinct !DILexicalBlock(scope: !1782, file: !1783, line: 34, column: 3)
!1796 = !DILocation(line: 31, column: 15, scope: !1782)
!1797 = !DILocation(line: 31, column: 25, scope: !1782)
!1798 = !DILocation(line: 31, column: 39, scope: !1782)
!1799 = !DILocation(line: 31, column: 54, scope: !1782)
!1800 = !DILocation(line: 34, column: 3, scope: !1795)
!1801 = !DILocation(line: 36, column: 1, scope: !1782)
!1802 = distinct !DISubprogram(name: "fadvise", scope: !1783, file: !1783, line: 39, type: !1803, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !250, retainedNodes: !1839)
!1803 = !DISubroutineType(types: !1804)
!1804 = !{null, !1805, !1788}
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1806 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1114, line: 7, baseType: !1807)
!1807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1116, line: 49, size: 1728, elements: !1808)
!1808 = !{!1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838}
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1807, file: !1116, line: 51, baseType: !83, size: 32)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1807, file: !1116, line: 54, baseType: !82, size: 64, offset: 64)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1807, file: !1116, line: 55, baseType: !82, size: 64, offset: 128)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1807, file: !1116, line: 56, baseType: !82, size: 64, offset: 192)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1807, file: !1116, line: 57, baseType: !82, size: 64, offset: 256)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1807, file: !1116, line: 58, baseType: !82, size: 64, offset: 320)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1807, file: !1116, line: 59, baseType: !82, size: 64, offset: 384)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1807, file: !1116, line: 60, baseType: !82, size: 64, offset: 448)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1807, file: !1116, line: 61, baseType: !82, size: 64, offset: 512)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1807, file: !1116, line: 64, baseType: !82, size: 64, offset: 576)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1807, file: !1116, line: 65, baseType: !82, size: 64, offset: 640)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1807, file: !1116, line: 66, baseType: !82, size: 64, offset: 704)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1807, file: !1116, line: 68, baseType: !1131, size: 64, offset: 768)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1807, file: !1116, line: 70, baseType: !1823, size: 64, offset: 832)
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1807, size: 64)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1807, file: !1116, line: 72, baseType: !83, size: 32, offset: 896)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1807, file: !1116, line: 73, baseType: !83, size: 32, offset: 928)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1807, file: !1116, line: 74, baseType: !1138, size: 64, offset: 960)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1807, file: !1116, line: 77, baseType: !84, size: 16, offset: 1024)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1807, file: !1116, line: 78, baseType: !1142, size: 8, offset: 1040)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1807, file: !1116, line: 79, baseType: !1144, size: 8, offset: 1048)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1807, file: !1116, line: 81, baseType: !1148, size: 64, offset: 1088)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1807, file: !1116, line: 89, baseType: !1151, size: 64, offset: 1152)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1807, file: !1116, line: 91, baseType: !1153, size: 64, offset: 1216)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1807, file: !1116, line: 92, baseType: !1156, size: 64, offset: 1280)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1807, file: !1116, line: 93, baseType: !1823, size: 64, offset: 1344)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1807, file: !1116, line: 94, baseType: !74, size: 64, offset: 1408)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1807, file: !1116, line: 95, baseType: !76, size: 64, offset: 1472)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1807, file: !1116, line: 96, baseType: !83, size: 32, offset: 1536)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1807, file: !1116, line: 98, baseType: !1163, size: 160, offset: 1568)
!1839 = !{!1840, !1841}
!1840 = !DILocalVariable(name: "fp", arg: 1, scope: !1802, file: !1783, line: 39, type: !1805)
!1841 = !DILocalVariable(name: "advice", arg: 2, scope: !1802, file: !1783, line: 39, type: !1788)
!1842 = !DILocation(line: 39, column: 16, scope: !1802)
!1843 = !DILocation(line: 39, column: 30, scope: !1802)
!1844 = !DILocation(line: 41, column: 7, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1802, file: !1783, line: 41, column: 7)
!1846 = !DILocation(line: 41, column: 7, scope: !1802)
!1847 = !DILocation(line: 42, column: 15, scope: !1845)
!1848 = !DILocation(line: 31, column: 15, scope: !1782, inlinedAt: !1849)
!1849 = distinct !DILocation(line: 42, column: 5, scope: !1845)
!1850 = !DILocation(line: 31, column: 25, scope: !1782, inlinedAt: !1849)
!1851 = !DILocation(line: 31, column: 39, scope: !1782, inlinedAt: !1849)
!1852 = !DILocation(line: 31, column: 54, scope: !1782, inlinedAt: !1849)
!1853 = !DILocation(line: 34, column: 3, scope: !1795, inlinedAt: !1849)
!1854 = !DILocation(line: 42, column: 5, scope: !1845)
!1855 = !DILocation(line: 43, column: 1, scope: !1802)
!1856 = distinct !DISubprogram(name: "freopen_safer", scope: !1857, file: !1857, line: 62, type: !1858, isLocal: false, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !253, retainedNodes: !1894)
!1857 = !DIFile(filename: "lib/freopen-safer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1858 = !DISubroutineType(types: !1859)
!1859 = !{!1860, !79, !79, !1860}
!1860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1861, size: 64)
!1861 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1114, line: 7, baseType: !1862)
!1862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1116, line: 49, size: 1728, elements: !1863)
!1863 = !{!1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1862, file: !1116, line: 51, baseType: !83, size: 32)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1862, file: !1116, line: 54, baseType: !82, size: 64, offset: 64)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1862, file: !1116, line: 55, baseType: !82, size: 64, offset: 128)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1862, file: !1116, line: 56, baseType: !82, size: 64, offset: 192)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1862, file: !1116, line: 57, baseType: !82, size: 64, offset: 256)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1862, file: !1116, line: 58, baseType: !82, size: 64, offset: 320)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1862, file: !1116, line: 59, baseType: !82, size: 64, offset: 384)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1862, file: !1116, line: 60, baseType: !82, size: 64, offset: 448)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1862, file: !1116, line: 61, baseType: !82, size: 64, offset: 512)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1862, file: !1116, line: 64, baseType: !82, size: 64, offset: 576)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1862, file: !1116, line: 65, baseType: !82, size: 64, offset: 640)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1862, file: !1116, line: 66, baseType: !82, size: 64, offset: 704)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1862, file: !1116, line: 68, baseType: !1131, size: 64, offset: 768)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1862, file: !1116, line: 70, baseType: !1878, size: 64, offset: 832)
!1878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1862, file: !1116, line: 72, baseType: !83, size: 32, offset: 896)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1862, file: !1116, line: 73, baseType: !83, size: 32, offset: 928)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1862, file: !1116, line: 74, baseType: !1138, size: 64, offset: 960)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1862, file: !1116, line: 77, baseType: !84, size: 16, offset: 1024)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1862, file: !1116, line: 78, baseType: !1142, size: 8, offset: 1040)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1862, file: !1116, line: 79, baseType: !1144, size: 8, offset: 1048)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1862, file: !1116, line: 81, baseType: !1148, size: 64, offset: 1088)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1862, file: !1116, line: 89, baseType: !1151, size: 64, offset: 1152)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1862, file: !1116, line: 91, baseType: !1153, size: 64, offset: 1216)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1862, file: !1116, line: 92, baseType: !1156, size: 64, offset: 1280)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1862, file: !1116, line: 93, baseType: !1878, size: 64, offset: 1344)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1862, file: !1116, line: 94, baseType: !74, size: 64, offset: 1408)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1862, file: !1116, line: 95, baseType: !76, size: 64, offset: 1472)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1862, file: !1116, line: 96, baseType: !83, size: 32, offset: 1536)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1862, file: !1116, line: 98, baseType: !1163, size: 160, offset: 1568)
!1894 = !{!1895, !1896, !1897, !1898, !1899, !1900, !1901}
!1895 = !DILocalVariable(name: "name", arg: 1, scope: !1856, file: !1857, line: 62, type: !79)
!1896 = !DILocalVariable(name: "mode", arg: 2, scope: !1856, file: !1857, line: 62, type: !79)
!1897 = !DILocalVariable(name: "f", arg: 3, scope: !1856, file: !1857, line: 62, type: !1860)
!1898 = !DILocalVariable(name: "protect_in", scope: !1856, file: !1857, line: 70, type: !97)
!1899 = !DILocalVariable(name: "protect_out", scope: !1856, file: !1857, line: 71, type: !97)
!1900 = !DILocalVariable(name: "protect_err", scope: !1856, file: !1857, line: 72, type: !97)
!1901 = !DILocalVariable(name: "saved_errno", scope: !1856, file: !1857, line: 73, type: !83)
!1902 = !DILocation(line: 62, column: 28, scope: !1856)
!1903 = !DILocation(line: 62, column: 46, scope: !1856)
!1904 = !DILocation(line: 62, column: 58, scope: !1856)
!1905 = !DILocation(line: 70, column: 8, scope: !1856)
!1906 = !DILocation(line: 71, column: 8, scope: !1856)
!1907 = !DILocation(line: 72, column: 8, scope: !1856)
!1908 = !DILocation(line: 75, column: 11, scope: !1856)
!1909 = !DILocation(line: 75, column: 3, scope: !1856)
!1910 = !DILocation(line: 78, column: 11, scope: !1911)
!1911 = distinct !DILexicalBlock(scope: !1912, file: !1857, line: 78, column: 11)
!1912 = distinct !DILexicalBlock(scope: !1856, file: !1857, line: 76, column: 5)
!1913 = !DILocation(line: 78, column: 47, scope: !1911)
!1914 = !DILocation(line: 78, column: 11, scope: !1912)
!1915 = !DILocation(line: 0, scope: !1856)
!1916 = !DILocation(line: 82, column: 11, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1912, file: !1857, line: 82, column: 11)
!1918 = !DILocation(line: 82, column: 47, scope: !1917)
!1919 = !DILocation(line: 82, column: 11, scope: !1912)
!1920 = !DILocation(line: 86, column: 11, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1912, file: !1857, line: 86, column: 11)
!1922 = !DILocation(line: 86, column: 45, scope: !1921)
!1923 = !DILocation(line: 93, column: 18, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !1856, file: !1857, line: 93, column: 7)
!1925 = !DILocalVariable(name: "fd", arg: 1, scope: !1926, file: !1857, line: 40, type: !83)
!1926 = distinct !DISubprogram(name: "protect_fd", scope: !1857, file: !1857, line: 40, type: !1927, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !253, retainedNodes: !1929)
!1927 = !DISubroutineType(types: !1928)
!1928 = !{!97, !83}
!1929 = !{!1925, !1930}
!1930 = !DILocalVariable(name: "value", scope: !1926, file: !1857, line: 42, type: !83)
!1931 = !DILocation(line: 40, column: 17, scope: !1926, inlinedAt: !1932)
!1932 = distinct !DILocation(line: 93, column: 22, scope: !1924)
!1933 = !DILocation(line: 42, column: 15, scope: !1926, inlinedAt: !1932)
!1934 = !DILocation(line: 42, column: 7, scope: !1926, inlinedAt: !1932)
!1935 = !DILocation(line: 43, column: 13, scope: !1936, inlinedAt: !1932)
!1936 = distinct !DILexicalBlock(scope: !1926, file: !1857, line: 43, column: 7)
!1937 = !DILocation(line: 43, column: 7, scope: !1926, inlinedAt: !1932)
!1938 = !DILocation(line: 45, column: 13, scope: !1939, inlinedAt: !1932)
!1939 = distinct !DILexicalBlock(scope: !1940, file: !1857, line: 45, column: 11)
!1940 = distinct !DILexicalBlock(scope: !1936, file: !1857, line: 44, column: 5)
!1941 = !DILocation(line: 45, column: 11, scope: !1940, inlinedAt: !1932)
!1942 = !DILocation(line: 47, column: 11, scope: !1943, inlinedAt: !1932)
!1943 = distinct !DILexicalBlock(scope: !1939, file: !1857, line: 46, column: 9)
!1944 = !DILocation(line: 48, column: 11, scope: !1943, inlinedAt: !1932)
!1945 = !DILocation(line: 48, column: 17, scope: !1943, inlinedAt: !1932)
!1946 = !DILocation(line: 49, column: 9, scope: !1943, inlinedAt: !1932)
!1947 = !DILocation(line: 95, column: 12, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1924, file: !1857, line: 95, column: 12)
!1949 = !DILocation(line: 95, column: 24, scope: !1948)
!1950 = !DILocation(line: 40, column: 17, scope: !1926, inlinedAt: !1951)
!1951 = distinct !DILocation(line: 95, column: 28, scope: !1948)
!1952 = !DILocation(line: 42, column: 15, scope: !1926, inlinedAt: !1951)
!1953 = !DILocation(line: 42, column: 7, scope: !1926, inlinedAt: !1951)
!1954 = !DILocation(line: 43, column: 13, scope: !1936, inlinedAt: !1951)
!1955 = !DILocation(line: 43, column: 7, scope: !1926, inlinedAt: !1951)
!1956 = !DILocation(line: 45, column: 13, scope: !1939, inlinedAt: !1951)
!1957 = !DILocation(line: 45, column: 11, scope: !1940, inlinedAt: !1951)
!1958 = !DILocation(line: 47, column: 11, scope: !1943, inlinedAt: !1951)
!1959 = !DILocation(line: 48, column: 11, scope: !1943, inlinedAt: !1951)
!1960 = !DILocation(line: 48, column: 17, scope: !1943, inlinedAt: !1951)
!1961 = !DILocation(line: 49, column: 9, scope: !1943, inlinedAt: !1951)
!1962 = !DILocation(line: 97, column: 12, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !1948, file: !1857, line: 97, column: 12)
!1964 = !DILocation(line: 97, column: 24, scope: !1963)
!1965 = !DILocation(line: 40, column: 17, scope: !1926, inlinedAt: !1966)
!1966 = distinct !DILocation(line: 97, column: 28, scope: !1963)
!1967 = !DILocation(line: 42, column: 15, scope: !1926, inlinedAt: !1966)
!1968 = !DILocation(line: 42, column: 7, scope: !1926, inlinedAt: !1966)
!1969 = !DILocation(line: 43, column: 13, scope: !1936, inlinedAt: !1966)
!1970 = !DILocation(line: 43, column: 7, scope: !1926, inlinedAt: !1966)
!1971 = !DILocation(line: 45, column: 13, scope: !1939, inlinedAt: !1966)
!1972 = !DILocation(line: 45, column: 11, scope: !1940, inlinedAt: !1966)
!1973 = !DILocation(line: 47, column: 11, scope: !1943, inlinedAt: !1966)
!1974 = !DILocation(line: 48, column: 11, scope: !1943, inlinedAt: !1966)
!1975 = !DILocation(line: 48, column: 17, scope: !1943, inlinedAt: !1966)
!1976 = !DILocation(line: 49, column: 9, scope: !1943, inlinedAt: !1966)
!1977 = !DILocation(line: 100, column: 9, scope: !1963)
!1978 = !DILocation(line: 0, scope: !1924)
!1979 = !DILocation(line: 101, column: 17, scope: !1856)
!1980 = !DILocation(line: 73, column: 7, scope: !1856)
!1981 = !DILocation(line: 102, column: 7, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1856, file: !1857, line: 102, column: 7)
!1983 = !DILocation(line: 102, column: 7, scope: !1856)
!1984 = !DILocation(line: 103, column: 5, scope: !1982)
!1985 = !DILocation(line: 104, column: 7, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1856, file: !1857, line: 104, column: 7)
!1987 = !DILocation(line: 104, column: 7, scope: !1856)
!1988 = !DILocation(line: 105, column: 5, scope: !1986)
!1989 = !DILocation(line: 106, column: 7, scope: !1856)
!1990 = !DILocation(line: 107, column: 5, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1856, file: !1857, line: 106, column: 7)
!1992 = !DILocation(line: 108, column: 8, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1856, file: !1857, line: 108, column: 7)
!1994 = !DILocation(line: 108, column: 7, scope: !1856)
!1995 = !DILocation(line: 109, column: 11, scope: !1993)
!1996 = !DILocation(line: 109, column: 5, scope: !1993)
!1997 = !DILocation(line: 110, column: 3, scope: !1856)
!1998 = distinct !DISubprogram(name: "hard_locale", scope: !1999, file: !1999, line: 38, type: !1927, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !255, retainedNodes: !2000)
!1999 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2000 = !{!2001, !2002, !2003}
!2001 = !DILocalVariable(name: "category", arg: 1, scope: !1998, file: !1999, line: 38, type: !83)
!2002 = !DILocalVariable(name: "hard", scope: !1998, file: !1999, line: 40, type: !97)
!2003 = !DILocalVariable(name: "p", scope: !1998, file: !1999, line: 41, type: !79)
!2004 = !DILocation(line: 38, column: 18, scope: !1998)
!2005 = !DILocation(line: 40, column: 8, scope: !1998)
!2006 = !DILocation(line: 41, column: 19, scope: !1998)
!2007 = !DILocation(line: 41, column: 15, scope: !1998)
!2008 = !DILocation(line: 43, column: 7, scope: !2009)
!2009 = distinct !DILexicalBlock(scope: !1998, file: !1999, line: 43, column: 7)
!2010 = !DILocation(line: 43, column: 7, scope: !1998)
!2011 = !DILocation(line: 47, column: 15, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !2013, file: !1999, line: 47, column: 15)
!2013 = distinct !DILexicalBlock(scope: !2014, file: !1999, line: 46, column: 9)
!2014 = distinct !DILexicalBlock(scope: !2015, file: !1999, line: 45, column: 11)
!2015 = distinct !DILexicalBlock(scope: !2009, file: !1999, line: 44, column: 5)
!2016 = !DILocation(line: 47, column: 31, scope: !2012)
!2017 = !DILocation(line: 47, column: 36, scope: !2012)
!2018 = !DILocation(line: 47, column: 39, scope: !2012)
!2019 = !DILocation(line: 47, column: 59, scope: !2012)
!2020 = !DILocation(line: 47, column: 15, scope: !2013)
!2021 = !DILocation(line: 48, column: 13, scope: !2012)
!2022 = !DILocation(line: 71, column: 3, scope: !1998)
!2023 = distinct !DISubprogram(name: "initbuffer", scope: !2024, file: !2024, line: 37, type: !2025, isLocal: false, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: true, unit: !257, retainedNodes: !2033)
!2024 = !DIFile(filename: "lib/linebuffer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2025 = !DISubroutineType(types: !2026)
!2026 = !{null, !2027}
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "linebuffer", file: !1035, line: 26, size: 192, elements: !2029)
!2029 = !{!2030, !2031, !2032}
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2028, file: !1035, line: 28, baseType: !76, size: 64)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2028, file: !1035, line: 29, baseType: !76, size: 64, offset: 64)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2028, file: !1035, line: 30, baseType: !82, size: 64, offset: 128)
!2033 = !{!2034}
!2034 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !2023, file: !2024, line: 37, type: !2027)
!2035 = !DILocation(line: 37, column: 32, scope: !2023)
!2036 = !DILocation(line: 39, column: 3, scope: !2023)
!2037 = !DILocation(line: 40, column: 1, scope: !2023)
!2038 = distinct !DISubprogram(name: "readlinebuffer", scope: !2024, file: !2024, line: 43, type: !2039, isLocal: false, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: true, unit: !257, retainedNodes: !2075)
!2039 = !DISubroutineType(types: !2040)
!2040 = !{!2027, !2027, !2041}
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2042, size: 64)
!2042 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1114, line: 7, baseType: !2043)
!2043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1116, line: 49, size: 1728, elements: !2044)
!2044 = !{!2045, !2046, !2047, !2048, !2049, !2050, !2051, !2052, !2053, !2054, !2055, !2056, !2057, !2058, !2060, !2061, !2062, !2063, !2064, !2065, !2066, !2067, !2068, !2069, !2070, !2071, !2072, !2073, !2074}
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2043, file: !1116, line: 51, baseType: !83, size: 32)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2043, file: !1116, line: 54, baseType: !82, size: 64, offset: 64)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2043, file: !1116, line: 55, baseType: !82, size: 64, offset: 128)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2043, file: !1116, line: 56, baseType: !82, size: 64, offset: 192)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2043, file: !1116, line: 57, baseType: !82, size: 64, offset: 256)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2043, file: !1116, line: 58, baseType: !82, size: 64, offset: 320)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2043, file: !1116, line: 59, baseType: !82, size: 64, offset: 384)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2043, file: !1116, line: 60, baseType: !82, size: 64, offset: 448)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2043, file: !1116, line: 61, baseType: !82, size: 64, offset: 512)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2043, file: !1116, line: 64, baseType: !82, size: 64, offset: 576)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2043, file: !1116, line: 65, baseType: !82, size: 64, offset: 640)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2043, file: !1116, line: 66, baseType: !82, size: 64, offset: 704)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2043, file: !1116, line: 68, baseType: !1131, size: 64, offset: 768)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2043, file: !1116, line: 70, baseType: !2059, size: 64, offset: 832)
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2043, size: 64)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2043, file: !1116, line: 72, baseType: !83, size: 32, offset: 896)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2043, file: !1116, line: 73, baseType: !83, size: 32, offset: 928)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2043, file: !1116, line: 74, baseType: !1138, size: 64, offset: 960)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2043, file: !1116, line: 77, baseType: !84, size: 16, offset: 1024)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2043, file: !1116, line: 78, baseType: !1142, size: 8, offset: 1040)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2043, file: !1116, line: 79, baseType: !1144, size: 8, offset: 1048)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2043, file: !1116, line: 81, baseType: !1148, size: 64, offset: 1088)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2043, file: !1116, line: 89, baseType: !1151, size: 64, offset: 1152)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2043, file: !1116, line: 91, baseType: !1153, size: 64, offset: 1216)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2043, file: !1116, line: 92, baseType: !1156, size: 64, offset: 1280)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2043, file: !1116, line: 93, baseType: !2059, size: 64, offset: 1344)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2043, file: !1116, line: 94, baseType: !74, size: 64, offset: 1408)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2043, file: !1116, line: 95, baseType: !76, size: 64, offset: 1472)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2043, file: !1116, line: 96, baseType: !83, size: 32, offset: 1536)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2043, file: !1116, line: 98, baseType: !1163, size: 160, offset: 1568)
!2075 = !{!2076, !2077}
!2076 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !2038, file: !2024, line: 43, type: !2027)
!2077 = !DILocalVariable(name: "stream", arg: 2, scope: !2038, file: !2024, line: 43, type: !2041)
!2078 = !DILocation(line: 43, column: 36, scope: !2038)
!2079 = !DILocation(line: 43, column: 54, scope: !2038)
!2080 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !2081, file: !2024, line: 59, type: !2027)
!2081 = distinct !DISubprogram(name: "readlinebuffer_delim", scope: !2024, file: !2024, line: 59, type: !2082, isLocal: false, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !257, retainedNodes: !2084)
!2082 = !DISubroutineType(types: !2083)
!2083 = !{!2027, !2027, !2041, !81}
!2084 = !{!2080, !2085, !2086, !2087, !2088, !2089, !2090, !2091}
!2085 = !DILocalVariable(name: "stream", arg: 2, scope: !2081, file: !2024, line: 59, type: !2041)
!2086 = !DILocalVariable(name: "delimiter", arg: 3, scope: !2081, file: !2024, line: 60, type: !81)
!2087 = !DILocalVariable(name: "c", scope: !2081, file: !2024, line: 62, type: !83)
!2088 = !DILocalVariable(name: "buffer", scope: !2081, file: !2024, line: 63, type: !82)
!2089 = !DILocalVariable(name: "p", scope: !2081, file: !2024, line: 64, type: !82)
!2090 = !DILocalVariable(name: "end", scope: !2081, file: !2024, line: 65, type: !82)
!2091 = !DILocalVariable(name: "oldsize", scope: !2092, file: !2024, line: 83, type: !76)
!2092 = distinct !DILexicalBlock(scope: !2093, file: !2024, line: 82, column: 9)
!2093 = distinct !DILexicalBlock(scope: !2094, file: !2024, line: 81, column: 11)
!2094 = distinct !DILexicalBlock(scope: !2081, file: !2024, line: 71, column: 5)
!2095 = !DILocation(line: 59, column: 42, scope: !2081, inlinedAt: !2096)
!2096 = distinct !DILocation(line: 45, column: 10, scope: !2038)
!2097 = !DILocation(line: 59, column: 60, scope: !2081, inlinedAt: !2096)
!2098 = !DILocation(line: 60, column: 28, scope: !2081, inlinedAt: !2096)
!2099 = !DILocation(line: 63, column: 30, scope: !2081, inlinedAt: !2096)
!2100 = !DILocation(line: 63, column: 9, scope: !2081, inlinedAt: !2096)
!2101 = !DILocation(line: 64, column: 9, scope: !2081, inlinedAt: !2096)
!2102 = !DILocation(line: 65, column: 36, scope: !2081, inlinedAt: !2096)
!2103 = !DILocalVariable(name: "__stream", arg: 1, scope: !2104, file: !1109, line: 128, type: !2041)
!2104 = distinct !DISubprogram(name: "feof_unlocked", scope: !1109, file: !1109, line: 128, type: !2105, isLocal: false, isDefinition: true, scopeLine: 129, flags: DIFlagPrototyped, isOptimized: true, unit: !257, retainedNodes: !2107)
!2105 = !DISubroutineType(types: !2106)
!2106 = !{!83, !2041}
!2107 = !{!2103}
!2108 = !DILocation(line: 128, column: 1, scope: !2104, inlinedAt: !2109)
!2109 = distinct !DILocation(line: 67, column: 7, scope: !2110, inlinedAt: !2096)
!2110 = distinct !DILexicalBlock(scope: !2081, file: !2024, line: 67, column: 7)
!2111 = !DILocation(line: 130, column: 10, scope: !2104, inlinedAt: !2109)
!2112 = !DILocation(line: 67, column: 7, scope: !2110, inlinedAt: !2096)
!2113 = !DILocation(line: 67, column: 7, scope: !2081, inlinedAt: !2096)
!2114 = !{!1183, !844, i64 0}
!2115 = !DILocation(line: 65, column: 22, scope: !2081, inlinedAt: !2096)
!2116 = !DILocation(line: 65, column: 9, scope: !2081, inlinedAt: !2096)
!2117 = !DILocation(line: 68, column: 10, scope: !2118, inlinedAt: !2121)
!2118 = distinct !DISubprogram(name: "getc_unlocked", scope: !1109, file: !1109, line: 66, type: !2105, isLocal: false, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: true, unit: !257, retainedNodes: !2119)
!2119 = !{!2120}
!2120 = !DILocalVariable(name: "__fp", arg: 1, scope: !2118, file: !1109, line: 66, type: !2041)
!2121 = distinct !DILocation(line: 72, column: 11, scope: !2094, inlinedAt: !2096)
!2122 = !DILocation(line: 0, scope: !2092, inlinedAt: !2096)
!2123 = !DILocation(line: 0, scope: !2094, inlinedAt: !2096)
!2124 = !DILocation(line: 66, column: 22, scope: !2118, inlinedAt: !2121)
!2125 = !{!1171, !742, i64 8}
!2126 = !{!1171, !742, i64 16}
!2127 = !DILocation(line: 62, column: 7, scope: !2081, inlinedAt: !2096)
!2128 = !DILocation(line: 73, column: 11, scope: !2094, inlinedAt: !2096)
!2129 = !DILocation(line: 73, column: 13, scope: !2130, inlinedAt: !2096)
!2130 = distinct !DILexicalBlock(scope: !2094, file: !2024, line: 73, column: 11)
!2131 = !DILocation(line: 75, column: 17, scope: !2132, inlinedAt: !2096)
!2132 = distinct !DILexicalBlock(scope: !2133, file: !2024, line: 75, column: 15)
!2133 = distinct !DILexicalBlock(scope: !2130, file: !2024, line: 74, column: 9)
!2134 = !DILocation(line: 75, column: 27, scope: !2132, inlinedAt: !2096)
!2135 = !DILocalVariable(name: "__stream", arg: 1, scope: !2136, file: !1109, line: 135, type: !2041)
!2136 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1109, file: !1109, line: 135, type: !2105, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !257, retainedNodes: !2137)
!2137 = !{!2135}
!2138 = !DILocation(line: 135, column: 1, scope: !2136, inlinedAt: !2139)
!2139 = distinct !DILocation(line: 75, column: 30, scope: !2132, inlinedAt: !2096)
!2140 = !DILocation(line: 137, column: 10, scope: !2136, inlinedAt: !2139)
!2141 = !DILocation(line: 75, column: 30, scope: !2132, inlinedAt: !2096)
!2142 = !DILocation(line: 75, column: 15, scope: !2133, inlinedAt: !2096)
!2143 = !DILocation(line: 77, column: 15, scope: !2144, inlinedAt: !2096)
!2144 = distinct !DILexicalBlock(scope: !2133, file: !2024, line: 77, column: 15)
!2145 = !DILocation(line: 77, column: 21, scope: !2144, inlinedAt: !2096)
!2146 = !DILocation(line: 77, column: 15, scope: !2133, inlinedAt: !2096)
!2147 = !DILocation(line: 81, column: 13, scope: !2093, inlinedAt: !2096)
!2148 = !DILocation(line: 81, column: 11, scope: !2094, inlinedAt: !2096)
!2149 = !DILocation(line: 83, column: 40, scope: !2092, inlinedAt: !2096)
!2150 = !DILocation(line: 83, column: 18, scope: !2092, inlinedAt: !2096)
!2151 = !DILocation(line: 84, column: 20, scope: !2092, inlinedAt: !2096)
!2152 = !DILocation(line: 85, column: 22, scope: !2092, inlinedAt: !2096)
!2153 = !DILocation(line: 86, column: 30, scope: !2092, inlinedAt: !2096)
!2154 = !DILocation(line: 87, column: 38, scope: !2092, inlinedAt: !2096)
!2155 = !DILocation(line: 87, column: 24, scope: !2092, inlinedAt: !2096)
!2156 = !DILocation(line: 88, column: 9, scope: !2092, inlinedAt: !2096)
!2157 = !DILocation(line: 0, scope: !2081, inlinedAt: !2096)
!2158 = !DILocation(line: 89, column: 14, scope: !2094, inlinedAt: !2096)
!2159 = !DILocation(line: 89, column: 9, scope: !2094, inlinedAt: !2096)
!2160 = !DILocation(line: 89, column: 12, scope: !2094, inlinedAt: !2096)
!2161 = !DILocation(line: 91, column: 12, scope: !2081, inlinedAt: !2096)
!2162 = !DILocation(line: 90, column: 5, scope: !2094, inlinedAt: !2096)
!2163 = distinct !{!2163, !2164, !2165}
!2164 = !DILocation(line: 70, column: 3, scope: !2081)
!2165 = !DILocation(line: 91, column: 24, scope: !2081)
!2166 = !DILocation(line: 93, column: 26, scope: !2081, inlinedAt: !2096)
!2167 = !DILocation(line: 93, column: 15, scope: !2081, inlinedAt: !2096)
!2168 = !DILocation(line: 93, column: 22, scope: !2081, inlinedAt: !2096)
!2169 = !DILocation(line: 94, column: 3, scope: !2081, inlinedAt: !2096)
!2170 = !DILocation(line: 45, column: 3, scope: !2038)
!2171 = !DILocation(line: 59, column: 42, scope: !2081)
!2172 = !DILocation(line: 59, column: 60, scope: !2081)
!2173 = !DILocation(line: 60, column: 28, scope: !2081)
!2174 = !DILocation(line: 63, column: 30, scope: !2081)
!2175 = !DILocation(line: 63, column: 9, scope: !2081)
!2176 = !DILocation(line: 64, column: 9, scope: !2081)
!2177 = !DILocation(line: 65, column: 36, scope: !2081)
!2178 = !DILocation(line: 128, column: 1, scope: !2104, inlinedAt: !2179)
!2179 = distinct !DILocation(line: 67, column: 7, scope: !2110)
!2180 = !DILocation(line: 130, column: 10, scope: !2104, inlinedAt: !2179)
!2181 = !DILocation(line: 67, column: 7, scope: !2110)
!2182 = !DILocation(line: 67, column: 7, scope: !2081)
!2183 = !DILocation(line: 65, column: 22, scope: !2081)
!2184 = !DILocation(line: 65, column: 9, scope: !2081)
!2185 = !DILocation(line: 68, column: 10, scope: !2118, inlinedAt: !2186)
!2186 = distinct !DILocation(line: 72, column: 11, scope: !2094)
!2187 = !DILocation(line: 0, scope: !2092)
!2188 = !DILocation(line: 0, scope: !2094)
!2189 = !DILocation(line: 66, column: 22, scope: !2118, inlinedAt: !2186)
!2190 = !DILocation(line: 62, column: 7, scope: !2081)
!2191 = !DILocation(line: 73, column: 11, scope: !2094)
!2192 = !DILocation(line: 73, column: 13, scope: !2130)
!2193 = !DILocation(line: 75, column: 17, scope: !2132)
!2194 = !DILocation(line: 75, column: 27, scope: !2132)
!2195 = !DILocation(line: 135, column: 1, scope: !2136, inlinedAt: !2196)
!2196 = distinct !DILocation(line: 75, column: 30, scope: !2132)
!2197 = !DILocation(line: 137, column: 10, scope: !2136, inlinedAt: !2196)
!2198 = !DILocation(line: 75, column: 30, scope: !2132)
!2199 = !DILocation(line: 75, column: 15, scope: !2133)
!2200 = !DILocation(line: 77, column: 15, scope: !2144)
!2201 = !DILocation(line: 77, column: 21, scope: !2144)
!2202 = !DILocation(line: 77, column: 15, scope: !2133)
!2203 = !DILocation(line: 81, column: 13, scope: !2093)
!2204 = !DILocation(line: 81, column: 11, scope: !2094)
!2205 = !DILocation(line: 83, column: 40, scope: !2092)
!2206 = !DILocation(line: 83, column: 18, scope: !2092)
!2207 = !DILocation(line: 84, column: 20, scope: !2092)
!2208 = !DILocation(line: 85, column: 22, scope: !2092)
!2209 = !DILocation(line: 86, column: 30, scope: !2092)
!2210 = !DILocation(line: 87, column: 38, scope: !2092)
!2211 = !DILocation(line: 87, column: 24, scope: !2092)
!2212 = !DILocation(line: 88, column: 9, scope: !2092)
!2213 = !DILocation(line: 0, scope: !2081)
!2214 = !DILocation(line: 89, column: 14, scope: !2094)
!2215 = !DILocation(line: 89, column: 9, scope: !2094)
!2216 = !DILocation(line: 89, column: 12, scope: !2094)
!2217 = !DILocation(line: 91, column: 12, scope: !2081)
!2218 = !DILocation(line: 90, column: 5, scope: !2094)
!2219 = !DILocation(line: 93, column: 26, scope: !2081)
!2220 = !DILocation(line: 93, column: 15, scope: !2081)
!2221 = !DILocation(line: 93, column: 22, scope: !2081)
!2222 = !DILocation(line: 94, column: 3, scope: !2081)
!2223 = !DILocation(line: 95, column: 1, scope: !2081)
!2224 = distinct !DISubprogram(name: "freebuffer", scope: !2024, file: !2024, line: 100, type: !2025, isLocal: false, isDefinition: true, scopeLine: 101, flags: DIFlagPrototyped, isOptimized: true, unit: !257, retainedNodes: !2225)
!2225 = !{!2226}
!2226 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !2224, file: !2024, line: 100, type: !2027)
!2227 = !DILocation(line: 100, column: 32, scope: !2224)
!2228 = !DILocation(line: 102, column: 21, scope: !2224)
!2229 = !DILocation(line: 102, column: 3, scope: !2224)
!2230 = !DILocation(line: 103, column: 1, scope: !2224)
!2231 = distinct !DISubprogram(name: "memcasecmp", scope: !2232, file: !2232, line: 32, type: !2233, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped, isOptimized: true, unit: !261, retainedNodes: !2237)
!2232 = !DIFile(filename: "lib/memcasecmp.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2233 = !DISubroutineType(types: !2234)
!2234 = !{!83, !2235, !2235, !76}
!2235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2236, size: 64)
!2236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2237 = !{!2238, !2239, !2240, !2241, !2242, !2243, !2244, !2248, !2249, !2250, !2252, !2253, !2255}
!2238 = !DILocalVariable(name: "vs1", arg: 1, scope: !2231, file: !2232, line: 32, type: !2235)
!2239 = !DILocalVariable(name: "vs2", arg: 2, scope: !2231, file: !2232, line: 32, type: !2235)
!2240 = !DILocalVariable(name: "n", arg: 3, scope: !2231, file: !2232, line: 32, type: !76)
!2241 = !DILocalVariable(name: "i", scope: !2231, file: !2232, line: 34, type: !76)
!2242 = !DILocalVariable(name: "s1", scope: !2231, file: !2232, line: 35, type: !79)
!2243 = !DILocalVariable(name: "s2", scope: !2231, file: !2232, line: 36, type: !79)
!2244 = !DILocalVariable(name: "u1", scope: !2245, file: !2232, line: 39, type: !85)
!2245 = distinct !DILexicalBlock(scope: !2246, file: !2232, line: 38, column: 5)
!2246 = distinct !DILexicalBlock(scope: !2247, file: !2232, line: 37, column: 3)
!2247 = distinct !DILexicalBlock(scope: !2231, file: !2232, line: 37, column: 3)
!2248 = !DILocalVariable(name: "u2", scope: !2245, file: !2232, line: 40, type: !85)
!2249 = !DILocalVariable(name: "U1", scope: !2245, file: !2232, line: 41, type: !83)
!2250 = !DILocalVariable(name: "__res", scope: !2251, file: !2232, line: 41, type: !83)
!2251 = distinct !DILexicalBlock(scope: !2245, file: !2232, line: 41, column: 16)
!2252 = !DILocalVariable(name: "U2", scope: !2245, file: !2232, line: 42, type: !83)
!2253 = !DILocalVariable(name: "__res", scope: !2254, file: !2232, line: 42, type: !83)
!2254 = distinct !DILexicalBlock(scope: !2245, file: !2232, line: 42, column: 16)
!2255 = !DILocalVariable(name: "diff", scope: !2245, file: !2232, line: 43, type: !83)
!2256 = !DILocation(line: 32, column: 25, scope: !2231)
!2257 = !DILocation(line: 32, column: 42, scope: !2231)
!2258 = !DILocation(line: 32, column: 54, scope: !2231)
!2259 = !DILocation(line: 35, column: 15, scope: !2231)
!2260 = !DILocation(line: 36, column: 15, scope: !2231)
!2261 = !DILocation(line: 34, column: 10, scope: !2231)
!2262 = !DILocation(line: 37, column: 17, scope: !2246)
!2263 = !DILocation(line: 37, column: 3, scope: !2247)
!2264 = !DILocation(line: 41, column: 16, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !2251, file: !2232, line: 41, column: 16)
!2266 = distinct !{!2266, !2263, !2267}
!2267 = !DILocation(line: 47, column: 5, scope: !2247)
!2268 = !DILocation(line: 39, column: 26, scope: !2245)
!2269 = !DILocation(line: 39, column: 21, scope: !2245)
!2270 = !DILocation(line: 40, column: 26, scope: !2245)
!2271 = !DILocation(line: 40, column: 21, scope: !2245)
!2272 = !DILocation(line: 41, column: 16, scope: !2251)
!2273 = !DILocation(line: 41, column: 11, scope: !2245)
!2274 = !DILocation(line: 42, column: 16, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !2254, file: !2232, line: 42, column: 16)
!2276 = !DILocation(line: 42, column: 16, scope: !2254)
!2277 = !DILocation(line: 42, column: 11, scope: !2245)
!2278 = !DILocation(line: 43, column: 45, scope: !2245)
!2279 = !DILocation(line: 43, column: 11, scope: !2245)
!2280 = !DILocation(line: 45, column: 11, scope: !2281)
!2281 = distinct !DILexicalBlock(scope: !2245, file: !2232, line: 45, column: 11)
!2282 = !DILocation(line: 37, column: 23, scope: !2246)
!2283 = !DILocation(line: 0, scope: !2231)
!2284 = !DILocation(line: 49, column: 1, scope: !2231)
!2285 = distinct !DISubprogram(name: "posix2_version", scope: !2286, file: !2286, line: 40, type: !2287, isLocal: false, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: true, unit: !264, retainedNodes: !2288)
!2286 = !DIFile(filename: "lib/posixver.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2287 = !DISubroutineType(types: !263)
!2288 = !{!2289, !2290, !2291, !2294}
!2289 = !DILocalVariable(name: "v", scope: !2285, file: !2286, line: 42, type: !1139)
!2290 = !DILocalVariable(name: "s", scope: !2285, file: !2286, line: 43, type: !79)
!2291 = !DILocalVariable(name: "e", scope: !2292, file: !2286, line: 47, type: !82)
!2292 = distinct !DILexicalBlock(scope: !2293, file: !2286, line: 46, column: 5)
!2293 = distinct !DILexicalBlock(scope: !2285, file: !2286, line: 45, column: 7)
!2294 = !DILocalVariable(name: "i", scope: !2292, file: !2286, line: 48, type: !1139)
!2295 = !DILocation(line: 42, column: 12, scope: !2285)
!2296 = !DILocation(line: 43, column: 19, scope: !2285)
!2297 = !DILocation(line: 43, column: 15, scope: !2285)
!2298 = !DILocation(line: 45, column: 7, scope: !2293)
!2299 = !DILocation(line: 45, column: 9, scope: !2293)
!2300 = !DILocation(line: 45, column: 12, scope: !2293)
!2301 = !DILocation(line: 45, column: 7, scope: !2285)
!2302 = !DILocation(line: 47, column: 7, scope: !2292)
!2303 = !DILocation(line: 47, column: 13, scope: !2292)
!2304 = !DILocation(line: 48, column: 20, scope: !2292)
!2305 = !DILocation(line: 48, column: 16, scope: !2292)
!2306 = !DILocation(line: 49, column: 14, scope: !2307)
!2307 = distinct !DILexicalBlock(scope: !2292, file: !2286, line: 49, column: 11)
!2308 = !DILocation(line: 49, column: 13, scope: !2307)
!2309 = !DILocation(line: 51, column: 5, scope: !2293)
!2310 = !DILocation(line: 53, column: 12, scope: !2285)
!2311 = !DILocation(line: 53, column: 36, scope: !2285)
!2312 = !DILocation(line: 53, column: 34, scope: !2285)
!2313 = !DILocation(line: 53, column: 10, scope: !2285)
!2314 = !DILocation(line: 53, column: 3, scope: !2285)
!2315 = distinct !DISubprogram(name: "set_program_name", scope: !188, file: !188, line: 39, type: !716, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !184, retainedNodes: !2316)
!2316 = !{!2317, !2318, !2319}
!2317 = !DILocalVariable(name: "argv0", arg: 1, scope: !2315, file: !188, line: 39, type: !79)
!2318 = !DILocalVariable(name: "slash", scope: !2315, file: !188, line: 46, type: !79)
!2319 = !DILocalVariable(name: "base", scope: !2315, file: !188, line: 47, type: !79)
!2320 = !DILocation(line: 39, column: 31, scope: !2315)
!2321 = !DILocation(line: 51, column: 13, scope: !2322)
!2322 = distinct !DILexicalBlock(scope: !2315, file: !188, line: 51, column: 7)
!2323 = !DILocation(line: 51, column: 7, scope: !2315)
!2324 = !DILocation(line: 55, column: 14, scope: !2325)
!2325 = distinct !DILexicalBlock(scope: !2322, file: !188, line: 52, column: 5)
!2326 = !DILocation(line: 54, column: 7, scope: !2325)
!2327 = !DILocation(line: 56, column: 7, scope: !2325)
!2328 = !DILocation(line: 59, column: 11, scope: !2315)
!2329 = !DILocation(line: 46, column: 15, scope: !2315)
!2330 = !DILocation(line: 60, column: 17, scope: !2315)
!2331 = !DILocation(line: 60, column: 33, scope: !2315)
!2332 = !DILocation(line: 60, column: 11, scope: !2315)
!2333 = !DILocation(line: 47, column: 15, scope: !2315)
!2334 = !DILocation(line: 61, column: 12, scope: !2335)
!2335 = distinct !DILexicalBlock(scope: !2315, file: !188, line: 61, column: 7)
!2336 = !DILocation(line: 61, column: 20, scope: !2335)
!2337 = !DILocation(line: 61, column: 25, scope: !2335)
!2338 = !DILocation(line: 61, column: 42, scope: !2335)
!2339 = !DILocation(line: 61, column: 28, scope: !2335)
!2340 = !DILocation(line: 61, column: 61, scope: !2335)
!2341 = !DILocation(line: 61, column: 7, scope: !2315)
!2342 = !DILocation(line: 64, column: 11, scope: !2343)
!2343 = distinct !DILexicalBlock(scope: !2344, file: !188, line: 64, column: 11)
!2344 = distinct !DILexicalBlock(scope: !2335, file: !188, line: 62, column: 5)
!2345 = !DILocation(line: 64, column: 36, scope: !2343)
!2346 = !DILocation(line: 64, column: 11, scope: !2344)
!2347 = !DILocation(line: 66, column: 24, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2343, file: !188, line: 65, column: 9)
!2349 = !DILocation(line: 70, column: 41, scope: !2348)
!2350 = !DILocation(line: 72, column: 9, scope: !2348)
!2351 = !DILocation(line: 84, column: 16, scope: !2315)
!2352 = !DILocation(line: 90, column: 27, scope: !2315)
!2353 = !DILocation(line: 92, column: 1, scope: !2315)
!2354 = distinct !DISubprogram(name: "clone_quoting_options", scope: !203, file: !203, line: 122, type: !2355, isLocal: false, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, unit: !191, retainedNodes: !2358)
!2355 = !DISubroutineType(types: !2356)
!2356 = !{!2357, !2357}
!2357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!2358 = !{!2359, !2360, !2361}
!2359 = !DILocalVariable(name: "o", arg: 1, scope: !2354, file: !203, line: 122, type: !2357)
!2360 = !DILocalVariable(name: "e", scope: !2354, file: !203, line: 124, type: !83)
!2361 = !DILocalVariable(name: "p", scope: !2354, file: !203, line: 125, type: !2357)
!2362 = !DILocation(line: 122, column: 48, scope: !2354)
!2363 = !DILocation(line: 124, column: 11, scope: !2354)
!2364 = !DILocation(line: 124, column: 7, scope: !2354)
!2365 = !DILocation(line: 125, column: 40, scope: !2354)
!2366 = !DILocation(line: 125, column: 31, scope: !2354)
!2367 = !DILocation(line: 125, column: 27, scope: !2354)
!2368 = !DILocation(line: 127, column: 9, scope: !2354)
!2369 = !DILocation(line: 128, column: 3, scope: !2354)
!2370 = distinct !DISubprogram(name: "get_quoting_style", scope: !203, file: !203, line: 133, type: !2371, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !191, retainedNodes: !2375)
!2371 = !DISubroutineType(types: !2372)
!2372 = !{!35, !2373}
!2373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2374, size: 64)
!2374 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !210)
!2375 = !{!2376}
!2376 = !DILocalVariable(name: "o", arg: 1, scope: !2370, file: !203, line: 133, type: !2373)
!2377 = !DILocation(line: 133, column: 50, scope: !2370)
!2378 = !DILocation(line: 135, column: 11, scope: !2370)
!2379 = !DILocation(line: 135, column: 46, scope: !2370)
!2380 = !{!2381, !743, i64 0}
!2381 = !{!"quoting_options", !743, i64 0, !864, i64 4, !743, i64 8, !742, i64 40, !742, i64 48}
!2382 = !DILocation(line: 135, column: 3, scope: !2370)
!2383 = distinct !DISubprogram(name: "set_quoting_style", scope: !203, file: !203, line: 141, type: !2384, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: true, unit: !191, retainedNodes: !2386)
!2384 = !DISubroutineType(types: !2385)
!2385 = !{null, !2357, !35}
!2386 = !{!2387, !2388}
!2387 = !DILocalVariable(name: "o", arg: 1, scope: !2383, file: !203, line: 141, type: !2357)
!2388 = !DILocalVariable(name: "s", arg: 2, scope: !2383, file: !203, line: 141, type: !35)
!2389 = !DILocation(line: 141, column: 44, scope: !2383)
!2390 = !DILocation(line: 141, column: 66, scope: !2383)
!2391 = !DILocation(line: 143, column: 4, scope: !2383)
!2392 = !DILocation(line: 143, column: 39, scope: !2383)
!2393 = !DILocation(line: 143, column: 45, scope: !2383)
!2394 = !DILocation(line: 144, column: 1, scope: !2383)
!2395 = distinct !DISubprogram(name: "set_char_quoting", scope: !203, file: !203, line: 152, type: !2396, isLocal: false, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, unit: !191, retainedNodes: !2398)
!2396 = !DISubroutineType(types: !2397)
!2397 = !{!83, !2357, !81, !83}
!2398 = !{!2399, !2400, !2401, !2402, !2403, !2405, !2406}
!2399 = !DILocalVariable(name: "o", arg: 1, scope: !2395, file: !203, line: 152, type: !2357)
!2400 = !DILocalVariable(name: "c", arg: 2, scope: !2395, file: !203, line: 152, type: !81)
!2401 = !DILocalVariable(name: "i", arg: 3, scope: !2395, file: !203, line: 152, type: !83)
!2402 = !DILocalVariable(name: "uc", scope: !2395, file: !203, line: 154, type: !85)
!2403 = !DILocalVariable(name: "p", scope: !2395, file: !203, line: 155, type: !2404)
!2404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!2405 = !DILocalVariable(name: "shift", scope: !2395, file: !203, line: 157, type: !83)
!2406 = !DILocalVariable(name: "r", scope: !2395, file: !203, line: 158, type: !83)
!2407 = !DILocation(line: 152, column: 43, scope: !2395)
!2408 = !DILocation(line: 152, column: 51, scope: !2395)
!2409 = !DILocation(line: 152, column: 58, scope: !2395)
!2410 = !DILocation(line: 154, column: 17, scope: !2395)
!2411 = !DILocation(line: 156, column: 6, scope: !2395)
!2412 = !DILocation(line: 156, column: 62, scope: !2395)
!2413 = !DILocation(line: 156, column: 57, scope: !2395)
!2414 = !DILocation(line: 155, column: 17, scope: !2395)
!2415 = !DILocation(line: 157, column: 15, scope: !2395)
!2416 = !DILocation(line: 157, column: 7, scope: !2395)
!2417 = !DILocation(line: 158, column: 12, scope: !2395)
!2418 = !DILocation(line: 158, column: 15, scope: !2395)
!2419 = !DILocation(line: 158, column: 25, scope: !2395)
!2420 = !DILocation(line: 158, column: 7, scope: !2395)
!2421 = !DILocation(line: 159, column: 13, scope: !2395)
!2422 = !DILocation(line: 159, column: 18, scope: !2395)
!2423 = !DILocation(line: 159, column: 23, scope: !2395)
!2424 = !DILocation(line: 159, column: 6, scope: !2395)
!2425 = !DILocation(line: 160, column: 3, scope: !2395)
!2426 = distinct !DISubprogram(name: "set_quoting_flags", scope: !203, file: !203, line: 168, type: !2427, isLocal: false, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true, unit: !191, retainedNodes: !2429)
!2427 = !DISubroutineType(types: !2428)
!2428 = !{!83, !2357, !83}
!2429 = !{!2430, !2431, !2432}
!2430 = !DILocalVariable(name: "o", arg: 1, scope: !2426, file: !203, line: 168, type: !2357)
!2431 = !DILocalVariable(name: "i", arg: 2, scope: !2426, file: !203, line: 168, type: !83)
!2432 = !DILocalVariable(name: "r", scope: !2426, file: !203, line: 170, type: !83)
!2433 = !DILocation(line: 168, column: 44, scope: !2426)
!2434 = !DILocation(line: 168, column: 51, scope: !2426)
!2435 = !DILocation(line: 171, column: 8, scope: !2436)
!2436 = distinct !DILexicalBlock(scope: !2426, file: !203, line: 171, column: 7)
!2437 = !DILocation(line: 171, column: 7, scope: !2426)
!2438 = !DILocation(line: 173, column: 10, scope: !2426)
!2439 = !{!2381, !864, i64 4}
!2440 = !DILocation(line: 170, column: 7, scope: !2426)
!2441 = !DILocation(line: 174, column: 12, scope: !2426)
!2442 = !DILocation(line: 175, column: 3, scope: !2426)
!2443 = distinct !DISubprogram(name: "set_custom_quoting", scope: !203, file: !203, line: 179, type: !2444, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !191, retainedNodes: !2446)
!2444 = !DISubroutineType(types: !2445)
!2445 = !{null, !2357, !79, !79}
!2446 = !{!2447, !2448, !2449}
!2447 = !DILocalVariable(name: "o", arg: 1, scope: !2443, file: !203, line: 179, type: !2357)
!2448 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2443, file: !203, line: 180, type: !79)
!2449 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2443, file: !203, line: 180, type: !79)
!2450 = !DILocation(line: 179, column: 45, scope: !2443)
!2451 = !DILocation(line: 180, column: 33, scope: !2443)
!2452 = !DILocation(line: 180, column: 57, scope: !2443)
!2453 = !DILocation(line: 182, column: 8, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2443, file: !203, line: 182, column: 7)
!2455 = !DILocation(line: 182, column: 7, scope: !2443)
!2456 = !DILocation(line: 184, column: 6, scope: !2443)
!2457 = !DILocation(line: 184, column: 12, scope: !2443)
!2458 = !DILocation(line: 185, column: 8, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !2443, file: !203, line: 185, column: 7)
!2460 = !DILocation(line: 185, column: 23, scope: !2459)
!2461 = !DILocation(line: 185, column: 19, scope: !2459)
!2462 = !DILocation(line: 186, column: 5, scope: !2459)
!2463 = !DILocation(line: 187, column: 6, scope: !2443)
!2464 = !DILocation(line: 187, column: 17, scope: !2443)
!2465 = !{!2381, !742, i64 40}
!2466 = !DILocation(line: 188, column: 6, scope: !2443)
!2467 = !DILocation(line: 188, column: 18, scope: !2443)
!2468 = !{!2381, !742, i64 48}
!2469 = !DILocation(line: 189, column: 1, scope: !2443)
!2470 = distinct !DISubprogram(name: "quotearg_buffer", scope: !203, file: !203, line: 784, type: !2471, isLocal: false, isDefinition: true, scopeLine: 787, flags: DIFlagPrototyped, isOptimized: true, unit: !191, retainedNodes: !2473)
!2471 = !DISubroutineType(types: !2472)
!2472 = !{!76, !82, !76, !79, !76, !2373}
!2473 = !{!2474, !2475, !2476, !2477, !2478, !2479, !2480, !2481}
!2474 = !DILocalVariable(name: "buffer", arg: 1, scope: !2470, file: !203, line: 784, type: !82)
!2475 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2470, file: !203, line: 784, type: !76)
!2476 = !DILocalVariable(name: "arg", arg: 3, scope: !2470, file: !203, line: 785, type: !79)
!2477 = !DILocalVariable(name: "argsize", arg: 4, scope: !2470, file: !203, line: 785, type: !76)
!2478 = !DILocalVariable(name: "o", arg: 5, scope: !2470, file: !203, line: 786, type: !2373)
!2479 = !DILocalVariable(name: "p", scope: !2470, file: !203, line: 788, type: !2373)
!2480 = !DILocalVariable(name: "e", scope: !2470, file: !203, line: 789, type: !83)
!2481 = !DILocalVariable(name: "r", scope: !2470, file: !203, line: 790, type: !76)
!2482 = !DILocation(line: 784, column: 24, scope: !2470)
!2483 = !DILocation(line: 784, column: 39, scope: !2470)
!2484 = !DILocation(line: 785, column: 30, scope: !2470)
!2485 = !DILocation(line: 785, column: 42, scope: !2470)
!2486 = !DILocation(line: 786, column: 48, scope: !2470)
!2487 = !DILocation(line: 788, column: 37, scope: !2470)
!2488 = !DILocation(line: 788, column: 33, scope: !2470)
!2489 = !DILocation(line: 789, column: 11, scope: !2470)
!2490 = !DILocation(line: 789, column: 7, scope: !2470)
!2491 = !DILocation(line: 791, column: 43, scope: !2470)
!2492 = !DILocation(line: 791, column: 53, scope: !2470)
!2493 = !DILocation(line: 791, column: 60, scope: !2470)
!2494 = !DILocation(line: 792, column: 43, scope: !2470)
!2495 = !DILocation(line: 792, column: 58, scope: !2470)
!2496 = !DILocation(line: 790, column: 14, scope: !2470)
!2497 = !DILocation(line: 790, column: 10, scope: !2470)
!2498 = !DILocation(line: 793, column: 9, scope: !2470)
!2499 = !DILocation(line: 794, column: 3, scope: !2470)
!2500 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !203, file: !203, line: 256, type: !2501, isLocal: true, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: true, unit: !191, retainedNodes: !2505)
!2501 = !DISubroutineType(types: !2502)
!2502 = !{!76, !82, !76, !79, !76, !35, !83, !2503, !79, !79}
!2503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2504, size: 64)
!2504 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!2505 = !{!2506, !2507, !2508, !2509, !2510, !2511, !2512, !2513, !2514, !2515, !2516, !2517, !2518, !2519, !2520, !2521, !2522, !2523, !2524, !2525, !2526, !2530, !2531, !2532, !2533, !2534, !2537, !2538, !2554, !2557, !2558, !2565}
!2506 = !DILocalVariable(name: "buffer", arg: 1, scope: !2500, file: !203, line: 256, type: !82)
!2507 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2500, file: !203, line: 256, type: !76)
!2508 = !DILocalVariable(name: "arg", arg: 3, scope: !2500, file: !203, line: 257, type: !79)
!2509 = !DILocalVariable(name: "argsize", arg: 4, scope: !2500, file: !203, line: 257, type: !76)
!2510 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2500, file: !203, line: 258, type: !35)
!2511 = !DILocalVariable(name: "flags", arg: 6, scope: !2500, file: !203, line: 258, type: !83)
!2512 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2500, file: !203, line: 259, type: !2503)
!2513 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2500, file: !203, line: 260, type: !79)
!2514 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2500, file: !203, line: 261, type: !79)
!2515 = !DILocalVariable(name: "i", scope: !2500, file: !203, line: 263, type: !76)
!2516 = !DILocalVariable(name: "len", scope: !2500, file: !203, line: 264, type: !76)
!2517 = !DILocalVariable(name: "orig_buffersize", scope: !2500, file: !203, line: 265, type: !76)
!2518 = !DILocalVariable(name: "quote_string", scope: !2500, file: !203, line: 266, type: !79)
!2519 = !DILocalVariable(name: "quote_string_len", scope: !2500, file: !203, line: 267, type: !76)
!2520 = !DILocalVariable(name: "backslash_escapes", scope: !2500, file: !203, line: 268, type: !97)
!2521 = !DILocalVariable(name: "unibyte_locale", scope: !2500, file: !203, line: 269, type: !97)
!2522 = !DILocalVariable(name: "elide_outer_quotes", scope: !2500, file: !203, line: 270, type: !97)
!2523 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2500, file: !203, line: 271, type: !97)
!2524 = !DILocalVariable(name: "encountered_single_quote", scope: !2500, file: !203, line: 272, type: !97)
!2525 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2500, file: !203, line: 273, type: !97)
!2526 = !DILocalVariable(name: "c", scope: !2527, file: !203, line: 402, type: !85)
!2527 = distinct !DILexicalBlock(scope: !2528, file: !203, line: 401, column: 5)
!2528 = distinct !DILexicalBlock(scope: !2529, file: !203, line: 400, column: 3)
!2529 = distinct !DILexicalBlock(scope: !2500, file: !203, line: 400, column: 3)
!2530 = !DILocalVariable(name: "esc", scope: !2527, file: !203, line: 403, type: !85)
!2531 = !DILocalVariable(name: "is_right_quote", scope: !2527, file: !203, line: 404, type: !97)
!2532 = !DILocalVariable(name: "escaping", scope: !2527, file: !203, line: 405, type: !97)
!2533 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2527, file: !203, line: 406, type: !97)
!2534 = !DILocalVariable(name: "m", scope: !2535, file: !203, line: 610, type: !76)
!2535 = distinct !DILexicalBlock(scope: !2536, file: !203, line: 608, column: 11)
!2536 = distinct !DILexicalBlock(scope: !2527, file: !203, line: 426, column: 9)
!2537 = !DILocalVariable(name: "printable", scope: !2535, file: !203, line: 612, type: !97)
!2538 = !DILocalVariable(name: "mbstate", scope: !2539, file: !203, line: 621, type: !2541)
!2539 = distinct !DILexicalBlock(scope: !2540, file: !203, line: 620, column: 15)
!2540 = distinct !DILexicalBlock(scope: !2535, file: !203, line: 614, column: 17)
!2541 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2542, line: 6, baseType: !2543)
!2542 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2543 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2544, line: 21, baseType: !2545)
!2544 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2545 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2544, line: 13, size: 64, elements: !2546)
!2546 = !{!2547, !2548}
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2545, file: !2544, line: 15, baseType: !83, size: 32)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2545, file: !2544, line: 20, baseType: !2549, size: 32, offset: 32)
!2549 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2545, file: !2544, line: 16, size: 32, elements: !2550)
!2550 = !{!2551, !2552}
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2549, file: !2544, line: 18, baseType: !6, size: 32)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2549, file: !2544, line: 19, baseType: !2553, size: 32)
!2553 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 32, elements: !130)
!2554 = !DILocalVariable(name: "w", scope: !2555, file: !203, line: 631, type: !2556)
!2555 = distinct !DILexicalBlock(scope: !2539, file: !203, line: 630, column: 19)
!2556 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !77, line: 90, baseType: !83)
!2557 = !DILocalVariable(name: "bytes", scope: !2555, file: !203, line: 632, type: !76)
!2558 = !DILocalVariable(name: "j", scope: !2559, file: !203, line: 657, type: !76)
!2559 = distinct !DILexicalBlock(scope: !2560, file: !203, line: 656, column: 27)
!2560 = distinct !DILexicalBlock(scope: !2561, file: !203, line: 654, column: 29)
!2561 = distinct !DILexicalBlock(scope: !2562, file: !203, line: 649, column: 23)
!2562 = distinct !DILexicalBlock(scope: !2563, file: !203, line: 641, column: 30)
!2563 = distinct !DILexicalBlock(scope: !2564, file: !203, line: 636, column: 30)
!2564 = distinct !DILexicalBlock(scope: !2555, file: !203, line: 634, column: 25)
!2565 = !DILocalVariable(name: "ilim", scope: !2566, file: !203, line: 684, type: !76)
!2566 = distinct !DILexicalBlock(scope: !2567, file: !203, line: 681, column: 15)
!2567 = distinct !DILexicalBlock(scope: !2535, file: !203, line: 680, column: 17)
!2568 = !DILocation(line: 256, column: 33, scope: !2500)
!2569 = !DILocation(line: 256, column: 48, scope: !2500)
!2570 = !DILocation(line: 257, column: 39, scope: !2500)
!2571 = !DILocation(line: 257, column: 51, scope: !2500)
!2572 = !DILocation(line: 258, column: 46, scope: !2500)
!2573 = !DILocation(line: 258, column: 65, scope: !2500)
!2574 = !DILocation(line: 259, column: 47, scope: !2500)
!2575 = !DILocation(line: 260, column: 39, scope: !2500)
!2576 = !DILocation(line: 261, column: 39, scope: !2500)
!2577 = !DILocation(line: 264, column: 10, scope: !2500)
!2578 = !DILocation(line: 265, column: 10, scope: !2500)
!2579 = !DILocation(line: 266, column: 15, scope: !2500)
!2580 = !DILocation(line: 267, column: 10, scope: !2500)
!2581 = !DILocation(line: 268, column: 8, scope: !2500)
!2582 = !DILocation(line: 269, column: 25, scope: !2500)
!2583 = !DILocation(line: 269, column: 36, scope: !2500)
!2584 = !DILocation(line: 270, column: 8, scope: !2500)
!2585 = !DILocation(line: 271, column: 8, scope: !2500)
!2586 = !DILocation(line: 272, column: 8, scope: !2500)
!2587 = !DILocation(line: 273, column: 8, scope: !2500)
!2588 = !DILocation(line: 273, column: 3, scope: !2500)
!2589 = !DILocation(line: 0, scope: !2590)
!2590 = distinct !DILexicalBlock(scope: !2500, file: !203, line: 317, column: 5)
!2591 = !DILocation(line: 316, column: 3, scope: !2500)
!2592 = !DILocation(line: 323, column: 11, scope: !2590)
!2593 = !DILocation(line: 323, column: 12, scope: !2594)
!2594 = distinct !DILexicalBlock(scope: !2590, file: !203, line: 323, column: 11)
!2595 = !DILocation(line: 324, column: 9, scope: !2596)
!2596 = distinct !DILexicalBlock(scope: !2597, file: !203, line: 324, column: 9)
!2597 = distinct !DILexicalBlock(scope: !2594, file: !203, line: 324, column: 9)
!2598 = !DILocation(line: 324, column: 9, scope: !2597)
!2599 = !DILocation(line: 362, column: 26, scope: !2600)
!2600 = distinct !DILexicalBlock(scope: !2601, file: !203, line: 340, column: 11)
!2601 = distinct !DILexicalBlock(scope: !2602, file: !203, line: 339, column: 13)
!2602 = distinct !DILexicalBlock(scope: !2590, file: !203, line: 338, column: 7)
!2603 = !DILocation(line: 363, column: 27, scope: !2600)
!2604 = !DILocation(line: 364, column: 11, scope: !2600)
!2605 = !DILocation(line: 365, column: 14, scope: !2606)
!2606 = distinct !DILexicalBlock(scope: !2602, file: !203, line: 365, column: 13)
!2607 = !DILocation(line: 365, column: 13, scope: !2602)
!2608 = !DILocation(line: 366, column: 43, scope: !2609)
!2609 = distinct !DILexicalBlock(scope: !2610, file: !203, line: 366, column: 11)
!2610 = distinct !DILexicalBlock(scope: !2606, file: !203, line: 366, column: 11)
!2611 = !DILocation(line: 366, column: 11, scope: !2610)
!2612 = !DILocation(line: 367, column: 13, scope: !2613)
!2613 = distinct !DILexicalBlock(scope: !2614, file: !203, line: 367, column: 13)
!2614 = distinct !DILexicalBlock(scope: !2609, file: !203, line: 367, column: 13)
!2615 = !DILocation(line: 367, column: 13, scope: !2614)
!2616 = !DILocation(line: 366, column: 70, scope: !2609)
!2617 = distinct !{!2617, !2611, !2618}
!2618 = !DILocation(line: 367, column: 13, scope: !2610)
!2619 = !DILocation(line: 370, column: 28, scope: !2602)
!2620 = !DILocation(line: 372, column: 7, scope: !2590)
!2621 = !DILocation(line: 376, column: 7, scope: !2590)
!2622 = !DILocation(line: 379, column: 7, scope: !2590)
!2623 = !DILocation(line: 381, column: 12, scope: !2624)
!2624 = distinct !DILexicalBlock(scope: !2590, file: !203, line: 381, column: 11)
!2625 = !DILocation(line: 381, column: 11, scope: !2590)
!2626 = !DILocation(line: 0, scope: !2624)
!2627 = !DILocation(line: 386, column: 12, scope: !2628)
!2628 = distinct !DILexicalBlock(scope: !2590, file: !203, line: 386, column: 11)
!2629 = !DILocation(line: 386, column: 11, scope: !2590)
!2630 = !DILocation(line: 387, column: 9, scope: !2631)
!2631 = distinct !DILexicalBlock(scope: !2632, file: !203, line: 387, column: 9)
!2632 = distinct !DILexicalBlock(scope: !2628, file: !203, line: 387, column: 9)
!2633 = !DILocation(line: 387, column: 9, scope: !2632)
!2634 = !DILocation(line: 394, column: 7, scope: !2590)
!2635 = !DILocation(line: 397, column: 7, scope: !2590)
!2636 = !DILocation(line: 0, scope: !2500)
!2637 = !DILocation(line: 263, column: 10, scope: !2500)
!2638 = !DILocation(line: 400, column: 8, scope: !2529)
!2639 = !DILocation(line: 0, scope: !2528)
!2640 = !DILocation(line: 400, column: 27, scope: !2528)
!2641 = !DILocation(line: 400, column: 19, scope: !2528)
!2642 = !DILocation(line: 400, column: 41, scope: !2528)
!2643 = !DILocation(line: 400, column: 48, scope: !2528)
!2644 = !DILocation(line: 400, column: 3, scope: !2529)
!2645 = !DILocation(line: 400, column: 60, scope: !2528)
!2646 = !DILocation(line: 404, column: 12, scope: !2527)
!2647 = !DILocation(line: 405, column: 12, scope: !2527)
!2648 = !DILocation(line: 406, column: 12, scope: !2527)
!2649 = !DILocation(line: 409, column: 11, scope: !2650)
!2650 = distinct !DILexicalBlock(scope: !2527, file: !203, line: 408, column: 11)
!2651 = !DILocation(line: 411, column: 17, scope: !2650)
!2652 = !DILocation(line: 412, column: 39, scope: !2650)
!2653 = !DILocation(line: 416, column: 32, scope: !2650)
!2654 = !DILocation(line: 412, column: 19, scope: !2650)
!2655 = !DILocation(line: 412, column: 15, scope: !2650)
!2656 = !DILocation(line: 417, column: 11, scope: !2650)
!2657 = !DILocation(line: 417, column: 26, scope: !2650)
!2658 = !DILocation(line: 417, column: 14, scope: !2650)
!2659 = !DILocation(line: 417, column: 63, scope: !2650)
!2660 = !DILocation(line: 408, column: 11, scope: !2527)
!2661 = !DILocation(line: 0, scope: !2527)
!2662 = !DILocation(line: 424, column: 11, scope: !2527)
!2663 = !DILocation(line: 402, column: 21, scope: !2527)
!2664 = !DILocation(line: 425, column: 7, scope: !2527)
!2665 = !DILocation(line: 428, column: 15, scope: !2536)
!2666 = !DILocation(line: 430, column: 15, scope: !2667)
!2667 = distinct !DILexicalBlock(scope: !2668, file: !203, line: 430, column: 15)
!2668 = distinct !DILexicalBlock(scope: !2669, file: !203, line: 429, column: 13)
!2669 = distinct !DILexicalBlock(scope: !2536, file: !203, line: 428, column: 15)
!2670 = !DILocation(line: 430, column: 15, scope: !2671)
!2671 = distinct !DILexicalBlock(scope: !2667, file: !203, line: 430, column: 15)
!2672 = !DILocation(line: 430, column: 15, scope: !2673)
!2673 = distinct !DILexicalBlock(scope: !2674, file: !203, line: 430, column: 15)
!2674 = distinct !DILexicalBlock(scope: !2675, file: !203, line: 430, column: 15)
!2675 = distinct !DILexicalBlock(scope: !2671, file: !203, line: 430, column: 15)
!2676 = !DILocation(line: 430, column: 15, scope: !2674)
!2677 = !DILocation(line: 430, column: 15, scope: !2678)
!2678 = distinct !DILexicalBlock(scope: !2679, file: !203, line: 430, column: 15)
!2679 = distinct !DILexicalBlock(scope: !2675, file: !203, line: 430, column: 15)
!2680 = !DILocation(line: 430, column: 15, scope: !2679)
!2681 = !DILocation(line: 430, column: 15, scope: !2682)
!2682 = distinct !DILexicalBlock(scope: !2683, file: !203, line: 430, column: 15)
!2683 = distinct !DILexicalBlock(scope: !2675, file: !203, line: 430, column: 15)
!2684 = !DILocation(line: 430, column: 15, scope: !2683)
!2685 = !DILocation(line: 430, column: 15, scope: !2675)
!2686 = !DILocation(line: 430, column: 15, scope: !2687)
!2687 = distinct !DILexicalBlock(scope: !2688, file: !203, line: 430, column: 15)
!2688 = distinct !DILexicalBlock(scope: !2667, file: !203, line: 430, column: 15)
!2689 = !DILocation(line: 430, column: 15, scope: !2688)
!2690 = !DILocation(line: 438, column: 19, scope: !2691)
!2691 = distinct !DILexicalBlock(scope: !2668, file: !203, line: 437, column: 19)
!2692 = !DILocation(line: 438, column: 24, scope: !2691)
!2693 = !DILocation(line: 438, column: 28, scope: !2691)
!2694 = !DILocation(line: 438, column: 38, scope: !2691)
!2695 = !DILocation(line: 438, column: 48, scope: !2691)
!2696 = !DILocation(line: 438, column: 59, scope: !2691)
!2697 = !DILocation(line: 440, column: 19, scope: !2698)
!2698 = distinct !DILexicalBlock(scope: !2699, file: !203, line: 440, column: 19)
!2699 = distinct !DILexicalBlock(scope: !2700, file: !203, line: 440, column: 19)
!2700 = distinct !DILexicalBlock(scope: !2691, file: !203, line: 439, column: 17)
!2701 = !DILocation(line: 440, column: 19, scope: !2699)
!2702 = !DILocation(line: 441, column: 19, scope: !2703)
!2703 = distinct !DILexicalBlock(scope: !2704, file: !203, line: 441, column: 19)
!2704 = distinct !DILexicalBlock(scope: !2700, file: !203, line: 441, column: 19)
!2705 = !DILocation(line: 441, column: 19, scope: !2704)
!2706 = !DILocation(line: 442, column: 17, scope: !2700)
!2707 = !DILocation(line: 449, column: 20, scope: !2669)
!2708 = !DILocation(line: 454, column: 11, scope: !2536)
!2709 = !DILocation(line: 457, column: 19, scope: !2710)
!2710 = distinct !DILexicalBlock(scope: !2536, file: !203, line: 455, column: 13)
!2711 = !DILocation(line: 463, column: 19, scope: !2712)
!2712 = distinct !DILexicalBlock(scope: !2710, file: !203, line: 462, column: 19)
!2713 = !DILocation(line: 463, column: 24, scope: !2712)
!2714 = !DILocation(line: 463, column: 28, scope: !2712)
!2715 = !DILocation(line: 463, column: 38, scope: !2712)
!2716 = !DILocation(line: 463, column: 47, scope: !2712)
!2717 = !DILocation(line: 463, column: 41, scope: !2712)
!2718 = !DILocation(line: 463, column: 52, scope: !2712)
!2719 = !DILocation(line: 462, column: 19, scope: !2710)
!2720 = !DILocation(line: 464, column: 25, scope: !2712)
!2721 = !DILocation(line: 464, column: 17, scope: !2712)
!2722 = !DILocation(line: 471, column: 25, scope: !2723)
!2723 = distinct !DILexicalBlock(scope: !2712, file: !203, line: 465, column: 19)
!2724 = !DILocation(line: 475, column: 21, scope: !2725)
!2725 = distinct !DILexicalBlock(scope: !2726, file: !203, line: 475, column: 21)
!2726 = distinct !DILexicalBlock(scope: !2723, file: !203, line: 475, column: 21)
!2727 = !DILocation(line: 475, column: 21, scope: !2726)
!2728 = !DILocation(line: 476, column: 21, scope: !2729)
!2729 = distinct !DILexicalBlock(scope: !2730, file: !203, line: 476, column: 21)
!2730 = distinct !DILexicalBlock(scope: !2723, file: !203, line: 476, column: 21)
!2731 = !DILocation(line: 476, column: 21, scope: !2730)
!2732 = !DILocation(line: 477, column: 21, scope: !2733)
!2733 = distinct !DILexicalBlock(scope: !2734, file: !203, line: 477, column: 21)
!2734 = distinct !DILexicalBlock(scope: !2723, file: !203, line: 477, column: 21)
!2735 = !DILocation(line: 477, column: 21, scope: !2734)
!2736 = !DILocation(line: 478, column: 21, scope: !2737)
!2737 = distinct !DILexicalBlock(scope: !2738, file: !203, line: 478, column: 21)
!2738 = distinct !DILexicalBlock(scope: !2723, file: !203, line: 478, column: 21)
!2739 = !DILocation(line: 478, column: 21, scope: !2738)
!2740 = !DILocation(line: 479, column: 21, scope: !2723)
!2741 = !DILocation(line: 403, column: 21, scope: !2527)
!2742 = !DILocation(line: 492, column: 31, scope: !2536)
!2743 = !DILocation(line: 493, column: 31, scope: !2536)
!2744 = !DILocation(line: 495, column: 31, scope: !2536)
!2745 = !DILocation(line: 496, column: 31, scope: !2536)
!2746 = !DILocation(line: 497, column: 31, scope: !2536)
!2747 = !DILocation(line: 500, column: 15, scope: !2536)
!2748 = !DILocation(line: 502, column: 19, scope: !2749)
!2749 = distinct !DILexicalBlock(scope: !2750, file: !203, line: 501, column: 13)
!2750 = distinct !DILexicalBlock(scope: !2536, file: !203, line: 500, column: 15)
!2751 = !DILocation(line: 509, column: 33, scope: !2752)
!2752 = distinct !DILexicalBlock(scope: !2536, file: !203, line: 509, column: 15)
!2753 = !DILocation(line: 0, scope: !2536)
!2754 = !DILocation(line: 514, column: 15, scope: !2755)
!2755 = distinct !DILexicalBlock(scope: !2536, file: !203, line: 513, column: 15)
!2756 = !DILocation(line: 518, column: 15, scope: !2536)
!2757 = !DILocation(line: 526, column: 26, scope: !2758)
!2758 = distinct !DILexicalBlock(scope: !2536, file: !203, line: 526, column: 15)
!2759 = !DILocation(line: 526, column: 15, scope: !2536)
!2760 = !DILocation(line: 526, column: 40, scope: !2758)
!2761 = !DILocation(line: 526, column: 47, scope: !2758)
!2762 = !DILocation(line: 530, column: 17, scope: !2763)
!2763 = distinct !DILexicalBlock(scope: !2536, file: !203, line: 530, column: 15)
!2764 = !DILocation(line: 526, column: 18, scope: !2758)
!2765 = !DILocation(line: 526, column: 65, scope: !2758)
!2766 = !DILocation(line: 530, column: 15, scope: !2536)
!2767 = !DILocation(line: 535, column: 11, scope: !2536)
!2768 = !DILocation(line: 549, column: 15, scope: !2769)
!2769 = distinct !DILexicalBlock(scope: !2536, file: !203, line: 548, column: 15)
!2770 = !DILocation(line: 556, column: 15, scope: !2536)
!2771 = !DILocation(line: 558, column: 19, scope: !2772)
!2772 = distinct !DILexicalBlock(scope: !2773, file: !203, line: 557, column: 13)
!2773 = distinct !DILexicalBlock(scope: !2536, file: !203, line: 556, column: 15)
!2774 = !DILocation(line: 561, column: 19, scope: !2775)
!2775 = distinct !DILexicalBlock(scope: !2772, file: !203, line: 561, column: 19)
!2776 = !DILocation(line: 561, column: 35, scope: !2775)
!2777 = !DILocation(line: 561, column: 30, scope: !2775)
!2778 = !DILocation(line: 570, column: 15, scope: !2779)
!2779 = distinct !DILexicalBlock(scope: !2780, file: !203, line: 570, column: 15)
!2780 = distinct !DILexicalBlock(scope: !2772, file: !203, line: 570, column: 15)
!2781 = !DILocation(line: 570, column: 15, scope: !2780)
!2782 = !DILocation(line: 571, column: 15, scope: !2783)
!2783 = distinct !DILexicalBlock(scope: !2784, file: !203, line: 571, column: 15)
!2784 = distinct !DILexicalBlock(scope: !2772, file: !203, line: 571, column: 15)
!2785 = !DILocation(line: 571, column: 15, scope: !2784)
!2786 = !DILocation(line: 572, column: 15, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !2788, file: !203, line: 572, column: 15)
!2788 = distinct !DILexicalBlock(scope: !2772, file: !203, line: 572, column: 15)
!2789 = !DILocation(line: 572, column: 15, scope: !2788)
!2790 = !DILocation(line: 574, column: 13, scope: !2772)
!2791 = !DILocation(line: 614, column: 17, scope: !2535)
!2792 = !DILocation(line: 610, column: 20, scope: !2535)
!2793 = !DILocation(line: 617, column: 29, scope: !2794)
!2794 = distinct !DILexicalBlock(scope: !2540, file: !203, line: 615, column: 15)
!2795 = !DILocation(line: 617, column: 27, scope: !2794)
!2796 = !DILocation(line: 612, column: 18, scope: !2535)
!2797 = !DILocation(line: 618, column: 15, scope: !2794)
!2798 = !DILocation(line: 621, column: 17, scope: !2539)
!2799 = !DILocation(line: 622, column: 17, scope: !2539)
!2800 = !DILocation(line: 626, column: 29, scope: !2801)
!2801 = distinct !DILexicalBlock(scope: !2539, file: !203, line: 626, column: 21)
!2802 = !DILocation(line: 626, column: 21, scope: !2539)
!2803 = !DILocation(line: 627, column: 29, scope: !2801)
!2804 = !DILocation(line: 627, column: 19, scope: !2801)
!2805 = !DILocation(line: 0, scope: !2650)
!2806 = !DILocation(line: 629, column: 17, scope: !2539)
!2807 = !DILocation(line: 624, column: 19, scope: !2539)
!2808 = !DILocation(line: 625, column: 27, scope: !2539)
!2809 = !DILocation(line: 631, column: 21, scope: !2555)
!2810 = !DILocation(line: 632, column: 56, scope: !2555)
!2811 = !DILocation(line: 632, column: 50, scope: !2555)
!2812 = !DILocation(line: 633, column: 53, scope: !2555)
!2813 = !DILocation(line: 621, column: 27, scope: !2539)
!2814 = !DILocation(line: 631, column: 29, scope: !2555)
!2815 = !DILocation(line: 632, column: 36, scope: !2555)
!2816 = !DILocation(line: 632, column: 28, scope: !2555)
!2817 = !DILocation(line: 634, column: 25, scope: !2555)
!2818 = !DILocation(line: 644, column: 38, scope: !2819)
!2819 = distinct !DILexicalBlock(scope: !2562, file: !203, line: 642, column: 23)
!2820 = !DILocation(line: 644, column: 48, scope: !2819)
!2821 = !DILocation(line: 644, column: 51, scope: !2819)
!2822 = !DILocation(line: 644, column: 25, scope: !2819)
!2823 = !DILocation(line: 645, column: 28, scope: !2819)
!2824 = !DILocation(line: 644, column: 34, scope: !2819)
!2825 = distinct !{!2825, !2822, !2823}
!2826 = !DILocation(line: 658, column: 43, scope: !2827)
!2827 = distinct !DILexicalBlock(scope: !2828, file: !203, line: 658, column: 29)
!2828 = distinct !DILexicalBlock(scope: !2559, file: !203, line: 658, column: 29)
!2829 = !DILocation(line: 655, column: 29, scope: !2560)
!2830 = !DILocation(line: 657, column: 36, scope: !2559)
!2831 = !DILocation(line: 659, column: 49, scope: !2827)
!2832 = !DILocation(line: 659, column: 39, scope: !2827)
!2833 = !DILocation(line: 659, column: 31, scope: !2827)
!2834 = !DILocation(line: 658, column: 53, scope: !2827)
!2835 = !DILocation(line: 658, column: 29, scope: !2828)
!2836 = distinct !{!2836, !2835, !2837}
!2837 = !DILocation(line: 667, column: 33, scope: !2828)
!2838 = !DILocation(line: 674, column: 19, scope: !2539)
!2839 = !DILocation(line: 670, column: 41, scope: !2840)
!2840 = distinct !DILexicalBlock(scope: !2561, file: !203, line: 670, column: 29)
!2841 = !DILocation(line: 670, column: 31, scope: !2840)
!2842 = !DILocation(line: 670, column: 29, scope: !2561)
!2843 = !DILocation(line: 672, column: 27, scope: !2561)
!2844 = !DILocation(line: 675, column: 26, scope: !2539)
!2845 = !DILocation(line: 675, column: 24, scope: !2539)
!2846 = !DILocation(line: 674, column: 19, scope: !2555)
!2847 = distinct !{!2847, !2806, !2848}
!2848 = !DILocation(line: 675, column: 44, scope: !2539)
!2849 = !DILocation(line: 676, column: 15, scope: !2540)
!2850 = !DILocation(line: 0, scope: !2801)
!2851 = !DILocation(line: 0, scope: !2539)
!2852 = !DILocation(line: 678, column: 40, scope: !2535)
!2853 = !DILocation(line: 680, column: 19, scope: !2567)
!2854 = !DILocation(line: 680, column: 45, scope: !2567)
!2855 = !DILocation(line: 680, column: 23, scope: !2567)
!2856 = !DILocation(line: 684, column: 33, scope: !2566)
!2857 = !DILocation(line: 684, column: 24, scope: !2566)
!2858 = !DILocation(line: 686, column: 17, scope: !2566)
!2859 = !DILocation(line: 0, scope: !2860)
!2860 = distinct !DILexicalBlock(scope: !2861, file: !203, line: 687, column: 19)
!2861 = distinct !DILexicalBlock(scope: !2862, file: !203, line: 686, column: 17)
!2862 = distinct !DILexicalBlock(scope: !2566, file: !203, line: 686, column: 17)
!2863 = !DILocation(line: 0, scope: !2864)
!2864 = distinct !DILexicalBlock(scope: !2860, file: !203, line: 703, column: 21)
!2865 = !DILocation(line: 0, scope: !2866)
!2866 = distinct !DILexicalBlock(scope: !2867, file: !203, line: 696, column: 23)
!2867 = distinct !DILexicalBlock(scope: !2868, file: !203, line: 695, column: 30)
!2868 = distinct !DILexicalBlock(scope: !2860, file: !203, line: 688, column: 25)
!2869 = !DILocation(line: 688, column: 43, scope: !2868)
!2870 = !DILocation(line: 690, column: 25, scope: !2871)
!2871 = distinct !DILexicalBlock(scope: !2872, file: !203, line: 690, column: 25)
!2872 = distinct !DILexicalBlock(scope: !2868, file: !203, line: 689, column: 23)
!2873 = !DILocation(line: 690, column: 25, scope: !2874)
!2874 = distinct !DILexicalBlock(scope: !2871, file: !203, line: 690, column: 25)
!2875 = !DILocation(line: 690, column: 25, scope: !2876)
!2876 = distinct !DILexicalBlock(scope: !2877, file: !203, line: 690, column: 25)
!2877 = distinct !DILexicalBlock(scope: !2878, file: !203, line: 690, column: 25)
!2878 = distinct !DILexicalBlock(scope: !2874, file: !203, line: 690, column: 25)
!2879 = !DILocation(line: 690, column: 25, scope: !2877)
!2880 = !DILocation(line: 690, column: 25, scope: !2881)
!2881 = distinct !DILexicalBlock(scope: !2882, file: !203, line: 690, column: 25)
!2882 = distinct !DILexicalBlock(scope: !2878, file: !203, line: 690, column: 25)
!2883 = !DILocation(line: 690, column: 25, scope: !2882)
!2884 = !DILocation(line: 690, column: 25, scope: !2885)
!2885 = distinct !DILexicalBlock(scope: !2886, file: !203, line: 690, column: 25)
!2886 = distinct !DILexicalBlock(scope: !2878, file: !203, line: 690, column: 25)
!2887 = !DILocation(line: 690, column: 25, scope: !2886)
!2888 = !DILocation(line: 690, column: 25, scope: !2878)
!2889 = !DILocation(line: 690, column: 25, scope: !2890)
!2890 = distinct !DILexicalBlock(scope: !2891, file: !203, line: 690, column: 25)
!2891 = distinct !DILexicalBlock(scope: !2871, file: !203, line: 690, column: 25)
!2892 = !DILocation(line: 690, column: 25, scope: !2891)
!2893 = !DILocation(line: 691, column: 25, scope: !2894)
!2894 = distinct !DILexicalBlock(scope: !2895, file: !203, line: 691, column: 25)
!2895 = distinct !DILexicalBlock(scope: !2872, file: !203, line: 691, column: 25)
!2896 = !DILocation(line: 691, column: 25, scope: !2895)
!2897 = !DILocation(line: 692, column: 25, scope: !2898)
!2898 = distinct !DILexicalBlock(scope: !2899, file: !203, line: 692, column: 25)
!2899 = distinct !DILexicalBlock(scope: !2872, file: !203, line: 692, column: 25)
!2900 = !DILocation(line: 692, column: 25, scope: !2899)
!2901 = !DILocation(line: 693, column: 38, scope: !2872)
!2902 = !DILocation(line: 693, column: 33, scope: !2872)
!2903 = !DILocation(line: 694, column: 23, scope: !2872)
!2904 = !DILocation(line: 695, column: 30, scope: !2867)
!2905 = !DILocation(line: 695, column: 30, scope: !2868)
!2906 = !DILocation(line: 697, column: 25, scope: !2907)
!2907 = distinct !DILexicalBlock(scope: !2908, file: !203, line: 697, column: 25)
!2908 = distinct !DILexicalBlock(scope: !2866, file: !203, line: 697, column: 25)
!2909 = !DILocation(line: 697, column: 25, scope: !2908)
!2910 = !DILocation(line: 699, column: 23, scope: !2866)
!2911 = !DILocation(line: 0, scope: !2899)
!2912 = !DILocation(line: 0, scope: !2872)
!2913 = !DILocation(line: 0, scope: !2914)
!2914 = distinct !DILexicalBlock(scope: !2650, file: !203, line: 418, column: 9)
!2915 = !DILocation(line: 0, scope: !2871)
!2916 = !DILocation(line: 700, column: 35, scope: !2917)
!2917 = distinct !DILexicalBlock(scope: !2860, file: !203, line: 700, column: 25)
!2918 = !DILocation(line: 700, column: 30, scope: !2917)
!2919 = !DILocation(line: 700, column: 25, scope: !2860)
!2920 = !DILocation(line: 702, column: 21, scope: !2921)
!2921 = distinct !DILexicalBlock(scope: !2922, file: !203, line: 702, column: 21)
!2922 = distinct !DILexicalBlock(scope: !2860, file: !203, line: 702, column: 21)
!2923 = !DILocation(line: 702, column: 21, scope: !2924)
!2924 = distinct !DILexicalBlock(scope: !2925, file: !203, line: 702, column: 21)
!2925 = distinct !DILexicalBlock(scope: !2926, file: !203, line: 702, column: 21)
!2926 = distinct !DILexicalBlock(scope: !2921, file: !203, line: 702, column: 21)
!2927 = !DILocation(line: 702, column: 21, scope: !2925)
!2928 = !DILocation(line: 702, column: 21, scope: !2929)
!2929 = distinct !DILexicalBlock(scope: !2930, file: !203, line: 702, column: 21)
!2930 = distinct !DILexicalBlock(scope: !2926, file: !203, line: 702, column: 21)
!2931 = !DILocation(line: 702, column: 21, scope: !2930)
!2932 = !DILocation(line: 702, column: 21, scope: !2926)
!2933 = !DILocation(line: 0, scope: !2908)
!2934 = !DILocation(line: 703, column: 21, scope: !2935)
!2935 = distinct !DILexicalBlock(scope: !2864, file: !203, line: 703, column: 21)
!2936 = !DILocation(line: 703, column: 21, scope: !2864)
!2937 = !DILocation(line: 704, column: 25, scope: !2860)
!2938 = !DILocation(line: 686, column: 17, scope: !2861)
!2939 = distinct !{!2939, !2940, !2941}
!2940 = !DILocation(line: 686, column: 17, scope: !2862)
!2941 = !DILocation(line: 705, column: 19, scope: !2862)
!2942 = !DILocation(line: 0, scope: !2529)
!2943 = !DILocation(line: 416, column: 30, scope: !2650)
!2944 = !DILocation(line: 712, column: 34, scope: !2945)
!2945 = distinct !DILexicalBlock(scope: !2527, file: !203, line: 712, column: 11)
!2946 = !DILocation(line: 714, column: 14, scope: !2945)
!2947 = !DILocation(line: 715, column: 14, scope: !2945)
!2948 = !DILocation(line: 715, column: 35, scope: !2945)
!2949 = !DILocation(line: 715, column: 17, scope: !2945)
!2950 = !DILocation(line: 715, column: 47, scope: !2945)
!2951 = !DILocation(line: 715, column: 65, scope: !2945)
!2952 = !DILocation(line: 716, column: 15, scope: !2945)
!2953 = !DILocation(line: 716, column: 11, scope: !2945)
!2954 = !DILocation(line: 712, column: 11, scope: !2527)
!2955 = !DILocation(line: 400, column: 10, scope: !2529)
!2956 = !DILocation(line: 0, scope: !2957)
!2957 = distinct !DILexicalBlock(scope: !2958, file: !203, line: 519, column: 13)
!2958 = distinct !DILexicalBlock(scope: !2536, file: !203, line: 518, column: 15)
!2959 = !DILocation(line: 720, column: 7, scope: !2960)
!2960 = distinct !DILexicalBlock(scope: !2527, file: !203, line: 720, column: 7)
!2961 = !DILocation(line: 720, column: 7, scope: !2962)
!2962 = distinct !DILexicalBlock(scope: !2960, file: !203, line: 720, column: 7)
!2963 = !DILocation(line: 720, column: 7, scope: !2964)
!2964 = distinct !DILexicalBlock(scope: !2965, file: !203, line: 720, column: 7)
!2965 = distinct !DILexicalBlock(scope: !2966, file: !203, line: 720, column: 7)
!2966 = distinct !DILexicalBlock(scope: !2962, file: !203, line: 720, column: 7)
!2967 = !DILocation(line: 720, column: 7, scope: !2965)
!2968 = !DILocation(line: 720, column: 7, scope: !2969)
!2969 = distinct !DILexicalBlock(scope: !2970, file: !203, line: 720, column: 7)
!2970 = distinct !DILexicalBlock(scope: !2966, file: !203, line: 720, column: 7)
!2971 = !DILocation(line: 720, column: 7, scope: !2970)
!2972 = !DILocation(line: 720, column: 7, scope: !2973)
!2973 = distinct !DILexicalBlock(scope: !2974, file: !203, line: 720, column: 7)
!2974 = distinct !DILexicalBlock(scope: !2966, file: !203, line: 720, column: 7)
!2975 = !DILocation(line: 720, column: 7, scope: !2974)
!2976 = !DILocation(line: 720, column: 7, scope: !2966)
!2977 = !DILocation(line: 720, column: 7, scope: !2978)
!2978 = distinct !DILexicalBlock(scope: !2979, file: !203, line: 720, column: 7)
!2979 = distinct !DILexicalBlock(scope: !2960, file: !203, line: 720, column: 7)
!2980 = !DILocation(line: 720, column: 7, scope: !2979)
!2981 = !DILocation(line: 723, column: 7, scope: !2982)
!2982 = distinct !DILexicalBlock(scope: !2983, file: !203, line: 723, column: 7)
!2983 = distinct !DILexicalBlock(scope: !2527, file: !203, line: 723, column: 7)
!2984 = !DILocation(line: 424, column: 9, scope: !2527)
!2985 = !DILocation(line: 723, column: 7, scope: !2986)
!2986 = distinct !DILexicalBlock(scope: !2987, file: !203, line: 723, column: 7)
!2987 = distinct !DILexicalBlock(scope: !2988, file: !203, line: 723, column: 7)
!2988 = distinct !DILexicalBlock(scope: !2982, file: !203, line: 723, column: 7)
!2989 = !DILocation(line: 723, column: 7, scope: !2987)
!2990 = !DILocation(line: 723, column: 7, scope: !2991)
!2991 = distinct !DILexicalBlock(scope: !2992, file: !203, line: 723, column: 7)
!2992 = distinct !DILexicalBlock(scope: !2988, file: !203, line: 723, column: 7)
!2993 = !DILocation(line: 723, column: 7, scope: !2992)
!2994 = !DILocation(line: 723, column: 7, scope: !2988)
!2995 = !DILocation(line: 724, column: 7, scope: !2996)
!2996 = distinct !DILexicalBlock(scope: !2997, file: !203, line: 724, column: 7)
!2997 = distinct !DILexicalBlock(scope: !2527, file: !203, line: 724, column: 7)
!2998 = !DILocation(line: 724, column: 7, scope: !2997)
!2999 = !DILocation(line: 726, column: 13, scope: !3000)
!3000 = distinct !DILexicalBlock(scope: !2527, file: !203, line: 726, column: 11)
!3001 = !DILocation(line: 726, column: 11, scope: !2527)
!3002 = !DILocation(line: 728, column: 5, scope: !2528)
!3003 = !DILocation(line: 400, column: 75, scope: !2528)
!3004 = !DILocation(line: 400, column: 3, scope: !2528)
!3005 = distinct !{!3005, !2644, !3006}
!3006 = !DILocation(line: 728, column: 5, scope: !2529)
!3007 = !DILocation(line: 730, column: 11, scope: !3008)
!3008 = distinct !DILexicalBlock(scope: !2500, file: !203, line: 730, column: 7)
!3009 = !DILocation(line: 730, column: 16, scope: !3008)
!3010 = !DILocation(line: 738, column: 51, scope: !3011)
!3011 = distinct !DILexicalBlock(scope: !2500, file: !203, line: 738, column: 7)
!3012 = !DILocation(line: 739, column: 10, scope: !3011)
!3013 = !DILocation(line: 741, column: 11, scope: !3014)
!3014 = distinct !DILexicalBlock(scope: !3015, file: !203, line: 741, column: 11)
!3015 = distinct !DILexicalBlock(scope: !3011, file: !203, line: 740, column: 5)
!3016 = !DILocation(line: 741, column: 11, scope: !3015)
!3017 = !DILocation(line: 742, column: 16, scope: !3014)
!3018 = !DILocation(line: 742, column: 9, scope: !3014)
!3019 = !DILocation(line: 746, column: 18, scope: !3020)
!3020 = distinct !DILexicalBlock(scope: !3014, file: !203, line: 746, column: 16)
!3021 = !DILocation(line: 746, column: 32, scope: !3020)
!3022 = !DILocation(line: 746, column: 29, scope: !3020)
!3023 = !DILocation(line: 755, column: 7, scope: !3024)
!3024 = distinct !DILexicalBlock(scope: !2500, file: !203, line: 755, column: 7)
!3025 = !DILocation(line: 755, column: 20, scope: !3024)
!3026 = !DILocation(line: 756, column: 12, scope: !3027)
!3027 = distinct !DILexicalBlock(scope: !3028, file: !203, line: 756, column: 5)
!3028 = distinct !DILexicalBlock(scope: !3024, file: !203, line: 756, column: 5)
!3029 = !DILocation(line: 756, column: 5, scope: !3028)
!3030 = !DILocation(line: 757, column: 7, scope: !3031)
!3031 = distinct !DILexicalBlock(scope: !3032, file: !203, line: 757, column: 7)
!3032 = distinct !DILexicalBlock(scope: !3027, file: !203, line: 757, column: 7)
!3033 = !DILocation(line: 757, column: 7, scope: !3032)
!3034 = !DILocation(line: 756, column: 39, scope: !3027)
!3035 = distinct !{!3035, !3029, !3036}
!3036 = !DILocation(line: 757, column: 7, scope: !3028)
!3037 = !DILocation(line: 759, column: 11, scope: !3038)
!3038 = distinct !DILexicalBlock(scope: !2500, file: !203, line: 759, column: 7)
!3039 = !DILocation(line: 759, column: 7, scope: !2500)
!3040 = !DILocation(line: 760, column: 5, scope: !3038)
!3041 = !DILocation(line: 760, column: 17, scope: !3038)
!3042 = !DILocation(line: 766, column: 21, scope: !3043)
!3043 = distinct !DILexicalBlock(scope: !2500, file: !203, line: 766, column: 7)
!3044 = !DILocation(line: 766, column: 54, scope: !3043)
!3045 = !DILocation(line: 766, column: 51, scope: !3043)
!3046 = !DILocation(line: 770, column: 42, scope: !2500)
!3047 = !DILocation(line: 768, column: 10, scope: !2500)
!3048 = !DILocation(line: 768, column: 3, scope: !2500)
!3049 = !DILocation(line: 772, column: 1, scope: !2500)
!3050 = distinct !DISubprogram(name: "gettext_quote", scope: !203, file: !203, line: 207, type: !3051, isLocal: true, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: true, unit: !191, retainedNodes: !3053)
!3051 = !DISubroutineType(types: !3052)
!3052 = !{!79, !79, !35}
!3053 = !{!3054, !3055, !3056, !3057}
!3054 = !DILocalVariable(name: "msgid", arg: 1, scope: !3050, file: !203, line: 207, type: !79)
!3055 = !DILocalVariable(name: "s", arg: 2, scope: !3050, file: !203, line: 207, type: !35)
!3056 = !DILocalVariable(name: "translation", scope: !3050, file: !203, line: 209, type: !79)
!3057 = !DILocalVariable(name: "locale_code", scope: !3050, file: !203, line: 210, type: !79)
!3058 = !DILocation(line: 207, column: 28, scope: !3050)
!3059 = !DILocation(line: 207, column: 54, scope: !3050)
!3060 = !DILocation(line: 209, column: 29, scope: !3050)
!3061 = !DILocation(line: 209, column: 15, scope: !3050)
!3062 = !DILocation(line: 212, column: 19, scope: !3063)
!3063 = distinct !DILexicalBlock(scope: !3050, file: !203, line: 212, column: 7)
!3064 = !DILocation(line: 212, column: 7, scope: !3050)
!3065 = !DILocation(line: 233, column: 17, scope: !3050)
!3066 = !DILocation(line: 210, column: 15, scope: !3050)
!3067 = !DILocalVariable(name: "s1", arg: 1, scope: !3068, file: !3069, line: 160, type: !79)
!3068 = distinct !DISubprogram(name: "strcaseeq0", scope: !3069, file: !3069, line: 160, type: !3070, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !191, retainedNodes: !3072)
!3069 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3070 = !DISubroutineType(types: !3071)
!3071 = !{!83, !79, !79, !81, !81, !81, !81, !81, !81, !81, !81, !81}
!3072 = !{!3067, !3073, !3074, !3075, !3076, !3077, !3078, !3079, !3080, !3081, !3082}
!3073 = !DILocalVariable(name: "s2", arg: 2, scope: !3068, file: !3069, line: 160, type: !79)
!3074 = !DILocalVariable(name: "s20", arg: 3, scope: !3068, file: !3069, line: 160, type: !81)
!3075 = !DILocalVariable(name: "s21", arg: 4, scope: !3068, file: !3069, line: 160, type: !81)
!3076 = !DILocalVariable(name: "s22", arg: 5, scope: !3068, file: !3069, line: 160, type: !81)
!3077 = !DILocalVariable(name: "s23", arg: 6, scope: !3068, file: !3069, line: 160, type: !81)
!3078 = !DILocalVariable(name: "s24", arg: 7, scope: !3068, file: !3069, line: 160, type: !81)
!3079 = !DILocalVariable(name: "s25", arg: 8, scope: !3068, file: !3069, line: 160, type: !81)
!3080 = !DILocalVariable(name: "s26", arg: 9, scope: !3068, file: !3069, line: 160, type: !81)
!3081 = !DILocalVariable(name: "s27", arg: 10, scope: !3068, file: !3069, line: 160, type: !81)
!3082 = !DILocalVariable(name: "s28", arg: 11, scope: !3068, file: !3069, line: 160, type: !81)
!3083 = !DILocation(line: 160, column: 25, scope: !3068, inlinedAt: !3084)
!3084 = distinct !DILocation(line: 234, column: 7, scope: !3085)
!3085 = distinct !DILexicalBlock(scope: !3050, file: !203, line: 234, column: 7)
!3086 = !DILocation(line: 160, column: 41, scope: !3068, inlinedAt: !3084)
!3087 = !DILocation(line: 160, column: 50, scope: !3068, inlinedAt: !3084)
!3088 = !DILocation(line: 160, column: 60, scope: !3068, inlinedAt: !3084)
!3089 = !DILocation(line: 160, column: 70, scope: !3068, inlinedAt: !3084)
!3090 = !DILocation(line: 160, column: 80, scope: !3068, inlinedAt: !3084)
!3091 = !DILocation(line: 160, column: 90, scope: !3068, inlinedAt: !3084)
!3092 = !DILocation(line: 160, column: 100, scope: !3068, inlinedAt: !3084)
!3093 = !DILocation(line: 160, column: 110, scope: !3068, inlinedAt: !3084)
!3094 = !DILocation(line: 160, column: 120, scope: !3068, inlinedAt: !3084)
!3095 = !DILocation(line: 160, column: 130, scope: !3068, inlinedAt: !3084)
!3096 = !DILocation(line: 162, column: 7, scope: !3097, inlinedAt: !3084)
!3097 = distinct !DILexicalBlock(scope: !3068, file: !3069, line: 162, column: 7)
!3098 = !DILocalVariable(name: "s1", arg: 1, scope: !3099, file: !3069, line: 146, type: !79)
!3099 = distinct !DISubprogram(name: "strcaseeq1", scope: !3069, file: !3069, line: 146, type: !3100, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !191, retainedNodes: !3102)
!3100 = !DISubroutineType(types: !3101)
!3101 = !{!83, !79, !79, !81, !81, !81, !81, !81, !81, !81, !81}
!3102 = !{!3098, !3103, !3104, !3105, !3106, !3107, !3108, !3109, !3110, !3111}
!3103 = !DILocalVariable(name: "s2", arg: 2, scope: !3099, file: !3069, line: 146, type: !79)
!3104 = !DILocalVariable(name: "s21", arg: 3, scope: !3099, file: !3069, line: 146, type: !81)
!3105 = !DILocalVariable(name: "s22", arg: 4, scope: !3099, file: !3069, line: 146, type: !81)
!3106 = !DILocalVariable(name: "s23", arg: 5, scope: !3099, file: !3069, line: 146, type: !81)
!3107 = !DILocalVariable(name: "s24", arg: 6, scope: !3099, file: !3069, line: 146, type: !81)
!3108 = !DILocalVariable(name: "s25", arg: 7, scope: !3099, file: !3069, line: 146, type: !81)
!3109 = !DILocalVariable(name: "s26", arg: 8, scope: !3099, file: !3069, line: 146, type: !81)
!3110 = !DILocalVariable(name: "s27", arg: 9, scope: !3099, file: !3069, line: 146, type: !81)
!3111 = !DILocalVariable(name: "s28", arg: 10, scope: !3099, file: !3069, line: 146, type: !81)
!3112 = !DILocation(line: 146, column: 25, scope: !3099, inlinedAt: !3113)
!3113 = distinct !DILocation(line: 167, column: 16, scope: !3114, inlinedAt: !3084)
!3114 = distinct !DILexicalBlock(scope: !3115, file: !3069, line: 164, column: 11)
!3115 = distinct !DILexicalBlock(scope: !3097, file: !3069, line: 163, column: 5)
!3116 = !DILocation(line: 146, column: 41, scope: !3099, inlinedAt: !3113)
!3117 = !DILocation(line: 146, column: 50, scope: !3099, inlinedAt: !3113)
!3118 = !DILocation(line: 146, column: 60, scope: !3099, inlinedAt: !3113)
!3119 = !DILocation(line: 146, column: 70, scope: !3099, inlinedAt: !3113)
!3120 = !DILocation(line: 146, column: 80, scope: !3099, inlinedAt: !3113)
!3121 = !DILocation(line: 146, column: 90, scope: !3099, inlinedAt: !3113)
!3122 = !DILocation(line: 146, column: 100, scope: !3099, inlinedAt: !3113)
!3123 = !DILocation(line: 146, column: 110, scope: !3099, inlinedAt: !3113)
!3124 = !DILocation(line: 146, column: 120, scope: !3099, inlinedAt: !3113)
!3125 = !DILocation(line: 148, column: 7, scope: !3126, inlinedAt: !3113)
!3126 = distinct !DILexicalBlock(scope: !3099, file: !3069, line: 148, column: 7)
!3127 = !DILocalVariable(name: "s1", arg: 1, scope: !3128, file: !3069, line: 132, type: !79)
!3128 = distinct !DISubprogram(name: "strcaseeq2", scope: !3069, file: !3069, line: 132, type: !3129, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !191, retainedNodes: !3131)
!3129 = !DISubroutineType(types: !3130)
!3130 = !{!83, !79, !79, !81, !81, !81, !81, !81, !81, !81}
!3131 = !{!3127, !3132, !3133, !3134, !3135, !3136, !3137, !3138, !3139}
!3132 = !DILocalVariable(name: "s2", arg: 2, scope: !3128, file: !3069, line: 132, type: !79)
!3133 = !DILocalVariable(name: "s22", arg: 3, scope: !3128, file: !3069, line: 132, type: !81)
!3134 = !DILocalVariable(name: "s23", arg: 4, scope: !3128, file: !3069, line: 132, type: !81)
!3135 = !DILocalVariable(name: "s24", arg: 5, scope: !3128, file: !3069, line: 132, type: !81)
!3136 = !DILocalVariable(name: "s25", arg: 6, scope: !3128, file: !3069, line: 132, type: !81)
!3137 = !DILocalVariable(name: "s26", arg: 7, scope: !3128, file: !3069, line: 132, type: !81)
!3138 = !DILocalVariable(name: "s27", arg: 8, scope: !3128, file: !3069, line: 132, type: !81)
!3139 = !DILocalVariable(name: "s28", arg: 9, scope: !3128, file: !3069, line: 132, type: !81)
!3140 = !DILocation(line: 132, column: 25, scope: !3128, inlinedAt: !3141)
!3141 = distinct !DILocation(line: 153, column: 16, scope: !3142, inlinedAt: !3113)
!3142 = distinct !DILexicalBlock(scope: !3143, file: !3069, line: 150, column: 11)
!3143 = distinct !DILexicalBlock(scope: !3126, file: !3069, line: 149, column: 5)
!3144 = !DILocation(line: 132, column: 41, scope: !3128, inlinedAt: !3141)
!3145 = !DILocation(line: 132, column: 50, scope: !3128, inlinedAt: !3141)
!3146 = !DILocation(line: 132, column: 60, scope: !3128, inlinedAt: !3141)
!3147 = !DILocation(line: 132, column: 70, scope: !3128, inlinedAt: !3141)
!3148 = !DILocation(line: 132, column: 80, scope: !3128, inlinedAt: !3141)
!3149 = !DILocation(line: 132, column: 90, scope: !3128, inlinedAt: !3141)
!3150 = !DILocation(line: 132, column: 100, scope: !3128, inlinedAt: !3141)
!3151 = !DILocation(line: 132, column: 110, scope: !3128, inlinedAt: !3141)
!3152 = !DILocation(line: 134, column: 7, scope: !3153, inlinedAt: !3141)
!3153 = distinct !DILexicalBlock(scope: !3128, file: !3069, line: 134, column: 7)
!3154 = !DILocalVariable(name: "s1", arg: 1, scope: !3155, file: !3069, line: 118, type: !79)
!3155 = distinct !DISubprogram(name: "strcaseeq3", scope: !3069, file: !3069, line: 118, type: !3156, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !191, retainedNodes: !3158)
!3156 = !DISubroutineType(types: !3157)
!3157 = !{!83, !79, !79, !81, !81, !81, !81, !81, !81}
!3158 = !{!3154, !3159, !3160, !3161, !3162, !3163, !3164, !3165}
!3159 = !DILocalVariable(name: "s2", arg: 2, scope: !3155, file: !3069, line: 118, type: !79)
!3160 = !DILocalVariable(name: "s23", arg: 3, scope: !3155, file: !3069, line: 118, type: !81)
!3161 = !DILocalVariable(name: "s24", arg: 4, scope: !3155, file: !3069, line: 118, type: !81)
!3162 = !DILocalVariable(name: "s25", arg: 5, scope: !3155, file: !3069, line: 118, type: !81)
!3163 = !DILocalVariable(name: "s26", arg: 6, scope: !3155, file: !3069, line: 118, type: !81)
!3164 = !DILocalVariable(name: "s27", arg: 7, scope: !3155, file: !3069, line: 118, type: !81)
!3165 = !DILocalVariable(name: "s28", arg: 8, scope: !3155, file: !3069, line: 118, type: !81)
!3166 = !DILocation(line: 118, column: 25, scope: !3155, inlinedAt: !3167)
!3167 = distinct !DILocation(line: 139, column: 16, scope: !3168, inlinedAt: !3141)
!3168 = distinct !DILexicalBlock(scope: !3169, file: !3069, line: 136, column: 11)
!3169 = distinct !DILexicalBlock(scope: !3153, file: !3069, line: 135, column: 5)
!3170 = !DILocation(line: 118, column: 41, scope: !3155, inlinedAt: !3167)
!3171 = !DILocation(line: 118, column: 50, scope: !3155, inlinedAt: !3167)
!3172 = !DILocation(line: 118, column: 60, scope: !3155, inlinedAt: !3167)
!3173 = !DILocation(line: 118, column: 70, scope: !3155, inlinedAt: !3167)
!3174 = !DILocation(line: 118, column: 80, scope: !3155, inlinedAt: !3167)
!3175 = !DILocation(line: 118, column: 90, scope: !3155, inlinedAt: !3167)
!3176 = !DILocation(line: 118, column: 100, scope: !3155, inlinedAt: !3167)
!3177 = !DILocation(line: 120, column: 7, scope: !3178, inlinedAt: !3167)
!3178 = distinct !DILexicalBlock(scope: !3155, file: !3069, line: 120, column: 7)
!3179 = !DILocation(line: 120, column: 7, scope: !3155, inlinedAt: !3167)
!3180 = !DILocalVariable(name: "s1", arg: 1, scope: !3181, file: !3069, line: 104, type: !79)
!3181 = distinct !DISubprogram(name: "strcaseeq4", scope: !3069, file: !3069, line: 104, type: !3182, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !191, retainedNodes: !3184)
!3182 = !DISubroutineType(types: !3183)
!3183 = !{!83, !79, !79, !81, !81, !81, !81, !81}
!3184 = !{!3180, !3185, !3186, !3187, !3188, !3189, !3190}
!3185 = !DILocalVariable(name: "s2", arg: 2, scope: !3181, file: !3069, line: 104, type: !79)
!3186 = !DILocalVariable(name: "s24", arg: 3, scope: !3181, file: !3069, line: 104, type: !81)
!3187 = !DILocalVariable(name: "s25", arg: 4, scope: !3181, file: !3069, line: 104, type: !81)
!3188 = !DILocalVariable(name: "s26", arg: 5, scope: !3181, file: !3069, line: 104, type: !81)
!3189 = !DILocalVariable(name: "s27", arg: 6, scope: !3181, file: !3069, line: 104, type: !81)
!3190 = !DILocalVariable(name: "s28", arg: 7, scope: !3181, file: !3069, line: 104, type: !81)
!3191 = !DILocation(line: 104, column: 25, scope: !3181, inlinedAt: !3192)
!3192 = distinct !DILocation(line: 125, column: 16, scope: !3193, inlinedAt: !3167)
!3193 = distinct !DILexicalBlock(scope: !3194, file: !3069, line: 122, column: 11)
!3194 = distinct !DILexicalBlock(scope: !3178, file: !3069, line: 121, column: 5)
!3195 = !DILocation(line: 104, column: 41, scope: !3181, inlinedAt: !3192)
!3196 = !DILocation(line: 104, column: 50, scope: !3181, inlinedAt: !3192)
!3197 = !DILocation(line: 104, column: 60, scope: !3181, inlinedAt: !3192)
!3198 = !DILocation(line: 104, column: 70, scope: !3181, inlinedAt: !3192)
!3199 = !DILocation(line: 104, column: 80, scope: !3181, inlinedAt: !3192)
!3200 = !DILocation(line: 104, column: 90, scope: !3181, inlinedAt: !3192)
!3201 = !DILocation(line: 106, column: 7, scope: !3202, inlinedAt: !3192)
!3202 = distinct !DILexicalBlock(scope: !3181, file: !3069, line: 106, column: 7)
!3203 = !DILocation(line: 106, column: 7, scope: !3181, inlinedAt: !3192)
!3204 = !DILocalVariable(name: "s1", arg: 1, scope: !3205, file: !3069, line: 90, type: !79)
!3205 = distinct !DISubprogram(name: "strcaseeq5", scope: !3069, file: !3069, line: 90, type: !3206, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !191, retainedNodes: !3208)
!3206 = !DISubroutineType(types: !3207)
!3207 = !{!83, !79, !79, !81, !81, !81, !81}
!3208 = !{!3204, !3209, !3210, !3211, !3212, !3213}
!3209 = !DILocalVariable(name: "s2", arg: 2, scope: !3205, file: !3069, line: 90, type: !79)
!3210 = !DILocalVariable(name: "s25", arg: 3, scope: !3205, file: !3069, line: 90, type: !81)
!3211 = !DILocalVariable(name: "s26", arg: 4, scope: !3205, file: !3069, line: 90, type: !81)
!3212 = !DILocalVariable(name: "s27", arg: 5, scope: !3205, file: !3069, line: 90, type: !81)
!3213 = !DILocalVariable(name: "s28", arg: 6, scope: !3205, file: !3069, line: 90, type: !81)
!3214 = !DILocation(line: 90, column: 25, scope: !3205, inlinedAt: !3215)
!3215 = distinct !DILocation(line: 111, column: 16, scope: !3216, inlinedAt: !3192)
!3216 = distinct !DILexicalBlock(scope: !3217, file: !3069, line: 108, column: 11)
!3217 = distinct !DILexicalBlock(scope: !3202, file: !3069, line: 107, column: 5)
!3218 = !DILocation(line: 90, column: 41, scope: !3205, inlinedAt: !3215)
!3219 = !DILocation(line: 90, column: 50, scope: !3205, inlinedAt: !3215)
!3220 = !DILocation(line: 90, column: 60, scope: !3205, inlinedAt: !3215)
!3221 = !DILocation(line: 90, column: 70, scope: !3205, inlinedAt: !3215)
!3222 = !DILocation(line: 90, column: 80, scope: !3205, inlinedAt: !3215)
!3223 = !DILocation(line: 92, column: 7, scope: !3224, inlinedAt: !3215)
!3224 = distinct !DILexicalBlock(scope: !3205, file: !3069, line: 92, column: 7)
!3225 = !DILocation(line: 92, column: 7, scope: !3205, inlinedAt: !3215)
!3226 = !DILocation(line: 235, column: 12, scope: !3085)
!3227 = !DILocation(line: 235, column: 21, scope: !3085)
!3228 = !DILocation(line: 235, column: 5, scope: !3085)
!3229 = !DILocation(line: 146, column: 25, scope: !3099, inlinedAt: !3230)
!3230 = distinct !DILocation(line: 167, column: 16, scope: !3114, inlinedAt: !3231)
!3231 = distinct !DILocation(line: 236, column: 7, scope: !3232)
!3232 = distinct !DILexicalBlock(scope: !3050, file: !203, line: 236, column: 7)
!3233 = !DILocation(line: 146, column: 41, scope: !3099, inlinedAt: !3230)
!3234 = !DILocation(line: 146, column: 50, scope: !3099, inlinedAt: !3230)
!3235 = !DILocation(line: 146, column: 60, scope: !3099, inlinedAt: !3230)
!3236 = !DILocation(line: 146, column: 70, scope: !3099, inlinedAt: !3230)
!3237 = !DILocation(line: 146, column: 80, scope: !3099, inlinedAt: !3230)
!3238 = !DILocation(line: 146, column: 90, scope: !3099, inlinedAt: !3230)
!3239 = !DILocation(line: 146, column: 100, scope: !3099, inlinedAt: !3230)
!3240 = !DILocation(line: 146, column: 110, scope: !3099, inlinedAt: !3230)
!3241 = !DILocation(line: 146, column: 120, scope: !3099, inlinedAt: !3230)
!3242 = !DILocation(line: 148, column: 7, scope: !3126, inlinedAt: !3230)
!3243 = !DILocation(line: 132, column: 25, scope: !3128, inlinedAt: !3244)
!3244 = distinct !DILocation(line: 153, column: 16, scope: !3142, inlinedAt: !3230)
!3245 = !DILocation(line: 132, column: 41, scope: !3128, inlinedAt: !3244)
!3246 = !DILocation(line: 132, column: 50, scope: !3128, inlinedAt: !3244)
!3247 = !DILocation(line: 132, column: 60, scope: !3128, inlinedAt: !3244)
!3248 = !DILocation(line: 132, column: 70, scope: !3128, inlinedAt: !3244)
!3249 = !DILocation(line: 132, column: 80, scope: !3128, inlinedAt: !3244)
!3250 = !DILocation(line: 132, column: 90, scope: !3128, inlinedAt: !3244)
!3251 = !DILocation(line: 132, column: 100, scope: !3128, inlinedAt: !3244)
!3252 = !DILocation(line: 132, column: 110, scope: !3128, inlinedAt: !3244)
!3253 = !DILocation(line: 134, column: 7, scope: !3153, inlinedAt: !3244)
!3254 = !DILocation(line: 134, column: 7, scope: !3128, inlinedAt: !3244)
!3255 = !DILocation(line: 118, column: 25, scope: !3155, inlinedAt: !3256)
!3256 = distinct !DILocation(line: 139, column: 16, scope: !3168, inlinedAt: !3244)
!3257 = !DILocation(line: 118, column: 41, scope: !3155, inlinedAt: !3256)
!3258 = !DILocation(line: 118, column: 50, scope: !3155, inlinedAt: !3256)
!3259 = !DILocation(line: 118, column: 60, scope: !3155, inlinedAt: !3256)
!3260 = !DILocation(line: 118, column: 70, scope: !3155, inlinedAt: !3256)
!3261 = !DILocation(line: 118, column: 80, scope: !3155, inlinedAt: !3256)
!3262 = !DILocation(line: 118, column: 90, scope: !3155, inlinedAt: !3256)
!3263 = !DILocation(line: 118, column: 100, scope: !3155, inlinedAt: !3256)
!3264 = !DILocation(line: 120, column: 7, scope: !3178, inlinedAt: !3256)
!3265 = !DILocation(line: 120, column: 7, scope: !3155, inlinedAt: !3256)
!3266 = !DILocation(line: 104, column: 25, scope: !3181, inlinedAt: !3267)
!3267 = distinct !DILocation(line: 125, column: 16, scope: !3193, inlinedAt: !3256)
!3268 = !DILocation(line: 104, column: 41, scope: !3181, inlinedAt: !3267)
!3269 = !DILocation(line: 104, column: 50, scope: !3181, inlinedAt: !3267)
!3270 = !DILocation(line: 104, column: 60, scope: !3181, inlinedAt: !3267)
!3271 = !DILocation(line: 104, column: 70, scope: !3181, inlinedAt: !3267)
!3272 = !DILocation(line: 104, column: 80, scope: !3181, inlinedAt: !3267)
!3273 = !DILocation(line: 104, column: 90, scope: !3181, inlinedAt: !3267)
!3274 = !DILocation(line: 106, column: 7, scope: !3202, inlinedAt: !3267)
!3275 = !DILocation(line: 106, column: 7, scope: !3181, inlinedAt: !3267)
!3276 = !DILocation(line: 90, column: 25, scope: !3205, inlinedAt: !3277)
!3277 = distinct !DILocation(line: 111, column: 16, scope: !3216, inlinedAt: !3267)
!3278 = !DILocation(line: 90, column: 41, scope: !3205, inlinedAt: !3277)
!3279 = !DILocation(line: 90, column: 50, scope: !3205, inlinedAt: !3277)
!3280 = !DILocation(line: 90, column: 60, scope: !3205, inlinedAt: !3277)
!3281 = !DILocation(line: 90, column: 70, scope: !3205, inlinedAt: !3277)
!3282 = !DILocation(line: 90, column: 80, scope: !3205, inlinedAt: !3277)
!3283 = !DILocation(line: 92, column: 7, scope: !3224, inlinedAt: !3277)
!3284 = !DILocation(line: 92, column: 7, scope: !3205, inlinedAt: !3277)
!3285 = !DILocalVariable(name: "s1", arg: 1, scope: !3286, file: !3069, line: 76, type: !79)
!3286 = distinct !DISubprogram(name: "strcaseeq6", scope: !3069, file: !3069, line: 76, type: !3287, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !191, retainedNodes: !3289)
!3287 = !DISubroutineType(types: !3288)
!3288 = !{!83, !79, !79, !81, !81, !81}
!3289 = !{!3285, !3290, !3291, !3292, !3293}
!3290 = !DILocalVariable(name: "s2", arg: 2, scope: !3286, file: !3069, line: 76, type: !79)
!3291 = !DILocalVariable(name: "s26", arg: 3, scope: !3286, file: !3069, line: 76, type: !81)
!3292 = !DILocalVariable(name: "s27", arg: 4, scope: !3286, file: !3069, line: 76, type: !81)
!3293 = !DILocalVariable(name: "s28", arg: 5, scope: !3286, file: !3069, line: 76, type: !81)
!3294 = !DILocation(line: 76, column: 25, scope: !3286, inlinedAt: !3295)
!3295 = distinct !DILocation(line: 97, column: 16, scope: !3296, inlinedAt: !3277)
!3296 = distinct !DILexicalBlock(scope: !3297, file: !3069, line: 94, column: 11)
!3297 = distinct !DILexicalBlock(scope: !3224, file: !3069, line: 93, column: 5)
!3298 = !DILocation(line: 76, column: 41, scope: !3286, inlinedAt: !3295)
!3299 = !DILocation(line: 76, column: 50, scope: !3286, inlinedAt: !3295)
!3300 = !DILocation(line: 76, column: 60, scope: !3286, inlinedAt: !3295)
!3301 = !DILocation(line: 76, column: 70, scope: !3286, inlinedAt: !3295)
!3302 = !DILocation(line: 78, column: 7, scope: !3303, inlinedAt: !3295)
!3303 = distinct !DILexicalBlock(scope: !3286, file: !3069, line: 78, column: 7)
!3304 = !DILocation(line: 78, column: 7, scope: !3286, inlinedAt: !3295)
!3305 = !DILocalVariable(name: "s1", arg: 1, scope: !3306, file: !3069, line: 62, type: !79)
!3306 = distinct !DISubprogram(name: "strcaseeq7", scope: !3069, file: !3069, line: 62, type: !3307, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !191, retainedNodes: !3309)
!3307 = !DISubroutineType(types: !3308)
!3308 = !{!83, !79, !79, !81, !81}
!3309 = !{!3305, !3310, !3311, !3312}
!3310 = !DILocalVariable(name: "s2", arg: 2, scope: !3306, file: !3069, line: 62, type: !79)
!3311 = !DILocalVariable(name: "s27", arg: 3, scope: !3306, file: !3069, line: 62, type: !81)
!3312 = !DILocalVariable(name: "s28", arg: 4, scope: !3306, file: !3069, line: 62, type: !81)
!3313 = !DILocation(line: 62, column: 25, scope: !3306, inlinedAt: !3314)
!3314 = distinct !DILocation(line: 83, column: 16, scope: !3315, inlinedAt: !3295)
!3315 = distinct !DILexicalBlock(scope: !3316, file: !3069, line: 80, column: 11)
!3316 = distinct !DILexicalBlock(scope: !3303, file: !3069, line: 79, column: 5)
!3317 = !DILocation(line: 62, column: 41, scope: !3306, inlinedAt: !3314)
!3318 = !DILocation(line: 62, column: 50, scope: !3306, inlinedAt: !3314)
!3319 = !DILocation(line: 62, column: 60, scope: !3306, inlinedAt: !3314)
!3320 = !DILocation(line: 64, column: 7, scope: !3321, inlinedAt: !3314)
!3321 = distinct !DILexicalBlock(scope: !3306, file: !3069, line: 64, column: 7)
!3322 = !DILocation(line: 236, column: 7, scope: !3050)
!3323 = !DILocation(line: 237, column: 12, scope: !3232)
!3324 = !DILocation(line: 237, column: 21, scope: !3232)
!3325 = !DILocation(line: 237, column: 5, scope: !3232)
!3326 = !DILocation(line: 239, column: 13, scope: !3050)
!3327 = !DILocation(line: 239, column: 11, scope: !3050)
!3328 = !DILocation(line: 239, column: 3, scope: !3050)
!3329 = !DILocation(line: 0, scope: !3050)
!3330 = !DILocation(line: 240, column: 1, scope: !3050)
!3331 = distinct !DISubprogram(name: "quotearg_alloc", scope: !203, file: !203, line: 799, type: !3332, isLocal: false, isDefinition: true, scopeLine: 801, flags: DIFlagPrototyped, isOptimized: true, unit: !191, retainedNodes: !3334)
!3332 = !DISubroutineType(types: !3333)
!3333 = !{!82, !79, !76, !2373}
!3334 = !{!3335, !3336, !3337}
!3335 = !DILocalVariable(name: "arg", arg: 1, scope: !3331, file: !203, line: 799, type: !79)
!3336 = !DILocalVariable(name: "argsize", arg: 2, scope: !3331, file: !203, line: 799, type: !76)
!3337 = !DILocalVariable(name: "o", arg: 3, scope: !3331, file: !203, line: 800, type: !2373)
!3338 = !DILocation(line: 799, column: 29, scope: !3331)
!3339 = !DILocation(line: 799, column: 41, scope: !3331)
!3340 = !DILocation(line: 800, column: 47, scope: !3331)
!3341 = !DILocalVariable(name: "arg", arg: 1, scope: !3342, file: !203, line: 812, type: !79)
!3342 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !203, file: !203, line: 812, type: !3343, isLocal: false, isDefinition: true, scopeLine: 814, flags: DIFlagPrototyped, isOptimized: true, unit: !191, retainedNodes: !3345)
!3343 = !DISubroutineType(types: !3344)
!3344 = !{!82, !79, !76, !75, !2373}
!3345 = !{!3341, !3346, !3347, !3348, !3349, !3350, !3351, !3352, !3353}
!3346 = !DILocalVariable(name: "argsize", arg: 2, scope: !3342, file: !203, line: 812, type: !76)
!3347 = !DILocalVariable(name: "size", arg: 3, scope: !3342, file: !203, line: 812, type: !75)
!3348 = !DILocalVariable(name: "o", arg: 4, scope: !3342, file: !203, line: 813, type: !2373)
!3349 = !DILocalVariable(name: "p", scope: !3342, file: !203, line: 815, type: !2373)
!3350 = !DILocalVariable(name: "e", scope: !3342, file: !203, line: 816, type: !83)
!3351 = !DILocalVariable(name: "flags", scope: !3342, file: !203, line: 818, type: !83)
!3352 = !DILocalVariable(name: "bufsize", scope: !3342, file: !203, line: 819, type: !76)
!3353 = !DILocalVariable(name: "buf", scope: !3342, file: !203, line: 823, type: !82)
!3354 = !DILocation(line: 812, column: 33, scope: !3342, inlinedAt: !3355)
!3355 = distinct !DILocation(line: 802, column: 10, scope: !3331)
!3356 = !DILocation(line: 812, column: 45, scope: !3342, inlinedAt: !3355)
!3357 = !DILocation(line: 812, column: 62, scope: !3342, inlinedAt: !3355)
!3358 = !DILocation(line: 813, column: 51, scope: !3342, inlinedAt: !3355)
!3359 = !DILocation(line: 815, column: 37, scope: !3342, inlinedAt: !3355)
!3360 = !DILocation(line: 815, column: 33, scope: !3342, inlinedAt: !3355)
!3361 = !DILocation(line: 816, column: 11, scope: !3342, inlinedAt: !3355)
!3362 = !DILocation(line: 816, column: 7, scope: !3342, inlinedAt: !3355)
!3363 = !DILocation(line: 818, column: 18, scope: !3342, inlinedAt: !3355)
!3364 = !DILocation(line: 818, column: 24, scope: !3342, inlinedAt: !3355)
!3365 = !DILocation(line: 818, column: 7, scope: !3342, inlinedAt: !3355)
!3366 = !DILocation(line: 819, column: 69, scope: !3342, inlinedAt: !3355)
!3367 = !DILocation(line: 820, column: 53, scope: !3342, inlinedAt: !3355)
!3368 = !DILocation(line: 821, column: 49, scope: !3342, inlinedAt: !3355)
!3369 = !DILocation(line: 822, column: 49, scope: !3342, inlinedAt: !3355)
!3370 = !DILocation(line: 819, column: 20, scope: !3342, inlinedAt: !3355)
!3371 = !DILocation(line: 822, column: 62, scope: !3342, inlinedAt: !3355)
!3372 = !DILocation(line: 819, column: 10, scope: !3342, inlinedAt: !3355)
!3373 = !DILocalVariable(name: "n", arg: 1, scope: !3374, file: !278, line: 216, type: !76)
!3374 = distinct !DISubprogram(name: "xcharalloc", scope: !278, file: !278, line: 216, type: !3375, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !191, retainedNodes: !3377)
!3375 = !DISubroutineType(types: !3376)
!3376 = !{!82, !76}
!3377 = !{!3373}
!3378 = !DILocation(line: 216, column: 20, scope: !3374, inlinedAt: !3379)
!3379 = distinct !DILocation(line: 823, column: 15, scope: !3342, inlinedAt: !3355)
!3380 = !DILocation(line: 218, column: 10, scope: !3374, inlinedAt: !3379)
!3381 = !DILocation(line: 823, column: 9, scope: !3342, inlinedAt: !3355)
!3382 = !DILocation(line: 824, column: 60, scope: !3342, inlinedAt: !3355)
!3383 = !DILocation(line: 826, column: 32, scope: !3342, inlinedAt: !3355)
!3384 = !DILocation(line: 826, column: 47, scope: !3342, inlinedAt: !3355)
!3385 = !DILocation(line: 824, column: 3, scope: !3342, inlinedAt: !3355)
!3386 = !DILocation(line: 827, column: 9, scope: !3342, inlinedAt: !3355)
!3387 = !DILocation(line: 802, column: 3, scope: !3331)
!3388 = !DILocation(line: 812, column: 33, scope: !3342)
!3389 = !DILocation(line: 812, column: 45, scope: !3342)
!3390 = !DILocation(line: 812, column: 62, scope: !3342)
!3391 = !DILocation(line: 813, column: 51, scope: !3342)
!3392 = !DILocation(line: 815, column: 37, scope: !3342)
!3393 = !DILocation(line: 815, column: 33, scope: !3342)
!3394 = !DILocation(line: 816, column: 11, scope: !3342)
!3395 = !DILocation(line: 816, column: 7, scope: !3342)
!3396 = !DILocation(line: 818, column: 18, scope: !3342)
!3397 = !DILocation(line: 818, column: 27, scope: !3342)
!3398 = !DILocation(line: 818, column: 24, scope: !3342)
!3399 = !DILocation(line: 818, column: 7, scope: !3342)
!3400 = !DILocation(line: 819, column: 69, scope: !3342)
!3401 = !DILocation(line: 820, column: 53, scope: !3342)
!3402 = !DILocation(line: 821, column: 49, scope: !3342)
!3403 = !DILocation(line: 822, column: 49, scope: !3342)
!3404 = !DILocation(line: 819, column: 20, scope: !3342)
!3405 = !DILocation(line: 822, column: 62, scope: !3342)
!3406 = !DILocation(line: 819, column: 10, scope: !3342)
!3407 = !DILocation(line: 216, column: 20, scope: !3374, inlinedAt: !3408)
!3408 = distinct !DILocation(line: 823, column: 15, scope: !3342)
!3409 = !DILocation(line: 218, column: 10, scope: !3374, inlinedAt: !3408)
!3410 = !DILocation(line: 823, column: 9, scope: !3342)
!3411 = !DILocation(line: 824, column: 60, scope: !3342)
!3412 = !DILocation(line: 826, column: 32, scope: !3342)
!3413 = !DILocation(line: 826, column: 47, scope: !3342)
!3414 = !DILocation(line: 824, column: 3, scope: !3342)
!3415 = !DILocation(line: 827, column: 9, scope: !3342)
!3416 = !DILocation(line: 828, column: 7, scope: !3342)
!3417 = !DILocation(line: 829, column: 11, scope: !3418)
!3418 = distinct !DILexicalBlock(scope: !3342, file: !203, line: 828, column: 7)
!3419 = !DILocation(line: 829, column: 5, scope: !3418)
!3420 = !DILocation(line: 830, column: 3, scope: !3342)
!3421 = distinct !DISubprogram(name: "quotearg_free", scope: !203, file: !203, line: 848, type: !165, isLocal: false, isDefinition: true, scopeLine: 849, flags: DIFlagPrototyped, isOptimized: true, unit: !191, retainedNodes: !3422)
!3422 = !{!3423, !3424}
!3423 = !DILocalVariable(name: "sv", scope: !3421, file: !203, line: 850, type: !229)
!3424 = !DILocalVariable(name: "i", scope: !3421, file: !203, line: 851, type: !83)
!3425 = !DILocation(line: 850, column: 24, scope: !3421)
!3426 = !DILocation(line: 850, column: 19, scope: !3421)
!3427 = !DILocation(line: 851, column: 7, scope: !3421)
!3428 = !DILocation(line: 852, column: 19, scope: !3429)
!3429 = distinct !DILexicalBlock(scope: !3430, file: !203, line: 852, column: 3)
!3430 = distinct !DILexicalBlock(scope: !3421, file: !203, line: 852, column: 3)
!3431 = !DILocation(line: 852, column: 17, scope: !3429)
!3432 = !DILocation(line: 852, column: 3, scope: !3430)
!3433 = !DILocation(line: 853, column: 17, scope: !3429)
!3434 = !{!3435, !742, i64 8}
!3435 = !{!"slotvec", !844, i64 0, !742, i64 8}
!3436 = !DILocation(line: 853, column: 5, scope: !3429)
!3437 = !DILocation(line: 852, column: 28, scope: !3429)
!3438 = distinct !{!3438, !3432, !3439}
!3439 = !DILocation(line: 853, column: 20, scope: !3430)
!3440 = !DILocation(line: 854, column: 13, scope: !3441)
!3441 = distinct !DILexicalBlock(scope: !3421, file: !203, line: 854, column: 7)
!3442 = !DILocation(line: 854, column: 17, scope: !3441)
!3443 = !DILocation(line: 854, column: 7, scope: !3421)
!3444 = !DILocation(line: 856, column: 7, scope: !3445)
!3445 = distinct !DILexicalBlock(scope: !3441, file: !203, line: 855, column: 5)
!3446 = !DILocation(line: 857, column: 21, scope: !3445)
!3447 = !{!3435, !844, i64 0}
!3448 = !DILocation(line: 858, column: 20, scope: !3445)
!3449 = !DILocation(line: 859, column: 5, scope: !3445)
!3450 = !DILocation(line: 860, column: 10, scope: !3451)
!3451 = distinct !DILexicalBlock(scope: !3421, file: !203, line: 860, column: 7)
!3452 = !DILocation(line: 860, column: 7, scope: !3421)
!3453 = !DILocation(line: 862, column: 13, scope: !3454)
!3454 = distinct !DILexicalBlock(scope: !3451, file: !203, line: 861, column: 5)
!3455 = !DILocation(line: 862, column: 7, scope: !3454)
!3456 = !DILocation(line: 863, column: 15, scope: !3454)
!3457 = !DILocation(line: 864, column: 5, scope: !3454)
!3458 = !DILocation(line: 865, column: 10, scope: !3421)
!3459 = !DILocation(line: 866, column: 1, scope: !3421)
!3460 = distinct !DISubprogram(name: "quotearg_n", scope: !203, file: !203, line: 931, type: !3461, isLocal: false, isDefinition: true, scopeLine: 932, flags: DIFlagPrototyped, isOptimized: true, unit: !191, retainedNodes: !3463)
!3461 = !DISubroutineType(types: !3462)
!3462 = !{!82, !83, !79}
!3463 = !{!3464, !3465}
!3464 = !DILocalVariable(name: "n", arg: 1, scope: !3460, file: !203, line: 931, type: !83)
!3465 = !DILocalVariable(name: "arg", arg: 2, scope: !3460, file: !203, line: 931, type: !79)
!3466 = !DILocation(line: 931, column: 17, scope: !3460)
!3467 = !DILocation(line: 931, column: 32, scope: !3460)
!3468 = !DILocation(line: 933, column: 10, scope: !3460)
!3469 = !DILocation(line: 933, column: 3, scope: !3460)
!3470 = distinct !DISubprogram(name: "quotearg_n_options", scope: !203, file: !203, line: 877, type: !3471, isLocal: true, isDefinition: true, scopeLine: 879, flags: DIFlagPrototyped, isOptimized: true, unit: !191, retainedNodes: !3473)
!3471 = !DISubroutineType(types: !3472)
!3472 = !{!82, !83, !79, !76, !2373}
!3473 = !{!3474, !3475, !3476, !3477, !3478, !3479, !3480, !3483, !3484, !3486, !3487, !3488}
!3474 = !DILocalVariable(name: "n", arg: 1, scope: !3470, file: !203, line: 877, type: !83)
!3475 = !DILocalVariable(name: "arg", arg: 2, scope: !3470, file: !203, line: 877, type: !79)
!3476 = !DILocalVariable(name: "argsize", arg: 3, scope: !3470, file: !203, line: 877, type: !76)
!3477 = !DILocalVariable(name: "options", arg: 4, scope: !3470, file: !203, line: 878, type: !2373)
!3478 = !DILocalVariable(name: "e", scope: !3470, file: !203, line: 880, type: !83)
!3479 = !DILocalVariable(name: "sv", scope: !3470, file: !203, line: 882, type: !229)
!3480 = !DILocalVariable(name: "preallocated", scope: !3481, file: !203, line: 889, type: !97)
!3481 = distinct !DILexicalBlock(scope: !3482, file: !203, line: 888, column: 5)
!3482 = distinct !DILexicalBlock(scope: !3470, file: !203, line: 887, column: 7)
!3483 = !DILocalVariable(name: "nmax", scope: !3481, file: !203, line: 890, type: !83)
!3484 = !DILocalVariable(name: "size", scope: !3485, file: !203, line: 903, type: !76)
!3485 = distinct !DILexicalBlock(scope: !3470, file: !203, line: 902, column: 3)
!3486 = !DILocalVariable(name: "val", scope: !3485, file: !203, line: 904, type: !82)
!3487 = !DILocalVariable(name: "flags", scope: !3485, file: !203, line: 906, type: !83)
!3488 = !DILocalVariable(name: "qsize", scope: !3485, file: !203, line: 907, type: !76)
!3489 = !DILocation(line: 877, column: 25, scope: !3470)
!3490 = !DILocation(line: 877, column: 40, scope: !3470)
!3491 = !DILocation(line: 877, column: 52, scope: !3470)
!3492 = !DILocation(line: 878, column: 51, scope: !3470)
!3493 = !DILocation(line: 880, column: 11, scope: !3470)
!3494 = !DILocation(line: 880, column: 7, scope: !3470)
!3495 = !DILocation(line: 882, column: 24, scope: !3470)
!3496 = !DILocation(line: 882, column: 19, scope: !3470)
!3497 = !DILocation(line: 884, column: 9, scope: !3498)
!3498 = distinct !DILexicalBlock(scope: !3470, file: !203, line: 884, column: 7)
!3499 = !DILocation(line: 884, column: 7, scope: !3470)
!3500 = !DILocation(line: 885, column: 5, scope: !3498)
!3501 = !DILocation(line: 887, column: 7, scope: !3482)
!3502 = !DILocation(line: 887, column: 14, scope: !3482)
!3503 = !DILocation(line: 887, column: 7, scope: !3470)
!3504 = !DILocation(line: 889, column: 31, scope: !3481)
!3505 = !DILocation(line: 890, column: 11, scope: !3481)
!3506 = !DILocation(line: 892, column: 16, scope: !3507)
!3507 = distinct !DILexicalBlock(scope: !3481, file: !203, line: 892, column: 11)
!3508 = !DILocation(line: 892, column: 11, scope: !3481)
!3509 = !DILocation(line: 893, column: 9, scope: !3507)
!3510 = !DILocation(line: 895, column: 32, scope: !3481)
!3511 = !DILocation(line: 895, column: 61, scope: !3481)
!3512 = !DILocation(line: 895, column: 58, scope: !3481)
!3513 = !DILocation(line: 895, column: 66, scope: !3481)
!3514 = !DILocation(line: 895, column: 22, scope: !3481)
!3515 = !DILocation(line: 895, column: 15, scope: !3481)
!3516 = !DILocation(line: 896, column: 11, scope: !3481)
!3517 = !DILocation(line: 897, column: 15, scope: !3518)
!3518 = distinct !DILexicalBlock(scope: !3481, file: !203, line: 896, column: 11)
!3519 = !{i64 0, i64 8, !843, i64 8, i64 8, !741}
!3520 = !DILocation(line: 897, column: 9, scope: !3518)
!3521 = !DILocation(line: 898, column: 20, scope: !3481)
!3522 = !DILocation(line: 898, column: 18, scope: !3481)
!3523 = !DILocation(line: 898, column: 7, scope: !3481)
!3524 = !DILocation(line: 898, column: 38, scope: !3481)
!3525 = !DILocation(line: 898, column: 31, scope: !3481)
!3526 = !DILocation(line: 898, column: 48, scope: !3481)
!3527 = !DILocation(line: 899, column: 14, scope: !3481)
!3528 = !DILocation(line: 900, column: 5, scope: !3481)
!3529 = !DILocation(line: 0, scope: !3470)
!3530 = !DILocation(line: 903, column: 19, scope: !3485)
!3531 = !DILocation(line: 903, column: 25, scope: !3485)
!3532 = !DILocation(line: 903, column: 12, scope: !3485)
!3533 = !DILocation(line: 904, column: 23, scope: !3485)
!3534 = !DILocation(line: 904, column: 11, scope: !3485)
!3535 = !DILocation(line: 906, column: 26, scope: !3485)
!3536 = !DILocation(line: 906, column: 32, scope: !3485)
!3537 = !DILocation(line: 906, column: 9, scope: !3485)
!3538 = !DILocation(line: 908, column: 55, scope: !3485)
!3539 = !DILocation(line: 909, column: 46, scope: !3485)
!3540 = !DILocation(line: 910, column: 55, scope: !3485)
!3541 = !DILocation(line: 911, column: 55, scope: !3485)
!3542 = !DILocation(line: 907, column: 20, scope: !3485)
!3543 = !DILocation(line: 907, column: 12, scope: !3485)
!3544 = !DILocation(line: 913, column: 14, scope: !3545)
!3545 = distinct !DILexicalBlock(scope: !3485, file: !203, line: 913, column: 9)
!3546 = !DILocation(line: 913, column: 9, scope: !3485)
!3547 = !DILocation(line: 915, column: 35, scope: !3548)
!3548 = distinct !DILexicalBlock(scope: !3545, file: !203, line: 914, column: 7)
!3549 = !DILocation(line: 915, column: 20, scope: !3548)
!3550 = !DILocation(line: 916, column: 17, scope: !3551)
!3551 = distinct !DILexicalBlock(scope: !3548, file: !203, line: 916, column: 13)
!3552 = !DILocation(line: 916, column: 13, scope: !3548)
!3553 = !DILocation(line: 917, column: 11, scope: !3551)
!3554 = !DILocation(line: 216, column: 20, scope: !3374, inlinedAt: !3555)
!3555 = distinct !DILocation(line: 918, column: 27, scope: !3548)
!3556 = !DILocation(line: 218, column: 10, scope: !3374, inlinedAt: !3555)
!3557 = !DILocation(line: 918, column: 19, scope: !3548)
!3558 = !DILocation(line: 919, column: 69, scope: !3548)
!3559 = !DILocation(line: 921, column: 44, scope: !3548)
!3560 = !DILocation(line: 922, column: 44, scope: !3548)
!3561 = !DILocation(line: 919, column: 9, scope: !3548)
!3562 = !DILocation(line: 923, column: 7, scope: !3548)
!3563 = !DILocation(line: 0, scope: !3485)
!3564 = !DILocation(line: 925, column: 11, scope: !3485)
!3565 = !DILocation(line: 926, column: 5, scope: !3485)
!3566 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !203, file: !203, line: 937, type: !3567, isLocal: false, isDefinition: true, scopeLine: 938, flags: DIFlagPrototyped, isOptimized: true, unit: !191, retainedNodes: !3569)
!3567 = !DISubroutineType(types: !3568)
!3568 = !{!82, !83, !79, !76}
!3569 = !{!3570, !3571, !3572}
!3570 = !DILocalVariable(name: "n", arg: 1, scope: !3566, file: !203, line: 937, type: !83)
!3571 = !DILocalVariable(name: "arg", arg: 2, scope: !3566, file: !203, line: 937, type: !79)
!3572 = !DILocalVariable(name: "argsize", arg: 3, scope: !3566, file: !203, line: 937, type: !76)
!3573 = !DILocation(line: 937, column: 21, scope: !3566)
!3574 = !DILocation(line: 937, column: 36, scope: !3566)
!3575 = !DILocation(line: 937, column: 48, scope: !3566)
!3576 = !DILocation(line: 939, column: 10, scope: !3566)
!3577 = !DILocation(line: 939, column: 3, scope: !3566)
!3578 = distinct !DISubprogram(name: "quotearg", scope: !203, file: !203, line: 943, type: !3579, isLocal: false, isDefinition: true, scopeLine: 944, flags: DIFlagPrototyped, isOptimized: true, unit: !191, retainedNodes: !3581)
!3579 = !DISubroutineType(types: !3580)
!3580 = !{!82, !79}
!3581 = !{!3582}
!3582 = !DILocalVariable(name: "arg", arg: 1, scope: !3578, file: !203, line: 943, type: !79)
!3583 = !DILocation(line: 943, column: 23, scope: !3578)
!3584 = !DILocation(line: 931, column: 17, scope: !3460, inlinedAt: !3585)
!3585 = distinct !DILocation(line: 945, column: 10, scope: !3578)
!3586 = !DILocation(line: 931, column: 32, scope: !3460, inlinedAt: !3585)
!3587 = !DILocation(line: 933, column: 10, scope: !3460, inlinedAt: !3585)
!3588 = !DILocation(line: 945, column: 3, scope: !3578)
!3589 = distinct !DISubprogram(name: "quotearg_mem", scope: !203, file: !203, line: 949, type: !3590, isLocal: false, isDefinition: true, scopeLine: 950, flags: DIFlagPrototyped, isOptimized: true, unit: !191, retainedNodes: !3592)
!3590 = !DISubroutineType(types: !3591)
!3591 = !{!82, !79, !76}
!3592 = !{!3593, !3594}
!3593 = !DILocalVariable(name: "arg", arg: 1, scope: !3589, file: !203, line: 949, type: !79)
!3594 = !DILocalVariable(name: "argsize", arg: 2, scope: !3589, file: !203, line: 949, type: !76)
!3595 = !DILocation(line: 949, column: 27, scope: !3589)
!3596 = !DILocation(line: 949, column: 39, scope: !3589)
!3597 = !DILocation(line: 937, column: 21, scope: !3566, inlinedAt: !3598)
!3598 = distinct !DILocation(line: 951, column: 10, scope: !3589)
!3599 = !DILocation(line: 937, column: 36, scope: !3566, inlinedAt: !3598)
!3600 = !DILocation(line: 937, column: 48, scope: !3566, inlinedAt: !3598)
!3601 = !DILocation(line: 939, column: 10, scope: !3566, inlinedAt: !3598)
!3602 = !DILocation(line: 951, column: 3, scope: !3589)
!3603 = distinct !DISubprogram(name: "quotearg_n_style", scope: !203, file: !203, line: 955, type: !3604, isLocal: false, isDefinition: true, scopeLine: 956, flags: DIFlagPrototyped, isOptimized: true, unit: !191, retainedNodes: !3606)
!3604 = !DISubroutineType(types: !3605)
!3605 = !{!82, !83, !35, !79}
!3606 = !{!3607, !3608, !3609, !3610}
!3607 = !DILocalVariable(name: "n", arg: 1, scope: !3603, file: !203, line: 955, type: !83)
!3608 = !DILocalVariable(name: "s", arg: 2, scope: !3603, file: !203, line: 955, type: !35)
!3609 = !DILocalVariable(name: "arg", arg: 3, scope: !3603, file: !203, line: 955, type: !79)
!3610 = !DILocalVariable(name: "o", scope: !3603, file: !203, line: 957, type: !2374)
!3611 = !DILocation(line: 955, column: 23, scope: !3603)
!3612 = !DILocation(line: 955, column: 45, scope: !3603)
!3613 = !DILocation(line: 955, column: 60, scope: !3603)
!3614 = !DILocation(line: 957, column: 3, scope: !3603)
!3615 = !DILocation(line: 957, column: 32, scope: !3603)
!3616 = !DILocalVariable(name: "style", arg: 1, scope: !3617, file: !203, line: 193, type: !35)
!3617 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !203, file: !203, line: 193, type: !3618, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !191, retainedNodes: !3620)
!3618 = !DISubroutineType(types: !3619)
!3619 = !{!210, !35}
!3620 = !{!3616, !3621}
!3621 = !DILocalVariable(name: "o", scope: !3617, file: !203, line: 195, type: !210)
!3622 = !DILocation(line: 193, column: 48, scope: !3617, inlinedAt: !3623)
!3623 = distinct !DILocation(line: 957, column: 36, scope: !3603)
!3624 = !DILocation(line: 195, column: 26, scope: !3617, inlinedAt: !3623)
!3625 = !{!3626}
!3626 = distinct !{!3626, !3627, !"quoting_options_from_style: argument 0"}
!3627 = distinct !{!3627, !"quoting_options_from_style"}
!3628 = !DILocation(line: 196, column: 13, scope: !3629, inlinedAt: !3623)
!3629 = distinct !DILexicalBlock(scope: !3617, file: !203, line: 196, column: 7)
!3630 = !DILocation(line: 196, column: 7, scope: !3617, inlinedAt: !3623)
!3631 = !DILocation(line: 197, column: 5, scope: !3629, inlinedAt: !3623)
!3632 = !DILocation(line: 198, column: 5, scope: !3617, inlinedAt: !3623)
!3633 = !DILocation(line: 198, column: 11, scope: !3617, inlinedAt: !3623)
!3634 = !DILocation(line: 958, column: 10, scope: !3603)
!3635 = !DILocation(line: 959, column: 1, scope: !3603)
!3636 = !DILocation(line: 958, column: 3, scope: !3603)
!3637 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !203, file: !203, line: 962, type: !3638, isLocal: false, isDefinition: true, scopeLine: 964, flags: DIFlagPrototyped, isOptimized: true, unit: !191, retainedNodes: !3640)
!3638 = !DISubroutineType(types: !3639)
!3639 = !{!82, !83, !35, !79, !76}
!3640 = !{!3641, !3642, !3643, !3644, !3645}
!3641 = !DILocalVariable(name: "n", arg: 1, scope: !3637, file: !203, line: 962, type: !83)
!3642 = !DILocalVariable(name: "s", arg: 2, scope: !3637, file: !203, line: 962, type: !35)
!3643 = !DILocalVariable(name: "arg", arg: 3, scope: !3637, file: !203, line: 963, type: !79)
!3644 = !DILocalVariable(name: "argsize", arg: 4, scope: !3637, file: !203, line: 963, type: !76)
!3645 = !DILocalVariable(name: "o", scope: !3637, file: !203, line: 965, type: !2374)
!3646 = !DILocation(line: 962, column: 27, scope: !3637)
!3647 = !DILocation(line: 962, column: 49, scope: !3637)
!3648 = !DILocation(line: 963, column: 35, scope: !3637)
!3649 = !DILocation(line: 963, column: 47, scope: !3637)
!3650 = !DILocation(line: 965, column: 3, scope: !3637)
!3651 = !DILocation(line: 965, column: 32, scope: !3637)
!3652 = !DILocation(line: 193, column: 48, scope: !3617, inlinedAt: !3653)
!3653 = distinct !DILocation(line: 965, column: 36, scope: !3637)
!3654 = !DILocation(line: 195, column: 26, scope: !3617, inlinedAt: !3653)
!3655 = !{!3656}
!3656 = distinct !{!3656, !3657, !"quoting_options_from_style: argument 0"}
!3657 = distinct !{!3657, !"quoting_options_from_style"}
!3658 = !DILocation(line: 196, column: 13, scope: !3629, inlinedAt: !3653)
!3659 = !DILocation(line: 196, column: 7, scope: !3617, inlinedAt: !3653)
!3660 = !DILocation(line: 197, column: 5, scope: !3629, inlinedAt: !3653)
!3661 = !DILocation(line: 198, column: 5, scope: !3617, inlinedAt: !3653)
!3662 = !DILocation(line: 198, column: 11, scope: !3617, inlinedAt: !3653)
!3663 = !DILocation(line: 966, column: 10, scope: !3637)
!3664 = !DILocation(line: 967, column: 1, scope: !3637)
!3665 = !DILocation(line: 966, column: 3, scope: !3637)
!3666 = distinct !DISubprogram(name: "quotearg_style", scope: !203, file: !203, line: 970, type: !3667, isLocal: false, isDefinition: true, scopeLine: 971, flags: DIFlagPrototyped, isOptimized: true, unit: !191, retainedNodes: !3669)
!3667 = !DISubroutineType(types: !3668)
!3668 = !{!82, !35, !79}
!3669 = !{!3670, !3671}
!3670 = !DILocalVariable(name: "s", arg: 1, scope: !3666, file: !203, line: 970, type: !35)
!3671 = !DILocalVariable(name: "arg", arg: 2, scope: !3666, file: !203, line: 970, type: !79)
!3672 = !DILocation(line: 970, column: 36, scope: !3666)
!3673 = !DILocation(line: 970, column: 51, scope: !3666)
!3674 = !DILocation(line: 955, column: 23, scope: !3603, inlinedAt: !3675)
!3675 = distinct !DILocation(line: 972, column: 10, scope: !3666)
!3676 = !DILocation(line: 955, column: 45, scope: !3603, inlinedAt: !3675)
!3677 = !DILocation(line: 955, column: 60, scope: !3603, inlinedAt: !3675)
!3678 = !DILocation(line: 957, column: 3, scope: !3603, inlinedAt: !3675)
!3679 = !DILocation(line: 957, column: 32, scope: !3603, inlinedAt: !3675)
!3680 = !DILocation(line: 193, column: 48, scope: !3617, inlinedAt: !3681)
!3681 = distinct !DILocation(line: 957, column: 36, scope: !3603, inlinedAt: !3675)
!3682 = !DILocation(line: 195, column: 26, scope: !3617, inlinedAt: !3681)
!3683 = !{!3684}
!3684 = distinct !{!3684, !3685, !"quoting_options_from_style: argument 0"}
!3685 = distinct !{!3685, !"quoting_options_from_style"}
!3686 = !DILocation(line: 196, column: 13, scope: !3629, inlinedAt: !3681)
!3687 = !DILocation(line: 196, column: 7, scope: !3617, inlinedAt: !3681)
!3688 = !DILocation(line: 197, column: 5, scope: !3629, inlinedAt: !3681)
!3689 = !DILocation(line: 198, column: 5, scope: !3617, inlinedAt: !3681)
!3690 = !DILocation(line: 198, column: 11, scope: !3617, inlinedAt: !3681)
!3691 = !DILocation(line: 958, column: 10, scope: !3603, inlinedAt: !3675)
!3692 = !DILocation(line: 959, column: 1, scope: !3603, inlinedAt: !3675)
!3693 = !DILocation(line: 972, column: 3, scope: !3666)
!3694 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !203, file: !203, line: 976, type: !3695, isLocal: false, isDefinition: true, scopeLine: 977, flags: DIFlagPrototyped, isOptimized: true, unit: !191, retainedNodes: !3697)
!3695 = !DISubroutineType(types: !3696)
!3696 = !{!82, !35, !79, !76}
!3697 = !{!3698, !3699, !3700}
!3698 = !DILocalVariable(name: "s", arg: 1, scope: !3694, file: !203, line: 976, type: !35)
!3699 = !DILocalVariable(name: "arg", arg: 2, scope: !3694, file: !203, line: 976, type: !79)
!3700 = !DILocalVariable(name: "argsize", arg: 3, scope: !3694, file: !203, line: 976, type: !76)
!3701 = !DILocation(line: 976, column: 40, scope: !3694)
!3702 = !DILocation(line: 976, column: 55, scope: !3694)
!3703 = !DILocation(line: 976, column: 67, scope: !3694)
!3704 = !DILocation(line: 962, column: 27, scope: !3637, inlinedAt: !3705)
!3705 = distinct !DILocation(line: 978, column: 10, scope: !3694)
!3706 = !DILocation(line: 962, column: 49, scope: !3637, inlinedAt: !3705)
!3707 = !DILocation(line: 963, column: 35, scope: !3637, inlinedAt: !3705)
!3708 = !DILocation(line: 963, column: 47, scope: !3637, inlinedAt: !3705)
!3709 = !DILocation(line: 965, column: 3, scope: !3637, inlinedAt: !3705)
!3710 = !DILocation(line: 965, column: 32, scope: !3637, inlinedAt: !3705)
!3711 = !DILocation(line: 193, column: 48, scope: !3617, inlinedAt: !3712)
!3712 = distinct !DILocation(line: 965, column: 36, scope: !3637, inlinedAt: !3705)
!3713 = !DILocation(line: 195, column: 26, scope: !3617, inlinedAt: !3712)
!3714 = !{!3715}
!3715 = distinct !{!3715, !3716, !"quoting_options_from_style: argument 0"}
!3716 = distinct !{!3716, !"quoting_options_from_style"}
!3717 = !DILocation(line: 196, column: 13, scope: !3629, inlinedAt: !3712)
!3718 = !DILocation(line: 196, column: 7, scope: !3617, inlinedAt: !3712)
!3719 = !DILocation(line: 197, column: 5, scope: !3629, inlinedAt: !3712)
!3720 = !DILocation(line: 198, column: 5, scope: !3617, inlinedAt: !3712)
!3721 = !DILocation(line: 198, column: 11, scope: !3617, inlinedAt: !3712)
!3722 = !DILocation(line: 966, column: 10, scope: !3637, inlinedAt: !3705)
!3723 = !DILocation(line: 967, column: 1, scope: !3637, inlinedAt: !3705)
!3724 = !DILocation(line: 978, column: 3, scope: !3694)
!3725 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !203, file: !203, line: 982, type: !3726, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !191, retainedNodes: !3728)
!3726 = !DISubroutineType(types: !3727)
!3727 = !{!82, !79, !76, !81}
!3728 = !{!3729, !3730, !3731, !3732}
!3729 = !DILocalVariable(name: "arg", arg: 1, scope: !3725, file: !203, line: 982, type: !79)
!3730 = !DILocalVariable(name: "argsize", arg: 2, scope: !3725, file: !203, line: 982, type: !76)
!3731 = !DILocalVariable(name: "ch", arg: 3, scope: !3725, file: !203, line: 982, type: !81)
!3732 = !DILocalVariable(name: "options", scope: !3725, file: !203, line: 984, type: !210)
!3733 = !DILocation(line: 982, column: 32, scope: !3725)
!3734 = !DILocation(line: 982, column: 44, scope: !3725)
!3735 = !DILocation(line: 982, column: 58, scope: !3725)
!3736 = !DILocation(line: 984, column: 3, scope: !3725)
!3737 = !DILocation(line: 985, column: 13, scope: !3725)
!3738 = !{i64 0, i64 4, !848, i64 4, i64 4, !863, i64 8, i64 32, !848, i64 40, i64 8, !741, i64 48, i64 8, !741}
!3739 = !DILocation(line: 984, column: 26, scope: !3725)
!3740 = !DILocation(line: 152, column: 43, scope: !2395, inlinedAt: !3741)
!3741 = distinct !DILocation(line: 986, column: 3, scope: !3725)
!3742 = !DILocation(line: 152, column: 51, scope: !2395, inlinedAt: !3741)
!3743 = !DILocation(line: 152, column: 58, scope: !2395, inlinedAt: !3741)
!3744 = !DILocation(line: 154, column: 17, scope: !2395, inlinedAt: !3741)
!3745 = !DILocation(line: 156, column: 62, scope: !2395, inlinedAt: !3741)
!3746 = !DILocation(line: 156, column: 57, scope: !2395, inlinedAt: !3741)
!3747 = !DILocation(line: 155, column: 17, scope: !2395, inlinedAt: !3741)
!3748 = !DILocation(line: 157, column: 15, scope: !2395, inlinedAt: !3741)
!3749 = !DILocation(line: 157, column: 7, scope: !2395, inlinedAt: !3741)
!3750 = !DILocation(line: 158, column: 12, scope: !2395, inlinedAt: !3741)
!3751 = !DILocation(line: 158, column: 15, scope: !2395, inlinedAt: !3741)
!3752 = !DILocation(line: 158, column: 25, scope: !2395, inlinedAt: !3741)
!3753 = !DILocation(line: 158, column: 7, scope: !2395, inlinedAt: !3741)
!3754 = !DILocation(line: 159, column: 18, scope: !2395, inlinedAt: !3741)
!3755 = !DILocation(line: 159, column: 23, scope: !2395, inlinedAt: !3741)
!3756 = !DILocation(line: 159, column: 6, scope: !2395, inlinedAt: !3741)
!3757 = !DILocation(line: 987, column: 10, scope: !3725)
!3758 = !DILocation(line: 988, column: 1, scope: !3725)
!3759 = !DILocation(line: 987, column: 3, scope: !3725)
!3760 = distinct !DISubprogram(name: "quotearg_char", scope: !203, file: !203, line: 991, type: !3761, isLocal: false, isDefinition: true, scopeLine: 992, flags: DIFlagPrototyped, isOptimized: true, unit: !191, retainedNodes: !3763)
!3761 = !DISubroutineType(types: !3762)
!3762 = !{!82, !79, !81}
!3763 = !{!3764, !3765}
!3764 = !DILocalVariable(name: "arg", arg: 1, scope: !3760, file: !203, line: 991, type: !79)
!3765 = !DILocalVariable(name: "ch", arg: 2, scope: !3760, file: !203, line: 991, type: !81)
!3766 = !DILocation(line: 991, column: 28, scope: !3760)
!3767 = !DILocation(line: 991, column: 38, scope: !3760)
!3768 = !DILocation(line: 982, column: 32, scope: !3725, inlinedAt: !3769)
!3769 = distinct !DILocation(line: 993, column: 10, scope: !3760)
!3770 = !DILocation(line: 982, column: 44, scope: !3725, inlinedAt: !3769)
!3771 = !DILocation(line: 982, column: 58, scope: !3725, inlinedAt: !3769)
!3772 = !DILocation(line: 984, column: 3, scope: !3725, inlinedAt: !3769)
!3773 = !DILocation(line: 985, column: 13, scope: !3725, inlinedAt: !3769)
!3774 = !DILocation(line: 984, column: 26, scope: !3725, inlinedAt: !3769)
!3775 = !DILocation(line: 152, column: 43, scope: !2395, inlinedAt: !3776)
!3776 = distinct !DILocation(line: 986, column: 3, scope: !3725, inlinedAt: !3769)
!3777 = !DILocation(line: 152, column: 51, scope: !2395, inlinedAt: !3776)
!3778 = !DILocation(line: 152, column: 58, scope: !2395, inlinedAt: !3776)
!3779 = !DILocation(line: 154, column: 17, scope: !2395, inlinedAt: !3776)
!3780 = !DILocation(line: 156, column: 62, scope: !2395, inlinedAt: !3776)
!3781 = !DILocation(line: 156, column: 57, scope: !2395, inlinedAt: !3776)
!3782 = !DILocation(line: 155, column: 17, scope: !2395, inlinedAt: !3776)
!3783 = !DILocation(line: 157, column: 15, scope: !2395, inlinedAt: !3776)
!3784 = !DILocation(line: 157, column: 7, scope: !2395, inlinedAt: !3776)
!3785 = !DILocation(line: 158, column: 12, scope: !2395, inlinedAt: !3776)
!3786 = !DILocation(line: 158, column: 15, scope: !2395, inlinedAt: !3776)
!3787 = !DILocation(line: 158, column: 25, scope: !2395, inlinedAt: !3776)
!3788 = !DILocation(line: 158, column: 7, scope: !2395, inlinedAt: !3776)
!3789 = !DILocation(line: 159, column: 18, scope: !2395, inlinedAt: !3776)
!3790 = !DILocation(line: 159, column: 23, scope: !2395, inlinedAt: !3776)
!3791 = !DILocation(line: 159, column: 6, scope: !2395, inlinedAt: !3776)
!3792 = !DILocation(line: 987, column: 10, scope: !3725, inlinedAt: !3769)
!3793 = !DILocation(line: 988, column: 1, scope: !3725, inlinedAt: !3769)
!3794 = !DILocation(line: 993, column: 3, scope: !3760)
!3795 = distinct !DISubprogram(name: "quotearg_colon", scope: !203, file: !203, line: 997, type: !3579, isLocal: false, isDefinition: true, scopeLine: 998, flags: DIFlagPrototyped, isOptimized: true, unit: !191, retainedNodes: !3796)
!3796 = !{!3797}
!3797 = !DILocalVariable(name: "arg", arg: 1, scope: !3795, file: !203, line: 997, type: !79)
!3798 = !DILocation(line: 997, column: 29, scope: !3795)
!3799 = !DILocation(line: 991, column: 28, scope: !3760, inlinedAt: !3800)
!3800 = distinct !DILocation(line: 999, column: 10, scope: !3795)
!3801 = !DILocation(line: 991, column: 38, scope: !3760, inlinedAt: !3800)
!3802 = !DILocation(line: 982, column: 32, scope: !3725, inlinedAt: !3803)
!3803 = distinct !DILocation(line: 993, column: 10, scope: !3760, inlinedAt: !3800)
!3804 = !DILocation(line: 982, column: 44, scope: !3725, inlinedAt: !3803)
!3805 = !DILocation(line: 982, column: 58, scope: !3725, inlinedAt: !3803)
!3806 = !DILocation(line: 984, column: 3, scope: !3725, inlinedAt: !3803)
!3807 = !DILocation(line: 985, column: 13, scope: !3725, inlinedAt: !3803)
!3808 = !DILocation(line: 984, column: 26, scope: !3725, inlinedAt: !3803)
!3809 = !DILocation(line: 152, column: 43, scope: !2395, inlinedAt: !3810)
!3810 = distinct !DILocation(line: 986, column: 3, scope: !3725, inlinedAt: !3803)
!3811 = !DILocation(line: 152, column: 51, scope: !2395, inlinedAt: !3810)
!3812 = !DILocation(line: 152, column: 58, scope: !2395, inlinedAt: !3810)
!3813 = !DILocation(line: 154, column: 17, scope: !2395, inlinedAt: !3810)
!3814 = !DILocation(line: 156, column: 57, scope: !2395, inlinedAt: !3810)
!3815 = !DILocation(line: 155, column: 17, scope: !2395, inlinedAt: !3810)
!3816 = !DILocation(line: 157, column: 7, scope: !2395, inlinedAt: !3810)
!3817 = !DILocation(line: 158, column: 12, scope: !2395, inlinedAt: !3810)
!3818 = !DILocation(line: 159, column: 6, scope: !2395, inlinedAt: !3810)
!3819 = !DILocation(line: 987, column: 10, scope: !3725, inlinedAt: !3803)
!3820 = !DILocation(line: 988, column: 1, scope: !3725, inlinedAt: !3803)
!3821 = !DILocation(line: 999, column: 3, scope: !3795)
!3822 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !203, file: !203, line: 1003, type: !3590, isLocal: false, isDefinition: true, scopeLine: 1004, flags: DIFlagPrototyped, isOptimized: true, unit: !191, retainedNodes: !3823)
!3823 = !{!3824, !3825}
!3824 = !DILocalVariable(name: "arg", arg: 1, scope: !3822, file: !203, line: 1003, type: !79)
!3825 = !DILocalVariable(name: "argsize", arg: 2, scope: !3822, file: !203, line: 1003, type: !76)
!3826 = !DILocation(line: 1003, column: 33, scope: !3822)
!3827 = !DILocation(line: 1003, column: 45, scope: !3822)
!3828 = !DILocation(line: 982, column: 32, scope: !3725, inlinedAt: !3829)
!3829 = distinct !DILocation(line: 1005, column: 10, scope: !3822)
!3830 = !DILocation(line: 982, column: 44, scope: !3725, inlinedAt: !3829)
!3831 = !DILocation(line: 982, column: 58, scope: !3725, inlinedAt: !3829)
!3832 = !DILocation(line: 984, column: 3, scope: !3725, inlinedAt: !3829)
!3833 = !DILocation(line: 985, column: 13, scope: !3725, inlinedAt: !3829)
!3834 = !DILocation(line: 984, column: 26, scope: !3725, inlinedAt: !3829)
!3835 = !DILocation(line: 152, column: 43, scope: !2395, inlinedAt: !3836)
!3836 = distinct !DILocation(line: 986, column: 3, scope: !3725, inlinedAt: !3829)
!3837 = !DILocation(line: 152, column: 51, scope: !2395, inlinedAt: !3836)
!3838 = !DILocation(line: 152, column: 58, scope: !2395, inlinedAt: !3836)
!3839 = !DILocation(line: 154, column: 17, scope: !2395, inlinedAt: !3836)
!3840 = !DILocation(line: 156, column: 57, scope: !2395, inlinedAt: !3836)
!3841 = !DILocation(line: 155, column: 17, scope: !2395, inlinedAt: !3836)
!3842 = !DILocation(line: 157, column: 7, scope: !2395, inlinedAt: !3836)
!3843 = !DILocation(line: 158, column: 12, scope: !2395, inlinedAt: !3836)
!3844 = !DILocation(line: 159, column: 6, scope: !2395, inlinedAt: !3836)
!3845 = !DILocation(line: 987, column: 10, scope: !3725, inlinedAt: !3829)
!3846 = !DILocation(line: 988, column: 1, scope: !3725, inlinedAt: !3829)
!3847 = !DILocation(line: 1005, column: 3, scope: !3822)
!3848 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !203, file: !203, line: 1009, type: !3604, isLocal: false, isDefinition: true, scopeLine: 1010, flags: DIFlagPrototyped, isOptimized: true, unit: !191, retainedNodes: !3849)
!3849 = !{!3850, !3851, !3852, !3853}
!3850 = !DILocalVariable(name: "n", arg: 1, scope: !3848, file: !203, line: 1009, type: !83)
!3851 = !DILocalVariable(name: "s", arg: 2, scope: !3848, file: !203, line: 1009, type: !35)
!3852 = !DILocalVariable(name: "arg", arg: 3, scope: !3848, file: !203, line: 1009, type: !79)
!3853 = !DILocalVariable(name: "options", scope: !3848, file: !203, line: 1011, type: !210)
!3854 = !DILocation(line: 195, column: 26, scope: !3617, inlinedAt: !3855)
!3855 = distinct !DILocation(line: 1012, column: 13, scope: !3848)
!3856 = !DILocation(line: 1009, column: 29, scope: !3848)
!3857 = !DILocation(line: 1009, column: 51, scope: !3848)
!3858 = !DILocation(line: 1009, column: 66, scope: !3848)
!3859 = !DILocation(line: 1011, column: 3, scope: !3848)
!3860 = !DILocation(line: 1012, column: 13, scope: !3848)
!3861 = !DILocation(line: 193, column: 48, scope: !3617, inlinedAt: !3855)
!3862 = !{!3863}
!3863 = distinct !{!3863, !3864, !"quoting_options_from_style: argument 0"}
!3864 = distinct !{!3864, !"quoting_options_from_style"}
!3865 = !DILocation(line: 196, column: 13, scope: !3629, inlinedAt: !3855)
!3866 = !DILocation(line: 196, column: 7, scope: !3617, inlinedAt: !3855)
!3867 = !DILocation(line: 197, column: 5, scope: !3629, inlinedAt: !3855)
!3868 = !DILocation(line: 1011, column: 26, scope: !3848)
!3869 = !DILocation(line: 152, column: 43, scope: !2395, inlinedAt: !3870)
!3870 = distinct !DILocation(line: 1013, column: 3, scope: !3848)
!3871 = !DILocation(line: 152, column: 51, scope: !2395, inlinedAt: !3870)
!3872 = !DILocation(line: 152, column: 58, scope: !2395, inlinedAt: !3870)
!3873 = !DILocation(line: 154, column: 17, scope: !2395, inlinedAt: !3870)
!3874 = !DILocation(line: 156, column: 57, scope: !2395, inlinedAt: !3870)
!3875 = !DILocation(line: 155, column: 17, scope: !2395, inlinedAt: !3870)
!3876 = !DILocation(line: 157, column: 7, scope: !2395, inlinedAt: !3870)
!3877 = !DILocation(line: 158, column: 12, scope: !2395, inlinedAt: !3870)
!3878 = !DILocation(line: 159, column: 6, scope: !2395, inlinedAt: !3870)
!3879 = !DILocation(line: 1014, column: 10, scope: !3848)
!3880 = !DILocation(line: 1015, column: 1, scope: !3848)
!3881 = !DILocation(line: 1014, column: 3, scope: !3848)
!3882 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !203, file: !203, line: 1018, type: !3883, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !191, retainedNodes: !3885)
!3883 = !DISubroutineType(types: !3884)
!3884 = !{!82, !83, !79, !79, !79}
!3885 = !{!3886, !3887, !3888, !3889}
!3886 = !DILocalVariable(name: "n", arg: 1, scope: !3882, file: !203, line: 1018, type: !83)
!3887 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3882, file: !203, line: 1018, type: !79)
!3888 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3882, file: !203, line: 1019, type: !79)
!3889 = !DILocalVariable(name: "arg", arg: 4, scope: !3882, file: !203, line: 1019, type: !79)
!3890 = !DILocation(line: 1018, column: 24, scope: !3882)
!3891 = !DILocation(line: 1018, column: 39, scope: !3882)
!3892 = !DILocation(line: 1019, column: 32, scope: !3882)
!3893 = !DILocation(line: 1019, column: 57, scope: !3882)
!3894 = !DILocalVariable(name: "n", arg: 1, scope: !3895, file: !203, line: 1026, type: !83)
!3895 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !203, file: !203, line: 1026, type: !3896, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !191, retainedNodes: !3898)
!3896 = !DISubroutineType(types: !3897)
!3897 = !{!82, !83, !79, !79, !79, !76}
!3898 = !{!3894, !3899, !3900, !3901, !3902, !3903}
!3899 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3895, file: !203, line: 1026, type: !79)
!3900 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3895, file: !203, line: 1027, type: !79)
!3901 = !DILocalVariable(name: "arg", arg: 4, scope: !3895, file: !203, line: 1028, type: !79)
!3902 = !DILocalVariable(name: "argsize", arg: 5, scope: !3895, file: !203, line: 1028, type: !76)
!3903 = !DILocalVariable(name: "o", scope: !3895, file: !203, line: 1030, type: !210)
!3904 = !DILocation(line: 1026, column: 28, scope: !3895, inlinedAt: !3905)
!3905 = distinct !DILocation(line: 1021, column: 10, scope: !3882)
!3906 = !DILocation(line: 1026, column: 43, scope: !3895, inlinedAt: !3905)
!3907 = !DILocation(line: 1027, column: 36, scope: !3895, inlinedAt: !3905)
!3908 = !DILocation(line: 1028, column: 36, scope: !3895, inlinedAt: !3905)
!3909 = !DILocation(line: 1028, column: 48, scope: !3895, inlinedAt: !3905)
!3910 = !DILocation(line: 1030, column: 3, scope: !3895, inlinedAt: !3905)
!3911 = !DILocation(line: 1030, column: 30, scope: !3895, inlinedAt: !3905)
!3912 = !DILocation(line: 1030, column: 26, scope: !3895, inlinedAt: !3905)
!3913 = !DILocation(line: 179, column: 45, scope: !2443, inlinedAt: !3914)
!3914 = distinct !DILocation(line: 1031, column: 3, scope: !3895, inlinedAt: !3905)
!3915 = !DILocation(line: 180, column: 33, scope: !2443, inlinedAt: !3914)
!3916 = !DILocation(line: 180, column: 57, scope: !2443, inlinedAt: !3914)
!3917 = !DILocation(line: 184, column: 6, scope: !2443, inlinedAt: !3914)
!3918 = !DILocation(line: 184, column: 12, scope: !2443, inlinedAt: !3914)
!3919 = !DILocation(line: 185, column: 8, scope: !2459, inlinedAt: !3914)
!3920 = !DILocation(line: 185, column: 23, scope: !2459, inlinedAt: !3914)
!3921 = !DILocation(line: 185, column: 19, scope: !2459, inlinedAt: !3914)
!3922 = !DILocation(line: 186, column: 5, scope: !2459, inlinedAt: !3914)
!3923 = !DILocation(line: 187, column: 6, scope: !2443, inlinedAt: !3914)
!3924 = !DILocation(line: 187, column: 17, scope: !2443, inlinedAt: !3914)
!3925 = !DILocation(line: 188, column: 6, scope: !2443, inlinedAt: !3914)
!3926 = !DILocation(line: 188, column: 18, scope: !2443, inlinedAt: !3914)
!3927 = !DILocation(line: 1032, column: 10, scope: !3895, inlinedAt: !3905)
!3928 = !DILocation(line: 1033, column: 1, scope: !3895, inlinedAt: !3905)
!3929 = !DILocation(line: 1021, column: 3, scope: !3882)
!3930 = !DILocation(line: 1026, column: 28, scope: !3895)
!3931 = !DILocation(line: 1026, column: 43, scope: !3895)
!3932 = !DILocation(line: 1027, column: 36, scope: !3895)
!3933 = !DILocation(line: 1028, column: 36, scope: !3895)
!3934 = !DILocation(line: 1028, column: 48, scope: !3895)
!3935 = !DILocation(line: 1030, column: 3, scope: !3895)
!3936 = !DILocation(line: 1030, column: 30, scope: !3895)
!3937 = !DILocation(line: 1030, column: 26, scope: !3895)
!3938 = !DILocation(line: 179, column: 45, scope: !2443, inlinedAt: !3939)
!3939 = distinct !DILocation(line: 1031, column: 3, scope: !3895)
!3940 = !DILocation(line: 180, column: 33, scope: !2443, inlinedAt: !3939)
!3941 = !DILocation(line: 180, column: 57, scope: !2443, inlinedAt: !3939)
!3942 = !DILocation(line: 184, column: 6, scope: !2443, inlinedAt: !3939)
!3943 = !DILocation(line: 184, column: 12, scope: !2443, inlinedAt: !3939)
!3944 = !DILocation(line: 185, column: 8, scope: !2459, inlinedAt: !3939)
!3945 = !DILocation(line: 185, column: 23, scope: !2459, inlinedAt: !3939)
!3946 = !DILocation(line: 185, column: 19, scope: !2459, inlinedAt: !3939)
!3947 = !DILocation(line: 186, column: 5, scope: !2459, inlinedAt: !3939)
!3948 = !DILocation(line: 187, column: 6, scope: !2443, inlinedAt: !3939)
!3949 = !DILocation(line: 187, column: 17, scope: !2443, inlinedAt: !3939)
!3950 = !DILocation(line: 188, column: 6, scope: !2443, inlinedAt: !3939)
!3951 = !DILocation(line: 188, column: 18, scope: !2443, inlinedAt: !3939)
!3952 = !DILocation(line: 1032, column: 10, scope: !3895)
!3953 = !DILocation(line: 1033, column: 1, scope: !3895)
!3954 = !DILocation(line: 1032, column: 3, scope: !3895)
!3955 = distinct !DISubprogram(name: "quotearg_custom", scope: !203, file: !203, line: 1036, type: !3956, isLocal: false, isDefinition: true, scopeLine: 1038, flags: DIFlagPrototyped, isOptimized: true, unit: !191, retainedNodes: !3958)
!3956 = !DISubroutineType(types: !3957)
!3957 = !{!82, !79, !79, !79}
!3958 = !{!3959, !3960, !3961}
!3959 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3955, file: !203, line: 1036, type: !79)
!3960 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3955, file: !203, line: 1036, type: !79)
!3961 = !DILocalVariable(name: "arg", arg: 3, scope: !3955, file: !203, line: 1037, type: !79)
!3962 = !DILocation(line: 1036, column: 30, scope: !3955)
!3963 = !DILocation(line: 1036, column: 54, scope: !3955)
!3964 = !DILocation(line: 1037, column: 30, scope: !3955)
!3965 = !DILocation(line: 1018, column: 24, scope: !3882, inlinedAt: !3966)
!3966 = distinct !DILocation(line: 1039, column: 10, scope: !3955)
!3967 = !DILocation(line: 1018, column: 39, scope: !3882, inlinedAt: !3966)
!3968 = !DILocation(line: 1019, column: 32, scope: !3882, inlinedAt: !3966)
!3969 = !DILocation(line: 1019, column: 57, scope: !3882, inlinedAt: !3966)
!3970 = !DILocation(line: 1026, column: 28, scope: !3895, inlinedAt: !3971)
!3971 = distinct !DILocation(line: 1021, column: 10, scope: !3882, inlinedAt: !3966)
!3972 = !DILocation(line: 1026, column: 43, scope: !3895, inlinedAt: !3971)
!3973 = !DILocation(line: 1027, column: 36, scope: !3895, inlinedAt: !3971)
!3974 = !DILocation(line: 1028, column: 36, scope: !3895, inlinedAt: !3971)
!3975 = !DILocation(line: 1028, column: 48, scope: !3895, inlinedAt: !3971)
!3976 = !DILocation(line: 1030, column: 3, scope: !3895, inlinedAt: !3971)
!3977 = !DILocation(line: 1030, column: 30, scope: !3895, inlinedAt: !3971)
!3978 = !DILocation(line: 1030, column: 26, scope: !3895, inlinedAt: !3971)
!3979 = !DILocation(line: 179, column: 45, scope: !2443, inlinedAt: !3980)
!3980 = distinct !DILocation(line: 1031, column: 3, scope: !3895, inlinedAt: !3971)
!3981 = !DILocation(line: 180, column: 33, scope: !2443, inlinedAt: !3980)
!3982 = !DILocation(line: 180, column: 57, scope: !2443, inlinedAt: !3980)
!3983 = !DILocation(line: 184, column: 6, scope: !2443, inlinedAt: !3980)
!3984 = !DILocation(line: 184, column: 12, scope: !2443, inlinedAt: !3980)
!3985 = !DILocation(line: 185, column: 8, scope: !2459, inlinedAt: !3980)
!3986 = !DILocation(line: 185, column: 23, scope: !2459, inlinedAt: !3980)
!3987 = !DILocation(line: 185, column: 19, scope: !2459, inlinedAt: !3980)
!3988 = !DILocation(line: 186, column: 5, scope: !2459, inlinedAt: !3980)
!3989 = !DILocation(line: 187, column: 6, scope: !2443, inlinedAt: !3980)
!3990 = !DILocation(line: 187, column: 17, scope: !2443, inlinedAt: !3980)
!3991 = !DILocation(line: 188, column: 6, scope: !2443, inlinedAt: !3980)
!3992 = !DILocation(line: 188, column: 18, scope: !2443, inlinedAt: !3980)
!3993 = !DILocation(line: 1032, column: 10, scope: !3895, inlinedAt: !3971)
!3994 = !DILocation(line: 1033, column: 1, scope: !3895, inlinedAt: !3971)
!3995 = !DILocation(line: 1039, column: 3, scope: !3955)
!3996 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !203, file: !203, line: 1043, type: !3997, isLocal: false, isDefinition: true, scopeLine: 1045, flags: DIFlagPrototyped, isOptimized: true, unit: !191, retainedNodes: !3999)
!3997 = !DISubroutineType(types: !3998)
!3998 = !{!82, !79, !79, !79, !76}
!3999 = !{!4000, !4001, !4002, !4003}
!4000 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3996, file: !203, line: 1043, type: !79)
!4001 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3996, file: !203, line: 1043, type: !79)
!4002 = !DILocalVariable(name: "arg", arg: 3, scope: !3996, file: !203, line: 1044, type: !79)
!4003 = !DILocalVariable(name: "argsize", arg: 4, scope: !3996, file: !203, line: 1044, type: !76)
!4004 = !DILocation(line: 1043, column: 34, scope: !3996)
!4005 = !DILocation(line: 1043, column: 58, scope: !3996)
!4006 = !DILocation(line: 1044, column: 34, scope: !3996)
!4007 = !DILocation(line: 1044, column: 46, scope: !3996)
!4008 = !DILocation(line: 1026, column: 28, scope: !3895, inlinedAt: !4009)
!4009 = distinct !DILocation(line: 1046, column: 10, scope: !3996)
!4010 = !DILocation(line: 1026, column: 43, scope: !3895, inlinedAt: !4009)
!4011 = !DILocation(line: 1027, column: 36, scope: !3895, inlinedAt: !4009)
!4012 = !DILocation(line: 1028, column: 36, scope: !3895, inlinedAt: !4009)
!4013 = !DILocation(line: 1028, column: 48, scope: !3895, inlinedAt: !4009)
!4014 = !DILocation(line: 1030, column: 3, scope: !3895, inlinedAt: !4009)
!4015 = !DILocation(line: 1030, column: 30, scope: !3895, inlinedAt: !4009)
!4016 = !DILocation(line: 1030, column: 26, scope: !3895, inlinedAt: !4009)
!4017 = !DILocation(line: 179, column: 45, scope: !2443, inlinedAt: !4018)
!4018 = distinct !DILocation(line: 1031, column: 3, scope: !3895, inlinedAt: !4009)
!4019 = !DILocation(line: 180, column: 33, scope: !2443, inlinedAt: !4018)
!4020 = !DILocation(line: 180, column: 57, scope: !2443, inlinedAt: !4018)
!4021 = !DILocation(line: 184, column: 6, scope: !2443, inlinedAt: !4018)
!4022 = !DILocation(line: 184, column: 12, scope: !2443, inlinedAt: !4018)
!4023 = !DILocation(line: 185, column: 8, scope: !2459, inlinedAt: !4018)
!4024 = !DILocation(line: 185, column: 23, scope: !2459, inlinedAt: !4018)
!4025 = !DILocation(line: 185, column: 19, scope: !2459, inlinedAt: !4018)
!4026 = !DILocation(line: 186, column: 5, scope: !2459, inlinedAt: !4018)
!4027 = !DILocation(line: 187, column: 6, scope: !2443, inlinedAt: !4018)
!4028 = !DILocation(line: 187, column: 17, scope: !2443, inlinedAt: !4018)
!4029 = !DILocation(line: 188, column: 6, scope: !2443, inlinedAt: !4018)
!4030 = !DILocation(line: 188, column: 18, scope: !2443, inlinedAt: !4018)
!4031 = !DILocation(line: 1032, column: 10, scope: !3895, inlinedAt: !4009)
!4032 = !DILocation(line: 1033, column: 1, scope: !3895, inlinedAt: !4009)
!4033 = !DILocation(line: 1046, column: 3, scope: !3996)
!4034 = distinct !DISubprogram(name: "quote_n_mem", scope: !203, file: !203, line: 1061, type: !4035, isLocal: false, isDefinition: true, scopeLine: 1062, flags: DIFlagPrototyped, isOptimized: true, unit: !191, retainedNodes: !4037)
!4035 = !DISubroutineType(types: !4036)
!4036 = !{!79, !83, !79, !76}
!4037 = !{!4038, !4039, !4040}
!4038 = !DILocalVariable(name: "n", arg: 1, scope: !4034, file: !203, line: 1061, type: !83)
!4039 = !DILocalVariable(name: "arg", arg: 2, scope: !4034, file: !203, line: 1061, type: !79)
!4040 = !DILocalVariable(name: "argsize", arg: 3, scope: !4034, file: !203, line: 1061, type: !76)
!4041 = !DILocation(line: 1061, column: 18, scope: !4034)
!4042 = !DILocation(line: 1061, column: 33, scope: !4034)
!4043 = !DILocation(line: 1061, column: 45, scope: !4034)
!4044 = !DILocation(line: 1063, column: 10, scope: !4034)
!4045 = !DILocation(line: 1063, column: 3, scope: !4034)
!4046 = distinct !DISubprogram(name: "quote_mem", scope: !203, file: !203, line: 1067, type: !4047, isLocal: false, isDefinition: true, scopeLine: 1068, flags: DIFlagPrototyped, isOptimized: true, unit: !191, retainedNodes: !4049)
!4047 = !DISubroutineType(types: !4048)
!4048 = !{!79, !79, !76}
!4049 = !{!4050, !4051}
!4050 = !DILocalVariable(name: "arg", arg: 1, scope: !4046, file: !203, line: 1067, type: !79)
!4051 = !DILocalVariable(name: "argsize", arg: 2, scope: !4046, file: !203, line: 1067, type: !76)
!4052 = !DILocation(line: 1067, column: 24, scope: !4046)
!4053 = !DILocation(line: 1067, column: 36, scope: !4046)
!4054 = !DILocation(line: 1061, column: 18, scope: !4034, inlinedAt: !4055)
!4055 = distinct !DILocation(line: 1069, column: 10, scope: !4046)
!4056 = !DILocation(line: 1061, column: 33, scope: !4034, inlinedAt: !4055)
!4057 = !DILocation(line: 1061, column: 45, scope: !4034, inlinedAt: !4055)
!4058 = !DILocation(line: 1063, column: 10, scope: !4034, inlinedAt: !4055)
!4059 = !DILocation(line: 1069, column: 3, scope: !4046)
!4060 = distinct !DISubprogram(name: "quote_n", scope: !203, file: !203, line: 1073, type: !4061, isLocal: false, isDefinition: true, scopeLine: 1074, flags: DIFlagPrototyped, isOptimized: true, unit: !191, retainedNodes: !4063)
!4061 = !DISubroutineType(types: !4062)
!4062 = !{!79, !83, !79}
!4063 = !{!4064, !4065}
!4064 = !DILocalVariable(name: "n", arg: 1, scope: !4060, file: !203, line: 1073, type: !83)
!4065 = !DILocalVariable(name: "arg", arg: 2, scope: !4060, file: !203, line: 1073, type: !79)
!4066 = !DILocation(line: 1073, column: 14, scope: !4060)
!4067 = !DILocation(line: 1073, column: 29, scope: !4060)
!4068 = !DILocation(line: 1061, column: 18, scope: !4034, inlinedAt: !4069)
!4069 = distinct !DILocation(line: 1075, column: 10, scope: !4060)
!4070 = !DILocation(line: 1061, column: 33, scope: !4034, inlinedAt: !4069)
!4071 = !DILocation(line: 1061, column: 45, scope: !4034, inlinedAt: !4069)
!4072 = !DILocation(line: 1063, column: 10, scope: !4034, inlinedAt: !4069)
!4073 = !DILocation(line: 1075, column: 3, scope: !4060)
!4074 = distinct !DISubprogram(name: "quote", scope: !203, file: !203, line: 1079, type: !4075, isLocal: false, isDefinition: true, scopeLine: 1080, flags: DIFlagPrototyped, isOptimized: true, unit: !191, retainedNodes: !4077)
!4075 = !DISubroutineType(types: !4076)
!4076 = !{!79, !79}
!4077 = !{!4078}
!4078 = !DILocalVariable(name: "arg", arg: 1, scope: !4074, file: !203, line: 1079, type: !79)
!4079 = !DILocation(line: 1079, column: 20, scope: !4074)
!4080 = !DILocation(line: 1073, column: 14, scope: !4060, inlinedAt: !4081)
!4081 = distinct !DILocation(line: 1081, column: 10, scope: !4074)
!4082 = !DILocation(line: 1073, column: 29, scope: !4060, inlinedAt: !4081)
!4083 = !DILocation(line: 1061, column: 18, scope: !4034, inlinedAt: !4084)
!4084 = distinct !DILocation(line: 1075, column: 10, scope: !4060, inlinedAt: !4081)
!4085 = !DILocation(line: 1061, column: 33, scope: !4034, inlinedAt: !4084)
!4086 = !DILocation(line: 1061, column: 45, scope: !4034, inlinedAt: !4084)
!4087 = !DILocation(line: 1063, column: 10, scope: !4034, inlinedAt: !4084)
!4088 = !DILocation(line: 1081, column: 3, scope: !4074)
!4089 = distinct !DISubprogram(name: "version_etc_arn", scope: !270, file: !270, line: 62, type: !4090, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !266, retainedNodes: !4126)
!4090 = !DISubroutineType(types: !4091)
!4091 = !{null, !4092, !79, !79, !79, !1487, !76}
!4092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4093, size: 64)
!4093 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1114, line: 7, baseType: !4094)
!4094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1116, line: 49, size: 1728, elements: !4095)
!4095 = !{!4096, !4097, !4098, !4099, !4100, !4101, !4102, !4103, !4104, !4105, !4106, !4107, !4108, !4109, !4111, !4112, !4113, !4114, !4115, !4116, !4117, !4118, !4119, !4120, !4121, !4122, !4123, !4124, !4125}
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4094, file: !1116, line: 51, baseType: !83, size: 32)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4094, file: !1116, line: 54, baseType: !82, size: 64, offset: 64)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4094, file: !1116, line: 55, baseType: !82, size: 64, offset: 128)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4094, file: !1116, line: 56, baseType: !82, size: 64, offset: 192)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4094, file: !1116, line: 57, baseType: !82, size: 64, offset: 256)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4094, file: !1116, line: 58, baseType: !82, size: 64, offset: 320)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4094, file: !1116, line: 59, baseType: !82, size: 64, offset: 384)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4094, file: !1116, line: 60, baseType: !82, size: 64, offset: 448)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4094, file: !1116, line: 61, baseType: !82, size: 64, offset: 512)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4094, file: !1116, line: 64, baseType: !82, size: 64, offset: 576)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4094, file: !1116, line: 65, baseType: !82, size: 64, offset: 640)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4094, file: !1116, line: 66, baseType: !82, size: 64, offset: 704)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4094, file: !1116, line: 68, baseType: !1131, size: 64, offset: 768)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4094, file: !1116, line: 70, baseType: !4110, size: 64, offset: 832)
!4110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4094, size: 64)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4094, file: !1116, line: 72, baseType: !83, size: 32, offset: 896)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4094, file: !1116, line: 73, baseType: !83, size: 32, offset: 928)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4094, file: !1116, line: 74, baseType: !1138, size: 64, offset: 960)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4094, file: !1116, line: 77, baseType: !84, size: 16, offset: 1024)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4094, file: !1116, line: 78, baseType: !1142, size: 8, offset: 1040)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4094, file: !1116, line: 79, baseType: !1144, size: 8, offset: 1048)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4094, file: !1116, line: 81, baseType: !1148, size: 64, offset: 1088)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4094, file: !1116, line: 89, baseType: !1151, size: 64, offset: 1152)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4094, file: !1116, line: 91, baseType: !1153, size: 64, offset: 1216)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4094, file: !1116, line: 92, baseType: !1156, size: 64, offset: 1280)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4094, file: !1116, line: 93, baseType: !4110, size: 64, offset: 1344)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4094, file: !1116, line: 94, baseType: !74, size: 64, offset: 1408)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4094, file: !1116, line: 95, baseType: !76, size: 64, offset: 1472)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4094, file: !1116, line: 96, baseType: !83, size: 32, offset: 1536)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4094, file: !1116, line: 98, baseType: !1163, size: 160, offset: 1568)
!4126 = !{!4127, !4128, !4129, !4130, !4131, !4132}
!4127 = !DILocalVariable(name: "stream", arg: 1, scope: !4089, file: !270, line: 62, type: !4092)
!4128 = !DILocalVariable(name: "command_name", arg: 2, scope: !4089, file: !270, line: 63, type: !79)
!4129 = !DILocalVariable(name: "package", arg: 3, scope: !4089, file: !270, line: 63, type: !79)
!4130 = !DILocalVariable(name: "version", arg: 4, scope: !4089, file: !270, line: 64, type: !79)
!4131 = !DILocalVariable(name: "authors", arg: 5, scope: !4089, file: !270, line: 65, type: !1487)
!4132 = !DILocalVariable(name: "n_authors", arg: 6, scope: !4089, file: !270, line: 65, type: !76)
!4133 = !DILocation(line: 62, column: 24, scope: !4089)
!4134 = !DILocation(line: 63, column: 30, scope: !4089)
!4135 = !DILocation(line: 63, column: 56, scope: !4089)
!4136 = !DILocation(line: 64, column: 30, scope: !4089)
!4137 = !DILocation(line: 65, column: 39, scope: !4089)
!4138 = !DILocation(line: 65, column: 55, scope: !4089)
!4139 = !DILocation(line: 67, column: 7, scope: !4140)
!4140 = distinct !DILexicalBlock(scope: !4089, file: !270, line: 67, column: 7)
!4141 = !DILocation(line: 67, column: 7, scope: !4089)
!4142 = !DILocation(line: 68, column: 5, scope: !4140)
!4143 = !DILocation(line: 70, column: 5, scope: !4140)
!4144 = !DILocation(line: 84, column: 3, scope: !4089)
!4145 = !DILocation(line: 86, column: 3, scope: !4089)
!4146 = !DILocation(line: 95, column: 3, scope: !4089)
!4147 = !DILocation(line: 99, column: 7, scope: !4148)
!4148 = distinct !DILexicalBlock(scope: !4089, file: !270, line: 96, column: 5)
!4149 = !DILocation(line: 102, column: 7, scope: !4148)
!4150 = !DILocation(line: 103, column: 7, scope: !4148)
!4151 = !DILocation(line: 106, column: 7, scope: !4148)
!4152 = !DILocation(line: 107, column: 7, scope: !4148)
!4153 = !DILocation(line: 110, column: 7, scope: !4148)
!4154 = !DILocation(line: 112, column: 7, scope: !4148)
!4155 = !DILocation(line: 117, column: 7, scope: !4148)
!4156 = !DILocation(line: 119, column: 7, scope: !4148)
!4157 = !DILocation(line: 124, column: 7, scope: !4148)
!4158 = !DILocation(line: 126, column: 7, scope: !4148)
!4159 = !DILocation(line: 131, column: 7, scope: !4148)
!4160 = !DILocation(line: 134, column: 7, scope: !4148)
!4161 = !DILocation(line: 139, column: 7, scope: !4148)
!4162 = !DILocation(line: 142, column: 7, scope: !4148)
!4163 = !DILocation(line: 147, column: 7, scope: !4148)
!4164 = !DILocation(line: 151, column: 7, scope: !4148)
!4165 = !DILocation(line: 156, column: 7, scope: !4148)
!4166 = !DILocation(line: 160, column: 7, scope: !4148)
!4167 = !DILocation(line: 167, column: 7, scope: !4148)
!4168 = !DILocation(line: 171, column: 7, scope: !4148)
!4169 = !DILocation(line: 173, column: 1, scope: !4089)
!4170 = distinct !DISubprogram(name: "version_etc_ar", scope: !270, file: !270, line: 180, type: !4171, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !266, retainedNodes: !4173)
!4171 = !DISubroutineType(types: !4172)
!4172 = !{null, !4092, !79, !79, !79, !1487}
!4173 = !{!4174, !4175, !4176, !4177, !4178, !4179}
!4174 = !DILocalVariable(name: "stream", arg: 1, scope: !4170, file: !270, line: 180, type: !4092)
!4175 = !DILocalVariable(name: "command_name", arg: 2, scope: !4170, file: !270, line: 181, type: !79)
!4176 = !DILocalVariable(name: "package", arg: 3, scope: !4170, file: !270, line: 181, type: !79)
!4177 = !DILocalVariable(name: "version", arg: 4, scope: !4170, file: !270, line: 182, type: !79)
!4178 = !DILocalVariable(name: "authors", arg: 5, scope: !4170, file: !270, line: 182, type: !1487)
!4179 = !DILocalVariable(name: "n_authors", scope: !4170, file: !270, line: 184, type: !76)
!4180 = !DILocation(line: 180, column: 23, scope: !4170)
!4181 = !DILocation(line: 181, column: 29, scope: !4170)
!4182 = !DILocation(line: 181, column: 55, scope: !4170)
!4183 = !DILocation(line: 182, column: 29, scope: !4170)
!4184 = !DILocation(line: 182, column: 59, scope: !4170)
!4185 = !DILocation(line: 184, column: 10, scope: !4170)
!4186 = !DILocation(line: 186, column: 8, scope: !4187)
!4187 = distinct !DILexicalBlock(scope: !4170, file: !270, line: 186, column: 3)
!4188 = !DILocation(line: 0, scope: !4189)
!4189 = distinct !DILexicalBlock(scope: !4187, file: !270, line: 186, column: 3)
!4190 = !DILocation(line: 186, column: 23, scope: !4189)
!4191 = !DILocation(line: 186, column: 3, scope: !4187)
!4192 = !DILocation(line: 186, column: 52, scope: !4189)
!4193 = distinct !{!4193, !4191, !4194}
!4194 = !DILocation(line: 187, column: 5, scope: !4187)
!4195 = !DILocation(line: 188, column: 3, scope: !4170)
!4196 = !DILocation(line: 189, column: 1, scope: !4170)
!4197 = distinct !DISubprogram(name: "version_etc_va", scope: !270, file: !270, line: 196, type: !4198, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !266, retainedNodes: !4207)
!4198 = !DISubroutineType(types: !4199)
!4199 = !{null, !4092, !79, !79, !79, !4200}
!4200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4201, size: 64)
!4201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !267, line: 189, size: 192, elements: !4202)
!4202 = !{!4203, !4204, !4205, !4206}
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4201, file: !267, line: 189, baseType: !6, size: 32)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4201, file: !267, line: 189, baseType: !6, size: 32, offset: 32)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4201, file: !267, line: 189, baseType: !74, size: 64, offset: 64)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4201, file: !267, line: 189, baseType: !74, size: 64, offset: 128)
!4207 = !{!4208, !4209, !4210, !4211, !4212, !4213, !4214}
!4208 = !DILocalVariable(name: "stream", arg: 1, scope: !4197, file: !270, line: 196, type: !4092)
!4209 = !DILocalVariable(name: "command_name", arg: 2, scope: !4197, file: !270, line: 197, type: !79)
!4210 = !DILocalVariable(name: "package", arg: 3, scope: !4197, file: !270, line: 197, type: !79)
!4211 = !DILocalVariable(name: "version", arg: 4, scope: !4197, file: !270, line: 198, type: !79)
!4212 = !DILocalVariable(name: "authors", arg: 5, scope: !4197, file: !270, line: 198, type: !4200)
!4213 = !DILocalVariable(name: "n_authors", scope: !4197, file: !270, line: 200, type: !76)
!4214 = !DILocalVariable(name: "authtab", scope: !4197, file: !270, line: 201, type: !4215)
!4215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 640, elements: !206)
!4216 = !DILocation(line: 196, column: 23, scope: !4197)
!4217 = !DILocation(line: 197, column: 29, scope: !4197)
!4218 = !DILocation(line: 197, column: 55, scope: !4197)
!4219 = !DILocation(line: 198, column: 29, scope: !4197)
!4220 = !DILocation(line: 198, column: 46, scope: !4197)
!4221 = !DILocation(line: 201, column: 3, scope: !4197)
!4222 = !DILocation(line: 201, column: 15, scope: !4197)
!4223 = !DILocation(line: 200, column: 10, scope: !4197)
!4224 = !DILocation(line: 205, column: 35, scope: !4225)
!4225 = distinct !DILexicalBlock(scope: !4226, file: !270, line: 203, column: 3)
!4226 = distinct !DILexicalBlock(scope: !4197, file: !270, line: 203, column: 3)
!4227 = !DILocation(line: 205, column: 14, scope: !4225)
!4228 = !DILocation(line: 205, column: 33, scope: !4225)
!4229 = !DILocation(line: 205, column: 67, scope: !4225)
!4230 = !DILocation(line: 203, column: 3, scope: !4226)
!4231 = !DILocation(line: 0, scope: !4225)
!4232 = !DILocation(line: 208, column: 3, scope: !4197)
!4233 = !DILocation(line: 210, column: 1, scope: !4197)
!4234 = distinct !DISubprogram(name: "version_etc", scope: !270, file: !270, line: 227, type: !4235, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !266, retainedNodes: !4237)
!4235 = !DISubroutineType(types: !4236)
!4236 = !{null, !4092, !79, !79, !79, null}
!4237 = !{!4238, !4239, !4240, !4241, !4242}
!4238 = !DILocalVariable(name: "stream", arg: 1, scope: !4234, file: !270, line: 227, type: !4092)
!4239 = !DILocalVariable(name: "command_name", arg: 2, scope: !4234, file: !270, line: 228, type: !79)
!4240 = !DILocalVariable(name: "package", arg: 3, scope: !4234, file: !270, line: 228, type: !79)
!4241 = !DILocalVariable(name: "version", arg: 4, scope: !4234, file: !270, line: 229, type: !79)
!4242 = !DILocalVariable(name: "authors", scope: !4234, file: !270, line: 231, type: !4243)
!4243 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1787, line: 52, baseType: !4244)
!4244 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !4245, line: 48, baseType: !4246)
!4245 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4246 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !267, line: 231, baseType: !4247)
!4247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4201, size: 192, elements: !1145)
!4248 = !DILocation(line: 227, column: 20, scope: !4234)
!4249 = !DILocation(line: 228, column: 26, scope: !4234)
!4250 = !DILocation(line: 228, column: 52, scope: !4234)
!4251 = !DILocation(line: 229, column: 26, scope: !4234)
!4252 = !DILocation(line: 231, column: 3, scope: !4234)
!4253 = !DILocation(line: 231, column: 11, scope: !4234)
!4254 = !DILocation(line: 233, column: 3, scope: !4234)
!4255 = !DILocation(line: 234, column: 3, scope: !4234)
!4256 = !DILocation(line: 235, column: 3, scope: !4234)
!4257 = !DILocation(line: 236, column: 1, scope: !4234)
!4258 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !270, file: !270, line: 239, type: !165, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !266, retainedNodes: !152)
!4259 = !DILocation(line: 245, column: 3, scope: !4258)
!4260 = !DILocation(line: 251, column: 3, scope: !4258)
!4261 = !DILocation(line: 256, column: 3, scope: !4258)
!4262 = !DILocation(line: 258, column: 1, scope: !4258)
!4263 = distinct !DISubprogram(name: "xnmalloc", scope: !278, file: !278, line: 99, type: !4264, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !274, retainedNodes: !4266)
!4264 = !DISubroutineType(types: !4265)
!4265 = !{!74, !76, !76}
!4266 = !{!4267, !4268}
!4267 = !DILocalVariable(name: "n", arg: 1, scope: !4263, file: !278, line: 99, type: !76)
!4268 = !DILocalVariable(name: "s", arg: 2, scope: !4263, file: !278, line: 99, type: !76)
!4269 = !DILocation(line: 99, column: 18, scope: !4263)
!4270 = !DILocation(line: 99, column: 28, scope: !4263)
!4271 = !DILocation(line: 101, column: 7, scope: !4272)
!4272 = distinct !DILexicalBlock(scope: !4263, file: !278, line: 101, column: 7)
!4273 = !DILocation(line: 101, column: 7, scope: !4263)
!4274 = !DILocation(line: 102, column: 5, scope: !4272)
!4275 = !DILocation(line: 103, column: 21, scope: !4263)
!4276 = !DILocalVariable(name: "n", arg: 1, scope: !4277, file: !4278, line: 39, type: !76)
!4277 = distinct !DISubprogram(name: "xmalloc", scope: !4278, file: !4278, line: 39, type: !4279, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !274, retainedNodes: !4281)
!4278 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4279 = !DISubroutineType(types: !4280)
!4280 = !{!74, !76}
!4281 = !{!4276, !4282}
!4282 = !DILocalVariable(name: "p", scope: !4277, file: !4278, line: 41, type: !74)
!4283 = !DILocation(line: 39, column: 17, scope: !4277, inlinedAt: !4284)
!4284 = distinct !DILocation(line: 103, column: 10, scope: !4263)
!4285 = !DILocation(line: 41, column: 13, scope: !4277, inlinedAt: !4284)
!4286 = !DILocation(line: 41, column: 9, scope: !4277, inlinedAt: !4284)
!4287 = !DILocation(line: 42, column: 8, scope: !4288, inlinedAt: !4284)
!4288 = distinct !DILexicalBlock(scope: !4277, file: !4278, line: 42, column: 7)
!4289 = !DILocation(line: 42, column: 15, scope: !4288, inlinedAt: !4284)
!4290 = !DILocation(line: 42, column: 10, scope: !4288, inlinedAt: !4284)
!4291 = !DILocation(line: 43, column: 5, scope: !4288, inlinedAt: !4284)
!4292 = !DILocation(line: 103, column: 3, scope: !4263)
!4293 = !DILocation(line: 39, column: 17, scope: !4277)
!4294 = !DILocation(line: 41, column: 13, scope: !4277)
!4295 = !DILocation(line: 41, column: 9, scope: !4277)
!4296 = !DILocation(line: 42, column: 8, scope: !4288)
!4297 = !DILocation(line: 42, column: 15, scope: !4288)
!4298 = !DILocation(line: 42, column: 10, scope: !4288)
!4299 = !DILocation(line: 43, column: 5, scope: !4288)
!4300 = !DILocation(line: 44, column: 3, scope: !4277)
!4301 = distinct !DISubprogram(name: "xnrealloc", scope: !278, file: !278, line: 112, type: !4302, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: true, unit: !274, retainedNodes: !4304)
!4302 = !DISubroutineType(types: !4303)
!4303 = !{!74, !74, !76, !76}
!4304 = !{!4305, !4306, !4307}
!4305 = !DILocalVariable(name: "p", arg: 1, scope: !4301, file: !278, line: 112, type: !74)
!4306 = !DILocalVariable(name: "n", arg: 2, scope: !4301, file: !278, line: 112, type: !76)
!4307 = !DILocalVariable(name: "s", arg: 3, scope: !4301, file: !278, line: 112, type: !76)
!4308 = !DILocation(line: 112, column: 18, scope: !4301)
!4309 = !DILocation(line: 112, column: 28, scope: !4301)
!4310 = !DILocation(line: 112, column: 38, scope: !4301)
!4311 = !DILocation(line: 114, column: 7, scope: !4312)
!4312 = distinct !DILexicalBlock(scope: !4301, file: !278, line: 114, column: 7)
!4313 = !DILocation(line: 114, column: 7, scope: !4301)
!4314 = !DILocation(line: 115, column: 5, scope: !4312)
!4315 = !DILocation(line: 116, column: 25, scope: !4301)
!4316 = !DILocalVariable(name: "p", arg: 1, scope: !4317, file: !4278, line: 51, type: !74)
!4317 = distinct !DISubprogram(name: "xrealloc", scope: !4278, file: !4278, line: 51, type: !4318, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !274, retainedNodes: !4320)
!4318 = !DISubroutineType(types: !4319)
!4319 = !{!74, !74, !76}
!4320 = !{!4316, !4321}
!4321 = !DILocalVariable(name: "n", arg: 2, scope: !4317, file: !4278, line: 51, type: !76)
!4322 = !DILocation(line: 51, column: 17, scope: !4317, inlinedAt: !4323)
!4323 = distinct !DILocation(line: 116, column: 10, scope: !4301)
!4324 = !DILocation(line: 51, column: 27, scope: !4317, inlinedAt: !4323)
!4325 = !DILocation(line: 53, column: 8, scope: !4326, inlinedAt: !4323)
!4326 = distinct !DILexicalBlock(scope: !4317, file: !4278, line: 53, column: 7)
!4327 = !DILocation(line: 53, column: 13, scope: !4326, inlinedAt: !4323)
!4328 = !DILocation(line: 53, column: 10, scope: !4326, inlinedAt: !4323)
!4329 = !DILocation(line: 57, column: 7, scope: !4330, inlinedAt: !4323)
!4330 = distinct !DILexicalBlock(scope: !4326, file: !4278, line: 54, column: 5)
!4331 = !DILocation(line: 58, column: 7, scope: !4330, inlinedAt: !4323)
!4332 = !DILocation(line: 61, column: 7, scope: !4317, inlinedAt: !4323)
!4333 = !DILocation(line: 62, column: 8, scope: !4334, inlinedAt: !4323)
!4334 = distinct !DILexicalBlock(scope: !4317, file: !4278, line: 62, column: 7)
!4335 = !DILocation(line: 62, column: 13, scope: !4334, inlinedAt: !4323)
!4336 = !DILocation(line: 62, column: 10, scope: !4334, inlinedAt: !4323)
!4337 = !DILocation(line: 63, column: 5, scope: !4334, inlinedAt: !4323)
!4338 = !DILocation(line: 0, scope: !4317, inlinedAt: !4323)
!4339 = !DILocation(line: 116, column: 3, scope: !4301)
!4340 = !DILocation(line: 51, column: 17, scope: !4317)
!4341 = !DILocation(line: 51, column: 27, scope: !4317)
!4342 = !DILocation(line: 53, column: 8, scope: !4326)
!4343 = !DILocation(line: 53, column: 13, scope: !4326)
!4344 = !DILocation(line: 53, column: 10, scope: !4326)
!4345 = !DILocation(line: 57, column: 7, scope: !4330)
!4346 = !DILocation(line: 58, column: 7, scope: !4330)
!4347 = !DILocation(line: 61, column: 7, scope: !4317)
!4348 = !DILocation(line: 62, column: 8, scope: !4334)
!4349 = !DILocation(line: 62, column: 13, scope: !4334)
!4350 = !DILocation(line: 62, column: 10, scope: !4334)
!4351 = !DILocation(line: 63, column: 5, scope: !4334)
!4352 = !DILocation(line: 0, scope: !4317)
!4353 = !DILocation(line: 65, column: 1, scope: !4317)
!4354 = !DILocation(line: 174, column: 19, scope: !279)
!4355 = !DILocation(line: 174, column: 30, scope: !279)
!4356 = !DILocation(line: 174, column: 41, scope: !279)
!4357 = !DILocation(line: 176, column: 14, scope: !279)
!4358 = !DILocation(line: 176, column: 10, scope: !279)
!4359 = !DILocation(line: 178, column: 9, scope: !4360)
!4360 = distinct !DILexicalBlock(scope: !279, file: !278, line: 178, column: 7)
!4361 = !DILocation(line: 178, column: 7, scope: !279)
!4362 = !DILocation(line: 180, column: 13, scope: !4363)
!4363 = distinct !DILexicalBlock(scope: !4364, file: !278, line: 180, column: 11)
!4364 = distinct !DILexicalBlock(scope: !4360, file: !278, line: 179, column: 5)
!4365 = !DILocation(line: 180, column: 11, scope: !4364)
!4366 = !DILocation(line: 188, column: 30, scope: !4367)
!4367 = distinct !DILexicalBlock(scope: !4363, file: !278, line: 181, column: 9)
!4368 = !DILocation(line: 189, column: 16, scope: !4367)
!4369 = !DILocation(line: 189, column: 13, scope: !4367)
!4370 = !DILocation(line: 190, column: 9, scope: !4367)
!4371 = !DILocation(line: 0, scope: !4367)
!4372 = !DILocation(line: 191, column: 11, scope: !4373)
!4373 = distinct !DILexicalBlock(scope: !4364, file: !278, line: 191, column: 11)
!4374 = !DILocation(line: 191, column: 11, scope: !4364)
!4375 = !DILocation(line: 206, column: 7, scope: !279)
!4376 = !DILocation(line: 207, column: 25, scope: !279)
!4377 = !DILocation(line: 51, column: 17, scope: !4317, inlinedAt: !4378)
!4378 = distinct !DILocation(line: 207, column: 10, scope: !279)
!4379 = !DILocation(line: 51, column: 27, scope: !4317, inlinedAt: !4378)
!4380 = !DILocation(line: 53, column: 10, scope: !4326, inlinedAt: !4378)
!4381 = !DILocation(line: 192, column: 9, scope: !4373)
!4382 = !DILocation(line: 200, column: 69, scope: !4383)
!4383 = distinct !DILexicalBlock(scope: !4384, file: !278, line: 200, column: 11)
!4384 = distinct !DILexicalBlock(scope: !4360, file: !278, line: 195, column: 5)
!4385 = !DILocation(line: 201, column: 11, scope: !4383)
!4386 = !DILocation(line: 200, column: 11, scope: !4384)
!4387 = !DILocation(line: 202, column: 9, scope: !4383)
!4388 = !DILocation(line: 203, column: 14, scope: !4384)
!4389 = !DILocation(line: 203, column: 18, scope: !4384)
!4390 = !DILocation(line: 203, column: 9, scope: !4384)
!4391 = !DILocation(line: 53, column: 8, scope: !4326, inlinedAt: !4378)
!4392 = !DILocation(line: 57, column: 7, scope: !4330, inlinedAt: !4378)
!4393 = !DILocation(line: 58, column: 7, scope: !4330, inlinedAt: !4378)
!4394 = !DILocation(line: 61, column: 7, scope: !4317, inlinedAt: !4378)
!4395 = !DILocation(line: 62, column: 8, scope: !4334, inlinedAt: !4378)
!4396 = !DILocation(line: 62, column: 13, scope: !4334, inlinedAt: !4378)
!4397 = !DILocation(line: 62, column: 10, scope: !4334, inlinedAt: !4378)
!4398 = !DILocation(line: 63, column: 5, scope: !4334, inlinedAt: !4378)
!4399 = !DILocation(line: 0, scope: !4317, inlinedAt: !4378)
!4400 = !DILocation(line: 207, column: 3, scope: !279)
!4401 = distinct !DISubprogram(name: "xcharalloc", scope: !278, file: !278, line: 216, type: !3375, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !274, retainedNodes: !4402)
!4402 = !{!4403}
!4403 = !DILocalVariable(name: "n", arg: 1, scope: !4401, file: !278, line: 216, type: !76)
!4404 = !DILocation(line: 216, column: 20, scope: !4401)
!4405 = !DILocation(line: 39, column: 17, scope: !4277, inlinedAt: !4406)
!4406 = distinct !DILocation(line: 218, column: 10, scope: !4401)
!4407 = !DILocation(line: 41, column: 13, scope: !4277, inlinedAt: !4406)
!4408 = !DILocation(line: 41, column: 9, scope: !4277, inlinedAt: !4406)
!4409 = !DILocation(line: 42, column: 8, scope: !4288, inlinedAt: !4406)
!4410 = !DILocation(line: 42, column: 15, scope: !4288, inlinedAt: !4406)
!4411 = !DILocation(line: 42, column: 10, scope: !4288, inlinedAt: !4406)
!4412 = !DILocation(line: 43, column: 5, scope: !4288, inlinedAt: !4406)
!4413 = !DILocation(line: 218, column: 3, scope: !4401)
!4414 = distinct !DISubprogram(name: "x2realloc", scope: !4278, file: !4278, line: 74, type: !4415, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !274, retainedNodes: !4417)
!4415 = !DISubroutineType(types: !4416)
!4416 = !{!74, !74, !75}
!4417 = !{!4418, !4419}
!4418 = !DILocalVariable(name: "p", arg: 1, scope: !4414, file: !4278, line: 74, type: !74)
!4419 = !DILocalVariable(name: "pn", arg: 2, scope: !4414, file: !4278, line: 74, type: !75)
!4420 = !DILocation(line: 74, column: 18, scope: !4414)
!4421 = !DILocation(line: 74, column: 29, scope: !4414)
!4422 = !DILocation(line: 174, column: 19, scope: !279, inlinedAt: !4423)
!4423 = distinct !DILocation(line: 76, column: 10, scope: !4414)
!4424 = !DILocation(line: 174, column: 30, scope: !279, inlinedAt: !4423)
!4425 = !DILocation(line: 174, column: 41, scope: !279, inlinedAt: !4423)
!4426 = !DILocation(line: 176, column: 14, scope: !279, inlinedAt: !4423)
!4427 = !DILocation(line: 176, column: 10, scope: !279, inlinedAt: !4423)
!4428 = !DILocation(line: 178, column: 9, scope: !4360, inlinedAt: !4423)
!4429 = !DILocation(line: 178, column: 7, scope: !279, inlinedAt: !4423)
!4430 = !DILocation(line: 180, column: 13, scope: !4363, inlinedAt: !4423)
!4431 = !DILocation(line: 180, column: 11, scope: !4364, inlinedAt: !4423)
!4432 = !DILocation(line: 191, column: 11, scope: !4373, inlinedAt: !4423)
!4433 = !DILocation(line: 191, column: 11, scope: !4364, inlinedAt: !4423)
!4434 = !DILocation(line: 206, column: 7, scope: !279, inlinedAt: !4423)
!4435 = !DILocation(line: 51, column: 17, scope: !4317, inlinedAt: !4436)
!4436 = distinct !DILocation(line: 207, column: 10, scope: !279, inlinedAt: !4423)
!4437 = !DILocation(line: 51, column: 27, scope: !4317, inlinedAt: !4436)
!4438 = !DILocation(line: 53, column: 10, scope: !4326, inlinedAt: !4436)
!4439 = !DILocation(line: 192, column: 9, scope: !4373, inlinedAt: !4423)
!4440 = !DILocation(line: 201, column: 11, scope: !4383, inlinedAt: !4423)
!4441 = !DILocation(line: 200, column: 11, scope: !4384, inlinedAt: !4423)
!4442 = !DILocation(line: 202, column: 9, scope: !4383, inlinedAt: !4423)
!4443 = !DILocation(line: 203, column: 14, scope: !4384, inlinedAt: !4423)
!4444 = !DILocation(line: 203, column: 18, scope: !4384, inlinedAt: !4423)
!4445 = !DILocation(line: 203, column: 9, scope: !4384, inlinedAt: !4423)
!4446 = !DILocation(line: 53, column: 8, scope: !4326, inlinedAt: !4436)
!4447 = !DILocation(line: 57, column: 7, scope: !4330, inlinedAt: !4436)
!4448 = !DILocation(line: 58, column: 7, scope: !4330, inlinedAt: !4436)
!4449 = !DILocation(line: 61, column: 7, scope: !4317, inlinedAt: !4436)
!4450 = !DILocation(line: 62, column: 8, scope: !4334, inlinedAt: !4436)
!4451 = !DILocation(line: 62, column: 13, scope: !4334, inlinedAt: !4436)
!4452 = !DILocation(line: 62, column: 10, scope: !4334, inlinedAt: !4436)
!4453 = !DILocation(line: 63, column: 5, scope: !4334, inlinedAt: !4436)
!4454 = !DILocation(line: 0, scope: !4317, inlinedAt: !4436)
!4455 = !DILocation(line: 76, column: 3, scope: !4414)
!4456 = distinct !DISubprogram(name: "xzalloc", scope: !4278, file: !4278, line: 84, type: !4279, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !274, retainedNodes: !4457)
!4457 = !{!4458}
!4458 = !DILocalVariable(name: "s", arg: 1, scope: !4456, file: !4278, line: 84, type: !76)
!4459 = !DILocation(line: 84, column: 17, scope: !4456)
!4460 = !DILocation(line: 39, column: 17, scope: !4277, inlinedAt: !4461)
!4461 = distinct !DILocation(line: 86, column: 18, scope: !4456)
!4462 = !DILocation(line: 41, column: 13, scope: !4277, inlinedAt: !4461)
!4463 = !DILocation(line: 41, column: 9, scope: !4277, inlinedAt: !4461)
!4464 = !DILocation(line: 42, column: 8, scope: !4288, inlinedAt: !4461)
!4465 = !DILocation(line: 42, column: 15, scope: !4288, inlinedAt: !4461)
!4466 = !DILocation(line: 42, column: 10, scope: !4288, inlinedAt: !4461)
!4467 = !DILocation(line: 43, column: 5, scope: !4288, inlinedAt: !4461)
!4468 = !DILocation(line: 86, column: 10, scope: !4456)
!4469 = !DILocation(line: 86, column: 3, scope: !4456)
!4470 = distinct !DISubprogram(name: "xcalloc", scope: !4278, file: !4278, line: 93, type: !4264, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !274, retainedNodes: !4471)
!4471 = !{!4472, !4473, !4474}
!4472 = !DILocalVariable(name: "n", arg: 1, scope: !4470, file: !4278, line: 93, type: !76)
!4473 = !DILocalVariable(name: "s", arg: 2, scope: !4470, file: !4278, line: 93, type: !76)
!4474 = !DILocalVariable(name: "p", scope: !4470, file: !4278, line: 95, type: !74)
!4475 = !DILocation(line: 93, column: 17, scope: !4470)
!4476 = !DILocation(line: 93, column: 27, scope: !4470)
!4477 = !DILocation(line: 100, column: 7, scope: !4478)
!4478 = distinct !DILexicalBlock(scope: !4470, file: !4278, line: 100, column: 7)
!4479 = !DILocation(line: 101, column: 7, scope: !4478)
!4480 = !DILocation(line: 101, column: 18, scope: !4478)
!4481 = !DILocation(line: 95, column: 9, scope: !4470)
!4482 = !DILocation(line: 101, column: 16, scope: !4478)
!4483 = !DILocation(line: 100, column: 7, scope: !4470)
!4484 = !DILocation(line: 102, column: 5, scope: !4478)
!4485 = !DILocation(line: 103, column: 3, scope: !4470)
!4486 = distinct !DISubprogram(name: "xmemdup", scope: !4278, file: !4278, line: 111, type: !4487, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !274, retainedNodes: !4489)
!4487 = !DISubroutineType(types: !4488)
!4488 = !{!74, !2235, !76}
!4489 = !{!4490, !4491}
!4490 = !DILocalVariable(name: "p", arg: 1, scope: !4486, file: !4278, line: 111, type: !2235)
!4491 = !DILocalVariable(name: "s", arg: 2, scope: !4486, file: !4278, line: 111, type: !76)
!4492 = !DILocation(line: 111, column: 22, scope: !4486)
!4493 = !DILocation(line: 111, column: 32, scope: !4486)
!4494 = !DILocation(line: 39, column: 17, scope: !4277, inlinedAt: !4495)
!4495 = distinct !DILocation(line: 113, column: 18, scope: !4486)
!4496 = !DILocation(line: 41, column: 13, scope: !4277, inlinedAt: !4495)
!4497 = !DILocation(line: 41, column: 9, scope: !4277, inlinedAt: !4495)
!4498 = !DILocation(line: 42, column: 8, scope: !4288, inlinedAt: !4495)
!4499 = !DILocation(line: 42, column: 15, scope: !4288, inlinedAt: !4495)
!4500 = !DILocation(line: 42, column: 10, scope: !4288, inlinedAt: !4495)
!4501 = !DILocation(line: 43, column: 5, scope: !4288, inlinedAt: !4495)
!4502 = !DILocation(line: 113, column: 10, scope: !4486)
!4503 = !DILocation(line: 113, column: 3, scope: !4486)
!4504 = distinct !DISubprogram(name: "xstrdup", scope: !4278, file: !4278, line: 119, type: !3579, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !274, retainedNodes: !4505)
!4505 = !{!4506}
!4506 = !DILocalVariable(name: "string", arg: 1, scope: !4504, file: !4278, line: 119, type: !79)
!4507 = !DILocation(line: 119, column: 22, scope: !4504)
!4508 = !DILocation(line: 121, column: 27, scope: !4504)
!4509 = !DILocation(line: 121, column: 43, scope: !4504)
!4510 = !DILocation(line: 111, column: 22, scope: !4486, inlinedAt: !4511)
!4511 = distinct !DILocation(line: 121, column: 10, scope: !4504)
!4512 = !DILocation(line: 111, column: 32, scope: !4486, inlinedAt: !4511)
!4513 = !DILocation(line: 39, column: 17, scope: !4277, inlinedAt: !4514)
!4514 = distinct !DILocation(line: 113, column: 18, scope: !4486, inlinedAt: !4511)
!4515 = !DILocation(line: 41, column: 13, scope: !4277, inlinedAt: !4514)
!4516 = !DILocation(line: 41, column: 9, scope: !4277, inlinedAt: !4514)
!4517 = !DILocation(line: 42, column: 8, scope: !4288, inlinedAt: !4514)
!4518 = !DILocation(line: 42, column: 15, scope: !4288, inlinedAt: !4514)
!4519 = !DILocation(line: 42, column: 10, scope: !4288, inlinedAt: !4514)
!4520 = !DILocation(line: 43, column: 5, scope: !4288, inlinedAt: !4514)
!4521 = !DILocation(line: 113, column: 10, scope: !4486, inlinedAt: !4511)
!4522 = !DILocation(line: 121, column: 3, scope: !4504)
!4523 = distinct !DISubprogram(name: "xalloc_die", scope: !4524, file: !4524, line: 32, type: !165, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !290, retainedNodes: !152)
!4524 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4525 = !DILocation(line: 34, column: 10, scope: !4523)
!4526 = !DILocation(line: 34, column: 33, scope: !4523)
!4527 = !DILocation(line: 34, column: 3, scope: !4523)
!4528 = !DILocation(line: 40, column: 3, scope: !4523)
!4529 = distinct !DISubprogram(name: "xmemcoll", scope: !4530, file: !4530, line: 54, type: !4531, isLocal: false, isDefinition: true, scopeLine: 55, flags: DIFlagPrototyped, isOptimized: true, unit: !292, retainedNodes: !4533)
!4530 = !DIFile(filename: "lib/xmemcoll.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4531 = !DISubroutineType(types: !4532)
!4532 = !{!83, !82, !76, !82, !76}
!4533 = !{!4534, !4535, !4536, !4537, !4538, !4539}
!4534 = !DILocalVariable(name: "s1", arg: 1, scope: !4529, file: !4530, line: 54, type: !82)
!4535 = !DILocalVariable(name: "s1len", arg: 2, scope: !4529, file: !4530, line: 54, type: !76)
!4536 = !DILocalVariable(name: "s2", arg: 3, scope: !4529, file: !4530, line: 54, type: !82)
!4537 = !DILocalVariable(name: "s2len", arg: 4, scope: !4529, file: !4530, line: 54, type: !76)
!4538 = !DILocalVariable(name: "diff", scope: !4529, file: !4530, line: 56, type: !83)
!4539 = !DILocalVariable(name: "collation_errno", scope: !4529, file: !4530, line: 57, type: !83)
!4540 = !DILocation(line: 54, column: 17, scope: !4529)
!4541 = !DILocation(line: 54, column: 28, scope: !4529)
!4542 = !DILocation(line: 54, column: 41, scope: !4529)
!4543 = !DILocation(line: 54, column: 52, scope: !4529)
!4544 = !DILocation(line: 56, column: 14, scope: !4529)
!4545 = !DILocation(line: 56, column: 7, scope: !4529)
!4546 = !DILocation(line: 57, column: 25, scope: !4529)
!4547 = !DILocation(line: 57, column: 7, scope: !4529)
!4548 = !DILocation(line: 58, column: 7, scope: !4549)
!4549 = distinct !DILexicalBlock(scope: !4529, file: !4530, line: 58, column: 7)
!4550 = !DILocation(line: 58, column: 7, scope: !4529)
!4551 = !DILocalVariable(name: "collation_errno", arg: 1, scope: !4552, file: !4530, line: 35, type: !83)
!4552 = distinct !DISubprogram(name: "collate_error", scope: !4530, file: !4530, line: 35, type: !4553, isLocal: true, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: true, unit: !292, retainedNodes: !4555)
!4553 = !DISubroutineType(types: !4554)
!4554 = !{null, !83, !79, !76, !79, !76}
!4555 = !{!4551, !4556, !4557, !4558, !4559}
!4556 = !DILocalVariable(name: "s1", arg: 2, scope: !4552, file: !4530, line: 36, type: !79)
!4557 = !DILocalVariable(name: "s1len", arg: 3, scope: !4552, file: !4530, line: 36, type: !76)
!4558 = !DILocalVariable(name: "s2", arg: 4, scope: !4552, file: !4530, line: 37, type: !79)
!4559 = !DILocalVariable(name: "s2len", arg: 5, scope: !4552, file: !4530, line: 37, type: !76)
!4560 = !DILocation(line: 35, column: 20, scope: !4552, inlinedAt: !4561)
!4561 = distinct !DILocation(line: 59, column: 5, scope: !4549)
!4562 = !DILocation(line: 36, column: 28, scope: !4552, inlinedAt: !4561)
!4563 = !DILocation(line: 36, column: 39, scope: !4552, inlinedAt: !4561)
!4564 = !DILocation(line: 37, column: 28, scope: !4552, inlinedAt: !4561)
!4565 = !DILocation(line: 37, column: 39, scope: !4552, inlinedAt: !4561)
!4566 = !DILocation(line: 39, column: 30, scope: !4552, inlinedAt: !4561)
!4567 = !DILocation(line: 39, column: 3, scope: !4552, inlinedAt: !4561)
!4568 = !DILocation(line: 40, column: 16, scope: !4552, inlinedAt: !4561)
!4569 = !DILocation(line: 40, column: 3, scope: !4552, inlinedAt: !4561)
!4570 = !DILocation(line: 41, column: 10, scope: !4552, inlinedAt: !4561)
!4571 = !DILocation(line: 42, column: 10, scope: !4552, inlinedAt: !4561)
!4572 = !DILocation(line: 43, column: 10, scope: !4552, inlinedAt: !4561)
!4573 = !DILocation(line: 44, column: 10, scope: !4552, inlinedAt: !4561)
!4574 = !DILocation(line: 41, column: 3, scope: !4552, inlinedAt: !4561)
!4575 = !DILocation(line: 59, column: 5, scope: !4549)
!4576 = !DILocation(line: 60, column: 3, scope: !4529)
!4577 = distinct !DISubprogram(name: "xmemcoll0", scope: !4530, file: !4530, line: 69, type: !4578, isLocal: false, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: true, unit: !292, retainedNodes: !4580)
!4578 = !DISubroutineType(types: !4579)
!4579 = !{!83, !79, !76, !79, !76}
!4580 = !{!4581, !4582, !4583, !4584, !4585, !4586}
!4581 = !DILocalVariable(name: "s1", arg: 1, scope: !4577, file: !4530, line: 69, type: !79)
!4582 = !DILocalVariable(name: "s1size", arg: 2, scope: !4577, file: !4530, line: 69, type: !76)
!4583 = !DILocalVariable(name: "s2", arg: 3, scope: !4577, file: !4530, line: 69, type: !79)
!4584 = !DILocalVariable(name: "s2size", arg: 4, scope: !4577, file: !4530, line: 69, type: !76)
!4585 = !DILocalVariable(name: "diff", scope: !4577, file: !4530, line: 71, type: !83)
!4586 = !DILocalVariable(name: "collation_errno", scope: !4577, file: !4530, line: 72, type: !83)
!4587 = !DILocation(line: 69, column: 24, scope: !4577)
!4588 = !DILocation(line: 69, column: 35, scope: !4577)
!4589 = !DILocation(line: 69, column: 55, scope: !4577)
!4590 = !DILocation(line: 69, column: 66, scope: !4577)
!4591 = !DILocation(line: 71, column: 14, scope: !4577)
!4592 = !DILocation(line: 71, column: 7, scope: !4577)
!4593 = !DILocation(line: 72, column: 25, scope: !4577)
!4594 = !DILocation(line: 72, column: 7, scope: !4577)
!4595 = !DILocation(line: 73, column: 7, scope: !4596)
!4596 = distinct !DILexicalBlock(scope: !4577, file: !4530, line: 73, column: 7)
!4597 = !DILocation(line: 73, column: 7, scope: !4577)
!4598 = !DILocation(line: 74, column: 48, scope: !4596)
!4599 = !DILocation(line: 74, column: 64, scope: !4596)
!4600 = !DILocation(line: 35, column: 20, scope: !4552, inlinedAt: !4601)
!4601 = distinct !DILocation(line: 74, column: 5, scope: !4596)
!4602 = !DILocation(line: 36, column: 28, scope: !4552, inlinedAt: !4601)
!4603 = !DILocation(line: 36, column: 39, scope: !4552, inlinedAt: !4601)
!4604 = !DILocation(line: 37, column: 28, scope: !4552, inlinedAt: !4601)
!4605 = !DILocation(line: 37, column: 39, scope: !4552, inlinedAt: !4601)
!4606 = !DILocation(line: 39, column: 30, scope: !4552, inlinedAt: !4601)
!4607 = !DILocation(line: 39, column: 3, scope: !4552, inlinedAt: !4601)
!4608 = !DILocation(line: 40, column: 16, scope: !4552, inlinedAt: !4601)
!4609 = !DILocation(line: 40, column: 3, scope: !4552, inlinedAt: !4601)
!4610 = !DILocation(line: 41, column: 10, scope: !4552, inlinedAt: !4601)
!4611 = !DILocation(line: 42, column: 10, scope: !4552, inlinedAt: !4601)
!4612 = !DILocation(line: 43, column: 10, scope: !4552, inlinedAt: !4601)
!4613 = !DILocation(line: 44, column: 10, scope: !4552, inlinedAt: !4601)
!4614 = !DILocation(line: 41, column: 3, scope: !4552, inlinedAt: !4601)
!4615 = !DILocation(line: 74, column: 5, scope: !4596)
!4616 = !DILocation(line: 75, column: 3, scope: !4577)
!4617 = distinct !DISubprogram(name: "xstrtoul", scope: !4618, file: !4618, line: 88, type: !4619, isLocal: false, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: true, unit: !294, retainedNodes: !4623)
!4618 = !DIFile(filename: "./lib/xstrtol.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4619 = !DISubroutineType(types: !4620)
!4620 = !{!4621, !79, !799, !83, !4622, !79}
!4621 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !21, line: 39, baseType: !20)
!4622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!4623 = !{!4624, !4625, !4626, !4627, !4628, !4629, !4630, !4631, !4632, !4633, !4636, !4637, !4640, !4641}
!4624 = !DILocalVariable(name: "s", arg: 1, scope: !4617, file: !4618, line: 88, type: !79)
!4625 = !DILocalVariable(name: "ptr", arg: 2, scope: !4617, file: !4618, line: 88, type: !799)
!4626 = !DILocalVariable(name: "strtol_base", arg: 3, scope: !4617, file: !4618, line: 88, type: !83)
!4627 = !DILocalVariable(name: "val", arg: 4, scope: !4617, file: !4618, line: 89, type: !4622)
!4628 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !4617, file: !4618, line: 89, type: !79)
!4629 = !DILocalVariable(name: "t_ptr", scope: !4617, file: !4618, line: 91, type: !82)
!4630 = !DILocalVariable(name: "p", scope: !4617, file: !4618, line: 92, type: !799)
!4631 = !DILocalVariable(name: "tmp", scope: !4617, file: !4618, line: 93, type: !78)
!4632 = !DILocalVariable(name: "err", scope: !4617, file: !4618, line: 94, type: !4621)
!4633 = !DILocalVariable(name: "q", scope: !4634, file: !4618, line: 104, type: !79)
!4634 = distinct !DILexicalBlock(scope: !4635, file: !4618, line: 103, column: 5)
!4635 = distinct !DILexicalBlock(scope: !4617, file: !4618, line: 102, column: 7)
!4636 = !DILocalVariable(name: "ch", scope: !4634, file: !4618, line: 105, type: !85)
!4637 = !DILocalVariable(name: "base", scope: !4638, file: !4618, line: 141, type: !83)
!4638 = distinct !DILexicalBlock(scope: !4639, file: !4618, line: 140, column: 5)
!4639 = distinct !DILexicalBlock(scope: !4617, file: !4618, line: 139, column: 7)
!4640 = !DILocalVariable(name: "suffixes", scope: !4638, file: !4618, line: 142, type: !83)
!4641 = !DILocalVariable(name: "overflow", scope: !4638, file: !4618, line: 143, type: !4621)
!4642 = !DILocation(line: 88, column: 24, scope: !4617)
!4643 = !DILocation(line: 88, column: 34, scope: !4617)
!4644 = !DILocation(line: 88, column: 43, scope: !4617)
!4645 = !DILocation(line: 89, column: 24, scope: !4617)
!4646 = !DILocation(line: 89, column: 41, scope: !4617)
!4647 = !DILocation(line: 91, column: 3, scope: !4617)
!4648 = !DILocation(line: 94, column: 16, scope: !4617)
!4649 = !DILocation(line: 96, column: 3, scope: !4650)
!4650 = distinct !DILexicalBlock(scope: !4651, file: !4618, line: 96, column: 3)
!4651 = distinct !DILexicalBlock(scope: !4617, file: !4618, line: 96, column: 3)
!4652 = !DILocation(line: 98, column: 8, scope: !4617)
!4653 = !DILocation(line: 92, column: 10, scope: !4617)
!4654 = !DILocation(line: 100, column: 3, scope: !4617)
!4655 = !DILocation(line: 100, column: 9, scope: !4617)
!4656 = !DILocation(line: 104, column: 19, scope: !4634)
!4657 = !DILocation(line: 105, column: 21, scope: !4634)
!4658 = !DILocation(line: 106, column: 14, scope: !4634)
!4659 = !DILocation(line: 106, column: 7, scope: !4634)
!4660 = !DILocation(line: 0, scope: !4634)
!4661 = !DILocation(line: 107, column: 15, scope: !4634)
!4662 = distinct !{!4662, !4659, !4663}
!4663 = !DILocation(line: 107, column: 17, scope: !4634)
!4664 = !DILocation(line: 108, column: 14, scope: !4665)
!4665 = distinct !DILexicalBlock(scope: !4634, file: !4618, line: 108, column: 11)
!4666 = !DILocation(line: 112, column: 9, scope: !4617)
!4667 = !DILocation(line: 93, column: 14, scope: !4617)
!4668 = !DILocation(line: 114, column: 7, scope: !4669)
!4669 = distinct !DILexicalBlock(scope: !4617, file: !4618, line: 114, column: 7)
!4670 = !DILocation(line: 114, column: 10, scope: !4669)
!4671 = !DILocation(line: 114, column: 7, scope: !4617)
!4672 = !DILocation(line: 118, column: 11, scope: !4673)
!4673 = distinct !DILexicalBlock(scope: !4674, file: !4618, line: 118, column: 11)
!4674 = distinct !DILexicalBlock(scope: !4669, file: !4618, line: 115, column: 5)
!4675 = !DILocation(line: 118, column: 26, scope: !4673)
!4676 = !DILocation(line: 118, column: 29, scope: !4673)
!4677 = !DILocation(line: 118, column: 33, scope: !4673)
!4678 = !DILocation(line: 118, column: 36, scope: !4673)
!4679 = !DILocation(line: 118, column: 11, scope: !4674)
!4680 = !DILocation(line: 123, column: 12, scope: !4681)
!4681 = distinct !DILexicalBlock(scope: !4669, file: !4618, line: 123, column: 12)
!4682 = !DILocation(line: 123, column: 12, scope: !4669)
!4683 = !DILocation(line: 128, column: 5, scope: !4684)
!4684 = distinct !DILexicalBlock(scope: !4681, file: !4618, line: 124, column: 5)
!4685 = !DILocation(line: 0, scope: !4617)
!4686 = !DILocation(line: 133, column: 8, scope: !4687)
!4687 = distinct !DILexicalBlock(scope: !4617, file: !4618, line: 133, column: 7)
!4688 = !DILocation(line: 133, column: 7, scope: !4617)
!4689 = !DILocation(line: 135, column: 12, scope: !4690)
!4690 = distinct !DILexicalBlock(scope: !4687, file: !4618, line: 134, column: 5)
!4691 = !DILocation(line: 136, column: 7, scope: !4690)
!4692 = !DILocation(line: 139, column: 7, scope: !4639)
!4693 = !DILocation(line: 139, column: 11, scope: !4639)
!4694 = !DILocation(line: 139, column: 7, scope: !4617)
!4695 = !DILocation(line: 141, column: 11, scope: !4638)
!4696 = !DILocation(line: 142, column: 11, scope: !4638)
!4697 = !DILocation(line: 145, column: 12, scope: !4698)
!4698 = distinct !DILexicalBlock(scope: !4638, file: !4618, line: 145, column: 11)
!4699 = !DILocation(line: 145, column: 11, scope: !4638)
!4700 = !DILocation(line: 147, column: 16, scope: !4701)
!4701 = distinct !DILexicalBlock(scope: !4698, file: !4618, line: 146, column: 9)
!4702 = !DILocation(line: 148, column: 22, scope: !4701)
!4703 = !DILocation(line: 148, column: 11, scope: !4701)
!4704 = !DILocation(line: 151, column: 7, scope: !4638)
!4705 = !DILocation(line: 163, column: 15, scope: !4706)
!4706 = distinct !DILexicalBlock(scope: !4707, file: !4618, line: 163, column: 15)
!4707 = distinct !DILexicalBlock(scope: !4638, file: !4618, line: 152, column: 9)
!4708 = !DILocation(line: 163, column: 15, scope: !4707)
!4709 = !DILocation(line: 164, column: 21, scope: !4706)
!4710 = !DILocation(line: 164, column: 13, scope: !4706)
!4711 = !DILocation(line: 167, column: 21, scope: !4712)
!4712 = distinct !DILexicalBlock(scope: !4713, file: !4618, line: 167, column: 21)
!4713 = distinct !DILexicalBlock(scope: !4706, file: !4618, line: 165, column: 15)
!4714 = !DILocation(line: 167, column: 29, scope: !4712)
!4715 = !DILocation(line: 167, column: 21, scope: !4713)
!4716 = !DILocation(line: 175, column: 17, scope: !4713)
!4717 = !DILocation(line: 179, column: 7, scope: !4638)
!4718 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !4719, file: !4618, line: 60, type: !83)
!4719 = distinct !DISubprogram(name: "bkm_scale", scope: !4618, file: !4618, line: 60, type: !4720, isLocal: true, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !294, retainedNodes: !4722)
!4720 = !DISubroutineType(types: !4721)
!4721 = !{!4621, !4622, !83}
!4722 = !{!4723, !4718}
!4723 = !DILocalVariable(name: "x", arg: 1, scope: !4719, file: !4618, line: 60, type: !4622)
!4724 = !DILocation(line: 60, column: 31, scope: !4719, inlinedAt: !4725)
!4725 = distinct !DILocation(line: 182, column: 22, scope: !4726)
!4726 = distinct !DILexicalBlock(scope: !4638, file: !4618, line: 180, column: 9)
!4727 = !DILocation(line: 67, column: 39, scope: !4728, inlinedAt: !4725)
!4728 = distinct !DILexicalBlock(scope: !4719, file: !4618, line: 67, column: 7)
!4729 = !DILocation(line: 72, column: 6, scope: !4719, inlinedAt: !4725)
!4730 = !DILocation(line: 67, column: 7, scope: !4719, inlinedAt: !4725)
!4731 = !DILocation(line: 143, column: 20, scope: !4638)
!4732 = !DILocation(line: 183, column: 11, scope: !4726)
!4733 = !DILocation(line: 60, column: 31, scope: !4719, inlinedAt: !4734)
!4734 = distinct !DILocation(line: 189, column: 22, scope: !4726)
!4735 = !DILocation(line: 67, column: 39, scope: !4728, inlinedAt: !4734)
!4736 = !DILocation(line: 72, column: 6, scope: !4719, inlinedAt: !4734)
!4737 = !DILocation(line: 67, column: 7, scope: !4719, inlinedAt: !4734)
!4738 = !DILocation(line: 190, column: 11, scope: !4726)
!4739 = !DILocalVariable(name: "power", arg: 3, scope: !4740, file: !4618, line: 77, type: !83)
!4740 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !4618, file: !4618, line: 77, type: !4741, isLocal: true, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: true, unit: !294, retainedNodes: !4743)
!4741 = !DISubroutineType(types: !4742)
!4742 = !{!4621, !4622, !83, !83}
!4743 = !{!4744, !4745, !4739, !4746}
!4744 = !DILocalVariable(name: "x", arg: 1, scope: !4740, file: !4618, line: 77, type: !4622)
!4745 = !DILocalVariable(name: "base", arg: 2, scope: !4740, file: !4618, line: 77, type: !83)
!4746 = !DILocalVariable(name: "err", scope: !4740, file: !4618, line: 79, type: !4621)
!4747 = !DILocation(line: 77, column: 50, scope: !4740, inlinedAt: !4748)
!4748 = distinct !DILocation(line: 197, column: 22, scope: !4726)
!4749 = !DILocation(line: 79, column: 16, scope: !4740, inlinedAt: !4748)
!4750 = !DILocation(line: 67, column: 39, scope: !4728, inlinedAt: !4751)
!4751 = distinct !DILocation(line: 81, column: 12, scope: !4740, inlinedAt: !4748)
!4752 = !DILocation(line: 72, column: 6, scope: !4719, inlinedAt: !4751)
!4753 = !DILocation(line: 67, column: 7, scope: !4719, inlinedAt: !4751)
!4754 = !DILocation(line: 81, column: 9, scope: !4740, inlinedAt: !4748)
!4755 = !DILocation(line: 241, column: 11, scope: !4638)
!4756 = !DILocation(line: 77, column: 50, scope: !4740, inlinedAt: !4757)
!4757 = distinct !DILocation(line: 202, column: 22, scope: !4726)
!4758 = !DILocation(line: 79, column: 16, scope: !4740, inlinedAt: !4757)
!4759 = !DILocation(line: 67, column: 39, scope: !4728, inlinedAt: !4760)
!4760 = distinct !DILocation(line: 81, column: 12, scope: !4740, inlinedAt: !4757)
!4761 = !DILocation(line: 72, column: 6, scope: !4719, inlinedAt: !4760)
!4762 = !DILocation(line: 67, column: 7, scope: !4719, inlinedAt: !4760)
!4763 = !DILocation(line: 81, column: 9, scope: !4740, inlinedAt: !4757)
!4764 = !DILocation(line: 77, column: 50, scope: !4740, inlinedAt: !4765)
!4765 = distinct !DILocation(line: 207, column: 22, scope: !4726)
!4766 = !DILocation(line: 79, column: 16, scope: !4740, inlinedAt: !4765)
!4767 = !DILocation(line: 67, column: 39, scope: !4728, inlinedAt: !4768)
!4768 = distinct !DILocation(line: 81, column: 12, scope: !4740, inlinedAt: !4765)
!4769 = !DILocation(line: 72, column: 6, scope: !4719, inlinedAt: !4768)
!4770 = !DILocation(line: 67, column: 7, scope: !4719, inlinedAt: !4768)
!4771 = !DILocation(line: 77, column: 50, scope: !4740, inlinedAt: !4772)
!4772 = distinct !DILocation(line: 212, column: 22, scope: !4726)
!4773 = !DILocation(line: 79, column: 16, scope: !4740, inlinedAt: !4772)
!4774 = !DILocation(line: 67, column: 39, scope: !4728, inlinedAt: !4775)
!4775 = distinct !DILocation(line: 81, column: 12, scope: !4740, inlinedAt: !4772)
!4776 = !DILocation(line: 72, column: 6, scope: !4719, inlinedAt: !4775)
!4777 = !DILocation(line: 67, column: 7, scope: !4719, inlinedAt: !4775)
!4778 = !DILocation(line: 81, column: 9, scope: !4740, inlinedAt: !4772)
!4779 = !DILocation(line: 77, column: 50, scope: !4740, inlinedAt: !4780)
!4780 = distinct !DILocation(line: 216, column: 22, scope: !4726)
!4781 = !DILocation(line: 79, column: 16, scope: !4740, inlinedAt: !4780)
!4782 = !DILocation(line: 67, column: 39, scope: !4728, inlinedAt: !4783)
!4783 = distinct !DILocation(line: 81, column: 12, scope: !4740, inlinedAt: !4780)
!4784 = !DILocation(line: 72, column: 6, scope: !4719, inlinedAt: !4783)
!4785 = !DILocation(line: 67, column: 7, scope: !4719, inlinedAt: !4783)
!4786 = !DILocation(line: 81, column: 9, scope: !4740, inlinedAt: !4780)
!4787 = !DILocation(line: 77, column: 50, scope: !4740, inlinedAt: !4788)
!4788 = distinct !DILocation(line: 221, column: 22, scope: !4726)
!4789 = !DILocation(line: 79, column: 16, scope: !4740, inlinedAt: !4788)
!4790 = !DILocation(line: 67, column: 39, scope: !4728, inlinedAt: !4791)
!4791 = distinct !DILocation(line: 81, column: 12, scope: !4740, inlinedAt: !4788)
!4792 = !DILocation(line: 72, column: 6, scope: !4719, inlinedAt: !4791)
!4793 = !DILocation(line: 67, column: 7, scope: !4719, inlinedAt: !4791)
!4794 = !DILocation(line: 81, column: 9, scope: !4740, inlinedAt: !4788)
!4795 = !DILocation(line: 60, column: 31, scope: !4719, inlinedAt: !4796)
!4796 = distinct !DILocation(line: 225, column: 22, scope: !4726)
!4797 = !DILocation(line: 67, column: 39, scope: !4728, inlinedAt: !4796)
!4798 = !DILocation(line: 72, column: 6, scope: !4719, inlinedAt: !4796)
!4799 = !DILocation(line: 67, column: 7, scope: !4719, inlinedAt: !4796)
!4800 = !DILocation(line: 226, column: 11, scope: !4726)
!4801 = !DILocation(line: 77, column: 50, scope: !4740, inlinedAt: !4802)
!4802 = distinct !DILocation(line: 229, column: 22, scope: !4726)
!4803 = !DILocation(line: 79, column: 16, scope: !4740, inlinedAt: !4802)
!4804 = !DILocation(line: 67, column: 39, scope: !4728, inlinedAt: !4805)
!4805 = distinct !DILocation(line: 81, column: 12, scope: !4740, inlinedAt: !4802)
!4806 = !DILocation(line: 72, column: 6, scope: !4719, inlinedAt: !4805)
!4807 = !DILocation(line: 67, column: 7, scope: !4719, inlinedAt: !4805)
!4808 = !DILocation(line: 81, column: 9, scope: !4740, inlinedAt: !4802)
!4809 = !DILocation(line: 77, column: 50, scope: !4740, inlinedAt: !4810)
!4810 = distinct !DILocation(line: 233, column: 22, scope: !4726)
!4811 = !DILocation(line: 79, column: 16, scope: !4740, inlinedAt: !4810)
!4812 = !DILocation(line: 67, column: 39, scope: !4728, inlinedAt: !4813)
!4813 = distinct !DILocation(line: 81, column: 12, scope: !4740, inlinedAt: !4810)
!4814 = !DILocation(line: 72, column: 6, scope: !4719, inlinedAt: !4813)
!4815 = !DILocation(line: 67, column: 7, scope: !4719, inlinedAt: !4813)
!4816 = !DILocation(line: 81, column: 9, scope: !4740, inlinedAt: !4810)
!4817 = !DILocation(line: 237, column: 16, scope: !4726)
!4818 = !DILocation(line: 238, column: 22, scope: !4726)
!4819 = !DILocation(line: 238, column: 11, scope: !4726)
!4820 = !DILocation(line: 0, scope: !4673)
!4821 = !DILocation(line: 0, scope: !4726)
!4822 = !DILocation(line: 242, column: 10, scope: !4638)
!4823 = !DILocation(line: 243, column: 11, scope: !4824)
!4824 = distinct !DILexicalBlock(scope: !4638, file: !4618, line: 243, column: 11)
!4825 = !DILocation(line: 244, column: 13, scope: !4824)
!4826 = !DILocation(line: 243, column: 11, scope: !4638)
!4827 = !DILocation(line: 119, column: 13, scope: !4673)
!4828 = !DILocation(line: 247, column: 8, scope: !4617)
!4829 = !DILocation(line: 248, column: 3, scope: !4617)
!4830 = !DILocation(line: 0, scope: !4665)
!4831 = !DILocation(line: 249, column: 1, scope: !4617)
!4832 = distinct !DISubprogram(name: "rpl_calloc", scope: !4833, file: !4833, line: 42, type: !4264, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !298, retainedNodes: !4834)
!4833 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4834 = !{!4835, !4836, !4837, !4838}
!4835 = !DILocalVariable(name: "n", arg: 1, scope: !4832, file: !4833, line: 42, type: !76)
!4836 = !DILocalVariable(name: "s", arg: 2, scope: !4832, file: !4833, line: 42, type: !76)
!4837 = !DILocalVariable(name: "result", scope: !4832, file: !4833, line: 44, type: !74)
!4838 = !DILocalVariable(name: "bytes", scope: !4839, file: !4833, line: 56, type: !76)
!4839 = distinct !DILexicalBlock(scope: !4840, file: !4833, line: 53, column: 5)
!4840 = distinct !DILexicalBlock(scope: !4832, file: !4833, line: 47, column: 7)
!4841 = !DILocation(line: 42, column: 20, scope: !4832)
!4842 = !DILocation(line: 42, column: 30, scope: !4832)
!4843 = !DILocation(line: 47, column: 9, scope: !4840)
!4844 = !DILocation(line: 47, column: 19, scope: !4840)
!4845 = !DILocation(line: 47, column: 14, scope: !4840)
!4846 = !DILocation(line: 56, column: 24, scope: !4839)
!4847 = !DILocation(line: 56, column: 14, scope: !4839)
!4848 = !DILocation(line: 57, column: 17, scope: !4849)
!4849 = distinct !DILexicalBlock(scope: !4839, file: !4833, line: 57, column: 11)
!4850 = !DILocation(line: 57, column: 21, scope: !4849)
!4851 = !DILocation(line: 57, column: 11, scope: !4839)
!4852 = !DILocation(line: 59, column: 11, scope: !4853)
!4853 = distinct !DILexicalBlock(scope: !4849, file: !4833, line: 58, column: 9)
!4854 = !DILocation(line: 59, column: 17, scope: !4853)
!4855 = !DILocation(line: 65, column: 12, scope: !4832)
!4856 = !DILocation(line: 44, column: 9, scope: !4832)
!4857 = !DILocation(line: 72, column: 3, scope: !4832)
!4858 = !DILocation(line: 0, scope: !4853)
!4859 = !DILocation(line: 73, column: 1, scope: !4832)
!4860 = distinct !DISubprogram(name: "rpl_fclose", scope: !4861, file: !4861, line: 58, type: !4862, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !300, retainedNodes: !4898)
!4861 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4862 = !DISubroutineType(types: !4863)
!4863 = !{!83, !4864}
!4864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4865, size: 64)
!4865 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1114, line: 7, baseType: !4866)
!4866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1116, line: 49, size: 1728, elements: !4867)
!4867 = !{!4868, !4869, !4870, !4871, !4872, !4873, !4874, !4875, !4876, !4877, !4878, !4879, !4880, !4881, !4883, !4884, !4885, !4886, !4887, !4888, !4889, !4890, !4891, !4892, !4893, !4894, !4895, !4896, !4897}
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4866, file: !1116, line: 51, baseType: !83, size: 32)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4866, file: !1116, line: 54, baseType: !82, size: 64, offset: 64)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4866, file: !1116, line: 55, baseType: !82, size: 64, offset: 128)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4866, file: !1116, line: 56, baseType: !82, size: 64, offset: 192)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4866, file: !1116, line: 57, baseType: !82, size: 64, offset: 256)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4866, file: !1116, line: 58, baseType: !82, size: 64, offset: 320)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4866, file: !1116, line: 59, baseType: !82, size: 64, offset: 384)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4866, file: !1116, line: 60, baseType: !82, size: 64, offset: 448)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4866, file: !1116, line: 61, baseType: !82, size: 64, offset: 512)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4866, file: !1116, line: 64, baseType: !82, size: 64, offset: 576)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4866, file: !1116, line: 65, baseType: !82, size: 64, offset: 640)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4866, file: !1116, line: 66, baseType: !82, size: 64, offset: 704)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4866, file: !1116, line: 68, baseType: !1131, size: 64, offset: 768)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4866, file: !1116, line: 70, baseType: !4882, size: 64, offset: 832)
!4882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4866, size: 64)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4866, file: !1116, line: 72, baseType: !83, size: 32, offset: 896)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4866, file: !1116, line: 73, baseType: !83, size: 32, offset: 928)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4866, file: !1116, line: 74, baseType: !1138, size: 64, offset: 960)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4866, file: !1116, line: 77, baseType: !84, size: 16, offset: 1024)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4866, file: !1116, line: 78, baseType: !1142, size: 8, offset: 1040)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4866, file: !1116, line: 79, baseType: !1144, size: 8, offset: 1048)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4866, file: !1116, line: 81, baseType: !1148, size: 64, offset: 1088)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4866, file: !1116, line: 89, baseType: !1151, size: 64, offset: 1152)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4866, file: !1116, line: 91, baseType: !1153, size: 64, offset: 1216)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4866, file: !1116, line: 92, baseType: !1156, size: 64, offset: 1280)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4866, file: !1116, line: 93, baseType: !4882, size: 64, offset: 1344)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4866, file: !1116, line: 94, baseType: !74, size: 64, offset: 1408)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4866, file: !1116, line: 95, baseType: !76, size: 64, offset: 1472)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4866, file: !1116, line: 96, baseType: !83, size: 32, offset: 1536)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4866, file: !1116, line: 98, baseType: !1163, size: 160, offset: 1568)
!4898 = !{!4899, !4900, !4901, !4902}
!4899 = !DILocalVariable(name: "fp", arg: 1, scope: !4860, file: !4861, line: 58, type: !4864)
!4900 = !DILocalVariable(name: "saved_errno", scope: !4860, file: !4861, line: 60, type: !83)
!4901 = !DILocalVariable(name: "fd", scope: !4860, file: !4861, line: 61, type: !83)
!4902 = !DILocalVariable(name: "result", scope: !4860, file: !4861, line: 62, type: !83)
!4903 = !DILocation(line: 58, column: 19, scope: !4860)
!4904 = !DILocation(line: 60, column: 7, scope: !4860)
!4905 = !DILocation(line: 62, column: 7, scope: !4860)
!4906 = !DILocation(line: 65, column: 8, scope: !4860)
!4907 = !DILocation(line: 61, column: 7, scope: !4860)
!4908 = !DILocation(line: 66, column: 10, scope: !4909)
!4909 = distinct !DILexicalBlock(scope: !4860, file: !4861, line: 66, column: 7)
!4910 = !DILocation(line: 66, column: 7, scope: !4860)
!4911 = !DILocation(line: 67, column: 12, scope: !4909)
!4912 = !DILocation(line: 67, column: 5, scope: !4909)
!4913 = !DILocation(line: 72, column: 9, scope: !4914)
!4914 = distinct !DILexicalBlock(scope: !4860, file: !4861, line: 72, column: 7)
!4915 = !DILocation(line: 72, column: 23, scope: !4914)
!4916 = !DILocation(line: 72, column: 33, scope: !4914)
!4917 = !DILocation(line: 72, column: 26, scope: !4914)
!4918 = !DILocation(line: 72, column: 59, scope: !4914)
!4919 = !DILocation(line: 73, column: 7, scope: !4914)
!4920 = !DILocation(line: 73, column: 10, scope: !4914)
!4921 = !DILocation(line: 72, column: 7, scope: !4860)
!4922 = !DILocation(line: 100, column: 12, scope: !4860)
!4923 = !DILocation(line: 105, column: 7, scope: !4860)
!4924 = !DILocation(line: 74, column: 19, scope: !4914)
!4925 = !DILocation(line: 105, column: 19, scope: !4926)
!4926 = distinct !DILexicalBlock(scope: !4860, file: !4861, line: 105, column: 7)
!4927 = !DILocation(line: 107, column: 13, scope: !4928)
!4928 = distinct !DILexicalBlock(scope: !4926, file: !4861, line: 106, column: 5)
!4929 = !DILocation(line: 109, column: 5, scope: !4928)
!4930 = !DILocation(line: 0, scope: !4860)
!4931 = !DILocation(line: 112, column: 1, scope: !4860)
!4932 = distinct !DISubprogram(name: "rpl_fflush", scope: !4933, file: !4933, line: 129, type: !4934, isLocal: false, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, unit: !302, retainedNodes: !4970)
!4933 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4934 = !DISubroutineType(types: !4935)
!4935 = !{!83, !4936}
!4936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4937, size: 64)
!4937 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1114, line: 7, baseType: !4938)
!4938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1116, line: 49, size: 1728, elements: !4939)
!4939 = !{!4940, !4941, !4942, !4943, !4944, !4945, !4946, !4947, !4948, !4949, !4950, !4951, !4952, !4953, !4955, !4956, !4957, !4958, !4959, !4960, !4961, !4962, !4963, !4964, !4965, !4966, !4967, !4968, !4969}
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4938, file: !1116, line: 51, baseType: !83, size: 32)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4938, file: !1116, line: 54, baseType: !82, size: 64, offset: 64)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4938, file: !1116, line: 55, baseType: !82, size: 64, offset: 128)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4938, file: !1116, line: 56, baseType: !82, size: 64, offset: 192)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4938, file: !1116, line: 57, baseType: !82, size: 64, offset: 256)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4938, file: !1116, line: 58, baseType: !82, size: 64, offset: 320)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4938, file: !1116, line: 59, baseType: !82, size: 64, offset: 384)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4938, file: !1116, line: 60, baseType: !82, size: 64, offset: 448)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4938, file: !1116, line: 61, baseType: !82, size: 64, offset: 512)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4938, file: !1116, line: 64, baseType: !82, size: 64, offset: 576)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4938, file: !1116, line: 65, baseType: !82, size: 64, offset: 640)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4938, file: !1116, line: 66, baseType: !82, size: 64, offset: 704)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4938, file: !1116, line: 68, baseType: !1131, size: 64, offset: 768)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4938, file: !1116, line: 70, baseType: !4954, size: 64, offset: 832)
!4954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4938, size: 64)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4938, file: !1116, line: 72, baseType: !83, size: 32, offset: 896)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4938, file: !1116, line: 73, baseType: !83, size: 32, offset: 928)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4938, file: !1116, line: 74, baseType: !1138, size: 64, offset: 960)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4938, file: !1116, line: 77, baseType: !84, size: 16, offset: 1024)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4938, file: !1116, line: 78, baseType: !1142, size: 8, offset: 1040)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4938, file: !1116, line: 79, baseType: !1144, size: 8, offset: 1048)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4938, file: !1116, line: 81, baseType: !1148, size: 64, offset: 1088)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4938, file: !1116, line: 89, baseType: !1151, size: 64, offset: 1152)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4938, file: !1116, line: 91, baseType: !1153, size: 64, offset: 1216)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4938, file: !1116, line: 92, baseType: !1156, size: 64, offset: 1280)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4938, file: !1116, line: 93, baseType: !4954, size: 64, offset: 1344)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4938, file: !1116, line: 94, baseType: !74, size: 64, offset: 1408)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4938, file: !1116, line: 95, baseType: !76, size: 64, offset: 1472)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4938, file: !1116, line: 96, baseType: !83, size: 32, offset: 1536)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4938, file: !1116, line: 98, baseType: !1163, size: 160, offset: 1568)
!4970 = !{!4971}
!4971 = !DILocalVariable(name: "stream", arg: 1, scope: !4932, file: !4933, line: 129, type: !4936)
!4972 = !DILocation(line: 129, column: 19, scope: !4932)
!4973 = !DILocation(line: 150, column: 14, scope: !4974)
!4974 = distinct !DILexicalBlock(scope: !4932, file: !4933, line: 150, column: 7)
!4975 = !DILocation(line: 150, column: 22, scope: !4974)
!4976 = !DILocation(line: 150, column: 27, scope: !4974)
!4977 = !DILocation(line: 150, column: 7, scope: !4932)
!4978 = !DILocation(line: 151, column: 12, scope: !4974)
!4979 = !DILocation(line: 151, column: 5, scope: !4974)
!4980 = !DILocalVariable(name: "fp", arg: 1, scope: !4981, file: !4933, line: 41, type: !4936)
!4981 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !4933, file: !4933, line: 41, type: !4982, isLocal: true, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !302, retainedNodes: !4984)
!4982 = !DISubroutineType(types: !4983)
!4983 = !{null, !4936}
!4984 = !{!4980}
!4985 = !DILocation(line: 41, column: 48, scope: !4981, inlinedAt: !4986)
!4986 = distinct !DILocation(line: 156, column: 3, scope: !4932)
!4987 = !DILocation(line: 43, column: 11, scope: !4988, inlinedAt: !4986)
!4988 = distinct !DILexicalBlock(scope: !4981, file: !4933, line: 43, column: 7)
!4989 = !DILocation(line: 43, column: 18, scope: !4988, inlinedAt: !4986)
!4990 = !DILocation(line: 43, column: 7, scope: !4981, inlinedAt: !4986)
!4991 = !DILocation(line: 45, column: 5, scope: !4988, inlinedAt: !4986)
!4992 = !DILocation(line: 158, column: 10, scope: !4932)
!4993 = !DILocation(line: 158, column: 3, scope: !4932)
!4994 = !DILocation(line: 0, scope: !4932)
!4995 = !DILocation(line: 232, column: 1, scope: !4932)
!4996 = distinct !DISubprogram(name: "rpl_fseeko", scope: !4997, file: !4997, line: 28, type: !4998, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !304, retainedNodes: !5034)
!4997 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4998 = !DISubroutineType(types: !4999)
!4999 = !{!83, !5000, !1786, !83}
!5000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5001, size: 64)
!5001 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1114, line: 7, baseType: !5002)
!5002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1116, line: 49, size: 1728, elements: !5003)
!5003 = !{!5004, !5005, !5006, !5007, !5008, !5009, !5010, !5011, !5012, !5013, !5014, !5015, !5016, !5017, !5019, !5020, !5021, !5022, !5023, !5024, !5025, !5026, !5027, !5028, !5029, !5030, !5031, !5032, !5033}
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5002, file: !1116, line: 51, baseType: !83, size: 32)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5002, file: !1116, line: 54, baseType: !82, size: 64, offset: 64)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5002, file: !1116, line: 55, baseType: !82, size: 64, offset: 128)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5002, file: !1116, line: 56, baseType: !82, size: 64, offset: 192)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5002, file: !1116, line: 57, baseType: !82, size: 64, offset: 256)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5002, file: !1116, line: 58, baseType: !82, size: 64, offset: 320)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5002, file: !1116, line: 59, baseType: !82, size: 64, offset: 384)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5002, file: !1116, line: 60, baseType: !82, size: 64, offset: 448)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5002, file: !1116, line: 61, baseType: !82, size: 64, offset: 512)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5002, file: !1116, line: 64, baseType: !82, size: 64, offset: 576)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5002, file: !1116, line: 65, baseType: !82, size: 64, offset: 640)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5002, file: !1116, line: 66, baseType: !82, size: 64, offset: 704)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5002, file: !1116, line: 68, baseType: !1131, size: 64, offset: 768)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5002, file: !1116, line: 70, baseType: !5018, size: 64, offset: 832)
!5018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5002, size: 64)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5002, file: !1116, line: 72, baseType: !83, size: 32, offset: 896)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5002, file: !1116, line: 73, baseType: !83, size: 32, offset: 928)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5002, file: !1116, line: 74, baseType: !1138, size: 64, offset: 960)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5002, file: !1116, line: 77, baseType: !84, size: 16, offset: 1024)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5002, file: !1116, line: 78, baseType: !1142, size: 8, offset: 1040)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5002, file: !1116, line: 79, baseType: !1144, size: 8, offset: 1048)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5002, file: !1116, line: 81, baseType: !1148, size: 64, offset: 1088)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5002, file: !1116, line: 89, baseType: !1151, size: 64, offset: 1152)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5002, file: !1116, line: 91, baseType: !1153, size: 64, offset: 1216)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5002, file: !1116, line: 92, baseType: !1156, size: 64, offset: 1280)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5002, file: !1116, line: 93, baseType: !5018, size: 64, offset: 1344)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5002, file: !1116, line: 94, baseType: !74, size: 64, offset: 1408)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5002, file: !1116, line: 95, baseType: !76, size: 64, offset: 1472)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5002, file: !1116, line: 96, baseType: !83, size: 32, offset: 1536)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5002, file: !1116, line: 98, baseType: !1163, size: 160, offset: 1568)
!5034 = !{!5035, !5036, !5037, !5038}
!5035 = !DILocalVariable(name: "fp", arg: 1, scope: !4996, file: !4997, line: 28, type: !5000)
!5036 = !DILocalVariable(name: "offset", arg: 2, scope: !4996, file: !4997, line: 28, type: !1786)
!5037 = !DILocalVariable(name: "whence", arg: 3, scope: !4996, file: !4997, line: 28, type: !83)
!5038 = !DILocalVariable(name: "pos", scope: !5039, file: !4997, line: 117, type: !1786)
!5039 = distinct !DILexicalBlock(scope: !5040, file: !4997, line: 113, column: 5)
!5040 = distinct !DILexicalBlock(scope: !4996, file: !4997, line: 52, column: 7)
!5041 = !DILocation(line: 28, column: 15, scope: !4996)
!5042 = !DILocation(line: 28, column: 25, scope: !4996)
!5043 = !DILocation(line: 28, column: 37, scope: !4996)
!5044 = !DILocation(line: 52, column: 11, scope: !5040)
!5045 = !DILocation(line: 52, column: 31, scope: !5040)
!5046 = !DILocation(line: 52, column: 24, scope: !5040)
!5047 = !DILocation(line: 53, column: 7, scope: !5040)
!5048 = !DILocation(line: 53, column: 14, scope: !5040)
!5049 = !DILocation(line: 53, column: 35, scope: !5040)
!5050 = !{!1171, !742, i64 32}
!5051 = !DILocation(line: 53, column: 28, scope: !5040)
!5052 = !DILocation(line: 54, column: 7, scope: !5040)
!5053 = !DILocation(line: 54, column: 14, scope: !5040)
!5054 = !{!1171, !742, i64 72}
!5055 = !DILocation(line: 54, column: 28, scope: !5040)
!5056 = !DILocation(line: 52, column: 7, scope: !4996)
!5057 = !DILocation(line: 117, column: 26, scope: !5039)
!5058 = !DILocation(line: 117, column: 19, scope: !5039)
!5059 = !DILocation(line: 117, column: 13, scope: !5039)
!5060 = !DILocation(line: 118, column: 15, scope: !5061)
!5061 = distinct !DILexicalBlock(scope: !5039, file: !4997, line: 118, column: 11)
!5062 = !DILocation(line: 118, column: 11, scope: !5039)
!5063 = !DILocation(line: 129, column: 11, scope: !5039)
!5064 = !DILocation(line: 129, column: 18, scope: !5039)
!5065 = !DILocation(line: 130, column: 11, scope: !5039)
!5066 = !DILocation(line: 130, column: 19, scope: !5039)
!5067 = !{!1171, !844, i64 144}
!5068 = !DILocation(line: 161, column: 7, scope: !5039)
!5069 = !DILocation(line: 163, column: 10, scope: !4996)
!5070 = !DILocation(line: 163, column: 3, scope: !4996)
!5071 = !DILocation(line: 0, scope: !4996)
!5072 = !DILocation(line: 164, column: 1, scope: !4996)
!5073 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !5074, file: !5074, line: 385, type: !5075, isLocal: false, isDefinition: true, scopeLine: 386, flags: DIFlagPrototyped, isOptimized: true, unit: !306, retainedNodes: !5089)
!5074 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!5075 = !DISubroutineType(types: !5076)
!5076 = !{!76, !5077, !79, !76, !5078}
!5077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2556, size: 64)
!5078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5079, size: 64)
!5079 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2542, line: 6, baseType: !5080)
!5080 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2544, line: 21, baseType: !5081)
!5081 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2544, line: 13, size: 64, elements: !5082)
!5082 = !{!5083, !5084}
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !5081, file: !2544, line: 15, baseType: !83, size: 32)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !5081, file: !2544, line: 20, baseType: !5085, size: 32, offset: 32)
!5085 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5081, file: !2544, line: 16, size: 32, elements: !5086)
!5086 = !{!5087, !5088}
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !5085, file: !2544, line: 18, baseType: !6, size: 32)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !5085, file: !2544, line: 19, baseType: !2553, size: 32)
!5089 = !{!5090, !5091, !5092, !5093, !5094, !5095, !5096}
!5090 = !DILocalVariable(name: "pwc", arg: 1, scope: !5073, file: !5074, line: 385, type: !5077)
!5091 = !DILocalVariable(name: "s", arg: 2, scope: !5073, file: !5074, line: 385, type: !79)
!5092 = !DILocalVariable(name: "n", arg: 3, scope: !5073, file: !5074, line: 385, type: !76)
!5093 = !DILocalVariable(name: "ps", arg: 4, scope: !5073, file: !5074, line: 385, type: !5078)
!5094 = !DILocalVariable(name: "ret", scope: !5073, file: !5074, line: 387, type: !76)
!5095 = !DILocalVariable(name: "wc", scope: !5073, file: !5074, line: 388, type: !2556)
!5096 = !DILocalVariable(name: "uc", scope: !5097, file: !5074, line: 449, type: !85)
!5097 = distinct !DILexicalBlock(scope: !5098, file: !5074, line: 448, column: 5)
!5098 = distinct !DILexicalBlock(scope: !5073, file: !5074, line: 447, column: 7)
!5099 = !DILocation(line: 385, column: 23, scope: !5073)
!5100 = !DILocation(line: 385, column: 40, scope: !5073)
!5101 = !DILocation(line: 385, column: 50, scope: !5073)
!5102 = !DILocation(line: 385, column: 64, scope: !5073)
!5103 = !DILocation(line: 388, column: 3, scope: !5073)
!5104 = !DILocation(line: 404, column: 9, scope: !5105)
!5105 = distinct !DILexicalBlock(scope: !5073, file: !5074, line: 404, column: 7)
!5106 = !DILocation(line: 404, column: 7, scope: !5073)
!5107 = !DILocation(line: 439, column: 9, scope: !5073)
!5108 = !DILocation(line: 387, column: 10, scope: !5073)
!5109 = !DILocation(line: 447, column: 19, scope: !5098)
!5110 = !DILocation(line: 447, column: 31, scope: !5098)
!5111 = !DILocation(line: 447, column: 26, scope: !5098)
!5112 = !DILocation(line: 447, column: 41, scope: !5098)
!5113 = !DILocation(line: 447, column: 7, scope: !5073)
!5114 = !DILocation(line: 449, column: 26, scope: !5097)
!5115 = !DILocation(line: 449, column: 21, scope: !5097)
!5116 = !DILocation(line: 450, column: 14, scope: !5097)
!5117 = !DILocation(line: 450, column: 12, scope: !5097)
!5118 = !DILocation(line: 0, scope: !5097)
!5119 = !DILocation(line: 456, column: 1, scope: !5073)
!5120 = distinct !DISubprogram(name: "close_stream", scope: !5121, file: !5121, line: 56, type: !5122, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !309, retainedNodes: !5158)
!5121 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!5122 = !DISubroutineType(types: !5123)
!5123 = !{!83, !5124}
!5124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5125, size: 64)
!5125 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1114, line: 7, baseType: !5126)
!5126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1116, line: 49, size: 1728, elements: !5127)
!5127 = !{!5128, !5129, !5130, !5131, !5132, !5133, !5134, !5135, !5136, !5137, !5138, !5139, !5140, !5141, !5143, !5144, !5145, !5146, !5147, !5148, !5149, !5150, !5151, !5152, !5153, !5154, !5155, !5156, !5157}
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5126, file: !1116, line: 51, baseType: !83, size: 32)
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5126, file: !1116, line: 54, baseType: !82, size: 64, offset: 64)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5126, file: !1116, line: 55, baseType: !82, size: 64, offset: 128)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5126, file: !1116, line: 56, baseType: !82, size: 64, offset: 192)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5126, file: !1116, line: 57, baseType: !82, size: 64, offset: 256)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5126, file: !1116, line: 58, baseType: !82, size: 64, offset: 320)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5126, file: !1116, line: 59, baseType: !82, size: 64, offset: 384)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5126, file: !1116, line: 60, baseType: !82, size: 64, offset: 448)
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5126, file: !1116, line: 61, baseType: !82, size: 64, offset: 512)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5126, file: !1116, line: 64, baseType: !82, size: 64, offset: 576)
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5126, file: !1116, line: 65, baseType: !82, size: 64, offset: 640)
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5126, file: !1116, line: 66, baseType: !82, size: 64, offset: 704)
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5126, file: !1116, line: 68, baseType: !1131, size: 64, offset: 768)
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5126, file: !1116, line: 70, baseType: !5142, size: 64, offset: 832)
!5142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5126, size: 64)
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5126, file: !1116, line: 72, baseType: !83, size: 32, offset: 896)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5126, file: !1116, line: 73, baseType: !83, size: 32, offset: 928)
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5126, file: !1116, line: 74, baseType: !1138, size: 64, offset: 960)
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5126, file: !1116, line: 77, baseType: !84, size: 16, offset: 1024)
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5126, file: !1116, line: 78, baseType: !1142, size: 8, offset: 1040)
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5126, file: !1116, line: 79, baseType: !1144, size: 8, offset: 1048)
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5126, file: !1116, line: 81, baseType: !1148, size: 64, offset: 1088)
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5126, file: !1116, line: 89, baseType: !1151, size: 64, offset: 1152)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5126, file: !1116, line: 91, baseType: !1153, size: 64, offset: 1216)
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5126, file: !1116, line: 92, baseType: !1156, size: 64, offset: 1280)
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5126, file: !1116, line: 93, baseType: !5142, size: 64, offset: 1344)
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5126, file: !1116, line: 94, baseType: !74, size: 64, offset: 1408)
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5126, file: !1116, line: 95, baseType: !76, size: 64, offset: 1472)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5126, file: !1116, line: 96, baseType: !83, size: 32, offset: 1536)
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5126, file: !1116, line: 98, baseType: !1163, size: 160, offset: 1568)
!5158 = !{!5159, !5160, !5162, !5163}
!5159 = !DILocalVariable(name: "stream", arg: 1, scope: !5120, file: !5121, line: 56, type: !5124)
!5160 = !DILocalVariable(name: "some_pending", scope: !5120, file: !5121, line: 58, type: !5161)
!5161 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !97)
!5162 = !DILocalVariable(name: "prev_fail", scope: !5120, file: !5121, line: 59, type: !5161)
!5163 = !DILocalVariable(name: "fclose_fail", scope: !5120, file: !5121, line: 60, type: !5161)
!5164 = !DILocation(line: 56, column: 21, scope: !5120)
!5165 = !DILocation(line: 58, column: 30, scope: !5120)
!5166 = !DILocalVariable(name: "__stream", arg: 1, scope: !5167, file: !1109, line: 135, type: !5124)
!5167 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1109, file: !1109, line: 135, type: !5122, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !309, retainedNodes: !5168)
!5168 = !{!5166}
!5169 = !DILocation(line: 135, column: 1, scope: !5167, inlinedAt: !5170)
!5170 = distinct !DILocation(line: 59, column: 27, scope: !5120)
!5171 = !DILocation(line: 137, column: 10, scope: !5167, inlinedAt: !5170)
!5172 = !DILocation(line: 59, column: 43, scope: !5120)
!5173 = !DILocation(line: 60, column: 29, scope: !5120)
!5174 = !DILocation(line: 60, column: 45, scope: !5120)
!5175 = !DILocation(line: 70, column: 17, scope: !5176)
!5176 = distinct !DILexicalBlock(scope: !5120, file: !5121, line: 70, column: 7)
!5177 = !DILocation(line: 58, column: 50, scope: !5120)
!5178 = !DILocation(line: 70, column: 33, scope: !5176)
!5179 = !DILocation(line: 70, column: 53, scope: !5176)
!5180 = !DILocation(line: 70, column: 59, scope: !5176)
!5181 = !DILocation(line: 70, column: 7, scope: !5120)
!5182 = !DILocation(line: 72, column: 11, scope: !5183)
!5183 = distinct !DILexicalBlock(scope: !5176, file: !5121, line: 71, column: 5)
!5184 = !DILocation(line: 73, column: 9, scope: !5185)
!5185 = distinct !DILexicalBlock(scope: !5183, file: !5121, line: 72, column: 11)
!5186 = !DILocation(line: 73, column: 15, scope: !5185)
!5187 = !DILocation(line: 0, scope: !5120)
!5188 = !DILocation(line: 78, column: 1, scope: !5120)
!5189 = distinct !DISubprogram(name: "locale_charset", scope: !5190, file: !5190, line: 687, type: !5191, isLocal: false, isDefinition: true, scopeLine: 688, flags: DIFlagPrototyped, isOptimized: true, unit: !311, retainedNodes: !5193)
!5190 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!5191 = !DISubroutineType(types: !5192)
!5192 = !{!79}
!5193 = !{!5194}
!5194 = !DILocalVariable(name: "codeset", scope: !5189, file: !5190, line: 689, type: !79)
!5195 = !DILocation(line: 696, column: 13, scope: !5189)
!5196 = !DILocation(line: 689, column: 15, scope: !5189)
!5197 = !DILocation(line: 754, column: 15, scope: !5198)
!5198 = distinct !DILexicalBlock(scope: !5189, file: !5190, line: 754, column: 7)
!5199 = !DILocation(line: 754, column: 7, scope: !5189)
!5200 = !DILocation(line: 907, column: 13, scope: !5201)
!5201 = distinct !DILexicalBlock(scope: !5202, file: !5190, line: 907, column: 13)
!5202 = distinct !DILexicalBlock(scope: !5203, file: !5190, line: 897, column: 7)
!5203 = distinct !DILexicalBlock(scope: !5189, file: !5190, line: 856, column: 3)
!5204 = !DILocation(line: 907, column: 24, scope: !5201)
!5205 = !DILocation(line: 907, column: 13, scope: !5202)
!5206 = !DILocation(line: 995, column: 3, scope: !5189)
!5207 = distinct !DISubprogram(name: "memcoll", scope: !5208, file: !5208, line: 66, type: !4531, isLocal: false, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: true, unit: !700, retainedNodes: !5209)
!5208 = !DIFile(filename: "lib/memcoll.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!5209 = !{!5210, !5211, !5212, !5213, !5214, !5215, !5218}
!5210 = !DILocalVariable(name: "s1", arg: 1, scope: !5207, file: !5208, line: 66, type: !82)
!5211 = !DILocalVariable(name: "s1len", arg: 2, scope: !5207, file: !5208, line: 66, type: !76)
!5212 = !DILocalVariable(name: "s2", arg: 3, scope: !5207, file: !5208, line: 66, type: !82)
!5213 = !DILocalVariable(name: "s2len", arg: 4, scope: !5207, file: !5208, line: 66, type: !76)
!5214 = !DILocalVariable(name: "diff", scope: !5207, file: !5208, line: 68, type: !83)
!5215 = !DILocalVariable(name: "n1", scope: !5216, file: !5208, line: 81, type: !81)
!5216 = distinct !DILexicalBlock(scope: !5217, file: !5208, line: 80, column: 5)
!5217 = distinct !DILexicalBlock(scope: !5207, file: !5208, line: 74, column: 7)
!5218 = !DILocalVariable(name: "n2", scope: !5216, file: !5208, line: 82, type: !81)
!5219 = !DILocation(line: 66, column: 16, scope: !5207)
!5220 = !DILocation(line: 66, column: 27, scope: !5207)
!5221 = !DILocation(line: 66, column: 40, scope: !5207)
!5222 = !DILocation(line: 66, column: 51, scope: !5207)
!5223 = !DILocation(line: 74, column: 13, scope: !5217)
!5224 = !DILocation(line: 74, column: 22, scope: !5217)
!5225 = !DILocation(line: 74, column: 25, scope: !5217)
!5226 = !DILocation(line: 74, column: 48, scope: !5217)
!5227 = !DILocation(line: 74, column: 7, scope: !5207)
!5228 = !DILocation(line: 76, column: 7, scope: !5229)
!5229 = distinct !DILexicalBlock(scope: !5217, file: !5208, line: 75, column: 5)
!5230 = !DILocation(line: 76, column: 13, scope: !5229)
!5231 = !DILocation(line: 68, column: 7, scope: !5207)
!5232 = !DILocation(line: 78, column: 5, scope: !5229)
!5233 = !DILocation(line: 81, column: 17, scope: !5216)
!5234 = !DILocation(line: 81, column: 12, scope: !5216)
!5235 = !DILocation(line: 82, column: 17, scope: !5216)
!5236 = !DILocation(line: 82, column: 12, scope: !5216)
!5237 = !DILocation(line: 84, column: 17, scope: !5216)
!5238 = !DILocation(line: 85, column: 17, scope: !5216)
!5239 = !DILocation(line: 87, column: 38, scope: !5216)
!5240 = !DILocation(line: 87, column: 53, scope: !5216)
!5241 = !DILocalVariable(name: "s1", arg: 1, scope: !5242, file: !5208, line: 35, type: !79)
!5242 = distinct !DISubprogram(name: "strcoll_loop", scope: !5208, file: !5208, line: 35, type: !4578, isLocal: true, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: true, unit: !700, retainedNodes: !5243)
!5243 = !{!5241, !5244, !5245, !5246, !5247, !5248, !5250}
!5244 = !DILocalVariable(name: "s1size", arg: 2, scope: !5242, file: !5208, line: 35, type: !76)
!5245 = !DILocalVariable(name: "s2", arg: 3, scope: !5242, file: !5208, line: 35, type: !79)
!5246 = !DILocalVariable(name: "s2size", arg: 4, scope: !5242, file: !5208, line: 35, type: !76)
!5247 = !DILocalVariable(name: "diff", scope: !5242, file: !5208, line: 37, type: !83)
!5248 = !DILocalVariable(name: "size1", scope: !5249, file: !5208, line: 44, type: !76)
!5249 = distinct !DILexicalBlock(scope: !5242, file: !5208, line: 40, column: 5)
!5250 = !DILocalVariable(name: "size2", scope: !5249, file: !5208, line: 45, type: !76)
!5251 = !DILocation(line: 35, column: 27, scope: !5242, inlinedAt: !5252)
!5252 = distinct !DILocation(line: 87, column: 14, scope: !5216)
!5253 = !DILocation(line: 35, column: 38, scope: !5242, inlinedAt: !5252)
!5254 = !DILocation(line: 35, column: 58, scope: !5242, inlinedAt: !5252)
!5255 = !DILocation(line: 35, column: 69, scope: !5242, inlinedAt: !5252)
!5256 = !DILocation(line: 39, column: 13, scope: !5242, inlinedAt: !5252)
!5257 = !DILocation(line: 39, column: 3, scope: !5242, inlinedAt: !5252)
!5258 = !DILocation(line: 39, column: 19, scope: !5242, inlinedAt: !5252)
!5259 = !DILocation(line: 39, column: 32, scope: !5242, inlinedAt: !5252)
!5260 = !DILocation(line: 37, column: 7, scope: !5242, inlinedAt: !5252)
!5261 = !DILocation(line: 39, column: 30, scope: !5242, inlinedAt: !5252)
!5262 = !DILocation(line: 44, column: 22, scope: !5249, inlinedAt: !5252)
!5263 = !DILocation(line: 44, column: 34, scope: !5249, inlinedAt: !5252)
!5264 = !DILocation(line: 44, column: 14, scope: !5249, inlinedAt: !5252)
!5265 = !DILocation(line: 45, column: 22, scope: !5249, inlinedAt: !5252)
!5266 = !DILocation(line: 45, column: 34, scope: !5249, inlinedAt: !5252)
!5267 = !DILocation(line: 45, column: 14, scope: !5249, inlinedAt: !5252)
!5268 = !DILocation(line: 48, column: 14, scope: !5249, inlinedAt: !5252)
!5269 = !DILocation(line: 49, column: 14, scope: !5249, inlinedAt: !5252)
!5270 = !DILocation(line: 51, column: 18, scope: !5271, inlinedAt: !5252)
!5271 = distinct !DILexicalBlock(scope: !5249, file: !5208, line: 51, column: 11)
!5272 = !DILocation(line: 51, column: 11, scope: !5249, inlinedAt: !5252)
!5273 = !DILocation(line: 52, column: 26, scope: !5271, inlinedAt: !5252)
!5274 = !DILocation(line: 52, column: 16, scope: !5271, inlinedAt: !5252)
!5275 = !DILocation(line: 47, column: 10, scope: !5249, inlinedAt: !5252)
!5276 = !DILocation(line: 46, column: 10, scope: !5249, inlinedAt: !5252)
!5277 = !DILocation(line: 53, column: 18, scope: !5278, inlinedAt: !5252)
!5278 = distinct !DILexicalBlock(scope: !5249, file: !5208, line: 53, column: 11)
!5279 = distinct !{!5279, !5280, !5281}
!5280 = !DILocation(line: 39, column: 3, scope: !5242)
!5281 = !DILocation(line: 55, column: 5, scope: !5242)
!5282 = !DILocation(line: 0, scope: !5242, inlinedAt: !5252)
!5283 = !DILocation(line: 89, column: 17, scope: !5216)
!5284 = !DILocation(line: 90, column: 17, scope: !5216)
!5285 = !DILocation(line: 0, scope: !5216)
!5286 = !DILocation(line: 93, column: 3, scope: !5207)
!5287 = distinct !DISubprogram(name: "memcoll0", scope: !5208, file: !5208, line: 102, type: !4578, isLocal: false, isDefinition: true, scopeLine: 103, flags: DIFlagPrototyped, isOptimized: true, unit: !700, retainedNodes: !5288)
!5288 = !{!5289, !5290, !5291, !5292}
!5289 = !DILocalVariable(name: "s1", arg: 1, scope: !5287, file: !5208, line: 102, type: !79)
!5290 = !DILocalVariable(name: "s1size", arg: 2, scope: !5287, file: !5208, line: 102, type: !76)
!5291 = !DILocalVariable(name: "s2", arg: 3, scope: !5287, file: !5208, line: 102, type: !79)
!5292 = !DILocalVariable(name: "s2size", arg: 4, scope: !5287, file: !5208, line: 102, type: !76)
!5293 = !DILocation(line: 102, column: 23, scope: !5287)
!5294 = !DILocation(line: 102, column: 34, scope: !5287)
!5295 = !DILocation(line: 102, column: 54, scope: !5287)
!5296 = !DILocation(line: 102, column: 65, scope: !5287)
!5297 = !DILocation(line: 104, column: 14, scope: !5298)
!5298 = distinct !DILexicalBlock(scope: !5287, file: !5208, line: 104, column: 7)
!5299 = !DILocation(line: 104, column: 24, scope: !5298)
!5300 = !DILocation(line: 104, column: 27, scope: !5298)
!5301 = !DILocation(line: 104, column: 51, scope: !5298)
!5302 = !DILocation(line: 104, column: 7, scope: !5287)
!5303 = !DILocation(line: 106, column: 7, scope: !5304)
!5304 = distinct !DILexicalBlock(scope: !5298, file: !5208, line: 105, column: 5)
!5305 = !DILocation(line: 106, column: 13, scope: !5304)
!5306 = !DILocation(line: 107, column: 7, scope: !5304)
!5307 = !DILocation(line: 35, column: 27, scope: !5242, inlinedAt: !5308)
!5308 = distinct !DILocation(line: 110, column: 12, scope: !5298)
!5309 = !DILocation(line: 35, column: 38, scope: !5242, inlinedAt: !5308)
!5310 = !DILocation(line: 35, column: 58, scope: !5242, inlinedAt: !5308)
!5311 = !DILocation(line: 35, column: 69, scope: !5242, inlinedAt: !5308)
!5312 = !DILocation(line: 39, column: 13, scope: !5242, inlinedAt: !5308)
!5313 = !DILocation(line: 39, column: 3, scope: !5242, inlinedAt: !5308)
!5314 = !DILocation(line: 39, column: 19, scope: !5242, inlinedAt: !5308)
!5315 = !DILocation(line: 39, column: 32, scope: !5242, inlinedAt: !5308)
!5316 = !DILocation(line: 37, column: 7, scope: !5242, inlinedAt: !5308)
!5317 = !DILocation(line: 39, column: 30, scope: !5242, inlinedAt: !5308)
!5318 = !DILocation(line: 44, column: 22, scope: !5249, inlinedAt: !5308)
!5319 = !DILocation(line: 44, column: 34, scope: !5249, inlinedAt: !5308)
!5320 = !DILocation(line: 44, column: 14, scope: !5249, inlinedAt: !5308)
!5321 = !DILocation(line: 45, column: 22, scope: !5249, inlinedAt: !5308)
!5322 = !DILocation(line: 45, column: 34, scope: !5249, inlinedAt: !5308)
!5323 = !DILocation(line: 45, column: 14, scope: !5249, inlinedAt: !5308)
!5324 = !DILocation(line: 48, column: 14, scope: !5249, inlinedAt: !5308)
!5325 = !DILocation(line: 49, column: 14, scope: !5249, inlinedAt: !5308)
!5326 = !DILocation(line: 51, column: 18, scope: !5271, inlinedAt: !5308)
!5327 = !DILocation(line: 51, column: 11, scope: !5249, inlinedAt: !5308)
!5328 = !DILocation(line: 52, column: 26, scope: !5271, inlinedAt: !5308)
!5329 = !DILocation(line: 52, column: 16, scope: !5271, inlinedAt: !5308)
!5330 = !DILocation(line: 47, column: 10, scope: !5249, inlinedAt: !5308)
!5331 = !DILocation(line: 46, column: 10, scope: !5249, inlinedAt: !5308)
!5332 = !DILocation(line: 53, column: 18, scope: !5278, inlinedAt: !5308)
!5333 = !DILocation(line: 0, scope: !5298)
!5334 = !DILocation(line: 111, column: 1, scope: !5287)
