; ModuleID = 'coreutils-8.30/src/nl.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.infomap = type { i8*, i8* }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.re_pattern_buffer = type { %struct.re_dfa_t*, i64, i64, i64, i8*, i8*, i64, i8 }
%struct.re_dfa_t = type opaque
%struct.linebuffer = type { i64, i64, i8* }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.re_registers = type { i32, i32*, i32* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Usage: %s [OPTION]... [FILE]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"Write each FILE to standard output, with line numbers added.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.31 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1
@.str.32 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.3 = private unnamed_addr constant [210 x i8] c"  -b, --body-numbering=STYLE      use STYLE for numbering body lines\0A  -d, --section-delimiter=CC      use CC for logical page delimiters\0A  -f, --footer-numbering=STYLE    use STYLE for numbering footer lines\0A\00", align 1
@.str.4 = private unnamed_addr constant [443 x i8] c"  -h, --header-numbering=STYLE    use STYLE for numbering header lines\0A  -i, --line-increment=NUMBER     line number increment at each line\0A  -l, --join-blank-lines=NUMBER   group of NUMBER empty lines counted as one\0A  -n, --number-format=FORMAT      insert line numbers according to FORMAT\0A  -p, --no-renumber               do not reset line numbers for each section\0A  -s, --number-separator=STRING   add STRING after (possible) line number\0A\00", align 1
@.str.5 = private unnamed_addr constant [143 x i8] c"  -v, --starting-line-number=NUMBER  first line number for each section\0A  -w, --number-width=NUMBER       use NUMBER columns for line numbers\0A\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.7 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.8 = private unnamed_addr constant [189 x i8] c"\0ADefault options are: -bt -d'\5C:' -fn -hn -i1 -l1 -n'rn' -s<TAB> -v1 -w6\0A\0ACC are two delimiter characters used to construct logical page delimiters;\0Aa missing second character implies ':'.\0A\00", align 1
@.str.9 = private unnamed_addr constant [202 x i8] c"\0ASTYLE is one of:\0A\0A  a      number all lines\0A  t      number only nonempty lines\0A  n      number no lines\0A  pBRE   number only lines that contain a match for the basic regular\0A         expression, BRE\0A\00", align 1
@.str.10 = private unnamed_addr constant [147 x i8] c"\0AFORMAT is one of:\0A\0A  ln     left justified, no leading zeros\0A  rn     right justified, no leading zeros\0A  rz     right justified, leading zeros\0A\0A\00", align 1
@emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.34, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.35, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.37, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.37, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.37, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.37, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.33 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"nl\00", align 1
@.str.41 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.42 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.44 = private unnamed_addr constant [70 x i8] c"Report %s translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.45 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.46 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.35 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.37 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@have_read_stdin = internal unnamed_addr global i1 false, align 1, !dbg !0
@.str.15 = private unnamed_addr constant [22 x i8] c"h:b:f:v:i:pl:s:w:n:d:\00", align 1
@longopts = internal constant [14 x %struct.option] [%struct.option { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.48, i32 0, i32 0), i32 1, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.49, i32 0, i32 0), i32 1, i32* null, i32 98 }, %struct.option { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.50, i32 0, i32 0), i32 1, i32* null, i32 102 }, %struct.option { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.51, i32 0, i32 0), i32 1, i32* null, i32 118 }, %struct.option { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.52, i32 0, i32 0), i32 1, i32* null, i32 105 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.53, i32 0, i32 0), i32 0, i32* null, i32 112 }, %struct.option { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.54, i32 0, i32 0), i32 1, i32* null, i32 108 }, %struct.option { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.55, i32 0, i32 0), i32 1, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.56, i32 0, i32 0), i32 1, i32* null, i32 119 }, %struct.option { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.57, i32 0, i32 0), i32 1, i32* null, i32 110 }, %struct.option { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.58, i32 0, i32 0), i32 1, i32* null, i32 100 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.60, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !107
@header_type = internal global i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.62, i64 0, i64 0), align 8, !dbg !122
@header_regex = internal global %struct.re_pattern_buffer zeroinitializer, align 8, !dbg !72
@header_fastmap = internal global [256 x i8] zeroinitializer, align 16, !dbg !81
@.str.16 = private unnamed_addr constant [35 x i8] c"invalid header numbering style: %s\00", align 1
@optarg = external local_unnamed_addr global i8*, align 8
@body_type = internal global i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i64 0, i64 0), align 8, !dbg !124
@body_regex = internal global %struct.re_pattern_buffer zeroinitializer, align 8, !dbg !46
@body_fastmap = internal global [256 x i8] zeroinitializer, align 16, !dbg !76
@.str.17 = private unnamed_addr constant [33 x i8] c"invalid body numbering style: %s\00", align 1
@footer_type = internal global i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.62, i64 0, i64 0), align 8, !dbg !126
@footer_regex = internal global %struct.re_pattern_buffer zeroinitializer, align 8, !dbg !74
@footer_fastmap = internal global [256 x i8] zeroinitializer, align 16, !dbg !83
@.str.18 = private unnamed_addr constant [35 x i8] c"invalid footer numbering style: %s\00", align 1
@.str.19 = private unnamed_addr constant [29 x i8] c"invalid starting line number\00", align 1
@starting_line_number = internal unnamed_addr global i64 1, align 8, !dbg !128
@.str.20 = private unnamed_addr constant [30 x i8] c"invalid line number increment\00", align 1
@page_incr = internal unnamed_addr global i64 1, align 8, !dbg !130
@reset_numbers = internal unnamed_addr global i1 false, align 1, !dbg !179
@.str.21 = private unnamed_addr constant [35 x i8] c"invalid line number of blank lines\00", align 1
@blank_join = internal unnamed_addr global i64 1, align 8, !dbg !135
@separator_str = internal unnamed_addr global i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0), align 8, !dbg !137
@.str.22 = private unnamed_addr constant [32 x i8] c"invalid line number field width\00", align 1
@lineno_width = internal unnamed_addr global i32 6, align 4, !dbg !139
@.str.23 = private unnamed_addr constant [3 x i8] c"ln\00", align 1
@FORMAT_LEFT = internal constant [8 x i8] c"%-*ld%s\00", align 1, !dbg !141
@lineno_format = internal unnamed_addr global i8* getelementptr inbounds ([7 x i8], [7 x i8]* @FORMAT_RIGHT_NOLZ, i64 0, i64 0), align 8, !dbg !146
@.str.24 = private unnamed_addr constant [3 x i8] c"rn\00", align 1
@FORMAT_RIGHT_NOLZ = internal constant [7 x i8] c"%*ld%s\00", align 1, !dbg !148
@.str.25 = private unnamed_addr constant [3 x i8] c"rz\00", align 1
@FORMAT_RIGHT_LZ = internal constant [8 x i8] c"%0*ld%s\00", align 1, !dbg !153
@.str.26 = private unnamed_addr constant [34 x i8] c"invalid line numbering format: %s\00", align 1
@section_del = internal unnamed_addr global i8* getelementptr inbounds ([3 x i8], [3 x i8]* @DEFAULT_SECTION_DELIMITERS, i64 0, i64 0), align 8, !dbg !155
@.str.28 = private unnamed_addr constant [14 x i8] c"Scott Bartram\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@header_del_len = internal unnamed_addr global i64 0, align 8, !dbg !85
@header_del = internal unnamed_addr global i8* null, align 8, !dbg !162
@body_del_len = internal unnamed_addr global i64 0, align 8, !dbg !87
@body_del = internal unnamed_addr global i8* null, align 8, !dbg !164
@footer_del_len = internal unnamed_addr global i64 0, align 8, !dbg !89
@footer_del = internal unnamed_addr global i8* null, align 8, !dbg !166
@line_buf = internal global %struct.linebuffer zeroinitializer, align 8, !dbg !91
@print_no_line_fmt = internal unnamed_addr global i8* null, align 8, !dbg !168
@line_no = internal unnamed_addr global i64 0, align 8, !dbg !99
@current_type = internal unnamed_addr global i8* null, align 8, !dbg !42
@current_regex = internal unnamed_addr global %struct.re_pattern_buffer* null, align 8, !dbg !170
@optind = external local_unnamed_addr global i32, align 4
@.str.30 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.65 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.61 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@proc_text.blank_lines = internal unnamed_addr global i64 0, align 8, !dbg !173
@.str.67 = private unnamed_addr constant [21 x i8] c"line number overflow\00", align 1
@.str.66 = private unnamed_addr constant [35 x i8] c"error in regular expression search\00", align 1
@DEFAULT_SECTION_DELIMITERS = internal constant [3 x i8] c"\5C:\00", align 1, !dbg !157
@.str.64 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.62 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.63 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@re_syntax_options = external local_unnamed_addr global i64, align 8
@.str.48 = private unnamed_addr constant [17 x i8] c"header-numbering\00", align 1
@.str.49 = private unnamed_addr constant [15 x i8] c"body-numbering\00", align 1
@.str.50 = private unnamed_addr constant [17 x i8] c"footer-numbering\00", align 1
@.str.51 = private unnamed_addr constant [21 x i8] c"starting-line-number\00", align 1
@.str.52 = private unnamed_addr constant [15 x i8] c"line-increment\00", align 1
@.str.53 = private unnamed_addr constant [12 x i8] c"no-renumber\00", align 1
@.str.54 = private unnamed_addr constant [17 x i8] c"join-blank-lines\00", align 1
@.str.55 = private unnamed_addr constant [17 x i8] c"number-separator\00", align 1
@.str.56 = private unnamed_addr constant [13 x i8] c"number-width\00", align 1
@.str.57 = private unnamed_addr constant [14 x i8] c"number-format\00", align 1
@.str.58 = private unnamed_addr constant [18 x i8] c"section-delimiter\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.60 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.68, i64 0, i64 0), align 8, !dbg !180
@.str.68 = private unnamed_addr constant [5 x i8] c"8.30\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !185
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !190
@.str.71 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.72 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.73 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !193
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !200
@.str.86 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.87 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.88 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.90, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.91, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.92, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.93, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.94, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.95, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.96, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.97, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.98, i32 0, i32 0), i8* null], align 16, !dbg !207
@.str.89 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.90 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.91 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.92 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.93 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.94 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.95 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.96 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.97 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.98 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !235
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !242
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !252
@.str.11.99 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.100 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.101 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.102 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.103 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.104 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.105 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !256
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !263
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !254
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !265
@.str.112 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.113 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.114 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.115 = private unnamed_addr constant [204 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.116 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.117 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.118 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.119 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.120 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.121 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.122 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.123 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.124 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.125 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.128 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.129 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.130 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.131 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.132 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.19.133 = private unnamed_addr constant [65 x i8] c"General help using GNU software: <https://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !271
@.str.1.146 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.147 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.148 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.153 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str.1.154 = private unnamed_addr constant [16 x i8] c"./lib/xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtoimax = private unnamed_addr constant [78 x i8] c"strtol_error xstrtoimax(const char *, char **, int, intmax_t *, const char *)\00", align 1
@.str.169 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.170 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.173 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.174 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32) local_unnamed_addr #0 !dbg !736 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !741, metadata !DIExpression()), !dbg !758
  call void @llvm.dbg.value(metadata i32 %0, metadata !740, metadata !DIExpression()), !dbg !762
  %3 = icmp eq i32 %0, 0, !dbg !763
  br i1 %3, label %9, label %4, !dbg !764

; <label>:4:                                      ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !765, !tbaa !767
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #11, !dbg !765
  %7 = load i8*, i8** @program_name, align 8, !dbg !765, !tbaa !767
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #11, !dbg !765
  br label %81, !dbg !765

; <label>:9:                                      ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 5) #11, !dbg !771
  %11 = load i8*, i8** @program_name, align 8, !dbg !771, !tbaa !767
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #11, !dbg !771
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), i32 5) #11, !dbg !772
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !772, !tbaa !767
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !772
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.31, i64 0, i64 0), i32 5) #11, !dbg !773
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !773, !tbaa !767
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17) #11, !dbg !773
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.32, i64 0, i64 0), i32 5) #11, !dbg !776
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !776, !tbaa !767
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20) #11, !dbg !776
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([210 x i8], [210 x i8]* @.str.3, i64 0, i64 0), i32 5) #11, !dbg !779
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !779, !tbaa !767
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !779
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([443 x i8], [443 x i8]* @.str.4, i64 0, i64 0), i32 5) #11, !dbg !780
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !780, !tbaa !767
  %27 = tail call i32 @fputs_unlocked(i8* %25, %struct._IO_FILE* %26), !dbg !780
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([143 x i8], [143 x i8]* @.str.5, i64 0, i64 0), i32 5) #11, !dbg !781
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !781, !tbaa !767
  %30 = tail call i32 @fputs_unlocked(i8* %28, %struct._IO_FILE* %29), !dbg !781
  %31 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i32 5) #11, !dbg !782
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !782, !tbaa !767
  %33 = tail call i32 @fputs_unlocked(i8* %31, %struct._IO_FILE* %32), !dbg !782
  %34 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i64 0, i64 0), i32 5) #11, !dbg !783
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !783, !tbaa !767
  %36 = tail call i32 @fputs_unlocked(i8* %34, %struct._IO_FILE* %35), !dbg !783
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([189 x i8], [189 x i8]* @.str.8, i64 0, i64 0), i32 5) #11, !dbg !784
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !784, !tbaa !767
  %39 = tail call i32 @fputs_unlocked(i8* %37, %struct._IO_FILE* %38), !dbg !784
  %40 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([202 x i8], [202 x i8]* @.str.9, i64 0, i64 0), i32 5) #11, !dbg !785
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !785, !tbaa !767
  %42 = tail call i32 @fputs_unlocked(i8* %40, %struct._IO_FILE* %41), !dbg !785
  %43 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([147 x i8], [147 x i8]* @.str.10, i64 0, i64 0), i32 5) #11, !dbg !786
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !786, !tbaa !767
  %45 = tail call i32 @fputs_unlocked(i8* %43, %struct._IO_FILE* %44), !dbg !786
  %46 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !787
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %46) #11, !dbg !787
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %46, i8* align 16 bitcast ([7 x %struct.infomap]* @emit_ancillary_info.infomap to i8*), i64 112, i1 false) #11, !dbg !758
  %47 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !788
  call void @llvm.dbg.value(metadata %struct.infomap* %47, metadata !749, metadata !DIExpression()) #11, !dbg !789
  br label %48, !dbg !790

; <label>:48:                                     ; preds = %53, %9
  %49 = phi i8* [ %56, %53 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0), %9 ]
  %50 = phi %struct.infomap* [ %54, %53 ], [ %47, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %50, metadata !749, metadata !DIExpression()) #11, !dbg !789
  %51 = tail call i32 @strcmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8* nonnull %49) #14, !dbg !790
  %52 = icmp eq i32 %51, 0, !dbg !790
  br i1 %52, label %58, label %53, !dbg !791

; <label>:53:                                     ; preds = %48
  %54 = getelementptr inbounds %struct.infomap, %struct.infomap* %50, i64 1, !dbg !792
  call void @llvm.dbg.value(metadata %struct.infomap* %54, metadata !749, metadata !DIExpression()) #11, !dbg !789
  %55 = getelementptr inbounds %struct.infomap, %struct.infomap* %54, i64 0, i32 0, !dbg !793
  %56 = load i8*, i8** %55, align 8, !dbg !793, !tbaa !794
  %57 = icmp eq i8* %56, null, !dbg !796
  br i1 %57, label %58, label %48, !dbg !797, !llvm.loop !798

; <label>:58:                                     ; preds = %53, %48
  %59 = phi %struct.infomap* [ %54, %53 ], [ %50, %48 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %59, metadata !749, metadata !DIExpression()) #11, !dbg !789
  call void @llvm.dbg.value(metadata %struct.infomap* %59, metadata !749, metadata !DIExpression()) #11, !dbg !789
  %60 = getelementptr inbounds %struct.infomap, %struct.infomap* %59, i64 0, i32 1, !dbg !801
  %61 = load i8*, i8** %60, align 8, !dbg !801, !tbaa !803
  %62 = icmp eq i8* %61, null, !dbg !804
  %63 = select i1 %62, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8* %61, !dbg !805
  call void @llvm.dbg.value(metadata i8* %63, metadata !748, metadata !DIExpression()) #11, !dbg !806
  %64 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.41, i64 0, i64 0), i32 5) #11, !dbg !807
  %65 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %64, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.42, i64 0, i64 0)) #11, !dbg !807
  %66 = tail call i8* @setlocale(i32 5, i8* null) #11, !dbg !808
  call void @llvm.dbg.value(metadata i8* %66, metadata !756, metadata !DIExpression()) #11, !dbg !809
  %67 = icmp eq i8* %66, null, !dbg !810
  br i1 %67, label %74, label %68, !dbg !812

; <label>:68:                                     ; preds = %58
  %69 = tail call i32 @strncmp(i8* nonnull %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.43, i64 0, i64 0), i64 3) #14, !dbg !813
  %70 = icmp eq i32 %69, 0, !dbg !813
  br i1 %70, label %74, label %71, !dbg !814

; <label>:71:                                     ; preds = %68
  %72 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.44, i64 0, i64 0), i32 5) #11, !dbg !815
  %73 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %72, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0)) #11, !dbg !815
  br label %74, !dbg !817

; <label>:74:                                     ; preds = %58, %68, %71
  %75 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.45, i64 0, i64 0), i32 5) #11, !dbg !818
  %76 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %75, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.42, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0)) #11, !dbg !818
  %77 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.46, i64 0, i64 0), i32 5) #11, !dbg !819
  %78 = icmp eq i8* %63, getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), !dbg !819
  %79 = select i1 %78, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0), !dbg !819
  %80 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %77, i8* %63, i8* %79) #11, !dbg !819
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %46) #11, !dbg !820
  br label %81

; <label>:81:                                     ; preds = %74, %4
  tail call void @exit(i32 %0) #15, !dbg !821
  unreachable, !dbg !821
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
define dso_local i32 @main(i32, i8**) local_unnamed_addr #7 !dbg !822 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !827, metadata !DIExpression()), !dbg !832
  call void @llvm.dbg.value(metadata i8** %1, metadata !828, metadata !DIExpression()), !dbg !833
  call void @llvm.dbg.value(metadata i8 1, metadata !831, metadata !DIExpression()), !dbg !834
  %3 = load i8*, i8** %1, align 8, !dbg !835, !tbaa !767
  tail call void @set_program_name(i8* %3) #11, !dbg !836
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0)) #11, !dbg !837
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0)) #11, !dbg !838
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0)) #11, !dbg !839
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #11, !dbg !840
  store i1 false, i1* @have_read_stdin, align 1
  br label %8, !dbg !841

; <label>:8:                                      ; preds = %11, %2
  %9 = phi i8 [ 1, %2 ], [ %12, %11 ], !dbg !842
  call void @llvm.dbg.value(metadata i8 %9, metadata !831, metadata !DIExpression()), !dbg !834
  %10 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i64 0, i64 0), %struct.option* getelementptr inbounds ([14 x %struct.option], [14 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #11, !dbg !845
  call void @llvm.dbg.value(metadata i32 %10, metadata !829, metadata !DIExpression()), !dbg !846
  switch i32 %10, label %11 [
    i32 -1, label %74
    i32 104, label %13
    i32 98, label %19
    i32 102, label %25
    i32 118, label %31
    i32 105, label %35
    i32 112, label %39
    i32 108, label %40
    i32 115, label %44
    i32 119, label %46
    i32 110, label %51
    i32 100, label %68
    i32 -130, label %70
    i32 -131, label %71
  ], !dbg !841

; <label>:11:                                     ; preds = %8, %55, %63, %64, %59, %25, %27, %19, %21, %13, %15, %68, %46, %44, %40, %39, %35, %31
  %12 = phi i8 [ %9, %68 ], [ %9, %55 ], [ %9, %59 ], [ %9, %63 ], [ 0, %64 ], [ %9, %46 ], [ %9, %44 ], [ %9, %40 ], [ %9, %39 ], [ %9, %35 ], [ %9, %31 ], [ %9, %25 ], [ 0, %27 ], [ %9, %19 ], [ 0, %21 ], [ %9, %13 ], [ 0, %15 ], [ 0, %8 ]
  br label %8, !dbg !834, !llvm.loop !847

; <label>:13:                                     ; preds = %8
  %14 = tail call fastcc zeroext i1 @build_type_arg(i8** nonnull @header_type, %struct.re_pattern_buffer* nonnull @header_regex, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @header_fastmap, i64 0, i64 0)), !dbg !849
  br i1 %14, label %11, label %15, !dbg !851

; <label>:15:                                     ; preds = %13
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.16, i64 0, i64 0), i32 5) #11, !dbg !852
  %17 = load i8*, i8** @optarg, align 8, !dbg !854, !tbaa !767
  %18 = tail call i8* @quote(i8* %17) #11, !dbg !855
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %16, i8* %18) #11, !dbg !856
  call void @llvm.dbg.value(metadata i8 0, metadata !831, metadata !DIExpression()), !dbg !834
  br label %11, !dbg !857

; <label>:19:                                     ; preds = %8
  %20 = tail call fastcc zeroext i1 @build_type_arg(i8** nonnull @body_type, %struct.re_pattern_buffer* nonnull @body_regex, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @body_fastmap, i64 0, i64 0)), !dbg !858
  br i1 %20, label %11, label %21, !dbg !860

; <label>:21:                                     ; preds = %19
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.17, i64 0, i64 0), i32 5) #11, !dbg !861
  %23 = load i8*, i8** @optarg, align 8, !dbg !863, !tbaa !767
  %24 = tail call i8* @quote(i8* %23) #11, !dbg !864
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %22, i8* %24) #11, !dbg !865
  call void @llvm.dbg.value(metadata i8 0, metadata !831, metadata !DIExpression()), !dbg !834
  br label %11, !dbg !866

; <label>:25:                                     ; preds = %8
  %26 = tail call fastcc zeroext i1 @build_type_arg(i8** nonnull @footer_type, %struct.re_pattern_buffer* nonnull @footer_regex, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @footer_fastmap, i64 0, i64 0)), !dbg !867
  br i1 %26, label %11, label %27, !dbg !869

; <label>:27:                                     ; preds = %25
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.18, i64 0, i64 0), i32 5) #11, !dbg !870
  %29 = load i8*, i8** @optarg, align 8, !dbg !872, !tbaa !767
  %30 = tail call i8* @quote(i8* %29) #11, !dbg !873
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %28, i8* %30) #11, !dbg !874
  call void @llvm.dbg.value(metadata i8 0, metadata !831, metadata !DIExpression()), !dbg !834
  br label %11, !dbg !875

; <label>:31:                                     ; preds = %8
  %32 = load i8*, i8** @optarg, align 8, !dbg !876, !tbaa !767
  %33 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.19, i64 0, i64 0), i32 5) #11, !dbg !877
  %34 = tail call i64 @xdectoimax(i8* %32, i64 -9223372036854775808, i64 9223372036854775807, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0), i8* %33, i32 0) #11, !dbg !878
  store i64 %34, i64* @starting_line_number, align 8, !dbg !879, !tbaa !880
  br label %11, !dbg !882

; <label>:35:                                     ; preds = %8
  %36 = load i8*, i8** @optarg, align 8, !dbg !883, !tbaa !767
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.20, i64 0, i64 0), i32 5) #11, !dbg !884
  %38 = tail call i64 @xdectoimax(i8* %36, i64 1, i64 9223372036854775807, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0), i8* %37, i32 0) #11, !dbg !885
  store i64 %38, i64* @page_incr, align 8, !dbg !886, !tbaa !880
  br label %11, !dbg !887

; <label>:39:                                     ; preds = %8
  store i1 true, i1* @reset_numbers, align 1
  br label %11, !dbg !888

; <label>:40:                                     ; preds = %8
  %41 = load i8*, i8** @optarg, align 8, !dbg !889, !tbaa !767
  %42 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.21, i64 0, i64 0), i32 5) #11, !dbg !890
  %43 = tail call i64 @xdectoimax(i8* %41, i64 1, i64 9223372036854775807, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0), i8* %42, i32 0) #11, !dbg !891
  store i64 %43, i64* @blank_join, align 8, !dbg !892, !tbaa !880
  br label %11, !dbg !893

; <label>:44:                                     ; preds = %8
  %45 = load i64, i64* bitcast (i8** @optarg to i64*), align 8, !dbg !894, !tbaa !767
  store i64 %45, i64* bitcast (i8** @separator_str to i64*), align 8, !dbg !895, !tbaa !767
  br label %11, !dbg !896

; <label>:46:                                     ; preds = %8
  %47 = load i8*, i8** @optarg, align 8, !dbg !897, !tbaa !767
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.22, i64 0, i64 0), i32 5) #11, !dbg !898
  %49 = tail call i64 @xdectoimax(i8* %47, i64 1, i64 2147483647, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0), i8* %48, i32 0) #11, !dbg !899
  %50 = trunc i64 %49 to i32, !dbg !899
  store i32 %50, i32* @lineno_width, align 4, !dbg !900, !tbaa !901
  br label %11, !dbg !903

; <label>:51:                                     ; preds = %8
  %52 = load i8*, i8** @optarg, align 8, !dbg !904, !tbaa !767
  %53 = tail call i32 @strcmp(i8* %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0)) #14, !dbg !904
  %54 = icmp eq i32 %53, 0, !dbg !904
  br i1 %54, label %55, label %56, !dbg !906

; <label>:55:                                     ; preds = %51
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @FORMAT_LEFT, i64 0, i64 0), i8** @lineno_format, align 8, !dbg !907, !tbaa !767
  br label %11, !dbg !908

; <label>:56:                                     ; preds = %51
  %57 = tail call i32 @strcmp(i8* %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0)) #14, !dbg !909
  %58 = icmp eq i32 %57, 0, !dbg !909
  br i1 %58, label %59, label %60, !dbg !911

; <label>:59:                                     ; preds = %56
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @FORMAT_RIGHT_NOLZ, i64 0, i64 0), i8** @lineno_format, align 8, !dbg !912, !tbaa !767
  br label %11, !dbg !913

; <label>:60:                                     ; preds = %56
  %61 = tail call i32 @strcmp(i8* %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0)) #14, !dbg !914
  %62 = icmp eq i32 %61, 0, !dbg !914
  br i1 %62, label %63, label %64, !dbg !916

; <label>:63:                                     ; preds = %60
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @FORMAT_RIGHT_LZ, i64 0, i64 0), i8** @lineno_format, align 8, !dbg !917, !tbaa !767
  br label %11, !dbg !918

; <label>:64:                                     ; preds = %60
  %65 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i32 5) #11, !dbg !919
  %66 = load i8*, i8** @optarg, align 8, !dbg !921, !tbaa !767
  %67 = tail call i8* @quote(i8* %66) #11, !dbg !922
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %65, i8* %67) #11, !dbg !923
  call void @llvm.dbg.value(metadata i8 0, metadata !831, metadata !DIExpression()), !dbg !834
  br label %11

; <label>:68:                                     ; preds = %8
  %69 = load i64, i64* bitcast (i8** @optarg to i64*), align 8, !dbg !924, !tbaa !767
  store i64 %69, i64* bitcast (i8** @section_del to i64*), align 8, !dbg !925, !tbaa !767
  br label %11, !dbg !926

; <label>:70:                                     ; preds = %8
  tail call void @usage(i32 0) #16, !dbg !927
  unreachable, !dbg !927

; <label>:71:                                     ; preds = %8
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !928, !tbaa !767
  %73 = load i8*, i8** @Version, align 8, !dbg !928, !tbaa !767
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %72, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0), i8* %73, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i64 0, i64 0), i8* null) #11, !dbg !928
  tail call void @exit(i32 0) #15, !dbg !928
  unreachable, !dbg !928

; <label>:74:                                     ; preds = %8
  call void @llvm.dbg.value(metadata i8 %9, metadata !831, metadata !DIExpression()), !dbg !834
  call void @llvm.dbg.value(metadata i8 %9, metadata !831, metadata !DIExpression()), !dbg !834
  call void @llvm.dbg.value(metadata i8 %9, metadata !831, metadata !DIExpression()), !dbg !834
  call void @llvm.dbg.value(metadata i8 %9, metadata !831, metadata !DIExpression()), !dbg !834
  call void @llvm.dbg.value(metadata i8 %9, metadata !831, metadata !DIExpression()), !dbg !834
  call void @llvm.dbg.value(metadata i8 %9, metadata !831, metadata !DIExpression()), !dbg !834
  %75 = icmp eq i8 %9, 0, !dbg !929
  br i1 %75, label %76, label %77, !dbg !931

; <label>:76:                                     ; preds = %74
  tail call void @usage(i32 1) #16, !dbg !932
  unreachable, !dbg !932

; <label>:77:                                     ; preds = %74
  %78 = load i8*, i8** @section_del, align 8, !dbg !933, !tbaa !767
  %79 = tail call i64 @strlen(i8* %78) #14, !dbg !934
  call void @llvm.dbg.value(metadata i64 %79, metadata !830, metadata !DIExpression()), !dbg !935
  %80 = mul i64 %79, 3, !dbg !936
  store i64 %80, i64* @header_del_len, align 8, !dbg !937, !tbaa !880
  %81 = add i64 %80, 1, !dbg !938
  %82 = tail call noalias i8* @xmalloc(i64 %81) #11, !dbg !939
  store i8* %82, i8** @header_del, align 8, !dbg !940, !tbaa !767
  %83 = load i8*, i8** @section_del, align 8, !dbg !941, !tbaa !767
  call void @llvm.dbg.value(metadata i8* %82, metadata !942, metadata !DIExpression()) #11, !dbg !951
  call void @llvm.dbg.value(metadata i8* %83, metadata !950, metadata !DIExpression()) #11, !dbg !951
  %84 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %82, i1 false, i1 true) #11, !dbg !953
  %85 = tail call i8* @__stpcpy_chk(i8* nonnull %82, i8* nonnull %83, i64 %84) #11, !dbg !954
  %86 = load i8*, i8** @section_del, align 8, !dbg !955, !tbaa !767
  call void @llvm.dbg.value(metadata i8* %85, metadata !942, metadata !DIExpression()) #11, !dbg !956
  call void @llvm.dbg.value(metadata i8* %86, metadata !950, metadata !DIExpression()) #11, !dbg !956
  %87 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %85, i1 false, i1 true) #11, !dbg !958
  %88 = tail call i8* @__stpcpy_chk(i8* nonnull %85, i8* nonnull %86, i64 %87) #11, !dbg !959
  %89 = load i8*, i8** @section_del, align 8, !dbg !960, !tbaa !767
  call void @llvm.dbg.value(metadata i8* %88, metadata !942, metadata !DIExpression()) #11, !dbg !961
  call void @llvm.dbg.value(metadata i8* %89, metadata !950, metadata !DIExpression()) #11, !dbg !961
  %90 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %88, i1 false, i1 true) #11, !dbg !963
  %91 = tail call i8* @__stpcpy_chk(i8* nonnull %88, i8* nonnull %89, i64 %90) #11, !dbg !964
  %92 = shl i64 %79, 1, !dbg !965
  store i64 %92, i64* @body_del_len, align 8, !dbg !966, !tbaa !880
  %93 = or i64 %92, 1, !dbg !967
  %94 = tail call noalias i8* @xmalloc(i64 %93) #11, !dbg !968
  store i8* %94, i8** @body_del, align 8, !dbg !969, !tbaa !767
  %95 = load i8*, i8** @section_del, align 8, !dbg !970, !tbaa !767
  call void @llvm.dbg.value(metadata i8* %94, metadata !942, metadata !DIExpression()) #11, !dbg !971
  call void @llvm.dbg.value(metadata i8* %95, metadata !950, metadata !DIExpression()) #11, !dbg !971
  %96 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %94, i1 false, i1 true) #11, !dbg !973
  %97 = tail call i8* @__stpcpy_chk(i8* nonnull %94, i8* nonnull %95, i64 %96) #11, !dbg !974
  %98 = load i8*, i8** @section_del, align 8, !dbg !975, !tbaa !767
  call void @llvm.dbg.value(metadata i8* %97, metadata !942, metadata !DIExpression()) #11, !dbg !976
  call void @llvm.dbg.value(metadata i8* %98, metadata !950, metadata !DIExpression()) #11, !dbg !976
  %99 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %97, i1 false, i1 true) #11, !dbg !978
  %100 = tail call i8* @__stpcpy_chk(i8* nonnull %97, i8* nonnull %98, i64 %99) #11, !dbg !979
  store i64 %79, i64* @footer_del_len, align 8, !dbg !980, !tbaa !880
  %101 = add i64 %79, 1, !dbg !981
  %102 = tail call noalias i8* @xmalloc(i64 %101) #11, !dbg !982
  store i8* %102, i8** @footer_del, align 8, !dbg !983, !tbaa !767
  %103 = load i8*, i8** @section_del, align 8, !dbg !984, !tbaa !767
  call void @llvm.dbg.value(metadata i8* %102, metadata !942, metadata !DIExpression()) #11, !dbg !985
  call void @llvm.dbg.value(metadata i8* %103, metadata !950, metadata !DIExpression()) #11, !dbg !985
  %104 = tail call i64 @llvm.objectsize.i64.p0i8(i8* nonnull %102, i1 false, i1 true) #11, !dbg !987
  %105 = tail call i8* @__stpcpy_chk(i8* nonnull %102, i8* nonnull %103, i64 %104) #11, !dbg !988
  tail call void @initbuffer(%struct.linebuffer* nonnull @line_buf) #11, !dbg !989
  %106 = load i8*, i8** @separator_str, align 8, !dbg !990, !tbaa !767
  %107 = tail call i64 @strlen(i8* %106) #14, !dbg !991
  call void @llvm.dbg.value(metadata i64 %107, metadata !830, metadata !DIExpression()), !dbg !935
  %108 = load i32, i32* @lineno_width, align 4, !dbg !992, !tbaa !901
  %109 = sext i32 %108 to i64, !dbg !992
  %110 = add i64 %107, 1, !dbg !993
  %111 = add i64 %110, %109, !dbg !994
  %112 = tail call noalias i8* @xmalloc(i64 %111) #11, !dbg !995
  store i8* %112, i8** @print_no_line_fmt, align 8, !dbg !996, !tbaa !767
  %113 = load i32, i32* @lineno_width, align 4, !dbg !997, !tbaa !901
  %114 = sext i32 %113 to i64, !dbg !997
  %115 = add i64 %107, %114, !dbg !998
  tail call void @llvm.memset.p0i8.i64(i8* align 1 %112, i8 32, i64 %115, i1 false), !dbg !999
  %116 = getelementptr inbounds i8, i8* %112, i64 %115, !dbg !1000
  store i8 0, i8* %116, align 1, !dbg !1001, !tbaa !1002
  %117 = load i64, i64* @starting_line_number, align 8, !dbg !1003, !tbaa !880
  store i64 %117, i64* @line_no, align 8, !dbg !1004, !tbaa !880
  %118 = load i64, i64* bitcast (i8** @body_type to i64*), align 8, !dbg !1005, !tbaa !767
  store i64 %118, i64* bitcast (i8** @current_type to i64*), align 8, !dbg !1006, !tbaa !767
  store %struct.re_pattern_buffer* @body_regex, %struct.re_pattern_buffer** @current_regex, align 8, !dbg !1007, !tbaa !767
  %119 = load i32, i32* @optind, align 4, !dbg !1008, !tbaa !901
  %120 = icmp eq i32 %119, %0, !dbg !1010
  br i1 %120, label %123, label %121, !dbg !1011

; <label>:121:                                    ; preds = %77
  call void @llvm.dbg.value(metadata i8 %9, metadata !831, metadata !DIExpression()), !dbg !834
  %122 = icmp slt i32 %119, %0, !dbg !1012
  br i1 %122, label %126, label %138, !dbg !1015

; <label>:123:                                    ; preds = %77
  %124 = tail call fastcc zeroext i1 @nl_file(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i64 0, i64 0)), !dbg !1016
  %125 = zext i1 %124 to i8, !dbg !1017
  call void @llvm.dbg.value(metadata i8 %125, metadata !831, metadata !DIExpression()), !dbg !834
  br label %138, !dbg !1018

; <label>:126:                                    ; preds = %121, %126
  %127 = phi i32 [ %136, %126 ], [ %119, %121 ]
  %128 = phi i8 [ %134, %126 ], [ %9, %121 ]
  call void @llvm.dbg.value(metadata i8 %128, metadata !831, metadata !DIExpression()), !dbg !834
  %129 = sext i32 %127 to i64, !dbg !1019
  %130 = getelementptr inbounds i8*, i8** %1, i64 %129, !dbg !1019
  %131 = load i8*, i8** %130, align 8, !dbg !1019, !tbaa !767
  %132 = tail call fastcc zeroext i1 @nl_file(i8* %131), !dbg !1020
  %133 = zext i1 %132 to i8, !dbg !1020
  %134 = and i8 %128, %133, !dbg !1021
  %135 = load i32, i32* @optind, align 4, !dbg !1022, !tbaa !901
  %136 = add nsw i32 %135, 1, !dbg !1022
  store i32 %136, i32* @optind, align 4, !dbg !1022, !tbaa !901
  call void @llvm.dbg.value(metadata i8 %134, metadata !831, metadata !DIExpression()), !dbg !834
  %137 = icmp slt i32 %136, %0, !dbg !1012
  br i1 %137, label %126, label %138, !dbg !1015, !llvm.loop !1023

; <label>:138:                                    ; preds = %126, %121, %123
  %139 = phi i8 [ %125, %123 ], [ %9, %121 ], [ %134, %126 ], !dbg !1025
  call void @llvm.dbg.value(metadata i8 %139, metadata !831, metadata !DIExpression()), !dbg !834
  %140 = load i1, i1* @have_read_stdin, align 1
  br i1 %140, label %141, label %148, !dbg !1026

; <label>:141:                                    ; preds = %138
  %142 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1028, !tbaa !767
  %143 = tail call i32 @rpl_fclose(%struct._IO_FILE* %142) #11, !dbg !1029
  %144 = icmp eq i32 %143, -1, !dbg !1030
  br i1 %144, label %145, label %148, !dbg !1031

; <label>:145:                                    ; preds = %141
  %146 = tail call i32* @__errno_location() #17, !dbg !1032
  %147 = load i32, i32* %146, align 4, !dbg !1032, !tbaa !901
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %147, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i64 0, i64 0)) #11, !dbg !1032
  unreachable, !dbg !1032

; <label>:148:                                    ; preds = %141, %138
  %149 = and i8 %139, 1, !dbg !1033
  %150 = xor i8 %149, 1, !dbg !1033
  %151 = zext i8 %150 to i32, !dbg !1033
  ret i32 %151, !dbg !1034
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @build_type_arg(i8** nocapture, %struct.re_pattern_buffer*, i8*) unnamed_addr #7 !dbg !1035 {
  call void @llvm.dbg.value(metadata i8** %0, metadata !1040, metadata !DIExpression()), !dbg !1045
  call void @llvm.dbg.value(metadata %struct.re_pattern_buffer* %1, metadata !1041, metadata !DIExpression()), !dbg !1046
  call void @llvm.dbg.value(metadata i8* %2, metadata !1042, metadata !DIExpression()), !dbg !1047
  call void @llvm.dbg.value(metadata i8 1, metadata !1044, metadata !DIExpression()), !dbg !1048
  %4 = load i8*, i8** @optarg, align 8, !dbg !1049, !tbaa !767
  %5 = load i8, i8* %4, align 1, !dbg !1050, !tbaa !1002
  %6 = sext i8 %5 to i32, !dbg !1050
  switch i32 %6, label %20 [
    i32 97, label %7
    i32 116, label %7
    i32 110, label %7
    i32 112, label %10
  ], !dbg !1051

; <label>:7:                                      ; preds = %3, %3, %3
  %8 = ptrtoint i8* %4 to i64, !dbg !1051
  %9 = bitcast i8** %0 to i64*, !dbg !1052
  store i64 %8, i64* %9, align 8, !dbg !1052, !tbaa !767
  br label %20, !dbg !1054

; <label>:10:                                     ; preds = %3
  %11 = getelementptr inbounds i8, i8* %4, i64 1, !dbg !1055
  store i8* %11, i8** @optarg, align 8, !dbg !1055, !tbaa !767
  store i8* %4, i8** %0, align 8, !dbg !1056, !tbaa !767
  %12 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1, i64 0, i32 4, !dbg !1057
  %13 = bitcast %struct.re_pattern_buffer* %1 to i8*, !dbg !1058
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 16, i1 false), !dbg !1059
  store i8* %2, i8** %12, align 8, !dbg !1058, !tbaa !1060
  %14 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %1, i64 0, i32 5, !dbg !1062
  store i8* null, i8** %14, align 8, !dbg !1063, !tbaa !1064
  store i64 710, i64* @re_syntax_options, align 8, !dbg !1065, !tbaa !880
  %15 = load i8*, i8** @optarg, align 8, !dbg !1066, !tbaa !767
  %16 = tail call i64 @strlen(i8* %15) #14, !dbg !1067
  %17 = tail call i8* @re_compile_pattern(i8* %15, i64 %16, %struct.re_pattern_buffer* %1) #11, !dbg !1068
  call void @llvm.dbg.value(metadata i8* %17, metadata !1043, metadata !DIExpression()), !dbg !1069
  %18 = icmp eq i8* %17, null, !dbg !1070
  br i1 %18, label %20, label %19, !dbg !1072

; <label>:19:                                     ; preds = %10
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i64 0, i64 0), i8* nonnull %17) #11, !dbg !1073
  unreachable, !dbg !1073

; <label>:20:                                     ; preds = %3, %10, %7
  %21 = phi i1 [ true, %10 ], [ true, %7 ], [ false, %3 ]
  ret i1 %21, !dbg !1074
}

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #8

; Function Attrs: nounwind readnone speculatable
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1, i1) #1

; Function Attrs: nounwind
declare i8* @__stpcpy_chk(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @nl_file(i8*) unnamed_addr #7 !dbg !1075 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1079, metadata !DIExpression()), !dbg !1134
  %2 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i64 0, i64 0)) #14, !dbg !1135
  %3 = icmp eq i32 %2, 0, !dbg !1135
  br i1 %3, label %4, label %6, !dbg !1137

; <label>:4:                                      ; preds = %1
  store i1 true, i1* @have_read_stdin, align 1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1138, !tbaa !767
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %5, metadata !1080, metadata !DIExpression()), !dbg !1140
  br label %13, !dbg !1141

; <label>:6:                                      ; preds = %1
  %7 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.65, i64 0, i64 0)), !dbg !1142
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %7, metadata !1080, metadata !DIExpression()), !dbg !1140
  %8 = icmp eq %struct._IO_FILE* %7, null, !dbg !1144
  br i1 %8, label %9, label %13, !dbg !1146

; <label>:9:                                      ; preds = %6
  %10 = tail call i32* @__errno_location() #17, !dbg !1147
  %11 = load i32, i32* %10, align 4, !dbg !1147, !tbaa !901
  %12 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #11, !dbg !1149
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i64 0, i64 0), i8* %12) #11, !dbg !1150
  br label %216, !dbg !1151

; <label>:13:                                     ; preds = %6, %4
  %14 = phi %struct._IO_FILE* [ %5, %4 ], [ %7, %6 ], !dbg !1152
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %14, metadata !1080, metadata !DIExpression()), !dbg !1140
  tail call void @fadvise(%struct._IO_FILE* %14, i32 2) #11, !dbg !1153
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %14, metadata !1154, metadata !DIExpression()) #11, !dbg !1159
  %15 = tail call %struct.linebuffer* @readlinebuffer(%struct.linebuffer* nonnull @line_buf, %struct._IO_FILE* %14) #11, !dbg !1161
  %16 = icmp eq %struct.linebuffer* %15, null, !dbg !1162
  br i1 %16, label %196, label %17, !dbg !1162

; <label>:17:                                     ; preds = %13, %193
  %18 = load i64, i64* getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @line_buf, i64 0, i32 1), align 8, !dbg !1163, !tbaa !1171
  %19 = add i64 %18, -1, !dbg !1173
  call void @llvm.dbg.value(metadata i64 %19, metadata !1168, metadata !DIExpression()) #11, !dbg !1174
  %20 = icmp ult i64 %19, 2, !dbg !1175
  br i1 %20, label %95, label %21, !dbg !1177

; <label>:21:                                     ; preds = %17
  %22 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @line_buf, i64 0, i32 2), align 8, !dbg !1178, !tbaa !1179
  %23 = load i8*, i8** @section_del, align 8, !dbg !1180, !tbaa !767
  %24 = tail call i32 @memcmp(i8* %22, i8* %23, i64 2) #14, !dbg !1181
  %25 = icmp eq i32 %24, 0, !dbg !1181
  br i1 %25, label %26, label %95, !dbg !1182

; <label>:26:                                     ; preds = %21
  %27 = load i64, i64* @header_del_len, align 8, !dbg !1183, !tbaa !880
  %28 = icmp eq i64 %19, %27, !dbg !1185
  br i1 %28, label %29, label %33, !dbg !1186

; <label>:29:                                     ; preds = %26
  %30 = load i8*, i8** @header_del, align 8, !dbg !1187, !tbaa !767
  %31 = tail call i32 @memcmp(i8* %22, i8* %30, i64 %19) #14, !dbg !1188
  %32 = icmp eq i32 %31, 0, !dbg !1188
  br i1 %32, label %47, label %33, !dbg !1189

; <label>:33:                                     ; preds = %29, %26
  %34 = load i64, i64* @body_del_len, align 8, !dbg !1190, !tbaa !880
  %35 = icmp eq i64 %19, %34, !dbg !1192
  br i1 %35, label %36, label %40, !dbg !1193

; <label>:36:                                     ; preds = %33
  %37 = load i8*, i8** @body_del, align 8, !dbg !1194, !tbaa !767
  %38 = tail call i32 @memcmp(i8* %22, i8* %37, i64 %19) #14, !dbg !1195
  %39 = icmp eq i32 %38, 0, !dbg !1195
  br i1 %39, label %63, label %40, !dbg !1196

; <label>:40:                                     ; preds = %36, %33
  %41 = load i64, i64* @footer_del_len, align 8, !dbg !1197, !tbaa !880
  %42 = icmp eq i64 %19, %41, !dbg !1199
  br i1 %42, label %43, label %95, !dbg !1200

; <label>:43:                                     ; preds = %40
  %44 = load i8*, i8** @footer_del, align 8, !dbg !1201, !tbaa !767
  %45 = tail call i32 @memcmp(i8* %22, i8* %44, i64 %19) #14, !dbg !1202
  %46 = icmp eq i32 %45, 0, !dbg !1202
  br i1 %46, label %79, label %95, !dbg !1203

; <label>:47:                                     ; preds = %29
  %48 = load i64, i64* bitcast (i8** @header_type to i64*), align 8, !dbg !1204, !tbaa !767
  store i64 %48, i64* bitcast (i8** @current_type to i64*), align 8, !dbg !1208, !tbaa !767
  store %struct.re_pattern_buffer* @header_regex, %struct.re_pattern_buffer** @current_regex, align 8, !dbg !1209, !tbaa !767
  %49 = load i1, i1* @reset_numbers, align 1
  br i1 %49, label %52, label %50, !dbg !1210

; <label>:50:                                     ; preds = %47
  %51 = load i64, i64* @starting_line_number, align 8, !dbg !1211, !tbaa !880
  store i64 %51, i64* @line_no, align 8, !dbg !1213, !tbaa !880
  br label %52, !dbg !1214

; <label>:52:                                     ; preds = %50, %47
  call void @llvm.dbg.value(metadata i32 10, metadata !1215, metadata !DIExpression()) #11, !dbg !1221
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1223, !tbaa !767
  %54 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %53, i64 0, i32 5, !dbg !1223
  %55 = load i8*, i8** %54, align 8, !dbg !1223, !tbaa !1224
  %56 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %53, i64 0, i32 6, !dbg !1223
  %57 = load i8*, i8** %56, align 8, !dbg !1223, !tbaa !1227
  %58 = icmp ult i8* %55, %57, !dbg !1223
  br i1 %58, label %61, label %59, !dbg !1223, !prof !1228

; <label>:59:                                     ; preds = %52
  %60 = tail call i32 @__overflow(%struct._IO_FILE* %53, i32 10) #11, !dbg !1223
  br label %193, !dbg !1223

; <label>:61:                                     ; preds = %52
  %62 = getelementptr inbounds i8, i8* %55, i64 1, !dbg !1223
  store i8* %62, i8** %54, align 8, !dbg !1223, !tbaa !1224
  store i8 10, i8* %55, align 1, !dbg !1223, !tbaa !1002
  br label %193, !dbg !1223

; <label>:63:                                     ; preds = %36
  %64 = load i64, i64* bitcast (i8** @body_type to i64*), align 8, !dbg !1229, !tbaa !767
  store i64 %64, i64* bitcast (i8** @current_type to i64*), align 8, !dbg !1232, !tbaa !767
  store %struct.re_pattern_buffer* @body_regex, %struct.re_pattern_buffer** @current_regex, align 8, !dbg !1233, !tbaa !767
  %65 = load i1, i1* @reset_numbers, align 1
  br i1 %65, label %68, label %66, !dbg !1234

; <label>:66:                                     ; preds = %63
  %67 = load i64, i64* @starting_line_number, align 8, !dbg !1235, !tbaa !880
  store i64 %67, i64* @line_no, align 8, !dbg !1237, !tbaa !880
  br label %68, !dbg !1238

; <label>:68:                                     ; preds = %66, %63
  call void @llvm.dbg.value(metadata i32 10, metadata !1215, metadata !DIExpression()) #11, !dbg !1239
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1241, !tbaa !767
  %70 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %69, i64 0, i32 5, !dbg !1241
  %71 = load i8*, i8** %70, align 8, !dbg !1241, !tbaa !1224
  %72 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %69, i64 0, i32 6, !dbg !1241
  %73 = load i8*, i8** %72, align 8, !dbg !1241, !tbaa !1227
  %74 = icmp ult i8* %71, %73, !dbg !1241
  br i1 %74, label %77, label %75, !dbg !1241, !prof !1228

; <label>:75:                                     ; preds = %68
  %76 = tail call i32 @__overflow(%struct._IO_FILE* %69, i32 10) #11, !dbg !1241
  br label %193, !dbg !1241

; <label>:77:                                     ; preds = %68
  %78 = getelementptr inbounds i8, i8* %71, i64 1, !dbg !1241
  store i8* %78, i8** %70, align 8, !dbg !1241, !tbaa !1224
  store i8 10, i8* %71, align 1, !dbg !1241, !tbaa !1002
  br label %193, !dbg !1241

; <label>:79:                                     ; preds = %43
  %80 = load i64, i64* bitcast (i8** @footer_type to i64*), align 8, !dbg !1242, !tbaa !767
  store i64 %80, i64* bitcast (i8** @current_type to i64*), align 8, !dbg !1245, !tbaa !767
  store %struct.re_pattern_buffer* @footer_regex, %struct.re_pattern_buffer** @current_regex, align 8, !dbg !1246, !tbaa !767
  %81 = load i1, i1* @reset_numbers, align 1
  br i1 %81, label %84, label %82, !dbg !1247

; <label>:82:                                     ; preds = %79
  %83 = load i64, i64* @starting_line_number, align 8, !dbg !1248, !tbaa !880
  store i64 %83, i64* @line_no, align 8, !dbg !1250, !tbaa !880
  br label %84, !dbg !1251

; <label>:84:                                     ; preds = %82, %79
  call void @llvm.dbg.value(metadata i32 10, metadata !1215, metadata !DIExpression()) #11, !dbg !1252
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1254, !tbaa !767
  %86 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %85, i64 0, i32 5, !dbg !1254
  %87 = load i8*, i8** %86, align 8, !dbg !1254, !tbaa !1224
  %88 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %85, i64 0, i32 6, !dbg !1254
  %89 = load i8*, i8** %88, align 8, !dbg !1254, !tbaa !1227
  %90 = icmp ult i8* %87, %89, !dbg !1254
  br i1 %90, label %93, label %91, !dbg !1254, !prof !1228

; <label>:91:                                     ; preds = %84
  %92 = tail call i32 @__overflow(%struct._IO_FILE* %85, i32 10) #11, !dbg !1254
  br label %193, !dbg !1254

; <label>:93:                                     ; preds = %84
  %94 = getelementptr inbounds i8, i8* %87, i64 1, !dbg !1254
  store i8* %94, i8** %86, align 8, !dbg !1254, !tbaa !1224
  store i8 10, i8* %87, align 1, !dbg !1254, !tbaa !1002
  br label %193, !dbg !1254

; <label>:95:                                     ; preds = %43, %40, %21, %17
  %96 = load i8*, i8** @current_type, align 8, !dbg !1255, !tbaa !767
  %97 = load i8, i8* %96, align 1, !dbg !1257, !tbaa !1002
  %98 = sext i8 %97 to i32, !dbg !1257
  switch i32 %98, label %188 [
    i32 97, label %99
    i32 116, label %138
    i32 110, label %157
    i32 112, label %161
  ], !dbg !1258

; <label>:99:                                     ; preds = %95
  %100 = load i64, i64* @blank_join, align 8, !dbg !1259, !tbaa !880
  %101 = icmp sgt i64 %100, 1, !dbg !1262
  br i1 %101, label %102, label %125, !dbg !1263

; <label>:102:                                    ; preds = %99
  %103 = icmp ugt i64 %18, 1, !dbg !1264
  br i1 %103, label %108, label %104, !dbg !1267

; <label>:104:                                    ; preds = %102
  %105 = load i64, i64* @proc_text.blank_lines, align 8, !dbg !1268, !tbaa !880
  %106 = add nsw i64 %105, 1, !dbg !1268
  store i64 %106, i64* @proc_text.blank_lines, align 8, !dbg !1268, !tbaa !880
  %107 = icmp eq i64 %106, %100, !dbg !1269
  br i1 %107, label %108, label %121, !dbg !1270

; <label>:108:                                    ; preds = %104, %102
  %109 = load i8*, i8** @lineno_format, align 8, !dbg !1271, !tbaa !767
  %110 = load i32, i32* @lineno_width, align 4, !dbg !1271, !tbaa !901
  %111 = load i64, i64* @line_no, align 8, !dbg !1271, !tbaa !880
  %112 = load i8*, i8** @separator_str, align 8, !dbg !1271, !tbaa !767
  %113 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %109, i32 %110, i64 %111, i8* %112) #11, !dbg !1271
  %114 = load i64, i64* @page_incr, align 8, !dbg !1277, !tbaa !880
  %115 = icmp slt i64 %114, 0, !dbg !1278
  br i1 %115, label %116, label %118, !dbg !1280

; <label>:116:                                    ; preds = %108
  %117 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.67, i64 0, i64 0), i32 5) #11, !dbg !1281
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %117) #11, !dbg !1281
  unreachable, !dbg !1281

; <label>:118:                                    ; preds = %108
  %119 = load i64, i64* @line_no, align 8, !dbg !1282, !tbaa !880
  %120 = add nsw i64 %119, %114, !dbg !1283
  call void @llvm.dbg.value(metadata i64 %120, metadata !1274, metadata !DIExpression()) #11, !dbg !1284
  store i64 %120, i64* @line_no, align 8, !dbg !1285, !tbaa !880
  store i64 0, i64* @proc_text.blank_lines, align 8, !dbg !1286, !tbaa !880
  br label %188, !dbg !1287

; <label>:121:                                    ; preds = %104
  %122 = load i8*, i8** @print_no_line_fmt, align 8, !dbg !1288, !tbaa !767
  %123 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1288, !tbaa !767
  %124 = tail call i32 @fputs_unlocked(i8* %122, %struct._IO_FILE* %123) #11, !dbg !1288
  br label %188

; <label>:125:                                    ; preds = %99
  %126 = load i8*, i8** @lineno_format, align 8, !dbg !1289, !tbaa !767
  %127 = load i32, i32* @lineno_width, align 4, !dbg !1289, !tbaa !901
  %128 = load i64, i64* @line_no, align 8, !dbg !1289, !tbaa !880
  %129 = load i8*, i8** @separator_str, align 8, !dbg !1289, !tbaa !767
  %130 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %126, i32 %127, i64 %128, i8* %129) #11, !dbg !1289
  %131 = load i64, i64* @page_incr, align 8, !dbg !1291, !tbaa !880
  %132 = icmp slt i64 %131, 0, !dbg !1292
  br i1 %132, label %133, label %135, !dbg !1293

; <label>:133:                                    ; preds = %125
  %134 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.67, i64 0, i64 0), i32 5) #11, !dbg !1294
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %134) #11, !dbg !1294
  unreachable, !dbg !1294

; <label>:135:                                    ; preds = %125
  %136 = load i64, i64* @line_no, align 8, !dbg !1295, !tbaa !880
  %137 = add nsw i64 %136, %131, !dbg !1296
  call void @llvm.dbg.value(metadata i64 %137, metadata !1274, metadata !DIExpression()) #11, !dbg !1297
  store i64 %137, i64* @line_no, align 8, !dbg !1298, !tbaa !880
  br label %188

; <label>:138:                                    ; preds = %95
  %139 = icmp ugt i64 %18, 1, !dbg !1299
  br i1 %139, label %140, label %153, !dbg !1301

; <label>:140:                                    ; preds = %138
  %141 = load i8*, i8** @lineno_format, align 8, !dbg !1302, !tbaa !767
  %142 = load i32, i32* @lineno_width, align 4, !dbg !1302, !tbaa !901
  %143 = load i64, i64* @line_no, align 8, !dbg !1302, !tbaa !880
  %144 = load i8*, i8** @separator_str, align 8, !dbg !1302, !tbaa !767
  %145 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %141, i32 %142, i64 %143, i8* %144) #11, !dbg !1302
  %146 = load i64, i64* @page_incr, align 8, !dbg !1304, !tbaa !880
  %147 = icmp slt i64 %146, 0, !dbg !1305
  br i1 %147, label %148, label %150, !dbg !1306

; <label>:148:                                    ; preds = %140
  %149 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.67, i64 0, i64 0), i32 5) #11, !dbg !1307
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %149) #11, !dbg !1307
  unreachable, !dbg !1307

; <label>:150:                                    ; preds = %140
  %151 = load i64, i64* @line_no, align 8, !dbg !1308, !tbaa !880
  %152 = add nsw i64 %151, %146, !dbg !1309
  call void @llvm.dbg.value(metadata i64 %152, metadata !1274, metadata !DIExpression()) #11, !dbg !1310
  store i64 %152, i64* @line_no, align 8, !dbg !1311, !tbaa !880
  br label %188, !dbg !1312

; <label>:153:                                    ; preds = %138
  %154 = load i8*, i8** @print_no_line_fmt, align 8, !dbg !1313, !tbaa !767
  %155 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1313, !tbaa !767
  %156 = tail call i32 @fputs_unlocked(i8* %154, %struct._IO_FILE* %155) #11, !dbg !1313
  br label %188

; <label>:157:                                    ; preds = %95
  %158 = load i8*, i8** @print_no_line_fmt, align 8, !dbg !1314, !tbaa !767
  %159 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1314, !tbaa !767
  %160 = tail call i32 @fputs_unlocked(i8* %158, %struct._IO_FILE* %159) #11, !dbg !1314
  br label %188, !dbg !1315

; <label>:161:                                    ; preds = %95
  %162 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** @current_regex, align 8, !dbg !1316, !tbaa !767
  %163 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @line_buf, i64 0, i32 2), align 8, !dbg !1317, !tbaa !1179
  %164 = trunc i64 %18 to i32, !dbg !1318
  %165 = add i32 %164, -1, !dbg !1318
  %166 = tail call i32 @re_search(%struct.re_pattern_buffer* %162, i8* %163, i32 %165, i32 0, i32 %165, %struct.re_registers* null) #11, !dbg !1319
  switch i32 %166, label %175 [
    i32 -2, label %167
    i32 -1, label %171
  ], !dbg !1320

; <label>:167:                                    ; preds = %161
  %168 = tail call i32* @__errno_location() #17, !dbg !1321
  %169 = load i32, i32* %168, align 4, !dbg !1321, !tbaa !901
  %170 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.66, i64 0, i64 0), i32 5) #11, !dbg !1321
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %169, i8* %170) #11, !dbg !1321
  unreachable, !dbg !1321

; <label>:171:                                    ; preds = %161
  %172 = load i8*, i8** @print_no_line_fmt, align 8, !dbg !1323, !tbaa !767
  %173 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1323, !tbaa !767
  %174 = tail call i32 @fputs_unlocked(i8* %172, %struct._IO_FILE* %173) #11, !dbg !1323
  br label %188, !dbg !1324

; <label>:175:                                    ; preds = %161
  %176 = load i8*, i8** @lineno_format, align 8, !dbg !1325, !tbaa !767
  %177 = load i32, i32* @lineno_width, align 4, !dbg !1325, !tbaa !901
  %178 = load i64, i64* @line_no, align 8, !dbg !1325, !tbaa !880
  %179 = load i8*, i8** @separator_str, align 8, !dbg !1325, !tbaa !767
  %180 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %176, i32 %177, i64 %178, i8* %179) #11, !dbg !1325
  %181 = load i64, i64* @page_incr, align 8, !dbg !1327, !tbaa !880
  %182 = icmp slt i64 %181, 0, !dbg !1328
  br i1 %182, label %183, label %185, !dbg !1329

; <label>:183:                                    ; preds = %175
  %184 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.67, i64 0, i64 0), i32 5) #11, !dbg !1330
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %184) #11, !dbg !1330
  unreachable, !dbg !1330

; <label>:185:                                    ; preds = %175
  %186 = load i64, i64* @line_no, align 8, !dbg !1331, !tbaa !880
  %187 = add nsw i64 %186, %181, !dbg !1332
  call void @llvm.dbg.value(metadata i64 %187, metadata !1274, metadata !DIExpression()) #11, !dbg !1333
  store i64 %187, i64* @line_no, align 8, !dbg !1334, !tbaa !880
  br label %188, !dbg !1335

; <label>:188:                                    ; preds = %185, %171, %157, %153, %150, %135, %121, %118, %95
  %189 = load i8*, i8** getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @line_buf, i64 0, i32 2), align 8, !dbg !1336, !tbaa !1179
  %190 = load i64, i64* getelementptr inbounds (%struct.linebuffer, %struct.linebuffer* @line_buf, i64 0, i32 1), align 8, !dbg !1336, !tbaa !1171
  %191 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1336, !tbaa !767
  %192 = tail call i64 @fwrite_unlocked(i8* %189, i64 1, i64 %190, %struct._IO_FILE* %191) #11, !dbg !1336
  br label %193, !dbg !1337

; <label>:193:                                    ; preds = %188, %93, %91, %77, %75, %61, %59
  %194 = tail call %struct.linebuffer* @readlinebuffer(%struct.linebuffer* nonnull @line_buf, %struct._IO_FILE* %14) #11, !dbg !1161
  %195 = icmp eq %struct.linebuffer* %194, null, !dbg !1162
  br i1 %195, label %196, label %17, !dbg !1162, !llvm.loop !1338

; <label>:196:                                    ; preds = %193, %13
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %14, metadata !1341, metadata !DIExpression()), !dbg !1346
  %197 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %14, i64 0, i32 0, !dbg !1349
  %198 = load i32, i32* %197, align 8, !dbg !1349, !tbaa !1350
  %199 = and i32 %198, 32, !dbg !1349
  %200 = icmp eq i32 %199, 0, !dbg !1351
  br i1 %200, label %205, label %201, !dbg !1352

; <label>:201:                                    ; preds = %196
  %202 = tail call i32* @__errno_location() #17, !dbg !1353
  %203 = load i32, i32* %202, align 4, !dbg !1353, !tbaa !901
  %204 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #11, !dbg !1355
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %203, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i64 0, i64 0), i8* %204) #11, !dbg !1356
  br label %216, !dbg !1357

; <label>:205:                                    ; preds = %196
  %206 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i64 0, i64 0)) #14, !dbg !1358
  %207 = icmp eq i32 %206, 0, !dbg !1358
  br i1 %207, label %208, label %209, !dbg !1360

; <label>:208:                                    ; preds = %205
  tail call void @clearerr_unlocked(%struct._IO_FILE* nonnull %14) #11, !dbg !1361
  br label %216, !dbg !1361

; <label>:209:                                    ; preds = %205
  %210 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %14) #11, !dbg !1362
  %211 = icmp eq i32 %210, -1, !dbg !1364
  br i1 %211, label %212, label %216, !dbg !1365

; <label>:212:                                    ; preds = %209
  %213 = tail call i32* @__errno_location() #17, !dbg !1366
  %214 = load i32, i32* %213, align 4, !dbg !1366, !tbaa !901
  %215 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #11, !dbg !1368
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %214, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.61, i64 0, i64 0), i8* %215) #11, !dbg !1369
  br label %216, !dbg !1370

; <label>:216:                                    ; preds = %208, %209, %212, %201, %9
  %217 = phi i1 [ false, %201 ], [ false, %212 ], [ false, %9 ], [ true, %209 ], [ true, %208 ], !dbg !1371
  ret i1 %217, !dbg !1372
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #5

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

declare i32 @re_search(%struct.re_pattern_buffer*, i8*, i32, i32, i32, %struct.re_registers*) local_unnamed_addr #3

; Function Attrs: nounwind
declare i64 @fwrite_unlocked(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @clearerr_unlocked(%struct._IO_FILE*) local_unnamed_addr #2

declare i8* @re_compile_pattern(i8*, i64, %struct.re_pattern_buffer*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_file_name(i8*) local_unnamed_addr #7 !dbg !1373 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1375, metadata !DIExpression()), !dbg !1376
  store i8* %0, i8** @file_name, align 8, !dbg !1377, !tbaa !767
  ret void, !dbg !1378
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #7 !dbg !1379 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i1 %0, metadata !1383, metadata !DIExpression()), !dbg !1384
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1385, !tbaa !1386
  ret void, !dbg !1388
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #7 !dbg !1389 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1394, !tbaa !767
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #11, !dbg !1395
  %3 = icmp eq i32 %2, 0, !dbg !1396
  br i1 %3, label %22, label %4, !dbg !1397

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1398, !tbaa !1386, !range !1399
  %6 = icmp eq i8 %5, 0, !dbg !1398
  br i1 %6, label %11, label %7, !dbg !1400

; <label>:7:                                      ; preds = %4
  %8 = tail call i32* @__errno_location() #17, !dbg !1401
  %9 = load i32, i32* %8, align 4, !dbg !1401, !tbaa !901
  %10 = icmp eq i32 %9, 32, !dbg !1402
  br i1 %10, label %22, label %11, !dbg !1403

; <label>:11:                                     ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.71, i64 0, i64 0), i32 5) #11, !dbg !1404
  call void @llvm.dbg.value(metadata i8* %12, metadata !1391, metadata !DIExpression()), !dbg !1405
  %13 = load i8*, i8** @file_name, align 8, !dbg !1406, !tbaa !767
  %14 = icmp eq i8* %13, null, !dbg !1406
  %15 = tail call i32* @__errno_location() #17, !dbg !1408
  %16 = load i32, i32* %15, align 4, !dbg !1408, !tbaa !901
  br i1 %14, label %19, label %17, !dbg !1409

; <label>:17:                                     ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #11, !dbg !1410
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.72, i64 0, i64 0), i8* %18, i8* %12) #11, !dbg !1411
  br label %20, !dbg !1411

; <label>:19:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.73, i64 0, i64 0), i8* %12) #11, !dbg !1412
  br label %20

; <label>:20:                                     ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1413, !tbaa !901
  tail call void @_exit(i32 %21) #15, !dbg !1414
  unreachable, !dbg !1414

; <label>:22:                                     ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1415, !tbaa !767
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #11, !dbg !1417
  %25 = icmp eq i32 %24, 0, !dbg !1418
  br i1 %25, label %28, label %26, !dbg !1419

; <label>:26:                                     ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1420, !tbaa !901
  tail call void @_exit(i32 %27) #15, !dbg !1421
  unreachable, !dbg !1421

; <label>:28:                                     ; preds = %22
  ret void, !dbg !1422
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fdadvise(i32, i64, i64, i32) local_unnamed_addr #7 !dbg !1423 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1431, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %1, metadata !1432, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %2, metadata !1433, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i32 %3, metadata !1434, metadata !DIExpression()), !dbg !1440
  %5 = tail call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #11, !dbg !1441
  call void @llvm.dbg.value(metadata i32 %5, metadata !1435, metadata !DIExpression()), !dbg !1441
  ret void, !dbg !1442
}

; Function Attrs: nounwind
declare i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fadvise(%struct._IO_FILE*, i32) local_unnamed_addr #7 !dbg !1443 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1481, metadata !DIExpression()), !dbg !1483
  call void @llvm.dbg.value(metadata i32 %1, metadata !1482, metadata !DIExpression()), !dbg !1484
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !1485
  br i1 %3, label %7, label %4, !dbg !1487

; <label>:4:                                      ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !1488
  call void @llvm.dbg.value(metadata i32 %5, metadata !1431, metadata !DIExpression()) #11, !dbg !1489
  call void @llvm.dbg.value(metadata i64 0, metadata !1432, metadata !DIExpression()) #11, !dbg !1491
  call void @llvm.dbg.value(metadata i64 0, metadata !1433, metadata !DIExpression()) #11, !dbg !1492
  call void @llvm.dbg.value(metadata i32 %1, metadata !1434, metadata !DIExpression()) #11, !dbg !1493
  %6 = tail call i32 @posix_fadvise(i32 %5, i64 0, i64 0, i32 %1) #11, !dbg !1494
  call void @llvm.dbg.value(metadata i32 %6, metadata !1435, metadata !DIExpression()) #11, !dbg !1494
  br label %7, !dbg !1495

; <label>:7:                                      ; preds = %2, %4
  ret void, !dbg !1496
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @initbuffer(%struct.linebuffer* nocapture) local_unnamed_addr #7 !dbg !1497 {
  call void @llvm.dbg.value(metadata %struct.linebuffer* %0, metadata !1508, metadata !DIExpression()), !dbg !1509
  %2 = bitcast %struct.linebuffer* %0 to i8*, !dbg !1510
  tail call void @llvm.memset.p0i8.i64(i8* align 8 %2, i8 0, i64 24, i1 false), !dbg !1510
  ret void, !dbg !1511
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.linebuffer* @readlinebuffer(%struct.linebuffer*, %struct._IO_FILE*) local_unnamed_addr #7 !dbg !1512 {
  call void @llvm.dbg.value(metadata %struct.linebuffer* %0, metadata !1550, metadata !DIExpression()), !dbg !1552
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, metadata !1551, metadata !DIExpression()), !dbg !1553
  call void @llvm.dbg.value(metadata %struct.linebuffer* %0, metadata !1554, metadata !DIExpression()) #11, !dbg !1569
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, metadata !1559, metadata !DIExpression()) #11, !dbg !1571
  call void @llvm.dbg.value(metadata i8 10, metadata !1560, metadata !DIExpression()) #11, !dbg !1572
  %3 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 2, !dbg !1573
  %4 = load i8*, i8** %3, align 8, !dbg !1573, !tbaa !1179
  call void @llvm.dbg.value(metadata i8* %4, metadata !1562, metadata !DIExpression()) #11, !dbg !1574
  call void @llvm.dbg.value(metadata i8* %4, metadata !1563, metadata !DIExpression()) #11, !dbg !1575
  %5 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 0, !dbg !1576
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, metadata !1577, metadata !DIExpression()) #11, !dbg !1582
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 0, !dbg !1585
  %7 = load i32, i32* %6, align 8, !dbg !1585, !tbaa !1350
  %8 = and i32 %7, 16, !dbg !1585
  %9 = icmp eq i32 %8, 0, !dbg !1586
  br i1 %9, label %10, label %62, !dbg !1587

; <label>:10:                                     ; preds = %2
  %11 = load i64, i64* %5, align 8, !dbg !1576, !tbaa !1588
  %12 = getelementptr inbounds i8, i8* %4, i64 %11, !dbg !1589
  call void @llvm.dbg.value(metadata i8* %12, metadata !1564, metadata !DIExpression()) #11, !dbg !1590
  %13 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 1
  %14 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 2
  br label %15, !dbg !1591

; <label>:15:                                     ; preds = %48, %10
  %16 = phi i8* [ %49, %48 ], [ %4, %10 ], !dbg !1596
  %17 = phi i8* [ %53, %48 ], [ %4, %10 ], !dbg !1597
  %18 = phi i8* [ %51, %48 ], [ %12, %10 ], !dbg !1596
  call void @llvm.dbg.value(metadata i8* %18, metadata !1564, metadata !DIExpression()) #11, !dbg !1590
  call void @llvm.dbg.value(metadata i8* %17, metadata !1563, metadata !DIExpression()) #11, !dbg !1575
  call void @llvm.dbg.value(metadata i8* %16, metadata !1562, metadata !DIExpression()) #11, !dbg !1574
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, metadata !1594, metadata !DIExpression()) #11, !dbg !1598
  %19 = load i8*, i8** %13, align 8, !dbg !1591, !tbaa !1599
  %20 = load i8*, i8** %14, align 8, !dbg !1591, !tbaa !1600
  %21 = icmp ult i8* %19, %20, !dbg !1591
  br i1 %21, label %22, label %26, !dbg !1591, !prof !1228

; <label>:22:                                     ; preds = %15
  %23 = getelementptr inbounds i8, i8* %19, i64 1, !dbg !1591
  store i8* %23, i8** %13, align 8, !dbg !1591, !tbaa !1599
  %24 = load i8, i8* %19, align 1, !dbg !1591, !tbaa !1002
  %25 = zext i8 %24 to i32, !dbg !1591
  call void @llvm.dbg.value(metadata i32 %27, metadata !1561, metadata !DIExpression()) #11, !dbg !1601
  br label %39, !dbg !1602

; <label>:26:                                     ; preds = %15
  %27 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %1) #11, !dbg !1591
  call void @llvm.dbg.value(metadata i32 %27, metadata !1561, metadata !DIExpression()) #11, !dbg !1601
  %28 = icmp eq i32 %27, -1, !dbg !1603
  br i1 %28, label %29, label %39, !dbg !1602

; <label>:29:                                     ; preds = %26
  %30 = icmp eq i8* %17, %16, !dbg !1605
  br i1 %30, label %62, label %31, !dbg !1608

; <label>:31:                                     ; preds = %29
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, metadata !1609, metadata !DIExpression()) #11, !dbg !1612
  %32 = load i32, i32* %6, align 8, !dbg !1614, !tbaa !1350
  %33 = and i32 %32, 32, !dbg !1614
  %34 = icmp eq i32 %33, 0, !dbg !1615
  br i1 %34, label %35, label %62, !dbg !1616

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds i8, i8* %17, i64 -1, !dbg !1617
  %37 = load i8, i8* %36, align 1, !dbg !1617, !tbaa !1002
  %38 = icmp eq i8 %37, 10, !dbg !1619
  br i1 %38, label %55, label %39, !dbg !1620

; <label>:39:                                     ; preds = %35, %26, %22
  %40 = phi i32 [ %27, %26 ], [ %25, %22 ], [ 10, %35 ], !dbg !1597
  call void @llvm.dbg.value(metadata i32 %40, metadata !1561, metadata !DIExpression()) #11, !dbg !1601
  %41 = icmp eq i8* %17, %18, !dbg !1621
  br i1 %41, label %42, label %48, !dbg !1622

; <label>:42:                                     ; preds = %39
  %43 = load i64, i64* %5, align 8, !dbg !1623, !tbaa !1588
  call void @llvm.dbg.value(metadata i64 %43, metadata !1565, metadata !DIExpression()) #11, !dbg !1624
  %44 = tail call i8* @x2realloc(i8* %16, i64* %5) #11, !dbg !1625
  call void @llvm.dbg.value(metadata i8* %44, metadata !1562, metadata !DIExpression()) #11, !dbg !1574
  %45 = getelementptr inbounds i8, i8* %44, i64 %43, !dbg !1626
  call void @llvm.dbg.value(metadata i8* %45, metadata !1563, metadata !DIExpression()) #11, !dbg !1575
  store i8* %44, i8** %3, align 8, !dbg !1627, !tbaa !1179
  %46 = load i64, i64* %5, align 8, !dbg !1628, !tbaa !1588
  %47 = getelementptr inbounds i8, i8* %44, i64 %46, !dbg !1629
  call void @llvm.dbg.value(metadata i8* %47, metadata !1564, metadata !DIExpression()) #11, !dbg !1590
  br label %48, !dbg !1630

; <label>:48:                                     ; preds = %42, %39
  %49 = phi i8* [ %44, %42 ], [ %16, %39 ], !dbg !1631
  %50 = phi i8* [ %45, %42 ], [ %17, %39 ], !dbg !1631
  %51 = phi i8* [ %47, %42 ], [ %18, %39 ], !dbg !1631
  call void @llvm.dbg.value(metadata i8* %51, metadata !1564, metadata !DIExpression()) #11, !dbg !1590
  call void @llvm.dbg.value(metadata i8* %50, metadata !1563, metadata !DIExpression()) #11, !dbg !1575
  call void @llvm.dbg.value(metadata i8* %49, metadata !1562, metadata !DIExpression()) #11, !dbg !1574
  %52 = trunc i32 %40 to i8, !dbg !1632
  %53 = getelementptr inbounds i8, i8* %50, i64 1, !dbg !1633
  call void @llvm.dbg.value(metadata i8* %53, metadata !1563, metadata !DIExpression()) #11, !dbg !1575
  store i8 %52, i8* %50, align 1, !dbg !1634, !tbaa !1002
  %54 = icmp eq i32 %40, 10, !dbg !1635
  br i1 %54, label %55, label %15, !dbg !1636, !llvm.loop !1637

; <label>:55:                                     ; preds = %48, %35
  %56 = phi i8* [ %16, %35 ], [ %49, %48 ], !dbg !1596
  %57 = phi i8* [ %17, %35 ], [ %53, %48 ], !dbg !1597
  call void @llvm.dbg.value(metadata i8* %57, metadata !1563, metadata !DIExpression()) #11, !dbg !1575
  call void @llvm.dbg.value(metadata i8* %56, metadata !1562, metadata !DIExpression()) #11, !dbg !1574
  %58 = ptrtoint i8* %57 to i64, !dbg !1640
  %59 = ptrtoint i8* %56 to i64, !dbg !1640
  %60 = sub i64 %58, %59, !dbg !1640
  %61 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 1, !dbg !1641
  store i64 %60, i64* %61, align 8, !dbg !1642, !tbaa !1171
  br label %62, !dbg !1643

; <label>:62:                                     ; preds = %29, %31, %2, %55
  %63 = phi %struct.linebuffer* [ %0, %55 ], [ null, %2 ], [ null, %31 ], [ null, %29 ], !dbg !1631
  ret %struct.linebuffer* %63, !dbg !1644
}

declare i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.linebuffer* @readlinebuffer_delim(%struct.linebuffer*, %struct._IO_FILE*, i8 signext) local_unnamed_addr #7 !dbg !1555 {
  call void @llvm.dbg.value(metadata %struct.linebuffer* %0, metadata !1554, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, metadata !1559, metadata !DIExpression()), !dbg !1646
  call void @llvm.dbg.value(metadata i8 %2, metadata !1560, metadata !DIExpression()), !dbg !1647
  %4 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 2, !dbg !1648
  %5 = load i8*, i8** %4, align 8, !dbg !1648, !tbaa !1179
  call void @llvm.dbg.value(metadata i8* %5, metadata !1562, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i8* %5, metadata !1563, metadata !DIExpression()), !dbg !1650
  %6 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 0, !dbg !1651
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, metadata !1577, metadata !DIExpression()), !dbg !1652
  %7 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 0, !dbg !1654
  %8 = load i32, i32* %7, align 8, !dbg !1654, !tbaa !1350
  %9 = and i32 %8, 16, !dbg !1654
  %10 = icmp eq i32 %9, 0, !dbg !1655
  br i1 %10, label %11, label %64, !dbg !1656

; <label>:11:                                     ; preds = %3
  %12 = load i64, i64* %6, align 8, !dbg !1651, !tbaa !1588
  %13 = getelementptr inbounds i8, i8* %5, i64 %12, !dbg !1657
  call void @llvm.dbg.value(metadata i8* %13, metadata !1564, metadata !DIExpression()), !dbg !1658
  %14 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 1
  %15 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %1, i64 0, i32 2
  %16 = sext i8 %2 to i32
  br label %17, !dbg !1659

; <label>:17:                                     ; preds = %11, %50
  %18 = phi i8* [ %51, %50 ], [ %5, %11 ], !dbg !1661
  %19 = phi i8* [ %55, %50 ], [ %5, %11 ], !dbg !1662
  %20 = phi i8* [ %53, %50 ], [ %13, %11 ], !dbg !1661
  call void @llvm.dbg.value(metadata i8* %20, metadata !1564, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.value(metadata i8* %19, metadata !1563, metadata !DIExpression()), !dbg !1650
  call void @llvm.dbg.value(metadata i8* %18, metadata !1562, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, metadata !1594, metadata !DIExpression()) #11, !dbg !1663
  %21 = load i8*, i8** %14, align 8, !dbg !1659, !tbaa !1599
  %22 = load i8*, i8** %15, align 8, !dbg !1659, !tbaa !1600
  %23 = icmp ult i8* %21, %22, !dbg !1659
  br i1 %23, label %24, label %28, !dbg !1659, !prof !1228

; <label>:24:                                     ; preds = %17
  %25 = getelementptr inbounds i8, i8* %21, i64 1, !dbg !1659
  store i8* %25, i8** %14, align 8, !dbg !1659, !tbaa !1599
  %26 = load i8, i8* %21, align 1, !dbg !1659, !tbaa !1002
  %27 = zext i8 %26 to i32, !dbg !1659
  call void @llvm.dbg.value(metadata i32 %29, metadata !1561, metadata !DIExpression()), !dbg !1664
  br label %41, !dbg !1665

; <label>:28:                                     ; preds = %17
  %29 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %1) #11, !dbg !1659
  call void @llvm.dbg.value(metadata i32 %29, metadata !1561, metadata !DIExpression()), !dbg !1664
  %30 = icmp eq i32 %29, -1, !dbg !1666
  br i1 %30, label %31, label %41, !dbg !1665

; <label>:31:                                     ; preds = %28
  %32 = icmp eq i8* %19, %18, !dbg !1667
  br i1 %32, label %64, label %33, !dbg !1668

; <label>:33:                                     ; preds = %31
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %1, metadata !1609, metadata !DIExpression()), !dbg !1669
  %34 = load i32, i32* %7, align 8, !dbg !1671, !tbaa !1350
  %35 = and i32 %34, 32, !dbg !1671
  %36 = icmp eq i32 %35, 0, !dbg !1672
  br i1 %36, label %37, label %64, !dbg !1673

; <label>:37:                                     ; preds = %33
  %38 = getelementptr inbounds i8, i8* %19, i64 -1, !dbg !1674
  %39 = load i8, i8* %38, align 1, !dbg !1674, !tbaa !1002
  %40 = icmp eq i8 %39, %2, !dbg !1675
  br i1 %40, label %57, label %41, !dbg !1676

; <label>:41:                                     ; preds = %37, %24, %28
  %42 = phi i32 [ %29, %28 ], [ %27, %24 ], [ %16, %37 ], !dbg !1662
  call void @llvm.dbg.value(metadata i32 %42, metadata !1561, metadata !DIExpression()), !dbg !1664
  %43 = icmp eq i8* %19, %20, !dbg !1677
  br i1 %43, label %44, label %50, !dbg !1678

; <label>:44:                                     ; preds = %41
  %45 = load i64, i64* %6, align 8, !dbg !1679, !tbaa !1588
  call void @llvm.dbg.value(metadata i64 %45, metadata !1565, metadata !DIExpression()), !dbg !1680
  %46 = tail call i8* @x2realloc(i8* %18, i64* %6) #11, !dbg !1681
  call void @llvm.dbg.value(metadata i8* %46, metadata !1562, metadata !DIExpression()), !dbg !1649
  %47 = getelementptr inbounds i8, i8* %46, i64 %45, !dbg !1682
  call void @llvm.dbg.value(metadata i8* %47, metadata !1563, metadata !DIExpression()), !dbg !1650
  store i8* %46, i8** %4, align 8, !dbg !1683, !tbaa !1179
  %48 = load i64, i64* %6, align 8, !dbg !1684, !tbaa !1588
  %49 = getelementptr inbounds i8, i8* %46, i64 %48, !dbg !1685
  call void @llvm.dbg.value(metadata i8* %49, metadata !1564, metadata !DIExpression()), !dbg !1658
  br label %50, !dbg !1686

; <label>:50:                                     ; preds = %44, %41
  %51 = phi i8* [ %46, %44 ], [ %18, %41 ], !dbg !1687
  %52 = phi i8* [ %47, %44 ], [ %19, %41 ], !dbg !1687
  %53 = phi i8* [ %49, %44 ], [ %20, %41 ], !dbg !1687
  call void @llvm.dbg.value(metadata i8* %53, metadata !1564, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.value(metadata i8* %52, metadata !1563, metadata !DIExpression()), !dbg !1650
  call void @llvm.dbg.value(metadata i8* %51, metadata !1562, metadata !DIExpression()), !dbg !1649
  %54 = trunc i32 %42 to i8, !dbg !1688
  %55 = getelementptr inbounds i8, i8* %52, i64 1, !dbg !1689
  call void @llvm.dbg.value(metadata i8* %55, metadata !1563, metadata !DIExpression()), !dbg !1650
  store i8 %54, i8* %52, align 1, !dbg !1690, !tbaa !1002
  %56 = icmp eq i32 %42, %16, !dbg !1691
  br i1 %56, label %57, label %17, !dbg !1692, !llvm.loop !1637

; <label>:57:                                     ; preds = %50, %37
  %58 = phi i8* [ %18, %37 ], [ %51, %50 ], !dbg !1661
  %59 = phi i8* [ %19, %37 ], [ %55, %50 ], !dbg !1662
  call void @llvm.dbg.value(metadata i8* %59, metadata !1563, metadata !DIExpression()), !dbg !1650
  call void @llvm.dbg.value(metadata i8* %58, metadata !1562, metadata !DIExpression()), !dbg !1649
  %60 = ptrtoint i8* %59 to i64, !dbg !1693
  %61 = ptrtoint i8* %58 to i64, !dbg !1693
  %62 = sub i64 %60, %61, !dbg !1693
  %63 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 1, !dbg !1694
  store i64 %62, i64* %63, align 8, !dbg !1695, !tbaa !1171
  br label %64, !dbg !1696

; <label>:64:                                     ; preds = %31, %33, %3, %57
  %65 = phi %struct.linebuffer* [ %0, %57 ], [ null, %3 ], [ null, %33 ], [ null, %31 ], !dbg !1687
  ret %struct.linebuffer* %65, !dbg !1697
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @freebuffer(%struct.linebuffer* nocapture readonly) local_unnamed_addr #7 !dbg !1698 {
  call void @llvm.dbg.value(metadata %struct.linebuffer* %0, metadata !1700, metadata !DIExpression()), !dbg !1701
  %2 = getelementptr inbounds %struct.linebuffer, %struct.linebuffer* %0, i64 0, i32 2, !dbg !1702
  %3 = load i8*, i8** %2, align 8, !dbg !1702, !tbaa !1179
  tail call void @free(i8* %3) #11, !dbg !1703
  ret void, !dbg !1704
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8*) local_unnamed_addr #7 !dbg !1705 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1707, metadata !DIExpression()), !dbg !1710
  %2 = icmp eq i8* %0, null, !dbg !1711
  br i1 %2, label %3, label %6, !dbg !1713

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1714, !tbaa !767
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.86, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !1716
  tail call void @abort() #15, !dbg !1717
  unreachable, !dbg !1717

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !1718
  call void @llvm.dbg.value(metadata i8* %7, metadata !1708, metadata !DIExpression()), !dbg !1719
  %8 = icmp eq i8* %7, null, !dbg !1720
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1721
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1722
  call void @llvm.dbg.value(metadata i8* %10, metadata !1709, metadata !DIExpression()), !dbg !1723
  %11 = ptrtoint i8* %10 to i64, !dbg !1724
  %12 = ptrtoint i8* %0 to i64, !dbg !1724
  %13 = sub i64 %11, %12, !dbg !1724
  %14 = icmp sgt i64 %13, 6, !dbg !1726
  br i1 %14, label %15, label %24, !dbg !1727

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1728
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.87, i64 0, i64 0), i64 7) #14, !dbg !1729
  %18 = icmp eq i32 %17, 0, !dbg !1730
  br i1 %18, label %19, label %24, !dbg !1731

; <label>:19:                                     ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1707, metadata !DIExpression()), !dbg !1710
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.88, i64 0, i64 0), i64 3) #14, !dbg !1732
  %21 = icmp eq i32 %20, 0, !dbg !1735
  br i1 %21, label %22, label %24, !dbg !1736

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1737
  call void @llvm.dbg.value(metadata i8* %23, metadata !1707, metadata !DIExpression()), !dbg !1710
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1739, !tbaa !767
  br label %24, !dbg !1740

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1707, metadata !DIExpression()), !dbg !1710
  store i8* %25, i8** @program_name, align 8, !dbg !1741, !tbaa !767
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1742, !tbaa !767
  ret void, !dbg !1743
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #11

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #7 !dbg !1744 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1749, metadata !DIExpression()), !dbg !1752
  %2 = tail call i32* @__errno_location() #17, !dbg !1753
  %3 = load i32, i32* %2, align 4, !dbg !1753, !tbaa !901
  call void @llvm.dbg.value(metadata i32 %3, metadata !1750, metadata !DIExpression()), !dbg !1754
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1755
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1755
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1755
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #11, !dbg !1756
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1756
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1751, metadata !DIExpression()), !dbg !1757
  store i32 %3, i32* %2, align 4, !dbg !1758, !tbaa !901
  ret %struct.quoting_options* %8, !dbg !1759
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #12 !dbg !1760 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1766, metadata !DIExpression()), !dbg !1767
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1768
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1768
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1769
  %5 = load i32, i32* %4, align 8, !dbg !1769, !tbaa !1770
  ret i32 %5, !dbg !1772
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !1773 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1777, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i32 %1, metadata !1778, metadata !DIExpression()), !dbg !1780
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1781
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1781
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1782
  store i32 %1, i32* %5, align 8, !dbg !1783, !tbaa !1770
  ret void, !dbg !1784
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #7 !dbg !1785 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1789, metadata !DIExpression()), !dbg !1797
  call void @llvm.dbg.value(metadata i8 %1, metadata !1790, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i32 %2, metadata !1791, metadata !DIExpression()), !dbg !1799
  call void @llvm.dbg.value(metadata i8 %1, metadata !1792, metadata !DIExpression()), !dbg !1800
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1801
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1801
  %6 = lshr i8 %1, 5, !dbg !1802
  %7 = zext i8 %6 to i64, !dbg !1802
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1803
  call void @llvm.dbg.value(metadata i32* %8, metadata !1793, metadata !DIExpression()), !dbg !1804
  %9 = and i8 %1, 31, !dbg !1805
  %10 = zext i8 %9 to i32, !dbg !1805
  call void @llvm.dbg.value(metadata i32 %10, metadata !1795, metadata !DIExpression()), !dbg !1806
  %11 = load i32, i32* %8, align 4, !dbg !1807, !tbaa !901
  %12 = lshr i32 %11, %10, !dbg !1808
  %13 = and i32 %12, 1, !dbg !1809
  call void @llvm.dbg.value(metadata i32 %13, metadata !1796, metadata !DIExpression()), !dbg !1810
  %14 = and i32 %2, 1, !dbg !1811
  %15 = xor i32 %13, %14, !dbg !1812
  %16 = shl i32 %15, %10, !dbg !1813
  %17 = xor i32 %16, %11, !dbg !1814
  store i32 %17, i32* %8, align 4, !dbg !1814, !tbaa !901
  ret i32 %13, !dbg !1815
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !1816 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1820, metadata !DIExpression()), !dbg !1823
  call void @llvm.dbg.value(metadata i32 %1, metadata !1821, metadata !DIExpression()), !dbg !1824
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1825
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1827
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1820, metadata !DIExpression()), !dbg !1823
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1828
  %6 = load i32, i32* %5, align 4, !dbg !1828, !tbaa !1829
  call void @llvm.dbg.value(metadata i32 %6, metadata !1822, metadata !DIExpression()), !dbg !1830
  store i32 %1, i32* %5, align 4, !dbg !1831, !tbaa !1829
  ret i32 %6, !dbg !1832
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #7 !dbg !1833 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1837, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i8* %1, metadata !1838, metadata !DIExpression()), !dbg !1841
  call void @llvm.dbg.value(metadata i8* %2, metadata !1839, metadata !DIExpression()), !dbg !1842
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1843
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1845
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1837, metadata !DIExpression()), !dbg !1840
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1846
  store i32 10, i32* %6, align 8, !dbg !1847, !tbaa !1770
  %7 = icmp ne i8* %1, null, !dbg !1848
  %8 = icmp ne i8* %2, null, !dbg !1850
  %9 = and i1 %7, %8, !dbg !1851
  br i1 %9, label %11, label %10, !dbg !1851

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !1852
  unreachable, !dbg !1852

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1853
  store i8* %1, i8** %12, align 8, !dbg !1854, !tbaa !1855
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1856
  store i8* %2, i8** %13, align 8, !dbg !1857, !tbaa !1858
  ret void, !dbg !1859
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #7 !dbg !1860 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1864, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i64 %1, metadata !1865, metadata !DIExpression()), !dbg !1873
  call void @llvm.dbg.value(metadata i8* %2, metadata !1866, metadata !DIExpression()), !dbg !1874
  call void @llvm.dbg.value(metadata i64 %3, metadata !1867, metadata !DIExpression()), !dbg !1875
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1868, metadata !DIExpression()), !dbg !1876
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1877
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1877
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1869, metadata !DIExpression()), !dbg !1878
  %8 = tail call i32* @__errno_location() #17, !dbg !1879
  %9 = load i32, i32* %8, align 4, !dbg !1879, !tbaa !901
  call void @llvm.dbg.value(metadata i32 %9, metadata !1870, metadata !DIExpression()), !dbg !1880
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1881
  %11 = load i32, i32* %10, align 8, !dbg !1881, !tbaa !1770
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1882
  %13 = load i32, i32* %12, align 4, !dbg !1882, !tbaa !1829
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1883
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1884
  %16 = load i8*, i8** %15, align 8, !dbg !1884, !tbaa !1855
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1885
  %18 = load i8*, i8** %17, align 8, !dbg !1885, !tbaa !1858
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1886
  call void @llvm.dbg.value(metadata i64 %19, metadata !1871, metadata !DIExpression()), !dbg !1887
  store i32 %9, i32* %8, align 4, !dbg !1888, !tbaa !901
  ret i64 %19, !dbg !1889
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #7 !dbg !1890 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1896, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i64 %1, metadata !1897, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i8* %2, metadata !1898, metadata !DIExpression()), !dbg !1962
  call void @llvm.dbg.value(metadata i64 %3, metadata !1899, metadata !DIExpression()), !dbg !1963
  call void @llvm.dbg.value(metadata i32 %4, metadata !1900, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i32 %5, metadata !1901, metadata !DIExpression()), !dbg !1965
  call void @llvm.dbg.value(metadata i32* %6, metadata !1902, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i8* %7, metadata !1903, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i8* %8, metadata !1904, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i64 0, metadata !1906, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata i64 0, metadata !1907, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i8* null, metadata !1908, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i64 0, metadata !1909, metadata !DIExpression()), !dbg !1972
  call void @llvm.dbg.value(metadata i8 0, metadata !1910, metadata !DIExpression()), !dbg !1973
  %13 = tail call i64 @__ctype_get_mb_cur_max() #11, !dbg !1974
  %14 = icmp eq i64 %13, 1, !dbg !1975
  %15 = lshr i32 %5, 1, !dbg !1976
  %16 = trunc i32 %15 to i8, !dbg !1976
  %17 = and i8 %16, 1, !dbg !1976
  call void @llvm.dbg.value(metadata i8 %17, metadata !1912, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i8 0, metadata !1913, metadata !DIExpression()), !dbg !1977
  call void @llvm.dbg.value(metadata i8 0, metadata !1914, metadata !DIExpression()), !dbg !1978
  call void @llvm.dbg.value(metadata i8 1, metadata !1915, metadata !DIExpression()), !dbg !1979
  %18 = icmp ne i32* %6, null
  %19 = bitcast i64* %10 to i8*
  %20 = icmp eq i32* %6, null
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 4
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr inbounds i8, i8* %2, i64 1
  %26 = bitcast i32* %12 to i8*
  br label %27, !dbg !1980

; <label>:27:                                     ; preds = %634, %9
  %28 = phi i32 [ %4, %9 ], [ %94, %634 ]
  %29 = phi i8* [ %7, %9 ], [ %95, %634 ]
  %30 = phi i8* [ %8, %9 ], [ %96, %634 ]
  %31 = phi i64 [ 0, %9 ], [ %124, %634 ], !dbg !1970
  %32 = phi i8* [ null, %9 ], [ %98, %634 ], !dbg !1971
  %33 = phi i64 [ 0, %9 ], [ %99, %634 ], !dbg !1972
  %34 = phi i8 [ 0, %9 ], [ %100, %634 ], !dbg !1973
  %35 = phi i64 [ %3, %9 ], [ %618, %634 ]
  %36 = phi i8 [ %17, %9 ], [ %101, %634 ], !dbg !1981
  %37 = phi i8 [ 0, %9 ], [ %126, %634 ], !dbg !1977
  %38 = phi i8 [ 0, %9 ], [ %127, %634 ], !dbg !1978
  %39 = phi i8 [ 1, %9 ], [ %128, %634 ], !dbg !1979
  %40 = phi i64 [ %1, %9 ], [ %124, %634 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !1897, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i8 %39, metadata !1915, metadata !DIExpression()), !dbg !1979
  call void @llvm.dbg.value(metadata i8 %38, metadata !1914, metadata !DIExpression()), !dbg !1978
  call void @llvm.dbg.value(metadata i8 %37, metadata !1913, metadata !DIExpression()), !dbg !1977
  call void @llvm.dbg.value(metadata i8 %36, metadata !1912, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i64 %35, metadata !1899, metadata !DIExpression()), !dbg !1963
  call void @llvm.dbg.value(metadata i8 %34, metadata !1910, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %33, metadata !1909, metadata !DIExpression()), !dbg !1972
  call void @llvm.dbg.value(metadata i8* %32, metadata !1908, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i64 %31, metadata !1907, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i64 0, metadata !1906, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata i8* %30, metadata !1904, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i8* %29, metadata !1903, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i32 %28, metadata !1900, metadata !DIExpression()), !dbg !1964
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
  ], !dbg !1983

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, metadata !1900, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i8 1, metadata !1912, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i8 %36, metadata !1912, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i32 5, metadata !1900, metadata !DIExpression()), !dbg !1964
  br label %93, !dbg !1984

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, metadata !1912, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i32 5, metadata !1900, metadata !DIExpression()), !dbg !1964
  %43 = and i8 %36, 1, !dbg !1985
  %44 = icmp eq i8 %43, 0, !dbg !1985
  br i1 %44, label %45, label %93, !dbg !1984

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1987
  br i1 %46, label %93, label %47, !dbg !1990

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1987, !tbaa !1002
  br label %93, !dbg !1987

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.99, i64 0, i64 0), i32 %28), !dbg !1991
  call void @llvm.dbg.value(metadata i8* %49, metadata !1903, metadata !DIExpression()), !dbg !1967
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.100, i64 0, i64 0), i32 %28), !dbg !1995
  call void @llvm.dbg.value(metadata i8* %50, metadata !1904, metadata !DIExpression()), !dbg !1968
  br label %51, !dbg !1996

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, metadata !1904, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i8* %52, metadata !1903, metadata !DIExpression()), !dbg !1967
  %54 = and i8 %36, 1, !dbg !1997
  %55 = icmp eq i8 %54, 0, !dbg !1997
  br i1 %55, label %56, label %71, !dbg !1999

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, metadata !1908, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i64 0, metadata !1906, metadata !DIExpression()), !dbg !1969
  %57 = load i8, i8* %52, align 1, !dbg !2000, !tbaa !1002
  %58 = icmp eq i8 %57, 0, !dbg !2003
  br i1 %58, label %71, label %59, !dbg !2003

; <label>:59:                                     ; preds = %56, %66
  %60 = phi i8 [ %69, %66 ], [ %57, %56 ]
  %61 = phi i8* [ %68, %66 ], [ %52, %56 ]
  %62 = phi i64 [ %67, %66 ], [ 0, %56 ]
  call void @llvm.dbg.value(metadata i8* %61, metadata !1908, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i64 %62, metadata !1906, metadata !DIExpression()), !dbg !1969
  %63 = icmp ult i64 %62, %40, !dbg !2004
  br i1 %63, label %64, label %66, !dbg !2007

; <label>:64:                                     ; preds = %59
  %65 = getelementptr inbounds i8, i8* %0, i64 %62, !dbg !2004
  store i8 %60, i8* %65, align 1, !dbg !2004, !tbaa !1002
  br label %66, !dbg !2004

; <label>:66:                                     ; preds = %64, %59
  %67 = add i64 %62, 1, !dbg !2007
  %68 = getelementptr inbounds i8, i8* %61, i64 1, !dbg !2008
  call void @llvm.dbg.value(metadata i8* %68, metadata !1908, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i64 %67, metadata !1906, metadata !DIExpression()), !dbg !1969
  %69 = load i8, i8* %68, align 1, !dbg !2000, !tbaa !1002
  %70 = icmp eq i8 %69, 0, !dbg !2003
  br i1 %70, label %71, label %59, !dbg !2003, !llvm.loop !2009

; <label>:71:                                     ; preds = %66, %56, %51
  %72 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %67, %66 ], !dbg !1969
  call void @llvm.dbg.value(metadata i64 %72, metadata !1906, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata i8 1, metadata !1910, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8* %53, metadata !1908, metadata !DIExpression()), !dbg !1971
  %73 = call i64 @strlen(i8* %53) #14, !dbg !2011
  call void @llvm.dbg.value(metadata i64 %73, metadata !1909, metadata !DIExpression()), !dbg !1972
  br label %93, !dbg !2012

; <label>:74:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !1910, metadata !DIExpression()), !dbg !1973
  br label %75, !dbg !2013

; <label>:75:                                     ; preds = %27, %74
  %76 = phi i8 [ %34, %27 ], [ 1, %74 ], !dbg !1981
  call void @llvm.dbg.value(metadata i8 %76, metadata !1910, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 1, metadata !1912, metadata !DIExpression()), !dbg !1976
  br label %77, !dbg !2014

; <label>:77:                                     ; preds = %27, %75
  %78 = phi i8 [ %34, %27 ], [ %76, %75 ], !dbg !1973
  %79 = phi i8 [ %36, %27 ], [ 1, %75 ], !dbg !1981
  call void @llvm.dbg.value(metadata i8 %79, metadata !1912, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i8 %78, metadata !1910, metadata !DIExpression()), !dbg !1973
  %80 = and i8 %79, 1, !dbg !2015
  %81 = icmp eq i8 %80, 0, !dbg !2015
  %82 = select i1 %81, i8 1, i8 %78, !dbg !2017
  br label %83, !dbg !2017

; <label>:83:                                     ; preds = %77, %27
  %84 = phi i8 [ %34, %27 ], [ %82, %77 ], !dbg !2018
  %85 = phi i8 [ %36, %27 ], [ %79, %77 ], !dbg !1976
  call void @llvm.dbg.value(metadata i8 %85, metadata !1912, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i8 %84, metadata !1910, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i32 2, metadata !1900, metadata !DIExpression()), !dbg !1964
  %86 = and i8 %85, 1, !dbg !2019
  %87 = icmp eq i8 %86, 0, !dbg !2019
  br i1 %87, label %88, label %93, !dbg !2021

; <label>:88:                                     ; preds = %83
  %89 = icmp eq i64 %40, 0, !dbg !2022
  br i1 %89, label %93, label %90, !dbg !2025

; <label>:90:                                     ; preds = %88
  store i8 39, i8* %0, align 1, !dbg !2022, !tbaa !1002
  br label %93, !dbg !2022

; <label>:91:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !1912, metadata !DIExpression()), !dbg !1976
  br label %93, !dbg !2026

; <label>:92:                                     ; preds = %27
  call void @abort() #15, !dbg !2027
  unreachable, !dbg !2027

; <label>:93:                                     ; preds = %41, %83, %88, %90, %27, %42, %45, %47, %91, %71
  %94 = phi i32 [ 0, %91 ], [ %28, %71 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ %28, %27 ], [ 2, %90 ], [ 2, %88 ], [ 2, %83 ], [ 5, %41 ]
  %95 = phi i8* [ %29, %91 ], [ %52, %71 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %90 ], [ %29, %88 ], [ %29, %83 ], [ %29, %41 ]
  %96 = phi i8* [ %30, %91 ], [ %53, %71 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %90 ], [ %30, %88 ], [ %30, %83 ], [ %30, %41 ]
  %97 = phi i64 [ 0, %91 ], [ %72, %71 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %90 ], [ 1, %88 ], [ 0, %83 ], [ 0, %41 ], !dbg !1969
  %98 = phi i8* [ %32, %91 ], [ %53, %71 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.101, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.101, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.101, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.100, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.100, i64 0, i64 0), %88 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.100, i64 0, i64 0), %83 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.101, i64 0, i64 0), %41 ], !dbg !1981
  %99 = phi i64 [ %33, %91 ], [ %73, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %90 ], [ 1, %88 ], [ 1, %83 ], [ 1, %41 ], !dbg !1981
  %100 = phi i8 [ %34, %91 ], [ 1, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %84, %90 ], [ %84, %88 ], [ %84, %83 ], [ 1, %41 ], !dbg !1981
  %101 = phi i8 [ 0, %91 ], [ %36, %71 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %85, %90 ], [ %85, %88 ], [ %85, %83 ], [ 1, %41 ], !dbg !2028
  call void @llvm.dbg.value(metadata i8 %101, metadata !1912, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i8 %100, metadata !1910, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %99, metadata !1909, metadata !DIExpression()), !dbg !1972
  call void @llvm.dbg.value(metadata i8* %98, metadata !1908, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i64 %97, metadata !1906, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata i8* %96, metadata !1904, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i8* %95, metadata !1903, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i32 %94, metadata !1900, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i64 0, metadata !1905, metadata !DIExpression()), !dbg !2029
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
  br label %121, !dbg !2030

; <label>:121:                                    ; preds = %607, %93
  %122 = phi i64 [ 0, %93 ], [ %616, %607 ], !dbg !2031
  %123 = phi i64 [ %97, %93 ], [ %609, %607 ], !dbg !1969
  %124 = phi i64 [ %31, %93 ], [ %610, %607 ], !dbg !1970
  %125 = phi i64 [ %35, %93 ], [ %611, %607 ]
  %126 = phi i8 [ %37, %93 ], [ %612, %607 ], !dbg !1977
  %127 = phi i8 [ %38, %93 ], [ %613, %607 ], !dbg !1978
  %128 = phi i8 [ %39, %93 ], [ %614, %607 ], !dbg !1979
  %129 = phi i64 [ %40, %93 ], [ %615, %607 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !1897, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i8 %128, metadata !1915, metadata !DIExpression()), !dbg !1979
  call void @llvm.dbg.value(metadata i8 %127, metadata !1914, metadata !DIExpression()), !dbg !1978
  call void @llvm.dbg.value(metadata i8 %126, metadata !1913, metadata !DIExpression()), !dbg !1977
  call void @llvm.dbg.value(metadata i64 %125, metadata !1899, metadata !DIExpression()), !dbg !1963
  call void @llvm.dbg.value(metadata i64 %124, metadata !1907, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i64 %123, metadata !1906, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata i64 %122, metadata !1905, metadata !DIExpression()), !dbg !2029
  %130 = icmp eq i64 %125, -1, !dbg !2032
  br i1 %130, label %131, label %135, !dbg !2033

; <label>:131:                                    ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2034
  %133 = load i8, i8* %132, align 1, !dbg !2034, !tbaa !1002
  %134 = icmp eq i8 %133, 0, !dbg !2035
  br i1 %134, label %617, label %137, !dbg !2036

; <label>:135:                                    ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !2037
  br i1 %136, label %617, label %137, !dbg !2036

; <label>:137:                                    ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !1921, metadata !DIExpression()), !dbg !2038
  call void @llvm.dbg.value(metadata i8 0, metadata !1922, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8 0, metadata !1923, metadata !DIExpression()), !dbg !2040
  br i1 %107, label %138, label %153, !dbg !2041

; <label>:138:                                    ; preds = %137
  %139 = add i64 %122, %99, !dbg !2043
  %140 = and i1 %108, %130, !dbg !2044
  br i1 %140, label %141, label %143, !dbg !2044

; <label>:141:                                    ; preds = %138
  %142 = call i64 @strlen(i8* %2) #14, !dbg !2045
  call void @llvm.dbg.value(metadata i64 %142, metadata !1899, metadata !DIExpression()), !dbg !1963
  br label %143, !dbg !2046

; <label>:143:                                    ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ]
  call void @llvm.dbg.value(metadata i64 %144, metadata !1899, metadata !DIExpression()), !dbg !1963
  %145 = icmp ugt i64 %139, %144, !dbg !2047
  br i1 %145, label %153, label %146, !dbg !2048

; <label>:146:                                    ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2049
  %148 = call i32 @memcmp(i8* %147, i8* %98, i64 %99) #14, !dbg !2050
  %149 = icmp ne i32 %148, 0, !dbg !2051
  %150 = or i1 %149, %110, !dbg !2052
  %151 = xor i1 %149, true, !dbg !2052
  %152 = zext i1 %151 to i8, !dbg !2052
  br i1 %150, label %153, label %661, !dbg !2052

; <label>:153:                                    ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !2053
  call void @llvm.dbg.value(metadata i8 %155, metadata !1921, metadata !DIExpression()), !dbg !2038
  call void @llvm.dbg.value(metadata i64 %154, metadata !1899, metadata !DIExpression()), !dbg !1963
  %156 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2054
  %157 = load i8, i8* %156, align 1, !dbg !2054, !tbaa !1002
  call void @llvm.dbg.value(metadata i8 %157, metadata !1916, metadata !DIExpression()), !dbg !2055
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
  ], !dbg !2056

; <label>:158:                                    ; preds = %153
  br i1 %103, label %159, label %207, !dbg !2057

; <label>:159:                                    ; preds = %158
  br i1 %110, label %160, label %661, !dbg !2058

; <label>:160:                                    ; preds = %159
  call void @llvm.dbg.value(metadata i8 1, metadata !1922, metadata !DIExpression()), !dbg !2039
  %161 = and i8 %126, 1, !dbg !2062
  %162 = icmp eq i8 %161, 0, !dbg !2062
  %163 = and i1 %114, %162, !dbg !2062
  br i1 %163, label %164, label %180, !dbg !2062

; <label>:164:                                    ; preds = %160
  %165 = icmp ult i64 %123, %129, !dbg !2064
  br i1 %165, label %166, label %168, !dbg !2068

; <label>:166:                                    ; preds = %164
  %167 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2064
  store i8 39, i8* %167, align 1, !dbg !2064, !tbaa !1002
  br label %168, !dbg !2064

; <label>:168:                                    ; preds = %166, %164
  %169 = add i64 %123, 1, !dbg !2068
  call void @llvm.dbg.value(metadata i64 %169, metadata !1906, metadata !DIExpression()), !dbg !1969
  %170 = icmp ult i64 %169, %129, !dbg !2069
  br i1 %170, label %171, label %173, !dbg !2072

; <label>:171:                                    ; preds = %168
  %172 = getelementptr inbounds i8, i8* %0, i64 %169, !dbg !2069
  store i8 36, i8* %172, align 1, !dbg !2069, !tbaa !1002
  br label %173, !dbg !2069

; <label>:173:                                    ; preds = %171, %168
  %174 = add i64 %123, 2, !dbg !2072
  call void @llvm.dbg.value(metadata i64 %174, metadata !1906, metadata !DIExpression()), !dbg !1969
  %175 = icmp ult i64 %174, %129, !dbg !2073
  br i1 %175, label %176, label %178, !dbg !2076

; <label>:176:                                    ; preds = %173
  %177 = getelementptr inbounds i8, i8* %0, i64 %174, !dbg !2073
  store i8 39, i8* %177, align 1, !dbg !2073, !tbaa !1002
  br label %178, !dbg !2073

; <label>:178:                                    ; preds = %176, %173
  %179 = add i64 %123, 3, !dbg !2076
  call void @llvm.dbg.value(metadata i64 %179, metadata !1906, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata i8 1, metadata !1913, metadata !DIExpression()), !dbg !1977
  br label %180, !dbg !2077

; <label>:180:                                    ; preds = %160, %178
  %181 = phi i64 [ %179, %178 ], [ %123, %160 ], !dbg !2028
  %182 = phi i8 [ 1, %178 ], [ %126, %160 ], !dbg !2028
  call void @llvm.dbg.value(metadata i8 %182, metadata !1913, metadata !DIExpression()), !dbg !1977
  call void @llvm.dbg.value(metadata i64 %181, metadata !1906, metadata !DIExpression()), !dbg !1969
  %183 = icmp ult i64 %181, %129, !dbg !2078
  br i1 %183, label %184, label %186, !dbg !2081

; <label>:184:                                    ; preds = %180
  %185 = getelementptr inbounds i8, i8* %0, i64 %181, !dbg !2078
  store i8 92, i8* %185, align 1, !dbg !2078, !tbaa !1002
  br label %186, !dbg !2078

; <label>:186:                                    ; preds = %184, %180
  %187 = add i64 %181, 1, !dbg !2081
  call void @llvm.dbg.value(metadata i64 %187, metadata !1906, metadata !DIExpression()), !dbg !1969
  br i1 %104, label %188, label %478, !dbg !2082

; <label>:188:                                    ; preds = %186
  %189 = add i64 %122, 1, !dbg !2084
  %190 = icmp ult i64 %189, %154, !dbg !2085
  br i1 %190, label %191, label %467, !dbg !2086

; <label>:191:                                    ; preds = %188
  %192 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !2087
  %193 = load i8, i8* %192, align 1, !dbg !2087, !tbaa !1002
  %194 = add i8 %193, -48, !dbg !2088
  %195 = icmp ult i8 %194, 10, !dbg !2088
  br i1 %195, label %196, label %467, !dbg !2088

; <label>:196:                                    ; preds = %191
  %197 = icmp ult i64 %187, %129, !dbg !2089
  br i1 %197, label %198, label %200, !dbg !2093

; <label>:198:                                    ; preds = %196
  %199 = getelementptr inbounds i8, i8* %0, i64 %187, !dbg !2089
  store i8 48, i8* %199, align 1, !dbg !2089, !tbaa !1002
  br label %200, !dbg !2089

; <label>:200:                                    ; preds = %198, %196
  %201 = add i64 %181, 2, !dbg !2093
  call void @llvm.dbg.value(metadata i64 %201, metadata !1906, metadata !DIExpression()), !dbg !1969
  %202 = icmp ult i64 %201, %129, !dbg !2094
  br i1 %202, label %203, label %205, !dbg !2097

; <label>:203:                                    ; preds = %200
  %204 = getelementptr inbounds i8, i8* %0, i64 %201, !dbg !2094
  store i8 48, i8* %204, align 1, !dbg !2094, !tbaa !1002
  br label %205, !dbg !2094

; <label>:205:                                    ; preds = %203, %200
  %206 = add i64 %181, 3, !dbg !2097
  call void @llvm.dbg.value(metadata i64 %206, metadata !1906, metadata !DIExpression()), !dbg !1969
  br label %467, !dbg !2098

; <label>:207:                                    ; preds = %158
  br i1 %22, label %478, label %607, !dbg !2099

; <label>:208:                                    ; preds = %153
  switch i32 %94, label %467 [
    i32 2, label %209
    i32 5, label %210
  ], !dbg !2100

; <label>:209:                                    ; preds = %208
  br i1 %110, label %467, label %661, !dbg !2101

; <label>:210:                                    ; preds = %208
  br i1 %24, label %467, label %211, !dbg !2103

; <label>:211:                                    ; preds = %210
  %212 = add i64 %122, 2, !dbg !2105
  %213 = icmp ult i64 %212, %154, !dbg !2106
  br i1 %213, label %214, label %467, !dbg !2107

; <label>:214:                                    ; preds = %211
  %215 = add i64 %122, 1, !dbg !2108
  %216 = getelementptr inbounds i8, i8* %2, i64 %215, !dbg !2109
  %217 = load i8, i8* %216, align 1, !dbg !2109, !tbaa !1002
  %218 = icmp eq i8 %217, 63, !dbg !2110
  br i1 %218, label %219, label %467, !dbg !2111

; <label>:219:                                    ; preds = %214
  %220 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !2112
  %221 = load i8, i8* %220, align 1, !dbg !2112, !tbaa !1002
  %222 = sext i8 %221 to i32, !dbg !2112
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
  ], !dbg !2113

; <label>:223:                                    ; preds = %219, %219, %219, %219, %219, %219, %219, %219, %219
  br i1 %110, label %224, label %661, !dbg !2114

; <label>:224:                                    ; preds = %223
  call void @llvm.dbg.value(metadata i8 %221, metadata !1916, metadata !DIExpression()), !dbg !2055
  call void @llvm.dbg.value(metadata i64 %212, metadata !1905, metadata !DIExpression()), !dbg !2029
  %225 = icmp ult i64 %123, %129, !dbg !2116
  br i1 %225, label %226, label %228, !dbg !2119

; <label>:226:                                    ; preds = %224
  %227 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2116
  store i8 63, i8* %227, align 1, !dbg !2116, !tbaa !1002
  br label %228, !dbg !2116

; <label>:228:                                    ; preds = %226, %224
  %229 = add i64 %123, 1, !dbg !2119
  call void @llvm.dbg.value(metadata i64 %229, metadata !1906, metadata !DIExpression()), !dbg !1969
  %230 = icmp ult i64 %229, %129, !dbg !2120
  br i1 %230, label %231, label %233, !dbg !2123

; <label>:231:                                    ; preds = %228
  %232 = getelementptr inbounds i8, i8* %0, i64 %229, !dbg !2120
  store i8 34, i8* %232, align 1, !dbg !2120, !tbaa !1002
  br label %233, !dbg !2120

; <label>:233:                                    ; preds = %231, %228
  %234 = add i64 %123, 2, !dbg !2123
  call void @llvm.dbg.value(metadata i64 %234, metadata !1906, metadata !DIExpression()), !dbg !1969
  %235 = icmp ult i64 %234, %129, !dbg !2124
  br i1 %235, label %236, label %238, !dbg !2127

; <label>:236:                                    ; preds = %233
  %237 = getelementptr inbounds i8, i8* %0, i64 %234, !dbg !2124
  store i8 34, i8* %237, align 1, !dbg !2124, !tbaa !1002
  br label %238, !dbg !2124

; <label>:238:                                    ; preds = %236, %233
  %239 = add i64 %123, 3, !dbg !2127
  call void @llvm.dbg.value(metadata i64 %239, metadata !1906, metadata !DIExpression()), !dbg !1969
  %240 = icmp ult i64 %239, %129, !dbg !2128
  br i1 %240, label %241, label %243, !dbg !2131

; <label>:241:                                    ; preds = %238
  %242 = getelementptr inbounds i8, i8* %0, i64 %239, !dbg !2128
  store i8 63, i8* %242, align 1, !dbg !2128, !tbaa !1002
  br label %243, !dbg !2128

; <label>:243:                                    ; preds = %241, %238
  %244 = add i64 %123, 4, !dbg !2131
  call void @llvm.dbg.value(metadata i64 %244, metadata !1906, metadata !DIExpression()), !dbg !1969
  br label %467, !dbg !2132

; <label>:245:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !1920, metadata !DIExpression()), !dbg !2133
  br label %255, !dbg !2134

; <label>:246:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !1920, metadata !DIExpression()), !dbg !2133
  br label %255, !dbg !2135

; <label>:247:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !1920, metadata !DIExpression()), !dbg !2133
  br label %253, !dbg !2136

; <label>:248:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !1920, metadata !DIExpression()), !dbg !2133
  br label %253, !dbg !2137

; <label>:249:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !1920, metadata !DIExpression()), !dbg !2133
  br label %255, !dbg !2138

; <label>:250:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 %157, metadata !1920, metadata !DIExpression()), !dbg !2133
  br i1 %114, label %251, label %252, !dbg !2139

; <label>:251:                                    ; preds = %250
  br i1 %110, label %562, label %661, !dbg !2140

; <label>:252:                                    ; preds = %250
  br i1 %120, label %562, label %253, !dbg !2143

; <label>:253:                                    ; preds = %252, %153, %248, %247
  %254 = phi i8 [ 92, %252 ], [ 116, %248 ], [ 114, %247 ], [ 110, %153 ], !dbg !2145
  call void @llvm.dbg.value(metadata i8 %254, metadata !1920, metadata !DIExpression()), !dbg !2133
  br i1 %113, label %255, label %661, !dbg !2146

; <label>:255:                                    ; preds = %253, %153, %249, %246, %245
  %256 = phi i8 [ %254, %253 ], [ 118, %249 ], [ 102, %246 ], [ 98, %245 ], [ 97, %153 ], !dbg !2145
  call void @llvm.dbg.value(metadata i8 %256, metadata !1920, metadata !DIExpression()), !dbg !2133
  br i1 %103, label %524, label %478, !dbg !2148

; <label>:257:                                    ; preds = %153, %153
  %258 = icmp eq i64 %154, -1, !dbg !2149
  br i1 %258, label %259, label %264, !dbg !2151

; <label>:259:                                    ; preds = %257
  %260 = load i8, i8* %25, align 1, !dbg !2152, !tbaa !1002
  %261 = icmp ne i8 %260, 0, !dbg !2153
  %262 = icmp ne i64 %122, 0, !dbg !2154
  %263 = or i1 %262, %261, !dbg !2156
  br i1 %263, label %467, label %270, !dbg !2156

; <label>:264:                                    ; preds = %257
  %265 = icmp ne i64 %154, 1, !dbg !2157
  %266 = icmp ne i64 %122, 0, !dbg !2154
  %267 = or i1 %266, %265, !dbg !2151
  br i1 %267, label %467, label %270, !dbg !2151

; <label>:268:                                    ; preds = %153, %153
  %269 = icmp eq i64 %122, 0, !dbg !2154
  br i1 %269, label %270, label %467, !dbg !2158

; <label>:270:                                    ; preds = %268, %264, %259, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1923, metadata !DIExpression()), !dbg !2040
  br label %271, !dbg !2159

; <label>:271:                                    ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %270
  %272 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %270 ], !dbg !2145
  call void @llvm.dbg.value(metadata i8 %272, metadata !1923, metadata !DIExpression()), !dbg !2040
  br i1 %113, label %467, label %661, !dbg !2160

; <label>:273:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1914, metadata !DIExpression()), !dbg !1978
  call void @llvm.dbg.value(metadata i8 1, metadata !1923, metadata !DIExpression()), !dbg !2040
  br i1 %114, label %274, label %467, !dbg !2162

; <label>:274:                                    ; preds = %273
  br i1 %110, label %275, label %661, !dbg !2163

; <label>:275:                                    ; preds = %274
  %276 = icmp eq i64 %129, 0, !dbg !2166
  %277 = icmp ne i64 %124, 0, !dbg !2168
  %278 = or i1 %277, %276, !dbg !2169
  %279 = select i1 %278, i64 %124, i64 %129, !dbg !2169
  %280 = select i1 %278, i64 %129, i64 0, !dbg !2169
  call void @llvm.dbg.value(metadata i64 %280, metadata !1897, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i64 %279, metadata !1907, metadata !DIExpression()), !dbg !1970
  %281 = icmp ult i64 %123, %280, !dbg !2170
  br i1 %281, label %282, label %284, !dbg !2173

; <label>:282:                                    ; preds = %275
  %283 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2170
  store i8 39, i8* %283, align 1, !dbg !2170, !tbaa !1002
  br label %284, !dbg !2170

; <label>:284:                                    ; preds = %282, %275
  %285 = add i64 %123, 1, !dbg !2173
  call void @llvm.dbg.value(metadata i64 %285, metadata !1906, metadata !DIExpression()), !dbg !1969
  %286 = icmp ult i64 %285, %280, !dbg !2174
  br i1 %286, label %287, label %289, !dbg !2177

; <label>:287:                                    ; preds = %284
  %288 = getelementptr inbounds i8, i8* %0, i64 %285, !dbg !2174
  store i8 92, i8* %288, align 1, !dbg !2174, !tbaa !1002
  br label %289, !dbg !2174

; <label>:289:                                    ; preds = %287, %284
  %290 = add i64 %123, 2, !dbg !2177
  call void @llvm.dbg.value(metadata i64 %290, metadata !1906, metadata !DIExpression()), !dbg !1969
  %291 = icmp ult i64 %290, %280, !dbg !2178
  br i1 %291, label %292, label %294, !dbg !2181

; <label>:292:                                    ; preds = %289
  %293 = getelementptr inbounds i8, i8* %0, i64 %290, !dbg !2178
  store i8 39, i8* %293, align 1, !dbg !2178, !tbaa !1002
  br label %294, !dbg !2178

; <label>:294:                                    ; preds = %292, %289
  %295 = add i64 %123, 3, !dbg !2181
  call void @llvm.dbg.value(metadata i64 %295, metadata !1906, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata i8 0, metadata !1913, metadata !DIExpression()), !dbg !1977
  br label %467, !dbg !2182

; <label>:296:                                    ; preds = %153
  br i1 %14, label %297, label %306, !dbg !2183

; <label>:297:                                    ; preds = %296
  call void @llvm.dbg.value(metadata i64 1, metadata !1924, metadata !DIExpression()), !dbg !2184
  %298 = tail call i16** @__ctype_b_loc() #17, !dbg !2185
  %299 = load i16*, i16** %298, align 8, !dbg !2185, !tbaa !767
  %300 = zext i8 %157 to i64, !dbg !2185
  %301 = getelementptr inbounds i16, i16* %299, i64 %300, !dbg !2185
  %302 = load i16, i16* %301, align 2, !dbg !2185, !tbaa !2187
  %303 = lshr i16 %302, 14, !dbg !2188
  %304 = trunc i16 %303 to i8, !dbg !2188
  %305 = and i8 %304, 1, !dbg !2188
  call void @llvm.dbg.value(metadata i8 %305, metadata !1927, metadata !DIExpression()), !dbg !2189
  br label %359, !dbg !2190

; <label>:306:                                    ; preds = %296
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %19) #11, !dbg !2191
  store i64 0, i64* %10, align 8, !dbg !2192
  call void @llvm.dbg.value(metadata i64 0, metadata !1924, metadata !DIExpression()), !dbg !2184
  call void @llvm.dbg.value(metadata i8 1, metadata !1927, metadata !DIExpression()), !dbg !2189
  %307 = icmp eq i64 %154, -1, !dbg !2193
  br i1 %307, label %308, label %310, !dbg !2195

; <label>:308:                                    ; preds = %306
  %309 = call i64 @strlen(i8* nonnull %2) #14, !dbg !2196
  call void @llvm.dbg.value(metadata i64 %309, metadata !1899, metadata !DIExpression()), !dbg !1963
  br label %310, !dbg !2197

; <label>:310:                                    ; preds = %308, %306
  %311 = phi i64 [ %309, %308 ], [ %154, %306 ], !dbg !2198
  call void @llvm.dbg.value(metadata i64 %311, metadata !1899, metadata !DIExpression()), !dbg !1963
  br label %312, !dbg !2199

; <label>:312:                                    ; preds = %347, %310
  %313 = phi i64 [ 0, %310 ], [ %352, %347 ], !dbg !2200
  %314 = phi i8 [ 1, %310 ], [ %351, %347 ], !dbg !2201
  call void @llvm.dbg.value(metadata i8 %314, metadata !1927, metadata !DIExpression()), !dbg !2189
  call void @llvm.dbg.value(metadata i64 %313, metadata !1924, metadata !DIExpression()), !dbg !2184
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #11, !dbg !2202
  %315 = add i64 %313, %122, !dbg !2203
  %316 = getelementptr inbounds i8, i8* %2, i64 %315, !dbg !2204
  %317 = sub i64 %311, %315, !dbg !2205
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !1928, metadata !DIExpression(DW_OP_deref)), !dbg !2206
  call void @llvm.dbg.value(metadata i32* %12, metadata !1946, metadata !DIExpression(DW_OP_deref)), !dbg !2207
  %318 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %316, i64 %317, %struct.__mbstate_t* nonnull %11) #11, !dbg !2208
  call void @llvm.dbg.value(metadata i64 %318, metadata !1949, metadata !DIExpression()), !dbg !2209
  switch i64 %318, label %331 [
    i64 0, label %343
    i64 -1, label %344
    i64 -2, label %319
  ], !dbg !2210

; <label>:319:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !1924, metadata !DIExpression()), !dbg !2184
  call void @llvm.dbg.value(metadata i64 %313, metadata !1924, metadata !DIExpression()), !dbg !2184
  call void @llvm.dbg.value(metadata i64 %313, metadata !1924, metadata !DIExpression()), !dbg !2184
  call void @llvm.dbg.value(metadata i64 %313, metadata !1924, metadata !DIExpression()), !dbg !2184
  call void @llvm.dbg.value(metadata i64 %313, metadata !1924, metadata !DIExpression()), !dbg !2184
  call void @llvm.dbg.value(metadata i64 %313, metadata !1924, metadata !DIExpression()), !dbg !2184
  %320 = icmp ugt i64 %311, %315, !dbg !2211
  br i1 %320, label %321, label %344, !dbg !2213

; <label>:321:                                    ; preds = %319, %327
  %322 = phi i64 [ %329, %327 ], [ %315, %319 ]
  %323 = phi i64 [ %328, %327 ], [ %313, %319 ]
  call void @llvm.dbg.value(metadata i64 %323, metadata !1924, metadata !DIExpression()), !dbg !2184
  %324 = getelementptr inbounds i8, i8* %2, i64 %322, !dbg !2214
  %325 = load i8, i8* %324, align 1, !dbg !2214, !tbaa !1002
  %326 = icmp eq i8 %325, 0, !dbg !2213
  br i1 %326, label %344, label %327, !dbg !2215

; <label>:327:                                    ; preds = %321
  %328 = add i64 %323, 1, !dbg !2216
  call void @llvm.dbg.value(metadata i64 %328, metadata !1924, metadata !DIExpression()), !dbg !2184
  %329 = add i64 %328, %122, !dbg !2217
  %330 = icmp ult i64 %329, %311, !dbg !2211
  br i1 %330, label %321, label %344, !dbg !2213, !llvm.loop !2218

; <label>:331:                                    ; preds = %312
  %332 = icmp ugt i64 %318, 1, !dbg !2219
  %333 = and i1 %116, %332, !dbg !2222
  call void @llvm.dbg.value(metadata i64 1, metadata !1950, metadata !DIExpression()), !dbg !2223
  br i1 %333, label %334, label %347, !dbg !2222

; <label>:334:                                    ; preds = %331, %340
  %335 = phi i64 [ %341, %340 ], [ 1, %331 ]
  call void @llvm.dbg.value(metadata i64 %335, metadata !1950, metadata !DIExpression()), !dbg !2223
  %336 = add i64 %335, %315, !dbg !2224
  %337 = getelementptr inbounds i8, i8* %2, i64 %336, !dbg !2225
  %338 = load i8, i8* %337, align 1, !dbg !2225, !tbaa !1002
  %339 = sext i8 %338 to i32, !dbg !2225
  switch i32 %339, label %340 [
    i32 91, label %358
    i32 92, label %358
    i32 94, label %358
    i32 96, label %358
    i32 124, label %358
  ], !dbg !2226

; <label>:340:                                    ; preds = %334
  %341 = add nuw i64 %335, 1, !dbg !2227
  call void @llvm.dbg.value(metadata i64 %341, metadata !1950, metadata !DIExpression()), !dbg !2223
  %342 = icmp ult i64 %341, %318, !dbg !2219
  br i1 %342, label %334, label %347, !dbg !2228, !llvm.loop !2229

; <label>:343:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !1924, metadata !DIExpression()), !dbg !2184
  call void @llvm.dbg.value(metadata i8 %314, metadata !1927, metadata !DIExpression()), !dbg !2189
  call void @llvm.dbg.value(metadata i64 %313, metadata !1924, metadata !DIExpression()), !dbg !2184
  call void @llvm.dbg.value(metadata i8 %314, metadata !1927, metadata !DIExpression()), !dbg !2189
  br label %344, !dbg !2231

; <label>:344:                                    ; preds = %327, %321, %312, %343, %319
  %345 = phi i64 [ %313, %319 ], [ %313, %343 ], [ %313, %312 ], [ %323, %321 ], [ %328, %327 ]
  %346 = phi i8 [ 0, %319 ], [ %314, %343 ], [ 0, %312 ], [ 0, %321 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i8 %351, metadata !1927, metadata !DIExpression()), !dbg !2189
  call void @llvm.dbg.value(metadata i64 %352, metadata !1924, metadata !DIExpression()), !dbg !2184
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #11, !dbg !2231
  br label %355

; <label>:347:                                    ; preds = %340, %331
  %348 = load i32, i32* %12, align 4, !dbg !2232, !tbaa !901
  call void @llvm.dbg.value(metadata i32 %348, metadata !1946, metadata !DIExpression()), !dbg !2207
  %349 = call i32 @iswprint(i32 %348) #11, !dbg !2234
  %350 = icmp eq i32 %349, 0, !dbg !2234
  %351 = select i1 %350, i8 0, i8 %314, !dbg !2235
  call void @llvm.dbg.value(metadata i8 %351, metadata !1927, metadata !DIExpression()), !dbg !2189
  %352 = add i64 %318, %313, !dbg !2236
  call void @llvm.dbg.value(metadata i64 %352, metadata !1924, metadata !DIExpression()), !dbg !2184
  call void @llvm.dbg.value(metadata i8 %351, metadata !1927, metadata !DIExpression()), !dbg !2189
  call void @llvm.dbg.value(metadata i64 %352, metadata !1924, metadata !DIExpression()), !dbg !2184
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #11, !dbg !2231
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !1928, metadata !DIExpression(DW_OP_deref)), !dbg !2206
  %353 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !2237
  %354 = icmp eq i32 %353, 0, !dbg !2238
  br i1 %354, label %312, label %355, !dbg !2239, !llvm.loop !2240

; <label>:355:                                    ; preds = %347, %344
  %356 = phi i8 [ %346, %344 ], [ %351, %347 ]
  %357 = phi i64 [ %345, %344 ], [ %352, %347 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #11, !dbg !2242
  br label %359

; <label>:358:                                    ; preds = %334, %334, %334, %334, %334
  call void @llvm.dbg.value(metadata i8* %95, metadata !1903, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i8* %95, metadata !1903, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i8* %95, metadata !1903, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i8* %95, metadata !1903, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i8* %95, metadata !1903, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i8* %96, metadata !1904, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i8* %96, metadata !1904, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i8* %96, metadata !1904, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i8* %96, metadata !1904, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i8* %96, metadata !1904, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i64 %129, metadata !1897, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i64 %129, metadata !1897, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i64 %129, metadata !1897, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i64 %129, metadata !1897, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i64 %129, metadata !1897, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i64 %311, metadata !1899, metadata !DIExpression()), !dbg !1963
  call void @llvm.dbg.value(metadata i64 %311, metadata !1899, metadata !DIExpression()), !dbg !1963
  call void @llvm.dbg.value(metadata i64 %311, metadata !1899, metadata !DIExpression()), !dbg !1963
  call void @llvm.dbg.value(metadata i64 %311, metadata !1899, metadata !DIExpression()), !dbg !1963
  call void @llvm.dbg.value(metadata i64 %311, metadata !1899, metadata !DIExpression()), !dbg !1963
  call void @llvm.dbg.value(metadata i8* %95, metadata !1903, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i8* %95, metadata !1903, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i8* %95, metadata !1903, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i8* %95, metadata !1903, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i8* %95, metadata !1903, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i8* %96, metadata !1904, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i8* %96, metadata !1904, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i8* %96, metadata !1904, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i8* %96, metadata !1904, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i8* %96, metadata !1904, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i64 %129, metadata !1897, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i64 %129, metadata !1897, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i64 %129, metadata !1897, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i64 %129, metadata !1897, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i64 %129, metadata !1897, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i64 %311, metadata !1899, metadata !DIExpression()), !dbg !1963
  call void @llvm.dbg.value(metadata i64 %311, metadata !1899, metadata !DIExpression()), !dbg !1963
  call void @llvm.dbg.value(metadata i64 %311, metadata !1899, metadata !DIExpression()), !dbg !1963
  call void @llvm.dbg.value(metadata i64 %311, metadata !1899, metadata !DIExpression()), !dbg !1963
  call void @llvm.dbg.value(metadata i64 %311, metadata !1899, metadata !DIExpression()), !dbg !1963
  call void @llvm.dbg.value(metadata i8* %95, metadata !1903, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i8* %95, metadata !1903, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i8* %95, metadata !1903, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i8* %95, metadata !1903, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i8* %95, metadata !1903, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i8* %96, metadata !1904, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i8* %96, metadata !1904, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i8* %96, metadata !1904, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i8* %96, metadata !1904, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i8* %96, metadata !1904, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i64 %129, metadata !1897, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i64 %129, metadata !1897, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i64 %129, metadata !1897, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i64 %129, metadata !1897, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i64 %129, metadata !1897, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i64 %311, metadata !1899, metadata !DIExpression()), !dbg !1963
  call void @llvm.dbg.value(metadata i64 %311, metadata !1899, metadata !DIExpression()), !dbg !1963
  call void @llvm.dbg.value(metadata i64 %311, metadata !1899, metadata !DIExpression()), !dbg !1963
  call void @llvm.dbg.value(metadata i64 %311, metadata !1899, metadata !DIExpression()), !dbg !1963
  call void @llvm.dbg.value(metadata i64 %311, metadata !1899, metadata !DIExpression()), !dbg !1963
  call void @llvm.dbg.value(metadata i8* %95, metadata !1903, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i8* %95, metadata !1903, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i8* %95, metadata !1903, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i8* %95, metadata !1903, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i8* %95, metadata !1903, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i8* %96, metadata !1904, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i8* %96, metadata !1904, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i8* %96, metadata !1904, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i8* %96, metadata !1904, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i8* %96, metadata !1904, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i64 %129, metadata !1897, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i64 %129, metadata !1897, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i64 %129, metadata !1897, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i64 %129, metadata !1897, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i64 %129, metadata !1897, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i64 %311, metadata !1899, metadata !DIExpression()), !dbg !1963
  call void @llvm.dbg.value(metadata i64 %311, metadata !1899, metadata !DIExpression()), !dbg !1963
  call void @llvm.dbg.value(metadata i64 %311, metadata !1899, metadata !DIExpression()), !dbg !1963
  call void @llvm.dbg.value(metadata i64 %311, metadata !1899, metadata !DIExpression()), !dbg !1963
  call void @llvm.dbg.value(metadata i64 %311, metadata !1899, metadata !DIExpression()), !dbg !1963
  call void @llvm.dbg.value(metadata i32 2, metadata !1900, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i32 2, metadata !1900, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i32 2, metadata !1900, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i32 2, metadata !1900, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i32 2, metadata !1900, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i8* %95, metadata !1903, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i8* %95, metadata !1903, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i8* %95, metadata !1903, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i8* %95, metadata !1903, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i8* %95, metadata !1903, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i8* %96, metadata !1904, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i8* %96, metadata !1904, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i8* %96, metadata !1904, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i8* %96, metadata !1904, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i8* %96, metadata !1904, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i8 %100, metadata !1910, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 %100, metadata !1910, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 %100, metadata !1910, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 %100, metadata !1910, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 %100, metadata !1910, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %129, metadata !1897, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i64 %129, metadata !1897, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i64 %129, metadata !1897, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i64 %129, metadata !1897, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i64 %129, metadata !1897, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i64 %311, metadata !1899, metadata !DIExpression()), !dbg !1963
  call void @llvm.dbg.value(metadata i64 %311, metadata !1899, metadata !DIExpression()), !dbg !1963
  call void @llvm.dbg.value(metadata i64 %311, metadata !1899, metadata !DIExpression()), !dbg !1963
  call void @llvm.dbg.value(metadata i64 %311, metadata !1899, metadata !DIExpression()), !dbg !1963
  call void @llvm.dbg.value(metadata i64 %311, metadata !1899, metadata !DIExpression()), !dbg !1963
  call void @llvm.dbg.value(metadata i32 %94, metadata !1900, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i32 %94, metadata !1900, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i32 %94, metadata !1900, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i32 %94, metadata !1900, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i32 %94, metadata !1900, metadata !DIExpression()), !dbg !1964
  call void @llvm.dbg.value(metadata i8* %95, metadata !1903, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i8* %95, metadata !1903, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i8* %95, metadata !1903, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i8* %95, metadata !1903, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i8* %95, metadata !1903, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i8* %96, metadata !1904, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i8* %96, metadata !1904, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i8* %96, metadata !1904, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i8* %96, metadata !1904, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i8* %96, metadata !1904, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i8 %100, metadata !1910, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 %100, metadata !1910, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 %100, metadata !1910, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 %100, metadata !1910, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i8 %100, metadata !1910, metadata !DIExpression()), !dbg !1973
  call void @llvm.dbg.value(metadata i64 %129, metadata !1897, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i64 %129, metadata !1897, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i64 %129, metadata !1897, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i64 %129, metadata !1897, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i64 %129, metadata !1897, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i64 %311, metadata !1899, metadata !DIExpression()), !dbg !1963
  call void @llvm.dbg.value(metadata i64 %311, metadata !1899, metadata !DIExpression()), !dbg !1963
  call void @llvm.dbg.value(metadata i64 %311, metadata !1899, metadata !DIExpression()), !dbg !1963
  call void @llvm.dbg.value(metadata i64 %311, metadata !1899, metadata !DIExpression()), !dbg !1963
  call void @llvm.dbg.value(metadata i64 %311, metadata !1899, metadata !DIExpression()), !dbg !1963
  call void @llvm.dbg.value(metadata i8 %351, metadata !1927, metadata !DIExpression()), !dbg !2189
  call void @llvm.dbg.value(metadata i64 %352, metadata !1924, metadata !DIExpression()), !dbg !2184
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #11, !dbg !2231
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #11, !dbg !2242
  br label %661

; <label>:359:                                    ; preds = %355, %297
  %360 = phi i64 [ %154, %297 ], [ %311, %355 ], !dbg !2243
  %361 = phi i64 [ 1, %297 ], [ %357, %355 ], !dbg !2244
  %362 = phi i8 [ %305, %297 ], [ %356, %355 ], !dbg !2244
  call void @llvm.dbg.value(metadata i8 %362, metadata !1927, metadata !DIExpression()), !dbg !2189
  call void @llvm.dbg.value(metadata i64 %361, metadata !1924, metadata !DIExpression()), !dbg !2184
  call void @llvm.dbg.value(metadata i64 %360, metadata !1899, metadata !DIExpression()), !dbg !1963
  %363 = and i8 %362, 1, !dbg !2245
  %364 = icmp ne i8 %363, 0, !dbg !2245
  call void @llvm.dbg.value(metadata i8 %363, metadata !1923, metadata !DIExpression()), !dbg !2040
  %365 = icmp ult i64 %361, 2, !dbg !2246
  %366 = or i1 %364, %115, !dbg !2247
  %367 = and i1 %365, %366, !dbg !2248
  br i1 %367, label %467, label %368, !dbg !2248

; <label>:368:                                    ; preds = %359
  %369 = add i64 %361, %122, !dbg !2249
  call void @llvm.dbg.value(metadata i64 %369, metadata !1957, metadata !DIExpression()), !dbg !2250
  br label %370, !dbg !2251

; <label>:370:                                    ; preds = %463, %368
  %371 = phi i64 [ %122, %368 ], [ %438, %463 ], !dbg !2252
  %372 = phi i64 [ %123, %368 ], [ %464, %463 ], !dbg !2256
  %373 = phi i8 [ %126, %368 ], [ %459, %463 ], !dbg !1977
  %374 = phi i8 [ %157, %368 ], [ %466, %463 ], !dbg !2252
  %375 = phi i8 [ %155, %368 ], [ %436, %463 ], !dbg !2258
  %376 = phi i8 [ 0, %368 ], [ %437, %463 ], !dbg !2039
  call void @llvm.dbg.value(metadata i8 %376, metadata !1922, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8 %375, metadata !1921, metadata !DIExpression()), !dbg !2038
  call void @llvm.dbg.value(metadata i8 %374, metadata !1916, metadata !DIExpression()), !dbg !2055
  call void @llvm.dbg.value(metadata i8 %373, metadata !1913, metadata !DIExpression()), !dbg !1977
  call void @llvm.dbg.value(metadata i64 %372, metadata !1906, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata i64 %371, metadata !1905, metadata !DIExpression()), !dbg !2029
  br i1 %366, label %423, label %377, !dbg !2262

; <label>:377:                                    ; preds = %370
  br i1 %110, label %378, label %661, !dbg !2263

; <label>:378:                                    ; preds = %377
  call void @llvm.dbg.value(metadata i8 1, metadata !1922, metadata !DIExpression()), !dbg !2039
  %379 = and i8 %373, 1, !dbg !2266
  %380 = icmp eq i8 %379, 0, !dbg !2266
  %381 = and i1 %114, %380, !dbg !2266
  br i1 %381, label %382, label %398, !dbg !2266

; <label>:382:                                    ; preds = %378
  %383 = icmp ult i64 %372, %129, !dbg !2268
  br i1 %383, label %384, label %386, !dbg !2272

; <label>:384:                                    ; preds = %382
  %385 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !2268
  store i8 39, i8* %385, align 1, !dbg !2268, !tbaa !1002
  br label %386, !dbg !2268

; <label>:386:                                    ; preds = %384, %382
  %387 = add i64 %372, 1, !dbg !2272
  call void @llvm.dbg.value(metadata i64 %387, metadata !1906, metadata !DIExpression()), !dbg !1969
  %388 = icmp ult i64 %387, %129, !dbg !2273
  br i1 %388, label %389, label %391, !dbg !2276

; <label>:389:                                    ; preds = %386
  %390 = getelementptr inbounds i8, i8* %0, i64 %387, !dbg !2273
  store i8 36, i8* %390, align 1, !dbg !2273, !tbaa !1002
  br label %391, !dbg !2273

; <label>:391:                                    ; preds = %389, %386
  %392 = add i64 %372, 2, !dbg !2276
  call void @llvm.dbg.value(metadata i64 %392, metadata !1906, metadata !DIExpression()), !dbg !1969
  %393 = icmp ult i64 %392, %129, !dbg !2277
  br i1 %393, label %394, label %396, !dbg !2280

; <label>:394:                                    ; preds = %391
  %395 = getelementptr inbounds i8, i8* %0, i64 %392, !dbg !2277
  store i8 39, i8* %395, align 1, !dbg !2277, !tbaa !1002
  br label %396, !dbg !2277

; <label>:396:                                    ; preds = %394, %391
  %397 = add i64 %372, 3, !dbg !2280
  call void @llvm.dbg.value(metadata i64 %397, metadata !1906, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata i8 1, metadata !1913, metadata !DIExpression()), !dbg !1977
  br label %398, !dbg !2281

; <label>:398:                                    ; preds = %378, %396
  %399 = phi i64 [ %397, %396 ], [ %372, %378 ], !dbg !2028
  %400 = phi i8 [ 1, %396 ], [ %373, %378 ], !dbg !2028
  call void @llvm.dbg.value(metadata i8 %400, metadata !1913, metadata !DIExpression()), !dbg !1977
  call void @llvm.dbg.value(metadata i64 %399, metadata !1906, metadata !DIExpression()), !dbg !1969
  %401 = icmp ult i64 %399, %129, !dbg !2282
  br i1 %401, label %402, label %404, !dbg !2285

; <label>:402:                                    ; preds = %398
  %403 = getelementptr inbounds i8, i8* %0, i64 %399, !dbg !2282
  store i8 92, i8* %403, align 1, !dbg !2282, !tbaa !1002
  br label %404, !dbg !2282

; <label>:404:                                    ; preds = %402, %398
  %405 = add i64 %399, 1, !dbg !2285
  call void @llvm.dbg.value(metadata i64 %405, metadata !1906, metadata !DIExpression()), !dbg !1969
  %406 = icmp ult i64 %405, %129, !dbg !2286
  br i1 %406, label %407, label %411, !dbg !2289

; <label>:407:                                    ; preds = %404
  %408 = lshr i8 %374, 6, !dbg !2286
  %409 = or i8 %408, 48, !dbg !2286
  %410 = getelementptr inbounds i8, i8* %0, i64 %405, !dbg !2286
  store i8 %409, i8* %410, align 1, !dbg !2286, !tbaa !1002
  br label %411, !dbg !2286

; <label>:411:                                    ; preds = %407, %404
  %412 = add i64 %399, 2, !dbg !2289
  call void @llvm.dbg.value(metadata i64 %412, metadata !1906, metadata !DIExpression()), !dbg !1969
  %413 = icmp ult i64 %412, %129, !dbg !2290
  br i1 %413, label %414, label %419, !dbg !2293

; <label>:414:                                    ; preds = %411
  %415 = lshr i8 %374, 3, !dbg !2290
  %416 = and i8 %415, 7, !dbg !2290
  %417 = or i8 %416, 48, !dbg !2290
  %418 = getelementptr inbounds i8, i8* %0, i64 %412, !dbg !2290
  store i8 %417, i8* %418, align 1, !dbg !2290, !tbaa !1002
  br label %419, !dbg !2290

; <label>:419:                                    ; preds = %414, %411
  %420 = add i64 %399, 3, !dbg !2293
  call void @llvm.dbg.value(metadata i64 %420, metadata !1906, metadata !DIExpression()), !dbg !1969
  %421 = and i8 %374, 7, !dbg !2294
  %422 = or i8 %421, 48, !dbg !2295
  call void @llvm.dbg.value(metadata i8 %422, metadata !1916, metadata !DIExpression()), !dbg !2055
  br label %432, !dbg !2296

; <label>:423:                                    ; preds = %370
  %424 = and i8 %375, 1, !dbg !2297
  %425 = icmp eq i8 %424, 0, !dbg !2297
  br i1 %425, label %432, label %426, !dbg !2298

; <label>:426:                                    ; preds = %423
  %427 = icmp ult i64 %372, %129, !dbg !2299
  br i1 %427, label %428, label %430, !dbg !2302

; <label>:428:                                    ; preds = %426
  %429 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !2299
  store i8 92, i8* %429, align 1, !dbg !2299, !tbaa !1002
  br label %430, !dbg !2299

; <label>:430:                                    ; preds = %428, %426
  %431 = add i64 %372, 1, !dbg !2302
  call void @llvm.dbg.value(metadata i64 %431, metadata !1906, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata i8 0, metadata !1921, metadata !DIExpression()), !dbg !2038
  br label %432, !dbg !2303

; <label>:432:                                    ; preds = %423, %430, %419
  %433 = phi i64 [ %431, %430 ], [ %372, %423 ], [ %420, %419 ], !dbg !2304
  %434 = phi i8 [ %373, %430 ], [ %373, %423 ], [ %400, %419 ], !dbg !1977
  %435 = phi i8 [ %374, %430 ], [ %374, %423 ], [ %422, %419 ], !dbg !2305
  %436 = phi i8 [ 0, %430 ], [ %375, %423 ], [ %375, %419 ], !dbg !2306
  %437 = phi i8 [ %376, %430 ], [ %376, %423 ], [ 1, %419 ], !dbg !2308
  call void @llvm.dbg.value(metadata i8 %437, metadata !1922, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8 %436, metadata !1921, metadata !DIExpression()), !dbg !2038
  call void @llvm.dbg.value(metadata i8 %435, metadata !1916, metadata !DIExpression()), !dbg !2055
  call void @llvm.dbg.value(metadata i8 %434, metadata !1913, metadata !DIExpression()), !dbg !1977
  call void @llvm.dbg.value(metadata i64 %433, metadata !1906, metadata !DIExpression()), !dbg !1969
  %438 = add i64 %371, 1, !dbg !2309
  %439 = icmp ugt i64 %369, %438, !dbg !2311
  br i1 %439, label %440, label %562, !dbg !2312

; <label>:440:                                    ; preds = %432
  %441 = and i8 %434, 1, !dbg !2313
  %442 = icmp ne i8 %441, 0, !dbg !2313
  %443 = and i8 %437, 1, !dbg !2313
  %444 = icmp eq i8 %443, 0, !dbg !2313
  %445 = and i1 %442, %444, !dbg !2313
  br i1 %445, label %446, label %457, !dbg !2313

; <label>:446:                                    ; preds = %440
  %447 = icmp ult i64 %433, %129, !dbg !2316
  br i1 %447, label %448, label %450, !dbg !2320

; <label>:448:                                    ; preds = %446
  %449 = getelementptr inbounds i8, i8* %0, i64 %433, !dbg !2316
  store i8 39, i8* %449, align 1, !dbg !2316, !tbaa !1002
  br label %450, !dbg !2316

; <label>:450:                                    ; preds = %448, %446
  %451 = add i64 %433, 1, !dbg !2320
  call void @llvm.dbg.value(metadata i64 %451, metadata !1906, metadata !DIExpression()), !dbg !1969
  %452 = icmp ult i64 %451, %129, !dbg !2321
  br i1 %452, label %453, label %455, !dbg !2324

; <label>:453:                                    ; preds = %450
  %454 = getelementptr inbounds i8, i8* %0, i64 %451, !dbg !2321
  store i8 39, i8* %454, align 1, !dbg !2321, !tbaa !1002
  br label %455, !dbg !2321

; <label>:455:                                    ; preds = %453, %450
  %456 = add i64 %433, 2, !dbg !2324
  call void @llvm.dbg.value(metadata i64 %456, metadata !1906, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata i8 0, metadata !1913, metadata !DIExpression()), !dbg !1977
  br label %457, !dbg !2325

; <label>:457:                                    ; preds = %440, %455
  %458 = phi i64 [ %456, %455 ], [ %433, %440 ], !dbg !2326
  %459 = phi i8 [ 0, %455 ], [ %434, %440 ], !dbg !2028
  call void @llvm.dbg.value(metadata i8 %459, metadata !1913, metadata !DIExpression()), !dbg !1977
  call void @llvm.dbg.value(metadata i64 %458, metadata !1906, metadata !DIExpression()), !dbg !1969
  %460 = icmp ult i64 %458, %129, !dbg !2327
  br i1 %460, label %461, label %463, !dbg !2329

; <label>:461:                                    ; preds = %457
  %462 = getelementptr inbounds i8, i8* %0, i64 %458, !dbg !2327
  store i8 %435, i8* %462, align 1, !dbg !2327, !tbaa !1002
  br label %463, !dbg !2327

; <label>:463:                                    ; preds = %461, %457
  %464 = add i64 %458, 1, !dbg !2329
  call void @llvm.dbg.value(metadata i64 %464, metadata !1906, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata i64 %438, metadata !1905, metadata !DIExpression()), !dbg !2029
  %465 = getelementptr inbounds i8, i8* %2, i64 %438, !dbg !2330
  %466 = load i8, i8* %465, align 1, !dbg !2330, !tbaa !1002
  call void @llvm.dbg.value(metadata i8 %466, metadata !1916, metadata !DIExpression()), !dbg !2055
  br label %370, !dbg !2331, !llvm.loop !2332

; <label>:467:                                    ; preds = %359, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %271, %188, %191, %205, %209, %210, %268, %264, %259, %273, %294, %243, %219, %214, %211, %208
  %468 = phi i64 [ %122, %294 ], [ %122, %273 ], [ %122, %271 ], [ %122, %268 ], [ %122, %259 ], [ %122, %264 ], [ %122, %208 ], [ %122, %219 ], [ %212, %243 ], [ %122, %214 ], [ %122, %211 ], [ %122, %210 ], [ %122, %209 ], [ %122, %205 ], [ %122, %191 ], [ %122, %188 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %359 ], !dbg !2335
  %469 = phi i64 [ %295, %294 ], [ %123, %273 ], [ %123, %271 ], [ %123, %268 ], [ %123, %259 ], [ %123, %264 ], [ %123, %208 ], [ %123, %219 ], [ %244, %243 ], [ %123, %214 ], [ %123, %211 ], [ %123, %210 ], [ %123, %209 ], [ %206, %205 ], [ %187, %191 ], [ %187, %188 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %359 ], !dbg !2028
  %470 = phi i64 [ %279, %294 ], [ %124, %273 ], [ %124, %271 ], [ %124, %268 ], [ %124, %259 ], [ %124, %264 ], [ %124, %208 ], [ %124, %219 ], [ %124, %243 ], [ %124, %214 ], [ %124, %211 ], [ %124, %210 ], [ %124, %209 ], [ %124, %205 ], [ %124, %191 ], [ %124, %188 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %359 ], !dbg !1970
  %471 = phi i64 [ %154, %294 ], [ %154, %273 ], [ %154, %271 ], [ %154, %268 ], [ -1, %259 ], [ %154, %264 ], [ %154, %208 ], [ %154, %219 ], [ %154, %243 ], [ %154, %214 ], [ %154, %211 ], [ %154, %210 ], [ %154, %209 ], [ %154, %205 ], [ %154, %191 ], [ %154, %188 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %360, %359 ], !dbg !2336
  %472 = phi i8 [ 0, %294 ], [ %126, %273 ], [ %126, %271 ], [ %126, %268 ], [ %126, %259 ], [ %126, %264 ], [ %126, %208 ], [ %126, %219 ], [ %126, %243 ], [ %126, %214 ], [ %126, %211 ], [ %126, %210 ], [ %126, %209 ], [ %182, %205 ], [ %182, %191 ], [ %182, %188 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %359 ], !dbg !2028
  %473 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %127, %271 ], [ %127, %268 ], [ %127, %259 ], [ %127, %264 ], [ %127, %208 ], [ %127, %219 ], [ %127, %243 ], [ %127, %214 ], [ %127, %211 ], [ %127, %210 ], [ %127, %209 ], [ %127, %205 ], [ %127, %191 ], [ %127, %188 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %359 ], !dbg !2028
  %474 = phi i8 [ 39, %294 ], [ 39, %273 ], [ %157, %271 ], [ %157, %268 ], [ %157, %259 ], [ %157, %264 ], [ 63, %208 ], [ 63, %219 ], [ %221, %243 ], [ 63, %214 ], [ 63, %211 ], [ 63, %210 ], [ 63, %209 ], [ 48, %205 ], [ 48, %191 ], [ 48, %188 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %359 ], !dbg !2053
  %475 = phi i8 [ 0, %294 ], [ 0, %273 ], [ 0, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 1, %205 ], [ 1, %191 ], [ 1, %188 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %359 ], !dbg !2053
  %476 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %272, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 0, %205 ], [ 0, %191 ], [ 0, %188 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %363, %359 ], !dbg !2053
  %477 = phi i64 [ %280, %294 ], [ %129, %273 ], [ %129, %271 ], [ %129, %268 ], [ %129, %259 ], [ %129, %264 ], [ %129, %208 ], [ %129, %219 ], [ %129, %243 ], [ %129, %214 ], [ %129, %211 ], [ %129, %210 ], [ %129, %209 ], [ %129, %205 ], [ %129, %191 ], [ %129, %188 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %359 ]
  call void @llvm.dbg.value(metadata i64 %477, metadata !1897, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i8 %476, metadata !1923, metadata !DIExpression()), !dbg !2040
  call void @llvm.dbg.value(metadata i8 %475, metadata !1922, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8 %155, metadata !1921, metadata !DIExpression()), !dbg !2038
  call void @llvm.dbg.value(metadata i8 %474, metadata !1916, metadata !DIExpression()), !dbg !2055
  call void @llvm.dbg.value(metadata i8 %473, metadata !1914, metadata !DIExpression()), !dbg !1978
  call void @llvm.dbg.value(metadata i8 %472, metadata !1913, metadata !DIExpression()), !dbg !1977
  call void @llvm.dbg.value(metadata i64 %471, metadata !1899, metadata !DIExpression()), !dbg !1963
  call void @llvm.dbg.value(metadata i64 %470, metadata !1907, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i64 %469, metadata !1906, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata i64 %468, metadata !1905, metadata !DIExpression()), !dbg !2029
  br i1 %105, label %489, label %478, !dbg !2337

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
  br i1 %112, label %490, label %512, !dbg !2339

; <label>:489:                                    ; preds = %467
  br i1 %20, label %512, label %490, !dbg !2340

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
  %501 = lshr i8 %494, 5, !dbg !2341
  %502 = zext i8 %501 to i64, !dbg !2341
  %503 = getelementptr inbounds i32, i32* %6, i64 %502, !dbg !2342
  %504 = load i32, i32* %503, align 4, !dbg !2342, !tbaa !901
  %505 = and i8 %494, 31, !dbg !2343
  %506 = zext i8 %505 to i32, !dbg !2343
  %507 = shl i32 1, %506, !dbg !2344
  %508 = and i32 %504, %507, !dbg !2344
  %509 = icmp eq i32 %508, 0, !dbg !2344
  %510 = icmp eq i8 %155, 0, !dbg !2345
  %511 = and i1 %510, %509, !dbg !2346
  br i1 %511, label %562, label %524, !dbg !2346

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
  %523 = icmp eq i8 %155, 0, !dbg !2345
  br i1 %523, label %562, label %524, !dbg !2347

; <label>:524:                                    ; preds = %255, %490, %512
  %525 = phi i64 [ %500, %490 ], [ %522, %512 ], [ %122, %255 ], !dbg !2348
  %526 = phi i64 [ %499, %490 ], [ %521, %512 ], [ %123, %255 ], !dbg !2028
  %527 = phi i64 [ %498, %490 ], [ %520, %512 ], [ %124, %255 ], !dbg !1970
  %528 = phi i64 [ %497, %490 ], [ %519, %512 ], [ %154, %255 ], !dbg !2336
  %529 = phi i8 [ %496, %490 ], [ %518, %512 ], [ %126, %255 ], !dbg !1977
  %530 = phi i8 [ %495, %490 ], [ %517, %512 ], [ %127, %255 ], !dbg !1978
  %531 = phi i8 [ %494, %490 ], [ %516, %512 ], [ %256, %255 ], !dbg !2349
  %532 = phi i8 [ %492, %490 ], [ %514, %512 ], [ 0, %255 ], !dbg !2053
  %533 = phi i64 [ %491, %490 ], [ %513, %512 ], [ %129, %255 ]
  call void @llvm.dbg.value(metadata i64 %533, metadata !1897, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i8 %532, metadata !1923, metadata !DIExpression()), !dbg !2040
  call void @llvm.dbg.value(metadata i8 %531, metadata !1916, metadata !DIExpression()), !dbg !2055
  call void @llvm.dbg.value(metadata i8 %530, metadata !1914, metadata !DIExpression()), !dbg !1978
  call void @llvm.dbg.value(metadata i8 %529, metadata !1913, metadata !DIExpression()), !dbg !1977
  call void @llvm.dbg.value(metadata i64 %528, metadata !1899, metadata !DIExpression()), !dbg !1963
  call void @llvm.dbg.value(metadata i64 %527, metadata !1907, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i64 %526, metadata !1906, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata i64 %525, metadata !1905, metadata !DIExpression()), !dbg !2029
  br i1 %110, label %534, label %661, !dbg !2352

; <label>:534:                                    ; preds = %524
  call void @llvm.dbg.value(metadata i8 1, metadata !1922, metadata !DIExpression()), !dbg !2039
  %535 = and i8 %529, 1, !dbg !2354
  %536 = icmp eq i8 %535, 0, !dbg !2354
  %537 = and i1 %114, %536, !dbg !2354
  br i1 %537, label %538, label %554, !dbg !2354

; <label>:538:                                    ; preds = %534
  %539 = icmp ult i64 %526, %533, !dbg !2356
  br i1 %539, label %540, label %542, !dbg !2360

; <label>:540:                                    ; preds = %538
  %541 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !2356
  store i8 39, i8* %541, align 1, !dbg !2356, !tbaa !1002
  br label %542, !dbg !2356

; <label>:542:                                    ; preds = %540, %538
  %543 = add i64 %526, 1, !dbg !2360
  call void @llvm.dbg.value(metadata i64 %543, metadata !1906, metadata !DIExpression()), !dbg !1969
  %544 = icmp ult i64 %543, %533, !dbg !2361
  br i1 %544, label %545, label %547, !dbg !2364

; <label>:545:                                    ; preds = %542
  %546 = getelementptr inbounds i8, i8* %0, i64 %543, !dbg !2361
  store i8 36, i8* %546, align 1, !dbg !2361, !tbaa !1002
  br label %547, !dbg !2361

; <label>:547:                                    ; preds = %545, %542
  %548 = add i64 %526, 2, !dbg !2364
  call void @llvm.dbg.value(metadata i64 %548, metadata !1906, metadata !DIExpression()), !dbg !1969
  %549 = icmp ult i64 %548, %533, !dbg !2365
  br i1 %549, label %550, label %552, !dbg !2368

; <label>:550:                                    ; preds = %547
  %551 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !2365
  store i8 39, i8* %551, align 1, !dbg !2365, !tbaa !1002
  br label %552, !dbg !2365

; <label>:552:                                    ; preds = %550, %547
  %553 = add i64 %526, 3, !dbg !2368
  call void @llvm.dbg.value(metadata i64 %553, metadata !1906, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata i8 1, metadata !1913, metadata !DIExpression()), !dbg !1977
  br label %554, !dbg !2369

; <label>:554:                                    ; preds = %534, %552
  %555 = phi i64 [ %553, %552 ], [ %526, %534 ], !dbg !2326
  %556 = phi i8 [ 1, %552 ], [ %529, %534 ], !dbg !2028
  call void @llvm.dbg.value(metadata i8 %556, metadata !1913, metadata !DIExpression()), !dbg !1977
  call void @llvm.dbg.value(metadata i64 %555, metadata !1906, metadata !DIExpression()), !dbg !1969
  %557 = icmp ult i64 %555, %533, !dbg !2370
  br i1 %557, label %558, label %560, !dbg !2373

; <label>:558:                                    ; preds = %554
  %559 = getelementptr inbounds i8, i8* %0, i64 %555, !dbg !2370
  store i8 92, i8* %559, align 1, !dbg !2370, !tbaa !1002
  br label %560, !dbg !2370

; <label>:560:                                    ; preds = %554, %558
  %561 = add i64 %555, 1, !dbg !2373
  call void @llvm.dbg.value(metadata i64 %561, metadata !1906, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata i64 %572, metadata !1897, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i8 %571, metadata !1923, metadata !DIExpression()), !dbg !2040
  call void @llvm.dbg.value(metadata i8 %570, metadata !1922, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8 %569, metadata !1916, metadata !DIExpression()), !dbg !2055
  call void @llvm.dbg.value(metadata i8 %568, metadata !1914, metadata !DIExpression()), !dbg !1978
  call void @llvm.dbg.value(metadata i8 %567, metadata !1913, metadata !DIExpression()), !dbg !1977
  call void @llvm.dbg.value(metadata i64 %566, metadata !1899, metadata !DIExpression()), !dbg !1963
  call void @llvm.dbg.value(metadata i64 %565, metadata !1907, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i64 %564, metadata !1906, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata i64 %563, metadata !1905, metadata !DIExpression()), !dbg !2029
  br label %589, !dbg !2374

; <label>:562:                                    ; preds = %432, %252, %490, %251, %512
  %563 = phi i64 [ %522, %512 ], [ %122, %251 ], [ %500, %490 ], [ %122, %252 ], [ %371, %432 ], !dbg !2348
  %564 = phi i64 [ %521, %512 ], [ %123, %251 ], [ %499, %490 ], [ %123, %252 ], [ %433, %432 ], !dbg !2028
  %565 = phi i64 [ %520, %512 ], [ %124, %251 ], [ %498, %490 ], [ %124, %252 ], [ %124, %432 ], !dbg !1970
  %566 = phi i64 [ %519, %512 ], [ %154, %251 ], [ %497, %490 ], [ %154, %252 ], [ %360, %432 ], !dbg !2336
  %567 = phi i8 [ %518, %512 ], [ %126, %251 ], [ %496, %490 ], [ %126, %252 ], [ %434, %432 ], !dbg !1977
  %568 = phi i8 [ %517, %512 ], [ %127, %251 ], [ %495, %490 ], [ %127, %252 ], [ %127, %432 ], !dbg !1978
  %569 = phi i8 [ %516, %512 ], [ 92, %251 ], [ %494, %490 ], [ 92, %252 ], [ %435, %432 ], !dbg !2377
  %570 = phi i8 [ %515, %512 ], [ 0, %251 ], [ %493, %490 ], [ 0, %252 ], [ %437, %432 ], !dbg !2053
  %571 = phi i8 [ %514, %512 ], [ 0, %251 ], [ %492, %490 ], [ 0, %252 ], [ %363, %432 ], !dbg !2053
  %572 = phi i64 [ %513, %512 ], [ %129, %251 ], [ %491, %490 ], [ %129, %252 ], [ %129, %432 ]
  call void @llvm.dbg.value(metadata i64 %572, metadata !1897, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i8 %571, metadata !1923, metadata !DIExpression()), !dbg !2040
  call void @llvm.dbg.value(metadata i8 %570, metadata !1922, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata i8 %569, metadata !1916, metadata !DIExpression()), !dbg !2055
  call void @llvm.dbg.value(metadata i8 %568, metadata !1914, metadata !DIExpression()), !dbg !1978
  call void @llvm.dbg.value(metadata i8 %567, metadata !1913, metadata !DIExpression()), !dbg !1977
  call void @llvm.dbg.value(metadata i64 %566, metadata !1899, metadata !DIExpression()), !dbg !1963
  call void @llvm.dbg.value(metadata i64 %565, metadata !1907, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i64 %564, metadata !1906, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata i64 %563, metadata !1905, metadata !DIExpression()), !dbg !2029
  %573 = and i8 %567, 1, !dbg !2374
  %574 = icmp ne i8 %573, 0, !dbg !2374
  %575 = and i8 %570, 1, !dbg !2374
  %576 = icmp eq i8 %575, 0, !dbg !2374
  %577 = and i1 %574, %576, !dbg !2374
  br i1 %577, label %578, label %589, !dbg !2374

; <label>:578:                                    ; preds = %562
  %579 = icmp ult i64 %564, %572, !dbg !2378
  br i1 %579, label %580, label %582, !dbg !2382

; <label>:580:                                    ; preds = %578
  %581 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !2378
  store i8 39, i8* %581, align 1, !dbg !2378, !tbaa !1002
  br label %582, !dbg !2378

; <label>:582:                                    ; preds = %580, %578
  %583 = add i64 %564, 1, !dbg !2382
  call void @llvm.dbg.value(metadata i64 %583, metadata !1906, metadata !DIExpression()), !dbg !1969
  %584 = icmp ult i64 %583, %572, !dbg !2383
  br i1 %584, label %585, label %587, !dbg !2386

; <label>:585:                                    ; preds = %582
  %586 = getelementptr inbounds i8, i8* %0, i64 %583, !dbg !2383
  store i8 39, i8* %586, align 1, !dbg !2383, !tbaa !1002
  br label %587, !dbg !2383

; <label>:587:                                    ; preds = %585, %582
  %588 = add i64 %564, 2, !dbg !2386
  call void @llvm.dbg.value(metadata i64 %588, metadata !1906, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata i8 0, metadata !1913, metadata !DIExpression()), !dbg !1977
  br label %589, !dbg !2387

; <label>:589:                                    ; preds = %560, %562, %587
  %590 = phi i64 [ %572, %587 ], [ %572, %562 ], [ %533, %560 ]
  %591 = phi i8 [ %571, %587 ], [ %571, %562 ], [ %532, %560 ]
  %592 = phi i8 [ %569, %587 ], [ %569, %562 ], [ %531, %560 ]
  %593 = phi i8 [ %568, %587 ], [ %568, %562 ], [ %530, %560 ]
  %594 = phi i64 [ %566, %587 ], [ %566, %562 ], [ %528, %560 ]
  %595 = phi i64 [ %565, %587 ], [ %565, %562 ], [ %527, %560 ]
  %596 = phi i64 [ %563, %587 ], [ %563, %562 ], [ %525, %560 ]
  %597 = phi i64 [ %588, %587 ], [ %564, %562 ], [ %561, %560 ], !dbg !2326
  %598 = phi i8 [ 0, %587 ], [ %567, %562 ], [ %556, %560 ], !dbg !2028
  call void @llvm.dbg.value(metadata i8 %598, metadata !1913, metadata !DIExpression()), !dbg !1977
  call void @llvm.dbg.value(metadata i64 %597, metadata !1906, metadata !DIExpression()), !dbg !1969
  %599 = icmp ult i64 %597, %590, !dbg !2388
  br i1 %599, label %600, label %602, !dbg !2391

; <label>:600:                                    ; preds = %589
  %601 = getelementptr inbounds i8, i8* %0, i64 %597, !dbg !2388
  store i8 %592, i8* %601, align 1, !dbg !2388, !tbaa !1002
  br label %602, !dbg !2388

; <label>:602:                                    ; preds = %600, %589
  %603 = add i64 %597, 1, !dbg !2391
  call void @llvm.dbg.value(metadata i64 %603, metadata !1906, metadata !DIExpression()), !dbg !1969
  %604 = and i8 %591, 1, !dbg !2392
  %605 = icmp eq i8 %604, 0, !dbg !2392
  %606 = select i1 %605, i8 0, i8 %128, !dbg !2394
  call void @llvm.dbg.value(metadata i8 %606, metadata !1915, metadata !DIExpression()), !dbg !1979
  br label %607, !dbg !2395

; <label>:607:                                    ; preds = %602, %207
  %608 = phi i64 [ %596, %602 ], [ %122, %207 ], !dbg !2348
  %609 = phi i64 [ %603, %602 ], [ %123, %207 ], !dbg !2028
  %610 = phi i64 [ %595, %602 ], [ %124, %207 ], !dbg !1970
  %611 = phi i64 [ %594, %602 ], [ %154, %207 ], !dbg !2336
  %612 = phi i8 [ %598, %602 ], [ %126, %207 ], !dbg !1977
  %613 = phi i8 [ %593, %602 ], [ %127, %207 ], !dbg !2028
  %614 = phi i8 [ %606, %602 ], [ %128, %207 ], !dbg !1979
  %615 = phi i64 [ %590, %602 ], [ %129, %207 ]
  call void @llvm.dbg.value(metadata i64 %615, metadata !1897, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i8 %614, metadata !1915, metadata !DIExpression()), !dbg !1979
  call void @llvm.dbg.value(metadata i8 %613, metadata !1914, metadata !DIExpression()), !dbg !1978
  call void @llvm.dbg.value(metadata i8 %612, metadata !1913, metadata !DIExpression()), !dbg !1977
  call void @llvm.dbg.value(metadata i64 %611, metadata !1899, metadata !DIExpression()), !dbg !1963
  call void @llvm.dbg.value(metadata i64 %610, metadata !1907, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i64 %609, metadata !1906, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata i64 %608, metadata !1905, metadata !DIExpression()), !dbg !2029
  %616 = add i64 %608, 1, !dbg !2396
  call void @llvm.dbg.value(metadata i64 %616, metadata !1905, metadata !DIExpression()), !dbg !2029
  br label %121, !dbg !2397, !llvm.loop !2398

; <label>:617:                                    ; preds = %131, %135
  %618 = phi i64 [ -1, %131 ], [ %122, %135 ]
  call void @llvm.dbg.value(metadata i64 %123, metadata !1906, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata i64 %123, metadata !1906, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata i64 %124, metadata !1907, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i64 %124, metadata !1907, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i8 %126, metadata !1913, metadata !DIExpression()), !dbg !1977
  call void @llvm.dbg.value(metadata i8 %126, metadata !1913, metadata !DIExpression()), !dbg !1977
  call void @llvm.dbg.value(metadata i8 %127, metadata !1914, metadata !DIExpression()), !dbg !1978
  call void @llvm.dbg.value(metadata i8 %127, metadata !1914, metadata !DIExpression()), !dbg !1978
  call void @llvm.dbg.value(metadata i8 %128, metadata !1915, metadata !DIExpression()), !dbg !1979
  call void @llvm.dbg.value(metadata i8 %128, metadata !1915, metadata !DIExpression()), !dbg !1979
  call void @llvm.dbg.value(metadata i64 %129, metadata !1897, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i64 %129, metadata !1897, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i64 %123, metadata !1906, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata i64 %123, metadata !1906, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata i64 %124, metadata !1907, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i64 %124, metadata !1907, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i8 %126, metadata !1913, metadata !DIExpression()), !dbg !1977
  call void @llvm.dbg.value(metadata i8 %126, metadata !1913, metadata !DIExpression()), !dbg !1977
  call void @llvm.dbg.value(metadata i8 %127, metadata !1914, metadata !DIExpression()), !dbg !1978
  call void @llvm.dbg.value(metadata i8 %127, metadata !1914, metadata !DIExpression()), !dbg !1978
  call void @llvm.dbg.value(metadata i8 %128, metadata !1915, metadata !DIExpression()), !dbg !1979
  call void @llvm.dbg.value(metadata i8 %128, metadata !1915, metadata !DIExpression()), !dbg !1979
  call void @llvm.dbg.value(metadata i64 %129, metadata !1897, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i64 %129, metadata !1897, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i64 %123, metadata !1906, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata i64 %123, metadata !1906, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata i64 %124, metadata !1907, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i64 %124, metadata !1907, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i8 %126, metadata !1913, metadata !DIExpression()), !dbg !1977
  call void @llvm.dbg.value(metadata i8 %126, metadata !1913, metadata !DIExpression()), !dbg !1977
  call void @llvm.dbg.value(metadata i8 %127, metadata !1914, metadata !DIExpression()), !dbg !1978
  call void @llvm.dbg.value(metadata i8 %127, metadata !1914, metadata !DIExpression()), !dbg !1978
  call void @llvm.dbg.value(metadata i8 %128, metadata !1915, metadata !DIExpression()), !dbg !1979
  call void @llvm.dbg.value(metadata i8 %128, metadata !1915, metadata !DIExpression()), !dbg !1979
  call void @llvm.dbg.value(metadata i64 %129, metadata !1897, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i64 %129, metadata !1897, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i64 %123, metadata !1906, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata i64 %123, metadata !1906, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata i64 %124, metadata !1907, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i64 %124, metadata !1907, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i8 %126, metadata !1913, metadata !DIExpression()), !dbg !1977
  call void @llvm.dbg.value(metadata i8 %126, metadata !1913, metadata !DIExpression()), !dbg !1977
  call void @llvm.dbg.value(metadata i8 %127, metadata !1914, metadata !DIExpression()), !dbg !1978
  call void @llvm.dbg.value(metadata i8 %127, metadata !1914, metadata !DIExpression()), !dbg !1978
  call void @llvm.dbg.value(metadata i8 %128, metadata !1915, metadata !DIExpression()), !dbg !1979
  call void @llvm.dbg.value(metadata i8 %128, metadata !1915, metadata !DIExpression()), !dbg !1979
  call void @llvm.dbg.value(metadata i64 %129, metadata !1897, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i64 %129, metadata !1897, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i64 %123, metadata !1906, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata i64 %123, metadata !1906, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata i64 %124, metadata !1907, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i64 %124, metadata !1907, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i64 %618, metadata !1899, metadata !DIExpression()), !dbg !1963
  call void @llvm.dbg.value(metadata i64 %618, metadata !1899, metadata !DIExpression()), !dbg !1963
  call void @llvm.dbg.value(metadata i8 %126, metadata !1913, metadata !DIExpression()), !dbg !1977
  call void @llvm.dbg.value(metadata i8 %126, metadata !1913, metadata !DIExpression()), !dbg !1977
  call void @llvm.dbg.value(metadata i8 %127, metadata !1914, metadata !DIExpression()), !dbg !1978
  call void @llvm.dbg.value(metadata i8 %127, metadata !1914, metadata !DIExpression()), !dbg !1978
  call void @llvm.dbg.value(metadata i8 %128, metadata !1915, metadata !DIExpression()), !dbg !1979
  call void @llvm.dbg.value(metadata i8 %128, metadata !1915, metadata !DIExpression()), !dbg !1979
  call void @llvm.dbg.value(metadata i64 %129, metadata !1897, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i64 %129, metadata !1897, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i64 %123, metadata !1906, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata i64 %123, metadata !1906, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata i64 %124, metadata !1907, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i64 %124, metadata !1907, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i64 %125, metadata !1899, metadata !DIExpression()), !dbg !1963
  call void @llvm.dbg.value(metadata i64 %125, metadata !1899, metadata !DIExpression()), !dbg !1963
  call void @llvm.dbg.value(metadata i8 %126, metadata !1913, metadata !DIExpression()), !dbg !1977
  call void @llvm.dbg.value(metadata i8 %126, metadata !1913, metadata !DIExpression()), !dbg !1977
  call void @llvm.dbg.value(metadata i8 %127, metadata !1914, metadata !DIExpression()), !dbg !1978
  call void @llvm.dbg.value(metadata i8 %127, metadata !1914, metadata !DIExpression()), !dbg !1978
  call void @llvm.dbg.value(metadata i8 %128, metadata !1915, metadata !DIExpression()), !dbg !1979
  call void @llvm.dbg.value(metadata i8 %128, metadata !1915, metadata !DIExpression()), !dbg !1979
  call void @llvm.dbg.value(metadata i64 %129, metadata !1897, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i64 %129, metadata !1897, metadata !DIExpression()), !dbg !1961
  %619 = icmp eq i64 %123, 0, !dbg !2400
  %620 = and i1 %114, %619, !dbg !2402
  %621 = xor i1 %620, true, !dbg !2402
  %622 = or i1 %110, %621, !dbg !2402
  br i1 %622, label %623, label %661, !dbg !2402

; <label>:623:                                    ; preds = %617
  %624 = and i1 %114, %110, !dbg !2403
  %625 = xor i1 %624, true, !dbg !2403
  %626 = and i8 %127, 1, !dbg !2405
  %627 = icmp eq i8 %626, 0, !dbg !2405
  %628 = or i1 %627, %625, !dbg !2403
  br i1 %628, label %638, label %629, !dbg !2403

; <label>:629:                                    ; preds = %623
  %630 = and i8 %128, 1, !dbg !2406
  %631 = icmp eq i8 %630, 0, !dbg !2406
  br i1 %631, label %634, label %632, !dbg !2409

; <label>:632:                                    ; preds = %629
  call void @llvm.dbg.value(metadata i64 %618, metadata !1899, metadata !DIExpression()), !dbg !1963
  call void @llvm.dbg.value(metadata i8* %95, metadata !1903, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i8* %96, metadata !1904, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i64 %124, metadata !1907, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i64 %618, metadata !1899, metadata !DIExpression()), !dbg !1963
  call void @llvm.dbg.value(metadata i8* %95, metadata !1903, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i8* %96, metadata !1904, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i64 %124, metadata !1907, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i64 %618, metadata !1899, metadata !DIExpression()), !dbg !1963
  call void @llvm.dbg.value(metadata i8* %95, metadata !1903, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i8* %96, metadata !1904, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i64 %124, metadata !1907, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i64 %618, metadata !1899, metadata !DIExpression()), !dbg !1963
  call void @llvm.dbg.value(metadata i8* %95, metadata !1903, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i8* %96, metadata !1904, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i64 %124, metadata !1907, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i8* %95, metadata !1903, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i8* %96, metadata !1904, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i64 %124, metadata !1907, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i64 %618, metadata !1899, metadata !DIExpression()), !dbg !1963
  call void @llvm.dbg.value(metadata i8* %95, metadata !1903, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata i8* %96, metadata !1904, metadata !DIExpression()), !dbg !1968
  call void @llvm.dbg.value(metadata i64 %124, metadata !1907, metadata !DIExpression()), !dbg !1970
  call void @llvm.dbg.value(metadata i64 %125, metadata !1899, metadata !DIExpression()), !dbg !1963
  %633 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %618, i32 5, i32 %5, i32* %6, i8* %95, i8* %96), !dbg !2410
  br label %671, !dbg !2411

; <label>:634:                                    ; preds = %629
  %635 = icmp eq i64 %129, 0, !dbg !2412
  %636 = icmp ne i64 %124, 0, !dbg !2414
  %637 = and i1 %636, %635, !dbg !2415
  br i1 %637, label %27, label %638, !dbg !2415

; <label>:638:                                    ; preds = %623, %634
  call void @llvm.dbg.value(metadata i8* %98, metadata !1908, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i8* %98, metadata !1908, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i64 %123, metadata !1906, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata i64 %123, metadata !1906, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata i64 %129, metadata !1897, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i64 %129, metadata !1897, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i8* %98, metadata !1908, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i8* %98, metadata !1908, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i64 %123, metadata !1906, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata i64 %123, metadata !1906, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata i64 %129, metadata !1897, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i64 %129, metadata !1897, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i8* %98, metadata !1908, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i8* %98, metadata !1908, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i64 %123, metadata !1906, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata i64 %123, metadata !1906, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata i64 %129, metadata !1897, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i64 %129, metadata !1897, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i8* %98, metadata !1908, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i8* %98, metadata !1908, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i64 %123, metadata !1906, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata i64 %123, metadata !1906, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata i64 %129, metadata !1897, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i64 %129, metadata !1897, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i8* %98, metadata !1908, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i8* %98, metadata !1908, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i64 %123, metadata !1906, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata i64 %123, metadata !1906, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata i64 %129, metadata !1897, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i64 %129, metadata !1897, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i8* %98, metadata !1908, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i8* %98, metadata !1908, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i64 %123, metadata !1906, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata i64 %123, metadata !1906, metadata !DIExpression()), !dbg !1969
  call void @llvm.dbg.value(metadata i64 %129, metadata !1897, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i64 %129, metadata !1897, metadata !DIExpression()), !dbg !1961
  %639 = icmp ne i8* %98, null, !dbg !2416
  %640 = and i1 %639, %110, !dbg !2418
  br i1 %640, label %641, label %656, !dbg !2418

; <label>:641:                                    ; preds = %638
  call void @llvm.dbg.value(metadata i8* %98, metadata !1908, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i64 %123, metadata !1906, metadata !DIExpression()), !dbg !1969
  %642 = load i8, i8* %98, align 1, !dbg !2419, !tbaa !1002
  %643 = icmp eq i8 %642, 0, !dbg !2422
  br i1 %643, label %656, label %644, !dbg !2422

; <label>:644:                                    ; preds = %641, %651
  %645 = phi i8 [ %654, %651 ], [ %642, %641 ]
  %646 = phi i8* [ %653, %651 ], [ %98, %641 ]
  %647 = phi i64 [ %652, %651 ], [ %123, %641 ]
  call void @llvm.dbg.value(metadata i8* %646, metadata !1908, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i64 %647, metadata !1906, metadata !DIExpression()), !dbg !1969
  %648 = icmp ult i64 %647, %129, !dbg !2423
  br i1 %648, label %649, label %651, !dbg !2426

; <label>:649:                                    ; preds = %644
  %650 = getelementptr inbounds i8, i8* %0, i64 %647, !dbg !2423
  store i8 %645, i8* %650, align 1, !dbg !2423, !tbaa !1002
  br label %651, !dbg !2423

; <label>:651:                                    ; preds = %649, %644
  %652 = add i64 %647, 1, !dbg !2426
  %653 = getelementptr inbounds i8, i8* %646, i64 1, !dbg !2427
  call void @llvm.dbg.value(metadata i8* %653, metadata !1908, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i64 %652, metadata !1906, metadata !DIExpression()), !dbg !1969
  %654 = load i8, i8* %653, align 1, !dbg !2419, !tbaa !1002
  %655 = icmp eq i8 %654, 0, !dbg !2422
  br i1 %655, label %656, label %644, !dbg !2422, !llvm.loop !2428

; <label>:656:                                    ; preds = %651, %641, %638
  %657 = phi i64 [ %123, %638 ], [ %123, %641 ], [ %652, %651 ], !dbg !1969
  call void @llvm.dbg.value(metadata i64 %657, metadata !1906, metadata !DIExpression()), !dbg !1969
  %658 = icmp ult i64 %657, %129, !dbg !2430
  br i1 %658, label %659, label %671, !dbg !2432

; <label>:659:                                    ; preds = %656
  %660 = getelementptr inbounds i8, i8* %0, i64 %657, !dbg !2433
  store i8 0, i8* %660, align 1, !dbg !2434, !tbaa !1002
  br label %671, !dbg !2433

; <label>:661:                                    ; preds = %617, %524, %274, %271, %253, %251, %223, %209, %159, %146, %377, %358
  %662 = phi i32 [ 2, %358 ], [ %94, %377 ], [ %94, %146 ], [ %94, %159 ], [ 2, %209 ], [ 5, %223 ], [ 2, %251 ], [ 2, %253 ], [ 2, %271 ], [ 2, %274 ], [ %94, %524 ], [ %94, %617 ]
  %663 = phi i64 [ %311, %358 ], [ %360, %377 ], [ %144, %146 ], [ %154, %159 ], [ %154, %209 ], [ %154, %223 ], [ %154, %251 ], [ %154, %253 ], [ %154, %271 ], [ %154, %274 ], [ %528, %524 ], [ %618, %617 ]
  %664 = phi i64 [ %129, %358 ], [ %129, %377 ], [ %129, %146 ], [ %129, %159 ], [ %129, %209 ], [ %129, %223 ], [ %129, %251 ], [ %129, %253 ], [ %129, %271 ], [ %129, %274 ], [ %533, %524 ], [ %129, %617 ]
  call void @llvm.dbg.value(metadata i64 %664, metadata !1897, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i64 %663, metadata !1899, metadata !DIExpression()), !dbg !1963
  %665 = icmp ne i32 %662, 2, !dbg !2435
  %666 = icmp eq i8 %102, 0, !dbg !2437
  %667 = or i1 %665, %666, !dbg !2438
  call void @llvm.dbg.value(metadata i32 4, metadata !1900, metadata !DIExpression()), !dbg !1964
  %668 = select i1 %667, i32 %662, i32 4, !dbg !2438
  call void @llvm.dbg.value(metadata i32 %668, metadata !1900, metadata !DIExpression()), !dbg !1964
  %669 = and i32 %5, -3, !dbg !2439
  %670 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %664, i8* %2, i64 %663, i32 %668, i32 %669, i32* null, i8* %95, i8* %96), !dbg !2440
  br label %671, !dbg !2441

; <label>:671:                                    ; preds = %656, %659, %661, %632
  %672 = phi i64 [ %670, %661 ], [ %633, %632 ], [ %657, %659 ], [ %657, %656 ]
  ret i64 %672, !dbg !2442
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #7 !dbg !2443 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2447, metadata !DIExpression()), !dbg !2451
  call void @llvm.dbg.value(metadata i32 %1, metadata !2448, metadata !DIExpression()), !dbg !2452
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #11, !dbg !2453
  call void @llvm.dbg.value(metadata i8* %3, metadata !2449, metadata !DIExpression()), !dbg !2454
  %4 = icmp eq i8* %3, %0, !dbg !2455
  br i1 %4, label %5, label %71, !dbg !2457

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #11, !dbg !2458
  call void @llvm.dbg.value(metadata i8* %6, metadata !2450, metadata !DIExpression()), !dbg !2459
  call void @llvm.dbg.value(metadata i8* %6, metadata !2460, metadata !DIExpression()), !dbg !2476
  call void @llvm.dbg.value(metadata i8* null, metadata !2466, metadata !DIExpression()), !dbg !2479
  call void @llvm.dbg.value(metadata i8 85, metadata !2467, metadata !DIExpression()), !dbg !2480
  call void @llvm.dbg.value(metadata i8 84, metadata !2468, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i8 70, metadata !2469, metadata !DIExpression()), !dbg !2482
  call void @llvm.dbg.value(metadata i8 45, metadata !2470, metadata !DIExpression()), !dbg !2483
  call void @llvm.dbg.value(metadata i8 56, metadata !2471, metadata !DIExpression()), !dbg !2484
  call void @llvm.dbg.value(metadata i8 0, metadata !2472, metadata !DIExpression()), !dbg !2485
  call void @llvm.dbg.value(metadata i8 0, metadata !2473, metadata !DIExpression()), !dbg !2486
  call void @llvm.dbg.value(metadata i8 0, metadata !2474, metadata !DIExpression()), !dbg !2487
  call void @llvm.dbg.value(metadata i8 0, metadata !2475, metadata !DIExpression()), !dbg !2488
  %7 = load i8, i8* %6, align 1, !dbg !2489, !tbaa !1002
  %8 = and i8 %7, -33, !dbg !2489
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !2489

; <label>:9:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2491, metadata !DIExpression()), !dbg !2505
  call void @llvm.dbg.value(metadata i8* null, metadata !2496, metadata !DIExpression()), !dbg !2509
  call void @llvm.dbg.value(metadata i8 84, metadata !2497, metadata !DIExpression()), !dbg !2510
  call void @llvm.dbg.value(metadata i8 70, metadata !2498, metadata !DIExpression()), !dbg !2511
  call void @llvm.dbg.value(metadata i8 45, metadata !2499, metadata !DIExpression()), !dbg !2512
  call void @llvm.dbg.value(metadata i8 56, metadata !2500, metadata !DIExpression()), !dbg !2513
  call void @llvm.dbg.value(metadata i8 0, metadata !2501, metadata !DIExpression()), !dbg !2514
  call void @llvm.dbg.value(metadata i8 0, metadata !2502, metadata !DIExpression()), !dbg !2515
  call void @llvm.dbg.value(metadata i8 0, metadata !2503, metadata !DIExpression()), !dbg !2516
  call void @llvm.dbg.value(metadata i8 0, metadata !2504, metadata !DIExpression()), !dbg !2517
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2518
  %11 = load i8, i8* %10, align 1, !dbg !2518, !tbaa !1002
  %12 = and i8 %11, -33, !dbg !2518
  %13 = icmp eq i8 %12, 84, !dbg !2518
  br i1 %13, label %14, label %68, !dbg !2518

; <label>:14:                                     ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !2520, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8* null, metadata !2525, metadata !DIExpression()), !dbg !2537
  call void @llvm.dbg.value(metadata i8 70, metadata !2526, metadata !DIExpression()), !dbg !2538
  call void @llvm.dbg.value(metadata i8 45, metadata !2527, metadata !DIExpression()), !dbg !2539
  call void @llvm.dbg.value(metadata i8 56, metadata !2528, metadata !DIExpression()), !dbg !2540
  call void @llvm.dbg.value(metadata i8 0, metadata !2529, metadata !DIExpression()), !dbg !2541
  call void @llvm.dbg.value(metadata i8 0, metadata !2530, metadata !DIExpression()), !dbg !2542
  call void @llvm.dbg.value(metadata i8 0, metadata !2531, metadata !DIExpression()), !dbg !2543
  call void @llvm.dbg.value(metadata i8 0, metadata !2532, metadata !DIExpression()), !dbg !2544
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2545
  %16 = load i8, i8* %15, align 1, !dbg !2545, !tbaa !1002
  %17 = and i8 %16, -33, !dbg !2545
  %18 = icmp eq i8 %17, 70, !dbg !2545
  br i1 %18, label %19, label %68, !dbg !2545

; <label>:19:                                     ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !2547, metadata !DIExpression()), !dbg !2559
  call void @llvm.dbg.value(metadata i8* null, metadata !2552, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata i8 45, metadata !2553, metadata !DIExpression()), !dbg !2564
  call void @llvm.dbg.value(metadata i8 56, metadata !2554, metadata !DIExpression()), !dbg !2565
  call void @llvm.dbg.value(metadata i8 0, metadata !2555, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.value(metadata i8 0, metadata !2556, metadata !DIExpression()), !dbg !2567
  call void @llvm.dbg.value(metadata i8 0, metadata !2557, metadata !DIExpression()), !dbg !2568
  call void @llvm.dbg.value(metadata i8 0, metadata !2558, metadata !DIExpression()), !dbg !2569
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2570
  %21 = load i8, i8* %20, align 1, !dbg !2570, !tbaa !1002
  %22 = icmp eq i8 %21, 45, !dbg !2570
  br i1 %22, label %23, label %68, !dbg !2572

; <label>:23:                                     ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !2573, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i8* null, metadata !2578, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i8 56, metadata !2579, metadata !DIExpression()), !dbg !2589
  call void @llvm.dbg.value(metadata i8 0, metadata !2580, metadata !DIExpression()), !dbg !2590
  call void @llvm.dbg.value(metadata i8 0, metadata !2581, metadata !DIExpression()), !dbg !2591
  call void @llvm.dbg.value(metadata i8 0, metadata !2582, metadata !DIExpression()), !dbg !2592
  call void @llvm.dbg.value(metadata i8 0, metadata !2583, metadata !DIExpression()), !dbg !2593
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2594
  %25 = load i8, i8* %24, align 1, !dbg !2594, !tbaa !1002
  %26 = icmp eq i8 %25, 56, !dbg !2594
  br i1 %26, label %27, label %68, !dbg !2596

; <label>:27:                                     ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !2597, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i8* null, metadata !2602, metadata !DIExpression()), !dbg !2611
  call void @llvm.dbg.value(metadata i8 0, metadata !2603, metadata !DIExpression()), !dbg !2612
  call void @llvm.dbg.value(metadata i8 0, metadata !2604, metadata !DIExpression()), !dbg !2613
  call void @llvm.dbg.value(metadata i8 0, metadata !2605, metadata !DIExpression()), !dbg !2614
  call void @llvm.dbg.value(metadata i8 0, metadata !2606, metadata !DIExpression()), !dbg !2615
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2616
  %29 = load i8, i8* %28, align 1, !dbg !2616, !tbaa !1002
  %30 = icmp eq i8 %29, 0, !dbg !2616
  br i1 %30, label %31, label %68, !dbg !2618

; <label>:31:                                     ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !2619, !tbaa !1002
  %33 = icmp eq i8 %32, 96, !dbg !2620
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.102, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.103, i64 0, i64 0), !dbg !2619
  br label %71, !dbg !2621

; <label>:35:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2491, metadata !DIExpression()), !dbg !2622
  call void @llvm.dbg.value(metadata i8* null, metadata !2496, metadata !DIExpression()), !dbg !2626
  call void @llvm.dbg.value(metadata i8 66, metadata !2497, metadata !DIExpression()), !dbg !2627
  call void @llvm.dbg.value(metadata i8 49, metadata !2498, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.value(metadata i8 56, metadata !2499, metadata !DIExpression()), !dbg !2629
  call void @llvm.dbg.value(metadata i8 48, metadata !2500, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i8 51, metadata !2501, metadata !DIExpression()), !dbg !2631
  call void @llvm.dbg.value(metadata i8 48, metadata !2502, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.value(metadata i8 0, metadata !2503, metadata !DIExpression()), !dbg !2633
  call void @llvm.dbg.value(metadata i8 0, metadata !2504, metadata !DIExpression()), !dbg !2634
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2635
  %37 = load i8, i8* %36, align 1, !dbg !2635, !tbaa !1002
  %38 = and i8 %37, -33, !dbg !2635
  %39 = icmp eq i8 %38, 66, !dbg !2635
  br i1 %39, label %40, label %68, !dbg !2635

; <label>:40:                                     ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !2520, metadata !DIExpression()), !dbg !2636
  call void @llvm.dbg.value(metadata i8* null, metadata !2525, metadata !DIExpression()), !dbg !2638
  call void @llvm.dbg.value(metadata i8 49, metadata !2526, metadata !DIExpression()), !dbg !2639
  call void @llvm.dbg.value(metadata i8 56, metadata !2527, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i8 48, metadata !2528, metadata !DIExpression()), !dbg !2641
  call void @llvm.dbg.value(metadata i8 51, metadata !2529, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i8 48, metadata !2530, metadata !DIExpression()), !dbg !2643
  call void @llvm.dbg.value(metadata i8 0, metadata !2531, metadata !DIExpression()), !dbg !2644
  call void @llvm.dbg.value(metadata i8 0, metadata !2532, metadata !DIExpression()), !dbg !2645
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2646
  %42 = load i8, i8* %41, align 1, !dbg !2646, !tbaa !1002
  %43 = icmp eq i8 %42, 49, !dbg !2646
  br i1 %43, label %44, label %68, !dbg !2647

; <label>:44:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !2547, metadata !DIExpression()), !dbg !2648
  call void @llvm.dbg.value(metadata i8* null, metadata !2552, metadata !DIExpression()), !dbg !2650
  call void @llvm.dbg.value(metadata i8 56, metadata !2553, metadata !DIExpression()), !dbg !2651
  call void @llvm.dbg.value(metadata i8 48, metadata !2554, metadata !DIExpression()), !dbg !2652
  call void @llvm.dbg.value(metadata i8 51, metadata !2555, metadata !DIExpression()), !dbg !2653
  call void @llvm.dbg.value(metadata i8 48, metadata !2556, metadata !DIExpression()), !dbg !2654
  call void @llvm.dbg.value(metadata i8 0, metadata !2557, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata i8 0, metadata !2558, metadata !DIExpression()), !dbg !2656
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2657
  %46 = load i8, i8* %45, align 1, !dbg !2657, !tbaa !1002
  %47 = icmp eq i8 %46, 56, !dbg !2657
  br i1 %47, label %48, label %68, !dbg !2658

; <label>:48:                                     ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !2573, metadata !DIExpression()), !dbg !2659
  call void @llvm.dbg.value(metadata i8* null, metadata !2578, metadata !DIExpression()), !dbg !2661
  call void @llvm.dbg.value(metadata i8 48, metadata !2579, metadata !DIExpression()), !dbg !2662
  call void @llvm.dbg.value(metadata i8 51, metadata !2580, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i8 48, metadata !2581, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i8 0, metadata !2582, metadata !DIExpression()), !dbg !2665
  call void @llvm.dbg.value(metadata i8 0, metadata !2583, metadata !DIExpression()), !dbg !2666
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2667
  %50 = load i8, i8* %49, align 1, !dbg !2667, !tbaa !1002
  %51 = icmp eq i8 %50, 48, !dbg !2667
  br i1 %51, label %52, label %68, !dbg !2668

; <label>:52:                                     ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !2597, metadata !DIExpression()), !dbg !2669
  call void @llvm.dbg.value(metadata i8* null, metadata !2602, metadata !DIExpression()), !dbg !2671
  call void @llvm.dbg.value(metadata i8 51, metadata !2603, metadata !DIExpression()), !dbg !2672
  call void @llvm.dbg.value(metadata i8 48, metadata !2604, metadata !DIExpression()), !dbg !2673
  call void @llvm.dbg.value(metadata i8 0, metadata !2605, metadata !DIExpression()), !dbg !2674
  call void @llvm.dbg.value(metadata i8 0, metadata !2606, metadata !DIExpression()), !dbg !2675
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2676
  %54 = load i8, i8* %53, align 1, !dbg !2676, !tbaa !1002
  %55 = icmp eq i8 %54, 51, !dbg !2676
  br i1 %55, label %56, label %68, !dbg !2677

; <label>:56:                                     ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !2678, metadata !DIExpression()), !dbg !2687
  call void @llvm.dbg.value(metadata i8* null, metadata !2683, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i8 48, metadata !2684, metadata !DIExpression()), !dbg !2692
  call void @llvm.dbg.value(metadata i8 0, metadata !2685, metadata !DIExpression()), !dbg !2693
  call void @llvm.dbg.value(metadata i8 0, metadata !2686, metadata !DIExpression()), !dbg !2694
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2695
  %58 = load i8, i8* %57, align 1, !dbg !2695, !tbaa !1002
  %59 = icmp eq i8 %58, 48, !dbg !2695
  br i1 %59, label %60, label %68, !dbg !2697

; <label>:60:                                     ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !2698, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.value(metadata i8* null, metadata !2703, metadata !DIExpression()), !dbg !2710
  call void @llvm.dbg.value(metadata i8 0, metadata !2704, metadata !DIExpression()), !dbg !2711
  call void @llvm.dbg.value(metadata i8 0, metadata !2705, metadata !DIExpression()), !dbg !2712
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2713
  %62 = load i8, i8* %61, align 1, !dbg !2713, !tbaa !1002
  %63 = icmp eq i8 %62, 0, !dbg !2713
  br i1 %63, label %64, label %68, !dbg !2715

; <label>:64:                                     ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !2716, !tbaa !1002
  %66 = icmp eq i8 %65, 96, !dbg !2717
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.104, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.105, i64 0, i64 0), !dbg !2716
  br label %71, !dbg !2718

; <label>:68:                                     ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !2719
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.101, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.100, i64 0, i64 0), !dbg !2720
  br label %71, !dbg !2721

; <label>:71:                                     ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !2722
  ret i8* %72, !dbg !2723
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #7 !dbg !2724 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2728, metadata !DIExpression()), !dbg !2731
  call void @llvm.dbg.value(metadata i64 %1, metadata !2729, metadata !DIExpression()), !dbg !2732
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2730, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %0, metadata !2734, metadata !DIExpression()) #11, !dbg !2747
  call void @llvm.dbg.value(metadata i64 %1, metadata !2739, metadata !DIExpression()) #11, !dbg !2749
  call void @llvm.dbg.value(metadata i64* null, metadata !2740, metadata !DIExpression()) #11, !dbg !2750
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2741, metadata !DIExpression()) #11, !dbg !2751
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2752
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2752
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2742, metadata !DIExpression()) #11, !dbg !2753
  %6 = tail call i32* @__errno_location() #17, !dbg !2754
  %7 = load i32, i32* %6, align 4, !dbg !2754, !tbaa !901
  call void @llvm.dbg.value(metadata i32 %7, metadata !2743, metadata !DIExpression()) #11, !dbg !2755
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2756
  %9 = load i32, i32* %8, align 4, !dbg !2756, !tbaa !1829
  %10 = or i32 %9, 1, !dbg !2757
  call void @llvm.dbg.value(metadata i32 %10, metadata !2744, metadata !DIExpression()) #11, !dbg !2758
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2759
  %12 = load i32, i32* %11, align 8, !dbg !2759, !tbaa !1770
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2760
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2761
  %15 = load i8*, i8** %14, align 8, !dbg !2761, !tbaa !1855
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2762
  %17 = load i8*, i8** %16, align 8, !dbg !2762, !tbaa !1858
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #11, !dbg !2763
  %19 = add i64 %18, 1, !dbg !2764
  call void @llvm.dbg.value(metadata i64 %19, metadata !2745, metadata !DIExpression()) #11, !dbg !2765
  call void @llvm.dbg.value(metadata i64 %19, metadata !2766, metadata !DIExpression()) #11, !dbg !2771
  %20 = tail call noalias i8* @xmalloc(i64 %19) #11, !dbg !2773
  call void @llvm.dbg.value(metadata i8* %20, metadata !2746, metadata !DIExpression()) #11, !dbg !2774
  %21 = load i32, i32* %11, align 8, !dbg !2775, !tbaa !1770
  %22 = load i8*, i8** %14, align 8, !dbg !2776, !tbaa !1855
  %23 = load i8*, i8** %16, align 8, !dbg !2777, !tbaa !1858
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #11, !dbg !2778
  store i32 %7, i32* %6, align 4, !dbg !2779, !tbaa !901
  ret i8* %20, !dbg !2780
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #7 !dbg !2735 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2734, metadata !DIExpression()), !dbg !2781
  call void @llvm.dbg.value(metadata i64 %1, metadata !2739, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i64* %2, metadata !2740, metadata !DIExpression()), !dbg !2783
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2741, metadata !DIExpression()), !dbg !2784
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2785
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2785
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2742, metadata !DIExpression()), !dbg !2786
  %7 = tail call i32* @__errno_location() #17, !dbg !2787
  %8 = load i32, i32* %7, align 4, !dbg !2787, !tbaa !901
  call void @llvm.dbg.value(metadata i32 %8, metadata !2743, metadata !DIExpression()), !dbg !2788
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2789
  %10 = load i32, i32* %9, align 4, !dbg !2789, !tbaa !1829
  %11 = icmp ne i64* %2, null, !dbg !2790
  %12 = xor i1 %11, true, !dbg !2790
  %13 = zext i1 %12 to i32, !dbg !2790
  %14 = or i32 %10, %13, !dbg !2791
  call void @llvm.dbg.value(metadata i32 %14, metadata !2744, metadata !DIExpression()), !dbg !2792
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2793
  %16 = load i32, i32* %15, align 8, !dbg !2793, !tbaa !1770
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2794
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2795
  %19 = load i8*, i8** %18, align 8, !dbg !2795, !tbaa !1855
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2796
  %21 = load i8*, i8** %20, align 8, !dbg !2796, !tbaa !1858
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !2797
  %23 = add i64 %22, 1, !dbg !2798
  call void @llvm.dbg.value(metadata i64 %23, metadata !2745, metadata !DIExpression()), !dbg !2799
  call void @llvm.dbg.value(metadata i64 %23, metadata !2766, metadata !DIExpression()) #11, !dbg !2800
  %24 = tail call noalias i8* @xmalloc(i64 %23) #11, !dbg !2802
  call void @llvm.dbg.value(metadata i8* %24, metadata !2746, metadata !DIExpression()), !dbg !2803
  %25 = load i32, i32* %15, align 8, !dbg !2804, !tbaa !1770
  %26 = load i8*, i8** %18, align 8, !dbg !2805, !tbaa !1855
  %27 = load i8*, i8** %20, align 8, !dbg !2806, !tbaa !1858
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !2807
  store i32 %8, i32* %7, align 4, !dbg !2808, !tbaa !901
  br i1 %11, label %29, label %30, !dbg !2809

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2810, !tbaa !880
  br label %30, !dbg !2812

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2813
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #7 !dbg !2814 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2818, !tbaa !767
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2816, metadata !DIExpression()), !dbg !2819
  call void @llvm.dbg.value(metadata i32 1, metadata !2817, metadata !DIExpression()), !dbg !2820
  %2 = load i32, i32* @nslots, align 4, !dbg !2821, !tbaa !901
  %3 = icmp sgt i32 %2, 1, !dbg !2824
  br i1 %3, label %4, label %12, !dbg !2825

; <label>:4:                                      ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !2817, metadata !DIExpression()), !dbg !2820
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !2826
  %7 = load i8*, i8** %6, align 8, !dbg !2826, !tbaa !2827
  tail call void @free(i8* %7) #11, !dbg !2829
  %8 = add nuw nsw i64 %5, 1, !dbg !2830
  call void @llvm.dbg.value(metadata i32 undef, metadata !2817, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2820
  %9 = load i32, i32* @nslots, align 4, !dbg !2821, !tbaa !901
  %10 = sext i32 %9 to i64, !dbg !2824
  %11 = icmp slt i64 %8, %10, !dbg !2824
  br i1 %11, label %4, label %12, !dbg !2825, !llvm.loop !2831

; <label>:12:                                     ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2833
  %14 = load i8*, i8** %13, align 8, !dbg !2833, !tbaa !2827
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2835
  br i1 %15, label %17, label %16, !dbg !2836

; <label>:16:                                     ; preds = %12
  tail call void @free(i8* %14) #11, !dbg !2837
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2839, !tbaa !2840
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2841, !tbaa !2827
  br label %17, !dbg !2842

; <label>:17:                                     ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2843
  br i1 %18, label %21, label %19, !dbg !2845

; <label>:19:                                     ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2846
  tail call void @free(i8* %20) #11, !dbg !2848
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2849, !tbaa !767
  br label %21, !dbg !2850

; <label>:21:                                     ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !2851, !tbaa !901
  ret void, !dbg !2852
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32, i8*) local_unnamed_addr #7 !dbg !2853 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2857, metadata !DIExpression()), !dbg !2859
  call void @llvm.dbg.value(metadata i8* %1, metadata !2858, metadata !DIExpression()), !dbg !2860
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2861
  ret i8* %3, !dbg !2862
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #7 !dbg !2863 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2867, metadata !DIExpression()), !dbg !2882
  call void @llvm.dbg.value(metadata i8* %1, metadata !2868, metadata !DIExpression()), !dbg !2883
  call void @llvm.dbg.value(metadata i64 %2, metadata !2869, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2870, metadata !DIExpression()), !dbg !2885
  %5 = tail call i32* @__errno_location() #17, !dbg !2886
  %6 = load i32, i32* %5, align 4, !dbg !2886, !tbaa !901
  call void @llvm.dbg.value(metadata i32 %6, metadata !2871, metadata !DIExpression()), !dbg !2887
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2888, !tbaa !767
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2872, metadata !DIExpression()), !dbg !2889
  %8 = icmp slt i32 %0, 0, !dbg !2890
  br i1 %8, label %9, label %10, !dbg !2892

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2893
  unreachable, !dbg !2893

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2894, !tbaa !901
  %12 = icmp sgt i32 %11, %0, !dbg !2895
  br i1 %12, label %34, label %13, !dbg !2896

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2897
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2876, metadata !DIExpression()), !dbg !2898
  %15 = icmp eq i32 %0, 2147483647, !dbg !2899
  br i1 %15, label %16, label %17, !dbg !2901

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2902
  unreachable, !dbg !2902

; <label>:17:                                     ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2903
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2903
  %20 = add nsw i32 %0, 1, !dbg !2904
  %21 = sext i32 %20 to i64, !dbg !2905
  %22 = shl nsw i64 %21, 4, !dbg !2906
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #11, !dbg !2907
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2907
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2872, metadata !DIExpression()), !dbg !2889
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2908, !tbaa !767
  br i1 %14, label %25, label %26, !dbg !2909

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2910, !tbaa.struct !2912
  br label %26, !dbg !2913

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2914, !tbaa !901
  %28 = sext i32 %27 to i64, !dbg !2915
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2915
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2916
  %31 = sub nsw i32 %20, %27, !dbg !2917
  %32 = sext i32 %31 to i64, !dbg !2918
  %33 = shl nsw i64 %32, 4, !dbg !2919
  tail call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 %33, i1 false), !dbg !2916
  store i32 %20, i32* @nslots, align 4, !dbg !2920, !tbaa !901
  br label %34, !dbg !2921

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2922
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2872, metadata !DIExpression()), !dbg !2889
  %36 = sext i32 %0 to i64, !dbg !2923
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2924
  %38 = load i64, i64* %37, align 8, !dbg !2924, !tbaa !2840
  call void @llvm.dbg.value(metadata i64 %38, metadata !2877, metadata !DIExpression()), !dbg !2925
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2926
  %40 = load i8*, i8** %39, align 8, !dbg !2926, !tbaa !2827
  call void @llvm.dbg.value(metadata i8* %40, metadata !2879, metadata !DIExpression()), !dbg !2927
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2928
  %42 = load i32, i32* %41, align 4, !dbg !2928, !tbaa !1829
  %43 = or i32 %42, 1, !dbg !2929
  call void @llvm.dbg.value(metadata i32 %43, metadata !2880, metadata !DIExpression()), !dbg !2930
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2931
  %45 = load i32, i32* %44, align 8, !dbg !2931, !tbaa !1770
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2932
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2933
  %48 = load i8*, i8** %47, align 8, !dbg !2933, !tbaa !1855
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2934
  %50 = load i8*, i8** %49, align 8, !dbg !2934, !tbaa !1858
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2935
  call void @llvm.dbg.value(metadata i64 %51, metadata !2881, metadata !DIExpression()), !dbg !2936
  %52 = icmp ugt i64 %38, %51, !dbg !2937
  br i1 %52, label %63, label %53, !dbg !2939

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2940
  call void @llvm.dbg.value(metadata i64 %54, metadata !2877, metadata !DIExpression()), !dbg !2925
  store i64 %54, i64* %37, align 8, !dbg !2942, !tbaa !2840
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2943
  br i1 %55, label %57, label %56, !dbg !2945

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #11, !dbg !2946
  br label %57, !dbg !2946

; <label>:57:                                     ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !2766, metadata !DIExpression()) #11, !dbg !2947
  %58 = tail call noalias i8* @xmalloc(i64 %54) #11, !dbg !2949
  call void @llvm.dbg.value(metadata i8* %58, metadata !2879, metadata !DIExpression()), !dbg !2927
  store i8* %58, i8** %39, align 8, !dbg !2950, !tbaa !2827
  %59 = load i32, i32* %44, align 8, !dbg !2951, !tbaa !1770
  %60 = load i8*, i8** %47, align 8, !dbg !2952, !tbaa !1855
  %61 = load i8*, i8** %49, align 8, !dbg !2953, !tbaa !1858
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2954
  br label %63, !dbg !2955

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2956
  call void @llvm.dbg.value(metadata i8* %64, metadata !2879, metadata !DIExpression()), !dbg !2927
  store i32 %6, i32* %5, align 4, !dbg !2957, !tbaa !901
  ret i8* %64, !dbg !2958
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2959 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2963, metadata !DIExpression()), !dbg !2966
  call void @llvm.dbg.value(metadata i8* %1, metadata !2964, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata i64 %2, metadata !2965, metadata !DIExpression()), !dbg !2968
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2969
  ret i8* %4, !dbg !2970
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8*) local_unnamed_addr #7 !dbg !2971 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2975, metadata !DIExpression()), !dbg !2976
  call void @llvm.dbg.value(metadata i32 0, metadata !2857, metadata !DIExpression()) #11, !dbg !2977
  call void @llvm.dbg.value(metadata i8* %0, metadata !2858, metadata !DIExpression()) #11, !dbg !2979
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !2980
  ret i8* %2, !dbg !2981
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8*, i64) local_unnamed_addr #7 !dbg !2982 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2986, metadata !DIExpression()), !dbg !2988
  call void @llvm.dbg.value(metadata i64 %1, metadata !2987, metadata !DIExpression()), !dbg !2989
  call void @llvm.dbg.value(metadata i32 0, metadata !2963, metadata !DIExpression()) #11, !dbg !2990
  call void @llvm.dbg.value(metadata i8* %0, metadata !2964, metadata !DIExpression()) #11, !dbg !2992
  call void @llvm.dbg.value(metadata i64 %1, metadata !2965, metadata !DIExpression()) #11, !dbg !2993
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !2994
  ret i8* %3, !dbg !2995
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #7 !dbg !2996 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3000, metadata !DIExpression()), !dbg !3004
  call void @llvm.dbg.value(metadata i32 %1, metadata !3001, metadata !DIExpression()), !dbg !3005
  call void @llvm.dbg.value(metadata i8* %2, metadata !3002, metadata !DIExpression()), !dbg !3006
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3007
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3007
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3003, metadata !DIExpression(DW_OP_deref)), !dbg !3008
  call void @llvm.dbg.value(metadata i32 %1, metadata !3009, metadata !DIExpression()) #11, !dbg !3015
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #11, !dbg !3017, !alias.scope !3018
  %6 = icmp eq i32 %1, 10, !dbg !3021
  br i1 %6, label %7, label %8, !dbg !3023

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !3024, !noalias !3018
  unreachable, !dbg !3024

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3025
  store i32 %1, i32* %9, align 8, !dbg !3026, !tbaa !1770, !alias.scope !3018
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3003, metadata !DIExpression(DW_OP_deref)), !dbg !3008
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3014, metadata !DIExpression(DW_OP_deref)), !dbg !3017
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3027
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3028
  ret i8* %10, !dbg !3029
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #7 !dbg !3030 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3034, metadata !DIExpression()), !dbg !3039
  call void @llvm.dbg.value(metadata i32 %1, metadata !3035, metadata !DIExpression()), !dbg !3040
  call void @llvm.dbg.value(metadata i8* %2, metadata !3036, metadata !DIExpression()), !dbg !3041
  call void @llvm.dbg.value(metadata i64 %3, metadata !3037, metadata !DIExpression()), !dbg !3042
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3043
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3043
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3038, metadata !DIExpression(DW_OP_deref)), !dbg !3044
  call void @llvm.dbg.value(metadata i32 %1, metadata !3009, metadata !DIExpression()) #11, !dbg !3045
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %6, i8 0, i64 56, i1 false) #11, !dbg !3047, !alias.scope !3048
  %7 = icmp eq i32 %1, 10, !dbg !3051
  br i1 %7, label %8, label %9, !dbg !3052

; <label>:8:                                      ; preds = %4
  tail call void @abort() #15, !dbg !3053, !noalias !3048
  unreachable, !dbg !3053

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3054
  store i32 %1, i32* %10, align 8, !dbg !3055, !tbaa !1770, !alias.scope !3048
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3038, metadata !DIExpression(DW_OP_deref)), !dbg !3044
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3014, metadata !DIExpression(DW_OP_deref)), !dbg !3047
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !3056
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3057
  ret i8* %11, !dbg !3058
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32, i8*) local_unnamed_addr #7 !dbg !3059 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3063, metadata !DIExpression()), !dbg !3065
  call void @llvm.dbg.value(metadata i8* %1, metadata !3064, metadata !DIExpression()), !dbg !3066
  call void @llvm.dbg.value(metadata i32 0, metadata !3000, metadata !DIExpression()) #11, !dbg !3067
  call void @llvm.dbg.value(metadata i32 %0, metadata !3001, metadata !DIExpression()) #11, !dbg !3069
  call void @llvm.dbg.value(metadata i8* %1, metadata !3002, metadata !DIExpression()) #11, !dbg !3070
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3071
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #11, !dbg !3071
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3003, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3072
  call void @llvm.dbg.value(metadata i32 %0, metadata !3009, metadata !DIExpression()) #11, !dbg !3073
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %4, i8 0, i64 56, i1 false) #11, !dbg !3075, !alias.scope !3076
  %5 = icmp eq i32 %0, 10, !dbg !3079
  br i1 %5, label %6, label %7, !dbg !3080

; <label>:6:                                      ; preds = %2
  tail call void @abort() #15, !dbg !3081, !noalias !3076
  unreachable, !dbg !3081

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3082
  store i32 %0, i32* %8, align 8, !dbg !3083, !tbaa !1770, !alias.scope !3076
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3003, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3072
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3014, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3075
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #11, !dbg !3084
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #11, !dbg !3085
  ret i8* %9, !dbg !3086
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !3087 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3091, metadata !DIExpression()), !dbg !3094
  call void @llvm.dbg.value(metadata i8* %1, metadata !3092, metadata !DIExpression()), !dbg !3095
  call void @llvm.dbg.value(metadata i64 %2, metadata !3093, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata i32 0, metadata !3034, metadata !DIExpression()) #11, !dbg !3097
  call void @llvm.dbg.value(metadata i32 %0, metadata !3035, metadata !DIExpression()) #11, !dbg !3099
  call void @llvm.dbg.value(metadata i8* %1, metadata !3036, metadata !DIExpression()) #11, !dbg !3100
  call void @llvm.dbg.value(metadata i64 %2, metadata !3037, metadata !DIExpression()) #11, !dbg !3101
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3102
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3102
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3038, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3103
  call void @llvm.dbg.value(metadata i32 %0, metadata !3009, metadata !DIExpression()) #11, !dbg !3104
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #11, !dbg !3106, !alias.scope !3107
  %6 = icmp eq i32 %0, 10, !dbg !3110
  br i1 %6, label %7, label %8, !dbg !3111

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !3112, !noalias !3107
  unreachable, !dbg !3112

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3113
  store i32 %0, i32* %9, align 8, !dbg !3114, !tbaa !1770, !alias.scope !3107
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3038, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3103
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3014, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3106
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #11, !dbg !3115
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3116
  ret i8* %10, !dbg !3117
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #7 !dbg !3118 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3122, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.value(metadata i64 %1, metadata !3123, metadata !DIExpression()), !dbg !3127
  call void @llvm.dbg.value(metadata i8 %2, metadata !3124, metadata !DIExpression()), !dbg !3128
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3129
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3129
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3130, !tbaa.struct !3131
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3125, metadata !DIExpression(DW_OP_deref)), !dbg !3132
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1789, metadata !DIExpression()), !dbg !3133
  call void @llvm.dbg.value(metadata i8 %2, metadata !1790, metadata !DIExpression()), !dbg !3135
  call void @llvm.dbg.value(metadata i32 1, metadata !1791, metadata !DIExpression()), !dbg !3136
  call void @llvm.dbg.value(metadata i8 %2, metadata !1792, metadata !DIExpression()), !dbg !3137
  %6 = lshr i8 %2, 5, !dbg !3138
  %7 = zext i8 %6 to i64, !dbg !3138
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3139
  call void @llvm.dbg.value(metadata i32* %8, metadata !1793, metadata !DIExpression()), !dbg !3140
  %9 = and i8 %2, 31, !dbg !3141
  %10 = zext i8 %9 to i32, !dbg !3141
  call void @llvm.dbg.value(metadata i32 %10, metadata !1795, metadata !DIExpression()), !dbg !3142
  %11 = load i32, i32* %8, align 4, !dbg !3143, !tbaa !901
  %12 = lshr i32 %11, %10, !dbg !3144
  %13 = and i32 %12, 1, !dbg !3145
  call void @llvm.dbg.value(metadata i32 %13, metadata !1796, metadata !DIExpression()), !dbg !3146
  %14 = xor i32 %13, 1, !dbg !3147
  %15 = shl i32 %14, %10, !dbg !3148
  %16 = xor i32 %15, %11, !dbg !3149
  store i32 %16, i32* %8, align 4, !dbg !3149, !tbaa !901
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3125, metadata !DIExpression(DW_OP_deref)), !dbg !3132
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3150
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3151
  ret i8* %17, !dbg !3152
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #7 !dbg !3153 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3157, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i8 %1, metadata !3158, metadata !DIExpression()), !dbg !3160
  call void @llvm.dbg.value(metadata i8* %0, metadata !3122, metadata !DIExpression()) #11, !dbg !3161
  call void @llvm.dbg.value(metadata i64 -1, metadata !3123, metadata !DIExpression()) #11, !dbg !3163
  call void @llvm.dbg.value(metadata i8 %1, metadata !3124, metadata !DIExpression()) #11, !dbg !3164
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3165
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #11, !dbg !3165
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !3166, !tbaa.struct !3131
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3125, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3167
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1789, metadata !DIExpression()) #11, !dbg !3168
  call void @llvm.dbg.value(metadata i8 %1, metadata !1790, metadata !DIExpression()) #11, !dbg !3170
  call void @llvm.dbg.value(metadata i32 1, metadata !1791, metadata !DIExpression()) #11, !dbg !3171
  call void @llvm.dbg.value(metadata i8 %1, metadata !1792, metadata !DIExpression()) #11, !dbg !3172
  %5 = lshr i8 %1, 5, !dbg !3173
  %6 = zext i8 %5 to i64, !dbg !3173
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3174
  call void @llvm.dbg.value(metadata i32* %7, metadata !1793, metadata !DIExpression()) #11, !dbg !3175
  %8 = and i8 %1, 31, !dbg !3176
  %9 = zext i8 %8 to i32, !dbg !3176
  call void @llvm.dbg.value(metadata i32 %9, metadata !1795, metadata !DIExpression()) #11, !dbg !3177
  %10 = load i32, i32* %7, align 4, !dbg !3178, !tbaa !901
  %11 = lshr i32 %10, %9, !dbg !3179
  %12 = and i32 %11, 1, !dbg !3180
  call void @llvm.dbg.value(metadata i32 %12, metadata !1796, metadata !DIExpression()) #11, !dbg !3181
  %13 = xor i32 %12, 1, !dbg !3182
  %14 = shl i32 %13, %9, !dbg !3183
  %15 = xor i32 %14, %10, !dbg !3184
  store i32 %15, i32* %7, align 4, !dbg !3184, !tbaa !901
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3125, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3167
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #11, !dbg !3185
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #11, !dbg !3186
  ret i8* %16, !dbg !3187
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8*) local_unnamed_addr #7 !dbg !3188 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3190, metadata !DIExpression()), !dbg !3191
  call void @llvm.dbg.value(metadata i8* %0, metadata !3157, metadata !DIExpression()) #11, !dbg !3192
  call void @llvm.dbg.value(metadata i8 58, metadata !3158, metadata !DIExpression()) #11, !dbg !3194
  call void @llvm.dbg.value(metadata i8* %0, metadata !3122, metadata !DIExpression()) #11, !dbg !3195
  call void @llvm.dbg.value(metadata i64 -1, metadata !3123, metadata !DIExpression()) #11, !dbg !3197
  call void @llvm.dbg.value(metadata i8 58, metadata !3124, metadata !DIExpression()) #11, !dbg !3198
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3199
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #11, !dbg !3199
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !3200, !tbaa.struct !3131
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3125, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3201
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1789, metadata !DIExpression()) #11, !dbg !3202
  call void @llvm.dbg.value(metadata i8 58, metadata !1790, metadata !DIExpression()) #11, !dbg !3204
  call void @llvm.dbg.value(metadata i32 1, metadata !1791, metadata !DIExpression()) #11, !dbg !3205
  call void @llvm.dbg.value(metadata i8 58, metadata !1792, metadata !DIExpression()) #11, !dbg !3206
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3207
  call void @llvm.dbg.value(metadata i32* %4, metadata !1793, metadata !DIExpression()) #11, !dbg !3208
  call void @llvm.dbg.value(metadata i32 26, metadata !1795, metadata !DIExpression()) #11, !dbg !3209
  %5 = load i32, i32* %4, align 4, !dbg !3210, !tbaa !901
  %6 = or i32 %5, 67108864, !dbg !3211
  store i32 %6, i32* %4, align 4, !dbg !3211, !tbaa !901
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3125, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3201
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #11, !dbg !3212
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #11, !dbg !3213
  ret i8* %7, !dbg !3214
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #7 !dbg !3215 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3217, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i64 %1, metadata !3218, metadata !DIExpression()), !dbg !3220
  call void @llvm.dbg.value(metadata i8* %0, metadata !3122, metadata !DIExpression()) #11, !dbg !3221
  call void @llvm.dbg.value(metadata i64 %1, metadata !3123, metadata !DIExpression()) #11, !dbg !3223
  call void @llvm.dbg.value(metadata i8 58, metadata !3124, metadata !DIExpression()) #11, !dbg !3224
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3225
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #11, !dbg !3225
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !3226, !tbaa.struct !3131
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3125, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3227
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1789, metadata !DIExpression()) #11, !dbg !3228
  call void @llvm.dbg.value(metadata i8 58, metadata !1790, metadata !DIExpression()) #11, !dbg !3230
  call void @llvm.dbg.value(metadata i32 1, metadata !1791, metadata !DIExpression()) #11, !dbg !3231
  call void @llvm.dbg.value(metadata i8 58, metadata !1792, metadata !DIExpression()) #11, !dbg !3232
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3233
  call void @llvm.dbg.value(metadata i32* %5, metadata !1793, metadata !DIExpression()) #11, !dbg !3234
  call void @llvm.dbg.value(metadata i32 26, metadata !1795, metadata !DIExpression()) #11, !dbg !3235
  %6 = load i32, i32* %5, align 4, !dbg !3236, !tbaa !901
  %7 = or i32 %6, 67108864, !dbg !3237
  store i32 %7, i32* %5, align 4, !dbg !3237, !tbaa !901
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3125, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3227
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #11, !dbg !3238
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #11, !dbg !3239
  ret i8* %8, !dbg !3240
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #7 !dbg !3241 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !3014, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3247
  call void @llvm.dbg.value(metadata i32 %0, metadata !3243, metadata !DIExpression()), !dbg !3249
  call void @llvm.dbg.value(metadata i32 %1, metadata !3244, metadata !DIExpression()), !dbg !3250
  call void @llvm.dbg.value(metadata i8* %2, metadata !3245, metadata !DIExpression()), !dbg !3251
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3252
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3252
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3253
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3253
  call void @llvm.dbg.value(metadata i32 %1, metadata !3009, metadata !DIExpression()) #11, !dbg !3254
  call void @llvm.dbg.value(metadata i32 0, metadata !3014, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3247
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 %7, i8 0, i64 52, i1 false), !dbg !3247, !alias.scope !3255
  %8 = icmp eq i32 %1, 10, !dbg !3258
  br i1 %8, label %9, label %10, !dbg !3259

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !3260, !noalias !3255
  unreachable, !dbg !3260

; <label>:10:                                     ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3014, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3247
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3253
  store i32 %1, i32* %11, align 8, !dbg !3253
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3253
  %13 = bitcast i32* %12 to i8*, !dbg !3253
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %13, i8* nonnull align 4 %7, i64 52, i1 false), !dbg !3253
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3253
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3246, metadata !DIExpression(DW_OP_deref)), !dbg !3261
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1789, metadata !DIExpression()), !dbg !3262
  call void @llvm.dbg.value(metadata i8 58, metadata !1790, metadata !DIExpression()), !dbg !3264
  call void @llvm.dbg.value(metadata i32 1, metadata !1791, metadata !DIExpression()), !dbg !3265
  call void @llvm.dbg.value(metadata i8 58, metadata !1792, metadata !DIExpression()), !dbg !3266
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3267
  call void @llvm.dbg.value(metadata i32* %14, metadata !1793, metadata !DIExpression()), !dbg !3268
  call void @llvm.dbg.value(metadata i32 26, metadata !1795, metadata !DIExpression()), !dbg !3269
  %15 = load i32, i32* %14, align 4, !dbg !3270, !tbaa !901
  %16 = or i32 %15, 67108864, !dbg !3271
  store i32 %16, i32* %14, align 4, !dbg !3271, !tbaa !901
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3246, metadata !DIExpression(DW_OP_deref)), !dbg !3261
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3272
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3273
  ret i8* %17, !dbg !3274
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #7 !dbg !3275 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3279, metadata !DIExpression()), !dbg !3283
  call void @llvm.dbg.value(metadata i8* %1, metadata !3280, metadata !DIExpression()), !dbg !3284
  call void @llvm.dbg.value(metadata i8* %2, metadata !3281, metadata !DIExpression()), !dbg !3285
  call void @llvm.dbg.value(metadata i8* %3, metadata !3282, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata i32 %0, metadata !3287, metadata !DIExpression()) #11, !dbg !3297
  call void @llvm.dbg.value(metadata i8* %1, metadata !3292, metadata !DIExpression()) #11, !dbg !3299
  call void @llvm.dbg.value(metadata i8* %2, metadata !3293, metadata !DIExpression()) #11, !dbg !3300
  call void @llvm.dbg.value(metadata i8* %3, metadata !3294, metadata !DIExpression()) #11, !dbg !3301
  call void @llvm.dbg.value(metadata i64 -1, metadata !3295, metadata !DIExpression()) #11, !dbg !3302
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3303
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3303
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !3304, !tbaa.struct !3131
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3296, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3305
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1837, metadata !DIExpression()) #11, !dbg !3306
  call void @llvm.dbg.value(metadata i8* %1, metadata !1838, metadata !DIExpression()) #11, !dbg !3308
  call void @llvm.dbg.value(metadata i8* %2, metadata !1839, metadata !DIExpression()) #11, !dbg !3309
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1837, metadata !DIExpression()) #11, !dbg !3306
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3310
  store i32 10, i32* %7, align 8, !dbg !3311, !tbaa !1770
  %8 = icmp ne i8* %1, null, !dbg !3312
  %9 = icmp ne i8* %2, null, !dbg !3313
  %10 = and i1 %8, %9, !dbg !3314
  br i1 %10, label %12, label %11, !dbg !3314

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3315
  unreachable, !dbg !3315

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3316
  store i8* %1, i8** %13, align 8, !dbg !3317, !tbaa !1855
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3318
  store i8* %2, i8** %14, align 8, !dbg !3319, !tbaa !1858
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3296, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3305
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #11, !dbg !3320
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3321
  ret i8* %15, !dbg !3322
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !3288 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3287, metadata !DIExpression()), !dbg !3323
  call void @llvm.dbg.value(metadata i8* %1, metadata !3292, metadata !DIExpression()), !dbg !3324
  call void @llvm.dbg.value(metadata i8* %2, metadata !3293, metadata !DIExpression()), !dbg !3325
  call void @llvm.dbg.value(metadata i8* %3, metadata !3294, metadata !DIExpression()), !dbg !3326
  call void @llvm.dbg.value(metadata i64 %4, metadata !3295, metadata !DIExpression()), !dbg !3327
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3328
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #11, !dbg !3328
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %7, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3329, !tbaa.struct !3131
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3296, metadata !DIExpression(DW_OP_deref)), !dbg !3330
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1837, metadata !DIExpression()) #11, !dbg !3331
  call void @llvm.dbg.value(metadata i8* %1, metadata !1838, metadata !DIExpression()) #11, !dbg !3333
  call void @llvm.dbg.value(metadata i8* %2, metadata !1839, metadata !DIExpression()) #11, !dbg !3334
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1837, metadata !DIExpression()) #11, !dbg !3331
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3335
  store i32 10, i32* %8, align 8, !dbg !3336, !tbaa !1770
  %9 = icmp ne i8* %1, null, !dbg !3337
  %10 = icmp ne i8* %2, null, !dbg !3338
  %11 = and i1 %9, %10, !dbg !3339
  br i1 %11, label %13, label %12, !dbg !3339

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !3340
  unreachable, !dbg !3340

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3341
  store i8* %1, i8** %14, align 8, !dbg !3342, !tbaa !1855
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3343
  store i8* %2, i8** %15, align 8, !dbg !3344, !tbaa !1858
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3296, metadata !DIExpression(DW_OP_deref)), !dbg !3330
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3345
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #11, !dbg !3346
  ret i8* %16, !dbg !3347
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #7 !dbg !3348 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3352, metadata !DIExpression()), !dbg !3355
  call void @llvm.dbg.value(metadata i8* %1, metadata !3353, metadata !DIExpression()), !dbg !3356
  call void @llvm.dbg.value(metadata i8* %2, metadata !3354, metadata !DIExpression()), !dbg !3357
  call void @llvm.dbg.value(metadata i32 0, metadata !3279, metadata !DIExpression()) #11, !dbg !3358
  call void @llvm.dbg.value(metadata i8* %0, metadata !3280, metadata !DIExpression()) #11, !dbg !3360
  call void @llvm.dbg.value(metadata i8* %1, metadata !3281, metadata !DIExpression()) #11, !dbg !3361
  call void @llvm.dbg.value(metadata i8* %2, metadata !3282, metadata !DIExpression()) #11, !dbg !3362
  call void @llvm.dbg.value(metadata i32 0, metadata !3287, metadata !DIExpression()) #11, !dbg !3363
  call void @llvm.dbg.value(metadata i8* %0, metadata !3292, metadata !DIExpression()) #11, !dbg !3365
  call void @llvm.dbg.value(metadata i8* %1, metadata !3293, metadata !DIExpression()) #11, !dbg !3366
  call void @llvm.dbg.value(metadata i8* %2, metadata !3294, metadata !DIExpression()) #11, !dbg !3367
  call void @llvm.dbg.value(metadata i64 -1, metadata !3295, metadata !DIExpression()) #11, !dbg !3368
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3369
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3369
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !3370, !tbaa.struct !3131
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3296, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3371
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1837, metadata !DIExpression()) #11, !dbg !3372
  call void @llvm.dbg.value(metadata i8* %0, metadata !1838, metadata !DIExpression()) #11, !dbg !3374
  call void @llvm.dbg.value(metadata i8* %1, metadata !1839, metadata !DIExpression()) #11, !dbg !3375
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1837, metadata !DIExpression()) #11, !dbg !3372
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3376
  store i32 10, i32* %6, align 8, !dbg !3377, !tbaa !1770
  %7 = icmp ne i8* %0, null, !dbg !3378
  %8 = icmp ne i8* %1, null, !dbg !3379
  %9 = and i1 %7, %8, !dbg !3380
  br i1 %9, label %11, label %10, !dbg !3380

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !3381
  unreachable, !dbg !3381

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3382
  store i8* %0, i8** %12, align 8, !dbg !3383, !tbaa !1855
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3384
  store i8* %1, i8** %13, align 8, !dbg !3385, !tbaa !1858
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3296, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3371
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #11, !dbg !3386
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !3387
  ret i8* %14, !dbg !3388
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !3389 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3393, metadata !DIExpression()), !dbg !3397
  call void @llvm.dbg.value(metadata i8* %1, metadata !3394, metadata !DIExpression()), !dbg !3398
  call void @llvm.dbg.value(metadata i8* %2, metadata !3395, metadata !DIExpression()), !dbg !3399
  call void @llvm.dbg.value(metadata i64 %3, metadata !3396, metadata !DIExpression()), !dbg !3400
  call void @llvm.dbg.value(metadata i32 0, metadata !3287, metadata !DIExpression()) #11, !dbg !3401
  call void @llvm.dbg.value(metadata i8* %0, metadata !3292, metadata !DIExpression()) #11, !dbg !3403
  call void @llvm.dbg.value(metadata i8* %1, metadata !3293, metadata !DIExpression()) #11, !dbg !3404
  call void @llvm.dbg.value(metadata i8* %2, metadata !3294, metadata !DIExpression()) #11, !dbg !3405
  call void @llvm.dbg.value(metadata i64 %3, metadata !3295, metadata !DIExpression()) #11, !dbg !3406
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3407
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3407
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !3408, !tbaa.struct !3131
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3296, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3409
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1837, metadata !DIExpression()) #11, !dbg !3410
  call void @llvm.dbg.value(metadata i8* %0, metadata !1838, metadata !DIExpression()) #11, !dbg !3412
  call void @llvm.dbg.value(metadata i8* %1, metadata !1839, metadata !DIExpression()) #11, !dbg !3413
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1837, metadata !DIExpression()) #11, !dbg !3410
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3414
  store i32 10, i32* %7, align 8, !dbg !3415, !tbaa !1770
  %8 = icmp ne i8* %0, null, !dbg !3416
  %9 = icmp ne i8* %1, null, !dbg !3417
  %10 = and i1 %8, %9, !dbg !3418
  br i1 %10, label %12, label %11, !dbg !3418

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3419
  unreachable, !dbg !3419

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3420
  store i8* %0, i8** %13, align 8, !dbg !3421, !tbaa !1855
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3422
  store i8* %1, i8** %14, align 8, !dbg !3423, !tbaa !1858
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3296, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3409
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #11, !dbg !3424
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !3425
  ret i8* %15, !dbg !3426
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !3427 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3431, metadata !DIExpression()), !dbg !3434
  call void @llvm.dbg.value(metadata i8* %1, metadata !3432, metadata !DIExpression()), !dbg !3435
  call void @llvm.dbg.value(metadata i64 %2, metadata !3433, metadata !DIExpression()), !dbg !3436
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3437
  ret i8* %4, !dbg !3438
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8*, i64) local_unnamed_addr #7 !dbg !3439 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3443, metadata !DIExpression()), !dbg !3445
  call void @llvm.dbg.value(metadata i64 %1, metadata !3444, metadata !DIExpression()), !dbg !3446
  call void @llvm.dbg.value(metadata i32 0, metadata !3431, metadata !DIExpression()) #11, !dbg !3447
  call void @llvm.dbg.value(metadata i8* %0, metadata !3432, metadata !DIExpression()) #11, !dbg !3449
  call void @llvm.dbg.value(metadata i64 %1, metadata !3433, metadata !DIExpression()) #11, !dbg !3450
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !3451
  ret i8* %3, !dbg !3452
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32, i8*) local_unnamed_addr #7 !dbg !3453 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3457, metadata !DIExpression()), !dbg !3459
  call void @llvm.dbg.value(metadata i8* %1, metadata !3458, metadata !DIExpression()), !dbg !3460
  call void @llvm.dbg.value(metadata i32 %0, metadata !3431, metadata !DIExpression()) #11, !dbg !3461
  call void @llvm.dbg.value(metadata i8* %1, metadata !3432, metadata !DIExpression()) #11, !dbg !3463
  call void @llvm.dbg.value(metadata i64 -1, metadata !3433, metadata !DIExpression()) #11, !dbg !3464
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !3465
  ret i8* %3, !dbg !3466
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8*) local_unnamed_addr #7 !dbg !3467 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3471, metadata !DIExpression()), !dbg !3472
  call void @llvm.dbg.value(metadata i32 0, metadata !3457, metadata !DIExpression()) #11, !dbg !3473
  call void @llvm.dbg.value(metadata i8* %0, metadata !3458, metadata !DIExpression()) #11, !dbg !3475
  call void @llvm.dbg.value(metadata i32 0, metadata !3431, metadata !DIExpression()) #11, !dbg !3476
  call void @llvm.dbg.value(metadata i8* %0, metadata !3432, metadata !DIExpression()) #11, !dbg !3478
  call void @llvm.dbg.value(metadata i64 -1, metadata !3433, metadata !DIExpression()) #11, !dbg !3479
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !3480
  ret i8* %2, !dbg !3481
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #7 !dbg !3482 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3521, metadata !DIExpression()), !dbg !3527
  call void @llvm.dbg.value(metadata i8* %1, metadata !3522, metadata !DIExpression()), !dbg !3528
  call void @llvm.dbg.value(metadata i8* %2, metadata !3523, metadata !DIExpression()), !dbg !3529
  call void @llvm.dbg.value(metadata i8* %3, metadata !3524, metadata !DIExpression()), !dbg !3530
  call void @llvm.dbg.value(metadata i8** %4, metadata !3525, metadata !DIExpression()), !dbg !3531
  call void @llvm.dbg.value(metadata i64 %5, metadata !3526, metadata !DIExpression()), !dbg !3532
  %7 = icmp eq i8* %1, null, !dbg !3533
  br i1 %7, label %10, label %8, !dbg !3535

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.112, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #11, !dbg !3536
  br label %12, !dbg !3536

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.113, i64 0, i64 0), i8* %2, i8* %3) #11, !dbg !3537
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.114, i64 0, i64 0), i32 5) #11, !dbg !3538
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2018) #11, !dbg !3538
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([204 x i8], [204 x i8]* @.str.3.115, i64 0, i64 0), i32 5) #11, !dbg !3539
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0), !dbg !3539
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
  ], !dbg !3540

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !3541
  unreachable, !dbg !3541

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.116, i64 0, i64 0), i32 5) #11, !dbg !3543
  %20 = load i8*, i8** %4, align 8, !dbg !3543, !tbaa !767
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #11, !dbg !3543
  br label %146, !dbg !3544

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.117, i64 0, i64 0), i32 5) #11, !dbg !3545
  %24 = load i8*, i8** %4, align 8, !dbg !3545, !tbaa !767
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3545
  %26 = load i8*, i8** %25, align 8, !dbg !3545, !tbaa !767
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #11, !dbg !3545
  br label %146, !dbg !3546

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.118, i64 0, i64 0), i32 5) #11, !dbg !3547
  %30 = load i8*, i8** %4, align 8, !dbg !3547, !tbaa !767
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3547
  %32 = load i8*, i8** %31, align 8, !dbg !3547, !tbaa !767
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3547
  %34 = load i8*, i8** %33, align 8, !dbg !3547, !tbaa !767
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #11, !dbg !3547
  br label %146, !dbg !3548

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.119, i64 0, i64 0), i32 5) #11, !dbg !3549
  %38 = load i8*, i8** %4, align 8, !dbg !3549, !tbaa !767
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3549
  %40 = load i8*, i8** %39, align 8, !dbg !3549, !tbaa !767
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3549
  %42 = load i8*, i8** %41, align 8, !dbg !3549, !tbaa !767
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3549
  %44 = load i8*, i8** %43, align 8, !dbg !3549, !tbaa !767
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #11, !dbg !3549
  br label %146, !dbg !3550

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.120, i64 0, i64 0), i32 5) #11, !dbg !3551
  %48 = load i8*, i8** %4, align 8, !dbg !3551, !tbaa !767
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3551
  %50 = load i8*, i8** %49, align 8, !dbg !3551, !tbaa !767
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3551
  %52 = load i8*, i8** %51, align 8, !dbg !3551, !tbaa !767
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3551
  %54 = load i8*, i8** %53, align 8, !dbg !3551, !tbaa !767
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3551
  %56 = load i8*, i8** %55, align 8, !dbg !3551, !tbaa !767
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #11, !dbg !3551
  br label %146, !dbg !3552

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.121, i64 0, i64 0), i32 5) #11, !dbg !3553
  %60 = load i8*, i8** %4, align 8, !dbg !3553, !tbaa !767
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3553
  %62 = load i8*, i8** %61, align 8, !dbg !3553, !tbaa !767
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3553
  %64 = load i8*, i8** %63, align 8, !dbg !3553, !tbaa !767
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3553
  %66 = load i8*, i8** %65, align 8, !dbg !3553, !tbaa !767
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3553
  %68 = load i8*, i8** %67, align 8, !dbg !3553, !tbaa !767
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3553
  %70 = load i8*, i8** %69, align 8, !dbg !3553, !tbaa !767
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #11, !dbg !3553
  br label %146, !dbg !3554

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.122, i64 0, i64 0), i32 5) #11, !dbg !3555
  %74 = load i8*, i8** %4, align 8, !dbg !3555, !tbaa !767
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3555
  %76 = load i8*, i8** %75, align 8, !dbg !3555, !tbaa !767
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3555
  %78 = load i8*, i8** %77, align 8, !dbg !3555, !tbaa !767
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3555
  %80 = load i8*, i8** %79, align 8, !dbg !3555, !tbaa !767
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3555
  %82 = load i8*, i8** %81, align 8, !dbg !3555, !tbaa !767
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3555
  %84 = load i8*, i8** %83, align 8, !dbg !3555, !tbaa !767
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3555
  %86 = load i8*, i8** %85, align 8, !dbg !3555, !tbaa !767
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #11, !dbg !3555
  br label %146, !dbg !3556

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.123, i64 0, i64 0), i32 5) #11, !dbg !3557
  %90 = load i8*, i8** %4, align 8, !dbg !3557, !tbaa !767
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3557
  %92 = load i8*, i8** %91, align 8, !dbg !3557, !tbaa !767
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3557
  %94 = load i8*, i8** %93, align 8, !dbg !3557, !tbaa !767
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3557
  %96 = load i8*, i8** %95, align 8, !dbg !3557, !tbaa !767
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3557
  %98 = load i8*, i8** %97, align 8, !dbg !3557, !tbaa !767
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3557
  %100 = load i8*, i8** %99, align 8, !dbg !3557, !tbaa !767
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3557
  %102 = load i8*, i8** %101, align 8, !dbg !3557, !tbaa !767
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3557
  %104 = load i8*, i8** %103, align 8, !dbg !3557, !tbaa !767
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #11, !dbg !3557
  br label %146, !dbg !3558

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.124, i64 0, i64 0), i32 5) #11, !dbg !3559
  %108 = load i8*, i8** %4, align 8, !dbg !3559, !tbaa !767
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3559
  %110 = load i8*, i8** %109, align 8, !dbg !3559, !tbaa !767
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3559
  %112 = load i8*, i8** %111, align 8, !dbg !3559, !tbaa !767
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3559
  %114 = load i8*, i8** %113, align 8, !dbg !3559, !tbaa !767
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3559
  %116 = load i8*, i8** %115, align 8, !dbg !3559, !tbaa !767
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3559
  %118 = load i8*, i8** %117, align 8, !dbg !3559, !tbaa !767
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3559
  %120 = load i8*, i8** %119, align 8, !dbg !3559, !tbaa !767
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3559
  %122 = load i8*, i8** %121, align 8, !dbg !3559, !tbaa !767
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3559
  %124 = load i8*, i8** %123, align 8, !dbg !3559, !tbaa !767
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #11, !dbg !3559
  br label %146, !dbg !3560

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.125, i64 0, i64 0), i32 5) #11, !dbg !3561
  %128 = load i8*, i8** %4, align 8, !dbg !3561, !tbaa !767
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3561
  %130 = load i8*, i8** %129, align 8, !dbg !3561, !tbaa !767
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3561
  %132 = load i8*, i8** %131, align 8, !dbg !3561, !tbaa !767
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3561
  %134 = load i8*, i8** %133, align 8, !dbg !3561, !tbaa !767
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3561
  %136 = load i8*, i8** %135, align 8, !dbg !3561, !tbaa !767
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3561
  %138 = load i8*, i8** %137, align 8, !dbg !3561, !tbaa !767
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3561
  %140 = load i8*, i8** %139, align 8, !dbg !3561, !tbaa !767
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3561
  %142 = load i8*, i8** %141, align 8, !dbg !3561, !tbaa !767
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3561
  %144 = load i8*, i8** %143, align 8, !dbg !3561, !tbaa !767
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #11, !dbg !3561
  br label %146, !dbg !3562

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3563
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #7 !dbg !3564 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3568, metadata !DIExpression()), !dbg !3574
  call void @llvm.dbg.value(metadata i8* %1, metadata !3569, metadata !DIExpression()), !dbg !3575
  call void @llvm.dbg.value(metadata i8* %2, metadata !3570, metadata !DIExpression()), !dbg !3576
  call void @llvm.dbg.value(metadata i8* %3, metadata !3571, metadata !DIExpression()), !dbg !3577
  call void @llvm.dbg.value(metadata i8** %4, metadata !3572, metadata !DIExpression()), !dbg !3578
  call void @llvm.dbg.value(metadata i64 0, metadata !3573, metadata !DIExpression()), !dbg !3579
  br label %6, !dbg !3580

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3582
  call void @llvm.dbg.value(metadata i64 %7, metadata !3573, metadata !DIExpression()), !dbg !3579
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3584
  %9 = load i8*, i8** %8, align 8, !dbg !3584, !tbaa !767
  %10 = icmp eq i8* %9, null, !dbg !3585
  %11 = add i64 %7, 1, !dbg !3586
  call void @llvm.dbg.value(metadata i64 %11, metadata !3573, metadata !DIExpression()), !dbg !3579
  br i1 %10, label %12, label %6, !dbg !3585, !llvm.loop !3587

; <label>:12:                                     ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !3573, metadata !DIExpression()), !dbg !3579
  call void @llvm.dbg.value(metadata i64 %7, metadata !3573, metadata !DIExpression()), !dbg !3579
  call void @llvm.dbg.value(metadata i64 %7, metadata !3573, metadata !DIExpression()), !dbg !3579
  call void @llvm.dbg.value(metadata i64 %7, metadata !3573, metadata !DIExpression()), !dbg !3579
  call void @llvm.dbg.value(metadata i64 %7, metadata !3573, metadata !DIExpression()), !dbg !3579
  call void @llvm.dbg.value(metadata i64 %7, metadata !3573, metadata !DIExpression()), !dbg !3579
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3589
  ret void, !dbg !3590
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #7 !dbg !3591 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3602, metadata !DIExpression()), !dbg !3610
  call void @llvm.dbg.value(metadata i8* %1, metadata !3603, metadata !DIExpression()), !dbg !3611
  call void @llvm.dbg.value(metadata i8* %2, metadata !3604, metadata !DIExpression()), !dbg !3612
  call void @llvm.dbg.value(metadata i8* %3, metadata !3605, metadata !DIExpression()), !dbg !3613
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3606, metadata !DIExpression()), !dbg !3614
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3615
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #11, !dbg !3615
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3608, metadata !DIExpression()), !dbg !3616
  call void @llvm.dbg.value(metadata i64 0, metadata !3607, metadata !DIExpression()), !dbg !3617
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  call void @llvm.dbg.value(metadata i64 0, metadata !3607, metadata !DIExpression()), !dbg !3617
  %11 = load i32, i32* %8, align 8, !dbg !3618
  %12 = icmp ult i32 %11, 41, !dbg !3618
  br i1 %12, label %13, label %18, !dbg !3618

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3618
  %15 = sext i32 %11 to i64, !dbg !3618
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3618
  %17 = add i32 %11, 8, !dbg !3618
  store i32 %17, i32* %8, align 8, !dbg !3618
  br label %21, !dbg !3618

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3618
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3618
  store i8* %20, i8** %10, align 8, !dbg !3618
  br label %21, !dbg !3618

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3618
  %25 = load i8*, i8** %24, align 8, !dbg !3618
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3621
  store i8* %25, i8** %26, align 16, !dbg !3622, !tbaa !767
  %27 = icmp eq i8* %25, null, !dbg !3623
  br i1 %27, label %30, label %28, !dbg !3624

; <label>:28:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !3607, metadata !DIExpression()), !dbg !3617
  call void @llvm.dbg.value(metadata i64 1, metadata !3607, metadata !DIExpression()), !dbg !3617
  %29 = icmp ult i32 %22, 41, !dbg !3618
  br i1 %29, label %35, label %32, !dbg !3618

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !3625
  call void @llvm.dbg.value(metadata i64 %31, metadata !3607, metadata !DIExpression()), !dbg !3617
  call void @llvm.dbg.value(metadata i64 %31, metadata !3607, metadata !DIExpression()), !dbg !3617
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3626
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #11, !dbg !3627
  ret void, !dbg !3627

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3618
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3618
  store i8* %34, i8** %10, align 8, !dbg !3618
  br label %40, !dbg !3618

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3618
  %37 = sext i32 %22 to i64, !dbg !3618
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3618
  %39 = add i32 %22, 8, !dbg !3618
  store i32 %39, i32* %8, align 8, !dbg !3618
  br label %40, !dbg !3618

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3618
  %44 = load i8*, i8** %43, align 8, !dbg !3618
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3621
  store i8* %44, i8** %45, align 8, !dbg !3622, !tbaa !767
  %46 = icmp eq i8* %44, null, !dbg !3623
  br i1 %46, label %30, label %47, !dbg !3624

; <label>:47:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3607, metadata !DIExpression()), !dbg !3617
  call void @llvm.dbg.value(metadata i64 2, metadata !3607, metadata !DIExpression()), !dbg !3617
  %48 = icmp ult i32 %41, 41, !dbg !3618
  br i1 %48, label %52, label %49, !dbg !3618

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3618
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3618
  store i8* %51, i8** %10, align 8, !dbg !3618
  br label %57, !dbg !3618

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3618
  %54 = sext i32 %41 to i64, !dbg !3618
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3618
  %56 = add i32 %41, 8, !dbg !3618
  store i32 %56, i32* %8, align 8, !dbg !3618
  br label %57, !dbg !3618

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3618
  %61 = load i8*, i8** %60, align 8, !dbg !3618
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3621
  store i8* %61, i8** %62, align 16, !dbg !3622, !tbaa !767
  %63 = icmp eq i8* %61, null, !dbg !3623
  br i1 %63, label %30, label %64, !dbg !3624

; <label>:64:                                     ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !3607, metadata !DIExpression()), !dbg !3617
  call void @llvm.dbg.value(metadata i64 3, metadata !3607, metadata !DIExpression()), !dbg !3617
  %65 = icmp ult i32 %58, 41, !dbg !3618
  br i1 %65, label %69, label %66, !dbg !3618

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3618
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3618
  store i8* %68, i8** %10, align 8, !dbg !3618
  br label %74, !dbg !3618

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3618
  %71 = sext i32 %58 to i64, !dbg !3618
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3618
  %73 = add i32 %58, 8, !dbg !3618
  store i32 %73, i32* %8, align 8, !dbg !3618
  br label %74, !dbg !3618

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3618
  %78 = load i8*, i8** %77, align 8, !dbg !3618
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3621
  store i8* %78, i8** %79, align 8, !dbg !3622, !tbaa !767
  %80 = icmp eq i8* %78, null, !dbg !3623
  br i1 %80, label %30, label %81, !dbg !3624

; <label>:81:                                     ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !3607, metadata !DIExpression()), !dbg !3617
  call void @llvm.dbg.value(metadata i64 4, metadata !3607, metadata !DIExpression()), !dbg !3617
  %82 = icmp ult i32 %75, 41, !dbg !3618
  br i1 %82, label %86, label %83, !dbg !3618

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3618
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3618
  store i8* %85, i8** %10, align 8, !dbg !3618
  br label %91, !dbg !3618

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3618
  %88 = sext i32 %75 to i64, !dbg !3618
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3618
  %90 = add i32 %75, 8, !dbg !3618
  store i32 %90, i32* %8, align 8, !dbg !3618
  br label %91, !dbg !3618

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3618
  %95 = load i8*, i8** %94, align 8, !dbg !3618
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3621
  store i8* %95, i8** %96, align 16, !dbg !3622, !tbaa !767
  %97 = icmp eq i8* %95, null, !dbg !3623
  br i1 %97, label %30, label %98, !dbg !3624

; <label>:98:                                     ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !3607, metadata !DIExpression()), !dbg !3617
  call void @llvm.dbg.value(metadata i64 5, metadata !3607, metadata !DIExpression()), !dbg !3617
  %99 = icmp ult i32 %92, 41, !dbg !3618
  br i1 %99, label %103, label %100, !dbg !3618

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3618
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3618
  store i8* %102, i8** %10, align 8, !dbg !3618
  br label %108, !dbg !3618

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3618
  %105 = sext i32 %92 to i64, !dbg !3618
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3618
  %107 = add i32 %92, 8, !dbg !3618
  store i32 %107, i32* %8, align 8, !dbg !3618
  br label %108, !dbg !3618

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3618
  %111 = load i8*, i8** %110, align 8, !dbg !3618
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3621
  store i8* %111, i8** %112, align 8, !dbg !3622, !tbaa !767
  %113 = icmp eq i8* %111, null, !dbg !3623
  br i1 %113, label %30, label %114, !dbg !3624

; <label>:114:                                    ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !3607, metadata !DIExpression()), !dbg !3617
  call void @llvm.dbg.value(metadata i64 6, metadata !3607, metadata !DIExpression()), !dbg !3617
  %115 = load i8*, i8** %10, align 8, !dbg !3618
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3618
  store i8* %116, i8** %10, align 8, !dbg !3618
  %117 = bitcast i8* %115 to i8**, !dbg !3618
  %118 = load i8*, i8** %117, align 8, !dbg !3618
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3621
  store i8* %118, i8** %119, align 16, !dbg !3622, !tbaa !767
  %120 = icmp eq i8* %118, null, !dbg !3623
  br i1 %120, label %30, label %121, !dbg !3624

; <label>:121:                                    ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !3607, metadata !DIExpression()), !dbg !3617
  call void @llvm.dbg.value(metadata i64 7, metadata !3607, metadata !DIExpression()), !dbg !3617
  %122 = load i8*, i8** %10, align 8, !dbg !3618
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3618
  store i8* %123, i8** %10, align 8, !dbg !3618
  %124 = bitcast i8* %122 to i8**, !dbg !3618
  %125 = load i8*, i8** %124, align 8, !dbg !3618
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3621
  store i8* %125, i8** %126, align 8, !dbg !3622, !tbaa !767
  %127 = icmp eq i8* %125, null, !dbg !3623
  br i1 %127, label %30, label %128, !dbg !3624

; <label>:128:                                    ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !3607, metadata !DIExpression()), !dbg !3617
  call void @llvm.dbg.value(metadata i64 8, metadata !3607, metadata !DIExpression()), !dbg !3617
  %129 = load i8*, i8** %10, align 8, !dbg !3618
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3618
  store i8* %130, i8** %10, align 8, !dbg !3618
  %131 = bitcast i8* %129 to i8**, !dbg !3618
  %132 = load i8*, i8** %131, align 8, !dbg !3618
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3621
  store i8* %132, i8** %133, align 16, !dbg !3622, !tbaa !767
  %134 = icmp eq i8* %132, null, !dbg !3623
  br i1 %134, label %30, label %135, !dbg !3624

; <label>:135:                                    ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !3607, metadata !DIExpression()), !dbg !3617
  call void @llvm.dbg.value(metadata i64 9, metadata !3607, metadata !DIExpression()), !dbg !3617
  %136 = load i8*, i8** %10, align 8, !dbg !3618
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3618
  store i8* %137, i8** %10, align 8, !dbg !3618
  %138 = bitcast i8* %136 to i8**, !dbg !3618
  %139 = load i8*, i8** %138, align 8, !dbg !3618
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3621
  store i8* %139, i8** %140, align 8, !dbg !3622, !tbaa !767
  %141 = icmp eq i8* %139, null, !dbg !3623
  %142 = select i1 %141, i64 9, i64 10, !dbg !3624
  br label %30, !dbg !3624
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #7 !dbg !3628 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3632, metadata !DIExpression()), !dbg !3642
  call void @llvm.dbg.value(metadata i8* %1, metadata !3633, metadata !DIExpression()), !dbg !3643
  call void @llvm.dbg.value(metadata i8* %2, metadata !3634, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.value(metadata i8* %3, metadata !3635, metadata !DIExpression()), !dbg !3645
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3646
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #11, !dbg !3646
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3636, metadata !DIExpression()), !dbg !3647
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3648
  call void @llvm.va_start(i8* nonnull %6), !dbg !3648
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3649
  call void @llvm.va_end(i8* nonnull %6), !dbg !3650
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #11, !dbg !3651
  ret void, !dbg !3651
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #11

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #11

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #7 !dbg !3652 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.128, i64 0, i64 0), i32 5) #11, !dbg !3653
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.129, i64 0, i64 0)) #11, !dbg !3653
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.130, i64 0, i64 0), i32 5) #11, !dbg !3654
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.131, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18.132, i64 0, i64 0)) #11, !dbg !3654
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.19.133, i64 0, i64 0), i32 5) #11, !dbg !3655
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3655, !tbaa !767
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6), !dbg !3655
  ret void, !dbg !3656
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !3657 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3661, metadata !DIExpression()), !dbg !3663
  call void @llvm.dbg.value(metadata i64 %1, metadata !3662, metadata !DIExpression()), !dbg !3664
  %3 = udiv i64 9223372036854775807, %1, !dbg !3665
  %4 = icmp ult i64 %3, %0, !dbg !3665
  br i1 %4, label %5, label %6, !dbg !3667

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3668
  unreachable, !dbg !3668

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3669
  call void @llvm.dbg.value(metadata i64 %7, metadata !3670, metadata !DIExpression()) #11, !dbg !3677
  %8 = tail call noalias i8* @malloc(i64 %7) #11, !dbg !3679
  call void @llvm.dbg.value(metadata i8* %8, metadata !3676, metadata !DIExpression()) #11, !dbg !3680
  %9 = icmp eq i8* %8, null, !dbg !3681
  %10 = icmp ne i64 %7, 0, !dbg !3683
  %11 = and i1 %10, %9, !dbg !3684
  br i1 %11, label %12, label %13, !dbg !3684

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !3685
  unreachable, !dbg !3685

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3686
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64) local_unnamed_addr #7 !dbg !3671 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3670, metadata !DIExpression()), !dbg !3687
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !3688
  call void @llvm.dbg.value(metadata i8* %2, metadata !3676, metadata !DIExpression()), !dbg !3689
  %3 = icmp eq i8* %2, null, !dbg !3690
  %4 = icmp ne i64 %0, 0, !dbg !3691
  %5 = and i1 %4, %3, !dbg !3692
  br i1 %5, label %6, label %7, !dbg !3692

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3693
  unreachable, !dbg !3693

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3694
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !3695 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3699, metadata !DIExpression()), !dbg !3702
  call void @llvm.dbg.value(metadata i64 %1, metadata !3700, metadata !DIExpression()), !dbg !3703
  call void @llvm.dbg.value(metadata i64 %2, metadata !3701, metadata !DIExpression()), !dbg !3704
  %4 = udiv i64 9223372036854775807, %2, !dbg !3705
  %5 = icmp ult i64 %4, %1, !dbg !3705
  br i1 %5, label %6, label %7, !dbg !3707

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !3708
  unreachable, !dbg !3708

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3709
  call void @llvm.dbg.value(metadata i8* %0, metadata !3710, metadata !DIExpression()) #11, !dbg !3716
  call void @llvm.dbg.value(metadata i64 %8, metadata !3715, metadata !DIExpression()) #11, !dbg !3718
  %9 = icmp eq i64 %8, 0, !dbg !3719
  %10 = icmp ne i8* %0, null, !dbg !3721
  %11 = and i1 %10, %9, !dbg !3722
  br i1 %11, label %12, label %13, !dbg !3722

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #11, !dbg !3723
  br label %19, !dbg !3725

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #11, !dbg !3726
  call void @llvm.dbg.value(metadata i8* %14, metadata !3710, metadata !DIExpression()) #11, !dbg !3716
  %15 = icmp eq i8* %14, null, !dbg !3727
  %16 = icmp ne i64 %8, 0, !dbg !3729
  %17 = and i1 %16, %15, !dbg !3730
  br i1 %17, label %18, label %19, !dbg !3730

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3731
  unreachable, !dbg !3731

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3732
  ret i8* %20, !dbg !3733
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #7 !dbg !3711 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3710, metadata !DIExpression()), !dbg !3734
  call void @llvm.dbg.value(metadata i64 %1, metadata !3715, metadata !DIExpression()), !dbg !3735
  %3 = icmp eq i64 %1, 0, !dbg !3736
  %4 = icmp ne i8* %0, null, !dbg !3737
  %5 = and i1 %4, %3, !dbg !3738
  br i1 %5, label %6, label %7, !dbg !3738

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #11, !dbg !3739
  br label %13, !dbg !3740

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #11, !dbg !3741
  call void @llvm.dbg.value(metadata i8* %8, metadata !3710, metadata !DIExpression()), !dbg !3734
  %9 = icmp eq i8* %8, null, !dbg !3742
  %10 = icmp ne i64 %1, 0, !dbg !3743
  %11 = and i1 %10, %9, !dbg !3744
  br i1 %11, label %12, label %13, !dbg !3744

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3745
  unreachable, !dbg !3745

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3746
  ret i8* %14, !dbg !3747
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !299 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !304, metadata !DIExpression()), !dbg !3748
  call void @llvm.dbg.value(metadata i64* %1, metadata !305, metadata !DIExpression()), !dbg !3749
  call void @llvm.dbg.value(metadata i64 %2, metadata !306, metadata !DIExpression()), !dbg !3750
  %4 = load i64, i64* %1, align 8, !dbg !3751, !tbaa !880
  call void @llvm.dbg.value(metadata i64 %4, metadata !307, metadata !DIExpression()), !dbg !3752
  %5 = icmp eq i8* %0, null, !dbg !3753
  br i1 %5, label %6, label %20, !dbg !3755

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3756
  br i1 %7, label %8, label %13, !dbg !3759

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3760
  call void @llvm.dbg.value(metadata i64 %9, metadata !307, metadata !DIExpression()), !dbg !3752
  %10 = icmp ugt i64 %2, 128, !dbg !3762
  %11 = zext i1 %10 to i64, !dbg !3762
  %12 = add nuw nsw i64 %9, %11, !dbg !3763
  call void @llvm.dbg.value(metadata i64 %12, metadata !307, metadata !DIExpression()), !dbg !3752
  br label %13, !dbg !3764

; <label>:13:                                     ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3765
  call void @llvm.dbg.value(metadata i64 %14, metadata !307, metadata !DIExpression()), !dbg !3752
  %15 = udiv i64 9223372036854775807, %2, !dbg !3766
  %16 = icmp ult i64 %15, %14, !dbg !3766
  br i1 %16, label %19, label %17, !dbg !3768

; <label>:17:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !307, metadata !DIExpression()), !dbg !3752
  store i64 %14, i64* %1, align 8, !dbg !3769, !tbaa !880
  %18 = mul i64 %14, %2, !dbg !3770
  call void @llvm.dbg.value(metadata i8* %0, metadata !3710, metadata !DIExpression()) #11, !dbg !3771
  call void @llvm.dbg.value(metadata i64 %28, metadata !3715, metadata !DIExpression()) #11, !dbg !3773
  br label %31, !dbg !3774

; <label>:19:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3775
  unreachable, !dbg !3775

; <label>:20:                                     ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3776
  %22 = icmp ugt i64 %21, %4, !dbg !3779
  br i1 %22, label %24, label %23, !dbg !3780

; <label>:23:                                     ; preds = %20
  tail call void @xalloc_die() #15, !dbg !3781
  unreachable, !dbg !3781

; <label>:24:                                     ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3782
  %26 = add i64 %4, 1, !dbg !3783
  %27 = add i64 %26, %25, !dbg !3784
  call void @llvm.dbg.value(metadata i64 %27, metadata !307, metadata !DIExpression()), !dbg !3752
  call void @llvm.dbg.value(metadata i64 %27, metadata !307, metadata !DIExpression()), !dbg !3752
  store i64 %27, i64* %1, align 8, !dbg !3769, !tbaa !880
  %28 = mul i64 %27, %2, !dbg !3770
  call void @llvm.dbg.value(metadata i8* %0, metadata !3710, metadata !DIExpression()) #11, !dbg !3771
  call void @llvm.dbg.value(metadata i64 %28, metadata !3715, metadata !DIExpression()) #11, !dbg !3773
  %29 = icmp eq i64 %28, 0, !dbg !3785
  br i1 %29, label %30, label %31, !dbg !3774

; <label>:30:                                     ; preds = %24
  tail call void @free(i8* nonnull %0) #11, !dbg !3786
  br label %38, !dbg !3787

; <label>:31:                                     ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #11, !dbg !3788
  call void @llvm.dbg.value(metadata i8* %33, metadata !3710, metadata !DIExpression()) #11, !dbg !3771
  %34 = icmp eq i8* %33, null, !dbg !3789
  %35 = icmp ne i64 %32, 0, !dbg !3790
  %36 = and i1 %35, %34, !dbg !3791
  br i1 %36, label %37, label %38, !dbg !3791

; <label>:37:                                     ; preds = %31
  tail call void @xalloc_die() #15, !dbg !3792
  unreachable, !dbg !3792

; <label>:38:                                     ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3793
  ret i8* %39, !dbg !3794
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !3795 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3797, metadata !DIExpression()), !dbg !3798
  call void @llvm.dbg.value(metadata i64 %0, metadata !3670, metadata !DIExpression()) #11, !dbg !3799
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !3801
  call void @llvm.dbg.value(metadata i8* %2, metadata !3676, metadata !DIExpression()) #11, !dbg !3802
  %3 = icmp eq i8* %2, null, !dbg !3803
  %4 = icmp ne i64 %0, 0, !dbg !3804
  %5 = and i1 %4, %3, !dbg !3805
  br i1 %5, label %6, label %7, !dbg !3805

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3806
  unreachable, !dbg !3806

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3807
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #7 !dbg !3808 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3812, metadata !DIExpression()), !dbg !3814
  call void @llvm.dbg.value(metadata i64* %1, metadata !3813, metadata !DIExpression()), !dbg !3815
  call void @llvm.dbg.value(metadata i8* %0, metadata !304, metadata !DIExpression()) #11, !dbg !3816
  call void @llvm.dbg.value(metadata i64* %1, metadata !305, metadata !DIExpression()) #11, !dbg !3818
  call void @llvm.dbg.value(metadata i64 1, metadata !306, metadata !DIExpression()) #11, !dbg !3819
  %3 = load i64, i64* %1, align 8, !dbg !3820, !tbaa !880
  call void @llvm.dbg.value(metadata i64 %3, metadata !307, metadata !DIExpression()) #11, !dbg !3821
  %4 = icmp eq i8* %0, null, !dbg !3822
  br i1 %4, label %5, label %12, !dbg !3823

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3824
  br i1 %6, label %9, label %7, !dbg !3825

; <label>:7:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !307, metadata !DIExpression()) #11, !dbg !3821
  %8 = icmp slt i64 %3, 0, !dbg !3826
  br i1 %8, label %11, label %9, !dbg !3827

; <label>:9:                                      ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !307, metadata !DIExpression()) #11, !dbg !3821
  store i64 %10, i64* %1, align 8, !dbg !3828, !tbaa !880
  call void @llvm.dbg.value(metadata i8* %0, metadata !3710, metadata !DIExpression()) #11, !dbg !3829
  call void @llvm.dbg.value(metadata i64 %18, metadata !3715, metadata !DIExpression()) #11, !dbg !3831
  br label %21, !dbg !3832

; <label>:11:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3833
  unreachable, !dbg !3833

; <label>:12:                                     ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !3834
  br i1 %13, label %15, label %14, !dbg !3835

; <label>:14:                                     ; preds = %12
  tail call void @xalloc_die() #15, !dbg !3836
  unreachable, !dbg !3836

; <label>:15:                                     ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !3837
  %17 = add i64 %3, 1, !dbg !3838
  %18 = add i64 %17, %16, !dbg !3839
  call void @llvm.dbg.value(metadata i64 %18, metadata !307, metadata !DIExpression()) #11, !dbg !3821
  call void @llvm.dbg.value(metadata i64 %18, metadata !307, metadata !DIExpression()) #11, !dbg !3821
  store i64 %18, i64* %1, align 8, !dbg !3828, !tbaa !880
  call void @llvm.dbg.value(metadata i8* %0, metadata !3710, metadata !DIExpression()) #11, !dbg !3829
  call void @llvm.dbg.value(metadata i64 %18, metadata !3715, metadata !DIExpression()) #11, !dbg !3831
  %19 = icmp eq i64 %18, 0, !dbg !3840
  br i1 %19, label %20, label %21, !dbg !3832

; <label>:20:                                     ; preds = %15
  tail call void @free(i8* nonnull %0) #11, !dbg !3841
  br label %28, !dbg !3842

; <label>:21:                                     ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #11, !dbg !3843
  call void @llvm.dbg.value(metadata i8* %23, metadata !3710, metadata !DIExpression()) #11, !dbg !3829
  %24 = icmp eq i8* %23, null, !dbg !3844
  %25 = icmp ne i64 %22, 0, !dbg !3845
  %26 = and i1 %25, %24, !dbg !3846
  br i1 %26, label %27, label %28, !dbg !3846

; <label>:27:                                     ; preds = %21
  tail call void @xalloc_die() #15, !dbg !3847
  unreachable, !dbg !3847

; <label>:28:                                     ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !3848
  ret i8* %29, !dbg !3849
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64) local_unnamed_addr #7 !dbg !3850 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3852, metadata !DIExpression()), !dbg !3853
  call void @llvm.dbg.value(metadata i64 %0, metadata !3670, metadata !DIExpression()) #11, !dbg !3854
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !3856
  call void @llvm.dbg.value(metadata i8* %2, metadata !3676, metadata !DIExpression()) #11, !dbg !3857
  %3 = icmp eq i8* %2, null, !dbg !3858
  %4 = icmp ne i64 %0, 0, !dbg !3859
  %5 = and i1 %4, %3, !dbg !3860
  br i1 %5, label %6, label %7, !dbg !3860

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3861
  unreachable, !dbg !3861

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* align 1 %2, i8 0, i64 %0, i1 false), !dbg !3862
  ret i8* %2, !dbg !3863
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64, i64) local_unnamed_addr #7 !dbg !3864 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3866, metadata !DIExpression()), !dbg !3869
  call void @llvm.dbg.value(metadata i64 %1, metadata !3867, metadata !DIExpression()), !dbg !3870
  %3 = udiv i64 9223372036854775807, %1, !dbg !3871
  %4 = icmp ult i64 %3, %0, !dbg !3871
  br i1 %4, label %8, label %5, !dbg !3873

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #11, !dbg !3874
  call void @llvm.dbg.value(metadata i8* %6, metadata !3868, metadata !DIExpression()), !dbg !3875
  %7 = icmp eq i8* %6, null, !dbg !3876
  br i1 %7, label %8, label %9, !dbg !3877

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !3878
  unreachable, !dbg !3878

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3879
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #7 !dbg !3880 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3886, metadata !DIExpression()), !dbg !3888
  call void @llvm.dbg.value(metadata i64 %1, metadata !3887, metadata !DIExpression()), !dbg !3889
  call void @llvm.dbg.value(metadata i64 %1, metadata !3670, metadata !DIExpression()) #11, !dbg !3890
  %3 = tail call noalias i8* @malloc(i64 %1) #11, !dbg !3892
  call void @llvm.dbg.value(metadata i8* %3, metadata !3676, metadata !DIExpression()) #11, !dbg !3893
  %4 = icmp eq i8* %3, null, !dbg !3894
  %5 = icmp ne i64 %1, 0, !dbg !3895
  %6 = and i1 %5, %4, !dbg !3896
  br i1 %6, label %7, label %8, !dbg !3896

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3897
  unreachable, !dbg !3897

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 %0, i64 %1, i1 false), !dbg !3898
  ret i8* %3, !dbg !3899
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #7 !dbg !3900 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3902, metadata !DIExpression()), !dbg !3903
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !3904
  %3 = add i64 %2, 1, !dbg !3905
  call void @llvm.dbg.value(metadata i8* %0, metadata !3886, metadata !DIExpression()) #11, !dbg !3906
  call void @llvm.dbg.value(metadata i64 %3, metadata !3887, metadata !DIExpression()) #11, !dbg !3908
  call void @llvm.dbg.value(metadata i64 %3, metadata !3670, metadata !DIExpression()) #11, !dbg !3909
  %4 = tail call noalias i8* @malloc(i64 %3) #11, !dbg !3911
  call void @llvm.dbg.value(metadata i8* %4, metadata !3676, metadata !DIExpression()) #11, !dbg !3912
  %5 = icmp eq i8* %4, null, !dbg !3913
  %6 = icmp ne i64 %3, 0, !dbg !3914
  %7 = and i1 %6, %5, !dbg !3915
  br i1 %7, label %8, label %9, !dbg !3915

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3916
  unreachable, !dbg !3916

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %0, i64 %3, i1 false) #11, !dbg !3917
  ret i8* %4, !dbg !3918
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3919 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3921, !tbaa !901
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.146, i64 0, i64 0), i32 5) #11, !dbg !3922
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.147, i64 0, i64 0), i8* %2) #11, !dbg !3923
  tail call void @abort() #15, !dbg !3924
  unreachable, !dbg !3924
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @xnumtoimax(i8*, i32, i64, i64, i8*, i8*, i32) local_unnamed_addr #7 !dbg !3925 {
  %8 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3930, metadata !DIExpression()), !dbg !3940
  call void @llvm.dbg.value(metadata i32 %1, metadata !3931, metadata !DIExpression()), !dbg !3941
  call void @llvm.dbg.value(metadata i64 %2, metadata !3932, metadata !DIExpression()), !dbg !3942
  call void @llvm.dbg.value(metadata i64 %3, metadata !3933, metadata !DIExpression()), !dbg !3943
  call void @llvm.dbg.value(metadata i8* %4, metadata !3934, metadata !DIExpression()), !dbg !3944
  call void @llvm.dbg.value(metadata i8* %5, metadata !3935, metadata !DIExpression()), !dbg !3945
  call void @llvm.dbg.value(metadata i32 %6, metadata !3936, metadata !DIExpression()), !dbg !3946
  %9 = bitcast i64* %8 to i8*, !dbg !3947
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #11, !dbg !3947
  call void @llvm.dbg.value(metadata i64* %8, metadata !3939, metadata !DIExpression(DW_OP_deref)), !dbg !3948
  %10 = call i32 @xstrtoimax(i8* %0, i8** null, i32 %1, i64* nonnull %8, i8* %4) #11, !dbg !3949
  call void @llvm.dbg.value(metadata i32 %10, metadata !3937, metadata !DIExpression()), !dbg !3950
  switch i32 %10, label %11 [
    i32 0, label %13
    i32 1, label %27
    i32 3, label %29
  ], !dbg !3951

; <label>:11:                                     ; preds = %7
  %12 = tail call i32* @__errno_location() #17, !dbg !3952
  br label %31, !dbg !3951

; <label>:13:                                     ; preds = %7
  %14 = load i64, i64* %8, align 8, !dbg !3955, !tbaa !880
  call void @llvm.dbg.value(metadata i64 %14, metadata !3939, metadata !DIExpression()), !dbg !3948
  %15 = icmp slt i64 %14, %2, !dbg !3959
  %16 = icmp sgt i64 %14, %3, !dbg !3960
  %17 = or i1 %15, %16, !dbg !3961
  br i1 %17, label %18, label %40, !dbg !3961

; <label>:18:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i32 1, metadata !3937, metadata !DIExpression()), !dbg !3950
  call void @llvm.dbg.value(metadata i64 %14, metadata !3939, metadata !DIExpression()), !dbg !3948
  %19 = icmp sgt i64 %14, 1073741823, !dbg !3962
  br i1 %19, label %20, label %22, !dbg !3965

; <label>:20:                                     ; preds = %18
  %21 = tail call i32* @__errno_location() #17, !dbg !3966
  store i32 75, i32* %21, align 4, !dbg !3967, !tbaa !901
  br label %31, !dbg !3966

; <label>:22:                                     ; preds = %18
  %23 = icmp slt i64 %14, -1073741824, !dbg !3968
  %24 = tail call i32* @__errno_location() #17, !dbg !3970
  br i1 %23, label %25, label %26, !dbg !3971

; <label>:25:                                     ; preds = %22
  store i32 75, i32* %24, align 4, !dbg !3972, !tbaa !901
  br label %31, !dbg !3973

; <label>:26:                                     ; preds = %22
  store i32 34, i32* %24, align 4, !dbg !3974, !tbaa !901
  br label %31

; <label>:27:                                     ; preds = %7
  %28 = tail call i32* @__errno_location() #17, !dbg !3975
  store i32 75, i32* %28, align 4, !dbg !3977, !tbaa !901
  br label %31, !dbg !3975

; <label>:29:                                     ; preds = %7
  %30 = tail call i32* @__errno_location() #17, !dbg !3978
  store i32 0, i32* %30, align 4, !dbg !3980, !tbaa !901
  br label %31, !dbg !3978

; <label>:31:                                     ; preds = %11, %20, %25, %26, %27, %29
  %32 = phi i32* [ %12, %11 ], [ %21, %20 ], [ %24, %25 ], [ %24, %26 ], [ %28, %27 ], [ %30, %29 ], !dbg !3952
  %33 = icmp eq i32 %6, 0, !dbg !3981
  %34 = select i1 %33, i32 1, i32 %6, !dbg !3981
  %35 = load i32, i32* %32, align 4, !dbg !3952, !tbaa !901
  %36 = icmp eq i32 %35, 22, !dbg !3982
  %37 = select i1 %36, i32 0, i32 %35, !dbg !3952
  %38 = call i8* @quote(i8* %0) #11, !dbg !3983
  call void (i32, i32, i8*, ...) @error(i32 %34, i32 %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.148, i64 0, i64 0), i8* %5, i8* %38) #11, !dbg !3984
  %39 = load i64, i64* %8, align 8, !dbg !3985, !tbaa !880
  br label %40, !dbg !3986

; <label>:40:                                     ; preds = %13, %31
  %41 = phi i64 [ %14, %13 ], [ %39, %31 ], !dbg !3985
  call void @llvm.dbg.value(metadata i64 %41, metadata !3939, metadata !DIExpression()), !dbg !3948
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #11, !dbg !3987
  ret i64 %41, !dbg !3988
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @xdectoimax(i8*, i64, i64, i8*, i8*, i32) local_unnamed_addr #7 !dbg !3989 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3993, metadata !DIExpression()), !dbg !3999
  call void @llvm.dbg.value(metadata i64 %1, metadata !3994, metadata !DIExpression()), !dbg !4000
  call void @llvm.dbg.value(metadata i64 %2, metadata !3995, metadata !DIExpression()), !dbg !4001
  call void @llvm.dbg.value(metadata i8* %3, metadata !3996, metadata !DIExpression()), !dbg !4002
  call void @llvm.dbg.value(metadata i8* %4, metadata !3997, metadata !DIExpression()), !dbg !4003
  call void @llvm.dbg.value(metadata i32 %5, metadata !3998, metadata !DIExpression()), !dbg !4004
  %7 = tail call i64 @xnumtoimax(i8* %0, i32 10, i64 %1, i64 %2, i8* %3, i8* %4, i32 %5), !dbg !4005
  ret i64 %7, !dbg !4006
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @xstrtoimax(i8*, i8**, i32, i64* nocapture, i8* readonly) local_unnamed_addr #7 !dbg !4007 {
  %6 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !4013, metadata !DIExpression()), !dbg !4027
  call void @llvm.dbg.value(metadata i8** %1, metadata !4014, metadata !DIExpression()), !dbg !4028
  call void @llvm.dbg.value(metadata i32 %2, metadata !4015, metadata !DIExpression()), !dbg !4029
  call void @llvm.dbg.value(metadata i64* %3, metadata !4016, metadata !DIExpression()), !dbg !4030
  call void @llvm.dbg.value(metadata i8* %4, metadata !4017, metadata !DIExpression()), !dbg !4031
  %7 = bitcast i8** %6 to i8*, !dbg !4032
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #11, !dbg !4032
  call void @llvm.dbg.value(metadata i32 0, metadata !4021, metadata !DIExpression()), !dbg !4033
  %8 = icmp ult i32 %2, 37, !dbg !4034
  br i1 %8, label %10, label %9, !dbg !4034

; <label>:9:                                      ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.153, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.154, i64 0, i64 0), i32 96, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @__PRETTY_FUNCTION__.xstrtoimax, i64 0, i64 0)) #15, !dbg !4034
  unreachable, !dbg !4034

; <label>:10:                                     ; preds = %5
  %11 = icmp eq i8** %1, null, !dbg !4037
  %12 = select i1 %11, i8** %6, i8** %1, !dbg !4037
  call void @llvm.dbg.value(metadata i8** %12, metadata !4019, metadata !DIExpression()), !dbg !4038
  %13 = tail call i32* @__errno_location() #17, !dbg !4039
  store i32 0, i32* %13, align 4, !dbg !4040, !tbaa !901
  call void @llvm.dbg.value(metadata i8* %0, metadata !4041, metadata !DIExpression()) #11, !dbg !4050
  call void @llvm.dbg.value(metadata i8** %12, metadata !4048, metadata !DIExpression()) #11, !dbg !4050
  call void @llvm.dbg.value(metadata i32 %2, metadata !4049, metadata !DIExpression()) #11, !dbg !4050
  %14 = call i64 @__strtol_internal(i8* %0, i8** %12, i32 %2, i32 0) #11, !dbg !4052
  call void @llvm.dbg.value(metadata i64 %14, metadata !4020, metadata !DIExpression()), !dbg !4053
  %15 = load i8*, i8** %12, align 8, !dbg !4054, !tbaa !767
  %16 = icmp eq i8* %15, %0, !dbg !4056
  br i1 %16, label %17, label %26, !dbg !4057

; <label>:17:                                     ; preds = %10
  %18 = icmp eq i8* %4, null, !dbg !4058
  br i1 %18, label %196, label %19, !dbg !4061

; <label>:19:                                     ; preds = %17
  %20 = load i8, i8* %0, align 1, !dbg !4062, !tbaa !1002
  %21 = icmp eq i8 %20, 0, !dbg !4062
  br i1 %21, label %196, label %22, !dbg !4063

; <label>:22:                                     ; preds = %19
  %23 = sext i8 %20 to i32, !dbg !4062
  %24 = call i8* @strchr(i8* nonnull %4, i32 %23) #14, !dbg !4064
  %25 = icmp eq i8* %24, null, !dbg !4064
  br i1 %25, label %196, label %33, !dbg !4065

; <label>:26:                                     ; preds = %10
  %27 = load i32, i32* %13, align 4, !dbg !4066, !tbaa !901
  switch i32 %27, label %196 [
    i32 0, label %29
    i32 34, label %28
  ], !dbg !4068

; <label>:28:                                     ; preds = %26
  call void @llvm.dbg.value(metadata i32 1, metadata !4021, metadata !DIExpression()), !dbg !4033
  br label %29, !dbg !4069

; <label>:29:                                     ; preds = %26, %28
  %30 = phi i32 [ 1, %28 ], [ %27, %26 ], !dbg !4071
  call void @llvm.dbg.value(metadata i32 %30, metadata !4021, metadata !DIExpression()), !dbg !4033
  %31 = icmp eq i8* %4, null, !dbg !4072
  br i1 %31, label %32, label %33, !dbg !4074

; <label>:32:                                     ; preds = %29
  call void @llvm.dbg.value(metadata i64 %14, metadata !4020, metadata !DIExpression()), !dbg !4053
  store i64 %14, i64* %3, align 8, !dbg !4075, !tbaa !880
  br label %196, !dbg !4077

; <label>:33:                                     ; preds = %22, %29
  %34 = phi i32 [ %30, %29 ], [ 0, %22 ]
  %35 = phi i64 [ %14, %29 ], [ 1, %22 ]
  %36 = load i8, i8* %15, align 1, !dbg !4078, !tbaa !1002
  %37 = sext i8 %36 to i32, !dbg !4078
  %38 = icmp eq i8 %36, 0, !dbg !4079
  br i1 %38, label %193, label %39, !dbg !4080

; <label>:39:                                     ; preds = %33
  call void @llvm.dbg.value(metadata i32 1024, metadata !4022, metadata !DIExpression()), !dbg !4081
  call void @llvm.dbg.value(metadata i32 1, metadata !4025, metadata !DIExpression()), !dbg !4082
  %40 = call i8* @strchr(i8* nonnull %4, i32 %37) #14, !dbg !4083
  %41 = icmp eq i8* %40, null, !dbg !4083
  br i1 %41, label %42, label %44, !dbg !4085

; <label>:42:                                     ; preds = %39
  call void @llvm.dbg.value(metadata i64 %14, metadata !4020, metadata !DIExpression()), !dbg !4053
  store i64 %35, i64* %3, align 8, !dbg !4086, !tbaa !880
  %43 = or i32 %34, 2, !dbg !4088
  br label %196, !dbg !4089

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
  ], !dbg !4090

; <label>:45:                                     ; preds = %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44
  %46 = call i8* @strchr(i8* nonnull %4, i32 48) #14, !dbg !4091
  %47 = icmp eq i8* %46, null, !dbg !4091
  br i1 %47, label %58, label %48, !dbg !4094

; <label>:48:                                     ; preds = %45
  %49 = getelementptr inbounds i8, i8* %15, i64 1, !dbg !4095
  %50 = load i8, i8* %49, align 1, !dbg !4095, !tbaa !1002
  %51 = sext i8 %50 to i32, !dbg !4095
  switch i32 %51, label %58 [
    i32 105, label %52
    i32 66, label %57
    i32 68, label %57
  ], !dbg !4096

; <label>:52:                                     ; preds = %48
  %53 = getelementptr inbounds i8, i8* %15, i64 2, !dbg !4097
  %54 = load i8, i8* %53, align 1, !dbg !4097, !tbaa !1002
  %55 = icmp eq i8 %54, 66, !dbg !4100
  %56 = select i1 %55, i64 3, i64 1, !dbg !4101
  br label %58, !dbg !4101

; <label>:57:                                     ; preds = %48, %48
  call void @llvm.dbg.value(metadata i32 1000, metadata !4022, metadata !DIExpression()), !dbg !4081
  call void @llvm.dbg.value(metadata i32 2, metadata !4025, metadata !DIExpression()), !dbg !4082
  br label %58, !dbg !4102

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
  ], !dbg !4103

; <label>:61:                                     ; preds = %58
  call void @llvm.dbg.value(metadata i32 512, metadata !4104, metadata !DIExpression()), !dbg !4110
  %62 = icmp slt i64 %35, -18014398509481984, !dbg !4113
  br i1 %62, label %184, label %63, !dbg !4115

; <label>:63:                                     ; preds = %61
  %64 = icmp sgt i64 %35, 18014398509481983, !dbg !4116
  %65 = shl nsw i64 %35, 9, !dbg !4118
  %66 = select i1 %64, i64 9223372036854775807, i64 %65, !dbg !4119
  %67 = zext i1 %64 to i32, !dbg !4119
  br label %184, !dbg !4119

; <label>:68:                                     ; preds = %58
  call void @llvm.dbg.value(metadata i32 1024, metadata !4104, metadata !DIExpression()), !dbg !4120
  %69 = icmp slt i64 %35, -9007199254740992, !dbg !4122
  br i1 %69, label %184, label %70, !dbg !4123

; <label>:70:                                     ; preds = %68
  %71 = icmp sgt i64 %35, 9007199254740991, !dbg !4124
  %72 = shl nsw i64 %35, 10, !dbg !4125
  %73 = select i1 %71, i64 9223372036854775807, i64 %72, !dbg !4126
  %74 = zext i1 %71 to i32, !dbg !4126
  br label %184, !dbg !4126

; <label>:75:                                     ; preds = %58
  call void @llvm.dbg.value(metadata i32 6, metadata !4127, metadata !DIExpression()), !dbg !4135
  call void @llvm.dbg.value(metadata i32 0, metadata !4134, metadata !DIExpression()), !dbg !4137
  %76 = sdiv i64 -9223372036854775808, %59
  call void @llvm.dbg.value(metadata i32 0, metadata !4134, metadata !DIExpression()), !dbg !4137
  call void @llvm.dbg.value(metadata i32 6, metadata !4127, metadata !DIExpression()), !dbg !4135
  %77 = icmp slt i64 %35, %76, !dbg !4138
  br i1 %77, label %84, label %78, !dbg !4140

; <label>:78:                                     ; preds = %75
  %79 = udiv i64 9223372036854775807, %59, !dbg !4141
  %80 = icmp slt i64 %79, %35, !dbg !4142
  %81 = mul nsw i64 %35, %59, !dbg !4143
  %82 = select i1 %80, i64 9223372036854775807, i64 %81, !dbg !4144
  %83 = zext i1 %80 to i32, !dbg !4144
  br label %84, !dbg !4144

; <label>:84:                                     ; preds = %78, %75
  %85 = phi i64 [ -9223372036854775808, %75 ], [ %82, %78 ]
  %86 = phi i32 [ 1, %75 ], [ %83, %78 ], !dbg !4145
  call void @llvm.dbg.value(metadata i32 %86, metadata !4134, metadata !DIExpression()), !dbg !4137
  call void @llvm.dbg.value(metadata i32 5, metadata !4127, metadata !DIExpression()), !dbg !4135
  call void @llvm.dbg.value(metadata i32 %86, metadata !4134, metadata !DIExpression()), !dbg !4137
  call void @llvm.dbg.value(metadata i32 5, metadata !4127, metadata !DIExpression()), !dbg !4135
  %87 = icmp slt i64 %85, %76, !dbg !4138
  br i1 %87, label %204, label %198, !dbg !4140

; <label>:88:                                     ; preds = %58, %58
  call void @llvm.dbg.value(metadata i32 3, metadata !4127, metadata !DIExpression()), !dbg !4146
  call void @llvm.dbg.value(metadata i32 0, metadata !4134, metadata !DIExpression()), !dbg !4148
  %89 = sdiv i64 -9223372036854775808, %59
  call void @llvm.dbg.value(metadata i32 0, metadata !4134, metadata !DIExpression()), !dbg !4148
  call void @llvm.dbg.value(metadata i32 3, metadata !4127, metadata !DIExpression()), !dbg !4146
  %90 = icmp slt i64 %35, %89, !dbg !4149
  br i1 %90, label %97, label %91, !dbg !4151

; <label>:91:                                     ; preds = %88
  %92 = udiv i64 9223372036854775807, %59, !dbg !4152
  %93 = icmp slt i64 %92, %35, !dbg !4153
  %94 = mul nsw i64 %35, %59, !dbg !4154
  %95 = select i1 %93, i64 9223372036854775807, i64 %94, !dbg !4155
  %96 = zext i1 %93 to i32, !dbg !4155
  br label %97, !dbg !4155

; <label>:97:                                     ; preds = %91, %88
  %98 = phi i64 [ -9223372036854775808, %88 ], [ %95, %91 ]
  %99 = phi i32 [ 1, %88 ], [ %96, %91 ], !dbg !4156
  call void @llvm.dbg.value(metadata i32 %99, metadata !4134, metadata !DIExpression()), !dbg !4148
  call void @llvm.dbg.value(metadata i32 2, metadata !4127, metadata !DIExpression()), !dbg !4146
  call void @llvm.dbg.value(metadata i32 %99, metadata !4134, metadata !DIExpression()), !dbg !4148
  call void @llvm.dbg.value(metadata i32 2, metadata !4127, metadata !DIExpression()), !dbg !4146
  %100 = icmp slt i64 %98, %89, !dbg !4149
  br i1 %100, label %258, label %252, !dbg !4151

; <label>:101:                                    ; preds = %58, %58
  call void @llvm.dbg.value(metadata i32 1, metadata !4127, metadata !DIExpression()), !dbg !4157
  call void @llvm.dbg.value(metadata i32 0, metadata !4134, metadata !DIExpression()), !dbg !4159
  %102 = sdiv i64 -9223372036854775808, %59
  call void @llvm.dbg.value(metadata i32 0, metadata !4134, metadata !DIExpression()), !dbg !4159
  call void @llvm.dbg.value(metadata i32 undef, metadata !4127, metadata !DIExpression()), !dbg !4157
  %103 = icmp slt i64 %35, %102, !dbg !4160
  br i1 %103, label %184, label %104, !dbg !4162

; <label>:104:                                    ; preds = %101
  %105 = udiv i64 9223372036854775807, %59, !dbg !4163
  %106 = icmp slt i64 %105, %35, !dbg !4164
  %107 = mul nsw i64 %35, %59, !dbg !4165
  %108 = select i1 %106, i64 9223372036854775807, i64 %107, !dbg !4166
  %109 = zext i1 %106 to i32, !dbg !4166
  br label %184, !dbg !4166

; <label>:110:                                    ; preds = %58, %58
  call void @llvm.dbg.value(metadata i32 2, metadata !4127, metadata !DIExpression()), !dbg !4167
  call void @llvm.dbg.value(metadata i32 0, metadata !4134, metadata !DIExpression()), !dbg !4169
  %111 = sdiv i64 -9223372036854775808, %59
  call void @llvm.dbg.value(metadata i32 0, metadata !4134, metadata !DIExpression()), !dbg !4169
  call void @llvm.dbg.value(metadata i32 2, metadata !4127, metadata !DIExpression()), !dbg !4167
  %112 = icmp slt i64 %35, %111, !dbg !4170
  br i1 %112, label %119, label %113, !dbg !4172

; <label>:113:                                    ; preds = %110
  %114 = udiv i64 9223372036854775807, %59, !dbg !4173
  %115 = icmp slt i64 %114, %35, !dbg !4174
  %116 = mul nsw i64 %35, %59, !dbg !4175
  %117 = select i1 %115, i64 9223372036854775807, i64 %116, !dbg !4176
  %118 = zext i1 %115 to i32, !dbg !4176
  br label %119, !dbg !4176

; <label>:119:                                    ; preds = %113, %110
  %120 = phi i64 [ -9223372036854775808, %110 ], [ %117, %113 ]
  %121 = phi i32 [ 1, %110 ], [ %118, %113 ], !dbg !4177
  call void @llvm.dbg.value(metadata i32 %121, metadata !4134, metadata !DIExpression()), !dbg !4169
  call void @llvm.dbg.value(metadata i32 1, metadata !4127, metadata !DIExpression()), !dbg !4167
  call void @llvm.dbg.value(metadata i32 %121, metadata !4134, metadata !DIExpression()), !dbg !4169
  call void @llvm.dbg.value(metadata i32 1, metadata !4127, metadata !DIExpression()), !dbg !4167
  %122 = icmp slt i64 %120, %111, !dbg !4170
  br i1 %122, label %279, label %273, !dbg !4172

; <label>:123:                                    ; preds = %58
  call void @llvm.dbg.value(metadata i32 5, metadata !4127, metadata !DIExpression()), !dbg !4178
  call void @llvm.dbg.value(metadata i32 0, metadata !4134, metadata !DIExpression()), !dbg !4180
  %124 = sdiv i64 -9223372036854775808, %59
  call void @llvm.dbg.value(metadata i32 0, metadata !4134, metadata !DIExpression()), !dbg !4180
  call void @llvm.dbg.value(metadata i32 5, metadata !4127, metadata !DIExpression()), !dbg !4178
  %125 = icmp slt i64 %35, %124, !dbg !4181
  br i1 %125, label %132, label %126, !dbg !4183

; <label>:126:                                    ; preds = %123
  %127 = udiv i64 9223372036854775807, %59, !dbg !4184
  %128 = icmp slt i64 %127, %35, !dbg !4185
  %129 = mul nsw i64 %35, %59, !dbg !4186
  %130 = select i1 %128, i64 9223372036854775807, i64 %129, !dbg !4187
  %131 = zext i1 %128 to i32, !dbg !4187
  br label %132, !dbg !4187

; <label>:132:                                    ; preds = %126, %123
  %133 = phi i64 [ -9223372036854775808, %123 ], [ %130, %126 ]
  %134 = phi i32 [ 1, %123 ], [ %131, %126 ], !dbg !4188
  call void @llvm.dbg.value(metadata i32 %134, metadata !4134, metadata !DIExpression()), !dbg !4180
  call void @llvm.dbg.value(metadata i32 4, metadata !4127, metadata !DIExpression()), !dbg !4178
  call void @llvm.dbg.value(metadata i32 %134, metadata !4134, metadata !DIExpression()), !dbg !4180
  call void @llvm.dbg.value(metadata i32 4, metadata !4127, metadata !DIExpression()), !dbg !4178
  %135 = icmp slt i64 %133, %124, !dbg !4181
  br i1 %135, label %289, label %283, !dbg !4183

; <label>:136:                                    ; preds = %58, %58
  call void @llvm.dbg.value(metadata i32 4, metadata !4127, metadata !DIExpression()), !dbg !4189
  call void @llvm.dbg.value(metadata i32 0, metadata !4134, metadata !DIExpression()), !dbg !4191
  %137 = sdiv i64 -9223372036854775808, %59
  call void @llvm.dbg.value(metadata i32 0, metadata !4134, metadata !DIExpression()), !dbg !4191
  call void @llvm.dbg.value(metadata i32 4, metadata !4127, metadata !DIExpression()), !dbg !4189
  %138 = icmp slt i64 %35, %137, !dbg !4192
  br i1 %138, label %145, label %139, !dbg !4194

; <label>:139:                                    ; preds = %136
  %140 = udiv i64 9223372036854775807, %59, !dbg !4195
  %141 = icmp slt i64 %140, %35, !dbg !4196
  %142 = mul nsw i64 %35, %59, !dbg !4197
  %143 = select i1 %141, i64 9223372036854775807, i64 %142, !dbg !4198
  %144 = zext i1 %141 to i32, !dbg !4198
  br label %145, !dbg !4198

; <label>:145:                                    ; preds = %139, %136
  %146 = phi i64 [ -9223372036854775808, %136 ], [ %143, %139 ]
  %147 = phi i32 [ 1, %136 ], [ %144, %139 ], !dbg !4199
  call void @llvm.dbg.value(metadata i32 %147, metadata !4134, metadata !DIExpression()), !dbg !4191
  call void @llvm.dbg.value(metadata i32 3, metadata !4127, metadata !DIExpression()), !dbg !4189
  call void @llvm.dbg.value(metadata i32 %147, metadata !4134, metadata !DIExpression()), !dbg !4191
  call void @llvm.dbg.value(metadata i32 3, metadata !4127, metadata !DIExpression()), !dbg !4189
  %148 = icmp slt i64 %146, %137, !dbg !4192
  br i1 %148, label %332, label %326, !dbg !4194

; <label>:149:                                    ; preds = %58
  call void @llvm.dbg.value(metadata i32 2, metadata !4104, metadata !DIExpression()), !dbg !4200
  %150 = icmp slt i64 %35, -4611686018427387904, !dbg !4202
  br i1 %150, label %184, label %151, !dbg !4203

; <label>:151:                                    ; preds = %149
  %152 = icmp sgt i64 %35, 4611686018427387903, !dbg !4204
  %153 = shl nsw i64 %35, 1, !dbg !4205
  %154 = select i1 %152, i64 9223372036854775807, i64 %153, !dbg !4206
  %155 = zext i1 %152 to i32, !dbg !4206
  br label %184, !dbg !4206

; <label>:156:                                    ; preds = %58
  call void @llvm.dbg.value(metadata i32 8, metadata !4127, metadata !DIExpression()), !dbg !4207
  call void @llvm.dbg.value(metadata i32 0, metadata !4134, metadata !DIExpression()), !dbg !4209
  %157 = sdiv i64 -9223372036854775808, %59
  call void @llvm.dbg.value(metadata i32 0, metadata !4134, metadata !DIExpression()), !dbg !4209
  call void @llvm.dbg.value(metadata i32 8, metadata !4127, metadata !DIExpression()), !dbg !4207
  %158 = icmp slt i64 %35, %157, !dbg !4210
  br i1 %158, label %165, label %159, !dbg !4212

; <label>:159:                                    ; preds = %156
  %160 = udiv i64 9223372036854775807, %59, !dbg !4213
  %161 = icmp slt i64 %160, %35, !dbg !4214
  %162 = mul nsw i64 %35, %59, !dbg !4215
  %163 = select i1 %161, i64 9223372036854775807, i64 %162, !dbg !4216
  %164 = zext i1 %161 to i32, !dbg !4216
  br label %165, !dbg !4216

; <label>:165:                                    ; preds = %159, %156
  %166 = phi i64 [ -9223372036854775808, %156 ], [ %163, %159 ]
  %167 = phi i32 [ 1, %156 ], [ %164, %159 ], !dbg !4217
  call void @llvm.dbg.value(metadata i32 %167, metadata !4134, metadata !DIExpression()), !dbg !4209
  call void @llvm.dbg.value(metadata i32 7, metadata !4127, metadata !DIExpression()), !dbg !4207
  call void @llvm.dbg.value(metadata i32 %167, metadata !4134, metadata !DIExpression()), !dbg !4209
  call void @llvm.dbg.value(metadata i32 7, metadata !4127, metadata !DIExpression()), !dbg !4207
  %168 = icmp slt i64 %166, %157, !dbg !4210
  br i1 %168, label %364, label %358, !dbg !4212

; <label>:169:                                    ; preds = %58
  call void @llvm.dbg.value(metadata i32 7, metadata !4127, metadata !DIExpression()), !dbg !4218
  call void @llvm.dbg.value(metadata i32 0, metadata !4134, metadata !DIExpression()), !dbg !4220
  %170 = sdiv i64 -9223372036854775808, %59
  call void @llvm.dbg.value(metadata i32 0, metadata !4134, metadata !DIExpression()), !dbg !4220
  call void @llvm.dbg.value(metadata i32 7, metadata !4127, metadata !DIExpression()), !dbg !4218
  %171 = icmp slt i64 %35, %170, !dbg !4221
  br i1 %171, label %178, label %172, !dbg !4223

; <label>:172:                                    ; preds = %169
  %173 = udiv i64 9223372036854775807, %59, !dbg !4224
  %174 = icmp slt i64 %173, %35, !dbg !4225
  %175 = mul nsw i64 %35, %59, !dbg !4226
  %176 = select i1 %174, i64 9223372036854775807, i64 %175, !dbg !4227
  %177 = zext i1 %174 to i32, !dbg !4227
  br label %178, !dbg !4227

; <label>:178:                                    ; preds = %172, %169
  %179 = phi i64 [ -9223372036854775808, %169 ], [ %176, %172 ]
  %180 = phi i32 [ 1, %169 ], [ %177, %172 ], !dbg !4228
  call void @llvm.dbg.value(metadata i32 %180, metadata !4134, metadata !DIExpression()), !dbg !4220
  call void @llvm.dbg.value(metadata i32 6, metadata !4127, metadata !DIExpression()), !dbg !4218
  call void @llvm.dbg.value(metadata i32 %180, metadata !4134, metadata !DIExpression()), !dbg !4220
  call void @llvm.dbg.value(metadata i32 6, metadata !4127, metadata !DIExpression()), !dbg !4218
  %181 = icmp slt i64 %179, %170, !dbg !4221
  br i1 %181, label %440, label %434, !dbg !4223

; <label>:182:                                    ; preds = %58
  call void @llvm.dbg.value(metadata i64 %14, metadata !4020, metadata !DIExpression()), !dbg !4053
  store i64 %35, i64* %3, align 8, !dbg !4229, !tbaa !880
  %183 = or i32 %34, 2, !dbg !4230
  br label %196, !dbg !4231

; <label>:184:                                    ; preds = %101, %104, %495, %430, %354, %322, %279, %269, %248, %151, %70, %63, %58, %61, %68, %149
  %185 = phi i64 [ %35, %58 ], [ -9223372036854775808, %61 ], [ -9223372036854775808, %68 ], [ -9223372036854775808, %149 ], [ %66, %63 ], [ %73, %70 ], [ %154, %151 ], [ %249, %248 ], [ %270, %269 ], [ %280, %279 ], [ %323, %322 ], [ %355, %354 ], [ %431, %430 ], [ %496, %495 ], [ -9223372036854775808, %101 ], [ %108, %104 ], !dbg !4232
  %186 = phi i32 [ 0, %58 ], [ 1, %61 ], [ 1, %68 ], [ 1, %149 ], [ %67, %63 ], [ %74, %70 ], [ %155, %151 ], [ %251, %248 ], [ %272, %269 ], [ %282, %279 ], [ %325, %322 ], [ %357, %354 ], [ %433, %430 ], [ %498, %495 ], [ 1, %101 ], [ %109, %104 ], !dbg !4232
  call void @llvm.dbg.value(metadata i32 %186, metadata !4026, metadata !DIExpression()), !dbg !4233
  %187 = or i32 %186, %34, !dbg !4234
  call void @llvm.dbg.value(metadata i32 %187, metadata !4021, metadata !DIExpression()), !dbg !4033
  %188 = getelementptr inbounds i8, i8* %15, i64 %60, !dbg !4235
  store i8* %188, i8** %12, align 8, !dbg !4235, !tbaa !767
  %189 = load i8, i8* %188, align 1, !dbg !4236, !tbaa !1002
  %190 = icmp eq i8 %189, 0, !dbg !4236
  %191 = or i32 %187, 2, !dbg !4238
  %192 = select i1 %190, i32 %187, i32 %191, !dbg !4239
  call void @llvm.dbg.value(metadata i32 %192, metadata !4021, metadata !DIExpression()), !dbg !4033
  call void @llvm.dbg.value(metadata i32 %192, metadata !4021, metadata !DIExpression()), !dbg !4033
  br label %193

; <label>:193:                                    ; preds = %184, %33
  %194 = phi i64 [ %35, %33 ], [ %185, %184 ], !dbg !4240
  %195 = phi i32 [ %34, %33 ], [ %192, %184 ], !dbg !4033
  call void @llvm.dbg.value(metadata i32 %195, metadata !4021, metadata !DIExpression()), !dbg !4033
  call void @llvm.dbg.value(metadata i64 %194, metadata !4020, metadata !DIExpression()), !dbg !4053
  store i64 %194, i64* %3, align 8, !dbg !4241, !tbaa !880
  br label %196, !dbg !4242

; <label>:196:                                    ; preds = %42, %182, %26, %17, %19, %22, %193, %32
  %197 = phi i32 [ %195, %193 ], [ %30, %32 ], [ 4, %22 ], [ 4, %19 ], [ 4, %17 ], [ 4, %26 ], [ %43, %42 ], [ %183, %182 ], !dbg !4243
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #11, !dbg !4245
  ret i32 %197, !dbg !4245

; <label>:198:                                    ; preds = %84
  %199 = udiv i64 9223372036854775807, %59, !dbg !4141
  %200 = icmp slt i64 %199, %85, !dbg !4142
  %201 = mul nsw i64 %85, %59, !dbg !4143
  %202 = select i1 %200, i64 9223372036854775807, i64 %201, !dbg !4144
  %203 = zext i1 %200 to i32, !dbg !4144
  br label %204, !dbg !4144

; <label>:204:                                    ; preds = %198, %84
  %205 = phi i64 [ -9223372036854775808, %84 ], [ %202, %198 ]
  %206 = phi i32 [ 1, %84 ], [ %203, %198 ], !dbg !4145
  %207 = or i32 %206, %86, !dbg !4246
  call void @llvm.dbg.value(metadata i32 %207, metadata !4134, metadata !DIExpression()), !dbg !4137
  call void @llvm.dbg.value(metadata i32 4, metadata !4127, metadata !DIExpression()), !dbg !4135
  call void @llvm.dbg.value(metadata i32 %207, metadata !4134, metadata !DIExpression()), !dbg !4137
  call void @llvm.dbg.value(metadata i32 4, metadata !4127, metadata !DIExpression()), !dbg !4135
  %208 = icmp slt i64 %205, %76, !dbg !4138
  br i1 %208, label %215, label %209, !dbg !4140

; <label>:209:                                    ; preds = %204
  %210 = udiv i64 9223372036854775807, %59, !dbg !4141
  %211 = icmp slt i64 %210, %205, !dbg !4142
  %212 = mul nsw i64 %205, %59, !dbg !4143
  %213 = select i1 %211, i64 9223372036854775807, i64 %212, !dbg !4144
  %214 = zext i1 %211 to i32, !dbg !4144
  br label %215, !dbg !4144

; <label>:215:                                    ; preds = %209, %204
  %216 = phi i64 [ -9223372036854775808, %204 ], [ %213, %209 ]
  %217 = phi i32 [ 1, %204 ], [ %214, %209 ], !dbg !4145
  %218 = or i32 %217, %207, !dbg !4246
  call void @llvm.dbg.value(metadata i32 %218, metadata !4134, metadata !DIExpression()), !dbg !4137
  call void @llvm.dbg.value(metadata i32 3, metadata !4127, metadata !DIExpression()), !dbg !4135
  call void @llvm.dbg.value(metadata i32 %218, metadata !4134, metadata !DIExpression()), !dbg !4137
  call void @llvm.dbg.value(metadata i32 3, metadata !4127, metadata !DIExpression()), !dbg !4135
  %219 = icmp slt i64 %216, %76, !dbg !4138
  br i1 %219, label %226, label %220, !dbg !4140

; <label>:220:                                    ; preds = %215
  %221 = udiv i64 9223372036854775807, %59, !dbg !4141
  %222 = icmp slt i64 %221, %216, !dbg !4142
  %223 = mul nsw i64 %216, %59, !dbg !4143
  %224 = select i1 %222, i64 9223372036854775807, i64 %223, !dbg !4144
  %225 = zext i1 %222 to i32, !dbg !4144
  br label %226, !dbg !4144

; <label>:226:                                    ; preds = %220, %215
  %227 = phi i64 [ -9223372036854775808, %215 ], [ %224, %220 ]
  %228 = phi i32 [ 1, %215 ], [ %225, %220 ], !dbg !4145
  %229 = or i32 %228, %218, !dbg !4246
  call void @llvm.dbg.value(metadata i32 %229, metadata !4134, metadata !DIExpression()), !dbg !4137
  call void @llvm.dbg.value(metadata i32 2, metadata !4127, metadata !DIExpression()), !dbg !4135
  call void @llvm.dbg.value(metadata i32 %229, metadata !4134, metadata !DIExpression()), !dbg !4137
  call void @llvm.dbg.value(metadata i32 2, metadata !4127, metadata !DIExpression()), !dbg !4135
  %230 = icmp slt i64 %227, %76, !dbg !4138
  br i1 %230, label %237, label %231, !dbg !4140

; <label>:231:                                    ; preds = %226
  %232 = udiv i64 9223372036854775807, %59, !dbg !4141
  %233 = icmp slt i64 %232, %227, !dbg !4142
  %234 = mul nsw i64 %227, %59, !dbg !4143
  %235 = select i1 %233, i64 9223372036854775807, i64 %234, !dbg !4144
  %236 = zext i1 %233 to i32, !dbg !4144
  br label %237, !dbg !4144

; <label>:237:                                    ; preds = %231, %226
  %238 = phi i64 [ -9223372036854775808, %226 ], [ %235, %231 ]
  %239 = phi i32 [ 1, %226 ], [ %236, %231 ], !dbg !4145
  %240 = or i32 %239, %229, !dbg !4246
  call void @llvm.dbg.value(metadata i32 %240, metadata !4134, metadata !DIExpression()), !dbg !4137
  call void @llvm.dbg.value(metadata i32 1, metadata !4127, metadata !DIExpression()), !dbg !4135
  call void @llvm.dbg.value(metadata i32 %240, metadata !4134, metadata !DIExpression()), !dbg !4137
  call void @llvm.dbg.value(metadata i32 1, metadata !4127, metadata !DIExpression()), !dbg !4135
  %241 = icmp slt i64 %238, %76, !dbg !4138
  br i1 %241, label %248, label %242, !dbg !4140

; <label>:242:                                    ; preds = %237
  %243 = udiv i64 9223372036854775807, %59, !dbg !4141
  %244 = icmp slt i64 %243, %238, !dbg !4142
  %245 = mul nsw i64 %238, %59, !dbg !4143
  %246 = select i1 %244, i64 9223372036854775807, i64 %245, !dbg !4144
  %247 = zext i1 %244 to i32, !dbg !4144
  br label %248, !dbg !4144

; <label>:248:                                    ; preds = %242, %237
  %249 = phi i64 [ -9223372036854775808, %237 ], [ %246, %242 ], !dbg !4232
  %250 = phi i32 [ 1, %237 ], [ %247, %242 ], !dbg !4145
  %251 = or i32 %250, %240, !dbg !4246
  call void @llvm.dbg.value(metadata i32 %251, metadata !4134, metadata !DIExpression()), !dbg !4137
  call void @llvm.dbg.value(metadata i32 0, metadata !4127, metadata !DIExpression()), !dbg !4135
  br label %184, !dbg !4234

; <label>:252:                                    ; preds = %97
  %253 = udiv i64 9223372036854775807, %59, !dbg !4152
  %254 = icmp slt i64 %253, %98, !dbg !4153
  %255 = mul nsw i64 %98, %59, !dbg !4154
  %256 = select i1 %254, i64 9223372036854775807, i64 %255, !dbg !4155
  %257 = zext i1 %254 to i32, !dbg !4155
  br label %258, !dbg !4155

; <label>:258:                                    ; preds = %252, %97
  %259 = phi i64 [ -9223372036854775808, %97 ], [ %256, %252 ]
  %260 = phi i32 [ 1, %97 ], [ %257, %252 ], !dbg !4156
  %261 = or i32 %260, %99, !dbg !4247
  call void @llvm.dbg.value(metadata i32 %261, metadata !4134, metadata !DIExpression()), !dbg !4148
  call void @llvm.dbg.value(metadata i32 1, metadata !4127, metadata !DIExpression()), !dbg !4146
  call void @llvm.dbg.value(metadata i32 %261, metadata !4134, metadata !DIExpression()), !dbg !4148
  call void @llvm.dbg.value(metadata i32 1, metadata !4127, metadata !DIExpression()), !dbg !4146
  %262 = icmp slt i64 %259, %89, !dbg !4149
  br i1 %262, label %269, label %263, !dbg !4151

; <label>:263:                                    ; preds = %258
  %264 = udiv i64 9223372036854775807, %59, !dbg !4152
  %265 = icmp slt i64 %264, %259, !dbg !4153
  %266 = mul nsw i64 %259, %59, !dbg !4154
  %267 = select i1 %265, i64 9223372036854775807, i64 %266, !dbg !4155
  %268 = zext i1 %265 to i32, !dbg !4155
  br label %269, !dbg !4155

; <label>:269:                                    ; preds = %263, %258
  %270 = phi i64 [ -9223372036854775808, %258 ], [ %267, %263 ], !dbg !4232
  %271 = phi i32 [ 1, %258 ], [ %268, %263 ], !dbg !4156
  %272 = or i32 %271, %261, !dbg !4247
  call void @llvm.dbg.value(metadata i32 %272, metadata !4134, metadata !DIExpression()), !dbg !4148
  call void @llvm.dbg.value(metadata i32 0, metadata !4127, metadata !DIExpression()), !dbg !4146
  br label %184, !dbg !4234

; <label>:273:                                    ; preds = %119
  %274 = udiv i64 9223372036854775807, %59, !dbg !4173
  %275 = icmp slt i64 %274, %120, !dbg !4174
  %276 = mul nsw i64 %120, %59, !dbg !4175
  %277 = select i1 %275, i64 9223372036854775807, i64 %276, !dbg !4176
  %278 = zext i1 %275 to i32, !dbg !4176
  br label %279, !dbg !4176

; <label>:279:                                    ; preds = %273, %119
  %280 = phi i64 [ -9223372036854775808, %119 ], [ %277, %273 ], !dbg !4232
  %281 = phi i32 [ 1, %119 ], [ %278, %273 ], !dbg !4177
  %282 = or i32 %281, %121, !dbg !4248
  call void @llvm.dbg.value(metadata i32 %282, metadata !4134, metadata !DIExpression()), !dbg !4169
  call void @llvm.dbg.value(metadata i32 0, metadata !4127, metadata !DIExpression()), !dbg !4167
  br label %184, !dbg !4234

; <label>:283:                                    ; preds = %132
  %284 = udiv i64 9223372036854775807, %59, !dbg !4184
  %285 = icmp slt i64 %284, %133, !dbg !4185
  %286 = mul nsw i64 %133, %59, !dbg !4186
  %287 = select i1 %285, i64 9223372036854775807, i64 %286, !dbg !4187
  %288 = zext i1 %285 to i32, !dbg !4187
  br label %289, !dbg !4187

; <label>:289:                                    ; preds = %283, %132
  %290 = phi i64 [ -9223372036854775808, %132 ], [ %287, %283 ]
  %291 = phi i32 [ 1, %132 ], [ %288, %283 ], !dbg !4188
  %292 = or i32 %291, %134, !dbg !4249
  call void @llvm.dbg.value(metadata i32 %292, metadata !4134, metadata !DIExpression()), !dbg !4180
  call void @llvm.dbg.value(metadata i32 3, metadata !4127, metadata !DIExpression()), !dbg !4178
  call void @llvm.dbg.value(metadata i32 %292, metadata !4134, metadata !DIExpression()), !dbg !4180
  call void @llvm.dbg.value(metadata i32 3, metadata !4127, metadata !DIExpression()), !dbg !4178
  %293 = icmp slt i64 %290, %124, !dbg !4181
  br i1 %293, label %300, label %294, !dbg !4183

; <label>:294:                                    ; preds = %289
  %295 = udiv i64 9223372036854775807, %59, !dbg !4184
  %296 = icmp slt i64 %295, %290, !dbg !4185
  %297 = mul nsw i64 %290, %59, !dbg !4186
  %298 = select i1 %296, i64 9223372036854775807, i64 %297, !dbg !4187
  %299 = zext i1 %296 to i32, !dbg !4187
  br label %300, !dbg !4187

; <label>:300:                                    ; preds = %294, %289
  %301 = phi i64 [ -9223372036854775808, %289 ], [ %298, %294 ]
  %302 = phi i32 [ 1, %289 ], [ %299, %294 ], !dbg !4188
  %303 = or i32 %302, %292, !dbg !4249
  call void @llvm.dbg.value(metadata i32 %303, metadata !4134, metadata !DIExpression()), !dbg !4180
  call void @llvm.dbg.value(metadata i32 2, metadata !4127, metadata !DIExpression()), !dbg !4178
  call void @llvm.dbg.value(metadata i32 %303, metadata !4134, metadata !DIExpression()), !dbg !4180
  call void @llvm.dbg.value(metadata i32 2, metadata !4127, metadata !DIExpression()), !dbg !4178
  %304 = icmp slt i64 %301, %124, !dbg !4181
  br i1 %304, label %311, label %305, !dbg !4183

; <label>:305:                                    ; preds = %300
  %306 = udiv i64 9223372036854775807, %59, !dbg !4184
  %307 = icmp slt i64 %306, %301, !dbg !4185
  %308 = mul nsw i64 %301, %59, !dbg !4186
  %309 = select i1 %307, i64 9223372036854775807, i64 %308, !dbg !4187
  %310 = zext i1 %307 to i32, !dbg !4187
  br label %311, !dbg !4187

; <label>:311:                                    ; preds = %305, %300
  %312 = phi i64 [ -9223372036854775808, %300 ], [ %309, %305 ]
  %313 = phi i32 [ 1, %300 ], [ %310, %305 ], !dbg !4188
  %314 = or i32 %313, %303, !dbg !4249
  call void @llvm.dbg.value(metadata i32 %314, metadata !4134, metadata !DIExpression()), !dbg !4180
  call void @llvm.dbg.value(metadata i32 1, metadata !4127, metadata !DIExpression()), !dbg !4178
  call void @llvm.dbg.value(metadata i32 %314, metadata !4134, metadata !DIExpression()), !dbg !4180
  call void @llvm.dbg.value(metadata i32 1, metadata !4127, metadata !DIExpression()), !dbg !4178
  %315 = icmp slt i64 %312, %124, !dbg !4181
  br i1 %315, label %322, label %316, !dbg !4183

; <label>:316:                                    ; preds = %311
  %317 = udiv i64 9223372036854775807, %59, !dbg !4184
  %318 = icmp slt i64 %317, %312, !dbg !4185
  %319 = mul nsw i64 %312, %59, !dbg !4186
  %320 = select i1 %318, i64 9223372036854775807, i64 %319, !dbg !4187
  %321 = zext i1 %318 to i32, !dbg !4187
  br label %322, !dbg !4187

; <label>:322:                                    ; preds = %316, %311
  %323 = phi i64 [ -9223372036854775808, %311 ], [ %320, %316 ], !dbg !4232
  %324 = phi i32 [ 1, %311 ], [ %321, %316 ], !dbg !4188
  %325 = or i32 %324, %314, !dbg !4249
  call void @llvm.dbg.value(metadata i32 %325, metadata !4134, metadata !DIExpression()), !dbg !4180
  call void @llvm.dbg.value(metadata i32 0, metadata !4127, metadata !DIExpression()), !dbg !4178
  br label %184, !dbg !4234

; <label>:326:                                    ; preds = %145
  %327 = udiv i64 9223372036854775807, %59, !dbg !4195
  %328 = icmp slt i64 %327, %146, !dbg !4196
  %329 = mul nsw i64 %146, %59, !dbg !4197
  %330 = select i1 %328, i64 9223372036854775807, i64 %329, !dbg !4198
  %331 = zext i1 %328 to i32, !dbg !4198
  br label %332, !dbg !4198

; <label>:332:                                    ; preds = %326, %145
  %333 = phi i64 [ -9223372036854775808, %145 ], [ %330, %326 ]
  %334 = phi i32 [ 1, %145 ], [ %331, %326 ], !dbg !4199
  %335 = or i32 %334, %147, !dbg !4250
  call void @llvm.dbg.value(metadata i32 %335, metadata !4134, metadata !DIExpression()), !dbg !4191
  call void @llvm.dbg.value(metadata i32 2, metadata !4127, metadata !DIExpression()), !dbg !4189
  call void @llvm.dbg.value(metadata i32 %335, metadata !4134, metadata !DIExpression()), !dbg !4191
  call void @llvm.dbg.value(metadata i32 2, metadata !4127, metadata !DIExpression()), !dbg !4189
  %336 = icmp slt i64 %333, %137, !dbg !4192
  br i1 %336, label %343, label %337, !dbg !4194

; <label>:337:                                    ; preds = %332
  %338 = udiv i64 9223372036854775807, %59, !dbg !4195
  %339 = icmp slt i64 %338, %333, !dbg !4196
  %340 = mul nsw i64 %333, %59, !dbg !4197
  %341 = select i1 %339, i64 9223372036854775807, i64 %340, !dbg !4198
  %342 = zext i1 %339 to i32, !dbg !4198
  br label %343, !dbg !4198

; <label>:343:                                    ; preds = %337, %332
  %344 = phi i64 [ -9223372036854775808, %332 ], [ %341, %337 ]
  %345 = phi i32 [ 1, %332 ], [ %342, %337 ], !dbg !4199
  %346 = or i32 %345, %335, !dbg !4250
  call void @llvm.dbg.value(metadata i32 %346, metadata !4134, metadata !DIExpression()), !dbg !4191
  call void @llvm.dbg.value(metadata i32 1, metadata !4127, metadata !DIExpression()), !dbg !4189
  call void @llvm.dbg.value(metadata i32 %346, metadata !4134, metadata !DIExpression()), !dbg !4191
  call void @llvm.dbg.value(metadata i32 1, metadata !4127, metadata !DIExpression()), !dbg !4189
  %347 = icmp slt i64 %344, %137, !dbg !4192
  br i1 %347, label %354, label %348, !dbg !4194

; <label>:348:                                    ; preds = %343
  %349 = udiv i64 9223372036854775807, %59, !dbg !4195
  %350 = icmp slt i64 %349, %344, !dbg !4196
  %351 = mul nsw i64 %344, %59, !dbg !4197
  %352 = select i1 %350, i64 9223372036854775807, i64 %351, !dbg !4198
  %353 = zext i1 %350 to i32, !dbg !4198
  br label %354, !dbg !4198

; <label>:354:                                    ; preds = %348, %343
  %355 = phi i64 [ -9223372036854775808, %343 ], [ %352, %348 ], !dbg !4232
  %356 = phi i32 [ 1, %343 ], [ %353, %348 ], !dbg !4199
  %357 = or i32 %356, %346, !dbg !4250
  call void @llvm.dbg.value(metadata i32 %357, metadata !4134, metadata !DIExpression()), !dbg !4191
  call void @llvm.dbg.value(metadata i32 0, metadata !4127, metadata !DIExpression()), !dbg !4189
  br label %184, !dbg !4234

; <label>:358:                                    ; preds = %165
  %359 = udiv i64 9223372036854775807, %59, !dbg !4213
  %360 = icmp slt i64 %359, %166, !dbg !4214
  %361 = mul nsw i64 %166, %59, !dbg !4215
  %362 = select i1 %360, i64 9223372036854775807, i64 %361, !dbg !4216
  %363 = zext i1 %360 to i32, !dbg !4216
  br label %364, !dbg !4216

; <label>:364:                                    ; preds = %358, %165
  %365 = phi i64 [ -9223372036854775808, %165 ], [ %362, %358 ]
  %366 = phi i32 [ 1, %165 ], [ %363, %358 ], !dbg !4217
  %367 = or i32 %366, %167, !dbg !4251
  call void @llvm.dbg.value(metadata i32 %367, metadata !4134, metadata !DIExpression()), !dbg !4209
  call void @llvm.dbg.value(metadata i32 6, metadata !4127, metadata !DIExpression()), !dbg !4207
  call void @llvm.dbg.value(metadata i32 %367, metadata !4134, metadata !DIExpression()), !dbg !4209
  call void @llvm.dbg.value(metadata i32 6, metadata !4127, metadata !DIExpression()), !dbg !4207
  %368 = icmp slt i64 %365, %157, !dbg !4210
  br i1 %368, label %375, label %369, !dbg !4212

; <label>:369:                                    ; preds = %364
  %370 = udiv i64 9223372036854775807, %59, !dbg !4213
  %371 = icmp slt i64 %370, %365, !dbg !4214
  %372 = mul nsw i64 %365, %59, !dbg !4215
  %373 = select i1 %371, i64 9223372036854775807, i64 %372, !dbg !4216
  %374 = zext i1 %371 to i32, !dbg !4216
  br label %375, !dbg !4216

; <label>:375:                                    ; preds = %369, %364
  %376 = phi i64 [ -9223372036854775808, %364 ], [ %373, %369 ]
  %377 = phi i32 [ 1, %364 ], [ %374, %369 ], !dbg !4217
  %378 = or i32 %377, %367, !dbg !4251
  call void @llvm.dbg.value(metadata i32 %378, metadata !4134, metadata !DIExpression()), !dbg !4209
  call void @llvm.dbg.value(metadata i32 5, metadata !4127, metadata !DIExpression()), !dbg !4207
  call void @llvm.dbg.value(metadata i32 %378, metadata !4134, metadata !DIExpression()), !dbg !4209
  call void @llvm.dbg.value(metadata i32 5, metadata !4127, metadata !DIExpression()), !dbg !4207
  %379 = icmp slt i64 %376, %157, !dbg !4210
  br i1 %379, label %386, label %380, !dbg !4212

; <label>:380:                                    ; preds = %375
  %381 = udiv i64 9223372036854775807, %59, !dbg !4213
  %382 = icmp slt i64 %381, %376, !dbg !4214
  %383 = mul nsw i64 %376, %59, !dbg !4215
  %384 = select i1 %382, i64 9223372036854775807, i64 %383, !dbg !4216
  %385 = zext i1 %382 to i32, !dbg !4216
  br label %386, !dbg !4216

; <label>:386:                                    ; preds = %380, %375
  %387 = phi i64 [ -9223372036854775808, %375 ], [ %384, %380 ]
  %388 = phi i32 [ 1, %375 ], [ %385, %380 ], !dbg !4217
  %389 = or i32 %388, %378, !dbg !4251
  call void @llvm.dbg.value(metadata i32 %389, metadata !4134, metadata !DIExpression()), !dbg !4209
  call void @llvm.dbg.value(metadata i32 4, metadata !4127, metadata !DIExpression()), !dbg !4207
  call void @llvm.dbg.value(metadata i32 %389, metadata !4134, metadata !DIExpression()), !dbg !4209
  call void @llvm.dbg.value(metadata i32 4, metadata !4127, metadata !DIExpression()), !dbg !4207
  %390 = icmp slt i64 %387, %157, !dbg !4210
  br i1 %390, label %397, label %391, !dbg !4212

; <label>:391:                                    ; preds = %386
  %392 = udiv i64 9223372036854775807, %59, !dbg !4213
  %393 = icmp slt i64 %392, %387, !dbg !4214
  %394 = mul nsw i64 %387, %59, !dbg !4215
  %395 = select i1 %393, i64 9223372036854775807, i64 %394, !dbg !4216
  %396 = zext i1 %393 to i32, !dbg !4216
  br label %397, !dbg !4216

; <label>:397:                                    ; preds = %391, %386
  %398 = phi i64 [ -9223372036854775808, %386 ], [ %395, %391 ]
  %399 = phi i32 [ 1, %386 ], [ %396, %391 ], !dbg !4217
  %400 = or i32 %399, %389, !dbg !4251
  call void @llvm.dbg.value(metadata i32 %400, metadata !4134, metadata !DIExpression()), !dbg !4209
  call void @llvm.dbg.value(metadata i32 3, metadata !4127, metadata !DIExpression()), !dbg !4207
  call void @llvm.dbg.value(metadata i32 %400, metadata !4134, metadata !DIExpression()), !dbg !4209
  call void @llvm.dbg.value(metadata i32 3, metadata !4127, metadata !DIExpression()), !dbg !4207
  %401 = icmp slt i64 %398, %157, !dbg !4210
  br i1 %401, label %408, label %402, !dbg !4212

; <label>:402:                                    ; preds = %397
  %403 = udiv i64 9223372036854775807, %59, !dbg !4213
  %404 = icmp slt i64 %403, %398, !dbg !4214
  %405 = mul nsw i64 %398, %59, !dbg !4215
  %406 = select i1 %404, i64 9223372036854775807, i64 %405, !dbg !4216
  %407 = zext i1 %404 to i32, !dbg !4216
  br label %408, !dbg !4216

; <label>:408:                                    ; preds = %402, %397
  %409 = phi i64 [ -9223372036854775808, %397 ], [ %406, %402 ]
  %410 = phi i32 [ 1, %397 ], [ %407, %402 ], !dbg !4217
  %411 = or i32 %410, %400, !dbg !4251
  call void @llvm.dbg.value(metadata i32 %411, metadata !4134, metadata !DIExpression()), !dbg !4209
  call void @llvm.dbg.value(metadata i32 2, metadata !4127, metadata !DIExpression()), !dbg !4207
  call void @llvm.dbg.value(metadata i32 %411, metadata !4134, metadata !DIExpression()), !dbg !4209
  call void @llvm.dbg.value(metadata i32 2, metadata !4127, metadata !DIExpression()), !dbg !4207
  %412 = icmp slt i64 %409, %157, !dbg !4210
  br i1 %412, label %419, label %413, !dbg !4212

; <label>:413:                                    ; preds = %408
  %414 = udiv i64 9223372036854775807, %59, !dbg !4213
  %415 = icmp slt i64 %414, %409, !dbg !4214
  %416 = mul nsw i64 %409, %59, !dbg !4215
  %417 = select i1 %415, i64 9223372036854775807, i64 %416, !dbg !4216
  %418 = zext i1 %415 to i32, !dbg !4216
  br label %419, !dbg !4216

; <label>:419:                                    ; preds = %413, %408
  %420 = phi i64 [ -9223372036854775808, %408 ], [ %417, %413 ]
  %421 = phi i32 [ 1, %408 ], [ %418, %413 ], !dbg !4217
  %422 = or i32 %421, %411, !dbg !4251
  call void @llvm.dbg.value(metadata i32 %422, metadata !4134, metadata !DIExpression()), !dbg !4209
  call void @llvm.dbg.value(metadata i32 1, metadata !4127, metadata !DIExpression()), !dbg !4207
  call void @llvm.dbg.value(metadata i32 %422, metadata !4134, metadata !DIExpression()), !dbg !4209
  call void @llvm.dbg.value(metadata i32 1, metadata !4127, metadata !DIExpression()), !dbg !4207
  %423 = icmp slt i64 %420, %157, !dbg !4210
  br i1 %423, label %430, label %424, !dbg !4212

; <label>:424:                                    ; preds = %419
  %425 = udiv i64 9223372036854775807, %59, !dbg !4213
  %426 = icmp slt i64 %425, %420, !dbg !4214
  %427 = mul nsw i64 %420, %59, !dbg !4215
  %428 = select i1 %426, i64 9223372036854775807, i64 %427, !dbg !4216
  %429 = zext i1 %426 to i32, !dbg !4216
  br label %430, !dbg !4216

; <label>:430:                                    ; preds = %424, %419
  %431 = phi i64 [ -9223372036854775808, %419 ], [ %428, %424 ], !dbg !4232
  %432 = phi i32 [ 1, %419 ], [ %429, %424 ], !dbg !4217
  %433 = or i32 %432, %422, !dbg !4251
  call void @llvm.dbg.value(metadata i32 %433, metadata !4134, metadata !DIExpression()), !dbg !4209
  call void @llvm.dbg.value(metadata i32 0, metadata !4127, metadata !DIExpression()), !dbg !4207
  br label %184, !dbg !4234

; <label>:434:                                    ; preds = %178
  %435 = udiv i64 9223372036854775807, %59, !dbg !4224
  %436 = icmp slt i64 %435, %179, !dbg !4225
  %437 = mul nsw i64 %179, %59, !dbg !4226
  %438 = select i1 %436, i64 9223372036854775807, i64 %437, !dbg !4227
  %439 = zext i1 %436 to i32, !dbg !4227
  br label %440, !dbg !4227

; <label>:440:                                    ; preds = %434, %178
  %441 = phi i64 [ -9223372036854775808, %178 ], [ %438, %434 ]
  %442 = phi i32 [ 1, %178 ], [ %439, %434 ], !dbg !4228
  %443 = or i32 %442, %180, !dbg !4252
  call void @llvm.dbg.value(metadata i32 %443, metadata !4134, metadata !DIExpression()), !dbg !4220
  call void @llvm.dbg.value(metadata i32 5, metadata !4127, metadata !DIExpression()), !dbg !4218
  call void @llvm.dbg.value(metadata i32 %443, metadata !4134, metadata !DIExpression()), !dbg !4220
  call void @llvm.dbg.value(metadata i32 5, metadata !4127, metadata !DIExpression()), !dbg !4218
  %444 = icmp slt i64 %441, %170, !dbg !4221
  br i1 %444, label %451, label %445, !dbg !4223

; <label>:445:                                    ; preds = %440
  %446 = udiv i64 9223372036854775807, %59, !dbg !4224
  %447 = icmp slt i64 %446, %441, !dbg !4225
  %448 = mul nsw i64 %441, %59, !dbg !4226
  %449 = select i1 %447, i64 9223372036854775807, i64 %448, !dbg !4227
  %450 = zext i1 %447 to i32, !dbg !4227
  br label %451, !dbg !4227

; <label>:451:                                    ; preds = %445, %440
  %452 = phi i64 [ -9223372036854775808, %440 ], [ %449, %445 ]
  %453 = phi i32 [ 1, %440 ], [ %450, %445 ], !dbg !4228
  %454 = or i32 %453, %443, !dbg !4252
  call void @llvm.dbg.value(metadata i32 %454, metadata !4134, metadata !DIExpression()), !dbg !4220
  call void @llvm.dbg.value(metadata i32 4, metadata !4127, metadata !DIExpression()), !dbg !4218
  call void @llvm.dbg.value(metadata i32 %454, metadata !4134, metadata !DIExpression()), !dbg !4220
  call void @llvm.dbg.value(metadata i32 4, metadata !4127, metadata !DIExpression()), !dbg !4218
  %455 = icmp slt i64 %452, %170, !dbg !4221
  br i1 %455, label %462, label %456, !dbg !4223

; <label>:456:                                    ; preds = %451
  %457 = udiv i64 9223372036854775807, %59, !dbg !4224
  %458 = icmp slt i64 %457, %452, !dbg !4225
  %459 = mul nsw i64 %452, %59, !dbg !4226
  %460 = select i1 %458, i64 9223372036854775807, i64 %459, !dbg !4227
  %461 = zext i1 %458 to i32, !dbg !4227
  br label %462, !dbg !4227

; <label>:462:                                    ; preds = %456, %451
  %463 = phi i64 [ -9223372036854775808, %451 ], [ %460, %456 ]
  %464 = phi i32 [ 1, %451 ], [ %461, %456 ], !dbg !4228
  %465 = or i32 %464, %454, !dbg !4252
  call void @llvm.dbg.value(metadata i32 %465, metadata !4134, metadata !DIExpression()), !dbg !4220
  call void @llvm.dbg.value(metadata i32 3, metadata !4127, metadata !DIExpression()), !dbg !4218
  call void @llvm.dbg.value(metadata i32 %465, metadata !4134, metadata !DIExpression()), !dbg !4220
  call void @llvm.dbg.value(metadata i32 3, metadata !4127, metadata !DIExpression()), !dbg !4218
  %466 = icmp slt i64 %463, %170, !dbg !4221
  br i1 %466, label %473, label %467, !dbg !4223

; <label>:467:                                    ; preds = %462
  %468 = udiv i64 9223372036854775807, %59, !dbg !4224
  %469 = icmp slt i64 %468, %463, !dbg !4225
  %470 = mul nsw i64 %463, %59, !dbg !4226
  %471 = select i1 %469, i64 9223372036854775807, i64 %470, !dbg !4227
  %472 = zext i1 %469 to i32, !dbg !4227
  br label %473, !dbg !4227

; <label>:473:                                    ; preds = %467, %462
  %474 = phi i64 [ -9223372036854775808, %462 ], [ %471, %467 ]
  %475 = phi i32 [ 1, %462 ], [ %472, %467 ], !dbg !4228
  %476 = or i32 %475, %465, !dbg !4252
  call void @llvm.dbg.value(metadata i32 %476, metadata !4134, metadata !DIExpression()), !dbg !4220
  call void @llvm.dbg.value(metadata i32 2, metadata !4127, metadata !DIExpression()), !dbg !4218
  call void @llvm.dbg.value(metadata i32 %476, metadata !4134, metadata !DIExpression()), !dbg !4220
  call void @llvm.dbg.value(metadata i32 2, metadata !4127, metadata !DIExpression()), !dbg !4218
  %477 = icmp slt i64 %474, %170, !dbg !4221
  br i1 %477, label %484, label %478, !dbg !4223

; <label>:478:                                    ; preds = %473
  %479 = udiv i64 9223372036854775807, %59, !dbg !4224
  %480 = icmp slt i64 %479, %474, !dbg !4225
  %481 = mul nsw i64 %474, %59, !dbg !4226
  %482 = select i1 %480, i64 9223372036854775807, i64 %481, !dbg !4227
  %483 = zext i1 %480 to i32, !dbg !4227
  br label %484, !dbg !4227

; <label>:484:                                    ; preds = %478, %473
  %485 = phi i64 [ -9223372036854775808, %473 ], [ %482, %478 ]
  %486 = phi i32 [ 1, %473 ], [ %483, %478 ], !dbg !4228
  %487 = or i32 %486, %476, !dbg !4252
  call void @llvm.dbg.value(metadata i32 %487, metadata !4134, metadata !DIExpression()), !dbg !4220
  call void @llvm.dbg.value(metadata i32 1, metadata !4127, metadata !DIExpression()), !dbg !4218
  call void @llvm.dbg.value(metadata i32 %487, metadata !4134, metadata !DIExpression()), !dbg !4220
  call void @llvm.dbg.value(metadata i32 1, metadata !4127, metadata !DIExpression()), !dbg !4218
  %488 = icmp slt i64 %485, %170, !dbg !4221
  br i1 %488, label %495, label %489, !dbg !4223

; <label>:489:                                    ; preds = %484
  %490 = udiv i64 9223372036854775807, %59, !dbg !4224
  %491 = icmp slt i64 %490, %485, !dbg !4225
  %492 = mul nsw i64 %485, %59, !dbg !4226
  %493 = select i1 %491, i64 9223372036854775807, i64 %492, !dbg !4227
  %494 = zext i1 %491 to i32, !dbg !4227
  br label %495, !dbg !4227

; <label>:495:                                    ; preds = %489, %484
  %496 = phi i64 [ -9223372036854775808, %484 ], [ %493, %489 ], !dbg !4232
  %497 = phi i32 [ 1, %484 ], [ %494, %489 ], !dbg !4228
  %498 = or i32 %497, %487, !dbg !4252
  call void @llvm.dbg.value(metadata i32 %498, metadata !4134, metadata !DIExpression()), !dbg !4220
  call void @llvm.dbg.value(metadata i32 0, metadata !4127, metadata !DIExpression()), !dbg !4218
  br label %184, !dbg !4234
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #6

; Function Attrs: nounwind
declare i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #7 !dbg !4253 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4256, metadata !DIExpression()), !dbg !4262
  call void @llvm.dbg.value(metadata i64 %1, metadata !4257, metadata !DIExpression()), !dbg !4263
  %3 = icmp eq i64 %0, 0, !dbg !4264
  %4 = icmp eq i64 %1, 0, !dbg !4265
  %5 = or i1 %3, %4, !dbg !4266
  br i1 %5, label %12, label %6, !dbg !4266

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4267
  call void @llvm.dbg.value(metadata i64 %7, metadata !4259, metadata !DIExpression()), !dbg !4268
  %8 = udiv i64 %7, %1, !dbg !4269
  %9 = icmp eq i64 %8, %0, !dbg !4271
  br i1 %9, label %12, label %10, !dbg !4272

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !4273
  store i32 12, i32* %11, align 4, !dbg !4275, !tbaa !901
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %14, metadata !4256, metadata !DIExpression()), !dbg !4262
  call void @llvm.dbg.value(metadata i64 %13, metadata !4257, metadata !DIExpression()), !dbg !4263
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #11, !dbg !4276
  call void @llvm.dbg.value(metadata i8* %15, metadata !4258, metadata !DIExpression()), !dbg !4277
  br label %16, !dbg !4278

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ], !dbg !4279
  ret i8* %17, !dbg !4280
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #7 !dbg !4281 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4320, metadata !DIExpression()), !dbg !4324
  call void @llvm.dbg.value(metadata i32 0, metadata !4321, metadata !DIExpression()), !dbg !4325
  call void @llvm.dbg.value(metadata i32 0, metadata !4323, metadata !DIExpression()), !dbg !4326
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !4327
  call void @llvm.dbg.value(metadata i32 %2, metadata !4322, metadata !DIExpression()), !dbg !4328
  %3 = icmp slt i32 %2, 0, !dbg !4329
  br i1 %3, label %4, label %6, !dbg !4331

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4332
  br label %24, !dbg !4333

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !4334
  %8 = icmp eq i32 %7, 0, !dbg !4334
  br i1 %8, label %13, label %9, !dbg !4336

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !4337
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #11, !dbg !4338
  %12 = icmp eq i64 %11, -1, !dbg !4339
  br i1 %12, label %16, label %13, !dbg !4340

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #11, !dbg !4341
  %15 = icmp eq i32 %14, 0, !dbg !4341
  br i1 %15, label %16, label %18, !dbg !4342

; <label>:16:                                     ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !4321, metadata !DIExpression()), !dbg !4325
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4343
  call void @llvm.dbg.value(metadata i32 %21, metadata !4323, metadata !DIExpression()), !dbg !4326
  br label %24, !dbg !4344

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !4345
  %20 = load i32, i32* %19, align 4, !dbg !4345, !tbaa !901
  call void @llvm.dbg.value(metadata i32 %20, metadata !4321, metadata !DIExpression()), !dbg !4325
  call void @llvm.dbg.value(metadata i32 %20, metadata !4321, metadata !DIExpression()), !dbg !4325
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4343
  call void @llvm.dbg.value(metadata i32 %21, metadata !4323, metadata !DIExpression()), !dbg !4326
  %22 = icmp eq i32 %20, 0, !dbg !4346
  br i1 %22, label %24, label %23, !dbg !4344

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4348, !tbaa !901
  call void @llvm.dbg.value(metadata i32 -1, metadata !4323, metadata !DIExpression()), !dbg !4326
  br label %24, !dbg !4350

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4351
  ret i32 %25, !dbg !4352
}

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !4353 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4392, metadata !DIExpression()), !dbg !4393
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4394
  br i1 %2, label %6, label %3, !dbg !4396

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !4397
  %5 = icmp eq i32 %4, 0, !dbg !4397
  br i1 %5, label %6, label %8, !dbg !4398

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4399
  br label %17, !dbg !4400

; <label>:8:                                      ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4401, metadata !DIExpression()) #11, !dbg !4406
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4408
  %10 = load i32, i32* %9, align 8, !dbg !4408, !tbaa !1350
  %11 = and i32 %10, 256, !dbg !4410
  %12 = icmp eq i32 %11, 0, !dbg !4410
  br i1 %12, label %15, label %13, !dbg !4411

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #11, !dbg !4412
  br label %15, !dbg !4412

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4413
  br label %17, !dbg !4414

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !4415
  ret i32 %18, !dbg !4416
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #7 !dbg !4417 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4456, metadata !DIExpression()), !dbg !4462
  call void @llvm.dbg.value(metadata i64 %1, metadata !4457, metadata !DIExpression()), !dbg !4463
  call void @llvm.dbg.value(metadata i32 %2, metadata !4458, metadata !DIExpression()), !dbg !4464
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4465
  %5 = load i8*, i8** %4, align 8, !dbg !4465, !tbaa !1600
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4466
  %7 = load i8*, i8** %6, align 8, !dbg !4466, !tbaa !1599
  %8 = icmp eq i8* %5, %7, !dbg !4467
  br i1 %8, label %9, label %28, !dbg !4468

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4469
  %11 = load i8*, i8** %10, align 8, !dbg !4469, !tbaa !1224
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4470
  %13 = load i8*, i8** %12, align 8, !dbg !4470, !tbaa !4471
  %14 = icmp eq i8* %11, %13, !dbg !4472
  br i1 %14, label %15, label %28, !dbg !4473

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4474
  %17 = load i8*, i8** %16, align 8, !dbg !4474, !tbaa !4475
  %18 = icmp eq i8* %17, null, !dbg !4476
  br i1 %18, label %19, label %28, !dbg !4477

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !4478
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #11, !dbg !4479
  call void @llvm.dbg.value(metadata i64 %21, metadata !4459, metadata !DIExpression()), !dbg !4480
  %22 = icmp eq i64 %21, -1, !dbg !4481
  br i1 %22, label %30, label %23, !dbg !4483

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4484
  %25 = load i32, i32* %24, align 8, !dbg !4485, !tbaa !1350
  %26 = and i32 %25, -17, !dbg !4485
  store i32 %26, i32* %24, align 8, !dbg !4485, !tbaa !1350
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4486
  store i64 %21, i64* %27, align 8, !dbg !4487, !tbaa !4488
  br label %30, !dbg !4489

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4490
  br label %30, !dbg !4491

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !4492
  ret i32 %31, !dbg !4493
}

; Function Attrs: nounwind
declare i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #7 !dbg !4494 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !4511, metadata !DIExpression()), !dbg !4520
  call void @llvm.dbg.value(metadata i8* %1, metadata !4512, metadata !DIExpression()), !dbg !4521
  call void @llvm.dbg.value(metadata i64 %2, metadata !4513, metadata !DIExpression()), !dbg !4522
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !4514, metadata !DIExpression()), !dbg !4523
  %6 = bitcast i32* %5 to i8*, !dbg !4524
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #11, !dbg !4524
  %7 = icmp eq i32* %0, null, !dbg !4525
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4527
  call void @llvm.dbg.value(metadata i32* %8, metadata !4511, metadata !DIExpression()), !dbg !4520
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #11, !dbg !4528
  call void @llvm.dbg.value(metadata i64 %9, metadata !4515, metadata !DIExpression()), !dbg !4529
  %10 = icmp ugt i64 %9, -3, !dbg !4530
  %11 = icmp ne i64 %2, 0, !dbg !4531
  %12 = and i1 %11, %10, !dbg !4532
  br i1 %12, label %13, label %18, !dbg !4532

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #11, !dbg !4533
  br i1 %14, label %18, label %15, !dbg !4534

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4535, !tbaa !1002
  call void @llvm.dbg.value(metadata i8 %16, metadata !4517, metadata !DIExpression()), !dbg !4536
  %17 = zext i8 %16 to i32, !dbg !4537
  store i32 %17, i32* %8, align 4, !dbg !4538, !tbaa !901
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !4539
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #11, !dbg !4540
  ret i64 %19, !dbg !4540
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !4541 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4580, metadata !DIExpression()), !dbg !4585
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #11, !dbg !4586
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4587, metadata !DIExpression()), !dbg !4590
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4592
  %4 = load i32, i32* %3, align 8, !dbg !4592, !tbaa !1350
  %5 = and i32 %4, 32, !dbg !4592
  %6 = icmp eq i32 %5, 0, !dbg !4593
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #11, !dbg !4594
  %8 = icmp ne i32 %7, 0, !dbg !4595
  br i1 %6, label %9, label %19, !dbg !4596

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4598
  %11 = xor i1 %8, true, !dbg !4599
  %12 = or i1 %10, %11, !dbg !4599
  %13 = sext i1 %8 to i32, !dbg !4599
  br i1 %12, label %22, label %14, !dbg !4599

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !4600
  %16 = load i32, i32* %15, align 4, !dbg !4600, !tbaa !901
  %17 = icmp ne i32 %16, 9, !dbg !4601
  %18 = sext i1 %17 to i32, !dbg !4602
  br label %22, !dbg !4602

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4603

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !4605
  store i32 0, i32* %21, align 4, !dbg !4607, !tbaa !901
  br label %22, !dbg !4605

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4608
  ret i32 %23, !dbg !4609
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32) local_unnamed_addr #7 !dbg !4610 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4615, metadata !DIExpression()), !dbg !4618
  call void @llvm.dbg.value(metadata i8 1, metadata !4616, metadata !DIExpression()), !dbg !4619
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #11, !dbg !4620
  call void @llvm.dbg.value(metadata i8* %2, metadata !4617, metadata !DIExpression()), !dbg !4621
  %3 = icmp eq i8* %2, null, !dbg !4622
  br i1 %3, label %11, label %4, !dbg !4624

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.169, i64 0, i64 0)) #14, !dbg !4625
  %6 = icmp eq i32 %5, 0, !dbg !4630
  br i1 %6, label %10, label %7, !dbg !4631

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.170, i64 0, i64 0)) #14, !dbg !4632
  %9 = icmp eq i32 %8, 0, !dbg !4633
  br i1 %9, label %10, label %11, !dbg !4634

; <label>:10:                                     ; preds = %7, %4
  call void @llvm.dbg.value(metadata i8 0, metadata !4616, metadata !DIExpression()), !dbg !4619
  br label %11, !dbg !4635

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !4636
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #7 !dbg !4637 {
  %1 = tail call i8* @nl_langinfo(i32 14) #11, !dbg !4643
  call void @llvm.dbg.value(metadata i8* %1, metadata !4642, metadata !DIExpression()), !dbg !4644
  %2 = icmp eq i8* %1, null, !dbg !4645
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.173, i64 0, i64 0), i8* %1, !dbg !4647
  call void @llvm.dbg.value(metadata i8* %3, metadata !4642, metadata !DIExpression()), !dbg !4644
  %4 = load i8, i8* %3, align 1, !dbg !4648, !tbaa !1002
  %5 = icmp eq i8 %4, 0, !dbg !4652
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.174, i64 0, i64 0), i8* %3, !dbg !4653
  call void @llvm.dbg.value(metadata i8* %6, metadata !4642, metadata !DIExpression()), !dbg !4644
  ret i8* %6, !dbg !4654
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
attributes #8 = { argmemonly nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind }
attributes #12 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nounwind readonly }
attributes #15 = { noreturn nounwind }
attributes #16 = { noreturn }
attributes #17 = { nounwind readnone }
attributes #18 = { cold }

!llvm.dbg.cu = !{!2, !182, !187, !195, !280, !283, !202, !209, !286, !273, !294, !311, !313, !324, !326, !328, !330, !332, !334, !337, !339, !341}
!llvm.ident = !{!730, !730, !730, !730, !730, !730, !730, !730, !730, !730, !730, !730, !730, !730, !730, !730, !730, !730, !730, !730, !730, !730}
!llvm.module.flags = !{!731, !732, !733, !734, !735}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!1 = distinct !DIGlobalVariable(name: "have_read_stdin", scope: !2, file: !3, line: 147, type: !134, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !35, globals: !41)
!3 = !DIFile(filename: "src/nl.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4 = !{!5, !20, !29}
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
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "section", file: !3, line: 61, baseType: !7, size: 32, elements: !30)
!30 = !{!31, !32, !33, !34}
!31 = !DIEnumerator(name: "Header", value: 0, isUnsigned: true)
!32 = !DIEnumerator(name: "Body", value: 1, isUnsigned: true)
!33 = !DIEnumerator(name: "Footer", value: 2, isUnsigned: true)
!34 = !DIEnumerator(name: "Text", value: 3, isUnsigned: true)
!35 = !{!36, !38, !39, !40}
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!39 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!40 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!41 = !{!42, !46, !72, !74, !76, !81, !83, !85, !87, !89, !91, !99, !106, !107, !122, !124, !126, !128, !130, !132, !135, !137, !139, !141, !146, !148, !153, !155, !157, !162, !164, !166, !168, !170, !173}
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(name: "current_type", scope: !2, file: !3, line: 76, type: !44, isLocal: true, isDefinition: true)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(name: "body_regex", scope: !2, file: !3, line: 79, type: !48, isLocal: true, isDefinition: true)
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "re_pattern_buffer", file: !49, line: 414, size: 512, elements: !50)
!49 = !DIFile(filename: "./lib/regex.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!50 = !{!51, !54, !56, !57, !59, !60, !62, !65, !66, !67, !68, !69, !70, !71}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !48, file: !49, line: 418, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DICompositeType(tag: DW_TAG_structure_type, name: "re_dfa_t", file: !49, line: 418, flags: DIFlagFwdDecl)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !48, file: !49, line: 421, baseType: !55, size: 64, offset: 64)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "__re_long_size_t", file: !49, line: 57, baseType: !39)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !48, file: !49, line: 424, baseType: !55, size: 64, offset: 128)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "syntax", scope: !48, file: !49, line: 427, baseType: !58, size: 64, offset: 192)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_syntax_t", file: !49, line: 73, baseType: !39)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "fastmap", scope: !48, file: !49, line: 432, baseType: !36, size: 64, offset: 256)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !48, file: !49, line: 438, baseType: !61, size: 64, offset: 320)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "re_nsub", scope: !48, file: !49, line: 441, baseType: !63, size: 64, offset: 384)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !64, line: 62, baseType: !39)
!64 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!65 = !DIDerivedType(tag: DW_TAG_member, name: "can_be_null", scope: !48, file: !49, line: 447, baseType: !7, size: 1, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "regs_allocated", scope: !48, file: !49, line: 458, baseType: !7, size: 2, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "fastmap_accurate", scope: !48, file: !49, line: 462, baseType: !7, size: 1, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "no_sub", scope: !48, file: !49, line: 466, baseType: !7, size: 1, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "not_bol", scope: !48, file: !49, line: 470, baseType: !7, size: 1, offset: 453, flags: DIFlagBitField, extraData: i64 448)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "not_eol", scope: !48, file: !49, line: 473, baseType: !7, size: 1, offset: 454, flags: DIFlagBitField, extraData: i64 448)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "newline_anchor", scope: !48, file: !49, line: 476, baseType: !7, size: 1, offset: 455, flags: DIFlagBitField, extraData: i64 448)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(name: "header_regex", scope: !2, file: !3, line: 82, type: !48, isLocal: true, isDefinition: true)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(name: "footer_regex", scope: !2, file: !3, line: 85, type: !48, isLocal: true, isDefinition: true)
!76 = !DIGlobalVariableExpression(var: !77, expr: !DIExpression())
!77 = distinct !DIGlobalVariable(name: "body_fastmap", scope: !2, file: !3, line: 88, type: !78, isLocal: true, isDefinition: true)
!78 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 2048, elements: !79)
!79 = !{!80}
!80 = !DISubrange(count: 256)
!81 = !DIGlobalVariableExpression(var: !82, expr: !DIExpression())
!82 = distinct !DIGlobalVariable(name: "header_fastmap", scope: !2, file: !3, line: 89, type: !78, isLocal: true, isDefinition: true)
!83 = !DIGlobalVariableExpression(var: !84, expr: !DIExpression())
!84 = distinct !DIGlobalVariable(name: "footer_fastmap", scope: !2, file: !3, line: 90, type: !78, isLocal: true, isDefinition: true)
!85 = !DIGlobalVariableExpression(var: !86, expr: !DIExpression())
!86 = distinct !DIGlobalVariable(name: "header_del_len", scope: !2, file: !3, line: 105, type: !63, isLocal: true, isDefinition: true)
!87 = !DIGlobalVariableExpression(var: !88, expr: !DIExpression())
!88 = distinct !DIGlobalVariable(name: "body_del_len", scope: !2, file: !3, line: 111, type: !63, isLocal: true, isDefinition: true)
!89 = !DIGlobalVariableExpression(var: !90, expr: !DIExpression())
!90 = distinct !DIGlobalVariable(name: "footer_del_len", scope: !2, file: !3, line: 117, type: !63, isLocal: true, isDefinition: true)
!91 = !DIGlobalVariableExpression(var: !92, expr: !DIExpression())
!92 = distinct !DIGlobalVariable(name: "line_buf", scope: !2, file: !3, line: 120, type: !93, isLocal: true, isDefinition: true)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "linebuffer", file: !94, line: 26, size: 192, elements: !95)
!94 = !DIFile(filename: "./lib/linebuffer.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!95 = !{!96, !97, !98}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !93, file: !94, line: 28, baseType: !63, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !93, file: !94, line: 29, baseType: !63, size: 64, offset: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !93, file: !94, line: 30, baseType: !36, size: 64, offset: 128)
!99 = !DIGlobalVariableExpression(var: !100, expr: !DIExpression())
!100 = distinct !DIGlobalVariable(name: "line_no", scope: !2, file: !3, line: 144, type: !101, isLocal: true, isDefinition: true)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !102, line: 101, baseType: !103)
!102 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !104, line: 71, baseType: !105)
!104 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!105 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!106 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!107 = !DIGlobalVariableExpression(var: !108, expr: !DIExpression())
!108 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 149, type: !109, isLocal: true, isDefinition: true)
!109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 3584, elements: !120)
!110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !111)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !112, line: 50, size: 256, elements: !113)
!112 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!113 = !{!114, !115, !117, !119}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !111, file: !112, line: 52, baseType: !44, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !111, file: !112, line: 55, baseType: !116, size: 32, offset: 64)
!116 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !111, file: !112, line: 56, baseType: !118, size: 64, offset: 128)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !111, file: !112, line: 57, baseType: !116, size: 32, offset: 192)
!120 = !{!121}
!121 = !DISubrange(count: 14)
!122 = !DIGlobalVariableExpression(var: !123, expr: !DIExpression())
!123 = distinct !DIGlobalVariable(name: "header_type", scope: !2, file: !3, line: 70, type: !44, isLocal: true, isDefinition: true)
!124 = !DIGlobalVariableExpression(var: !125, expr: !DIExpression())
!125 = distinct !DIGlobalVariable(name: "body_type", scope: !2, file: !3, line: 67, type: !44, isLocal: true, isDefinition: true)
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression())
!127 = distinct !DIGlobalVariable(name: "footer_type", scope: !2, file: !3, line: 73, type: !44, isLocal: true, isDefinition: true)
!128 = !DIGlobalVariableExpression(var: !129, expr: !DIExpression())
!129 = distinct !DIGlobalVariable(name: "starting_line_number", scope: !2, file: !3, line: 126, type: !101, isLocal: true, isDefinition: true)
!130 = !DIGlobalVariableExpression(var: !131, expr: !DIExpression())
!131 = distinct !DIGlobalVariable(name: "page_incr", scope: !2, file: !3, line: 129, type: !101, isLocal: true, isDefinition: true)
!132 = !DIGlobalVariableExpression(var: !133, expr: !DIExpression())
!133 = distinct !DIGlobalVariable(name: "reset_numbers", scope: !2, file: !3, line: 132, type: !134, isLocal: true, isDefinition: true)
!134 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!135 = !DIGlobalVariableExpression(var: !136, expr: !DIExpression())
!136 = distinct !DIGlobalVariable(name: "blank_join", scope: !2, file: !3, line: 135, type: !101, isLocal: true, isDefinition: true)
!137 = !DIGlobalVariableExpression(var: !138, expr: !DIExpression())
!138 = distinct !DIGlobalVariable(name: "separator_str", scope: !2, file: !3, line: 96, type: !44, isLocal: true, isDefinition: true)
!139 = !DIGlobalVariableExpression(var: !140, expr: !DIExpression())
!140 = distinct !DIGlobalVariable(name: "lineno_width", scope: !2, file: !3, line: 138, type: !116, isLocal: true, isDefinition: true)
!141 = !DIGlobalVariableExpression(var: !142, expr: !DIExpression())
!142 = distinct !DIGlobalVariable(name: "FORMAT_LEFT", scope: !2, file: !3, line: 54, type: !143, isLocal: true, isDefinition: true)
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 64, elements: !144)
!144 = !{!145}
!145 = !DISubrange(count: 8)
!146 = !DIGlobalVariableExpression(var: !147, expr: !DIExpression())
!147 = distinct !DIGlobalVariable(name: "lineno_format", scope: !2, file: !3, line: 141, type: !44, isLocal: true, isDefinition: true)
!148 = !DIGlobalVariableExpression(var: !149, expr: !DIExpression())
!149 = distinct !DIGlobalVariable(name: "FORMAT_RIGHT_NOLZ", scope: !2, file: !3, line: 48, type: !150, isLocal: true, isDefinition: true)
!150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 56, elements: !151)
!151 = !{!152}
!152 = !DISubrange(count: 7)
!153 = !DIGlobalVariableExpression(var: !154, expr: !DIExpression())
!154 = distinct !DIGlobalVariable(name: "FORMAT_RIGHT_LZ", scope: !2, file: !3, line: 51, type: !143, isLocal: true, isDefinition: true)
!155 = !DIGlobalVariableExpression(var: !156, expr: !DIExpression())
!156 = distinct !DIGlobalVariable(name: "section_del", scope: !2, file: !3, line: 99, type: !44, isLocal: true, isDefinition: true)
!157 = !DIGlobalVariableExpression(var: !158, expr: !DIExpression())
!158 = distinct !DIGlobalVariable(name: "DEFAULT_SECTION_DELIMITERS", scope: !2, file: !3, line: 57, type: !159, isLocal: true, isDefinition: true)
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 24, elements: !160)
!160 = !{!161}
!161 = !DISubrange(count: 3)
!162 = !DIGlobalVariableExpression(var: !163, expr: !DIExpression())
!163 = distinct !DIGlobalVariable(name: "header_del", scope: !2, file: !3, line: 102, type: !36, isLocal: true, isDefinition: true)
!164 = !DIGlobalVariableExpression(var: !165, expr: !DIExpression())
!165 = distinct !DIGlobalVariable(name: "body_del", scope: !2, file: !3, line: 108, type: !36, isLocal: true, isDefinition: true)
!166 = !DIGlobalVariableExpression(var: !167, expr: !DIExpression())
!167 = distinct !DIGlobalVariable(name: "footer_del", scope: !2, file: !3, line: 114, type: !36, isLocal: true, isDefinition: true)
!168 = !DIGlobalVariableExpression(var: !169, expr: !DIExpression())
!169 = distinct !DIGlobalVariable(name: "print_no_line_fmt", scope: !2, file: !3, line: 123, type: !36, isLocal: true, isDefinition: true)
!170 = !DIGlobalVariableExpression(var: !171, expr: !DIExpression())
!171 = distinct !DIGlobalVariable(name: "current_regex", scope: !2, file: !3, line: 93, type: !172, isLocal: true, isDefinition: true)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!173 = !DIGlobalVariableExpression(var: !174, expr: !DIExpression())
!174 = distinct !DIGlobalVariable(name: "blank_lines", scope: !175, file: !3, line: 329, type: !101, isLocal: true, isDefinition: true)
!175 = distinct !DISubprogram(name: "proc_text", scope: !3, file: !3, line: 327, type: !176, isLocal: true, isDefinition: true, scopeLine: 328, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !178)
!176 = !DISubroutineType(types: !177)
!177 = !{null}
!178 = !{}
!179 = !DIGlobalVariableExpression(var: !133, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 18446744073709551615, DW_OP_mul, DW_OP_constu, 1, DW_OP_plus, DW_OP_stack_value))
!180 = !DIGlobalVariableExpression(var: !181, expr: !DIExpression())
!181 = distinct !DIGlobalVariable(name: "Version", scope: !182, file: !183, line: 2, type: !44, isLocal: false, isDefinition: true)
!182 = distinct !DICompileUnit(language: DW_LANG_C99, file: !183, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !178, globals: !184)
!183 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!184 = !{!180}
!185 = !DIGlobalVariableExpression(var: !186, expr: !DIExpression())
!186 = distinct !DIGlobalVariable(name: "file_name", scope: !187, file: !192, line: 46, type: !44, isLocal: true, isDefinition: true)
!187 = distinct !DICompileUnit(language: DW_LANG_C99, file: !188, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !178, globals: !189)
!188 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!189 = !{!185, !190}
!190 = !DIGlobalVariableExpression(var: !191, expr: !DIExpression())
!191 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !187, file: !192, line: 56, type: !134, isLocal: true, isDefinition: true)
!192 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!193 = !DIGlobalVariableExpression(var: !194, expr: !DIExpression())
!194 = distinct !DIGlobalVariable(name: "exit_failure", scope: !195, file: !198, line: 24, type: !199, isLocal: false, isDefinition: true)
!195 = distinct !DICompileUnit(language: DW_LANG_C99, file: !196, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !178, globals: !197)
!196 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!197 = !{!193}
!198 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!199 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !116)
!200 = !DIGlobalVariableExpression(var: !201, expr: !DIExpression())
!201 = distinct !DIGlobalVariable(name: "program_name", scope: !202, file: !206, line: 33, type: !44, isLocal: false, isDefinition: true)
!202 = distinct !DICompileUnit(language: DW_LANG_C99, file: !203, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !178, retainedTypes: !204, globals: !205)
!203 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!204 = !{!38, !36}
!205 = !{!200}
!206 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!207 = !DIGlobalVariableExpression(var: !208, expr: !DIExpression())
!208 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !209, file: !237, line: 85, type: !267, isLocal: false, isDefinition: true)
!209 = distinct !DICompileUnit(language: DW_LANG_C99, file: !210, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !211, retainedTypes: !232, globals: !234)
!210 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!211 = !{!5, !212, !217}
!212 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 242, baseType: !7, size: 32, elements: !213)
!213 = !{!214, !215, !216}
!214 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!215 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!216 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!217 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !218, line: 46, baseType: !7, size: 32, elements: !219)
!218 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!219 = !{!220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231}
!220 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!221 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!222 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!223 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!224 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!225 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!226 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!227 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!228 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!229 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!230 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!231 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!232 = !{!116, !233, !63, !36}
!233 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!234 = !{!207, !235, !242, !252, !254, !256, !263, !265}
!235 = !DIGlobalVariableExpression(var: !236, expr: !DIExpression())
!236 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !209, file: !237, line: 101, type: !238, isLocal: false, isDefinition: true)
!237 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 320, elements: !240)
!239 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!240 = !{!241}
!241 = !DISubrange(count: 10)
!242 = !DIGlobalVariableExpression(var: !243, expr: !DIExpression())
!243 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !209, file: !237, line: 1052, type: !244, isLocal: false, isDefinition: true)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !237, line: 65, size: 448, elements: !245)
!245 = !{!246, !247, !248, !250, !251}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !244, file: !237, line: 68, baseType: !5, size: 32)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !244, file: !237, line: 71, baseType: !116, size: 32, offset: 32)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !244, file: !237, line: 75, baseType: !249, size: 256, offset: 64)
!249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !144)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !244, file: !237, line: 78, baseType: !44, size: 64, offset: 320)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !244, file: !237, line: 81, baseType: !44, size: 64, offset: 384)
!252 = !DIGlobalVariableExpression(var: !253, expr: !DIExpression())
!253 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !209, file: !237, line: 116, type: !244, isLocal: true, isDefinition: true)
!254 = !DIGlobalVariableExpression(var: !255, expr: !DIExpression())
!255 = distinct !DIGlobalVariable(name: "slot0", scope: !209, file: !237, line: 842, type: !78, isLocal: true, isDefinition: true)
!256 = !DIGlobalVariableExpression(var: !257, expr: !DIExpression())
!257 = distinct !DIGlobalVariable(name: "slotvec", scope: !209, file: !237, line: 845, type: !258, isLocal: true, isDefinition: true)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !237, line: 834, size: 128, elements: !260)
!260 = !{!261, !262}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !259, file: !237, line: 836, baseType: !63, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !259, file: !237, line: 837, baseType: !36, size: 64, offset: 64)
!263 = !DIGlobalVariableExpression(var: !264, expr: !DIExpression())
!264 = distinct !DIGlobalVariable(name: "nslots", scope: !209, file: !237, line: 843, type: !116, isLocal: true, isDefinition: true)
!265 = !DIGlobalVariableExpression(var: !266, expr: !DIExpression())
!266 = distinct !DIGlobalVariable(name: "slotvec0", scope: !209, file: !237, line: 844, type: !259, isLocal: true, isDefinition: true)
!267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !268, size: 704, elements: !269)
!268 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!269 = !{!270}
!270 = !DISubrange(count: 11)
!271 = !DIGlobalVariableExpression(var: !272, expr: !DIExpression())
!272 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !273, file: !276, line: 26, type: !277, isLocal: false, isDefinition: true)
!273 = distinct !DICompileUnit(language: DW_LANG_C99, file: !274, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !178, globals: !275)
!274 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!275 = !{!271}
!276 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 376, elements: !278)
!278 = !{!279}
!279 = !DISubrange(count: 47)
!280 = distinct !DICompileUnit(language: DW_LANG_C99, file: !281, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !282)
!281 = !DIFile(filename: "./lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!282 = !{!20}
!283 = distinct !DICompileUnit(language: DW_LANG_C99, file: !284, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !178, retainedTypes: !285)
!284 = !DIFile(filename: "./lib/linebuffer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!285 = !{!61}
!286 = distinct !DICompileUnit(language: DW_LANG_C99, file: !287, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !288, retainedTypes: !293)
!287 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!288 = !{!289}
!289 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !290, line: 41, baseType: !7, size: 32, elements: !291)
!290 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!291 = !{!292}
!292 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2018, isUnsigned: true)
!293 = !{!38}
!294 = distinct !DICompileUnit(language: DW_LANG_C99, file: !295, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !296, retainedTypes: !310)
!295 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!296 = !{!297}
!297 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !299, file: !298, line: 186, baseType: !7, size: 32, elements: !308)
!298 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!299 = distinct !DISubprogram(name: "x2nrealloc", scope: !298, file: !298, line: 174, type: !300, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !294, retainedNodes: !303)
!300 = !DISubroutineType(types: !301)
!301 = !{!38, !38, !302, !63}
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!303 = !{!304, !305, !306, !307}
!304 = !DILocalVariable(name: "p", arg: 1, scope: !299, file: !298, line: 174, type: !38)
!305 = !DILocalVariable(name: "pn", arg: 2, scope: !299, file: !298, line: 174, type: !302)
!306 = !DILocalVariable(name: "s", arg: 3, scope: !299, file: !298, line: 174, type: !63)
!307 = !DILocalVariable(name: "n", scope: !299, file: !298, line: 176, type: !63)
!308 = !{!309}
!309 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!310 = !{!63, !36, !38}
!311 = distinct !DICompileUnit(language: DW_LANG_C99, file: !312, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !178)
!312 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!313 = distinct !DICompileUnit(language: DW_LANG_C99, file: !314, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !315)
!314 = !DIFile(filename: "./lib/xdectoimax.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!315 = !{!316}
!316 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !317, line: 26, baseType: !7, size: 32, elements: !318)
!317 = !DIFile(filename: "./lib/xstrtol.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!318 = !{!319, !320, !321, !322, !323}
!319 = !DIEnumerator(name: "LONGINT_OK", value: 0, isUnsigned: true)
!320 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1, isUnsigned: true)
!321 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2, isUnsigned: true)
!322 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3, isUnsigned: true)
!323 = !DIEnumerator(name: "LONGINT_INVALID", value: 4, isUnsigned: true)
!324 = distinct !DICompileUnit(language: DW_LANG_C99, file: !325, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !315)
!325 = !DIFile(filename: "./lib/xstrtoimax.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!326 = distinct !DICompileUnit(language: DW_LANG_C99, file: !327, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !178, retainedTypes: !293)
!327 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!328 = distinct !DICompileUnit(language: DW_LANG_C99, file: !329, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !178)
!329 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!330 = distinct !DICompileUnit(language: DW_LANG_C99, file: !331, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !178, retainedTypes: !293)
!331 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!332 = distinct !DICompileUnit(language: DW_LANG_C99, file: !333, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !178, retainedTypes: !293)
!333 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!334 = distinct !DICompileUnit(language: DW_LANG_C99, file: !335, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !178, retainedTypes: !336)
!335 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!336 = !{!63}
!337 = distinct !DICompileUnit(language: DW_LANG_C99, file: !338, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !178)
!338 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!339 = distinct !DICompileUnit(language: DW_LANG_C99, file: !340, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !178)
!340 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!341 = distinct !DICompileUnit(language: DW_LANG_C99, file: !342, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !343, retainedTypes: !293)
!342 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!343 = !{!344}
!344 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !345, line: 41, baseType: !7, size: 32, elements: !346)
!345 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!346 = !{!347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729}
!347 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!348 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!349 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!350 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!351 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!352 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!353 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!354 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!355 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!356 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!357 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!358 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!359 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!360 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!361 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!362 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!363 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!364 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!365 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!366 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!367 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!368 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!369 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!370 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!371 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!372 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!373 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!374 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!375 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!376 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!377 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!378 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!379 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!380 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!381 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!382 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!383 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!384 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!385 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!386 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!387 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!388 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!389 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!390 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!391 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!392 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!393 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!394 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!395 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!396 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!400 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!405 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!406 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!408 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!409 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!410 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!411 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!412 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!413 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!414 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!415 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!416 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!417 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!418 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!419 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!420 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!421 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!435 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!455 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!456 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!457 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!458 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!459 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!460 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!461 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!462 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!463 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!464 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!465 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!466 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!467 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!468 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!469 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!473 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!474 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!475 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!476 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!477 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!478 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!479 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!481 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!482 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!483 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!484 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!485 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!486 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!487 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!488 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!489 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!490 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!491 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!492 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!493 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!494 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!495 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!496 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!497 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!498 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!499 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!500 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!501 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!502 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!503 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!504 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!505 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!506 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!507 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!508 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!509 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!510 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!511 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!512 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!513 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!514 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!515 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!516 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!517 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!519 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!520 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!521 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!522 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!523 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!524 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!525 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!526 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!527 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!528 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!529 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!530 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!531 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!532 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!535 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!536 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!537 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!540 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!541 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!542 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!543 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!544 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!545 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!546 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!547 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!549 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!550 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!551 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!552 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!553 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!559 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!560 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!567 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!568 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!571 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!572 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!573 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!574 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!575 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!576 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!577 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!578 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!579 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!580 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!581 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!582 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!583 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!584 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!585 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!586 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!587 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!588 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!589 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!590 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!591 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!592 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!593 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!594 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!595 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!596 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!597 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!598 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!599 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!600 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!601 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!602 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!603 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!604 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!605 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!606 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!607 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!608 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!609 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!610 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!611 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!612 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!613 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!614 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!615 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!616 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!617 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!618 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!619 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!620 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!621 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!622 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!623 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!624 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!625 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!626 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!627 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!628 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!629 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!630 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!631 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!632 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!633 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!634 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!635 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!636 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!637 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!638 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!639 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!640 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!641 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!642 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!643 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!644 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!645 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!646 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!647 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!648 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!649 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!650 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!651 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!652 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!653 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!654 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!655 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!656 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!657 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!658 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!659 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!660 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!661 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!662 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!663 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!664 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!665 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!666 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!667 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!668 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!669 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!670 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!671 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!672 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!673 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!674 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!675 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!676 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!677 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!678 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!679 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!680 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!681 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!682 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!683 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!684 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!685 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!686 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!687 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!688 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!689 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!690 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!691 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!692 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!693 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!694 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!695 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!696 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!697 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!698 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!699 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!700 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!701 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!702 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!703 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!704 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!705 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!706 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!707 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!708 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!709 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!710 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!711 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!712 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!713 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!714 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!715 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!716 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!717 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!718 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!719 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!720 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!721 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!722 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!723 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!724 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!725 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!726 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!727 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!728 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!729 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!730 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!731 = !{i32 2, !"Dwarf Version", i32 4}
!732 = !{i32 2, !"Debug Info Version", i32 3}
!733 = !{i32 1, !"wchar_size", i32 4}
!734 = !{i32 7, !"PIC Level", i32 2}
!735 = !{i32 7, !"PIE Level", i32 2}
!736 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 170, type: !737, isLocal: false, isDefinition: true, scopeLine: 171, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, retainedNodes: !739)
!737 = !DISubroutineType(types: !738)
!738 = !{null, !116}
!739 = !{!740}
!740 = !DILocalVariable(name: "status", arg: 1, scope: !736, file: !3, line: 170, type: !116)
!741 = !DILocalVariable(name: "infomap", scope: !742, file: !743, line: 632, type: !757)
!742 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !743, file: !743, line: 630, type: !744, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !746)
!743 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!744 = !DISubroutineType(types: !745)
!745 = !{null, !44}
!746 = !{!747, !741, !748, !749, !756}
!747 = !DILocalVariable(name: "program", arg: 1, scope: !742, file: !743, line: 630, type: !44)
!748 = !DILocalVariable(name: "node", scope: !742, file: !743, line: 642, type: !44)
!749 = !DILocalVariable(name: "map_prog", scope: !742, file: !743, line: 643, type: !750)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !752)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !742, file: !743, line: 632, size: 128, elements: !753)
!753 = !{!754, !755}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !752, file: !743, line: 632, baseType: !44, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !752, file: !743, line: 632, baseType: !44, size: 64, offset: 64)
!756 = !DILocalVariable(name: "lc_messages", scope: !742, file: !743, line: 655, type: !44)
!757 = !DICompositeType(tag: DW_TAG_array_type, baseType: !751, size: 896, elements: !151)
!758 = !DILocation(line: 632, column: 67, scope: !742, inlinedAt: !759)
!759 = distinct !DILocation(line: 232, column: 7, scope: !760)
!760 = distinct !DILexicalBlock(scope: !761, file: !3, line: 175, column: 5)
!761 = distinct !DILexicalBlock(scope: !736, file: !3, line: 172, column: 7)
!762 = !DILocation(line: 170, column: 12, scope: !736)
!763 = !DILocation(line: 172, column: 14, scope: !761)
!764 = !DILocation(line: 172, column: 7, scope: !736)
!765 = !DILocation(line: 173, column: 5, scope: !766)
!766 = distinct !DILexicalBlock(scope: !761, file: !3, line: 173, column: 5)
!767 = !{!768, !768, i64 0}
!768 = !{!"any pointer", !769, i64 0}
!769 = !{!"omnipotent char", !770, i64 0}
!770 = !{!"Simple C/C++ TBAA"}
!771 = !DILocation(line: 176, column: 7, scope: !760)
!772 = !DILocation(line: 180, column: 7, scope: !760)
!773 = !DILocation(line: 580, column: 3, scope: !774, inlinedAt: !775)
!774 = distinct !DISubprogram(name: "emit_stdin_note", scope: !743, file: !743, line: 578, type: !176, isLocal: true, isDefinition: true, scopeLine: 579, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !178)
!775 = distinct !DILocation(line: 184, column: 7, scope: !760)
!776 = !DILocation(line: 587, column: 3, scope: !777, inlinedAt: !778)
!777 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !743, file: !743, line: 585, type: !176, isLocal: true, isDefinition: true, scopeLine: 586, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !178)
!778 = distinct !DILocation(line: 185, column: 7, scope: !760)
!779 = !DILocation(line: 187, column: 7, scope: !760)
!780 = !DILocation(line: 192, column: 7, scope: !760)
!781 = !DILocation(line: 200, column: 7, scope: !760)
!782 = !DILocation(line: 204, column: 7, scope: !760)
!783 = !DILocation(line: 205, column: 7, scope: !760)
!784 = !DILocation(line: 206, column: 7, scope: !760)
!785 = !DILocation(line: 213, column: 7, scope: !760)
!786 = !DILocation(line: 223, column: 7, scope: !760)
!787 = !DILocation(line: 632, column: 3, scope: !742, inlinedAt: !759)
!788 = !DILocation(line: 643, column: 36, scope: !742, inlinedAt: !759)
!789 = !DILocation(line: 643, column: 25, scope: !742, inlinedAt: !759)
!790 = !DILocation(line: 645, column: 33, scope: !742, inlinedAt: !759)
!791 = !DILocation(line: 645, column: 3, scope: !742, inlinedAt: !759)
!792 = !DILocation(line: 646, column: 13, scope: !742, inlinedAt: !759)
!793 = !DILocation(line: 645, column: 20, scope: !742, inlinedAt: !759)
!794 = !{!795, !768, i64 0}
!795 = !{!"infomap", !768, i64 0, !768, i64 8}
!796 = !DILocation(line: 645, column: 10, scope: !742, inlinedAt: !759)
!797 = !DILocation(line: 645, column: 28, scope: !742, inlinedAt: !759)
!798 = distinct !{!798, !799, !800}
!799 = !DILocation(line: 645, column: 3, scope: !742)
!800 = !DILocation(line: 646, column: 13, scope: !742)
!801 = !DILocation(line: 648, column: 17, scope: !802, inlinedAt: !759)
!802 = distinct !DILexicalBlock(scope: !742, file: !743, line: 648, column: 7)
!803 = !{!795, !768, i64 8}
!804 = !DILocation(line: 648, column: 7, scope: !802, inlinedAt: !759)
!805 = !DILocation(line: 648, column: 7, scope: !742, inlinedAt: !759)
!806 = !DILocation(line: 642, column: 15, scope: !742, inlinedAt: !759)
!807 = !DILocation(line: 651, column: 3, scope: !742, inlinedAt: !759)
!808 = !DILocation(line: 655, column: 29, scope: !742, inlinedAt: !759)
!809 = !DILocation(line: 655, column: 15, scope: !742, inlinedAt: !759)
!810 = !DILocation(line: 656, column: 7, scope: !811, inlinedAt: !759)
!811 = distinct !DILexicalBlock(scope: !742, file: !743, line: 656, column: 7)
!812 = !DILocation(line: 656, column: 19, scope: !811, inlinedAt: !759)
!813 = !DILocation(line: 656, column: 22, scope: !811, inlinedAt: !759)
!814 = !DILocation(line: 656, column: 7, scope: !742, inlinedAt: !759)
!815 = !DILocation(line: 662, column: 7, scope: !816, inlinedAt: !759)
!816 = distinct !DILexicalBlock(scope: !811, file: !743, line: 657, column: 5)
!817 = !DILocation(line: 664, column: 5, scope: !816, inlinedAt: !759)
!818 = !DILocation(line: 665, column: 3, scope: !742, inlinedAt: !759)
!819 = !DILocation(line: 667, column: 3, scope: !742, inlinedAt: !759)
!820 = !DILocation(line: 669, column: 1, scope: !742, inlinedAt: !759)
!821 = !DILocation(line: 234, column: 3, scope: !736)
!822 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 464, type: !823, isLocal: false, isDefinition: true, scopeLine: 465, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !826)
!823 = !DISubroutineType(types: !824)
!824 = !{!116, !116, !825}
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!826 = !{!827, !828, !829, !830, !831}
!827 = !DILocalVariable(name: "argc", arg: 1, scope: !822, file: !3, line: 464, type: !116)
!828 = !DILocalVariable(name: "argv", arg: 2, scope: !822, file: !3, line: 464, type: !825)
!829 = !DILocalVariable(name: "c", scope: !822, file: !3, line: 466, type: !116)
!830 = !DILocalVariable(name: "len", scope: !822, file: !3, line: 467, type: !63)
!831 = !DILocalVariable(name: "ok", scope: !822, file: !3, line: 468, type: !134)
!832 = !DILocation(line: 464, column: 11, scope: !822)
!833 = !DILocation(line: 464, column: 24, scope: !822)
!834 = !DILocation(line: 468, column: 8, scope: !822)
!835 = !DILocation(line: 471, column: 21, scope: !822)
!836 = !DILocation(line: 471, column: 3, scope: !822)
!837 = !DILocation(line: 472, column: 3, scope: !822)
!838 = !DILocation(line: 473, column: 3, scope: !822)
!839 = !DILocation(line: 474, column: 3, scope: !822)
!840 = !DILocation(line: 476, column: 3, scope: !822)
!841 = !DILocation(line: 480, column: 3, scope: !822)
!842 = !DILocation(line: 0, scope: !843)
!843 = distinct !DILexicalBlock(scope: !844, file: !3, line: 484, column: 9)
!844 = distinct !DILexicalBlock(scope: !822, file: !3, line: 482, column: 5)
!845 = !DILocation(line: 480, column: 15, scope: !822)
!846 = !DILocation(line: 466, column: 7, scope: !822)
!847 = distinct !{!847, !841, !848}
!848 = !DILocation(line: 555, column: 5, scope: !822)
!849 = !DILocation(line: 486, column: 17, scope: !850)
!850 = distinct !DILexicalBlock(scope: !843, file: !3, line: 486, column: 15)
!851 = !DILocation(line: 486, column: 15, scope: !843)
!852 = !DILocation(line: 488, column: 28, scope: !853)
!853 = distinct !DILexicalBlock(scope: !850, file: !3, line: 487, column: 13)
!854 = !DILocation(line: 489, column: 29, scope: !853)
!855 = !DILocation(line: 489, column: 22, scope: !853)
!856 = !DILocation(line: 488, column: 15, scope: !853)
!857 = !DILocation(line: 491, column: 13, scope: !853)
!858 = !DILocation(line: 494, column: 17, scope: !859)
!859 = distinct !DILexicalBlock(scope: !843, file: !3, line: 494, column: 15)
!860 = !DILocation(line: 494, column: 15, scope: !843)
!861 = !DILocation(line: 496, column: 28, scope: !862)
!862 = distinct !DILexicalBlock(scope: !859, file: !3, line: 495, column: 13)
!863 = !DILocation(line: 497, column: 29, scope: !862)
!864 = !DILocation(line: 497, column: 22, scope: !862)
!865 = !DILocation(line: 496, column: 15, scope: !862)
!866 = !DILocation(line: 499, column: 13, scope: !862)
!867 = !DILocation(line: 502, column: 17, scope: !868)
!868 = distinct !DILexicalBlock(scope: !843, file: !3, line: 502, column: 15)
!869 = !DILocation(line: 502, column: 15, scope: !843)
!870 = !DILocation(line: 504, column: 28, scope: !871)
!871 = distinct !DILexicalBlock(scope: !868, file: !3, line: 503, column: 13)
!872 = !DILocation(line: 505, column: 29, scope: !871)
!873 = !DILocation(line: 505, column: 22, scope: !871)
!874 = !DILocation(line: 504, column: 15, scope: !871)
!875 = !DILocation(line: 507, column: 13, scope: !871)
!876 = !DILocation(line: 510, column: 46, scope: !843)
!877 = !DILocation(line: 511, column: 46, scope: !843)
!878 = !DILocation(line: 510, column: 34, scope: !843)
!879 = !DILocation(line: 510, column: 32, scope: !843)
!880 = !{!881, !881, i64 0}
!881 = !{!"long", !769, i64 0}
!882 = !DILocation(line: 513, column: 11, scope: !843)
!883 = !DILocation(line: 515, column: 35, scope: !843)
!884 = !DILocation(line: 516, column: 35, scope: !843)
!885 = !DILocation(line: 515, column: 23, scope: !843)
!886 = !DILocation(line: 515, column: 21, scope: !843)
!887 = !DILocation(line: 517, column: 11, scope: !843)
!888 = !DILocation(line: 520, column: 11, scope: !843)
!889 = !DILocation(line: 522, column: 36, scope: !843)
!890 = !DILocation(line: 523, column: 36, scope: !843)
!891 = !DILocation(line: 522, column: 24, scope: !843)
!892 = !DILocation(line: 522, column: 22, scope: !843)
!893 = !DILocation(line: 524, column: 11, scope: !843)
!894 = !DILocation(line: 526, column: 27, scope: !843)
!895 = !DILocation(line: 526, column: 25, scope: !843)
!896 = !DILocation(line: 527, column: 11, scope: !843)
!897 = !DILocation(line: 529, column: 38, scope: !843)
!898 = !DILocation(line: 530, column: 38, scope: !843)
!899 = !DILocation(line: 529, column: 26, scope: !843)
!900 = !DILocation(line: 529, column: 24, scope: !843)
!901 = !{!902, !902, i64 0}
!902 = !{!"int", !769, i64 0}
!903 = !DILocation(line: 531, column: 11, scope: !843)
!904 = !DILocation(line: 533, column: 15, scope: !905)
!905 = distinct !DILexicalBlock(scope: !843, file: !3, line: 533, column: 15)
!906 = !DILocation(line: 533, column: 15, scope: !843)
!907 = !DILocation(line: 534, column: 27, scope: !905)
!908 = !DILocation(line: 534, column: 13, scope: !905)
!909 = !DILocation(line: 535, column: 20, scope: !910)
!910 = distinct !DILexicalBlock(scope: !905, file: !3, line: 535, column: 20)
!911 = !DILocation(line: 535, column: 20, scope: !905)
!912 = !DILocation(line: 536, column: 27, scope: !910)
!913 = !DILocation(line: 536, column: 13, scope: !910)
!914 = !DILocation(line: 537, column: 20, scope: !915)
!915 = distinct !DILexicalBlock(scope: !910, file: !3, line: 537, column: 20)
!916 = !DILocation(line: 537, column: 20, scope: !910)
!917 = !DILocation(line: 538, column: 27, scope: !915)
!918 = !DILocation(line: 538, column: 13, scope: !915)
!919 = !DILocation(line: 541, column: 28, scope: !920)
!920 = distinct !DILexicalBlock(scope: !915, file: !3, line: 540, column: 13)
!921 = !DILocation(line: 542, column: 29, scope: !920)
!922 = !DILocation(line: 542, column: 22, scope: !920)
!923 = !DILocation(line: 541, column: 15, scope: !920)
!924 = !DILocation(line: 547, column: 25, scope: !843)
!925 = !DILocation(line: 547, column: 23, scope: !843)
!926 = !DILocation(line: 548, column: 11, scope: !843)
!927 = !DILocation(line: 549, column: 9, scope: !843)
!928 = !DILocation(line: 550, column: 9, scope: !843)
!929 = !DILocation(line: 557, column: 8, scope: !930)
!930 = distinct !DILexicalBlock(scope: !822, file: !3, line: 557, column: 7)
!931 = !DILocation(line: 557, column: 7, scope: !822)
!932 = !DILocation(line: 558, column: 5, scope: !930)
!933 = !DILocation(line: 561, column: 17, scope: !822)
!934 = !DILocation(line: 561, column: 9, scope: !822)
!935 = !DILocation(line: 467, column: 10, scope: !822)
!936 = !DILocation(line: 563, column: 24, scope: !822)
!937 = !DILocation(line: 563, column: 18, scope: !822)
!938 = !DILocation(line: 564, column: 40, scope: !822)
!939 = !DILocation(line: 564, column: 16, scope: !822)
!940 = !DILocation(line: 564, column: 14, scope: !822)
!941 = !DILocation(line: 565, column: 39, scope: !822)
!942 = !DILocalVariable(name: "__dest", arg: 1, scope: !943, file: !944, line: 95, type: !947)
!943 = distinct !DISubprogram(name: "stpcpy", scope: !944, file: !944, line: 95, type: !945, isLocal: false, isDefinition: true, scopeLine: 96, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !949)
!944 = !DIFile(filename: "/usr/include/bits/string_fortified.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!945 = !DISubroutineType(types: !946)
!946 = !{!36, !947, !948}
!947 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !36)
!948 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !44)
!949 = !{!942, !950}
!950 = !DILocalVariable(name: "__src", arg: 2, scope: !943, file: !944, line: 95, type: !948)
!951 = !DILocation(line: 95, column: 1, scope: !943, inlinedAt: !952)
!952 = distinct !DILocation(line: 565, column: 19, scope: !822)
!953 = !DILocation(line: 97, column: 49, scope: !943, inlinedAt: !952)
!954 = !DILocation(line: 97, column: 10, scope: !943, inlinedAt: !952)
!955 = !DILocation(line: 565, column: 53, scope: !822)
!956 = !DILocation(line: 95, column: 1, scope: !943, inlinedAt: !957)
!957 = distinct !DILocation(line: 565, column: 11, scope: !822)
!958 = !DILocation(line: 97, column: 49, scope: !943, inlinedAt: !957)
!959 = !DILocation(line: 97, column: 10, scope: !943, inlinedAt: !957)
!960 = !DILocation(line: 565, column: 67, scope: !822)
!961 = !DILocation(line: 95, column: 1, scope: !943, inlinedAt: !962)
!962 = distinct !DILocation(line: 565, column: 3, scope: !822)
!963 = !DILocation(line: 97, column: 49, scope: !943, inlinedAt: !962)
!964 = !DILocation(line: 97, column: 10, scope: !943, inlinedAt: !962)
!965 = !DILocation(line: 567, column: 22, scope: !822)
!966 = !DILocation(line: 567, column: 16, scope: !822)
!967 = !DILocation(line: 568, column: 36, scope: !822)
!968 = !DILocation(line: 568, column: 14, scope: !822)
!969 = !DILocation(line: 568, column: 12, scope: !822)
!970 = !DILocation(line: 569, column: 29, scope: !822)
!971 = !DILocation(line: 95, column: 1, scope: !943, inlinedAt: !972)
!972 = distinct !DILocation(line: 569, column: 11, scope: !822)
!973 = !DILocation(line: 97, column: 49, scope: !943, inlinedAt: !972)
!974 = !DILocation(line: 97, column: 10, scope: !943, inlinedAt: !972)
!975 = !DILocation(line: 569, column: 43, scope: !822)
!976 = !DILocation(line: 95, column: 1, scope: !943, inlinedAt: !977)
!977 = distinct !DILocation(line: 569, column: 3, scope: !822)
!978 = !DILocation(line: 97, column: 49, scope: !943, inlinedAt: !977)
!979 = !DILocation(line: 97, column: 10, scope: !943, inlinedAt: !977)
!980 = !DILocation(line: 571, column: 18, scope: !822)
!981 = !DILocation(line: 572, column: 40, scope: !822)
!982 = !DILocation(line: 572, column: 16, scope: !822)
!983 = !DILocation(line: 572, column: 14, scope: !822)
!984 = !DILocation(line: 573, column: 23, scope: !822)
!985 = !DILocation(line: 95, column: 1, scope: !943, inlinedAt: !986)
!986 = distinct !DILocation(line: 573, column: 3, scope: !822)
!987 = !DILocation(line: 97, column: 49, scope: !943, inlinedAt: !986)
!988 = !DILocation(line: 97, column: 10, scope: !943, inlinedAt: !986)
!989 = !DILocation(line: 576, column: 3, scope: !822)
!990 = !DILocation(line: 579, column: 17, scope: !822)
!991 = !DILocation(line: 579, column: 9, scope: !822)
!992 = !DILocation(line: 580, column: 32, scope: !822)
!993 = !DILocation(line: 580, column: 45, scope: !822)
!994 = !DILocation(line: 580, column: 51, scope: !822)
!995 = !DILocation(line: 580, column: 23, scope: !822)
!996 = !DILocation(line: 580, column: 21, scope: !822)
!997 = !DILocation(line: 581, column: 35, scope: !822)
!998 = !DILocation(line: 581, column: 48, scope: !822)
!999 = !DILocation(line: 581, column: 3, scope: !822)
!1000 = !DILocation(line: 582, column: 3, scope: !822)
!1001 = !DILocation(line: 582, column: 41, scope: !822)
!1002 = !{!769, !769, i64 0}
!1003 = !DILocation(line: 584, column: 13, scope: !822)
!1004 = !DILocation(line: 584, column: 11, scope: !822)
!1005 = !DILocation(line: 585, column: 18, scope: !822)
!1006 = !DILocation(line: 585, column: 16, scope: !822)
!1007 = !DILocation(line: 586, column: 17, scope: !822)
!1008 = !DILocation(line: 590, column: 7, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !822, file: !3, line: 590, column: 7)
!1010 = !DILocation(line: 590, column: 14, scope: !1009)
!1011 = !DILocation(line: 590, column: 7, scope: !822)
!1012 = !DILocation(line: 593, column: 19, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !1014, file: !3, line: 593, column: 5)
!1014 = distinct !DILexicalBlock(scope: !1009, file: !3, line: 593, column: 5)
!1015 = !DILocation(line: 593, column: 5, scope: !1014)
!1016 = !DILocation(line: 591, column: 10, scope: !1009)
!1017 = !DILocation(line: 591, column: 8, scope: !1009)
!1018 = !DILocation(line: 591, column: 5, scope: !1009)
!1019 = !DILocation(line: 594, column: 22, scope: !1013)
!1020 = !DILocation(line: 594, column: 13, scope: !1013)
!1021 = !DILocation(line: 594, column: 10, scope: !1013)
!1022 = !DILocation(line: 593, column: 33, scope: !1013)
!1023 = distinct !{!1023, !1015, !1024}
!1024 = !DILocation(line: 594, column: 34, scope: !1014)
!1025 = !DILocation(line: 0, scope: !822)
!1026 = !DILocation(line: 596, column: 23, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !822, file: !3, line: 596, column: 7)
!1028 = !DILocation(line: 596, column: 34, scope: !1027)
!1029 = !DILocation(line: 596, column: 26, scope: !1027)
!1030 = !DILocation(line: 596, column: 41, scope: !1027)
!1031 = !DILocation(line: 596, column: 7, scope: !822)
!1032 = !DILocation(line: 597, column: 5, scope: !1027)
!1033 = !DILocation(line: 599, column: 10, scope: !822)
!1034 = !DILocation(line: 599, column: 3, scope: !822)
!1035 = distinct !DISubprogram(name: "build_type_arg", scope: !3, file: !3, line: 241, type: !1036, isLocal: true, isDefinition: true, scopeLine: 243, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1039)
!1036 = !DISubroutineType(types: !1037)
!1037 = !{!134, !1038, !172, !36}
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!1039 = !{!1040, !1041, !1042, !1043, !1044}
!1040 = !DILocalVariable(name: "typep", arg: 1, scope: !1035, file: !3, line: 241, type: !1038)
!1041 = !DILocalVariable(name: "regexp", arg: 2, scope: !1035, file: !3, line: 242, type: !172)
!1042 = !DILocalVariable(name: "fastmap", arg: 3, scope: !1035, file: !3, line: 242, type: !36)
!1043 = !DILocalVariable(name: "errmsg", scope: !1035, file: !3, line: 244, type: !44)
!1044 = !DILocalVariable(name: "rval", scope: !1035, file: !3, line: 245, type: !134)
!1045 = !DILocation(line: 241, column: 30, scope: !1035)
!1046 = !DILocation(line: 242, column: 43, scope: !1035)
!1047 = !DILocation(line: 242, column: 57, scope: !1035)
!1048 = !DILocation(line: 245, column: 8, scope: !1035)
!1049 = !DILocation(line: 247, column: 12, scope: !1035)
!1050 = !DILocation(line: 247, column: 11, scope: !1035)
!1051 = !DILocation(line: 247, column: 3, scope: !1035)
!1052 = !DILocation(line: 252, column: 14, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1035, file: !3, line: 248, column: 5)
!1054 = !DILocation(line: 253, column: 7, scope: !1053)
!1055 = !DILocation(line: 255, column: 22, scope: !1053)
!1056 = !DILocation(line: 255, column: 14, scope: !1053)
!1057 = !DILocation(line: 258, column: 15, scope: !1053)
!1058 = !DILocation(line: 258, column: 23, scope: !1053)
!1059 = !DILocation(line: 257, column: 25, scope: !1053)
!1060 = !{!1061, !768, i64 32}
!1061 = !{!"re_pattern_buffer", !768, i64 0, !881, i64 8, !881, i64 16, !881, i64 24, !768, i64 32, !768, i64 40, !881, i64 48, !902, i64 56, !902, i64 56, !902, i64 56, !902, i64 56, !902, i64 56, !902, i64 56, !902, i64 56}
!1062 = !DILocation(line: 259, column: 15, scope: !1053)
!1063 = !DILocation(line: 259, column: 25, scope: !1053)
!1064 = !{!1061, !768, i64 40}
!1065 = !DILocation(line: 260, column: 25, scope: !1053)
!1066 = !DILocation(line: 262, column: 36, scope: !1053)
!1067 = !DILocation(line: 262, column: 44, scope: !1053)
!1068 = !DILocation(line: 262, column: 16, scope: !1053)
!1069 = !DILocation(line: 244, column: 15, scope: !1035)
!1070 = !DILocation(line: 263, column: 11, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1053, file: !3, line: 263, column: 11)
!1072 = !DILocation(line: 263, column: 11, scope: !1053)
!1073 = !DILocation(line: 264, column: 9, scope: !1071)
!1074 = !DILocation(line: 270, column: 3, scope: !1035)
!1075 = distinct !DISubprogram(name: "nl_file", scope: !3, file: !3, line: 425, type: !1076, isLocal: true, isDefinition: true, scopeLine: 426, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1078)
!1076 = !DISubroutineType(types: !1077)
!1077 = !{!134, !44}
!1078 = !{!1079, !1080}
!1079 = !DILocalVariable(name: "file", arg: 1, scope: !1075, file: !3, line: 425, type: !44)
!1080 = !DILocalVariable(name: "stream", scope: !1075, file: !3, line: 427, type: !1081)
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1082 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1083, line: 7, baseType: !1084)
!1083 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1085, line: 49, size: 1728, elements: !1086)
!1085 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1086 = !{!1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1102, !1104, !1105, !1106, !1108, !1109, !1111, !1115, !1118, !1120, !1123, !1126, !1127, !1128, !1129, !1130}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1084, file: !1085, line: 51, baseType: !116, size: 32)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1084, file: !1085, line: 54, baseType: !36, size: 64, offset: 64)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1084, file: !1085, line: 55, baseType: !36, size: 64, offset: 128)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1084, file: !1085, line: 56, baseType: !36, size: 64, offset: 192)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1084, file: !1085, line: 57, baseType: !36, size: 64, offset: 256)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1084, file: !1085, line: 58, baseType: !36, size: 64, offset: 320)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1084, file: !1085, line: 59, baseType: !36, size: 64, offset: 384)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1084, file: !1085, line: 60, baseType: !36, size: 64, offset: 448)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1084, file: !1085, line: 61, baseType: !36, size: 64, offset: 512)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1084, file: !1085, line: 64, baseType: !36, size: 64, offset: 576)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1084, file: !1085, line: 65, baseType: !36, size: 64, offset: 640)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1084, file: !1085, line: 66, baseType: !36, size: 64, offset: 704)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1084, file: !1085, line: 68, baseType: !1100, size: 64, offset: 768)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1101 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1085, line: 36, flags: DIFlagFwdDecl)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1084, file: !1085, line: 70, baseType: !1103, size: 64, offset: 832)
!1103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1084, file: !1085, line: 72, baseType: !116, size: 32, offset: 896)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1084, file: !1085, line: 73, baseType: !116, size: 32, offset: 928)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1084, file: !1085, line: 74, baseType: !1107, size: 64, offset: 960)
!1107 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !104, line: 150, baseType: !105)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1084, file: !1085, line: 77, baseType: !233, size: 16, offset: 1024)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1084, file: !1085, line: 78, baseType: !1110, size: 8, offset: 1040)
!1110 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1084, file: !1085, line: 79, baseType: !1112, size: 8, offset: 1048)
!1112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 8, elements: !1113)
!1113 = !{!1114}
!1114 = !DISubrange(count: 1)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1084, file: !1085, line: 81, baseType: !1116, size: 64, offset: 1088)
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1117 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1085, line: 43, baseType: null)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1084, file: !1085, line: 89, baseType: !1119, size: 64, offset: 1152)
!1119 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !104, line: 151, baseType: !105)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1084, file: !1085, line: 91, baseType: !1121, size: 64, offset: 1216)
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1122, size: 64)
!1122 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1085, line: 37, flags: DIFlagFwdDecl)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1084, file: !1085, line: 92, baseType: !1124, size: 64, offset: 1280)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1085, line: 38, flags: DIFlagFwdDecl)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1084, file: !1085, line: 93, baseType: !1103, size: 64, offset: 1344)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1084, file: !1085, line: 94, baseType: !38, size: 64, offset: 1408)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1084, file: !1085, line: 95, baseType: !63, size: 64, offset: 1472)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1084, file: !1085, line: 96, baseType: !116, size: 32, offset: 1536)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1084, file: !1085, line: 98, baseType: !1131, size: 160, offset: 1568)
!1131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 160, elements: !1132)
!1132 = !{!1133}
!1133 = !DISubrange(count: 20)
!1134 = !DILocation(line: 425, column: 22, scope: !1075)
!1135 = !DILocation(line: 429, column: 7, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1075, file: !3, line: 429, column: 7)
!1137 = !DILocation(line: 429, column: 7, scope: !1075)
!1138 = !DILocation(line: 432, column: 16, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1136, file: !3, line: 430, column: 5)
!1140 = !DILocation(line: 427, column: 9, scope: !1075)
!1141 = !DILocation(line: 433, column: 5, scope: !1139)
!1142 = !DILocation(line: 436, column: 16, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !1136, file: !3, line: 435, column: 5)
!1144 = !DILocation(line: 437, column: 18, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1143, file: !3, line: 437, column: 11)
!1146 = !DILocation(line: 437, column: 11, scope: !1143)
!1147 = !DILocation(line: 439, column: 21, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1145, file: !3, line: 438, column: 9)
!1149 = !DILocation(line: 439, column: 34, scope: !1148)
!1150 = !DILocation(line: 439, column: 11, scope: !1148)
!1151 = !DILocation(line: 440, column: 11, scope: !1148)
!1152 = !DILocation(line: 0, scope: !1143)
!1153 = !DILocation(line: 444, column: 3, scope: !1075)
!1154 = !DILocalVariable(name: "fp", arg: 1, scope: !1155, file: !3, line: 399, type: !1081)
!1155 = distinct !DISubprogram(name: "process_file", scope: !3, file: !3, line: 399, type: !1156, isLocal: true, isDefinition: true, scopeLine: 400, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1158)
!1156 = !DISubroutineType(types: !1157)
!1157 = !{null, !1081}
!1158 = !{!1154}
!1159 = !DILocation(line: 399, column: 21, scope: !1155, inlinedAt: !1160)
!1160 = distinct !DILocation(line: 446, column: 3, scope: !1075)
!1161 = !DILocation(line: 401, column: 10, scope: !1155, inlinedAt: !1160)
!1162 = !DILocation(line: 401, column: 3, scope: !1155, inlinedAt: !1160)
!1163 = !DILocation(line: 380, column: 25, scope: !1164, inlinedAt: !1169)
!1164 = distinct !DISubprogram(name: "check_section", scope: !3, file: !3, line: 378, type: !1165, isLocal: true, isDefinition: true, scopeLine: 379, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1167)
!1165 = !DISubroutineType(types: !1166)
!1166 = !{!29}
!1167 = !{!1168}
!1168 = !DILocalVariable(name: "len", scope: !1164, file: !3, line: 380, type: !63)
!1169 = distinct !DILocation(line: 403, column: 15, scope: !1170, inlinedAt: !1160)
!1170 = distinct !DILexicalBlock(scope: !1155, file: !3, line: 402, column: 5)
!1171 = !{!1172, !881, i64 8}
!1172 = !{!"linebuffer", !881, i64 0, !881, i64 8, !768, i64 16}
!1173 = !DILocation(line: 380, column: 32, scope: !1164, inlinedAt: !1169)
!1174 = !DILocation(line: 380, column: 10, scope: !1164, inlinedAt: !1169)
!1175 = !DILocation(line: 382, column: 11, scope: !1176, inlinedAt: !1169)
!1176 = distinct !DILexicalBlock(scope: !1164, file: !3, line: 382, column: 7)
!1177 = !DILocation(line: 382, column: 15, scope: !1176, inlinedAt: !1169)
!1178 = !DILocation(line: 382, column: 35, scope: !1176, inlinedAt: !1169)
!1179 = !{!1172, !768, i64 16}
!1180 = !DILocation(line: 382, column: 43, scope: !1176, inlinedAt: !1169)
!1181 = !DILocation(line: 382, column: 18, scope: !1176, inlinedAt: !1169)
!1182 = !DILocation(line: 382, column: 7, scope: !1164, inlinedAt: !1169)
!1183 = !DILocation(line: 384, column: 14, scope: !1184, inlinedAt: !1169)
!1184 = distinct !DILexicalBlock(scope: !1164, file: !3, line: 384, column: 7)
!1185 = !DILocation(line: 384, column: 11, scope: !1184, inlinedAt: !1169)
!1186 = !DILocation(line: 385, column: 7, scope: !1184, inlinedAt: !1169)
!1187 = !DILocation(line: 385, column: 36, scope: !1184, inlinedAt: !1169)
!1188 = !DILocation(line: 385, column: 11, scope: !1184, inlinedAt: !1169)
!1189 = !DILocation(line: 384, column: 7, scope: !1164, inlinedAt: !1169)
!1190 = !DILocation(line: 387, column: 14, scope: !1191, inlinedAt: !1169)
!1191 = distinct !DILexicalBlock(scope: !1164, file: !3, line: 387, column: 7)
!1192 = !DILocation(line: 387, column: 11, scope: !1191, inlinedAt: !1169)
!1193 = !DILocation(line: 388, column: 7, scope: !1191, inlinedAt: !1169)
!1194 = !DILocation(line: 388, column: 36, scope: !1191, inlinedAt: !1169)
!1195 = !DILocation(line: 388, column: 11, scope: !1191, inlinedAt: !1169)
!1196 = !DILocation(line: 387, column: 7, scope: !1164, inlinedAt: !1169)
!1197 = !DILocation(line: 390, column: 14, scope: !1198, inlinedAt: !1169)
!1198 = distinct !DILexicalBlock(scope: !1164, file: !3, line: 390, column: 7)
!1199 = !DILocation(line: 390, column: 11, scope: !1198, inlinedAt: !1169)
!1200 = !DILocation(line: 391, column: 7, scope: !1198, inlinedAt: !1169)
!1201 = !DILocation(line: 391, column: 36, scope: !1198, inlinedAt: !1169)
!1202 = !DILocation(line: 391, column: 11, scope: !1198, inlinedAt: !1169)
!1203 = !DILocation(line: 390, column: 7, scope: !1164, inlinedAt: !1169)
!1204 = !DILocation(line: 293, column: 18, scope: !1205, inlinedAt: !1206)
!1205 = distinct !DISubprogram(name: "proc_header", scope: !3, file: !3, line: 291, type: !176, isLocal: true, isDefinition: true, scopeLine: 292, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !178)
!1206 = distinct !DILocation(line: 406, column: 11, scope: !1207, inlinedAt: !1160)
!1207 = distinct !DILexicalBlock(scope: !1170, file: !3, line: 404, column: 9)
!1208 = !DILocation(line: 293, column: 16, scope: !1205, inlinedAt: !1206)
!1209 = !DILocation(line: 294, column: 17, scope: !1205, inlinedAt: !1206)
!1210 = !DILocation(line: 295, column: 7, scope: !1205, inlinedAt: !1206)
!1211 = !DILocation(line: 296, column: 15, scope: !1212, inlinedAt: !1206)
!1212 = distinct !DILexicalBlock(scope: !1205, file: !3, line: 295, column: 7)
!1213 = !DILocation(line: 296, column: 13, scope: !1212, inlinedAt: !1206)
!1214 = !DILocation(line: 296, column: 5, scope: !1212, inlinedAt: !1206)
!1215 = !DILocalVariable(name: "__c", arg: 1, scope: !1216, file: !1217, line: 108, type: !116)
!1216 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1217, file: !1217, line: 108, type: !1218, isLocal: false, isDefinition: true, scopeLine: 109, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1220)
!1217 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1218 = !DISubroutineType(types: !1219)
!1219 = !{!116, !116}
!1220 = !{!1215}
!1221 = !DILocation(line: 108, column: 23, scope: !1216, inlinedAt: !1222)
!1222 = distinct !DILocation(line: 297, column: 3, scope: !1205, inlinedAt: !1206)
!1223 = !DILocation(line: 110, column: 10, scope: !1216, inlinedAt: !1222)
!1224 = !{!1225, !768, i64 40}
!1225 = !{!"_IO_FILE", !902, i64 0, !768, i64 8, !768, i64 16, !768, i64 24, !768, i64 32, !768, i64 40, !768, i64 48, !768, i64 56, !768, i64 64, !768, i64 72, !768, i64 80, !768, i64 88, !768, i64 96, !768, i64 104, !902, i64 112, !902, i64 116, !881, i64 120, !1226, i64 128, !769, i64 130, !769, i64 131, !768, i64 136, !881, i64 144, !768, i64 152, !768, i64 160, !768, i64 168, !768, i64 176, !881, i64 184, !902, i64 192, !769, i64 196}
!1226 = !{!"short", !769, i64 0}
!1227 = !{!1225, !768, i64 48}
!1228 = !{!"branch_weights", i32 2000, i32 1}
!1229 = !DILocation(line: 305, column: 18, scope: !1230, inlinedAt: !1231)
!1230 = distinct !DISubprogram(name: "proc_body", scope: !3, file: !3, line: 303, type: !176, isLocal: true, isDefinition: true, scopeLine: 304, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !178)
!1231 = distinct !DILocation(line: 409, column: 11, scope: !1207, inlinedAt: !1160)
!1232 = !DILocation(line: 305, column: 16, scope: !1230, inlinedAt: !1231)
!1233 = !DILocation(line: 306, column: 17, scope: !1230, inlinedAt: !1231)
!1234 = !DILocation(line: 307, column: 7, scope: !1230, inlinedAt: !1231)
!1235 = !DILocation(line: 308, column: 15, scope: !1236, inlinedAt: !1231)
!1236 = distinct !DILexicalBlock(scope: !1230, file: !3, line: 307, column: 7)
!1237 = !DILocation(line: 308, column: 13, scope: !1236, inlinedAt: !1231)
!1238 = !DILocation(line: 308, column: 5, scope: !1236, inlinedAt: !1231)
!1239 = !DILocation(line: 108, column: 23, scope: !1216, inlinedAt: !1240)
!1240 = distinct !DILocation(line: 309, column: 3, scope: !1230, inlinedAt: !1231)
!1241 = !DILocation(line: 110, column: 10, scope: !1216, inlinedAt: !1240)
!1242 = !DILocation(line: 317, column: 18, scope: !1243, inlinedAt: !1244)
!1243 = distinct !DISubprogram(name: "proc_footer", scope: !3, file: !3, line: 315, type: !176, isLocal: true, isDefinition: true, scopeLine: 316, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !178)
!1244 = distinct !DILocation(line: 412, column: 11, scope: !1207, inlinedAt: !1160)
!1245 = !DILocation(line: 317, column: 16, scope: !1243, inlinedAt: !1244)
!1246 = !DILocation(line: 318, column: 17, scope: !1243, inlinedAt: !1244)
!1247 = !DILocation(line: 319, column: 7, scope: !1243, inlinedAt: !1244)
!1248 = !DILocation(line: 320, column: 15, scope: !1249, inlinedAt: !1244)
!1249 = distinct !DILexicalBlock(scope: !1243, file: !3, line: 319, column: 7)
!1250 = !DILocation(line: 320, column: 13, scope: !1249, inlinedAt: !1244)
!1251 = !DILocation(line: 320, column: 5, scope: !1249, inlinedAt: !1244)
!1252 = !DILocation(line: 108, column: 23, scope: !1216, inlinedAt: !1253)
!1253 = distinct !DILocation(line: 321, column: 3, scope: !1243, inlinedAt: !1244)
!1254 = !DILocation(line: 110, column: 10, scope: !1216, inlinedAt: !1253)
!1255 = !DILocation(line: 331, column: 12, scope: !175, inlinedAt: !1256)
!1256 = distinct !DILocation(line: 415, column: 11, scope: !1207, inlinedAt: !1160)
!1257 = !DILocation(line: 331, column: 11, scope: !175, inlinedAt: !1256)
!1258 = !DILocation(line: 331, column: 3, scope: !175, inlinedAt: !1256)
!1259 = !DILocation(line: 334, column: 11, scope: !1260, inlinedAt: !1256)
!1260 = distinct !DILexicalBlock(scope: !1261, file: !3, line: 334, column: 11)
!1261 = distinct !DILexicalBlock(scope: !175, file: !3, line: 332, column: 5)
!1262 = !DILocation(line: 334, column: 22, scope: !1260, inlinedAt: !1256)
!1263 = !DILocation(line: 334, column: 11, scope: !1261, inlinedAt: !1256)
!1264 = !DILocation(line: 336, column: 17, scope: !1265, inlinedAt: !1256)
!1265 = distinct !DILexicalBlock(scope: !1266, file: !3, line: 336, column: 15)
!1266 = distinct !DILexicalBlock(scope: !1260, file: !3, line: 335, column: 9)
!1267 = !DILocation(line: 336, column: 35, scope: !1265, inlinedAt: !1256)
!1268 = !DILocation(line: 336, column: 38, scope: !1265, inlinedAt: !1256)
!1269 = !DILocation(line: 336, column: 52, scope: !1265, inlinedAt: !1256)
!1270 = !DILocation(line: 336, column: 15, scope: !1266, inlinedAt: !1256)
!1271 = !DILocation(line: 280, column: 3, scope: !1272, inlinedAt: !1275)
!1272 = distinct !DISubprogram(name: "print_lineno", scope: !3, file: !3, line: 276, type: !176, isLocal: true, isDefinition: true, scopeLine: 277, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1273)
!1273 = !{!1274}
!1274 = !DILocalVariable(name: "next_line_no", scope: !1272, file: !3, line: 278, type: !101)
!1275 = distinct !DILocation(line: 338, column: 15, scope: !1276, inlinedAt: !1256)
!1276 = distinct !DILexicalBlock(scope: !1265, file: !3, line: 337, column: 13)
!1277 = !DILocation(line: 282, column: 28, scope: !1272, inlinedAt: !1275)
!1278 = !DILocation(line: 283, column: 20, scope: !1279, inlinedAt: !1275)
!1279 = distinct !DILexicalBlock(scope: !1272, file: !3, line: 283, column: 7)
!1280 = !DILocation(line: 283, column: 7, scope: !1272, inlinedAt: !1275)
!1281 = !DILocation(line: 284, column: 5, scope: !1279, inlinedAt: !1275)
!1282 = !DILocation(line: 282, column: 18, scope: !1272, inlinedAt: !1275)
!1283 = !DILocation(line: 282, column: 26, scope: !1272, inlinedAt: !1275)
!1284 = !DILocation(line: 278, column: 12, scope: !1272, inlinedAt: !1275)
!1285 = !DILocation(line: 285, column: 11, scope: !1272, inlinedAt: !1275)
!1286 = !DILocation(line: 339, column: 27, scope: !1276, inlinedAt: !1256)
!1287 = !DILocation(line: 340, column: 13, scope: !1276, inlinedAt: !1256)
!1288 = !DILocation(line: 342, column: 13, scope: !1265, inlinedAt: !1256)
!1289 = !DILocation(line: 280, column: 3, scope: !1272, inlinedAt: !1290)
!1290 = distinct !DILocation(line: 345, column: 9, scope: !1260, inlinedAt: !1256)
!1291 = !DILocation(line: 282, column: 28, scope: !1272, inlinedAt: !1290)
!1292 = !DILocation(line: 283, column: 20, scope: !1279, inlinedAt: !1290)
!1293 = !DILocation(line: 283, column: 7, scope: !1272, inlinedAt: !1290)
!1294 = !DILocation(line: 284, column: 5, scope: !1279, inlinedAt: !1290)
!1295 = !DILocation(line: 282, column: 18, scope: !1272, inlinedAt: !1290)
!1296 = !DILocation(line: 282, column: 26, scope: !1272, inlinedAt: !1290)
!1297 = !DILocation(line: 278, column: 12, scope: !1272, inlinedAt: !1290)
!1298 = !DILocation(line: 285, column: 11, scope: !1272, inlinedAt: !1290)
!1299 = !DILocation(line: 348, column: 13, scope: !1300, inlinedAt: !1256)
!1300 = distinct !DILexicalBlock(scope: !1261, file: !3, line: 348, column: 11)
!1301 = !DILocation(line: 348, column: 11, scope: !1261, inlinedAt: !1256)
!1302 = !DILocation(line: 280, column: 3, scope: !1272, inlinedAt: !1303)
!1303 = distinct !DILocation(line: 349, column: 9, scope: !1300, inlinedAt: !1256)
!1304 = !DILocation(line: 282, column: 28, scope: !1272, inlinedAt: !1303)
!1305 = !DILocation(line: 283, column: 20, scope: !1279, inlinedAt: !1303)
!1306 = !DILocation(line: 283, column: 7, scope: !1272, inlinedAt: !1303)
!1307 = !DILocation(line: 284, column: 5, scope: !1279, inlinedAt: !1303)
!1308 = !DILocation(line: 282, column: 18, scope: !1272, inlinedAt: !1303)
!1309 = !DILocation(line: 282, column: 26, scope: !1272, inlinedAt: !1303)
!1310 = !DILocation(line: 278, column: 12, scope: !1272, inlinedAt: !1303)
!1311 = !DILocation(line: 285, column: 11, scope: !1272, inlinedAt: !1303)
!1312 = !DILocation(line: 349, column: 9, scope: !1300, inlinedAt: !1256)
!1313 = !DILocation(line: 351, column: 9, scope: !1300, inlinedAt: !1256)
!1314 = !DILocation(line: 354, column: 7, scope: !1261, inlinedAt: !1256)
!1315 = !DILocation(line: 355, column: 7, scope: !1261, inlinedAt: !1256)
!1316 = !DILocation(line: 357, column: 26, scope: !1261, inlinedAt: !1256)
!1317 = !DILocation(line: 357, column: 50, scope: !1261, inlinedAt: !1256)
!1318 = !DILocation(line: 357, column: 58, scope: !1261, inlinedAt: !1256)
!1319 = !DILocation(line: 357, column: 15, scope: !1261, inlinedAt: !1256)
!1320 = !DILocation(line: 357, column: 7, scope: !1261, inlinedAt: !1256)
!1321 = !DILocation(line: 361, column: 11, scope: !1322, inlinedAt: !1256)
!1322 = distinct !DILexicalBlock(scope: !1261, file: !3, line: 359, column: 9)
!1323 = !DILocation(line: 364, column: 11, scope: !1322, inlinedAt: !1256)
!1324 = !DILocation(line: 365, column: 11, scope: !1322, inlinedAt: !1256)
!1325 = !DILocation(line: 280, column: 3, scope: !1272, inlinedAt: !1326)
!1326 = distinct !DILocation(line: 368, column: 11, scope: !1322, inlinedAt: !1256)
!1327 = !DILocation(line: 282, column: 28, scope: !1272, inlinedAt: !1326)
!1328 = !DILocation(line: 283, column: 20, scope: !1279, inlinedAt: !1326)
!1329 = !DILocation(line: 283, column: 7, scope: !1272, inlinedAt: !1326)
!1330 = !DILocation(line: 284, column: 5, scope: !1279, inlinedAt: !1326)
!1331 = !DILocation(line: 282, column: 18, scope: !1272, inlinedAt: !1326)
!1332 = !DILocation(line: 282, column: 26, scope: !1272, inlinedAt: !1326)
!1333 = !DILocation(line: 278, column: 12, scope: !1272, inlinedAt: !1326)
!1334 = !DILocation(line: 285, column: 11, scope: !1272, inlinedAt: !1326)
!1335 = !DILocation(line: 369, column: 11, scope: !1322, inlinedAt: !1256)
!1336 = !DILocation(line: 372, column: 3, scope: !175, inlinedAt: !1256)
!1337 = !DILocation(line: 416, column: 11, scope: !1207, inlinedAt: !1160)
!1338 = distinct !{!1338, !1339, !1340}
!1339 = !DILocation(line: 401, column: 3, scope: !1155)
!1340 = !DILocation(line: 418, column: 5, scope: !1155)
!1341 = !DILocalVariable(name: "__stream", arg: 1, scope: !1342, file: !1217, line: 135, type: !1081)
!1342 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1217, file: !1217, line: 135, type: !1343, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1345)
!1343 = !DISubroutineType(types: !1344)
!1344 = !{!116, !1081}
!1345 = !{!1341}
!1346 = !DILocation(line: 135, column: 1, scope: !1342, inlinedAt: !1347)
!1347 = distinct !DILocation(line: 448, column: 7, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1075, file: !3, line: 448, column: 7)
!1349 = !DILocation(line: 137, column: 10, scope: !1342, inlinedAt: !1347)
!1350 = !{!1225, !902, i64 0}
!1351 = !DILocation(line: 448, column: 7, scope: !1348)
!1352 = !DILocation(line: 448, column: 7, scope: !1075)
!1353 = !DILocation(line: 450, column: 17, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1348, file: !3, line: 449, column: 5)
!1355 = !DILocation(line: 450, column: 30, scope: !1354)
!1356 = !DILocation(line: 450, column: 7, scope: !1354)
!1357 = !DILocation(line: 451, column: 7, scope: !1354)
!1358 = !DILocation(line: 453, column: 7, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1075, file: !3, line: 453, column: 7)
!1360 = !DILocation(line: 453, column: 7, scope: !1075)
!1361 = !DILocation(line: 454, column: 5, scope: !1359)
!1362 = !DILocation(line: 455, column: 12, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1359, file: !3, line: 455, column: 12)
!1364 = !DILocation(line: 455, column: 28, scope: !1363)
!1365 = !DILocation(line: 455, column: 12, scope: !1359)
!1366 = !DILocation(line: 457, column: 17, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1363, file: !3, line: 456, column: 5)
!1368 = !DILocation(line: 457, column: 30, scope: !1367)
!1369 = !DILocation(line: 457, column: 7, scope: !1367)
!1370 = !DILocation(line: 458, column: 7, scope: !1367)
!1371 = !DILocation(line: 0, scope: !1148)
!1372 = !DILocation(line: 461, column: 1, scope: !1075)
!1373 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !192, file: !192, line: 51, type: !744, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !187, retainedNodes: !1374)
!1374 = !{!1375}
!1375 = !DILocalVariable(name: "file", arg: 1, scope: !1373, file: !192, line: 51, type: !44)
!1376 = !DILocation(line: 51, column: 41, scope: !1373)
!1377 = !DILocation(line: 53, column: 13, scope: !1373)
!1378 = !DILocation(line: 54, column: 1, scope: !1373)
!1379 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !192, file: !192, line: 88, type: !1380, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !187, retainedNodes: !1382)
!1380 = !DISubroutineType(types: !1381)
!1381 = !{null, !134}
!1382 = !{!1383}
!1383 = !DILocalVariable(name: "ignore", arg: 1, scope: !1379, file: !192, line: 88, type: !134)
!1384 = !DILocation(line: 88, column: 37, scope: !1379)
!1385 = !DILocation(line: 90, column: 16, scope: !1379)
!1386 = !{!1387, !1387, i64 0}
!1387 = !{!"_Bool", !769, i64 0}
!1388 = !DILocation(line: 91, column: 1, scope: !1379)
!1389 = distinct !DISubprogram(name: "close_stdout", scope: !192, file: !192, line: 117, type: !176, isLocal: false, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: true, unit: !187, retainedNodes: !1390)
!1390 = !{!1391}
!1391 = !DILocalVariable(name: "write_error", scope: !1392, file: !192, line: 122, type: !44)
!1392 = distinct !DILexicalBlock(scope: !1393, file: !192, line: 121, column: 5)
!1393 = distinct !DILexicalBlock(scope: !1389, file: !192, line: 119, column: 7)
!1394 = !DILocation(line: 119, column: 21, scope: !1393)
!1395 = !DILocation(line: 119, column: 7, scope: !1393)
!1396 = !DILocation(line: 119, column: 29, scope: !1393)
!1397 = !DILocation(line: 120, column: 7, scope: !1393)
!1398 = !DILocation(line: 120, column: 12, scope: !1393)
!1399 = !{i8 0, i8 2}
!1400 = !DILocation(line: 120, column: 25, scope: !1393)
!1401 = !DILocation(line: 120, column: 28, scope: !1393)
!1402 = !DILocation(line: 120, column: 34, scope: !1393)
!1403 = !DILocation(line: 119, column: 7, scope: !1389)
!1404 = !DILocation(line: 122, column: 33, scope: !1392)
!1405 = !DILocation(line: 122, column: 19, scope: !1392)
!1406 = !DILocation(line: 123, column: 11, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1392, file: !192, line: 123, column: 11)
!1408 = !DILocation(line: 0, scope: !1407)
!1409 = !DILocation(line: 123, column: 11, scope: !1392)
!1410 = !DILocation(line: 124, column: 36, scope: !1407)
!1411 = !DILocation(line: 124, column: 9, scope: !1407)
!1412 = !DILocation(line: 127, column: 9, scope: !1407)
!1413 = !DILocation(line: 129, column: 14, scope: !1392)
!1414 = !DILocation(line: 129, column: 7, scope: !1392)
!1415 = !DILocation(line: 134, column: 42, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1389, file: !192, line: 134, column: 7)
!1417 = !DILocation(line: 134, column: 28, scope: !1416)
!1418 = !DILocation(line: 134, column: 50, scope: !1416)
!1419 = !DILocation(line: 134, column: 7, scope: !1389)
!1420 = !DILocation(line: 135, column: 12, scope: !1416)
!1421 = !DILocation(line: 135, column: 5, scope: !1416)
!1422 = !DILocation(line: 136, column: 1, scope: !1389)
!1423 = distinct !DISubprogram(name: "fdadvise", scope: !1424, file: !1424, line: 31, type: !1425, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !280, retainedNodes: !1430)
!1424 = !DIFile(filename: "lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1425 = !DISubroutineType(types: !1426)
!1426 = !{null, !116, !1427, !1427, !1429}
!1427 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !1428, line: 63, baseType: !1107)
!1428 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1429 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !21, line: 52, baseType: !20)
!1430 = !{!1431, !1432, !1433, !1434, !1435}
!1431 = !DILocalVariable(name: "fd", arg: 1, scope: !1423, file: !1424, line: 31, type: !116)
!1432 = !DILocalVariable(name: "offset", arg: 2, scope: !1423, file: !1424, line: 31, type: !1427)
!1433 = !DILocalVariable(name: "len", arg: 3, scope: !1423, file: !1424, line: 31, type: !1427)
!1434 = !DILocalVariable(name: "advice", arg: 4, scope: !1423, file: !1424, line: 31, type: !1429)
!1435 = !DILocalVariable(name: "__x", scope: !1436, file: !1424, line: 34, type: !116)
!1436 = distinct !DILexicalBlock(scope: !1423, file: !1424, line: 34, column: 3)
!1437 = !DILocation(line: 31, column: 15, scope: !1423)
!1438 = !DILocation(line: 31, column: 25, scope: !1423)
!1439 = !DILocation(line: 31, column: 39, scope: !1423)
!1440 = !DILocation(line: 31, column: 54, scope: !1423)
!1441 = !DILocation(line: 34, column: 3, scope: !1436)
!1442 = !DILocation(line: 36, column: 1, scope: !1423)
!1443 = distinct !DISubprogram(name: "fadvise", scope: !1424, file: !1424, line: 39, type: !1444, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !280, retainedNodes: !1480)
!1444 = !DISubroutineType(types: !1445)
!1445 = !{null, !1446, !1429}
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!1447 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1083, line: 7, baseType: !1448)
!1448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1085, line: 49, size: 1728, elements: !1449)
!1449 = !{!1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1448, file: !1085, line: 51, baseType: !116, size: 32)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1448, file: !1085, line: 54, baseType: !36, size: 64, offset: 64)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1448, file: !1085, line: 55, baseType: !36, size: 64, offset: 128)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1448, file: !1085, line: 56, baseType: !36, size: 64, offset: 192)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1448, file: !1085, line: 57, baseType: !36, size: 64, offset: 256)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1448, file: !1085, line: 58, baseType: !36, size: 64, offset: 320)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1448, file: !1085, line: 59, baseType: !36, size: 64, offset: 384)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1448, file: !1085, line: 60, baseType: !36, size: 64, offset: 448)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1448, file: !1085, line: 61, baseType: !36, size: 64, offset: 512)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1448, file: !1085, line: 64, baseType: !36, size: 64, offset: 576)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1448, file: !1085, line: 65, baseType: !36, size: 64, offset: 640)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1448, file: !1085, line: 66, baseType: !36, size: 64, offset: 704)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1448, file: !1085, line: 68, baseType: !1100, size: 64, offset: 768)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1448, file: !1085, line: 70, baseType: !1464, size: 64, offset: 832)
!1464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1448, file: !1085, line: 72, baseType: !116, size: 32, offset: 896)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1448, file: !1085, line: 73, baseType: !116, size: 32, offset: 928)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1448, file: !1085, line: 74, baseType: !1107, size: 64, offset: 960)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1448, file: !1085, line: 77, baseType: !233, size: 16, offset: 1024)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1448, file: !1085, line: 78, baseType: !1110, size: 8, offset: 1040)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1448, file: !1085, line: 79, baseType: !1112, size: 8, offset: 1048)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1448, file: !1085, line: 81, baseType: !1116, size: 64, offset: 1088)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1448, file: !1085, line: 89, baseType: !1119, size: 64, offset: 1152)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1448, file: !1085, line: 91, baseType: !1121, size: 64, offset: 1216)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1448, file: !1085, line: 92, baseType: !1124, size: 64, offset: 1280)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1448, file: !1085, line: 93, baseType: !1464, size: 64, offset: 1344)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1448, file: !1085, line: 94, baseType: !38, size: 64, offset: 1408)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1448, file: !1085, line: 95, baseType: !63, size: 64, offset: 1472)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1448, file: !1085, line: 96, baseType: !116, size: 32, offset: 1536)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1448, file: !1085, line: 98, baseType: !1131, size: 160, offset: 1568)
!1480 = !{!1481, !1482}
!1481 = !DILocalVariable(name: "fp", arg: 1, scope: !1443, file: !1424, line: 39, type: !1446)
!1482 = !DILocalVariable(name: "advice", arg: 2, scope: !1443, file: !1424, line: 39, type: !1429)
!1483 = !DILocation(line: 39, column: 16, scope: !1443)
!1484 = !DILocation(line: 39, column: 30, scope: !1443)
!1485 = !DILocation(line: 41, column: 7, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1443, file: !1424, line: 41, column: 7)
!1487 = !DILocation(line: 41, column: 7, scope: !1443)
!1488 = !DILocation(line: 42, column: 15, scope: !1486)
!1489 = !DILocation(line: 31, column: 15, scope: !1423, inlinedAt: !1490)
!1490 = distinct !DILocation(line: 42, column: 5, scope: !1486)
!1491 = !DILocation(line: 31, column: 25, scope: !1423, inlinedAt: !1490)
!1492 = !DILocation(line: 31, column: 39, scope: !1423, inlinedAt: !1490)
!1493 = !DILocation(line: 31, column: 54, scope: !1423, inlinedAt: !1490)
!1494 = !DILocation(line: 34, column: 3, scope: !1436, inlinedAt: !1490)
!1495 = !DILocation(line: 42, column: 5, scope: !1486)
!1496 = !DILocation(line: 43, column: 1, scope: !1443)
!1497 = distinct !DISubprogram(name: "initbuffer", scope: !1498, file: !1498, line: 37, type: !1499, isLocal: false, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: true, unit: !283, retainedNodes: !1507)
!1498 = !DIFile(filename: "lib/linebuffer.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1499 = !DISubroutineType(types: !1500)
!1500 = !{null, !1501}
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1502, size: 64)
!1502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "linebuffer", file: !94, line: 26, size: 192, elements: !1503)
!1503 = !{!1504, !1505, !1506}
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1502, file: !94, line: 28, baseType: !63, size: 64)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1502, file: !94, line: 29, baseType: !63, size: 64, offset: 64)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1502, file: !94, line: 30, baseType: !36, size: 64, offset: 128)
!1507 = !{!1508}
!1508 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !1497, file: !1498, line: 37, type: !1501)
!1509 = !DILocation(line: 37, column: 32, scope: !1497)
!1510 = !DILocation(line: 39, column: 3, scope: !1497)
!1511 = !DILocation(line: 40, column: 1, scope: !1497)
!1512 = distinct !DISubprogram(name: "readlinebuffer", scope: !1498, file: !1498, line: 43, type: !1513, isLocal: false, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: true, unit: !283, retainedNodes: !1549)
!1513 = !DISubroutineType(types: !1514)
!1514 = !{!1501, !1501, !1515}
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1516, size: 64)
!1516 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1083, line: 7, baseType: !1517)
!1517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1085, line: 49, size: 1728, elements: !1518)
!1518 = !{!1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548}
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1517, file: !1085, line: 51, baseType: !116, size: 32)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1517, file: !1085, line: 54, baseType: !36, size: 64, offset: 64)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1517, file: !1085, line: 55, baseType: !36, size: 64, offset: 128)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1517, file: !1085, line: 56, baseType: !36, size: 64, offset: 192)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1517, file: !1085, line: 57, baseType: !36, size: 64, offset: 256)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1517, file: !1085, line: 58, baseType: !36, size: 64, offset: 320)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1517, file: !1085, line: 59, baseType: !36, size: 64, offset: 384)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1517, file: !1085, line: 60, baseType: !36, size: 64, offset: 448)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1517, file: !1085, line: 61, baseType: !36, size: 64, offset: 512)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1517, file: !1085, line: 64, baseType: !36, size: 64, offset: 576)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1517, file: !1085, line: 65, baseType: !36, size: 64, offset: 640)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1517, file: !1085, line: 66, baseType: !36, size: 64, offset: 704)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1517, file: !1085, line: 68, baseType: !1100, size: 64, offset: 768)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1517, file: !1085, line: 70, baseType: !1533, size: 64, offset: 832)
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1517, size: 64)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1517, file: !1085, line: 72, baseType: !116, size: 32, offset: 896)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1517, file: !1085, line: 73, baseType: !116, size: 32, offset: 928)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1517, file: !1085, line: 74, baseType: !1107, size: 64, offset: 960)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1517, file: !1085, line: 77, baseType: !233, size: 16, offset: 1024)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1517, file: !1085, line: 78, baseType: !1110, size: 8, offset: 1040)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1517, file: !1085, line: 79, baseType: !1112, size: 8, offset: 1048)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1517, file: !1085, line: 81, baseType: !1116, size: 64, offset: 1088)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1517, file: !1085, line: 89, baseType: !1119, size: 64, offset: 1152)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1517, file: !1085, line: 91, baseType: !1121, size: 64, offset: 1216)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1517, file: !1085, line: 92, baseType: !1124, size: 64, offset: 1280)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1517, file: !1085, line: 93, baseType: !1533, size: 64, offset: 1344)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1517, file: !1085, line: 94, baseType: !38, size: 64, offset: 1408)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1517, file: !1085, line: 95, baseType: !63, size: 64, offset: 1472)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1517, file: !1085, line: 96, baseType: !116, size: 32, offset: 1536)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1517, file: !1085, line: 98, baseType: !1131, size: 160, offset: 1568)
!1549 = !{!1550, !1551}
!1550 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !1512, file: !1498, line: 43, type: !1501)
!1551 = !DILocalVariable(name: "stream", arg: 2, scope: !1512, file: !1498, line: 43, type: !1515)
!1552 = !DILocation(line: 43, column: 36, scope: !1512)
!1553 = !DILocation(line: 43, column: 54, scope: !1512)
!1554 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !1555, file: !1498, line: 59, type: !1501)
!1555 = distinct !DISubprogram(name: "readlinebuffer_delim", scope: !1498, file: !1498, line: 59, type: !1556, isLocal: false, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !283, retainedNodes: !1558)
!1556 = !DISubroutineType(types: !1557)
!1557 = !{!1501, !1501, !1515, !37}
!1558 = !{!1554, !1559, !1560, !1561, !1562, !1563, !1564, !1565}
!1559 = !DILocalVariable(name: "stream", arg: 2, scope: !1555, file: !1498, line: 59, type: !1515)
!1560 = !DILocalVariable(name: "delimiter", arg: 3, scope: !1555, file: !1498, line: 60, type: !37)
!1561 = !DILocalVariable(name: "c", scope: !1555, file: !1498, line: 62, type: !116)
!1562 = !DILocalVariable(name: "buffer", scope: !1555, file: !1498, line: 63, type: !36)
!1563 = !DILocalVariable(name: "p", scope: !1555, file: !1498, line: 64, type: !36)
!1564 = !DILocalVariable(name: "end", scope: !1555, file: !1498, line: 65, type: !36)
!1565 = !DILocalVariable(name: "oldsize", scope: !1566, file: !1498, line: 83, type: !63)
!1566 = distinct !DILexicalBlock(scope: !1567, file: !1498, line: 82, column: 9)
!1567 = distinct !DILexicalBlock(scope: !1568, file: !1498, line: 81, column: 11)
!1568 = distinct !DILexicalBlock(scope: !1555, file: !1498, line: 71, column: 5)
!1569 = !DILocation(line: 59, column: 42, scope: !1555, inlinedAt: !1570)
!1570 = distinct !DILocation(line: 45, column: 10, scope: !1512)
!1571 = !DILocation(line: 59, column: 60, scope: !1555, inlinedAt: !1570)
!1572 = !DILocation(line: 60, column: 28, scope: !1555, inlinedAt: !1570)
!1573 = !DILocation(line: 63, column: 30, scope: !1555, inlinedAt: !1570)
!1574 = !DILocation(line: 63, column: 9, scope: !1555, inlinedAt: !1570)
!1575 = !DILocation(line: 64, column: 9, scope: !1555, inlinedAt: !1570)
!1576 = !DILocation(line: 65, column: 36, scope: !1555, inlinedAt: !1570)
!1577 = !DILocalVariable(name: "__stream", arg: 1, scope: !1578, file: !1217, line: 128, type: !1515)
!1578 = distinct !DISubprogram(name: "feof_unlocked", scope: !1217, file: !1217, line: 128, type: !1579, isLocal: false, isDefinition: true, scopeLine: 129, flags: DIFlagPrototyped, isOptimized: true, unit: !283, retainedNodes: !1581)
!1579 = !DISubroutineType(types: !1580)
!1580 = !{!116, !1515}
!1581 = !{!1577}
!1582 = !DILocation(line: 128, column: 1, scope: !1578, inlinedAt: !1583)
!1583 = distinct !DILocation(line: 67, column: 7, scope: !1584, inlinedAt: !1570)
!1584 = distinct !DILexicalBlock(scope: !1555, file: !1498, line: 67, column: 7)
!1585 = !DILocation(line: 130, column: 10, scope: !1578, inlinedAt: !1583)
!1586 = !DILocation(line: 67, column: 7, scope: !1584, inlinedAt: !1570)
!1587 = !DILocation(line: 67, column: 7, scope: !1555, inlinedAt: !1570)
!1588 = !{!1172, !881, i64 0}
!1589 = !DILocation(line: 65, column: 22, scope: !1555, inlinedAt: !1570)
!1590 = !DILocation(line: 65, column: 9, scope: !1555, inlinedAt: !1570)
!1591 = !DILocation(line: 68, column: 10, scope: !1592, inlinedAt: !1595)
!1592 = distinct !DISubprogram(name: "getc_unlocked", scope: !1217, file: !1217, line: 66, type: !1579, isLocal: false, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: true, unit: !283, retainedNodes: !1593)
!1593 = !{!1594}
!1594 = !DILocalVariable(name: "__fp", arg: 1, scope: !1592, file: !1217, line: 66, type: !1515)
!1595 = distinct !DILocation(line: 72, column: 11, scope: !1568, inlinedAt: !1570)
!1596 = !DILocation(line: 0, scope: !1566, inlinedAt: !1570)
!1597 = !DILocation(line: 0, scope: !1568, inlinedAt: !1570)
!1598 = !DILocation(line: 66, column: 22, scope: !1592, inlinedAt: !1595)
!1599 = !{!1225, !768, i64 8}
!1600 = !{!1225, !768, i64 16}
!1601 = !DILocation(line: 62, column: 7, scope: !1555, inlinedAt: !1570)
!1602 = !DILocation(line: 73, column: 11, scope: !1568, inlinedAt: !1570)
!1603 = !DILocation(line: 73, column: 13, scope: !1604, inlinedAt: !1570)
!1604 = distinct !DILexicalBlock(scope: !1568, file: !1498, line: 73, column: 11)
!1605 = !DILocation(line: 75, column: 17, scope: !1606, inlinedAt: !1570)
!1606 = distinct !DILexicalBlock(scope: !1607, file: !1498, line: 75, column: 15)
!1607 = distinct !DILexicalBlock(scope: !1604, file: !1498, line: 74, column: 9)
!1608 = !DILocation(line: 75, column: 27, scope: !1606, inlinedAt: !1570)
!1609 = !DILocalVariable(name: "__stream", arg: 1, scope: !1610, file: !1217, line: 135, type: !1515)
!1610 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1217, file: !1217, line: 135, type: !1579, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !283, retainedNodes: !1611)
!1611 = !{!1609}
!1612 = !DILocation(line: 135, column: 1, scope: !1610, inlinedAt: !1613)
!1613 = distinct !DILocation(line: 75, column: 30, scope: !1606, inlinedAt: !1570)
!1614 = !DILocation(line: 137, column: 10, scope: !1610, inlinedAt: !1613)
!1615 = !DILocation(line: 75, column: 30, scope: !1606, inlinedAt: !1570)
!1616 = !DILocation(line: 75, column: 15, scope: !1607, inlinedAt: !1570)
!1617 = !DILocation(line: 77, column: 15, scope: !1618, inlinedAt: !1570)
!1618 = distinct !DILexicalBlock(scope: !1607, file: !1498, line: 77, column: 15)
!1619 = !DILocation(line: 77, column: 21, scope: !1618, inlinedAt: !1570)
!1620 = !DILocation(line: 77, column: 15, scope: !1607, inlinedAt: !1570)
!1621 = !DILocation(line: 81, column: 13, scope: !1567, inlinedAt: !1570)
!1622 = !DILocation(line: 81, column: 11, scope: !1568, inlinedAt: !1570)
!1623 = !DILocation(line: 83, column: 40, scope: !1566, inlinedAt: !1570)
!1624 = !DILocation(line: 83, column: 18, scope: !1566, inlinedAt: !1570)
!1625 = !DILocation(line: 84, column: 20, scope: !1566, inlinedAt: !1570)
!1626 = !DILocation(line: 85, column: 22, scope: !1566, inlinedAt: !1570)
!1627 = !DILocation(line: 86, column: 30, scope: !1566, inlinedAt: !1570)
!1628 = !DILocation(line: 87, column: 38, scope: !1566, inlinedAt: !1570)
!1629 = !DILocation(line: 87, column: 24, scope: !1566, inlinedAt: !1570)
!1630 = !DILocation(line: 88, column: 9, scope: !1566, inlinedAt: !1570)
!1631 = !DILocation(line: 0, scope: !1555, inlinedAt: !1570)
!1632 = !DILocation(line: 89, column: 14, scope: !1568, inlinedAt: !1570)
!1633 = !DILocation(line: 89, column: 9, scope: !1568, inlinedAt: !1570)
!1634 = !DILocation(line: 89, column: 12, scope: !1568, inlinedAt: !1570)
!1635 = !DILocation(line: 91, column: 12, scope: !1555, inlinedAt: !1570)
!1636 = !DILocation(line: 90, column: 5, scope: !1568, inlinedAt: !1570)
!1637 = distinct !{!1637, !1638, !1639}
!1638 = !DILocation(line: 70, column: 3, scope: !1555)
!1639 = !DILocation(line: 91, column: 24, scope: !1555)
!1640 = !DILocation(line: 93, column: 26, scope: !1555, inlinedAt: !1570)
!1641 = !DILocation(line: 93, column: 15, scope: !1555, inlinedAt: !1570)
!1642 = !DILocation(line: 93, column: 22, scope: !1555, inlinedAt: !1570)
!1643 = !DILocation(line: 94, column: 3, scope: !1555, inlinedAt: !1570)
!1644 = !DILocation(line: 45, column: 3, scope: !1512)
!1645 = !DILocation(line: 59, column: 42, scope: !1555)
!1646 = !DILocation(line: 59, column: 60, scope: !1555)
!1647 = !DILocation(line: 60, column: 28, scope: !1555)
!1648 = !DILocation(line: 63, column: 30, scope: !1555)
!1649 = !DILocation(line: 63, column: 9, scope: !1555)
!1650 = !DILocation(line: 64, column: 9, scope: !1555)
!1651 = !DILocation(line: 65, column: 36, scope: !1555)
!1652 = !DILocation(line: 128, column: 1, scope: !1578, inlinedAt: !1653)
!1653 = distinct !DILocation(line: 67, column: 7, scope: !1584)
!1654 = !DILocation(line: 130, column: 10, scope: !1578, inlinedAt: !1653)
!1655 = !DILocation(line: 67, column: 7, scope: !1584)
!1656 = !DILocation(line: 67, column: 7, scope: !1555)
!1657 = !DILocation(line: 65, column: 22, scope: !1555)
!1658 = !DILocation(line: 65, column: 9, scope: !1555)
!1659 = !DILocation(line: 68, column: 10, scope: !1592, inlinedAt: !1660)
!1660 = distinct !DILocation(line: 72, column: 11, scope: !1568)
!1661 = !DILocation(line: 0, scope: !1566)
!1662 = !DILocation(line: 0, scope: !1568)
!1663 = !DILocation(line: 66, column: 22, scope: !1592, inlinedAt: !1660)
!1664 = !DILocation(line: 62, column: 7, scope: !1555)
!1665 = !DILocation(line: 73, column: 11, scope: !1568)
!1666 = !DILocation(line: 73, column: 13, scope: !1604)
!1667 = !DILocation(line: 75, column: 17, scope: !1606)
!1668 = !DILocation(line: 75, column: 27, scope: !1606)
!1669 = !DILocation(line: 135, column: 1, scope: !1610, inlinedAt: !1670)
!1670 = distinct !DILocation(line: 75, column: 30, scope: !1606)
!1671 = !DILocation(line: 137, column: 10, scope: !1610, inlinedAt: !1670)
!1672 = !DILocation(line: 75, column: 30, scope: !1606)
!1673 = !DILocation(line: 75, column: 15, scope: !1607)
!1674 = !DILocation(line: 77, column: 15, scope: !1618)
!1675 = !DILocation(line: 77, column: 21, scope: !1618)
!1676 = !DILocation(line: 77, column: 15, scope: !1607)
!1677 = !DILocation(line: 81, column: 13, scope: !1567)
!1678 = !DILocation(line: 81, column: 11, scope: !1568)
!1679 = !DILocation(line: 83, column: 40, scope: !1566)
!1680 = !DILocation(line: 83, column: 18, scope: !1566)
!1681 = !DILocation(line: 84, column: 20, scope: !1566)
!1682 = !DILocation(line: 85, column: 22, scope: !1566)
!1683 = !DILocation(line: 86, column: 30, scope: !1566)
!1684 = !DILocation(line: 87, column: 38, scope: !1566)
!1685 = !DILocation(line: 87, column: 24, scope: !1566)
!1686 = !DILocation(line: 88, column: 9, scope: !1566)
!1687 = !DILocation(line: 0, scope: !1555)
!1688 = !DILocation(line: 89, column: 14, scope: !1568)
!1689 = !DILocation(line: 89, column: 9, scope: !1568)
!1690 = !DILocation(line: 89, column: 12, scope: !1568)
!1691 = !DILocation(line: 91, column: 12, scope: !1555)
!1692 = !DILocation(line: 90, column: 5, scope: !1568)
!1693 = !DILocation(line: 93, column: 26, scope: !1555)
!1694 = !DILocation(line: 93, column: 15, scope: !1555)
!1695 = !DILocation(line: 93, column: 22, scope: !1555)
!1696 = !DILocation(line: 94, column: 3, scope: !1555)
!1697 = !DILocation(line: 95, column: 1, scope: !1555)
!1698 = distinct !DISubprogram(name: "freebuffer", scope: !1498, file: !1498, line: 100, type: !1499, isLocal: false, isDefinition: true, scopeLine: 101, flags: DIFlagPrototyped, isOptimized: true, unit: !283, retainedNodes: !1699)
!1699 = !{!1700}
!1700 = !DILocalVariable(name: "linebuffer", arg: 1, scope: !1698, file: !1498, line: 100, type: !1501)
!1701 = !DILocation(line: 100, column: 32, scope: !1698)
!1702 = !DILocation(line: 102, column: 21, scope: !1698)
!1703 = !DILocation(line: 102, column: 3, scope: !1698)
!1704 = !DILocation(line: 103, column: 1, scope: !1698)
!1705 = distinct !DISubprogram(name: "set_program_name", scope: !206, file: !206, line: 39, type: !744, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !202, retainedNodes: !1706)
!1706 = !{!1707, !1708, !1709}
!1707 = !DILocalVariable(name: "argv0", arg: 1, scope: !1705, file: !206, line: 39, type: !44)
!1708 = !DILocalVariable(name: "slash", scope: !1705, file: !206, line: 46, type: !44)
!1709 = !DILocalVariable(name: "base", scope: !1705, file: !206, line: 47, type: !44)
!1710 = !DILocation(line: 39, column: 31, scope: !1705)
!1711 = !DILocation(line: 51, column: 13, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1705, file: !206, line: 51, column: 7)
!1713 = !DILocation(line: 51, column: 7, scope: !1705)
!1714 = !DILocation(line: 55, column: 14, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1712, file: !206, line: 52, column: 5)
!1716 = !DILocation(line: 54, column: 7, scope: !1715)
!1717 = !DILocation(line: 56, column: 7, scope: !1715)
!1718 = !DILocation(line: 59, column: 11, scope: !1705)
!1719 = !DILocation(line: 46, column: 15, scope: !1705)
!1720 = !DILocation(line: 60, column: 17, scope: !1705)
!1721 = !DILocation(line: 60, column: 33, scope: !1705)
!1722 = !DILocation(line: 60, column: 11, scope: !1705)
!1723 = !DILocation(line: 47, column: 15, scope: !1705)
!1724 = !DILocation(line: 61, column: 12, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1705, file: !206, line: 61, column: 7)
!1726 = !DILocation(line: 61, column: 20, scope: !1725)
!1727 = !DILocation(line: 61, column: 25, scope: !1725)
!1728 = !DILocation(line: 61, column: 42, scope: !1725)
!1729 = !DILocation(line: 61, column: 28, scope: !1725)
!1730 = !DILocation(line: 61, column: 61, scope: !1725)
!1731 = !DILocation(line: 61, column: 7, scope: !1705)
!1732 = !DILocation(line: 64, column: 11, scope: !1733)
!1733 = distinct !DILexicalBlock(scope: !1734, file: !206, line: 64, column: 11)
!1734 = distinct !DILexicalBlock(scope: !1725, file: !206, line: 62, column: 5)
!1735 = !DILocation(line: 64, column: 36, scope: !1733)
!1736 = !DILocation(line: 64, column: 11, scope: !1734)
!1737 = !DILocation(line: 66, column: 24, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1733, file: !206, line: 65, column: 9)
!1739 = !DILocation(line: 70, column: 41, scope: !1738)
!1740 = !DILocation(line: 72, column: 9, scope: !1738)
!1741 = !DILocation(line: 84, column: 16, scope: !1705)
!1742 = !DILocation(line: 90, column: 27, scope: !1705)
!1743 = !DILocation(line: 92, column: 1, scope: !1705)
!1744 = distinct !DISubprogram(name: "clone_quoting_options", scope: !237, file: !237, line: 122, type: !1745, isLocal: false, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, unit: !209, retainedNodes: !1748)
!1745 = !DISubroutineType(types: !1746)
!1746 = !{!1747, !1747}
!1747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!1748 = !{!1749, !1750, !1751}
!1749 = !DILocalVariable(name: "o", arg: 1, scope: !1744, file: !237, line: 122, type: !1747)
!1750 = !DILocalVariable(name: "e", scope: !1744, file: !237, line: 124, type: !116)
!1751 = !DILocalVariable(name: "p", scope: !1744, file: !237, line: 125, type: !1747)
!1752 = !DILocation(line: 122, column: 48, scope: !1744)
!1753 = !DILocation(line: 124, column: 11, scope: !1744)
!1754 = !DILocation(line: 124, column: 7, scope: !1744)
!1755 = !DILocation(line: 125, column: 40, scope: !1744)
!1756 = !DILocation(line: 125, column: 31, scope: !1744)
!1757 = !DILocation(line: 125, column: 27, scope: !1744)
!1758 = !DILocation(line: 127, column: 9, scope: !1744)
!1759 = !DILocation(line: 128, column: 3, scope: !1744)
!1760 = distinct !DISubprogram(name: "get_quoting_style", scope: !237, file: !237, line: 133, type: !1761, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !209, retainedNodes: !1765)
!1761 = !DISubroutineType(types: !1762)
!1762 = !{!5, !1763}
!1763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1764, size: 64)
!1764 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !244)
!1765 = !{!1766}
!1766 = !DILocalVariable(name: "o", arg: 1, scope: !1760, file: !237, line: 133, type: !1763)
!1767 = !DILocation(line: 133, column: 50, scope: !1760)
!1768 = !DILocation(line: 135, column: 11, scope: !1760)
!1769 = !DILocation(line: 135, column: 46, scope: !1760)
!1770 = !{!1771, !769, i64 0}
!1771 = !{!"quoting_options", !769, i64 0, !902, i64 4, !769, i64 8, !768, i64 40, !768, i64 48}
!1772 = !DILocation(line: 135, column: 3, scope: !1760)
!1773 = distinct !DISubprogram(name: "set_quoting_style", scope: !237, file: !237, line: 141, type: !1774, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: true, unit: !209, retainedNodes: !1776)
!1774 = !DISubroutineType(types: !1775)
!1775 = !{null, !1747, !5}
!1776 = !{!1777, !1778}
!1777 = !DILocalVariable(name: "o", arg: 1, scope: !1773, file: !237, line: 141, type: !1747)
!1778 = !DILocalVariable(name: "s", arg: 2, scope: !1773, file: !237, line: 141, type: !5)
!1779 = !DILocation(line: 141, column: 44, scope: !1773)
!1780 = !DILocation(line: 141, column: 66, scope: !1773)
!1781 = !DILocation(line: 143, column: 4, scope: !1773)
!1782 = !DILocation(line: 143, column: 39, scope: !1773)
!1783 = !DILocation(line: 143, column: 45, scope: !1773)
!1784 = !DILocation(line: 144, column: 1, scope: !1773)
!1785 = distinct !DISubprogram(name: "set_char_quoting", scope: !237, file: !237, line: 152, type: !1786, isLocal: false, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, unit: !209, retainedNodes: !1788)
!1786 = !DISubroutineType(types: !1787)
!1787 = !{!116, !1747, !37, !116}
!1788 = !{!1789, !1790, !1791, !1792, !1793, !1795, !1796}
!1789 = !DILocalVariable(name: "o", arg: 1, scope: !1785, file: !237, line: 152, type: !1747)
!1790 = !DILocalVariable(name: "c", arg: 2, scope: !1785, file: !237, line: 152, type: !37)
!1791 = !DILocalVariable(name: "i", arg: 3, scope: !1785, file: !237, line: 152, type: !116)
!1792 = !DILocalVariable(name: "uc", scope: !1785, file: !237, line: 154, type: !40)
!1793 = !DILocalVariable(name: "p", scope: !1785, file: !237, line: 155, type: !1794)
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1795 = !DILocalVariable(name: "shift", scope: !1785, file: !237, line: 157, type: !116)
!1796 = !DILocalVariable(name: "r", scope: !1785, file: !237, line: 158, type: !116)
!1797 = !DILocation(line: 152, column: 43, scope: !1785)
!1798 = !DILocation(line: 152, column: 51, scope: !1785)
!1799 = !DILocation(line: 152, column: 58, scope: !1785)
!1800 = !DILocation(line: 154, column: 17, scope: !1785)
!1801 = !DILocation(line: 156, column: 6, scope: !1785)
!1802 = !DILocation(line: 156, column: 62, scope: !1785)
!1803 = !DILocation(line: 156, column: 57, scope: !1785)
!1804 = !DILocation(line: 155, column: 17, scope: !1785)
!1805 = !DILocation(line: 157, column: 15, scope: !1785)
!1806 = !DILocation(line: 157, column: 7, scope: !1785)
!1807 = !DILocation(line: 158, column: 12, scope: !1785)
!1808 = !DILocation(line: 158, column: 15, scope: !1785)
!1809 = !DILocation(line: 158, column: 25, scope: !1785)
!1810 = !DILocation(line: 158, column: 7, scope: !1785)
!1811 = !DILocation(line: 159, column: 13, scope: !1785)
!1812 = !DILocation(line: 159, column: 18, scope: !1785)
!1813 = !DILocation(line: 159, column: 23, scope: !1785)
!1814 = !DILocation(line: 159, column: 6, scope: !1785)
!1815 = !DILocation(line: 160, column: 3, scope: !1785)
!1816 = distinct !DISubprogram(name: "set_quoting_flags", scope: !237, file: !237, line: 168, type: !1817, isLocal: false, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true, unit: !209, retainedNodes: !1819)
!1817 = !DISubroutineType(types: !1818)
!1818 = !{!116, !1747, !116}
!1819 = !{!1820, !1821, !1822}
!1820 = !DILocalVariable(name: "o", arg: 1, scope: !1816, file: !237, line: 168, type: !1747)
!1821 = !DILocalVariable(name: "i", arg: 2, scope: !1816, file: !237, line: 168, type: !116)
!1822 = !DILocalVariable(name: "r", scope: !1816, file: !237, line: 170, type: !116)
!1823 = !DILocation(line: 168, column: 44, scope: !1816)
!1824 = !DILocation(line: 168, column: 51, scope: !1816)
!1825 = !DILocation(line: 171, column: 8, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !1816, file: !237, line: 171, column: 7)
!1827 = !DILocation(line: 171, column: 7, scope: !1816)
!1828 = !DILocation(line: 173, column: 10, scope: !1816)
!1829 = !{!1771, !902, i64 4}
!1830 = !DILocation(line: 170, column: 7, scope: !1816)
!1831 = !DILocation(line: 174, column: 12, scope: !1816)
!1832 = !DILocation(line: 175, column: 3, scope: !1816)
!1833 = distinct !DISubprogram(name: "set_custom_quoting", scope: !237, file: !237, line: 179, type: !1834, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !209, retainedNodes: !1836)
!1834 = !DISubroutineType(types: !1835)
!1835 = !{null, !1747, !44, !44}
!1836 = !{!1837, !1838, !1839}
!1837 = !DILocalVariable(name: "o", arg: 1, scope: !1833, file: !237, line: 179, type: !1747)
!1838 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1833, file: !237, line: 180, type: !44)
!1839 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1833, file: !237, line: 180, type: !44)
!1840 = !DILocation(line: 179, column: 45, scope: !1833)
!1841 = !DILocation(line: 180, column: 33, scope: !1833)
!1842 = !DILocation(line: 180, column: 57, scope: !1833)
!1843 = !DILocation(line: 182, column: 8, scope: !1844)
!1844 = distinct !DILexicalBlock(scope: !1833, file: !237, line: 182, column: 7)
!1845 = !DILocation(line: 182, column: 7, scope: !1833)
!1846 = !DILocation(line: 184, column: 6, scope: !1833)
!1847 = !DILocation(line: 184, column: 12, scope: !1833)
!1848 = !DILocation(line: 185, column: 8, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1833, file: !237, line: 185, column: 7)
!1850 = !DILocation(line: 185, column: 23, scope: !1849)
!1851 = !DILocation(line: 185, column: 19, scope: !1849)
!1852 = !DILocation(line: 186, column: 5, scope: !1849)
!1853 = !DILocation(line: 187, column: 6, scope: !1833)
!1854 = !DILocation(line: 187, column: 17, scope: !1833)
!1855 = !{!1771, !768, i64 40}
!1856 = !DILocation(line: 188, column: 6, scope: !1833)
!1857 = !DILocation(line: 188, column: 18, scope: !1833)
!1858 = !{!1771, !768, i64 48}
!1859 = !DILocation(line: 189, column: 1, scope: !1833)
!1860 = distinct !DISubprogram(name: "quotearg_buffer", scope: !237, file: !237, line: 784, type: !1861, isLocal: false, isDefinition: true, scopeLine: 787, flags: DIFlagPrototyped, isOptimized: true, unit: !209, retainedNodes: !1863)
!1861 = !DISubroutineType(types: !1862)
!1862 = !{!63, !36, !63, !44, !63, !1763}
!1863 = !{!1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871}
!1864 = !DILocalVariable(name: "buffer", arg: 1, scope: !1860, file: !237, line: 784, type: !36)
!1865 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1860, file: !237, line: 784, type: !63)
!1866 = !DILocalVariable(name: "arg", arg: 3, scope: !1860, file: !237, line: 785, type: !44)
!1867 = !DILocalVariable(name: "argsize", arg: 4, scope: !1860, file: !237, line: 785, type: !63)
!1868 = !DILocalVariable(name: "o", arg: 5, scope: !1860, file: !237, line: 786, type: !1763)
!1869 = !DILocalVariable(name: "p", scope: !1860, file: !237, line: 788, type: !1763)
!1870 = !DILocalVariable(name: "e", scope: !1860, file: !237, line: 789, type: !116)
!1871 = !DILocalVariable(name: "r", scope: !1860, file: !237, line: 790, type: !63)
!1872 = !DILocation(line: 784, column: 24, scope: !1860)
!1873 = !DILocation(line: 784, column: 39, scope: !1860)
!1874 = !DILocation(line: 785, column: 30, scope: !1860)
!1875 = !DILocation(line: 785, column: 42, scope: !1860)
!1876 = !DILocation(line: 786, column: 48, scope: !1860)
!1877 = !DILocation(line: 788, column: 37, scope: !1860)
!1878 = !DILocation(line: 788, column: 33, scope: !1860)
!1879 = !DILocation(line: 789, column: 11, scope: !1860)
!1880 = !DILocation(line: 789, column: 7, scope: !1860)
!1881 = !DILocation(line: 791, column: 43, scope: !1860)
!1882 = !DILocation(line: 791, column: 53, scope: !1860)
!1883 = !DILocation(line: 791, column: 60, scope: !1860)
!1884 = !DILocation(line: 792, column: 43, scope: !1860)
!1885 = !DILocation(line: 792, column: 58, scope: !1860)
!1886 = !DILocation(line: 790, column: 14, scope: !1860)
!1887 = !DILocation(line: 790, column: 10, scope: !1860)
!1888 = !DILocation(line: 793, column: 9, scope: !1860)
!1889 = !DILocation(line: 794, column: 3, scope: !1860)
!1890 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !237, file: !237, line: 256, type: !1891, isLocal: true, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: true, unit: !209, retainedNodes: !1895)
!1891 = !DISubroutineType(types: !1892)
!1892 = !{!63, !36, !63, !44, !63, !5, !116, !1893, !44, !44}
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1894 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1895 = !{!1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903, !1904, !1905, !1906, !1907, !1908, !1909, !1910, !1911, !1912, !1913, !1914, !1915, !1916, !1920, !1921, !1922, !1923, !1924, !1927, !1928, !1946, !1949, !1950, !1957}
!1896 = !DILocalVariable(name: "buffer", arg: 1, scope: !1890, file: !237, line: 256, type: !36)
!1897 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1890, file: !237, line: 256, type: !63)
!1898 = !DILocalVariable(name: "arg", arg: 3, scope: !1890, file: !237, line: 257, type: !44)
!1899 = !DILocalVariable(name: "argsize", arg: 4, scope: !1890, file: !237, line: 257, type: !63)
!1900 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1890, file: !237, line: 258, type: !5)
!1901 = !DILocalVariable(name: "flags", arg: 6, scope: !1890, file: !237, line: 258, type: !116)
!1902 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1890, file: !237, line: 259, type: !1893)
!1903 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1890, file: !237, line: 260, type: !44)
!1904 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1890, file: !237, line: 261, type: !44)
!1905 = !DILocalVariable(name: "i", scope: !1890, file: !237, line: 263, type: !63)
!1906 = !DILocalVariable(name: "len", scope: !1890, file: !237, line: 264, type: !63)
!1907 = !DILocalVariable(name: "orig_buffersize", scope: !1890, file: !237, line: 265, type: !63)
!1908 = !DILocalVariable(name: "quote_string", scope: !1890, file: !237, line: 266, type: !44)
!1909 = !DILocalVariable(name: "quote_string_len", scope: !1890, file: !237, line: 267, type: !63)
!1910 = !DILocalVariable(name: "backslash_escapes", scope: !1890, file: !237, line: 268, type: !134)
!1911 = !DILocalVariable(name: "unibyte_locale", scope: !1890, file: !237, line: 269, type: !134)
!1912 = !DILocalVariable(name: "elide_outer_quotes", scope: !1890, file: !237, line: 270, type: !134)
!1913 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1890, file: !237, line: 271, type: !134)
!1914 = !DILocalVariable(name: "encountered_single_quote", scope: !1890, file: !237, line: 272, type: !134)
!1915 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1890, file: !237, line: 273, type: !134)
!1916 = !DILocalVariable(name: "c", scope: !1917, file: !237, line: 402, type: !40)
!1917 = distinct !DILexicalBlock(scope: !1918, file: !237, line: 401, column: 5)
!1918 = distinct !DILexicalBlock(scope: !1919, file: !237, line: 400, column: 3)
!1919 = distinct !DILexicalBlock(scope: !1890, file: !237, line: 400, column: 3)
!1920 = !DILocalVariable(name: "esc", scope: !1917, file: !237, line: 403, type: !40)
!1921 = !DILocalVariable(name: "is_right_quote", scope: !1917, file: !237, line: 404, type: !134)
!1922 = !DILocalVariable(name: "escaping", scope: !1917, file: !237, line: 405, type: !134)
!1923 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1917, file: !237, line: 406, type: !134)
!1924 = !DILocalVariable(name: "m", scope: !1925, file: !237, line: 610, type: !63)
!1925 = distinct !DILexicalBlock(scope: !1926, file: !237, line: 608, column: 11)
!1926 = distinct !DILexicalBlock(scope: !1917, file: !237, line: 426, column: 9)
!1927 = !DILocalVariable(name: "printable", scope: !1925, file: !237, line: 612, type: !134)
!1928 = !DILocalVariable(name: "mbstate", scope: !1929, file: !237, line: 621, type: !1931)
!1929 = distinct !DILexicalBlock(scope: !1930, file: !237, line: 620, column: 15)
!1930 = distinct !DILexicalBlock(scope: !1925, file: !237, line: 614, column: 17)
!1931 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1932, line: 6, baseType: !1933)
!1932 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1933 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1934, line: 21, baseType: !1935)
!1934 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1935 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1934, line: 13, size: 64, elements: !1936)
!1936 = !{!1937, !1938}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1935, file: !1934, line: 15, baseType: !116, size: 32)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1935, file: !1934, line: 20, baseType: !1939, size: 32, offset: 32)
!1939 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1935, file: !1934, line: 16, size: 32, elements: !1940)
!1940 = !{!1941, !1942}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1939, file: !1934, line: 18, baseType: !7, size: 32)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1939, file: !1934, line: 19, baseType: !1943, size: 32)
!1943 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 32, elements: !1944)
!1944 = !{!1945}
!1945 = !DISubrange(count: 4)
!1946 = !DILocalVariable(name: "w", scope: !1947, file: !237, line: 631, type: !1948)
!1947 = distinct !DILexicalBlock(scope: !1929, file: !237, line: 630, column: 19)
!1948 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !64, line: 90, baseType: !116)
!1949 = !DILocalVariable(name: "bytes", scope: !1947, file: !237, line: 632, type: !63)
!1950 = !DILocalVariable(name: "j", scope: !1951, file: !237, line: 657, type: !63)
!1951 = distinct !DILexicalBlock(scope: !1952, file: !237, line: 656, column: 27)
!1952 = distinct !DILexicalBlock(scope: !1953, file: !237, line: 654, column: 29)
!1953 = distinct !DILexicalBlock(scope: !1954, file: !237, line: 649, column: 23)
!1954 = distinct !DILexicalBlock(scope: !1955, file: !237, line: 641, column: 30)
!1955 = distinct !DILexicalBlock(scope: !1956, file: !237, line: 636, column: 30)
!1956 = distinct !DILexicalBlock(scope: !1947, file: !237, line: 634, column: 25)
!1957 = !DILocalVariable(name: "ilim", scope: !1958, file: !237, line: 684, type: !63)
!1958 = distinct !DILexicalBlock(scope: !1959, file: !237, line: 681, column: 15)
!1959 = distinct !DILexicalBlock(scope: !1925, file: !237, line: 680, column: 17)
!1960 = !DILocation(line: 256, column: 33, scope: !1890)
!1961 = !DILocation(line: 256, column: 48, scope: !1890)
!1962 = !DILocation(line: 257, column: 39, scope: !1890)
!1963 = !DILocation(line: 257, column: 51, scope: !1890)
!1964 = !DILocation(line: 258, column: 46, scope: !1890)
!1965 = !DILocation(line: 258, column: 65, scope: !1890)
!1966 = !DILocation(line: 259, column: 47, scope: !1890)
!1967 = !DILocation(line: 260, column: 39, scope: !1890)
!1968 = !DILocation(line: 261, column: 39, scope: !1890)
!1969 = !DILocation(line: 264, column: 10, scope: !1890)
!1970 = !DILocation(line: 265, column: 10, scope: !1890)
!1971 = !DILocation(line: 266, column: 15, scope: !1890)
!1972 = !DILocation(line: 267, column: 10, scope: !1890)
!1973 = !DILocation(line: 268, column: 8, scope: !1890)
!1974 = !DILocation(line: 269, column: 25, scope: !1890)
!1975 = !DILocation(line: 269, column: 36, scope: !1890)
!1976 = !DILocation(line: 270, column: 8, scope: !1890)
!1977 = !DILocation(line: 271, column: 8, scope: !1890)
!1978 = !DILocation(line: 272, column: 8, scope: !1890)
!1979 = !DILocation(line: 273, column: 8, scope: !1890)
!1980 = !DILocation(line: 273, column: 3, scope: !1890)
!1981 = !DILocation(line: 0, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1890, file: !237, line: 317, column: 5)
!1983 = !DILocation(line: 316, column: 3, scope: !1890)
!1984 = !DILocation(line: 323, column: 11, scope: !1982)
!1985 = !DILocation(line: 323, column: 12, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1982, file: !237, line: 323, column: 11)
!1987 = !DILocation(line: 324, column: 9, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1989, file: !237, line: 324, column: 9)
!1989 = distinct !DILexicalBlock(scope: !1986, file: !237, line: 324, column: 9)
!1990 = !DILocation(line: 324, column: 9, scope: !1989)
!1991 = !DILocation(line: 362, column: 26, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1993, file: !237, line: 340, column: 11)
!1993 = distinct !DILexicalBlock(scope: !1994, file: !237, line: 339, column: 13)
!1994 = distinct !DILexicalBlock(scope: !1982, file: !237, line: 338, column: 7)
!1995 = !DILocation(line: 363, column: 27, scope: !1992)
!1996 = !DILocation(line: 364, column: 11, scope: !1992)
!1997 = !DILocation(line: 365, column: 14, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1994, file: !237, line: 365, column: 13)
!1999 = !DILocation(line: 365, column: 13, scope: !1994)
!2000 = !DILocation(line: 366, column: 43, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !2002, file: !237, line: 366, column: 11)
!2002 = distinct !DILexicalBlock(scope: !1998, file: !237, line: 366, column: 11)
!2003 = !DILocation(line: 366, column: 11, scope: !2002)
!2004 = !DILocation(line: 367, column: 13, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !2006, file: !237, line: 367, column: 13)
!2006 = distinct !DILexicalBlock(scope: !2001, file: !237, line: 367, column: 13)
!2007 = !DILocation(line: 367, column: 13, scope: !2006)
!2008 = !DILocation(line: 366, column: 70, scope: !2001)
!2009 = distinct !{!2009, !2003, !2010}
!2010 = !DILocation(line: 367, column: 13, scope: !2002)
!2011 = !DILocation(line: 370, column: 28, scope: !1994)
!2012 = !DILocation(line: 372, column: 7, scope: !1982)
!2013 = !DILocation(line: 376, column: 7, scope: !1982)
!2014 = !DILocation(line: 379, column: 7, scope: !1982)
!2015 = !DILocation(line: 381, column: 12, scope: !2016)
!2016 = distinct !DILexicalBlock(scope: !1982, file: !237, line: 381, column: 11)
!2017 = !DILocation(line: 381, column: 11, scope: !1982)
!2018 = !DILocation(line: 0, scope: !2016)
!2019 = !DILocation(line: 386, column: 12, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !1982, file: !237, line: 386, column: 11)
!2021 = !DILocation(line: 386, column: 11, scope: !1982)
!2022 = !DILocation(line: 387, column: 9, scope: !2023)
!2023 = distinct !DILexicalBlock(scope: !2024, file: !237, line: 387, column: 9)
!2024 = distinct !DILexicalBlock(scope: !2020, file: !237, line: 387, column: 9)
!2025 = !DILocation(line: 387, column: 9, scope: !2024)
!2026 = !DILocation(line: 394, column: 7, scope: !1982)
!2027 = !DILocation(line: 397, column: 7, scope: !1982)
!2028 = !DILocation(line: 0, scope: !1890)
!2029 = !DILocation(line: 263, column: 10, scope: !1890)
!2030 = !DILocation(line: 400, column: 8, scope: !1919)
!2031 = !DILocation(line: 0, scope: !1918)
!2032 = !DILocation(line: 400, column: 27, scope: !1918)
!2033 = !DILocation(line: 400, column: 19, scope: !1918)
!2034 = !DILocation(line: 400, column: 41, scope: !1918)
!2035 = !DILocation(line: 400, column: 48, scope: !1918)
!2036 = !DILocation(line: 400, column: 3, scope: !1919)
!2037 = !DILocation(line: 400, column: 60, scope: !1918)
!2038 = !DILocation(line: 404, column: 12, scope: !1917)
!2039 = !DILocation(line: 405, column: 12, scope: !1917)
!2040 = !DILocation(line: 406, column: 12, scope: !1917)
!2041 = !DILocation(line: 409, column: 11, scope: !2042)
!2042 = distinct !DILexicalBlock(scope: !1917, file: !237, line: 408, column: 11)
!2043 = !DILocation(line: 411, column: 17, scope: !2042)
!2044 = !DILocation(line: 412, column: 39, scope: !2042)
!2045 = !DILocation(line: 416, column: 32, scope: !2042)
!2046 = !DILocation(line: 412, column: 19, scope: !2042)
!2047 = !DILocation(line: 412, column: 15, scope: !2042)
!2048 = !DILocation(line: 417, column: 11, scope: !2042)
!2049 = !DILocation(line: 417, column: 26, scope: !2042)
!2050 = !DILocation(line: 417, column: 14, scope: !2042)
!2051 = !DILocation(line: 417, column: 63, scope: !2042)
!2052 = !DILocation(line: 408, column: 11, scope: !1917)
!2053 = !DILocation(line: 0, scope: !1917)
!2054 = !DILocation(line: 424, column: 11, scope: !1917)
!2055 = !DILocation(line: 402, column: 21, scope: !1917)
!2056 = !DILocation(line: 425, column: 7, scope: !1917)
!2057 = !DILocation(line: 428, column: 15, scope: !1926)
!2058 = !DILocation(line: 430, column: 15, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !2060, file: !237, line: 430, column: 15)
!2060 = distinct !DILexicalBlock(scope: !2061, file: !237, line: 429, column: 13)
!2061 = distinct !DILexicalBlock(scope: !1926, file: !237, line: 428, column: 15)
!2062 = !DILocation(line: 430, column: 15, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !2059, file: !237, line: 430, column: 15)
!2064 = !DILocation(line: 430, column: 15, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !2066, file: !237, line: 430, column: 15)
!2066 = distinct !DILexicalBlock(scope: !2067, file: !237, line: 430, column: 15)
!2067 = distinct !DILexicalBlock(scope: !2063, file: !237, line: 430, column: 15)
!2068 = !DILocation(line: 430, column: 15, scope: !2066)
!2069 = !DILocation(line: 430, column: 15, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !2071, file: !237, line: 430, column: 15)
!2071 = distinct !DILexicalBlock(scope: !2067, file: !237, line: 430, column: 15)
!2072 = !DILocation(line: 430, column: 15, scope: !2071)
!2073 = !DILocation(line: 430, column: 15, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !2075, file: !237, line: 430, column: 15)
!2075 = distinct !DILexicalBlock(scope: !2067, file: !237, line: 430, column: 15)
!2076 = !DILocation(line: 430, column: 15, scope: !2075)
!2077 = !DILocation(line: 430, column: 15, scope: !2067)
!2078 = !DILocation(line: 430, column: 15, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !2080, file: !237, line: 430, column: 15)
!2080 = distinct !DILexicalBlock(scope: !2059, file: !237, line: 430, column: 15)
!2081 = !DILocation(line: 430, column: 15, scope: !2080)
!2082 = !DILocation(line: 438, column: 19, scope: !2083)
!2083 = distinct !DILexicalBlock(scope: !2060, file: !237, line: 437, column: 19)
!2084 = !DILocation(line: 438, column: 24, scope: !2083)
!2085 = !DILocation(line: 438, column: 28, scope: !2083)
!2086 = !DILocation(line: 438, column: 38, scope: !2083)
!2087 = !DILocation(line: 438, column: 48, scope: !2083)
!2088 = !DILocation(line: 438, column: 59, scope: !2083)
!2089 = !DILocation(line: 440, column: 19, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !2091, file: !237, line: 440, column: 19)
!2091 = distinct !DILexicalBlock(scope: !2092, file: !237, line: 440, column: 19)
!2092 = distinct !DILexicalBlock(scope: !2083, file: !237, line: 439, column: 17)
!2093 = !DILocation(line: 440, column: 19, scope: !2091)
!2094 = !DILocation(line: 441, column: 19, scope: !2095)
!2095 = distinct !DILexicalBlock(scope: !2096, file: !237, line: 441, column: 19)
!2096 = distinct !DILexicalBlock(scope: !2092, file: !237, line: 441, column: 19)
!2097 = !DILocation(line: 441, column: 19, scope: !2096)
!2098 = !DILocation(line: 442, column: 17, scope: !2092)
!2099 = !DILocation(line: 449, column: 20, scope: !2061)
!2100 = !DILocation(line: 454, column: 11, scope: !1926)
!2101 = !DILocation(line: 457, column: 19, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !1926, file: !237, line: 455, column: 13)
!2103 = !DILocation(line: 463, column: 19, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !2102, file: !237, line: 462, column: 19)
!2105 = !DILocation(line: 463, column: 24, scope: !2104)
!2106 = !DILocation(line: 463, column: 28, scope: !2104)
!2107 = !DILocation(line: 463, column: 38, scope: !2104)
!2108 = !DILocation(line: 463, column: 47, scope: !2104)
!2109 = !DILocation(line: 463, column: 41, scope: !2104)
!2110 = !DILocation(line: 463, column: 52, scope: !2104)
!2111 = !DILocation(line: 462, column: 19, scope: !2102)
!2112 = !DILocation(line: 464, column: 25, scope: !2104)
!2113 = !DILocation(line: 464, column: 17, scope: !2104)
!2114 = !DILocation(line: 471, column: 25, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !2104, file: !237, line: 465, column: 19)
!2116 = !DILocation(line: 475, column: 21, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !2118, file: !237, line: 475, column: 21)
!2118 = distinct !DILexicalBlock(scope: !2115, file: !237, line: 475, column: 21)
!2119 = !DILocation(line: 475, column: 21, scope: !2118)
!2120 = !DILocation(line: 476, column: 21, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !2122, file: !237, line: 476, column: 21)
!2122 = distinct !DILexicalBlock(scope: !2115, file: !237, line: 476, column: 21)
!2123 = !DILocation(line: 476, column: 21, scope: !2122)
!2124 = !DILocation(line: 477, column: 21, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !2126, file: !237, line: 477, column: 21)
!2126 = distinct !DILexicalBlock(scope: !2115, file: !237, line: 477, column: 21)
!2127 = !DILocation(line: 477, column: 21, scope: !2126)
!2128 = !DILocation(line: 478, column: 21, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !2130, file: !237, line: 478, column: 21)
!2130 = distinct !DILexicalBlock(scope: !2115, file: !237, line: 478, column: 21)
!2131 = !DILocation(line: 478, column: 21, scope: !2130)
!2132 = !DILocation(line: 479, column: 21, scope: !2115)
!2133 = !DILocation(line: 403, column: 21, scope: !1917)
!2134 = !DILocation(line: 492, column: 31, scope: !1926)
!2135 = !DILocation(line: 493, column: 31, scope: !1926)
!2136 = !DILocation(line: 495, column: 31, scope: !1926)
!2137 = !DILocation(line: 496, column: 31, scope: !1926)
!2138 = !DILocation(line: 497, column: 31, scope: !1926)
!2139 = !DILocation(line: 500, column: 15, scope: !1926)
!2140 = !DILocation(line: 502, column: 19, scope: !2141)
!2141 = distinct !DILexicalBlock(scope: !2142, file: !237, line: 501, column: 13)
!2142 = distinct !DILexicalBlock(scope: !1926, file: !237, line: 500, column: 15)
!2143 = !DILocation(line: 509, column: 33, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !1926, file: !237, line: 509, column: 15)
!2145 = !DILocation(line: 0, scope: !1926)
!2146 = !DILocation(line: 514, column: 15, scope: !2147)
!2147 = distinct !DILexicalBlock(scope: !1926, file: !237, line: 513, column: 15)
!2148 = !DILocation(line: 518, column: 15, scope: !1926)
!2149 = !DILocation(line: 526, column: 26, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !1926, file: !237, line: 526, column: 15)
!2151 = !DILocation(line: 526, column: 15, scope: !1926)
!2152 = !DILocation(line: 526, column: 40, scope: !2150)
!2153 = !DILocation(line: 526, column: 47, scope: !2150)
!2154 = !DILocation(line: 530, column: 17, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !1926, file: !237, line: 530, column: 15)
!2156 = !DILocation(line: 526, column: 18, scope: !2150)
!2157 = !DILocation(line: 526, column: 65, scope: !2150)
!2158 = !DILocation(line: 530, column: 15, scope: !1926)
!2159 = !DILocation(line: 535, column: 11, scope: !1926)
!2160 = !DILocation(line: 549, column: 15, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !1926, file: !237, line: 548, column: 15)
!2162 = !DILocation(line: 556, column: 15, scope: !1926)
!2163 = !DILocation(line: 558, column: 19, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !2165, file: !237, line: 557, column: 13)
!2165 = distinct !DILexicalBlock(scope: !1926, file: !237, line: 556, column: 15)
!2166 = !DILocation(line: 561, column: 19, scope: !2167)
!2167 = distinct !DILexicalBlock(scope: !2164, file: !237, line: 561, column: 19)
!2168 = !DILocation(line: 561, column: 35, scope: !2167)
!2169 = !DILocation(line: 561, column: 30, scope: !2167)
!2170 = !DILocation(line: 570, column: 15, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2172, file: !237, line: 570, column: 15)
!2172 = distinct !DILexicalBlock(scope: !2164, file: !237, line: 570, column: 15)
!2173 = !DILocation(line: 570, column: 15, scope: !2172)
!2174 = !DILocation(line: 571, column: 15, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !2176, file: !237, line: 571, column: 15)
!2176 = distinct !DILexicalBlock(scope: !2164, file: !237, line: 571, column: 15)
!2177 = !DILocation(line: 571, column: 15, scope: !2176)
!2178 = !DILocation(line: 572, column: 15, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !2180, file: !237, line: 572, column: 15)
!2180 = distinct !DILexicalBlock(scope: !2164, file: !237, line: 572, column: 15)
!2181 = !DILocation(line: 572, column: 15, scope: !2180)
!2182 = !DILocation(line: 574, column: 13, scope: !2164)
!2183 = !DILocation(line: 614, column: 17, scope: !1925)
!2184 = !DILocation(line: 610, column: 20, scope: !1925)
!2185 = !DILocation(line: 617, column: 29, scope: !2186)
!2186 = distinct !DILexicalBlock(scope: !1930, file: !237, line: 615, column: 15)
!2187 = !{!1226, !1226, i64 0}
!2188 = !DILocation(line: 617, column: 27, scope: !2186)
!2189 = !DILocation(line: 612, column: 18, scope: !1925)
!2190 = !DILocation(line: 618, column: 15, scope: !2186)
!2191 = !DILocation(line: 621, column: 17, scope: !1929)
!2192 = !DILocation(line: 622, column: 17, scope: !1929)
!2193 = !DILocation(line: 626, column: 29, scope: !2194)
!2194 = distinct !DILexicalBlock(scope: !1929, file: !237, line: 626, column: 21)
!2195 = !DILocation(line: 626, column: 21, scope: !1929)
!2196 = !DILocation(line: 627, column: 29, scope: !2194)
!2197 = !DILocation(line: 627, column: 19, scope: !2194)
!2198 = !DILocation(line: 0, scope: !2042)
!2199 = !DILocation(line: 629, column: 17, scope: !1929)
!2200 = !DILocation(line: 624, column: 19, scope: !1929)
!2201 = !DILocation(line: 625, column: 27, scope: !1929)
!2202 = !DILocation(line: 631, column: 21, scope: !1947)
!2203 = !DILocation(line: 632, column: 56, scope: !1947)
!2204 = !DILocation(line: 632, column: 50, scope: !1947)
!2205 = !DILocation(line: 633, column: 53, scope: !1947)
!2206 = !DILocation(line: 621, column: 27, scope: !1929)
!2207 = !DILocation(line: 631, column: 29, scope: !1947)
!2208 = !DILocation(line: 632, column: 36, scope: !1947)
!2209 = !DILocation(line: 632, column: 28, scope: !1947)
!2210 = !DILocation(line: 634, column: 25, scope: !1947)
!2211 = !DILocation(line: 644, column: 38, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !1954, file: !237, line: 642, column: 23)
!2213 = !DILocation(line: 644, column: 48, scope: !2212)
!2214 = !DILocation(line: 644, column: 51, scope: !2212)
!2215 = !DILocation(line: 644, column: 25, scope: !2212)
!2216 = !DILocation(line: 645, column: 28, scope: !2212)
!2217 = !DILocation(line: 644, column: 34, scope: !2212)
!2218 = distinct !{!2218, !2215, !2216}
!2219 = !DILocation(line: 658, column: 43, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !2221, file: !237, line: 658, column: 29)
!2221 = distinct !DILexicalBlock(scope: !1951, file: !237, line: 658, column: 29)
!2222 = !DILocation(line: 655, column: 29, scope: !1952)
!2223 = !DILocation(line: 657, column: 36, scope: !1951)
!2224 = !DILocation(line: 659, column: 49, scope: !2220)
!2225 = !DILocation(line: 659, column: 39, scope: !2220)
!2226 = !DILocation(line: 659, column: 31, scope: !2220)
!2227 = !DILocation(line: 658, column: 53, scope: !2220)
!2228 = !DILocation(line: 658, column: 29, scope: !2221)
!2229 = distinct !{!2229, !2228, !2230}
!2230 = !DILocation(line: 667, column: 33, scope: !2221)
!2231 = !DILocation(line: 674, column: 19, scope: !1929)
!2232 = !DILocation(line: 670, column: 41, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !1953, file: !237, line: 670, column: 29)
!2234 = !DILocation(line: 670, column: 31, scope: !2233)
!2235 = !DILocation(line: 670, column: 29, scope: !1953)
!2236 = !DILocation(line: 672, column: 27, scope: !1953)
!2237 = !DILocation(line: 675, column: 26, scope: !1929)
!2238 = !DILocation(line: 675, column: 24, scope: !1929)
!2239 = !DILocation(line: 674, column: 19, scope: !1947)
!2240 = distinct !{!2240, !2199, !2241}
!2241 = !DILocation(line: 675, column: 44, scope: !1929)
!2242 = !DILocation(line: 676, column: 15, scope: !1930)
!2243 = !DILocation(line: 0, scope: !2194)
!2244 = !DILocation(line: 0, scope: !1929)
!2245 = !DILocation(line: 678, column: 40, scope: !1925)
!2246 = !DILocation(line: 680, column: 19, scope: !1959)
!2247 = !DILocation(line: 680, column: 45, scope: !1959)
!2248 = !DILocation(line: 680, column: 23, scope: !1959)
!2249 = !DILocation(line: 684, column: 33, scope: !1958)
!2250 = !DILocation(line: 684, column: 24, scope: !1958)
!2251 = !DILocation(line: 686, column: 17, scope: !1958)
!2252 = !DILocation(line: 0, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !2254, file: !237, line: 687, column: 19)
!2254 = distinct !DILexicalBlock(scope: !2255, file: !237, line: 686, column: 17)
!2255 = distinct !DILexicalBlock(scope: !1958, file: !237, line: 686, column: 17)
!2256 = !DILocation(line: 0, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !2253, file: !237, line: 703, column: 21)
!2258 = !DILocation(line: 0, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2260, file: !237, line: 696, column: 23)
!2260 = distinct !DILexicalBlock(scope: !2261, file: !237, line: 695, column: 30)
!2261 = distinct !DILexicalBlock(scope: !2253, file: !237, line: 688, column: 25)
!2262 = !DILocation(line: 688, column: 43, scope: !2261)
!2263 = !DILocation(line: 690, column: 25, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2265, file: !237, line: 690, column: 25)
!2265 = distinct !DILexicalBlock(scope: !2261, file: !237, line: 689, column: 23)
!2266 = !DILocation(line: 690, column: 25, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2264, file: !237, line: 690, column: 25)
!2268 = !DILocation(line: 690, column: 25, scope: !2269)
!2269 = distinct !DILexicalBlock(scope: !2270, file: !237, line: 690, column: 25)
!2270 = distinct !DILexicalBlock(scope: !2271, file: !237, line: 690, column: 25)
!2271 = distinct !DILexicalBlock(scope: !2267, file: !237, line: 690, column: 25)
!2272 = !DILocation(line: 690, column: 25, scope: !2270)
!2273 = !DILocation(line: 690, column: 25, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !2275, file: !237, line: 690, column: 25)
!2275 = distinct !DILexicalBlock(scope: !2271, file: !237, line: 690, column: 25)
!2276 = !DILocation(line: 690, column: 25, scope: !2275)
!2277 = !DILocation(line: 690, column: 25, scope: !2278)
!2278 = distinct !DILexicalBlock(scope: !2279, file: !237, line: 690, column: 25)
!2279 = distinct !DILexicalBlock(scope: !2271, file: !237, line: 690, column: 25)
!2280 = !DILocation(line: 690, column: 25, scope: !2279)
!2281 = !DILocation(line: 690, column: 25, scope: !2271)
!2282 = !DILocation(line: 690, column: 25, scope: !2283)
!2283 = distinct !DILexicalBlock(scope: !2284, file: !237, line: 690, column: 25)
!2284 = distinct !DILexicalBlock(scope: !2264, file: !237, line: 690, column: 25)
!2285 = !DILocation(line: 690, column: 25, scope: !2284)
!2286 = !DILocation(line: 691, column: 25, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !2288, file: !237, line: 691, column: 25)
!2288 = distinct !DILexicalBlock(scope: !2265, file: !237, line: 691, column: 25)
!2289 = !DILocation(line: 691, column: 25, scope: !2288)
!2290 = !DILocation(line: 692, column: 25, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !2292, file: !237, line: 692, column: 25)
!2292 = distinct !DILexicalBlock(scope: !2265, file: !237, line: 692, column: 25)
!2293 = !DILocation(line: 692, column: 25, scope: !2292)
!2294 = !DILocation(line: 693, column: 38, scope: !2265)
!2295 = !DILocation(line: 693, column: 33, scope: !2265)
!2296 = !DILocation(line: 694, column: 23, scope: !2265)
!2297 = !DILocation(line: 695, column: 30, scope: !2260)
!2298 = !DILocation(line: 695, column: 30, scope: !2261)
!2299 = !DILocation(line: 697, column: 25, scope: !2300)
!2300 = distinct !DILexicalBlock(scope: !2301, file: !237, line: 697, column: 25)
!2301 = distinct !DILexicalBlock(scope: !2259, file: !237, line: 697, column: 25)
!2302 = !DILocation(line: 697, column: 25, scope: !2301)
!2303 = !DILocation(line: 699, column: 23, scope: !2259)
!2304 = !DILocation(line: 0, scope: !2292)
!2305 = !DILocation(line: 0, scope: !2265)
!2306 = !DILocation(line: 0, scope: !2307)
!2307 = distinct !DILexicalBlock(scope: !2042, file: !237, line: 418, column: 9)
!2308 = !DILocation(line: 0, scope: !2264)
!2309 = !DILocation(line: 700, column: 35, scope: !2310)
!2310 = distinct !DILexicalBlock(scope: !2253, file: !237, line: 700, column: 25)
!2311 = !DILocation(line: 700, column: 30, scope: !2310)
!2312 = !DILocation(line: 700, column: 25, scope: !2253)
!2313 = !DILocation(line: 702, column: 21, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !2315, file: !237, line: 702, column: 21)
!2315 = distinct !DILexicalBlock(scope: !2253, file: !237, line: 702, column: 21)
!2316 = !DILocation(line: 702, column: 21, scope: !2317)
!2317 = distinct !DILexicalBlock(scope: !2318, file: !237, line: 702, column: 21)
!2318 = distinct !DILexicalBlock(scope: !2319, file: !237, line: 702, column: 21)
!2319 = distinct !DILexicalBlock(scope: !2314, file: !237, line: 702, column: 21)
!2320 = !DILocation(line: 702, column: 21, scope: !2318)
!2321 = !DILocation(line: 702, column: 21, scope: !2322)
!2322 = distinct !DILexicalBlock(scope: !2323, file: !237, line: 702, column: 21)
!2323 = distinct !DILexicalBlock(scope: !2319, file: !237, line: 702, column: 21)
!2324 = !DILocation(line: 702, column: 21, scope: !2323)
!2325 = !DILocation(line: 702, column: 21, scope: !2319)
!2326 = !DILocation(line: 0, scope: !2301)
!2327 = !DILocation(line: 703, column: 21, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !2257, file: !237, line: 703, column: 21)
!2329 = !DILocation(line: 703, column: 21, scope: !2257)
!2330 = !DILocation(line: 704, column: 25, scope: !2253)
!2331 = !DILocation(line: 686, column: 17, scope: !2254)
!2332 = distinct !{!2332, !2333, !2334}
!2333 = !DILocation(line: 686, column: 17, scope: !2255)
!2334 = !DILocation(line: 705, column: 19, scope: !2255)
!2335 = !DILocation(line: 0, scope: !1919)
!2336 = !DILocation(line: 416, column: 30, scope: !2042)
!2337 = !DILocation(line: 712, column: 34, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !1917, file: !237, line: 712, column: 11)
!2339 = !DILocation(line: 714, column: 14, scope: !2338)
!2340 = !DILocation(line: 715, column: 14, scope: !2338)
!2341 = !DILocation(line: 715, column: 35, scope: !2338)
!2342 = !DILocation(line: 715, column: 17, scope: !2338)
!2343 = !DILocation(line: 715, column: 47, scope: !2338)
!2344 = !DILocation(line: 715, column: 65, scope: !2338)
!2345 = !DILocation(line: 716, column: 15, scope: !2338)
!2346 = !DILocation(line: 716, column: 11, scope: !2338)
!2347 = !DILocation(line: 712, column: 11, scope: !1917)
!2348 = !DILocation(line: 400, column: 10, scope: !1919)
!2349 = !DILocation(line: 0, scope: !2350)
!2350 = distinct !DILexicalBlock(scope: !2351, file: !237, line: 519, column: 13)
!2351 = distinct !DILexicalBlock(scope: !1926, file: !237, line: 518, column: 15)
!2352 = !DILocation(line: 720, column: 7, scope: !2353)
!2353 = distinct !DILexicalBlock(scope: !1917, file: !237, line: 720, column: 7)
!2354 = !DILocation(line: 720, column: 7, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !2353, file: !237, line: 720, column: 7)
!2356 = !DILocation(line: 720, column: 7, scope: !2357)
!2357 = distinct !DILexicalBlock(scope: !2358, file: !237, line: 720, column: 7)
!2358 = distinct !DILexicalBlock(scope: !2359, file: !237, line: 720, column: 7)
!2359 = distinct !DILexicalBlock(scope: !2355, file: !237, line: 720, column: 7)
!2360 = !DILocation(line: 720, column: 7, scope: !2358)
!2361 = !DILocation(line: 720, column: 7, scope: !2362)
!2362 = distinct !DILexicalBlock(scope: !2363, file: !237, line: 720, column: 7)
!2363 = distinct !DILexicalBlock(scope: !2359, file: !237, line: 720, column: 7)
!2364 = !DILocation(line: 720, column: 7, scope: !2363)
!2365 = !DILocation(line: 720, column: 7, scope: !2366)
!2366 = distinct !DILexicalBlock(scope: !2367, file: !237, line: 720, column: 7)
!2367 = distinct !DILexicalBlock(scope: !2359, file: !237, line: 720, column: 7)
!2368 = !DILocation(line: 720, column: 7, scope: !2367)
!2369 = !DILocation(line: 720, column: 7, scope: !2359)
!2370 = !DILocation(line: 720, column: 7, scope: !2371)
!2371 = distinct !DILexicalBlock(scope: !2372, file: !237, line: 720, column: 7)
!2372 = distinct !DILexicalBlock(scope: !2353, file: !237, line: 720, column: 7)
!2373 = !DILocation(line: 720, column: 7, scope: !2372)
!2374 = !DILocation(line: 723, column: 7, scope: !2375)
!2375 = distinct !DILexicalBlock(scope: !2376, file: !237, line: 723, column: 7)
!2376 = distinct !DILexicalBlock(scope: !1917, file: !237, line: 723, column: 7)
!2377 = !DILocation(line: 424, column: 9, scope: !1917)
!2378 = !DILocation(line: 723, column: 7, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !2380, file: !237, line: 723, column: 7)
!2380 = distinct !DILexicalBlock(scope: !2381, file: !237, line: 723, column: 7)
!2381 = distinct !DILexicalBlock(scope: !2375, file: !237, line: 723, column: 7)
!2382 = !DILocation(line: 723, column: 7, scope: !2380)
!2383 = !DILocation(line: 723, column: 7, scope: !2384)
!2384 = distinct !DILexicalBlock(scope: !2385, file: !237, line: 723, column: 7)
!2385 = distinct !DILexicalBlock(scope: !2381, file: !237, line: 723, column: 7)
!2386 = !DILocation(line: 723, column: 7, scope: !2385)
!2387 = !DILocation(line: 723, column: 7, scope: !2381)
!2388 = !DILocation(line: 724, column: 7, scope: !2389)
!2389 = distinct !DILexicalBlock(scope: !2390, file: !237, line: 724, column: 7)
!2390 = distinct !DILexicalBlock(scope: !1917, file: !237, line: 724, column: 7)
!2391 = !DILocation(line: 724, column: 7, scope: !2390)
!2392 = !DILocation(line: 726, column: 13, scope: !2393)
!2393 = distinct !DILexicalBlock(scope: !1917, file: !237, line: 726, column: 11)
!2394 = !DILocation(line: 726, column: 11, scope: !1917)
!2395 = !DILocation(line: 728, column: 5, scope: !1918)
!2396 = !DILocation(line: 400, column: 75, scope: !1918)
!2397 = !DILocation(line: 400, column: 3, scope: !1918)
!2398 = distinct !{!2398, !2036, !2399}
!2399 = !DILocation(line: 728, column: 5, scope: !1919)
!2400 = !DILocation(line: 730, column: 11, scope: !2401)
!2401 = distinct !DILexicalBlock(scope: !1890, file: !237, line: 730, column: 7)
!2402 = !DILocation(line: 730, column: 16, scope: !2401)
!2403 = !DILocation(line: 738, column: 51, scope: !2404)
!2404 = distinct !DILexicalBlock(scope: !1890, file: !237, line: 738, column: 7)
!2405 = !DILocation(line: 739, column: 10, scope: !2404)
!2406 = !DILocation(line: 741, column: 11, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !2408, file: !237, line: 741, column: 11)
!2408 = distinct !DILexicalBlock(scope: !2404, file: !237, line: 740, column: 5)
!2409 = !DILocation(line: 741, column: 11, scope: !2408)
!2410 = !DILocation(line: 742, column: 16, scope: !2407)
!2411 = !DILocation(line: 742, column: 9, scope: !2407)
!2412 = !DILocation(line: 746, column: 18, scope: !2413)
!2413 = distinct !DILexicalBlock(scope: !2407, file: !237, line: 746, column: 16)
!2414 = !DILocation(line: 746, column: 32, scope: !2413)
!2415 = !DILocation(line: 746, column: 29, scope: !2413)
!2416 = !DILocation(line: 755, column: 7, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !1890, file: !237, line: 755, column: 7)
!2418 = !DILocation(line: 755, column: 20, scope: !2417)
!2419 = !DILocation(line: 756, column: 12, scope: !2420)
!2420 = distinct !DILexicalBlock(scope: !2421, file: !237, line: 756, column: 5)
!2421 = distinct !DILexicalBlock(scope: !2417, file: !237, line: 756, column: 5)
!2422 = !DILocation(line: 756, column: 5, scope: !2421)
!2423 = !DILocation(line: 757, column: 7, scope: !2424)
!2424 = distinct !DILexicalBlock(scope: !2425, file: !237, line: 757, column: 7)
!2425 = distinct !DILexicalBlock(scope: !2420, file: !237, line: 757, column: 7)
!2426 = !DILocation(line: 757, column: 7, scope: !2425)
!2427 = !DILocation(line: 756, column: 39, scope: !2420)
!2428 = distinct !{!2428, !2422, !2429}
!2429 = !DILocation(line: 757, column: 7, scope: !2421)
!2430 = !DILocation(line: 759, column: 11, scope: !2431)
!2431 = distinct !DILexicalBlock(scope: !1890, file: !237, line: 759, column: 7)
!2432 = !DILocation(line: 759, column: 7, scope: !1890)
!2433 = !DILocation(line: 760, column: 5, scope: !2431)
!2434 = !DILocation(line: 760, column: 17, scope: !2431)
!2435 = !DILocation(line: 766, column: 21, scope: !2436)
!2436 = distinct !DILexicalBlock(scope: !1890, file: !237, line: 766, column: 7)
!2437 = !DILocation(line: 766, column: 54, scope: !2436)
!2438 = !DILocation(line: 766, column: 51, scope: !2436)
!2439 = !DILocation(line: 770, column: 42, scope: !1890)
!2440 = !DILocation(line: 768, column: 10, scope: !1890)
!2441 = !DILocation(line: 768, column: 3, scope: !1890)
!2442 = !DILocation(line: 772, column: 1, scope: !1890)
!2443 = distinct !DISubprogram(name: "gettext_quote", scope: !237, file: !237, line: 207, type: !2444, isLocal: true, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: true, unit: !209, retainedNodes: !2446)
!2444 = !DISubroutineType(types: !2445)
!2445 = !{!44, !44, !5}
!2446 = !{!2447, !2448, !2449, !2450}
!2447 = !DILocalVariable(name: "msgid", arg: 1, scope: !2443, file: !237, line: 207, type: !44)
!2448 = !DILocalVariable(name: "s", arg: 2, scope: !2443, file: !237, line: 207, type: !5)
!2449 = !DILocalVariable(name: "translation", scope: !2443, file: !237, line: 209, type: !44)
!2450 = !DILocalVariable(name: "locale_code", scope: !2443, file: !237, line: 210, type: !44)
!2451 = !DILocation(line: 207, column: 28, scope: !2443)
!2452 = !DILocation(line: 207, column: 54, scope: !2443)
!2453 = !DILocation(line: 209, column: 29, scope: !2443)
!2454 = !DILocation(line: 209, column: 15, scope: !2443)
!2455 = !DILocation(line: 212, column: 19, scope: !2456)
!2456 = distinct !DILexicalBlock(scope: !2443, file: !237, line: 212, column: 7)
!2457 = !DILocation(line: 212, column: 7, scope: !2443)
!2458 = !DILocation(line: 233, column: 17, scope: !2443)
!2459 = !DILocation(line: 210, column: 15, scope: !2443)
!2460 = !DILocalVariable(name: "s1", arg: 1, scope: !2461, file: !2462, line: 160, type: !44)
!2461 = distinct !DISubprogram(name: "strcaseeq0", scope: !2462, file: !2462, line: 160, type: !2463, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !209, retainedNodes: !2465)
!2462 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2463 = !DISubroutineType(types: !2464)
!2464 = !{!116, !44, !44, !37, !37, !37, !37, !37, !37, !37, !37, !37}
!2465 = !{!2460, !2466, !2467, !2468, !2469, !2470, !2471, !2472, !2473, !2474, !2475}
!2466 = !DILocalVariable(name: "s2", arg: 2, scope: !2461, file: !2462, line: 160, type: !44)
!2467 = !DILocalVariable(name: "s20", arg: 3, scope: !2461, file: !2462, line: 160, type: !37)
!2468 = !DILocalVariable(name: "s21", arg: 4, scope: !2461, file: !2462, line: 160, type: !37)
!2469 = !DILocalVariable(name: "s22", arg: 5, scope: !2461, file: !2462, line: 160, type: !37)
!2470 = !DILocalVariable(name: "s23", arg: 6, scope: !2461, file: !2462, line: 160, type: !37)
!2471 = !DILocalVariable(name: "s24", arg: 7, scope: !2461, file: !2462, line: 160, type: !37)
!2472 = !DILocalVariable(name: "s25", arg: 8, scope: !2461, file: !2462, line: 160, type: !37)
!2473 = !DILocalVariable(name: "s26", arg: 9, scope: !2461, file: !2462, line: 160, type: !37)
!2474 = !DILocalVariable(name: "s27", arg: 10, scope: !2461, file: !2462, line: 160, type: !37)
!2475 = !DILocalVariable(name: "s28", arg: 11, scope: !2461, file: !2462, line: 160, type: !37)
!2476 = !DILocation(line: 160, column: 25, scope: !2461, inlinedAt: !2477)
!2477 = distinct !DILocation(line: 234, column: 7, scope: !2478)
!2478 = distinct !DILexicalBlock(scope: !2443, file: !237, line: 234, column: 7)
!2479 = !DILocation(line: 160, column: 41, scope: !2461, inlinedAt: !2477)
!2480 = !DILocation(line: 160, column: 50, scope: !2461, inlinedAt: !2477)
!2481 = !DILocation(line: 160, column: 60, scope: !2461, inlinedAt: !2477)
!2482 = !DILocation(line: 160, column: 70, scope: !2461, inlinedAt: !2477)
!2483 = !DILocation(line: 160, column: 80, scope: !2461, inlinedAt: !2477)
!2484 = !DILocation(line: 160, column: 90, scope: !2461, inlinedAt: !2477)
!2485 = !DILocation(line: 160, column: 100, scope: !2461, inlinedAt: !2477)
!2486 = !DILocation(line: 160, column: 110, scope: !2461, inlinedAt: !2477)
!2487 = !DILocation(line: 160, column: 120, scope: !2461, inlinedAt: !2477)
!2488 = !DILocation(line: 160, column: 130, scope: !2461, inlinedAt: !2477)
!2489 = !DILocation(line: 162, column: 7, scope: !2490, inlinedAt: !2477)
!2490 = distinct !DILexicalBlock(scope: !2461, file: !2462, line: 162, column: 7)
!2491 = !DILocalVariable(name: "s1", arg: 1, scope: !2492, file: !2462, line: 146, type: !44)
!2492 = distinct !DISubprogram(name: "strcaseeq1", scope: !2462, file: !2462, line: 146, type: !2493, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !209, retainedNodes: !2495)
!2493 = !DISubroutineType(types: !2494)
!2494 = !{!116, !44, !44, !37, !37, !37, !37, !37, !37, !37, !37}
!2495 = !{!2491, !2496, !2497, !2498, !2499, !2500, !2501, !2502, !2503, !2504}
!2496 = !DILocalVariable(name: "s2", arg: 2, scope: !2492, file: !2462, line: 146, type: !44)
!2497 = !DILocalVariable(name: "s21", arg: 3, scope: !2492, file: !2462, line: 146, type: !37)
!2498 = !DILocalVariable(name: "s22", arg: 4, scope: !2492, file: !2462, line: 146, type: !37)
!2499 = !DILocalVariable(name: "s23", arg: 5, scope: !2492, file: !2462, line: 146, type: !37)
!2500 = !DILocalVariable(name: "s24", arg: 6, scope: !2492, file: !2462, line: 146, type: !37)
!2501 = !DILocalVariable(name: "s25", arg: 7, scope: !2492, file: !2462, line: 146, type: !37)
!2502 = !DILocalVariable(name: "s26", arg: 8, scope: !2492, file: !2462, line: 146, type: !37)
!2503 = !DILocalVariable(name: "s27", arg: 9, scope: !2492, file: !2462, line: 146, type: !37)
!2504 = !DILocalVariable(name: "s28", arg: 10, scope: !2492, file: !2462, line: 146, type: !37)
!2505 = !DILocation(line: 146, column: 25, scope: !2492, inlinedAt: !2506)
!2506 = distinct !DILocation(line: 167, column: 16, scope: !2507, inlinedAt: !2477)
!2507 = distinct !DILexicalBlock(scope: !2508, file: !2462, line: 164, column: 11)
!2508 = distinct !DILexicalBlock(scope: !2490, file: !2462, line: 163, column: 5)
!2509 = !DILocation(line: 146, column: 41, scope: !2492, inlinedAt: !2506)
!2510 = !DILocation(line: 146, column: 50, scope: !2492, inlinedAt: !2506)
!2511 = !DILocation(line: 146, column: 60, scope: !2492, inlinedAt: !2506)
!2512 = !DILocation(line: 146, column: 70, scope: !2492, inlinedAt: !2506)
!2513 = !DILocation(line: 146, column: 80, scope: !2492, inlinedAt: !2506)
!2514 = !DILocation(line: 146, column: 90, scope: !2492, inlinedAt: !2506)
!2515 = !DILocation(line: 146, column: 100, scope: !2492, inlinedAt: !2506)
!2516 = !DILocation(line: 146, column: 110, scope: !2492, inlinedAt: !2506)
!2517 = !DILocation(line: 146, column: 120, scope: !2492, inlinedAt: !2506)
!2518 = !DILocation(line: 148, column: 7, scope: !2519, inlinedAt: !2506)
!2519 = distinct !DILexicalBlock(scope: !2492, file: !2462, line: 148, column: 7)
!2520 = !DILocalVariable(name: "s1", arg: 1, scope: !2521, file: !2462, line: 132, type: !44)
!2521 = distinct !DISubprogram(name: "strcaseeq2", scope: !2462, file: !2462, line: 132, type: !2522, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !209, retainedNodes: !2524)
!2522 = !DISubroutineType(types: !2523)
!2523 = !{!116, !44, !44, !37, !37, !37, !37, !37, !37, !37}
!2524 = !{!2520, !2525, !2526, !2527, !2528, !2529, !2530, !2531, !2532}
!2525 = !DILocalVariable(name: "s2", arg: 2, scope: !2521, file: !2462, line: 132, type: !44)
!2526 = !DILocalVariable(name: "s22", arg: 3, scope: !2521, file: !2462, line: 132, type: !37)
!2527 = !DILocalVariable(name: "s23", arg: 4, scope: !2521, file: !2462, line: 132, type: !37)
!2528 = !DILocalVariable(name: "s24", arg: 5, scope: !2521, file: !2462, line: 132, type: !37)
!2529 = !DILocalVariable(name: "s25", arg: 6, scope: !2521, file: !2462, line: 132, type: !37)
!2530 = !DILocalVariable(name: "s26", arg: 7, scope: !2521, file: !2462, line: 132, type: !37)
!2531 = !DILocalVariable(name: "s27", arg: 8, scope: !2521, file: !2462, line: 132, type: !37)
!2532 = !DILocalVariable(name: "s28", arg: 9, scope: !2521, file: !2462, line: 132, type: !37)
!2533 = !DILocation(line: 132, column: 25, scope: !2521, inlinedAt: !2534)
!2534 = distinct !DILocation(line: 153, column: 16, scope: !2535, inlinedAt: !2506)
!2535 = distinct !DILexicalBlock(scope: !2536, file: !2462, line: 150, column: 11)
!2536 = distinct !DILexicalBlock(scope: !2519, file: !2462, line: 149, column: 5)
!2537 = !DILocation(line: 132, column: 41, scope: !2521, inlinedAt: !2534)
!2538 = !DILocation(line: 132, column: 50, scope: !2521, inlinedAt: !2534)
!2539 = !DILocation(line: 132, column: 60, scope: !2521, inlinedAt: !2534)
!2540 = !DILocation(line: 132, column: 70, scope: !2521, inlinedAt: !2534)
!2541 = !DILocation(line: 132, column: 80, scope: !2521, inlinedAt: !2534)
!2542 = !DILocation(line: 132, column: 90, scope: !2521, inlinedAt: !2534)
!2543 = !DILocation(line: 132, column: 100, scope: !2521, inlinedAt: !2534)
!2544 = !DILocation(line: 132, column: 110, scope: !2521, inlinedAt: !2534)
!2545 = !DILocation(line: 134, column: 7, scope: !2546, inlinedAt: !2534)
!2546 = distinct !DILexicalBlock(scope: !2521, file: !2462, line: 134, column: 7)
!2547 = !DILocalVariable(name: "s1", arg: 1, scope: !2548, file: !2462, line: 118, type: !44)
!2548 = distinct !DISubprogram(name: "strcaseeq3", scope: !2462, file: !2462, line: 118, type: !2549, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !209, retainedNodes: !2551)
!2549 = !DISubroutineType(types: !2550)
!2550 = !{!116, !44, !44, !37, !37, !37, !37, !37, !37}
!2551 = !{!2547, !2552, !2553, !2554, !2555, !2556, !2557, !2558}
!2552 = !DILocalVariable(name: "s2", arg: 2, scope: !2548, file: !2462, line: 118, type: !44)
!2553 = !DILocalVariable(name: "s23", arg: 3, scope: !2548, file: !2462, line: 118, type: !37)
!2554 = !DILocalVariable(name: "s24", arg: 4, scope: !2548, file: !2462, line: 118, type: !37)
!2555 = !DILocalVariable(name: "s25", arg: 5, scope: !2548, file: !2462, line: 118, type: !37)
!2556 = !DILocalVariable(name: "s26", arg: 6, scope: !2548, file: !2462, line: 118, type: !37)
!2557 = !DILocalVariable(name: "s27", arg: 7, scope: !2548, file: !2462, line: 118, type: !37)
!2558 = !DILocalVariable(name: "s28", arg: 8, scope: !2548, file: !2462, line: 118, type: !37)
!2559 = !DILocation(line: 118, column: 25, scope: !2548, inlinedAt: !2560)
!2560 = distinct !DILocation(line: 139, column: 16, scope: !2561, inlinedAt: !2534)
!2561 = distinct !DILexicalBlock(scope: !2562, file: !2462, line: 136, column: 11)
!2562 = distinct !DILexicalBlock(scope: !2546, file: !2462, line: 135, column: 5)
!2563 = !DILocation(line: 118, column: 41, scope: !2548, inlinedAt: !2560)
!2564 = !DILocation(line: 118, column: 50, scope: !2548, inlinedAt: !2560)
!2565 = !DILocation(line: 118, column: 60, scope: !2548, inlinedAt: !2560)
!2566 = !DILocation(line: 118, column: 70, scope: !2548, inlinedAt: !2560)
!2567 = !DILocation(line: 118, column: 80, scope: !2548, inlinedAt: !2560)
!2568 = !DILocation(line: 118, column: 90, scope: !2548, inlinedAt: !2560)
!2569 = !DILocation(line: 118, column: 100, scope: !2548, inlinedAt: !2560)
!2570 = !DILocation(line: 120, column: 7, scope: !2571, inlinedAt: !2560)
!2571 = distinct !DILexicalBlock(scope: !2548, file: !2462, line: 120, column: 7)
!2572 = !DILocation(line: 120, column: 7, scope: !2548, inlinedAt: !2560)
!2573 = !DILocalVariable(name: "s1", arg: 1, scope: !2574, file: !2462, line: 104, type: !44)
!2574 = distinct !DISubprogram(name: "strcaseeq4", scope: !2462, file: !2462, line: 104, type: !2575, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !209, retainedNodes: !2577)
!2575 = !DISubroutineType(types: !2576)
!2576 = !{!116, !44, !44, !37, !37, !37, !37, !37}
!2577 = !{!2573, !2578, !2579, !2580, !2581, !2582, !2583}
!2578 = !DILocalVariable(name: "s2", arg: 2, scope: !2574, file: !2462, line: 104, type: !44)
!2579 = !DILocalVariable(name: "s24", arg: 3, scope: !2574, file: !2462, line: 104, type: !37)
!2580 = !DILocalVariable(name: "s25", arg: 4, scope: !2574, file: !2462, line: 104, type: !37)
!2581 = !DILocalVariable(name: "s26", arg: 5, scope: !2574, file: !2462, line: 104, type: !37)
!2582 = !DILocalVariable(name: "s27", arg: 6, scope: !2574, file: !2462, line: 104, type: !37)
!2583 = !DILocalVariable(name: "s28", arg: 7, scope: !2574, file: !2462, line: 104, type: !37)
!2584 = !DILocation(line: 104, column: 25, scope: !2574, inlinedAt: !2585)
!2585 = distinct !DILocation(line: 125, column: 16, scope: !2586, inlinedAt: !2560)
!2586 = distinct !DILexicalBlock(scope: !2587, file: !2462, line: 122, column: 11)
!2587 = distinct !DILexicalBlock(scope: !2571, file: !2462, line: 121, column: 5)
!2588 = !DILocation(line: 104, column: 41, scope: !2574, inlinedAt: !2585)
!2589 = !DILocation(line: 104, column: 50, scope: !2574, inlinedAt: !2585)
!2590 = !DILocation(line: 104, column: 60, scope: !2574, inlinedAt: !2585)
!2591 = !DILocation(line: 104, column: 70, scope: !2574, inlinedAt: !2585)
!2592 = !DILocation(line: 104, column: 80, scope: !2574, inlinedAt: !2585)
!2593 = !DILocation(line: 104, column: 90, scope: !2574, inlinedAt: !2585)
!2594 = !DILocation(line: 106, column: 7, scope: !2595, inlinedAt: !2585)
!2595 = distinct !DILexicalBlock(scope: !2574, file: !2462, line: 106, column: 7)
!2596 = !DILocation(line: 106, column: 7, scope: !2574, inlinedAt: !2585)
!2597 = !DILocalVariable(name: "s1", arg: 1, scope: !2598, file: !2462, line: 90, type: !44)
!2598 = distinct !DISubprogram(name: "strcaseeq5", scope: !2462, file: !2462, line: 90, type: !2599, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !209, retainedNodes: !2601)
!2599 = !DISubroutineType(types: !2600)
!2600 = !{!116, !44, !44, !37, !37, !37, !37}
!2601 = !{!2597, !2602, !2603, !2604, !2605, !2606}
!2602 = !DILocalVariable(name: "s2", arg: 2, scope: !2598, file: !2462, line: 90, type: !44)
!2603 = !DILocalVariable(name: "s25", arg: 3, scope: !2598, file: !2462, line: 90, type: !37)
!2604 = !DILocalVariable(name: "s26", arg: 4, scope: !2598, file: !2462, line: 90, type: !37)
!2605 = !DILocalVariable(name: "s27", arg: 5, scope: !2598, file: !2462, line: 90, type: !37)
!2606 = !DILocalVariable(name: "s28", arg: 6, scope: !2598, file: !2462, line: 90, type: !37)
!2607 = !DILocation(line: 90, column: 25, scope: !2598, inlinedAt: !2608)
!2608 = distinct !DILocation(line: 111, column: 16, scope: !2609, inlinedAt: !2585)
!2609 = distinct !DILexicalBlock(scope: !2610, file: !2462, line: 108, column: 11)
!2610 = distinct !DILexicalBlock(scope: !2595, file: !2462, line: 107, column: 5)
!2611 = !DILocation(line: 90, column: 41, scope: !2598, inlinedAt: !2608)
!2612 = !DILocation(line: 90, column: 50, scope: !2598, inlinedAt: !2608)
!2613 = !DILocation(line: 90, column: 60, scope: !2598, inlinedAt: !2608)
!2614 = !DILocation(line: 90, column: 70, scope: !2598, inlinedAt: !2608)
!2615 = !DILocation(line: 90, column: 80, scope: !2598, inlinedAt: !2608)
!2616 = !DILocation(line: 92, column: 7, scope: !2617, inlinedAt: !2608)
!2617 = distinct !DILexicalBlock(scope: !2598, file: !2462, line: 92, column: 7)
!2618 = !DILocation(line: 92, column: 7, scope: !2598, inlinedAt: !2608)
!2619 = !DILocation(line: 235, column: 12, scope: !2478)
!2620 = !DILocation(line: 235, column: 21, scope: !2478)
!2621 = !DILocation(line: 235, column: 5, scope: !2478)
!2622 = !DILocation(line: 146, column: 25, scope: !2492, inlinedAt: !2623)
!2623 = distinct !DILocation(line: 167, column: 16, scope: !2507, inlinedAt: !2624)
!2624 = distinct !DILocation(line: 236, column: 7, scope: !2625)
!2625 = distinct !DILexicalBlock(scope: !2443, file: !237, line: 236, column: 7)
!2626 = !DILocation(line: 146, column: 41, scope: !2492, inlinedAt: !2623)
!2627 = !DILocation(line: 146, column: 50, scope: !2492, inlinedAt: !2623)
!2628 = !DILocation(line: 146, column: 60, scope: !2492, inlinedAt: !2623)
!2629 = !DILocation(line: 146, column: 70, scope: !2492, inlinedAt: !2623)
!2630 = !DILocation(line: 146, column: 80, scope: !2492, inlinedAt: !2623)
!2631 = !DILocation(line: 146, column: 90, scope: !2492, inlinedAt: !2623)
!2632 = !DILocation(line: 146, column: 100, scope: !2492, inlinedAt: !2623)
!2633 = !DILocation(line: 146, column: 110, scope: !2492, inlinedAt: !2623)
!2634 = !DILocation(line: 146, column: 120, scope: !2492, inlinedAt: !2623)
!2635 = !DILocation(line: 148, column: 7, scope: !2519, inlinedAt: !2623)
!2636 = !DILocation(line: 132, column: 25, scope: !2521, inlinedAt: !2637)
!2637 = distinct !DILocation(line: 153, column: 16, scope: !2535, inlinedAt: !2623)
!2638 = !DILocation(line: 132, column: 41, scope: !2521, inlinedAt: !2637)
!2639 = !DILocation(line: 132, column: 50, scope: !2521, inlinedAt: !2637)
!2640 = !DILocation(line: 132, column: 60, scope: !2521, inlinedAt: !2637)
!2641 = !DILocation(line: 132, column: 70, scope: !2521, inlinedAt: !2637)
!2642 = !DILocation(line: 132, column: 80, scope: !2521, inlinedAt: !2637)
!2643 = !DILocation(line: 132, column: 90, scope: !2521, inlinedAt: !2637)
!2644 = !DILocation(line: 132, column: 100, scope: !2521, inlinedAt: !2637)
!2645 = !DILocation(line: 132, column: 110, scope: !2521, inlinedAt: !2637)
!2646 = !DILocation(line: 134, column: 7, scope: !2546, inlinedAt: !2637)
!2647 = !DILocation(line: 134, column: 7, scope: !2521, inlinedAt: !2637)
!2648 = !DILocation(line: 118, column: 25, scope: !2548, inlinedAt: !2649)
!2649 = distinct !DILocation(line: 139, column: 16, scope: !2561, inlinedAt: !2637)
!2650 = !DILocation(line: 118, column: 41, scope: !2548, inlinedAt: !2649)
!2651 = !DILocation(line: 118, column: 50, scope: !2548, inlinedAt: !2649)
!2652 = !DILocation(line: 118, column: 60, scope: !2548, inlinedAt: !2649)
!2653 = !DILocation(line: 118, column: 70, scope: !2548, inlinedAt: !2649)
!2654 = !DILocation(line: 118, column: 80, scope: !2548, inlinedAt: !2649)
!2655 = !DILocation(line: 118, column: 90, scope: !2548, inlinedAt: !2649)
!2656 = !DILocation(line: 118, column: 100, scope: !2548, inlinedAt: !2649)
!2657 = !DILocation(line: 120, column: 7, scope: !2571, inlinedAt: !2649)
!2658 = !DILocation(line: 120, column: 7, scope: !2548, inlinedAt: !2649)
!2659 = !DILocation(line: 104, column: 25, scope: !2574, inlinedAt: !2660)
!2660 = distinct !DILocation(line: 125, column: 16, scope: !2586, inlinedAt: !2649)
!2661 = !DILocation(line: 104, column: 41, scope: !2574, inlinedAt: !2660)
!2662 = !DILocation(line: 104, column: 50, scope: !2574, inlinedAt: !2660)
!2663 = !DILocation(line: 104, column: 60, scope: !2574, inlinedAt: !2660)
!2664 = !DILocation(line: 104, column: 70, scope: !2574, inlinedAt: !2660)
!2665 = !DILocation(line: 104, column: 80, scope: !2574, inlinedAt: !2660)
!2666 = !DILocation(line: 104, column: 90, scope: !2574, inlinedAt: !2660)
!2667 = !DILocation(line: 106, column: 7, scope: !2595, inlinedAt: !2660)
!2668 = !DILocation(line: 106, column: 7, scope: !2574, inlinedAt: !2660)
!2669 = !DILocation(line: 90, column: 25, scope: !2598, inlinedAt: !2670)
!2670 = distinct !DILocation(line: 111, column: 16, scope: !2609, inlinedAt: !2660)
!2671 = !DILocation(line: 90, column: 41, scope: !2598, inlinedAt: !2670)
!2672 = !DILocation(line: 90, column: 50, scope: !2598, inlinedAt: !2670)
!2673 = !DILocation(line: 90, column: 60, scope: !2598, inlinedAt: !2670)
!2674 = !DILocation(line: 90, column: 70, scope: !2598, inlinedAt: !2670)
!2675 = !DILocation(line: 90, column: 80, scope: !2598, inlinedAt: !2670)
!2676 = !DILocation(line: 92, column: 7, scope: !2617, inlinedAt: !2670)
!2677 = !DILocation(line: 92, column: 7, scope: !2598, inlinedAt: !2670)
!2678 = !DILocalVariable(name: "s1", arg: 1, scope: !2679, file: !2462, line: 76, type: !44)
!2679 = distinct !DISubprogram(name: "strcaseeq6", scope: !2462, file: !2462, line: 76, type: !2680, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !209, retainedNodes: !2682)
!2680 = !DISubroutineType(types: !2681)
!2681 = !{!116, !44, !44, !37, !37, !37}
!2682 = !{!2678, !2683, !2684, !2685, !2686}
!2683 = !DILocalVariable(name: "s2", arg: 2, scope: !2679, file: !2462, line: 76, type: !44)
!2684 = !DILocalVariable(name: "s26", arg: 3, scope: !2679, file: !2462, line: 76, type: !37)
!2685 = !DILocalVariable(name: "s27", arg: 4, scope: !2679, file: !2462, line: 76, type: !37)
!2686 = !DILocalVariable(name: "s28", arg: 5, scope: !2679, file: !2462, line: 76, type: !37)
!2687 = !DILocation(line: 76, column: 25, scope: !2679, inlinedAt: !2688)
!2688 = distinct !DILocation(line: 97, column: 16, scope: !2689, inlinedAt: !2670)
!2689 = distinct !DILexicalBlock(scope: !2690, file: !2462, line: 94, column: 11)
!2690 = distinct !DILexicalBlock(scope: !2617, file: !2462, line: 93, column: 5)
!2691 = !DILocation(line: 76, column: 41, scope: !2679, inlinedAt: !2688)
!2692 = !DILocation(line: 76, column: 50, scope: !2679, inlinedAt: !2688)
!2693 = !DILocation(line: 76, column: 60, scope: !2679, inlinedAt: !2688)
!2694 = !DILocation(line: 76, column: 70, scope: !2679, inlinedAt: !2688)
!2695 = !DILocation(line: 78, column: 7, scope: !2696, inlinedAt: !2688)
!2696 = distinct !DILexicalBlock(scope: !2679, file: !2462, line: 78, column: 7)
!2697 = !DILocation(line: 78, column: 7, scope: !2679, inlinedAt: !2688)
!2698 = !DILocalVariable(name: "s1", arg: 1, scope: !2699, file: !2462, line: 62, type: !44)
!2699 = distinct !DISubprogram(name: "strcaseeq7", scope: !2462, file: !2462, line: 62, type: !2700, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !209, retainedNodes: !2702)
!2700 = !DISubroutineType(types: !2701)
!2701 = !{!116, !44, !44, !37, !37}
!2702 = !{!2698, !2703, !2704, !2705}
!2703 = !DILocalVariable(name: "s2", arg: 2, scope: !2699, file: !2462, line: 62, type: !44)
!2704 = !DILocalVariable(name: "s27", arg: 3, scope: !2699, file: !2462, line: 62, type: !37)
!2705 = !DILocalVariable(name: "s28", arg: 4, scope: !2699, file: !2462, line: 62, type: !37)
!2706 = !DILocation(line: 62, column: 25, scope: !2699, inlinedAt: !2707)
!2707 = distinct !DILocation(line: 83, column: 16, scope: !2708, inlinedAt: !2688)
!2708 = distinct !DILexicalBlock(scope: !2709, file: !2462, line: 80, column: 11)
!2709 = distinct !DILexicalBlock(scope: !2696, file: !2462, line: 79, column: 5)
!2710 = !DILocation(line: 62, column: 41, scope: !2699, inlinedAt: !2707)
!2711 = !DILocation(line: 62, column: 50, scope: !2699, inlinedAt: !2707)
!2712 = !DILocation(line: 62, column: 60, scope: !2699, inlinedAt: !2707)
!2713 = !DILocation(line: 64, column: 7, scope: !2714, inlinedAt: !2707)
!2714 = distinct !DILexicalBlock(scope: !2699, file: !2462, line: 64, column: 7)
!2715 = !DILocation(line: 236, column: 7, scope: !2443)
!2716 = !DILocation(line: 237, column: 12, scope: !2625)
!2717 = !DILocation(line: 237, column: 21, scope: !2625)
!2718 = !DILocation(line: 237, column: 5, scope: !2625)
!2719 = !DILocation(line: 239, column: 13, scope: !2443)
!2720 = !DILocation(line: 239, column: 11, scope: !2443)
!2721 = !DILocation(line: 239, column: 3, scope: !2443)
!2722 = !DILocation(line: 0, scope: !2443)
!2723 = !DILocation(line: 240, column: 1, scope: !2443)
!2724 = distinct !DISubprogram(name: "quotearg_alloc", scope: !237, file: !237, line: 799, type: !2725, isLocal: false, isDefinition: true, scopeLine: 801, flags: DIFlagPrototyped, isOptimized: true, unit: !209, retainedNodes: !2727)
!2725 = !DISubroutineType(types: !2726)
!2726 = !{!36, !44, !63, !1763}
!2727 = !{!2728, !2729, !2730}
!2728 = !DILocalVariable(name: "arg", arg: 1, scope: !2724, file: !237, line: 799, type: !44)
!2729 = !DILocalVariable(name: "argsize", arg: 2, scope: !2724, file: !237, line: 799, type: !63)
!2730 = !DILocalVariable(name: "o", arg: 3, scope: !2724, file: !237, line: 800, type: !1763)
!2731 = !DILocation(line: 799, column: 29, scope: !2724)
!2732 = !DILocation(line: 799, column: 41, scope: !2724)
!2733 = !DILocation(line: 800, column: 47, scope: !2724)
!2734 = !DILocalVariable(name: "arg", arg: 1, scope: !2735, file: !237, line: 812, type: !44)
!2735 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !237, file: !237, line: 812, type: !2736, isLocal: false, isDefinition: true, scopeLine: 814, flags: DIFlagPrototyped, isOptimized: true, unit: !209, retainedNodes: !2738)
!2736 = !DISubroutineType(types: !2737)
!2737 = !{!36, !44, !63, !302, !1763}
!2738 = !{!2734, !2739, !2740, !2741, !2742, !2743, !2744, !2745, !2746}
!2739 = !DILocalVariable(name: "argsize", arg: 2, scope: !2735, file: !237, line: 812, type: !63)
!2740 = !DILocalVariable(name: "size", arg: 3, scope: !2735, file: !237, line: 812, type: !302)
!2741 = !DILocalVariable(name: "o", arg: 4, scope: !2735, file: !237, line: 813, type: !1763)
!2742 = !DILocalVariable(name: "p", scope: !2735, file: !237, line: 815, type: !1763)
!2743 = !DILocalVariable(name: "e", scope: !2735, file: !237, line: 816, type: !116)
!2744 = !DILocalVariable(name: "flags", scope: !2735, file: !237, line: 818, type: !116)
!2745 = !DILocalVariable(name: "bufsize", scope: !2735, file: !237, line: 819, type: !63)
!2746 = !DILocalVariable(name: "buf", scope: !2735, file: !237, line: 823, type: !36)
!2747 = !DILocation(line: 812, column: 33, scope: !2735, inlinedAt: !2748)
!2748 = distinct !DILocation(line: 802, column: 10, scope: !2724)
!2749 = !DILocation(line: 812, column: 45, scope: !2735, inlinedAt: !2748)
!2750 = !DILocation(line: 812, column: 62, scope: !2735, inlinedAt: !2748)
!2751 = !DILocation(line: 813, column: 51, scope: !2735, inlinedAt: !2748)
!2752 = !DILocation(line: 815, column: 37, scope: !2735, inlinedAt: !2748)
!2753 = !DILocation(line: 815, column: 33, scope: !2735, inlinedAt: !2748)
!2754 = !DILocation(line: 816, column: 11, scope: !2735, inlinedAt: !2748)
!2755 = !DILocation(line: 816, column: 7, scope: !2735, inlinedAt: !2748)
!2756 = !DILocation(line: 818, column: 18, scope: !2735, inlinedAt: !2748)
!2757 = !DILocation(line: 818, column: 24, scope: !2735, inlinedAt: !2748)
!2758 = !DILocation(line: 818, column: 7, scope: !2735, inlinedAt: !2748)
!2759 = !DILocation(line: 819, column: 69, scope: !2735, inlinedAt: !2748)
!2760 = !DILocation(line: 820, column: 53, scope: !2735, inlinedAt: !2748)
!2761 = !DILocation(line: 821, column: 49, scope: !2735, inlinedAt: !2748)
!2762 = !DILocation(line: 822, column: 49, scope: !2735, inlinedAt: !2748)
!2763 = !DILocation(line: 819, column: 20, scope: !2735, inlinedAt: !2748)
!2764 = !DILocation(line: 822, column: 62, scope: !2735, inlinedAt: !2748)
!2765 = !DILocation(line: 819, column: 10, scope: !2735, inlinedAt: !2748)
!2766 = !DILocalVariable(name: "n", arg: 1, scope: !2767, file: !298, line: 216, type: !63)
!2767 = distinct !DISubprogram(name: "xcharalloc", scope: !298, file: !298, line: 216, type: !2768, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !209, retainedNodes: !2770)
!2768 = !DISubroutineType(types: !2769)
!2769 = !{!36, !63}
!2770 = !{!2766}
!2771 = !DILocation(line: 216, column: 20, scope: !2767, inlinedAt: !2772)
!2772 = distinct !DILocation(line: 823, column: 15, scope: !2735, inlinedAt: !2748)
!2773 = !DILocation(line: 218, column: 10, scope: !2767, inlinedAt: !2772)
!2774 = !DILocation(line: 823, column: 9, scope: !2735, inlinedAt: !2748)
!2775 = !DILocation(line: 824, column: 60, scope: !2735, inlinedAt: !2748)
!2776 = !DILocation(line: 826, column: 32, scope: !2735, inlinedAt: !2748)
!2777 = !DILocation(line: 826, column: 47, scope: !2735, inlinedAt: !2748)
!2778 = !DILocation(line: 824, column: 3, scope: !2735, inlinedAt: !2748)
!2779 = !DILocation(line: 827, column: 9, scope: !2735, inlinedAt: !2748)
!2780 = !DILocation(line: 802, column: 3, scope: !2724)
!2781 = !DILocation(line: 812, column: 33, scope: !2735)
!2782 = !DILocation(line: 812, column: 45, scope: !2735)
!2783 = !DILocation(line: 812, column: 62, scope: !2735)
!2784 = !DILocation(line: 813, column: 51, scope: !2735)
!2785 = !DILocation(line: 815, column: 37, scope: !2735)
!2786 = !DILocation(line: 815, column: 33, scope: !2735)
!2787 = !DILocation(line: 816, column: 11, scope: !2735)
!2788 = !DILocation(line: 816, column: 7, scope: !2735)
!2789 = !DILocation(line: 818, column: 18, scope: !2735)
!2790 = !DILocation(line: 818, column: 27, scope: !2735)
!2791 = !DILocation(line: 818, column: 24, scope: !2735)
!2792 = !DILocation(line: 818, column: 7, scope: !2735)
!2793 = !DILocation(line: 819, column: 69, scope: !2735)
!2794 = !DILocation(line: 820, column: 53, scope: !2735)
!2795 = !DILocation(line: 821, column: 49, scope: !2735)
!2796 = !DILocation(line: 822, column: 49, scope: !2735)
!2797 = !DILocation(line: 819, column: 20, scope: !2735)
!2798 = !DILocation(line: 822, column: 62, scope: !2735)
!2799 = !DILocation(line: 819, column: 10, scope: !2735)
!2800 = !DILocation(line: 216, column: 20, scope: !2767, inlinedAt: !2801)
!2801 = distinct !DILocation(line: 823, column: 15, scope: !2735)
!2802 = !DILocation(line: 218, column: 10, scope: !2767, inlinedAt: !2801)
!2803 = !DILocation(line: 823, column: 9, scope: !2735)
!2804 = !DILocation(line: 824, column: 60, scope: !2735)
!2805 = !DILocation(line: 826, column: 32, scope: !2735)
!2806 = !DILocation(line: 826, column: 47, scope: !2735)
!2807 = !DILocation(line: 824, column: 3, scope: !2735)
!2808 = !DILocation(line: 827, column: 9, scope: !2735)
!2809 = !DILocation(line: 828, column: 7, scope: !2735)
!2810 = !DILocation(line: 829, column: 11, scope: !2811)
!2811 = distinct !DILexicalBlock(scope: !2735, file: !237, line: 828, column: 7)
!2812 = !DILocation(line: 829, column: 5, scope: !2811)
!2813 = !DILocation(line: 830, column: 3, scope: !2735)
!2814 = distinct !DISubprogram(name: "quotearg_free", scope: !237, file: !237, line: 848, type: !176, isLocal: false, isDefinition: true, scopeLine: 849, flags: DIFlagPrototyped, isOptimized: true, unit: !209, retainedNodes: !2815)
!2815 = !{!2816, !2817}
!2816 = !DILocalVariable(name: "sv", scope: !2814, file: !237, line: 850, type: !258)
!2817 = !DILocalVariable(name: "i", scope: !2814, file: !237, line: 851, type: !116)
!2818 = !DILocation(line: 850, column: 24, scope: !2814)
!2819 = !DILocation(line: 850, column: 19, scope: !2814)
!2820 = !DILocation(line: 851, column: 7, scope: !2814)
!2821 = !DILocation(line: 852, column: 19, scope: !2822)
!2822 = distinct !DILexicalBlock(scope: !2823, file: !237, line: 852, column: 3)
!2823 = distinct !DILexicalBlock(scope: !2814, file: !237, line: 852, column: 3)
!2824 = !DILocation(line: 852, column: 17, scope: !2822)
!2825 = !DILocation(line: 852, column: 3, scope: !2823)
!2826 = !DILocation(line: 853, column: 17, scope: !2822)
!2827 = !{!2828, !768, i64 8}
!2828 = !{!"slotvec", !881, i64 0, !768, i64 8}
!2829 = !DILocation(line: 853, column: 5, scope: !2822)
!2830 = !DILocation(line: 852, column: 28, scope: !2822)
!2831 = distinct !{!2831, !2825, !2832}
!2832 = !DILocation(line: 853, column: 20, scope: !2823)
!2833 = !DILocation(line: 854, column: 13, scope: !2834)
!2834 = distinct !DILexicalBlock(scope: !2814, file: !237, line: 854, column: 7)
!2835 = !DILocation(line: 854, column: 17, scope: !2834)
!2836 = !DILocation(line: 854, column: 7, scope: !2814)
!2837 = !DILocation(line: 856, column: 7, scope: !2838)
!2838 = distinct !DILexicalBlock(scope: !2834, file: !237, line: 855, column: 5)
!2839 = !DILocation(line: 857, column: 21, scope: !2838)
!2840 = !{!2828, !881, i64 0}
!2841 = !DILocation(line: 858, column: 20, scope: !2838)
!2842 = !DILocation(line: 859, column: 5, scope: !2838)
!2843 = !DILocation(line: 860, column: 10, scope: !2844)
!2844 = distinct !DILexicalBlock(scope: !2814, file: !237, line: 860, column: 7)
!2845 = !DILocation(line: 860, column: 7, scope: !2814)
!2846 = !DILocation(line: 862, column: 13, scope: !2847)
!2847 = distinct !DILexicalBlock(scope: !2844, file: !237, line: 861, column: 5)
!2848 = !DILocation(line: 862, column: 7, scope: !2847)
!2849 = !DILocation(line: 863, column: 15, scope: !2847)
!2850 = !DILocation(line: 864, column: 5, scope: !2847)
!2851 = !DILocation(line: 865, column: 10, scope: !2814)
!2852 = !DILocation(line: 866, column: 1, scope: !2814)
!2853 = distinct !DISubprogram(name: "quotearg_n", scope: !237, file: !237, line: 931, type: !2854, isLocal: false, isDefinition: true, scopeLine: 932, flags: DIFlagPrototyped, isOptimized: true, unit: !209, retainedNodes: !2856)
!2854 = !DISubroutineType(types: !2855)
!2855 = !{!36, !116, !44}
!2856 = !{!2857, !2858}
!2857 = !DILocalVariable(name: "n", arg: 1, scope: !2853, file: !237, line: 931, type: !116)
!2858 = !DILocalVariable(name: "arg", arg: 2, scope: !2853, file: !237, line: 931, type: !44)
!2859 = !DILocation(line: 931, column: 17, scope: !2853)
!2860 = !DILocation(line: 931, column: 32, scope: !2853)
!2861 = !DILocation(line: 933, column: 10, scope: !2853)
!2862 = !DILocation(line: 933, column: 3, scope: !2853)
!2863 = distinct !DISubprogram(name: "quotearg_n_options", scope: !237, file: !237, line: 877, type: !2864, isLocal: true, isDefinition: true, scopeLine: 879, flags: DIFlagPrototyped, isOptimized: true, unit: !209, retainedNodes: !2866)
!2864 = !DISubroutineType(types: !2865)
!2865 = !{!36, !116, !44, !63, !1763}
!2866 = !{!2867, !2868, !2869, !2870, !2871, !2872, !2873, !2876, !2877, !2879, !2880, !2881}
!2867 = !DILocalVariable(name: "n", arg: 1, scope: !2863, file: !237, line: 877, type: !116)
!2868 = !DILocalVariable(name: "arg", arg: 2, scope: !2863, file: !237, line: 877, type: !44)
!2869 = !DILocalVariable(name: "argsize", arg: 3, scope: !2863, file: !237, line: 877, type: !63)
!2870 = !DILocalVariable(name: "options", arg: 4, scope: !2863, file: !237, line: 878, type: !1763)
!2871 = !DILocalVariable(name: "e", scope: !2863, file: !237, line: 880, type: !116)
!2872 = !DILocalVariable(name: "sv", scope: !2863, file: !237, line: 882, type: !258)
!2873 = !DILocalVariable(name: "preallocated", scope: !2874, file: !237, line: 889, type: !134)
!2874 = distinct !DILexicalBlock(scope: !2875, file: !237, line: 888, column: 5)
!2875 = distinct !DILexicalBlock(scope: !2863, file: !237, line: 887, column: 7)
!2876 = !DILocalVariable(name: "nmax", scope: !2874, file: !237, line: 890, type: !116)
!2877 = !DILocalVariable(name: "size", scope: !2878, file: !237, line: 903, type: !63)
!2878 = distinct !DILexicalBlock(scope: !2863, file: !237, line: 902, column: 3)
!2879 = !DILocalVariable(name: "val", scope: !2878, file: !237, line: 904, type: !36)
!2880 = !DILocalVariable(name: "flags", scope: !2878, file: !237, line: 906, type: !116)
!2881 = !DILocalVariable(name: "qsize", scope: !2878, file: !237, line: 907, type: !63)
!2882 = !DILocation(line: 877, column: 25, scope: !2863)
!2883 = !DILocation(line: 877, column: 40, scope: !2863)
!2884 = !DILocation(line: 877, column: 52, scope: !2863)
!2885 = !DILocation(line: 878, column: 51, scope: !2863)
!2886 = !DILocation(line: 880, column: 11, scope: !2863)
!2887 = !DILocation(line: 880, column: 7, scope: !2863)
!2888 = !DILocation(line: 882, column: 24, scope: !2863)
!2889 = !DILocation(line: 882, column: 19, scope: !2863)
!2890 = !DILocation(line: 884, column: 9, scope: !2891)
!2891 = distinct !DILexicalBlock(scope: !2863, file: !237, line: 884, column: 7)
!2892 = !DILocation(line: 884, column: 7, scope: !2863)
!2893 = !DILocation(line: 885, column: 5, scope: !2891)
!2894 = !DILocation(line: 887, column: 7, scope: !2875)
!2895 = !DILocation(line: 887, column: 14, scope: !2875)
!2896 = !DILocation(line: 887, column: 7, scope: !2863)
!2897 = !DILocation(line: 889, column: 31, scope: !2874)
!2898 = !DILocation(line: 890, column: 11, scope: !2874)
!2899 = !DILocation(line: 892, column: 16, scope: !2900)
!2900 = distinct !DILexicalBlock(scope: !2874, file: !237, line: 892, column: 11)
!2901 = !DILocation(line: 892, column: 11, scope: !2874)
!2902 = !DILocation(line: 893, column: 9, scope: !2900)
!2903 = !DILocation(line: 895, column: 32, scope: !2874)
!2904 = !DILocation(line: 895, column: 61, scope: !2874)
!2905 = !DILocation(line: 895, column: 58, scope: !2874)
!2906 = !DILocation(line: 895, column: 66, scope: !2874)
!2907 = !DILocation(line: 895, column: 22, scope: !2874)
!2908 = !DILocation(line: 895, column: 15, scope: !2874)
!2909 = !DILocation(line: 896, column: 11, scope: !2874)
!2910 = !DILocation(line: 897, column: 15, scope: !2911)
!2911 = distinct !DILexicalBlock(scope: !2874, file: !237, line: 896, column: 11)
!2912 = !{i64 0, i64 8, !880, i64 8, i64 8, !767}
!2913 = !DILocation(line: 897, column: 9, scope: !2911)
!2914 = !DILocation(line: 898, column: 20, scope: !2874)
!2915 = !DILocation(line: 898, column: 18, scope: !2874)
!2916 = !DILocation(line: 898, column: 7, scope: !2874)
!2917 = !DILocation(line: 898, column: 38, scope: !2874)
!2918 = !DILocation(line: 898, column: 31, scope: !2874)
!2919 = !DILocation(line: 898, column: 48, scope: !2874)
!2920 = !DILocation(line: 899, column: 14, scope: !2874)
!2921 = !DILocation(line: 900, column: 5, scope: !2874)
!2922 = !DILocation(line: 0, scope: !2863)
!2923 = !DILocation(line: 903, column: 19, scope: !2878)
!2924 = !DILocation(line: 903, column: 25, scope: !2878)
!2925 = !DILocation(line: 903, column: 12, scope: !2878)
!2926 = !DILocation(line: 904, column: 23, scope: !2878)
!2927 = !DILocation(line: 904, column: 11, scope: !2878)
!2928 = !DILocation(line: 906, column: 26, scope: !2878)
!2929 = !DILocation(line: 906, column: 32, scope: !2878)
!2930 = !DILocation(line: 906, column: 9, scope: !2878)
!2931 = !DILocation(line: 908, column: 55, scope: !2878)
!2932 = !DILocation(line: 909, column: 46, scope: !2878)
!2933 = !DILocation(line: 910, column: 55, scope: !2878)
!2934 = !DILocation(line: 911, column: 55, scope: !2878)
!2935 = !DILocation(line: 907, column: 20, scope: !2878)
!2936 = !DILocation(line: 907, column: 12, scope: !2878)
!2937 = !DILocation(line: 913, column: 14, scope: !2938)
!2938 = distinct !DILexicalBlock(scope: !2878, file: !237, line: 913, column: 9)
!2939 = !DILocation(line: 913, column: 9, scope: !2878)
!2940 = !DILocation(line: 915, column: 35, scope: !2941)
!2941 = distinct !DILexicalBlock(scope: !2938, file: !237, line: 914, column: 7)
!2942 = !DILocation(line: 915, column: 20, scope: !2941)
!2943 = !DILocation(line: 916, column: 17, scope: !2944)
!2944 = distinct !DILexicalBlock(scope: !2941, file: !237, line: 916, column: 13)
!2945 = !DILocation(line: 916, column: 13, scope: !2941)
!2946 = !DILocation(line: 917, column: 11, scope: !2944)
!2947 = !DILocation(line: 216, column: 20, scope: !2767, inlinedAt: !2948)
!2948 = distinct !DILocation(line: 918, column: 27, scope: !2941)
!2949 = !DILocation(line: 218, column: 10, scope: !2767, inlinedAt: !2948)
!2950 = !DILocation(line: 918, column: 19, scope: !2941)
!2951 = !DILocation(line: 919, column: 69, scope: !2941)
!2952 = !DILocation(line: 921, column: 44, scope: !2941)
!2953 = !DILocation(line: 922, column: 44, scope: !2941)
!2954 = !DILocation(line: 919, column: 9, scope: !2941)
!2955 = !DILocation(line: 923, column: 7, scope: !2941)
!2956 = !DILocation(line: 0, scope: !2878)
!2957 = !DILocation(line: 925, column: 11, scope: !2878)
!2958 = !DILocation(line: 926, column: 5, scope: !2878)
!2959 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !237, file: !237, line: 937, type: !2960, isLocal: false, isDefinition: true, scopeLine: 938, flags: DIFlagPrototyped, isOptimized: true, unit: !209, retainedNodes: !2962)
!2960 = !DISubroutineType(types: !2961)
!2961 = !{!36, !116, !44, !63}
!2962 = !{!2963, !2964, !2965}
!2963 = !DILocalVariable(name: "n", arg: 1, scope: !2959, file: !237, line: 937, type: !116)
!2964 = !DILocalVariable(name: "arg", arg: 2, scope: !2959, file: !237, line: 937, type: !44)
!2965 = !DILocalVariable(name: "argsize", arg: 3, scope: !2959, file: !237, line: 937, type: !63)
!2966 = !DILocation(line: 937, column: 21, scope: !2959)
!2967 = !DILocation(line: 937, column: 36, scope: !2959)
!2968 = !DILocation(line: 937, column: 48, scope: !2959)
!2969 = !DILocation(line: 939, column: 10, scope: !2959)
!2970 = !DILocation(line: 939, column: 3, scope: !2959)
!2971 = distinct !DISubprogram(name: "quotearg", scope: !237, file: !237, line: 943, type: !2972, isLocal: false, isDefinition: true, scopeLine: 944, flags: DIFlagPrototyped, isOptimized: true, unit: !209, retainedNodes: !2974)
!2972 = !DISubroutineType(types: !2973)
!2973 = !{!36, !44}
!2974 = !{!2975}
!2975 = !DILocalVariable(name: "arg", arg: 1, scope: !2971, file: !237, line: 943, type: !44)
!2976 = !DILocation(line: 943, column: 23, scope: !2971)
!2977 = !DILocation(line: 931, column: 17, scope: !2853, inlinedAt: !2978)
!2978 = distinct !DILocation(line: 945, column: 10, scope: !2971)
!2979 = !DILocation(line: 931, column: 32, scope: !2853, inlinedAt: !2978)
!2980 = !DILocation(line: 933, column: 10, scope: !2853, inlinedAt: !2978)
!2981 = !DILocation(line: 945, column: 3, scope: !2971)
!2982 = distinct !DISubprogram(name: "quotearg_mem", scope: !237, file: !237, line: 949, type: !2983, isLocal: false, isDefinition: true, scopeLine: 950, flags: DIFlagPrototyped, isOptimized: true, unit: !209, retainedNodes: !2985)
!2983 = !DISubroutineType(types: !2984)
!2984 = !{!36, !44, !63}
!2985 = !{!2986, !2987}
!2986 = !DILocalVariable(name: "arg", arg: 1, scope: !2982, file: !237, line: 949, type: !44)
!2987 = !DILocalVariable(name: "argsize", arg: 2, scope: !2982, file: !237, line: 949, type: !63)
!2988 = !DILocation(line: 949, column: 27, scope: !2982)
!2989 = !DILocation(line: 949, column: 39, scope: !2982)
!2990 = !DILocation(line: 937, column: 21, scope: !2959, inlinedAt: !2991)
!2991 = distinct !DILocation(line: 951, column: 10, scope: !2982)
!2992 = !DILocation(line: 937, column: 36, scope: !2959, inlinedAt: !2991)
!2993 = !DILocation(line: 937, column: 48, scope: !2959, inlinedAt: !2991)
!2994 = !DILocation(line: 939, column: 10, scope: !2959, inlinedAt: !2991)
!2995 = !DILocation(line: 951, column: 3, scope: !2982)
!2996 = distinct !DISubprogram(name: "quotearg_n_style", scope: !237, file: !237, line: 955, type: !2997, isLocal: false, isDefinition: true, scopeLine: 956, flags: DIFlagPrototyped, isOptimized: true, unit: !209, retainedNodes: !2999)
!2997 = !DISubroutineType(types: !2998)
!2998 = !{!36, !116, !5, !44}
!2999 = !{!3000, !3001, !3002, !3003}
!3000 = !DILocalVariable(name: "n", arg: 1, scope: !2996, file: !237, line: 955, type: !116)
!3001 = !DILocalVariable(name: "s", arg: 2, scope: !2996, file: !237, line: 955, type: !5)
!3002 = !DILocalVariable(name: "arg", arg: 3, scope: !2996, file: !237, line: 955, type: !44)
!3003 = !DILocalVariable(name: "o", scope: !2996, file: !237, line: 957, type: !1764)
!3004 = !DILocation(line: 955, column: 23, scope: !2996)
!3005 = !DILocation(line: 955, column: 45, scope: !2996)
!3006 = !DILocation(line: 955, column: 60, scope: !2996)
!3007 = !DILocation(line: 957, column: 3, scope: !2996)
!3008 = !DILocation(line: 957, column: 32, scope: !2996)
!3009 = !DILocalVariable(name: "style", arg: 1, scope: !3010, file: !237, line: 193, type: !5)
!3010 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !237, file: !237, line: 193, type: !3011, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !209, retainedNodes: !3013)
!3011 = !DISubroutineType(types: !3012)
!3012 = !{!244, !5}
!3013 = !{!3009, !3014}
!3014 = !DILocalVariable(name: "o", scope: !3010, file: !237, line: 195, type: !244)
!3015 = !DILocation(line: 193, column: 48, scope: !3010, inlinedAt: !3016)
!3016 = distinct !DILocation(line: 957, column: 36, scope: !2996)
!3017 = !DILocation(line: 195, column: 26, scope: !3010, inlinedAt: !3016)
!3018 = !{!3019}
!3019 = distinct !{!3019, !3020, !"quoting_options_from_style: argument 0"}
!3020 = distinct !{!3020, !"quoting_options_from_style"}
!3021 = !DILocation(line: 196, column: 13, scope: !3022, inlinedAt: !3016)
!3022 = distinct !DILexicalBlock(scope: !3010, file: !237, line: 196, column: 7)
!3023 = !DILocation(line: 196, column: 7, scope: !3010, inlinedAt: !3016)
!3024 = !DILocation(line: 197, column: 5, scope: !3022, inlinedAt: !3016)
!3025 = !DILocation(line: 198, column: 5, scope: !3010, inlinedAt: !3016)
!3026 = !DILocation(line: 198, column: 11, scope: !3010, inlinedAt: !3016)
!3027 = !DILocation(line: 958, column: 10, scope: !2996)
!3028 = !DILocation(line: 959, column: 1, scope: !2996)
!3029 = !DILocation(line: 958, column: 3, scope: !2996)
!3030 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !237, file: !237, line: 962, type: !3031, isLocal: false, isDefinition: true, scopeLine: 964, flags: DIFlagPrototyped, isOptimized: true, unit: !209, retainedNodes: !3033)
!3031 = !DISubroutineType(types: !3032)
!3032 = !{!36, !116, !5, !44, !63}
!3033 = !{!3034, !3035, !3036, !3037, !3038}
!3034 = !DILocalVariable(name: "n", arg: 1, scope: !3030, file: !237, line: 962, type: !116)
!3035 = !DILocalVariable(name: "s", arg: 2, scope: !3030, file: !237, line: 962, type: !5)
!3036 = !DILocalVariable(name: "arg", arg: 3, scope: !3030, file: !237, line: 963, type: !44)
!3037 = !DILocalVariable(name: "argsize", arg: 4, scope: !3030, file: !237, line: 963, type: !63)
!3038 = !DILocalVariable(name: "o", scope: !3030, file: !237, line: 965, type: !1764)
!3039 = !DILocation(line: 962, column: 27, scope: !3030)
!3040 = !DILocation(line: 962, column: 49, scope: !3030)
!3041 = !DILocation(line: 963, column: 35, scope: !3030)
!3042 = !DILocation(line: 963, column: 47, scope: !3030)
!3043 = !DILocation(line: 965, column: 3, scope: !3030)
!3044 = !DILocation(line: 965, column: 32, scope: !3030)
!3045 = !DILocation(line: 193, column: 48, scope: !3010, inlinedAt: !3046)
!3046 = distinct !DILocation(line: 965, column: 36, scope: !3030)
!3047 = !DILocation(line: 195, column: 26, scope: !3010, inlinedAt: !3046)
!3048 = !{!3049}
!3049 = distinct !{!3049, !3050, !"quoting_options_from_style: argument 0"}
!3050 = distinct !{!3050, !"quoting_options_from_style"}
!3051 = !DILocation(line: 196, column: 13, scope: !3022, inlinedAt: !3046)
!3052 = !DILocation(line: 196, column: 7, scope: !3010, inlinedAt: !3046)
!3053 = !DILocation(line: 197, column: 5, scope: !3022, inlinedAt: !3046)
!3054 = !DILocation(line: 198, column: 5, scope: !3010, inlinedAt: !3046)
!3055 = !DILocation(line: 198, column: 11, scope: !3010, inlinedAt: !3046)
!3056 = !DILocation(line: 966, column: 10, scope: !3030)
!3057 = !DILocation(line: 967, column: 1, scope: !3030)
!3058 = !DILocation(line: 966, column: 3, scope: !3030)
!3059 = distinct !DISubprogram(name: "quotearg_style", scope: !237, file: !237, line: 970, type: !3060, isLocal: false, isDefinition: true, scopeLine: 971, flags: DIFlagPrototyped, isOptimized: true, unit: !209, retainedNodes: !3062)
!3060 = !DISubroutineType(types: !3061)
!3061 = !{!36, !5, !44}
!3062 = !{!3063, !3064}
!3063 = !DILocalVariable(name: "s", arg: 1, scope: !3059, file: !237, line: 970, type: !5)
!3064 = !DILocalVariable(name: "arg", arg: 2, scope: !3059, file: !237, line: 970, type: !44)
!3065 = !DILocation(line: 970, column: 36, scope: !3059)
!3066 = !DILocation(line: 970, column: 51, scope: !3059)
!3067 = !DILocation(line: 955, column: 23, scope: !2996, inlinedAt: !3068)
!3068 = distinct !DILocation(line: 972, column: 10, scope: !3059)
!3069 = !DILocation(line: 955, column: 45, scope: !2996, inlinedAt: !3068)
!3070 = !DILocation(line: 955, column: 60, scope: !2996, inlinedAt: !3068)
!3071 = !DILocation(line: 957, column: 3, scope: !2996, inlinedAt: !3068)
!3072 = !DILocation(line: 957, column: 32, scope: !2996, inlinedAt: !3068)
!3073 = !DILocation(line: 193, column: 48, scope: !3010, inlinedAt: !3074)
!3074 = distinct !DILocation(line: 957, column: 36, scope: !2996, inlinedAt: !3068)
!3075 = !DILocation(line: 195, column: 26, scope: !3010, inlinedAt: !3074)
!3076 = !{!3077}
!3077 = distinct !{!3077, !3078, !"quoting_options_from_style: argument 0"}
!3078 = distinct !{!3078, !"quoting_options_from_style"}
!3079 = !DILocation(line: 196, column: 13, scope: !3022, inlinedAt: !3074)
!3080 = !DILocation(line: 196, column: 7, scope: !3010, inlinedAt: !3074)
!3081 = !DILocation(line: 197, column: 5, scope: !3022, inlinedAt: !3074)
!3082 = !DILocation(line: 198, column: 5, scope: !3010, inlinedAt: !3074)
!3083 = !DILocation(line: 198, column: 11, scope: !3010, inlinedAt: !3074)
!3084 = !DILocation(line: 958, column: 10, scope: !2996, inlinedAt: !3068)
!3085 = !DILocation(line: 959, column: 1, scope: !2996, inlinedAt: !3068)
!3086 = !DILocation(line: 972, column: 3, scope: !3059)
!3087 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !237, file: !237, line: 976, type: !3088, isLocal: false, isDefinition: true, scopeLine: 977, flags: DIFlagPrototyped, isOptimized: true, unit: !209, retainedNodes: !3090)
!3088 = !DISubroutineType(types: !3089)
!3089 = !{!36, !5, !44, !63}
!3090 = !{!3091, !3092, !3093}
!3091 = !DILocalVariable(name: "s", arg: 1, scope: !3087, file: !237, line: 976, type: !5)
!3092 = !DILocalVariable(name: "arg", arg: 2, scope: !3087, file: !237, line: 976, type: !44)
!3093 = !DILocalVariable(name: "argsize", arg: 3, scope: !3087, file: !237, line: 976, type: !63)
!3094 = !DILocation(line: 976, column: 40, scope: !3087)
!3095 = !DILocation(line: 976, column: 55, scope: !3087)
!3096 = !DILocation(line: 976, column: 67, scope: !3087)
!3097 = !DILocation(line: 962, column: 27, scope: !3030, inlinedAt: !3098)
!3098 = distinct !DILocation(line: 978, column: 10, scope: !3087)
!3099 = !DILocation(line: 962, column: 49, scope: !3030, inlinedAt: !3098)
!3100 = !DILocation(line: 963, column: 35, scope: !3030, inlinedAt: !3098)
!3101 = !DILocation(line: 963, column: 47, scope: !3030, inlinedAt: !3098)
!3102 = !DILocation(line: 965, column: 3, scope: !3030, inlinedAt: !3098)
!3103 = !DILocation(line: 965, column: 32, scope: !3030, inlinedAt: !3098)
!3104 = !DILocation(line: 193, column: 48, scope: !3010, inlinedAt: !3105)
!3105 = distinct !DILocation(line: 965, column: 36, scope: !3030, inlinedAt: !3098)
!3106 = !DILocation(line: 195, column: 26, scope: !3010, inlinedAt: !3105)
!3107 = !{!3108}
!3108 = distinct !{!3108, !3109, !"quoting_options_from_style: argument 0"}
!3109 = distinct !{!3109, !"quoting_options_from_style"}
!3110 = !DILocation(line: 196, column: 13, scope: !3022, inlinedAt: !3105)
!3111 = !DILocation(line: 196, column: 7, scope: !3010, inlinedAt: !3105)
!3112 = !DILocation(line: 197, column: 5, scope: !3022, inlinedAt: !3105)
!3113 = !DILocation(line: 198, column: 5, scope: !3010, inlinedAt: !3105)
!3114 = !DILocation(line: 198, column: 11, scope: !3010, inlinedAt: !3105)
!3115 = !DILocation(line: 966, column: 10, scope: !3030, inlinedAt: !3098)
!3116 = !DILocation(line: 967, column: 1, scope: !3030, inlinedAt: !3098)
!3117 = !DILocation(line: 978, column: 3, scope: !3087)
!3118 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !237, file: !237, line: 982, type: !3119, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !209, retainedNodes: !3121)
!3119 = !DISubroutineType(types: !3120)
!3120 = !{!36, !44, !63, !37}
!3121 = !{!3122, !3123, !3124, !3125}
!3122 = !DILocalVariable(name: "arg", arg: 1, scope: !3118, file: !237, line: 982, type: !44)
!3123 = !DILocalVariable(name: "argsize", arg: 2, scope: !3118, file: !237, line: 982, type: !63)
!3124 = !DILocalVariable(name: "ch", arg: 3, scope: !3118, file: !237, line: 982, type: !37)
!3125 = !DILocalVariable(name: "options", scope: !3118, file: !237, line: 984, type: !244)
!3126 = !DILocation(line: 982, column: 32, scope: !3118)
!3127 = !DILocation(line: 982, column: 44, scope: !3118)
!3128 = !DILocation(line: 982, column: 58, scope: !3118)
!3129 = !DILocation(line: 984, column: 3, scope: !3118)
!3130 = !DILocation(line: 985, column: 13, scope: !3118)
!3131 = !{i64 0, i64 4, !1002, i64 4, i64 4, !901, i64 8, i64 32, !1002, i64 40, i64 8, !767, i64 48, i64 8, !767}
!3132 = !DILocation(line: 984, column: 26, scope: !3118)
!3133 = !DILocation(line: 152, column: 43, scope: !1785, inlinedAt: !3134)
!3134 = distinct !DILocation(line: 986, column: 3, scope: !3118)
!3135 = !DILocation(line: 152, column: 51, scope: !1785, inlinedAt: !3134)
!3136 = !DILocation(line: 152, column: 58, scope: !1785, inlinedAt: !3134)
!3137 = !DILocation(line: 154, column: 17, scope: !1785, inlinedAt: !3134)
!3138 = !DILocation(line: 156, column: 62, scope: !1785, inlinedAt: !3134)
!3139 = !DILocation(line: 156, column: 57, scope: !1785, inlinedAt: !3134)
!3140 = !DILocation(line: 155, column: 17, scope: !1785, inlinedAt: !3134)
!3141 = !DILocation(line: 157, column: 15, scope: !1785, inlinedAt: !3134)
!3142 = !DILocation(line: 157, column: 7, scope: !1785, inlinedAt: !3134)
!3143 = !DILocation(line: 158, column: 12, scope: !1785, inlinedAt: !3134)
!3144 = !DILocation(line: 158, column: 15, scope: !1785, inlinedAt: !3134)
!3145 = !DILocation(line: 158, column: 25, scope: !1785, inlinedAt: !3134)
!3146 = !DILocation(line: 158, column: 7, scope: !1785, inlinedAt: !3134)
!3147 = !DILocation(line: 159, column: 18, scope: !1785, inlinedAt: !3134)
!3148 = !DILocation(line: 159, column: 23, scope: !1785, inlinedAt: !3134)
!3149 = !DILocation(line: 159, column: 6, scope: !1785, inlinedAt: !3134)
!3150 = !DILocation(line: 987, column: 10, scope: !3118)
!3151 = !DILocation(line: 988, column: 1, scope: !3118)
!3152 = !DILocation(line: 987, column: 3, scope: !3118)
!3153 = distinct !DISubprogram(name: "quotearg_char", scope: !237, file: !237, line: 991, type: !3154, isLocal: false, isDefinition: true, scopeLine: 992, flags: DIFlagPrototyped, isOptimized: true, unit: !209, retainedNodes: !3156)
!3154 = !DISubroutineType(types: !3155)
!3155 = !{!36, !44, !37}
!3156 = !{!3157, !3158}
!3157 = !DILocalVariable(name: "arg", arg: 1, scope: !3153, file: !237, line: 991, type: !44)
!3158 = !DILocalVariable(name: "ch", arg: 2, scope: !3153, file: !237, line: 991, type: !37)
!3159 = !DILocation(line: 991, column: 28, scope: !3153)
!3160 = !DILocation(line: 991, column: 38, scope: !3153)
!3161 = !DILocation(line: 982, column: 32, scope: !3118, inlinedAt: !3162)
!3162 = distinct !DILocation(line: 993, column: 10, scope: !3153)
!3163 = !DILocation(line: 982, column: 44, scope: !3118, inlinedAt: !3162)
!3164 = !DILocation(line: 982, column: 58, scope: !3118, inlinedAt: !3162)
!3165 = !DILocation(line: 984, column: 3, scope: !3118, inlinedAt: !3162)
!3166 = !DILocation(line: 985, column: 13, scope: !3118, inlinedAt: !3162)
!3167 = !DILocation(line: 984, column: 26, scope: !3118, inlinedAt: !3162)
!3168 = !DILocation(line: 152, column: 43, scope: !1785, inlinedAt: !3169)
!3169 = distinct !DILocation(line: 986, column: 3, scope: !3118, inlinedAt: !3162)
!3170 = !DILocation(line: 152, column: 51, scope: !1785, inlinedAt: !3169)
!3171 = !DILocation(line: 152, column: 58, scope: !1785, inlinedAt: !3169)
!3172 = !DILocation(line: 154, column: 17, scope: !1785, inlinedAt: !3169)
!3173 = !DILocation(line: 156, column: 62, scope: !1785, inlinedAt: !3169)
!3174 = !DILocation(line: 156, column: 57, scope: !1785, inlinedAt: !3169)
!3175 = !DILocation(line: 155, column: 17, scope: !1785, inlinedAt: !3169)
!3176 = !DILocation(line: 157, column: 15, scope: !1785, inlinedAt: !3169)
!3177 = !DILocation(line: 157, column: 7, scope: !1785, inlinedAt: !3169)
!3178 = !DILocation(line: 158, column: 12, scope: !1785, inlinedAt: !3169)
!3179 = !DILocation(line: 158, column: 15, scope: !1785, inlinedAt: !3169)
!3180 = !DILocation(line: 158, column: 25, scope: !1785, inlinedAt: !3169)
!3181 = !DILocation(line: 158, column: 7, scope: !1785, inlinedAt: !3169)
!3182 = !DILocation(line: 159, column: 18, scope: !1785, inlinedAt: !3169)
!3183 = !DILocation(line: 159, column: 23, scope: !1785, inlinedAt: !3169)
!3184 = !DILocation(line: 159, column: 6, scope: !1785, inlinedAt: !3169)
!3185 = !DILocation(line: 987, column: 10, scope: !3118, inlinedAt: !3162)
!3186 = !DILocation(line: 988, column: 1, scope: !3118, inlinedAt: !3162)
!3187 = !DILocation(line: 993, column: 3, scope: !3153)
!3188 = distinct !DISubprogram(name: "quotearg_colon", scope: !237, file: !237, line: 997, type: !2972, isLocal: false, isDefinition: true, scopeLine: 998, flags: DIFlagPrototyped, isOptimized: true, unit: !209, retainedNodes: !3189)
!3189 = !{!3190}
!3190 = !DILocalVariable(name: "arg", arg: 1, scope: !3188, file: !237, line: 997, type: !44)
!3191 = !DILocation(line: 997, column: 29, scope: !3188)
!3192 = !DILocation(line: 991, column: 28, scope: !3153, inlinedAt: !3193)
!3193 = distinct !DILocation(line: 999, column: 10, scope: !3188)
!3194 = !DILocation(line: 991, column: 38, scope: !3153, inlinedAt: !3193)
!3195 = !DILocation(line: 982, column: 32, scope: !3118, inlinedAt: !3196)
!3196 = distinct !DILocation(line: 993, column: 10, scope: !3153, inlinedAt: !3193)
!3197 = !DILocation(line: 982, column: 44, scope: !3118, inlinedAt: !3196)
!3198 = !DILocation(line: 982, column: 58, scope: !3118, inlinedAt: !3196)
!3199 = !DILocation(line: 984, column: 3, scope: !3118, inlinedAt: !3196)
!3200 = !DILocation(line: 985, column: 13, scope: !3118, inlinedAt: !3196)
!3201 = !DILocation(line: 984, column: 26, scope: !3118, inlinedAt: !3196)
!3202 = !DILocation(line: 152, column: 43, scope: !1785, inlinedAt: !3203)
!3203 = distinct !DILocation(line: 986, column: 3, scope: !3118, inlinedAt: !3196)
!3204 = !DILocation(line: 152, column: 51, scope: !1785, inlinedAt: !3203)
!3205 = !DILocation(line: 152, column: 58, scope: !1785, inlinedAt: !3203)
!3206 = !DILocation(line: 154, column: 17, scope: !1785, inlinedAt: !3203)
!3207 = !DILocation(line: 156, column: 57, scope: !1785, inlinedAt: !3203)
!3208 = !DILocation(line: 155, column: 17, scope: !1785, inlinedAt: !3203)
!3209 = !DILocation(line: 157, column: 7, scope: !1785, inlinedAt: !3203)
!3210 = !DILocation(line: 158, column: 12, scope: !1785, inlinedAt: !3203)
!3211 = !DILocation(line: 159, column: 6, scope: !1785, inlinedAt: !3203)
!3212 = !DILocation(line: 987, column: 10, scope: !3118, inlinedAt: !3196)
!3213 = !DILocation(line: 988, column: 1, scope: !3118, inlinedAt: !3196)
!3214 = !DILocation(line: 999, column: 3, scope: !3188)
!3215 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !237, file: !237, line: 1003, type: !2983, isLocal: false, isDefinition: true, scopeLine: 1004, flags: DIFlagPrototyped, isOptimized: true, unit: !209, retainedNodes: !3216)
!3216 = !{!3217, !3218}
!3217 = !DILocalVariable(name: "arg", arg: 1, scope: !3215, file: !237, line: 1003, type: !44)
!3218 = !DILocalVariable(name: "argsize", arg: 2, scope: !3215, file: !237, line: 1003, type: !63)
!3219 = !DILocation(line: 1003, column: 33, scope: !3215)
!3220 = !DILocation(line: 1003, column: 45, scope: !3215)
!3221 = !DILocation(line: 982, column: 32, scope: !3118, inlinedAt: !3222)
!3222 = distinct !DILocation(line: 1005, column: 10, scope: !3215)
!3223 = !DILocation(line: 982, column: 44, scope: !3118, inlinedAt: !3222)
!3224 = !DILocation(line: 982, column: 58, scope: !3118, inlinedAt: !3222)
!3225 = !DILocation(line: 984, column: 3, scope: !3118, inlinedAt: !3222)
!3226 = !DILocation(line: 985, column: 13, scope: !3118, inlinedAt: !3222)
!3227 = !DILocation(line: 984, column: 26, scope: !3118, inlinedAt: !3222)
!3228 = !DILocation(line: 152, column: 43, scope: !1785, inlinedAt: !3229)
!3229 = distinct !DILocation(line: 986, column: 3, scope: !3118, inlinedAt: !3222)
!3230 = !DILocation(line: 152, column: 51, scope: !1785, inlinedAt: !3229)
!3231 = !DILocation(line: 152, column: 58, scope: !1785, inlinedAt: !3229)
!3232 = !DILocation(line: 154, column: 17, scope: !1785, inlinedAt: !3229)
!3233 = !DILocation(line: 156, column: 57, scope: !1785, inlinedAt: !3229)
!3234 = !DILocation(line: 155, column: 17, scope: !1785, inlinedAt: !3229)
!3235 = !DILocation(line: 157, column: 7, scope: !1785, inlinedAt: !3229)
!3236 = !DILocation(line: 158, column: 12, scope: !1785, inlinedAt: !3229)
!3237 = !DILocation(line: 159, column: 6, scope: !1785, inlinedAt: !3229)
!3238 = !DILocation(line: 987, column: 10, scope: !3118, inlinedAt: !3222)
!3239 = !DILocation(line: 988, column: 1, scope: !3118, inlinedAt: !3222)
!3240 = !DILocation(line: 1005, column: 3, scope: !3215)
!3241 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !237, file: !237, line: 1009, type: !2997, isLocal: false, isDefinition: true, scopeLine: 1010, flags: DIFlagPrototyped, isOptimized: true, unit: !209, retainedNodes: !3242)
!3242 = !{!3243, !3244, !3245, !3246}
!3243 = !DILocalVariable(name: "n", arg: 1, scope: !3241, file: !237, line: 1009, type: !116)
!3244 = !DILocalVariable(name: "s", arg: 2, scope: !3241, file: !237, line: 1009, type: !5)
!3245 = !DILocalVariable(name: "arg", arg: 3, scope: !3241, file: !237, line: 1009, type: !44)
!3246 = !DILocalVariable(name: "options", scope: !3241, file: !237, line: 1011, type: !244)
!3247 = !DILocation(line: 195, column: 26, scope: !3010, inlinedAt: !3248)
!3248 = distinct !DILocation(line: 1012, column: 13, scope: !3241)
!3249 = !DILocation(line: 1009, column: 29, scope: !3241)
!3250 = !DILocation(line: 1009, column: 51, scope: !3241)
!3251 = !DILocation(line: 1009, column: 66, scope: !3241)
!3252 = !DILocation(line: 1011, column: 3, scope: !3241)
!3253 = !DILocation(line: 1012, column: 13, scope: !3241)
!3254 = !DILocation(line: 193, column: 48, scope: !3010, inlinedAt: !3248)
!3255 = !{!3256}
!3256 = distinct !{!3256, !3257, !"quoting_options_from_style: argument 0"}
!3257 = distinct !{!3257, !"quoting_options_from_style"}
!3258 = !DILocation(line: 196, column: 13, scope: !3022, inlinedAt: !3248)
!3259 = !DILocation(line: 196, column: 7, scope: !3010, inlinedAt: !3248)
!3260 = !DILocation(line: 197, column: 5, scope: !3022, inlinedAt: !3248)
!3261 = !DILocation(line: 1011, column: 26, scope: !3241)
!3262 = !DILocation(line: 152, column: 43, scope: !1785, inlinedAt: !3263)
!3263 = distinct !DILocation(line: 1013, column: 3, scope: !3241)
!3264 = !DILocation(line: 152, column: 51, scope: !1785, inlinedAt: !3263)
!3265 = !DILocation(line: 152, column: 58, scope: !1785, inlinedAt: !3263)
!3266 = !DILocation(line: 154, column: 17, scope: !1785, inlinedAt: !3263)
!3267 = !DILocation(line: 156, column: 57, scope: !1785, inlinedAt: !3263)
!3268 = !DILocation(line: 155, column: 17, scope: !1785, inlinedAt: !3263)
!3269 = !DILocation(line: 157, column: 7, scope: !1785, inlinedAt: !3263)
!3270 = !DILocation(line: 158, column: 12, scope: !1785, inlinedAt: !3263)
!3271 = !DILocation(line: 159, column: 6, scope: !1785, inlinedAt: !3263)
!3272 = !DILocation(line: 1014, column: 10, scope: !3241)
!3273 = !DILocation(line: 1015, column: 1, scope: !3241)
!3274 = !DILocation(line: 1014, column: 3, scope: !3241)
!3275 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !237, file: !237, line: 1018, type: !3276, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !209, retainedNodes: !3278)
!3276 = !DISubroutineType(types: !3277)
!3277 = !{!36, !116, !44, !44, !44}
!3278 = !{!3279, !3280, !3281, !3282}
!3279 = !DILocalVariable(name: "n", arg: 1, scope: !3275, file: !237, line: 1018, type: !116)
!3280 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3275, file: !237, line: 1018, type: !44)
!3281 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3275, file: !237, line: 1019, type: !44)
!3282 = !DILocalVariable(name: "arg", arg: 4, scope: !3275, file: !237, line: 1019, type: !44)
!3283 = !DILocation(line: 1018, column: 24, scope: !3275)
!3284 = !DILocation(line: 1018, column: 39, scope: !3275)
!3285 = !DILocation(line: 1019, column: 32, scope: !3275)
!3286 = !DILocation(line: 1019, column: 57, scope: !3275)
!3287 = !DILocalVariable(name: "n", arg: 1, scope: !3288, file: !237, line: 1026, type: !116)
!3288 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !237, file: !237, line: 1026, type: !3289, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !209, retainedNodes: !3291)
!3289 = !DISubroutineType(types: !3290)
!3290 = !{!36, !116, !44, !44, !44, !63}
!3291 = !{!3287, !3292, !3293, !3294, !3295, !3296}
!3292 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3288, file: !237, line: 1026, type: !44)
!3293 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3288, file: !237, line: 1027, type: !44)
!3294 = !DILocalVariable(name: "arg", arg: 4, scope: !3288, file: !237, line: 1028, type: !44)
!3295 = !DILocalVariable(name: "argsize", arg: 5, scope: !3288, file: !237, line: 1028, type: !63)
!3296 = !DILocalVariable(name: "o", scope: !3288, file: !237, line: 1030, type: !244)
!3297 = !DILocation(line: 1026, column: 28, scope: !3288, inlinedAt: !3298)
!3298 = distinct !DILocation(line: 1021, column: 10, scope: !3275)
!3299 = !DILocation(line: 1026, column: 43, scope: !3288, inlinedAt: !3298)
!3300 = !DILocation(line: 1027, column: 36, scope: !3288, inlinedAt: !3298)
!3301 = !DILocation(line: 1028, column: 36, scope: !3288, inlinedAt: !3298)
!3302 = !DILocation(line: 1028, column: 48, scope: !3288, inlinedAt: !3298)
!3303 = !DILocation(line: 1030, column: 3, scope: !3288, inlinedAt: !3298)
!3304 = !DILocation(line: 1030, column: 30, scope: !3288, inlinedAt: !3298)
!3305 = !DILocation(line: 1030, column: 26, scope: !3288, inlinedAt: !3298)
!3306 = !DILocation(line: 179, column: 45, scope: !1833, inlinedAt: !3307)
!3307 = distinct !DILocation(line: 1031, column: 3, scope: !3288, inlinedAt: !3298)
!3308 = !DILocation(line: 180, column: 33, scope: !1833, inlinedAt: !3307)
!3309 = !DILocation(line: 180, column: 57, scope: !1833, inlinedAt: !3307)
!3310 = !DILocation(line: 184, column: 6, scope: !1833, inlinedAt: !3307)
!3311 = !DILocation(line: 184, column: 12, scope: !1833, inlinedAt: !3307)
!3312 = !DILocation(line: 185, column: 8, scope: !1849, inlinedAt: !3307)
!3313 = !DILocation(line: 185, column: 23, scope: !1849, inlinedAt: !3307)
!3314 = !DILocation(line: 185, column: 19, scope: !1849, inlinedAt: !3307)
!3315 = !DILocation(line: 186, column: 5, scope: !1849, inlinedAt: !3307)
!3316 = !DILocation(line: 187, column: 6, scope: !1833, inlinedAt: !3307)
!3317 = !DILocation(line: 187, column: 17, scope: !1833, inlinedAt: !3307)
!3318 = !DILocation(line: 188, column: 6, scope: !1833, inlinedAt: !3307)
!3319 = !DILocation(line: 188, column: 18, scope: !1833, inlinedAt: !3307)
!3320 = !DILocation(line: 1032, column: 10, scope: !3288, inlinedAt: !3298)
!3321 = !DILocation(line: 1033, column: 1, scope: !3288, inlinedAt: !3298)
!3322 = !DILocation(line: 1021, column: 3, scope: !3275)
!3323 = !DILocation(line: 1026, column: 28, scope: !3288)
!3324 = !DILocation(line: 1026, column: 43, scope: !3288)
!3325 = !DILocation(line: 1027, column: 36, scope: !3288)
!3326 = !DILocation(line: 1028, column: 36, scope: !3288)
!3327 = !DILocation(line: 1028, column: 48, scope: !3288)
!3328 = !DILocation(line: 1030, column: 3, scope: !3288)
!3329 = !DILocation(line: 1030, column: 30, scope: !3288)
!3330 = !DILocation(line: 1030, column: 26, scope: !3288)
!3331 = !DILocation(line: 179, column: 45, scope: !1833, inlinedAt: !3332)
!3332 = distinct !DILocation(line: 1031, column: 3, scope: !3288)
!3333 = !DILocation(line: 180, column: 33, scope: !1833, inlinedAt: !3332)
!3334 = !DILocation(line: 180, column: 57, scope: !1833, inlinedAt: !3332)
!3335 = !DILocation(line: 184, column: 6, scope: !1833, inlinedAt: !3332)
!3336 = !DILocation(line: 184, column: 12, scope: !1833, inlinedAt: !3332)
!3337 = !DILocation(line: 185, column: 8, scope: !1849, inlinedAt: !3332)
!3338 = !DILocation(line: 185, column: 23, scope: !1849, inlinedAt: !3332)
!3339 = !DILocation(line: 185, column: 19, scope: !1849, inlinedAt: !3332)
!3340 = !DILocation(line: 186, column: 5, scope: !1849, inlinedAt: !3332)
!3341 = !DILocation(line: 187, column: 6, scope: !1833, inlinedAt: !3332)
!3342 = !DILocation(line: 187, column: 17, scope: !1833, inlinedAt: !3332)
!3343 = !DILocation(line: 188, column: 6, scope: !1833, inlinedAt: !3332)
!3344 = !DILocation(line: 188, column: 18, scope: !1833, inlinedAt: !3332)
!3345 = !DILocation(line: 1032, column: 10, scope: !3288)
!3346 = !DILocation(line: 1033, column: 1, scope: !3288)
!3347 = !DILocation(line: 1032, column: 3, scope: !3288)
!3348 = distinct !DISubprogram(name: "quotearg_custom", scope: !237, file: !237, line: 1036, type: !3349, isLocal: false, isDefinition: true, scopeLine: 1038, flags: DIFlagPrototyped, isOptimized: true, unit: !209, retainedNodes: !3351)
!3349 = !DISubroutineType(types: !3350)
!3350 = !{!36, !44, !44, !44}
!3351 = !{!3352, !3353, !3354}
!3352 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3348, file: !237, line: 1036, type: !44)
!3353 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3348, file: !237, line: 1036, type: !44)
!3354 = !DILocalVariable(name: "arg", arg: 3, scope: !3348, file: !237, line: 1037, type: !44)
!3355 = !DILocation(line: 1036, column: 30, scope: !3348)
!3356 = !DILocation(line: 1036, column: 54, scope: !3348)
!3357 = !DILocation(line: 1037, column: 30, scope: !3348)
!3358 = !DILocation(line: 1018, column: 24, scope: !3275, inlinedAt: !3359)
!3359 = distinct !DILocation(line: 1039, column: 10, scope: !3348)
!3360 = !DILocation(line: 1018, column: 39, scope: !3275, inlinedAt: !3359)
!3361 = !DILocation(line: 1019, column: 32, scope: !3275, inlinedAt: !3359)
!3362 = !DILocation(line: 1019, column: 57, scope: !3275, inlinedAt: !3359)
!3363 = !DILocation(line: 1026, column: 28, scope: !3288, inlinedAt: !3364)
!3364 = distinct !DILocation(line: 1021, column: 10, scope: !3275, inlinedAt: !3359)
!3365 = !DILocation(line: 1026, column: 43, scope: !3288, inlinedAt: !3364)
!3366 = !DILocation(line: 1027, column: 36, scope: !3288, inlinedAt: !3364)
!3367 = !DILocation(line: 1028, column: 36, scope: !3288, inlinedAt: !3364)
!3368 = !DILocation(line: 1028, column: 48, scope: !3288, inlinedAt: !3364)
!3369 = !DILocation(line: 1030, column: 3, scope: !3288, inlinedAt: !3364)
!3370 = !DILocation(line: 1030, column: 30, scope: !3288, inlinedAt: !3364)
!3371 = !DILocation(line: 1030, column: 26, scope: !3288, inlinedAt: !3364)
!3372 = !DILocation(line: 179, column: 45, scope: !1833, inlinedAt: !3373)
!3373 = distinct !DILocation(line: 1031, column: 3, scope: !3288, inlinedAt: !3364)
!3374 = !DILocation(line: 180, column: 33, scope: !1833, inlinedAt: !3373)
!3375 = !DILocation(line: 180, column: 57, scope: !1833, inlinedAt: !3373)
!3376 = !DILocation(line: 184, column: 6, scope: !1833, inlinedAt: !3373)
!3377 = !DILocation(line: 184, column: 12, scope: !1833, inlinedAt: !3373)
!3378 = !DILocation(line: 185, column: 8, scope: !1849, inlinedAt: !3373)
!3379 = !DILocation(line: 185, column: 23, scope: !1849, inlinedAt: !3373)
!3380 = !DILocation(line: 185, column: 19, scope: !1849, inlinedAt: !3373)
!3381 = !DILocation(line: 186, column: 5, scope: !1849, inlinedAt: !3373)
!3382 = !DILocation(line: 187, column: 6, scope: !1833, inlinedAt: !3373)
!3383 = !DILocation(line: 187, column: 17, scope: !1833, inlinedAt: !3373)
!3384 = !DILocation(line: 188, column: 6, scope: !1833, inlinedAt: !3373)
!3385 = !DILocation(line: 188, column: 18, scope: !1833, inlinedAt: !3373)
!3386 = !DILocation(line: 1032, column: 10, scope: !3288, inlinedAt: !3364)
!3387 = !DILocation(line: 1033, column: 1, scope: !3288, inlinedAt: !3364)
!3388 = !DILocation(line: 1039, column: 3, scope: !3348)
!3389 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !237, file: !237, line: 1043, type: !3390, isLocal: false, isDefinition: true, scopeLine: 1045, flags: DIFlagPrototyped, isOptimized: true, unit: !209, retainedNodes: !3392)
!3390 = !DISubroutineType(types: !3391)
!3391 = !{!36, !44, !44, !44, !63}
!3392 = !{!3393, !3394, !3395, !3396}
!3393 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3389, file: !237, line: 1043, type: !44)
!3394 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3389, file: !237, line: 1043, type: !44)
!3395 = !DILocalVariable(name: "arg", arg: 3, scope: !3389, file: !237, line: 1044, type: !44)
!3396 = !DILocalVariable(name: "argsize", arg: 4, scope: !3389, file: !237, line: 1044, type: !63)
!3397 = !DILocation(line: 1043, column: 34, scope: !3389)
!3398 = !DILocation(line: 1043, column: 58, scope: !3389)
!3399 = !DILocation(line: 1044, column: 34, scope: !3389)
!3400 = !DILocation(line: 1044, column: 46, scope: !3389)
!3401 = !DILocation(line: 1026, column: 28, scope: !3288, inlinedAt: !3402)
!3402 = distinct !DILocation(line: 1046, column: 10, scope: !3389)
!3403 = !DILocation(line: 1026, column: 43, scope: !3288, inlinedAt: !3402)
!3404 = !DILocation(line: 1027, column: 36, scope: !3288, inlinedAt: !3402)
!3405 = !DILocation(line: 1028, column: 36, scope: !3288, inlinedAt: !3402)
!3406 = !DILocation(line: 1028, column: 48, scope: !3288, inlinedAt: !3402)
!3407 = !DILocation(line: 1030, column: 3, scope: !3288, inlinedAt: !3402)
!3408 = !DILocation(line: 1030, column: 30, scope: !3288, inlinedAt: !3402)
!3409 = !DILocation(line: 1030, column: 26, scope: !3288, inlinedAt: !3402)
!3410 = !DILocation(line: 179, column: 45, scope: !1833, inlinedAt: !3411)
!3411 = distinct !DILocation(line: 1031, column: 3, scope: !3288, inlinedAt: !3402)
!3412 = !DILocation(line: 180, column: 33, scope: !1833, inlinedAt: !3411)
!3413 = !DILocation(line: 180, column: 57, scope: !1833, inlinedAt: !3411)
!3414 = !DILocation(line: 184, column: 6, scope: !1833, inlinedAt: !3411)
!3415 = !DILocation(line: 184, column: 12, scope: !1833, inlinedAt: !3411)
!3416 = !DILocation(line: 185, column: 8, scope: !1849, inlinedAt: !3411)
!3417 = !DILocation(line: 185, column: 23, scope: !1849, inlinedAt: !3411)
!3418 = !DILocation(line: 185, column: 19, scope: !1849, inlinedAt: !3411)
!3419 = !DILocation(line: 186, column: 5, scope: !1849, inlinedAt: !3411)
!3420 = !DILocation(line: 187, column: 6, scope: !1833, inlinedAt: !3411)
!3421 = !DILocation(line: 187, column: 17, scope: !1833, inlinedAt: !3411)
!3422 = !DILocation(line: 188, column: 6, scope: !1833, inlinedAt: !3411)
!3423 = !DILocation(line: 188, column: 18, scope: !1833, inlinedAt: !3411)
!3424 = !DILocation(line: 1032, column: 10, scope: !3288, inlinedAt: !3402)
!3425 = !DILocation(line: 1033, column: 1, scope: !3288, inlinedAt: !3402)
!3426 = !DILocation(line: 1046, column: 3, scope: !3389)
!3427 = distinct !DISubprogram(name: "quote_n_mem", scope: !237, file: !237, line: 1061, type: !3428, isLocal: false, isDefinition: true, scopeLine: 1062, flags: DIFlagPrototyped, isOptimized: true, unit: !209, retainedNodes: !3430)
!3428 = !DISubroutineType(types: !3429)
!3429 = !{!44, !116, !44, !63}
!3430 = !{!3431, !3432, !3433}
!3431 = !DILocalVariable(name: "n", arg: 1, scope: !3427, file: !237, line: 1061, type: !116)
!3432 = !DILocalVariable(name: "arg", arg: 2, scope: !3427, file: !237, line: 1061, type: !44)
!3433 = !DILocalVariable(name: "argsize", arg: 3, scope: !3427, file: !237, line: 1061, type: !63)
!3434 = !DILocation(line: 1061, column: 18, scope: !3427)
!3435 = !DILocation(line: 1061, column: 33, scope: !3427)
!3436 = !DILocation(line: 1061, column: 45, scope: !3427)
!3437 = !DILocation(line: 1063, column: 10, scope: !3427)
!3438 = !DILocation(line: 1063, column: 3, scope: !3427)
!3439 = distinct !DISubprogram(name: "quote_mem", scope: !237, file: !237, line: 1067, type: !3440, isLocal: false, isDefinition: true, scopeLine: 1068, flags: DIFlagPrototyped, isOptimized: true, unit: !209, retainedNodes: !3442)
!3440 = !DISubroutineType(types: !3441)
!3441 = !{!44, !44, !63}
!3442 = !{!3443, !3444}
!3443 = !DILocalVariable(name: "arg", arg: 1, scope: !3439, file: !237, line: 1067, type: !44)
!3444 = !DILocalVariable(name: "argsize", arg: 2, scope: !3439, file: !237, line: 1067, type: !63)
!3445 = !DILocation(line: 1067, column: 24, scope: !3439)
!3446 = !DILocation(line: 1067, column: 36, scope: !3439)
!3447 = !DILocation(line: 1061, column: 18, scope: !3427, inlinedAt: !3448)
!3448 = distinct !DILocation(line: 1069, column: 10, scope: !3439)
!3449 = !DILocation(line: 1061, column: 33, scope: !3427, inlinedAt: !3448)
!3450 = !DILocation(line: 1061, column: 45, scope: !3427, inlinedAt: !3448)
!3451 = !DILocation(line: 1063, column: 10, scope: !3427, inlinedAt: !3448)
!3452 = !DILocation(line: 1069, column: 3, scope: !3439)
!3453 = distinct !DISubprogram(name: "quote_n", scope: !237, file: !237, line: 1073, type: !3454, isLocal: false, isDefinition: true, scopeLine: 1074, flags: DIFlagPrototyped, isOptimized: true, unit: !209, retainedNodes: !3456)
!3454 = !DISubroutineType(types: !3455)
!3455 = !{!44, !116, !44}
!3456 = !{!3457, !3458}
!3457 = !DILocalVariable(name: "n", arg: 1, scope: !3453, file: !237, line: 1073, type: !116)
!3458 = !DILocalVariable(name: "arg", arg: 2, scope: !3453, file: !237, line: 1073, type: !44)
!3459 = !DILocation(line: 1073, column: 14, scope: !3453)
!3460 = !DILocation(line: 1073, column: 29, scope: !3453)
!3461 = !DILocation(line: 1061, column: 18, scope: !3427, inlinedAt: !3462)
!3462 = distinct !DILocation(line: 1075, column: 10, scope: !3453)
!3463 = !DILocation(line: 1061, column: 33, scope: !3427, inlinedAt: !3462)
!3464 = !DILocation(line: 1061, column: 45, scope: !3427, inlinedAt: !3462)
!3465 = !DILocation(line: 1063, column: 10, scope: !3427, inlinedAt: !3462)
!3466 = !DILocation(line: 1075, column: 3, scope: !3453)
!3467 = distinct !DISubprogram(name: "quote", scope: !237, file: !237, line: 1079, type: !3468, isLocal: false, isDefinition: true, scopeLine: 1080, flags: DIFlagPrototyped, isOptimized: true, unit: !209, retainedNodes: !3470)
!3468 = !DISubroutineType(types: !3469)
!3469 = !{!44, !44}
!3470 = !{!3471}
!3471 = !DILocalVariable(name: "arg", arg: 1, scope: !3467, file: !237, line: 1079, type: !44)
!3472 = !DILocation(line: 1079, column: 20, scope: !3467)
!3473 = !DILocation(line: 1073, column: 14, scope: !3453, inlinedAt: !3474)
!3474 = distinct !DILocation(line: 1081, column: 10, scope: !3467)
!3475 = !DILocation(line: 1073, column: 29, scope: !3453, inlinedAt: !3474)
!3476 = !DILocation(line: 1061, column: 18, scope: !3427, inlinedAt: !3477)
!3477 = distinct !DILocation(line: 1075, column: 10, scope: !3453, inlinedAt: !3474)
!3478 = !DILocation(line: 1061, column: 33, scope: !3427, inlinedAt: !3477)
!3479 = !DILocation(line: 1061, column: 45, scope: !3427, inlinedAt: !3477)
!3480 = !DILocation(line: 1063, column: 10, scope: !3427, inlinedAt: !3477)
!3481 = !DILocation(line: 1081, column: 3, scope: !3467)
!3482 = distinct !DISubprogram(name: "version_etc_arn", scope: !290, file: !290, line: 62, type: !3483, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !286, retainedNodes: !3520)
!3483 = !DISubroutineType(types: !3484)
!3484 = !{null, !3485, !44, !44, !44, !3519, !63}
!3485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3486, size: 64)
!3486 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1083, line: 7, baseType: !3487)
!3487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1085, line: 49, size: 1728, elements: !3488)
!3488 = !{!3489, !3490, !3491, !3492, !3493, !3494, !3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3504, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518}
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3487, file: !1085, line: 51, baseType: !116, size: 32)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3487, file: !1085, line: 54, baseType: !36, size: 64, offset: 64)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3487, file: !1085, line: 55, baseType: !36, size: 64, offset: 128)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3487, file: !1085, line: 56, baseType: !36, size: 64, offset: 192)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3487, file: !1085, line: 57, baseType: !36, size: 64, offset: 256)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3487, file: !1085, line: 58, baseType: !36, size: 64, offset: 320)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3487, file: !1085, line: 59, baseType: !36, size: 64, offset: 384)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3487, file: !1085, line: 60, baseType: !36, size: 64, offset: 448)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3487, file: !1085, line: 61, baseType: !36, size: 64, offset: 512)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3487, file: !1085, line: 64, baseType: !36, size: 64, offset: 576)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3487, file: !1085, line: 65, baseType: !36, size: 64, offset: 640)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3487, file: !1085, line: 66, baseType: !36, size: 64, offset: 704)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3487, file: !1085, line: 68, baseType: !1100, size: 64, offset: 768)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3487, file: !1085, line: 70, baseType: !3503, size: 64, offset: 832)
!3503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3487, size: 64)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3487, file: !1085, line: 72, baseType: !116, size: 32, offset: 896)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3487, file: !1085, line: 73, baseType: !116, size: 32, offset: 928)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3487, file: !1085, line: 74, baseType: !1107, size: 64, offset: 960)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3487, file: !1085, line: 77, baseType: !233, size: 16, offset: 1024)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3487, file: !1085, line: 78, baseType: !1110, size: 8, offset: 1040)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3487, file: !1085, line: 79, baseType: !1112, size: 8, offset: 1048)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3487, file: !1085, line: 81, baseType: !1116, size: 64, offset: 1088)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3487, file: !1085, line: 89, baseType: !1119, size: 64, offset: 1152)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3487, file: !1085, line: 91, baseType: !1121, size: 64, offset: 1216)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3487, file: !1085, line: 92, baseType: !1124, size: 64, offset: 1280)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3487, file: !1085, line: 93, baseType: !3503, size: 64, offset: 1344)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3487, file: !1085, line: 94, baseType: !38, size: 64, offset: 1408)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3487, file: !1085, line: 95, baseType: !63, size: 64, offset: 1472)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3487, file: !1085, line: 96, baseType: !116, size: 32, offset: 1536)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3487, file: !1085, line: 98, baseType: !1131, size: 160, offset: 1568)
!3519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!3520 = !{!3521, !3522, !3523, !3524, !3525, !3526}
!3521 = !DILocalVariable(name: "stream", arg: 1, scope: !3482, file: !290, line: 62, type: !3485)
!3522 = !DILocalVariable(name: "command_name", arg: 2, scope: !3482, file: !290, line: 63, type: !44)
!3523 = !DILocalVariable(name: "package", arg: 3, scope: !3482, file: !290, line: 63, type: !44)
!3524 = !DILocalVariable(name: "version", arg: 4, scope: !3482, file: !290, line: 64, type: !44)
!3525 = !DILocalVariable(name: "authors", arg: 5, scope: !3482, file: !290, line: 65, type: !3519)
!3526 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3482, file: !290, line: 65, type: !63)
!3527 = !DILocation(line: 62, column: 24, scope: !3482)
!3528 = !DILocation(line: 63, column: 30, scope: !3482)
!3529 = !DILocation(line: 63, column: 56, scope: !3482)
!3530 = !DILocation(line: 64, column: 30, scope: !3482)
!3531 = !DILocation(line: 65, column: 39, scope: !3482)
!3532 = !DILocation(line: 65, column: 55, scope: !3482)
!3533 = !DILocation(line: 67, column: 7, scope: !3534)
!3534 = distinct !DILexicalBlock(scope: !3482, file: !290, line: 67, column: 7)
!3535 = !DILocation(line: 67, column: 7, scope: !3482)
!3536 = !DILocation(line: 68, column: 5, scope: !3534)
!3537 = !DILocation(line: 70, column: 5, scope: !3534)
!3538 = !DILocation(line: 84, column: 3, scope: !3482)
!3539 = !DILocation(line: 86, column: 3, scope: !3482)
!3540 = !DILocation(line: 95, column: 3, scope: !3482)
!3541 = !DILocation(line: 99, column: 7, scope: !3542)
!3542 = distinct !DILexicalBlock(scope: !3482, file: !290, line: 96, column: 5)
!3543 = !DILocation(line: 102, column: 7, scope: !3542)
!3544 = !DILocation(line: 103, column: 7, scope: !3542)
!3545 = !DILocation(line: 106, column: 7, scope: !3542)
!3546 = !DILocation(line: 107, column: 7, scope: !3542)
!3547 = !DILocation(line: 110, column: 7, scope: !3542)
!3548 = !DILocation(line: 112, column: 7, scope: !3542)
!3549 = !DILocation(line: 117, column: 7, scope: !3542)
!3550 = !DILocation(line: 119, column: 7, scope: !3542)
!3551 = !DILocation(line: 124, column: 7, scope: !3542)
!3552 = !DILocation(line: 126, column: 7, scope: !3542)
!3553 = !DILocation(line: 131, column: 7, scope: !3542)
!3554 = !DILocation(line: 134, column: 7, scope: !3542)
!3555 = !DILocation(line: 139, column: 7, scope: !3542)
!3556 = !DILocation(line: 142, column: 7, scope: !3542)
!3557 = !DILocation(line: 147, column: 7, scope: !3542)
!3558 = !DILocation(line: 151, column: 7, scope: !3542)
!3559 = !DILocation(line: 156, column: 7, scope: !3542)
!3560 = !DILocation(line: 160, column: 7, scope: !3542)
!3561 = !DILocation(line: 167, column: 7, scope: !3542)
!3562 = !DILocation(line: 171, column: 7, scope: !3542)
!3563 = !DILocation(line: 173, column: 1, scope: !3482)
!3564 = distinct !DISubprogram(name: "version_etc_ar", scope: !290, file: !290, line: 180, type: !3565, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !286, retainedNodes: !3567)
!3565 = !DISubroutineType(types: !3566)
!3566 = !{null, !3485, !44, !44, !44, !3519}
!3567 = !{!3568, !3569, !3570, !3571, !3572, !3573}
!3568 = !DILocalVariable(name: "stream", arg: 1, scope: !3564, file: !290, line: 180, type: !3485)
!3569 = !DILocalVariable(name: "command_name", arg: 2, scope: !3564, file: !290, line: 181, type: !44)
!3570 = !DILocalVariable(name: "package", arg: 3, scope: !3564, file: !290, line: 181, type: !44)
!3571 = !DILocalVariable(name: "version", arg: 4, scope: !3564, file: !290, line: 182, type: !44)
!3572 = !DILocalVariable(name: "authors", arg: 5, scope: !3564, file: !290, line: 182, type: !3519)
!3573 = !DILocalVariable(name: "n_authors", scope: !3564, file: !290, line: 184, type: !63)
!3574 = !DILocation(line: 180, column: 23, scope: !3564)
!3575 = !DILocation(line: 181, column: 29, scope: !3564)
!3576 = !DILocation(line: 181, column: 55, scope: !3564)
!3577 = !DILocation(line: 182, column: 29, scope: !3564)
!3578 = !DILocation(line: 182, column: 59, scope: !3564)
!3579 = !DILocation(line: 184, column: 10, scope: !3564)
!3580 = !DILocation(line: 186, column: 8, scope: !3581)
!3581 = distinct !DILexicalBlock(scope: !3564, file: !290, line: 186, column: 3)
!3582 = !DILocation(line: 0, scope: !3583)
!3583 = distinct !DILexicalBlock(scope: !3581, file: !290, line: 186, column: 3)
!3584 = !DILocation(line: 186, column: 23, scope: !3583)
!3585 = !DILocation(line: 186, column: 3, scope: !3581)
!3586 = !DILocation(line: 186, column: 52, scope: !3583)
!3587 = distinct !{!3587, !3585, !3588}
!3588 = !DILocation(line: 187, column: 5, scope: !3581)
!3589 = !DILocation(line: 188, column: 3, scope: !3564)
!3590 = !DILocation(line: 189, column: 1, scope: !3564)
!3591 = distinct !DISubprogram(name: "version_etc_va", scope: !290, file: !290, line: 196, type: !3592, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !286, retainedNodes: !3601)
!3592 = !DISubroutineType(types: !3593)
!3593 = !{null, !3485, !44, !44, !44, !3594}
!3594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3595, size: 64)
!3595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !287, line: 189, size: 192, elements: !3596)
!3596 = !{!3597, !3598, !3599, !3600}
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3595, file: !287, line: 189, baseType: !7, size: 32)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3595, file: !287, line: 189, baseType: !7, size: 32, offset: 32)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3595, file: !287, line: 189, baseType: !38, size: 64, offset: 64)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3595, file: !287, line: 189, baseType: !38, size: 64, offset: 128)
!3601 = !{!3602, !3603, !3604, !3605, !3606, !3607, !3608}
!3602 = !DILocalVariable(name: "stream", arg: 1, scope: !3591, file: !290, line: 196, type: !3485)
!3603 = !DILocalVariable(name: "command_name", arg: 2, scope: !3591, file: !290, line: 197, type: !44)
!3604 = !DILocalVariable(name: "package", arg: 3, scope: !3591, file: !290, line: 197, type: !44)
!3605 = !DILocalVariable(name: "version", arg: 4, scope: !3591, file: !290, line: 198, type: !44)
!3606 = !DILocalVariable(name: "authors", arg: 5, scope: !3591, file: !290, line: 198, type: !3594)
!3607 = !DILocalVariable(name: "n_authors", scope: !3591, file: !290, line: 200, type: !63)
!3608 = !DILocalVariable(name: "authtab", scope: !3591, file: !290, line: 201, type: !3609)
!3609 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 640, elements: !240)
!3610 = !DILocation(line: 196, column: 23, scope: !3591)
!3611 = !DILocation(line: 197, column: 29, scope: !3591)
!3612 = !DILocation(line: 197, column: 55, scope: !3591)
!3613 = !DILocation(line: 198, column: 29, scope: !3591)
!3614 = !DILocation(line: 198, column: 46, scope: !3591)
!3615 = !DILocation(line: 201, column: 3, scope: !3591)
!3616 = !DILocation(line: 201, column: 15, scope: !3591)
!3617 = !DILocation(line: 200, column: 10, scope: !3591)
!3618 = !DILocation(line: 205, column: 35, scope: !3619)
!3619 = distinct !DILexicalBlock(scope: !3620, file: !290, line: 203, column: 3)
!3620 = distinct !DILexicalBlock(scope: !3591, file: !290, line: 203, column: 3)
!3621 = !DILocation(line: 205, column: 14, scope: !3619)
!3622 = !DILocation(line: 205, column: 33, scope: !3619)
!3623 = !DILocation(line: 205, column: 67, scope: !3619)
!3624 = !DILocation(line: 203, column: 3, scope: !3620)
!3625 = !DILocation(line: 0, scope: !3619)
!3626 = !DILocation(line: 208, column: 3, scope: !3591)
!3627 = !DILocation(line: 210, column: 1, scope: !3591)
!3628 = distinct !DISubprogram(name: "version_etc", scope: !290, file: !290, line: 227, type: !3629, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !286, retainedNodes: !3631)
!3629 = !DISubroutineType(types: !3630)
!3630 = !{null, !3485, !44, !44, !44, null}
!3631 = !{!3632, !3633, !3634, !3635, !3636}
!3632 = !DILocalVariable(name: "stream", arg: 1, scope: !3628, file: !290, line: 227, type: !3485)
!3633 = !DILocalVariable(name: "command_name", arg: 2, scope: !3628, file: !290, line: 228, type: !44)
!3634 = !DILocalVariable(name: "package", arg: 3, scope: !3628, file: !290, line: 228, type: !44)
!3635 = !DILocalVariable(name: "version", arg: 4, scope: !3628, file: !290, line: 229, type: !44)
!3636 = !DILocalVariable(name: "authors", scope: !3628, file: !290, line: 231, type: !3637)
!3637 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1428, line: 52, baseType: !3638)
!3638 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3639, line: 48, baseType: !3640)
!3639 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3640 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !287, line: 231, baseType: !3641)
!3641 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3595, size: 192, elements: !1113)
!3642 = !DILocation(line: 227, column: 20, scope: !3628)
!3643 = !DILocation(line: 228, column: 26, scope: !3628)
!3644 = !DILocation(line: 228, column: 52, scope: !3628)
!3645 = !DILocation(line: 229, column: 26, scope: !3628)
!3646 = !DILocation(line: 231, column: 3, scope: !3628)
!3647 = !DILocation(line: 231, column: 11, scope: !3628)
!3648 = !DILocation(line: 233, column: 3, scope: !3628)
!3649 = !DILocation(line: 234, column: 3, scope: !3628)
!3650 = !DILocation(line: 235, column: 3, scope: !3628)
!3651 = !DILocation(line: 236, column: 1, scope: !3628)
!3652 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !290, file: !290, line: 239, type: !176, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !286, retainedNodes: !178)
!3653 = !DILocation(line: 245, column: 3, scope: !3652)
!3654 = !DILocation(line: 251, column: 3, scope: !3652)
!3655 = !DILocation(line: 256, column: 3, scope: !3652)
!3656 = !DILocation(line: 258, column: 1, scope: !3652)
!3657 = distinct !DISubprogram(name: "xnmalloc", scope: !298, file: !298, line: 99, type: !3658, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !294, retainedNodes: !3660)
!3658 = !DISubroutineType(types: !3659)
!3659 = !{!38, !63, !63}
!3660 = !{!3661, !3662}
!3661 = !DILocalVariable(name: "n", arg: 1, scope: !3657, file: !298, line: 99, type: !63)
!3662 = !DILocalVariable(name: "s", arg: 2, scope: !3657, file: !298, line: 99, type: !63)
!3663 = !DILocation(line: 99, column: 18, scope: !3657)
!3664 = !DILocation(line: 99, column: 28, scope: !3657)
!3665 = !DILocation(line: 101, column: 7, scope: !3666)
!3666 = distinct !DILexicalBlock(scope: !3657, file: !298, line: 101, column: 7)
!3667 = !DILocation(line: 101, column: 7, scope: !3657)
!3668 = !DILocation(line: 102, column: 5, scope: !3666)
!3669 = !DILocation(line: 103, column: 21, scope: !3657)
!3670 = !DILocalVariable(name: "n", arg: 1, scope: !3671, file: !3672, line: 39, type: !63)
!3671 = distinct !DISubprogram(name: "xmalloc", scope: !3672, file: !3672, line: 39, type: !3673, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !294, retainedNodes: !3675)
!3672 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3673 = !DISubroutineType(types: !3674)
!3674 = !{!38, !63}
!3675 = !{!3670, !3676}
!3676 = !DILocalVariable(name: "p", scope: !3671, file: !3672, line: 41, type: !38)
!3677 = !DILocation(line: 39, column: 17, scope: !3671, inlinedAt: !3678)
!3678 = distinct !DILocation(line: 103, column: 10, scope: !3657)
!3679 = !DILocation(line: 41, column: 13, scope: !3671, inlinedAt: !3678)
!3680 = !DILocation(line: 41, column: 9, scope: !3671, inlinedAt: !3678)
!3681 = !DILocation(line: 42, column: 8, scope: !3682, inlinedAt: !3678)
!3682 = distinct !DILexicalBlock(scope: !3671, file: !3672, line: 42, column: 7)
!3683 = !DILocation(line: 42, column: 15, scope: !3682, inlinedAt: !3678)
!3684 = !DILocation(line: 42, column: 10, scope: !3682, inlinedAt: !3678)
!3685 = !DILocation(line: 43, column: 5, scope: !3682, inlinedAt: !3678)
!3686 = !DILocation(line: 103, column: 3, scope: !3657)
!3687 = !DILocation(line: 39, column: 17, scope: !3671)
!3688 = !DILocation(line: 41, column: 13, scope: !3671)
!3689 = !DILocation(line: 41, column: 9, scope: !3671)
!3690 = !DILocation(line: 42, column: 8, scope: !3682)
!3691 = !DILocation(line: 42, column: 15, scope: !3682)
!3692 = !DILocation(line: 42, column: 10, scope: !3682)
!3693 = !DILocation(line: 43, column: 5, scope: !3682)
!3694 = !DILocation(line: 44, column: 3, scope: !3671)
!3695 = distinct !DISubprogram(name: "xnrealloc", scope: !298, file: !298, line: 112, type: !3696, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: true, unit: !294, retainedNodes: !3698)
!3696 = !DISubroutineType(types: !3697)
!3697 = !{!38, !38, !63, !63}
!3698 = !{!3699, !3700, !3701}
!3699 = !DILocalVariable(name: "p", arg: 1, scope: !3695, file: !298, line: 112, type: !38)
!3700 = !DILocalVariable(name: "n", arg: 2, scope: !3695, file: !298, line: 112, type: !63)
!3701 = !DILocalVariable(name: "s", arg: 3, scope: !3695, file: !298, line: 112, type: !63)
!3702 = !DILocation(line: 112, column: 18, scope: !3695)
!3703 = !DILocation(line: 112, column: 28, scope: !3695)
!3704 = !DILocation(line: 112, column: 38, scope: !3695)
!3705 = !DILocation(line: 114, column: 7, scope: !3706)
!3706 = distinct !DILexicalBlock(scope: !3695, file: !298, line: 114, column: 7)
!3707 = !DILocation(line: 114, column: 7, scope: !3695)
!3708 = !DILocation(line: 115, column: 5, scope: !3706)
!3709 = !DILocation(line: 116, column: 25, scope: !3695)
!3710 = !DILocalVariable(name: "p", arg: 1, scope: !3711, file: !3672, line: 51, type: !38)
!3711 = distinct !DISubprogram(name: "xrealloc", scope: !3672, file: !3672, line: 51, type: !3712, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !294, retainedNodes: !3714)
!3712 = !DISubroutineType(types: !3713)
!3713 = !{!38, !38, !63}
!3714 = !{!3710, !3715}
!3715 = !DILocalVariable(name: "n", arg: 2, scope: !3711, file: !3672, line: 51, type: !63)
!3716 = !DILocation(line: 51, column: 17, scope: !3711, inlinedAt: !3717)
!3717 = distinct !DILocation(line: 116, column: 10, scope: !3695)
!3718 = !DILocation(line: 51, column: 27, scope: !3711, inlinedAt: !3717)
!3719 = !DILocation(line: 53, column: 8, scope: !3720, inlinedAt: !3717)
!3720 = distinct !DILexicalBlock(scope: !3711, file: !3672, line: 53, column: 7)
!3721 = !DILocation(line: 53, column: 13, scope: !3720, inlinedAt: !3717)
!3722 = !DILocation(line: 53, column: 10, scope: !3720, inlinedAt: !3717)
!3723 = !DILocation(line: 57, column: 7, scope: !3724, inlinedAt: !3717)
!3724 = distinct !DILexicalBlock(scope: !3720, file: !3672, line: 54, column: 5)
!3725 = !DILocation(line: 58, column: 7, scope: !3724, inlinedAt: !3717)
!3726 = !DILocation(line: 61, column: 7, scope: !3711, inlinedAt: !3717)
!3727 = !DILocation(line: 62, column: 8, scope: !3728, inlinedAt: !3717)
!3728 = distinct !DILexicalBlock(scope: !3711, file: !3672, line: 62, column: 7)
!3729 = !DILocation(line: 62, column: 13, scope: !3728, inlinedAt: !3717)
!3730 = !DILocation(line: 62, column: 10, scope: !3728, inlinedAt: !3717)
!3731 = !DILocation(line: 63, column: 5, scope: !3728, inlinedAt: !3717)
!3732 = !DILocation(line: 0, scope: !3711, inlinedAt: !3717)
!3733 = !DILocation(line: 116, column: 3, scope: !3695)
!3734 = !DILocation(line: 51, column: 17, scope: !3711)
!3735 = !DILocation(line: 51, column: 27, scope: !3711)
!3736 = !DILocation(line: 53, column: 8, scope: !3720)
!3737 = !DILocation(line: 53, column: 13, scope: !3720)
!3738 = !DILocation(line: 53, column: 10, scope: !3720)
!3739 = !DILocation(line: 57, column: 7, scope: !3724)
!3740 = !DILocation(line: 58, column: 7, scope: !3724)
!3741 = !DILocation(line: 61, column: 7, scope: !3711)
!3742 = !DILocation(line: 62, column: 8, scope: !3728)
!3743 = !DILocation(line: 62, column: 13, scope: !3728)
!3744 = !DILocation(line: 62, column: 10, scope: !3728)
!3745 = !DILocation(line: 63, column: 5, scope: !3728)
!3746 = !DILocation(line: 0, scope: !3711)
!3747 = !DILocation(line: 65, column: 1, scope: !3711)
!3748 = !DILocation(line: 174, column: 19, scope: !299)
!3749 = !DILocation(line: 174, column: 30, scope: !299)
!3750 = !DILocation(line: 174, column: 41, scope: !299)
!3751 = !DILocation(line: 176, column: 14, scope: !299)
!3752 = !DILocation(line: 176, column: 10, scope: !299)
!3753 = !DILocation(line: 178, column: 9, scope: !3754)
!3754 = distinct !DILexicalBlock(scope: !299, file: !298, line: 178, column: 7)
!3755 = !DILocation(line: 178, column: 7, scope: !299)
!3756 = !DILocation(line: 180, column: 13, scope: !3757)
!3757 = distinct !DILexicalBlock(scope: !3758, file: !298, line: 180, column: 11)
!3758 = distinct !DILexicalBlock(scope: !3754, file: !298, line: 179, column: 5)
!3759 = !DILocation(line: 180, column: 11, scope: !3758)
!3760 = !DILocation(line: 188, column: 30, scope: !3761)
!3761 = distinct !DILexicalBlock(scope: !3757, file: !298, line: 181, column: 9)
!3762 = !DILocation(line: 189, column: 16, scope: !3761)
!3763 = !DILocation(line: 189, column: 13, scope: !3761)
!3764 = !DILocation(line: 190, column: 9, scope: !3761)
!3765 = !DILocation(line: 0, scope: !3761)
!3766 = !DILocation(line: 191, column: 11, scope: !3767)
!3767 = distinct !DILexicalBlock(scope: !3758, file: !298, line: 191, column: 11)
!3768 = !DILocation(line: 191, column: 11, scope: !3758)
!3769 = !DILocation(line: 206, column: 7, scope: !299)
!3770 = !DILocation(line: 207, column: 25, scope: !299)
!3771 = !DILocation(line: 51, column: 17, scope: !3711, inlinedAt: !3772)
!3772 = distinct !DILocation(line: 207, column: 10, scope: !299)
!3773 = !DILocation(line: 51, column: 27, scope: !3711, inlinedAt: !3772)
!3774 = !DILocation(line: 53, column: 10, scope: !3720, inlinedAt: !3772)
!3775 = !DILocation(line: 192, column: 9, scope: !3767)
!3776 = !DILocation(line: 200, column: 69, scope: !3777)
!3777 = distinct !DILexicalBlock(scope: !3778, file: !298, line: 200, column: 11)
!3778 = distinct !DILexicalBlock(scope: !3754, file: !298, line: 195, column: 5)
!3779 = !DILocation(line: 201, column: 11, scope: !3777)
!3780 = !DILocation(line: 200, column: 11, scope: !3778)
!3781 = !DILocation(line: 202, column: 9, scope: !3777)
!3782 = !DILocation(line: 203, column: 14, scope: !3778)
!3783 = !DILocation(line: 203, column: 18, scope: !3778)
!3784 = !DILocation(line: 203, column: 9, scope: !3778)
!3785 = !DILocation(line: 53, column: 8, scope: !3720, inlinedAt: !3772)
!3786 = !DILocation(line: 57, column: 7, scope: !3724, inlinedAt: !3772)
!3787 = !DILocation(line: 58, column: 7, scope: !3724, inlinedAt: !3772)
!3788 = !DILocation(line: 61, column: 7, scope: !3711, inlinedAt: !3772)
!3789 = !DILocation(line: 62, column: 8, scope: !3728, inlinedAt: !3772)
!3790 = !DILocation(line: 62, column: 13, scope: !3728, inlinedAt: !3772)
!3791 = !DILocation(line: 62, column: 10, scope: !3728, inlinedAt: !3772)
!3792 = !DILocation(line: 63, column: 5, scope: !3728, inlinedAt: !3772)
!3793 = !DILocation(line: 0, scope: !3711, inlinedAt: !3772)
!3794 = !DILocation(line: 207, column: 3, scope: !299)
!3795 = distinct !DISubprogram(name: "xcharalloc", scope: !298, file: !298, line: 216, type: !2768, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !294, retainedNodes: !3796)
!3796 = !{!3797}
!3797 = !DILocalVariable(name: "n", arg: 1, scope: !3795, file: !298, line: 216, type: !63)
!3798 = !DILocation(line: 216, column: 20, scope: !3795)
!3799 = !DILocation(line: 39, column: 17, scope: !3671, inlinedAt: !3800)
!3800 = distinct !DILocation(line: 218, column: 10, scope: !3795)
!3801 = !DILocation(line: 41, column: 13, scope: !3671, inlinedAt: !3800)
!3802 = !DILocation(line: 41, column: 9, scope: !3671, inlinedAt: !3800)
!3803 = !DILocation(line: 42, column: 8, scope: !3682, inlinedAt: !3800)
!3804 = !DILocation(line: 42, column: 15, scope: !3682, inlinedAt: !3800)
!3805 = !DILocation(line: 42, column: 10, scope: !3682, inlinedAt: !3800)
!3806 = !DILocation(line: 43, column: 5, scope: !3682, inlinedAt: !3800)
!3807 = !DILocation(line: 218, column: 3, scope: !3795)
!3808 = distinct !DISubprogram(name: "x2realloc", scope: !3672, file: !3672, line: 74, type: !3809, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !294, retainedNodes: !3811)
!3809 = !DISubroutineType(types: !3810)
!3810 = !{!38, !38, !302}
!3811 = !{!3812, !3813}
!3812 = !DILocalVariable(name: "p", arg: 1, scope: !3808, file: !3672, line: 74, type: !38)
!3813 = !DILocalVariable(name: "pn", arg: 2, scope: !3808, file: !3672, line: 74, type: !302)
!3814 = !DILocation(line: 74, column: 18, scope: !3808)
!3815 = !DILocation(line: 74, column: 29, scope: !3808)
!3816 = !DILocation(line: 174, column: 19, scope: !299, inlinedAt: !3817)
!3817 = distinct !DILocation(line: 76, column: 10, scope: !3808)
!3818 = !DILocation(line: 174, column: 30, scope: !299, inlinedAt: !3817)
!3819 = !DILocation(line: 174, column: 41, scope: !299, inlinedAt: !3817)
!3820 = !DILocation(line: 176, column: 14, scope: !299, inlinedAt: !3817)
!3821 = !DILocation(line: 176, column: 10, scope: !299, inlinedAt: !3817)
!3822 = !DILocation(line: 178, column: 9, scope: !3754, inlinedAt: !3817)
!3823 = !DILocation(line: 178, column: 7, scope: !299, inlinedAt: !3817)
!3824 = !DILocation(line: 180, column: 13, scope: !3757, inlinedAt: !3817)
!3825 = !DILocation(line: 180, column: 11, scope: !3758, inlinedAt: !3817)
!3826 = !DILocation(line: 191, column: 11, scope: !3767, inlinedAt: !3817)
!3827 = !DILocation(line: 191, column: 11, scope: !3758, inlinedAt: !3817)
!3828 = !DILocation(line: 206, column: 7, scope: !299, inlinedAt: !3817)
!3829 = !DILocation(line: 51, column: 17, scope: !3711, inlinedAt: !3830)
!3830 = distinct !DILocation(line: 207, column: 10, scope: !299, inlinedAt: !3817)
!3831 = !DILocation(line: 51, column: 27, scope: !3711, inlinedAt: !3830)
!3832 = !DILocation(line: 53, column: 10, scope: !3720, inlinedAt: !3830)
!3833 = !DILocation(line: 192, column: 9, scope: !3767, inlinedAt: !3817)
!3834 = !DILocation(line: 201, column: 11, scope: !3777, inlinedAt: !3817)
!3835 = !DILocation(line: 200, column: 11, scope: !3778, inlinedAt: !3817)
!3836 = !DILocation(line: 202, column: 9, scope: !3777, inlinedAt: !3817)
!3837 = !DILocation(line: 203, column: 14, scope: !3778, inlinedAt: !3817)
!3838 = !DILocation(line: 203, column: 18, scope: !3778, inlinedAt: !3817)
!3839 = !DILocation(line: 203, column: 9, scope: !3778, inlinedAt: !3817)
!3840 = !DILocation(line: 53, column: 8, scope: !3720, inlinedAt: !3830)
!3841 = !DILocation(line: 57, column: 7, scope: !3724, inlinedAt: !3830)
!3842 = !DILocation(line: 58, column: 7, scope: !3724, inlinedAt: !3830)
!3843 = !DILocation(line: 61, column: 7, scope: !3711, inlinedAt: !3830)
!3844 = !DILocation(line: 62, column: 8, scope: !3728, inlinedAt: !3830)
!3845 = !DILocation(line: 62, column: 13, scope: !3728, inlinedAt: !3830)
!3846 = !DILocation(line: 62, column: 10, scope: !3728, inlinedAt: !3830)
!3847 = !DILocation(line: 63, column: 5, scope: !3728, inlinedAt: !3830)
!3848 = !DILocation(line: 0, scope: !3711, inlinedAt: !3830)
!3849 = !DILocation(line: 76, column: 3, scope: !3808)
!3850 = distinct !DISubprogram(name: "xzalloc", scope: !3672, file: !3672, line: 84, type: !3673, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !294, retainedNodes: !3851)
!3851 = !{!3852}
!3852 = !DILocalVariable(name: "s", arg: 1, scope: !3850, file: !3672, line: 84, type: !63)
!3853 = !DILocation(line: 84, column: 17, scope: !3850)
!3854 = !DILocation(line: 39, column: 17, scope: !3671, inlinedAt: !3855)
!3855 = distinct !DILocation(line: 86, column: 18, scope: !3850)
!3856 = !DILocation(line: 41, column: 13, scope: !3671, inlinedAt: !3855)
!3857 = !DILocation(line: 41, column: 9, scope: !3671, inlinedAt: !3855)
!3858 = !DILocation(line: 42, column: 8, scope: !3682, inlinedAt: !3855)
!3859 = !DILocation(line: 42, column: 15, scope: !3682, inlinedAt: !3855)
!3860 = !DILocation(line: 42, column: 10, scope: !3682, inlinedAt: !3855)
!3861 = !DILocation(line: 43, column: 5, scope: !3682, inlinedAt: !3855)
!3862 = !DILocation(line: 86, column: 10, scope: !3850)
!3863 = !DILocation(line: 86, column: 3, scope: !3850)
!3864 = distinct !DISubprogram(name: "xcalloc", scope: !3672, file: !3672, line: 93, type: !3658, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !294, retainedNodes: !3865)
!3865 = !{!3866, !3867, !3868}
!3866 = !DILocalVariable(name: "n", arg: 1, scope: !3864, file: !3672, line: 93, type: !63)
!3867 = !DILocalVariable(name: "s", arg: 2, scope: !3864, file: !3672, line: 93, type: !63)
!3868 = !DILocalVariable(name: "p", scope: !3864, file: !3672, line: 95, type: !38)
!3869 = !DILocation(line: 93, column: 17, scope: !3864)
!3870 = !DILocation(line: 93, column: 27, scope: !3864)
!3871 = !DILocation(line: 100, column: 7, scope: !3872)
!3872 = distinct !DILexicalBlock(scope: !3864, file: !3672, line: 100, column: 7)
!3873 = !DILocation(line: 101, column: 7, scope: !3872)
!3874 = !DILocation(line: 101, column: 18, scope: !3872)
!3875 = !DILocation(line: 95, column: 9, scope: !3864)
!3876 = !DILocation(line: 101, column: 16, scope: !3872)
!3877 = !DILocation(line: 100, column: 7, scope: !3864)
!3878 = !DILocation(line: 102, column: 5, scope: !3872)
!3879 = !DILocation(line: 103, column: 3, scope: !3864)
!3880 = distinct !DISubprogram(name: "xmemdup", scope: !3672, file: !3672, line: 111, type: !3881, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !294, retainedNodes: !3885)
!3881 = !DISubroutineType(types: !3882)
!3882 = !{!38, !3883, !63}
!3883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3884, size: 64)
!3884 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3885 = !{!3886, !3887}
!3886 = !DILocalVariable(name: "p", arg: 1, scope: !3880, file: !3672, line: 111, type: !3883)
!3887 = !DILocalVariable(name: "s", arg: 2, scope: !3880, file: !3672, line: 111, type: !63)
!3888 = !DILocation(line: 111, column: 22, scope: !3880)
!3889 = !DILocation(line: 111, column: 32, scope: !3880)
!3890 = !DILocation(line: 39, column: 17, scope: !3671, inlinedAt: !3891)
!3891 = distinct !DILocation(line: 113, column: 18, scope: !3880)
!3892 = !DILocation(line: 41, column: 13, scope: !3671, inlinedAt: !3891)
!3893 = !DILocation(line: 41, column: 9, scope: !3671, inlinedAt: !3891)
!3894 = !DILocation(line: 42, column: 8, scope: !3682, inlinedAt: !3891)
!3895 = !DILocation(line: 42, column: 15, scope: !3682, inlinedAt: !3891)
!3896 = !DILocation(line: 42, column: 10, scope: !3682, inlinedAt: !3891)
!3897 = !DILocation(line: 43, column: 5, scope: !3682, inlinedAt: !3891)
!3898 = !DILocation(line: 113, column: 10, scope: !3880)
!3899 = !DILocation(line: 113, column: 3, scope: !3880)
!3900 = distinct !DISubprogram(name: "xstrdup", scope: !3672, file: !3672, line: 119, type: !2972, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !294, retainedNodes: !3901)
!3901 = !{!3902}
!3902 = !DILocalVariable(name: "string", arg: 1, scope: !3900, file: !3672, line: 119, type: !44)
!3903 = !DILocation(line: 119, column: 22, scope: !3900)
!3904 = !DILocation(line: 121, column: 27, scope: !3900)
!3905 = !DILocation(line: 121, column: 43, scope: !3900)
!3906 = !DILocation(line: 111, column: 22, scope: !3880, inlinedAt: !3907)
!3907 = distinct !DILocation(line: 121, column: 10, scope: !3900)
!3908 = !DILocation(line: 111, column: 32, scope: !3880, inlinedAt: !3907)
!3909 = !DILocation(line: 39, column: 17, scope: !3671, inlinedAt: !3910)
!3910 = distinct !DILocation(line: 113, column: 18, scope: !3880, inlinedAt: !3907)
!3911 = !DILocation(line: 41, column: 13, scope: !3671, inlinedAt: !3910)
!3912 = !DILocation(line: 41, column: 9, scope: !3671, inlinedAt: !3910)
!3913 = !DILocation(line: 42, column: 8, scope: !3682, inlinedAt: !3910)
!3914 = !DILocation(line: 42, column: 15, scope: !3682, inlinedAt: !3910)
!3915 = !DILocation(line: 42, column: 10, scope: !3682, inlinedAt: !3910)
!3916 = !DILocation(line: 43, column: 5, scope: !3682, inlinedAt: !3910)
!3917 = !DILocation(line: 113, column: 10, scope: !3880, inlinedAt: !3907)
!3918 = !DILocation(line: 121, column: 3, scope: !3900)
!3919 = distinct !DISubprogram(name: "xalloc_die", scope: !3920, file: !3920, line: 32, type: !176, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !311, retainedNodes: !178)
!3920 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3921 = !DILocation(line: 34, column: 10, scope: !3919)
!3922 = !DILocation(line: 34, column: 33, scope: !3919)
!3923 = !DILocation(line: 34, column: 3, scope: !3919)
!3924 = !DILocation(line: 40, column: 3, scope: !3919)
!3925 = distinct !DISubprogram(name: "xnumtoimax", scope: !3926, file: !3926, line: 36, type: !3927, isLocal: false, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: true, unit: !313, retainedNodes: !3929)
!3926 = !DIFile(filename: "./lib/xdectoint.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3927 = !DISubroutineType(types: !3928)
!3928 = !{!101, !44, !116, !101, !101, !44, !44, !116}
!3929 = !{!3930, !3931, !3932, !3933, !3934, !3935, !3936, !3937, !3939}
!3930 = !DILocalVariable(name: "n_str", arg: 1, scope: !3925, file: !3926, line: 36, type: !44)
!3931 = !DILocalVariable(name: "base", arg: 2, scope: !3925, file: !3926, line: 36, type: !116)
!3932 = !DILocalVariable(name: "min", arg: 3, scope: !3925, file: !3926, line: 36, type: !101)
!3933 = !DILocalVariable(name: "max", arg: 4, scope: !3925, file: !3926, line: 36, type: !101)
!3934 = !DILocalVariable(name: "suffixes", arg: 5, scope: !3925, file: !3926, line: 37, type: !44)
!3935 = !DILocalVariable(name: "err", arg: 6, scope: !3925, file: !3926, line: 37, type: !44)
!3936 = !DILocalVariable(name: "err_exit", arg: 7, scope: !3925, file: !3926, line: 37, type: !116)
!3937 = !DILocalVariable(name: "s_err", scope: !3925, file: !3926, line: 39, type: !3938)
!3938 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !317, line: 39, baseType: !316)
!3939 = !DILocalVariable(name: "tnum", scope: !3925, file: !3926, line: 41, type: !101)
!3940 = !DILocation(line: 36, column: 26, scope: !3925)
!3941 = !DILocation(line: 36, column: 37, scope: !3925)
!3942 = !DILocation(line: 36, column: 57, scope: !3925)
!3943 = !DILocation(line: 36, column: 76, scope: !3925)
!3944 = !DILocation(line: 37, column: 26, scope: !3925)
!3945 = !DILocation(line: 37, column: 48, scope: !3925)
!3946 = !DILocation(line: 37, column: 57, scope: !3925)
!3947 = !DILocation(line: 41, column: 3, scope: !3925)
!3948 = !DILocation(line: 41, column: 17, scope: !3925)
!3949 = !DILocation(line: 42, column: 11, scope: !3925)
!3950 = !DILocation(line: 39, column: 16, scope: !3925)
!3951 = !DILocation(line: 44, column: 7, scope: !3925)
!3952 = !DILocation(line: 69, column: 50, scope: !3953)
!3953 = distinct !DILexicalBlock(scope: !3954, file: !3926, line: 67, column: 5)
!3954 = distinct !DILexicalBlock(scope: !3925, file: !3926, line: 66, column: 7)
!3955 = !DILocation(line: 46, column: 11, scope: !3956)
!3956 = distinct !DILexicalBlock(scope: !3957, file: !3926, line: 46, column: 11)
!3957 = distinct !DILexicalBlock(scope: !3958, file: !3926, line: 45, column: 5)
!3958 = distinct !DILexicalBlock(scope: !3925, file: !3926, line: 44, column: 7)
!3959 = !DILocation(line: 46, column: 16, scope: !3956)
!3960 = !DILocation(line: 46, column: 29, scope: !3956)
!3961 = !DILocation(line: 46, column: 22, scope: !3956)
!3962 = !DILocation(line: 51, column: 20, scope: !3963)
!3963 = distinct !DILexicalBlock(scope: !3964, file: !3926, line: 51, column: 15)
!3964 = distinct !DILexicalBlock(scope: !3956, file: !3926, line: 47, column: 9)
!3965 = !DILocation(line: 51, column: 15, scope: !3964)
!3966 = !DILocation(line: 52, column: 13, scope: !3963)
!3967 = !DILocation(line: 52, column: 19, scope: !3963)
!3968 = !DILocation(line: 54, column: 25, scope: !3969)
!3969 = distinct !DILexicalBlock(scope: !3963, file: !3926, line: 54, column: 20)
!3970 = !DILocation(line: 0, scope: !3969)
!3971 = !DILocation(line: 54, column: 20, scope: !3963)
!3972 = !DILocation(line: 55, column: 19, scope: !3969)
!3973 = !DILocation(line: 55, column: 13, scope: !3969)
!3974 = !DILocation(line: 58, column: 19, scope: !3969)
!3975 = !DILocation(line: 62, column: 5, scope: !3976)
!3976 = distinct !DILexicalBlock(scope: !3958, file: !3926, line: 61, column: 12)
!3977 = !DILocation(line: 62, column: 11, scope: !3976)
!3978 = !DILocation(line: 64, column: 5, scope: !3979)
!3979 = distinct !DILexicalBlock(scope: !3976, file: !3926, line: 63, column: 12)
!3980 = !DILocation(line: 64, column: 11, scope: !3979)
!3981 = !DILocation(line: 69, column: 14, scope: !3953)
!3982 = !DILocation(line: 69, column: 56, scope: !3953)
!3983 = !DILocation(line: 70, column: 29, scope: !3953)
!3984 = !DILocation(line: 69, column: 7, scope: !3953)
!3985 = !DILocation(line: 73, column: 10, scope: !3925)
!3986 = !DILocation(line: 71, column: 5, scope: !3953)
!3987 = !DILocation(line: 74, column: 1, scope: !3925)
!3988 = !DILocation(line: 73, column: 3, scope: !3925)
!3989 = distinct !DISubprogram(name: "xdectoimax", scope: !3926, file: !3926, line: 82, type: !3990, isLocal: false, isDefinition: true, scopeLine: 84, flags: DIFlagPrototyped, isOptimized: true, unit: !313, retainedNodes: !3992)
!3990 = !DISubroutineType(types: !3991)
!3991 = !{!101, !44, !101, !101, !44, !44, !116}
!3992 = !{!3993, !3994, !3995, !3996, !3997, !3998}
!3993 = !DILocalVariable(name: "n_str", arg: 1, scope: !3989, file: !3926, line: 82, type: !44)
!3994 = !DILocalVariable(name: "min", arg: 2, scope: !3989, file: !3926, line: 82, type: !101)
!3995 = !DILocalVariable(name: "max", arg: 3, scope: !3989, file: !3926, line: 82, type: !101)
!3996 = !DILocalVariable(name: "suffixes", arg: 4, scope: !3989, file: !3926, line: 83, type: !44)
!3997 = !DILocalVariable(name: "err", arg: 5, scope: !3989, file: !3926, line: 83, type: !44)
!3998 = !DILocalVariable(name: "err_exit", arg: 6, scope: !3989, file: !3926, line: 83, type: !116)
!3999 = !DILocation(line: 82, column: 26, scope: !3989)
!4000 = !DILocation(line: 82, column: 47, scope: !3989)
!4001 = !DILocation(line: 82, column: 66, scope: !3989)
!4002 = !DILocation(line: 83, column: 26, scope: !3989)
!4003 = !DILocation(line: 83, column: 48, scope: !3989)
!4004 = !DILocation(line: 83, column: 57, scope: !3989)
!4005 = !DILocation(line: 85, column: 10, scope: !3989)
!4006 = !DILocation(line: 85, column: 3, scope: !3989)
!4007 = distinct !DISubprogram(name: "xstrtoimax", scope: !4008, file: !4008, line: 88, type: !4009, isLocal: false, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: true, unit: !324, retainedNodes: !4012)
!4008 = !DIFile(filename: "./lib/xstrtol.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4009 = !DISubroutineType(types: !4010)
!4010 = !{!3938, !44, !825, !116, !4011, !44}
!4011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!4012 = !{!4013, !4014, !4015, !4016, !4017, !4018, !4019, !4020, !4021, !4022, !4025, !4026}
!4013 = !DILocalVariable(name: "s", arg: 1, scope: !4007, file: !4008, line: 88, type: !44)
!4014 = !DILocalVariable(name: "ptr", arg: 2, scope: !4007, file: !4008, line: 88, type: !825)
!4015 = !DILocalVariable(name: "strtol_base", arg: 3, scope: !4007, file: !4008, line: 88, type: !116)
!4016 = !DILocalVariable(name: "val", arg: 4, scope: !4007, file: !4008, line: 89, type: !4011)
!4017 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !4007, file: !4008, line: 89, type: !44)
!4018 = !DILocalVariable(name: "t_ptr", scope: !4007, file: !4008, line: 91, type: !36)
!4019 = !DILocalVariable(name: "p", scope: !4007, file: !4008, line: 92, type: !825)
!4020 = !DILocalVariable(name: "tmp", scope: !4007, file: !4008, line: 93, type: !101)
!4021 = !DILocalVariable(name: "err", scope: !4007, file: !4008, line: 94, type: !3938)
!4022 = !DILocalVariable(name: "base", scope: !4023, file: !4008, line: 141, type: !116)
!4023 = distinct !DILexicalBlock(scope: !4024, file: !4008, line: 140, column: 5)
!4024 = distinct !DILexicalBlock(scope: !4007, file: !4008, line: 139, column: 7)
!4025 = !DILocalVariable(name: "suffixes", scope: !4023, file: !4008, line: 142, type: !116)
!4026 = !DILocalVariable(name: "overflow", scope: !4023, file: !4008, line: 143, type: !3938)
!4027 = !DILocation(line: 88, column: 24, scope: !4007)
!4028 = !DILocation(line: 88, column: 34, scope: !4007)
!4029 = !DILocation(line: 88, column: 43, scope: !4007)
!4030 = !DILocation(line: 89, column: 24, scope: !4007)
!4031 = !DILocation(line: 89, column: 41, scope: !4007)
!4032 = !DILocation(line: 91, column: 3, scope: !4007)
!4033 = !DILocation(line: 94, column: 16, scope: !4007)
!4034 = !DILocation(line: 96, column: 3, scope: !4035)
!4035 = distinct !DILexicalBlock(scope: !4036, file: !4008, line: 96, column: 3)
!4036 = distinct !DILexicalBlock(scope: !4007, file: !4008, line: 96, column: 3)
!4037 = !DILocation(line: 98, column: 8, scope: !4007)
!4038 = !DILocation(line: 92, column: 10, scope: !4007)
!4039 = !DILocation(line: 100, column: 3, scope: !4007)
!4040 = !DILocation(line: 100, column: 9, scope: !4007)
!4041 = !DILocalVariable(name: "nptr", arg: 1, scope: !4042, file: !4043, line: 324, type: !948)
!4042 = distinct !DISubprogram(name: "strtoimax", scope: !4043, file: !4043, line: 324, type: !4044, isLocal: false, isDefinition: true, scopeLine: 326, flags: DIFlagPrototyped, isOptimized: true, unit: !324, retainedNodes: !4047)
!4043 = !DIFile(filename: "/usr/include/inttypes.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4044 = !DISubroutineType(types: !4045)
!4045 = !{!101, !948, !4046, !116}
!4046 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !825)
!4047 = !{!4041, !4048, !4049}
!4048 = !DILocalVariable(name: "endptr", arg: 2, scope: !4042, file: !4043, line: 324, type: !4046)
!4049 = !DILocalVariable(name: "base", arg: 3, scope: !4042, file: !4043, line: 324, type: !116)
!4050 = !DILocation(line: 324, column: 1, scope: !4042, inlinedAt: !4051)
!4051 = distinct !DILocation(line: 112, column: 9, scope: !4007)
!4052 = !DILocation(line: 327, column: 10, scope: !4042, inlinedAt: !4051)
!4053 = !DILocation(line: 93, column: 14, scope: !4007)
!4054 = !DILocation(line: 114, column: 7, scope: !4055)
!4055 = distinct !DILexicalBlock(scope: !4007, file: !4008, line: 114, column: 7)
!4056 = !DILocation(line: 114, column: 10, scope: !4055)
!4057 = !DILocation(line: 114, column: 7, scope: !4007)
!4058 = !DILocation(line: 118, column: 11, scope: !4059)
!4059 = distinct !DILexicalBlock(scope: !4060, file: !4008, line: 118, column: 11)
!4060 = distinct !DILexicalBlock(scope: !4055, file: !4008, line: 115, column: 5)
!4061 = !DILocation(line: 118, column: 26, scope: !4059)
!4062 = !DILocation(line: 118, column: 29, scope: !4059)
!4063 = !DILocation(line: 118, column: 33, scope: !4059)
!4064 = !DILocation(line: 118, column: 36, scope: !4059)
!4065 = !DILocation(line: 118, column: 11, scope: !4060)
!4066 = !DILocation(line: 123, column: 12, scope: !4067)
!4067 = distinct !DILexicalBlock(scope: !4055, file: !4008, line: 123, column: 12)
!4068 = !DILocation(line: 123, column: 12, scope: !4055)
!4069 = !DILocation(line: 128, column: 5, scope: !4070)
!4070 = distinct !DILexicalBlock(scope: !4067, file: !4008, line: 124, column: 5)
!4071 = !DILocation(line: 0, scope: !4007)
!4072 = !DILocation(line: 133, column: 8, scope: !4073)
!4073 = distinct !DILexicalBlock(scope: !4007, file: !4008, line: 133, column: 7)
!4074 = !DILocation(line: 133, column: 7, scope: !4007)
!4075 = !DILocation(line: 135, column: 12, scope: !4076)
!4076 = distinct !DILexicalBlock(scope: !4073, file: !4008, line: 134, column: 5)
!4077 = !DILocation(line: 136, column: 7, scope: !4076)
!4078 = !DILocation(line: 139, column: 7, scope: !4024)
!4079 = !DILocation(line: 139, column: 11, scope: !4024)
!4080 = !DILocation(line: 139, column: 7, scope: !4007)
!4081 = !DILocation(line: 141, column: 11, scope: !4023)
!4082 = !DILocation(line: 142, column: 11, scope: !4023)
!4083 = !DILocation(line: 145, column: 12, scope: !4084)
!4084 = distinct !DILexicalBlock(scope: !4023, file: !4008, line: 145, column: 11)
!4085 = !DILocation(line: 145, column: 11, scope: !4023)
!4086 = !DILocation(line: 147, column: 16, scope: !4087)
!4087 = distinct !DILexicalBlock(scope: !4084, file: !4008, line: 146, column: 9)
!4088 = !DILocation(line: 148, column: 22, scope: !4087)
!4089 = !DILocation(line: 148, column: 11, scope: !4087)
!4090 = !DILocation(line: 151, column: 7, scope: !4023)
!4091 = !DILocation(line: 163, column: 15, scope: !4092)
!4092 = distinct !DILexicalBlock(scope: !4093, file: !4008, line: 163, column: 15)
!4093 = distinct !DILexicalBlock(scope: !4023, file: !4008, line: 152, column: 9)
!4094 = !DILocation(line: 163, column: 15, scope: !4093)
!4095 = !DILocation(line: 164, column: 21, scope: !4092)
!4096 = !DILocation(line: 164, column: 13, scope: !4092)
!4097 = !DILocation(line: 167, column: 21, scope: !4098)
!4098 = distinct !DILexicalBlock(scope: !4099, file: !4008, line: 167, column: 21)
!4099 = distinct !DILexicalBlock(scope: !4092, file: !4008, line: 165, column: 15)
!4100 = !DILocation(line: 167, column: 29, scope: !4098)
!4101 = !DILocation(line: 167, column: 21, scope: !4099)
!4102 = !DILocation(line: 175, column: 17, scope: !4099)
!4103 = !DILocation(line: 179, column: 7, scope: !4023)
!4104 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !4105, file: !4008, line: 60, type: !116)
!4105 = distinct !DISubprogram(name: "bkm_scale", scope: !4008, file: !4008, line: 60, type: !4106, isLocal: true, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !324, retainedNodes: !4108)
!4106 = !DISubroutineType(types: !4107)
!4107 = !{!3938, !4011, !116}
!4108 = !{!4109, !4104}
!4109 = !DILocalVariable(name: "x", arg: 1, scope: !4105, file: !4008, line: 60, type: !4011)
!4110 = !DILocation(line: 60, column: 31, scope: !4105, inlinedAt: !4111)
!4111 = distinct !DILocation(line: 182, column: 22, scope: !4112)
!4112 = distinct !DILexicalBlock(scope: !4023, file: !4008, line: 180, column: 9)
!4113 = !DILocation(line: 62, column: 38, scope: !4114, inlinedAt: !4111)
!4114 = distinct !DILexicalBlock(scope: !4105, file: !4008, line: 62, column: 7)
!4115 = !DILocation(line: 62, column: 7, scope: !4105, inlinedAt: !4111)
!4116 = !DILocation(line: 67, column: 39, scope: !4117, inlinedAt: !4111)
!4117 = distinct !DILexicalBlock(scope: !4105, file: !4008, line: 67, column: 7)
!4118 = !DILocation(line: 72, column: 6, scope: !4105, inlinedAt: !4111)
!4119 = !DILocation(line: 67, column: 7, scope: !4105, inlinedAt: !4111)
!4120 = !DILocation(line: 60, column: 31, scope: !4105, inlinedAt: !4121)
!4121 = distinct !DILocation(line: 189, column: 22, scope: !4112)
!4122 = !DILocation(line: 62, column: 38, scope: !4114, inlinedAt: !4121)
!4123 = !DILocation(line: 62, column: 7, scope: !4105, inlinedAt: !4121)
!4124 = !DILocation(line: 67, column: 39, scope: !4117, inlinedAt: !4121)
!4125 = !DILocation(line: 72, column: 6, scope: !4105, inlinedAt: !4121)
!4126 = !DILocation(line: 67, column: 7, scope: !4105, inlinedAt: !4121)
!4127 = !DILocalVariable(name: "power", arg: 3, scope: !4128, file: !4008, line: 77, type: !116)
!4128 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !4008, file: !4008, line: 77, type: !4129, isLocal: true, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: true, unit: !324, retainedNodes: !4131)
!4129 = !DISubroutineType(types: !4130)
!4130 = !{!3938, !4011, !116, !116}
!4131 = !{!4132, !4133, !4127, !4134}
!4132 = !DILocalVariable(name: "x", arg: 1, scope: !4128, file: !4008, line: 77, type: !4011)
!4133 = !DILocalVariable(name: "base", arg: 2, scope: !4128, file: !4008, line: 77, type: !116)
!4134 = !DILocalVariable(name: "err", scope: !4128, file: !4008, line: 79, type: !3938)
!4135 = !DILocation(line: 77, column: 50, scope: !4128, inlinedAt: !4136)
!4136 = distinct !DILocation(line: 197, column: 22, scope: !4112)
!4137 = !DILocation(line: 79, column: 16, scope: !4128, inlinedAt: !4136)
!4138 = !DILocation(line: 62, column: 38, scope: !4114, inlinedAt: !4139)
!4139 = distinct !DILocation(line: 81, column: 12, scope: !4128, inlinedAt: !4136)
!4140 = !DILocation(line: 62, column: 7, scope: !4105, inlinedAt: !4139)
!4141 = !DILocation(line: 67, column: 24, scope: !4117, inlinedAt: !4139)
!4142 = !DILocation(line: 67, column: 39, scope: !4117, inlinedAt: !4139)
!4143 = !DILocation(line: 72, column: 6, scope: !4105, inlinedAt: !4139)
!4144 = !DILocation(line: 67, column: 7, scope: !4105, inlinedAt: !4139)
!4145 = !DILocation(line: 0, scope: !4105, inlinedAt: !4139)
!4146 = !DILocation(line: 77, column: 50, scope: !4128, inlinedAt: !4147)
!4147 = distinct !DILocation(line: 202, column: 22, scope: !4112)
!4148 = !DILocation(line: 79, column: 16, scope: !4128, inlinedAt: !4147)
!4149 = !DILocation(line: 62, column: 38, scope: !4114, inlinedAt: !4150)
!4150 = distinct !DILocation(line: 81, column: 12, scope: !4128, inlinedAt: !4147)
!4151 = !DILocation(line: 62, column: 7, scope: !4105, inlinedAt: !4150)
!4152 = !DILocation(line: 67, column: 24, scope: !4117, inlinedAt: !4150)
!4153 = !DILocation(line: 67, column: 39, scope: !4117, inlinedAt: !4150)
!4154 = !DILocation(line: 72, column: 6, scope: !4105, inlinedAt: !4150)
!4155 = !DILocation(line: 67, column: 7, scope: !4105, inlinedAt: !4150)
!4156 = !DILocation(line: 0, scope: !4105, inlinedAt: !4150)
!4157 = !DILocation(line: 77, column: 50, scope: !4128, inlinedAt: !4158)
!4158 = distinct !DILocation(line: 207, column: 22, scope: !4112)
!4159 = !DILocation(line: 79, column: 16, scope: !4128, inlinedAt: !4158)
!4160 = !DILocation(line: 62, column: 38, scope: !4114, inlinedAt: !4161)
!4161 = distinct !DILocation(line: 81, column: 12, scope: !4128, inlinedAt: !4158)
!4162 = !DILocation(line: 62, column: 7, scope: !4105, inlinedAt: !4161)
!4163 = !DILocation(line: 67, column: 24, scope: !4117, inlinedAt: !4161)
!4164 = !DILocation(line: 67, column: 39, scope: !4117, inlinedAt: !4161)
!4165 = !DILocation(line: 72, column: 6, scope: !4105, inlinedAt: !4161)
!4166 = !DILocation(line: 67, column: 7, scope: !4105, inlinedAt: !4161)
!4167 = !DILocation(line: 77, column: 50, scope: !4128, inlinedAt: !4168)
!4168 = distinct !DILocation(line: 212, column: 22, scope: !4112)
!4169 = !DILocation(line: 79, column: 16, scope: !4128, inlinedAt: !4168)
!4170 = !DILocation(line: 62, column: 38, scope: !4114, inlinedAt: !4171)
!4171 = distinct !DILocation(line: 81, column: 12, scope: !4128, inlinedAt: !4168)
!4172 = !DILocation(line: 62, column: 7, scope: !4105, inlinedAt: !4171)
!4173 = !DILocation(line: 67, column: 24, scope: !4117, inlinedAt: !4171)
!4174 = !DILocation(line: 67, column: 39, scope: !4117, inlinedAt: !4171)
!4175 = !DILocation(line: 72, column: 6, scope: !4105, inlinedAt: !4171)
!4176 = !DILocation(line: 67, column: 7, scope: !4105, inlinedAt: !4171)
!4177 = !DILocation(line: 0, scope: !4105, inlinedAt: !4171)
!4178 = !DILocation(line: 77, column: 50, scope: !4128, inlinedAt: !4179)
!4179 = distinct !DILocation(line: 216, column: 22, scope: !4112)
!4180 = !DILocation(line: 79, column: 16, scope: !4128, inlinedAt: !4179)
!4181 = !DILocation(line: 62, column: 38, scope: !4114, inlinedAt: !4182)
!4182 = distinct !DILocation(line: 81, column: 12, scope: !4128, inlinedAt: !4179)
!4183 = !DILocation(line: 62, column: 7, scope: !4105, inlinedAt: !4182)
!4184 = !DILocation(line: 67, column: 24, scope: !4117, inlinedAt: !4182)
!4185 = !DILocation(line: 67, column: 39, scope: !4117, inlinedAt: !4182)
!4186 = !DILocation(line: 72, column: 6, scope: !4105, inlinedAt: !4182)
!4187 = !DILocation(line: 67, column: 7, scope: !4105, inlinedAt: !4182)
!4188 = !DILocation(line: 0, scope: !4105, inlinedAt: !4182)
!4189 = !DILocation(line: 77, column: 50, scope: !4128, inlinedAt: !4190)
!4190 = distinct !DILocation(line: 221, column: 22, scope: !4112)
!4191 = !DILocation(line: 79, column: 16, scope: !4128, inlinedAt: !4190)
!4192 = !DILocation(line: 62, column: 38, scope: !4114, inlinedAt: !4193)
!4193 = distinct !DILocation(line: 81, column: 12, scope: !4128, inlinedAt: !4190)
!4194 = !DILocation(line: 62, column: 7, scope: !4105, inlinedAt: !4193)
!4195 = !DILocation(line: 67, column: 24, scope: !4117, inlinedAt: !4193)
!4196 = !DILocation(line: 67, column: 39, scope: !4117, inlinedAt: !4193)
!4197 = !DILocation(line: 72, column: 6, scope: !4105, inlinedAt: !4193)
!4198 = !DILocation(line: 67, column: 7, scope: !4105, inlinedAt: !4193)
!4199 = !DILocation(line: 0, scope: !4105, inlinedAt: !4193)
!4200 = !DILocation(line: 60, column: 31, scope: !4105, inlinedAt: !4201)
!4201 = distinct !DILocation(line: 225, column: 22, scope: !4112)
!4202 = !DILocation(line: 62, column: 38, scope: !4114, inlinedAt: !4201)
!4203 = !DILocation(line: 62, column: 7, scope: !4105, inlinedAt: !4201)
!4204 = !DILocation(line: 67, column: 39, scope: !4117, inlinedAt: !4201)
!4205 = !DILocation(line: 72, column: 6, scope: !4105, inlinedAt: !4201)
!4206 = !DILocation(line: 67, column: 7, scope: !4105, inlinedAt: !4201)
!4207 = !DILocation(line: 77, column: 50, scope: !4128, inlinedAt: !4208)
!4208 = distinct !DILocation(line: 229, column: 22, scope: !4112)
!4209 = !DILocation(line: 79, column: 16, scope: !4128, inlinedAt: !4208)
!4210 = !DILocation(line: 62, column: 38, scope: !4114, inlinedAt: !4211)
!4211 = distinct !DILocation(line: 81, column: 12, scope: !4128, inlinedAt: !4208)
!4212 = !DILocation(line: 62, column: 7, scope: !4105, inlinedAt: !4211)
!4213 = !DILocation(line: 67, column: 24, scope: !4117, inlinedAt: !4211)
!4214 = !DILocation(line: 67, column: 39, scope: !4117, inlinedAt: !4211)
!4215 = !DILocation(line: 72, column: 6, scope: !4105, inlinedAt: !4211)
!4216 = !DILocation(line: 67, column: 7, scope: !4105, inlinedAt: !4211)
!4217 = !DILocation(line: 0, scope: !4105, inlinedAt: !4211)
!4218 = !DILocation(line: 77, column: 50, scope: !4128, inlinedAt: !4219)
!4219 = distinct !DILocation(line: 233, column: 22, scope: !4112)
!4220 = !DILocation(line: 79, column: 16, scope: !4128, inlinedAt: !4219)
!4221 = !DILocation(line: 62, column: 38, scope: !4114, inlinedAt: !4222)
!4222 = distinct !DILocation(line: 81, column: 12, scope: !4128, inlinedAt: !4219)
!4223 = !DILocation(line: 62, column: 7, scope: !4105, inlinedAt: !4222)
!4224 = !DILocation(line: 67, column: 24, scope: !4117, inlinedAt: !4222)
!4225 = !DILocation(line: 67, column: 39, scope: !4117, inlinedAt: !4222)
!4226 = !DILocation(line: 72, column: 6, scope: !4105, inlinedAt: !4222)
!4227 = !DILocation(line: 67, column: 7, scope: !4105, inlinedAt: !4222)
!4228 = !DILocation(line: 0, scope: !4105, inlinedAt: !4222)
!4229 = !DILocation(line: 237, column: 16, scope: !4112)
!4230 = !DILocation(line: 238, column: 22, scope: !4112)
!4231 = !DILocation(line: 238, column: 11, scope: !4112)
!4232 = !DILocation(line: 0, scope: !4112)
!4233 = !DILocation(line: 143, column: 20, scope: !4023)
!4234 = !DILocation(line: 241, column: 11, scope: !4023)
!4235 = !DILocation(line: 242, column: 10, scope: !4023)
!4236 = !DILocation(line: 243, column: 11, scope: !4237)
!4237 = distinct !DILexicalBlock(scope: !4023, file: !4008, line: 243, column: 11)
!4238 = !DILocation(line: 244, column: 13, scope: !4237)
!4239 = !DILocation(line: 243, column: 11, scope: !4023)
!4240 = !DILocation(line: 119, column: 13, scope: !4059)
!4241 = !DILocation(line: 247, column: 8, scope: !4007)
!4242 = !DILocation(line: 248, column: 3, scope: !4007)
!4243 = !DILocation(line: 0, scope: !4244)
!4244 = distinct !DILexicalBlock(scope: !4070, file: !4008, line: 125, column: 11)
!4245 = !DILocation(line: 249, column: 1, scope: !4007)
!4246 = !DILocation(line: 81, column: 9, scope: !4128, inlinedAt: !4136)
!4247 = !DILocation(line: 81, column: 9, scope: !4128, inlinedAt: !4147)
!4248 = !DILocation(line: 81, column: 9, scope: !4128, inlinedAt: !4168)
!4249 = !DILocation(line: 81, column: 9, scope: !4128, inlinedAt: !4179)
!4250 = !DILocation(line: 81, column: 9, scope: !4128, inlinedAt: !4190)
!4251 = !DILocation(line: 81, column: 9, scope: !4128, inlinedAt: !4208)
!4252 = !DILocation(line: 81, column: 9, scope: !4128, inlinedAt: !4219)
!4253 = distinct !DISubprogram(name: "rpl_calloc", scope: !4254, file: !4254, line: 42, type: !3658, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !326, retainedNodes: !4255)
!4254 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4255 = !{!4256, !4257, !4258, !4259}
!4256 = !DILocalVariable(name: "n", arg: 1, scope: !4253, file: !4254, line: 42, type: !63)
!4257 = !DILocalVariable(name: "s", arg: 2, scope: !4253, file: !4254, line: 42, type: !63)
!4258 = !DILocalVariable(name: "result", scope: !4253, file: !4254, line: 44, type: !38)
!4259 = !DILocalVariable(name: "bytes", scope: !4260, file: !4254, line: 56, type: !63)
!4260 = distinct !DILexicalBlock(scope: !4261, file: !4254, line: 53, column: 5)
!4261 = distinct !DILexicalBlock(scope: !4253, file: !4254, line: 47, column: 7)
!4262 = !DILocation(line: 42, column: 20, scope: !4253)
!4263 = !DILocation(line: 42, column: 30, scope: !4253)
!4264 = !DILocation(line: 47, column: 9, scope: !4261)
!4265 = !DILocation(line: 47, column: 19, scope: !4261)
!4266 = !DILocation(line: 47, column: 14, scope: !4261)
!4267 = !DILocation(line: 56, column: 24, scope: !4260)
!4268 = !DILocation(line: 56, column: 14, scope: !4260)
!4269 = !DILocation(line: 57, column: 17, scope: !4270)
!4270 = distinct !DILexicalBlock(scope: !4260, file: !4254, line: 57, column: 11)
!4271 = !DILocation(line: 57, column: 21, scope: !4270)
!4272 = !DILocation(line: 57, column: 11, scope: !4260)
!4273 = !DILocation(line: 59, column: 11, scope: !4274)
!4274 = distinct !DILexicalBlock(scope: !4270, file: !4254, line: 58, column: 9)
!4275 = !DILocation(line: 59, column: 17, scope: !4274)
!4276 = !DILocation(line: 65, column: 12, scope: !4253)
!4277 = !DILocation(line: 44, column: 9, scope: !4253)
!4278 = !DILocation(line: 72, column: 3, scope: !4253)
!4279 = !DILocation(line: 0, scope: !4274)
!4280 = !DILocation(line: 73, column: 1, scope: !4253)
!4281 = distinct !DISubprogram(name: "rpl_fclose", scope: !4282, file: !4282, line: 58, type: !4283, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !328, retainedNodes: !4319)
!4282 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4283 = !DISubroutineType(types: !4284)
!4284 = !{!116, !4285}
!4285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4286, size: 64)
!4286 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1083, line: 7, baseType: !4287)
!4287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1085, line: 49, size: 1728, elements: !4288)
!4288 = !{!4289, !4290, !4291, !4292, !4293, !4294, !4295, !4296, !4297, !4298, !4299, !4300, !4301, !4302, !4304, !4305, !4306, !4307, !4308, !4309, !4310, !4311, !4312, !4313, !4314, !4315, !4316, !4317, !4318}
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4287, file: !1085, line: 51, baseType: !116, size: 32)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4287, file: !1085, line: 54, baseType: !36, size: 64, offset: 64)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4287, file: !1085, line: 55, baseType: !36, size: 64, offset: 128)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4287, file: !1085, line: 56, baseType: !36, size: 64, offset: 192)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4287, file: !1085, line: 57, baseType: !36, size: 64, offset: 256)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4287, file: !1085, line: 58, baseType: !36, size: 64, offset: 320)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4287, file: !1085, line: 59, baseType: !36, size: 64, offset: 384)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4287, file: !1085, line: 60, baseType: !36, size: 64, offset: 448)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4287, file: !1085, line: 61, baseType: !36, size: 64, offset: 512)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4287, file: !1085, line: 64, baseType: !36, size: 64, offset: 576)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4287, file: !1085, line: 65, baseType: !36, size: 64, offset: 640)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4287, file: !1085, line: 66, baseType: !36, size: 64, offset: 704)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4287, file: !1085, line: 68, baseType: !1100, size: 64, offset: 768)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4287, file: !1085, line: 70, baseType: !4303, size: 64, offset: 832)
!4303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4287, size: 64)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4287, file: !1085, line: 72, baseType: !116, size: 32, offset: 896)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4287, file: !1085, line: 73, baseType: !116, size: 32, offset: 928)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4287, file: !1085, line: 74, baseType: !1107, size: 64, offset: 960)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4287, file: !1085, line: 77, baseType: !233, size: 16, offset: 1024)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4287, file: !1085, line: 78, baseType: !1110, size: 8, offset: 1040)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4287, file: !1085, line: 79, baseType: !1112, size: 8, offset: 1048)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4287, file: !1085, line: 81, baseType: !1116, size: 64, offset: 1088)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4287, file: !1085, line: 89, baseType: !1119, size: 64, offset: 1152)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4287, file: !1085, line: 91, baseType: !1121, size: 64, offset: 1216)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4287, file: !1085, line: 92, baseType: !1124, size: 64, offset: 1280)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4287, file: !1085, line: 93, baseType: !4303, size: 64, offset: 1344)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4287, file: !1085, line: 94, baseType: !38, size: 64, offset: 1408)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4287, file: !1085, line: 95, baseType: !63, size: 64, offset: 1472)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4287, file: !1085, line: 96, baseType: !116, size: 32, offset: 1536)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4287, file: !1085, line: 98, baseType: !1131, size: 160, offset: 1568)
!4319 = !{!4320, !4321, !4322, !4323}
!4320 = !DILocalVariable(name: "fp", arg: 1, scope: !4281, file: !4282, line: 58, type: !4285)
!4321 = !DILocalVariable(name: "saved_errno", scope: !4281, file: !4282, line: 60, type: !116)
!4322 = !DILocalVariable(name: "fd", scope: !4281, file: !4282, line: 61, type: !116)
!4323 = !DILocalVariable(name: "result", scope: !4281, file: !4282, line: 62, type: !116)
!4324 = !DILocation(line: 58, column: 19, scope: !4281)
!4325 = !DILocation(line: 60, column: 7, scope: !4281)
!4326 = !DILocation(line: 62, column: 7, scope: !4281)
!4327 = !DILocation(line: 65, column: 8, scope: !4281)
!4328 = !DILocation(line: 61, column: 7, scope: !4281)
!4329 = !DILocation(line: 66, column: 10, scope: !4330)
!4330 = distinct !DILexicalBlock(scope: !4281, file: !4282, line: 66, column: 7)
!4331 = !DILocation(line: 66, column: 7, scope: !4281)
!4332 = !DILocation(line: 67, column: 12, scope: !4330)
!4333 = !DILocation(line: 67, column: 5, scope: !4330)
!4334 = !DILocation(line: 72, column: 9, scope: !4335)
!4335 = distinct !DILexicalBlock(scope: !4281, file: !4282, line: 72, column: 7)
!4336 = !DILocation(line: 72, column: 23, scope: !4335)
!4337 = !DILocation(line: 72, column: 33, scope: !4335)
!4338 = !DILocation(line: 72, column: 26, scope: !4335)
!4339 = !DILocation(line: 72, column: 59, scope: !4335)
!4340 = !DILocation(line: 73, column: 7, scope: !4335)
!4341 = !DILocation(line: 73, column: 10, scope: !4335)
!4342 = !DILocation(line: 72, column: 7, scope: !4281)
!4343 = !DILocation(line: 100, column: 12, scope: !4281)
!4344 = !DILocation(line: 105, column: 7, scope: !4281)
!4345 = !DILocation(line: 74, column: 19, scope: !4335)
!4346 = !DILocation(line: 105, column: 19, scope: !4347)
!4347 = distinct !DILexicalBlock(scope: !4281, file: !4282, line: 105, column: 7)
!4348 = !DILocation(line: 107, column: 13, scope: !4349)
!4349 = distinct !DILexicalBlock(scope: !4347, file: !4282, line: 106, column: 5)
!4350 = !DILocation(line: 109, column: 5, scope: !4349)
!4351 = !DILocation(line: 0, scope: !4281)
!4352 = !DILocation(line: 112, column: 1, scope: !4281)
!4353 = distinct !DISubprogram(name: "rpl_fflush", scope: !4354, file: !4354, line: 129, type: !4355, isLocal: false, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, unit: !330, retainedNodes: !4391)
!4354 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4355 = !DISubroutineType(types: !4356)
!4356 = !{!116, !4357}
!4357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4358, size: 64)
!4358 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1083, line: 7, baseType: !4359)
!4359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1085, line: 49, size: 1728, elements: !4360)
!4360 = !{!4361, !4362, !4363, !4364, !4365, !4366, !4367, !4368, !4369, !4370, !4371, !4372, !4373, !4374, !4376, !4377, !4378, !4379, !4380, !4381, !4382, !4383, !4384, !4385, !4386, !4387, !4388, !4389, !4390}
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4359, file: !1085, line: 51, baseType: !116, size: 32)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4359, file: !1085, line: 54, baseType: !36, size: 64, offset: 64)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4359, file: !1085, line: 55, baseType: !36, size: 64, offset: 128)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4359, file: !1085, line: 56, baseType: !36, size: 64, offset: 192)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4359, file: !1085, line: 57, baseType: !36, size: 64, offset: 256)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4359, file: !1085, line: 58, baseType: !36, size: 64, offset: 320)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4359, file: !1085, line: 59, baseType: !36, size: 64, offset: 384)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4359, file: !1085, line: 60, baseType: !36, size: 64, offset: 448)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4359, file: !1085, line: 61, baseType: !36, size: 64, offset: 512)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4359, file: !1085, line: 64, baseType: !36, size: 64, offset: 576)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4359, file: !1085, line: 65, baseType: !36, size: 64, offset: 640)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4359, file: !1085, line: 66, baseType: !36, size: 64, offset: 704)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4359, file: !1085, line: 68, baseType: !1100, size: 64, offset: 768)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4359, file: !1085, line: 70, baseType: !4375, size: 64, offset: 832)
!4375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4359, size: 64)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4359, file: !1085, line: 72, baseType: !116, size: 32, offset: 896)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4359, file: !1085, line: 73, baseType: !116, size: 32, offset: 928)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4359, file: !1085, line: 74, baseType: !1107, size: 64, offset: 960)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4359, file: !1085, line: 77, baseType: !233, size: 16, offset: 1024)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4359, file: !1085, line: 78, baseType: !1110, size: 8, offset: 1040)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4359, file: !1085, line: 79, baseType: !1112, size: 8, offset: 1048)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4359, file: !1085, line: 81, baseType: !1116, size: 64, offset: 1088)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4359, file: !1085, line: 89, baseType: !1119, size: 64, offset: 1152)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4359, file: !1085, line: 91, baseType: !1121, size: 64, offset: 1216)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4359, file: !1085, line: 92, baseType: !1124, size: 64, offset: 1280)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4359, file: !1085, line: 93, baseType: !4375, size: 64, offset: 1344)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4359, file: !1085, line: 94, baseType: !38, size: 64, offset: 1408)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4359, file: !1085, line: 95, baseType: !63, size: 64, offset: 1472)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4359, file: !1085, line: 96, baseType: !116, size: 32, offset: 1536)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4359, file: !1085, line: 98, baseType: !1131, size: 160, offset: 1568)
!4391 = !{!4392}
!4392 = !DILocalVariable(name: "stream", arg: 1, scope: !4353, file: !4354, line: 129, type: !4357)
!4393 = !DILocation(line: 129, column: 19, scope: !4353)
!4394 = !DILocation(line: 150, column: 14, scope: !4395)
!4395 = distinct !DILexicalBlock(scope: !4353, file: !4354, line: 150, column: 7)
!4396 = !DILocation(line: 150, column: 22, scope: !4395)
!4397 = !DILocation(line: 150, column: 27, scope: !4395)
!4398 = !DILocation(line: 150, column: 7, scope: !4353)
!4399 = !DILocation(line: 151, column: 12, scope: !4395)
!4400 = !DILocation(line: 151, column: 5, scope: !4395)
!4401 = !DILocalVariable(name: "fp", arg: 1, scope: !4402, file: !4354, line: 41, type: !4357)
!4402 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !4354, file: !4354, line: 41, type: !4403, isLocal: true, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !330, retainedNodes: !4405)
!4403 = !DISubroutineType(types: !4404)
!4404 = !{null, !4357}
!4405 = !{!4401}
!4406 = !DILocation(line: 41, column: 48, scope: !4402, inlinedAt: !4407)
!4407 = distinct !DILocation(line: 156, column: 3, scope: !4353)
!4408 = !DILocation(line: 43, column: 11, scope: !4409, inlinedAt: !4407)
!4409 = distinct !DILexicalBlock(scope: !4402, file: !4354, line: 43, column: 7)
!4410 = !DILocation(line: 43, column: 18, scope: !4409, inlinedAt: !4407)
!4411 = !DILocation(line: 43, column: 7, scope: !4402, inlinedAt: !4407)
!4412 = !DILocation(line: 45, column: 5, scope: !4409, inlinedAt: !4407)
!4413 = !DILocation(line: 158, column: 10, scope: !4353)
!4414 = !DILocation(line: 158, column: 3, scope: !4353)
!4415 = !DILocation(line: 0, scope: !4353)
!4416 = !DILocation(line: 232, column: 1, scope: !4353)
!4417 = distinct !DISubprogram(name: "rpl_fseeko", scope: !4418, file: !4418, line: 28, type: !4419, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !332, retainedNodes: !4455)
!4418 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4419 = !DISubroutineType(types: !4420)
!4420 = !{!116, !4421, !1427, !116}
!4421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4422, size: 64)
!4422 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1083, line: 7, baseType: !4423)
!4423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1085, line: 49, size: 1728, elements: !4424)
!4424 = !{!4425, !4426, !4427, !4428, !4429, !4430, !4431, !4432, !4433, !4434, !4435, !4436, !4437, !4438, !4440, !4441, !4442, !4443, !4444, !4445, !4446, !4447, !4448, !4449, !4450, !4451, !4452, !4453, !4454}
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4423, file: !1085, line: 51, baseType: !116, size: 32)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4423, file: !1085, line: 54, baseType: !36, size: 64, offset: 64)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4423, file: !1085, line: 55, baseType: !36, size: 64, offset: 128)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4423, file: !1085, line: 56, baseType: !36, size: 64, offset: 192)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4423, file: !1085, line: 57, baseType: !36, size: 64, offset: 256)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4423, file: !1085, line: 58, baseType: !36, size: 64, offset: 320)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4423, file: !1085, line: 59, baseType: !36, size: 64, offset: 384)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4423, file: !1085, line: 60, baseType: !36, size: 64, offset: 448)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4423, file: !1085, line: 61, baseType: !36, size: 64, offset: 512)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4423, file: !1085, line: 64, baseType: !36, size: 64, offset: 576)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4423, file: !1085, line: 65, baseType: !36, size: 64, offset: 640)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4423, file: !1085, line: 66, baseType: !36, size: 64, offset: 704)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4423, file: !1085, line: 68, baseType: !1100, size: 64, offset: 768)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4423, file: !1085, line: 70, baseType: !4439, size: 64, offset: 832)
!4439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4423, size: 64)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4423, file: !1085, line: 72, baseType: !116, size: 32, offset: 896)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4423, file: !1085, line: 73, baseType: !116, size: 32, offset: 928)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4423, file: !1085, line: 74, baseType: !1107, size: 64, offset: 960)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4423, file: !1085, line: 77, baseType: !233, size: 16, offset: 1024)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4423, file: !1085, line: 78, baseType: !1110, size: 8, offset: 1040)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4423, file: !1085, line: 79, baseType: !1112, size: 8, offset: 1048)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4423, file: !1085, line: 81, baseType: !1116, size: 64, offset: 1088)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4423, file: !1085, line: 89, baseType: !1119, size: 64, offset: 1152)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4423, file: !1085, line: 91, baseType: !1121, size: 64, offset: 1216)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4423, file: !1085, line: 92, baseType: !1124, size: 64, offset: 1280)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4423, file: !1085, line: 93, baseType: !4439, size: 64, offset: 1344)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4423, file: !1085, line: 94, baseType: !38, size: 64, offset: 1408)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4423, file: !1085, line: 95, baseType: !63, size: 64, offset: 1472)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4423, file: !1085, line: 96, baseType: !116, size: 32, offset: 1536)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4423, file: !1085, line: 98, baseType: !1131, size: 160, offset: 1568)
!4455 = !{!4456, !4457, !4458, !4459}
!4456 = !DILocalVariable(name: "fp", arg: 1, scope: !4417, file: !4418, line: 28, type: !4421)
!4457 = !DILocalVariable(name: "offset", arg: 2, scope: !4417, file: !4418, line: 28, type: !1427)
!4458 = !DILocalVariable(name: "whence", arg: 3, scope: !4417, file: !4418, line: 28, type: !116)
!4459 = !DILocalVariable(name: "pos", scope: !4460, file: !4418, line: 117, type: !1427)
!4460 = distinct !DILexicalBlock(scope: !4461, file: !4418, line: 113, column: 5)
!4461 = distinct !DILexicalBlock(scope: !4417, file: !4418, line: 52, column: 7)
!4462 = !DILocation(line: 28, column: 15, scope: !4417)
!4463 = !DILocation(line: 28, column: 25, scope: !4417)
!4464 = !DILocation(line: 28, column: 37, scope: !4417)
!4465 = !DILocation(line: 52, column: 11, scope: !4461)
!4466 = !DILocation(line: 52, column: 31, scope: !4461)
!4467 = !DILocation(line: 52, column: 24, scope: !4461)
!4468 = !DILocation(line: 53, column: 7, scope: !4461)
!4469 = !DILocation(line: 53, column: 14, scope: !4461)
!4470 = !DILocation(line: 53, column: 35, scope: !4461)
!4471 = !{!1225, !768, i64 32}
!4472 = !DILocation(line: 53, column: 28, scope: !4461)
!4473 = !DILocation(line: 54, column: 7, scope: !4461)
!4474 = !DILocation(line: 54, column: 14, scope: !4461)
!4475 = !{!1225, !768, i64 72}
!4476 = !DILocation(line: 54, column: 28, scope: !4461)
!4477 = !DILocation(line: 52, column: 7, scope: !4417)
!4478 = !DILocation(line: 117, column: 26, scope: !4460)
!4479 = !DILocation(line: 117, column: 19, scope: !4460)
!4480 = !DILocation(line: 117, column: 13, scope: !4460)
!4481 = !DILocation(line: 118, column: 15, scope: !4482)
!4482 = distinct !DILexicalBlock(scope: !4460, file: !4418, line: 118, column: 11)
!4483 = !DILocation(line: 118, column: 11, scope: !4460)
!4484 = !DILocation(line: 129, column: 11, scope: !4460)
!4485 = !DILocation(line: 129, column: 18, scope: !4460)
!4486 = !DILocation(line: 130, column: 11, scope: !4460)
!4487 = !DILocation(line: 130, column: 19, scope: !4460)
!4488 = !{!1225, !881, i64 144}
!4489 = !DILocation(line: 161, column: 7, scope: !4460)
!4490 = !DILocation(line: 163, column: 10, scope: !4417)
!4491 = !DILocation(line: 163, column: 3, scope: !4417)
!4492 = !DILocation(line: 0, scope: !4417)
!4493 = !DILocation(line: 164, column: 1, scope: !4417)
!4494 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !4495, file: !4495, line: 385, type: !4496, isLocal: false, isDefinition: true, scopeLine: 386, flags: DIFlagPrototyped, isOptimized: true, unit: !334, retainedNodes: !4510)
!4495 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4496 = !DISubroutineType(types: !4497)
!4497 = !{!63, !4498, !44, !63, !4499}
!4498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!4499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4500, size: 64)
!4500 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1932, line: 6, baseType: !4501)
!4501 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1934, line: 21, baseType: !4502)
!4502 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1934, line: 13, size: 64, elements: !4503)
!4503 = !{!4504, !4505}
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4502, file: !1934, line: 15, baseType: !116, size: 32)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4502, file: !1934, line: 20, baseType: !4506, size: 32, offset: 32)
!4506 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4502, file: !1934, line: 16, size: 32, elements: !4507)
!4507 = !{!4508, !4509}
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4506, file: !1934, line: 18, baseType: !7, size: 32)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4506, file: !1934, line: 19, baseType: !1943, size: 32)
!4510 = !{!4511, !4512, !4513, !4514, !4515, !4516, !4517}
!4511 = !DILocalVariable(name: "pwc", arg: 1, scope: !4494, file: !4495, line: 385, type: !4498)
!4512 = !DILocalVariable(name: "s", arg: 2, scope: !4494, file: !4495, line: 385, type: !44)
!4513 = !DILocalVariable(name: "n", arg: 3, scope: !4494, file: !4495, line: 385, type: !63)
!4514 = !DILocalVariable(name: "ps", arg: 4, scope: !4494, file: !4495, line: 385, type: !4499)
!4515 = !DILocalVariable(name: "ret", scope: !4494, file: !4495, line: 387, type: !63)
!4516 = !DILocalVariable(name: "wc", scope: !4494, file: !4495, line: 388, type: !1948)
!4517 = !DILocalVariable(name: "uc", scope: !4518, file: !4495, line: 449, type: !40)
!4518 = distinct !DILexicalBlock(scope: !4519, file: !4495, line: 448, column: 5)
!4519 = distinct !DILexicalBlock(scope: !4494, file: !4495, line: 447, column: 7)
!4520 = !DILocation(line: 385, column: 23, scope: !4494)
!4521 = !DILocation(line: 385, column: 40, scope: !4494)
!4522 = !DILocation(line: 385, column: 50, scope: !4494)
!4523 = !DILocation(line: 385, column: 64, scope: !4494)
!4524 = !DILocation(line: 388, column: 3, scope: !4494)
!4525 = !DILocation(line: 404, column: 9, scope: !4526)
!4526 = distinct !DILexicalBlock(scope: !4494, file: !4495, line: 404, column: 7)
!4527 = !DILocation(line: 404, column: 7, scope: !4494)
!4528 = !DILocation(line: 439, column: 9, scope: !4494)
!4529 = !DILocation(line: 387, column: 10, scope: !4494)
!4530 = !DILocation(line: 447, column: 19, scope: !4519)
!4531 = !DILocation(line: 447, column: 31, scope: !4519)
!4532 = !DILocation(line: 447, column: 26, scope: !4519)
!4533 = !DILocation(line: 447, column: 41, scope: !4519)
!4534 = !DILocation(line: 447, column: 7, scope: !4494)
!4535 = !DILocation(line: 449, column: 26, scope: !4518)
!4536 = !DILocation(line: 449, column: 21, scope: !4518)
!4537 = !DILocation(line: 450, column: 14, scope: !4518)
!4538 = !DILocation(line: 450, column: 12, scope: !4518)
!4539 = !DILocation(line: 0, scope: !4518)
!4540 = !DILocation(line: 456, column: 1, scope: !4494)
!4541 = distinct !DISubprogram(name: "close_stream", scope: !4542, file: !4542, line: 56, type: !4543, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !337, retainedNodes: !4579)
!4542 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4543 = !DISubroutineType(types: !4544)
!4544 = !{!116, !4545}
!4545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4546, size: 64)
!4546 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1083, line: 7, baseType: !4547)
!4547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1085, line: 49, size: 1728, elements: !4548)
!4548 = !{!4549, !4550, !4551, !4552, !4553, !4554, !4555, !4556, !4557, !4558, !4559, !4560, !4561, !4562, !4564, !4565, !4566, !4567, !4568, !4569, !4570, !4571, !4572, !4573, !4574, !4575, !4576, !4577, !4578}
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4547, file: !1085, line: 51, baseType: !116, size: 32)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4547, file: !1085, line: 54, baseType: !36, size: 64, offset: 64)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4547, file: !1085, line: 55, baseType: !36, size: 64, offset: 128)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4547, file: !1085, line: 56, baseType: !36, size: 64, offset: 192)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4547, file: !1085, line: 57, baseType: !36, size: 64, offset: 256)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4547, file: !1085, line: 58, baseType: !36, size: 64, offset: 320)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4547, file: !1085, line: 59, baseType: !36, size: 64, offset: 384)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4547, file: !1085, line: 60, baseType: !36, size: 64, offset: 448)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4547, file: !1085, line: 61, baseType: !36, size: 64, offset: 512)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4547, file: !1085, line: 64, baseType: !36, size: 64, offset: 576)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4547, file: !1085, line: 65, baseType: !36, size: 64, offset: 640)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4547, file: !1085, line: 66, baseType: !36, size: 64, offset: 704)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4547, file: !1085, line: 68, baseType: !1100, size: 64, offset: 768)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4547, file: !1085, line: 70, baseType: !4563, size: 64, offset: 832)
!4563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4547, size: 64)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4547, file: !1085, line: 72, baseType: !116, size: 32, offset: 896)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4547, file: !1085, line: 73, baseType: !116, size: 32, offset: 928)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4547, file: !1085, line: 74, baseType: !1107, size: 64, offset: 960)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4547, file: !1085, line: 77, baseType: !233, size: 16, offset: 1024)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4547, file: !1085, line: 78, baseType: !1110, size: 8, offset: 1040)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4547, file: !1085, line: 79, baseType: !1112, size: 8, offset: 1048)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4547, file: !1085, line: 81, baseType: !1116, size: 64, offset: 1088)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4547, file: !1085, line: 89, baseType: !1119, size: 64, offset: 1152)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4547, file: !1085, line: 91, baseType: !1121, size: 64, offset: 1216)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4547, file: !1085, line: 92, baseType: !1124, size: 64, offset: 1280)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4547, file: !1085, line: 93, baseType: !4563, size: 64, offset: 1344)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4547, file: !1085, line: 94, baseType: !38, size: 64, offset: 1408)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4547, file: !1085, line: 95, baseType: !63, size: 64, offset: 1472)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4547, file: !1085, line: 96, baseType: !116, size: 32, offset: 1536)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4547, file: !1085, line: 98, baseType: !1131, size: 160, offset: 1568)
!4579 = !{!4580, !4581, !4583, !4584}
!4580 = !DILocalVariable(name: "stream", arg: 1, scope: !4541, file: !4542, line: 56, type: !4545)
!4581 = !DILocalVariable(name: "some_pending", scope: !4541, file: !4542, line: 58, type: !4582)
!4582 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !134)
!4583 = !DILocalVariable(name: "prev_fail", scope: !4541, file: !4542, line: 59, type: !4582)
!4584 = !DILocalVariable(name: "fclose_fail", scope: !4541, file: !4542, line: 60, type: !4582)
!4585 = !DILocation(line: 56, column: 21, scope: !4541)
!4586 = !DILocation(line: 58, column: 30, scope: !4541)
!4587 = !DILocalVariable(name: "__stream", arg: 1, scope: !4588, file: !1217, line: 135, type: !4545)
!4588 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1217, file: !1217, line: 135, type: !4543, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !337, retainedNodes: !4589)
!4589 = !{!4587}
!4590 = !DILocation(line: 135, column: 1, scope: !4588, inlinedAt: !4591)
!4591 = distinct !DILocation(line: 59, column: 27, scope: !4541)
!4592 = !DILocation(line: 137, column: 10, scope: !4588, inlinedAt: !4591)
!4593 = !DILocation(line: 59, column: 43, scope: !4541)
!4594 = !DILocation(line: 60, column: 29, scope: !4541)
!4595 = !DILocation(line: 60, column: 45, scope: !4541)
!4596 = !DILocation(line: 70, column: 17, scope: !4597)
!4597 = distinct !DILexicalBlock(scope: !4541, file: !4542, line: 70, column: 7)
!4598 = !DILocation(line: 58, column: 50, scope: !4541)
!4599 = !DILocation(line: 70, column: 33, scope: !4597)
!4600 = !DILocation(line: 70, column: 53, scope: !4597)
!4601 = !DILocation(line: 70, column: 59, scope: !4597)
!4602 = !DILocation(line: 70, column: 7, scope: !4541)
!4603 = !DILocation(line: 72, column: 11, scope: !4604)
!4604 = distinct !DILexicalBlock(scope: !4597, file: !4542, line: 71, column: 5)
!4605 = !DILocation(line: 73, column: 9, scope: !4606)
!4606 = distinct !DILexicalBlock(scope: !4604, file: !4542, line: 72, column: 11)
!4607 = !DILocation(line: 73, column: 15, scope: !4606)
!4608 = !DILocation(line: 0, scope: !4541)
!4609 = !DILocation(line: 78, column: 1, scope: !4541)
!4610 = distinct !DISubprogram(name: "hard_locale", scope: !4611, file: !4611, line: 38, type: !4612, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !339, retainedNodes: !4614)
!4611 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4612 = !DISubroutineType(types: !4613)
!4613 = !{!134, !116}
!4614 = !{!4615, !4616, !4617}
!4615 = !DILocalVariable(name: "category", arg: 1, scope: !4610, file: !4611, line: 38, type: !116)
!4616 = !DILocalVariable(name: "hard", scope: !4610, file: !4611, line: 40, type: !134)
!4617 = !DILocalVariable(name: "p", scope: !4610, file: !4611, line: 41, type: !44)
!4618 = !DILocation(line: 38, column: 18, scope: !4610)
!4619 = !DILocation(line: 40, column: 8, scope: !4610)
!4620 = !DILocation(line: 41, column: 19, scope: !4610)
!4621 = !DILocation(line: 41, column: 15, scope: !4610)
!4622 = !DILocation(line: 43, column: 7, scope: !4623)
!4623 = distinct !DILexicalBlock(scope: !4610, file: !4611, line: 43, column: 7)
!4624 = !DILocation(line: 43, column: 7, scope: !4610)
!4625 = !DILocation(line: 47, column: 15, scope: !4626)
!4626 = distinct !DILexicalBlock(scope: !4627, file: !4611, line: 47, column: 15)
!4627 = distinct !DILexicalBlock(scope: !4628, file: !4611, line: 46, column: 9)
!4628 = distinct !DILexicalBlock(scope: !4629, file: !4611, line: 45, column: 11)
!4629 = distinct !DILexicalBlock(scope: !4623, file: !4611, line: 44, column: 5)
!4630 = !DILocation(line: 47, column: 31, scope: !4626)
!4631 = !DILocation(line: 47, column: 36, scope: !4626)
!4632 = !DILocation(line: 47, column: 39, scope: !4626)
!4633 = !DILocation(line: 47, column: 59, scope: !4626)
!4634 = !DILocation(line: 47, column: 15, scope: !4627)
!4635 = !DILocation(line: 48, column: 13, scope: !4626)
!4636 = !DILocation(line: 71, column: 3, scope: !4610)
!4637 = distinct !DISubprogram(name: "locale_charset", scope: !4638, file: !4638, line: 687, type: !4639, isLocal: false, isDefinition: true, scopeLine: 688, flags: DIFlagPrototyped, isOptimized: true, unit: !341, retainedNodes: !4641)
!4638 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4639 = !DISubroutineType(types: !4640)
!4640 = !{!44}
!4641 = !{!4642}
!4642 = !DILocalVariable(name: "codeset", scope: !4637, file: !4638, line: 689, type: !44)
!4643 = !DILocation(line: 696, column: 13, scope: !4637)
!4644 = !DILocation(line: 689, column: 15, scope: !4637)
!4645 = !DILocation(line: 754, column: 15, scope: !4646)
!4646 = distinct !DILexicalBlock(scope: !4637, file: !4638, line: 754, column: 7)
!4647 = !DILocation(line: 754, column: 7, scope: !4637)
!4648 = !DILocation(line: 907, column: 13, scope: !4649)
!4649 = distinct !DILexicalBlock(scope: !4650, file: !4638, line: 907, column: 13)
!4650 = distinct !DILexicalBlock(scope: !4651, file: !4638, line: 897, column: 7)
!4651 = distinct !DILexicalBlock(scope: !4637, file: !4638, line: 856, column: 3)
!4652 = !DILocation(line: 907, column: 24, scope: !4649)
!4653 = !DILocation(line: 907, column: 13, scope: !4650)
!4654 = !DILocation(line: 995, column: 3, scope: !4637)
