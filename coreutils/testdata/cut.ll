; ModuleID = 'coreutils-8.30/src/cut.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.infomap = type { i8*, i8* }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.field_range_pair = type { i64, i64 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Usage: %s OPTION... [FILE]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [66 x i8] c"Print selected parts of lines from each FILE to standard output.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.27 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1
@.str.28 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@.str.3 = private unnamed_addr constant [177 x i8] c"  -b, --bytes=LIST        select only these bytes\0A  -c, --characters=LIST   select only these characters\0A  -d, --delimiter=DELIM   use DELIM instead of TAB for field delimiter\0A\00", align 1
@.str.4 = private unnamed_addr constant [238 x i8] c"  -f, --fields=LIST       select only these fields;  also print any line\0A                            that contains no delimiter character, unless\0A                            the -s option is specified\0A  -n                      (ignored)\0A\00", align 1
@.str.5 = private unnamed_addr constant [114 x i8] c"      --complement        complement the set of selected bytes, characters\0A                            or fields\0A\00", align 1
@.str.6 = private unnamed_addr constant [210 x i8] c"  -s, --only-delimited    do not print lines not containing delimiters\0A      --output-delimiter=STRING  use STRING as the output delimiter\0A                            the default is to use the input delimiter\0A\00", align 1
@.str.7 = private unnamed_addr constant [63 x i8] c"  -z, --zero-terminated    line delimiter is NUL, not newline\0A\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.9 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.10 = private unnamed_addr constant [204 x i8] c"\0AUse one, and only one of -b, -c or -f.  Each LIST is made up of one\0Arange, or many ranges separated by commas.  Selected input is written\0Ain the same order that it is read, and is written exactly once.\0A\00", align 1
@.str.11 = private unnamed_addr constant [262 x i8] c"Each range is one of:\0A\0A  N     N'th byte, character or field, counted from 1\0A  N-    from N'th byte, character or field, to end of line\0A  N-M   from N'th to M'th (included) byte, character or field\0A  -M    from first to M'th (included) byte, character or field\0A\00", align 1
@emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.31, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.29 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"cut\00", align 1
@.str.37 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.38 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.40 = private unnamed_addr constant [70 x i8] c"Report %s translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.41 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.42 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.43 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.31 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@operating_mode = internal unnamed_addr global i32 0, align 4, !dbg !0
@suppress_non_delimited = internal unnamed_addr global i1 false, align 1, !dbg !115
@delim = internal unnamed_addr global i8 0, align 1, !dbg !72
@have_read_stdin = internal unnamed_addr global i1 false, align 1, !dbg !116
@.str.16 = private unnamed_addr constant [12 x i8] c"b:c:d:f:nsz\00", align 1
@longopts = internal constant [11 x %struct.option] [%struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i32 0, i32 0), i32 1, i32* null, i32 98 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.45, i32 0, i32 0), i32 1, i32* null, i32 99 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i32 0, i32 0), i32 1, i32* null, i32 102 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i32 0, i32 0), i32 1, i32* null, i32 100 }, %struct.option { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.48, i32 0, i32 0), i32 0, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.49, i32 0, i32 0), i32 1, i32* null, i32 128 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.50, i32 0, i32 0), i32 0, i32* null, i32 129 }, %struct.option { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.51, i32 0, i32 0), i32 0, i32* null, i32 122 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !82
@.str.17 = private unnamed_addr constant [39 x i8] c"only one type of list may be specified\00", align 1
@optarg = external local_unnamed_addr global i8*, align 8
@.str.18 = private unnamed_addr constant [41 x i8] c"the delimiter must be a single character\00", align 1
@output_delimiter_specified = internal unnamed_addr global i1 false, align 1, !dbg !117
@output_delimiter_length = internal unnamed_addr global i64 0, align 8, !dbg !76
@output_delimiter_string = internal unnamed_addr global i8* null, align 8, !dbg !78
@line_delim = internal unnamed_addr global i1 false, align 1, !dbg !118
@complement = internal unnamed_addr global i1 false, align 1, !dbg !119
@.str.20 = private unnamed_addr constant [15 x i8] c"David M. Ihnat\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1
@.str.23 = private unnamed_addr constant [56 x i8] c"you must specify a list of bytes, characters, or fields\00", align 1
@.str.24 = private unnamed_addr constant [66 x i8] c"an input delimiter may be specified only when operating on fields\00", align 1
@.str.25 = private unnamed_addr constant [75 x i8] c"suppressing non-delimited lines makes sense\0A\09only when operating on fields\00", align 1
@main.dummy = internal global [2 x i8] zeroinitializer, align 1, !dbg !50
@optind = external local_unnamed_addr global i32, align 4
@.str.26 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.54 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.55 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@current_rp = internal unnamed_addr global %struct.field_range_pair* null, align 8, !dbg !100
@field_1_buffer = internal global i8* null, align 8, !dbg !111
@field_1_bufsize = internal global i64 0, align 8, !dbg !113
@.str.56 = private unnamed_addr constant [13 x i8] c"n_bytes != 0\00", align 1
@.str.57 = private unnamed_addr constant [10 x i8] c"src/cut.c\00", align 1
@__PRETTY_FUNCTION__.cut_fields = private unnamed_addr constant [24 x i8] c"void cut_fields(FILE *)\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"bytes\00", align 1
@.str.45 = private unnamed_addr constant [11 x i8] c"characters\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"fields\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"delimiter\00", align 1
@.str.48 = private unnamed_addr constant [15 x i8] c"only-delimited\00", align 1
@.str.49 = private unnamed_addr constant [17 x i8] c"output-delimiter\00", align 1
@.str.50 = private unnamed_addr constant [11 x i8] c"complement\00", align 1
@.str.51 = private unnamed_addr constant [16 x i8] c"zero-terminated\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@n_frp = common dso_local local_unnamed_addr global i64 0, align 8, !dbg !120
@frp = common dso_local local_unnamed_addr global %struct.field_range_pair* null, align 8, !dbg !192
@.str.58 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.2.59 = private unnamed_addr constant [20 x i8] c"invalid field range\00", align 1
@.str.1.60 = private unnamed_addr constant [32 x i8] c"invalid byte or character range\00", align 1
@.str.4.61 = private unnamed_addr constant [27 x i8] c"fields are numbered from 1\00", align 1
@.str.3.62 = private unnamed_addr constant [45 x i8] c"byte/character positions are numbered from 1\00", align 1
@.str.5.63 = private unnamed_addr constant [34 x i8] c"invalid range with no endpoint: -\00", align 1
@n_frp_allocated = internal unnamed_addr global i64 0, align 8, !dbg !195
@.str.6.64 = private unnamed_addr constant [25 x i8] c"invalid decreasing range\00", align 1
@set_fields.num_start = internal unnamed_addr global i8* null, align 8, !dbg !163
@.str.7.65 = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@.str.9.66 = private unnamed_addr constant [29 x i8] c"field number %s is too large\00", align 1
@.str.8.67 = private unnamed_addr constant [38 x i8] c"byte/character offset %s is too large\00", align 1
@.str.11.68 = private unnamed_addr constant [23 x i8] c"invalid field value %s\00", align 1
@.str.10.69 = private unnamed_addr constant [35 x i8] c"invalid byte/character position %s\00", align 1
@.str.13.70 = private unnamed_addr constant [23 x i8] c"missing list of fields\00", align 1
@.str.12.71 = private unnamed_addr constant [41 x i8] c"missing list of byte/character positions\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.74, i64 0, i64 0), align 8, !dbg !197
@.str.74 = private unnamed_addr constant [5 x i8] c"8.30\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !203
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !208
@.str.77 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.78 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.79 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !211
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !218
@.str.92 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.93 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.94 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.95, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.96, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.97, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.98, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.99, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.100, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.101, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.102, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.103, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.104, i32 0, i32 0), i8* null], align 16, !dbg !225
@.str.95 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.96 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.97 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.98 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.99 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.100 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.101 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.102 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.103 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.104 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !237
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !244
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !256
@.str.11.105 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.106 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.107 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.108 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.109 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.110 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.111 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !263
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !270
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !258
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !272
@.str.118 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.119 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.120 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.121 = private unnamed_addr constant [204 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.122 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.123 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.124 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.125 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.126 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.127 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.128 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.129 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.130 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.131 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.134 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.135 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.136 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.137 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.138 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.19.139 = private unnamed_addr constant [65 x i8] c"General help using GNU software: <https://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !276
@.str.1.152 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.153 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.174 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.175 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.178 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.179 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32) local_unnamed_addr #0 !dbg !737 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !742, metadata !DIExpression()), !dbg !761
  call void @llvm.dbg.value(metadata i32 %0, metadata !741, metadata !DIExpression()), !dbg !765
  %3 = icmp eq i32 %0, 0, !dbg !766
  br i1 %3, label %9, label %4, !dbg !767

; <label>:4:                                      ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !768, !tbaa !770
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #12, !dbg !768
  %7 = load i8*, i8** @program_name, align 8, !dbg !768, !tbaa !770
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #12, !dbg !768
  br label %84, !dbg !768

; <label>:9:                                      ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 5) #12, !dbg !774
  %11 = load i8*, i8** @program_name, align 8, !dbg !774, !tbaa !770
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #12, !dbg !774
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0), i32 5) #12, !dbg !775
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !775, !tbaa !770
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !775
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.27, i64 0, i64 0), i32 5) #12, !dbg !776
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !776, !tbaa !770
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17) #12, !dbg !776
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.28, i64 0, i64 0), i32 5) #12, !dbg !781
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !781, !tbaa !770
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20) #12, !dbg !781
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([177 x i8], [177 x i8]* @.str.3, i64 0, i64 0), i32 5) #12, !dbg !784
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !784, !tbaa !770
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !784
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([238 x i8], [238 x i8]* @.str.4, i64 0, i64 0), i32 5) #12, !dbg !785
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !785, !tbaa !770
  %27 = tail call i32 @fputs_unlocked(i8* %25, %struct._IO_FILE* %26), !dbg !785
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str.5, i64 0, i64 0), i32 5) #12, !dbg !786
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !786, !tbaa !770
  %30 = tail call i32 @fputs_unlocked(i8* %28, %struct._IO_FILE* %29), !dbg !786
  %31 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([210 x i8], [210 x i8]* @.str.6, i64 0, i64 0), i32 5) #12, !dbg !787
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !787, !tbaa !770
  %33 = tail call i32 @fputs_unlocked(i8* %31, %struct._IO_FILE* %32), !dbg !787
  %34 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.7, i64 0, i64 0), i32 5) #12, !dbg !788
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !788, !tbaa !770
  %36 = tail call i32 @fputs_unlocked(i8* %34, %struct._IO_FILE* %35), !dbg !788
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0), i32 5) #12, !dbg !789
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !789, !tbaa !770
  %39 = tail call i32 @fputs_unlocked(i8* %37, %struct._IO_FILE* %38), !dbg !789
  %40 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i64 0, i64 0), i32 5) #12, !dbg !790
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !790, !tbaa !770
  %42 = tail call i32 @fputs_unlocked(i8* %40, %struct._IO_FILE* %41), !dbg !790
  %43 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([204 x i8], [204 x i8]* @.str.10, i64 0, i64 0), i32 5) #12, !dbg !791
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !791, !tbaa !770
  %45 = tail call i32 @fputs_unlocked(i8* %43, %struct._IO_FILE* %44), !dbg !791
  %46 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([262 x i8], [262 x i8]* @.str.11, i64 0, i64 0), i32 5) #12, !dbg !792
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !792, !tbaa !770
  %48 = tail call i32 @fputs_unlocked(i8* %46, %struct._IO_FILE* %47), !dbg !792
  %49 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !793
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %49) #12, !dbg !793
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %49, i8* align 16 bitcast ([7 x %struct.infomap]* @emit_ancillary_info.infomap to i8*), i64 112, i1 false) #12, !dbg !761
  %50 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !794
  call void @llvm.dbg.value(metadata %struct.infomap* %50, metadata !750, metadata !DIExpression()) #12, !dbg !795
  br label %51, !dbg !796

; <label>:51:                                     ; preds = %56, %9
  %52 = phi i8* [ %59, %56 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0), %9 ]
  %53 = phi %struct.infomap* [ %57, %56 ], [ %50, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %53, metadata !750, metadata !DIExpression()) #12, !dbg !795
  %54 = tail call i32 @strcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* nonnull %52) #14, !dbg !796
  %55 = icmp eq i32 %54, 0, !dbg !796
  br i1 %55, label %61, label %56, !dbg !797

; <label>:56:                                     ; preds = %51
  %57 = getelementptr inbounds %struct.infomap, %struct.infomap* %53, i64 1, !dbg !798
  call void @llvm.dbg.value(metadata %struct.infomap* %57, metadata !750, metadata !DIExpression()) #12, !dbg !795
  %58 = getelementptr inbounds %struct.infomap, %struct.infomap* %57, i64 0, i32 0, !dbg !799
  %59 = load i8*, i8** %58, align 8, !dbg !799, !tbaa !800
  %60 = icmp eq i8* %59, null, !dbg !802
  br i1 %60, label %61, label %51, !dbg !803, !llvm.loop !804

; <label>:61:                                     ; preds = %56, %51
  %62 = phi %struct.infomap* [ %57, %56 ], [ %53, %51 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %62, metadata !750, metadata !DIExpression()) #12, !dbg !795
  call void @llvm.dbg.value(metadata %struct.infomap* %62, metadata !750, metadata !DIExpression()) #12, !dbg !795
  %63 = getelementptr inbounds %struct.infomap, %struct.infomap* %62, i64 0, i32 1, !dbg !807
  %64 = load i8*, i8** %63, align 8, !dbg !807, !tbaa !809
  %65 = icmp eq i8* %64, null, !dbg !810
  %66 = select i1 %65, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* %64, !dbg !811
  call void @llvm.dbg.value(metadata i8* %66, metadata !749, metadata !DIExpression()) #12, !dbg !812
  %67 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.37, i64 0, i64 0), i32 5) #12, !dbg !813
  %68 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %67, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.38, i64 0, i64 0)) #12, !dbg !813
  %69 = tail call i8* @setlocale(i32 5, i8* null) #12, !dbg !814
  call void @llvm.dbg.value(metadata i8* %69, metadata !757, metadata !DIExpression()) #12, !dbg !815
  %70 = icmp eq i8* %69, null, !dbg !816
  br i1 %70, label %77, label %71, !dbg !818

; <label>:71:                                     ; preds = %61
  %72 = tail call i32 @strncmp(i8* nonnull %69, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i64 0, i64 0), i64 3) #14, !dbg !819
  %73 = icmp eq i32 %72, 0, !dbg !819
  br i1 %73, label %77, label %74, !dbg !820

; <label>:74:                                     ; preds = %71
  %75 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.40, i64 0, i64 0), i32 5) #12, !dbg !821
  %76 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %75, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0)) #12, !dbg !821
  br label %77, !dbg !823

; <label>:77:                                     ; preds = %61, %71, %74
  %78 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.41, i64 0, i64 0), i32 5) #12, !dbg !824
  %79 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %78, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.38, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0)) #12, !dbg !824
  %80 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.42, i64 0, i64 0), i32 5) #12, !dbg !825
  %81 = icmp eq i8* %66, getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), !dbg !825
  %82 = select i1 %81, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0), !dbg !825
  %83 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %80, i8* %66, i8* %82) #12, !dbg !825
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %49) #12, !dbg !826
  br label %84

; <label>:84:                                     ; preds = %77, %4
  tail call void @exit(i32 %0) #15, !dbg !827
  unreachable, !dbg !827
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
define dso_local i32 @main(i32, i8**) local_unnamed_addr #7 !dbg !52 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !58, metadata !DIExpression()), !dbg !828
  call void @llvm.dbg.value(metadata i8** %1, metadata !59, metadata !DIExpression()), !dbg !829
  call void @llvm.dbg.value(metadata i8 0, metadata !63, metadata !DIExpression()), !dbg !830
  %3 = load i8*, i8** %1, align 8, !dbg !831, !tbaa !770
  tail call void @set_program_name(i8* %3) #12, !dbg !832
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0)) #12, !dbg !833
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0)) #12, !dbg !834
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0)) #12, !dbg !835
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #12, !dbg !836
  store i32 0, i32* @operating_mode, align 4, !dbg !837, !tbaa !838
  store i1 false, i1* @suppress_non_delimited, align 1
  store i8 0, i8* @delim, align 1, !dbg !839, !tbaa !838
  store i1 false, i1* @have_read_stdin, align 1
  br label %8, !dbg !840

; <label>:8:                                      ; preds = %12, %2
  %9 = phi i8 [ 0, %2 ], [ %13, %12 ], !dbg !830
  %10 = phi i8* [ undef, %2 ], [ %14, %12 ]
  call void @llvm.dbg.value(metadata i8* %10, metadata !64, metadata !DIExpression()), !dbg !841
  call void @llvm.dbg.value(metadata i8 %9, metadata !63, metadata !DIExpression()), !dbg !830
  %11 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), %struct.option* getelementptr inbounds ([11 x %struct.option], [11 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #12, !dbg !842
  call void @llvm.dbg.value(metadata i32 %11, metadata !60, metadata !DIExpression()), !dbg !843
  switch i32 %11, label %56 [
    i32 -1, label %57
    i32 98, label %15
    i32 99, label %15
    i32 102, label %22
    i32 100, label %29
    i32 128, label %40
    i32 110, label %12
    i32 115, label %49
    i32 122, label %50
    i32 129, label %51
    i32 -130, label %52
    i32 -131, label %53
  ], !dbg !840

; <label>:12:                                     ; preds = %8, %51, %50, %49, %46, %39, %27, %20
  %13 = phi i8 [ %9, %51 ], [ %9, %50 ], [ %9, %49 ], [ %9, %46 ], [ 1, %39 ], [ %9, %27 ], [ %9, %20 ], [ %9, %8 ]
  %14 = phi i8* [ %10, %51 ], [ %10, %50 ], [ %10, %49 ], [ %10, %46 ], [ %10, %39 ], [ %28, %27 ], [ %21, %20 ], [ %10, %8 ]
  br label %8, !dbg !841, !llvm.loop !844

; <label>:15:                                     ; preds = %8, %8
  %16 = load i32, i32* @operating_mode, align 4, !dbg !846, !tbaa !838
  %17 = icmp eq i32 %16, 0, !dbg !850
  br i1 %17, label %20, label %18, !dbg !851

; <label>:18:                                     ; preds = %15
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.17, i64 0, i64 0), i32 5) #12, !dbg !852
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %19) #12, !dbg !852
  tail call void @usage(i32 1) #16, !dbg !852
  unreachable, !dbg !852

; <label>:20:                                     ; preds = %15
  store i32 1, i32* @operating_mode, align 4, !dbg !854, !tbaa !838
  %21 = load i8*, i8** @optarg, align 8, !dbg !855, !tbaa !770
  call void @llvm.dbg.value(metadata i8* %21, metadata !64, metadata !DIExpression()), !dbg !841
  br label %12, !dbg !856

; <label>:22:                                     ; preds = %8
  %23 = load i32, i32* @operating_mode, align 4, !dbg !857, !tbaa !838
  %24 = icmp eq i32 %23, 0, !dbg !859
  br i1 %24, label %27, label %25, !dbg !860

; <label>:25:                                     ; preds = %22
  %26 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.17, i64 0, i64 0), i32 5) #12, !dbg !861
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %26) #12, !dbg !861
  tail call void @usage(i32 1) #16, !dbg !861
  unreachable, !dbg !861

; <label>:27:                                     ; preds = %22
  store i32 2, i32* @operating_mode, align 4, !dbg !863, !tbaa !838
  %28 = load i8*, i8** @optarg, align 8, !dbg !864, !tbaa !770
  call void @llvm.dbg.value(metadata i8* %28, metadata !64, metadata !DIExpression()), !dbg !841
  br label %12, !dbg !865

; <label>:29:                                     ; preds = %8
  %30 = load i8*, i8** @optarg, align 8, !dbg !866, !tbaa !770
  %31 = load i8, i8* %30, align 1, !dbg !866, !tbaa !838
  %32 = icmp eq i8 %31, 0, !dbg !868
  br i1 %32, label %39, label %33, !dbg !869

; <label>:33:                                     ; preds = %29
  %34 = getelementptr inbounds i8, i8* %30, i64 1, !dbg !870
  %35 = load i8, i8* %34, align 1, !dbg !870, !tbaa !838
  %36 = icmp eq i8 %35, 0, !dbg !871
  br i1 %36, label %39, label %37, !dbg !872

; <label>:37:                                     ; preds = %33
  %38 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.18, i64 0, i64 0), i32 5) #12, !dbg !873
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %38) #12, !dbg !873
  tail call void @usage(i32 1) #16, !dbg !873
  unreachable, !dbg !873

; <label>:39:                                     ; preds = %33, %29
  store i8 %31, i8* @delim, align 1, !dbg !875, !tbaa !838
  call void @llvm.dbg.value(metadata i8 1, metadata !63, metadata !DIExpression()), !dbg !830
  br label %12, !dbg !876

; <label>:40:                                     ; preds = %8
  store i1 true, i1* @output_delimiter_specified, align 1
  %41 = load i8*, i8** @optarg, align 8, !dbg !877, !tbaa !770
  %42 = load i8, i8* %41, align 1, !dbg !877, !tbaa !838
  %43 = icmp eq i8 %42, 0, !dbg !878
  br i1 %43, label %46, label %44, !dbg !877

; <label>:44:                                     ; preds = %40
  %45 = tail call i64 @strlen(i8* %41) #14, !dbg !879
  br label %46, !dbg !877

; <label>:46:                                     ; preds = %40, %44
  %47 = phi i64 [ %45, %44 ], [ 1, %40 ], !dbg !877
  store i64 %47, i64* @output_delimiter_length, align 8, !dbg !880, !tbaa !881
  %48 = tail call noalias i8* @xstrdup(i8* %41) #12, !dbg !883
  store i8* %48, i8** @output_delimiter_string, align 8, !dbg !884, !tbaa !770
  br label %12, !dbg !885

; <label>:49:                                     ; preds = %8
  store i1 true, i1* @suppress_non_delimited, align 1
  br label %12, !dbg !886

; <label>:50:                                     ; preds = %8
  store i1 true, i1* @line_delim, align 1
  br label %12, !dbg !887

; <label>:51:                                     ; preds = %8
  store i1 true, i1* @complement, align 1
  br label %12, !dbg !888

; <label>:52:                                     ; preds = %8
  tail call void @usage(i32 0) #16, !dbg !889
  unreachable, !dbg !889

; <label>:53:                                     ; preds = %8
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !890, !tbaa !770
  %55 = load i8*, i8** @Version, align 8, !dbg !890, !tbaa !770
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0), i8* %55, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i64 0, i64 0), i8* null) #12, !dbg !890
  tail call void @exit(i32 0) #15, !dbg !890
  unreachable, !dbg !890

; <label>:56:                                     ; preds = %8
  tail call void @usage(i32 1) #16, !dbg !891
  unreachable, !dbg !891

; <label>:57:                                     ; preds = %8
  call void @llvm.dbg.value(metadata i8 %9, metadata !63, metadata !DIExpression()), !dbg !830
  call void @llvm.dbg.value(metadata i8* %10, metadata !64, metadata !DIExpression()), !dbg !841
  call void @llvm.dbg.value(metadata i8 %9, metadata !63, metadata !DIExpression()), !dbg !830
  call void @llvm.dbg.value(metadata i8* %10, metadata !64, metadata !DIExpression()), !dbg !841
  call void @llvm.dbg.value(metadata i8 %9, metadata !63, metadata !DIExpression()), !dbg !830
  call void @llvm.dbg.value(metadata i8* %10, metadata !64, metadata !DIExpression()), !dbg !841
  call void @llvm.dbg.value(metadata i8 %9, metadata !63, metadata !DIExpression()), !dbg !830
  call void @llvm.dbg.value(metadata i8* %10, metadata !64, metadata !DIExpression()), !dbg !841
  call void @llvm.dbg.value(metadata i8 %9, metadata !63, metadata !DIExpression()), !dbg !830
  call void @llvm.dbg.value(metadata i8* %10, metadata !64, metadata !DIExpression()), !dbg !841
  call void @llvm.dbg.value(metadata i8 %9, metadata !63, metadata !DIExpression()), !dbg !830
  call void @llvm.dbg.value(metadata i8* %10, metadata !64, metadata !DIExpression()), !dbg !841
  %58 = load i32, i32* @operating_mode, align 4, !dbg !892, !tbaa !838
  %59 = icmp eq i32 %58, 0, !dbg !894
  br i1 %59, label %60, label %62, !dbg !895

; <label>:60:                                     ; preds = %57
  %61 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.23, i64 0, i64 0), i32 5) #12, !dbg !896
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %61) #12, !dbg !896
  tail call void @usage(i32 1) #16, !dbg !896
  unreachable, !dbg !896

; <label>:62:                                     ; preds = %57
  %63 = icmp ne i8 %9, 0, !dbg !898
  %64 = icmp ne i32 %58, 2, !dbg !900
  %65 = and i1 %63, %64, !dbg !901
  br i1 %65, label %66, label %68, !dbg !901

; <label>:66:                                     ; preds = %62
  %67 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.24, i64 0, i64 0), i32 5) #12, !dbg !902
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %67) #12, !dbg !902
  tail call void @usage(i32 1) #16, !dbg !902
  unreachable, !dbg !902

; <label>:68:                                     ; preds = %62
  %69 = load i1, i1* @suppress_non_delimited, align 1
  %70 = and i1 %64, %69, !dbg !904
  br i1 %70, label %71, label %73, !dbg !904

; <label>:71:                                     ; preds = %68
  %72 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.25, i64 0, i64 0), i32 5) #12, !dbg !906
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %72) #12, !dbg !906
  tail call void @usage(i32 1) #16, !dbg !906
  unreachable, !dbg !906

; <label>:73:                                     ; preds = %68
  %74 = icmp eq i32 %58, 2, !dbg !908
  %75 = select i1 %74, i32 0, i32 4, !dbg !909
  %76 = load i1, i1* @complement, align 1
  %77 = select i1 %76, i32 2, i32 0, !dbg !910
  %78 = or i32 %77, %75, !dbg !911
  tail call void @set_fields(i8* %10, i32 %78) #12, !dbg !912
  br i1 %63, label %80, label %79, !dbg !913

; <label>:79:                                     ; preds = %73
  store i8 9, i8* @delim, align 1, !dbg !914, !tbaa !838
  br label %80, !dbg !916

; <label>:80:                                     ; preds = %79, %73
  %81 = load i8*, i8** @output_delimiter_string, align 8, !dbg !917, !tbaa !770
  %82 = icmp eq i8* %81, null, !dbg !919
  br i1 %82, label %83, label %85, !dbg !920

; <label>:83:                                     ; preds = %80
  %84 = load i8, i8* @delim, align 1, !dbg !921, !tbaa !838
  store i8 %84, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @main.dummy, i64 0, i64 0), align 1, !dbg !923, !tbaa !838
  store i8 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @main.dummy, i64 0, i64 1), align 1, !dbg !924, !tbaa !838
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @main.dummy, i64 0, i64 0), i8** @output_delimiter_string, align 8, !dbg !925, !tbaa !770
  store i64 1, i64* @output_delimiter_length, align 8, !dbg !926, !tbaa !881
  br label %85, !dbg !927

; <label>:85:                                     ; preds = %83, %80
  %86 = load i32, i32* @optind, align 4, !dbg !928, !tbaa !930
  %87 = icmp eq i32 %86, %0, !dbg !932
  br i1 %87, label %90, label %88, !dbg !933

; <label>:88:                                     ; preds = %85
  call void @llvm.dbg.value(metadata i8 1, metadata !61, metadata !DIExpression()), !dbg !934
  %89 = icmp slt i32 %86, %0, !dbg !935
  br i1 %89, label %93, label %105, !dbg !938

; <label>:90:                                     ; preds = %85
  %91 = tail call fastcc zeroext i1 @cut_file(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0)), !dbg !939
  %92 = zext i1 %91 to i8, !dbg !940
  call void @llvm.dbg.value(metadata i8 %92, metadata !61, metadata !DIExpression()), !dbg !934
  br label %105, !dbg !941

; <label>:93:                                     ; preds = %88, %93
  %94 = phi i32 [ %103, %93 ], [ %86, %88 ]
  %95 = phi i8 [ %101, %93 ], [ 1, %88 ]
  call void @llvm.dbg.value(metadata i8 %95, metadata !61, metadata !DIExpression()), !dbg !934
  %96 = sext i32 %94 to i64, !dbg !942
  %97 = getelementptr inbounds i8*, i8** %1, i64 %96, !dbg !942
  %98 = load i8*, i8** %97, align 8, !dbg !942, !tbaa !770
  %99 = tail call fastcc zeroext i1 @cut_file(i8* %98), !dbg !943
  %100 = zext i1 %99 to i8, !dbg !943
  %101 = and i8 %95, %100, !dbg !944
  %102 = load i32, i32* @optind, align 4, !dbg !945, !tbaa !930
  %103 = add nsw i32 %102, 1, !dbg !945
  store i32 %103, i32* @optind, align 4, !dbg !945, !tbaa !930
  call void @llvm.dbg.value(metadata i8 %101, metadata !61, metadata !DIExpression()), !dbg !934
  %104 = icmp slt i32 %103, %0, !dbg !935
  br i1 %104, label %93, label %105, !dbg !938, !llvm.loop !946

; <label>:105:                                    ; preds = %93, %88, %90
  %106 = phi i8 [ %92, %90 ], [ 1, %88 ], [ %101, %93 ], !dbg !948
  call void @llvm.dbg.value(metadata i8 %106, metadata !61, metadata !DIExpression()), !dbg !934
  %107 = load i1, i1* @have_read_stdin, align 1
  br i1 %107, label %108, label %115, !dbg !949

; <label>:108:                                    ; preds = %105
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !951, !tbaa !770
  %110 = tail call i32 @rpl_fclose(%struct._IO_FILE* %109) #12, !dbg !952
  %111 = icmp eq i32 %110, -1, !dbg !953
  br i1 %111, label %112, label %115, !dbg !954

; <label>:112:                                    ; preds = %108
  %113 = tail call i32* @__errno_location() #17, !dbg !955
  %114 = load i32, i32* %113, align 4, !dbg !955, !tbaa !930
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %114, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0)) #12, !dbg !957
  call void @llvm.dbg.value(metadata i8 0, metadata !61, metadata !DIExpression()), !dbg !934
  br label %115, !dbg !958

; <label>:115:                                    ; preds = %112, %108, %105
  %116 = phi i8 [ 0, %112 ], [ %106, %108 ], [ %106, %105 ], !dbg !959
  call void @llvm.dbg.value(metadata i8 %116, metadata !61, metadata !DIExpression()), !dbg !934
  %117 = and i8 %116, 1, !dbg !960
  %118 = xor i8 %117, 1, !dbg !960
  %119 = zext i8 %118 to i32, !dbg !960
  ret i32 %119, !dbg !961
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

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @cut_file(i8*) unnamed_addr #7 !dbg !962 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !966, metadata !DIExpression()), !dbg !1022
  %2 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0)) #14, !dbg !1023
  %3 = icmp eq i32 %2, 0, !dbg !1023
  br i1 %3, label %4, label %6, !dbg !1025

; <label>:4:                                      ; preds = %1
  store i1 true, i1* @have_read_stdin, align 1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1026, !tbaa !770
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %5, metadata !967, metadata !DIExpression()), !dbg !1028
  br label %13, !dbg !1029

; <label>:6:                                      ; preds = %1
  %7 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i64 0, i64 0)), !dbg !1030
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %7, metadata !967, metadata !DIExpression()), !dbg !1028
  %8 = icmp eq %struct._IO_FILE* %7, null, !dbg !1032
  br i1 %8, label %9, label %13, !dbg !1034

; <label>:9:                                      ; preds = %6
  %10 = tail call i32* @__errno_location() #17, !dbg !1035
  %11 = load i32, i32* %10, align 4, !dbg !1035, !tbaa !930
  %12 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #12, !dbg !1037
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), i8* %12) #12, !dbg !1038
  br label %414, !dbg !1039

; <label>:13:                                     ; preds = %6, %4
  %14 = phi %struct._IO_FILE* [ %5, %4 ], [ %7, %6 ], !dbg !1040
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %14, metadata !967, metadata !DIExpression()), !dbg !1028
  tail call void @fadvise(%struct._IO_FILE* %14, i32 2) #12, !dbg !1041
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %14, metadata !1042, metadata !DIExpression()) #12, !dbg !1047
  %15 = load i32, i32* @operating_mode, align 4, !dbg !1049, !tbaa !838
  %16 = icmp eq i32 %15, 1, !dbg !1051
  %17 = load i64, i64* bitcast (%struct.field_range_pair** @frp to i64*), align 8, !dbg !1052, !tbaa !770
  store i64 %17, i64* bitcast (%struct.field_range_pair** @current_rp to i64*), align 8, !dbg !1052, !tbaa !770
  %18 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %14, i64 0, i32 1
  br i1 %16, label %19, label %113, !dbg !1053

; <label>:19:                                     ; preds = %13
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %14, metadata !1054, metadata !DIExpression()) #12, !dbg !1061
  call void @llvm.dbg.value(metadata i64 0, metadata !1057, metadata !DIExpression()) #12, !dbg !1063
  call void @llvm.dbg.value(metadata i8 0, metadata !1058, metadata !DIExpression()) #12, !dbg !1064
  %20 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %14, i64 0, i32 2
  br label %21, !dbg !1065

; <label>:21:                                     ; preds = %55, %19
  %22 = phi i64 [ 0, %19 ], [ %56, %55 ]
  %23 = phi i8 [ 0, %19 ], [ %57, %55 ]
  br label %24, !dbg !1066

; <label>:24:                                     ; preds = %21, %82
  %25 = phi i64 [ %75, %82 ], [ %22, %21 ], !dbg !1074
  call void @llvm.dbg.value(metadata i8 %23, metadata !1058, metadata !DIExpression()) #12, !dbg !1064
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %14, metadata !1072, metadata !DIExpression()) #12, !dbg !1077
  %26 = load i8*, i8** %18, align 8, !dbg !1066, !tbaa !1078
  %27 = load i8*, i8** %20, align 8, !dbg !1066, !tbaa !1081
  %28 = icmp ult i8* %26, %27, !dbg !1066
  br i1 %28, label %31, label %29, !dbg !1066, !prof !1082

; <label>:29:                                     ; preds = %24
  %30 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %14) #12, !dbg !1066
  br label %35, !dbg !1066

; <label>:31:                                     ; preds = %24
  %32 = getelementptr inbounds i8, i8* %26, i64 1, !dbg !1066
  store i8* %32, i8** %18, align 8, !dbg !1066, !tbaa !1078
  %33 = load i8, i8* %26, align 1, !dbg !1066, !tbaa !838
  %34 = zext i8 %33 to i32, !dbg !1066
  br label %35, !dbg !1066

; <label>:35:                                     ; preds = %31, %29
  %36 = phi i32 [ %30, %29 ], [ %34, %31 ], !dbg !1066
  call void @llvm.dbg.value(metadata i32 %36, metadata !1059, metadata !DIExpression()) #12, !dbg !1083
  %37 = load i1, i1* @line_delim, align 1
  %38 = select i1 %37, i32 0, i32 10, !dbg !1084
  %39 = icmp eq i32 %36, %38, !dbg !1085
  br i1 %39, label %40, label %58, !dbg !1086

; <label>:40:                                     ; preds = %35
  call void @llvm.dbg.value(metadata i32 %36, metadata !1059, metadata !DIExpression()) #12, !dbg !1083
  call void @llvm.dbg.value(metadata i32 %36, metadata !1059, metadata !DIExpression()) #12, !dbg !1083
  call void @llvm.dbg.value(metadata i32 %36, metadata !1087, metadata !DIExpression()) #12, !dbg !1092
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1094, !tbaa !770
  %42 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 5, !dbg !1094
  %43 = load i8*, i8** %42, align 8, !dbg !1094, !tbaa !1095
  %44 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %41, i64 0, i32 6, !dbg !1094
  %45 = load i8*, i8** %44, align 8, !dbg !1094, !tbaa !1096
  %46 = icmp ult i8* %43, %45, !dbg !1094
  br i1 %46, label %50, label %47, !dbg !1094, !prof !1082

; <label>:47:                                     ; preds = %40
  %48 = and i32 %36, 255, !dbg !1094
  %49 = tail call i32 @__overflow(%struct._IO_FILE* %41, i32 %48) #12, !dbg !1094
  br label %53, !dbg !1094

; <label>:50:                                     ; preds = %40
  %51 = trunc i32 %36 to i8, !dbg !1094
  %52 = getelementptr inbounds i8, i8* %43, i64 1, !dbg !1094
  store i8* %52, i8** %42, align 8, !dbg !1094, !tbaa !1095
  store i8 %51, i8* %43, align 1, !dbg !1094, !tbaa !838
  br label %53, !dbg !1094

; <label>:53:                                     ; preds = %50, %47
  call void @llvm.dbg.value(metadata i64 0, metadata !1057, metadata !DIExpression()) #12, !dbg !1063
  call void @llvm.dbg.value(metadata i8 0, metadata !1058, metadata !DIExpression()) #12, !dbg !1064
  %54 = load i64, i64* bitcast (%struct.field_range_pair** @frp to i64*), align 8, !dbg !1097, !tbaa !770
  store i64 %54, i64* bitcast (%struct.field_range_pair** @current_rp to i64*), align 8, !dbg !1098, !tbaa !770
  br label %55, !dbg !1099

; <label>:55:                                     ; preds = %53, %107, %110
  %56 = phi i64 [ %75, %110 ], [ %75, %107 ], [ 0, %53 ]
  %57 = phi i8 [ %100, %110 ], [ %100, %107 ], [ 0, %53 ]
  br label %21, !dbg !1066

; <label>:58:                                     ; preds = %35
  %59 = icmp eq i32 %36, -1, !dbg !1100
  br i1 %59, label %60, label %74, !dbg !1102

; <label>:60:                                     ; preds = %58
  call void @llvm.dbg.value(metadata i64 %25, metadata !1057, metadata !DIExpression()) #12, !dbg !1063
  %61 = icmp eq i64 %25, 0, !dbg !1103
  br i1 %61, label %394, label %62, !dbg !1106

; <label>:62:                                     ; preds = %60
  call void @llvm.dbg.value(metadata i32 %38, metadata !1087, metadata !DIExpression()) #12, !dbg !1107
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1109, !tbaa !770
  %64 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %63, i64 0, i32 5, !dbg !1109
  %65 = load i8*, i8** %64, align 8, !dbg !1109, !tbaa !1095
  %66 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %63, i64 0, i32 6, !dbg !1109
  %67 = load i8*, i8** %66, align 8, !dbg !1109, !tbaa !1096
  %68 = icmp ult i8* %65, %67, !dbg !1109
  br i1 %68, label %71, label %69, !dbg !1109, !prof !1082

; <label>:69:                                     ; preds = %62
  %70 = tail call i32 @__overflow(%struct._IO_FILE* %63, i32 %38) #12, !dbg !1109
  br label %394, !dbg !1109

; <label>:71:                                     ; preds = %62
  %72 = trunc i32 %38 to i8, !dbg !1109
  %73 = getelementptr inbounds i8, i8* %65, i64 1, !dbg !1109
  store i8* %73, i8** %64, align 8, !dbg !1109, !tbaa !1095
  store i8 %72, i8* %65, align 1, !dbg !1109, !tbaa !838
  br label %394, !dbg !1109

; <label>:74:                                     ; preds = %58
  %75 = add i64 %25, 1, !dbg !1110
  %76 = load %struct.field_range_pair*, %struct.field_range_pair** @current_rp, align 8, !dbg !1118, !tbaa !770
  %77 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %76, i64 0, i32 1, !dbg !1120
  %78 = load i64, i64* %77, align 8, !dbg !1120, !tbaa !1121
  %79 = icmp ugt i64 %75, %78, !dbg !1123
  br i1 %79, label %80, label %82, !dbg !1124

; <label>:80:                                     ; preds = %74
  %81 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %76, i64 1, !dbg !1125
  store %struct.field_range_pair* %81, %struct.field_range_pair** @current_rp, align 8, !dbg !1125, !tbaa !770
  br label %82, !dbg !1126

; <label>:82:                                     ; preds = %80, %74
  %83 = phi %struct.field_range_pair* [ %76, %74 ], [ %81, %80 ], !dbg !1127
  call void @llvm.dbg.value(metadata i64 %75, metadata !1057, metadata !DIExpression()) #12, !dbg !1063
  call void @llvm.dbg.value(metadata i64 %75, metadata !1132, metadata !DIExpression()) #12, !dbg !1135
  %84 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %83, i64 0, i32 0, !dbg !1136
  %85 = load i64, i64* %84, align 8, !dbg !1136, !tbaa !1137
  %86 = icmp ugt i64 %85, %75, !dbg !1138
  br i1 %86, label %24, label %87, !dbg !1139

; <label>:87:                                     ; preds = %82
  call void @llvm.dbg.value(metadata i32 %36, metadata !1059, metadata !DIExpression()) #12, !dbg !1083
  call void @llvm.dbg.value(metadata i32 %36, metadata !1059, metadata !DIExpression()) #12, !dbg !1083
  %88 = load i1, i1* @output_delimiter_specified, align 1
  br i1 %88, label %89, label %99, !dbg !1140

; <label>:89:                                     ; preds = %87
  %90 = and i8 %23, 1, !dbg !1142
  %91 = icmp ne i8 %90, 0, !dbg !1142
  %92 = icmp eq i64 %85, %75, !dbg !1146
  %93 = and i1 %91, %92, !dbg !1151
  call void @llvm.dbg.value(metadata i64 %75, metadata !1057, metadata !DIExpression()) #12, !dbg !1063
  call void @llvm.dbg.value(metadata i64 %75, metadata !1149, metadata !DIExpression()) #12, !dbg !1152
  br i1 %93, label %94, label %99, !dbg !1151

; <label>:94:                                     ; preds = %89
  %95 = load i8*, i8** @output_delimiter_string, align 8, !dbg !1153, !tbaa !770
  %96 = load i64, i64* @output_delimiter_length, align 8, !dbg !1153, !tbaa !881
  %97 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1153, !tbaa !770
  %98 = tail call i64 @fwrite_unlocked(i8* %95, i64 1, i64 %96, %struct._IO_FILE* %97) #12, !dbg !1153
  br label %99, !dbg !1155

; <label>:99:                                     ; preds = %94, %89, %87
  %100 = phi i8 [ %23, %87 ], [ 1, %89 ], [ 1, %94 ], !dbg !1156
  call void @llvm.dbg.value(metadata i8 %100, metadata !1058, metadata !DIExpression()) #12, !dbg !1064
  call void @llvm.dbg.value(metadata i32 %36, metadata !1087, metadata !DIExpression()) #12, !dbg !1157
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1159, !tbaa !770
  %102 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %101, i64 0, i32 5, !dbg !1159
  %103 = load i8*, i8** %102, align 8, !dbg !1159, !tbaa !1095
  %104 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %101, i64 0, i32 6, !dbg !1159
  %105 = load i8*, i8** %104, align 8, !dbg !1159, !tbaa !1096
  %106 = icmp ult i8* %103, %105, !dbg !1159
  br i1 %106, label %110, label %107, !dbg !1159, !prof !1082

; <label>:107:                                    ; preds = %99
  %108 = and i32 %36, 255, !dbg !1159
  %109 = tail call i32 @__overflow(%struct._IO_FILE* %101, i32 %108) #12, !dbg !1159
  br label %55, !dbg !1159

; <label>:110:                                    ; preds = %99
  %111 = trunc i32 %36 to i8, !dbg !1159
  %112 = getelementptr inbounds i8, i8* %103, i64 1, !dbg !1159
  store i8* %112, i8** %102, align 8, !dbg !1159, !tbaa !1095
  store i8 %111, i8* %103, align 1, !dbg !1159, !tbaa !838
  br label %55, !dbg !1159

; <label>:113:                                    ; preds = %13
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %14, metadata !1160, metadata !DIExpression()) #12, !dbg !1184
  call void @llvm.dbg.value(metadata i64 1, metadata !1164, metadata !DIExpression()) #12, !dbg !1186
  call void @llvm.dbg.value(metadata i8 0, metadata !1165, metadata !DIExpression()) #12, !dbg !1187
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %14, metadata !1072, metadata !DIExpression()) #12, !dbg !1188
  %114 = load i8*, i8** %18, align 8, !dbg !1190, !tbaa !1078
  %115 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %14, i64 0, i32 2, !dbg !1190
  %116 = load i8*, i8** %115, align 8, !dbg !1190, !tbaa !1081
  %117 = icmp ult i8* %114, %116, !dbg !1190
  br i1 %117, label %118, label %122, !dbg !1190, !prof !1082

; <label>:118:                                    ; preds = %113
  %119 = getelementptr inbounds i8, i8* %114, i64 1, !dbg !1190
  store i8* %119, i8** %18, align 8, !dbg !1190, !tbaa !1078
  %120 = load i8, i8* %114, align 1, !dbg !1190, !tbaa !838
  %121 = zext i8 %120 to i32, !dbg !1190
  call void @llvm.dbg.value(metadata i32 %123, metadata !1163, metadata !DIExpression()) #12, !dbg !1191
  br label %125, !dbg !1192

; <label>:122:                                    ; preds = %113
  %123 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %14) #12, !dbg !1190
  call void @llvm.dbg.value(metadata i32 %123, metadata !1163, metadata !DIExpression()) #12, !dbg !1191
  %124 = icmp eq i32 %123, -1, !dbg !1193
  br i1 %124, label %394, label %125, !dbg !1192

; <label>:125:                                    ; preds = %122, %118
  %126 = phi i32 [ %121, %118 ], [ %123, %122 ]
  %127 = tail call i32 @ungetc(i32 %126, %struct._IO_FILE* nonnull %14) #12, !dbg !1195
  call void @llvm.dbg.value(metadata i32 0, metadata !1163, metadata !DIExpression()) #12, !dbg !1191
  %128 = load i1, i1* @suppress_non_delimited, align 1
  call void @llvm.dbg.value(metadata i64 1, metadata !1132, metadata !DIExpression()) #12, !dbg !1196
  %129 = load %struct.field_range_pair*, %struct.field_range_pair** @current_rp, align 8, !dbg !1198, !tbaa !770
  %130 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %129, i64 0, i32 0, !dbg !1199
  %131 = load i64, i64* %130, align 8, !dbg !1199, !tbaa !1137
  %132 = icmp ugt i64 %131, 1, !dbg !1200
  %133 = xor i1 %128, %132, !dbg !1201
  %134 = xor i1 %133, true
  br label %135, !dbg !1202

; <label>:135:                                    ; preds = %390, %125
  %136 = phi i64 [ 1, %125 ], [ %391, %390 ]
  %137 = phi i8 [ 0, %125 ], [ %392, %390 ]
  %138 = phi i32 [ 0, %125 ], [ %393, %390 ]
  call void @llvm.dbg.value(metadata i32 %138, metadata !1163, metadata !DIExpression()) #12, !dbg !1191
  call void @llvm.dbg.value(metadata i8 %137, metadata !1165, metadata !DIExpression()) #12, !dbg !1187
  call void @llvm.dbg.value(metadata i64 %136, metadata !1164, metadata !DIExpression()) #12, !dbg !1186
  %139 = icmp ne i64 %136, 1, !dbg !1203
  %140 = or i1 %139, %134, !dbg !1204
  br i1 %140, label %141, label %143, !dbg !1204

; <label>:141:                                    ; preds = %135
  %142 = load %struct.field_range_pair*, %struct.field_range_pair** @current_rp, align 8, !dbg !1205, !tbaa !770
  br label %234, !dbg !1204

; <label>:143:                                    ; preds = %135
  %144 = load i8, i8* @delim, align 1, !dbg !1208, !tbaa !838
  %145 = zext i8 %144 to i32, !dbg !1208
  %146 = load i1, i1* @line_delim, align 1
  %147 = select i1 %146, i32 0, i32 10, !dbg !1209
  %148 = tail call i64 @getndelim2(i8** nonnull @field_1_buffer, i64* nonnull @field_1_bufsize, i64 0, i64 -1, i32 %145, i32 %147, %struct._IO_FILE* %14) #12, !dbg !1210
  call void @llvm.dbg.value(metadata i64 %148, metadata !1167, metadata !DIExpression()) #12, !dbg !1211
  %149 = icmp slt i64 %148, 0, !dbg !1212
  br i1 %149, label %150, label %157, !dbg !1214

; <label>:150:                                    ; preds = %143, %227
  %151 = load i8*, i8** @field_1_buffer, align 8, !dbg !1215, !tbaa !770
  tail call void @free(i8* %151) #12, !dbg !1217
  store i8* null, i8** @field_1_buffer, align 8, !dbg !1218, !tbaa !770
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %14, metadata !1219, metadata !DIExpression()) #12, !dbg !1222
  %152 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %14, i64 0, i32 0, !dbg !1225
  %153 = load i32, i32* %152, align 8, !dbg !1225, !tbaa !1226
  %154 = and i32 %153, 48, !dbg !1227
  %155 = icmp eq i32 %154, 0, !dbg !1227
  br i1 %155, label %156, label %394, !dbg !1227

; <label>:156:                                    ; preds = %150
  tail call void @xalloc_die() #15, !dbg !1228
  unreachable, !dbg !1228

; <label>:157:                                    ; preds = %143, %227
  %158 = phi i64 [ %232, %227 ], [ %148, %143 ]
  call void @llvm.dbg.value(metadata i64 %158, metadata !1174, metadata !DIExpression()) #12, !dbg !1229
  %159 = icmp eq i64 %158, 0, !dbg !1230
  br i1 %159, label %160, label %161, !dbg !1233

; <label>:160:                                    ; preds = %157
  tail call void @__assert_fail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.56, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.57, i64 0, i64 0), i32 329, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__PRETTY_FUNCTION__.cut_fields, i64 0, i64 0)) #15, !dbg !1230
  unreachable, !dbg !1230

; <label>:161:                                    ; preds = %157
  call void @llvm.dbg.value(metadata i32 0, metadata !1163, metadata !DIExpression()) #12, !dbg !1191
  %162 = load i8*, i8** @field_1_buffer, align 8, !dbg !1234, !tbaa !770
  %163 = add i64 %158, -1, !dbg !1236
  %164 = getelementptr inbounds i8, i8* %162, i64 %163, !dbg !1234
  %165 = load i8, i8* %164, align 1, !dbg !1234, !tbaa !838
  %166 = load i8, i8* @delim, align 1, !dbg !1237, !tbaa !838
  %167 = icmp eq i8 %165, %166, !dbg !1238
  br i1 %167, label %192, label %168, !dbg !1239

; <label>:168:                                    ; preds = %161
  %169 = load i1, i1* @suppress_non_delimited, align 1
  br i1 %169, label %227, label %170, !dbg !1240, !llvm.loop !1242

; <label>:170:                                    ; preds = %168
  %171 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1245, !tbaa !770
  %172 = tail call i64 @fwrite_unlocked(i8* %162, i64 1, i64 %158, %struct._IO_FILE* %171) #12, !dbg !1245
  %173 = load i8*, i8** @field_1_buffer, align 8, !dbg !1248, !tbaa !770
  %174 = getelementptr inbounds i8, i8* %173, i64 %163, !dbg !1248
  %175 = load i8, i8* %174, align 1, !dbg !1248, !tbaa !838
  %176 = sext i8 %175 to i32, !dbg !1248
  %177 = load i1, i1* @line_delim, align 1
  %178 = select i1 %177, i32 0, i32 10, !dbg !1250
  %179 = icmp eq i32 %178, %176, !dbg !1251
  br i1 %179, label %227, label %180, !dbg !1252, !llvm.loop !1242

; <label>:180:                                    ; preds = %170
  call void @llvm.dbg.value(metadata i32 %178, metadata !1087, metadata !DIExpression()) #12, !dbg !1253
  %181 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1255, !tbaa !770
  %182 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %181, i64 0, i32 5, !dbg !1255
  %183 = load i8*, i8** %182, align 8, !dbg !1255, !tbaa !1095
  %184 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %181, i64 0, i32 6, !dbg !1255
  %185 = load i8*, i8** %184, align 8, !dbg !1255, !tbaa !1096
  %186 = icmp ult i8* %183, %185, !dbg !1255
  br i1 %186, label %189, label %187, !dbg !1255, !prof !1082

; <label>:187:                                    ; preds = %180
  %188 = tail call i32 @__overflow(%struct._IO_FILE* %181, i32 %178) #12, !dbg !1255
  br label %227, !dbg !1255, !llvm.loop !1242

; <label>:189:                                    ; preds = %180
  %190 = trunc i32 %178 to i8, !dbg !1255
  %191 = getelementptr inbounds i8, i8* %183, i64 1, !dbg !1255
  store i8* %191, i8** %182, align 8, !dbg !1255, !tbaa !1095
  store i8 %190, i8* %183, align 1, !dbg !1255, !tbaa !838
  br label %227, !dbg !1255, !llvm.loop !1242

; <label>:192:                                    ; preds = %161
  call void @llvm.dbg.value(metadata i64 1, metadata !1132, metadata !DIExpression()) #12, !dbg !1256
  %193 = load %struct.field_range_pair*, %struct.field_range_pair** @current_rp, align 8, !dbg !1258, !tbaa !770
  %194 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %193, i64 0, i32 0, !dbg !1259
  %195 = load i64, i64* %194, align 8, !dbg !1259, !tbaa !1137
  %196 = icmp ult i64 %195, 2, !dbg !1260
  br i1 %196, label %197, label %219, !dbg !1261

; <label>:197:                                    ; preds = %192
  %198 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1262, !tbaa !770
  %199 = tail call i64 @fwrite_unlocked(i8* %162, i64 1, i64 %163, %struct._IO_FILE* %198) #12, !dbg !1262
  %200 = load i8, i8* @delim, align 1, !dbg !1263, !tbaa !838
  %201 = zext i8 %200 to i32, !dbg !1263
  %202 = load i1, i1* @line_delim, align 1
  %203 = select i1 %202, i32 0, i32 10, !dbg !1264
  %204 = icmp eq i32 %203, %201, !dbg !1265
  br i1 %204, label %205, label %219, !dbg !1266

; <label>:205:                                    ; preds = %197
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %14, metadata !1072, metadata !DIExpression()) #12, !dbg !1267
  %206 = load i8*, i8** %18, align 8, !dbg !1269, !tbaa !1078
  %207 = load i8*, i8** %115, align 8, !dbg !1269, !tbaa !1081
  %208 = icmp ult i8* %206, %207, !dbg !1269
  br i1 %208, label %209, label %213, !dbg !1269, !prof !1082

; <label>:209:                                    ; preds = %205
  %210 = getelementptr inbounds i8, i8* %206, i64 1, !dbg !1269
  store i8* %210, i8** %18, align 8, !dbg !1269, !tbaa !1078
  %211 = load i8, i8* %206, align 1, !dbg !1269, !tbaa !838
  %212 = zext i8 %211 to i32, !dbg !1269
  call void @llvm.dbg.value(metadata i32 %214, metadata !1175, metadata !DIExpression()) #12, !dbg !1270
  br label %216, !dbg !1271

; <label>:213:                                    ; preds = %205
  %214 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %14) #12, !dbg !1269
  call void @llvm.dbg.value(metadata i32 %214, metadata !1175, metadata !DIExpression()) #12, !dbg !1270
  %215 = icmp eq i32 %214, -1, !dbg !1272
  br i1 %215, label %219, label %216, !dbg !1271

; <label>:216:                                    ; preds = %213, %209
  %217 = phi i32 [ %212, %209 ], [ %214, %213 ]
  %218 = tail call i32 @ungetc(i32 %217, %struct._IO_FILE* nonnull %14) #12, !dbg !1274
  call void @llvm.dbg.value(metadata i8 1, metadata !1165, metadata !DIExpression()) #12, !dbg !1187
  br label %219, !dbg !1276

; <label>:219:                                    ; preds = %216, %213, %197, %192
  %220 = phi i8 [ %137, %192 ], [ 1, %216 ], [ %137, %213 ], [ 1, %197 ], !dbg !1277
  call void @llvm.dbg.value(metadata i8 %220, metadata !1165, metadata !DIExpression()) #12, !dbg !1187
  %221 = load %struct.field_range_pair*, %struct.field_range_pair** @current_rp, align 8, !dbg !1278, !tbaa !770
  %222 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %221, i64 0, i32 1, !dbg !1280
  %223 = load i64, i64* %222, align 8, !dbg !1280, !tbaa !1121
  %224 = icmp ult i64 %223, 2, !dbg !1281
  br i1 %224, label %225, label %234, !dbg !1282

; <label>:225:                                    ; preds = %219
  %226 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %221, i64 1, !dbg !1283
  store %struct.field_range_pair* %226, %struct.field_range_pair** @current_rp, align 8, !dbg !1283, !tbaa !770
  br label %234, !dbg !1284

; <label>:227:                                    ; preds = %189, %187, %170, %168
  call void @llvm.dbg.value(metadata i8 %137, metadata !1165, metadata !DIExpression()) #12, !dbg !1187
  call void @llvm.dbg.value(metadata i8 %137, metadata !1165, metadata !DIExpression()) #12, !dbg !1187
  call void @llvm.dbg.value(metadata i64 %136, metadata !1164, metadata !DIExpression()) #12, !dbg !1186
  %228 = load i8, i8* @delim, align 1, !dbg !1208, !tbaa !838
  %229 = zext i8 %228 to i32, !dbg !1208
  %230 = load i1, i1* @line_delim, align 1
  %231 = select i1 %230, i32 0, i32 10, !dbg !1209
  %232 = tail call i64 @getndelim2(i8** nonnull @field_1_buffer, i64* nonnull @field_1_bufsize, i64 0, i64 -1, i32 %229, i32 %231, %struct._IO_FILE* %14) #12, !dbg !1210
  call void @llvm.dbg.value(metadata i64 %232, metadata !1167, metadata !DIExpression()) #12, !dbg !1211
  %233 = icmp slt i64 %232, 0, !dbg !1212
  br i1 %233, label %150, label %157, !dbg !1214

; <label>:234:                                    ; preds = %225, %219, %141
  %235 = phi %struct.field_range_pair* [ %221, %219 ], [ %226, %225 ], [ %142, %141 ], !dbg !1205
  %236 = phi i64 [ 2, %219 ], [ 2, %225 ], [ %136, %141 ], !dbg !1186
  %237 = phi i8 [ %220, %219 ], [ %220, %225 ], [ %137, %141 ], !dbg !1187
  %238 = phi i32 [ 0, %219 ], [ 0, %225 ], [ %138, %141 ], !dbg !1285
  call void @llvm.dbg.value(metadata i32 %238, metadata !1163, metadata !DIExpression()) #12, !dbg !1191
  call void @llvm.dbg.value(metadata i8 %237, metadata !1165, metadata !DIExpression()) #12, !dbg !1187
  call void @llvm.dbg.value(metadata i32 %238, metadata !1180, metadata !DIExpression()) #12, !dbg !1286
  call void @llvm.dbg.value(metadata i64 %236, metadata !1164, metadata !DIExpression()) #12, !dbg !1186
  call void @llvm.dbg.value(metadata i64 %236, metadata !1132, metadata !DIExpression()) #12, !dbg !1287
  %239 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %235, i64 0, i32 0, !dbg !1288
  %240 = load i64, i64* %239, align 8, !dbg !1288, !tbaa !1137
  %241 = icmp ugt i64 %240, %236, !dbg !1289
  br i1 %241, label %287, label %242, !dbg !1290

; <label>:242:                                    ; preds = %234
  %243 = and i8 %237, 1, !dbg !1291
  %244 = icmp eq i8 %243, 0, !dbg !1291
  br i1 %244, label %250, label %245, !dbg !1294

; <label>:245:                                    ; preds = %242
  %246 = load i8*, i8** @output_delimiter_string, align 8, !dbg !1295, !tbaa !770
  %247 = load i64, i64* @output_delimiter_length, align 8, !dbg !1295, !tbaa !881
  %248 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1295, !tbaa !770
  %249 = tail call i64 @fwrite_unlocked(i8* %246, i64 1, i64 %247, %struct._IO_FILE* %248) #12, !dbg !1295
  br label %250, !dbg !1297

; <label>:250:                                    ; preds = %245, %242
  br label %251, !dbg !1298

; <label>:251:                                    ; preds = %286, %250
  %252 = phi i32 [ %238, %250 ], [ %263, %286 ], !dbg !1300
  call void @llvm.dbg.value(metadata i32 %252, metadata !1180, metadata !DIExpression()) #12, !dbg !1286
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %14, metadata !1072, metadata !DIExpression()) #12, !dbg !1302
  %253 = load i8*, i8** %18, align 8, !dbg !1298, !tbaa !1078
  %254 = load i8*, i8** %115, align 8, !dbg !1298, !tbaa !1081
  %255 = icmp ult i8* %253, %254, !dbg !1298
  br i1 %255, label %258, label %256, !dbg !1298, !prof !1082

; <label>:256:                                    ; preds = %251
  %257 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %14) #12, !dbg !1298
  br label %262, !dbg !1298

; <label>:258:                                    ; preds = %251
  %259 = getelementptr inbounds i8, i8* %253, i64 1, !dbg !1298
  store i8* %259, i8** %18, align 8, !dbg !1298, !tbaa !1078
  %260 = load i8, i8* %253, align 1, !dbg !1298, !tbaa !838
  %261 = zext i8 %260 to i32, !dbg !1298
  br label %262, !dbg !1298

; <label>:262:                                    ; preds = %258, %256
  %263 = phi i32 [ %257, %256 ], [ %261, %258 ], !dbg !1298
  call void @llvm.dbg.value(metadata i32 %263, metadata !1163, metadata !DIExpression()) #12, !dbg !1191
  %264 = load i8, i8* @delim, align 1, !dbg !1303, !tbaa !838
  %265 = zext i8 %264 to i32, !dbg !1303
  %266 = icmp eq i32 %263, %265, !dbg !1304
  br i1 %266, label %309, label %267, !dbg !1305

; <label>:267:                                    ; preds = %262
  %268 = load i1, i1* @line_delim, align 1
  %269 = select i1 %268, i32 0, i32 10, !dbg !1306
  %270 = icmp ne i32 %263, %269, !dbg !1307
  %271 = icmp ne i32 %263, -1, !dbg !1308
  %272 = and i1 %271, %270, !dbg !1309
  br i1 %272, label %273, label %309, !dbg !1309

; <label>:273:                                    ; preds = %267
  call void @llvm.dbg.value(metadata i32 %263, metadata !1087, metadata !DIExpression()) #12, !dbg !1310
  %274 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1312, !tbaa !770
  %275 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %274, i64 0, i32 5, !dbg !1312
  %276 = load i8*, i8** %275, align 8, !dbg !1312, !tbaa !1095
  %277 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %274, i64 0, i32 6, !dbg !1312
  %278 = load i8*, i8** %277, align 8, !dbg !1312, !tbaa !1096
  %279 = icmp ult i8* %276, %278, !dbg !1312
  br i1 %279, label %283, label %280, !dbg !1312, !prof !1082

; <label>:280:                                    ; preds = %273
  %281 = and i32 %263, 255, !dbg !1312
  %282 = tail call i32 @__overflow(%struct._IO_FILE* %274, i32 %281) #12, !dbg !1312
  br label %286, !dbg !1312

; <label>:283:                                    ; preds = %273
  %284 = trunc i32 %263 to i8, !dbg !1312
  %285 = getelementptr inbounds i8, i8* %276, i64 1, !dbg !1312
  store i8* %285, i8** %275, align 8, !dbg !1312, !tbaa !1095
  store i8 %284, i8* %276, align 1, !dbg !1312, !tbaa !838
  br label %286, !dbg !1312

; <label>:286:                                    ; preds = %283, %280
  br label %251, !dbg !1286, !llvm.loop !1313

; <label>:287:                                    ; preds = %234, %303
  %288 = phi i32 [ %299, %303 ], [ %238, %234 ], !dbg !1316
  call void @llvm.dbg.value(metadata i32 %288, metadata !1180, metadata !DIExpression()) #12, !dbg !1286
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %14, metadata !1072, metadata !DIExpression()) #12, !dbg !1319
  %289 = load i8*, i8** %18, align 8, !dbg !1321, !tbaa !1078
  %290 = load i8*, i8** %115, align 8, !dbg !1321, !tbaa !1081
  %291 = icmp ult i8* %289, %290, !dbg !1321
  br i1 %291, label %294, label %292, !dbg !1321, !prof !1082

; <label>:292:                                    ; preds = %287
  %293 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %14) #12, !dbg !1321
  br label %298, !dbg !1321

; <label>:294:                                    ; preds = %287
  %295 = getelementptr inbounds i8, i8* %289, i64 1, !dbg !1321
  store i8* %295, i8** %18, align 8, !dbg !1321, !tbaa !1078
  %296 = load i8, i8* %289, align 1, !dbg !1321, !tbaa !838
  %297 = zext i8 %296 to i32, !dbg !1321
  br label %298, !dbg !1321

; <label>:298:                                    ; preds = %294, %292
  %299 = phi i32 [ %293, %292 ], [ %297, %294 ], !dbg !1321
  call void @llvm.dbg.value(metadata i32 %299, metadata !1163, metadata !DIExpression()) #12, !dbg !1191
  %300 = load i8, i8* @delim, align 1, !dbg !1322, !tbaa !838
  %301 = zext i8 %300 to i32, !dbg !1322
  %302 = icmp eq i32 %299, %301, !dbg !1323
  br i1 %302, label %309, label %303, !dbg !1324

; <label>:303:                                    ; preds = %298
  %304 = load i1, i1* @line_delim, align 1
  %305 = select i1 %304, i32 0, i32 10, !dbg !1325
  %306 = icmp ne i32 %299, %305, !dbg !1326
  %307 = icmp ne i32 %299, -1, !dbg !1327
  %308 = and i1 %307, %306, !dbg !1328
  br i1 %308, label %287, label %309, !dbg !1328, !llvm.loop !1329

; <label>:309:                                    ; preds = %262, %267, %298, %303
  %310 = phi i8 [ %300, %303 ], [ %300, %298 ], [ %264, %267 ], [ %264, %262 ]
  %311 = phi i8 [ %237, %303 ], [ %237, %298 ], [ 1, %267 ], [ 1, %262 ], !dbg !1277
  %312 = phi i32 [ %288, %303 ], [ %288, %298 ], [ %252, %267 ], [ %252, %262 ], !dbg !1286
  %313 = phi i32 [ %299, %303 ], [ %299, %298 ], [ %263, %267 ], [ %263, %262 ], !dbg !1332
  %314 = zext i8 %310 to i32, !dbg !1333
  call void @llvm.dbg.value(metadata i32 %313, metadata !1163, metadata !DIExpression()) #12, !dbg !1191
  call void @llvm.dbg.value(metadata i32 %312, metadata !1180, metadata !DIExpression()) #12, !dbg !1286
  call void @llvm.dbg.value(metadata i8 %311, metadata !1165, metadata !DIExpression()) #12, !dbg !1187
  %315 = load i1, i1* @line_delim, align 1
  %316 = select i1 %315, i32 0, i32 10, !dbg !1334
  %317 = icmp eq i32 %316, %314, !dbg !1335
  %318 = icmp eq i32 %313, %314, !dbg !1336
  %319 = and i1 %318, %317, !dbg !1337
  br i1 %319, label %320, label %341, !dbg !1337

; <label>:320:                                    ; preds = %309
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %14, metadata !1072, metadata !DIExpression()) #12, !dbg !1338
  %321 = load i8*, i8** %18, align 8, !dbg !1340, !tbaa !1078
  %322 = load i8*, i8** %115, align 8, !dbg !1340, !tbaa !1081
  %323 = icmp ult i8* %321, %322, !dbg !1340
  br i1 %323, label %324, label %328, !dbg !1340, !prof !1082

; <label>:324:                                    ; preds = %320
  %325 = getelementptr inbounds i8, i8* %321, i64 1, !dbg !1340
  store i8* %325, i8** %18, align 8, !dbg !1340, !tbaa !1078
  %326 = load i8, i8* %321, align 1, !dbg !1340, !tbaa !838
  %327 = zext i8 %326 to i32, !dbg !1340
  call void @llvm.dbg.value(metadata i32 %329, metadata !1181, metadata !DIExpression()) #12, !dbg !1341
  br label %336, !dbg !1342

; <label>:328:                                    ; preds = %320
  %329 = tail call i32 @__uflow(%struct._IO_FILE* nonnull %14) #12, !dbg !1340
  call void @llvm.dbg.value(metadata i32 %329, metadata !1181, metadata !DIExpression()) #12, !dbg !1341
  %330 = icmp eq i32 %329, -1, !dbg !1343
  br i1 %330, label %331, label %336, !dbg !1342

; <label>:331:                                    ; preds = %328
  call void @llvm.dbg.value(metadata i32 %313, metadata !1163, metadata !DIExpression()) #12, !dbg !1191
  %332 = load i8, i8* @delim, align 1, !dbg !1345, !tbaa !838
  %333 = zext i8 %332 to i32, !dbg !1345
  %334 = load i1, i1* @line_delim, align 1
  %335 = select i1 %334, i32 0, i32 10, !dbg !1347
  br label %358, !dbg !1349

; <label>:336:                                    ; preds = %328, %324
  %337 = phi i32 [ %327, %324 ], [ %329, %328 ]
  %338 = tail call i32 @ungetc(i32 %337, %struct._IO_FILE* nonnull %14) #12, !dbg !1350
  %339 = load i8, i8* @delim, align 1, !dbg !1345, !tbaa !838
  %340 = zext i8 %339 to i32, !dbg !1345
  br label %341, !dbg !1350

; <label>:341:                                    ; preds = %336, %309
  %342 = phi i32 [ %340, %336 ], [ %314, %309 ], !dbg !1345
  call void @llvm.dbg.value(metadata i32 %313, metadata !1163, metadata !DIExpression()) #12, !dbg !1191
  %343 = icmp eq i32 %313, %342, !dbg !1351
  br i1 %343, label %344, label %352, !dbg !1352

; <label>:344:                                    ; preds = %341
  %345 = add i64 %236, 1, !dbg !1353
  %346 = load %struct.field_range_pair*, %struct.field_range_pair** @current_rp, align 8, !dbg !1355, !tbaa !770
  %347 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %346, i64 0, i32 1, !dbg !1356
  %348 = load i64, i64* %347, align 8, !dbg !1356, !tbaa !1121
  %349 = icmp ugt i64 %345, %348, !dbg !1357
  br i1 %349, label %350, label %390, !dbg !1358

; <label>:350:                                    ; preds = %344
  %351 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %346, i64 1, !dbg !1359
  store %struct.field_range_pair* %351, %struct.field_range_pair** @current_rp, align 8, !dbg !1359, !tbaa !770
  br label %390, !dbg !1360

; <label>:352:                                    ; preds = %341
  %353 = load i1, i1* @line_delim, align 1
  %354 = select i1 %353, i32 0, i32 10, !dbg !1347
  %355 = icmp eq i32 %313, %354, !dbg !1361
  %356 = icmp eq i32 %313, -1, !dbg !1362
  %357 = or i1 %356, %355, !dbg !1349
  br i1 %357, label %358, label %390, !dbg !1349

; <label>:358:                                    ; preds = %352, %331
  %359 = phi i1 [ true, %331 ], [ %356, %352 ]
  %360 = phi i1 [ false, %331 ], [ %355, %352 ]
  %361 = phi i32 [ %335, %331 ], [ %354, %352 ]
  %362 = phi i32 [ -1, %331 ], [ %313, %352 ]
  %363 = phi i32 [ %333, %331 ], [ %342, %352 ]
  %364 = and i8 %311, 1, !dbg !1363
  %365 = icmp eq i8 %364, 0, !dbg !1363
  br i1 %365, label %366, label %370, !dbg !1366

; <label>:366:                                    ; preds = %358
  %367 = load i1, i1* @suppress_non_delimited, align 1
  call void @llvm.dbg.value(metadata i64 %236, metadata !1164, metadata !DIExpression()) #12, !dbg !1186
  %368 = icmp eq i64 %236, 1, !dbg !1367
  %369 = and i1 %368, %367, !dbg !1368
  br i1 %369, label %387, label %370, !dbg !1368

; <label>:370:                                    ; preds = %366, %358
  %371 = icmp ne i32 %312, %361, !dbg !1369
  %372 = or i1 %360, %371, !dbg !1372
  %373 = icmp eq i32 %361, %363, !dbg !1373
  %374 = or i1 %372, %373, !dbg !1372
  br i1 %374, label %375, label %387, !dbg !1372

; <label>:375:                                    ; preds = %370
  call void @llvm.dbg.value(metadata i32 %354, metadata !1087, metadata !DIExpression()) #12, !dbg !1374
  %376 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1376, !tbaa !770
  %377 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %376, i64 0, i32 5, !dbg !1376
  %378 = load i8*, i8** %377, align 8, !dbg !1376, !tbaa !1095
  %379 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %376, i64 0, i32 6, !dbg !1376
  %380 = load i8*, i8** %379, align 8, !dbg !1376, !tbaa !1096
  %381 = icmp ult i8* %378, %380, !dbg !1376
  br i1 %381, label %384, label %382, !dbg !1376, !prof !1082

; <label>:382:                                    ; preds = %375
  %383 = tail call i32 @__overflow(%struct._IO_FILE* %376, i32 %361) #12, !dbg !1376
  br label %387, !dbg !1376

; <label>:384:                                    ; preds = %375
  %385 = trunc i32 %361 to i8, !dbg !1376
  %386 = getelementptr inbounds i8, i8* %378, i64 1, !dbg !1376
  store i8* %386, i8** %377, align 8, !dbg !1376, !tbaa !1095
  store i8 %385, i8* %378, align 1, !dbg !1376, !tbaa !838
  br label %387, !dbg !1376

; <label>:387:                                    ; preds = %384, %382, %370, %366
  br i1 %359, label %394, label %388, !dbg !1377

; <label>:388:                                    ; preds = %387
  call void @llvm.dbg.value(metadata i64 1, metadata !1164, metadata !DIExpression()) #12, !dbg !1186
  %389 = load i64, i64* bitcast (%struct.field_range_pair** @frp to i64*), align 8, !dbg !1378, !tbaa !770
  store i64 %389, i64* bitcast (%struct.field_range_pair** @current_rp to i64*), align 8, !dbg !1379, !tbaa !770
  call void @llvm.dbg.value(metadata i8 0, metadata !1165, metadata !DIExpression()) #12, !dbg !1187
  br label %390, !dbg !1380

; <label>:390:                                    ; preds = %388, %352, %350, %344
  %391 = phi i64 [ 1, %388 ], [ %236, %352 ], [ %345, %344 ], [ %345, %350 ]
  %392 = phi i8 [ 0, %388 ], [ %311, %352 ], [ %311, %344 ], [ %311, %350 ]
  %393 = phi i32 [ %362, %388 ], [ %313, %352 ], [ %313, %344 ], [ %313, %350 ]
  br label %135, !dbg !1191

; <label>:394:                                    ; preds = %387, %60, %69, %71, %122, %150
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %14, metadata !1219, metadata !DIExpression()), !dbg !1381
  %395 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %14, i64 0, i32 0, !dbg !1384
  %396 = load i32, i32* %395, align 8, !dbg !1384, !tbaa !1226
  %397 = and i32 %396, 32, !dbg !1384
  %398 = icmp eq i32 %397, 0, !dbg !1385
  br i1 %398, label %403, label %399, !dbg !1386

; <label>:399:                                    ; preds = %394
  %400 = tail call i32* @__errno_location() #17, !dbg !1387
  %401 = load i32, i32* %400, align 4, !dbg !1387, !tbaa !930
  %402 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #12, !dbg !1389
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %401, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), i8* %402) #12, !dbg !1390
  br label %414, !dbg !1391

; <label>:403:                                    ; preds = %394
  %404 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0)) #14, !dbg !1392
  %405 = icmp eq i32 %404, 0, !dbg !1392
  br i1 %405, label %406, label %407, !dbg !1394

; <label>:406:                                    ; preds = %403
  tail call void @clearerr_unlocked(%struct._IO_FILE* nonnull %14) #12, !dbg !1395
  br label %414, !dbg !1395

; <label>:407:                                    ; preds = %403
  %408 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %14) #12, !dbg !1396
  %409 = icmp eq i32 %408, -1, !dbg !1398
  br i1 %409, label %410, label %414, !dbg !1399

; <label>:410:                                    ; preds = %407
  %411 = tail call i32* @__errno_location() #17, !dbg !1400
  %412 = load i32, i32* %411, align 4, !dbg !1400, !tbaa !930
  %413 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #12, !dbg !1402
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %412, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0), i8* %413) #12, !dbg !1403
  br label %414, !dbg !1404

; <label>:414:                                    ; preds = %406, %407, %410, %399, %9
  %415 = phi i1 [ false, %399 ], [ false, %410 ], [ false, %9 ], [ true, %407 ], [ true, %406 ], !dbg !1405
  ret i1 %415, !dbg !1406
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #2

declare i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #3

declare i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare i64 @fwrite_unlocked(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @ungetc(i32, %struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @clearerr_unlocked(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_fields(i8*, i32) local_unnamed_addr #7 !dbg !165 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !169, metadata !DIExpression()), !dbg !1407
  call void @llvm.dbg.value(metadata i32 %1, metadata !170, metadata !DIExpression()), !dbg !1408
  call void @llvm.dbg.value(metadata i64 1, metadata !171, metadata !DIExpression()), !dbg !1409
  call void @llvm.dbg.value(metadata i64 0, metadata !172, metadata !DIExpression()), !dbg !1410
  call void @llvm.dbg.value(metadata i8 0, metadata !173, metadata !DIExpression()), !dbg !1411
  call void @llvm.dbg.value(metadata i8 0, metadata !174, metadata !DIExpression()), !dbg !1412
  call void @llvm.dbg.value(metadata i8 0, metadata !175, metadata !DIExpression()), !dbg !1413
  call void @llvm.dbg.value(metadata i8 0, metadata !176, metadata !DIExpression()), !dbg !1414
  %3 = and i32 %1, 1, !dbg !1415
  %4 = icmp ne i32 %3, 0, !dbg !1415
  br i1 %4, label %5, label %12, !dbg !1417

; <label>:5:                                      ; preds = %2
  %6 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0)) #14, !dbg !1418
  %7 = icmp eq i32 %6, 0, !dbg !1418
  %8 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1419
  %9 = zext i1 %7 to i64, !dbg !1421
  %10 = zext i1 %7 to i8, !dbg !1421
  %11 = select i1 %7, i8* %8, i8* %0, !dbg !1421
  br label %12, !dbg !1421

; <label>:12:                                     ; preds = %5, %2
  %13 = phi i64 [ %9, %5 ], [ 0, %2 ]
  %14 = phi i8 [ %10, %5 ], [ 0, %2 ]
  %15 = phi i8* [ %11, %5 ], [ %0, %2 ]
  br label %16, !dbg !1422

; <label>:16:                                     ; preds = %12, %238
  %17 = phi i64 [ %239, %238 ], [ %13, %12 ], !dbg !1423
  %18 = phi i8 [ %240, %238 ], [ %14, %12 ], !dbg !1425
  %19 = phi i8 [ %241, %238 ], [ 0, %12 ], !dbg !1412
  %20 = phi i8 [ %242, %238 ], [ %14, %12 ], !dbg !1423
  %21 = phi i1 [ %243, %238 ], [ false, %12 ], !dbg !1423
  %22 = phi i64 [ %244, %238 ], [ 1, %12 ], !dbg !1423
  %23 = phi i8* [ %245, %238 ], [ %15, %12 ], !dbg !1423
  call void @llvm.dbg.value(metadata i64 %17, metadata !172, metadata !DIExpression()), !dbg !1410
  call void @llvm.dbg.value(metadata i8* %23, metadata !169, metadata !DIExpression()), !dbg !1407
  call void @llvm.dbg.value(metadata i64 %22, metadata !171, metadata !DIExpression()), !dbg !1409
  call void @llvm.dbg.value(metadata i8 %20, metadata !175, metadata !DIExpression()), !dbg !1413
  call void @llvm.dbg.value(metadata i8 %19, metadata !174, metadata !DIExpression()), !dbg !1412
  call void @llvm.dbg.value(metadata i8 %18, metadata !173, metadata !DIExpression()), !dbg !1411
  %24 = load i8, i8* %23, align 1, !dbg !1422, !tbaa !838
  switch i8 %24, label %46 [
    i8 45, label %25
    i8 44, label %56
  ], !dbg !1426

; <label>:25:                                     ; preds = %16
  call void @llvm.dbg.value(metadata i8 0, metadata !176, metadata !DIExpression()), !dbg !1414
  %26 = and i8 %20, 1, !dbg !1427
  %27 = icmp eq i8 %26, 0, !dbg !1427
  br i1 %27, label %33, label %28, !dbg !1429

; <label>:28:                                     ; preds = %25
  %29 = and i32 %1, 4, !dbg !1430
  %30 = icmp eq i32 %29, 0, !dbg !1430
  %31 = select i1 %30, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2.59, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1.60, i64 0, i64 0), !dbg !1430
  %32 = tail call i8* @dcgettext(i8* null, i8* %31, i32 5) #12, !dbg !1430
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %32) #12, !dbg !1430
  tail call void @usage(i32 1) #15, !dbg !1430
  unreachable, !dbg !1430

; <label>:33:                                     ; preds = %25
  call void @llvm.dbg.value(metadata i8 1, metadata !175, metadata !DIExpression()), !dbg !1413
  %34 = and i8 %18, 1, !dbg !1432
  %35 = icmp ne i8 %34, 0, !dbg !1432
  %36 = xor i1 %35, true, !dbg !1434
  %37 = icmp ne i64 %17, 0, !dbg !1435
  %38 = or i1 %37, %36, !dbg !1434
  br i1 %38, label %44, label %39, !dbg !1434

; <label>:39:                                     ; preds = %33
  %40 = and i32 %1, 4, !dbg !1436
  %41 = icmp eq i32 %40, 0, !dbg !1436
  %42 = select i1 %41, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4.61, i64 0, i64 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3.62, i64 0, i64 0), !dbg !1436
  %43 = tail call i8* @dcgettext(i8* null, i8* %42, i32 5) #12, !dbg !1436
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %43) #12, !dbg !1436
  tail call void @usage(i32 1) #15, !dbg !1436
  unreachable, !dbg !1436

; <label>:44:                                     ; preds = %33
  call void @llvm.dbg.value(metadata i8* %23, metadata !169, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1407
  %45 = select i1 %35, i64 %17, i64 1, !dbg !1438
  call void @llvm.dbg.value(metadata i64 %45, metadata !171, metadata !DIExpression()), !dbg !1409
  call void @llvm.dbg.value(metadata i64 0, metadata !172, metadata !DIExpression()), !dbg !1410
  br label %238, !dbg !1439

; <label>:46:                                     ; preds = %16
  %47 = tail call i16** @__ctype_b_loc() #17, !dbg !1440
  %48 = load i16*, i16** %47, align 8, !dbg !1440, !tbaa !770
  %49 = zext i8 %24 to i64, !dbg !1440
  %50 = getelementptr inbounds i16, i16* %48, i64 %49, !dbg !1440
  %51 = load i16, i16* %50, align 2, !dbg !1440, !tbaa !1441
  %52 = and i16 %51, 1, !dbg !1440
  %53 = icmp ne i16 %52, 0, !dbg !1440
  %54 = icmp eq i8 %24, 0, !dbg !1442
  %55 = or i1 %54, %53, !dbg !1443
  br i1 %55, label %56, label %199, !dbg !1443

; <label>:56:                                     ; preds = %46, %16
  call void @llvm.dbg.value(metadata i8 0, metadata !176, metadata !DIExpression()), !dbg !1414
  %57 = and i8 %20, 1, !dbg !1444
  %58 = icmp eq i8 %57, 0, !dbg !1444
  br i1 %58, label %148, label %59, !dbg !1447

; <label>:59:                                     ; preds = %56
  call void @llvm.dbg.value(metadata i8 0, metadata !175, metadata !DIExpression()), !dbg !1413
  %60 = or i8 %19, %18, !dbg !1448
  %61 = and i8 %60, 1, !dbg !1448
  %62 = icmp ne i8 %61, 0, !dbg !1448
  %63 = or i1 %4, %62, !dbg !1448
  %64 = select i1 %62, i64 %22, i64 1, !dbg !1448
  br i1 %63, label %67, label %65, !dbg !1448

; <label>:65:                                     ; preds = %59
  %66 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.63, i64 0, i64 0), i32 5) #12, !dbg !1451
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %66) #12, !dbg !1451
  tail call void @usage(i32 1) #15, !dbg !1451
  unreachable, !dbg !1451

; <label>:67:                                     ; preds = %59
  %68 = and i8 %19, 1, !dbg !1455
  %69 = icmp eq i8 %68, 0, !dbg !1455
  call void @llvm.dbg.value(metadata i64 %64, metadata !171, metadata !DIExpression()), !dbg !1409
  br i1 %69, label %70, label %107, !dbg !1456

; <label>:70:                                     ; preds = %67
  call void @llvm.dbg.value(metadata i64 %64, metadata !1457, metadata !DIExpression()) #12, !dbg !1463
  call void @llvm.dbg.value(metadata i64 -1, metadata !1462, metadata !DIExpression()) #12, !dbg !1467
  %71 = load i64, i64* @n_frp, align 8, !dbg !1468, !tbaa !881
  %72 = load i64, i64* @n_frp_allocated, align 8, !dbg !1470, !tbaa !881
  %73 = icmp eq i64 %71, %72, !dbg !1471
  br i1 %73, label %77, label %74, !dbg !1472

; <label>:74:                                     ; preds = %70
  %75 = load %struct.field_range_pair*, %struct.field_range_pair** @frp, align 8, !dbg !1473, !tbaa !770
  %76 = bitcast %struct.field_range_pair* %75 to i8*, !dbg !1472
  br label %98, !dbg !1472

; <label>:77:                                     ; preds = %70
  %78 = load i8*, i8** bitcast (%struct.field_range_pair** @frp to i8**), align 8, !dbg !1474, !tbaa !770
  call void @llvm.dbg.value(metadata i8* %78, metadata !147, metadata !DIExpression()) #12, !dbg !1475
  call void @llvm.dbg.value(metadata i64* @n_frp_allocated, metadata !148, metadata !DIExpression()) #12, !dbg !1477
  call void @llvm.dbg.value(metadata i64 16, metadata !149, metadata !DIExpression()) #12, !dbg !1478
  call void @llvm.dbg.value(metadata i64 %72, metadata !150, metadata !DIExpression()) #12, !dbg !1479
  %79 = icmp eq i8* %78, null, !dbg !1480
  br i1 %79, label %80, label %85, !dbg !1482

; <label>:80:                                     ; preds = %77
  %81 = icmp eq i64 %71, 0, !dbg !1483
  br i1 %81, label %92, label %82, !dbg !1486

; <label>:82:                                     ; preds = %80
  call void @llvm.dbg.value(metadata i64 %72, metadata !150, metadata !DIExpression()) #12, !dbg !1479
  %83 = icmp ugt i64 %71, 576460752303423487, !dbg !1487
  br i1 %83, label %84, label %92, !dbg !1489

; <label>:84:                                     ; preds = %82
  tail call void @xalloc_die() #15, !dbg !1490
  unreachable, !dbg !1490

; <label>:85:                                     ; preds = %77
  %86 = icmp ult i64 %71, 384307168202282325, !dbg !1491
  br i1 %86, label %88, label %87, !dbg !1494

; <label>:87:                                     ; preds = %85
  tail call void @xalloc_die() #15, !dbg !1495
  unreachable, !dbg !1495

; <label>:88:                                     ; preds = %85
  %89 = lshr i64 %71, 1, !dbg !1496
  %90 = add i64 %71, 1, !dbg !1497
  %91 = add i64 %90, %89, !dbg !1498
  call void @llvm.dbg.value(metadata i64 %91, metadata !150, metadata !DIExpression()) #12, !dbg !1479
  br label %92

; <label>:92:                                     ; preds = %88, %82, %80
  %93 = phi i64 [ %91, %88 ], [ %71, %82 ], [ 8, %80 ], !dbg !1499
  call void @llvm.dbg.value(metadata i64 %93, metadata !150, metadata !DIExpression()) #12, !dbg !1479
  store i64 %93, i64* @n_frp_allocated, align 8, !dbg !1500, !tbaa !881
  %94 = shl i64 %93, 4, !dbg !1501
  %95 = tail call i8* @xrealloc(i8* %78, i64 %94) #12, !dbg !1502
  store i8* %95, i8** bitcast (%struct.field_range_pair** @frp to i8**), align 8, !dbg !1503, !tbaa !770
  %96 = bitcast i8* %95 to %struct.field_range_pair*, !dbg !1504
  %97 = load i64, i64* @n_frp, align 8, !dbg !1505, !tbaa !881
  br label %98, !dbg !1504

; <label>:98:                                     ; preds = %74, %92
  %99 = phi i8* [ %76, %74 ], [ %95, %92 ]
  %100 = phi i64 [ %71, %74 ], [ %97, %92 ], !dbg !1505
  %101 = phi %struct.field_range_pair* [ %75, %74 ], [ %96, %92 ], !dbg !1473
  %102 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %101, i64 %100, i32 0, !dbg !1506
  store i64 %64, i64* %102, align 8, !dbg !1507, !tbaa !1137
  %103 = load i64, i64* @n_frp, align 8, !dbg !1508, !tbaa !881
  %104 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %101, i64 %103, i32 1, !dbg !1509
  store i64 -1, i64* %104, align 8, !dbg !1510, !tbaa !1121
  %105 = load i64, i64* @n_frp, align 8, !dbg !1511, !tbaa !881
  %106 = add i64 %105, 1, !dbg !1511
  br label %192, !dbg !1512

; <label>:107:                                    ; preds = %67
  %108 = icmp ult i64 %17, %64, !dbg !1513
  br i1 %108, label %109, label %111, !dbg !1516

; <label>:109:                                    ; preds = %107
  %110 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6.64, i64 0, i64 0), i32 5) #12, !dbg !1517
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %110) #12, !dbg !1517
  tail call void @usage(i32 1) #15, !dbg !1517
  unreachable, !dbg !1517

; <label>:111:                                    ; preds = %107
  call void @llvm.dbg.value(metadata i64 %64, metadata !1457, metadata !DIExpression()) #12, !dbg !1519
  call void @llvm.dbg.value(metadata i64 %17, metadata !1462, metadata !DIExpression()) #12, !dbg !1521
  %112 = load i64, i64* @n_frp, align 8, !dbg !1522, !tbaa !881
  %113 = load i64, i64* @n_frp_allocated, align 8, !dbg !1523, !tbaa !881
  %114 = icmp eq i64 %112, %113, !dbg !1524
  br i1 %114, label %118, label %115, !dbg !1525

; <label>:115:                                    ; preds = %111
  %116 = load %struct.field_range_pair*, %struct.field_range_pair** @frp, align 8, !dbg !1526, !tbaa !770
  %117 = bitcast %struct.field_range_pair* %116 to i8*, !dbg !1525
  br label %139, !dbg !1525

; <label>:118:                                    ; preds = %111
  %119 = load i8*, i8** bitcast (%struct.field_range_pair** @frp to i8**), align 8, !dbg !1527, !tbaa !770
  call void @llvm.dbg.value(metadata i8* %119, metadata !147, metadata !DIExpression()) #12, !dbg !1528
  call void @llvm.dbg.value(metadata i64* @n_frp_allocated, metadata !148, metadata !DIExpression()) #12, !dbg !1530
  call void @llvm.dbg.value(metadata i64 16, metadata !149, metadata !DIExpression()) #12, !dbg !1531
  call void @llvm.dbg.value(metadata i64 %113, metadata !150, metadata !DIExpression()) #12, !dbg !1532
  %120 = icmp eq i8* %119, null, !dbg !1533
  br i1 %120, label %121, label %126, !dbg !1534

; <label>:121:                                    ; preds = %118
  %122 = icmp eq i64 %112, 0, !dbg !1535
  br i1 %122, label %133, label %123, !dbg !1536

; <label>:123:                                    ; preds = %121
  call void @llvm.dbg.value(metadata i64 %113, metadata !150, metadata !DIExpression()) #12, !dbg !1532
  %124 = icmp ugt i64 %112, 576460752303423487, !dbg !1537
  br i1 %124, label %125, label %133, !dbg !1538

; <label>:125:                                    ; preds = %123
  tail call void @xalloc_die() #15, !dbg !1539
  unreachable, !dbg !1539

; <label>:126:                                    ; preds = %118
  %127 = icmp ult i64 %112, 384307168202282325, !dbg !1540
  br i1 %127, label %129, label %128, !dbg !1541

; <label>:128:                                    ; preds = %126
  tail call void @xalloc_die() #15, !dbg !1542
  unreachable, !dbg !1542

; <label>:129:                                    ; preds = %126
  %130 = lshr i64 %112, 1, !dbg !1543
  %131 = add i64 %112, 1, !dbg !1544
  %132 = add i64 %131, %130, !dbg !1545
  call void @llvm.dbg.value(metadata i64 %132, metadata !150, metadata !DIExpression()) #12, !dbg !1532
  br label %133

; <label>:133:                                    ; preds = %129, %123, %121
  %134 = phi i64 [ %132, %129 ], [ %112, %123 ], [ 8, %121 ], !dbg !1546
  call void @llvm.dbg.value(metadata i64 %134, metadata !150, metadata !DIExpression()) #12, !dbg !1532
  store i64 %134, i64* @n_frp_allocated, align 8, !dbg !1547, !tbaa !881
  %135 = shl i64 %134, 4, !dbg !1548
  %136 = tail call i8* @xrealloc(i8* %119, i64 %135) #12, !dbg !1549
  store i8* %136, i8** bitcast (%struct.field_range_pair** @frp to i8**), align 8, !dbg !1550, !tbaa !770
  %137 = bitcast i8* %136 to %struct.field_range_pair*, !dbg !1551
  %138 = load i64, i64* @n_frp, align 8, !dbg !1552, !tbaa !881
  br label %139, !dbg !1551

; <label>:139:                                    ; preds = %115, %133
  %140 = phi i8* [ %117, %115 ], [ %136, %133 ]
  %141 = phi i64 [ %112, %115 ], [ %138, %133 ], !dbg !1552
  %142 = phi %struct.field_range_pair* [ %116, %115 ], [ %137, %133 ], !dbg !1526
  %143 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %142, i64 %141, i32 0, !dbg !1553
  store i64 %64, i64* %143, align 8, !dbg !1554, !tbaa !1137
  %144 = load i64, i64* @n_frp, align 8, !dbg !1555, !tbaa !881
  %145 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %142, i64 %144, i32 1, !dbg !1556
  store i64 %17, i64* %145, align 8, !dbg !1557, !tbaa !1121
  %146 = load i64, i64* @n_frp, align 8, !dbg !1558, !tbaa !881
  %147 = add i64 %146, 1, !dbg !1558
  br label %192

; <label>:148:                                    ; preds = %56
  %149 = icmp eq i64 %17, 0, !dbg !1559
  br i1 %149, label %150, label %155, !dbg !1562

; <label>:150:                                    ; preds = %148
  %151 = and i32 %1, 4, !dbg !1563
  %152 = icmp eq i32 %151, 0, !dbg !1563
  %153 = select i1 %152, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4.61, i64 0, i64 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3.62, i64 0, i64 0), !dbg !1563
  %154 = tail call i8* @dcgettext(i8* null, i8* %153, i32 5) #12, !dbg !1563
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %154) #12, !dbg !1563
  tail call void @usage(i32 1) #15, !dbg !1563
  unreachable, !dbg !1563

; <label>:155:                                    ; preds = %148
  call void @llvm.dbg.value(metadata i64 %17, metadata !1457, metadata !DIExpression()) #12, !dbg !1565
  call void @llvm.dbg.value(metadata i64 %17, metadata !1462, metadata !DIExpression()) #12, !dbg !1567
  %156 = load i64, i64* @n_frp, align 8, !dbg !1568, !tbaa !881
  %157 = load i64, i64* @n_frp_allocated, align 8, !dbg !1569, !tbaa !881
  %158 = icmp eq i64 %156, %157, !dbg !1570
  br i1 %158, label %162, label %159, !dbg !1571

; <label>:159:                                    ; preds = %155
  %160 = load %struct.field_range_pair*, %struct.field_range_pair** @frp, align 8, !dbg !1572, !tbaa !770
  %161 = bitcast %struct.field_range_pair* %160 to i8*, !dbg !1571
  br label %183, !dbg !1571

; <label>:162:                                    ; preds = %155
  %163 = load i8*, i8** bitcast (%struct.field_range_pair** @frp to i8**), align 8, !dbg !1573, !tbaa !770
  call void @llvm.dbg.value(metadata i8* %163, metadata !147, metadata !DIExpression()) #12, !dbg !1574
  call void @llvm.dbg.value(metadata i64* @n_frp_allocated, metadata !148, metadata !DIExpression()) #12, !dbg !1576
  call void @llvm.dbg.value(metadata i64 16, metadata !149, metadata !DIExpression()) #12, !dbg !1577
  call void @llvm.dbg.value(metadata i64 %157, metadata !150, metadata !DIExpression()) #12, !dbg !1578
  %164 = icmp eq i8* %163, null, !dbg !1579
  br i1 %164, label %165, label %170, !dbg !1580

; <label>:165:                                    ; preds = %162
  %166 = icmp eq i64 %156, 0, !dbg !1581
  br i1 %166, label %177, label %167, !dbg !1582

; <label>:167:                                    ; preds = %165
  call void @llvm.dbg.value(metadata i64 %157, metadata !150, metadata !DIExpression()) #12, !dbg !1578
  %168 = icmp ugt i64 %156, 576460752303423487, !dbg !1583
  br i1 %168, label %169, label %177, !dbg !1584

; <label>:169:                                    ; preds = %167
  tail call void @xalloc_die() #15, !dbg !1585
  unreachable, !dbg !1585

; <label>:170:                                    ; preds = %162
  %171 = icmp ult i64 %156, 384307168202282325, !dbg !1586
  br i1 %171, label %173, label %172, !dbg !1587

; <label>:172:                                    ; preds = %170
  tail call void @xalloc_die() #15, !dbg !1588
  unreachable, !dbg !1588

; <label>:173:                                    ; preds = %170
  %174 = lshr i64 %156, 1, !dbg !1589
  %175 = add i64 %156, 1, !dbg !1590
  %176 = add i64 %175, %174, !dbg !1591
  call void @llvm.dbg.value(metadata i64 %176, metadata !150, metadata !DIExpression()) #12, !dbg !1578
  br label %177

; <label>:177:                                    ; preds = %173, %167, %165
  %178 = phi i64 [ %176, %173 ], [ %156, %167 ], [ 8, %165 ], !dbg !1592
  call void @llvm.dbg.value(metadata i64 %178, metadata !150, metadata !DIExpression()) #12, !dbg !1578
  store i64 %178, i64* @n_frp_allocated, align 8, !dbg !1593, !tbaa !881
  %179 = shl i64 %178, 4, !dbg !1594
  %180 = tail call i8* @xrealloc(i8* %163, i64 %179) #12, !dbg !1595
  store i8* %180, i8** bitcast (%struct.field_range_pair** @frp to i8**), align 8, !dbg !1596, !tbaa !770
  %181 = bitcast i8* %180 to %struct.field_range_pair*, !dbg !1597
  %182 = load i64, i64* @n_frp, align 8, !dbg !1598, !tbaa !881
  br label %183, !dbg !1597

; <label>:183:                                    ; preds = %159, %177
  %184 = phi i8* [ %161, %159 ], [ %180, %177 ]
  %185 = phi i64 [ %156, %159 ], [ %182, %177 ], !dbg !1598
  %186 = phi %struct.field_range_pair* [ %160, %159 ], [ %181, %177 ], !dbg !1572
  %187 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %186, i64 %185, i32 0, !dbg !1599
  store i64 %17, i64* %187, align 8, !dbg !1600, !tbaa !1137
  %188 = load i64, i64* @n_frp, align 8, !dbg !1601, !tbaa !881
  %189 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %186, i64 %188, i32 1, !dbg !1602
  store i64 %17, i64* %189, align 8, !dbg !1603, !tbaa !1121
  %190 = load i64, i64* @n_frp, align 8, !dbg !1604, !tbaa !881
  %191 = add i64 %190, 1, !dbg !1604
  call void @llvm.dbg.value(metadata i64 0, metadata !172, metadata !DIExpression()), !dbg !1410
  br label %192

; <label>:192:                                    ; preds = %98, %139, %183
  %193 = phi i64 [ %106, %98 ], [ %147, %139 ], [ %191, %183 ]
  %194 = phi i8* [ %99, %98 ], [ %140, %139 ], [ %184, %183 ]
  %195 = phi i8 [ 0, %98 ], [ 0, %139 ], [ %20, %183 ], !dbg !1605
  %196 = phi i64 [ %64, %98 ], [ %64, %139 ], [ %22, %183 ], !dbg !1409
  store i64 %193, i64* @n_frp, align 8, !dbg !1511, !tbaa !881
  call void @llvm.dbg.value(metadata i64 0, metadata !172, metadata !DIExpression()), !dbg !1410
  call void @llvm.dbg.value(metadata i64 %196, metadata !171, metadata !DIExpression()), !dbg !1409
  call void @llvm.dbg.value(metadata i8 %195, metadata !175, metadata !DIExpression()), !dbg !1413
  %197 = load i8, i8* %23, align 1, !dbg !1606, !tbaa !838
  %198 = icmp eq i8 %197, 0, !dbg !1608
  br i1 %198, label %246, label %238, !dbg !1609

; <label>:199:                                    ; preds = %46
  %200 = sext i8 %24 to i32, !dbg !1610
  %201 = add nsw i32 %200, -48, !dbg !1611
  %202 = icmp ult i32 %201, 10, !dbg !1611
  br i1 %202, label %203, label %232, !dbg !1612

; <label>:203:                                    ; preds = %199
  %204 = load i8*, i8** @set_fields.num_start, align 8, !dbg !1613
  %205 = icmp ne i8* %204, null, !dbg !1613
  %206 = and i1 %21, %205, !dbg !1615
  br i1 %206, label %208, label %207, !dbg !1615

; <label>:207:                                    ; preds = %203
  store i8* %23, i8** @set_fields.num_start, align 8, !dbg !1616, !tbaa !770
  br label %208, !dbg !1617

; <label>:208:                                    ; preds = %203, %207
  %209 = phi i8* [ %204, %203 ], [ %23, %207 ]
  call void @llvm.dbg.value(metadata i8 1, metadata !176, metadata !DIExpression()), !dbg !1414
  %210 = and i8 %20, 1, !dbg !1618
  %211 = icmp eq i8 %210, 0, !dbg !1618
  %212 = icmp ugt i64 %17, 1844674407370955161, !dbg !1620
  br i1 %212, label %224, label %213, !dbg !1620

; <label>:213:                                    ; preds = %208
  %214 = select i1 %211, i8 %19, i8 1
  call void @llvm.dbg.value(metadata i8 %214, metadata !174, metadata !DIExpression()), !dbg !1412
  %215 = select i1 %211, i8 1, i8 %18
  call void @llvm.dbg.value(metadata i8 %215, metadata !173, metadata !DIExpression()), !dbg !1411
  %216 = mul i64 %17, 10, !dbg !1620
  %217 = sext i8 %24 to i64, !dbg !1620
  %218 = add i64 %216, -48, !dbg !1620
  %219 = add i64 %218, %217, !dbg !1620
  %220 = icmp ult i64 %219, %17, !dbg !1620
  %221 = select i1 %220, i64 %17, i64 %219, !dbg !1620
  call void @llvm.dbg.value(metadata i64 %221, metadata !172, metadata !DIExpression()), !dbg !1410
  %222 = icmp eq i64 %221, -1, !dbg !1621
  %223 = or i1 %220, %222, !dbg !1622
  br i1 %223, label %224, label %238, !dbg !1622

; <label>:224:                                    ; preds = %208, %213
  %225 = tail call i64 @strspn(i8* %209, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7.65, i64 0, i64 0)) #14, !dbg !1623
  call void @llvm.dbg.value(metadata i64 %225, metadata !177, metadata !DIExpression()), !dbg !1624
  %226 = tail call noalias i8* @xstrndup(i8* %209, i64 %225) #12, !dbg !1625
  call void @llvm.dbg.value(metadata i8* %226, metadata !185, metadata !DIExpression()), !dbg !1626
  %227 = and i32 %1, 4, !dbg !1627
  %228 = icmp eq i32 %227, 0, !dbg !1627
  %229 = select i1 %228, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9.66, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8.67, i64 0, i64 0), !dbg !1628
  %230 = tail call i8* @dcgettext(i8* null, i8* %229, i32 5) #12, !dbg !1629
  %231 = tail call i8* @quote(i8* %226) #12, !dbg !1630
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %230, i8* %231) #12, !dbg !1631
  tail call void @free(i8* %226) #12, !dbg !1632
  tail call void @usage(i32 1) #15, !dbg !1633
  unreachable, !dbg !1633

; <label>:232:                                    ; preds = %199
  call void @llvm.dbg.value(metadata i8* %23, metadata !169, metadata !DIExpression()), !dbg !1407
  call void @llvm.dbg.value(metadata i8* %23, metadata !169, metadata !DIExpression()), !dbg !1407
  call void @llvm.dbg.value(metadata i8* %23, metadata !169, metadata !DIExpression()), !dbg !1407
  call void @llvm.dbg.value(metadata i8* %23, metadata !169, metadata !DIExpression()), !dbg !1407
  call void @llvm.dbg.value(metadata i8* %23, metadata !169, metadata !DIExpression()), !dbg !1407
  call void @llvm.dbg.value(metadata i8* %23, metadata !169, metadata !DIExpression()), !dbg !1407
  %233 = and i32 %1, 4, !dbg !1634
  %234 = icmp eq i32 %233, 0, !dbg !1634
  %235 = select i1 %234, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11.68, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10.69, i64 0, i64 0), !dbg !1636
  %236 = tail call i8* @dcgettext(i8* null, i8* %235, i32 5) #12, !dbg !1637
  %237 = tail call i8* @quote(i8* %23) #12, !dbg !1638
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %236, i8* %237) #12, !dbg !1639
  tail call void @usage(i32 1) #15, !dbg !1640
  unreachable, !dbg !1640

; <label>:238:                                    ; preds = %213, %192, %44
  %239 = phi i64 [ 0, %44 ], [ 0, %192 ], [ %221, %213 ], !dbg !1605
  %240 = phi i8 [ %18, %44 ], [ 0, %192 ], [ %215, %213 ], !dbg !1605
  %241 = phi i8 [ %19, %44 ], [ 0, %192 ], [ %214, %213 ], !dbg !1641
  %242 = phi i8 [ 1, %44 ], [ %195, %192 ], [ %20, %213 ], !dbg !1605
  %243 = phi i1 [ false, %44 ], [ false, %192 ], [ true, %213 ], !dbg !1642
  %244 = phi i64 [ %45, %44 ], [ %196, %192 ], [ %22, %213 ], !dbg !1643
  %245 = getelementptr inbounds i8, i8* %23, i64 1, !dbg !1642
  call void @llvm.dbg.value(metadata i64 %239, metadata !172, metadata !DIExpression()), !dbg !1410
  call void @llvm.dbg.value(metadata i8* %245, metadata !169, metadata !DIExpression()), !dbg !1407
  call void @llvm.dbg.value(metadata i64 %244, metadata !171, metadata !DIExpression()), !dbg !1409
  call void @llvm.dbg.value(metadata i8 %242, metadata !175, metadata !DIExpression()), !dbg !1413
  call void @llvm.dbg.value(metadata i8 %241, metadata !174, metadata !DIExpression()), !dbg !1412
  call void @llvm.dbg.value(metadata i8 %240, metadata !173, metadata !DIExpression()), !dbg !1411
  br label %16, !dbg !1644, !llvm.loop !1645

; <label>:246:                                    ; preds = %192
  %247 = icmp eq i64 %193, 0, !dbg !1647
  br i1 %247, label %248, label %253, !dbg !1649

; <label>:248:                                    ; preds = %246
  %249 = and i32 %1, 4, !dbg !1650
  %250 = icmp eq i32 %249, 0, !dbg !1650
  %251 = select i1 %250, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13.70, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12.71, i64 0, i64 0), !dbg !1650
  %252 = tail call i8* @dcgettext(i8* null, i8* %251, i32 5) #12, !dbg !1650
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %252) #12, !dbg !1650
  tail call void @usage(i32 1) #15, !dbg !1650
  unreachable, !dbg !1650

; <label>:253:                                    ; preds = %246
  tail call void @qsort(i8* %194, i64 %193, i64 16, i32 (i8*, i8*)* nonnull @compare_ranges) #12, !dbg !1652
  call void @llvm.dbg.value(metadata i64 0, metadata !186, metadata !DIExpression()), !dbg !1653
  %254 = load i64, i64* @n_frp, align 8, !dbg !1654, !tbaa !881
  %255 = icmp eq i64 %254, 0, !dbg !1655
  br i1 %255, label %256, label %260, !dbg !1656

; <label>:256:                                    ; preds = %298, %253
  %257 = phi i64 [ 0, %253 ], [ %299, %298 ]
  %258 = and i32 %1, 2, !dbg !1657
  %259 = icmp eq i32 %258, 0, !dbg !1657
  br i1 %259, label %418, label %301, !dbg !1659

; <label>:260:                                    ; preds = %253, %298
  %261 = phi i64 [ %299, %298 ], [ %254, %253 ]
  %262 = phi i64 [ %263, %298 ], [ 0, %253 ]
  call void @llvm.dbg.value(metadata i64 %262, metadata !186, metadata !DIExpression()), !dbg !1653
  %263 = add nuw i64 %262, 1, !dbg !1660
  %264 = icmp ult i64 %263, %261, !dbg !1661
  br i1 %264, label %265, label %298, !dbg !1663

; <label>:265:                                    ; preds = %260
  %266 = sub i64 1152921504606846974, %262
  %267 = load %struct.field_range_pair*, %struct.field_range_pair** @frp, align 8, !dbg !1664, !tbaa !770
  %268 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %267, i64 %263, i32 0, !dbg !1667
  %269 = load i64, i64* %268, align 8, !dbg !1667, !tbaa !1137
  %270 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %267, i64 %262, i32 1, !dbg !1668
  %271 = load i64, i64* %270, align 8, !dbg !1668, !tbaa !1121
  %272 = icmp ugt i64 %269, %271, !dbg !1669
  br i1 %272, label %298, label %280, !dbg !1670

; <label>:273:                                    ; preds = %280
  %274 = load %struct.field_range_pair*, %struct.field_range_pair** @frp, align 8, !dbg !1664, !tbaa !770
  %275 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %274, i64 %263, i32 0, !dbg !1667
  %276 = load i64, i64* %275, align 8, !dbg !1667, !tbaa !1137
  %277 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %274, i64 %262, i32 1, !dbg !1668
  %278 = load i64, i64* %277, align 8, !dbg !1668, !tbaa !1121
  %279 = icmp ugt i64 %276, %278, !dbg !1669
  br i1 %279, label %298, label %280, !dbg !1670, !llvm.loop !1671

; <label>:280:                                    ; preds = %265, %273
  %281 = phi i64 [ %278, %273 ], [ %271, %265 ]
  %282 = phi i64* [ %277, %273 ], [ %270, %265 ]
  %283 = phi %struct.field_range_pair* [ %274, %273 ], [ %267, %265 ]
  %284 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %283, i64 %263, i32 1, !dbg !1673
  %285 = load i64, i64* %284, align 8, !dbg !1673, !tbaa !1121
  %286 = icmp ugt i64 %285, %281, !dbg !1673
  %287 = select i1 %286, i64 %285, i64 %281, !dbg !1673
  store i64 %287, i64* %282, align 8, !dbg !1675, !tbaa !1121
  %288 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %283, i64 %263, !dbg !1676
  %289 = bitcast %struct.field_range_pair* %288 to i8*, !dbg !1677
  %290 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %288, i64 1, !dbg !1678
  %291 = bitcast %struct.field_range_pair* %290 to i8*, !dbg !1677
  %292 = load i64, i64* @n_frp, align 8, !dbg !1679, !tbaa !881
  %293 = add i64 %266, %292, !dbg !1680
  %294 = shl i64 %293, 4, !dbg !1681
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %289, i8* nonnull align 8 %291, i64 %294, i1 false), !dbg !1677
  %295 = load i64, i64* @n_frp, align 8, !dbg !1682, !tbaa !881
  %296 = add i64 %295, -1, !dbg !1682
  store i64 %296, i64* @n_frp, align 8, !dbg !1682, !tbaa !881
  call void @llvm.dbg.value(metadata i64 %263, metadata !188, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1683
  call void @llvm.dbg.value(metadata i64 %263, metadata !188, metadata !DIExpression()), !dbg !1683
  %297 = icmp ult i64 %263, %296, !dbg !1661
  br i1 %297, label %273, label %298, !dbg !1663, !llvm.loop !1671

; <label>:298:                                    ; preds = %273, %280, %265, %260
  %299 = phi i64 [ %261, %260 ], [ %261, %265 ], [ %296, %280 ], [ %296, %273 ], !dbg !1654
  call void @llvm.dbg.value(metadata i64 %263, metadata !186, metadata !DIExpression()), !dbg !1653
  %300 = icmp ult i64 %263, %299, !dbg !1655
  br i1 %300, label %260, label %256, !dbg !1656, !llvm.loop !1684

; <label>:301:                                    ; preds = %256
  %302 = load %struct.field_range_pair*, %struct.field_range_pair** @frp, align 8, !dbg !1686, !tbaa !770
  call void @llvm.dbg.value(metadata %struct.field_range_pair* %302, metadata !1689, metadata !DIExpression()) #12, !dbg !1694
  call void @llvm.dbg.value(metadata i64 undef, metadata !1690, metadata !DIExpression()) #12, !dbg !1695
  store %struct.field_range_pair* null, %struct.field_range_pair** @frp, align 8, !dbg !1696, !tbaa !770
  store i64 0, i64* @n_frp, align 8, !dbg !1697, !tbaa !881
  store i64 0, i64* @n_frp_allocated, align 8, !dbg !1698, !tbaa !881
  %303 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %302, i64 0, i32 0, !dbg !1699
  %304 = load i64, i64* %303, align 8, !dbg !1699, !tbaa !1137
  %305 = icmp ugt i64 %304, 1, !dbg !1701
  br i1 %305, label %306, label %316, !dbg !1702

; <label>:306:                                    ; preds = %301
  %307 = add i64 %304, -1, !dbg !1703
  call void @llvm.dbg.value(metadata i64 1, metadata !1457, metadata !DIExpression()) #12, !dbg !1704
  call void @llvm.dbg.value(metadata i64 %307, metadata !1462, metadata !DIExpression()) #12, !dbg !1706
  call void @llvm.dbg.value(metadata i8* null, metadata !147, metadata !DIExpression()) #12, !dbg !1707
  call void @llvm.dbg.value(metadata i64* @n_frp_allocated, metadata !148, metadata !DIExpression()) #12, !dbg !1709
  call void @llvm.dbg.value(metadata i64 16, metadata !149, metadata !DIExpression()) #12, !dbg !1710
  call void @llvm.dbg.value(metadata i64 0, metadata !150, metadata !DIExpression()) #12, !dbg !1711
  call void @llvm.dbg.value(metadata i64 8, metadata !150, metadata !DIExpression()) #12, !dbg !1711
  store i64 8, i64* @n_frp_allocated, align 8, !dbg !1712, !tbaa !881
  %308 = tail call i8* @xrealloc(i8* null, i64 128) #12, !dbg !1713
  store i8* %308, i8** bitcast (%struct.field_range_pair** @frp to i8**), align 8, !dbg !1714, !tbaa !770
  %309 = bitcast i8* %308 to %struct.field_range_pair*, !dbg !1715
  %310 = load i64, i64* @n_frp, align 8, !dbg !1716, !tbaa !881
  %311 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %309, i64 %310, i32 0, !dbg !1717
  store i64 1, i64* %311, align 8, !dbg !1718, !tbaa !1137
  %312 = load i64, i64* @n_frp, align 8, !dbg !1719, !tbaa !881
  %313 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %309, i64 %312, i32 1, !dbg !1720
  store i64 %307, i64* %313, align 8, !dbg !1721, !tbaa !1121
  %314 = load i64, i64* @n_frp, align 8, !dbg !1722, !tbaa !881
  %315 = add i64 %314, 1, !dbg !1722
  store i64 %315, i64* @n_frp, align 8, !dbg !1722, !tbaa !881
  br label %316, !dbg !1723

; <label>:316:                                    ; preds = %306, %301
  %317 = phi %struct.field_range_pair* [ %309, %306 ], [ null, %301 ]
  %318 = phi i8* [ %308, %306 ], [ null, %301 ]
  %319 = phi i64 [ %315, %306 ], [ 0, %301 ]
  call void @llvm.dbg.value(metadata i64 1, metadata !1691, metadata !DIExpression()) #12, !dbg !1724
  %320 = icmp ugt i64 %257, 1, !dbg !1725
  br i1 %320, label %329, label %321, !dbg !1727

; <label>:321:                                    ; preds = %376, %316
  %322 = phi i8* [ %318, %316 ], [ %378, %376 ]
  %323 = phi %struct.field_range_pair* [ %317, %316 ], [ %377, %376 ]
  %324 = phi i64 [ %319, %316 ], [ %380, %376 ]
  %325 = add i64 %257, -1, !dbg !1728
  %326 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %302, i64 %325, i32 1, !dbg !1730
  %327 = load i64, i64* %326, align 8, !dbg !1730, !tbaa !1121
  %328 = icmp eq i64 %327, -1, !dbg !1731
  br i1 %328, label %415, label %383, !dbg !1732

; <label>:329:                                    ; preds = %316, %376
  %330 = phi %struct.field_range_pair* [ %377, %376 ], [ %317, %316 ]
  %331 = phi i8* [ %378, %376 ], [ %318, %316 ]
  %332 = phi %struct.field_range_pair* [ %379, %376 ], [ %317, %316 ]
  %333 = phi i64 [ %380, %376 ], [ %319, %316 ]
  %334 = phi i64 [ %381, %376 ], [ 1, %316 ]
  call void @llvm.dbg.value(metadata i64 %334, metadata !1691, metadata !DIExpression()) #12, !dbg !1724
  %335 = add i64 %334, -1, !dbg !1733
  %336 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %302, i64 %335, i32 1, !dbg !1736
  %337 = load i64, i64* %336, align 8, !dbg !1736, !tbaa !1121
  %338 = add i64 %337, 1, !dbg !1737
  %339 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %302, i64 %334, i32 0, !dbg !1738
  %340 = load i64, i64* %339, align 8, !dbg !1738, !tbaa !1137
  %341 = icmp eq i64 %338, %340, !dbg !1739
  br i1 %341, label %376, label %342, !dbg !1740

; <label>:342:                                    ; preds = %329
  %343 = add i64 %340, -1, !dbg !1741
  call void @llvm.dbg.value(metadata i64 %338, metadata !1457, metadata !DIExpression()) #12, !dbg !1742
  call void @llvm.dbg.value(metadata i64 %343, metadata !1462, metadata !DIExpression()) #12, !dbg !1744
  %344 = load i64, i64* @n_frp_allocated, align 8, !dbg !1745, !tbaa !881
  %345 = icmp eq i64 %333, %344, !dbg !1746
  br i1 %345, label %346, label %366, !dbg !1747

; <label>:346:                                    ; preds = %342
  call void @llvm.dbg.value(metadata i8* %331, metadata !147, metadata !DIExpression()) #12, !dbg !1748
  call void @llvm.dbg.value(metadata i64* @n_frp_allocated, metadata !148, metadata !DIExpression()) #12, !dbg !1750
  call void @llvm.dbg.value(metadata i64 16, metadata !149, metadata !DIExpression()) #12, !dbg !1751
  call void @llvm.dbg.value(metadata i64 %344, metadata !150, metadata !DIExpression()) #12, !dbg !1752
  %347 = icmp eq i8* %331, null, !dbg !1753
  br i1 %347, label %348, label %353, !dbg !1754

; <label>:348:                                    ; preds = %346
  %349 = icmp eq i64 %333, 0, !dbg !1755
  br i1 %349, label %360, label %350, !dbg !1756

; <label>:350:                                    ; preds = %348
  call void @llvm.dbg.value(metadata i64 %344, metadata !150, metadata !DIExpression()) #12, !dbg !1752
  %351 = icmp ugt i64 %333, 576460752303423487, !dbg !1757
  br i1 %351, label %352, label %360, !dbg !1758

; <label>:352:                                    ; preds = %350
  tail call void @xalloc_die() #15, !dbg !1759
  unreachable, !dbg !1759

; <label>:353:                                    ; preds = %346
  %354 = icmp ult i64 %333, 384307168202282325, !dbg !1760
  br i1 %354, label %356, label %355, !dbg !1761

; <label>:355:                                    ; preds = %353
  tail call void @xalloc_die() #15, !dbg !1762
  unreachable, !dbg !1762

; <label>:356:                                    ; preds = %353
  %357 = lshr i64 %333, 1, !dbg !1763
  %358 = add i64 %333, 1, !dbg !1764
  %359 = add i64 %358, %357, !dbg !1765
  call void @llvm.dbg.value(metadata i64 %359, metadata !150, metadata !DIExpression()) #12, !dbg !1752
  br label %360

; <label>:360:                                    ; preds = %356, %350, %348
  %361 = phi i64 [ %359, %356 ], [ %333, %350 ], [ 8, %348 ], !dbg !1766
  call void @llvm.dbg.value(metadata i64 %361, metadata !150, metadata !DIExpression()) #12, !dbg !1752
  store i64 %361, i64* @n_frp_allocated, align 8, !dbg !1767, !tbaa !881
  %362 = shl i64 %361, 4, !dbg !1768
  %363 = tail call i8* @xrealloc(i8* %331, i64 %362) #12, !dbg !1769
  store i8* %363, i8** bitcast (%struct.field_range_pair** @frp to i8**), align 8, !dbg !1770, !tbaa !770
  %364 = bitcast i8* %363 to %struct.field_range_pair*, !dbg !1771
  %365 = load i64, i64* @n_frp, align 8, !dbg !1772, !tbaa !881
  br label %366, !dbg !1771

; <label>:366:                                    ; preds = %360, %342
  %367 = phi %struct.field_range_pair* [ %364, %360 ], [ %330, %342 ]
  %368 = phi i8* [ %363, %360 ], [ %331, %342 ]
  %369 = phi %struct.field_range_pair* [ %364, %360 ], [ %332, %342 ]
  %370 = phi i64 [ %365, %360 ], [ %333, %342 ], !dbg !1772
  %371 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %369, i64 %370, i32 0, !dbg !1773
  store i64 %338, i64* %371, align 8, !dbg !1774, !tbaa !1137
  %372 = load i64, i64* @n_frp, align 8, !dbg !1775, !tbaa !881
  %373 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %369, i64 %372, i32 1, !dbg !1776
  store i64 %343, i64* %373, align 8, !dbg !1777, !tbaa !1121
  %374 = load i64, i64* @n_frp, align 8, !dbg !1778, !tbaa !881
  %375 = add i64 %374, 1, !dbg !1778
  store i64 %375, i64* @n_frp, align 8, !dbg !1778, !tbaa !881
  br label %376, !dbg !1779

; <label>:376:                                    ; preds = %366, %329
  %377 = phi %struct.field_range_pair* [ %330, %329 ], [ %367, %366 ]
  %378 = phi i8* [ %331, %329 ], [ %368, %366 ]
  %379 = phi %struct.field_range_pair* [ %332, %329 ], [ %369, %366 ]
  %380 = phi i64 [ %333, %329 ], [ %375, %366 ]
  %381 = add nuw i64 %334, 1, !dbg !1780
  call void @llvm.dbg.value(metadata i64 %381, metadata !1691, metadata !DIExpression()) #12, !dbg !1724
  %382 = icmp ult i64 %381, %257, !dbg !1725
  br i1 %382, label %329, label %321, !dbg !1727, !llvm.loop !1781

; <label>:383:                                    ; preds = %321
  %384 = add i64 %327, 1, !dbg !1784
  call void @llvm.dbg.value(metadata i64 %384, metadata !1457, metadata !DIExpression()) #12, !dbg !1785
  call void @llvm.dbg.value(metadata i64 -1, metadata !1462, metadata !DIExpression()) #12, !dbg !1787
  %385 = load i64, i64* @n_frp_allocated, align 8, !dbg !1788, !tbaa !881
  %386 = icmp eq i64 %324, %385, !dbg !1789
  br i1 %386, label %387, label %407, !dbg !1790

; <label>:387:                                    ; preds = %383
  call void @llvm.dbg.value(metadata i8* %322, metadata !147, metadata !DIExpression()) #12, !dbg !1791
  call void @llvm.dbg.value(metadata i64* @n_frp_allocated, metadata !148, metadata !DIExpression()) #12, !dbg !1793
  call void @llvm.dbg.value(metadata i64 16, metadata !149, metadata !DIExpression()) #12, !dbg !1794
  call void @llvm.dbg.value(metadata i64 %385, metadata !150, metadata !DIExpression()) #12, !dbg !1795
  %388 = icmp eq i8* %322, null, !dbg !1796
  br i1 %388, label %389, label %394, !dbg !1797

; <label>:389:                                    ; preds = %387
  %390 = icmp eq i64 %324, 0, !dbg !1798
  br i1 %390, label %401, label %391, !dbg !1799

; <label>:391:                                    ; preds = %389
  call void @llvm.dbg.value(metadata i64 %385, metadata !150, metadata !DIExpression()) #12, !dbg !1795
  %392 = icmp ugt i64 %324, 576460752303423487, !dbg !1800
  br i1 %392, label %393, label %401, !dbg !1801

; <label>:393:                                    ; preds = %391
  tail call void @xalloc_die() #15, !dbg !1802
  unreachable, !dbg !1802

; <label>:394:                                    ; preds = %387
  %395 = icmp ult i64 %324, 384307168202282325, !dbg !1803
  br i1 %395, label %397, label %396, !dbg !1804

; <label>:396:                                    ; preds = %394
  tail call void @xalloc_die() #15, !dbg !1805
  unreachable, !dbg !1805

; <label>:397:                                    ; preds = %394
  %398 = lshr i64 %324, 1, !dbg !1806
  %399 = add i64 %324, 1, !dbg !1807
  %400 = add i64 %399, %398, !dbg !1808
  call void @llvm.dbg.value(metadata i64 %400, metadata !150, metadata !DIExpression()) #12, !dbg !1795
  br label %401

; <label>:401:                                    ; preds = %397, %391, %389
  %402 = phi i64 [ %400, %397 ], [ %324, %391 ], [ 8, %389 ], !dbg !1809
  call void @llvm.dbg.value(metadata i64 %402, metadata !150, metadata !DIExpression()) #12, !dbg !1795
  store i64 %402, i64* @n_frp_allocated, align 8, !dbg !1810, !tbaa !881
  %403 = shl i64 %402, 4, !dbg !1811
  %404 = tail call i8* @xrealloc(i8* %322, i64 %403) #12, !dbg !1812
  store i8* %404, i8** bitcast (%struct.field_range_pair** @frp to i8**), align 8, !dbg !1813, !tbaa !770
  %405 = bitcast i8* %404 to %struct.field_range_pair*, !dbg !1814
  %406 = load i64, i64* @n_frp, align 8, !dbg !1815, !tbaa !881
  br label %407, !dbg !1814

; <label>:407:                                    ; preds = %401, %383
  %408 = phi i64 [ %406, %401 ], [ %324, %383 ], !dbg !1815
  %409 = phi %struct.field_range_pair* [ %405, %401 ], [ %323, %383 ], !dbg !1816
  %410 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %409, i64 %408, i32 0, !dbg !1817
  store i64 %384, i64* %410, align 8, !dbg !1818, !tbaa !1137
  %411 = load i64, i64* @n_frp, align 8, !dbg !1819, !tbaa !881
  %412 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %409, i64 %411, i32 1, !dbg !1820
  store i64 -1, i64* %412, align 8, !dbg !1821, !tbaa !1121
  %413 = load i64, i64* @n_frp, align 8, !dbg !1822, !tbaa !881
  %414 = add i64 %413, 1, !dbg !1822
  store i64 %414, i64* @n_frp, align 8, !dbg !1822, !tbaa !881
  br label %415, !dbg !1823

; <label>:415:                                    ; preds = %321, %407
  %416 = bitcast %struct.field_range_pair* %302 to i8*, !dbg !1824
  tail call void @free(i8* %416) #12, !dbg !1825
  %417 = load i64, i64* @n_frp, align 8, !dbg !1826, !tbaa !881
  br label %418, !dbg !1827

; <label>:418:                                    ; preds = %256, %415
  %419 = phi i64 [ %257, %256 ], [ %417, %415 ], !dbg !1826
  %420 = add i64 %419, 1, !dbg !1826
  store i64 %420, i64* @n_frp, align 8, !dbg !1826, !tbaa !881
  %421 = load i8*, i8** bitcast (%struct.field_range_pair** @frp to i8**), align 8, !dbg !1828, !tbaa !770
  %422 = shl i64 %420, 4, !dbg !1829
  %423 = tail call i8* @xrealloc(i8* %421, i64 %422) #12, !dbg !1830
  %424 = bitcast i8* %423 to %struct.field_range_pair*, !dbg !1830
  store i8* %423, i8** bitcast (%struct.field_range_pair** @frp to i8**), align 8, !dbg !1831, !tbaa !770
  %425 = load i64, i64* @n_frp, align 8, !dbg !1832, !tbaa !881
  %426 = add i64 %425, -1, !dbg !1833
  %427 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %424, i64 %426, i32 1, !dbg !1834
  store i64 -1, i64* %427, align 8, !dbg !1835, !tbaa !1121
  %428 = load i64, i64* @n_frp, align 8, !dbg !1836, !tbaa !881
  %429 = add i64 %428, -1, !dbg !1837
  %430 = getelementptr inbounds %struct.field_range_pair, %struct.field_range_pair* %424, i64 %429, i32 0, !dbg !1838
  store i64 -1, i64* %430, align 8, !dbg !1839, !tbaa !1137
  ret void, !dbg !1840
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: nounwind readonly
declare i64 @strspn(i8* nocapture, i8* nocapture) local_unnamed_addr #5

; Function Attrs: nounwind readonly sspstrong uwtable
define internal i32 @compare_ranges(i8* nocapture readonly, i8* nocapture readonly) #10 !dbg !1841 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1847, metadata !DIExpression()), !dbg !1851
  call void @llvm.dbg.value(metadata i8* %1, metadata !1848, metadata !DIExpression()), !dbg !1852
  %3 = bitcast i8* %0 to i64*, !dbg !1853
  %4 = load i64, i64* %3, align 8, !dbg !1853, !tbaa !1137
  %5 = trunc i64 %4 to i32, !dbg !1854
  call void @llvm.dbg.value(metadata i32 %5, metadata !1849, metadata !DIExpression()), !dbg !1855
  %6 = bitcast i8* %1 to i64*, !dbg !1856
  %7 = load i64, i64* %6, align 8, !dbg !1856, !tbaa !1137
  %8 = trunc i64 %7 to i32, !dbg !1857
  call void @llvm.dbg.value(metadata i32 %8, metadata !1850, metadata !DIExpression()), !dbg !1858
  %9 = icmp slt i32 %5, %8, !dbg !1859
  %10 = icmp sgt i32 %5, %8, !dbg !1860
  %11 = zext i1 %10 to i32, !dbg !1860
  %12 = select i1 %9, i32 -1, i32 %11, !dbg !1861
  ret i32 %12, !dbg !1862
}

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)* nocapture) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i1) #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @reset_fields() local_unnamed_addr #7 !dbg !1863 {
  store i64 0, i64* @n_frp, align 8, !dbg !1864, !tbaa !881
  store i64 0, i64* @n_frp_allocated, align 8, !dbg !1865, !tbaa !881
  %1 = load i8*, i8** bitcast (%struct.field_range_pair** @frp to i8**), align 8, !dbg !1866, !tbaa !770
  tail call void @free(i8* %1) #12, !dbg !1867
  store %struct.field_range_pair* null, %struct.field_range_pair** @frp, align 8, !dbg !1868, !tbaa !770
  ret void, !dbg !1869
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_file_name(i8*) local_unnamed_addr #7 !dbg !1870 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1872, metadata !DIExpression()), !dbg !1873
  store i8* %0, i8** @file_name, align 8, !dbg !1874, !tbaa !770
  ret void, !dbg !1875
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #7 !dbg !1876 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i1 %0, metadata !1880, metadata !DIExpression()), !dbg !1881
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1882, !tbaa !1883
  ret void, !dbg !1885
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #7 !dbg !1886 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1891, !tbaa !770
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #12, !dbg !1892
  %3 = icmp eq i32 %2, 0, !dbg !1893
  br i1 %3, label %22, label %4, !dbg !1894

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1895, !tbaa !1883, !range !1896
  %6 = icmp eq i8 %5, 0, !dbg !1895
  br i1 %6, label %11, label %7, !dbg !1897

; <label>:7:                                      ; preds = %4
  %8 = tail call i32* @__errno_location() #17, !dbg !1898
  %9 = load i32, i32* %8, align 4, !dbg !1898, !tbaa !930
  %10 = icmp eq i32 %9, 32, !dbg !1899
  br i1 %10, label %22, label %11, !dbg !1900

; <label>:11:                                     ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.77, i64 0, i64 0), i32 5) #12, !dbg !1901
  call void @llvm.dbg.value(metadata i8* %12, metadata !1888, metadata !DIExpression()), !dbg !1902
  %13 = load i8*, i8** @file_name, align 8, !dbg !1903, !tbaa !770
  %14 = icmp eq i8* %13, null, !dbg !1903
  %15 = tail call i32* @__errno_location() #17, !dbg !1905
  %16 = load i32, i32* %15, align 4, !dbg !1905, !tbaa !930
  br i1 %14, label %19, label %17, !dbg !1906

; <label>:17:                                     ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #12, !dbg !1907
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.78, i64 0, i64 0), i8* %18, i8* %12) #12, !dbg !1908
  br label %20, !dbg !1908

; <label>:19:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.79, i64 0, i64 0), i8* %12) #12, !dbg !1909
  br label %20

; <label>:20:                                     ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1910, !tbaa !930
  tail call void @_exit(i32 %21) #15, !dbg !1911
  unreachable, !dbg !1911

; <label>:22:                                     ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1912, !tbaa !770
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #12, !dbg !1914
  %25 = icmp eq i32 %24, 0, !dbg !1915
  br i1 %25, label %28, label %26, !dbg !1916

; <label>:26:                                     ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1917, !tbaa !930
  tail call void @_exit(i32 %27) #15, !dbg !1918
  unreachable, !dbg !1918

; <label>:28:                                     ; preds = %22
  ret void, !dbg !1919
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #11

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fdadvise(i32, i64, i64, i32) local_unnamed_addr #7 !dbg !1920 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1927, metadata !DIExpression()), !dbg !1933
  call void @llvm.dbg.value(metadata i64 %1, metadata !1928, metadata !DIExpression()), !dbg !1934
  call void @llvm.dbg.value(metadata i64 %2, metadata !1929, metadata !DIExpression()), !dbg !1935
  call void @llvm.dbg.value(metadata i32 %3, metadata !1930, metadata !DIExpression()), !dbg !1936
  %5 = tail call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #12, !dbg !1937
  call void @llvm.dbg.value(metadata i32 %5, metadata !1931, metadata !DIExpression()), !dbg !1937
  ret void, !dbg !1938
}

; Function Attrs: nounwind
declare i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fadvise(%struct._IO_FILE*, i32) local_unnamed_addr #7 !dbg !1939 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1977, metadata !DIExpression()), !dbg !1979
  call void @llvm.dbg.value(metadata i32 %1, metadata !1978, metadata !DIExpression()), !dbg !1980
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !1981
  br i1 %3, label %7, label %4, !dbg !1983

; <label>:4:                                      ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !1984
  call void @llvm.dbg.value(metadata i32 %5, metadata !1927, metadata !DIExpression()) #12, !dbg !1985
  call void @llvm.dbg.value(metadata i64 0, metadata !1928, metadata !DIExpression()) #12, !dbg !1987
  call void @llvm.dbg.value(metadata i64 0, metadata !1929, metadata !DIExpression()) #12, !dbg !1988
  call void @llvm.dbg.value(metadata i32 %1, metadata !1930, metadata !DIExpression()) #12, !dbg !1989
  %6 = tail call i32 @posix_fadvise(i32 %5, i64 0, i64 0, i32 %1) #12, !dbg !1990
  call void @llvm.dbg.value(metadata i32 %6, metadata !1931, metadata !DIExpression()) #12, !dbg !1990
  br label %7, !dbg !1991

; <label>:7:                                      ; preds = %2, %4
  ret void, !dbg !1992
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @getndelim2(i8** nocapture, i64* nocapture, i64, i64, i32, i32, %struct._IO_FILE*) local_unnamed_addr #7 !dbg !1993 {
  %8 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8** %0, metadata !2032, metadata !DIExpression()), !dbg !2064
  call void @llvm.dbg.value(metadata i64* %1, metadata !2033, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata i64 %2, metadata !2034, metadata !DIExpression()), !dbg !2066
  call void @llvm.dbg.value(metadata i64 %3, metadata !2035, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i32 %4, metadata !2036, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i32 %5, metadata !2037, metadata !DIExpression()), !dbg !2069
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %6, metadata !2038, metadata !DIExpression()), !dbg !2070
  call void @llvm.dbg.value(metadata i64 -1, metadata !2041, metadata !DIExpression()), !dbg !2071
  %9 = load i8*, i8** %0, align 8, !dbg !2072, !tbaa !770
  call void @llvm.dbg.value(metadata i8* %9, metadata !2042, metadata !DIExpression()), !dbg !2073
  %10 = load i64, i64* %1, align 8, !dbg !2074, !tbaa !881
  call void @llvm.dbg.value(metadata i64 %10, metadata !2043, metadata !DIExpression()), !dbg !2075
  %11 = icmp eq i8* %9, null, !dbg !2076
  br i1 %11, label %12, label %17, !dbg !2078

; <label>:12:                                     ; preds = %7
  %13 = icmp ult i64 %3, 64, !dbg !2079
  %14 = select i1 %13, i64 %3, i64 64, !dbg !2081
  call void @llvm.dbg.value(metadata i64 %14, metadata !2043, metadata !DIExpression()), !dbg !2075
  %15 = tail call noalias i8* @malloc(i64 %14) #12, !dbg !2082
  call void @llvm.dbg.value(metadata i8* %15, metadata !2042, metadata !DIExpression()), !dbg !2073
  %16 = icmp eq i8* %15, null, !dbg !2083
  br i1 %16, label %153, label %17, !dbg !2085

; <label>:17:                                     ; preds = %12, %7
  %18 = phi i8* [ %9, %7 ], [ %15, %12 ], !dbg !2086
  %19 = phi i64 [ %10, %7 ], [ %14, %12 ], !dbg !2086
  call void @llvm.dbg.value(metadata i64 %19, metadata !2043, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i8* %18, metadata !2042, metadata !DIExpression()), !dbg !2073
  %20 = icmp ult i64 %19, %2, !dbg !2087
  br i1 %20, label %140, label %21, !dbg !2089

; <label>:21:                                     ; preds = %17
  %22 = sub i64 %19, %2, !dbg !2090
  call void @llvm.dbg.value(metadata i64 %22, metadata !2039, metadata !DIExpression()), !dbg !2091
  %23 = icmp ne i64 %22, 0, !dbg !2092
  %24 = icmp ult i64 %19, %3, !dbg !2094
  %25 = or i1 %24, %23, !dbg !2095
  br i1 %25, label %26, label %140, !dbg !2095

; <label>:26:                                     ; preds = %21
  %27 = getelementptr inbounds i8, i8* %18, i64 %2, !dbg !2096
  call void @llvm.dbg.value(metadata i8* %27, metadata !2040, metadata !DIExpression()), !dbg !2097
  %28 = icmp eq i32 %4, -1, !dbg !2098
  %29 = icmp eq i32 %5, -1, !dbg !2100
  %30 = select i1 %29, i32 %4, i32 %5, !dbg !2102
  %31 = select i1 %28, i32 %5, i32 %30, !dbg !2103
  %32 = select i1 %28, i32 %5, i32 %4, !dbg !2103
  call void @llvm.dbg.value(metadata i32 %32, metadata !2036, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i32 %31, metadata !2037, metadata !DIExpression()), !dbg !2069
  call void @llvm.dbg.value(metadata i8 0, metadata !2044, metadata !DIExpression()), !dbg !2104
  %33 = bitcast i64* %8 to i8*
  %34 = icmp eq i32 %32, -1
  %35 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %6, i64 0, i32 1
  %36 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %6, i64 0, i32 2
  %37 = xor i64 %2, -9223372036854775808
  br label %38, !dbg !2105

; <label>:38:                                     ; preds = %135, %26
  %39 = phi i8* [ %27, %26 ], [ %128, %135 ], !dbg !2106
  %40 = phi i8* [ %18, %26 ], [ %112, %135 ], !dbg !2107
  %41 = phi i64 [ %19, %26 ], [ %113, %135 ], !dbg !2107
  %42 = phi i8 [ 0, %26 ], [ %76, %135 ], !dbg !2108
  %43 = phi i32 [ undef, %26 ], [ %77, %135 ]
  %44 = phi i64 [ %22, %26 ], [ %129, %135 ], !dbg !2106
  call void @llvm.dbg.value(metadata i64 %44, metadata !2039, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i32 %43, metadata !2045, metadata !DIExpression()), !dbg !2111
  call void @llvm.dbg.value(metadata i8 %42, metadata !2044, metadata !DIExpression()), !dbg !2104
  call void @llvm.dbg.value(metadata i64 %41, metadata !2043, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i8* %40, metadata !2042, metadata !DIExpression()), !dbg !2073
  call void @llvm.dbg.value(metadata i8* %39, metadata !2040, metadata !DIExpression()), !dbg !2097
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %33) #12, !dbg !2112
  call void @llvm.dbg.value(metadata i64* %8, metadata !2048, metadata !DIExpression(DW_OP_deref)), !dbg !2113
  %45 = call i8* @freadptr(%struct._IO_FILE* %6, i64* nonnull %8) #12, !dbg !2114
  call void @llvm.dbg.value(metadata i8* %45, metadata !2047, metadata !DIExpression()), !dbg !2115
  %46 = icmp ne i8* %45, null, !dbg !2116
  br i1 %46, label %47, label %57, !dbg !2117

; <label>:47:                                     ; preds = %38
  %48 = load i64, i64* %8, align 8, !dbg !2118, !tbaa !881
  br i1 %34, label %74, label %49, !dbg !2119

; <label>:49:                                     ; preds = %47
  call void @llvm.dbg.value(metadata i64 %48, metadata !2048, metadata !DIExpression()), !dbg !2113
  %50 = call i8* @memchr2(i8* nonnull %45, i32 %32, i32 %31, i64 %48) #14, !dbg !2120
  call void @llvm.dbg.value(metadata i8* %50, metadata !2049, metadata !DIExpression()), !dbg !2121
  %51 = icmp eq i8* %50, null, !dbg !2122
  br i1 %51, label %74, label %52, !dbg !2123

; <label>:52:                                     ; preds = %49
  %53 = ptrtoint i8* %50 to i64, !dbg !2124
  %54 = ptrtoint i8* %45 to i64, !dbg !2124
  %55 = sub i64 1, %54, !dbg !2124
  %56 = add i64 %55, %53, !dbg !2125
  call void @llvm.dbg.value(metadata i64 %56, metadata !2048, metadata !DIExpression()), !dbg !2113
  store i64 %56, i64* %8, align 8, !dbg !2126, !tbaa !881
  call void @llvm.dbg.value(metadata i8 1, metadata !2044, metadata !DIExpression()), !dbg !2104
  br label %74, !dbg !2127

; <label>:57:                                     ; preds = %38
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %6, metadata !2128, metadata !DIExpression()) #12, !dbg !2133
  %58 = load i8*, i8** %35, align 8, !dbg !2136, !tbaa !1078
  %59 = load i8*, i8** %36, align 8, !dbg !2136, !tbaa !1081
  %60 = icmp ult i8* %58, %59, !dbg !2136
  br i1 %60, label %61, label %65, !dbg !2136, !prof !1082

; <label>:61:                                     ; preds = %57
  %62 = getelementptr inbounds i8, i8* %58, i64 1, !dbg !2136
  store i8* %62, i8** %35, align 8, !dbg !2136, !tbaa !1078
  %63 = load i8, i8* %58, align 1, !dbg !2136, !tbaa !838
  %64 = zext i8 %63 to i32, !dbg !2136
  call void @llvm.dbg.value(metadata i32 %66, metadata !2045, metadata !DIExpression()), !dbg !2111
  br label %68, !dbg !2137

; <label>:65:                                     ; preds = %57
  %66 = call i32 @__uflow(%struct._IO_FILE* nonnull %6) #12, !dbg !2136
  call void @llvm.dbg.value(metadata i32 %66, metadata !2045, metadata !DIExpression()), !dbg !2111
  %67 = icmp eq i32 %66, -1, !dbg !2138
  br i1 %67, label %138, label %68, !dbg !2137

; <label>:68:                                     ; preds = %61, %65
  %69 = phi i32 [ %64, %61 ], [ %66, %65 ]
  %70 = icmp eq i32 %69, %32, !dbg !2140
  %71 = icmp eq i32 %69, %31, !dbg !2142
  %72 = or i1 %70, %71, !dbg !2143
  call void @llvm.dbg.value(metadata i8 1, metadata !2044, metadata !DIExpression()), !dbg !2104
  %73 = select i1 %72, i8 1, i8 %42, !dbg !2143
  call void @llvm.dbg.value(metadata i8 %73, metadata !2044, metadata !DIExpression()), !dbg !2104
  call void @llvm.dbg.value(metadata i64 1, metadata !2048, metadata !DIExpression()), !dbg !2113
  store i64 1, i64* %8, align 8, !dbg !2144, !tbaa !881
  br label %74

; <label>:74:                                     ; preds = %47, %52, %49, %68
  %75 = phi i64 [ 1, %68 ], [ %56, %52 ], [ %48, %49 ], [ %48, %47 ], !dbg !2145
  %76 = phi i8 [ %73, %68 ], [ 1, %52 ], [ %42, %49 ], [ %42, %47 ], !dbg !2146
  %77 = phi i32 [ %69, %68 ], [ %43, %52 ], [ %43, %49 ], [ %43, %47 ]
  call void @llvm.dbg.value(metadata i32 %77, metadata !2045, metadata !DIExpression()), !dbg !2111
  call void @llvm.dbg.value(metadata i8 %76, metadata !2044, metadata !DIExpression()), !dbg !2104
  call void @llvm.dbg.value(metadata i64 %75, metadata !2048, metadata !DIExpression()), !dbg !2113
  %78 = add i64 %75, 1, !dbg !2147
  %79 = icmp ult i64 %44, %78, !dbg !2148
  %80 = icmp ult i64 %41, %3, !dbg !2149
  %81 = and i1 %80, %79, !dbg !2150
  br i1 %81, label %82, label %110, !dbg !2150

; <label>:82:                                     ; preds = %74
  %83 = icmp ult i64 %41, 64, !dbg !2151
  %84 = add i64 %41, 64, !dbg !2152
  %85 = shl i64 %41, 1, !dbg !2153
  %86 = select i1 %83, i64 %84, i64 %85, !dbg !2154
  call void @llvm.dbg.value(metadata i64 %86, metadata !2054, metadata !DIExpression()), !dbg !2155
  %87 = ptrtoint i8* %39 to i64, !dbg !2156
  %88 = ptrtoint i8* %40 to i64, !dbg !2156
  %89 = sub i64 %87, %88, !dbg !2156
  %90 = sub i64 %86, %89, !dbg !2158
  %91 = icmp ult i64 %90, %78, !dbg !2159
  %92 = add i64 %78, %89, !dbg !2160
  call void @llvm.dbg.value(metadata i64 %92, metadata !2054, metadata !DIExpression()), !dbg !2155
  %93 = select i1 %91, i64 %92, i64 %86, !dbg !2161
  call void @llvm.dbg.value(metadata i64 %93, metadata !2054, metadata !DIExpression()), !dbg !2155
  %94 = icmp uge i64 %41, %93, !dbg !2162
  %95 = icmp ugt i64 %93, %3, !dbg !2164
  %96 = or i1 %94, %95, !dbg !2165
  call void @llvm.dbg.value(metadata i64 %3, metadata !2054, metadata !DIExpression()), !dbg !2155
  %97 = select i1 %96, i64 %3, i64 %93, !dbg !2165
  call void @llvm.dbg.value(metadata i64 %97, metadata !2054, metadata !DIExpression()), !dbg !2155
  %98 = sub i64 %97, %2, !dbg !2166
  %99 = icmp slt i64 %98, 0, !dbg !2167
  br i1 %99, label %100, label %103, !dbg !2168

; <label>:100:                                    ; preds = %82
  call void @llvm.dbg.value(metadata i64 %37, metadata !2058, metadata !DIExpression()), !dbg !2169
  %101 = icmp eq i64 %41, %37, !dbg !2170
  br i1 %101, label %102, label %103

; <label>:102:                                    ; preds = %100
  call void @llvm.dbg.value(metadata i8* %40, metadata !2042, metadata !DIExpression()), !dbg !2073
  call void @llvm.dbg.value(metadata i8* %40, metadata !2042, metadata !DIExpression()), !dbg !2073
  call void @llvm.dbg.value(metadata i8* %40, metadata !2042, metadata !DIExpression()), !dbg !2073
  call void @llvm.dbg.value(metadata i8* %40, metadata !2042, metadata !DIExpression()), !dbg !2073
  call void @llvm.dbg.value(metadata i64 %44, metadata !2039, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i64 %41, metadata !2043, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i8* %40, metadata !2042, metadata !DIExpression()), !dbg !2073
  call void @llvm.dbg.value(metadata i8* %39, metadata !2040, metadata !DIExpression()), !dbg !2097
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %33) #12, !dbg !2172
  br label %140

; <label>:103:                                    ; preds = %100, %82
  %104 = phi i64 [ %37, %100 ], [ %97, %82 ], !dbg !2173
  call void @llvm.dbg.value(metadata i64 %104, metadata !2054, metadata !DIExpression()), !dbg !2155
  %105 = sub i64 %104, %89, !dbg !2174
  call void @llvm.dbg.value(metadata i64 %105, metadata !2039, metadata !DIExpression()), !dbg !2091
  %106 = call i8* @realloc(i8* %40, i64 %104) #12, !dbg !2175
  call void @llvm.dbg.value(metadata i8* %106, metadata !2057, metadata !DIExpression()), !dbg !2176
  %107 = icmp eq i8* %106, null, !dbg !2177
  %108 = getelementptr inbounds i8, i8* %106, i64 %89, !dbg !2179
  br i1 %107, label %109, label %110

; <label>:109:                                    ; preds = %103
  call void @llvm.dbg.value(metadata i8* %40, metadata !2042, metadata !DIExpression()), !dbg !2073
  call void @llvm.dbg.value(metadata i64 %41, metadata !2043, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i8* %40, metadata !2042, metadata !DIExpression()), !dbg !2073
  call void @llvm.dbg.value(metadata i64 %41, metadata !2043, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i8* %40, metadata !2042, metadata !DIExpression()), !dbg !2073
  call void @llvm.dbg.value(metadata i64 %41, metadata !2043, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i8* %40, metadata !2042, metadata !DIExpression()), !dbg !2073
  call void @llvm.dbg.value(metadata i64 %41, metadata !2043, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i8* %40, metadata !2042, metadata !DIExpression()), !dbg !2073
  call void @llvm.dbg.value(metadata i64 %41, metadata !2043, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i8* %40, metadata !2042, metadata !DIExpression()), !dbg !2073
  call void @llvm.dbg.value(metadata i64 %41, metadata !2043, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i64 %44, metadata !2039, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i64 %41, metadata !2043, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i8* %40, metadata !2042, metadata !DIExpression()), !dbg !2073
  call void @llvm.dbg.value(metadata i8* %39, metadata !2040, metadata !DIExpression()), !dbg !2097
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %33) #12, !dbg !2172
  br label %140

; <label>:110:                                    ; preds = %103, %74
  %111 = phi i8* [ %39, %74 ], [ %108, %103 ], !dbg !2180
  %112 = phi i8* [ %40, %74 ], [ %106, %103 ], !dbg !2180
  %113 = phi i64 [ %41, %74 ], [ %104, %103 ], !dbg !2180
  %114 = phi i64 [ %44, %74 ], [ %105, %103 ], !dbg !2180
  call void @llvm.dbg.value(metadata i64 %114, metadata !2039, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i64 %113, metadata !2043, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i8* %112, metadata !2042, metadata !DIExpression()), !dbg !2073
  call void @llvm.dbg.value(metadata i8* %111, metadata !2040, metadata !DIExpression()), !dbg !2097
  %115 = icmp ugt i64 %114, 1, !dbg !2181
  br i1 %115, label %116, label %127, !dbg !2182

; <label>:116:                                    ; preds = %110
  %117 = add i64 %114, -1, !dbg !2183
  call void @llvm.dbg.value(metadata i64 %117, metadata !2061, metadata !DIExpression()), !dbg !2184
  %118 = load i64, i64* %8, align 8, !dbg !2185, !tbaa !881
  call void @llvm.dbg.value(metadata i64 %118, metadata !2048, metadata !DIExpression()), !dbg !2113
  %119 = icmp ult i64 %118, %117, !dbg !2187
  %120 = select i1 %119, i64 %118, i64 %117, !dbg !2188
  call void @llvm.dbg.value(metadata i64 %120, metadata !2061, metadata !DIExpression()), !dbg !2184
  br i1 %46, label %121, label %122, !dbg !2189

; <label>:121:                                    ; preds = %116
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %111, i8* nonnull align 1 %45, i64 %120, i1 false), !dbg !2190
  br label %124, !dbg !2190

; <label>:122:                                    ; preds = %116
  %123 = trunc i32 %77 to i8, !dbg !2192
  store i8 %123, i8* %111, align 1, !dbg !2193, !tbaa !838
  br label %124

; <label>:124:                                    ; preds = %122, %121
  %125 = getelementptr inbounds i8, i8* %111, i64 %120, !dbg !2194
  call void @llvm.dbg.value(metadata i8* %125, metadata !2040, metadata !DIExpression()), !dbg !2097
  %126 = sub i64 %114, %120, !dbg !2195
  call void @llvm.dbg.value(metadata i64 %126, metadata !2039, metadata !DIExpression()), !dbg !2091
  br label %127, !dbg !2196

; <label>:127:                                    ; preds = %124, %110
  %128 = phi i8* [ %125, %124 ], [ %111, %110 ], !dbg !2107
  %129 = phi i64 [ %126, %124 ], [ %114, %110 ], !dbg !2107
  call void @llvm.dbg.value(metadata i64 %129, metadata !2039, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i8* %128, metadata !2040, metadata !DIExpression()), !dbg !2097
  br i1 %46, label %130, label %135, !dbg !2197

; <label>:130:                                    ; preds = %127
  %131 = load i64, i64* %8, align 8, !dbg !2199, !tbaa !881
  call void @llvm.dbg.value(metadata i64 %131, metadata !2048, metadata !DIExpression()), !dbg !2113
  %132 = call i32 @freadseek(%struct._IO_FILE* %6, i64 %131) #12, !dbg !2200
  %133 = icmp eq i32 %132, 0, !dbg !2200
  br i1 %133, label %135, label %134, !dbg !2201

; <label>:134:                                    ; preds = %130
  call void @llvm.dbg.value(metadata i8* %112, metadata !2042, metadata !DIExpression()), !dbg !2073
  call void @llvm.dbg.value(metadata i64 %113, metadata !2043, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i8* %112, metadata !2042, metadata !DIExpression()), !dbg !2073
  call void @llvm.dbg.value(metadata i64 %113, metadata !2043, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i8* %112, metadata !2042, metadata !DIExpression()), !dbg !2073
  call void @llvm.dbg.value(metadata i64 %113, metadata !2043, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i8* %112, metadata !2042, metadata !DIExpression()), !dbg !2073
  call void @llvm.dbg.value(metadata i64 %113, metadata !2043, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i8* %112, metadata !2042, metadata !DIExpression()), !dbg !2073
  call void @llvm.dbg.value(metadata i64 %113, metadata !2043, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i8* %112, metadata !2042, metadata !DIExpression()), !dbg !2073
  call void @llvm.dbg.value(metadata i64 %113, metadata !2043, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i64 %44, metadata !2039, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i64 %41, metadata !2043, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i8* %40, metadata !2042, metadata !DIExpression()), !dbg !2073
  call void @llvm.dbg.value(metadata i8* %39, metadata !2040, metadata !DIExpression()), !dbg !2097
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %33) #12, !dbg !2172
  br label %140

; <label>:135:                                    ; preds = %127, %130
  call void @llvm.dbg.value(metadata i64 %44, metadata !2039, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i64 %41, metadata !2043, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i8* %40, metadata !2042, metadata !DIExpression()), !dbg !2073
  call void @llvm.dbg.value(metadata i8* %39, metadata !2040, metadata !DIExpression()), !dbg !2097
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %33) #12, !dbg !2172
  %136 = and i8 %76, 1, !dbg !2202
  %137 = icmp eq i8 %136, 0, !dbg !2202
  br i1 %137, label %38, label %143, !dbg !2203, !llvm.loop !2204

; <label>:138:                                    ; preds = %65
  call void @llvm.dbg.value(metadata i8* %39, metadata !2040, metadata !DIExpression()), !dbg !2097
  call void @llvm.dbg.value(metadata i8* %40, metadata !2042, metadata !DIExpression()), !dbg !2073
  call void @llvm.dbg.value(metadata i64 %41, metadata !2043, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i8* %39, metadata !2040, metadata !DIExpression()), !dbg !2097
  call void @llvm.dbg.value(metadata i8* %40, metadata !2042, metadata !DIExpression()), !dbg !2073
  call void @llvm.dbg.value(metadata i64 %41, metadata !2043, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i8* %39, metadata !2040, metadata !DIExpression()), !dbg !2097
  call void @llvm.dbg.value(metadata i8* %40, metadata !2042, metadata !DIExpression()), !dbg !2073
  call void @llvm.dbg.value(metadata i64 %41, metadata !2043, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i8* %39, metadata !2040, metadata !DIExpression()), !dbg !2097
  call void @llvm.dbg.value(metadata i8* %40, metadata !2042, metadata !DIExpression()), !dbg !2073
  call void @llvm.dbg.value(metadata i64 %41, metadata !2043, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i8* %39, metadata !2040, metadata !DIExpression()), !dbg !2097
  call void @llvm.dbg.value(metadata i8* %40, metadata !2042, metadata !DIExpression()), !dbg !2073
  call void @llvm.dbg.value(metadata i64 %41, metadata !2043, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i8* %39, metadata !2040, metadata !DIExpression()), !dbg !2097
  call void @llvm.dbg.value(metadata i8* %40, metadata !2042, metadata !DIExpression()), !dbg !2073
  call void @llvm.dbg.value(metadata i64 %41, metadata !2043, metadata !DIExpression()), !dbg !2075
  %139 = icmp eq i8* %39, %40, !dbg !2206
  call void @llvm.dbg.value(metadata i64 %44, metadata !2039, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i64 %41, metadata !2043, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i8* %40, metadata !2042, metadata !DIExpression()), !dbg !2073
  call void @llvm.dbg.value(metadata i8* %39, metadata !2040, metadata !DIExpression()), !dbg !2097
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %33) #12, !dbg !2172
  br i1 %139, label %140, label %143

; <label>:140:                                    ; preds = %138, %102, %17, %21, %134, %109
  %141 = phi i8* [ %112, %134 ], [ %18, %21 ], [ %40, %138 ], [ %18, %17 ], [ %40, %109 ], [ %40, %102 ]
  %142 = phi i64 [ %113, %134 ], [ %19, %21 ], [ %41, %138 ], [ %19, %17 ], [ %41, %109 ], [ %37, %102 ]
  call void @llvm.dbg.value(metadata i64 %144, metadata !2043, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i8* %145, metadata !2042, metadata !DIExpression()), !dbg !2073
  call void @llvm.dbg.value(metadata i64 %150, metadata !2041, metadata !DIExpression()), !dbg !2071
  store i8* %141, i8** %0, align 8, !dbg !2209, !tbaa !770
  store i64 %142, i64* %1, align 8, !dbg !2210, !tbaa !881
  br label %153, !dbg !2211

; <label>:143:                                    ; preds = %135, %138
  %144 = phi i64 [ %41, %138 ], [ %113, %135 ]
  %145 = phi i8* [ %40, %138 ], [ %112, %135 ]
  %146 = phi i8* [ %39, %138 ], [ %128, %135 ]
  store i8 0, i8* %146, align 1, !dbg !2212, !tbaa !838
  %147 = getelementptr inbounds i8, i8* %145, i64 %2, !dbg !2213
  %148 = ptrtoint i8* %146 to i64, !dbg !2214
  %149 = ptrtoint i8* %147 to i64, !dbg !2214
  %150 = sub i64 %148, %149, !dbg !2214
  call void @llvm.dbg.value(metadata i64 %150, metadata !2041, metadata !DIExpression()), !dbg !2071
  call void @llvm.dbg.value(metadata i64 %144, metadata !2043, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i8* %145, metadata !2042, metadata !DIExpression()), !dbg !2073
  call void @llvm.dbg.value(metadata i64 %150, metadata !2041, metadata !DIExpression()), !dbg !2071
  store i8* %145, i8** %0, align 8, !dbg !2209, !tbaa !770
  store i64 %144, i64* %1, align 8, !dbg !2210, !tbaa !881
  %151 = icmp eq i64 %150, 0, !dbg !2211
  %152 = select i1 %151, i64 -1, i64 %150, !dbg !2211
  ret i64 %152, !dbg !2211

; <label>:153:                                    ; preds = %140, %12
  ret i64 -1, !dbg !2215
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i8* @memchr2(i8*, i32, i32, i64) local_unnamed_addr #10 !dbg !2216 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2221, metadata !DIExpression()), !dbg !2239
  call void @llvm.dbg.value(metadata i32 %1, metadata !2222, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata i32 %2, metadata !2223, metadata !DIExpression()), !dbg !2241
  call void @llvm.dbg.value(metadata i64 %3, metadata !2224, metadata !DIExpression()), !dbg !2242
  call void @llvm.dbg.value(metadata i32 %1, metadata !2234, metadata !DIExpression()), !dbg !2243
  call void @llvm.dbg.value(metadata i32 %2, metadata !2235, metadata !DIExpression()), !dbg !2244
  %5 = insertelement <2 x i32> undef, i32 %1, i32 0, !dbg !2245
  %6 = insertelement <2 x i32> %5, i32 %2, i32 1, !dbg !2245
  %7 = and <2 x i32> %6, <i32 255, i32 255>, !dbg !2245
  %8 = extractelement <2 x i32> %7, i32 0, !dbg !2247
  %9 = extractelement <2 x i32> %7, i32 1, !dbg !2247
  %10 = icmp eq i32 %8, %9, !dbg !2247
  br i1 %10, label %17, label %11, !dbg !2248

; <label>:11:                                     ; preds = %4
  call void @llvm.dbg.value(metadata i64 %3, metadata !2224, metadata !DIExpression()), !dbg !2242
  call void @llvm.dbg.value(metadata i8* %0, metadata !2226, metadata !DIExpression()), !dbg !2249
  %12 = icmp ne i64 %3, 0, !dbg !2250
  %13 = ptrtoint i8* %0 to i64, !dbg !2253
  %14 = and i64 %13, 7, !dbg !2254
  %15 = icmp ne i64 %14, 0, !dbg !2255
  %16 = and i1 %12, %15, !dbg !2256
  br i1 %16, label %19, label %35, !dbg !2257

; <label>:17:                                     ; preds = %4
  %18 = tail call i8* @memchr(i8* %0, i32 %8, i64 %3) #14, !dbg !2258
  br label %86, !dbg !2259

; <label>:19:                                     ; preds = %11, %27
  %20 = phi i64 [ %29, %27 ], [ %3, %11 ]
  %21 = phi i8* [ %28, %27 ], [ %0, %11 ]
  call void @llvm.dbg.value(metadata i64 %20, metadata !2224, metadata !DIExpression()), !dbg !2242
  call void @llvm.dbg.value(metadata i8* %21, metadata !2226, metadata !DIExpression()), !dbg !2249
  call void @llvm.dbg.value(metadata i8* %21, metadata !2225, metadata !DIExpression()), !dbg !2260
  %22 = load i8, i8* %21, align 1, !dbg !2261, !tbaa !838
  %23 = zext i8 %22 to i32, !dbg !2261
  %24 = icmp eq i32 %8, %23, !dbg !2264
  %25 = icmp eq i32 %9, %23, !dbg !2265
  %26 = or i1 %24, %25, !dbg !2266
  br i1 %26, label %86, label %27, !dbg !2266

; <label>:27:                                     ; preds = %19
  %28 = getelementptr inbounds i8, i8* %21, i64 1, !dbg !2267
  %29 = add i64 %20, -1, !dbg !2268
  call void @llvm.dbg.value(metadata i64 %29, metadata !2224, metadata !DIExpression()), !dbg !2242
  call void @llvm.dbg.value(metadata i8* %28, metadata !2226, metadata !DIExpression()), !dbg !2249
  %30 = icmp ne i64 %29, 0, !dbg !2250
  %31 = ptrtoint i8* %28 to i64, !dbg !2253
  %32 = and i64 %31, 7, !dbg !2254
  %33 = icmp ne i64 %32, 0, !dbg !2255
  %34 = and i1 %30, %33, !dbg !2256
  br i1 %34, label %19, label %35, !dbg !2257, !llvm.loop !2269

; <label>:35:                                     ; preds = %27, %11
  %36 = phi i8* [ %0, %11 ], [ %28, %27 ], !dbg !2271
  %37 = phi i64 [ %3, %11 ], [ %29, %27 ]
  call void @llvm.dbg.value(metadata i8* %36, metadata !2226, metadata !DIExpression()), !dbg !2249
  call void @llvm.dbg.value(metadata i64 %37, metadata !2224, metadata !DIExpression()), !dbg !2242
  %38 = bitcast i8* %36 to i64*, !dbg !2272
  call void @llvm.dbg.value(metadata i64* %38, metadata !2227, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata i64 16843009, metadata !2231, metadata !DIExpression()), !dbg !2274
  %39 = shl nuw nsw <2 x i32> %7, <i32 8, i32 8>, !dbg !2275
  %40 = or <2 x i32> %39, %7, !dbg !2276
  call void @llvm.dbg.value(metadata i64 undef, metadata !2232, metadata !DIExpression()), !dbg !2277
  %41 = shl nuw <2 x i32> %40, <i32 16, i32 16>, !dbg !2278
  %42 = or <2 x i32> %41, %40, !dbg !2279
  %43 = zext <2 x i32> %42 to <2 x i64>, !dbg !2279
  call void @llvm.dbg.value(metadata i64 undef, metadata !2233, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i64 72340172838076673, metadata !2231, metadata !DIExpression()), !dbg !2274
  call void @llvm.dbg.value(metadata i64 undef, metadata !2232, metadata !DIExpression()), !dbg !2277
  %44 = shl nuw <2 x i64> %43, <i64 32, i64 32>, !dbg !2281
  %45 = or <2 x i64> %44, %43, !dbg !2284
  call void @llvm.dbg.value(metadata i64 undef, metadata !2233, metadata !DIExpression()), !dbg !2280
  %46 = icmp ugt i64 %37, 7, !dbg !2285
  br i1 %46, label %47, label %68, !dbg !2286

; <label>:47:                                     ; preds = %35, %47
  %48 = phi i64* [ %64, %47 ], [ %38, %35 ], !dbg !2287
  %49 = phi i64 [ %65, %47 ], [ %37, %35 ]
  call void @llvm.dbg.value(metadata i64 %49, metadata !2224, metadata !DIExpression()), !dbg !2242
  call void @llvm.dbg.value(metadata i64* %48, metadata !2227, metadata !DIExpression()), !dbg !2273
  %50 = load i64, i64* %48, align 8, !dbg !2288, !tbaa !881
  call void @llvm.dbg.value(metadata i64 undef, metadata !2236, metadata !DIExpression()), !dbg !2289
  %51 = insertelement <2 x i64> undef, i64 %50, i32 0, !dbg !2290
  %52 = shufflevector <2 x i64> %51, <2 x i64> undef, <2 x i32> zeroinitializer, !dbg !2290
  %53 = xor <2 x i64> %52, %45, !dbg !2290
  call void @llvm.dbg.value(metadata i64 undef, metadata !2238, metadata !DIExpression()), !dbg !2291
  %54 = add <2 x i64> %53, <i64 -72340172838076673, i64 -72340172838076673>, !dbg !2292
  %55 = xor <2 x i64> %53, <i64 -9187201950435737472, i64 -9187201950435737472>, !dbg !2294
  %56 = and <2 x i64> %54, %55, !dbg !2295
  %57 = extractelement <2 x i64> %56, i32 0, !dbg !2296
  %58 = extractelement <2 x i64> %56, i32 1, !dbg !2296
  %59 = or i64 %57, %58, !dbg !2296
  %60 = and i64 %59, -9187201950435737472, !dbg !2297
  %61 = icmp eq i64 %60, 0, !dbg !2298
  %62 = getelementptr inbounds i64, i64* %48, i64 1, !dbg !2299
  call void @llvm.dbg.value(metadata i64* %62, metadata !2227, metadata !DIExpression()), !dbg !2273
  %63 = add i64 %49, -8, !dbg !2300
  call void @llvm.dbg.value(metadata i64 %63, metadata !2224, metadata !DIExpression()), !dbg !2242
  %64 = select i1 %61, i64* %62, i64* %48, !dbg !2301
  %65 = select i1 %61, i64 %63, i64 %49, !dbg !2301
  call void @llvm.dbg.value(metadata i64 %65, metadata !2224, metadata !DIExpression()), !dbg !2242
  call void @llvm.dbg.value(metadata i64* %64, metadata !2227, metadata !DIExpression()), !dbg !2273
  %66 = icmp ugt i64 %65, 7, !dbg !2285
  %67 = and i1 %61, %66
  br i1 %67, label %47, label %68, !llvm.loop !2302

; <label>:68:                                     ; preds = %47, %35
  %69 = phi i64* [ %38, %35 ], [ %64, %47 ], !dbg !2287
  %70 = phi i64 [ %37, %35 ], [ %65, %47 ]
  call void @llvm.dbg.value(metadata i64 %70, metadata !2224, metadata !DIExpression()), !dbg !2242
  call void @llvm.dbg.value(metadata i64* %69, metadata !2227, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata i64 %70, metadata !2224, metadata !DIExpression()), !dbg !2242
  %71 = icmp eq i64 %70, 0, !dbg !2304
  br i1 %71, label %86, label %72, !dbg !2307

; <label>:72:                                     ; preds = %68
  %73 = bitcast i64* %69 to i8*, !dbg !2308
  call void @llvm.dbg.value(metadata i8* %73, metadata !2225, metadata !DIExpression()), !dbg !2260
  br label %74, !dbg !2309

; <label>:74:                                     ; preds = %72, %82
  %75 = phi i64 [ %83, %82 ], [ %70, %72 ]
  %76 = phi i8* [ %84, %82 ], [ %73, %72 ]
  call void @llvm.dbg.value(metadata i64 %75, metadata !2224, metadata !DIExpression()), !dbg !2242
  call void @llvm.dbg.value(metadata i8* %76, metadata !2225, metadata !DIExpression()), !dbg !2260
  %77 = load i8, i8* %76, align 1, !dbg !2309, !tbaa !838
  %78 = zext i8 %77 to i32, !dbg !2309
  %79 = icmp eq i32 %8, %78, !dbg !2312
  %80 = icmp eq i32 %9, %78, !dbg !2313
  %81 = or i1 %79, %80, !dbg !2314
  br i1 %81, label %86, label %82, !dbg !2314

; <label>:82:                                     ; preds = %74
  %83 = add i64 %75, -1, !dbg !2315
  %84 = getelementptr inbounds i8, i8* %76, i64 1, !dbg !2316
  call void @llvm.dbg.value(metadata i64 %83, metadata !2224, metadata !DIExpression()), !dbg !2242
  call void @llvm.dbg.value(metadata i8* %84, metadata !2225, metadata !DIExpression()), !dbg !2260
  %85 = icmp eq i64 %83, 0, !dbg !2304
  br i1 %85, label %86, label %74, !dbg !2307, !llvm.loop !2317

; <label>:86:                                     ; preds = %19, %74, %82, %68, %17
  %87 = phi i8* [ %18, %17 ], [ null, %68 ], [ %76, %74 ], [ null, %82 ], [ %21, %19 ], !dbg !2319
  ret i8* %87, !dbg !2320
}

; Function Attrs: nounwind readonly
declare i8* @memchr(i8*, i32, i64) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8*) local_unnamed_addr #7 !dbg !2321 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2323, metadata !DIExpression()), !dbg !2326
  %2 = icmp eq i8* %0, null, !dbg !2327
  br i1 %2, label %3, label %6, !dbg !2329

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2330, !tbaa !770
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.92, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !2332
  tail call void @abort() #15, !dbg !2333
  unreachable, !dbg !2333

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !2334
  call void @llvm.dbg.value(metadata i8* %7, metadata !2324, metadata !DIExpression()), !dbg !2335
  %8 = icmp eq i8* %7, null, !dbg !2336
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !2337
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !2338
  call void @llvm.dbg.value(metadata i8* %10, metadata !2325, metadata !DIExpression()), !dbg !2339
  %11 = ptrtoint i8* %10 to i64, !dbg !2340
  %12 = ptrtoint i8* %0 to i64, !dbg !2340
  %13 = sub i64 %11, %12, !dbg !2340
  %14 = icmp sgt i64 %13, 6, !dbg !2342
  br i1 %14, label %15, label %24, !dbg !2343

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !2344
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.93, i64 0, i64 0), i64 7) #14, !dbg !2345
  %18 = icmp eq i32 %17, 0, !dbg !2346
  br i1 %18, label %19, label %24, !dbg !2347

; <label>:19:                                     ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !2323, metadata !DIExpression()), !dbg !2326
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.94, i64 0, i64 0), i64 3) #14, !dbg !2348
  %21 = icmp eq i32 %20, 0, !dbg !2351
  br i1 %21, label %22, label %24, !dbg !2352

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !2353
  call void @llvm.dbg.value(metadata i8* %23, metadata !2323, metadata !DIExpression()), !dbg !2326
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !2355, !tbaa !770
  br label %24, !dbg !2356

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !2323, metadata !DIExpression()), !dbg !2326
  store i8* %25, i8** @program_name, align 8, !dbg !2357, !tbaa !770
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !2358, !tbaa !770
  ret void, !dbg !2359
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #12

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #7 !dbg !2360 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2365, metadata !DIExpression()), !dbg !2368
  %2 = tail call i32* @__errno_location() #17, !dbg !2369
  %3 = load i32, i32* %2, align 4, !dbg !2369, !tbaa !930
  call void @llvm.dbg.value(metadata i32 %3, metadata !2366, metadata !DIExpression()), !dbg !2370
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2371
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2371
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2371
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #12, !dbg !2372
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !2372
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !2367, metadata !DIExpression()), !dbg !2373
  store i32 %3, i32* %2, align 4, !dbg !2374, !tbaa !930
  ret %struct.quoting_options* %8, !dbg !2375
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #10 !dbg !2376 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2382, metadata !DIExpression()), !dbg !2383
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !2384
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2384
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2385
  %5 = load i32, i32* %4, align 8, !dbg !2385, !tbaa !2386
  ret i32 %5, !dbg !2388
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !2389 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2393, metadata !DIExpression()), !dbg !2395
  call void @llvm.dbg.value(metadata i32 %1, metadata !2394, metadata !DIExpression()), !dbg !2396
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2397
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2397
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2398
  store i32 %1, i32* %5, align 8, !dbg !2399, !tbaa !2386
  ret void, !dbg !2400
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #7 !dbg !2401 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2405, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata i8 %1, metadata !2406, metadata !DIExpression()), !dbg !2414
  call void @llvm.dbg.value(metadata i32 %2, metadata !2407, metadata !DIExpression()), !dbg !2415
  call void @llvm.dbg.value(metadata i8 %1, metadata !2408, metadata !DIExpression()), !dbg !2416
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2417
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2417
  %6 = lshr i8 %1, 5, !dbg !2418
  %7 = zext i8 %6 to i64, !dbg !2418
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !2419
  call void @llvm.dbg.value(metadata i32* %8, metadata !2409, metadata !DIExpression()), !dbg !2420
  %9 = and i8 %1, 31, !dbg !2421
  %10 = zext i8 %9 to i32, !dbg !2421
  call void @llvm.dbg.value(metadata i32 %10, metadata !2411, metadata !DIExpression()), !dbg !2422
  %11 = load i32, i32* %8, align 4, !dbg !2423, !tbaa !930
  %12 = lshr i32 %11, %10, !dbg !2424
  %13 = and i32 %12, 1, !dbg !2425
  call void @llvm.dbg.value(metadata i32 %13, metadata !2412, metadata !DIExpression()), !dbg !2426
  %14 = and i32 %2, 1, !dbg !2427
  %15 = xor i32 %13, %14, !dbg !2428
  %16 = shl i32 %15, %10, !dbg !2429
  %17 = xor i32 %16, %11, !dbg !2430
  store i32 %17, i32* %8, align 4, !dbg !2430, !tbaa !930
  ret i32 %13, !dbg !2431
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !2432 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2436, metadata !DIExpression()), !dbg !2439
  call void @llvm.dbg.value(metadata i32 %1, metadata !2437, metadata !DIExpression()), !dbg !2440
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2441
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2443
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2436, metadata !DIExpression()), !dbg !2439
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2444
  %6 = load i32, i32* %5, align 4, !dbg !2444, !tbaa !2445
  call void @llvm.dbg.value(metadata i32 %6, metadata !2438, metadata !DIExpression()), !dbg !2446
  store i32 %1, i32* %5, align 4, !dbg !2447, !tbaa !2445
  ret i32 %6, !dbg !2448
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #7 !dbg !2449 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2453, metadata !DIExpression()), !dbg !2456
  call void @llvm.dbg.value(metadata i8* %1, metadata !2454, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.value(metadata i8* %2, metadata !2455, metadata !DIExpression()), !dbg !2458
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2459
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2461
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2453, metadata !DIExpression()), !dbg !2456
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2462
  store i32 10, i32* %6, align 8, !dbg !2463, !tbaa !2386
  %7 = icmp ne i8* %1, null, !dbg !2464
  %8 = icmp ne i8* %2, null, !dbg !2466
  %9 = and i1 %7, %8, !dbg !2467
  br i1 %9, label %11, label %10, !dbg !2467

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2468
  unreachable, !dbg !2468

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2469
  store i8* %1, i8** %12, align 8, !dbg !2470, !tbaa !2471
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2472
  store i8* %2, i8** %13, align 8, !dbg !2473, !tbaa !2474
  ret void, !dbg !2475
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #7 !dbg !2476 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2480, metadata !DIExpression()), !dbg !2488
  call void @llvm.dbg.value(metadata i64 %1, metadata !2481, metadata !DIExpression()), !dbg !2489
  call void @llvm.dbg.value(metadata i8* %2, metadata !2482, metadata !DIExpression()), !dbg !2490
  call void @llvm.dbg.value(metadata i64 %3, metadata !2483, metadata !DIExpression()), !dbg !2491
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2484, metadata !DIExpression()), !dbg !2492
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !2493
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !2493
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !2485, metadata !DIExpression()), !dbg !2494
  %8 = tail call i32* @__errno_location() #17, !dbg !2495
  %9 = load i32, i32* %8, align 4, !dbg !2495, !tbaa !930
  call void @llvm.dbg.value(metadata i32 %9, metadata !2486, metadata !DIExpression()), !dbg !2496
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2497
  %11 = load i32, i32* %10, align 8, !dbg !2497, !tbaa !2386
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2498
  %13 = load i32, i32* %12, align 4, !dbg !2498, !tbaa !2445
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2499
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2500
  %16 = load i8*, i8** %15, align 8, !dbg !2500, !tbaa !2471
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2501
  %18 = load i8*, i8** %17, align 8, !dbg !2501, !tbaa !2474
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !2502
  call void @llvm.dbg.value(metadata i64 %19, metadata !2487, metadata !DIExpression()), !dbg !2503
  store i32 %9, i32* %8, align 4, !dbg !2504, !tbaa !930
  ret i64 %19, !dbg !2505
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #7 !dbg !2506 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2512, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i64 %1, metadata !2513, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i8* %2, metadata !2514, metadata !DIExpression()), !dbg !2578
  call void @llvm.dbg.value(metadata i64 %3, metadata !2515, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i32 %4, metadata !2516, metadata !DIExpression()), !dbg !2580
  call void @llvm.dbg.value(metadata i32 %5, metadata !2517, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata i32* %6, metadata !2518, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i8* %7, metadata !2519, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.value(metadata i8* %8, metadata !2520, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i64 0, metadata !2522, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i64 0, metadata !2523, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.value(metadata i8* null, metadata !2524, metadata !DIExpression()), !dbg !2587
  call void @llvm.dbg.value(metadata i64 0, metadata !2525, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i8 0, metadata !2526, metadata !DIExpression()), !dbg !2589
  %13 = tail call i64 @__ctype_get_mb_cur_max() #12, !dbg !2590
  %14 = icmp eq i64 %13, 1, !dbg !2591
  %15 = lshr i32 %5, 1, !dbg !2592
  %16 = trunc i32 %15 to i8, !dbg !2592
  %17 = and i8 %16, 1, !dbg !2592
  call void @llvm.dbg.value(metadata i8 %17, metadata !2528, metadata !DIExpression()), !dbg !2592
  call void @llvm.dbg.value(metadata i8 0, metadata !2529, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i8 0, metadata !2530, metadata !DIExpression()), !dbg !2594
  call void @llvm.dbg.value(metadata i8 1, metadata !2531, metadata !DIExpression()), !dbg !2595
  %18 = icmp ne i32* %6, null
  %19 = bitcast i64* %10 to i8*
  %20 = icmp eq i32* %6, null
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 4
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr inbounds i8, i8* %2, i64 1
  %26 = bitcast i32* %12 to i8*
  br label %27, !dbg !2596

; <label>:27:                                     ; preds = %634, %9
  %28 = phi i32 [ %4, %9 ], [ %94, %634 ]
  %29 = phi i8* [ %7, %9 ], [ %95, %634 ]
  %30 = phi i8* [ %8, %9 ], [ %96, %634 ]
  %31 = phi i64 [ 0, %9 ], [ %124, %634 ], !dbg !2586
  %32 = phi i8* [ null, %9 ], [ %98, %634 ], !dbg !2587
  %33 = phi i64 [ 0, %9 ], [ %99, %634 ], !dbg !2588
  %34 = phi i8 [ 0, %9 ], [ %100, %634 ], !dbg !2589
  %35 = phi i64 [ %3, %9 ], [ %618, %634 ]
  %36 = phi i8 [ %17, %9 ], [ %101, %634 ], !dbg !2597
  %37 = phi i8 [ 0, %9 ], [ %126, %634 ], !dbg !2593
  %38 = phi i8 [ 0, %9 ], [ %127, %634 ], !dbg !2594
  %39 = phi i8 [ 1, %9 ], [ %128, %634 ], !dbg !2595
  %40 = phi i64 [ %1, %9 ], [ %124, %634 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !2513, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i8 %39, metadata !2531, metadata !DIExpression()), !dbg !2595
  call void @llvm.dbg.value(metadata i8 %38, metadata !2530, metadata !DIExpression()), !dbg !2594
  call void @llvm.dbg.value(metadata i8 %37, metadata !2529, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i8 %36, metadata !2528, metadata !DIExpression()), !dbg !2592
  call void @llvm.dbg.value(metadata i64 %35, metadata !2515, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i8 %34, metadata !2526, metadata !DIExpression()), !dbg !2589
  call void @llvm.dbg.value(metadata i64 %33, metadata !2525, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i8* %32, metadata !2524, metadata !DIExpression()), !dbg !2587
  call void @llvm.dbg.value(metadata i64 %31, metadata !2523, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.value(metadata i64 0, metadata !2522, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i8* %30, metadata !2520, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i8* %29, metadata !2519, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.value(metadata i32 %28, metadata !2516, metadata !DIExpression()), !dbg !2580
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
  ], !dbg !2599

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, metadata !2516, metadata !DIExpression()), !dbg !2580
  call void @llvm.dbg.value(metadata i8 1, metadata !2528, metadata !DIExpression()), !dbg !2592
  call void @llvm.dbg.value(metadata i8 %36, metadata !2528, metadata !DIExpression()), !dbg !2592
  call void @llvm.dbg.value(metadata i32 5, metadata !2516, metadata !DIExpression()), !dbg !2580
  br label %93, !dbg !2600

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, metadata !2528, metadata !DIExpression()), !dbg !2592
  call void @llvm.dbg.value(metadata i32 5, metadata !2516, metadata !DIExpression()), !dbg !2580
  %43 = and i8 %36, 1, !dbg !2601
  %44 = icmp eq i8 %43, 0, !dbg !2601
  br i1 %44, label %45, label %93, !dbg !2600

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !2603
  br i1 %46, label %93, label %47, !dbg !2606

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !2603, !tbaa !838
  br label %93, !dbg !2603

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.105, i64 0, i64 0), i32 %28), !dbg !2607
  call void @llvm.dbg.value(metadata i8* %49, metadata !2519, metadata !DIExpression()), !dbg !2583
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.106, i64 0, i64 0), i32 %28), !dbg !2611
  call void @llvm.dbg.value(metadata i8* %50, metadata !2520, metadata !DIExpression()), !dbg !2584
  br label %51, !dbg !2612

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, metadata !2520, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i8* %52, metadata !2519, metadata !DIExpression()), !dbg !2583
  %54 = and i8 %36, 1, !dbg !2613
  %55 = icmp eq i8 %54, 0, !dbg !2613
  br i1 %55, label %56, label %71, !dbg !2615

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, metadata !2524, metadata !DIExpression()), !dbg !2587
  call void @llvm.dbg.value(metadata i64 0, metadata !2522, metadata !DIExpression()), !dbg !2585
  %57 = load i8, i8* %52, align 1, !dbg !2616, !tbaa !838
  %58 = icmp eq i8 %57, 0, !dbg !2619
  br i1 %58, label %71, label %59, !dbg !2619

; <label>:59:                                     ; preds = %56, %66
  %60 = phi i8 [ %69, %66 ], [ %57, %56 ]
  %61 = phi i8* [ %68, %66 ], [ %52, %56 ]
  %62 = phi i64 [ %67, %66 ], [ 0, %56 ]
  call void @llvm.dbg.value(metadata i8* %61, metadata !2524, metadata !DIExpression()), !dbg !2587
  call void @llvm.dbg.value(metadata i64 %62, metadata !2522, metadata !DIExpression()), !dbg !2585
  %63 = icmp ult i64 %62, %40, !dbg !2620
  br i1 %63, label %64, label %66, !dbg !2623

; <label>:64:                                     ; preds = %59
  %65 = getelementptr inbounds i8, i8* %0, i64 %62, !dbg !2620
  store i8 %60, i8* %65, align 1, !dbg !2620, !tbaa !838
  br label %66, !dbg !2620

; <label>:66:                                     ; preds = %64, %59
  %67 = add i64 %62, 1, !dbg !2623
  %68 = getelementptr inbounds i8, i8* %61, i64 1, !dbg !2624
  call void @llvm.dbg.value(metadata i8* %68, metadata !2524, metadata !DIExpression()), !dbg !2587
  call void @llvm.dbg.value(metadata i64 %67, metadata !2522, metadata !DIExpression()), !dbg !2585
  %69 = load i8, i8* %68, align 1, !dbg !2616, !tbaa !838
  %70 = icmp eq i8 %69, 0, !dbg !2619
  br i1 %70, label %71, label %59, !dbg !2619, !llvm.loop !2625

; <label>:71:                                     ; preds = %66, %56, %51
  %72 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %67, %66 ], !dbg !2585
  call void @llvm.dbg.value(metadata i64 %72, metadata !2522, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i8 1, metadata !2526, metadata !DIExpression()), !dbg !2589
  call void @llvm.dbg.value(metadata i8* %53, metadata !2524, metadata !DIExpression()), !dbg !2587
  %73 = call i64 @strlen(i8* %53) #14, !dbg !2627
  call void @llvm.dbg.value(metadata i64 %73, metadata !2525, metadata !DIExpression()), !dbg !2588
  br label %93, !dbg !2628

; <label>:74:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !2526, metadata !DIExpression()), !dbg !2589
  br label %75, !dbg !2629

; <label>:75:                                     ; preds = %27, %74
  %76 = phi i8 [ %34, %27 ], [ 1, %74 ], !dbg !2597
  call void @llvm.dbg.value(metadata i8 %76, metadata !2526, metadata !DIExpression()), !dbg !2589
  call void @llvm.dbg.value(metadata i8 1, metadata !2528, metadata !DIExpression()), !dbg !2592
  br label %77, !dbg !2630

; <label>:77:                                     ; preds = %27, %75
  %78 = phi i8 [ %34, %27 ], [ %76, %75 ], !dbg !2589
  %79 = phi i8 [ %36, %27 ], [ 1, %75 ], !dbg !2597
  call void @llvm.dbg.value(metadata i8 %79, metadata !2528, metadata !DIExpression()), !dbg !2592
  call void @llvm.dbg.value(metadata i8 %78, metadata !2526, metadata !DIExpression()), !dbg !2589
  %80 = and i8 %79, 1, !dbg !2631
  %81 = icmp eq i8 %80, 0, !dbg !2631
  %82 = select i1 %81, i8 1, i8 %78, !dbg !2633
  br label %83, !dbg !2633

; <label>:83:                                     ; preds = %77, %27
  %84 = phi i8 [ %34, %27 ], [ %82, %77 ], !dbg !2634
  %85 = phi i8 [ %36, %27 ], [ %79, %77 ], !dbg !2592
  call void @llvm.dbg.value(metadata i8 %85, metadata !2528, metadata !DIExpression()), !dbg !2592
  call void @llvm.dbg.value(metadata i8 %84, metadata !2526, metadata !DIExpression()), !dbg !2589
  call void @llvm.dbg.value(metadata i32 2, metadata !2516, metadata !DIExpression()), !dbg !2580
  %86 = and i8 %85, 1, !dbg !2635
  %87 = icmp eq i8 %86, 0, !dbg !2635
  br i1 %87, label %88, label %93, !dbg !2637

; <label>:88:                                     ; preds = %83
  %89 = icmp eq i64 %40, 0, !dbg !2638
  br i1 %89, label %93, label %90, !dbg !2641

; <label>:90:                                     ; preds = %88
  store i8 39, i8* %0, align 1, !dbg !2638, !tbaa !838
  br label %93, !dbg !2638

; <label>:91:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !2528, metadata !DIExpression()), !dbg !2592
  br label %93, !dbg !2642

; <label>:92:                                     ; preds = %27
  call void @abort() #15, !dbg !2643
  unreachable, !dbg !2643

; <label>:93:                                     ; preds = %41, %83, %88, %90, %27, %42, %45, %47, %91, %71
  %94 = phi i32 [ 0, %91 ], [ %28, %71 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ %28, %27 ], [ 2, %90 ], [ 2, %88 ], [ 2, %83 ], [ 5, %41 ]
  %95 = phi i8* [ %29, %91 ], [ %52, %71 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %90 ], [ %29, %88 ], [ %29, %83 ], [ %29, %41 ]
  %96 = phi i8* [ %30, %91 ], [ %53, %71 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %90 ], [ %30, %88 ], [ %30, %83 ], [ %30, %41 ]
  %97 = phi i64 [ 0, %91 ], [ %72, %71 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %90 ], [ 1, %88 ], [ 0, %83 ], [ 0, %41 ], !dbg !2585
  %98 = phi i8* [ %32, %91 ], [ %53, %71 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.107, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.107, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.107, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.106, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.106, i64 0, i64 0), %88 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.106, i64 0, i64 0), %83 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.107, i64 0, i64 0), %41 ], !dbg !2597
  %99 = phi i64 [ %33, %91 ], [ %73, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %90 ], [ 1, %88 ], [ 1, %83 ], [ 1, %41 ], !dbg !2597
  %100 = phi i8 [ %34, %91 ], [ 1, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %84, %90 ], [ %84, %88 ], [ %84, %83 ], [ 1, %41 ], !dbg !2597
  %101 = phi i8 [ 0, %91 ], [ %36, %71 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %85, %90 ], [ %85, %88 ], [ %85, %83 ], [ 1, %41 ], !dbg !2644
  call void @llvm.dbg.value(metadata i8 %101, metadata !2528, metadata !DIExpression()), !dbg !2592
  call void @llvm.dbg.value(metadata i8 %100, metadata !2526, metadata !DIExpression()), !dbg !2589
  call void @llvm.dbg.value(metadata i64 %99, metadata !2525, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i8* %98, metadata !2524, metadata !DIExpression()), !dbg !2587
  call void @llvm.dbg.value(metadata i64 %97, metadata !2522, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i8* %96, metadata !2520, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i8* %95, metadata !2519, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.value(metadata i32 %94, metadata !2516, metadata !DIExpression()), !dbg !2580
  call void @llvm.dbg.value(metadata i64 0, metadata !2521, metadata !DIExpression()), !dbg !2645
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
  br label %121, !dbg !2646

; <label>:121:                                    ; preds = %607, %93
  %122 = phi i64 [ 0, %93 ], [ %616, %607 ], !dbg !2647
  %123 = phi i64 [ %97, %93 ], [ %609, %607 ], !dbg !2585
  %124 = phi i64 [ %31, %93 ], [ %610, %607 ], !dbg !2586
  %125 = phi i64 [ %35, %93 ], [ %611, %607 ]
  %126 = phi i8 [ %37, %93 ], [ %612, %607 ], !dbg !2593
  %127 = phi i8 [ %38, %93 ], [ %613, %607 ], !dbg !2594
  %128 = phi i8 [ %39, %93 ], [ %614, %607 ], !dbg !2595
  %129 = phi i64 [ %40, %93 ], [ %615, %607 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !2513, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i8 %128, metadata !2531, metadata !DIExpression()), !dbg !2595
  call void @llvm.dbg.value(metadata i8 %127, metadata !2530, metadata !DIExpression()), !dbg !2594
  call void @llvm.dbg.value(metadata i8 %126, metadata !2529, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i64 %125, metadata !2515, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i64 %124, metadata !2523, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.value(metadata i64 %123, metadata !2522, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i64 %122, metadata !2521, metadata !DIExpression()), !dbg !2645
  %130 = icmp eq i64 %125, -1, !dbg !2648
  br i1 %130, label %131, label %135, !dbg !2649

; <label>:131:                                    ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2650
  %133 = load i8, i8* %132, align 1, !dbg !2650, !tbaa !838
  %134 = icmp eq i8 %133, 0, !dbg !2651
  br i1 %134, label %617, label %137, !dbg !2652

; <label>:135:                                    ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !2653
  br i1 %136, label %617, label %137, !dbg !2652

; <label>:137:                                    ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !2537, metadata !DIExpression()), !dbg !2654
  call void @llvm.dbg.value(metadata i8 0, metadata !2538, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata i8 0, metadata !2539, metadata !DIExpression()), !dbg !2656
  br i1 %107, label %138, label %153, !dbg !2657

; <label>:138:                                    ; preds = %137
  %139 = add i64 %122, %99, !dbg !2659
  %140 = and i1 %108, %130, !dbg !2660
  br i1 %140, label %141, label %143, !dbg !2660

; <label>:141:                                    ; preds = %138
  %142 = call i64 @strlen(i8* %2) #14, !dbg !2661
  call void @llvm.dbg.value(metadata i64 %142, metadata !2515, metadata !DIExpression()), !dbg !2579
  br label %143, !dbg !2662

; <label>:143:                                    ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ]
  call void @llvm.dbg.value(metadata i64 %144, metadata !2515, metadata !DIExpression()), !dbg !2579
  %145 = icmp ugt i64 %139, %144, !dbg !2663
  br i1 %145, label %153, label %146, !dbg !2664

; <label>:146:                                    ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2665
  %148 = call i32 @memcmp(i8* %147, i8* %98, i64 %99) #14, !dbg !2666
  %149 = icmp ne i32 %148, 0, !dbg !2667
  %150 = or i1 %149, %110, !dbg !2668
  %151 = xor i1 %149, true, !dbg !2668
  %152 = zext i1 %151 to i8, !dbg !2668
  br i1 %150, label %153, label %661, !dbg !2668

; <label>:153:                                    ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !2669
  call void @llvm.dbg.value(metadata i8 %155, metadata !2537, metadata !DIExpression()), !dbg !2654
  call void @llvm.dbg.value(metadata i64 %154, metadata !2515, metadata !DIExpression()), !dbg !2579
  %156 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !2670
  %157 = load i8, i8* %156, align 1, !dbg !2670, !tbaa !838
  call void @llvm.dbg.value(metadata i8 %157, metadata !2532, metadata !DIExpression()), !dbg !2671
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
  ], !dbg !2672

; <label>:158:                                    ; preds = %153
  br i1 %103, label %159, label %207, !dbg !2673

; <label>:159:                                    ; preds = %158
  br i1 %110, label %160, label %661, !dbg !2674

; <label>:160:                                    ; preds = %159
  call void @llvm.dbg.value(metadata i8 1, metadata !2538, metadata !DIExpression()), !dbg !2655
  %161 = and i8 %126, 1, !dbg !2678
  %162 = icmp eq i8 %161, 0, !dbg !2678
  %163 = and i1 %114, %162, !dbg !2678
  br i1 %163, label %164, label %180, !dbg !2678

; <label>:164:                                    ; preds = %160
  %165 = icmp ult i64 %123, %129, !dbg !2680
  br i1 %165, label %166, label %168, !dbg !2684

; <label>:166:                                    ; preds = %164
  %167 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2680
  store i8 39, i8* %167, align 1, !dbg !2680, !tbaa !838
  br label %168, !dbg !2680

; <label>:168:                                    ; preds = %166, %164
  %169 = add i64 %123, 1, !dbg !2684
  call void @llvm.dbg.value(metadata i64 %169, metadata !2522, metadata !DIExpression()), !dbg !2585
  %170 = icmp ult i64 %169, %129, !dbg !2685
  br i1 %170, label %171, label %173, !dbg !2688

; <label>:171:                                    ; preds = %168
  %172 = getelementptr inbounds i8, i8* %0, i64 %169, !dbg !2685
  store i8 36, i8* %172, align 1, !dbg !2685, !tbaa !838
  br label %173, !dbg !2685

; <label>:173:                                    ; preds = %171, %168
  %174 = add i64 %123, 2, !dbg !2688
  call void @llvm.dbg.value(metadata i64 %174, metadata !2522, metadata !DIExpression()), !dbg !2585
  %175 = icmp ult i64 %174, %129, !dbg !2689
  br i1 %175, label %176, label %178, !dbg !2692

; <label>:176:                                    ; preds = %173
  %177 = getelementptr inbounds i8, i8* %0, i64 %174, !dbg !2689
  store i8 39, i8* %177, align 1, !dbg !2689, !tbaa !838
  br label %178, !dbg !2689

; <label>:178:                                    ; preds = %176, %173
  %179 = add i64 %123, 3, !dbg !2692
  call void @llvm.dbg.value(metadata i64 %179, metadata !2522, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i8 1, metadata !2529, metadata !DIExpression()), !dbg !2593
  br label %180, !dbg !2693

; <label>:180:                                    ; preds = %160, %178
  %181 = phi i64 [ %179, %178 ], [ %123, %160 ], !dbg !2644
  %182 = phi i8 [ 1, %178 ], [ %126, %160 ], !dbg !2644
  call void @llvm.dbg.value(metadata i8 %182, metadata !2529, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i64 %181, metadata !2522, metadata !DIExpression()), !dbg !2585
  %183 = icmp ult i64 %181, %129, !dbg !2694
  br i1 %183, label %184, label %186, !dbg !2697

; <label>:184:                                    ; preds = %180
  %185 = getelementptr inbounds i8, i8* %0, i64 %181, !dbg !2694
  store i8 92, i8* %185, align 1, !dbg !2694, !tbaa !838
  br label %186, !dbg !2694

; <label>:186:                                    ; preds = %184, %180
  %187 = add i64 %181, 1, !dbg !2697
  call void @llvm.dbg.value(metadata i64 %187, metadata !2522, metadata !DIExpression()), !dbg !2585
  br i1 %104, label %188, label %478, !dbg !2698

; <label>:188:                                    ; preds = %186
  %189 = add i64 %122, 1, !dbg !2700
  %190 = icmp ult i64 %189, %154, !dbg !2701
  br i1 %190, label %191, label %467, !dbg !2702

; <label>:191:                                    ; preds = %188
  %192 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !2703
  %193 = load i8, i8* %192, align 1, !dbg !2703, !tbaa !838
  %194 = add i8 %193, -48, !dbg !2704
  %195 = icmp ult i8 %194, 10, !dbg !2704
  br i1 %195, label %196, label %467, !dbg !2704

; <label>:196:                                    ; preds = %191
  %197 = icmp ult i64 %187, %129, !dbg !2705
  br i1 %197, label %198, label %200, !dbg !2709

; <label>:198:                                    ; preds = %196
  %199 = getelementptr inbounds i8, i8* %0, i64 %187, !dbg !2705
  store i8 48, i8* %199, align 1, !dbg !2705, !tbaa !838
  br label %200, !dbg !2705

; <label>:200:                                    ; preds = %198, %196
  %201 = add i64 %181, 2, !dbg !2709
  call void @llvm.dbg.value(metadata i64 %201, metadata !2522, metadata !DIExpression()), !dbg !2585
  %202 = icmp ult i64 %201, %129, !dbg !2710
  br i1 %202, label %203, label %205, !dbg !2713

; <label>:203:                                    ; preds = %200
  %204 = getelementptr inbounds i8, i8* %0, i64 %201, !dbg !2710
  store i8 48, i8* %204, align 1, !dbg !2710, !tbaa !838
  br label %205, !dbg !2710

; <label>:205:                                    ; preds = %203, %200
  %206 = add i64 %181, 3, !dbg !2713
  call void @llvm.dbg.value(metadata i64 %206, metadata !2522, metadata !DIExpression()), !dbg !2585
  br label %467, !dbg !2714

; <label>:207:                                    ; preds = %158
  br i1 %22, label %478, label %607, !dbg !2715

; <label>:208:                                    ; preds = %153
  switch i32 %94, label %467 [
    i32 2, label %209
    i32 5, label %210
  ], !dbg !2716

; <label>:209:                                    ; preds = %208
  br i1 %110, label %467, label %661, !dbg !2717

; <label>:210:                                    ; preds = %208
  br i1 %24, label %467, label %211, !dbg !2719

; <label>:211:                                    ; preds = %210
  %212 = add i64 %122, 2, !dbg !2721
  %213 = icmp ult i64 %212, %154, !dbg !2722
  br i1 %213, label %214, label %467, !dbg !2723

; <label>:214:                                    ; preds = %211
  %215 = add i64 %122, 1, !dbg !2724
  %216 = getelementptr inbounds i8, i8* %2, i64 %215, !dbg !2725
  %217 = load i8, i8* %216, align 1, !dbg !2725, !tbaa !838
  %218 = icmp eq i8 %217, 63, !dbg !2726
  br i1 %218, label %219, label %467, !dbg !2727

; <label>:219:                                    ; preds = %214
  %220 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !2728
  %221 = load i8, i8* %220, align 1, !dbg !2728, !tbaa !838
  %222 = sext i8 %221 to i32, !dbg !2728
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
  ], !dbg !2729

; <label>:223:                                    ; preds = %219, %219, %219, %219, %219, %219, %219, %219, %219
  br i1 %110, label %224, label %661, !dbg !2730

; <label>:224:                                    ; preds = %223
  call void @llvm.dbg.value(metadata i8 %221, metadata !2532, metadata !DIExpression()), !dbg !2671
  call void @llvm.dbg.value(metadata i64 %212, metadata !2521, metadata !DIExpression()), !dbg !2645
  %225 = icmp ult i64 %123, %129, !dbg !2732
  br i1 %225, label %226, label %228, !dbg !2735

; <label>:226:                                    ; preds = %224
  %227 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2732
  store i8 63, i8* %227, align 1, !dbg !2732, !tbaa !838
  br label %228, !dbg !2732

; <label>:228:                                    ; preds = %226, %224
  %229 = add i64 %123, 1, !dbg !2735
  call void @llvm.dbg.value(metadata i64 %229, metadata !2522, metadata !DIExpression()), !dbg !2585
  %230 = icmp ult i64 %229, %129, !dbg !2736
  br i1 %230, label %231, label %233, !dbg !2739

; <label>:231:                                    ; preds = %228
  %232 = getelementptr inbounds i8, i8* %0, i64 %229, !dbg !2736
  store i8 34, i8* %232, align 1, !dbg !2736, !tbaa !838
  br label %233, !dbg !2736

; <label>:233:                                    ; preds = %231, %228
  %234 = add i64 %123, 2, !dbg !2739
  call void @llvm.dbg.value(metadata i64 %234, metadata !2522, metadata !DIExpression()), !dbg !2585
  %235 = icmp ult i64 %234, %129, !dbg !2740
  br i1 %235, label %236, label %238, !dbg !2743

; <label>:236:                                    ; preds = %233
  %237 = getelementptr inbounds i8, i8* %0, i64 %234, !dbg !2740
  store i8 34, i8* %237, align 1, !dbg !2740, !tbaa !838
  br label %238, !dbg !2740

; <label>:238:                                    ; preds = %236, %233
  %239 = add i64 %123, 3, !dbg !2743
  call void @llvm.dbg.value(metadata i64 %239, metadata !2522, metadata !DIExpression()), !dbg !2585
  %240 = icmp ult i64 %239, %129, !dbg !2744
  br i1 %240, label %241, label %243, !dbg !2747

; <label>:241:                                    ; preds = %238
  %242 = getelementptr inbounds i8, i8* %0, i64 %239, !dbg !2744
  store i8 63, i8* %242, align 1, !dbg !2744, !tbaa !838
  br label %243, !dbg !2744

; <label>:243:                                    ; preds = %241, %238
  %244 = add i64 %123, 4, !dbg !2747
  call void @llvm.dbg.value(metadata i64 %244, metadata !2522, metadata !DIExpression()), !dbg !2585
  br label %467, !dbg !2748

; <label>:245:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !2536, metadata !DIExpression()), !dbg !2749
  br label %255, !dbg !2750

; <label>:246:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !2536, metadata !DIExpression()), !dbg !2749
  br label %255, !dbg !2751

; <label>:247:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !2536, metadata !DIExpression()), !dbg !2749
  br label %253, !dbg !2752

; <label>:248:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !2536, metadata !DIExpression()), !dbg !2749
  br label %253, !dbg !2753

; <label>:249:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !2536, metadata !DIExpression()), !dbg !2749
  br label %255, !dbg !2754

; <label>:250:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 %157, metadata !2536, metadata !DIExpression()), !dbg !2749
  br i1 %114, label %251, label %252, !dbg !2755

; <label>:251:                                    ; preds = %250
  br i1 %110, label %562, label %661, !dbg !2756

; <label>:252:                                    ; preds = %250
  br i1 %120, label %562, label %253, !dbg !2759

; <label>:253:                                    ; preds = %252, %153, %248, %247
  %254 = phi i8 [ 92, %252 ], [ 116, %248 ], [ 114, %247 ], [ 110, %153 ], !dbg !2761
  call void @llvm.dbg.value(metadata i8 %254, metadata !2536, metadata !DIExpression()), !dbg !2749
  br i1 %113, label %255, label %661, !dbg !2762

; <label>:255:                                    ; preds = %253, %153, %249, %246, %245
  %256 = phi i8 [ %254, %253 ], [ 118, %249 ], [ 102, %246 ], [ 98, %245 ], [ 97, %153 ], !dbg !2761
  call void @llvm.dbg.value(metadata i8 %256, metadata !2536, metadata !DIExpression()), !dbg !2749
  br i1 %103, label %524, label %478, !dbg !2764

; <label>:257:                                    ; preds = %153, %153
  %258 = icmp eq i64 %154, -1, !dbg !2765
  br i1 %258, label %259, label %264, !dbg !2767

; <label>:259:                                    ; preds = %257
  %260 = load i8, i8* %25, align 1, !dbg !2768, !tbaa !838
  %261 = icmp ne i8 %260, 0, !dbg !2769
  %262 = icmp ne i64 %122, 0, !dbg !2770
  %263 = or i1 %262, %261, !dbg !2772
  br i1 %263, label %467, label %270, !dbg !2772

; <label>:264:                                    ; preds = %257
  %265 = icmp ne i64 %154, 1, !dbg !2773
  %266 = icmp ne i64 %122, 0, !dbg !2770
  %267 = or i1 %266, %265, !dbg !2767
  br i1 %267, label %467, label %270, !dbg !2767

; <label>:268:                                    ; preds = %153, %153
  %269 = icmp eq i64 %122, 0, !dbg !2770
  br i1 %269, label %270, label %467, !dbg !2774

; <label>:270:                                    ; preds = %268, %264, %259, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !2539, metadata !DIExpression()), !dbg !2656
  br label %271, !dbg !2775

; <label>:271:                                    ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %270
  %272 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %270 ], !dbg !2761
  call void @llvm.dbg.value(metadata i8 %272, metadata !2539, metadata !DIExpression()), !dbg !2656
  br i1 %113, label %467, label %661, !dbg !2776

; <label>:273:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !2530, metadata !DIExpression()), !dbg !2594
  call void @llvm.dbg.value(metadata i8 1, metadata !2539, metadata !DIExpression()), !dbg !2656
  br i1 %114, label %274, label %467, !dbg !2778

; <label>:274:                                    ; preds = %273
  br i1 %110, label %275, label %661, !dbg !2779

; <label>:275:                                    ; preds = %274
  %276 = icmp eq i64 %129, 0, !dbg !2782
  %277 = icmp ne i64 %124, 0, !dbg !2784
  %278 = or i1 %277, %276, !dbg !2785
  %279 = select i1 %278, i64 %124, i64 %129, !dbg !2785
  %280 = select i1 %278, i64 %129, i64 0, !dbg !2785
  call void @llvm.dbg.value(metadata i64 %280, metadata !2513, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i64 %279, metadata !2523, metadata !DIExpression()), !dbg !2586
  %281 = icmp ult i64 %123, %280, !dbg !2786
  br i1 %281, label %282, label %284, !dbg !2789

; <label>:282:                                    ; preds = %275
  %283 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !2786
  store i8 39, i8* %283, align 1, !dbg !2786, !tbaa !838
  br label %284, !dbg !2786

; <label>:284:                                    ; preds = %282, %275
  %285 = add i64 %123, 1, !dbg !2789
  call void @llvm.dbg.value(metadata i64 %285, metadata !2522, metadata !DIExpression()), !dbg !2585
  %286 = icmp ult i64 %285, %280, !dbg !2790
  br i1 %286, label %287, label %289, !dbg !2793

; <label>:287:                                    ; preds = %284
  %288 = getelementptr inbounds i8, i8* %0, i64 %285, !dbg !2790
  store i8 92, i8* %288, align 1, !dbg !2790, !tbaa !838
  br label %289, !dbg !2790

; <label>:289:                                    ; preds = %287, %284
  %290 = add i64 %123, 2, !dbg !2793
  call void @llvm.dbg.value(metadata i64 %290, metadata !2522, metadata !DIExpression()), !dbg !2585
  %291 = icmp ult i64 %290, %280, !dbg !2794
  br i1 %291, label %292, label %294, !dbg !2797

; <label>:292:                                    ; preds = %289
  %293 = getelementptr inbounds i8, i8* %0, i64 %290, !dbg !2794
  store i8 39, i8* %293, align 1, !dbg !2794, !tbaa !838
  br label %294, !dbg !2794

; <label>:294:                                    ; preds = %292, %289
  %295 = add i64 %123, 3, !dbg !2797
  call void @llvm.dbg.value(metadata i64 %295, metadata !2522, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i8 0, metadata !2529, metadata !DIExpression()), !dbg !2593
  br label %467, !dbg !2798

; <label>:296:                                    ; preds = %153
  br i1 %14, label %297, label %306, !dbg !2799

; <label>:297:                                    ; preds = %296
  call void @llvm.dbg.value(metadata i64 1, metadata !2540, metadata !DIExpression()), !dbg !2800
  %298 = tail call i16** @__ctype_b_loc() #17, !dbg !2801
  %299 = load i16*, i16** %298, align 8, !dbg !2801, !tbaa !770
  %300 = zext i8 %157 to i64, !dbg !2801
  %301 = getelementptr inbounds i16, i16* %299, i64 %300, !dbg !2801
  %302 = load i16, i16* %301, align 2, !dbg !2801, !tbaa !1441
  %303 = lshr i16 %302, 14, !dbg !2803
  %304 = trunc i16 %303 to i8, !dbg !2803
  %305 = and i8 %304, 1, !dbg !2803
  call void @llvm.dbg.value(metadata i8 %305, metadata !2543, metadata !DIExpression()), !dbg !2804
  br label %359, !dbg !2805

; <label>:306:                                    ; preds = %296
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %19) #12, !dbg !2806
  store i64 0, i64* %10, align 8, !dbg !2807
  call void @llvm.dbg.value(metadata i64 0, metadata !2540, metadata !DIExpression()), !dbg !2800
  call void @llvm.dbg.value(metadata i8 1, metadata !2543, metadata !DIExpression()), !dbg !2804
  %307 = icmp eq i64 %154, -1, !dbg !2808
  br i1 %307, label %308, label %310, !dbg !2810

; <label>:308:                                    ; preds = %306
  %309 = call i64 @strlen(i8* nonnull %2) #14, !dbg !2811
  call void @llvm.dbg.value(metadata i64 %309, metadata !2515, metadata !DIExpression()), !dbg !2579
  br label %310, !dbg !2812

; <label>:310:                                    ; preds = %308, %306
  %311 = phi i64 [ %309, %308 ], [ %154, %306 ], !dbg !2813
  call void @llvm.dbg.value(metadata i64 %311, metadata !2515, metadata !DIExpression()), !dbg !2579
  br label %312, !dbg !2814

; <label>:312:                                    ; preds = %347, %310
  %313 = phi i64 [ 0, %310 ], [ %352, %347 ], !dbg !2815
  %314 = phi i8 [ 1, %310 ], [ %351, %347 ], !dbg !2816
  call void @llvm.dbg.value(metadata i8 %314, metadata !2543, metadata !DIExpression()), !dbg !2804
  call void @llvm.dbg.value(metadata i64 %313, metadata !2540, metadata !DIExpression()), !dbg !2800
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #12, !dbg !2817
  %315 = add i64 %313, %122, !dbg !2818
  %316 = getelementptr inbounds i8, i8* %2, i64 %315, !dbg !2819
  %317 = sub i64 %311, %315, !dbg !2820
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !2544, metadata !DIExpression(DW_OP_deref)), !dbg !2821
  call void @llvm.dbg.value(metadata i32* %12, metadata !2562, metadata !DIExpression(DW_OP_deref)), !dbg !2822
  %318 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %316, i64 %317, %struct.__mbstate_t* nonnull %11) #12, !dbg !2823
  call void @llvm.dbg.value(metadata i64 %318, metadata !2565, metadata !DIExpression()), !dbg !2824
  switch i64 %318, label %331 [
    i64 0, label %343
    i64 -1, label %344
    i64 -2, label %319
  ], !dbg !2825

; <label>:319:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !2540, metadata !DIExpression()), !dbg !2800
  call void @llvm.dbg.value(metadata i64 %313, metadata !2540, metadata !DIExpression()), !dbg !2800
  call void @llvm.dbg.value(metadata i64 %313, metadata !2540, metadata !DIExpression()), !dbg !2800
  call void @llvm.dbg.value(metadata i64 %313, metadata !2540, metadata !DIExpression()), !dbg !2800
  call void @llvm.dbg.value(metadata i64 %313, metadata !2540, metadata !DIExpression()), !dbg !2800
  call void @llvm.dbg.value(metadata i64 %313, metadata !2540, metadata !DIExpression()), !dbg !2800
  %320 = icmp ugt i64 %311, %315, !dbg !2826
  br i1 %320, label %321, label %344, !dbg !2828

; <label>:321:                                    ; preds = %319, %327
  %322 = phi i64 [ %329, %327 ], [ %315, %319 ]
  %323 = phi i64 [ %328, %327 ], [ %313, %319 ]
  call void @llvm.dbg.value(metadata i64 %323, metadata !2540, metadata !DIExpression()), !dbg !2800
  %324 = getelementptr inbounds i8, i8* %2, i64 %322, !dbg !2829
  %325 = load i8, i8* %324, align 1, !dbg !2829, !tbaa !838
  %326 = icmp eq i8 %325, 0, !dbg !2828
  br i1 %326, label %344, label %327, !dbg !2830

; <label>:327:                                    ; preds = %321
  %328 = add i64 %323, 1, !dbg !2831
  call void @llvm.dbg.value(metadata i64 %328, metadata !2540, metadata !DIExpression()), !dbg !2800
  %329 = add i64 %328, %122, !dbg !2832
  %330 = icmp ult i64 %329, %311, !dbg !2826
  br i1 %330, label %321, label %344, !dbg !2828, !llvm.loop !2833

; <label>:331:                                    ; preds = %312
  %332 = icmp ugt i64 %318, 1, !dbg !2834
  %333 = and i1 %116, %332, !dbg !2837
  call void @llvm.dbg.value(metadata i64 1, metadata !2566, metadata !DIExpression()), !dbg !2838
  br i1 %333, label %334, label %347, !dbg !2837

; <label>:334:                                    ; preds = %331, %340
  %335 = phi i64 [ %341, %340 ], [ 1, %331 ]
  call void @llvm.dbg.value(metadata i64 %335, metadata !2566, metadata !DIExpression()), !dbg !2838
  %336 = add i64 %335, %315, !dbg !2839
  %337 = getelementptr inbounds i8, i8* %2, i64 %336, !dbg !2840
  %338 = load i8, i8* %337, align 1, !dbg !2840, !tbaa !838
  %339 = sext i8 %338 to i32, !dbg !2840
  switch i32 %339, label %340 [
    i32 91, label %358
    i32 92, label %358
    i32 94, label %358
    i32 96, label %358
    i32 124, label %358
  ], !dbg !2841

; <label>:340:                                    ; preds = %334
  %341 = add nuw i64 %335, 1, !dbg !2842
  call void @llvm.dbg.value(metadata i64 %341, metadata !2566, metadata !DIExpression()), !dbg !2838
  %342 = icmp ult i64 %341, %318, !dbg !2834
  br i1 %342, label %334, label %347, !dbg !2843, !llvm.loop !2844

; <label>:343:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !2540, metadata !DIExpression()), !dbg !2800
  call void @llvm.dbg.value(metadata i8 %314, metadata !2543, metadata !DIExpression()), !dbg !2804
  call void @llvm.dbg.value(metadata i64 %313, metadata !2540, metadata !DIExpression()), !dbg !2800
  call void @llvm.dbg.value(metadata i8 %314, metadata !2543, metadata !DIExpression()), !dbg !2804
  br label %344, !dbg !2846

; <label>:344:                                    ; preds = %327, %321, %312, %343, %319
  %345 = phi i64 [ %313, %319 ], [ %313, %343 ], [ %313, %312 ], [ %323, %321 ], [ %328, %327 ]
  %346 = phi i8 [ 0, %319 ], [ %314, %343 ], [ 0, %312 ], [ 0, %321 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i8 %351, metadata !2543, metadata !DIExpression()), !dbg !2804
  call void @llvm.dbg.value(metadata i64 %352, metadata !2540, metadata !DIExpression()), !dbg !2800
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #12, !dbg !2846
  br label %355

; <label>:347:                                    ; preds = %340, %331
  %348 = load i32, i32* %12, align 4, !dbg !2847, !tbaa !930
  call void @llvm.dbg.value(metadata i32 %348, metadata !2562, metadata !DIExpression()), !dbg !2822
  %349 = call i32 @iswprint(i32 %348) #12, !dbg !2849
  %350 = icmp eq i32 %349, 0, !dbg !2849
  %351 = select i1 %350, i8 0, i8 %314, !dbg !2850
  call void @llvm.dbg.value(metadata i8 %351, metadata !2543, metadata !DIExpression()), !dbg !2804
  %352 = add i64 %318, %313, !dbg !2851
  call void @llvm.dbg.value(metadata i64 %352, metadata !2540, metadata !DIExpression()), !dbg !2800
  call void @llvm.dbg.value(metadata i8 %351, metadata !2543, metadata !DIExpression()), !dbg !2804
  call void @llvm.dbg.value(metadata i64 %352, metadata !2540, metadata !DIExpression()), !dbg !2800
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #12, !dbg !2846
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !2544, metadata !DIExpression(DW_OP_deref)), !dbg !2821
  %353 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !2852
  %354 = icmp eq i32 %353, 0, !dbg !2853
  br i1 %354, label %312, label %355, !dbg !2854, !llvm.loop !2855

; <label>:355:                                    ; preds = %347, %344
  %356 = phi i8 [ %346, %344 ], [ %351, %347 ]
  %357 = phi i64 [ %345, %344 ], [ %352, %347 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #12, !dbg !2857
  br label %359

; <label>:358:                                    ; preds = %334, %334, %334, %334, %334
  call void @llvm.dbg.value(metadata i8* %95, metadata !2519, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.value(metadata i8* %95, metadata !2519, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.value(metadata i8* %95, metadata !2519, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.value(metadata i8* %95, metadata !2519, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.value(metadata i8* %95, metadata !2519, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.value(metadata i8* %96, metadata !2520, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i8* %96, metadata !2520, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i8* %96, metadata !2520, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i8* %96, metadata !2520, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i8* %96, metadata !2520, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i64 %129, metadata !2513, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i64 %129, metadata !2513, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i64 %129, metadata !2513, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i64 %129, metadata !2513, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i64 %129, metadata !2513, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i64 %311, metadata !2515, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i64 %311, metadata !2515, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i64 %311, metadata !2515, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i64 %311, metadata !2515, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i64 %311, metadata !2515, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i8* %95, metadata !2519, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.value(metadata i8* %95, metadata !2519, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.value(metadata i8* %95, metadata !2519, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.value(metadata i8* %95, metadata !2519, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.value(metadata i8* %95, metadata !2519, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.value(metadata i8* %96, metadata !2520, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i8* %96, metadata !2520, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i8* %96, metadata !2520, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i8* %96, metadata !2520, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i8* %96, metadata !2520, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i64 %129, metadata !2513, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i64 %129, metadata !2513, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i64 %129, metadata !2513, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i64 %129, metadata !2513, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i64 %129, metadata !2513, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i64 %311, metadata !2515, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i64 %311, metadata !2515, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i64 %311, metadata !2515, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i64 %311, metadata !2515, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i64 %311, metadata !2515, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i8* %95, metadata !2519, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.value(metadata i8* %95, metadata !2519, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.value(metadata i8* %95, metadata !2519, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.value(metadata i8* %95, metadata !2519, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.value(metadata i8* %95, metadata !2519, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.value(metadata i8* %96, metadata !2520, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i8* %96, metadata !2520, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i8* %96, metadata !2520, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i8* %96, metadata !2520, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i8* %96, metadata !2520, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i64 %129, metadata !2513, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i64 %129, metadata !2513, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i64 %129, metadata !2513, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i64 %129, metadata !2513, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i64 %129, metadata !2513, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i64 %311, metadata !2515, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i64 %311, metadata !2515, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i64 %311, metadata !2515, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i64 %311, metadata !2515, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i64 %311, metadata !2515, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i8* %95, metadata !2519, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.value(metadata i8* %95, metadata !2519, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.value(metadata i8* %95, metadata !2519, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.value(metadata i8* %95, metadata !2519, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.value(metadata i8* %95, metadata !2519, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.value(metadata i8* %96, metadata !2520, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i8* %96, metadata !2520, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i8* %96, metadata !2520, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i8* %96, metadata !2520, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i8* %96, metadata !2520, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i64 %129, metadata !2513, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i64 %129, metadata !2513, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i64 %129, metadata !2513, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i64 %129, metadata !2513, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i64 %129, metadata !2513, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i64 %311, metadata !2515, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i64 %311, metadata !2515, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i64 %311, metadata !2515, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i64 %311, metadata !2515, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i64 %311, metadata !2515, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i32 2, metadata !2516, metadata !DIExpression()), !dbg !2580
  call void @llvm.dbg.value(metadata i32 2, metadata !2516, metadata !DIExpression()), !dbg !2580
  call void @llvm.dbg.value(metadata i32 2, metadata !2516, metadata !DIExpression()), !dbg !2580
  call void @llvm.dbg.value(metadata i32 2, metadata !2516, metadata !DIExpression()), !dbg !2580
  call void @llvm.dbg.value(metadata i32 2, metadata !2516, metadata !DIExpression()), !dbg !2580
  call void @llvm.dbg.value(metadata i8* %95, metadata !2519, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.value(metadata i8* %95, metadata !2519, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.value(metadata i8* %95, metadata !2519, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.value(metadata i8* %95, metadata !2519, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.value(metadata i8* %95, metadata !2519, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.value(metadata i8* %96, metadata !2520, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i8* %96, metadata !2520, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i8* %96, metadata !2520, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i8* %96, metadata !2520, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i8* %96, metadata !2520, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i8 %100, metadata !2526, metadata !DIExpression()), !dbg !2589
  call void @llvm.dbg.value(metadata i8 %100, metadata !2526, metadata !DIExpression()), !dbg !2589
  call void @llvm.dbg.value(metadata i8 %100, metadata !2526, metadata !DIExpression()), !dbg !2589
  call void @llvm.dbg.value(metadata i8 %100, metadata !2526, metadata !DIExpression()), !dbg !2589
  call void @llvm.dbg.value(metadata i8 %100, metadata !2526, metadata !DIExpression()), !dbg !2589
  call void @llvm.dbg.value(metadata i64 %129, metadata !2513, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i64 %129, metadata !2513, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i64 %129, metadata !2513, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i64 %129, metadata !2513, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i64 %129, metadata !2513, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i64 %311, metadata !2515, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i64 %311, metadata !2515, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i64 %311, metadata !2515, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i64 %311, metadata !2515, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i64 %311, metadata !2515, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i32 %94, metadata !2516, metadata !DIExpression()), !dbg !2580
  call void @llvm.dbg.value(metadata i32 %94, metadata !2516, metadata !DIExpression()), !dbg !2580
  call void @llvm.dbg.value(metadata i32 %94, metadata !2516, metadata !DIExpression()), !dbg !2580
  call void @llvm.dbg.value(metadata i32 %94, metadata !2516, metadata !DIExpression()), !dbg !2580
  call void @llvm.dbg.value(metadata i32 %94, metadata !2516, metadata !DIExpression()), !dbg !2580
  call void @llvm.dbg.value(metadata i8* %95, metadata !2519, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.value(metadata i8* %95, metadata !2519, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.value(metadata i8* %95, metadata !2519, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.value(metadata i8* %95, metadata !2519, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.value(metadata i8* %95, metadata !2519, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.value(metadata i8* %96, metadata !2520, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i8* %96, metadata !2520, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i8* %96, metadata !2520, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i8* %96, metadata !2520, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i8* %96, metadata !2520, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i8 %100, metadata !2526, metadata !DIExpression()), !dbg !2589
  call void @llvm.dbg.value(metadata i8 %100, metadata !2526, metadata !DIExpression()), !dbg !2589
  call void @llvm.dbg.value(metadata i8 %100, metadata !2526, metadata !DIExpression()), !dbg !2589
  call void @llvm.dbg.value(metadata i8 %100, metadata !2526, metadata !DIExpression()), !dbg !2589
  call void @llvm.dbg.value(metadata i8 %100, metadata !2526, metadata !DIExpression()), !dbg !2589
  call void @llvm.dbg.value(metadata i64 %129, metadata !2513, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i64 %129, metadata !2513, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i64 %129, metadata !2513, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i64 %129, metadata !2513, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i64 %129, metadata !2513, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i64 %311, metadata !2515, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i64 %311, metadata !2515, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i64 %311, metadata !2515, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i64 %311, metadata !2515, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i64 %311, metadata !2515, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i8 %351, metadata !2543, metadata !DIExpression()), !dbg !2804
  call void @llvm.dbg.value(metadata i64 %352, metadata !2540, metadata !DIExpression()), !dbg !2800
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #12, !dbg !2846
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #12, !dbg !2857
  br label %661

; <label>:359:                                    ; preds = %355, %297
  %360 = phi i64 [ %154, %297 ], [ %311, %355 ], !dbg !2858
  %361 = phi i64 [ 1, %297 ], [ %357, %355 ], !dbg !2859
  %362 = phi i8 [ %305, %297 ], [ %356, %355 ], !dbg !2859
  call void @llvm.dbg.value(metadata i8 %362, metadata !2543, metadata !DIExpression()), !dbg !2804
  call void @llvm.dbg.value(metadata i64 %361, metadata !2540, metadata !DIExpression()), !dbg !2800
  call void @llvm.dbg.value(metadata i64 %360, metadata !2515, metadata !DIExpression()), !dbg !2579
  %363 = and i8 %362, 1, !dbg !2860
  %364 = icmp ne i8 %363, 0, !dbg !2860
  call void @llvm.dbg.value(metadata i8 %363, metadata !2539, metadata !DIExpression()), !dbg !2656
  %365 = icmp ult i64 %361, 2, !dbg !2861
  %366 = or i1 %364, %115, !dbg !2862
  %367 = and i1 %365, %366, !dbg !2863
  br i1 %367, label %467, label %368, !dbg !2863

; <label>:368:                                    ; preds = %359
  %369 = add i64 %361, %122, !dbg !2864
  call void @llvm.dbg.value(metadata i64 %369, metadata !2573, metadata !DIExpression()), !dbg !2865
  br label %370, !dbg !2866

; <label>:370:                                    ; preds = %463, %368
  %371 = phi i64 [ %122, %368 ], [ %438, %463 ], !dbg !2867
  %372 = phi i64 [ %123, %368 ], [ %464, %463 ], !dbg !2871
  %373 = phi i8 [ %126, %368 ], [ %459, %463 ], !dbg !2593
  %374 = phi i8 [ %157, %368 ], [ %466, %463 ], !dbg !2867
  %375 = phi i8 [ %155, %368 ], [ %436, %463 ], !dbg !2873
  %376 = phi i8 [ 0, %368 ], [ %437, %463 ], !dbg !2655
  call void @llvm.dbg.value(metadata i8 %376, metadata !2538, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata i8 %375, metadata !2537, metadata !DIExpression()), !dbg !2654
  call void @llvm.dbg.value(metadata i8 %374, metadata !2532, metadata !DIExpression()), !dbg !2671
  call void @llvm.dbg.value(metadata i8 %373, metadata !2529, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i64 %372, metadata !2522, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i64 %371, metadata !2521, metadata !DIExpression()), !dbg !2645
  br i1 %366, label %423, label %377, !dbg !2877

; <label>:377:                                    ; preds = %370
  br i1 %110, label %378, label %661, !dbg !2878

; <label>:378:                                    ; preds = %377
  call void @llvm.dbg.value(metadata i8 1, metadata !2538, metadata !DIExpression()), !dbg !2655
  %379 = and i8 %373, 1, !dbg !2881
  %380 = icmp eq i8 %379, 0, !dbg !2881
  %381 = and i1 %114, %380, !dbg !2881
  br i1 %381, label %382, label %398, !dbg !2881

; <label>:382:                                    ; preds = %378
  %383 = icmp ult i64 %372, %129, !dbg !2883
  br i1 %383, label %384, label %386, !dbg !2887

; <label>:384:                                    ; preds = %382
  %385 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !2883
  store i8 39, i8* %385, align 1, !dbg !2883, !tbaa !838
  br label %386, !dbg !2883

; <label>:386:                                    ; preds = %384, %382
  %387 = add i64 %372, 1, !dbg !2887
  call void @llvm.dbg.value(metadata i64 %387, metadata !2522, metadata !DIExpression()), !dbg !2585
  %388 = icmp ult i64 %387, %129, !dbg !2888
  br i1 %388, label %389, label %391, !dbg !2891

; <label>:389:                                    ; preds = %386
  %390 = getelementptr inbounds i8, i8* %0, i64 %387, !dbg !2888
  store i8 36, i8* %390, align 1, !dbg !2888, !tbaa !838
  br label %391, !dbg !2888

; <label>:391:                                    ; preds = %389, %386
  %392 = add i64 %372, 2, !dbg !2891
  call void @llvm.dbg.value(metadata i64 %392, metadata !2522, metadata !DIExpression()), !dbg !2585
  %393 = icmp ult i64 %392, %129, !dbg !2892
  br i1 %393, label %394, label %396, !dbg !2895

; <label>:394:                                    ; preds = %391
  %395 = getelementptr inbounds i8, i8* %0, i64 %392, !dbg !2892
  store i8 39, i8* %395, align 1, !dbg !2892, !tbaa !838
  br label %396, !dbg !2892

; <label>:396:                                    ; preds = %394, %391
  %397 = add i64 %372, 3, !dbg !2895
  call void @llvm.dbg.value(metadata i64 %397, metadata !2522, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i8 1, metadata !2529, metadata !DIExpression()), !dbg !2593
  br label %398, !dbg !2896

; <label>:398:                                    ; preds = %378, %396
  %399 = phi i64 [ %397, %396 ], [ %372, %378 ], !dbg !2644
  %400 = phi i8 [ 1, %396 ], [ %373, %378 ], !dbg !2644
  call void @llvm.dbg.value(metadata i8 %400, metadata !2529, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i64 %399, metadata !2522, metadata !DIExpression()), !dbg !2585
  %401 = icmp ult i64 %399, %129, !dbg !2897
  br i1 %401, label %402, label %404, !dbg !2900

; <label>:402:                                    ; preds = %398
  %403 = getelementptr inbounds i8, i8* %0, i64 %399, !dbg !2897
  store i8 92, i8* %403, align 1, !dbg !2897, !tbaa !838
  br label %404, !dbg !2897

; <label>:404:                                    ; preds = %402, %398
  %405 = add i64 %399, 1, !dbg !2900
  call void @llvm.dbg.value(metadata i64 %405, metadata !2522, metadata !DIExpression()), !dbg !2585
  %406 = icmp ult i64 %405, %129, !dbg !2901
  br i1 %406, label %407, label %411, !dbg !2904

; <label>:407:                                    ; preds = %404
  %408 = lshr i8 %374, 6, !dbg !2901
  %409 = or i8 %408, 48, !dbg !2901
  %410 = getelementptr inbounds i8, i8* %0, i64 %405, !dbg !2901
  store i8 %409, i8* %410, align 1, !dbg !2901, !tbaa !838
  br label %411, !dbg !2901

; <label>:411:                                    ; preds = %407, %404
  %412 = add i64 %399, 2, !dbg !2904
  call void @llvm.dbg.value(metadata i64 %412, metadata !2522, metadata !DIExpression()), !dbg !2585
  %413 = icmp ult i64 %412, %129, !dbg !2905
  br i1 %413, label %414, label %419, !dbg !2908

; <label>:414:                                    ; preds = %411
  %415 = lshr i8 %374, 3, !dbg !2905
  %416 = and i8 %415, 7, !dbg !2905
  %417 = or i8 %416, 48, !dbg !2905
  %418 = getelementptr inbounds i8, i8* %0, i64 %412, !dbg !2905
  store i8 %417, i8* %418, align 1, !dbg !2905, !tbaa !838
  br label %419, !dbg !2905

; <label>:419:                                    ; preds = %414, %411
  %420 = add i64 %399, 3, !dbg !2908
  call void @llvm.dbg.value(metadata i64 %420, metadata !2522, metadata !DIExpression()), !dbg !2585
  %421 = and i8 %374, 7, !dbg !2909
  %422 = or i8 %421, 48, !dbg !2910
  call void @llvm.dbg.value(metadata i8 %422, metadata !2532, metadata !DIExpression()), !dbg !2671
  br label %432, !dbg !2911

; <label>:423:                                    ; preds = %370
  %424 = and i8 %375, 1, !dbg !2912
  %425 = icmp eq i8 %424, 0, !dbg !2912
  br i1 %425, label %432, label %426, !dbg !2913

; <label>:426:                                    ; preds = %423
  %427 = icmp ult i64 %372, %129, !dbg !2914
  br i1 %427, label %428, label %430, !dbg !2917

; <label>:428:                                    ; preds = %426
  %429 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !2914
  store i8 92, i8* %429, align 1, !dbg !2914, !tbaa !838
  br label %430, !dbg !2914

; <label>:430:                                    ; preds = %428, %426
  %431 = add i64 %372, 1, !dbg !2917
  call void @llvm.dbg.value(metadata i64 %431, metadata !2522, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i8 0, metadata !2537, metadata !DIExpression()), !dbg !2654
  br label %432, !dbg !2918

; <label>:432:                                    ; preds = %423, %430, %419
  %433 = phi i64 [ %431, %430 ], [ %372, %423 ], [ %420, %419 ], !dbg !2919
  %434 = phi i8 [ %373, %430 ], [ %373, %423 ], [ %400, %419 ], !dbg !2593
  %435 = phi i8 [ %374, %430 ], [ %374, %423 ], [ %422, %419 ], !dbg !2920
  %436 = phi i8 [ 0, %430 ], [ %375, %423 ], [ %375, %419 ], !dbg !2921
  %437 = phi i8 [ %376, %430 ], [ %376, %423 ], [ 1, %419 ], !dbg !2923
  call void @llvm.dbg.value(metadata i8 %437, metadata !2538, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata i8 %436, metadata !2537, metadata !DIExpression()), !dbg !2654
  call void @llvm.dbg.value(metadata i8 %435, metadata !2532, metadata !DIExpression()), !dbg !2671
  call void @llvm.dbg.value(metadata i8 %434, metadata !2529, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i64 %433, metadata !2522, metadata !DIExpression()), !dbg !2585
  %438 = add i64 %371, 1, !dbg !2924
  %439 = icmp ugt i64 %369, %438, !dbg !2926
  br i1 %439, label %440, label %562, !dbg !2927

; <label>:440:                                    ; preds = %432
  %441 = and i8 %434, 1, !dbg !2928
  %442 = icmp ne i8 %441, 0, !dbg !2928
  %443 = and i8 %437, 1, !dbg !2928
  %444 = icmp eq i8 %443, 0, !dbg !2928
  %445 = and i1 %442, %444, !dbg !2928
  br i1 %445, label %446, label %457, !dbg !2928

; <label>:446:                                    ; preds = %440
  %447 = icmp ult i64 %433, %129, !dbg !2931
  br i1 %447, label %448, label %450, !dbg !2935

; <label>:448:                                    ; preds = %446
  %449 = getelementptr inbounds i8, i8* %0, i64 %433, !dbg !2931
  store i8 39, i8* %449, align 1, !dbg !2931, !tbaa !838
  br label %450, !dbg !2931

; <label>:450:                                    ; preds = %448, %446
  %451 = add i64 %433, 1, !dbg !2935
  call void @llvm.dbg.value(metadata i64 %451, metadata !2522, metadata !DIExpression()), !dbg !2585
  %452 = icmp ult i64 %451, %129, !dbg !2936
  br i1 %452, label %453, label %455, !dbg !2939

; <label>:453:                                    ; preds = %450
  %454 = getelementptr inbounds i8, i8* %0, i64 %451, !dbg !2936
  store i8 39, i8* %454, align 1, !dbg !2936, !tbaa !838
  br label %455, !dbg !2936

; <label>:455:                                    ; preds = %453, %450
  %456 = add i64 %433, 2, !dbg !2939
  call void @llvm.dbg.value(metadata i64 %456, metadata !2522, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i8 0, metadata !2529, metadata !DIExpression()), !dbg !2593
  br label %457, !dbg !2940

; <label>:457:                                    ; preds = %440, %455
  %458 = phi i64 [ %456, %455 ], [ %433, %440 ], !dbg !2941
  %459 = phi i8 [ 0, %455 ], [ %434, %440 ], !dbg !2644
  call void @llvm.dbg.value(metadata i8 %459, metadata !2529, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i64 %458, metadata !2522, metadata !DIExpression()), !dbg !2585
  %460 = icmp ult i64 %458, %129, !dbg !2942
  br i1 %460, label %461, label %463, !dbg !2944

; <label>:461:                                    ; preds = %457
  %462 = getelementptr inbounds i8, i8* %0, i64 %458, !dbg !2942
  store i8 %435, i8* %462, align 1, !dbg !2942, !tbaa !838
  br label %463, !dbg !2942

; <label>:463:                                    ; preds = %461, %457
  %464 = add i64 %458, 1, !dbg !2944
  call void @llvm.dbg.value(metadata i64 %464, metadata !2522, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i64 %438, metadata !2521, metadata !DIExpression()), !dbg !2645
  %465 = getelementptr inbounds i8, i8* %2, i64 %438, !dbg !2945
  %466 = load i8, i8* %465, align 1, !dbg !2945, !tbaa !838
  call void @llvm.dbg.value(metadata i8 %466, metadata !2532, metadata !DIExpression()), !dbg !2671
  br label %370, !dbg !2946, !llvm.loop !2947

; <label>:467:                                    ; preds = %359, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %271, %188, %191, %205, %209, %210, %268, %264, %259, %273, %294, %243, %219, %214, %211, %208
  %468 = phi i64 [ %122, %294 ], [ %122, %273 ], [ %122, %271 ], [ %122, %268 ], [ %122, %259 ], [ %122, %264 ], [ %122, %208 ], [ %122, %219 ], [ %212, %243 ], [ %122, %214 ], [ %122, %211 ], [ %122, %210 ], [ %122, %209 ], [ %122, %205 ], [ %122, %191 ], [ %122, %188 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %359 ], !dbg !2950
  %469 = phi i64 [ %295, %294 ], [ %123, %273 ], [ %123, %271 ], [ %123, %268 ], [ %123, %259 ], [ %123, %264 ], [ %123, %208 ], [ %123, %219 ], [ %244, %243 ], [ %123, %214 ], [ %123, %211 ], [ %123, %210 ], [ %123, %209 ], [ %206, %205 ], [ %187, %191 ], [ %187, %188 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %359 ], !dbg !2644
  %470 = phi i64 [ %279, %294 ], [ %124, %273 ], [ %124, %271 ], [ %124, %268 ], [ %124, %259 ], [ %124, %264 ], [ %124, %208 ], [ %124, %219 ], [ %124, %243 ], [ %124, %214 ], [ %124, %211 ], [ %124, %210 ], [ %124, %209 ], [ %124, %205 ], [ %124, %191 ], [ %124, %188 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %359 ], !dbg !2586
  %471 = phi i64 [ %154, %294 ], [ %154, %273 ], [ %154, %271 ], [ %154, %268 ], [ -1, %259 ], [ %154, %264 ], [ %154, %208 ], [ %154, %219 ], [ %154, %243 ], [ %154, %214 ], [ %154, %211 ], [ %154, %210 ], [ %154, %209 ], [ %154, %205 ], [ %154, %191 ], [ %154, %188 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %360, %359 ], !dbg !2951
  %472 = phi i8 [ 0, %294 ], [ %126, %273 ], [ %126, %271 ], [ %126, %268 ], [ %126, %259 ], [ %126, %264 ], [ %126, %208 ], [ %126, %219 ], [ %126, %243 ], [ %126, %214 ], [ %126, %211 ], [ %126, %210 ], [ %126, %209 ], [ %182, %205 ], [ %182, %191 ], [ %182, %188 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %359 ], !dbg !2644
  %473 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %127, %271 ], [ %127, %268 ], [ %127, %259 ], [ %127, %264 ], [ %127, %208 ], [ %127, %219 ], [ %127, %243 ], [ %127, %214 ], [ %127, %211 ], [ %127, %210 ], [ %127, %209 ], [ %127, %205 ], [ %127, %191 ], [ %127, %188 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %359 ], !dbg !2644
  %474 = phi i8 [ 39, %294 ], [ 39, %273 ], [ %157, %271 ], [ %157, %268 ], [ %157, %259 ], [ %157, %264 ], [ 63, %208 ], [ 63, %219 ], [ %221, %243 ], [ 63, %214 ], [ 63, %211 ], [ 63, %210 ], [ 63, %209 ], [ 48, %205 ], [ 48, %191 ], [ 48, %188 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %359 ], !dbg !2669
  %475 = phi i8 [ 0, %294 ], [ 0, %273 ], [ 0, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 1, %205 ], [ 1, %191 ], [ 1, %188 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %359 ], !dbg !2669
  %476 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %272, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 0, %205 ], [ 0, %191 ], [ 0, %188 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %363, %359 ], !dbg !2669
  %477 = phi i64 [ %280, %294 ], [ %129, %273 ], [ %129, %271 ], [ %129, %268 ], [ %129, %259 ], [ %129, %264 ], [ %129, %208 ], [ %129, %219 ], [ %129, %243 ], [ %129, %214 ], [ %129, %211 ], [ %129, %210 ], [ %129, %209 ], [ %129, %205 ], [ %129, %191 ], [ %129, %188 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %359 ]
  call void @llvm.dbg.value(metadata i64 %477, metadata !2513, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i8 %476, metadata !2539, metadata !DIExpression()), !dbg !2656
  call void @llvm.dbg.value(metadata i8 %475, metadata !2538, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata i8 %155, metadata !2537, metadata !DIExpression()), !dbg !2654
  call void @llvm.dbg.value(metadata i8 %474, metadata !2532, metadata !DIExpression()), !dbg !2671
  call void @llvm.dbg.value(metadata i8 %473, metadata !2530, metadata !DIExpression()), !dbg !2594
  call void @llvm.dbg.value(metadata i8 %472, metadata !2529, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i64 %471, metadata !2515, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i64 %470, metadata !2523, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.value(metadata i64 %469, metadata !2522, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i64 %468, metadata !2521, metadata !DIExpression()), !dbg !2645
  br i1 %105, label %489, label %478, !dbg !2952

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
  br i1 %112, label %490, label %512, !dbg !2954

; <label>:489:                                    ; preds = %467
  br i1 %20, label %512, label %490, !dbg !2955

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
  %501 = lshr i8 %494, 5, !dbg !2956
  %502 = zext i8 %501 to i64, !dbg !2956
  %503 = getelementptr inbounds i32, i32* %6, i64 %502, !dbg !2957
  %504 = load i32, i32* %503, align 4, !dbg !2957, !tbaa !930
  %505 = and i8 %494, 31, !dbg !2958
  %506 = zext i8 %505 to i32, !dbg !2958
  %507 = shl i32 1, %506, !dbg !2959
  %508 = and i32 %504, %507, !dbg !2959
  %509 = icmp eq i32 %508, 0, !dbg !2959
  %510 = icmp eq i8 %155, 0, !dbg !2960
  %511 = and i1 %510, %509, !dbg !2961
  br i1 %511, label %562, label %524, !dbg !2961

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
  %523 = icmp eq i8 %155, 0, !dbg !2960
  br i1 %523, label %562, label %524, !dbg !2962

; <label>:524:                                    ; preds = %255, %490, %512
  %525 = phi i64 [ %500, %490 ], [ %522, %512 ], [ %122, %255 ], !dbg !2963
  %526 = phi i64 [ %499, %490 ], [ %521, %512 ], [ %123, %255 ], !dbg !2644
  %527 = phi i64 [ %498, %490 ], [ %520, %512 ], [ %124, %255 ], !dbg !2586
  %528 = phi i64 [ %497, %490 ], [ %519, %512 ], [ %154, %255 ], !dbg !2951
  %529 = phi i8 [ %496, %490 ], [ %518, %512 ], [ %126, %255 ], !dbg !2593
  %530 = phi i8 [ %495, %490 ], [ %517, %512 ], [ %127, %255 ], !dbg !2594
  %531 = phi i8 [ %494, %490 ], [ %516, %512 ], [ %256, %255 ], !dbg !2964
  %532 = phi i8 [ %492, %490 ], [ %514, %512 ], [ 0, %255 ], !dbg !2669
  %533 = phi i64 [ %491, %490 ], [ %513, %512 ], [ %129, %255 ]
  call void @llvm.dbg.value(metadata i64 %533, metadata !2513, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i8 %532, metadata !2539, metadata !DIExpression()), !dbg !2656
  call void @llvm.dbg.value(metadata i8 %531, metadata !2532, metadata !DIExpression()), !dbg !2671
  call void @llvm.dbg.value(metadata i8 %530, metadata !2530, metadata !DIExpression()), !dbg !2594
  call void @llvm.dbg.value(metadata i8 %529, metadata !2529, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i64 %528, metadata !2515, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i64 %527, metadata !2523, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.value(metadata i64 %526, metadata !2522, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i64 %525, metadata !2521, metadata !DIExpression()), !dbg !2645
  br i1 %110, label %534, label %661, !dbg !2967

; <label>:534:                                    ; preds = %524
  call void @llvm.dbg.value(metadata i8 1, metadata !2538, metadata !DIExpression()), !dbg !2655
  %535 = and i8 %529, 1, !dbg !2969
  %536 = icmp eq i8 %535, 0, !dbg !2969
  %537 = and i1 %114, %536, !dbg !2969
  br i1 %537, label %538, label %554, !dbg !2969

; <label>:538:                                    ; preds = %534
  %539 = icmp ult i64 %526, %533, !dbg !2971
  br i1 %539, label %540, label %542, !dbg !2975

; <label>:540:                                    ; preds = %538
  %541 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !2971
  store i8 39, i8* %541, align 1, !dbg !2971, !tbaa !838
  br label %542, !dbg !2971

; <label>:542:                                    ; preds = %540, %538
  %543 = add i64 %526, 1, !dbg !2975
  call void @llvm.dbg.value(metadata i64 %543, metadata !2522, metadata !DIExpression()), !dbg !2585
  %544 = icmp ult i64 %543, %533, !dbg !2976
  br i1 %544, label %545, label %547, !dbg !2979

; <label>:545:                                    ; preds = %542
  %546 = getelementptr inbounds i8, i8* %0, i64 %543, !dbg !2976
  store i8 36, i8* %546, align 1, !dbg !2976, !tbaa !838
  br label %547, !dbg !2976

; <label>:547:                                    ; preds = %545, %542
  %548 = add i64 %526, 2, !dbg !2979
  call void @llvm.dbg.value(metadata i64 %548, metadata !2522, metadata !DIExpression()), !dbg !2585
  %549 = icmp ult i64 %548, %533, !dbg !2980
  br i1 %549, label %550, label %552, !dbg !2983

; <label>:550:                                    ; preds = %547
  %551 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !2980
  store i8 39, i8* %551, align 1, !dbg !2980, !tbaa !838
  br label %552, !dbg !2980

; <label>:552:                                    ; preds = %550, %547
  %553 = add i64 %526, 3, !dbg !2983
  call void @llvm.dbg.value(metadata i64 %553, metadata !2522, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i8 1, metadata !2529, metadata !DIExpression()), !dbg !2593
  br label %554, !dbg !2984

; <label>:554:                                    ; preds = %534, %552
  %555 = phi i64 [ %553, %552 ], [ %526, %534 ], !dbg !2941
  %556 = phi i8 [ 1, %552 ], [ %529, %534 ], !dbg !2644
  call void @llvm.dbg.value(metadata i8 %556, metadata !2529, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i64 %555, metadata !2522, metadata !DIExpression()), !dbg !2585
  %557 = icmp ult i64 %555, %533, !dbg !2985
  br i1 %557, label %558, label %560, !dbg !2988

; <label>:558:                                    ; preds = %554
  %559 = getelementptr inbounds i8, i8* %0, i64 %555, !dbg !2985
  store i8 92, i8* %559, align 1, !dbg !2985, !tbaa !838
  br label %560, !dbg !2985

; <label>:560:                                    ; preds = %554, %558
  %561 = add i64 %555, 1, !dbg !2988
  call void @llvm.dbg.value(metadata i64 %561, metadata !2522, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i64 %572, metadata !2513, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i8 %571, metadata !2539, metadata !DIExpression()), !dbg !2656
  call void @llvm.dbg.value(metadata i8 %570, metadata !2538, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata i8 %569, metadata !2532, metadata !DIExpression()), !dbg !2671
  call void @llvm.dbg.value(metadata i8 %568, metadata !2530, metadata !DIExpression()), !dbg !2594
  call void @llvm.dbg.value(metadata i8 %567, metadata !2529, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i64 %566, metadata !2515, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i64 %565, metadata !2523, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.value(metadata i64 %564, metadata !2522, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i64 %563, metadata !2521, metadata !DIExpression()), !dbg !2645
  br label %589, !dbg !2989

; <label>:562:                                    ; preds = %432, %252, %490, %251, %512
  %563 = phi i64 [ %522, %512 ], [ %122, %251 ], [ %500, %490 ], [ %122, %252 ], [ %371, %432 ], !dbg !2963
  %564 = phi i64 [ %521, %512 ], [ %123, %251 ], [ %499, %490 ], [ %123, %252 ], [ %433, %432 ], !dbg !2644
  %565 = phi i64 [ %520, %512 ], [ %124, %251 ], [ %498, %490 ], [ %124, %252 ], [ %124, %432 ], !dbg !2586
  %566 = phi i64 [ %519, %512 ], [ %154, %251 ], [ %497, %490 ], [ %154, %252 ], [ %360, %432 ], !dbg !2951
  %567 = phi i8 [ %518, %512 ], [ %126, %251 ], [ %496, %490 ], [ %126, %252 ], [ %434, %432 ], !dbg !2593
  %568 = phi i8 [ %517, %512 ], [ %127, %251 ], [ %495, %490 ], [ %127, %252 ], [ %127, %432 ], !dbg !2594
  %569 = phi i8 [ %516, %512 ], [ 92, %251 ], [ %494, %490 ], [ 92, %252 ], [ %435, %432 ], !dbg !2992
  %570 = phi i8 [ %515, %512 ], [ 0, %251 ], [ %493, %490 ], [ 0, %252 ], [ %437, %432 ], !dbg !2669
  %571 = phi i8 [ %514, %512 ], [ 0, %251 ], [ %492, %490 ], [ 0, %252 ], [ %363, %432 ], !dbg !2669
  %572 = phi i64 [ %513, %512 ], [ %129, %251 ], [ %491, %490 ], [ %129, %252 ], [ %129, %432 ]
  call void @llvm.dbg.value(metadata i64 %572, metadata !2513, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i8 %571, metadata !2539, metadata !DIExpression()), !dbg !2656
  call void @llvm.dbg.value(metadata i8 %570, metadata !2538, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata i8 %569, metadata !2532, metadata !DIExpression()), !dbg !2671
  call void @llvm.dbg.value(metadata i8 %568, metadata !2530, metadata !DIExpression()), !dbg !2594
  call void @llvm.dbg.value(metadata i8 %567, metadata !2529, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i64 %566, metadata !2515, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i64 %565, metadata !2523, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.value(metadata i64 %564, metadata !2522, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i64 %563, metadata !2521, metadata !DIExpression()), !dbg !2645
  %573 = and i8 %567, 1, !dbg !2989
  %574 = icmp ne i8 %573, 0, !dbg !2989
  %575 = and i8 %570, 1, !dbg !2989
  %576 = icmp eq i8 %575, 0, !dbg !2989
  %577 = and i1 %574, %576, !dbg !2989
  br i1 %577, label %578, label %589, !dbg !2989

; <label>:578:                                    ; preds = %562
  %579 = icmp ult i64 %564, %572, !dbg !2993
  br i1 %579, label %580, label %582, !dbg !2997

; <label>:580:                                    ; preds = %578
  %581 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !2993
  store i8 39, i8* %581, align 1, !dbg !2993, !tbaa !838
  br label %582, !dbg !2993

; <label>:582:                                    ; preds = %580, %578
  %583 = add i64 %564, 1, !dbg !2997
  call void @llvm.dbg.value(metadata i64 %583, metadata !2522, metadata !DIExpression()), !dbg !2585
  %584 = icmp ult i64 %583, %572, !dbg !2998
  br i1 %584, label %585, label %587, !dbg !3001

; <label>:585:                                    ; preds = %582
  %586 = getelementptr inbounds i8, i8* %0, i64 %583, !dbg !2998
  store i8 39, i8* %586, align 1, !dbg !2998, !tbaa !838
  br label %587, !dbg !2998

; <label>:587:                                    ; preds = %585, %582
  %588 = add i64 %564, 2, !dbg !3001
  call void @llvm.dbg.value(metadata i64 %588, metadata !2522, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i8 0, metadata !2529, metadata !DIExpression()), !dbg !2593
  br label %589, !dbg !3002

; <label>:589:                                    ; preds = %560, %562, %587
  %590 = phi i64 [ %572, %587 ], [ %572, %562 ], [ %533, %560 ]
  %591 = phi i8 [ %571, %587 ], [ %571, %562 ], [ %532, %560 ]
  %592 = phi i8 [ %569, %587 ], [ %569, %562 ], [ %531, %560 ]
  %593 = phi i8 [ %568, %587 ], [ %568, %562 ], [ %530, %560 ]
  %594 = phi i64 [ %566, %587 ], [ %566, %562 ], [ %528, %560 ]
  %595 = phi i64 [ %565, %587 ], [ %565, %562 ], [ %527, %560 ]
  %596 = phi i64 [ %563, %587 ], [ %563, %562 ], [ %525, %560 ]
  %597 = phi i64 [ %588, %587 ], [ %564, %562 ], [ %561, %560 ], !dbg !2941
  %598 = phi i8 [ 0, %587 ], [ %567, %562 ], [ %556, %560 ], !dbg !2644
  call void @llvm.dbg.value(metadata i8 %598, metadata !2529, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i64 %597, metadata !2522, metadata !DIExpression()), !dbg !2585
  %599 = icmp ult i64 %597, %590, !dbg !3003
  br i1 %599, label %600, label %602, !dbg !3006

; <label>:600:                                    ; preds = %589
  %601 = getelementptr inbounds i8, i8* %0, i64 %597, !dbg !3003
  store i8 %592, i8* %601, align 1, !dbg !3003, !tbaa !838
  br label %602, !dbg !3003

; <label>:602:                                    ; preds = %600, %589
  %603 = add i64 %597, 1, !dbg !3006
  call void @llvm.dbg.value(metadata i64 %603, metadata !2522, metadata !DIExpression()), !dbg !2585
  %604 = and i8 %591, 1, !dbg !3007
  %605 = icmp eq i8 %604, 0, !dbg !3007
  %606 = select i1 %605, i8 0, i8 %128, !dbg !3009
  call void @llvm.dbg.value(metadata i8 %606, metadata !2531, metadata !DIExpression()), !dbg !2595
  br label %607, !dbg !3010

; <label>:607:                                    ; preds = %602, %207
  %608 = phi i64 [ %596, %602 ], [ %122, %207 ], !dbg !2963
  %609 = phi i64 [ %603, %602 ], [ %123, %207 ], !dbg !2644
  %610 = phi i64 [ %595, %602 ], [ %124, %207 ], !dbg !2586
  %611 = phi i64 [ %594, %602 ], [ %154, %207 ], !dbg !2951
  %612 = phi i8 [ %598, %602 ], [ %126, %207 ], !dbg !2593
  %613 = phi i8 [ %593, %602 ], [ %127, %207 ], !dbg !2644
  %614 = phi i8 [ %606, %602 ], [ %128, %207 ], !dbg !2595
  %615 = phi i64 [ %590, %602 ], [ %129, %207 ]
  call void @llvm.dbg.value(metadata i64 %615, metadata !2513, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i8 %614, metadata !2531, metadata !DIExpression()), !dbg !2595
  call void @llvm.dbg.value(metadata i8 %613, metadata !2530, metadata !DIExpression()), !dbg !2594
  call void @llvm.dbg.value(metadata i8 %612, metadata !2529, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i64 %611, metadata !2515, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i64 %610, metadata !2523, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.value(metadata i64 %609, metadata !2522, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i64 %608, metadata !2521, metadata !DIExpression()), !dbg !2645
  %616 = add i64 %608, 1, !dbg !3011
  call void @llvm.dbg.value(metadata i64 %616, metadata !2521, metadata !DIExpression()), !dbg !2645
  br label %121, !dbg !3012, !llvm.loop !3013

; <label>:617:                                    ; preds = %131, %135
  %618 = phi i64 [ -1, %131 ], [ %122, %135 ]
  call void @llvm.dbg.value(metadata i64 %123, metadata !2522, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i64 %123, metadata !2522, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i64 %124, metadata !2523, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.value(metadata i64 %124, metadata !2523, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.value(metadata i8 %126, metadata !2529, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i8 %126, metadata !2529, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i8 %127, metadata !2530, metadata !DIExpression()), !dbg !2594
  call void @llvm.dbg.value(metadata i8 %127, metadata !2530, metadata !DIExpression()), !dbg !2594
  call void @llvm.dbg.value(metadata i8 %128, metadata !2531, metadata !DIExpression()), !dbg !2595
  call void @llvm.dbg.value(metadata i8 %128, metadata !2531, metadata !DIExpression()), !dbg !2595
  call void @llvm.dbg.value(metadata i64 %129, metadata !2513, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i64 %129, metadata !2513, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i64 %123, metadata !2522, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i64 %123, metadata !2522, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i64 %124, metadata !2523, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.value(metadata i64 %124, metadata !2523, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.value(metadata i8 %126, metadata !2529, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i8 %126, metadata !2529, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i8 %127, metadata !2530, metadata !DIExpression()), !dbg !2594
  call void @llvm.dbg.value(metadata i8 %127, metadata !2530, metadata !DIExpression()), !dbg !2594
  call void @llvm.dbg.value(metadata i8 %128, metadata !2531, metadata !DIExpression()), !dbg !2595
  call void @llvm.dbg.value(metadata i8 %128, metadata !2531, metadata !DIExpression()), !dbg !2595
  call void @llvm.dbg.value(metadata i64 %129, metadata !2513, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i64 %129, metadata !2513, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i64 %123, metadata !2522, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i64 %123, metadata !2522, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i64 %124, metadata !2523, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.value(metadata i64 %124, metadata !2523, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.value(metadata i8 %126, metadata !2529, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i8 %126, metadata !2529, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i8 %127, metadata !2530, metadata !DIExpression()), !dbg !2594
  call void @llvm.dbg.value(metadata i8 %127, metadata !2530, metadata !DIExpression()), !dbg !2594
  call void @llvm.dbg.value(metadata i8 %128, metadata !2531, metadata !DIExpression()), !dbg !2595
  call void @llvm.dbg.value(metadata i8 %128, metadata !2531, metadata !DIExpression()), !dbg !2595
  call void @llvm.dbg.value(metadata i64 %129, metadata !2513, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i64 %129, metadata !2513, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i64 %123, metadata !2522, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i64 %123, metadata !2522, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i64 %124, metadata !2523, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.value(metadata i64 %124, metadata !2523, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.value(metadata i8 %126, metadata !2529, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i8 %126, metadata !2529, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i8 %127, metadata !2530, metadata !DIExpression()), !dbg !2594
  call void @llvm.dbg.value(metadata i8 %127, metadata !2530, metadata !DIExpression()), !dbg !2594
  call void @llvm.dbg.value(metadata i8 %128, metadata !2531, metadata !DIExpression()), !dbg !2595
  call void @llvm.dbg.value(metadata i8 %128, metadata !2531, metadata !DIExpression()), !dbg !2595
  call void @llvm.dbg.value(metadata i64 %129, metadata !2513, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i64 %129, metadata !2513, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i64 %123, metadata !2522, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i64 %123, metadata !2522, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i64 %124, metadata !2523, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.value(metadata i64 %124, metadata !2523, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.value(metadata i64 %618, metadata !2515, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i64 %618, metadata !2515, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i8 %126, metadata !2529, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i8 %126, metadata !2529, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i8 %127, metadata !2530, metadata !DIExpression()), !dbg !2594
  call void @llvm.dbg.value(metadata i8 %127, metadata !2530, metadata !DIExpression()), !dbg !2594
  call void @llvm.dbg.value(metadata i8 %128, metadata !2531, metadata !DIExpression()), !dbg !2595
  call void @llvm.dbg.value(metadata i8 %128, metadata !2531, metadata !DIExpression()), !dbg !2595
  call void @llvm.dbg.value(metadata i64 %129, metadata !2513, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i64 %129, metadata !2513, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i64 %123, metadata !2522, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i64 %123, metadata !2522, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i64 %124, metadata !2523, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.value(metadata i64 %124, metadata !2523, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.value(metadata i64 %125, metadata !2515, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i64 %125, metadata !2515, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i8 %126, metadata !2529, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i8 %126, metadata !2529, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i8 %127, metadata !2530, metadata !DIExpression()), !dbg !2594
  call void @llvm.dbg.value(metadata i8 %127, metadata !2530, metadata !DIExpression()), !dbg !2594
  call void @llvm.dbg.value(metadata i8 %128, metadata !2531, metadata !DIExpression()), !dbg !2595
  call void @llvm.dbg.value(metadata i8 %128, metadata !2531, metadata !DIExpression()), !dbg !2595
  call void @llvm.dbg.value(metadata i64 %129, metadata !2513, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i64 %129, metadata !2513, metadata !DIExpression()), !dbg !2577
  %619 = icmp eq i64 %123, 0, !dbg !3015
  %620 = and i1 %114, %619, !dbg !3017
  %621 = xor i1 %620, true, !dbg !3017
  %622 = or i1 %110, %621, !dbg !3017
  br i1 %622, label %623, label %661, !dbg !3017

; <label>:623:                                    ; preds = %617
  %624 = and i1 %114, %110, !dbg !3018
  %625 = xor i1 %624, true, !dbg !3018
  %626 = and i8 %127, 1, !dbg !3020
  %627 = icmp eq i8 %626, 0, !dbg !3020
  %628 = or i1 %627, %625, !dbg !3018
  br i1 %628, label %638, label %629, !dbg !3018

; <label>:629:                                    ; preds = %623
  %630 = and i8 %128, 1, !dbg !3021
  %631 = icmp eq i8 %630, 0, !dbg !3021
  br i1 %631, label %634, label %632, !dbg !3024

; <label>:632:                                    ; preds = %629
  call void @llvm.dbg.value(metadata i64 %618, metadata !2515, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i8* %95, metadata !2519, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.value(metadata i8* %96, metadata !2520, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i64 %124, metadata !2523, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.value(metadata i64 %618, metadata !2515, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i8* %95, metadata !2519, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.value(metadata i8* %96, metadata !2520, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i64 %124, metadata !2523, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.value(metadata i64 %618, metadata !2515, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i8* %95, metadata !2519, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.value(metadata i8* %96, metadata !2520, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i64 %124, metadata !2523, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.value(metadata i64 %618, metadata !2515, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i8* %95, metadata !2519, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.value(metadata i8* %96, metadata !2520, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i64 %124, metadata !2523, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.value(metadata i8* %95, metadata !2519, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.value(metadata i8* %96, metadata !2520, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i64 %124, metadata !2523, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.value(metadata i64 %618, metadata !2515, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i8* %95, metadata !2519, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.value(metadata i8* %96, metadata !2520, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i64 %124, metadata !2523, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.value(metadata i64 %125, metadata !2515, metadata !DIExpression()), !dbg !2579
  %633 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %618, i32 5, i32 %5, i32* %6, i8* %95, i8* %96), !dbg !3025
  br label %671, !dbg !3026

; <label>:634:                                    ; preds = %629
  %635 = icmp eq i64 %129, 0, !dbg !3027
  %636 = icmp ne i64 %124, 0, !dbg !3029
  %637 = and i1 %636, %635, !dbg !3030
  br i1 %637, label %27, label %638, !dbg !3030

; <label>:638:                                    ; preds = %623, %634
  call void @llvm.dbg.value(metadata i8* %98, metadata !2524, metadata !DIExpression()), !dbg !2587
  call void @llvm.dbg.value(metadata i8* %98, metadata !2524, metadata !DIExpression()), !dbg !2587
  call void @llvm.dbg.value(metadata i64 %123, metadata !2522, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i64 %123, metadata !2522, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i64 %129, metadata !2513, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i64 %129, metadata !2513, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i8* %98, metadata !2524, metadata !DIExpression()), !dbg !2587
  call void @llvm.dbg.value(metadata i8* %98, metadata !2524, metadata !DIExpression()), !dbg !2587
  call void @llvm.dbg.value(metadata i64 %123, metadata !2522, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i64 %123, metadata !2522, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i64 %129, metadata !2513, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i64 %129, metadata !2513, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i8* %98, metadata !2524, metadata !DIExpression()), !dbg !2587
  call void @llvm.dbg.value(metadata i8* %98, metadata !2524, metadata !DIExpression()), !dbg !2587
  call void @llvm.dbg.value(metadata i64 %123, metadata !2522, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i64 %123, metadata !2522, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i64 %129, metadata !2513, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i64 %129, metadata !2513, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i8* %98, metadata !2524, metadata !DIExpression()), !dbg !2587
  call void @llvm.dbg.value(metadata i8* %98, metadata !2524, metadata !DIExpression()), !dbg !2587
  call void @llvm.dbg.value(metadata i64 %123, metadata !2522, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i64 %123, metadata !2522, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i64 %129, metadata !2513, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i64 %129, metadata !2513, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i8* %98, metadata !2524, metadata !DIExpression()), !dbg !2587
  call void @llvm.dbg.value(metadata i8* %98, metadata !2524, metadata !DIExpression()), !dbg !2587
  call void @llvm.dbg.value(metadata i64 %123, metadata !2522, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i64 %123, metadata !2522, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i64 %129, metadata !2513, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i64 %129, metadata !2513, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i8* %98, metadata !2524, metadata !DIExpression()), !dbg !2587
  call void @llvm.dbg.value(metadata i8* %98, metadata !2524, metadata !DIExpression()), !dbg !2587
  call void @llvm.dbg.value(metadata i64 %123, metadata !2522, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i64 %123, metadata !2522, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i64 %129, metadata !2513, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i64 %129, metadata !2513, metadata !DIExpression()), !dbg !2577
  %639 = icmp ne i8* %98, null, !dbg !3031
  %640 = and i1 %639, %110, !dbg !3033
  br i1 %640, label %641, label %656, !dbg !3033

; <label>:641:                                    ; preds = %638
  call void @llvm.dbg.value(metadata i8* %98, metadata !2524, metadata !DIExpression()), !dbg !2587
  call void @llvm.dbg.value(metadata i64 %123, metadata !2522, metadata !DIExpression()), !dbg !2585
  %642 = load i8, i8* %98, align 1, !dbg !3034, !tbaa !838
  %643 = icmp eq i8 %642, 0, !dbg !3037
  br i1 %643, label %656, label %644, !dbg !3037

; <label>:644:                                    ; preds = %641, %651
  %645 = phi i8 [ %654, %651 ], [ %642, %641 ]
  %646 = phi i8* [ %653, %651 ], [ %98, %641 ]
  %647 = phi i64 [ %652, %651 ], [ %123, %641 ]
  call void @llvm.dbg.value(metadata i8* %646, metadata !2524, metadata !DIExpression()), !dbg !2587
  call void @llvm.dbg.value(metadata i64 %647, metadata !2522, metadata !DIExpression()), !dbg !2585
  %648 = icmp ult i64 %647, %129, !dbg !3038
  br i1 %648, label %649, label %651, !dbg !3041

; <label>:649:                                    ; preds = %644
  %650 = getelementptr inbounds i8, i8* %0, i64 %647, !dbg !3038
  store i8 %645, i8* %650, align 1, !dbg !3038, !tbaa !838
  br label %651, !dbg !3038

; <label>:651:                                    ; preds = %649, %644
  %652 = add i64 %647, 1, !dbg !3041
  %653 = getelementptr inbounds i8, i8* %646, i64 1, !dbg !3042
  call void @llvm.dbg.value(metadata i8* %653, metadata !2524, metadata !DIExpression()), !dbg !2587
  call void @llvm.dbg.value(metadata i64 %652, metadata !2522, metadata !DIExpression()), !dbg !2585
  %654 = load i8, i8* %653, align 1, !dbg !3034, !tbaa !838
  %655 = icmp eq i8 %654, 0, !dbg !3037
  br i1 %655, label %656, label %644, !dbg !3037, !llvm.loop !3043

; <label>:656:                                    ; preds = %651, %641, %638
  %657 = phi i64 [ %123, %638 ], [ %123, %641 ], [ %652, %651 ], !dbg !2585
  call void @llvm.dbg.value(metadata i64 %657, metadata !2522, metadata !DIExpression()), !dbg !2585
  %658 = icmp ult i64 %657, %129, !dbg !3045
  br i1 %658, label %659, label %671, !dbg !3047

; <label>:659:                                    ; preds = %656
  %660 = getelementptr inbounds i8, i8* %0, i64 %657, !dbg !3048
  store i8 0, i8* %660, align 1, !dbg !3049, !tbaa !838
  br label %671, !dbg !3048

; <label>:661:                                    ; preds = %617, %524, %274, %271, %253, %251, %223, %209, %159, %146, %377, %358
  %662 = phi i32 [ 2, %358 ], [ %94, %377 ], [ %94, %146 ], [ %94, %159 ], [ 2, %209 ], [ 5, %223 ], [ 2, %251 ], [ 2, %253 ], [ 2, %271 ], [ 2, %274 ], [ %94, %524 ], [ %94, %617 ]
  %663 = phi i64 [ %311, %358 ], [ %360, %377 ], [ %144, %146 ], [ %154, %159 ], [ %154, %209 ], [ %154, %223 ], [ %154, %251 ], [ %154, %253 ], [ %154, %271 ], [ %154, %274 ], [ %528, %524 ], [ %618, %617 ]
  %664 = phi i64 [ %129, %358 ], [ %129, %377 ], [ %129, %146 ], [ %129, %159 ], [ %129, %209 ], [ %129, %223 ], [ %129, %251 ], [ %129, %253 ], [ %129, %271 ], [ %129, %274 ], [ %533, %524 ], [ %129, %617 ]
  call void @llvm.dbg.value(metadata i64 %664, metadata !2513, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i64 %663, metadata !2515, metadata !DIExpression()), !dbg !2579
  %665 = icmp ne i32 %662, 2, !dbg !3050
  %666 = icmp eq i8 %102, 0, !dbg !3052
  %667 = or i1 %665, %666, !dbg !3053
  call void @llvm.dbg.value(metadata i32 4, metadata !2516, metadata !DIExpression()), !dbg !2580
  %668 = select i1 %667, i32 %662, i32 4, !dbg !3053
  call void @llvm.dbg.value(metadata i32 %668, metadata !2516, metadata !DIExpression()), !dbg !2580
  %669 = and i32 %5, -3, !dbg !3054
  %670 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %664, i8* %2, i64 %663, i32 %668, i32 %669, i32* null, i8* %95, i8* %96), !dbg !3055
  br label %671, !dbg !3056

; <label>:671:                                    ; preds = %656, %659, %661, %632
  %672 = phi i64 [ %670, %661 ], [ %633, %632 ], [ %657, %659 ], [ %657, %656 ]
  ret i64 %672, !dbg !3057
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #7 !dbg !3058 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3062, metadata !DIExpression()), !dbg !3066
  call void @llvm.dbg.value(metadata i32 %1, metadata !3063, metadata !DIExpression()), !dbg !3067
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #12, !dbg !3068
  call void @llvm.dbg.value(metadata i8* %3, metadata !3064, metadata !DIExpression()), !dbg !3069
  %4 = icmp eq i8* %3, %0, !dbg !3070
  br i1 %4, label %5, label %71, !dbg !3072

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #12, !dbg !3073
  call void @llvm.dbg.value(metadata i8* %6, metadata !3065, metadata !DIExpression()), !dbg !3074
  call void @llvm.dbg.value(metadata i8* %6, metadata !3075, metadata !DIExpression()), !dbg !3091
  call void @llvm.dbg.value(metadata i8* null, metadata !3081, metadata !DIExpression()), !dbg !3094
  call void @llvm.dbg.value(metadata i8 85, metadata !3082, metadata !DIExpression()), !dbg !3095
  call void @llvm.dbg.value(metadata i8 84, metadata !3083, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata i8 70, metadata !3084, metadata !DIExpression()), !dbg !3097
  call void @llvm.dbg.value(metadata i8 45, metadata !3085, metadata !DIExpression()), !dbg !3098
  call void @llvm.dbg.value(metadata i8 56, metadata !3086, metadata !DIExpression()), !dbg !3099
  call void @llvm.dbg.value(metadata i8 0, metadata !3087, metadata !DIExpression()), !dbg !3100
  call void @llvm.dbg.value(metadata i8 0, metadata !3088, metadata !DIExpression()), !dbg !3101
  call void @llvm.dbg.value(metadata i8 0, metadata !3089, metadata !DIExpression()), !dbg !3102
  call void @llvm.dbg.value(metadata i8 0, metadata !3090, metadata !DIExpression()), !dbg !3103
  %7 = load i8, i8* %6, align 1, !dbg !3104, !tbaa !838
  %8 = and i8 %7, -33, !dbg !3104
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !3104

; <label>:9:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !3106, metadata !DIExpression()), !dbg !3120
  call void @llvm.dbg.value(metadata i8* null, metadata !3111, metadata !DIExpression()), !dbg !3124
  call void @llvm.dbg.value(metadata i8 84, metadata !3112, metadata !DIExpression()), !dbg !3125
  call void @llvm.dbg.value(metadata i8 70, metadata !3113, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.value(metadata i8 45, metadata !3114, metadata !DIExpression()), !dbg !3127
  call void @llvm.dbg.value(metadata i8 56, metadata !3115, metadata !DIExpression()), !dbg !3128
  call void @llvm.dbg.value(metadata i8 0, metadata !3116, metadata !DIExpression()), !dbg !3129
  call void @llvm.dbg.value(metadata i8 0, metadata !3117, metadata !DIExpression()), !dbg !3130
  call void @llvm.dbg.value(metadata i8 0, metadata !3118, metadata !DIExpression()), !dbg !3131
  call void @llvm.dbg.value(metadata i8 0, metadata !3119, metadata !DIExpression()), !dbg !3132
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !3133
  %11 = load i8, i8* %10, align 1, !dbg !3133, !tbaa !838
  %12 = and i8 %11, -33, !dbg !3133
  %13 = icmp eq i8 %12, 84, !dbg !3133
  br i1 %13, label %14, label %68, !dbg !3133

; <label>:14:                                     ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !3135, metadata !DIExpression()), !dbg !3148
  call void @llvm.dbg.value(metadata i8* null, metadata !3140, metadata !DIExpression()), !dbg !3152
  call void @llvm.dbg.value(metadata i8 70, metadata !3141, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i8 45, metadata !3142, metadata !DIExpression()), !dbg !3154
  call void @llvm.dbg.value(metadata i8 56, metadata !3143, metadata !DIExpression()), !dbg !3155
  call void @llvm.dbg.value(metadata i8 0, metadata !3144, metadata !DIExpression()), !dbg !3156
  call void @llvm.dbg.value(metadata i8 0, metadata !3145, metadata !DIExpression()), !dbg !3157
  call void @llvm.dbg.value(metadata i8 0, metadata !3146, metadata !DIExpression()), !dbg !3158
  call void @llvm.dbg.value(metadata i8 0, metadata !3147, metadata !DIExpression()), !dbg !3159
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !3160
  %16 = load i8, i8* %15, align 1, !dbg !3160, !tbaa !838
  %17 = and i8 %16, -33, !dbg !3160
  %18 = icmp eq i8 %17, 70, !dbg !3160
  br i1 %18, label %19, label %68, !dbg !3160

; <label>:19:                                     ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !3162, metadata !DIExpression()), !dbg !3174
  call void @llvm.dbg.value(metadata i8* null, metadata !3167, metadata !DIExpression()), !dbg !3178
  call void @llvm.dbg.value(metadata i8 45, metadata !3168, metadata !DIExpression()), !dbg !3179
  call void @llvm.dbg.value(metadata i8 56, metadata !3169, metadata !DIExpression()), !dbg !3180
  call void @llvm.dbg.value(metadata i8 0, metadata !3170, metadata !DIExpression()), !dbg !3181
  call void @llvm.dbg.value(metadata i8 0, metadata !3171, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata i8 0, metadata !3172, metadata !DIExpression()), !dbg !3183
  call void @llvm.dbg.value(metadata i8 0, metadata !3173, metadata !DIExpression()), !dbg !3184
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !3185
  %21 = load i8, i8* %20, align 1, !dbg !3185, !tbaa !838
  %22 = icmp eq i8 %21, 45, !dbg !3185
  br i1 %22, label %23, label %68, !dbg !3187

; <label>:23:                                     ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !3188, metadata !DIExpression()), !dbg !3199
  call void @llvm.dbg.value(metadata i8* null, metadata !3193, metadata !DIExpression()), !dbg !3203
  call void @llvm.dbg.value(metadata i8 56, metadata !3194, metadata !DIExpression()), !dbg !3204
  call void @llvm.dbg.value(metadata i8 0, metadata !3195, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i8 0, metadata !3196, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i8 0, metadata !3197, metadata !DIExpression()), !dbg !3207
  call void @llvm.dbg.value(metadata i8 0, metadata !3198, metadata !DIExpression()), !dbg !3208
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !3209
  %25 = load i8, i8* %24, align 1, !dbg !3209, !tbaa !838
  %26 = icmp eq i8 %25, 56, !dbg !3209
  br i1 %26, label %27, label %68, !dbg !3211

; <label>:27:                                     ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !3212, metadata !DIExpression()), !dbg !3222
  call void @llvm.dbg.value(metadata i8* null, metadata !3217, metadata !DIExpression()), !dbg !3226
  call void @llvm.dbg.value(metadata i8 0, metadata !3218, metadata !DIExpression()), !dbg !3227
  call void @llvm.dbg.value(metadata i8 0, metadata !3219, metadata !DIExpression()), !dbg !3228
  call void @llvm.dbg.value(metadata i8 0, metadata !3220, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i8 0, metadata !3221, metadata !DIExpression()), !dbg !3230
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !3231
  %29 = load i8, i8* %28, align 1, !dbg !3231, !tbaa !838
  %30 = icmp eq i8 %29, 0, !dbg !3231
  br i1 %30, label %31, label %68, !dbg !3233

; <label>:31:                                     ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !3234, !tbaa !838
  %33 = icmp eq i8 %32, 96, !dbg !3235
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.108, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.109, i64 0, i64 0), !dbg !3234
  br label %71, !dbg !3236

; <label>:35:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !3106, metadata !DIExpression()), !dbg !3237
  call void @llvm.dbg.value(metadata i8* null, metadata !3111, metadata !DIExpression()), !dbg !3241
  call void @llvm.dbg.value(metadata i8 66, metadata !3112, metadata !DIExpression()), !dbg !3242
  call void @llvm.dbg.value(metadata i8 49, metadata !3113, metadata !DIExpression()), !dbg !3243
  call void @llvm.dbg.value(metadata i8 56, metadata !3114, metadata !DIExpression()), !dbg !3244
  call void @llvm.dbg.value(metadata i8 48, metadata !3115, metadata !DIExpression()), !dbg !3245
  call void @llvm.dbg.value(metadata i8 51, metadata !3116, metadata !DIExpression()), !dbg !3246
  call void @llvm.dbg.value(metadata i8 48, metadata !3117, metadata !DIExpression()), !dbg !3247
  call void @llvm.dbg.value(metadata i8 0, metadata !3118, metadata !DIExpression()), !dbg !3248
  call void @llvm.dbg.value(metadata i8 0, metadata !3119, metadata !DIExpression()), !dbg !3249
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !3250
  %37 = load i8, i8* %36, align 1, !dbg !3250, !tbaa !838
  %38 = and i8 %37, -33, !dbg !3250
  %39 = icmp eq i8 %38, 66, !dbg !3250
  br i1 %39, label %40, label %68, !dbg !3250

; <label>:40:                                     ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !3135, metadata !DIExpression()), !dbg !3251
  call void @llvm.dbg.value(metadata i8* null, metadata !3140, metadata !DIExpression()), !dbg !3253
  call void @llvm.dbg.value(metadata i8 49, metadata !3141, metadata !DIExpression()), !dbg !3254
  call void @llvm.dbg.value(metadata i8 56, metadata !3142, metadata !DIExpression()), !dbg !3255
  call void @llvm.dbg.value(metadata i8 48, metadata !3143, metadata !DIExpression()), !dbg !3256
  call void @llvm.dbg.value(metadata i8 51, metadata !3144, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata i8 48, metadata !3145, metadata !DIExpression()), !dbg !3258
  call void @llvm.dbg.value(metadata i8 0, metadata !3146, metadata !DIExpression()), !dbg !3259
  call void @llvm.dbg.value(metadata i8 0, metadata !3147, metadata !DIExpression()), !dbg !3260
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !3261
  %42 = load i8, i8* %41, align 1, !dbg !3261, !tbaa !838
  %43 = icmp eq i8 %42, 49, !dbg !3261
  br i1 %43, label %44, label %68, !dbg !3262

; <label>:44:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !3162, metadata !DIExpression()), !dbg !3263
  call void @llvm.dbg.value(metadata i8* null, metadata !3167, metadata !DIExpression()), !dbg !3265
  call void @llvm.dbg.value(metadata i8 56, metadata !3168, metadata !DIExpression()), !dbg !3266
  call void @llvm.dbg.value(metadata i8 48, metadata !3169, metadata !DIExpression()), !dbg !3267
  call void @llvm.dbg.value(metadata i8 51, metadata !3170, metadata !DIExpression()), !dbg !3268
  call void @llvm.dbg.value(metadata i8 48, metadata !3171, metadata !DIExpression()), !dbg !3269
  call void @llvm.dbg.value(metadata i8 0, metadata !3172, metadata !DIExpression()), !dbg !3270
  call void @llvm.dbg.value(metadata i8 0, metadata !3173, metadata !DIExpression()), !dbg !3271
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !3272
  %46 = load i8, i8* %45, align 1, !dbg !3272, !tbaa !838
  %47 = icmp eq i8 %46, 56, !dbg !3272
  br i1 %47, label %48, label %68, !dbg !3273

; <label>:48:                                     ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !3188, metadata !DIExpression()), !dbg !3274
  call void @llvm.dbg.value(metadata i8* null, metadata !3193, metadata !DIExpression()), !dbg !3276
  call void @llvm.dbg.value(metadata i8 48, metadata !3194, metadata !DIExpression()), !dbg !3277
  call void @llvm.dbg.value(metadata i8 51, metadata !3195, metadata !DIExpression()), !dbg !3278
  call void @llvm.dbg.value(metadata i8 48, metadata !3196, metadata !DIExpression()), !dbg !3279
  call void @llvm.dbg.value(metadata i8 0, metadata !3197, metadata !DIExpression()), !dbg !3280
  call void @llvm.dbg.value(metadata i8 0, metadata !3198, metadata !DIExpression()), !dbg !3281
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !3282
  %50 = load i8, i8* %49, align 1, !dbg !3282, !tbaa !838
  %51 = icmp eq i8 %50, 48, !dbg !3282
  br i1 %51, label %52, label %68, !dbg !3283

; <label>:52:                                     ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !3212, metadata !DIExpression()), !dbg !3284
  call void @llvm.dbg.value(metadata i8* null, metadata !3217, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata i8 51, metadata !3218, metadata !DIExpression()), !dbg !3287
  call void @llvm.dbg.value(metadata i8 48, metadata !3219, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata i8 0, metadata !3220, metadata !DIExpression()), !dbg !3289
  call void @llvm.dbg.value(metadata i8 0, metadata !3221, metadata !DIExpression()), !dbg !3290
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !3291
  %54 = load i8, i8* %53, align 1, !dbg !3291, !tbaa !838
  %55 = icmp eq i8 %54, 51, !dbg !3291
  br i1 %55, label %56, label %68, !dbg !3292

; <label>:56:                                     ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !3293, metadata !DIExpression()), !dbg !3302
  call void @llvm.dbg.value(metadata i8* null, metadata !3298, metadata !DIExpression()), !dbg !3306
  call void @llvm.dbg.value(metadata i8 48, metadata !3299, metadata !DIExpression()), !dbg !3307
  call void @llvm.dbg.value(metadata i8 0, metadata !3300, metadata !DIExpression()), !dbg !3308
  call void @llvm.dbg.value(metadata i8 0, metadata !3301, metadata !DIExpression()), !dbg !3309
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !3310
  %58 = load i8, i8* %57, align 1, !dbg !3310, !tbaa !838
  %59 = icmp eq i8 %58, 48, !dbg !3310
  br i1 %59, label %60, label %68, !dbg !3312

; <label>:60:                                     ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !3313, metadata !DIExpression()), !dbg !3321
  call void @llvm.dbg.value(metadata i8* null, metadata !3318, metadata !DIExpression()), !dbg !3325
  call void @llvm.dbg.value(metadata i8 0, metadata !3319, metadata !DIExpression()), !dbg !3326
  call void @llvm.dbg.value(metadata i8 0, metadata !3320, metadata !DIExpression()), !dbg !3327
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !3328
  %62 = load i8, i8* %61, align 1, !dbg !3328, !tbaa !838
  %63 = icmp eq i8 %62, 0, !dbg !3328
  br i1 %63, label %64, label %68, !dbg !3330

; <label>:64:                                     ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !3331, !tbaa !838
  %66 = icmp eq i8 %65, 96, !dbg !3332
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.110, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.111, i64 0, i64 0), !dbg !3331
  br label %71, !dbg !3333

; <label>:68:                                     ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !3334
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.107, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.106, i64 0, i64 0), !dbg !3335
  br label %71, !dbg !3336

; <label>:71:                                     ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !3337
  ret i8* %72, !dbg !3338
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #7 !dbg !3339 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3343, metadata !DIExpression()), !dbg !3346
  call void @llvm.dbg.value(metadata i64 %1, metadata !3344, metadata !DIExpression()), !dbg !3347
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3345, metadata !DIExpression()), !dbg !3348
  call void @llvm.dbg.value(metadata i8* %0, metadata !3349, metadata !DIExpression()) #12, !dbg !3362
  call void @llvm.dbg.value(metadata i64 %1, metadata !3354, metadata !DIExpression()) #12, !dbg !3364
  call void @llvm.dbg.value(metadata i64* null, metadata !3355, metadata !DIExpression()) #12, !dbg !3365
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3356, metadata !DIExpression()) #12, !dbg !3366
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !3367
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !3367
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3357, metadata !DIExpression()) #12, !dbg !3368
  %6 = tail call i32* @__errno_location() #17, !dbg !3369
  %7 = load i32, i32* %6, align 4, !dbg !3369, !tbaa !930
  call void @llvm.dbg.value(metadata i32 %7, metadata !3358, metadata !DIExpression()) #12, !dbg !3370
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3371
  %9 = load i32, i32* %8, align 4, !dbg !3371, !tbaa !2445
  %10 = or i32 %9, 1, !dbg !3372
  call void @llvm.dbg.value(metadata i32 %10, metadata !3359, metadata !DIExpression()) #12, !dbg !3373
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3374
  %12 = load i32, i32* %11, align 8, !dbg !3374, !tbaa !2386
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !3375
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3376
  %15 = load i8*, i8** %14, align 8, !dbg !3376, !tbaa !2471
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3377
  %17 = load i8*, i8** %16, align 8, !dbg !3377, !tbaa !2474
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #12, !dbg !3378
  %19 = add i64 %18, 1, !dbg !3379
  call void @llvm.dbg.value(metadata i64 %19, metadata !3360, metadata !DIExpression()) #12, !dbg !3380
  call void @llvm.dbg.value(metadata i64 %19, metadata !3381, metadata !DIExpression()) #12, !dbg !3386
  %20 = tail call noalias i8* @xmalloc(i64 %19) #12, !dbg !3388
  call void @llvm.dbg.value(metadata i8* %20, metadata !3361, metadata !DIExpression()) #12, !dbg !3389
  %21 = load i32, i32* %11, align 8, !dbg !3390, !tbaa !2386
  %22 = load i8*, i8** %14, align 8, !dbg !3391, !tbaa !2471
  %23 = load i8*, i8** %16, align 8, !dbg !3392, !tbaa !2474
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #12, !dbg !3393
  store i32 %7, i32* %6, align 4, !dbg !3394, !tbaa !930
  ret i8* %20, !dbg !3395
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #7 !dbg !3350 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3349, metadata !DIExpression()), !dbg !3396
  call void @llvm.dbg.value(metadata i64 %1, metadata !3354, metadata !DIExpression()), !dbg !3397
  call void @llvm.dbg.value(metadata i64* %2, metadata !3355, metadata !DIExpression()), !dbg !3398
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3356, metadata !DIExpression()), !dbg !3399
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !3400
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !3400
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3357, metadata !DIExpression()), !dbg !3401
  %7 = tail call i32* @__errno_location() #17, !dbg !3402
  %8 = load i32, i32* %7, align 4, !dbg !3402, !tbaa !930
  call void @llvm.dbg.value(metadata i32 %8, metadata !3358, metadata !DIExpression()), !dbg !3403
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3404
  %10 = load i32, i32* %9, align 4, !dbg !3404, !tbaa !2445
  %11 = icmp ne i64* %2, null, !dbg !3405
  %12 = xor i1 %11, true, !dbg !3405
  %13 = zext i1 %12 to i32, !dbg !3405
  %14 = or i32 %10, %13, !dbg !3406
  call void @llvm.dbg.value(metadata i32 %14, metadata !3359, metadata !DIExpression()), !dbg !3407
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3408
  %16 = load i32, i32* %15, align 8, !dbg !3408, !tbaa !2386
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !3409
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3410
  %19 = load i8*, i8** %18, align 8, !dbg !3410, !tbaa !2471
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3411
  %21 = load i8*, i8** %20, align 8, !dbg !3411, !tbaa !2474
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !3412
  %23 = add i64 %22, 1, !dbg !3413
  call void @llvm.dbg.value(metadata i64 %23, metadata !3360, metadata !DIExpression()), !dbg !3414
  call void @llvm.dbg.value(metadata i64 %23, metadata !3381, metadata !DIExpression()) #12, !dbg !3415
  %24 = tail call noalias i8* @xmalloc(i64 %23) #12, !dbg !3417
  call void @llvm.dbg.value(metadata i8* %24, metadata !3361, metadata !DIExpression()), !dbg !3418
  %25 = load i32, i32* %15, align 8, !dbg !3419, !tbaa !2386
  %26 = load i8*, i8** %18, align 8, !dbg !3420, !tbaa !2471
  %27 = load i8*, i8** %20, align 8, !dbg !3421, !tbaa !2474
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !3422
  store i32 %8, i32* %7, align 4, !dbg !3423, !tbaa !930
  br i1 %11, label %29, label %30, !dbg !3424

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !3425, !tbaa !881
  br label %30, !dbg !3427

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !3428
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #7 !dbg !3429 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3433, !tbaa !770
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !3431, metadata !DIExpression()), !dbg !3434
  call void @llvm.dbg.value(metadata i32 1, metadata !3432, metadata !DIExpression()), !dbg !3435
  %2 = load i32, i32* @nslots, align 4, !dbg !3436, !tbaa !930
  %3 = icmp sgt i32 %2, 1, !dbg !3439
  br i1 %3, label %4, label %12, !dbg !3440

; <label>:4:                                      ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !3432, metadata !DIExpression()), !dbg !3435
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !3441
  %7 = load i8*, i8** %6, align 8, !dbg !3441, !tbaa !3442
  tail call void @free(i8* %7) #12, !dbg !3444
  %8 = add nuw nsw i64 %5, 1, !dbg !3445
  call void @llvm.dbg.value(metadata i32 undef, metadata !3432, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3435
  %9 = load i32, i32* @nslots, align 4, !dbg !3436, !tbaa !930
  %10 = sext i32 %9 to i64, !dbg !3439
  %11 = icmp slt i64 %8, %10, !dbg !3439
  br i1 %11, label %4, label %12, !dbg !3440, !llvm.loop !3446

; <label>:12:                                     ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !3448
  %14 = load i8*, i8** %13, align 8, !dbg !3448, !tbaa !3442
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3450
  br i1 %15, label %17, label %16, !dbg !3451

; <label>:16:                                     ; preds = %12
  tail call void @free(i8* %14) #12, !dbg !3452
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !3454, !tbaa !3455
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !3456, !tbaa !3442
  br label %17, !dbg !3457

; <label>:17:                                     ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !3458
  br i1 %18, label %21, label %19, !dbg !3460

; <label>:19:                                     ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !3461
  tail call void @free(i8* %20) #12, !dbg !3463
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !3464, !tbaa !770
  br label %21, !dbg !3465

; <label>:21:                                     ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !3466, !tbaa !930
  ret void, !dbg !3467
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32, i8*) local_unnamed_addr #7 !dbg !3468 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3472, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.value(metadata i8* %1, metadata !3473, metadata !DIExpression()), !dbg !3475
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3476
  ret i8* %3, !dbg !3477
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #7 !dbg !3478 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3482, metadata !DIExpression()), !dbg !3497
  call void @llvm.dbg.value(metadata i8* %1, metadata !3483, metadata !DIExpression()), !dbg !3498
  call void @llvm.dbg.value(metadata i64 %2, metadata !3484, metadata !DIExpression()), !dbg !3499
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3485, metadata !DIExpression()), !dbg !3500
  %5 = tail call i32* @__errno_location() #17, !dbg !3501
  %6 = load i32, i32* %5, align 4, !dbg !3501, !tbaa !930
  call void @llvm.dbg.value(metadata i32 %6, metadata !3486, metadata !DIExpression()), !dbg !3502
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3503, !tbaa !770
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !3487, metadata !DIExpression()), !dbg !3504
  %8 = icmp slt i32 %0, 0, !dbg !3505
  br i1 %8, label %9, label %10, !dbg !3507

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !3508
  unreachable, !dbg !3508

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !3509, !tbaa !930
  %12 = icmp sgt i32 %11, %0, !dbg !3510
  br i1 %12, label %34, label %13, !dbg !3511

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !3512
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !3491, metadata !DIExpression()), !dbg !3513
  %15 = icmp eq i32 %0, 2147483647, !dbg !3514
  br i1 %15, label %16, label %17, !dbg !3516

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3517
  unreachable, !dbg !3517

; <label>:17:                                     ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !3518
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !3518
  %20 = add nsw i32 %0, 1, !dbg !3519
  %21 = sext i32 %20 to i64, !dbg !3520
  %22 = shl nsw i64 %21, 4, !dbg !3521
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #12, !dbg !3522
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !3522
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !3487, metadata !DIExpression()), !dbg !3504
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !3523, !tbaa !770
  br i1 %14, label %25, label %26, !dbg !3524

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !3525, !tbaa.struct !3527
  br label %26, !dbg !3528

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !3529, !tbaa !930
  %28 = sext i32 %27 to i64, !dbg !3530
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !3530
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !3531
  %31 = sub nsw i32 %20, %27, !dbg !3532
  %32 = sext i32 %31 to i64, !dbg !3533
  %33 = shl nsw i64 %32, 4, !dbg !3534
  tail call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 %33, i1 false), !dbg !3531
  store i32 %20, i32* @nslots, align 4, !dbg !3535, !tbaa !930
  br label %34, !dbg !3536

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !3537
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !3487, metadata !DIExpression()), !dbg !3504
  %36 = sext i32 %0 to i64, !dbg !3538
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !3539
  %38 = load i64, i64* %37, align 8, !dbg !3539, !tbaa !3455
  call void @llvm.dbg.value(metadata i64 %38, metadata !3492, metadata !DIExpression()), !dbg !3540
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !3541
  %40 = load i8*, i8** %39, align 8, !dbg !3541, !tbaa !3442
  call void @llvm.dbg.value(metadata i8* %40, metadata !3494, metadata !DIExpression()), !dbg !3542
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !3543
  %42 = load i32, i32* %41, align 4, !dbg !3543, !tbaa !2445
  %43 = or i32 %42, 1, !dbg !3544
  call void @llvm.dbg.value(metadata i32 %43, metadata !3495, metadata !DIExpression()), !dbg !3545
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3546
  %45 = load i32, i32* %44, align 8, !dbg !3546, !tbaa !2386
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3547
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3548
  %48 = load i8*, i8** %47, align 8, !dbg !3548, !tbaa !2471
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3549
  %50 = load i8*, i8** %49, align 8, !dbg !3549, !tbaa !2474
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !3550
  call void @llvm.dbg.value(metadata i64 %51, metadata !3496, metadata !DIExpression()), !dbg !3551
  %52 = icmp ugt i64 %38, %51, !dbg !3552
  br i1 %52, label %63, label %53, !dbg !3554

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !3555
  call void @llvm.dbg.value(metadata i64 %54, metadata !3492, metadata !DIExpression()), !dbg !3540
  store i64 %54, i64* %37, align 8, !dbg !3557, !tbaa !3455
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3558
  br i1 %55, label %57, label %56, !dbg !3560

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #12, !dbg !3561
  br label %57, !dbg !3561

; <label>:57:                                     ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !3381, metadata !DIExpression()) #12, !dbg !3562
  %58 = tail call noalias i8* @xmalloc(i64 %54) #12, !dbg !3564
  call void @llvm.dbg.value(metadata i8* %58, metadata !3494, metadata !DIExpression()), !dbg !3542
  store i8* %58, i8** %39, align 8, !dbg !3565, !tbaa !3442
  %59 = load i32, i32* %44, align 8, !dbg !3566, !tbaa !2386
  %60 = load i8*, i8** %47, align 8, !dbg !3567, !tbaa !2471
  %61 = load i8*, i8** %49, align 8, !dbg !3568, !tbaa !2474
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !3569
  br label %63, !dbg !3570

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !3571
  call void @llvm.dbg.value(metadata i8* %64, metadata !3494, metadata !DIExpression()), !dbg !3542
  store i32 %6, i32* %5, align 4, !dbg !3572, !tbaa !930
  ret i8* %64, !dbg !3573
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !3574 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3578, metadata !DIExpression()), !dbg !3581
  call void @llvm.dbg.value(metadata i8* %1, metadata !3579, metadata !DIExpression()), !dbg !3582
  call void @llvm.dbg.value(metadata i64 %2, metadata !3580, metadata !DIExpression()), !dbg !3583
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !3584
  ret i8* %4, !dbg !3585
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8*) local_unnamed_addr #7 !dbg !3586 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3590, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.value(metadata i32 0, metadata !3472, metadata !DIExpression()) #12, !dbg !3592
  call void @llvm.dbg.value(metadata i8* %0, metadata !3473, metadata !DIExpression()) #12, !dbg !3594
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #12, !dbg !3595
  ret i8* %2, !dbg !3596
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8*, i64) local_unnamed_addr #7 !dbg !3597 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3601, metadata !DIExpression()), !dbg !3603
  call void @llvm.dbg.value(metadata i64 %1, metadata !3602, metadata !DIExpression()), !dbg !3604
  call void @llvm.dbg.value(metadata i32 0, metadata !3578, metadata !DIExpression()) #12, !dbg !3605
  call void @llvm.dbg.value(metadata i8* %0, metadata !3579, metadata !DIExpression()) #12, !dbg !3607
  call void @llvm.dbg.value(metadata i64 %1, metadata !3580, metadata !DIExpression()) #12, !dbg !3608
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #12, !dbg !3609
  ret i8* %3, !dbg !3610
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #7 !dbg !3611 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3615, metadata !DIExpression()), !dbg !3619
  call void @llvm.dbg.value(metadata i32 %1, metadata !3616, metadata !DIExpression()), !dbg !3620
  call void @llvm.dbg.value(metadata i8* %2, metadata !3617, metadata !DIExpression()), !dbg !3621
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3622
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !3622
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3618, metadata !DIExpression(DW_OP_deref)), !dbg !3623
  call void @llvm.dbg.value(metadata i32 %1, metadata !3624, metadata !DIExpression()) #12, !dbg !3630
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #12, !dbg !3632, !alias.scope !3633
  %6 = icmp eq i32 %1, 10, !dbg !3636
  br i1 %6, label %7, label %8, !dbg !3638

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !3639, !noalias !3633
  unreachable, !dbg !3639

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3640
  store i32 %1, i32* %9, align 8, !dbg !3641, !tbaa !2386, !alias.scope !3633
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3618, metadata !DIExpression(DW_OP_deref)), !dbg !3623
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3629, metadata !DIExpression(DW_OP_deref)), !dbg !3632
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3642
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !3643
  ret i8* %10, !dbg !3644
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #7 !dbg !3645 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3649, metadata !DIExpression()), !dbg !3654
  call void @llvm.dbg.value(metadata i32 %1, metadata !3650, metadata !DIExpression()), !dbg !3655
  call void @llvm.dbg.value(metadata i8* %2, metadata !3651, metadata !DIExpression()), !dbg !3656
  call void @llvm.dbg.value(metadata i64 %3, metadata !3652, metadata !DIExpression()), !dbg !3657
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3658
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3658
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3653, metadata !DIExpression(DW_OP_deref)), !dbg !3659
  call void @llvm.dbg.value(metadata i32 %1, metadata !3624, metadata !DIExpression()) #12, !dbg !3660
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %6, i8 0, i64 56, i1 false) #12, !dbg !3662, !alias.scope !3663
  %7 = icmp eq i32 %1, 10, !dbg !3666
  br i1 %7, label %8, label %9, !dbg !3667

; <label>:8:                                      ; preds = %4
  tail call void @abort() #15, !dbg !3668, !noalias !3663
  unreachable, !dbg !3668

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3669
  store i32 %1, i32* %10, align 8, !dbg !3670, !tbaa !2386, !alias.scope !3663
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3653, metadata !DIExpression(DW_OP_deref)), !dbg !3659
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3629, metadata !DIExpression(DW_OP_deref)), !dbg !3662
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !3671
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3672
  ret i8* %11, !dbg !3673
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32, i8*) local_unnamed_addr #7 !dbg !3674 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3678, metadata !DIExpression()), !dbg !3680
  call void @llvm.dbg.value(metadata i8* %1, metadata !3679, metadata !DIExpression()), !dbg !3681
  call void @llvm.dbg.value(metadata i32 0, metadata !3615, metadata !DIExpression()) #12, !dbg !3682
  call void @llvm.dbg.value(metadata i32 %0, metadata !3616, metadata !DIExpression()) #12, !dbg !3684
  call void @llvm.dbg.value(metadata i8* %1, metadata !3617, metadata !DIExpression()) #12, !dbg !3685
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3686
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #12, !dbg !3686
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3618, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3687
  call void @llvm.dbg.value(metadata i32 %0, metadata !3624, metadata !DIExpression()) #12, !dbg !3688
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %4, i8 0, i64 56, i1 false) #12, !dbg !3690, !alias.scope !3691
  %5 = icmp eq i32 %0, 10, !dbg !3694
  br i1 %5, label %6, label %7, !dbg !3695

; <label>:6:                                      ; preds = %2
  tail call void @abort() #15, !dbg !3696, !noalias !3691
  unreachable, !dbg !3696

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3697
  store i32 %0, i32* %8, align 8, !dbg !3698, !tbaa !2386, !alias.scope !3691
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3618, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3687
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3629, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3690
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #12, !dbg !3699
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #12, !dbg !3700
  ret i8* %9, !dbg !3701
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !3702 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3706, metadata !DIExpression()), !dbg !3709
  call void @llvm.dbg.value(metadata i8* %1, metadata !3707, metadata !DIExpression()), !dbg !3710
  call void @llvm.dbg.value(metadata i64 %2, metadata !3708, metadata !DIExpression()), !dbg !3711
  call void @llvm.dbg.value(metadata i32 0, metadata !3649, metadata !DIExpression()) #12, !dbg !3712
  call void @llvm.dbg.value(metadata i32 %0, metadata !3650, metadata !DIExpression()) #12, !dbg !3714
  call void @llvm.dbg.value(metadata i8* %1, metadata !3651, metadata !DIExpression()) #12, !dbg !3715
  call void @llvm.dbg.value(metadata i64 %2, metadata !3652, metadata !DIExpression()) #12, !dbg !3716
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3717
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !3717
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3653, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3718
  call void @llvm.dbg.value(metadata i32 %0, metadata !3624, metadata !DIExpression()) #12, !dbg !3719
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #12, !dbg !3721, !alias.scope !3722
  %6 = icmp eq i32 %0, 10, !dbg !3725
  br i1 %6, label %7, label %8, !dbg !3726

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !3727, !noalias !3722
  unreachable, !dbg !3727

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3728
  store i32 %0, i32* %9, align 8, !dbg !3729, !tbaa !2386, !alias.scope !3722
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3653, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3718
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3629, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3721
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #12, !dbg !3730
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !3731
  ret i8* %10, !dbg !3732
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #7 !dbg !3733 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3737, metadata !DIExpression()), !dbg !3741
  call void @llvm.dbg.value(metadata i64 %1, metadata !3738, metadata !DIExpression()), !dbg !3742
  call void @llvm.dbg.value(metadata i8 %2, metadata !3739, metadata !DIExpression()), !dbg !3743
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3744
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !3744
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3745, !tbaa.struct !3746
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3740, metadata !DIExpression(DW_OP_deref)), !dbg !3747
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2405, metadata !DIExpression()), !dbg !3748
  call void @llvm.dbg.value(metadata i8 %2, metadata !2406, metadata !DIExpression()), !dbg !3750
  call void @llvm.dbg.value(metadata i32 1, metadata !2407, metadata !DIExpression()), !dbg !3751
  call void @llvm.dbg.value(metadata i8 %2, metadata !2408, metadata !DIExpression()), !dbg !3752
  %6 = lshr i8 %2, 5, !dbg !3753
  %7 = zext i8 %6 to i64, !dbg !3753
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3754
  call void @llvm.dbg.value(metadata i32* %8, metadata !2409, metadata !DIExpression()), !dbg !3755
  %9 = and i8 %2, 31, !dbg !3756
  %10 = zext i8 %9 to i32, !dbg !3756
  call void @llvm.dbg.value(metadata i32 %10, metadata !2411, metadata !DIExpression()), !dbg !3757
  %11 = load i32, i32* %8, align 4, !dbg !3758, !tbaa !930
  %12 = lshr i32 %11, %10, !dbg !3759
  %13 = and i32 %12, 1, !dbg !3760
  call void @llvm.dbg.value(metadata i32 %13, metadata !2412, metadata !DIExpression()), !dbg !3761
  %14 = xor i32 %13, 1, !dbg !3762
  %15 = shl i32 %14, %10, !dbg !3763
  %16 = xor i32 %15, %11, !dbg !3764
  store i32 %16, i32* %8, align 4, !dbg !3764, !tbaa !930
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3740, metadata !DIExpression(DW_OP_deref)), !dbg !3747
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !3765
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !3766
  ret i8* %17, !dbg !3767
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #7 !dbg !3768 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3772, metadata !DIExpression()), !dbg !3774
  call void @llvm.dbg.value(metadata i8 %1, metadata !3773, metadata !DIExpression()), !dbg !3775
  call void @llvm.dbg.value(metadata i8* %0, metadata !3737, metadata !DIExpression()) #12, !dbg !3776
  call void @llvm.dbg.value(metadata i64 -1, metadata !3738, metadata !DIExpression()) #12, !dbg !3778
  call void @llvm.dbg.value(metadata i8 %1, metadata !3739, metadata !DIExpression()) #12, !dbg !3779
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3780
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #12, !dbg !3780
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !3781, !tbaa.struct !3746
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3740, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3782
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2405, metadata !DIExpression()) #12, !dbg !3783
  call void @llvm.dbg.value(metadata i8 %1, metadata !2406, metadata !DIExpression()) #12, !dbg !3785
  call void @llvm.dbg.value(metadata i32 1, metadata !2407, metadata !DIExpression()) #12, !dbg !3786
  call void @llvm.dbg.value(metadata i8 %1, metadata !2408, metadata !DIExpression()) #12, !dbg !3787
  %5 = lshr i8 %1, 5, !dbg !3788
  %6 = zext i8 %5 to i64, !dbg !3788
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3789
  call void @llvm.dbg.value(metadata i32* %7, metadata !2409, metadata !DIExpression()) #12, !dbg !3790
  %8 = and i8 %1, 31, !dbg !3791
  %9 = zext i8 %8 to i32, !dbg !3791
  call void @llvm.dbg.value(metadata i32 %9, metadata !2411, metadata !DIExpression()) #12, !dbg !3792
  %10 = load i32, i32* %7, align 4, !dbg !3793, !tbaa !930
  %11 = lshr i32 %10, %9, !dbg !3794
  %12 = and i32 %11, 1, !dbg !3795
  call void @llvm.dbg.value(metadata i32 %12, metadata !2412, metadata !DIExpression()) #12, !dbg !3796
  %13 = xor i32 %12, 1, !dbg !3797
  %14 = shl i32 %13, %9, !dbg !3798
  %15 = xor i32 %14, %10, !dbg !3799
  store i32 %15, i32* %7, align 4, !dbg !3799, !tbaa !930
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3740, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3782
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #12, !dbg !3800
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #12, !dbg !3801
  ret i8* %16, !dbg !3802
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8*) local_unnamed_addr #7 !dbg !3803 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3805, metadata !DIExpression()), !dbg !3806
  call void @llvm.dbg.value(metadata i8* %0, metadata !3772, metadata !DIExpression()) #12, !dbg !3807
  call void @llvm.dbg.value(metadata i8 58, metadata !3773, metadata !DIExpression()) #12, !dbg !3809
  call void @llvm.dbg.value(metadata i8* %0, metadata !3737, metadata !DIExpression()) #12, !dbg !3810
  call void @llvm.dbg.value(metadata i64 -1, metadata !3738, metadata !DIExpression()) #12, !dbg !3812
  call void @llvm.dbg.value(metadata i8 58, metadata !3739, metadata !DIExpression()) #12, !dbg !3813
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3814
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #12, !dbg !3814
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !3815, !tbaa.struct !3746
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3740, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3816
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2405, metadata !DIExpression()) #12, !dbg !3817
  call void @llvm.dbg.value(metadata i8 58, metadata !2406, metadata !DIExpression()) #12, !dbg !3819
  call void @llvm.dbg.value(metadata i32 1, metadata !2407, metadata !DIExpression()) #12, !dbg !3820
  call void @llvm.dbg.value(metadata i8 58, metadata !2408, metadata !DIExpression()) #12, !dbg !3821
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3822
  call void @llvm.dbg.value(metadata i32* %4, metadata !2409, metadata !DIExpression()) #12, !dbg !3823
  call void @llvm.dbg.value(metadata i32 26, metadata !2411, metadata !DIExpression()) #12, !dbg !3824
  %5 = load i32, i32* %4, align 4, !dbg !3825, !tbaa !930
  %6 = or i32 %5, 67108864, !dbg !3826
  store i32 %6, i32* %4, align 4, !dbg !3826, !tbaa !930
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3740, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3816
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #12, !dbg !3827
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #12, !dbg !3828
  ret i8* %7, !dbg !3829
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #7 !dbg !3830 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3832, metadata !DIExpression()), !dbg !3834
  call void @llvm.dbg.value(metadata i64 %1, metadata !3833, metadata !DIExpression()), !dbg !3835
  call void @llvm.dbg.value(metadata i8* %0, metadata !3737, metadata !DIExpression()) #12, !dbg !3836
  call void @llvm.dbg.value(metadata i64 %1, metadata !3738, metadata !DIExpression()) #12, !dbg !3838
  call void @llvm.dbg.value(metadata i8 58, metadata !3739, metadata !DIExpression()) #12, !dbg !3839
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3840
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #12, !dbg !3840
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !3841, !tbaa.struct !3746
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3740, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3842
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2405, metadata !DIExpression()) #12, !dbg !3843
  call void @llvm.dbg.value(metadata i8 58, metadata !2406, metadata !DIExpression()) #12, !dbg !3845
  call void @llvm.dbg.value(metadata i32 1, metadata !2407, metadata !DIExpression()) #12, !dbg !3846
  call void @llvm.dbg.value(metadata i8 58, metadata !2408, metadata !DIExpression()) #12, !dbg !3847
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3848
  call void @llvm.dbg.value(metadata i32* %5, metadata !2409, metadata !DIExpression()) #12, !dbg !3849
  call void @llvm.dbg.value(metadata i32 26, metadata !2411, metadata !DIExpression()) #12, !dbg !3850
  %6 = load i32, i32* %5, align 4, !dbg !3851, !tbaa !930
  %7 = or i32 %6, 67108864, !dbg !3852
  store i32 %7, i32* %5, align 4, !dbg !3852, !tbaa !930
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3740, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3842
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #12, !dbg !3853
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #12, !dbg !3854
  ret i8* %8, !dbg !3855
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #7 !dbg !3856 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !3629, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3862
  call void @llvm.dbg.value(metadata i32 %0, metadata !3858, metadata !DIExpression()), !dbg !3864
  call void @llvm.dbg.value(metadata i32 %1, metadata !3859, metadata !DIExpression()), !dbg !3865
  call void @llvm.dbg.value(metadata i8* %2, metadata !3860, metadata !DIExpression()), !dbg !3866
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3867
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3867
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !3868
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !3868
  call void @llvm.dbg.value(metadata i32 %1, metadata !3624, metadata !DIExpression()) #12, !dbg !3869
  call void @llvm.dbg.value(metadata i32 0, metadata !3629, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3862
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 %7, i8 0, i64 52, i1 false), !dbg !3862, !alias.scope !3870
  %8 = icmp eq i32 %1, 10, !dbg !3873
  br i1 %8, label %9, label %10, !dbg !3874

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !3875, !noalias !3870
  unreachable, !dbg !3875

; <label>:10:                                     ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3629, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3862
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3868
  store i32 %1, i32* %11, align 8, !dbg !3868
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3868
  %13 = bitcast i32* %12 to i8*, !dbg !3868
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %13, i8* nonnull align 4 %7, i64 52, i1 false), !dbg !3868
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !3868
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3861, metadata !DIExpression(DW_OP_deref)), !dbg !3876
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2405, metadata !DIExpression()), !dbg !3877
  call void @llvm.dbg.value(metadata i8 58, metadata !2406, metadata !DIExpression()), !dbg !3879
  call void @llvm.dbg.value(metadata i32 1, metadata !2407, metadata !DIExpression()), !dbg !3880
  call void @llvm.dbg.value(metadata i8 58, metadata !2408, metadata !DIExpression()), !dbg !3881
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3882
  call void @llvm.dbg.value(metadata i32* %14, metadata !2409, metadata !DIExpression()), !dbg !3883
  call void @llvm.dbg.value(metadata i32 26, metadata !2411, metadata !DIExpression()), !dbg !3884
  %15 = load i32, i32* %14, align 4, !dbg !3885, !tbaa !930
  %16 = or i32 %15, 67108864, !dbg !3886
  store i32 %16, i32* %14, align 4, !dbg !3886, !tbaa !930
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3861, metadata !DIExpression(DW_OP_deref)), !dbg !3876
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !3887
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3888
  ret i8* %17, !dbg !3889
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #7 !dbg !3890 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3894, metadata !DIExpression()), !dbg !3898
  call void @llvm.dbg.value(metadata i8* %1, metadata !3895, metadata !DIExpression()), !dbg !3899
  call void @llvm.dbg.value(metadata i8* %2, metadata !3896, metadata !DIExpression()), !dbg !3900
  call void @llvm.dbg.value(metadata i8* %3, metadata !3897, metadata !DIExpression()), !dbg !3901
  call void @llvm.dbg.value(metadata i32 %0, metadata !3902, metadata !DIExpression()) #12, !dbg !3912
  call void @llvm.dbg.value(metadata i8* %1, metadata !3907, metadata !DIExpression()) #12, !dbg !3914
  call void @llvm.dbg.value(metadata i8* %2, metadata !3908, metadata !DIExpression()) #12, !dbg !3915
  call void @llvm.dbg.value(metadata i8* %3, metadata !3909, metadata !DIExpression()) #12, !dbg !3916
  call void @llvm.dbg.value(metadata i64 -1, metadata !3910, metadata !DIExpression()) #12, !dbg !3917
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3918
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3918
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !3919, !tbaa.struct !3746
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3911, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3920
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2453, metadata !DIExpression()) #12, !dbg !3921
  call void @llvm.dbg.value(metadata i8* %1, metadata !2454, metadata !DIExpression()) #12, !dbg !3923
  call void @llvm.dbg.value(metadata i8* %2, metadata !2455, metadata !DIExpression()) #12, !dbg !3924
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2453, metadata !DIExpression()) #12, !dbg !3921
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3925
  store i32 10, i32* %7, align 8, !dbg !3926, !tbaa !2386
  %8 = icmp ne i8* %1, null, !dbg !3927
  %9 = icmp ne i8* %2, null, !dbg !3928
  %10 = and i1 %8, %9, !dbg !3929
  br i1 %10, label %12, label %11, !dbg !3929

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !3930
  unreachable, !dbg !3930

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3931
  store i8* %1, i8** %13, align 8, !dbg !3932, !tbaa !2471
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3933
  store i8* %2, i8** %14, align 8, !dbg !3934, !tbaa !2474
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3911, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3920
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #12, !dbg !3935
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !3936
  ret i8* %15, !dbg !3937
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !3903 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3902, metadata !DIExpression()), !dbg !3938
  call void @llvm.dbg.value(metadata i8* %1, metadata !3907, metadata !DIExpression()), !dbg !3939
  call void @llvm.dbg.value(metadata i8* %2, metadata !3908, metadata !DIExpression()), !dbg !3940
  call void @llvm.dbg.value(metadata i8* %3, metadata !3909, metadata !DIExpression()), !dbg !3941
  call void @llvm.dbg.value(metadata i64 %4, metadata !3910, metadata !DIExpression()), !dbg !3942
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3943
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #12, !dbg !3943
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %7, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3944, !tbaa.struct !3746
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3911, metadata !DIExpression(DW_OP_deref)), !dbg !3945
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2453, metadata !DIExpression()) #12, !dbg !3946
  call void @llvm.dbg.value(metadata i8* %1, metadata !2454, metadata !DIExpression()) #12, !dbg !3948
  call void @llvm.dbg.value(metadata i8* %2, metadata !2455, metadata !DIExpression()) #12, !dbg !3949
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2453, metadata !DIExpression()) #12, !dbg !3946
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3950
  store i32 10, i32* %8, align 8, !dbg !3951, !tbaa !2386
  %9 = icmp ne i8* %1, null, !dbg !3952
  %10 = icmp ne i8* %2, null, !dbg !3953
  %11 = and i1 %9, %10, !dbg !3954
  br i1 %11, label %13, label %12, !dbg !3954

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !3955
  unreachable, !dbg !3955

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3956
  store i8* %1, i8** %14, align 8, !dbg !3957, !tbaa !2471
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3958
  store i8* %2, i8** %15, align 8, !dbg !3959, !tbaa !2474
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3911, metadata !DIExpression(DW_OP_deref)), !dbg !3945
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !3960
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #12, !dbg !3961
  ret i8* %16, !dbg !3962
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #7 !dbg !3963 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3967, metadata !DIExpression()), !dbg !3970
  call void @llvm.dbg.value(metadata i8* %1, metadata !3968, metadata !DIExpression()), !dbg !3971
  call void @llvm.dbg.value(metadata i8* %2, metadata !3969, metadata !DIExpression()), !dbg !3972
  call void @llvm.dbg.value(metadata i32 0, metadata !3894, metadata !DIExpression()) #12, !dbg !3973
  call void @llvm.dbg.value(metadata i8* %0, metadata !3895, metadata !DIExpression()) #12, !dbg !3975
  call void @llvm.dbg.value(metadata i8* %1, metadata !3896, metadata !DIExpression()) #12, !dbg !3976
  call void @llvm.dbg.value(metadata i8* %2, metadata !3897, metadata !DIExpression()) #12, !dbg !3977
  call void @llvm.dbg.value(metadata i32 0, metadata !3902, metadata !DIExpression()) #12, !dbg !3978
  call void @llvm.dbg.value(metadata i8* %0, metadata !3907, metadata !DIExpression()) #12, !dbg !3980
  call void @llvm.dbg.value(metadata i8* %1, metadata !3908, metadata !DIExpression()) #12, !dbg !3981
  call void @llvm.dbg.value(metadata i8* %2, metadata !3909, metadata !DIExpression()) #12, !dbg !3982
  call void @llvm.dbg.value(metadata i64 -1, metadata !3910, metadata !DIExpression()) #12, !dbg !3983
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3984
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #12, !dbg !3984
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !3985, !tbaa.struct !3746
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3911, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3986
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2453, metadata !DIExpression()) #12, !dbg !3987
  call void @llvm.dbg.value(metadata i8* %0, metadata !2454, metadata !DIExpression()) #12, !dbg !3989
  call void @llvm.dbg.value(metadata i8* %1, metadata !2455, metadata !DIExpression()) #12, !dbg !3990
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2453, metadata !DIExpression()) #12, !dbg !3987
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3991
  store i32 10, i32* %6, align 8, !dbg !3992, !tbaa !2386
  %7 = icmp ne i8* %0, null, !dbg !3993
  %8 = icmp ne i8* %1, null, !dbg !3994
  %9 = and i1 %7, %8, !dbg !3995
  br i1 %9, label %11, label %10, !dbg !3995

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !3996
  unreachable, !dbg !3996

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3997
  store i8* %0, i8** %12, align 8, !dbg !3998, !tbaa !2471
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3999
  store i8* %1, i8** %13, align 8, !dbg !4000, !tbaa !2474
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !3911, metadata !DIExpression(DW_OP_deref)) #12, !dbg !3986
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #12, !dbg !4001
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #12, !dbg !4002
  ret i8* %14, !dbg !4003
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !4004 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !4008, metadata !DIExpression()), !dbg !4012
  call void @llvm.dbg.value(metadata i8* %1, metadata !4009, metadata !DIExpression()), !dbg !4013
  call void @llvm.dbg.value(metadata i8* %2, metadata !4010, metadata !DIExpression()), !dbg !4014
  call void @llvm.dbg.value(metadata i64 %3, metadata !4011, metadata !DIExpression()), !dbg !4015
  call void @llvm.dbg.value(metadata i32 0, metadata !3902, metadata !DIExpression()) #12, !dbg !4016
  call void @llvm.dbg.value(metadata i8* %0, metadata !3907, metadata !DIExpression()) #12, !dbg !4018
  call void @llvm.dbg.value(metadata i8* %1, metadata !3908, metadata !DIExpression()) #12, !dbg !4019
  call void @llvm.dbg.value(metadata i8* %2, metadata !3909, metadata !DIExpression()) #12, !dbg !4020
  call void @llvm.dbg.value(metadata i64 %3, metadata !3910, metadata !DIExpression()) #12, !dbg !4021
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !4022
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #12, !dbg !4022
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #12, !dbg !4023, !tbaa.struct !3746
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3911, metadata !DIExpression(DW_OP_deref)) #12, !dbg !4024
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2453, metadata !DIExpression()) #12, !dbg !4025
  call void @llvm.dbg.value(metadata i8* %0, metadata !2454, metadata !DIExpression()) #12, !dbg !4027
  call void @llvm.dbg.value(metadata i8* %1, metadata !2455, metadata !DIExpression()) #12, !dbg !4028
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2453, metadata !DIExpression()) #12, !dbg !4025
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !4029
  store i32 10, i32* %7, align 8, !dbg !4030, !tbaa !2386
  %8 = icmp ne i8* %0, null, !dbg !4031
  %9 = icmp ne i8* %1, null, !dbg !4032
  %10 = and i1 %8, %9, !dbg !4033
  br i1 %10, label %12, label %11, !dbg !4033

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !4034
  unreachable, !dbg !4034

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !4035
  store i8* %0, i8** %13, align 8, !dbg !4036, !tbaa !2471
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !4037
  store i8* %1, i8** %14, align 8, !dbg !4038, !tbaa !2474
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3911, metadata !DIExpression(DW_OP_deref)) #12, !dbg !4024
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #12, !dbg !4039
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #12, !dbg !4040
  ret i8* %15, !dbg !4041
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !4042 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4046, metadata !DIExpression()), !dbg !4049
  call void @llvm.dbg.value(metadata i8* %1, metadata !4047, metadata !DIExpression()), !dbg !4050
  call void @llvm.dbg.value(metadata i64 %2, metadata !4048, metadata !DIExpression()), !dbg !4051
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !4052
  ret i8* %4, !dbg !4053
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8*, i64) local_unnamed_addr #7 !dbg !4054 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4058, metadata !DIExpression()), !dbg !4060
  call void @llvm.dbg.value(metadata i64 %1, metadata !4059, metadata !DIExpression()), !dbg !4061
  call void @llvm.dbg.value(metadata i32 0, metadata !4046, metadata !DIExpression()) #12, !dbg !4062
  call void @llvm.dbg.value(metadata i8* %0, metadata !4047, metadata !DIExpression()) #12, !dbg !4064
  call void @llvm.dbg.value(metadata i64 %1, metadata !4048, metadata !DIExpression()) #12, !dbg !4065
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !4066
  ret i8* %3, !dbg !4067
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32, i8*) local_unnamed_addr #7 !dbg !4068 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4072, metadata !DIExpression()), !dbg !4074
  call void @llvm.dbg.value(metadata i8* %1, metadata !4073, metadata !DIExpression()), !dbg !4075
  call void @llvm.dbg.value(metadata i32 %0, metadata !4046, metadata !DIExpression()) #12, !dbg !4076
  call void @llvm.dbg.value(metadata i8* %1, metadata !4047, metadata !DIExpression()) #12, !dbg !4078
  call void @llvm.dbg.value(metadata i64 -1, metadata !4048, metadata !DIExpression()) #12, !dbg !4079
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !4080
  ret i8* %3, !dbg !4081
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8*) local_unnamed_addr #7 !dbg !4082 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4086, metadata !DIExpression()), !dbg !4087
  call void @llvm.dbg.value(metadata i32 0, metadata !4072, metadata !DIExpression()) #12, !dbg !4088
  call void @llvm.dbg.value(metadata i8* %0, metadata !4073, metadata !DIExpression()) #12, !dbg !4090
  call void @llvm.dbg.value(metadata i32 0, metadata !4046, metadata !DIExpression()) #12, !dbg !4091
  call void @llvm.dbg.value(metadata i8* %0, metadata !4047, metadata !DIExpression()) #12, !dbg !4093
  call void @llvm.dbg.value(metadata i64 -1, metadata !4048, metadata !DIExpression()) #12, !dbg !4094
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #12, !dbg !4095
  ret i8* %2, !dbg !4096
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #7 !dbg !4097 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4136, metadata !DIExpression()), !dbg !4142
  call void @llvm.dbg.value(metadata i8* %1, metadata !4137, metadata !DIExpression()), !dbg !4143
  call void @llvm.dbg.value(metadata i8* %2, metadata !4138, metadata !DIExpression()), !dbg !4144
  call void @llvm.dbg.value(metadata i8* %3, metadata !4139, metadata !DIExpression()), !dbg !4145
  call void @llvm.dbg.value(metadata i8** %4, metadata !4140, metadata !DIExpression()), !dbg !4146
  call void @llvm.dbg.value(metadata i64 %5, metadata !4141, metadata !DIExpression()), !dbg !4147
  %7 = icmp eq i8* %1, null, !dbg !4148
  br i1 %7, label %10, label %8, !dbg !4150

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.118, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #12, !dbg !4151
  br label %12, !dbg !4151

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.119, i64 0, i64 0), i8* %2, i8* %3) #12, !dbg !4152
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.120, i64 0, i64 0), i32 5) #12, !dbg !4153
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2018) #12, !dbg !4153
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([204 x i8], [204 x i8]* @.str.3.121, i64 0, i64 0), i32 5) #12, !dbg !4154
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0), !dbg !4154
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
  ], !dbg !4155

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !4156
  unreachable, !dbg !4156

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.122, i64 0, i64 0), i32 5) #12, !dbg !4158
  %20 = load i8*, i8** %4, align 8, !dbg !4158, !tbaa !770
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #12, !dbg !4158
  br label %146, !dbg !4159

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.123, i64 0, i64 0), i32 5) #12, !dbg !4160
  %24 = load i8*, i8** %4, align 8, !dbg !4160, !tbaa !770
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4160
  %26 = load i8*, i8** %25, align 8, !dbg !4160, !tbaa !770
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #12, !dbg !4160
  br label %146, !dbg !4161

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.124, i64 0, i64 0), i32 5) #12, !dbg !4162
  %30 = load i8*, i8** %4, align 8, !dbg !4162, !tbaa !770
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4162
  %32 = load i8*, i8** %31, align 8, !dbg !4162, !tbaa !770
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4162
  %34 = load i8*, i8** %33, align 8, !dbg !4162, !tbaa !770
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #12, !dbg !4162
  br label %146, !dbg !4163

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.125, i64 0, i64 0), i32 5) #12, !dbg !4164
  %38 = load i8*, i8** %4, align 8, !dbg !4164, !tbaa !770
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4164
  %40 = load i8*, i8** %39, align 8, !dbg !4164, !tbaa !770
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4164
  %42 = load i8*, i8** %41, align 8, !dbg !4164, !tbaa !770
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4164
  %44 = load i8*, i8** %43, align 8, !dbg !4164, !tbaa !770
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #12, !dbg !4164
  br label %146, !dbg !4165

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.126, i64 0, i64 0), i32 5) #12, !dbg !4166
  %48 = load i8*, i8** %4, align 8, !dbg !4166, !tbaa !770
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4166
  %50 = load i8*, i8** %49, align 8, !dbg !4166, !tbaa !770
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4166
  %52 = load i8*, i8** %51, align 8, !dbg !4166, !tbaa !770
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4166
  %54 = load i8*, i8** %53, align 8, !dbg !4166, !tbaa !770
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4166
  %56 = load i8*, i8** %55, align 8, !dbg !4166, !tbaa !770
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #12, !dbg !4166
  br label %146, !dbg !4167

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.127, i64 0, i64 0), i32 5) #12, !dbg !4168
  %60 = load i8*, i8** %4, align 8, !dbg !4168, !tbaa !770
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4168
  %62 = load i8*, i8** %61, align 8, !dbg !4168, !tbaa !770
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4168
  %64 = load i8*, i8** %63, align 8, !dbg !4168, !tbaa !770
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4168
  %66 = load i8*, i8** %65, align 8, !dbg !4168, !tbaa !770
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4168
  %68 = load i8*, i8** %67, align 8, !dbg !4168, !tbaa !770
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4168
  %70 = load i8*, i8** %69, align 8, !dbg !4168, !tbaa !770
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #12, !dbg !4168
  br label %146, !dbg !4169

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.128, i64 0, i64 0), i32 5) #12, !dbg !4170
  %74 = load i8*, i8** %4, align 8, !dbg !4170, !tbaa !770
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4170
  %76 = load i8*, i8** %75, align 8, !dbg !4170, !tbaa !770
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4170
  %78 = load i8*, i8** %77, align 8, !dbg !4170, !tbaa !770
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4170
  %80 = load i8*, i8** %79, align 8, !dbg !4170, !tbaa !770
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4170
  %82 = load i8*, i8** %81, align 8, !dbg !4170, !tbaa !770
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4170
  %84 = load i8*, i8** %83, align 8, !dbg !4170, !tbaa !770
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4170
  %86 = load i8*, i8** %85, align 8, !dbg !4170, !tbaa !770
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #12, !dbg !4170
  br label %146, !dbg !4171

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.129, i64 0, i64 0), i32 5) #12, !dbg !4172
  %90 = load i8*, i8** %4, align 8, !dbg !4172, !tbaa !770
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4172
  %92 = load i8*, i8** %91, align 8, !dbg !4172, !tbaa !770
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4172
  %94 = load i8*, i8** %93, align 8, !dbg !4172, !tbaa !770
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4172
  %96 = load i8*, i8** %95, align 8, !dbg !4172, !tbaa !770
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4172
  %98 = load i8*, i8** %97, align 8, !dbg !4172, !tbaa !770
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4172
  %100 = load i8*, i8** %99, align 8, !dbg !4172, !tbaa !770
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4172
  %102 = load i8*, i8** %101, align 8, !dbg !4172, !tbaa !770
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4172
  %104 = load i8*, i8** %103, align 8, !dbg !4172, !tbaa !770
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #12, !dbg !4172
  br label %146, !dbg !4173

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.130, i64 0, i64 0), i32 5) #12, !dbg !4174
  %108 = load i8*, i8** %4, align 8, !dbg !4174, !tbaa !770
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4174
  %110 = load i8*, i8** %109, align 8, !dbg !4174, !tbaa !770
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4174
  %112 = load i8*, i8** %111, align 8, !dbg !4174, !tbaa !770
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4174
  %114 = load i8*, i8** %113, align 8, !dbg !4174, !tbaa !770
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4174
  %116 = load i8*, i8** %115, align 8, !dbg !4174, !tbaa !770
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4174
  %118 = load i8*, i8** %117, align 8, !dbg !4174, !tbaa !770
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4174
  %120 = load i8*, i8** %119, align 8, !dbg !4174, !tbaa !770
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4174
  %122 = load i8*, i8** %121, align 8, !dbg !4174, !tbaa !770
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !4174
  %124 = load i8*, i8** %123, align 8, !dbg !4174, !tbaa !770
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #12, !dbg !4174
  br label %146, !dbg !4175

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.131, i64 0, i64 0), i32 5) #12, !dbg !4176
  %128 = load i8*, i8** %4, align 8, !dbg !4176, !tbaa !770
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !4176
  %130 = load i8*, i8** %129, align 8, !dbg !4176, !tbaa !770
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !4176
  %132 = load i8*, i8** %131, align 8, !dbg !4176, !tbaa !770
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !4176
  %134 = load i8*, i8** %133, align 8, !dbg !4176, !tbaa !770
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !4176
  %136 = load i8*, i8** %135, align 8, !dbg !4176, !tbaa !770
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !4176
  %138 = load i8*, i8** %137, align 8, !dbg !4176, !tbaa !770
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !4176
  %140 = load i8*, i8** %139, align 8, !dbg !4176, !tbaa !770
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !4176
  %142 = load i8*, i8** %141, align 8, !dbg !4176, !tbaa !770
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !4176
  %144 = load i8*, i8** %143, align 8, !dbg !4176, !tbaa !770
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #12, !dbg !4176
  br label %146, !dbg !4177

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !4178
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #7 !dbg !4179 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4183, metadata !DIExpression()), !dbg !4189
  call void @llvm.dbg.value(metadata i8* %1, metadata !4184, metadata !DIExpression()), !dbg !4190
  call void @llvm.dbg.value(metadata i8* %2, metadata !4185, metadata !DIExpression()), !dbg !4191
  call void @llvm.dbg.value(metadata i8* %3, metadata !4186, metadata !DIExpression()), !dbg !4192
  call void @llvm.dbg.value(metadata i8** %4, metadata !4187, metadata !DIExpression()), !dbg !4193
  call void @llvm.dbg.value(metadata i64 0, metadata !4188, metadata !DIExpression()), !dbg !4194
  br label %6, !dbg !4195

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !4197
  call void @llvm.dbg.value(metadata i64 %7, metadata !4188, metadata !DIExpression()), !dbg !4194
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !4199
  %9 = load i8*, i8** %8, align 8, !dbg !4199, !tbaa !770
  %10 = icmp eq i8* %9, null, !dbg !4200
  %11 = add i64 %7, 1, !dbg !4201
  call void @llvm.dbg.value(metadata i64 %11, metadata !4188, metadata !DIExpression()), !dbg !4194
  br i1 %10, label %12, label %6, !dbg !4200, !llvm.loop !4202

; <label>:12:                                     ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !4188, metadata !DIExpression()), !dbg !4194
  call void @llvm.dbg.value(metadata i64 %7, metadata !4188, metadata !DIExpression()), !dbg !4194
  call void @llvm.dbg.value(metadata i64 %7, metadata !4188, metadata !DIExpression()), !dbg !4194
  call void @llvm.dbg.value(metadata i64 %7, metadata !4188, metadata !DIExpression()), !dbg !4194
  call void @llvm.dbg.value(metadata i64 %7, metadata !4188, metadata !DIExpression()), !dbg !4194
  call void @llvm.dbg.value(metadata i64 %7, metadata !4188, metadata !DIExpression()), !dbg !4194
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !4204
  ret void, !dbg !4205
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #7 !dbg !4206 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4217, metadata !DIExpression()), !dbg !4225
  call void @llvm.dbg.value(metadata i8* %1, metadata !4218, metadata !DIExpression()), !dbg !4226
  call void @llvm.dbg.value(metadata i8* %2, metadata !4219, metadata !DIExpression()), !dbg !4227
  call void @llvm.dbg.value(metadata i8* %3, metadata !4220, metadata !DIExpression()), !dbg !4228
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !4221, metadata !DIExpression()), !dbg !4229
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !4230
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #12, !dbg !4230
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !4223, metadata !DIExpression()), !dbg !4231
  call void @llvm.dbg.value(metadata i64 0, metadata !4222, metadata !DIExpression()), !dbg !4232
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  call void @llvm.dbg.value(metadata i64 0, metadata !4222, metadata !DIExpression()), !dbg !4232
  %11 = load i32, i32* %8, align 8, !dbg !4233
  %12 = icmp ult i32 %11, 41, !dbg !4233
  br i1 %12, label %13, label %18, !dbg !4233

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !4233
  %15 = sext i32 %11 to i64, !dbg !4233
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !4233
  %17 = add i32 %11, 8, !dbg !4233
  store i32 %17, i32* %8, align 8, !dbg !4233
  br label %21, !dbg !4233

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !4233
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !4233
  store i8* %20, i8** %10, align 8, !dbg !4233
  br label %21, !dbg !4233

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !4233
  %25 = load i8*, i8** %24, align 8, !dbg !4233
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !4236
  store i8* %25, i8** %26, align 16, !dbg !4237, !tbaa !770
  %27 = icmp eq i8* %25, null, !dbg !4238
  br i1 %27, label %30, label %28, !dbg !4239

; <label>:28:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !4222, metadata !DIExpression()), !dbg !4232
  call void @llvm.dbg.value(metadata i64 1, metadata !4222, metadata !DIExpression()), !dbg !4232
  %29 = icmp ult i32 %22, 41, !dbg !4233
  br i1 %29, label %35, label %32, !dbg !4233

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !4240
  call void @llvm.dbg.value(metadata i64 %31, metadata !4222, metadata !DIExpression()), !dbg !4232
  call void @llvm.dbg.value(metadata i64 %31, metadata !4222, metadata !DIExpression()), !dbg !4232
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !4241
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #12, !dbg !4242
  ret void, !dbg !4242

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !4233
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !4233
  store i8* %34, i8** %10, align 8, !dbg !4233
  br label %40, !dbg !4233

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !4233
  %37 = sext i32 %22 to i64, !dbg !4233
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !4233
  %39 = add i32 %22, 8, !dbg !4233
  store i32 %39, i32* %8, align 8, !dbg !4233
  br label %40, !dbg !4233

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !4233
  %44 = load i8*, i8** %43, align 8, !dbg !4233
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !4236
  store i8* %44, i8** %45, align 8, !dbg !4237, !tbaa !770
  %46 = icmp eq i8* %44, null, !dbg !4238
  br i1 %46, label %30, label %47, !dbg !4239

; <label>:47:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !4222, metadata !DIExpression()), !dbg !4232
  call void @llvm.dbg.value(metadata i64 2, metadata !4222, metadata !DIExpression()), !dbg !4232
  %48 = icmp ult i32 %41, 41, !dbg !4233
  br i1 %48, label %52, label %49, !dbg !4233

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !4233
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !4233
  store i8* %51, i8** %10, align 8, !dbg !4233
  br label %57, !dbg !4233

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !4233
  %54 = sext i32 %41 to i64, !dbg !4233
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !4233
  %56 = add i32 %41, 8, !dbg !4233
  store i32 %56, i32* %8, align 8, !dbg !4233
  br label %57, !dbg !4233

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !4233
  %61 = load i8*, i8** %60, align 8, !dbg !4233
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !4236
  store i8* %61, i8** %62, align 16, !dbg !4237, !tbaa !770
  %63 = icmp eq i8* %61, null, !dbg !4238
  br i1 %63, label %30, label %64, !dbg !4239

; <label>:64:                                     ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !4222, metadata !DIExpression()), !dbg !4232
  call void @llvm.dbg.value(metadata i64 3, metadata !4222, metadata !DIExpression()), !dbg !4232
  %65 = icmp ult i32 %58, 41, !dbg !4233
  br i1 %65, label %69, label %66, !dbg !4233

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !4233
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !4233
  store i8* %68, i8** %10, align 8, !dbg !4233
  br label %74, !dbg !4233

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !4233
  %71 = sext i32 %58 to i64, !dbg !4233
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !4233
  %73 = add i32 %58, 8, !dbg !4233
  store i32 %73, i32* %8, align 8, !dbg !4233
  br label %74, !dbg !4233

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !4233
  %78 = load i8*, i8** %77, align 8, !dbg !4233
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !4236
  store i8* %78, i8** %79, align 8, !dbg !4237, !tbaa !770
  %80 = icmp eq i8* %78, null, !dbg !4238
  br i1 %80, label %30, label %81, !dbg !4239

; <label>:81:                                     ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !4222, metadata !DIExpression()), !dbg !4232
  call void @llvm.dbg.value(metadata i64 4, metadata !4222, metadata !DIExpression()), !dbg !4232
  %82 = icmp ult i32 %75, 41, !dbg !4233
  br i1 %82, label %86, label %83, !dbg !4233

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !4233
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !4233
  store i8* %85, i8** %10, align 8, !dbg !4233
  br label %91, !dbg !4233

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !4233
  %88 = sext i32 %75 to i64, !dbg !4233
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !4233
  %90 = add i32 %75, 8, !dbg !4233
  store i32 %90, i32* %8, align 8, !dbg !4233
  br label %91, !dbg !4233

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !4233
  %95 = load i8*, i8** %94, align 8, !dbg !4233
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !4236
  store i8* %95, i8** %96, align 16, !dbg !4237, !tbaa !770
  %97 = icmp eq i8* %95, null, !dbg !4238
  br i1 %97, label %30, label %98, !dbg !4239

; <label>:98:                                     ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !4222, metadata !DIExpression()), !dbg !4232
  call void @llvm.dbg.value(metadata i64 5, metadata !4222, metadata !DIExpression()), !dbg !4232
  %99 = icmp ult i32 %92, 41, !dbg !4233
  br i1 %99, label %103, label %100, !dbg !4233

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !4233
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !4233
  store i8* %102, i8** %10, align 8, !dbg !4233
  br label %108, !dbg !4233

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !4233
  %105 = sext i32 %92 to i64, !dbg !4233
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !4233
  %107 = add i32 %92, 8, !dbg !4233
  store i32 %107, i32* %8, align 8, !dbg !4233
  br label %108, !dbg !4233

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !4233
  %111 = load i8*, i8** %110, align 8, !dbg !4233
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !4236
  store i8* %111, i8** %112, align 8, !dbg !4237, !tbaa !770
  %113 = icmp eq i8* %111, null, !dbg !4238
  br i1 %113, label %30, label %114, !dbg !4239

; <label>:114:                                    ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !4222, metadata !DIExpression()), !dbg !4232
  call void @llvm.dbg.value(metadata i64 6, metadata !4222, metadata !DIExpression()), !dbg !4232
  %115 = load i8*, i8** %10, align 8, !dbg !4233
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !4233
  store i8* %116, i8** %10, align 8, !dbg !4233
  %117 = bitcast i8* %115 to i8**, !dbg !4233
  %118 = load i8*, i8** %117, align 8, !dbg !4233
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !4236
  store i8* %118, i8** %119, align 16, !dbg !4237, !tbaa !770
  %120 = icmp eq i8* %118, null, !dbg !4238
  br i1 %120, label %30, label %121, !dbg !4239

; <label>:121:                                    ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !4222, metadata !DIExpression()), !dbg !4232
  call void @llvm.dbg.value(metadata i64 7, metadata !4222, metadata !DIExpression()), !dbg !4232
  %122 = load i8*, i8** %10, align 8, !dbg !4233
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !4233
  store i8* %123, i8** %10, align 8, !dbg !4233
  %124 = bitcast i8* %122 to i8**, !dbg !4233
  %125 = load i8*, i8** %124, align 8, !dbg !4233
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !4236
  store i8* %125, i8** %126, align 8, !dbg !4237, !tbaa !770
  %127 = icmp eq i8* %125, null, !dbg !4238
  br i1 %127, label %30, label %128, !dbg !4239

; <label>:128:                                    ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !4222, metadata !DIExpression()), !dbg !4232
  call void @llvm.dbg.value(metadata i64 8, metadata !4222, metadata !DIExpression()), !dbg !4232
  %129 = load i8*, i8** %10, align 8, !dbg !4233
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !4233
  store i8* %130, i8** %10, align 8, !dbg !4233
  %131 = bitcast i8* %129 to i8**, !dbg !4233
  %132 = load i8*, i8** %131, align 8, !dbg !4233
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !4236
  store i8* %132, i8** %133, align 16, !dbg !4237, !tbaa !770
  %134 = icmp eq i8* %132, null, !dbg !4238
  br i1 %134, label %30, label %135, !dbg !4239

; <label>:135:                                    ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !4222, metadata !DIExpression()), !dbg !4232
  call void @llvm.dbg.value(metadata i64 9, metadata !4222, metadata !DIExpression()), !dbg !4232
  %136 = load i8*, i8** %10, align 8, !dbg !4233
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !4233
  store i8* %137, i8** %10, align 8, !dbg !4233
  %138 = bitcast i8* %136 to i8**, !dbg !4233
  %139 = load i8*, i8** %138, align 8, !dbg !4233
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !4236
  store i8* %139, i8** %140, align 8, !dbg !4237, !tbaa !770
  %141 = icmp eq i8* %139, null, !dbg !4238
  %142 = select i1 %141, i64 9, i64 10, !dbg !4239
  br label %30, !dbg !4239
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #7 !dbg !4243 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4247, metadata !DIExpression()), !dbg !4257
  call void @llvm.dbg.value(metadata i8* %1, metadata !4248, metadata !DIExpression()), !dbg !4258
  call void @llvm.dbg.value(metadata i8* %2, metadata !4249, metadata !DIExpression()), !dbg !4259
  call void @llvm.dbg.value(metadata i8* %3, metadata !4250, metadata !DIExpression()), !dbg !4260
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !4261
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #12, !dbg !4261
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !4251, metadata !DIExpression()), !dbg !4262
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !4263
  call void @llvm.va_start(i8* nonnull %6), !dbg !4263
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !4264
  call void @llvm.va_end(i8* nonnull %6), !dbg !4265
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #12, !dbg !4266
  ret void, !dbg !4266
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #12

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #12

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #7 !dbg !4267 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.134, i64 0, i64 0), i32 5) #12, !dbg !4268
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.135, i64 0, i64 0)) #12, !dbg !4268
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.136, i64 0, i64 0), i32 5) #12, !dbg !4269
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.137, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18.138, i64 0, i64 0)) #12, !dbg !4269
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.19.139, i64 0, i64 0), i32 5) #12, !dbg !4270
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !4270, !tbaa !770
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6), !dbg !4270
  ret void, !dbg !4271
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !4272 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4276, metadata !DIExpression()), !dbg !4278
  call void @llvm.dbg.value(metadata i64 %1, metadata !4277, metadata !DIExpression()), !dbg !4279
  %3 = udiv i64 9223372036854775807, %1, !dbg !4280
  %4 = icmp ult i64 %3, %0, !dbg !4280
  br i1 %4, label %5, label %6, !dbg !4282

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !4283
  unreachable, !dbg !4283

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4284
  call void @llvm.dbg.value(metadata i64 %7, metadata !4285, metadata !DIExpression()) #12, !dbg !4292
  %8 = tail call noalias i8* @malloc(i64 %7) #12, !dbg !4294
  call void @llvm.dbg.value(metadata i8* %8, metadata !4291, metadata !DIExpression()) #12, !dbg !4295
  %9 = icmp eq i8* %8, null, !dbg !4296
  %10 = icmp ne i64 %7, 0, !dbg !4298
  %11 = and i1 %10, %9, !dbg !4299
  br i1 %11, label %12, label %13, !dbg !4299

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !4300
  unreachable, !dbg !4300

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !4301
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64) local_unnamed_addr #7 !dbg !4286 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4285, metadata !DIExpression()), !dbg !4302
  %2 = tail call noalias i8* @malloc(i64 %0) #12, !dbg !4303
  call void @llvm.dbg.value(metadata i8* %2, metadata !4291, metadata !DIExpression()), !dbg !4304
  %3 = icmp eq i8* %2, null, !dbg !4305
  %4 = icmp ne i64 %0, 0, !dbg !4306
  %5 = and i1 %4, %3, !dbg !4307
  br i1 %5, label %6, label %7, !dbg !4307

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !4308
  unreachable, !dbg !4308

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !4309
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !4310 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4314, metadata !DIExpression()), !dbg !4317
  call void @llvm.dbg.value(metadata i64 %1, metadata !4315, metadata !DIExpression()), !dbg !4318
  call void @llvm.dbg.value(metadata i64 %2, metadata !4316, metadata !DIExpression()), !dbg !4319
  %4 = udiv i64 9223372036854775807, %2, !dbg !4320
  %5 = icmp ult i64 %4, %1, !dbg !4320
  br i1 %5, label %6, label %7, !dbg !4322

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !4323
  unreachable, !dbg !4323

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !4324
  call void @llvm.dbg.value(metadata i8* %0, metadata !4325, metadata !DIExpression()) #12, !dbg !4331
  call void @llvm.dbg.value(metadata i64 %8, metadata !4330, metadata !DIExpression()) #12, !dbg !4333
  %9 = icmp eq i64 %8, 0, !dbg !4334
  %10 = icmp ne i8* %0, null, !dbg !4336
  %11 = and i1 %10, %9, !dbg !4337
  br i1 %11, label %12, label %13, !dbg !4337

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #12, !dbg !4338
  br label %19, !dbg !4340

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #12, !dbg !4341
  call void @llvm.dbg.value(metadata i8* %14, metadata !4325, metadata !DIExpression()) #12, !dbg !4331
  %15 = icmp eq i8* %14, null, !dbg !4342
  %16 = icmp ne i64 %8, 0, !dbg !4344
  %17 = and i1 %16, %15, !dbg !4345
  br i1 %17, label %18, label %19, !dbg !4345

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !4346
  unreachable, !dbg !4346

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !4347
  ret i8* %20, !dbg !4348
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #7 !dbg !4326 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4325, metadata !DIExpression()), !dbg !4349
  call void @llvm.dbg.value(metadata i64 %1, metadata !4330, metadata !DIExpression()), !dbg !4350
  %3 = icmp eq i64 %1, 0, !dbg !4351
  %4 = icmp ne i8* %0, null, !dbg !4352
  %5 = and i1 %4, %3, !dbg !4353
  br i1 %5, label %6, label %7, !dbg !4353

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #12, !dbg !4354
  br label %13, !dbg !4355

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #12, !dbg !4356
  call void @llvm.dbg.value(metadata i8* %8, metadata !4325, metadata !DIExpression()), !dbg !4349
  %9 = icmp eq i8* %8, null, !dbg !4357
  %10 = icmp ne i64 %1, 0, !dbg !4358
  %11 = and i1 %10, %9, !dbg !4359
  br i1 %11, label %12, label %13, !dbg !4359

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !4360
  unreachable, !dbg !4360

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !4361
  ret i8* %14, !dbg !4362
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !309 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !311, metadata !DIExpression()), !dbg !4363
  call void @llvm.dbg.value(metadata i64* %1, metadata !312, metadata !DIExpression()), !dbg !4364
  call void @llvm.dbg.value(metadata i64 %2, metadata !313, metadata !DIExpression()), !dbg !4365
  %4 = load i64, i64* %1, align 8, !dbg !4366, !tbaa !881
  call void @llvm.dbg.value(metadata i64 %4, metadata !314, metadata !DIExpression()), !dbg !4367
  %5 = icmp eq i8* %0, null, !dbg !4368
  br i1 %5, label %6, label %20, !dbg !4370

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4371
  br i1 %7, label %8, label %13, !dbg !4374

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4375
  call void @llvm.dbg.value(metadata i64 %9, metadata !314, metadata !DIExpression()), !dbg !4367
  %10 = icmp ugt i64 %2, 128, !dbg !4377
  %11 = zext i1 %10 to i64, !dbg !4377
  %12 = add nuw nsw i64 %9, %11, !dbg !4378
  call void @llvm.dbg.value(metadata i64 %12, metadata !314, metadata !DIExpression()), !dbg !4367
  br label %13, !dbg !4379

; <label>:13:                                     ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !4380
  call void @llvm.dbg.value(metadata i64 %14, metadata !314, metadata !DIExpression()), !dbg !4367
  %15 = udiv i64 9223372036854775807, %2, !dbg !4381
  %16 = icmp ult i64 %15, %14, !dbg !4381
  br i1 %16, label %19, label %17, !dbg !4383

; <label>:17:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !314, metadata !DIExpression()), !dbg !4367
  store i64 %14, i64* %1, align 8, !dbg !4384, !tbaa !881
  %18 = mul i64 %14, %2, !dbg !4385
  call void @llvm.dbg.value(metadata i8* %0, metadata !4325, metadata !DIExpression()) #12, !dbg !4386
  call void @llvm.dbg.value(metadata i64 %28, metadata !4330, metadata !DIExpression()) #12, !dbg !4388
  br label %31, !dbg !4389

; <label>:19:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !4390
  unreachable, !dbg !4390

; <label>:20:                                     ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !4391
  %22 = icmp ugt i64 %21, %4, !dbg !4394
  br i1 %22, label %24, label %23, !dbg !4395

; <label>:23:                                     ; preds = %20
  tail call void @xalloc_die() #15, !dbg !4396
  unreachable, !dbg !4396

; <label>:24:                                     ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !4397
  %26 = add i64 %4, 1, !dbg !4398
  %27 = add i64 %26, %25, !dbg !4399
  call void @llvm.dbg.value(metadata i64 %27, metadata !314, metadata !DIExpression()), !dbg !4367
  call void @llvm.dbg.value(metadata i64 %27, metadata !314, metadata !DIExpression()), !dbg !4367
  store i64 %27, i64* %1, align 8, !dbg !4384, !tbaa !881
  %28 = mul i64 %27, %2, !dbg !4385
  call void @llvm.dbg.value(metadata i8* %0, metadata !4325, metadata !DIExpression()) #12, !dbg !4386
  call void @llvm.dbg.value(metadata i64 %28, metadata !4330, metadata !DIExpression()) #12, !dbg !4388
  %29 = icmp eq i64 %28, 0, !dbg !4400
  br i1 %29, label %30, label %31, !dbg !4389

; <label>:30:                                     ; preds = %24
  tail call void @free(i8* nonnull %0) #12, !dbg !4401
  br label %38, !dbg !4402

; <label>:31:                                     ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #12, !dbg !4403
  call void @llvm.dbg.value(metadata i8* %33, metadata !4325, metadata !DIExpression()) #12, !dbg !4386
  %34 = icmp eq i8* %33, null, !dbg !4404
  %35 = icmp ne i64 %32, 0, !dbg !4405
  %36 = and i1 %35, %34, !dbg !4406
  br i1 %36, label %37, label %38, !dbg !4406

; <label>:37:                                     ; preds = %31
  tail call void @xalloc_die() #15, !dbg !4407
  unreachable, !dbg !4407

; <label>:38:                                     ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !4408
  ret i8* %39, !dbg !4409
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !4410 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4412, metadata !DIExpression()), !dbg !4413
  call void @llvm.dbg.value(metadata i64 %0, metadata !4285, metadata !DIExpression()) #12, !dbg !4414
  %2 = tail call noalias i8* @malloc(i64 %0) #12, !dbg !4416
  call void @llvm.dbg.value(metadata i8* %2, metadata !4291, metadata !DIExpression()) #12, !dbg !4417
  %3 = icmp eq i8* %2, null, !dbg !4418
  %4 = icmp ne i64 %0, 0, !dbg !4419
  %5 = and i1 %4, %3, !dbg !4420
  br i1 %5, label %6, label %7, !dbg !4420

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !4421
  unreachable, !dbg !4421

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !4422
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #7 !dbg !4423 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4427, metadata !DIExpression()), !dbg !4429
  call void @llvm.dbg.value(metadata i64* %1, metadata !4428, metadata !DIExpression()), !dbg !4430
  call void @llvm.dbg.value(metadata i8* %0, metadata !311, metadata !DIExpression()) #12, !dbg !4431
  call void @llvm.dbg.value(metadata i64* %1, metadata !312, metadata !DIExpression()) #12, !dbg !4433
  call void @llvm.dbg.value(metadata i64 1, metadata !313, metadata !DIExpression()) #12, !dbg !4434
  %3 = load i64, i64* %1, align 8, !dbg !4435, !tbaa !881
  call void @llvm.dbg.value(metadata i64 %3, metadata !314, metadata !DIExpression()) #12, !dbg !4436
  %4 = icmp eq i8* %0, null, !dbg !4437
  br i1 %4, label %5, label %12, !dbg !4438

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4439
  br i1 %6, label %9, label %7, !dbg !4440

; <label>:7:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !314, metadata !DIExpression()) #12, !dbg !4436
  %8 = icmp slt i64 %3, 0, !dbg !4441
  br i1 %8, label %11, label %9, !dbg !4442

; <label>:9:                                      ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !314, metadata !DIExpression()) #12, !dbg !4436
  store i64 %10, i64* %1, align 8, !dbg !4443, !tbaa !881
  call void @llvm.dbg.value(metadata i8* %0, metadata !4325, metadata !DIExpression()) #12, !dbg !4444
  call void @llvm.dbg.value(metadata i64 %18, metadata !4330, metadata !DIExpression()) #12, !dbg !4446
  br label %21, !dbg !4447

; <label>:11:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !4448
  unreachable, !dbg !4448

; <label>:12:                                     ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !4449
  br i1 %13, label %15, label %14, !dbg !4450

; <label>:14:                                     ; preds = %12
  tail call void @xalloc_die() #15, !dbg !4451
  unreachable, !dbg !4451

; <label>:15:                                     ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !4452
  %17 = add i64 %3, 1, !dbg !4453
  %18 = add i64 %17, %16, !dbg !4454
  call void @llvm.dbg.value(metadata i64 %18, metadata !314, metadata !DIExpression()) #12, !dbg !4436
  call void @llvm.dbg.value(metadata i64 %18, metadata !314, metadata !DIExpression()) #12, !dbg !4436
  store i64 %18, i64* %1, align 8, !dbg !4443, !tbaa !881
  call void @llvm.dbg.value(metadata i8* %0, metadata !4325, metadata !DIExpression()) #12, !dbg !4444
  call void @llvm.dbg.value(metadata i64 %18, metadata !4330, metadata !DIExpression()) #12, !dbg !4446
  %19 = icmp eq i64 %18, 0, !dbg !4455
  br i1 %19, label %20, label %21, !dbg !4447

; <label>:20:                                     ; preds = %15
  tail call void @free(i8* nonnull %0) #12, !dbg !4456
  br label %28, !dbg !4457

; <label>:21:                                     ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #12, !dbg !4458
  call void @llvm.dbg.value(metadata i8* %23, metadata !4325, metadata !DIExpression()) #12, !dbg !4444
  %24 = icmp eq i8* %23, null, !dbg !4459
  %25 = icmp ne i64 %22, 0, !dbg !4460
  %26 = and i1 %25, %24, !dbg !4461
  br i1 %26, label %27, label %28, !dbg !4461

; <label>:27:                                     ; preds = %21
  tail call void @xalloc_die() #15, !dbg !4462
  unreachable, !dbg !4462

; <label>:28:                                     ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !4463
  ret i8* %29, !dbg !4464
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64) local_unnamed_addr #7 !dbg !4465 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4467, metadata !DIExpression()), !dbg !4468
  call void @llvm.dbg.value(metadata i64 %0, metadata !4285, metadata !DIExpression()) #12, !dbg !4469
  %2 = tail call noalias i8* @malloc(i64 %0) #12, !dbg !4471
  call void @llvm.dbg.value(metadata i8* %2, metadata !4291, metadata !DIExpression()) #12, !dbg !4472
  %3 = icmp eq i8* %2, null, !dbg !4473
  %4 = icmp ne i64 %0, 0, !dbg !4474
  %5 = and i1 %4, %3, !dbg !4475
  br i1 %5, label %6, label %7, !dbg !4475

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !4476
  unreachable, !dbg !4476

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* align 1 %2, i8 0, i64 %0, i1 false), !dbg !4477
  ret i8* %2, !dbg !4478
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64, i64) local_unnamed_addr #7 !dbg !4479 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4481, metadata !DIExpression()), !dbg !4484
  call void @llvm.dbg.value(metadata i64 %1, metadata !4482, metadata !DIExpression()), !dbg !4485
  %3 = udiv i64 9223372036854775807, %1, !dbg !4486
  %4 = icmp ult i64 %3, %0, !dbg !4486
  br i1 %4, label %8, label %5, !dbg !4488

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #12, !dbg !4489
  call void @llvm.dbg.value(metadata i8* %6, metadata !4483, metadata !DIExpression()), !dbg !4490
  %7 = icmp eq i8* %6, null, !dbg !4491
  br i1 %7, label %8, label %9, !dbg !4492

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !4493
  unreachable, !dbg !4493

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !4494
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #7 !dbg !4495 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4499, metadata !DIExpression()), !dbg !4501
  call void @llvm.dbg.value(metadata i64 %1, metadata !4500, metadata !DIExpression()), !dbg !4502
  call void @llvm.dbg.value(metadata i64 %1, metadata !4285, metadata !DIExpression()) #12, !dbg !4503
  %3 = tail call noalias i8* @malloc(i64 %1) #12, !dbg !4505
  call void @llvm.dbg.value(metadata i8* %3, metadata !4291, metadata !DIExpression()) #12, !dbg !4506
  %4 = icmp eq i8* %3, null, !dbg !4507
  %5 = icmp ne i64 %1, 0, !dbg !4508
  %6 = and i1 %5, %4, !dbg !4509
  br i1 %6, label %7, label %8, !dbg !4509

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !4510
  unreachable, !dbg !4510

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 %0, i64 %1, i1 false), !dbg !4511
  ret i8* %3, !dbg !4512
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #7 !dbg !4513 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4515, metadata !DIExpression()), !dbg !4516
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !4517
  %3 = add i64 %2, 1, !dbg !4518
  call void @llvm.dbg.value(metadata i8* %0, metadata !4499, metadata !DIExpression()) #12, !dbg !4519
  call void @llvm.dbg.value(metadata i64 %3, metadata !4500, metadata !DIExpression()) #12, !dbg !4521
  call void @llvm.dbg.value(metadata i64 %3, metadata !4285, metadata !DIExpression()) #12, !dbg !4522
  %4 = tail call noalias i8* @malloc(i64 %3) #12, !dbg !4524
  call void @llvm.dbg.value(metadata i8* %4, metadata !4291, metadata !DIExpression()) #12, !dbg !4525
  %5 = icmp eq i8* %4, null, !dbg !4526
  %6 = icmp ne i64 %3, 0, !dbg !4527
  %7 = and i1 %6, %5, !dbg !4528
  br i1 %7, label %8, label %9, !dbg !4528

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !4529
  unreachable, !dbg !4529

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %0, i64 %3, i1 false) #12, !dbg !4530
  ret i8* %4, !dbg !4531
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4532 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4534, !tbaa !930
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.152, i64 0, i64 0), i32 5) #12, !dbg !4535
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.153, i64 0, i64 0), i8* %2) #12, !dbg !4536
  tail call void @abort() #15, !dbg !4537
  unreachable, !dbg !4537
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrndup(i8* nocapture readonly, i64) local_unnamed_addr #7 !dbg !4538 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4541, metadata !DIExpression()), !dbg !4544
  call void @llvm.dbg.value(metadata i64 %1, metadata !4542, metadata !DIExpression()), !dbg !4545
  %3 = tail call noalias i8* @strndup(i8* %0, i64 %1) #12, !dbg !4546
  call void @llvm.dbg.value(metadata i8* %3, metadata !4543, metadata !DIExpression()), !dbg !4547
  %4 = icmp eq i8* %3, null, !dbg !4548
  br i1 %4, label %5, label %6, !dbg !4550

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !4551
  unreachable, !dbg !4551

; <label>:6:                                      ; preds = %2
  ret i8* %3, !dbg !4552
}

; Function Attrs: nounwind
declare noalias i8* @strndup(i8* nocapture readonly, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #7 !dbg !4553 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4556, metadata !DIExpression()), !dbg !4562
  call void @llvm.dbg.value(metadata i64 %1, metadata !4557, metadata !DIExpression()), !dbg !4563
  %3 = icmp eq i64 %0, 0, !dbg !4564
  %4 = icmp eq i64 %1, 0, !dbg !4565
  %5 = or i1 %3, %4, !dbg !4566
  br i1 %5, label %12, label %6, !dbg !4566

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !4567
  call void @llvm.dbg.value(metadata i64 %7, metadata !4559, metadata !DIExpression()), !dbg !4568
  %8 = udiv i64 %7, %1, !dbg !4569
  %9 = icmp eq i64 %8, %0, !dbg !4571
  br i1 %9, label %12, label %10, !dbg !4572

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !4573
  store i32 12, i32* %11, align 4, !dbg !4575, !tbaa !930
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %14, metadata !4556, metadata !DIExpression()), !dbg !4562
  call void @llvm.dbg.value(metadata i64 %13, metadata !4557, metadata !DIExpression()), !dbg !4563
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #12, !dbg !4576
  call void @llvm.dbg.value(metadata i8* %15, metadata !4558, metadata !DIExpression()), !dbg !4577
  br label %16, !dbg !4578

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ], !dbg !4579
  ret i8* %17, !dbg !4580
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #7 !dbg !4581 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4620, metadata !DIExpression()), !dbg !4624
  call void @llvm.dbg.value(metadata i32 0, metadata !4621, metadata !DIExpression()), !dbg !4625
  call void @llvm.dbg.value(metadata i32 0, metadata !4623, metadata !DIExpression()), !dbg !4626
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !4627
  call void @llvm.dbg.value(metadata i32 %2, metadata !4622, metadata !DIExpression()), !dbg !4628
  %3 = icmp slt i32 %2, 0, !dbg !4629
  br i1 %3, label %4, label %6, !dbg !4631

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4632
  br label %24, !dbg !4633

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #12, !dbg !4634
  %8 = icmp eq i32 %7, 0, !dbg !4634
  br i1 %8, label %13, label %9, !dbg !4636

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !4637
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #12, !dbg !4638
  %12 = icmp eq i64 %11, -1, !dbg !4639
  br i1 %12, label %16, label %13, !dbg !4640

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #12, !dbg !4641
  %15 = icmp eq i32 %14, 0, !dbg !4641
  br i1 %15, label %16, label %18, !dbg !4642

; <label>:16:                                     ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !4621, metadata !DIExpression()), !dbg !4625
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4643
  call void @llvm.dbg.value(metadata i32 %21, metadata !4623, metadata !DIExpression()), !dbg !4626
  br label %24, !dbg !4644

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !4645
  %20 = load i32, i32* %19, align 4, !dbg !4645, !tbaa !930
  call void @llvm.dbg.value(metadata i32 %20, metadata !4621, metadata !DIExpression()), !dbg !4625
  call void @llvm.dbg.value(metadata i32 %20, metadata !4621, metadata !DIExpression()), !dbg !4625
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !4643
  call void @llvm.dbg.value(metadata i32 %21, metadata !4623, metadata !DIExpression()), !dbg !4626
  %22 = icmp eq i32 %20, 0, !dbg !4646
  br i1 %22, label %24, label %23, !dbg !4644

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4648, !tbaa !930
  call void @llvm.dbg.value(metadata i32 -1, metadata !4623, metadata !DIExpression()), !dbg !4626
  br label %24, !dbg !4650

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4651
  ret i32 %25, !dbg !4652
}

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !4653 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4692, metadata !DIExpression()), !dbg !4693
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4694
  br i1 %2, label %6, label %3, !dbg !4696

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #12, !dbg !4697
  %5 = icmp eq i32 %4, 0, !dbg !4697
  br i1 %5, label %6, label %8, !dbg !4698

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !4699
  br label %17, !dbg !4700

; <label>:8:                                      ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4701, metadata !DIExpression()) #12, !dbg !4706
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4708
  %10 = load i32, i32* %9, align 8, !dbg !4708, !tbaa !1226
  %11 = and i32 %10, 256, !dbg !4710
  %12 = icmp eq i32 %11, 0, !dbg !4710
  br i1 %12, label %15, label %13, !dbg !4711

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #12, !dbg !4712
  br label %15, !dbg !4712

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !4713
  br label %17, !dbg !4714

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !4715
  ret i32 %18, !dbg !4716
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @freadptr(%struct._IO_FILE* nocapture readonly, i64* nocapture) local_unnamed_addr #7 !dbg !4717 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4756, metadata !DIExpression()), !dbg !4759
  call void @llvm.dbg.value(metadata i64* %1, metadata !4757, metadata !DIExpression()), !dbg !4760
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4761
  %4 = load i8*, i8** %3, align 8, !dbg !4761, !tbaa !1095
  %5 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4763
  %6 = load i8*, i8** %5, align 8, !dbg !4763, !tbaa !4764
  %7 = icmp ugt i8* %4, %6, !dbg !4765
  br i1 %7, label %19, label %8, !dbg !4766

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4767
  %10 = bitcast i8** %9 to i64*, !dbg !4767
  %11 = load i64, i64* %10, align 8, !dbg !4767, !tbaa !1081
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4768
  %13 = bitcast i8** %12 to i64*, !dbg !4768
  %14 = load i64, i64* %13, align 8, !dbg !4768, !tbaa !1078
  %15 = sub i64 %11, %14, !dbg !4769
  call void @llvm.dbg.value(metadata i64 %15, metadata !4758, metadata !DIExpression()), !dbg !4770
  %16 = icmp eq i64 %15, 0, !dbg !4771
  br i1 %16, label %19, label %17, !dbg !4773

; <label>:17:                                     ; preds = %8
  %18 = inttoptr i64 %14 to i8*, !dbg !4773
  store i64 %15, i64* %1, align 8, !dbg !4774, !tbaa !881
  br label %19, !dbg !4775

; <label>:19:                                     ; preds = %8, %2, %17
  %20 = phi i8* [ %18, %17 ], [ null, %2 ], [ null, %8 ], !dbg !4776
  ret i8* %20, !dbg !4777
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #7 !dbg !4778 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4817, metadata !DIExpression()), !dbg !4823
  call void @llvm.dbg.value(metadata i64 %1, metadata !4818, metadata !DIExpression()), !dbg !4824
  call void @llvm.dbg.value(metadata i32 %2, metadata !4819, metadata !DIExpression()), !dbg !4825
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4826
  %5 = load i8*, i8** %4, align 8, !dbg !4826, !tbaa !1081
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4827
  %7 = load i8*, i8** %6, align 8, !dbg !4827, !tbaa !1078
  %8 = icmp eq i8* %5, %7, !dbg !4828
  br i1 %8, label %9, label %28, !dbg !4829

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4830
  %11 = load i8*, i8** %10, align 8, !dbg !4830, !tbaa !1095
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4831
  %13 = load i8*, i8** %12, align 8, !dbg !4831, !tbaa !4764
  %14 = icmp eq i8* %11, %13, !dbg !4832
  br i1 %14, label %15, label %28, !dbg !4833

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4834
  %17 = load i8*, i8** %16, align 8, !dbg !4834, !tbaa !4835
  %18 = icmp eq i8* %17, null, !dbg !4836
  br i1 %18, label %19, label %28, !dbg !4837

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #12, !dbg !4838
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #12, !dbg !4839
  call void @llvm.dbg.value(metadata i64 %21, metadata !4820, metadata !DIExpression()), !dbg !4840
  %22 = icmp eq i64 %21, -1, !dbg !4841
  br i1 %22, label %30, label %23, !dbg !4843

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4844
  %25 = load i32, i32* %24, align 8, !dbg !4845, !tbaa !1226
  %26 = and i32 %25, -17, !dbg !4845
  store i32 %26, i32* %24, align 8, !dbg !4845, !tbaa !1226
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4846
  store i64 %21, i64* %27, align 8, !dbg !4847, !tbaa !4848
  br label %30, !dbg !4849

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !4850
  br label %30, !dbg !4851

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !4852
  ret i32 %31, !dbg !4853
}

; Function Attrs: nounwind
declare i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #7 !dbg !4854 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !4871, metadata !DIExpression()), !dbg !4880
  call void @llvm.dbg.value(metadata i8* %1, metadata !4872, metadata !DIExpression()), !dbg !4881
  call void @llvm.dbg.value(metadata i64 %2, metadata !4873, metadata !DIExpression()), !dbg !4882
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !4874, metadata !DIExpression()), !dbg !4883
  %6 = bitcast i32* %5 to i8*, !dbg !4884
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #12, !dbg !4884
  %7 = icmp eq i32* %0, null, !dbg !4885
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !4887
  call void @llvm.dbg.value(metadata i32* %8, metadata !4871, metadata !DIExpression()), !dbg !4880
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #12, !dbg !4888
  call void @llvm.dbg.value(metadata i64 %9, metadata !4875, metadata !DIExpression()), !dbg !4889
  %10 = icmp ugt i64 %9, -3, !dbg !4890
  %11 = icmp ne i64 %2, 0, !dbg !4891
  %12 = and i1 %11, %10, !dbg !4892
  br i1 %12, label %13, label %18, !dbg !4892

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #12, !dbg !4893
  br i1 %14, label %18, label %15, !dbg !4894

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !4895, !tbaa !838
  call void @llvm.dbg.value(metadata i8 %16, metadata !4877, metadata !DIExpression()), !dbg !4896
  %17 = zext i8 %16 to i32, !dbg !4897
  store i32 %17, i32* %8, align 4, !dbg !4898, !tbaa !930
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !4899
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #12, !dbg !4900
  ret i64 %19, !dbg !4900
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !4901 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4940, metadata !DIExpression()), !dbg !4945
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #12, !dbg !4946
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4947, metadata !DIExpression()), !dbg !4950
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4952
  %4 = load i32, i32* %3, align 8, !dbg !4952, !tbaa !1226
  %5 = and i32 %4, 32, !dbg !4952
  %6 = icmp eq i32 %5, 0, !dbg !4953
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #12, !dbg !4954
  %8 = icmp ne i32 %7, 0, !dbg !4955
  br i1 %6, label %9, label %19, !dbg !4956

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4958
  %11 = xor i1 %8, true, !dbg !4959
  %12 = or i1 %10, %11, !dbg !4959
  %13 = sext i1 %8 to i32, !dbg !4959
  br i1 %12, label %22, label %14, !dbg !4959

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !4960
  %16 = load i32, i32* %15, align 4, !dbg !4960, !tbaa !930
  %17 = icmp ne i32 %16, 9, !dbg !4961
  %18 = sext i1 %17 to i32, !dbg !4962
  br label %22, !dbg !4962

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !4963

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !4965
  store i32 0, i32* %21, align 4, !dbg !4967, !tbaa !930
  br label %22, !dbg !4965

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4968
  ret i32 %23, !dbg !4969
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @freadseek(%struct._IO_FILE*, i64) local_unnamed_addr #7 !dbg !4970 {
  %3 = alloca i64, align 8
  %4 = alloca [4096 x i8], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !5009, metadata !DIExpression()), !dbg !5026
  call void @llvm.dbg.value(metadata i64 %1, metadata !5010, metadata !DIExpression()), !dbg !5027
  %5 = icmp eq i64 %1, 0, !dbg !5028
  br i1 %5, label %71, label %6, !dbg !5030

; <label>:6:                                      ; preds = %2
  %7 = tail call i64 @freadahead(%struct._IO_FILE* %0) #14, !dbg !5031
  call void @llvm.dbg.value(metadata i64 %7, metadata !5011, metadata !DIExpression()), !dbg !5032
  %8 = bitcast i64* %3 to i8*
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1
  br label %10, !dbg !5033

; <label>:10:                                     ; preds = %38, %6
  %11 = phi i64 [ %7, %6 ], [ %43, %38 ], !dbg !5034
  %12 = phi i64 [ %1, %6 ], [ %39, %38 ]
  call void @llvm.dbg.value(metadata i64 %12, metadata !5010, metadata !DIExpression()), !dbg !5027
  call void @llvm.dbg.value(metadata i64 %11, metadata !5011, metadata !DIExpression()), !dbg !5032
  %13 = icmp eq i64 %11, 0, !dbg !5035
  br i1 %13, label %44, label %14, !dbg !5033

; <label>:14:                                     ; preds = %10
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #12, !dbg !5036
  call void @llvm.dbg.value(metadata i64* %3, metadata !5013, metadata !DIExpression(DW_OP_deref)), !dbg !5037
  %15 = call i8* @freadptr(%struct._IO_FILE* %0, i64* nonnull %3) #12, !dbg !5038
  %16 = icmp ne i8* %15, null, !dbg !5039
  %17 = load i64, i64* %3, align 8, !dbg !5040
  call void @llvm.dbg.value(metadata i64 %17, metadata !5013, metadata !DIExpression()), !dbg !5037
  %18 = icmp ne i64 %17, 0, !dbg !5041
  %19 = and i1 %16, %18, !dbg !5042
  br i1 %19, label %20, label %32, !dbg !5042

; <label>:20:                                     ; preds = %14
  %21 = icmp ult i64 %17, %12, !dbg !5043
  %22 = select i1 %21, i64 %17, i64 %12, !dbg !5044
  call void @llvm.dbg.value(metadata i64 %22, metadata !5015, metadata !DIExpression()), !dbg !5045
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !5046, metadata !DIExpression()), !dbg !5052
  call void @llvm.dbg.value(metadata i64 %22, metadata !5051, metadata !DIExpression()), !dbg !5054
  %23 = load i8*, i8** %9, align 8, !dbg !5055, !tbaa !1078
  %24 = getelementptr inbounds i8, i8* %23, i64 %22, !dbg !5055
  store i8* %24, i8** %9, align 8, !dbg !5055, !tbaa !1078
  %25 = sub i64 %12, %22, !dbg !5056
  call void @llvm.dbg.value(metadata i64 %25, metadata !5010, metadata !DIExpression()), !dbg !5027
  %26 = icmp eq i64 %25, 0, !dbg !5057
  br i1 %26, label %27, label %28, !dbg !5059

; <label>:27:                                     ; preds = %20
  call void @llvm.dbg.value(metadata i64 %39, metadata !5010, metadata !DIExpression()), !dbg !5027
  call void @llvm.dbg.value(metadata i64 %43, metadata !5011, metadata !DIExpression()), !dbg !5032
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #12, !dbg !5060
  br label %71

; <label>:28:                                     ; preds = %20
  %29 = sub i64 %11, %22, !dbg !5061
  call void @llvm.dbg.value(metadata i64 %29, metadata !5011, metadata !DIExpression()), !dbg !5032
  %30 = icmp eq i64 %29, 0, !dbg !5062
  br i1 %30, label %31, label %32

; <label>:31:                                     ; preds = %28
  call void @llvm.dbg.value(metadata i64 %39, metadata !5010, metadata !DIExpression()), !dbg !5027
  call void @llvm.dbg.value(metadata i64 %43, metadata !5011, metadata !DIExpression()), !dbg !5032
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #12, !dbg !5060
  br label %44

; <label>:32:                                     ; preds = %28, %14
  %33 = phi i64 [ %11, %14 ], [ %29, %28 ], !dbg !5034
  %34 = phi i64 [ %12, %14 ], [ %25, %28 ]
  call void @llvm.dbg.value(metadata i64 %34, metadata !5010, metadata !DIExpression()), !dbg !5027
  call void @llvm.dbg.value(metadata i64 %33, metadata !5011, metadata !DIExpression()), !dbg !5032
  %35 = call i32 @fgetc(%struct._IO_FILE* %0), !dbg !5064
  %36 = icmp eq i32 %35, -1, !dbg !5066
  br i1 %36, label %37, label %38, !dbg !5067

; <label>:37:                                     ; preds = %32
  call void @llvm.dbg.value(metadata i64 %39, metadata !5010, metadata !DIExpression()), !dbg !5027
  call void @llvm.dbg.value(metadata i64 %43, metadata !5011, metadata !DIExpression()), !dbg !5032
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #12, !dbg !5060
  br label %67

; <label>:38:                                     ; preds = %32
  %39 = add i64 %34, -1, !dbg !5068
  call void @llvm.dbg.value(metadata i64 %39, metadata !5010, metadata !DIExpression()), !dbg !5027
  %40 = icmp eq i64 %39, 0, !dbg !5069
  %41 = xor i1 %40, true, !dbg !5071
  %42 = sext i1 %41 to i64, !dbg !5071
  %43 = add i64 %33, %42, !dbg !5071
  call void @llvm.dbg.value(metadata i64 %39, metadata !5010, metadata !DIExpression()), !dbg !5027
  call void @llvm.dbg.value(metadata i64 %43, metadata !5011, metadata !DIExpression()), !dbg !5032
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #12, !dbg !5060
  br i1 %40, label %71, label %10

; <label>:44:                                     ; preds = %10, %31
  %45 = phi i64 [ %25, %31 ], [ %12, %10 ]
  call void @llvm.dbg.value(metadata i64 %45, metadata !5010, metadata !DIExpression()), !dbg !5027
  %46 = call i32 @fileno(%struct._IO_FILE* %0) #12, !dbg !5072
  call void @llvm.dbg.value(metadata i32 %46, metadata !5012, metadata !DIExpression()), !dbg !5073
  %47 = icmp sgt i32 %46, -1, !dbg !5074
  br i1 %47, label %48, label %53, !dbg !5075

; <label>:48:                                     ; preds = %44
  %49 = call i64 @lseek(i32 %46, i64 0, i32 1) #12, !dbg !5076
  %50 = icmp sgt i64 %49, -1, !dbg !5077
  br i1 %50, label %51, label %53, !dbg !5078

; <label>:51:                                     ; preds = %48
  %52 = call i32 @rpl_fseeko(%struct._IO_FILE* %0, i64 %45, i32 1) #12, !dbg !5079
  br label %71, !dbg !5081

; <label>:53:                                     ; preds = %48, %44
  %54 = getelementptr inbounds [4096 x i8], [4096 x i8]* %4, i64 0, i64 0, !dbg !5082
  call void @llvm.lifetime.start.p0i8(i64 4096, i8* nonnull %54) #12, !dbg !5082
  call void @llvm.dbg.declare(metadata [4096 x i8]* %4, metadata !5018, metadata !DIExpression()), !dbg !5083
  br label %55, !dbg !5084

; <label>:55:                                     ; preds = %63, %53
  %56 = phi i64 [ %45, %53 ], [ %62, %63 ], !dbg !5056
  call void @llvm.dbg.value(metadata i64 %56, metadata !5010, metadata !DIExpression()), !dbg !5027
  %57 = icmp ult i64 %56, 4096, !dbg !5085
  %58 = select i1 %57, i64 %56, i64 4096, !dbg !5085
  call void @llvm.dbg.value(metadata i64 %58, metadata !5024, metadata !DIExpression()), !dbg !5086
  %59 = call i64 @fread(i8* nonnull %54, i64 1, i64 %58, %struct._IO_FILE* %0), !dbg !5087
  %60 = icmp ult i64 %59, %58, !dbg !5089
  %61 = select i1 %60, i64 0, i64 %58, !dbg !5090
  %62 = sub i64 %56, %61, !dbg !5090
  call void @llvm.dbg.value(metadata i64 %62, metadata !5010, metadata !DIExpression()), !dbg !5027
  br i1 %60, label %66, label %63

; <label>:63:                                     ; preds = %55
  %64 = icmp eq i64 %62, 0, !dbg !5091
  br i1 %64, label %65, label %55, !dbg !5092, !llvm.loop !5093

; <label>:65:                                     ; preds = %63
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* nonnull %54) #12, !dbg !5095
  br label %71

; <label>:66:                                     ; preds = %55
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* nonnull %54) #12, !dbg !5095
  br label %67

; <label>:67:                                     ; preds = %66, %37
  %68 = call i32 @ferror(%struct._IO_FILE* %0) #12, !dbg !5096
  %69 = icmp ne i32 %68, 0, !dbg !5096
  %70 = sext i1 %69 to i32, !dbg !5098
  br label %71, !dbg !5098

; <label>:71:                                     ; preds = %38, %27, %65, %67, %2, %51
  %72 = phi i32 [ %52, %51 ], [ 0, %2 ], [ %70, %67 ], [ 0, %65 ], [ 0, %27 ], [ 0, %38 ], !dbg !5099
  ret i32 %72, !dbg !5100
}

; Function Attrs: nounwind
declare i32 @fgetc(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @fread(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @ferror(%struct._IO_FILE* nocapture) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32) local_unnamed_addr #7 !dbg !5101 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5106, metadata !DIExpression()), !dbg !5109
  call void @llvm.dbg.value(metadata i8 1, metadata !5107, metadata !DIExpression()), !dbg !5110
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #12, !dbg !5111
  call void @llvm.dbg.value(metadata i8* %2, metadata !5108, metadata !DIExpression()), !dbg !5112
  %3 = icmp eq i8* %2, null, !dbg !5113
  br i1 %3, label %11, label %4, !dbg !5115

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.174, i64 0, i64 0)) #14, !dbg !5116
  %6 = icmp eq i32 %5, 0, !dbg !5121
  br i1 %6, label %10, label %7, !dbg !5122

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.175, i64 0, i64 0)) #14, !dbg !5123
  %9 = icmp eq i32 %8, 0, !dbg !5124
  br i1 %9, label %10, label %11, !dbg !5125

; <label>:10:                                     ; preds = %7, %4
  call void @llvm.dbg.value(metadata i8 0, metadata !5107, metadata !DIExpression()), !dbg !5110
  br label %11, !dbg !5126

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !5127
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #7 !dbg !5128 {
  %1 = tail call i8* @nl_langinfo(i32 14) #12, !dbg !5133
  call void @llvm.dbg.value(metadata i8* %1, metadata !5132, metadata !DIExpression()), !dbg !5134
  %2 = icmp eq i8* %1, null, !dbg !5135
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.178, i64 0, i64 0), i8* %1, !dbg !5137
  call void @llvm.dbg.value(metadata i8* %3, metadata !5132, metadata !DIExpression()), !dbg !5134
  %4 = load i8, i8* %3, align 1, !dbg !5138, !tbaa !838
  %5 = icmp eq i8 %4, 0, !dbg !5142
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.179, i64 0, i64 0), i8* %3, !dbg !5143
  call void @llvm.dbg.value(metadata i8* %6, metadata !5132, metadata !DIExpression()), !dbg !5134
  ret i8* %6, !dbg !5144
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i64 @freadahead(%struct._IO_FILE* nocapture readonly) local_unnamed_addr #10 !dbg !5145 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !5184, metadata !DIExpression()), !dbg !5185
  %2 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !5186
  %3 = load i8*, i8** %2, align 8, !dbg !5186, !tbaa !1095
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !5188
  %5 = load i8*, i8** %4, align 8, !dbg !5188, !tbaa !4764
  %6 = icmp ugt i8* %3, %5, !dbg !5189
  br i1 %6, label %30, label %7, !dbg !5190

; <label>:7:                                      ; preds = %1
  %8 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !5191
  %9 = bitcast i8** %8 to i64*, !dbg !5191
  %10 = load i64, i64* %9, align 8, !dbg !5191, !tbaa !1081
  %11 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !5192
  %12 = bitcast i8** %11 to i64*, !dbg !5192
  %13 = load i64, i64* %12, align 8, !dbg !5192, !tbaa !1078
  %14 = sub i64 %10, %13, !dbg !5193
  %15 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !5194
  %16 = load i32, i32* %15, align 8, !dbg !5194, !tbaa !1226
  %17 = and i32 %16, 256, !dbg !5195
  %18 = icmp eq i32 %17, 0, !dbg !5195
  br i1 %18, label %27, label %19, !dbg !5196

; <label>:19:                                     ; preds = %7
  %20 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 11, !dbg !5197
  %21 = bitcast i8** %20 to i64*, !dbg !5197
  %22 = load i64, i64* %21, align 8, !dbg !5197, !tbaa !5198
  %23 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !5199
  %24 = bitcast i8** %23 to i64*, !dbg !5199
  %25 = load i64, i64* %24, align 8, !dbg !5199, !tbaa !4835
  %26 = sub i64 %22, %25, !dbg !5200
  br label %27, !dbg !5196

; <label>:27:                                     ; preds = %7, %19
  %28 = phi i64 [ %26, %19 ], [ 0, %7 ], !dbg !5196
  %29 = add nsw i64 %14, %28, !dbg !5201
  br label %30, !dbg !5202

; <label>:30:                                     ; preds = %1, %27
  %31 = phi i64 [ %29, %27 ], [ 0, %1 ], !dbg !5203
  ret i64 %31, !dbg !5204
}

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
attributes #10 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nounwind }
attributes #13 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nounwind readonly }
attributes #15 = { noreturn nounwind }
attributes #16 = { noreturn }
attributes #17 = { nounwind readnone }
attributes #18 = { cold }

!llvm.dbg.cu = !{!2, !122, !199, !205, !213, !285, !288, !291, !220, !227, !297, !278, !305, !316, !318, !320, !322, !324, !326, !329, !331, !334, !336, !338, !340, !729}
!llvm.ident = !{!731, !731, !731, !731, !731, !731, !731, !731, !731, !731, !731, !731, !731, !731, !731, !731, !731, !731, !731, !731, !731, !731, !731, !731, !731, !731}
!llvm.module.flags = !{!732, !733, !734, !735, !736}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "operating_mode", scope: !2, file: !3, line: 87, type: !5, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !40, globals: !49)
!3 = !DIFile(filename: "src/cut.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4 = !{!5, !11, !17, !31}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "operating_mode", file: !3, line: 76, baseType: !6, size: 32, elements: !7)
!6 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!7 = !{!8, !9, !10}
!8 = !DIEnumerator(name: "undefined_mode", value: 0, isUnsigned: true)
!9 = !DIEnumerator(name: "byte_mode", value: 1, isUnsigned: true)
!10 = !DIEnumerator(name: "field_mode", value: 2, isUnsigned: true)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !12, line: 33, baseType: !6, size: 32, elements: !13)
!12 = !DIFile(filename: "src/set-fields.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!13 = !{!14, !15, !16}
!14 = !DIEnumerator(name: "SETFLD_ALLOW_DASH", value: 1, isUnsigned: true)
!15 = !DIEnumerator(name: "SETFLD_COMPLEMENT", value: 2, isUnsigned: true)
!16 = !DIEnumerator(name: "SETFLD_ERRMSG_USE_POS", value: 4, isUnsigned: true)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !18, line: 32, baseType: !6, size: 32, elements: !19)
!18 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!19 = !{!20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30}
!20 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!21 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!22 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!23 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!24 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!25 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!26 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!27 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!28 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!29 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!30 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!31 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !32, line: 45, baseType: !6, size: 32, elements: !33)
!32 = !DIFile(filename: "./lib/fadvise.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!33 = !{!34, !35, !36, !37, !38, !39}
!34 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0, isUnsigned: true)
!35 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2, isUnsigned: true)
!36 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5, isUnsigned: true)
!37 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4, isUnsigned: true)
!38 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3, isUnsigned: true)
!39 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1, isUnsigned: true)
!40 = !{!41, !43, !44, !45, !46}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !47, line: 62, baseType: !48)
!47 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!48 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!49 = !{!50, !0, !68, !70, !72, !74, !76, !78, !80, !82, !98, !100, !111, !113}
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(name: "dummy", scope: !52, file: !3, line: 586, type: !65, isLocal: true, isDefinition: true)
!52 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 480, type: !53, isLocal: false, isDefinition: true, scopeLine: 481, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !57)
!53 = !DISubroutineType(types: !54)
!54 = !{!55, !55, !56}
!55 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!57 = !{!58, !59, !60, !61, !63, !64}
!58 = !DILocalVariable(name: "argc", arg: 1, scope: !52, file: !3, line: 480, type: !55)
!59 = !DILocalVariable(name: "argv", arg: 2, scope: !52, file: !3, line: 480, type: !56)
!60 = !DILocalVariable(name: "optc", scope: !52, file: !3, line: 482, type: !55)
!61 = !DILocalVariable(name: "ok", scope: !52, file: !3, line: 483, type: !62)
!62 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!63 = !DILocalVariable(name: "delim_specified", scope: !52, file: !3, line: 484, type: !62)
!64 = !DILocalVariable(name: "spec_list_string", scope: !52, file: !3, line: 485, type: !41)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 16, elements: !66)
!66 = !{!67}
!67 = !DISubrange(count: 2)
!68 = !DIGlobalVariableExpression(var: !69, expr: !DIExpression())
!69 = distinct !DIGlobalVariable(name: "suppress_non_delimited", scope: !2, file: !3, line: 92, type: !62, isLocal: true, isDefinition: true)
!70 = !DIGlobalVariableExpression(var: !71, expr: !DIExpression())
!71 = distinct !DIGlobalVariable(name: "complement", scope: !2, file: !3, line: 96, type: !62, isLocal: true, isDefinition: true)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(name: "delim", scope: !2, file: !3, line: 99, type: !45, isLocal: true, isDefinition: true)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(name: "output_delimiter_specified", scope: !2, file: !3, line: 105, type: !62, isLocal: true, isDefinition: true)
!76 = !DIGlobalVariableExpression(var: !77, expr: !DIExpression())
!77 = distinct !DIGlobalVariable(name: "output_delimiter_length", scope: !2, file: !3, line: 108, type: !46, isLocal: true, isDefinition: true)
!78 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression())
!79 = distinct !DIGlobalVariable(name: "output_delimiter_string", scope: !2, file: !3, line: 112, type: !41, isLocal: true, isDefinition: true)
!80 = !DIGlobalVariableExpression(var: !81, expr: !DIExpression())
!81 = distinct !DIGlobalVariable(name: "have_read_stdin", scope: !2, file: !3, line: 115, type: !62, isLocal: true, isDefinition: true)
!82 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression())
!83 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 125, type: !84, isLocal: true, isDefinition: true)
!84 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 2816, elements: !96)
!85 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !86)
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !87, line: 50, size: 256, elements: !88)
!87 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!88 = !{!89, !92, !93, !95}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !86, file: !87, line: 52, baseType: !90, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !86, file: !87, line: 55, baseType: !55, size: 32, offset: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !86, file: !87, line: 56, baseType: !94, size: 64, offset: 128)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !86, file: !87, line: 57, baseType: !55, size: 32, offset: 192)
!96 = !{!97}
!97 = !DISubrange(count: 11)
!98 = !DIGlobalVariableExpression(var: !99, expr: !DIExpression())
!99 = distinct !DIGlobalVariable(name: "line_delim", scope: !2, file: !3, line: 102, type: !45, isLocal: true, isDefinition: true)
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression())
!101 = distinct !DIGlobalVariable(name: "current_rp", scope: !2, file: !3, line: 62, type: !102, isLocal: true, isDefinition: true)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "field_range_pair", file: !12, line: 20, size: 128, elements: !104)
!104 = !{!105, !110}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "lo", scope: !103, file: !12, line: 22, baseType: !106, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !107, line: 102, baseType: !108)
!107 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !109, line: 72, baseType: !48)
!109 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!110 = !DIDerivedType(tag: DW_TAG_member, name: "hi", scope: !103, file: !12, line: 23, baseType: !106, size: 64, offset: 64)
!111 = !DIGlobalVariableExpression(var: !112, expr: !DIExpression())
!112 = distinct !DIGlobalVariable(name: "field_1_buffer", scope: !2, file: !3, line: 71, type: !41, isLocal: true, isDefinition: true)
!113 = !DIGlobalVariableExpression(var: !114, expr: !DIExpression())
!114 = distinct !DIGlobalVariable(name: "field_1_bufsize", scope: !2, file: !3, line: 74, type: !46, isLocal: true, isDefinition: true)
!115 = !DIGlobalVariableExpression(var: !69, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!116 = !DIGlobalVariableExpression(var: !81, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!117 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!118 = !DIGlobalVariableExpression(var: !99, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 18446744073709551606, DW_OP_mul, DW_OP_constu, 10, DW_OP_plus, DW_OP_stack_value))
!119 = !DIGlobalVariableExpression(var: !71, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!120 = !DIGlobalVariableExpression(var: !121, expr: !DIExpression())
!121 = distinct !DIGlobalVariable(name: "n_frp", scope: !122, file: !123, line: 31, type: !46, isLocal: false, isDefinition: true)
!122 = distinct !DICompileUnit(language: DW_LANG_C99, file: !123, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !124, retainedTypes: !153, globals: !162)
!123 = !DIFile(filename: "src/set-fields.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!124 = !{!11, !125, !140}
!125 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !126, line: 46, baseType: !6, size: 32, elements: !127)
!126 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!127 = !{!128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139}
!128 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!129 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!130 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!131 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!132 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!133 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!134 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!135 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!136 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!137 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!138 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!139 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!140 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !142, file: !141, line: 186, baseType: !6, size: 32, elements: !151)
!141 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!142 = distinct !DISubprogram(name: "x2nrealloc", scope: !141, file: !141, line: 174, type: !143, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !122, retainedNodes: !146)
!143 = !DISubroutineType(types: !144)
!144 = !{!43, !43, !145, !46}
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!146 = !{!147, !148, !149, !150}
!147 = !DILocalVariable(name: "p", arg: 1, scope: !142, file: !141, line: 174, type: !43)
!148 = !DILocalVariable(name: "pn", arg: 2, scope: !142, file: !141, line: 174, type: !145)
!149 = !DILocalVariable(name: "s", arg: 3, scope: !142, file: !141, line: 174, type: !46)
!150 = !DILocalVariable(name: "n", scope: !142, file: !141, line: 176, type: !46)
!151 = !{!152}
!152 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!153 = !{!55, !154, !6, !155, !43, !106, !46, !156}
!154 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !158)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "field_range_pair", file: !12, line: 20, size: 128, elements: !159)
!159 = !{!160, !161}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "lo", scope: !158, file: !12, line: 22, baseType: !106, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "hi", scope: !158, file: !12, line: 23, baseType: !106, size: 64, offset: 64)
!162 = !{!163, !192, !120, !195}
!163 = !DIGlobalVariableExpression(var: !164, expr: !DIExpression())
!164 = distinct !DIGlobalVariable(name: "num_start", scope: !165, file: !123, line: 239, type: !90, isLocal: true, isDefinition: true)
!165 = distinct !DISubprogram(name: "set_fields", scope: !123, file: !123, line: 138, type: !166, isLocal: false, isDefinition: true, scopeLine: 139, flags: DIFlagPrototyped, isOptimized: true, unit: !122, retainedNodes: !168)
!166 = !DISubroutineType(types: !167)
!167 = !{null, !90, !6}
!168 = !{!169, !170, !171, !172, !173, !174, !175, !176, !177, !185, !186, !188}
!169 = !DILocalVariable(name: "fieldstr", arg: 1, scope: !165, file: !123, line: 138, type: !90)
!170 = !DILocalVariable(name: "options", arg: 2, scope: !165, file: !123, line: 138, type: !6)
!171 = !DILocalVariable(name: "initial", scope: !165, file: !123, line: 140, type: !106)
!172 = !DILocalVariable(name: "value", scope: !165, file: !123, line: 141, type: !106)
!173 = !DILocalVariable(name: "lhs_specified", scope: !165, file: !123, line: 142, type: !62)
!174 = !DILocalVariable(name: "rhs_specified", scope: !165, file: !123, line: 143, type: !62)
!175 = !DILocalVariable(name: "dash_found", scope: !165, file: !123, line: 144, type: !62)
!176 = !DILocalVariable(name: "in_digits", scope: !165, file: !123, line: 146, type: !62)
!177 = !DILocalVariable(name: "len", scope: !178, file: !123, line: 256, type: !46)
!178 = distinct !DILexicalBlock(scope: !179, file: !123, line: 252, column: 13)
!179 = distinct !DILexicalBlock(scope: !180, file: !123, line: 250, column: 15)
!180 = distinct !DILexicalBlock(scope: !181, file: !123, line: 236, column: 9)
!181 = distinct !DILexicalBlock(scope: !182, file: !123, line: 235, column: 16)
!182 = distinct !DILexicalBlock(scope: !183, file: !123, line: 181, column: 16)
!183 = distinct !DILexicalBlock(scope: !184, file: !123, line: 161, column: 11)
!184 = distinct !DILexicalBlock(scope: !165, file: !123, line: 160, column: 5)
!185 = !DILocalVariable(name: "bad_num", scope: !178, file: !123, line: 257, type: !41)
!186 = !DILocalVariable(name: "i", scope: !187, file: !123, line: 286, type: !46)
!187 = distinct !DILexicalBlock(scope: !165, file: !123, line: 286, column: 3)
!188 = !DILocalVariable(name: "j", scope: !189, file: !123, line: 288, type: !46)
!189 = distinct !DILexicalBlock(scope: !190, file: !123, line: 288, column: 7)
!190 = distinct !DILexicalBlock(scope: !191, file: !123, line: 287, column: 5)
!191 = distinct !DILexicalBlock(scope: !187, file: !123, line: 286, column: 3)
!192 = !DIGlobalVariableExpression(var: !193, expr: !DIExpression())
!193 = distinct !DIGlobalVariable(name: "frp", scope: !122, file: !123, line: 28, type: !194, isLocal: false, isDefinition: true)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!195 = !DIGlobalVariableExpression(var: !196, expr: !DIExpression())
!196 = distinct !DIGlobalVariable(name: "n_frp_allocated", scope: !122, file: !123, line: 34, type: !46, isLocal: true, isDefinition: true)
!197 = !DIGlobalVariableExpression(var: !198, expr: !DIExpression())
!198 = distinct !DIGlobalVariable(name: "Version", scope: !199, file: !200, line: 2, type: !90, isLocal: false, isDefinition: true)
!199 = distinct !DICompileUnit(language: DW_LANG_C99, file: !200, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !201, globals: !202)
!200 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!201 = !{}
!202 = !{!197}
!203 = !DIGlobalVariableExpression(var: !204, expr: !DIExpression())
!204 = distinct !DIGlobalVariable(name: "file_name", scope: !205, file: !210, line: 46, type: !90, isLocal: true, isDefinition: true)
!205 = distinct !DICompileUnit(language: DW_LANG_C99, file: !206, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !201, globals: !207)
!206 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!207 = !{!203, !208}
!208 = !DIGlobalVariableExpression(var: !209, expr: !DIExpression())
!209 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !205, file: !210, line: 56, type: !62, isLocal: true, isDefinition: true)
!210 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!211 = !DIGlobalVariableExpression(var: !212, expr: !DIExpression())
!212 = distinct !DIGlobalVariable(name: "exit_failure", scope: !213, file: !216, line: 24, type: !217, isLocal: false, isDefinition: true)
!213 = distinct !DICompileUnit(language: DW_LANG_C99, file: !214, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !201, globals: !215)
!214 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!215 = !{!211}
!216 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!217 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !55)
!218 = !DIGlobalVariableExpression(var: !219, expr: !DIExpression())
!219 = distinct !DIGlobalVariable(name: "program_name", scope: !220, file: !224, line: 33, type: !90, isLocal: false, isDefinition: true)
!220 = distinct !DICompileUnit(language: DW_LANG_C99, file: !221, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !201, retainedTypes: !222, globals: !223)
!221 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!222 = !{!43, !41}
!223 = !{!218}
!224 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!225 = !DIGlobalVariableExpression(var: !226, expr: !DIExpression())
!226 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !227, file: !239, line: 85, type: !274, isLocal: false, isDefinition: true)
!227 = distinct !DICompileUnit(language: DW_LANG_C99, file: !228, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !229, retainedTypes: !235, globals: !236)
!228 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!229 = !{!17, !230, !125}
!230 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !18, line: 242, baseType: !6, size: 32, elements: !231)
!231 = !{!232, !233, !234}
!232 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!233 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!234 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!235 = !{!55, !154, !46, !41}
!236 = !{!225, !237, !244, !256, !258, !263, !270, !272}
!237 = !DIGlobalVariableExpression(var: !238, expr: !DIExpression())
!238 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !227, file: !239, line: 101, type: !240, isLocal: false, isDefinition: true)
!239 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !241, size: 320, elements: !242)
!241 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!242 = !{!243}
!243 = !DISubrange(count: 10)
!244 = !DIGlobalVariableExpression(var: !245, expr: !DIExpression())
!245 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !227, file: !239, line: 1052, type: !246, isLocal: false, isDefinition: true)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !239, line: 65, size: 448, elements: !247)
!247 = !{!248, !249, !250, !254, !255}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !246, file: !239, line: 68, baseType: !17, size: 32)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !246, file: !239, line: 71, baseType: !55, size: 32, offset: 32)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !246, file: !239, line: 75, baseType: !251, size: 256, offset: 64)
!251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 256, elements: !252)
!252 = !{!253}
!253 = !DISubrange(count: 8)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !246, file: !239, line: 78, baseType: !90, size: 64, offset: 320)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !246, file: !239, line: 81, baseType: !90, size: 64, offset: 384)
!256 = !DIGlobalVariableExpression(var: !257, expr: !DIExpression())
!257 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !227, file: !239, line: 116, type: !246, isLocal: true, isDefinition: true)
!258 = !DIGlobalVariableExpression(var: !259, expr: !DIExpression())
!259 = distinct !DIGlobalVariable(name: "slot0", scope: !227, file: !239, line: 842, type: !260, isLocal: true, isDefinition: true)
!260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 2048, elements: !261)
!261 = !{!262}
!262 = !DISubrange(count: 256)
!263 = !DIGlobalVariableExpression(var: !264, expr: !DIExpression())
!264 = distinct !DIGlobalVariable(name: "slotvec", scope: !227, file: !239, line: 845, type: !265, isLocal: true, isDefinition: true)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !239, line: 834, size: 128, elements: !267)
!267 = !{!268, !269}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !266, file: !239, line: 836, baseType: !46, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !266, file: !239, line: 837, baseType: !41, size: 64, offset: 64)
!270 = !DIGlobalVariableExpression(var: !271, expr: !DIExpression())
!271 = distinct !DIGlobalVariable(name: "nslots", scope: !227, file: !239, line: 843, type: !55, isLocal: true, isDefinition: true)
!272 = !DIGlobalVariableExpression(var: !273, expr: !DIExpression())
!273 = distinct !DIGlobalVariable(name: "slotvec0", scope: !227, file: !239, line: 844, type: !266, isLocal: true, isDefinition: true)
!274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !275, size: 704, elements: !96)
!275 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !90)
!276 = !DIGlobalVariableExpression(var: !277, expr: !DIExpression())
!277 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !278, file: !281, line: 26, type: !282, isLocal: false, isDefinition: true)
!278 = distinct !DICompileUnit(language: DW_LANG_C99, file: !279, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !201, globals: !280)
!279 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!280 = !{!276}
!281 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 376, elements: !283)
!283 = !{!284}
!284 = !DISubrange(count: 47)
!285 = distinct !DICompileUnit(language: DW_LANG_C99, file: !286, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !287)
!286 = !DIFile(filename: "./lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!287 = !{!31}
!288 = distinct !DICompileUnit(language: DW_LANG_C99, file: !289, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !201, retainedTypes: !290)
!289 = !DIFile(filename: "./lib/getndelim2.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!290 = !{!44}
!291 = distinct !DICompileUnit(language: DW_LANG_C99, file: !292, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !201, retainedTypes: !293)
!292 = !DIFile(filename: "./lib/memchr2.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!293 = !{!45, !294, !43, !295}
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !107, line: 90, baseType: !48)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!297 = distinct !DICompileUnit(language: DW_LANG_C99, file: !298, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !299, retainedTypes: !304)
!298 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!299 = !{!300}
!300 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !301, line: 41, baseType: !6, size: 32, elements: !302)
!301 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!302 = !{!303}
!303 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2018, isUnsigned: true)
!304 = !{!43}
!305 = distinct !DICompileUnit(language: DW_LANG_C99, file: !306, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !307, retainedTypes: !315)
!306 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!307 = !{!308}
!308 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !309, file: !141, line: 186, baseType: !6, size: 32, elements: !151)
!309 = distinct !DISubprogram(name: "x2nrealloc", scope: !141, file: !141, line: 174, type: !143, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !305, retainedNodes: !310)
!310 = !{!311, !312, !313, !314}
!311 = !DILocalVariable(name: "p", arg: 1, scope: !309, file: !141, line: 174, type: !43)
!312 = !DILocalVariable(name: "pn", arg: 2, scope: !309, file: !141, line: 174, type: !145)
!313 = !DILocalVariable(name: "s", arg: 3, scope: !309, file: !141, line: 174, type: !46)
!314 = !DILocalVariable(name: "n", scope: !309, file: !141, line: 176, type: !46)
!315 = !{!46, !41, !43}
!316 = distinct !DICompileUnit(language: DW_LANG_C99, file: !317, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !201)
!317 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!318 = distinct !DICompileUnit(language: DW_LANG_C99, file: !319, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !201)
!319 = !DIFile(filename: "./lib/xstrndup.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!320 = distinct !DICompileUnit(language: DW_LANG_C99, file: !321, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !201, retainedTypes: !304)
!321 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!322 = distinct !DICompileUnit(language: DW_LANG_C99, file: !323, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !201)
!323 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!324 = distinct !DICompileUnit(language: DW_LANG_C99, file: !325, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !201, retainedTypes: !304)
!325 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!326 = distinct !DICompileUnit(language: DW_LANG_C99, file: !327, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !201, retainedTypes: !328)
!327 = !DIFile(filename: "./lib/freadptr.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!328 = !{!90}
!329 = distinct !DICompileUnit(language: DW_LANG_C99, file: !330, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !201, retainedTypes: !304)
!330 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!331 = distinct !DICompileUnit(language: DW_LANG_C99, file: !332, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !201, retainedTypes: !333)
!332 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!333 = !{!46}
!334 = distinct !DICompileUnit(language: DW_LANG_C99, file: !335, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !201)
!335 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!336 = distinct !DICompileUnit(language: DW_LANG_C99, file: !337, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !201, retainedTypes: !304)
!337 = !DIFile(filename: "./lib/freadseek.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!338 = distinct !DICompileUnit(language: DW_LANG_C99, file: !339, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !201)
!339 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!340 = distinct !DICompileUnit(language: DW_LANG_C99, file: !341, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !342, retainedTypes: !304)
!341 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!342 = !{!343}
!343 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !344, line: 41, baseType: !6, size: 32, elements: !345)
!344 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!345 = !{!346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728}
!346 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!347 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!348 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!349 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!350 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!351 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!352 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!353 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!354 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!355 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!356 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!357 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!358 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!359 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!360 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!361 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!362 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!363 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!364 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!365 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!366 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!367 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!368 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!369 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!370 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!371 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!372 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!373 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!374 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!375 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!376 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!377 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!378 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!379 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!380 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!381 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!382 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!383 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!384 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!385 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!386 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!387 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!388 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!389 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!390 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!391 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!392 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!393 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!394 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!395 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!396 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!400 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!405 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!406 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!408 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!409 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!410 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!411 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!412 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!413 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!414 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!415 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!416 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!417 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!418 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!419 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!420 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!421 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!435 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!454 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!456 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!457 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!458 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!459 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!460 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!461 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!462 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!463 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!464 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!465 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!466 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!467 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!468 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!469 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!473 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!474 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!475 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!476 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!477 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!478 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!479 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!481 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!482 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!483 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!484 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!485 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!486 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!487 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!488 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!489 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!490 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!491 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!492 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!493 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!494 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!495 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!496 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!497 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!498 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!499 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!500 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!501 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!502 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!503 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!504 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!505 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!506 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!507 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!508 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!509 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!510 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!511 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!512 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!513 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!514 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!515 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!516 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!517 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!519 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!520 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!521 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!522 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!523 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!524 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!525 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!526 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!527 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!528 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!529 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!530 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!531 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!532 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!535 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!536 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!537 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!540 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!541 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!542 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!543 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!544 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!545 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!546 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!547 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!549 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!550 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!551 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!552 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!553 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!559 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!560 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!567 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!568 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!571 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!572 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!573 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!574 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!575 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!576 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!577 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!578 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!579 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!580 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!581 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!582 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!583 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!584 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!585 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!586 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!587 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!588 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!589 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!590 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!591 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!592 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!593 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!594 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!595 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!596 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!597 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!598 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!599 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!600 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!601 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!602 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!603 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!604 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!605 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!606 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!607 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!608 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!609 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!610 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!611 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!612 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!613 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!614 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!615 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!616 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!617 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!618 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!619 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!620 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!621 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!622 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!623 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!624 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!625 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!626 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!627 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!628 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!629 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!630 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!631 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!632 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!633 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!634 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!635 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!636 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!637 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!638 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!639 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!640 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!641 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!642 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!643 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!644 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!645 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!646 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!647 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!648 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!649 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!650 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!651 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!652 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!653 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!654 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!655 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!656 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!657 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!658 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!659 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!660 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!661 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!662 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!663 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!664 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!665 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!666 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!667 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!668 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!669 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!670 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!671 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!672 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!673 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!674 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!675 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!676 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!677 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!678 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!679 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!680 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!681 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!682 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!683 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!684 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!685 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!686 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!687 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!688 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!689 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!690 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!691 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!692 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!693 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!694 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!695 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!696 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!697 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!698 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!699 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!700 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!701 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!702 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!703 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!704 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!705 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!706 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!707 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!708 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!709 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!710 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!711 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!712 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!713 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!714 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!715 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!716 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!717 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!718 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!719 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!720 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!721 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!722 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!723 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!724 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!725 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!726 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!727 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!728 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!729 = distinct !DICompileUnit(language: DW_LANG_C99, file: !730, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !201)
!730 = !DIFile(filename: "./lib/freadahead.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!731 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!732 = !{i32 2, !"Dwarf Version", i32 4}
!733 = !{i32 2, !"Debug Info Version", i32 3}
!734 = !{i32 1, !"wchar_size", i32 4}
!735 = !{i32 7, !"PIC Level", i32 2}
!736 = !{i32 7, !"PIE Level", i32 2}
!737 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 141, type: !738, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, retainedNodes: !740)
!738 = !DISubroutineType(types: !739)
!739 = !{null, !55}
!740 = !{!741}
!741 = !DILocalVariable(name: "status", arg: 1, scope: !737, file: !3, line: 141, type: !55)
!742 = !DILocalVariable(name: "infomap", scope: !743, file: !744, line: 632, type: !758)
!743 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !744, file: !744, line: 630, type: !745, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !747)
!744 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!745 = !DISubroutineType(types: !746)
!746 = !{null, !90}
!747 = !{!748, !742, !749, !750, !757}
!748 = !DILocalVariable(name: "program", arg: 1, scope: !743, file: !744, line: 630, type: !90)
!749 = !DILocalVariable(name: "node", scope: !743, file: !744, line: 642, type: !90)
!750 = !DILocalVariable(name: "map_prog", scope: !743, file: !744, line: 643, type: !751)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !753)
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !743, file: !744, line: 632, size: 128, elements: !754)
!754 = !{!755, !756}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !753, file: !744, line: 632, baseType: !90, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !753, file: !744, line: 632, baseType: !90, size: 64, offset: 64)
!757 = !DILocalVariable(name: "lc_messages", scope: !743, file: !744, line: 655, type: !90)
!758 = !DICompositeType(tag: DW_TAG_array_type, baseType: !752, size: 896, elements: !759)
!759 = !{!760}
!760 = !DISubrange(count: 7)
!761 = !DILocation(line: 632, column: 67, scope: !743, inlinedAt: !762)
!762 = distinct !DILocation(line: 197, column: 7, scope: !763)
!763 = distinct !DILexicalBlock(scope: !764, file: !3, line: 146, column: 5)
!764 = distinct !DILexicalBlock(scope: !737, file: !3, line: 143, column: 7)
!765 = !DILocation(line: 141, column: 12, scope: !737)
!766 = !DILocation(line: 143, column: 14, scope: !764)
!767 = !DILocation(line: 143, column: 7, scope: !737)
!768 = !DILocation(line: 144, column: 5, scope: !769)
!769 = distinct !DILexicalBlock(scope: !764, file: !3, line: 144, column: 5)
!770 = !{!771, !771, i64 0}
!771 = !{!"any pointer", !772, i64 0}
!772 = !{!"omnipotent char", !773, i64 0}
!773 = !{!"Simple C/C++ TBAA"}
!774 = !DILocation(line: 147, column: 7, scope: !763)
!775 = !DILocation(line: 151, column: 7, scope: !763)
!776 = !DILocation(line: 580, column: 3, scope: !777, inlinedAt: !780)
!777 = distinct !DISubprogram(name: "emit_stdin_note", scope: !744, file: !744, line: 578, type: !778, isLocal: true, isDefinition: true, scopeLine: 579, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !201)
!778 = !DISubroutineType(types: !779)
!779 = !{null}
!780 = distinct !DILocation(line: 155, column: 7, scope: !763)
!781 = !DILocation(line: 587, column: 3, scope: !782, inlinedAt: !783)
!782 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !744, file: !744, line: 585, type: !778, isLocal: true, isDefinition: true, scopeLine: 586, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !201)
!783 = distinct !DILocation(line: 156, column: 7, scope: !763)
!784 = !DILocation(line: 158, column: 7, scope: !763)
!785 = !DILocation(line: 163, column: 7, scope: !763)
!786 = !DILocation(line: 169, column: 7, scope: !763)
!787 = !DILocation(line: 173, column: 7, scope: !763)
!788 = !DILocation(line: 178, column: 7, scope: !763)
!789 = !DILocation(line: 181, column: 7, scope: !763)
!790 = !DILocation(line: 182, column: 7, scope: !763)
!791 = !DILocation(line: 183, column: 7, scope: !763)
!792 = !DILocation(line: 189, column: 7, scope: !763)
!793 = !DILocation(line: 632, column: 3, scope: !743, inlinedAt: !762)
!794 = !DILocation(line: 643, column: 36, scope: !743, inlinedAt: !762)
!795 = !DILocation(line: 643, column: 25, scope: !743, inlinedAt: !762)
!796 = !DILocation(line: 645, column: 33, scope: !743, inlinedAt: !762)
!797 = !DILocation(line: 645, column: 3, scope: !743, inlinedAt: !762)
!798 = !DILocation(line: 646, column: 13, scope: !743, inlinedAt: !762)
!799 = !DILocation(line: 645, column: 20, scope: !743, inlinedAt: !762)
!800 = !{!801, !771, i64 0}
!801 = !{!"infomap", !771, i64 0, !771, i64 8}
!802 = !DILocation(line: 645, column: 10, scope: !743, inlinedAt: !762)
!803 = !DILocation(line: 645, column: 28, scope: !743, inlinedAt: !762)
!804 = distinct !{!804, !805, !806}
!805 = !DILocation(line: 645, column: 3, scope: !743)
!806 = !DILocation(line: 646, column: 13, scope: !743)
!807 = !DILocation(line: 648, column: 17, scope: !808, inlinedAt: !762)
!808 = distinct !DILexicalBlock(scope: !743, file: !744, line: 648, column: 7)
!809 = !{!801, !771, i64 8}
!810 = !DILocation(line: 648, column: 7, scope: !808, inlinedAt: !762)
!811 = !DILocation(line: 648, column: 7, scope: !743, inlinedAt: !762)
!812 = !DILocation(line: 642, column: 15, scope: !743, inlinedAt: !762)
!813 = !DILocation(line: 651, column: 3, scope: !743, inlinedAt: !762)
!814 = !DILocation(line: 655, column: 29, scope: !743, inlinedAt: !762)
!815 = !DILocation(line: 655, column: 15, scope: !743, inlinedAt: !762)
!816 = !DILocation(line: 656, column: 7, scope: !817, inlinedAt: !762)
!817 = distinct !DILexicalBlock(scope: !743, file: !744, line: 656, column: 7)
!818 = !DILocation(line: 656, column: 19, scope: !817, inlinedAt: !762)
!819 = !DILocation(line: 656, column: 22, scope: !817, inlinedAt: !762)
!820 = !DILocation(line: 656, column: 7, scope: !743, inlinedAt: !762)
!821 = !DILocation(line: 662, column: 7, scope: !822, inlinedAt: !762)
!822 = distinct !DILexicalBlock(scope: !817, file: !744, line: 657, column: 5)
!823 = !DILocation(line: 664, column: 5, scope: !822, inlinedAt: !762)
!824 = !DILocation(line: 665, column: 3, scope: !743, inlinedAt: !762)
!825 = !DILocation(line: 667, column: 3, scope: !743, inlinedAt: !762)
!826 = !DILocation(line: 669, column: 1, scope: !743, inlinedAt: !762)
!827 = !DILocation(line: 199, column: 3, scope: !737)
!828 = !DILocation(line: 480, column: 11, scope: !52)
!829 = !DILocation(line: 480, column: 24, scope: !52)
!830 = !DILocation(line: 484, column: 8, scope: !52)
!831 = !DILocation(line: 488, column: 21, scope: !52)
!832 = !DILocation(line: 488, column: 3, scope: !52)
!833 = !DILocation(line: 489, column: 3, scope: !52)
!834 = !DILocation(line: 490, column: 3, scope: !52)
!835 = !DILocation(line: 491, column: 3, scope: !52)
!836 = !DILocation(line: 493, column: 3, scope: !52)
!837 = !DILocation(line: 495, column: 18, scope: !52)
!838 = !{!772, !772, i64 0}
!839 = !DILocation(line: 500, column: 9, scope: !52)
!840 = !DILocation(line: 503, column: 3, scope: !52)
!841 = !DILocation(line: 485, column: 9, scope: !52)
!842 = !DILocation(line: 503, column: 18, scope: !52)
!843 = !DILocation(line: 482, column: 7, scope: !52)
!844 = distinct !{!844, !840, !845}
!845 = !DILocation(line: 564, column: 5, scope: !52)
!846 = !DILocation(line: 510, column: 15, scope: !847)
!847 = distinct !DILexicalBlock(scope: !848, file: !3, line: 510, column: 15)
!848 = distinct !DILexicalBlock(scope: !849, file: !3, line: 506, column: 9)
!849 = distinct !DILexicalBlock(scope: !52, file: !3, line: 504, column: 5)
!850 = !DILocation(line: 510, column: 30, scope: !847)
!851 = !DILocation(line: 510, column: 15, scope: !848)
!852 = !DILocation(line: 511, column: 13, scope: !853)
!853 = distinct !DILexicalBlock(scope: !847, file: !3, line: 511, column: 13)
!854 = !DILocation(line: 512, column: 26, scope: !848)
!855 = !DILocation(line: 513, column: 30, scope: !848)
!856 = !DILocation(line: 514, column: 11, scope: !848)
!857 = !DILocation(line: 518, column: 15, scope: !858)
!858 = distinct !DILexicalBlock(scope: !848, file: !3, line: 518, column: 15)
!859 = !DILocation(line: 518, column: 30, scope: !858)
!860 = !DILocation(line: 518, column: 15, scope: !848)
!861 = !DILocation(line: 519, column: 13, scope: !862)
!862 = distinct !DILexicalBlock(scope: !858, file: !3, line: 519, column: 13)
!863 = !DILocation(line: 520, column: 26, scope: !848)
!864 = !DILocation(line: 521, column: 30, scope: !848)
!865 = !DILocation(line: 522, column: 11, scope: !848)
!866 = !DILocation(line: 527, column: 15, scope: !867)
!867 = distinct !DILexicalBlock(scope: !848, file: !3, line: 527, column: 15)
!868 = !DILocation(line: 527, column: 25, scope: !867)
!869 = !DILocation(line: 527, column: 33, scope: !867)
!870 = !DILocation(line: 527, column: 36, scope: !867)
!871 = !DILocation(line: 527, column: 46, scope: !867)
!872 = !DILocation(line: 527, column: 15, scope: !848)
!873 = !DILocation(line: 528, column: 13, scope: !874)
!874 = distinct !DILexicalBlock(scope: !867, file: !3, line: 528, column: 13)
!875 = !DILocation(line: 529, column: 17, scope: !848)
!876 = !DILocation(line: 531, column: 11, scope: !848)
!877 = !DILocation(line: 537, column: 38, scope: !848)
!878 = !DILocation(line: 537, column: 48, scope: !848)
!879 = !DILocation(line: 538, column: 44, scope: !848)
!880 = !DILocation(line: 537, column: 35, scope: !848)
!881 = !{!882, !882, i64 0}
!882 = !{!"long", !772, i64 0}
!883 = !DILocation(line: 539, column: 37, scope: !848)
!884 = !DILocation(line: 539, column: 35, scope: !848)
!885 = !DILocation(line: 540, column: 11, scope: !848)
!886 = !DILocation(line: 547, column: 11, scope: !848)
!887 = !DILocation(line: 551, column: 11, scope: !848)
!888 = !DILocation(line: 555, column: 11, scope: !848)
!889 = !DILocation(line: 557, column: 9, scope: !848)
!890 = !DILocation(line: 559, column: 9, scope: !848)
!891 = !DILocation(line: 562, column: 11, scope: !848)
!892 = !DILocation(line: 566, column: 7, scope: !893)
!893 = distinct !DILexicalBlock(scope: !52, file: !3, line: 566, column: 7)
!894 = !DILocation(line: 566, column: 22, scope: !893)
!895 = !DILocation(line: 566, column: 7, scope: !52)
!896 = !DILocation(line: 567, column: 5, scope: !897)
!897 = distinct !DILexicalBlock(scope: !893, file: !3, line: 567, column: 5)
!898 = !DILocation(line: 569, column: 7, scope: !899)
!899 = distinct !DILexicalBlock(scope: !52, file: !3, line: 569, column: 7)
!900 = !DILocation(line: 569, column: 41, scope: !899)
!901 = !DILocation(line: 569, column: 23, scope: !899)
!902 = !DILocation(line: 570, column: 5, scope: !903)
!903 = distinct !DILexicalBlock(scope: !899, file: !3, line: 570, column: 5)
!904 = !DILocation(line: 573, column: 30, scope: !905)
!905 = distinct !DILexicalBlock(scope: !52, file: !3, line: 573, column: 7)
!906 = !DILocation(line: 574, column: 5, scope: !907)
!907 = distinct !DILexicalBlock(scope: !905, file: !3, line: 574, column: 5)
!908 = !DILocation(line: 578, column: 33, scope: !52)
!909 = !DILocation(line: 578, column: 17, scope: !52)
!910 = !DILocation(line: 579, column: 18, scope: !52)
!911 = !DILocation(line: 579, column: 15, scope: !52)
!912 = !DILocation(line: 577, column: 3, scope: !52)
!913 = !DILocation(line: 581, column: 7, scope: !52)
!914 = !DILocation(line: 582, column: 11, scope: !915)
!915 = distinct !DILexicalBlock(scope: !52, file: !3, line: 581, column: 7)
!916 = !DILocation(line: 582, column: 5, scope: !915)
!917 = !DILocation(line: 584, column: 7, scope: !918)
!918 = distinct !DILexicalBlock(scope: !52, file: !3, line: 584, column: 7)
!919 = !DILocation(line: 584, column: 31, scope: !918)
!920 = !DILocation(line: 584, column: 7, scope: !52)
!921 = !DILocation(line: 587, column: 18, scope: !922)
!922 = distinct !DILexicalBlock(scope: !918, file: !3, line: 585, column: 5)
!923 = !DILocation(line: 587, column: 16, scope: !922)
!924 = !DILocation(line: 588, column: 16, scope: !922)
!925 = !DILocation(line: 589, column: 31, scope: !922)
!926 = !DILocation(line: 590, column: 31, scope: !922)
!927 = !DILocation(line: 591, column: 5, scope: !922)
!928 = !DILocation(line: 593, column: 7, scope: !929)
!929 = distinct !DILexicalBlock(scope: !52, file: !3, line: 593, column: 7)
!930 = !{!931, !931, i64 0}
!931 = !{!"int", !772, i64 0}
!932 = !DILocation(line: 593, column: 14, scope: !929)
!933 = !DILocation(line: 593, column: 7, scope: !52)
!934 = !DILocation(line: 483, column: 8, scope: !52)
!935 = !DILocation(line: 596, column: 28, scope: !936)
!936 = distinct !DILexicalBlock(scope: !937, file: !3, line: 596, column: 5)
!937 = distinct !DILexicalBlock(scope: !929, file: !3, line: 596, column: 5)
!938 = !DILocation(line: 596, column: 5, scope: !937)
!939 = !DILocation(line: 594, column: 10, scope: !929)
!940 = !DILocation(line: 594, column: 8, scope: !929)
!941 = !DILocation(line: 594, column: 5, scope: !929)
!942 = !DILocation(line: 597, column: 23, scope: !936)
!943 = !DILocation(line: 597, column: 13, scope: !936)
!944 = !DILocation(line: 597, column: 10, scope: !936)
!945 = !DILocation(line: 596, column: 42, scope: !936)
!946 = distinct !{!946, !938, !947}
!947 = !DILocation(line: 597, column: 35, scope: !937)
!948 = !DILocation(line: 0, scope: !937)
!949 = !DILocation(line: 600, column: 23, scope: !950)
!950 = distinct !DILexicalBlock(scope: !52, file: !3, line: 600, column: 7)
!951 = !DILocation(line: 600, column: 34, scope: !950)
!952 = !DILocation(line: 600, column: 26, scope: !950)
!953 = !DILocation(line: 600, column: 41, scope: !950)
!954 = !DILocation(line: 600, column: 7, scope: !52)
!955 = !DILocation(line: 602, column: 17, scope: !956)
!956 = distinct !DILexicalBlock(scope: !950, file: !3, line: 601, column: 5)
!957 = !DILocation(line: 602, column: 7, scope: !956)
!958 = !DILocation(line: 604, column: 5, scope: !956)
!959 = !DILocation(line: 0, scope: !929)
!960 = !DILocation(line: 608, column: 10, scope: !52)
!961 = !DILocation(line: 609, column: 1, scope: !52)
!962 = distinct !DISubprogram(name: "cut_file", scope: !3, file: !3, line: 441, type: !963, isLocal: true, isDefinition: true, scopeLine: 442, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !965)
!963 = !DISubroutineType(types: !964)
!964 = !{!62, !90}
!965 = !{!966, !967}
!966 = !DILocalVariable(name: "file", arg: 1, scope: !962, file: !3, line: 441, type: !90)
!967 = !DILocalVariable(name: "stream", scope: !962, file: !3, line: 443, type: !968)
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!969 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !970, line: 7, baseType: !971)
!970 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !972, line: 49, size: 1728, elements: !973)
!972 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!973 = !{!974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !989, !991, !992, !993, !996, !997, !999, !1003, !1006, !1008, !1011, !1014, !1015, !1016, !1017, !1018}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !971, file: !972, line: 51, baseType: !55, size: 32)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !971, file: !972, line: 54, baseType: !41, size: 64, offset: 64)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !971, file: !972, line: 55, baseType: !41, size: 64, offset: 128)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !971, file: !972, line: 56, baseType: !41, size: 64, offset: 192)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !971, file: !972, line: 57, baseType: !41, size: 64, offset: 256)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !971, file: !972, line: 58, baseType: !41, size: 64, offset: 320)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !971, file: !972, line: 59, baseType: !41, size: 64, offset: 384)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !971, file: !972, line: 60, baseType: !41, size: 64, offset: 448)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !971, file: !972, line: 61, baseType: !41, size: 64, offset: 512)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !971, file: !972, line: 64, baseType: !41, size: 64, offset: 576)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !971, file: !972, line: 65, baseType: !41, size: 64, offset: 640)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !971, file: !972, line: 66, baseType: !41, size: 64, offset: 704)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !971, file: !972, line: 68, baseType: !987, size: 64, offset: 768)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !972, line: 36, flags: DIFlagFwdDecl)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !971, file: !972, line: 70, baseType: !990, size: 64, offset: 832)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !971, file: !972, line: 72, baseType: !55, size: 32, offset: 896)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !971, file: !972, line: 73, baseType: !55, size: 32, offset: 928)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !971, file: !972, line: 74, baseType: !994, size: 64, offset: 960)
!994 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !109, line: 150, baseType: !995)
!995 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !971, file: !972, line: 77, baseType: !154, size: 16, offset: 1024)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !971, file: !972, line: 78, baseType: !998, size: 8, offset: 1040)
!998 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !971, file: !972, line: 79, baseType: !1000, size: 8, offset: 1048)
!1000 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 8, elements: !1001)
!1001 = !{!1002}
!1002 = !DISubrange(count: 1)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !971, file: !972, line: 81, baseType: !1004, size: 64, offset: 1088)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !972, line: 43, baseType: null)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !971, file: !972, line: 89, baseType: !1007, size: 64, offset: 1152)
!1007 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !109, line: 151, baseType: !995)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !971, file: !972, line: 91, baseType: !1009, size: 64, offset: 1216)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !972, line: 37, flags: DIFlagFwdDecl)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !971, file: !972, line: 92, baseType: !1012, size: 64, offset: 1280)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !972, line: 38, flags: DIFlagFwdDecl)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !971, file: !972, line: 93, baseType: !990, size: 64, offset: 1344)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !971, file: !972, line: 94, baseType: !43, size: 64, offset: 1408)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !971, file: !972, line: 95, baseType: !46, size: 64, offset: 1472)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !971, file: !972, line: 96, baseType: !55, size: 32, offset: 1536)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !971, file: !972, line: 98, baseType: !1019, size: 160, offset: 1568)
!1019 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 160, elements: !1020)
!1020 = !{!1021}
!1021 = !DISubrange(count: 20)
!1022 = !DILocation(line: 441, column: 23, scope: !962)
!1023 = !DILocation(line: 445, column: 7, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !962, file: !3, line: 445, column: 7)
!1025 = !DILocation(line: 445, column: 7, scope: !962)
!1026 = !DILocation(line: 448, column: 16, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1024, file: !3, line: 446, column: 5)
!1028 = !DILocation(line: 443, column: 9, scope: !962)
!1029 = !DILocation(line: 449, column: 5, scope: !1027)
!1030 = !DILocation(line: 452, column: 16, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !1024, file: !3, line: 451, column: 5)
!1032 = !DILocation(line: 453, column: 18, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !1031, file: !3, line: 453, column: 11)
!1034 = !DILocation(line: 453, column: 11, scope: !1031)
!1035 = !DILocation(line: 455, column: 21, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1033, file: !3, line: 454, column: 9)
!1037 = !DILocation(line: 455, column: 34, scope: !1036)
!1038 = !DILocation(line: 455, column: 11, scope: !1036)
!1039 = !DILocation(line: 456, column: 11, scope: !1036)
!1040 = !DILocation(line: 0, scope: !1031)
!1041 = !DILocation(line: 460, column: 3, scope: !962)
!1042 = !DILocalVariable(name: "stream", arg: 1, scope: !1043, file: !3, line: 429, type: !968)
!1043 = distinct !DISubprogram(name: "cut_stream", scope: !3, file: !3, line: 429, type: !1044, isLocal: true, isDefinition: true, scopeLine: 430, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1046)
!1044 = !DISubroutineType(types: !1045)
!1045 = !{null, !968}
!1046 = !{!1042}
!1047 = !DILocation(line: 429, column: 19, scope: !1043, inlinedAt: !1048)
!1048 = distinct !DILocation(line: 462, column: 3, scope: !962)
!1049 = !DILocation(line: 431, column: 7, scope: !1050, inlinedAt: !1048)
!1050 = distinct !DILexicalBlock(scope: !1043, file: !3, line: 431, column: 7)
!1051 = !DILocation(line: 431, column: 22, scope: !1050, inlinedAt: !1048)
!1052 = !DILocation(line: 0, scope: !1050, inlinedAt: !1048)
!1053 = !DILocation(line: 431, column: 7, scope: !1043, inlinedAt: !1048)
!1054 = !DILocalVariable(name: "stream", arg: 1, scope: !1055, file: !3, line: 233, type: !968)
!1055 = distinct !DISubprogram(name: "cut_bytes", scope: !3, file: !3, line: 233, type: !1044, isLocal: true, isDefinition: true, scopeLine: 234, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1056)
!1056 = !{!1054, !1057, !1058, !1059}
!1057 = !DILocalVariable(name: "byte_idx", scope: !1055, file: !3, line: 235, type: !106)
!1058 = !DILocalVariable(name: "print_delimiter", scope: !1055, file: !3, line: 238, type: !62)
!1059 = !DILocalVariable(name: "c", scope: !1060, file: !3, line: 245, type: !55)
!1060 = distinct !DILexicalBlock(scope: !1055, file: !3, line: 244, column: 5)
!1061 = !DILocation(line: 233, column: 18, scope: !1055, inlinedAt: !1062)
!1062 = distinct !DILocation(line: 432, column: 5, scope: !1050, inlinedAt: !1048)
!1063 = !DILocation(line: 235, column: 13, scope: !1055, inlinedAt: !1062)
!1064 = !DILocation(line: 238, column: 8, scope: !1055, inlinedAt: !1062)
!1065 = !DILocation(line: 243, column: 3, scope: !1055, inlinedAt: !1062)
!1066 = !DILocation(line: 68, column: 10, scope: !1067, inlinedAt: !1073)
!1067 = distinct !DISubprogram(name: "getc_unlocked", scope: !1068, file: !1068, line: 66, type: !1069, isLocal: false, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1071)
!1068 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1069 = !DISubroutineType(types: !1070)
!1070 = !{!55, !968}
!1071 = !{!1072}
!1072 = !DILocalVariable(name: "__fp", arg: 1, scope: !1067, file: !1068, line: 66, type: !968)
!1073 = distinct !DILocation(line: 247, column: 11, scope: !1060, inlinedAt: !1062)
!1074 = !DILocation(line: 0, scope: !1075, inlinedAt: !1062)
!1075 = distinct !DILexicalBlock(scope: !1076, file: !3, line: 250, column: 9)
!1076 = distinct !DILexicalBlock(scope: !1060, file: !3, line: 249, column: 11)
!1077 = !DILocation(line: 66, column: 22, scope: !1067, inlinedAt: !1073)
!1078 = !{!1079, !771, i64 8}
!1079 = !{!"_IO_FILE", !931, i64 0, !771, i64 8, !771, i64 16, !771, i64 24, !771, i64 32, !771, i64 40, !771, i64 48, !771, i64 56, !771, i64 64, !771, i64 72, !771, i64 80, !771, i64 88, !771, i64 96, !771, i64 104, !931, i64 112, !931, i64 116, !882, i64 120, !1080, i64 128, !772, i64 130, !772, i64 131, !771, i64 136, !882, i64 144, !771, i64 152, !771, i64 160, !771, i64 168, !771, i64 176, !882, i64 184, !931, i64 192, !772, i64 196}
!1080 = !{!"short", !772, i64 0}
!1081 = !{!1079, !771, i64 16}
!1082 = !{!"branch_weights", i32 2000, i32 1}
!1083 = !DILocation(line: 245, column: 11, scope: !1060, inlinedAt: !1062)
!1084 = !DILocation(line: 249, column: 16, scope: !1076, inlinedAt: !1062)
!1085 = !DILocation(line: 249, column: 13, scope: !1076, inlinedAt: !1062)
!1086 = !DILocation(line: 249, column: 11, scope: !1060, inlinedAt: !1062)
!1087 = !DILocalVariable(name: "__c", arg: 1, scope: !1088, file: !1068, line: 108, type: !55)
!1088 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1068, file: !1068, line: 108, type: !1089, isLocal: false, isDefinition: true, scopeLine: 109, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1091)
!1089 = !DISubroutineType(types: !1090)
!1090 = !{!55, !55}
!1091 = !{!1087}
!1092 = !DILocation(line: 108, column: 23, scope: !1088, inlinedAt: !1093)
!1093 = distinct !DILocation(line: 251, column: 11, scope: !1075, inlinedAt: !1062)
!1094 = !DILocation(line: 110, column: 10, scope: !1088, inlinedAt: !1093)
!1095 = !{!1079, !771, i64 40}
!1096 = !{!1079, !771, i64 48}
!1097 = !DILocation(line: 254, column: 24, scope: !1075, inlinedAt: !1062)
!1098 = !DILocation(line: 254, column: 22, scope: !1075, inlinedAt: !1062)
!1099 = !DILocation(line: 255, column: 9, scope: !1075, inlinedAt: !1062)
!1100 = !DILocation(line: 256, column: 18, scope: !1101, inlinedAt: !1062)
!1101 = distinct !DILexicalBlock(scope: !1076, file: !3, line: 256, column: 16)
!1102 = !DILocation(line: 256, column: 16, scope: !1076, inlinedAt: !1062)
!1103 = !DILocation(line: 258, column: 24, scope: !1104, inlinedAt: !1062)
!1104 = distinct !DILexicalBlock(scope: !1105, file: !3, line: 258, column: 15)
!1105 = distinct !DILexicalBlock(scope: !1101, file: !3, line: 257, column: 9)
!1106 = !DILocation(line: 258, column: 15, scope: !1105, inlinedAt: !1062)
!1107 = !DILocation(line: 108, column: 23, scope: !1088, inlinedAt: !1108)
!1108 = distinct !DILocation(line: 259, column: 13, scope: !1104, inlinedAt: !1062)
!1109 = !DILocation(line: 110, column: 10, scope: !1088, inlinedAt: !1108)
!1110 = !DILocation(line: 209, column: 14, scope: !1111, inlinedAt: !1116)
!1111 = distinct !DISubprogram(name: "next_item", scope: !3, file: !3, line: 207, type: !1112, isLocal: true, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1114)
!1112 = !DISubroutineType(types: !1113)
!1113 = !{null, !155}
!1114 = !{!1115}
!1115 = !DILocalVariable(name: "item_idx", arg: 1, scope: !1111, file: !3, line: 207, type: !155)
!1116 = distinct !DILocation(line: 264, column: 11, scope: !1117, inlinedAt: !1062)
!1117 = distinct !DILexicalBlock(scope: !1101, file: !3, line: 263, column: 9)
!1118 = !DILocation(line: 210, column: 21, scope: !1119, inlinedAt: !1116)
!1119 = distinct !DILexicalBlock(scope: !1111, file: !3, line: 210, column: 7)
!1120 = !DILocation(line: 210, column: 33, scope: !1119, inlinedAt: !1116)
!1121 = !{!1122, !882, i64 8}
!1122 = !{!"field_range_pair", !882, i64 0, !882, i64 8}
!1123 = !DILocation(line: 210, column: 19, scope: !1119, inlinedAt: !1116)
!1124 = !DILocation(line: 210, column: 7, scope: !1111, inlinedAt: !1116)
!1125 = !DILocation(line: 211, column: 15, scope: !1119, inlinedAt: !1116)
!1126 = !DILocation(line: 211, column: 5, scope: !1119, inlinedAt: !1116)
!1127 = !DILocation(line: 219, column: 10, scope: !1128, inlinedAt: !1133)
!1128 = distinct !DISubprogram(name: "print_kth", scope: !3, file: !3, line: 217, type: !1129, isLocal: true, isDefinition: true, scopeLine: 218, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1131)
!1129 = !DISubroutineType(types: !1130)
!1130 = !{!62, !106}
!1131 = !{!1132}
!1132 = !DILocalVariable(name: "k", arg: 1, scope: !1128, file: !3, line: 217, type: !106)
!1133 = distinct !DILocation(line: 265, column: 15, scope: !1134, inlinedAt: !1062)
!1134 = distinct !DILexicalBlock(scope: !1117, file: !3, line: 265, column: 15)
!1135 = !DILocation(line: 217, column: 22, scope: !1128, inlinedAt: !1133)
!1136 = !DILocation(line: 219, column: 22, scope: !1128, inlinedAt: !1133)
!1137 = !{!1122, !882, i64 0}
!1138 = !DILocation(line: 219, column: 25, scope: !1128, inlinedAt: !1133)
!1139 = !DILocation(line: 265, column: 15, scope: !1117, inlinedAt: !1062)
!1140 = !DILocation(line: 267, column: 19, scope: !1141, inlinedAt: !1062)
!1141 = distinct !DILexicalBlock(scope: !1134, file: !3, line: 266, column: 13)
!1142 = !DILocation(line: 269, column: 23, scope: !1143, inlinedAt: !1062)
!1143 = distinct !DILexicalBlock(scope: !1144, file: !3, line: 269, column: 23)
!1144 = distinct !DILexicalBlock(scope: !1145, file: !3, line: 268, column: 17)
!1145 = distinct !DILexicalBlock(scope: !1141, file: !3, line: 267, column: 19)
!1146 = !DILocation(line: 227, column: 12, scope: !1147, inlinedAt: !1150)
!1147 = distinct !DISubprogram(name: "is_range_start_index", scope: !3, file: !3, line: 225, type: !1129, isLocal: true, isDefinition: true, scopeLine: 226, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1148)
!1148 = !{!1149}
!1149 = !DILocalVariable(name: "k", arg: 1, scope: !1147, file: !3, line: 225, type: !106)
!1150 = distinct !DILocation(line: 269, column: 42, scope: !1143, inlinedAt: !1062)
!1151 = !DILocation(line: 269, column: 39, scope: !1143, inlinedAt: !1062)
!1152 = !DILocation(line: 225, column: 33, scope: !1147, inlinedAt: !1150)
!1153 = !DILocation(line: 271, column: 23, scope: !1154, inlinedAt: !1062)
!1154 = distinct !DILexicalBlock(scope: !1143, file: !3, line: 270, column: 21)
!1155 = !DILocation(line: 273, column: 21, scope: !1154, inlinedAt: !1062)
!1156 = !DILocation(line: 0, scope: !1055, inlinedAt: !1062)
!1157 = !DILocation(line: 108, column: 23, scope: !1088, inlinedAt: !1158)
!1158 = distinct !DILocation(line: 277, column: 15, scope: !1141, inlinedAt: !1062)
!1159 = !DILocation(line: 110, column: 10, scope: !1088, inlinedAt: !1158)
!1160 = !DILocalVariable(name: "stream", arg: 1, scope: !1161, file: !3, line: 286, type: !968)
!1161 = distinct !DISubprogram(name: "cut_fields", scope: !3, file: !3, line: 286, type: !1044, isLocal: true, isDefinition: true, scopeLine: 287, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1162)
!1162 = !{!1160, !1163, !1164, !1165, !1166, !1167, !1174, !1175, !1180, !1181}
!1163 = !DILocalVariable(name: "c", scope: !1161, file: !3, line: 288, type: !55)
!1164 = !DILocalVariable(name: "field_idx", scope: !1161, file: !3, line: 289, type: !106)
!1165 = !DILocalVariable(name: "found_any_selected_field", scope: !1161, file: !3, line: 290, type: !62)
!1166 = !DILocalVariable(name: "buffer_first_field", scope: !1161, file: !3, line: 291, type: !62)
!1167 = !DILocalVariable(name: "len", scope: !1168, file: !3, line: 314, type: !1171)
!1168 = distinct !DILexicalBlock(scope: !1169, file: !3, line: 313, column: 9)
!1169 = distinct !DILexicalBlock(scope: !1170, file: !3, line: 312, column: 11)
!1170 = distinct !DILexicalBlock(scope: !1161, file: !3, line: 311, column: 5)
!1171 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !1172, line: 77, baseType: !1173)
!1172 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1173 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !109, line: 191, baseType: !995)
!1174 = !DILocalVariable(name: "n_bytes", scope: !1168, file: !3, line: 315, type: !46)
!1175 = !DILocalVariable(name: "last_c", scope: !1176, file: !3, line: 360, type: !55)
!1176 = distinct !DILexicalBlock(scope: !1177, file: !3, line: 359, column: 17)
!1177 = distinct !DILexicalBlock(scope: !1178, file: !3, line: 358, column: 19)
!1178 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 353, column: 13)
!1179 = distinct !DILexicalBlock(scope: !1168, file: !3, line: 352, column: 15)
!1180 = !DILocalVariable(name: "prev_c", scope: !1170, file: !3, line: 373, type: !55)
!1181 = !DILocalVariable(name: "last_c", scope: !1182, file: !3, line: 401, type: !55)
!1182 = distinct !DILexicalBlock(scope: !1183, file: !3, line: 400, column: 9)
!1183 = distinct !DILexicalBlock(scope: !1170, file: !3, line: 399, column: 11)
!1184 = !DILocation(line: 286, column: 19, scope: !1161, inlinedAt: !1185)
!1185 = distinct !DILocation(line: 434, column: 5, scope: !1050, inlinedAt: !1048)
!1186 = !DILocation(line: 289, column: 13, scope: !1161, inlinedAt: !1185)
!1187 = !DILocation(line: 290, column: 8, scope: !1161, inlinedAt: !1185)
!1188 = !DILocation(line: 66, column: 22, scope: !1067, inlinedAt: !1189)
!1189 = distinct !DILocation(line: 295, column: 7, scope: !1161, inlinedAt: !1185)
!1190 = !DILocation(line: 68, column: 10, scope: !1067, inlinedAt: !1189)
!1191 = !DILocation(line: 288, column: 7, scope: !1161, inlinedAt: !1185)
!1192 = !DILocation(line: 296, column: 7, scope: !1161, inlinedAt: !1185)
!1193 = !DILocation(line: 296, column: 9, scope: !1194, inlinedAt: !1185)
!1194 = distinct !DILexicalBlock(scope: !1161, file: !3, line: 296, column: 7)
!1195 = !DILocation(line: 299, column: 3, scope: !1161, inlinedAt: !1185)
!1196 = !DILocation(line: 217, column: 22, scope: !1128, inlinedAt: !1197)
!1197 = distinct !DILocation(line: 308, column: 51, scope: !1161, inlinedAt: !1185)
!1198 = !DILocation(line: 219, column: 10, scope: !1128, inlinedAt: !1197)
!1199 = !DILocation(line: 219, column: 22, scope: !1128, inlinedAt: !1197)
!1200 = !DILocation(line: 219, column: 25, scope: !1128, inlinedAt: !1197)
!1201 = !DILocation(line: 308, column: 48, scope: !1161, inlinedAt: !1185)
!1202 = !DILocation(line: 310, column: 3, scope: !1161, inlinedAt: !1185)
!1203 = !DILocation(line: 312, column: 21, scope: !1169, inlinedAt: !1185)
!1204 = !DILocation(line: 312, column: 26, scope: !1169, inlinedAt: !1185)
!1205 = !DILocation(line: 219, column: 10, scope: !1128, inlinedAt: !1206)
!1206 = distinct !DILocation(line: 375, column: 11, scope: !1207, inlinedAt: !1185)
!1207 = distinct !DILexicalBlock(scope: !1170, file: !3, line: 375, column: 11)
!1208 = !DILocation(line: 318, column: 48, scope: !1168, inlinedAt: !1185)
!1209 = !DILocation(line: 318, column: 55, scope: !1168, inlinedAt: !1185)
!1210 = !DILocation(line: 317, column: 17, scope: !1168, inlinedAt: !1185)
!1211 = !DILocation(line: 314, column: 19, scope: !1168, inlinedAt: !1185)
!1212 = !DILocation(line: 319, column: 19, scope: !1213, inlinedAt: !1185)
!1213 = distinct !DILexicalBlock(scope: !1168, file: !3, line: 319, column: 15)
!1214 = !DILocation(line: 319, column: 15, scope: !1168, inlinedAt: !1185)
!1215 = !DILocation(line: 321, column: 21, scope: !1216, inlinedAt: !1185)
!1216 = distinct !DILexicalBlock(scope: !1213, file: !3, line: 320, column: 13)
!1217 = !DILocation(line: 321, column: 15, scope: !1216, inlinedAt: !1185)
!1218 = !DILocation(line: 322, column: 30, scope: !1216, inlinedAt: !1185)
!1219 = !DILocalVariable(name: "__stream", arg: 1, scope: !1220, file: !1068, line: 135, type: !968)
!1220 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1068, file: !1068, line: 135, type: !1069, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1221)
!1221 = !{!1219}
!1222 = !DILocation(line: 135, column: 1, scope: !1220, inlinedAt: !1223)
!1223 = distinct !DILocation(line: 323, column: 19, scope: !1224, inlinedAt: !1185)
!1224 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 323, column: 19)
!1225 = !DILocation(line: 137, column: 10, scope: !1220, inlinedAt: !1223)
!1226 = !{!1079, !931, i64 0}
!1227 = !DILocation(line: 323, column: 35, scope: !1224, inlinedAt: !1185)
!1228 = !DILocation(line: 325, column: 15, scope: !1216, inlinedAt: !1185)
!1229 = !DILocation(line: 315, column: 18, scope: !1168, inlinedAt: !1185)
!1230 = !DILocation(line: 329, column: 11, scope: !1231, inlinedAt: !1185)
!1231 = distinct !DILexicalBlock(scope: !1232, file: !3, line: 329, column: 11)
!1232 = distinct !DILexicalBlock(scope: !1168, file: !3, line: 329, column: 11)
!1233 = !DILocation(line: 329, column: 11, scope: !1232, inlinedAt: !1185)
!1234 = !DILocation(line: 336, column: 25, scope: !1235, inlinedAt: !1185)
!1235 = distinct !DILexicalBlock(scope: !1168, file: !3, line: 336, column: 15)
!1236 = !DILocation(line: 336, column: 48, scope: !1235, inlinedAt: !1185)
!1237 = !DILocation(line: 336, column: 57, scope: !1235, inlinedAt: !1185)
!1238 = !DILocation(line: 336, column: 54, scope: !1235, inlinedAt: !1185)
!1239 = !DILocation(line: 336, column: 15, scope: !1168, inlinedAt: !1185)
!1240 = !DILocation(line: 338, column: 19, scope: !1241, inlinedAt: !1185)
!1241 = distinct !DILexicalBlock(scope: !1235, file: !3, line: 337, column: 13)
!1242 = distinct !{!1242, !1243, !1244}
!1243 = !DILocation(line: 310, column: 3, scope: !1161)
!1244 = !DILocation(line: 425, column: 5, scope: !1161)
!1245 = !DILocation(line: 344, column: 19, scope: !1246, inlinedAt: !1185)
!1246 = distinct !DILexicalBlock(scope: !1247, file: !3, line: 343, column: 17)
!1247 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 338, column: 19)
!1248 = !DILocation(line: 346, column: 23, scope: !1249, inlinedAt: !1185)
!1249 = distinct !DILexicalBlock(scope: !1246, file: !3, line: 346, column: 23)
!1250 = !DILocation(line: 346, column: 54, scope: !1249, inlinedAt: !1185)
!1251 = !DILocation(line: 346, column: 51, scope: !1249, inlinedAt: !1185)
!1252 = !DILocation(line: 346, column: 23, scope: !1246, inlinedAt: !1185)
!1253 = !DILocation(line: 108, column: 23, scope: !1088, inlinedAt: !1254)
!1254 = distinct !DILocation(line: 347, column: 21, scope: !1249, inlinedAt: !1185)
!1255 = !DILocation(line: 110, column: 10, scope: !1088, inlinedAt: !1254)
!1256 = !DILocation(line: 217, column: 22, scope: !1128, inlinedAt: !1257)
!1257 = distinct !DILocation(line: 352, column: 15, scope: !1179, inlinedAt: !1185)
!1258 = !DILocation(line: 219, column: 10, scope: !1128, inlinedAt: !1257)
!1259 = !DILocation(line: 219, column: 22, scope: !1128, inlinedAt: !1257)
!1260 = !DILocation(line: 219, column: 25, scope: !1128, inlinedAt: !1257)
!1261 = !DILocation(line: 352, column: 15, scope: !1168, inlinedAt: !1185)
!1262 = !DILocation(line: 355, column: 15, scope: !1178, inlinedAt: !1185)
!1263 = !DILocation(line: 358, column: 19, scope: !1177, inlinedAt: !1185)
!1264 = !DILocation(line: 358, column: 28, scope: !1177, inlinedAt: !1185)
!1265 = !DILocation(line: 358, column: 25, scope: !1177, inlinedAt: !1185)
!1266 = !DILocation(line: 358, column: 19, scope: !1178, inlinedAt: !1185)
!1267 = !DILocation(line: 66, column: 22, scope: !1067, inlinedAt: !1268)
!1268 = distinct !DILocation(line: 360, column: 32, scope: !1176, inlinedAt: !1185)
!1269 = !DILocation(line: 68, column: 10, scope: !1067, inlinedAt: !1268)
!1270 = !DILocation(line: 360, column: 23, scope: !1176, inlinedAt: !1185)
!1271 = !DILocation(line: 361, column: 23, scope: !1176, inlinedAt: !1185)
!1272 = !DILocation(line: 361, column: 30, scope: !1273, inlinedAt: !1185)
!1273 = distinct !DILexicalBlock(scope: !1176, file: !3, line: 361, column: 23)
!1274 = !DILocation(line: 363, column: 23, scope: !1275, inlinedAt: !1185)
!1275 = distinct !DILexicalBlock(scope: !1273, file: !3, line: 362, column: 21)
!1276 = !DILocation(line: 365, column: 21, scope: !1275, inlinedAt: !1185)
!1277 = !DILocation(line: 0, scope: !1161, inlinedAt: !1185)
!1278 = !DILocation(line: 210, column: 21, scope: !1119, inlinedAt: !1279)
!1279 = distinct !DILocation(line: 370, column: 11, scope: !1168, inlinedAt: !1185)
!1280 = !DILocation(line: 210, column: 33, scope: !1119, inlinedAt: !1279)
!1281 = !DILocation(line: 210, column: 19, scope: !1119, inlinedAt: !1279)
!1282 = !DILocation(line: 210, column: 7, scope: !1111, inlinedAt: !1279)
!1283 = !DILocation(line: 211, column: 15, scope: !1119, inlinedAt: !1279)
!1284 = !DILocation(line: 211, column: 5, scope: !1119, inlinedAt: !1279)
!1285 = !DILocation(line: 300, column: 5, scope: !1161, inlinedAt: !1185)
!1286 = !DILocation(line: 373, column: 11, scope: !1170, inlinedAt: !1185)
!1287 = !DILocation(line: 217, column: 22, scope: !1128, inlinedAt: !1206)
!1288 = !DILocation(line: 219, column: 22, scope: !1128, inlinedAt: !1206)
!1289 = !DILocation(line: 219, column: 25, scope: !1128, inlinedAt: !1206)
!1290 = !DILocation(line: 375, column: 11, scope: !1170, inlinedAt: !1185)
!1291 = !DILocation(line: 377, column: 15, scope: !1292, inlinedAt: !1185)
!1292 = distinct !DILexicalBlock(scope: !1293, file: !3, line: 377, column: 15)
!1293 = distinct !DILexicalBlock(scope: !1207, file: !3, line: 376, column: 9)
!1294 = !DILocation(line: 377, column: 15, scope: !1293, inlinedAt: !1185)
!1295 = !DILocation(line: 379, column: 15, scope: !1296, inlinedAt: !1185)
!1296 = distinct !DILexicalBlock(scope: !1292, file: !3, line: 378, column: 13)
!1297 = !DILocation(line: 381, column: 13, scope: !1296, inlinedAt: !1185)
!1298 = !DILocation(line: 68, column: 10, scope: !1067, inlinedAt: !1299)
!1299 = distinct !DILocation(line: 384, column: 23, scope: !1293, inlinedAt: !1185)
!1300 = !DILocation(line: 0, scope: !1301, inlinedAt: !1185)
!1301 = distinct !DILexicalBlock(scope: !1293, file: !3, line: 385, column: 13)
!1302 = !DILocation(line: 66, column: 22, scope: !1067, inlinedAt: !1299)
!1303 = !DILocation(line: 384, column: 41, scope: !1293, inlinedAt: !1185)
!1304 = !DILocation(line: 384, column: 38, scope: !1293, inlinedAt: !1185)
!1305 = !DILocation(line: 384, column: 47, scope: !1293, inlinedAt: !1185)
!1306 = !DILocation(line: 384, column: 55, scope: !1293, inlinedAt: !1185)
!1307 = !DILocation(line: 384, column: 52, scope: !1293, inlinedAt: !1185)
!1308 = !DILocation(line: 384, column: 71, scope: !1293, inlinedAt: !1185)
!1309 = !DILocation(line: 384, column: 66, scope: !1293, inlinedAt: !1185)
!1310 = !DILocation(line: 108, column: 23, scope: !1088, inlinedAt: !1311)
!1311 = distinct !DILocation(line: 386, column: 15, scope: !1301, inlinedAt: !1185)
!1312 = !DILocation(line: 110, column: 10, scope: !1088, inlinedAt: !1311)
!1313 = distinct !{!1313, !1314, !1315}
!1314 = !DILocation(line: 384, column: 11, scope: !1293)
!1315 = !DILocation(line: 388, column: 13, scope: !1293)
!1316 = !DILocation(line: 0, scope: !1317, inlinedAt: !1185)
!1317 = distinct !DILexicalBlock(scope: !1318, file: !3, line: 393, column: 13)
!1318 = distinct !DILexicalBlock(scope: !1207, file: !3, line: 391, column: 9)
!1319 = !DILocation(line: 66, column: 22, scope: !1067, inlinedAt: !1320)
!1320 = distinct !DILocation(line: 392, column: 23, scope: !1318, inlinedAt: !1185)
!1321 = !DILocation(line: 68, column: 10, scope: !1067, inlinedAt: !1320)
!1322 = !DILocation(line: 392, column: 41, scope: !1318, inlinedAt: !1185)
!1323 = !DILocation(line: 392, column: 38, scope: !1318, inlinedAt: !1185)
!1324 = !DILocation(line: 392, column: 47, scope: !1318, inlinedAt: !1185)
!1325 = !DILocation(line: 392, column: 55, scope: !1318, inlinedAt: !1185)
!1326 = !DILocation(line: 392, column: 52, scope: !1318, inlinedAt: !1185)
!1327 = !DILocation(line: 392, column: 71, scope: !1318, inlinedAt: !1185)
!1328 = !DILocation(line: 392, column: 66, scope: !1318, inlinedAt: !1185)
!1329 = distinct !{!1329, !1330, !1331}
!1330 = !DILocation(line: 392, column: 11, scope: !1318)
!1331 = !DILocation(line: 395, column: 13, scope: !1318)
!1332 = !DILocation(line: 0, scope: !1318, inlinedAt: !1185)
!1333 = !DILocation(line: 399, column: 11, scope: !1183, inlinedAt: !1185)
!1334 = !DILocation(line: 399, column: 20, scope: !1183, inlinedAt: !1185)
!1335 = !DILocation(line: 399, column: 17, scope: !1183, inlinedAt: !1185)
!1336 = !DILocation(line: 399, column: 36, scope: !1183, inlinedAt: !1185)
!1337 = !DILocation(line: 399, column: 31, scope: !1183, inlinedAt: !1185)
!1338 = !DILocation(line: 66, column: 22, scope: !1067, inlinedAt: !1339)
!1339 = distinct !DILocation(line: 401, column: 24, scope: !1182, inlinedAt: !1185)
!1340 = !DILocation(line: 68, column: 10, scope: !1067, inlinedAt: !1339)
!1341 = !DILocation(line: 401, column: 15, scope: !1182, inlinedAt: !1185)
!1342 = !DILocation(line: 402, column: 15, scope: !1182, inlinedAt: !1185)
!1343 = !DILocation(line: 402, column: 22, scope: !1344, inlinedAt: !1185)
!1344 = distinct !DILexicalBlock(scope: !1182, file: !3, line: 402, column: 15)
!1345 = !DILocation(line: 408, column: 16, scope: !1346, inlinedAt: !1185)
!1346 = distinct !DILexicalBlock(scope: !1170, file: !3, line: 408, column: 11)
!1347 = !DILocation(line: 410, column: 21, scope: !1348, inlinedAt: !1185)
!1348 = distinct !DILexicalBlock(scope: !1346, file: !3, line: 410, column: 16)
!1349 = !DILocation(line: 410, column: 32, scope: !1348, inlinedAt: !1185)
!1350 = !DILocation(line: 403, column: 13, scope: !1344, inlinedAt: !1185)
!1351 = !DILocation(line: 408, column: 13, scope: !1346, inlinedAt: !1185)
!1352 = !DILocation(line: 408, column: 11, scope: !1170, inlinedAt: !1185)
!1353 = !DILocation(line: 209, column: 14, scope: !1111, inlinedAt: !1354)
!1354 = distinct !DILocation(line: 409, column: 9, scope: !1346, inlinedAt: !1185)
!1355 = !DILocation(line: 210, column: 21, scope: !1119, inlinedAt: !1354)
!1356 = !DILocation(line: 210, column: 33, scope: !1119, inlinedAt: !1354)
!1357 = !DILocation(line: 210, column: 19, scope: !1119, inlinedAt: !1354)
!1358 = !DILocation(line: 210, column: 7, scope: !1111, inlinedAt: !1354)
!1359 = !DILocation(line: 211, column: 15, scope: !1119, inlinedAt: !1354)
!1360 = !DILocation(line: 211, column: 5, scope: !1119, inlinedAt: !1354)
!1361 = !DILocation(line: 410, column: 18, scope: !1348, inlinedAt: !1185)
!1362 = !DILocation(line: 410, column: 37, scope: !1348, inlinedAt: !1185)
!1363 = !DILocation(line: 412, column: 15, scope: !1364, inlinedAt: !1185)
!1364 = distinct !DILexicalBlock(scope: !1365, file: !3, line: 412, column: 15)
!1365 = distinct !DILexicalBlock(scope: !1348, file: !3, line: 411, column: 9)
!1366 = !DILocation(line: 413, column: 15, scope: !1364, inlinedAt: !1185)
!1367 = !DILocation(line: 413, column: 56, scope: !1364, inlinedAt: !1185)
!1368 = !DILocation(line: 413, column: 43, scope: !1364, inlinedAt: !1185)
!1369 = !DILocation(line: 415, column: 45, scope: !1370, inlinedAt: !1185)
!1370 = distinct !DILexicalBlock(scope: !1371, file: !3, line: 415, column: 19)
!1371 = distinct !DILexicalBlock(scope: !1364, file: !3, line: 414, column: 13)
!1372 = !DILocation(line: 415, column: 35, scope: !1370, inlinedAt: !1185)
!1373 = !DILocation(line: 416, column: 28, scope: !1370, inlinedAt: !1185)
!1374 = !DILocation(line: 108, column: 23, scope: !1088, inlinedAt: !1375)
!1375 = distinct !DILocation(line: 417, column: 17, scope: !1370, inlinedAt: !1185)
!1376 = !DILocation(line: 110, column: 10, scope: !1088, inlinedAt: !1375)
!1377 = !DILocation(line: 419, column: 15, scope: !1365, inlinedAt: !1185)
!1378 = !DILocation(line: 422, column: 24, scope: !1365, inlinedAt: !1185)
!1379 = !DILocation(line: 422, column: 22, scope: !1365, inlinedAt: !1185)
!1380 = !DILocation(line: 424, column: 9, scope: !1365, inlinedAt: !1185)
!1381 = !DILocation(line: 135, column: 1, scope: !1220, inlinedAt: !1382)
!1382 = distinct !DILocation(line: 464, column: 7, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !962, file: !3, line: 464, column: 7)
!1384 = !DILocation(line: 137, column: 10, scope: !1220, inlinedAt: !1382)
!1385 = !DILocation(line: 464, column: 7, scope: !1383)
!1386 = !DILocation(line: 464, column: 7, scope: !962)
!1387 = !DILocation(line: 466, column: 17, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !1383, file: !3, line: 465, column: 5)
!1389 = !DILocation(line: 466, column: 30, scope: !1388)
!1390 = !DILocation(line: 466, column: 7, scope: !1388)
!1391 = !DILocation(line: 467, column: 7, scope: !1388)
!1392 = !DILocation(line: 469, column: 7, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !962, file: !3, line: 469, column: 7)
!1394 = !DILocation(line: 469, column: 7, scope: !962)
!1395 = !DILocation(line: 470, column: 5, scope: !1393)
!1396 = !DILocation(line: 471, column: 12, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1393, file: !3, line: 471, column: 12)
!1398 = !DILocation(line: 471, column: 28, scope: !1397)
!1399 = !DILocation(line: 471, column: 12, scope: !1393)
!1400 = !DILocation(line: 473, column: 17, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1397, file: !3, line: 472, column: 5)
!1402 = !DILocation(line: 473, column: 30, scope: !1401)
!1403 = !DILocation(line: 473, column: 7, scope: !1401)
!1404 = !DILocation(line: 474, column: 7, scope: !1401)
!1405 = !DILocation(line: 0, scope: !1036)
!1406 = !DILocation(line: 477, column: 1, scope: !962)
!1407 = !DILocation(line: 138, column: 25, scope: !165)
!1408 = !DILocation(line: 138, column: 48, scope: !165)
!1409 = !DILocation(line: 140, column: 13, scope: !165)
!1410 = !DILocation(line: 141, column: 13, scope: !165)
!1411 = !DILocation(line: 142, column: 8, scope: !165)
!1412 = !DILocation(line: 143, column: 8, scope: !165)
!1413 = !DILocation(line: 144, column: 8, scope: !165)
!1414 = !DILocation(line: 146, column: 8, scope: !165)
!1415 = !DILocation(line: 151, column: 16, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !165, file: !123, line: 151, column: 7)
!1417 = !DILocation(line: 151, column: 37, scope: !1416)
!1418 = !DILocation(line: 151, column: 40, scope: !1416)
!1419 = !DILocation(line: 156, column: 15, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1416, file: !123, line: 152, column: 5)
!1421 = !DILocation(line: 151, column: 7, scope: !165)
!1422 = !DILocation(line: 161, column: 11, scope: !183)
!1423 = !DILocation(line: 0, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !183, file: !123, line: 162, column: 9)
!1425 = !DILocation(line: 154, column: 21, scope: !1420)
!1426 = !DILocation(line: 161, column: 11, scope: !184)
!1427 = !DILocation(line: 165, column: 15, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1424, file: !123, line: 165, column: 15)
!1429 = !DILocation(line: 165, column: 15, scope: !1424)
!1430 = !DILocation(line: 166, column: 13, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1428, file: !123, line: 166, column: 13)
!1432 = !DILocation(line: 173, column: 15, scope: !1433)
!1433 = distinct !DILexicalBlock(scope: !1424, file: !123, line: 173, column: 15)
!1434 = !DILocation(line: 173, column: 29, scope: !1433)
!1435 = !DILocation(line: 173, column: 33, scope: !1433)
!1436 = !DILocation(line: 174, column: 13, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1433, file: !123, line: 174, column: 13)
!1438 = !DILocation(line: 178, column: 22, scope: !1424)
!1439 = !DILocation(line: 180, column: 9, scope: !1424)
!1440 = !DILocation(line: 182, column: 19, scope: !182)
!1441 = !{!1080, !1080, i64 0}
!1442 = !DILocation(line: 182, column: 63, scope: !182)
!1443 = !DILocation(line: 182, column: 50, scope: !182)
!1444 = !DILocation(line: 186, column: 15, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1446, file: !123, line: 186, column: 15)
!1446 = distinct !DILexicalBlock(scope: !182, file: !123, line: 183, column: 9)
!1447 = !DILocation(line: 186, column: 15, scope: !1446)
!1448 = !DILocation(line: 190, column: 34, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1450, file: !123, line: 190, column: 19)
!1450 = distinct !DILexicalBlock(scope: !1445, file: !123, line: 187, column: 13)
!1451 = !DILocation(line: 196, column: 21, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1453, file: !123, line: 196, column: 21)
!1453 = distinct !DILexicalBlock(scope: !1454, file: !123, line: 193, column: 23)
!1454 = distinct !DILexicalBlock(scope: !1449, file: !123, line: 191, column: 17)
!1455 = !DILocation(line: 190, column: 38, scope: !1449)
!1456 = !DILocation(line: 201, column: 19, scope: !1450)
!1457 = !DILocalVariable(name: "lo", arg: 1, scope: !1458, file: !123, line: 48, type: !106)
!1458 = distinct !DISubprogram(name: "add_range_pair", scope: !123, file: !123, line: 48, type: !1459, isLocal: true, isDefinition: true, scopeLine: 49, flags: DIFlagPrototyped, isOptimized: true, unit: !122, retainedNodes: !1461)
!1459 = !DISubroutineType(types: !1460)
!1460 = !{null, !106, !106}
!1461 = !{!1457, !1462}
!1462 = !DILocalVariable(name: "hi", arg: 2, scope: !1458, file: !123, line: 48, type: !106)
!1463 = !DILocation(line: 48, column: 27, scope: !1458, inlinedAt: !1464)
!1464 = distinct !DILocation(line: 204, column: 19, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1466, file: !123, line: 202, column: 17)
!1466 = distinct !DILexicalBlock(scope: !1450, file: !123, line: 201, column: 19)
!1467 = !DILocation(line: 48, column: 41, scope: !1458, inlinedAt: !1464)
!1468 = !DILocation(line: 50, column: 7, scope: !1469, inlinedAt: !1464)
!1469 = distinct !DILexicalBlock(scope: !1458, file: !123, line: 50, column: 7)
!1470 = !DILocation(line: 50, column: 16, scope: !1469, inlinedAt: !1464)
!1471 = !DILocation(line: 50, column: 13, scope: !1469, inlinedAt: !1464)
!1472 = !DILocation(line: 50, column: 7, scope: !1458, inlinedAt: !1464)
!1473 = !DILocation(line: 52, column: 3, scope: !1458, inlinedAt: !1464)
!1474 = !DILocation(line: 51, column: 11, scope: !1469, inlinedAt: !1464)
!1475 = !DILocation(line: 174, column: 19, scope: !142, inlinedAt: !1476)
!1476 = distinct !DILocation(line: 51, column: 11, scope: !1469, inlinedAt: !1464)
!1477 = !DILocation(line: 174, column: 30, scope: !142, inlinedAt: !1476)
!1478 = !DILocation(line: 174, column: 41, scope: !142, inlinedAt: !1476)
!1479 = !DILocation(line: 176, column: 10, scope: !142, inlinedAt: !1476)
!1480 = !DILocation(line: 178, column: 9, scope: !1481, inlinedAt: !1476)
!1481 = distinct !DILexicalBlock(scope: !142, file: !141, line: 178, column: 7)
!1482 = !DILocation(line: 178, column: 7, scope: !142, inlinedAt: !1476)
!1483 = !DILocation(line: 180, column: 13, scope: !1484, inlinedAt: !1476)
!1484 = distinct !DILexicalBlock(scope: !1485, file: !141, line: 180, column: 11)
!1485 = distinct !DILexicalBlock(scope: !1481, file: !141, line: 179, column: 5)
!1486 = !DILocation(line: 180, column: 11, scope: !1485, inlinedAt: !1476)
!1487 = !DILocation(line: 191, column: 11, scope: !1488, inlinedAt: !1476)
!1488 = distinct !DILexicalBlock(scope: !1485, file: !141, line: 191, column: 11)
!1489 = !DILocation(line: 191, column: 11, scope: !1485, inlinedAt: !1476)
!1490 = !DILocation(line: 192, column: 9, scope: !1488, inlinedAt: !1476)
!1491 = !DILocation(line: 201, column: 11, scope: !1492, inlinedAt: !1476)
!1492 = distinct !DILexicalBlock(scope: !1493, file: !141, line: 200, column: 11)
!1493 = distinct !DILexicalBlock(scope: !1481, file: !141, line: 195, column: 5)
!1494 = !DILocation(line: 200, column: 11, scope: !1493, inlinedAt: !1476)
!1495 = !DILocation(line: 202, column: 9, scope: !1492, inlinedAt: !1476)
!1496 = !DILocation(line: 203, column: 14, scope: !1493, inlinedAt: !1476)
!1497 = !DILocation(line: 203, column: 18, scope: !1493, inlinedAt: !1476)
!1498 = !DILocation(line: 203, column: 9, scope: !1493, inlinedAt: !1476)
!1499 = !DILocation(line: 0, scope: !142, inlinedAt: !1476)
!1500 = !DILocation(line: 206, column: 7, scope: !142, inlinedAt: !1476)
!1501 = !DILocation(line: 207, column: 25, scope: !142, inlinedAt: !1476)
!1502 = !DILocation(line: 207, column: 10, scope: !142, inlinedAt: !1476)
!1503 = !DILocation(line: 51, column: 9, scope: !1469, inlinedAt: !1464)
!1504 = !DILocation(line: 51, column: 5, scope: !1469, inlinedAt: !1464)
!1505 = !DILocation(line: 52, column: 7, scope: !1458, inlinedAt: !1464)
!1506 = !DILocation(line: 52, column: 14, scope: !1458, inlinedAt: !1464)
!1507 = !DILocation(line: 52, column: 17, scope: !1458, inlinedAt: !1464)
!1508 = !DILocation(line: 53, column: 7, scope: !1458, inlinedAt: !1464)
!1509 = !DILocation(line: 53, column: 14, scope: !1458, inlinedAt: !1464)
!1510 = !DILocation(line: 53, column: 17, scope: !1458, inlinedAt: !1464)
!1511 = !DILocation(line: 54, column: 3, scope: !1458, inlinedAt: !1464)
!1512 = !DILocation(line: 205, column: 17, scope: !1465)
!1513 = !DILocation(line: 209, column: 29, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1515, file: !123, line: 209, column: 23)
!1515 = distinct !DILexicalBlock(scope: !1466, file: !123, line: 207, column: 17)
!1516 = !DILocation(line: 209, column: 23, scope: !1515)
!1517 = !DILocation(line: 210, column: 21, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1514, file: !123, line: 210, column: 21)
!1519 = !DILocation(line: 48, column: 27, scope: !1458, inlinedAt: !1520)
!1520 = distinct !DILocation(line: 212, column: 19, scope: !1515)
!1521 = !DILocation(line: 48, column: 41, scope: !1458, inlinedAt: !1520)
!1522 = !DILocation(line: 50, column: 7, scope: !1469, inlinedAt: !1520)
!1523 = !DILocation(line: 50, column: 16, scope: !1469, inlinedAt: !1520)
!1524 = !DILocation(line: 50, column: 13, scope: !1469, inlinedAt: !1520)
!1525 = !DILocation(line: 50, column: 7, scope: !1458, inlinedAt: !1520)
!1526 = !DILocation(line: 52, column: 3, scope: !1458, inlinedAt: !1520)
!1527 = !DILocation(line: 51, column: 11, scope: !1469, inlinedAt: !1520)
!1528 = !DILocation(line: 174, column: 19, scope: !142, inlinedAt: !1529)
!1529 = distinct !DILocation(line: 51, column: 11, scope: !1469, inlinedAt: !1520)
!1530 = !DILocation(line: 174, column: 30, scope: !142, inlinedAt: !1529)
!1531 = !DILocation(line: 174, column: 41, scope: !142, inlinedAt: !1529)
!1532 = !DILocation(line: 176, column: 10, scope: !142, inlinedAt: !1529)
!1533 = !DILocation(line: 178, column: 9, scope: !1481, inlinedAt: !1529)
!1534 = !DILocation(line: 178, column: 7, scope: !142, inlinedAt: !1529)
!1535 = !DILocation(line: 180, column: 13, scope: !1484, inlinedAt: !1529)
!1536 = !DILocation(line: 180, column: 11, scope: !1485, inlinedAt: !1529)
!1537 = !DILocation(line: 191, column: 11, scope: !1488, inlinedAt: !1529)
!1538 = !DILocation(line: 191, column: 11, scope: !1485, inlinedAt: !1529)
!1539 = !DILocation(line: 192, column: 9, scope: !1488, inlinedAt: !1529)
!1540 = !DILocation(line: 201, column: 11, scope: !1492, inlinedAt: !1529)
!1541 = !DILocation(line: 200, column: 11, scope: !1493, inlinedAt: !1529)
!1542 = !DILocation(line: 202, column: 9, scope: !1492, inlinedAt: !1529)
!1543 = !DILocation(line: 203, column: 14, scope: !1493, inlinedAt: !1529)
!1544 = !DILocation(line: 203, column: 18, scope: !1493, inlinedAt: !1529)
!1545 = !DILocation(line: 203, column: 9, scope: !1493, inlinedAt: !1529)
!1546 = !DILocation(line: 0, scope: !142, inlinedAt: !1529)
!1547 = !DILocation(line: 206, column: 7, scope: !142, inlinedAt: !1529)
!1548 = !DILocation(line: 207, column: 25, scope: !142, inlinedAt: !1529)
!1549 = !DILocation(line: 207, column: 10, scope: !142, inlinedAt: !1529)
!1550 = !DILocation(line: 51, column: 9, scope: !1469, inlinedAt: !1520)
!1551 = !DILocation(line: 51, column: 5, scope: !1469, inlinedAt: !1520)
!1552 = !DILocation(line: 52, column: 7, scope: !1458, inlinedAt: !1520)
!1553 = !DILocation(line: 52, column: 14, scope: !1458, inlinedAt: !1520)
!1554 = !DILocation(line: 52, column: 17, scope: !1458, inlinedAt: !1520)
!1555 = !DILocation(line: 53, column: 7, scope: !1458, inlinedAt: !1520)
!1556 = !DILocation(line: 53, column: 14, scope: !1458, inlinedAt: !1520)
!1557 = !DILocation(line: 53, column: 17, scope: !1458, inlinedAt: !1520)
!1558 = !DILocation(line: 54, column: 3, scope: !1458, inlinedAt: !1520)
!1559 = !DILocation(line: 219, column: 25, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1561, file: !123, line: 219, column: 19)
!1561 = distinct !DILexicalBlock(scope: !1445, file: !123, line: 217, column: 13)
!1562 = !DILocation(line: 219, column: 19, scope: !1561)
!1563 = !DILocation(line: 220, column: 17, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1560, file: !123, line: 220, column: 17)
!1565 = !DILocation(line: 48, column: 27, scope: !1458, inlinedAt: !1566)
!1566 = distinct !DILocation(line: 224, column: 15, scope: !1561)
!1567 = !DILocation(line: 48, column: 41, scope: !1458, inlinedAt: !1566)
!1568 = !DILocation(line: 50, column: 7, scope: !1469, inlinedAt: !1566)
!1569 = !DILocation(line: 50, column: 16, scope: !1469, inlinedAt: !1566)
!1570 = !DILocation(line: 50, column: 13, scope: !1469, inlinedAt: !1566)
!1571 = !DILocation(line: 50, column: 7, scope: !1458, inlinedAt: !1566)
!1572 = !DILocation(line: 52, column: 3, scope: !1458, inlinedAt: !1566)
!1573 = !DILocation(line: 51, column: 11, scope: !1469, inlinedAt: !1566)
!1574 = !DILocation(line: 174, column: 19, scope: !142, inlinedAt: !1575)
!1575 = distinct !DILocation(line: 51, column: 11, scope: !1469, inlinedAt: !1566)
!1576 = !DILocation(line: 174, column: 30, scope: !142, inlinedAt: !1575)
!1577 = !DILocation(line: 174, column: 41, scope: !142, inlinedAt: !1575)
!1578 = !DILocation(line: 176, column: 10, scope: !142, inlinedAt: !1575)
!1579 = !DILocation(line: 178, column: 9, scope: !1481, inlinedAt: !1575)
!1580 = !DILocation(line: 178, column: 7, scope: !142, inlinedAt: !1575)
!1581 = !DILocation(line: 180, column: 13, scope: !1484, inlinedAt: !1575)
!1582 = !DILocation(line: 180, column: 11, scope: !1485, inlinedAt: !1575)
!1583 = !DILocation(line: 191, column: 11, scope: !1488, inlinedAt: !1575)
!1584 = !DILocation(line: 191, column: 11, scope: !1485, inlinedAt: !1575)
!1585 = !DILocation(line: 192, column: 9, scope: !1488, inlinedAt: !1575)
!1586 = !DILocation(line: 201, column: 11, scope: !1492, inlinedAt: !1575)
!1587 = !DILocation(line: 200, column: 11, scope: !1493, inlinedAt: !1575)
!1588 = !DILocation(line: 202, column: 9, scope: !1492, inlinedAt: !1575)
!1589 = !DILocation(line: 203, column: 14, scope: !1493, inlinedAt: !1575)
!1590 = !DILocation(line: 203, column: 18, scope: !1493, inlinedAt: !1575)
!1591 = !DILocation(line: 203, column: 9, scope: !1493, inlinedAt: !1575)
!1592 = !DILocation(line: 0, scope: !142, inlinedAt: !1575)
!1593 = !DILocation(line: 206, column: 7, scope: !142, inlinedAt: !1575)
!1594 = !DILocation(line: 207, column: 25, scope: !142, inlinedAt: !1575)
!1595 = !DILocation(line: 207, column: 10, scope: !142, inlinedAt: !1575)
!1596 = !DILocation(line: 51, column: 9, scope: !1469, inlinedAt: !1566)
!1597 = !DILocation(line: 51, column: 5, scope: !1469, inlinedAt: !1566)
!1598 = !DILocation(line: 52, column: 7, scope: !1458, inlinedAt: !1566)
!1599 = !DILocation(line: 52, column: 14, scope: !1458, inlinedAt: !1566)
!1600 = !DILocation(line: 52, column: 17, scope: !1458, inlinedAt: !1566)
!1601 = !DILocation(line: 53, column: 7, scope: !1458, inlinedAt: !1566)
!1602 = !DILocation(line: 53, column: 14, scope: !1458, inlinedAt: !1566)
!1603 = !DILocation(line: 53, column: 17, scope: !1458, inlinedAt: !1566)
!1604 = !DILocation(line: 54, column: 3, scope: !1458, inlinedAt: !1566)
!1605 = !DILocation(line: 0, scope: !1420)
!1606 = !DILocation(line: 228, column: 15, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1446, file: !123, line: 228, column: 15)
!1608 = !DILocation(line: 228, column: 25, scope: !1607)
!1609 = !DILocation(line: 228, column: 15, scope: !1446)
!1610 = !DILocation(line: 182, column: 53, scope: !182)
!1611 = !DILocation(line: 235, column: 16, scope: !181)
!1612 = !DILocation(line: 235, column: 16, scope: !182)
!1613 = !DILocation(line: 240, column: 30, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !180, file: !123, line: 240, column: 15)
!1615 = !DILocation(line: 240, column: 26, scope: !1614)
!1616 = !DILocation(line: 241, column: 23, scope: !1614)
!1617 = !DILocation(line: 241, column: 13, scope: !1614)
!1618 = !DILocation(line: 244, column: 15, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !180, file: !123, line: 244, column: 15)
!1620 = !DILocation(line: 250, column: 16, scope: !179)
!1621 = !DILocation(line: 251, column: 24, scope: !179)
!1622 = !DILocation(line: 251, column: 15, scope: !179)
!1623 = !DILocation(line: 256, column: 28, scope: !178)
!1624 = !DILocation(line: 256, column: 22, scope: !178)
!1625 = !DILocation(line: 257, column: 31, scope: !178)
!1626 = !DILocation(line: 257, column: 21, scope: !178)
!1627 = !DILocation(line: 258, column: 37, scope: !178)
!1628 = !DILocation(line: 258, column: 28, scope: !178)
!1629 = !DILocation(line: 0, scope: !178)
!1630 = !DILocation(line: 261, column: 28, scope: !178)
!1631 = !DILocation(line: 258, column: 15, scope: !178)
!1632 = !DILocation(line: 262, column: 15, scope: !178)
!1633 = !DILocation(line: 263, column: 15, scope: !178)
!1634 = !DILocation(line: 270, column: 33, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !181, file: !123, line: 269, column: 9)
!1636 = !DILocation(line: 270, column: 24, scope: !1635)
!1637 = !DILocation(line: 0, scope: !1635)
!1638 = !DILocation(line: 273, column: 24, scope: !1635)
!1639 = !DILocation(line: 270, column: 11, scope: !1635)
!1640 = !DILocation(line: 274, column: 11, scope: !1635)
!1641 = !DILocation(line: 0, scope: !1619)
!1642 = !DILocation(line: 0, scope: !180)
!1643 = !DILocation(line: 0, scope: !165)
!1644 = !DILocation(line: 159, column: 3, scope: !165)
!1645 = distinct !{!1645, !1644, !1646}
!1646 = !DILocation(line: 276, column: 5, scope: !165)
!1647 = !DILocation(line: 278, column: 8, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !165, file: !123, line: 278, column: 7)
!1649 = !DILocation(line: 278, column: 7, scope: !165)
!1650 = !DILocation(line: 279, column: 5, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1648, file: !123, line: 279, column: 5)
!1652 = !DILocation(line: 283, column: 3, scope: !165)
!1653 = !DILocation(line: 286, column: 15, scope: !187)
!1654 = !DILocation(line: 286, column: 26, scope: !191)
!1655 = !DILocation(line: 286, column: 24, scope: !191)
!1656 = !DILocation(line: 286, column: 3, scope: !187)
!1657 = !DILocation(line: 302, column: 15, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !165, file: !123, line: 302, column: 7)
!1659 = !DILocation(line: 302, column: 7, scope: !165)
!1660 = !DILocation(line: 288, column: 25, scope: !189)
!1661 = !DILocation(line: 288, column: 32, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !189, file: !123, line: 288, column: 7)
!1663 = !DILocation(line: 288, column: 7, scope: !189)
!1664 = !DILocation(line: 290, column: 15, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1666, file: !123, line: 290, column: 15)
!1666 = distinct !DILexicalBlock(scope: !1662, file: !123, line: 289, column: 9)
!1667 = !DILocation(line: 290, column: 22, scope: !1665)
!1668 = !DILocation(line: 290, column: 35, scope: !1665)
!1669 = !DILocation(line: 290, column: 25, scope: !1665)
!1670 = !DILocation(line: 290, column: 15, scope: !1666)
!1671 = distinct !{!1671, !1663, !1672}
!1672 = !DILocation(line: 299, column: 9, scope: !189)
!1673 = !DILocation(line: 292, column: 27, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1665, file: !123, line: 291, column: 13)
!1675 = !DILocation(line: 292, column: 25, scope: !1674)
!1676 = !DILocation(line: 293, column: 28, scope: !1674)
!1677 = !DILocation(line: 293, column: 15, scope: !1674)
!1678 = !DILocation(line: 293, column: 41, scope: !1674)
!1679 = !DILocation(line: 293, column: 47, scope: !1674)
!1680 = !DILocation(line: 293, column: 57, scope: !1674)
!1681 = !DILocation(line: 293, column: 62, scope: !1674)
!1682 = !DILocation(line: 294, column: 20, scope: !1674)
!1683 = !DILocation(line: 288, column: 19, scope: !189)
!1684 = distinct !{!1684, !1656, !1685}
!1685 = !DILocation(line: 300, column: 5, scope: !187)
!1686 = !DILocation(line: 74, column: 32, scope: !1687, inlinedAt: !1693)
!1687 = distinct !DISubprogram(name: "complement_rp", scope: !123, file: !123, line: 72, type: !778, isLocal: true, isDefinition: true, scopeLine: 73, flags: DIFlagPrototyped, isOptimized: true, unit: !122, retainedNodes: !1688)
!1688 = !{!1689, !1690, !1691}
!1689 = !DILocalVariable(name: "c", scope: !1687, file: !123, line: 74, type: !194)
!1690 = !DILocalVariable(name: "n", scope: !1687, file: !123, line: 75, type: !46)
!1691 = !DILocalVariable(name: "i", scope: !1692, file: !123, line: 84, type: !46)
!1692 = distinct !DILexicalBlock(scope: !1687, file: !123, line: 84, column: 3)
!1693 = distinct !DILocation(line: 303, column: 5, scope: !1658)
!1694 = !DILocation(line: 74, column: 28, scope: !1687, inlinedAt: !1693)
!1695 = !DILocation(line: 75, column: 10, scope: !1687, inlinedAt: !1693)
!1696 = !DILocation(line: 77, column: 7, scope: !1687, inlinedAt: !1693)
!1697 = !DILocation(line: 78, column: 9, scope: !1687, inlinedAt: !1693)
!1698 = !DILocation(line: 79, column: 19, scope: !1687, inlinedAt: !1693)
!1699 = !DILocation(line: 81, column: 12, scope: !1700, inlinedAt: !1693)
!1700 = distinct !DILexicalBlock(scope: !1687, file: !123, line: 81, column: 7)
!1701 = !DILocation(line: 81, column: 15, scope: !1700, inlinedAt: !1693)
!1702 = !DILocation(line: 81, column: 7, scope: !1687, inlinedAt: !1693)
!1703 = !DILocation(line: 82, column: 32, scope: !1700, inlinedAt: !1693)
!1704 = !DILocation(line: 48, column: 27, scope: !1458, inlinedAt: !1705)
!1705 = distinct !DILocation(line: 82, column: 5, scope: !1700, inlinedAt: !1693)
!1706 = !DILocation(line: 48, column: 41, scope: !1458, inlinedAt: !1705)
!1707 = !DILocation(line: 174, column: 19, scope: !142, inlinedAt: !1708)
!1708 = distinct !DILocation(line: 51, column: 11, scope: !1469, inlinedAt: !1705)
!1709 = !DILocation(line: 174, column: 30, scope: !142, inlinedAt: !1708)
!1710 = !DILocation(line: 174, column: 41, scope: !142, inlinedAt: !1708)
!1711 = !DILocation(line: 176, column: 10, scope: !142, inlinedAt: !1708)
!1712 = !DILocation(line: 206, column: 7, scope: !142, inlinedAt: !1708)
!1713 = !DILocation(line: 207, column: 10, scope: !142, inlinedAt: !1708)
!1714 = !DILocation(line: 51, column: 9, scope: !1469, inlinedAt: !1705)
!1715 = !DILocation(line: 51, column: 5, scope: !1469, inlinedAt: !1705)
!1716 = !DILocation(line: 52, column: 7, scope: !1458, inlinedAt: !1705)
!1717 = !DILocation(line: 52, column: 14, scope: !1458, inlinedAt: !1705)
!1718 = !DILocation(line: 52, column: 17, scope: !1458, inlinedAt: !1705)
!1719 = !DILocation(line: 53, column: 7, scope: !1458, inlinedAt: !1705)
!1720 = !DILocation(line: 53, column: 14, scope: !1458, inlinedAt: !1705)
!1721 = !DILocation(line: 53, column: 17, scope: !1458, inlinedAt: !1705)
!1722 = !DILocation(line: 54, column: 3, scope: !1458, inlinedAt: !1705)
!1723 = !DILocation(line: 82, column: 5, scope: !1700, inlinedAt: !1693)
!1724 = !DILocation(line: 84, column: 15, scope: !1692, inlinedAt: !1693)
!1725 = !DILocation(line: 84, column: 24, scope: !1726, inlinedAt: !1693)
!1726 = distinct !DILexicalBlock(scope: !1692, file: !123, line: 84, column: 3)
!1727 = !DILocation(line: 84, column: 3, scope: !1692, inlinedAt: !1693)
!1728 = !DILocation(line: 92, column: 10, scope: !1729, inlinedAt: !1693)
!1729 = distinct !DILexicalBlock(scope: !1687, file: !123, line: 92, column: 7)
!1730 = !DILocation(line: 92, column: 14, scope: !1729, inlinedAt: !1693)
!1731 = !DILocation(line: 92, column: 17, scope: !1729, inlinedAt: !1693)
!1732 = !DILocation(line: 92, column: 7, scope: !1687, inlinedAt: !1693)
!1733 = !DILocation(line: 86, column: 14, scope: !1734, inlinedAt: !1693)
!1734 = distinct !DILexicalBlock(scope: !1735, file: !123, line: 86, column: 11)
!1735 = distinct !DILexicalBlock(scope: !1726, file: !123, line: 85, column: 5)
!1736 = !DILocation(line: 86, column: 18, scope: !1734, inlinedAt: !1693)
!1737 = !DILocation(line: 86, column: 21, scope: !1734, inlinedAt: !1693)
!1738 = !DILocation(line: 86, column: 33, scope: !1734, inlinedAt: !1693)
!1739 = !DILocation(line: 86, column: 25, scope: !1734, inlinedAt: !1693)
!1740 = !DILocation(line: 86, column: 11, scope: !1735, inlinedAt: !1693)
!1741 = !DILocation(line: 89, column: 46, scope: !1735, inlinedAt: !1693)
!1742 = !DILocation(line: 48, column: 27, scope: !1458, inlinedAt: !1743)
!1743 = distinct !DILocation(line: 89, column: 7, scope: !1735, inlinedAt: !1693)
!1744 = !DILocation(line: 48, column: 41, scope: !1458, inlinedAt: !1743)
!1745 = !DILocation(line: 50, column: 16, scope: !1469, inlinedAt: !1743)
!1746 = !DILocation(line: 50, column: 13, scope: !1469, inlinedAt: !1743)
!1747 = !DILocation(line: 50, column: 7, scope: !1458, inlinedAt: !1743)
!1748 = !DILocation(line: 174, column: 19, scope: !142, inlinedAt: !1749)
!1749 = distinct !DILocation(line: 51, column: 11, scope: !1469, inlinedAt: !1743)
!1750 = !DILocation(line: 174, column: 30, scope: !142, inlinedAt: !1749)
!1751 = !DILocation(line: 174, column: 41, scope: !142, inlinedAt: !1749)
!1752 = !DILocation(line: 176, column: 10, scope: !142, inlinedAt: !1749)
!1753 = !DILocation(line: 178, column: 9, scope: !1481, inlinedAt: !1749)
!1754 = !DILocation(line: 178, column: 7, scope: !142, inlinedAt: !1749)
!1755 = !DILocation(line: 180, column: 13, scope: !1484, inlinedAt: !1749)
!1756 = !DILocation(line: 180, column: 11, scope: !1485, inlinedAt: !1749)
!1757 = !DILocation(line: 191, column: 11, scope: !1488, inlinedAt: !1749)
!1758 = !DILocation(line: 191, column: 11, scope: !1485, inlinedAt: !1749)
!1759 = !DILocation(line: 192, column: 9, scope: !1488, inlinedAt: !1749)
!1760 = !DILocation(line: 201, column: 11, scope: !1492, inlinedAt: !1749)
!1761 = !DILocation(line: 200, column: 11, scope: !1493, inlinedAt: !1749)
!1762 = !DILocation(line: 202, column: 9, scope: !1492, inlinedAt: !1749)
!1763 = !DILocation(line: 203, column: 14, scope: !1493, inlinedAt: !1749)
!1764 = !DILocation(line: 203, column: 18, scope: !1493, inlinedAt: !1749)
!1765 = !DILocation(line: 203, column: 9, scope: !1493, inlinedAt: !1749)
!1766 = !DILocation(line: 0, scope: !142, inlinedAt: !1749)
!1767 = !DILocation(line: 206, column: 7, scope: !142, inlinedAt: !1749)
!1768 = !DILocation(line: 207, column: 25, scope: !142, inlinedAt: !1749)
!1769 = !DILocation(line: 207, column: 10, scope: !142, inlinedAt: !1749)
!1770 = !DILocation(line: 51, column: 9, scope: !1469, inlinedAt: !1743)
!1771 = !DILocation(line: 51, column: 5, scope: !1469, inlinedAt: !1743)
!1772 = !DILocation(line: 52, column: 7, scope: !1458, inlinedAt: !1743)
!1773 = !DILocation(line: 52, column: 14, scope: !1458, inlinedAt: !1743)
!1774 = !DILocation(line: 52, column: 17, scope: !1458, inlinedAt: !1743)
!1775 = !DILocation(line: 53, column: 7, scope: !1458, inlinedAt: !1743)
!1776 = !DILocation(line: 53, column: 14, scope: !1458, inlinedAt: !1743)
!1777 = !DILocation(line: 53, column: 17, scope: !1458, inlinedAt: !1743)
!1778 = !DILocation(line: 54, column: 3, scope: !1458, inlinedAt: !1743)
!1779 = !DILocation(line: 90, column: 5, scope: !1735, inlinedAt: !1693)
!1780 = !DILocation(line: 84, column: 29, scope: !1726, inlinedAt: !1693)
!1781 = distinct !{!1781, !1782, !1783}
!1782 = !DILocation(line: 84, column: 3, scope: !1692)
!1783 = !DILocation(line: 90, column: 5, scope: !1692)
!1784 = !DILocation(line: 93, column: 31, scope: !1729, inlinedAt: !1693)
!1785 = !DILocation(line: 48, column: 27, scope: !1458, inlinedAt: !1786)
!1786 = distinct !DILocation(line: 93, column: 5, scope: !1729, inlinedAt: !1693)
!1787 = !DILocation(line: 48, column: 41, scope: !1458, inlinedAt: !1786)
!1788 = !DILocation(line: 50, column: 16, scope: !1469, inlinedAt: !1786)
!1789 = !DILocation(line: 50, column: 13, scope: !1469, inlinedAt: !1786)
!1790 = !DILocation(line: 50, column: 7, scope: !1458, inlinedAt: !1786)
!1791 = !DILocation(line: 174, column: 19, scope: !142, inlinedAt: !1792)
!1792 = distinct !DILocation(line: 51, column: 11, scope: !1469, inlinedAt: !1786)
!1793 = !DILocation(line: 174, column: 30, scope: !142, inlinedAt: !1792)
!1794 = !DILocation(line: 174, column: 41, scope: !142, inlinedAt: !1792)
!1795 = !DILocation(line: 176, column: 10, scope: !142, inlinedAt: !1792)
!1796 = !DILocation(line: 178, column: 9, scope: !1481, inlinedAt: !1792)
!1797 = !DILocation(line: 178, column: 7, scope: !142, inlinedAt: !1792)
!1798 = !DILocation(line: 180, column: 13, scope: !1484, inlinedAt: !1792)
!1799 = !DILocation(line: 180, column: 11, scope: !1485, inlinedAt: !1792)
!1800 = !DILocation(line: 191, column: 11, scope: !1488, inlinedAt: !1792)
!1801 = !DILocation(line: 191, column: 11, scope: !1485, inlinedAt: !1792)
!1802 = !DILocation(line: 192, column: 9, scope: !1488, inlinedAt: !1792)
!1803 = !DILocation(line: 201, column: 11, scope: !1492, inlinedAt: !1792)
!1804 = !DILocation(line: 200, column: 11, scope: !1493, inlinedAt: !1792)
!1805 = !DILocation(line: 202, column: 9, scope: !1492, inlinedAt: !1792)
!1806 = !DILocation(line: 203, column: 14, scope: !1493, inlinedAt: !1792)
!1807 = !DILocation(line: 203, column: 18, scope: !1493, inlinedAt: !1792)
!1808 = !DILocation(line: 203, column: 9, scope: !1493, inlinedAt: !1792)
!1809 = !DILocation(line: 0, scope: !142, inlinedAt: !1792)
!1810 = !DILocation(line: 206, column: 7, scope: !142, inlinedAt: !1792)
!1811 = !DILocation(line: 207, column: 25, scope: !142, inlinedAt: !1792)
!1812 = !DILocation(line: 207, column: 10, scope: !142, inlinedAt: !1792)
!1813 = !DILocation(line: 51, column: 9, scope: !1469, inlinedAt: !1786)
!1814 = !DILocation(line: 51, column: 5, scope: !1469, inlinedAt: !1786)
!1815 = !DILocation(line: 52, column: 7, scope: !1458, inlinedAt: !1786)
!1816 = !DILocation(line: 52, column: 3, scope: !1458, inlinedAt: !1786)
!1817 = !DILocation(line: 52, column: 14, scope: !1458, inlinedAt: !1786)
!1818 = !DILocation(line: 52, column: 17, scope: !1458, inlinedAt: !1786)
!1819 = !DILocation(line: 53, column: 7, scope: !1458, inlinedAt: !1786)
!1820 = !DILocation(line: 53, column: 14, scope: !1458, inlinedAt: !1786)
!1821 = !DILocation(line: 53, column: 17, scope: !1458, inlinedAt: !1786)
!1822 = !DILocation(line: 54, column: 3, scope: !1458, inlinedAt: !1786)
!1823 = !DILocation(line: 93, column: 5, scope: !1729, inlinedAt: !1693)
!1824 = !DILocation(line: 95, column: 9, scope: !1687, inlinedAt: !1693)
!1825 = !DILocation(line: 95, column: 3, scope: !1687, inlinedAt: !1693)
!1826 = !DILocation(line: 308, column: 3, scope: !165)
!1827 = !DILocation(line: 303, column: 5, scope: !1658)
!1828 = !DILocation(line: 309, column: 19, scope: !165)
!1829 = !DILocation(line: 309, column: 30, scope: !165)
!1830 = !DILocation(line: 309, column: 9, scope: !165)
!1831 = !DILocation(line: 309, column: 7, scope: !165)
!1832 = !DILocation(line: 310, column: 27, scope: !165)
!1833 = !DILocation(line: 310, column: 33, scope: !165)
!1834 = !DILocation(line: 310, column: 38, scope: !165)
!1835 = !DILocation(line: 310, column: 41, scope: !165)
!1836 = !DILocation(line: 310, column: 7, scope: !165)
!1837 = !DILocation(line: 310, column: 13, scope: !165)
!1838 = !DILocation(line: 310, column: 18, scope: !165)
!1839 = !DILocation(line: 310, column: 21, scope: !165)
!1840 = !DILocation(line: 311, column: 1, scope: !165)
!1841 = distinct !DISubprogram(name: "compare_ranges", scope: !123, file: !123, line: 61, type: !1842, isLocal: true, isDefinition: true, scopeLine: 62, flags: DIFlagPrototyped, isOptimized: true, unit: !122, retainedNodes: !1846)
!1842 = !DISubroutineType(types: !1843)
!1843 = !{!55, !1844, !1844}
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1845 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1846 = !{!1847, !1848, !1849, !1850}
!1847 = !DILocalVariable(name: "a", arg: 1, scope: !1841, file: !123, line: 61, type: !1844)
!1848 = !DILocalVariable(name: "b", arg: 2, scope: !1841, file: !123, line: 61, type: !1844)
!1849 = !DILocalVariable(name: "a_start", scope: !1841, file: !123, line: 63, type: !55)
!1850 = !DILocalVariable(name: "b_start", scope: !1841, file: !123, line: 64, type: !55)
!1851 = !DILocation(line: 61, column: 29, scope: !1841)
!1852 = !DILocation(line: 61, column: 44, scope: !1841)
!1853 = !DILocation(line: 63, column: 56, scope: !1841)
!1854 = !DILocation(line: 63, column: 17, scope: !1841)
!1855 = !DILocation(line: 63, column: 7, scope: !1841)
!1856 = !DILocation(line: 64, column: 56, scope: !1841)
!1857 = !DILocation(line: 64, column: 17, scope: !1841)
!1858 = !DILocation(line: 64, column: 7, scope: !1841)
!1859 = !DILocation(line: 65, column: 18, scope: !1841)
!1860 = !DILocation(line: 65, column: 43, scope: !1841)
!1861 = !DILocation(line: 65, column: 10, scope: !1841)
!1862 = !DILocation(line: 65, column: 3, scope: !1841)
!1863 = distinct !DISubprogram(name: "reset_fields", scope: !123, file: !123, line: 314, type: !778, isLocal: false, isDefinition: true, scopeLine: 315, flags: DIFlagPrototyped, isOptimized: true, unit: !122, retainedNodes: !201)
!1864 = !DILocation(line: 316, column: 9, scope: !1863)
!1865 = !DILocation(line: 317, column: 19, scope: !1863)
!1866 = !DILocation(line: 318, column: 9, scope: !1863)
!1867 = !DILocation(line: 318, column: 3, scope: !1863)
!1868 = !DILocation(line: 319, column: 7, scope: !1863)
!1869 = !DILocation(line: 320, column: 1, scope: !1863)
!1870 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !210, file: !210, line: 51, type: !745, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !205, retainedNodes: !1871)
!1871 = !{!1872}
!1872 = !DILocalVariable(name: "file", arg: 1, scope: !1870, file: !210, line: 51, type: !90)
!1873 = !DILocation(line: 51, column: 41, scope: !1870)
!1874 = !DILocation(line: 53, column: 13, scope: !1870)
!1875 = !DILocation(line: 54, column: 1, scope: !1870)
!1876 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !210, file: !210, line: 88, type: !1877, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !205, retainedNodes: !1879)
!1877 = !DISubroutineType(types: !1878)
!1878 = !{null, !62}
!1879 = !{!1880}
!1880 = !DILocalVariable(name: "ignore", arg: 1, scope: !1876, file: !210, line: 88, type: !62)
!1881 = !DILocation(line: 88, column: 37, scope: !1876)
!1882 = !DILocation(line: 90, column: 16, scope: !1876)
!1883 = !{!1884, !1884, i64 0}
!1884 = !{!"_Bool", !772, i64 0}
!1885 = !DILocation(line: 91, column: 1, scope: !1876)
!1886 = distinct !DISubprogram(name: "close_stdout", scope: !210, file: !210, line: 117, type: !778, isLocal: false, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: true, unit: !205, retainedNodes: !1887)
!1887 = !{!1888}
!1888 = !DILocalVariable(name: "write_error", scope: !1889, file: !210, line: 122, type: !90)
!1889 = distinct !DILexicalBlock(scope: !1890, file: !210, line: 121, column: 5)
!1890 = distinct !DILexicalBlock(scope: !1886, file: !210, line: 119, column: 7)
!1891 = !DILocation(line: 119, column: 21, scope: !1890)
!1892 = !DILocation(line: 119, column: 7, scope: !1890)
!1893 = !DILocation(line: 119, column: 29, scope: !1890)
!1894 = !DILocation(line: 120, column: 7, scope: !1890)
!1895 = !DILocation(line: 120, column: 12, scope: !1890)
!1896 = !{i8 0, i8 2}
!1897 = !DILocation(line: 120, column: 25, scope: !1890)
!1898 = !DILocation(line: 120, column: 28, scope: !1890)
!1899 = !DILocation(line: 120, column: 34, scope: !1890)
!1900 = !DILocation(line: 119, column: 7, scope: !1886)
!1901 = !DILocation(line: 122, column: 33, scope: !1889)
!1902 = !DILocation(line: 122, column: 19, scope: !1889)
!1903 = !DILocation(line: 123, column: 11, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1889, file: !210, line: 123, column: 11)
!1905 = !DILocation(line: 0, scope: !1904)
!1906 = !DILocation(line: 123, column: 11, scope: !1889)
!1907 = !DILocation(line: 124, column: 36, scope: !1904)
!1908 = !DILocation(line: 124, column: 9, scope: !1904)
!1909 = !DILocation(line: 127, column: 9, scope: !1904)
!1910 = !DILocation(line: 129, column: 14, scope: !1889)
!1911 = !DILocation(line: 129, column: 7, scope: !1889)
!1912 = !DILocation(line: 134, column: 42, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1886, file: !210, line: 134, column: 7)
!1914 = !DILocation(line: 134, column: 28, scope: !1913)
!1915 = !DILocation(line: 134, column: 50, scope: !1913)
!1916 = !DILocation(line: 134, column: 7, scope: !1886)
!1917 = !DILocation(line: 135, column: 12, scope: !1913)
!1918 = !DILocation(line: 135, column: 5, scope: !1913)
!1919 = !DILocation(line: 136, column: 1, scope: !1886)
!1920 = distinct !DISubprogram(name: "fdadvise", scope: !1921, file: !1921, line: 31, type: !1922, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !285, retainedNodes: !1926)
!1921 = !DIFile(filename: "lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1922 = !DISubroutineType(types: !1923)
!1923 = !{null, !55, !1924, !1924, !1925}
!1924 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !1172, line: 63, baseType: !994)
!1925 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !32, line: 52, baseType: !31)
!1926 = !{!1927, !1928, !1929, !1930, !1931}
!1927 = !DILocalVariable(name: "fd", arg: 1, scope: !1920, file: !1921, line: 31, type: !55)
!1928 = !DILocalVariable(name: "offset", arg: 2, scope: !1920, file: !1921, line: 31, type: !1924)
!1929 = !DILocalVariable(name: "len", arg: 3, scope: !1920, file: !1921, line: 31, type: !1924)
!1930 = !DILocalVariable(name: "advice", arg: 4, scope: !1920, file: !1921, line: 31, type: !1925)
!1931 = !DILocalVariable(name: "__x", scope: !1932, file: !1921, line: 34, type: !55)
!1932 = distinct !DILexicalBlock(scope: !1920, file: !1921, line: 34, column: 3)
!1933 = !DILocation(line: 31, column: 15, scope: !1920)
!1934 = !DILocation(line: 31, column: 25, scope: !1920)
!1935 = !DILocation(line: 31, column: 39, scope: !1920)
!1936 = !DILocation(line: 31, column: 54, scope: !1920)
!1937 = !DILocation(line: 34, column: 3, scope: !1932)
!1938 = !DILocation(line: 36, column: 1, scope: !1920)
!1939 = distinct !DISubprogram(name: "fadvise", scope: !1921, file: !1921, line: 39, type: !1940, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !285, retainedNodes: !1976)
!1940 = !DISubroutineType(types: !1941)
!1941 = !{null, !1942, !1925}
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64)
!1943 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !970, line: 7, baseType: !1944)
!1944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !972, line: 49, size: 1728, elements: !1945)
!1945 = !{!1946, !1947, !1948, !1949, !1950, !1951, !1952, !1953, !1954, !1955, !1956, !1957, !1958, !1959, !1961, !1962, !1963, !1964, !1965, !1966, !1967, !1968, !1969, !1970, !1971, !1972, !1973, !1974, !1975}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1944, file: !972, line: 51, baseType: !55, size: 32)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1944, file: !972, line: 54, baseType: !41, size: 64, offset: 64)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1944, file: !972, line: 55, baseType: !41, size: 64, offset: 128)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1944, file: !972, line: 56, baseType: !41, size: 64, offset: 192)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1944, file: !972, line: 57, baseType: !41, size: 64, offset: 256)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1944, file: !972, line: 58, baseType: !41, size: 64, offset: 320)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1944, file: !972, line: 59, baseType: !41, size: 64, offset: 384)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1944, file: !972, line: 60, baseType: !41, size: 64, offset: 448)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1944, file: !972, line: 61, baseType: !41, size: 64, offset: 512)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1944, file: !972, line: 64, baseType: !41, size: 64, offset: 576)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1944, file: !972, line: 65, baseType: !41, size: 64, offset: 640)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1944, file: !972, line: 66, baseType: !41, size: 64, offset: 704)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1944, file: !972, line: 68, baseType: !987, size: 64, offset: 768)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1944, file: !972, line: 70, baseType: !1960, size: 64, offset: 832)
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1944, file: !972, line: 72, baseType: !55, size: 32, offset: 896)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1944, file: !972, line: 73, baseType: !55, size: 32, offset: 928)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1944, file: !972, line: 74, baseType: !994, size: 64, offset: 960)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1944, file: !972, line: 77, baseType: !154, size: 16, offset: 1024)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1944, file: !972, line: 78, baseType: !998, size: 8, offset: 1040)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1944, file: !972, line: 79, baseType: !1000, size: 8, offset: 1048)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1944, file: !972, line: 81, baseType: !1004, size: 64, offset: 1088)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1944, file: !972, line: 89, baseType: !1007, size: 64, offset: 1152)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1944, file: !972, line: 91, baseType: !1009, size: 64, offset: 1216)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1944, file: !972, line: 92, baseType: !1012, size: 64, offset: 1280)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1944, file: !972, line: 93, baseType: !1960, size: 64, offset: 1344)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1944, file: !972, line: 94, baseType: !43, size: 64, offset: 1408)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1944, file: !972, line: 95, baseType: !46, size: 64, offset: 1472)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1944, file: !972, line: 96, baseType: !55, size: 32, offset: 1536)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1944, file: !972, line: 98, baseType: !1019, size: 160, offset: 1568)
!1976 = !{!1977, !1978}
!1977 = !DILocalVariable(name: "fp", arg: 1, scope: !1939, file: !1921, line: 39, type: !1942)
!1978 = !DILocalVariable(name: "advice", arg: 2, scope: !1939, file: !1921, line: 39, type: !1925)
!1979 = !DILocation(line: 39, column: 16, scope: !1939)
!1980 = !DILocation(line: 39, column: 30, scope: !1939)
!1981 = !DILocation(line: 41, column: 7, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1939, file: !1921, line: 41, column: 7)
!1983 = !DILocation(line: 41, column: 7, scope: !1939)
!1984 = !DILocation(line: 42, column: 15, scope: !1982)
!1985 = !DILocation(line: 31, column: 15, scope: !1920, inlinedAt: !1986)
!1986 = distinct !DILocation(line: 42, column: 5, scope: !1982)
!1987 = !DILocation(line: 31, column: 25, scope: !1920, inlinedAt: !1986)
!1988 = !DILocation(line: 31, column: 39, scope: !1920, inlinedAt: !1986)
!1989 = !DILocation(line: 31, column: 54, scope: !1920, inlinedAt: !1986)
!1990 = !DILocation(line: 34, column: 3, scope: !1932, inlinedAt: !1986)
!1991 = !DILocation(line: 42, column: 5, scope: !1982)
!1992 = !DILocation(line: 43, column: 1, scope: !1939)
!1993 = distinct !DISubprogram(name: "getndelim2", scope: !1994, file: !1994, line: 71, type: !1995, isLocal: false, isDefinition: true, scopeLine: 73, flags: DIFlagPrototyped, isOptimized: true, unit: !288, retainedNodes: !2031)
!1994 = !DIFile(filename: "lib/getndelim2.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1995 = !DISubroutineType(types: !1996)
!1996 = !{!1171, !56, !145, !46, !46, !55, !55, !1997}
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1998, size: 64)
!1998 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !970, line: 7, baseType: !1999)
!1999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !972, line: 49, size: 1728, elements: !2000)
!2000 = !{!2001, !2002, !2003, !2004, !2005, !2006, !2007, !2008, !2009, !2010, !2011, !2012, !2013, !2014, !2016, !2017, !2018, !2019, !2020, !2021, !2022, !2023, !2024, !2025, !2026, !2027, !2028, !2029, !2030}
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1999, file: !972, line: 51, baseType: !55, size: 32)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1999, file: !972, line: 54, baseType: !41, size: 64, offset: 64)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1999, file: !972, line: 55, baseType: !41, size: 64, offset: 128)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1999, file: !972, line: 56, baseType: !41, size: 64, offset: 192)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1999, file: !972, line: 57, baseType: !41, size: 64, offset: 256)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1999, file: !972, line: 58, baseType: !41, size: 64, offset: 320)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1999, file: !972, line: 59, baseType: !41, size: 64, offset: 384)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1999, file: !972, line: 60, baseType: !41, size: 64, offset: 448)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1999, file: !972, line: 61, baseType: !41, size: 64, offset: 512)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1999, file: !972, line: 64, baseType: !41, size: 64, offset: 576)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1999, file: !972, line: 65, baseType: !41, size: 64, offset: 640)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1999, file: !972, line: 66, baseType: !41, size: 64, offset: 704)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1999, file: !972, line: 68, baseType: !987, size: 64, offset: 768)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1999, file: !972, line: 70, baseType: !2015, size: 64, offset: 832)
!2015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1999, size: 64)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1999, file: !972, line: 72, baseType: !55, size: 32, offset: 896)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1999, file: !972, line: 73, baseType: !55, size: 32, offset: 928)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1999, file: !972, line: 74, baseType: !994, size: 64, offset: 960)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1999, file: !972, line: 77, baseType: !154, size: 16, offset: 1024)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1999, file: !972, line: 78, baseType: !998, size: 8, offset: 1040)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1999, file: !972, line: 79, baseType: !1000, size: 8, offset: 1048)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1999, file: !972, line: 81, baseType: !1004, size: 64, offset: 1088)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1999, file: !972, line: 89, baseType: !1007, size: 64, offset: 1152)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1999, file: !972, line: 91, baseType: !1009, size: 64, offset: 1216)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1999, file: !972, line: 92, baseType: !1012, size: 64, offset: 1280)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1999, file: !972, line: 93, baseType: !2015, size: 64, offset: 1344)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1999, file: !972, line: 94, baseType: !43, size: 64, offset: 1408)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1999, file: !972, line: 95, baseType: !46, size: 64, offset: 1472)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1999, file: !972, line: 96, baseType: !55, size: 32, offset: 1536)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1999, file: !972, line: 98, baseType: !1019, size: 160, offset: 1568)
!2031 = !{!2032, !2033, !2034, !2035, !2036, !2037, !2038, !2039, !2040, !2041, !2042, !2043, !2044, !2045, !2047, !2048, !2049, !2054, !2057, !2058, !2061}
!2032 = !DILocalVariable(name: "lineptr", arg: 1, scope: !1993, file: !1994, line: 71, type: !56)
!2033 = !DILocalVariable(name: "linesize", arg: 2, scope: !1993, file: !1994, line: 71, type: !145)
!2034 = !DILocalVariable(name: "offset", arg: 3, scope: !1993, file: !1994, line: 71, type: !46)
!2035 = !DILocalVariable(name: "nmax", arg: 4, scope: !1993, file: !1994, line: 71, type: !46)
!2036 = !DILocalVariable(name: "delim1", arg: 5, scope: !1993, file: !1994, line: 72, type: !55)
!2037 = !DILocalVariable(name: "delim2", arg: 6, scope: !1993, file: !1994, line: 72, type: !55)
!2038 = !DILocalVariable(name: "stream", arg: 7, scope: !1993, file: !1994, line: 72, type: !1997)
!2039 = !DILocalVariable(name: "nbytes_avail", scope: !1993, file: !1994, line: 74, type: !46)
!2040 = !DILocalVariable(name: "read_pos", scope: !1993, file: !1994, line: 75, type: !41)
!2041 = !DILocalVariable(name: "bytes_stored", scope: !1993, file: !1994, line: 76, type: !1171)
!2042 = !DILocalVariable(name: "ptr", scope: !1993, file: !1994, line: 77, type: !41)
!2043 = !DILocalVariable(name: "size", scope: !1993, file: !1994, line: 78, type: !46)
!2044 = !DILocalVariable(name: "found_delimiter", scope: !1993, file: !1994, line: 79, type: !62)
!2045 = !DILocalVariable(name: "c", scope: !2046, file: !1994, line: 112, type: !55)
!2046 = distinct !DILexicalBlock(scope: !1993, file: !1994, line: 108, column: 5)
!2047 = !DILocalVariable(name: "buffer", scope: !2046, file: !1994, line: 113, type: !90)
!2048 = !DILocalVariable(name: "buffer_len", scope: !2046, file: !1994, line: 114, type: !46)
!2049 = !DILocalVariable(name: "end", scope: !2050, file: !1994, line: 121, type: !90)
!2050 = distinct !DILexicalBlock(scope: !2051, file: !1994, line: 120, column: 13)
!2051 = distinct !DILexicalBlock(scope: !2052, file: !1994, line: 119, column: 15)
!2052 = distinct !DILexicalBlock(scope: !2053, file: !1994, line: 118, column: 9)
!2053 = distinct !DILexicalBlock(scope: !2046, file: !1994, line: 117, column: 11)
!2054 = !DILocalVariable(name: "newsize", scope: !2055, file: !1994, line: 153, type: !46)
!2055 = distinct !DILexicalBlock(scope: !2056, file: !1994, line: 150, column: 9)
!2056 = distinct !DILexicalBlock(scope: !2046, file: !1994, line: 149, column: 11)
!2057 = !DILocalVariable(name: "newptr", scope: !2055, file: !1994, line: 154, type: !41)
!2058 = !DILocalVariable(name: "newsizemax", scope: !2059, file: !1994, line: 166, type: !46)
!2059 = distinct !DILexicalBlock(scope: !2060, file: !1994, line: 165, column: 13)
!2060 = distinct !DILexicalBlock(scope: !2055, file: !1994, line: 164, column: 15)
!2061 = !DILocalVariable(name: "copy_len", scope: !2062, file: !1994, line: 186, type: !46)
!2062 = distinct !DILexicalBlock(scope: !2063, file: !1994, line: 185, column: 9)
!2063 = distinct !DILexicalBlock(scope: !2046, file: !1994, line: 184, column: 11)
!2064 = !DILocation(line: 71, column: 20, scope: !1993)
!2065 = !DILocation(line: 71, column: 37, scope: !1993)
!2066 = !DILocation(line: 71, column: 54, scope: !1993)
!2067 = !DILocation(line: 71, column: 69, scope: !1993)
!2068 = !DILocation(line: 72, column: 17, scope: !1993)
!2069 = !DILocation(line: 72, column: 29, scope: !1993)
!2070 = !DILocation(line: 72, column: 43, scope: !1993)
!2071 = !DILocation(line: 76, column: 11, scope: !1993)
!2072 = !DILocation(line: 77, column: 15, scope: !1993)
!2073 = !DILocation(line: 77, column: 9, scope: !1993)
!2074 = !DILocation(line: 78, column: 17, scope: !1993)
!2075 = !DILocation(line: 78, column: 10, scope: !1993)
!2076 = !DILocation(line: 81, column: 8, scope: !2077)
!2077 = distinct !DILexicalBlock(scope: !1993, file: !1994, line: 81, column: 7)
!2078 = !DILocation(line: 81, column: 7, scope: !1993)
!2079 = !DILocation(line: 83, column: 19, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !2077, file: !1994, line: 82, column: 5)
!2081 = !DILocation(line: 83, column: 14, scope: !2080)
!2082 = !DILocation(line: 84, column: 13, scope: !2080)
!2083 = !DILocation(line: 85, column: 12, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !2080, file: !1994, line: 85, column: 11)
!2085 = !DILocation(line: 85, column: 11, scope: !2080)
!2086 = !DILocation(line: 0, scope: !2080)
!2087 = !DILocation(line: 89, column: 12, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !1993, file: !1994, line: 89, column: 7)
!2089 = !DILocation(line: 89, column: 7, scope: !1993)
!2090 = !DILocation(line: 92, column: 23, scope: !1993)
!2091 = !DILocation(line: 74, column: 10, scope: !1993)
!2092 = !DILocation(line: 95, column: 20, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !1993, file: !1994, line: 95, column: 7)
!2094 = !DILocation(line: 95, column: 33, scope: !2093)
!2095 = !DILocation(line: 95, column: 25, scope: !2093)
!2096 = !DILocation(line: 93, column: 18, scope: !1993)
!2097 = !DILocation(line: 75, column: 9, scope: !1993)
!2098 = !DILocation(line: 99, column: 14, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !1993, file: !1994, line: 99, column: 7)
!2100 = !DILocation(line: 101, column: 19, scope: !2101)
!2101 = distinct !DILexicalBlock(scope: !2099, file: !1994, line: 101, column: 12)
!2102 = !DILocation(line: 101, column: 12, scope: !2099)
!2103 = !DILocation(line: 99, column: 7, scope: !1993)
!2104 = !DILocation(line: 79, column: 8, scope: !1993)
!2105 = !DILocation(line: 107, column: 3, scope: !1993)
!2106 = !DILocation(line: 0, scope: !2062)
!2107 = !DILocation(line: 0, scope: !2055)
!2108 = !DILocation(line: 0, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !2110, file: !1994, line: 123, column: 17)
!2110 = distinct !DILexicalBlock(scope: !2050, file: !1994, line: 122, column: 19)
!2111 = !DILocation(line: 112, column: 11, scope: !2046)
!2112 = !DILocation(line: 114, column: 7, scope: !2046)
!2113 = !DILocation(line: 114, column: 14, scope: !2046)
!2114 = !DILocation(line: 116, column: 16, scope: !2046)
!2115 = !DILocation(line: 113, column: 19, scope: !2046)
!2116 = !DILocation(line: 117, column: 11, scope: !2053)
!2117 = !DILocation(line: 117, column: 11, scope: !2046)
!2118 = !DILocation(line: 0, scope: !2050)
!2119 = !DILocation(line: 119, column: 15, scope: !2052)
!2120 = !DILocation(line: 121, column: 33, scope: !2050)
!2121 = !DILocation(line: 121, column: 27, scope: !2050)
!2122 = !DILocation(line: 122, column: 19, scope: !2110)
!2123 = !DILocation(line: 122, column: 19, scope: !2050)
!2124 = !DILocation(line: 124, column: 36, scope: !2109)
!2125 = !DILocation(line: 124, column: 45, scope: !2109)
!2126 = !DILocation(line: 124, column: 30, scope: !2109)
!2127 = !DILocation(line: 126, column: 17, scope: !2109)
!2128 = !DILocalVariable(name: "__fp", arg: 1, scope: !2129, file: !1068, line: 66, type: !1997)
!2129 = distinct !DISubprogram(name: "getc_unlocked", scope: !1068, file: !1068, line: 66, type: !2130, isLocal: false, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: true, unit: !288, retainedNodes: !2132)
!2130 = !DISubroutineType(types: !2131)
!2131 = !{!55, !1997}
!2132 = !{!2128}
!2133 = !DILocation(line: 66, column: 22, scope: !2129, inlinedAt: !2134)
!2134 = distinct !DILocation(line: 131, column: 15, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !2053, file: !1994, line: 130, column: 9)
!2136 = !DILocation(line: 68, column: 10, scope: !2129, inlinedAt: !2134)
!2137 = !DILocation(line: 132, column: 15, scope: !2135)
!2138 = !DILocation(line: 132, column: 17, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !2135, file: !1994, line: 132, column: 15)
!2140 = !DILocation(line: 140, column: 17, scope: !2141)
!2141 = distinct !DILexicalBlock(scope: !2135, file: !1994, line: 140, column: 15)
!2142 = !DILocation(line: 140, column: 32, scope: !2141)
!2143 = !DILocation(line: 140, column: 27, scope: !2141)
!2144 = !DILocation(line: 142, column: 22, scope: !2135)
!2145 = !DILocation(line: 149, column: 26, scope: !2056)
!2146 = !DILocation(line: 0, scope: !2141)
!2147 = !DILocation(line: 149, column: 37, scope: !2056)
!2148 = !DILocation(line: 149, column: 24, scope: !2056)
!2149 = !DILocation(line: 149, column: 49, scope: !2056)
!2150 = !DILocation(line: 149, column: 41, scope: !2056)
!2151 = !DILocation(line: 153, column: 33, scope: !2055)
!2152 = !DILocation(line: 153, column: 52, scope: !2055)
!2153 = !DILocation(line: 153, column: 68, scope: !2055)
!2154 = !DILocation(line: 153, column: 28, scope: !2055)
!2155 = !DILocation(line: 153, column: 18, scope: !2055)
!2156 = !DILocation(line: 158, column: 35, scope: !2157)
!2157 = distinct !DILexicalBlock(scope: !2055, file: !1994, line: 158, column: 15)
!2158 = !DILocation(line: 158, column: 23, scope: !2157)
!2159 = !DILocation(line: 158, column: 42, scope: !2157)
!2160 = !DILocation(line: 159, column: 53, scope: !2157)
!2161 = !DILocation(line: 158, column: 15, scope: !2055)
!2162 = !DILocation(line: 161, column: 23, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !2055, file: !1994, line: 161, column: 15)
!2164 = !DILocation(line: 161, column: 44, scope: !2163)
!2165 = !DILocation(line: 161, column: 33, scope: !2163)
!2166 = !DILocation(line: 164, column: 44, scope: !2060)
!2167 = !DILocation(line: 164, column: 34, scope: !2060)
!2168 = !DILocation(line: 164, column: 15, scope: !2055)
!2169 = !DILocation(line: 166, column: 22, scope: !2059)
!2170 = !DILocation(line: 167, column: 24, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2059, file: !1994, line: 167, column: 19)
!2172 = !DILocation(line: 201, column: 5, scope: !1993)
!2173 = !DILocation(line: 159, column: 21, scope: !2157)
!2174 = !DILocation(line: 172, column: 34, scope: !2055)
!2175 = !DILocation(line: 173, column: 20, scope: !2055)
!2176 = !DILocation(line: 154, column: 17, scope: !2055)
!2177 = !DILocation(line: 174, column: 16, scope: !2178)
!2178 = distinct !DILexicalBlock(scope: !2055, file: !1994, line: 174, column: 15)
!2179 = !DILocation(line: 178, column: 42, scope: !2055)
!2180 = !DILocation(line: 0, scope: !1993)
!2181 = !DILocation(line: 184, column: 13, scope: !2063)
!2182 = !DILocation(line: 184, column: 11, scope: !2046)
!2183 = !DILocation(line: 186, column: 42, scope: !2062)
!2184 = !DILocation(line: 186, column: 18, scope: !2062)
!2185 = !DILocation(line: 187, column: 15, scope: !2186)
!2186 = distinct !DILexicalBlock(scope: !2062, file: !1994, line: 187, column: 15)
!2187 = !DILocation(line: 187, column: 26, scope: !2186)
!2188 = !DILocation(line: 187, column: 15, scope: !2062)
!2189 = !DILocation(line: 189, column: 15, scope: !2062)
!2190 = !DILocation(line: 190, column: 13, scope: !2191)
!2191 = distinct !DILexicalBlock(scope: !2062, file: !1994, line: 189, column: 15)
!2192 = !DILocation(line: 192, column: 25, scope: !2191)
!2193 = !DILocation(line: 192, column: 23, scope: !2191)
!2194 = !DILocation(line: 193, column: 20, scope: !2062)
!2195 = !DILocation(line: 194, column: 24, scope: !2062)
!2196 = !DILocation(line: 195, column: 9, scope: !2062)
!2197 = !DILocation(line: 199, column: 18, scope: !2198)
!2198 = distinct !DILexicalBlock(scope: !2046, file: !1994, line: 199, column: 11)
!2199 = !DILocation(line: 199, column: 40, scope: !2198)
!2200 = !DILocation(line: 199, column: 21, scope: !2198)
!2201 = !DILocation(line: 199, column: 11, scope: !2046)
!2202 = !DILocation(line: 202, column: 11, scope: !1993)
!2203 = !DILocation(line: 201, column: 5, scope: !2046)
!2204 = distinct !{!2204, !2105, !2205}
!2205 = !DILocation(line: 202, column: 26, scope: !1993)
!2206 = !DILocation(line: 135, column: 28, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !2208, file: !1994, line: 135, column: 19)
!2208 = distinct !DILexicalBlock(scope: !2139, file: !1994, line: 133, column: 13)
!2209 = !DILocation(line: 214, column: 12, scope: !1993)
!2210 = !DILocation(line: 215, column: 13, scope: !1993)
!2211 = !DILocation(line: 216, column: 10, scope: !1993)
!2212 = !DILocation(line: 206, column: 13, scope: !1993)
!2213 = !DILocation(line: 208, column: 34, scope: !1993)
!2214 = !DILocation(line: 208, column: 27, scope: !1993)
!2215 = !DILocation(line: 217, column: 1, scope: !1993)
!2216 = distinct !DISubprogram(name: "memchr2", scope: !2217, file: !2217, line: 36, type: !2218, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: true, unit: !291, retainedNodes: !2220)
!2217 = !DIFile(filename: "lib/memchr2.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2218 = !DISubroutineType(types: !2219)
!2219 = !{!43, !1844, !55, !55, !46}
!2220 = !{!2221, !2222, !2223, !2224, !2225, !2226, !2227, !2231, !2232, !2233, !2234, !2235, !2236, !2238}
!2221 = !DILocalVariable(name: "s", arg: 1, scope: !2216, file: !2217, line: 36, type: !1844)
!2222 = !DILocalVariable(name: "c1_in", arg: 2, scope: !2216, file: !2217, line: 36, type: !55)
!2223 = !DILocalVariable(name: "c2_in", arg: 3, scope: !2216, file: !2217, line: 36, type: !55)
!2224 = !DILocalVariable(name: "n", arg: 4, scope: !2216, file: !2217, line: 36, type: !46)
!2225 = !DILocalVariable(name: "char_ptr", scope: !2216, file: !2217, line: 45, type: !295)
!2226 = !DILocalVariable(name: "void_ptr", scope: !2216, file: !2217, line: 46, type: !1844)
!2227 = !DILocalVariable(name: "longword_ptr", scope: !2216, file: !2217, line: 47, type: !2228)
!2228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2229, size: 64)
!2229 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2230)
!2230 = !DIDerivedType(tag: DW_TAG_typedef, name: "longword", scope: !2216, file: !2217, line: 43, baseType: !48)
!2231 = !DILocalVariable(name: "repeated_one", scope: !2216, file: !2217, line: 48, type: !2230)
!2232 = !DILocalVariable(name: "repeated_c1", scope: !2216, file: !2217, line: 49, type: !2230)
!2233 = !DILocalVariable(name: "repeated_c2", scope: !2216, file: !2217, line: 50, type: !2230)
!2234 = !DILocalVariable(name: "c1", scope: !2216, file: !2217, line: 51, type: !45)
!2235 = !DILocalVariable(name: "c2", scope: !2216, file: !2217, line: 52, type: !45)
!2236 = !DILocalVariable(name: "longword1", scope: !2237, file: !2217, line: 142, type: !2230)
!2237 = distinct !DILexicalBlock(scope: !2216, file: !2217, line: 141, column: 5)
!2238 = !DILocalVariable(name: "longword2", scope: !2237, file: !2217, line: 143, type: !2230)
!2239 = !DILocation(line: 36, column: 22, scope: !2216)
!2240 = !DILocation(line: 36, column: 29, scope: !2216)
!2241 = !DILocation(line: 36, column: 40, scope: !2216)
!2242 = !DILocation(line: 36, column: 54, scope: !2216)
!2243 = !DILocation(line: 51, column: 17, scope: !2216)
!2244 = !DILocation(line: 52, column: 17, scope: !2216)
!2245 = !DILocation(line: 57, column: 7, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !2216, file: !2217, line: 57, column: 7)
!2247 = !DILocation(line: 57, column: 10, scope: !2246)
!2248 = !DILocation(line: 57, column: 7, scope: !2216)
!2249 = !DILocation(line: 46, column: 15, scope: !2216)
!2250 = !DILocation(line: 63, column: 10, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !2252, file: !2217, line: 62, column: 3)
!2252 = distinct !DILexicalBlock(scope: !2216, file: !2217, line: 62, column: 3)
!2253 = !DILocation(line: 63, column: 17, scope: !2251)
!2254 = !DILocation(line: 63, column: 38, scope: !2251)
!2255 = !DILocation(line: 63, column: 58, scope: !2251)
!2256 = !DILocation(line: 63, column: 14, scope: !2251)
!2257 = !DILocation(line: 62, column: 3, scope: !2252)
!2258 = !DILocation(line: 58, column: 12, scope: !2246)
!2259 = !DILocation(line: 58, column: 5, scope: !2246)
!2260 = !DILocation(line: 45, column: 24, scope: !2216)
!2261 = !DILocation(line: 67, column: 11, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !2263, file: !2217, line: 67, column: 11)
!2263 = distinct !DILexicalBlock(scope: !2251, file: !2217, line: 65, column: 5)
!2264 = !DILocation(line: 67, column: 21, scope: !2262)
!2265 = !DILocation(line: 67, column: 40, scope: !2262)
!2266 = !DILocation(line: 67, column: 27, scope: !2262)
!2267 = !DILocation(line: 69, column: 27, scope: !2263)
!2268 = !DILocation(line: 64, column: 8, scope: !2251)
!2269 = distinct !{!2269, !2257, !2270}
!2270 = !DILocation(line: 70, column: 5, scope: !2252)
!2271 = !DILocation(line: 0, scope: !2263)
!2272 = !DILocation(line: 72, column: 18, scope: !2216)
!2273 = !DILocation(line: 47, column: 19, scope: !2216)
!2274 = !DILocation(line: 48, column: 12, scope: !2216)
!2275 = !DILocation(line: 82, column: 26, scope: !2216)
!2276 = !DILocation(line: 82, column: 20, scope: !2216)
!2277 = !DILocation(line: 49, column: 12, scope: !2216)
!2278 = !DILocation(line: 84, column: 30, scope: !2216)
!2279 = !DILocation(line: 84, column: 15, scope: !2216)
!2280 = !DILocation(line: 50, column: 12, scope: !2216)
!2281 = !DILocation(line: 89, column: 34, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !2283, file: !2217, line: 87, column: 5)
!2283 = distinct !DILexicalBlock(scope: !2216, file: !2217, line: 86, column: 7)
!2284 = !DILocation(line: 89, column: 19, scope: !2282)
!2285 = !DILocation(line: 140, column: 12, scope: !2216)
!2286 = !DILocation(line: 140, column: 3, scope: !2216)
!2287 = !DILocation(line: 72, column: 16, scope: !2216)
!2288 = !DILocation(line: 142, column: 28, scope: !2237)
!2289 = !DILocation(line: 142, column: 16, scope: !2237)
!2290 = !DILocation(line: 142, column: 42, scope: !2237)
!2291 = !DILocation(line: 143, column: 16, scope: !2237)
!2292 = !DILocation(line: 145, column: 25, scope: !2293)
!2293 = distinct !DILexicalBlock(scope: !2237, file: !2217, line: 145, column: 11)
!2294 = !DILocation(line: 145, column: 43, scope: !2293)
!2295 = !DILocation(line: 145, column: 41, scope: !2293)
!2296 = !DILocation(line: 146, column: 13, scope: !2293)
!2297 = !DILocation(line: 147, column: 12, scope: !2293)
!2298 = !DILocation(line: 147, column: 35, scope: !2293)
!2299 = !DILocation(line: 149, column: 19, scope: !2237)
!2300 = !DILocation(line: 150, column: 9, scope: !2237)
!2301 = !DILocation(line: 145, column: 11, scope: !2237)
!2302 = distinct !{!2302, !2286, !2303}
!2303 = !DILocation(line: 151, column: 5, scope: !2216)
!2304 = !DILocation(line: 162, column: 12, scope: !2305)
!2305 = distinct !DILexicalBlock(scope: !2306, file: !2217, line: 162, column: 3)
!2306 = distinct !DILexicalBlock(scope: !2216, file: !2217, line: 162, column: 3)
!2307 = !DILocation(line: 162, column: 3, scope: !2306)
!2308 = !DILocation(line: 153, column: 14, scope: !2216)
!2309 = !DILocation(line: 164, column: 11, scope: !2310)
!2310 = distinct !DILexicalBlock(scope: !2311, file: !2217, line: 164, column: 11)
!2311 = distinct !DILexicalBlock(scope: !2305, file: !2217, line: 163, column: 5)
!2312 = !DILocation(line: 164, column: 21, scope: !2310)
!2313 = !DILocation(line: 164, column: 40, scope: !2310)
!2314 = !DILocation(line: 164, column: 27, scope: !2310)
!2315 = !DILocation(line: 162, column: 17, scope: !2305)
!2316 = !DILocation(line: 162, column: 22, scope: !2305)
!2317 = distinct !{!2317, !2307, !2318}
!2318 = !DILocation(line: 166, column: 5, scope: !2306)
!2319 = !DILocation(line: 0, scope: !2216)
!2320 = !DILocation(line: 169, column: 1, scope: !2216)
!2321 = distinct !DISubprogram(name: "set_program_name", scope: !224, file: !224, line: 39, type: !745, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !220, retainedNodes: !2322)
!2322 = !{!2323, !2324, !2325}
!2323 = !DILocalVariable(name: "argv0", arg: 1, scope: !2321, file: !224, line: 39, type: !90)
!2324 = !DILocalVariable(name: "slash", scope: !2321, file: !224, line: 46, type: !90)
!2325 = !DILocalVariable(name: "base", scope: !2321, file: !224, line: 47, type: !90)
!2326 = !DILocation(line: 39, column: 31, scope: !2321)
!2327 = !DILocation(line: 51, column: 13, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !2321, file: !224, line: 51, column: 7)
!2329 = !DILocation(line: 51, column: 7, scope: !2321)
!2330 = !DILocation(line: 55, column: 14, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !2328, file: !224, line: 52, column: 5)
!2332 = !DILocation(line: 54, column: 7, scope: !2331)
!2333 = !DILocation(line: 56, column: 7, scope: !2331)
!2334 = !DILocation(line: 59, column: 11, scope: !2321)
!2335 = !DILocation(line: 46, column: 15, scope: !2321)
!2336 = !DILocation(line: 60, column: 17, scope: !2321)
!2337 = !DILocation(line: 60, column: 33, scope: !2321)
!2338 = !DILocation(line: 60, column: 11, scope: !2321)
!2339 = !DILocation(line: 47, column: 15, scope: !2321)
!2340 = !DILocation(line: 61, column: 12, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !2321, file: !224, line: 61, column: 7)
!2342 = !DILocation(line: 61, column: 20, scope: !2341)
!2343 = !DILocation(line: 61, column: 25, scope: !2341)
!2344 = !DILocation(line: 61, column: 42, scope: !2341)
!2345 = !DILocation(line: 61, column: 28, scope: !2341)
!2346 = !DILocation(line: 61, column: 61, scope: !2341)
!2347 = !DILocation(line: 61, column: 7, scope: !2321)
!2348 = !DILocation(line: 64, column: 11, scope: !2349)
!2349 = distinct !DILexicalBlock(scope: !2350, file: !224, line: 64, column: 11)
!2350 = distinct !DILexicalBlock(scope: !2341, file: !224, line: 62, column: 5)
!2351 = !DILocation(line: 64, column: 36, scope: !2349)
!2352 = !DILocation(line: 64, column: 11, scope: !2350)
!2353 = !DILocation(line: 66, column: 24, scope: !2354)
!2354 = distinct !DILexicalBlock(scope: !2349, file: !224, line: 65, column: 9)
!2355 = !DILocation(line: 70, column: 41, scope: !2354)
!2356 = !DILocation(line: 72, column: 9, scope: !2354)
!2357 = !DILocation(line: 84, column: 16, scope: !2321)
!2358 = !DILocation(line: 90, column: 27, scope: !2321)
!2359 = !DILocation(line: 92, column: 1, scope: !2321)
!2360 = distinct !DISubprogram(name: "clone_quoting_options", scope: !239, file: !239, line: 122, type: !2361, isLocal: false, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, unit: !227, retainedNodes: !2364)
!2361 = !DISubroutineType(types: !2362)
!2362 = !{!2363, !2363}
!2363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!2364 = !{!2365, !2366, !2367}
!2365 = !DILocalVariable(name: "o", arg: 1, scope: !2360, file: !239, line: 122, type: !2363)
!2366 = !DILocalVariable(name: "e", scope: !2360, file: !239, line: 124, type: !55)
!2367 = !DILocalVariable(name: "p", scope: !2360, file: !239, line: 125, type: !2363)
!2368 = !DILocation(line: 122, column: 48, scope: !2360)
!2369 = !DILocation(line: 124, column: 11, scope: !2360)
!2370 = !DILocation(line: 124, column: 7, scope: !2360)
!2371 = !DILocation(line: 125, column: 40, scope: !2360)
!2372 = !DILocation(line: 125, column: 31, scope: !2360)
!2373 = !DILocation(line: 125, column: 27, scope: !2360)
!2374 = !DILocation(line: 127, column: 9, scope: !2360)
!2375 = !DILocation(line: 128, column: 3, scope: !2360)
!2376 = distinct !DISubprogram(name: "get_quoting_style", scope: !239, file: !239, line: 133, type: !2377, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !227, retainedNodes: !2381)
!2377 = !DISubroutineType(types: !2378)
!2378 = !{!17, !2379}
!2379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2380, size: 64)
!2380 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !246)
!2381 = !{!2382}
!2382 = !DILocalVariable(name: "o", arg: 1, scope: !2376, file: !239, line: 133, type: !2379)
!2383 = !DILocation(line: 133, column: 50, scope: !2376)
!2384 = !DILocation(line: 135, column: 11, scope: !2376)
!2385 = !DILocation(line: 135, column: 46, scope: !2376)
!2386 = !{!2387, !772, i64 0}
!2387 = !{!"quoting_options", !772, i64 0, !931, i64 4, !772, i64 8, !771, i64 40, !771, i64 48}
!2388 = !DILocation(line: 135, column: 3, scope: !2376)
!2389 = distinct !DISubprogram(name: "set_quoting_style", scope: !239, file: !239, line: 141, type: !2390, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: true, unit: !227, retainedNodes: !2392)
!2390 = !DISubroutineType(types: !2391)
!2391 = !{null, !2363, !17}
!2392 = !{!2393, !2394}
!2393 = !DILocalVariable(name: "o", arg: 1, scope: !2389, file: !239, line: 141, type: !2363)
!2394 = !DILocalVariable(name: "s", arg: 2, scope: !2389, file: !239, line: 141, type: !17)
!2395 = !DILocation(line: 141, column: 44, scope: !2389)
!2396 = !DILocation(line: 141, column: 66, scope: !2389)
!2397 = !DILocation(line: 143, column: 4, scope: !2389)
!2398 = !DILocation(line: 143, column: 39, scope: !2389)
!2399 = !DILocation(line: 143, column: 45, scope: !2389)
!2400 = !DILocation(line: 144, column: 1, scope: !2389)
!2401 = distinct !DISubprogram(name: "set_char_quoting", scope: !239, file: !239, line: 152, type: !2402, isLocal: false, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, unit: !227, retainedNodes: !2404)
!2402 = !DISubroutineType(types: !2403)
!2403 = !{!55, !2363, !42, !55}
!2404 = !{!2405, !2406, !2407, !2408, !2409, !2411, !2412}
!2405 = !DILocalVariable(name: "o", arg: 1, scope: !2401, file: !239, line: 152, type: !2363)
!2406 = !DILocalVariable(name: "c", arg: 2, scope: !2401, file: !239, line: 152, type: !42)
!2407 = !DILocalVariable(name: "i", arg: 3, scope: !2401, file: !239, line: 152, type: !55)
!2408 = !DILocalVariable(name: "uc", scope: !2401, file: !239, line: 154, type: !45)
!2409 = !DILocalVariable(name: "p", scope: !2401, file: !239, line: 155, type: !2410)
!2410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!2411 = !DILocalVariable(name: "shift", scope: !2401, file: !239, line: 157, type: !55)
!2412 = !DILocalVariable(name: "r", scope: !2401, file: !239, line: 158, type: !55)
!2413 = !DILocation(line: 152, column: 43, scope: !2401)
!2414 = !DILocation(line: 152, column: 51, scope: !2401)
!2415 = !DILocation(line: 152, column: 58, scope: !2401)
!2416 = !DILocation(line: 154, column: 17, scope: !2401)
!2417 = !DILocation(line: 156, column: 6, scope: !2401)
!2418 = !DILocation(line: 156, column: 62, scope: !2401)
!2419 = !DILocation(line: 156, column: 57, scope: !2401)
!2420 = !DILocation(line: 155, column: 17, scope: !2401)
!2421 = !DILocation(line: 157, column: 15, scope: !2401)
!2422 = !DILocation(line: 157, column: 7, scope: !2401)
!2423 = !DILocation(line: 158, column: 12, scope: !2401)
!2424 = !DILocation(line: 158, column: 15, scope: !2401)
!2425 = !DILocation(line: 158, column: 25, scope: !2401)
!2426 = !DILocation(line: 158, column: 7, scope: !2401)
!2427 = !DILocation(line: 159, column: 13, scope: !2401)
!2428 = !DILocation(line: 159, column: 18, scope: !2401)
!2429 = !DILocation(line: 159, column: 23, scope: !2401)
!2430 = !DILocation(line: 159, column: 6, scope: !2401)
!2431 = !DILocation(line: 160, column: 3, scope: !2401)
!2432 = distinct !DISubprogram(name: "set_quoting_flags", scope: !239, file: !239, line: 168, type: !2433, isLocal: false, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true, unit: !227, retainedNodes: !2435)
!2433 = !DISubroutineType(types: !2434)
!2434 = !{!55, !2363, !55}
!2435 = !{!2436, !2437, !2438}
!2436 = !DILocalVariable(name: "o", arg: 1, scope: !2432, file: !239, line: 168, type: !2363)
!2437 = !DILocalVariable(name: "i", arg: 2, scope: !2432, file: !239, line: 168, type: !55)
!2438 = !DILocalVariable(name: "r", scope: !2432, file: !239, line: 170, type: !55)
!2439 = !DILocation(line: 168, column: 44, scope: !2432)
!2440 = !DILocation(line: 168, column: 51, scope: !2432)
!2441 = !DILocation(line: 171, column: 8, scope: !2442)
!2442 = distinct !DILexicalBlock(scope: !2432, file: !239, line: 171, column: 7)
!2443 = !DILocation(line: 171, column: 7, scope: !2432)
!2444 = !DILocation(line: 173, column: 10, scope: !2432)
!2445 = !{!2387, !931, i64 4}
!2446 = !DILocation(line: 170, column: 7, scope: !2432)
!2447 = !DILocation(line: 174, column: 12, scope: !2432)
!2448 = !DILocation(line: 175, column: 3, scope: !2432)
!2449 = distinct !DISubprogram(name: "set_custom_quoting", scope: !239, file: !239, line: 179, type: !2450, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !227, retainedNodes: !2452)
!2450 = !DISubroutineType(types: !2451)
!2451 = !{null, !2363, !90, !90}
!2452 = !{!2453, !2454, !2455}
!2453 = !DILocalVariable(name: "o", arg: 1, scope: !2449, file: !239, line: 179, type: !2363)
!2454 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2449, file: !239, line: 180, type: !90)
!2455 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2449, file: !239, line: 180, type: !90)
!2456 = !DILocation(line: 179, column: 45, scope: !2449)
!2457 = !DILocation(line: 180, column: 33, scope: !2449)
!2458 = !DILocation(line: 180, column: 57, scope: !2449)
!2459 = !DILocation(line: 182, column: 8, scope: !2460)
!2460 = distinct !DILexicalBlock(scope: !2449, file: !239, line: 182, column: 7)
!2461 = !DILocation(line: 182, column: 7, scope: !2449)
!2462 = !DILocation(line: 184, column: 6, scope: !2449)
!2463 = !DILocation(line: 184, column: 12, scope: !2449)
!2464 = !DILocation(line: 185, column: 8, scope: !2465)
!2465 = distinct !DILexicalBlock(scope: !2449, file: !239, line: 185, column: 7)
!2466 = !DILocation(line: 185, column: 23, scope: !2465)
!2467 = !DILocation(line: 185, column: 19, scope: !2465)
!2468 = !DILocation(line: 186, column: 5, scope: !2465)
!2469 = !DILocation(line: 187, column: 6, scope: !2449)
!2470 = !DILocation(line: 187, column: 17, scope: !2449)
!2471 = !{!2387, !771, i64 40}
!2472 = !DILocation(line: 188, column: 6, scope: !2449)
!2473 = !DILocation(line: 188, column: 18, scope: !2449)
!2474 = !{!2387, !771, i64 48}
!2475 = !DILocation(line: 189, column: 1, scope: !2449)
!2476 = distinct !DISubprogram(name: "quotearg_buffer", scope: !239, file: !239, line: 784, type: !2477, isLocal: false, isDefinition: true, scopeLine: 787, flags: DIFlagPrototyped, isOptimized: true, unit: !227, retainedNodes: !2479)
!2477 = !DISubroutineType(types: !2478)
!2478 = !{!46, !41, !46, !90, !46, !2379}
!2479 = !{!2480, !2481, !2482, !2483, !2484, !2485, !2486, !2487}
!2480 = !DILocalVariable(name: "buffer", arg: 1, scope: !2476, file: !239, line: 784, type: !41)
!2481 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2476, file: !239, line: 784, type: !46)
!2482 = !DILocalVariable(name: "arg", arg: 3, scope: !2476, file: !239, line: 785, type: !90)
!2483 = !DILocalVariable(name: "argsize", arg: 4, scope: !2476, file: !239, line: 785, type: !46)
!2484 = !DILocalVariable(name: "o", arg: 5, scope: !2476, file: !239, line: 786, type: !2379)
!2485 = !DILocalVariable(name: "p", scope: !2476, file: !239, line: 788, type: !2379)
!2486 = !DILocalVariable(name: "e", scope: !2476, file: !239, line: 789, type: !55)
!2487 = !DILocalVariable(name: "r", scope: !2476, file: !239, line: 790, type: !46)
!2488 = !DILocation(line: 784, column: 24, scope: !2476)
!2489 = !DILocation(line: 784, column: 39, scope: !2476)
!2490 = !DILocation(line: 785, column: 30, scope: !2476)
!2491 = !DILocation(line: 785, column: 42, scope: !2476)
!2492 = !DILocation(line: 786, column: 48, scope: !2476)
!2493 = !DILocation(line: 788, column: 37, scope: !2476)
!2494 = !DILocation(line: 788, column: 33, scope: !2476)
!2495 = !DILocation(line: 789, column: 11, scope: !2476)
!2496 = !DILocation(line: 789, column: 7, scope: !2476)
!2497 = !DILocation(line: 791, column: 43, scope: !2476)
!2498 = !DILocation(line: 791, column: 53, scope: !2476)
!2499 = !DILocation(line: 791, column: 60, scope: !2476)
!2500 = !DILocation(line: 792, column: 43, scope: !2476)
!2501 = !DILocation(line: 792, column: 58, scope: !2476)
!2502 = !DILocation(line: 790, column: 14, scope: !2476)
!2503 = !DILocation(line: 790, column: 10, scope: !2476)
!2504 = !DILocation(line: 793, column: 9, scope: !2476)
!2505 = !DILocation(line: 794, column: 3, scope: !2476)
!2506 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !239, file: !239, line: 256, type: !2507, isLocal: true, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: true, unit: !227, retainedNodes: !2511)
!2507 = !DISubroutineType(types: !2508)
!2508 = !{!46, !41, !46, !90, !46, !17, !55, !2509, !90, !90}
!2509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2510, size: 64)
!2510 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!2511 = !{!2512, !2513, !2514, !2515, !2516, !2517, !2518, !2519, !2520, !2521, !2522, !2523, !2524, !2525, !2526, !2527, !2528, !2529, !2530, !2531, !2532, !2536, !2537, !2538, !2539, !2540, !2543, !2544, !2562, !2565, !2566, !2573}
!2512 = !DILocalVariable(name: "buffer", arg: 1, scope: !2506, file: !239, line: 256, type: !41)
!2513 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2506, file: !239, line: 256, type: !46)
!2514 = !DILocalVariable(name: "arg", arg: 3, scope: !2506, file: !239, line: 257, type: !90)
!2515 = !DILocalVariable(name: "argsize", arg: 4, scope: !2506, file: !239, line: 257, type: !46)
!2516 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2506, file: !239, line: 258, type: !17)
!2517 = !DILocalVariable(name: "flags", arg: 6, scope: !2506, file: !239, line: 258, type: !55)
!2518 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2506, file: !239, line: 259, type: !2509)
!2519 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2506, file: !239, line: 260, type: !90)
!2520 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2506, file: !239, line: 261, type: !90)
!2521 = !DILocalVariable(name: "i", scope: !2506, file: !239, line: 263, type: !46)
!2522 = !DILocalVariable(name: "len", scope: !2506, file: !239, line: 264, type: !46)
!2523 = !DILocalVariable(name: "orig_buffersize", scope: !2506, file: !239, line: 265, type: !46)
!2524 = !DILocalVariable(name: "quote_string", scope: !2506, file: !239, line: 266, type: !90)
!2525 = !DILocalVariable(name: "quote_string_len", scope: !2506, file: !239, line: 267, type: !46)
!2526 = !DILocalVariable(name: "backslash_escapes", scope: !2506, file: !239, line: 268, type: !62)
!2527 = !DILocalVariable(name: "unibyte_locale", scope: !2506, file: !239, line: 269, type: !62)
!2528 = !DILocalVariable(name: "elide_outer_quotes", scope: !2506, file: !239, line: 270, type: !62)
!2529 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2506, file: !239, line: 271, type: !62)
!2530 = !DILocalVariable(name: "encountered_single_quote", scope: !2506, file: !239, line: 272, type: !62)
!2531 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2506, file: !239, line: 273, type: !62)
!2532 = !DILocalVariable(name: "c", scope: !2533, file: !239, line: 402, type: !45)
!2533 = distinct !DILexicalBlock(scope: !2534, file: !239, line: 401, column: 5)
!2534 = distinct !DILexicalBlock(scope: !2535, file: !239, line: 400, column: 3)
!2535 = distinct !DILexicalBlock(scope: !2506, file: !239, line: 400, column: 3)
!2536 = !DILocalVariable(name: "esc", scope: !2533, file: !239, line: 403, type: !45)
!2537 = !DILocalVariable(name: "is_right_quote", scope: !2533, file: !239, line: 404, type: !62)
!2538 = !DILocalVariable(name: "escaping", scope: !2533, file: !239, line: 405, type: !62)
!2539 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2533, file: !239, line: 406, type: !62)
!2540 = !DILocalVariable(name: "m", scope: !2541, file: !239, line: 610, type: !46)
!2541 = distinct !DILexicalBlock(scope: !2542, file: !239, line: 608, column: 11)
!2542 = distinct !DILexicalBlock(scope: !2533, file: !239, line: 426, column: 9)
!2543 = !DILocalVariable(name: "printable", scope: !2541, file: !239, line: 612, type: !62)
!2544 = !DILocalVariable(name: "mbstate", scope: !2545, file: !239, line: 621, type: !2547)
!2545 = distinct !DILexicalBlock(scope: !2546, file: !239, line: 620, column: 15)
!2546 = distinct !DILexicalBlock(scope: !2541, file: !239, line: 614, column: 17)
!2547 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2548, line: 6, baseType: !2549)
!2548 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2549 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2550, line: 21, baseType: !2551)
!2550 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2551 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2550, line: 13, size: 64, elements: !2552)
!2552 = !{!2553, !2554}
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2551, file: !2550, line: 15, baseType: !55, size: 32)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !2551, file: !2550, line: 20, baseType: !2555, size: 32, offset: 32)
!2555 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2551, file: !2550, line: 16, size: 32, elements: !2556)
!2556 = !{!2557, !2558}
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !2555, file: !2550, line: 18, baseType: !6, size: 32)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !2555, file: !2550, line: 19, baseType: !2559, size: 32)
!2559 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 32, elements: !2560)
!2560 = !{!2561}
!2561 = !DISubrange(count: 4)
!2562 = !DILocalVariable(name: "w", scope: !2563, file: !239, line: 631, type: !2564)
!2563 = distinct !DILexicalBlock(scope: !2545, file: !239, line: 630, column: 19)
!2564 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !47, line: 90, baseType: !55)
!2565 = !DILocalVariable(name: "bytes", scope: !2563, file: !239, line: 632, type: !46)
!2566 = !DILocalVariable(name: "j", scope: !2567, file: !239, line: 657, type: !46)
!2567 = distinct !DILexicalBlock(scope: !2568, file: !239, line: 656, column: 27)
!2568 = distinct !DILexicalBlock(scope: !2569, file: !239, line: 654, column: 29)
!2569 = distinct !DILexicalBlock(scope: !2570, file: !239, line: 649, column: 23)
!2570 = distinct !DILexicalBlock(scope: !2571, file: !239, line: 641, column: 30)
!2571 = distinct !DILexicalBlock(scope: !2572, file: !239, line: 636, column: 30)
!2572 = distinct !DILexicalBlock(scope: !2563, file: !239, line: 634, column: 25)
!2573 = !DILocalVariable(name: "ilim", scope: !2574, file: !239, line: 684, type: !46)
!2574 = distinct !DILexicalBlock(scope: !2575, file: !239, line: 681, column: 15)
!2575 = distinct !DILexicalBlock(scope: !2541, file: !239, line: 680, column: 17)
!2576 = !DILocation(line: 256, column: 33, scope: !2506)
!2577 = !DILocation(line: 256, column: 48, scope: !2506)
!2578 = !DILocation(line: 257, column: 39, scope: !2506)
!2579 = !DILocation(line: 257, column: 51, scope: !2506)
!2580 = !DILocation(line: 258, column: 46, scope: !2506)
!2581 = !DILocation(line: 258, column: 65, scope: !2506)
!2582 = !DILocation(line: 259, column: 47, scope: !2506)
!2583 = !DILocation(line: 260, column: 39, scope: !2506)
!2584 = !DILocation(line: 261, column: 39, scope: !2506)
!2585 = !DILocation(line: 264, column: 10, scope: !2506)
!2586 = !DILocation(line: 265, column: 10, scope: !2506)
!2587 = !DILocation(line: 266, column: 15, scope: !2506)
!2588 = !DILocation(line: 267, column: 10, scope: !2506)
!2589 = !DILocation(line: 268, column: 8, scope: !2506)
!2590 = !DILocation(line: 269, column: 25, scope: !2506)
!2591 = !DILocation(line: 269, column: 36, scope: !2506)
!2592 = !DILocation(line: 270, column: 8, scope: !2506)
!2593 = !DILocation(line: 271, column: 8, scope: !2506)
!2594 = !DILocation(line: 272, column: 8, scope: !2506)
!2595 = !DILocation(line: 273, column: 8, scope: !2506)
!2596 = !DILocation(line: 273, column: 3, scope: !2506)
!2597 = !DILocation(line: 0, scope: !2598)
!2598 = distinct !DILexicalBlock(scope: !2506, file: !239, line: 317, column: 5)
!2599 = !DILocation(line: 316, column: 3, scope: !2506)
!2600 = !DILocation(line: 323, column: 11, scope: !2598)
!2601 = !DILocation(line: 323, column: 12, scope: !2602)
!2602 = distinct !DILexicalBlock(scope: !2598, file: !239, line: 323, column: 11)
!2603 = !DILocation(line: 324, column: 9, scope: !2604)
!2604 = distinct !DILexicalBlock(scope: !2605, file: !239, line: 324, column: 9)
!2605 = distinct !DILexicalBlock(scope: !2602, file: !239, line: 324, column: 9)
!2606 = !DILocation(line: 324, column: 9, scope: !2605)
!2607 = !DILocation(line: 362, column: 26, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !2609, file: !239, line: 340, column: 11)
!2609 = distinct !DILexicalBlock(scope: !2610, file: !239, line: 339, column: 13)
!2610 = distinct !DILexicalBlock(scope: !2598, file: !239, line: 338, column: 7)
!2611 = !DILocation(line: 363, column: 27, scope: !2608)
!2612 = !DILocation(line: 364, column: 11, scope: !2608)
!2613 = !DILocation(line: 365, column: 14, scope: !2614)
!2614 = distinct !DILexicalBlock(scope: !2610, file: !239, line: 365, column: 13)
!2615 = !DILocation(line: 365, column: 13, scope: !2610)
!2616 = !DILocation(line: 366, column: 43, scope: !2617)
!2617 = distinct !DILexicalBlock(scope: !2618, file: !239, line: 366, column: 11)
!2618 = distinct !DILexicalBlock(scope: !2614, file: !239, line: 366, column: 11)
!2619 = !DILocation(line: 366, column: 11, scope: !2618)
!2620 = !DILocation(line: 367, column: 13, scope: !2621)
!2621 = distinct !DILexicalBlock(scope: !2622, file: !239, line: 367, column: 13)
!2622 = distinct !DILexicalBlock(scope: !2617, file: !239, line: 367, column: 13)
!2623 = !DILocation(line: 367, column: 13, scope: !2622)
!2624 = !DILocation(line: 366, column: 70, scope: !2617)
!2625 = distinct !{!2625, !2619, !2626}
!2626 = !DILocation(line: 367, column: 13, scope: !2618)
!2627 = !DILocation(line: 370, column: 28, scope: !2610)
!2628 = !DILocation(line: 372, column: 7, scope: !2598)
!2629 = !DILocation(line: 376, column: 7, scope: !2598)
!2630 = !DILocation(line: 379, column: 7, scope: !2598)
!2631 = !DILocation(line: 381, column: 12, scope: !2632)
!2632 = distinct !DILexicalBlock(scope: !2598, file: !239, line: 381, column: 11)
!2633 = !DILocation(line: 381, column: 11, scope: !2598)
!2634 = !DILocation(line: 0, scope: !2632)
!2635 = !DILocation(line: 386, column: 12, scope: !2636)
!2636 = distinct !DILexicalBlock(scope: !2598, file: !239, line: 386, column: 11)
!2637 = !DILocation(line: 386, column: 11, scope: !2598)
!2638 = !DILocation(line: 387, column: 9, scope: !2639)
!2639 = distinct !DILexicalBlock(scope: !2640, file: !239, line: 387, column: 9)
!2640 = distinct !DILexicalBlock(scope: !2636, file: !239, line: 387, column: 9)
!2641 = !DILocation(line: 387, column: 9, scope: !2640)
!2642 = !DILocation(line: 394, column: 7, scope: !2598)
!2643 = !DILocation(line: 397, column: 7, scope: !2598)
!2644 = !DILocation(line: 0, scope: !2506)
!2645 = !DILocation(line: 263, column: 10, scope: !2506)
!2646 = !DILocation(line: 400, column: 8, scope: !2535)
!2647 = !DILocation(line: 0, scope: !2534)
!2648 = !DILocation(line: 400, column: 27, scope: !2534)
!2649 = !DILocation(line: 400, column: 19, scope: !2534)
!2650 = !DILocation(line: 400, column: 41, scope: !2534)
!2651 = !DILocation(line: 400, column: 48, scope: !2534)
!2652 = !DILocation(line: 400, column: 3, scope: !2535)
!2653 = !DILocation(line: 400, column: 60, scope: !2534)
!2654 = !DILocation(line: 404, column: 12, scope: !2533)
!2655 = !DILocation(line: 405, column: 12, scope: !2533)
!2656 = !DILocation(line: 406, column: 12, scope: !2533)
!2657 = !DILocation(line: 409, column: 11, scope: !2658)
!2658 = distinct !DILexicalBlock(scope: !2533, file: !239, line: 408, column: 11)
!2659 = !DILocation(line: 411, column: 17, scope: !2658)
!2660 = !DILocation(line: 412, column: 39, scope: !2658)
!2661 = !DILocation(line: 416, column: 32, scope: !2658)
!2662 = !DILocation(line: 412, column: 19, scope: !2658)
!2663 = !DILocation(line: 412, column: 15, scope: !2658)
!2664 = !DILocation(line: 417, column: 11, scope: !2658)
!2665 = !DILocation(line: 417, column: 26, scope: !2658)
!2666 = !DILocation(line: 417, column: 14, scope: !2658)
!2667 = !DILocation(line: 417, column: 63, scope: !2658)
!2668 = !DILocation(line: 408, column: 11, scope: !2533)
!2669 = !DILocation(line: 0, scope: !2533)
!2670 = !DILocation(line: 424, column: 11, scope: !2533)
!2671 = !DILocation(line: 402, column: 21, scope: !2533)
!2672 = !DILocation(line: 425, column: 7, scope: !2533)
!2673 = !DILocation(line: 428, column: 15, scope: !2542)
!2674 = !DILocation(line: 430, column: 15, scope: !2675)
!2675 = distinct !DILexicalBlock(scope: !2676, file: !239, line: 430, column: 15)
!2676 = distinct !DILexicalBlock(scope: !2677, file: !239, line: 429, column: 13)
!2677 = distinct !DILexicalBlock(scope: !2542, file: !239, line: 428, column: 15)
!2678 = !DILocation(line: 430, column: 15, scope: !2679)
!2679 = distinct !DILexicalBlock(scope: !2675, file: !239, line: 430, column: 15)
!2680 = !DILocation(line: 430, column: 15, scope: !2681)
!2681 = distinct !DILexicalBlock(scope: !2682, file: !239, line: 430, column: 15)
!2682 = distinct !DILexicalBlock(scope: !2683, file: !239, line: 430, column: 15)
!2683 = distinct !DILexicalBlock(scope: !2679, file: !239, line: 430, column: 15)
!2684 = !DILocation(line: 430, column: 15, scope: !2682)
!2685 = !DILocation(line: 430, column: 15, scope: !2686)
!2686 = distinct !DILexicalBlock(scope: !2687, file: !239, line: 430, column: 15)
!2687 = distinct !DILexicalBlock(scope: !2683, file: !239, line: 430, column: 15)
!2688 = !DILocation(line: 430, column: 15, scope: !2687)
!2689 = !DILocation(line: 430, column: 15, scope: !2690)
!2690 = distinct !DILexicalBlock(scope: !2691, file: !239, line: 430, column: 15)
!2691 = distinct !DILexicalBlock(scope: !2683, file: !239, line: 430, column: 15)
!2692 = !DILocation(line: 430, column: 15, scope: !2691)
!2693 = !DILocation(line: 430, column: 15, scope: !2683)
!2694 = !DILocation(line: 430, column: 15, scope: !2695)
!2695 = distinct !DILexicalBlock(scope: !2696, file: !239, line: 430, column: 15)
!2696 = distinct !DILexicalBlock(scope: !2675, file: !239, line: 430, column: 15)
!2697 = !DILocation(line: 430, column: 15, scope: !2696)
!2698 = !DILocation(line: 438, column: 19, scope: !2699)
!2699 = distinct !DILexicalBlock(scope: !2676, file: !239, line: 437, column: 19)
!2700 = !DILocation(line: 438, column: 24, scope: !2699)
!2701 = !DILocation(line: 438, column: 28, scope: !2699)
!2702 = !DILocation(line: 438, column: 38, scope: !2699)
!2703 = !DILocation(line: 438, column: 48, scope: !2699)
!2704 = !DILocation(line: 438, column: 59, scope: !2699)
!2705 = !DILocation(line: 440, column: 19, scope: !2706)
!2706 = distinct !DILexicalBlock(scope: !2707, file: !239, line: 440, column: 19)
!2707 = distinct !DILexicalBlock(scope: !2708, file: !239, line: 440, column: 19)
!2708 = distinct !DILexicalBlock(scope: !2699, file: !239, line: 439, column: 17)
!2709 = !DILocation(line: 440, column: 19, scope: !2707)
!2710 = !DILocation(line: 441, column: 19, scope: !2711)
!2711 = distinct !DILexicalBlock(scope: !2712, file: !239, line: 441, column: 19)
!2712 = distinct !DILexicalBlock(scope: !2708, file: !239, line: 441, column: 19)
!2713 = !DILocation(line: 441, column: 19, scope: !2712)
!2714 = !DILocation(line: 442, column: 17, scope: !2708)
!2715 = !DILocation(line: 449, column: 20, scope: !2677)
!2716 = !DILocation(line: 454, column: 11, scope: !2542)
!2717 = !DILocation(line: 457, column: 19, scope: !2718)
!2718 = distinct !DILexicalBlock(scope: !2542, file: !239, line: 455, column: 13)
!2719 = !DILocation(line: 463, column: 19, scope: !2720)
!2720 = distinct !DILexicalBlock(scope: !2718, file: !239, line: 462, column: 19)
!2721 = !DILocation(line: 463, column: 24, scope: !2720)
!2722 = !DILocation(line: 463, column: 28, scope: !2720)
!2723 = !DILocation(line: 463, column: 38, scope: !2720)
!2724 = !DILocation(line: 463, column: 47, scope: !2720)
!2725 = !DILocation(line: 463, column: 41, scope: !2720)
!2726 = !DILocation(line: 463, column: 52, scope: !2720)
!2727 = !DILocation(line: 462, column: 19, scope: !2718)
!2728 = !DILocation(line: 464, column: 25, scope: !2720)
!2729 = !DILocation(line: 464, column: 17, scope: !2720)
!2730 = !DILocation(line: 471, column: 25, scope: !2731)
!2731 = distinct !DILexicalBlock(scope: !2720, file: !239, line: 465, column: 19)
!2732 = !DILocation(line: 475, column: 21, scope: !2733)
!2733 = distinct !DILexicalBlock(scope: !2734, file: !239, line: 475, column: 21)
!2734 = distinct !DILexicalBlock(scope: !2731, file: !239, line: 475, column: 21)
!2735 = !DILocation(line: 475, column: 21, scope: !2734)
!2736 = !DILocation(line: 476, column: 21, scope: !2737)
!2737 = distinct !DILexicalBlock(scope: !2738, file: !239, line: 476, column: 21)
!2738 = distinct !DILexicalBlock(scope: !2731, file: !239, line: 476, column: 21)
!2739 = !DILocation(line: 476, column: 21, scope: !2738)
!2740 = !DILocation(line: 477, column: 21, scope: !2741)
!2741 = distinct !DILexicalBlock(scope: !2742, file: !239, line: 477, column: 21)
!2742 = distinct !DILexicalBlock(scope: !2731, file: !239, line: 477, column: 21)
!2743 = !DILocation(line: 477, column: 21, scope: !2742)
!2744 = !DILocation(line: 478, column: 21, scope: !2745)
!2745 = distinct !DILexicalBlock(scope: !2746, file: !239, line: 478, column: 21)
!2746 = distinct !DILexicalBlock(scope: !2731, file: !239, line: 478, column: 21)
!2747 = !DILocation(line: 478, column: 21, scope: !2746)
!2748 = !DILocation(line: 479, column: 21, scope: !2731)
!2749 = !DILocation(line: 403, column: 21, scope: !2533)
!2750 = !DILocation(line: 492, column: 31, scope: !2542)
!2751 = !DILocation(line: 493, column: 31, scope: !2542)
!2752 = !DILocation(line: 495, column: 31, scope: !2542)
!2753 = !DILocation(line: 496, column: 31, scope: !2542)
!2754 = !DILocation(line: 497, column: 31, scope: !2542)
!2755 = !DILocation(line: 500, column: 15, scope: !2542)
!2756 = !DILocation(line: 502, column: 19, scope: !2757)
!2757 = distinct !DILexicalBlock(scope: !2758, file: !239, line: 501, column: 13)
!2758 = distinct !DILexicalBlock(scope: !2542, file: !239, line: 500, column: 15)
!2759 = !DILocation(line: 509, column: 33, scope: !2760)
!2760 = distinct !DILexicalBlock(scope: !2542, file: !239, line: 509, column: 15)
!2761 = !DILocation(line: 0, scope: !2542)
!2762 = !DILocation(line: 514, column: 15, scope: !2763)
!2763 = distinct !DILexicalBlock(scope: !2542, file: !239, line: 513, column: 15)
!2764 = !DILocation(line: 518, column: 15, scope: !2542)
!2765 = !DILocation(line: 526, column: 26, scope: !2766)
!2766 = distinct !DILexicalBlock(scope: !2542, file: !239, line: 526, column: 15)
!2767 = !DILocation(line: 526, column: 15, scope: !2542)
!2768 = !DILocation(line: 526, column: 40, scope: !2766)
!2769 = !DILocation(line: 526, column: 47, scope: !2766)
!2770 = !DILocation(line: 530, column: 17, scope: !2771)
!2771 = distinct !DILexicalBlock(scope: !2542, file: !239, line: 530, column: 15)
!2772 = !DILocation(line: 526, column: 18, scope: !2766)
!2773 = !DILocation(line: 526, column: 65, scope: !2766)
!2774 = !DILocation(line: 530, column: 15, scope: !2542)
!2775 = !DILocation(line: 535, column: 11, scope: !2542)
!2776 = !DILocation(line: 549, column: 15, scope: !2777)
!2777 = distinct !DILexicalBlock(scope: !2542, file: !239, line: 548, column: 15)
!2778 = !DILocation(line: 556, column: 15, scope: !2542)
!2779 = !DILocation(line: 558, column: 19, scope: !2780)
!2780 = distinct !DILexicalBlock(scope: !2781, file: !239, line: 557, column: 13)
!2781 = distinct !DILexicalBlock(scope: !2542, file: !239, line: 556, column: 15)
!2782 = !DILocation(line: 561, column: 19, scope: !2783)
!2783 = distinct !DILexicalBlock(scope: !2780, file: !239, line: 561, column: 19)
!2784 = !DILocation(line: 561, column: 35, scope: !2783)
!2785 = !DILocation(line: 561, column: 30, scope: !2783)
!2786 = !DILocation(line: 570, column: 15, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !2788, file: !239, line: 570, column: 15)
!2788 = distinct !DILexicalBlock(scope: !2780, file: !239, line: 570, column: 15)
!2789 = !DILocation(line: 570, column: 15, scope: !2788)
!2790 = !DILocation(line: 571, column: 15, scope: !2791)
!2791 = distinct !DILexicalBlock(scope: !2792, file: !239, line: 571, column: 15)
!2792 = distinct !DILexicalBlock(scope: !2780, file: !239, line: 571, column: 15)
!2793 = !DILocation(line: 571, column: 15, scope: !2792)
!2794 = !DILocation(line: 572, column: 15, scope: !2795)
!2795 = distinct !DILexicalBlock(scope: !2796, file: !239, line: 572, column: 15)
!2796 = distinct !DILexicalBlock(scope: !2780, file: !239, line: 572, column: 15)
!2797 = !DILocation(line: 572, column: 15, scope: !2796)
!2798 = !DILocation(line: 574, column: 13, scope: !2780)
!2799 = !DILocation(line: 614, column: 17, scope: !2541)
!2800 = !DILocation(line: 610, column: 20, scope: !2541)
!2801 = !DILocation(line: 617, column: 29, scope: !2802)
!2802 = distinct !DILexicalBlock(scope: !2546, file: !239, line: 615, column: 15)
!2803 = !DILocation(line: 617, column: 27, scope: !2802)
!2804 = !DILocation(line: 612, column: 18, scope: !2541)
!2805 = !DILocation(line: 618, column: 15, scope: !2802)
!2806 = !DILocation(line: 621, column: 17, scope: !2545)
!2807 = !DILocation(line: 622, column: 17, scope: !2545)
!2808 = !DILocation(line: 626, column: 29, scope: !2809)
!2809 = distinct !DILexicalBlock(scope: !2545, file: !239, line: 626, column: 21)
!2810 = !DILocation(line: 626, column: 21, scope: !2545)
!2811 = !DILocation(line: 627, column: 29, scope: !2809)
!2812 = !DILocation(line: 627, column: 19, scope: !2809)
!2813 = !DILocation(line: 0, scope: !2658)
!2814 = !DILocation(line: 629, column: 17, scope: !2545)
!2815 = !DILocation(line: 624, column: 19, scope: !2545)
!2816 = !DILocation(line: 625, column: 27, scope: !2545)
!2817 = !DILocation(line: 631, column: 21, scope: !2563)
!2818 = !DILocation(line: 632, column: 56, scope: !2563)
!2819 = !DILocation(line: 632, column: 50, scope: !2563)
!2820 = !DILocation(line: 633, column: 53, scope: !2563)
!2821 = !DILocation(line: 621, column: 27, scope: !2545)
!2822 = !DILocation(line: 631, column: 29, scope: !2563)
!2823 = !DILocation(line: 632, column: 36, scope: !2563)
!2824 = !DILocation(line: 632, column: 28, scope: !2563)
!2825 = !DILocation(line: 634, column: 25, scope: !2563)
!2826 = !DILocation(line: 644, column: 38, scope: !2827)
!2827 = distinct !DILexicalBlock(scope: !2570, file: !239, line: 642, column: 23)
!2828 = !DILocation(line: 644, column: 48, scope: !2827)
!2829 = !DILocation(line: 644, column: 51, scope: !2827)
!2830 = !DILocation(line: 644, column: 25, scope: !2827)
!2831 = !DILocation(line: 645, column: 28, scope: !2827)
!2832 = !DILocation(line: 644, column: 34, scope: !2827)
!2833 = distinct !{!2833, !2830, !2831}
!2834 = !DILocation(line: 658, column: 43, scope: !2835)
!2835 = distinct !DILexicalBlock(scope: !2836, file: !239, line: 658, column: 29)
!2836 = distinct !DILexicalBlock(scope: !2567, file: !239, line: 658, column: 29)
!2837 = !DILocation(line: 655, column: 29, scope: !2568)
!2838 = !DILocation(line: 657, column: 36, scope: !2567)
!2839 = !DILocation(line: 659, column: 49, scope: !2835)
!2840 = !DILocation(line: 659, column: 39, scope: !2835)
!2841 = !DILocation(line: 659, column: 31, scope: !2835)
!2842 = !DILocation(line: 658, column: 53, scope: !2835)
!2843 = !DILocation(line: 658, column: 29, scope: !2836)
!2844 = distinct !{!2844, !2843, !2845}
!2845 = !DILocation(line: 667, column: 33, scope: !2836)
!2846 = !DILocation(line: 674, column: 19, scope: !2545)
!2847 = !DILocation(line: 670, column: 41, scope: !2848)
!2848 = distinct !DILexicalBlock(scope: !2569, file: !239, line: 670, column: 29)
!2849 = !DILocation(line: 670, column: 31, scope: !2848)
!2850 = !DILocation(line: 670, column: 29, scope: !2569)
!2851 = !DILocation(line: 672, column: 27, scope: !2569)
!2852 = !DILocation(line: 675, column: 26, scope: !2545)
!2853 = !DILocation(line: 675, column: 24, scope: !2545)
!2854 = !DILocation(line: 674, column: 19, scope: !2563)
!2855 = distinct !{!2855, !2814, !2856}
!2856 = !DILocation(line: 675, column: 44, scope: !2545)
!2857 = !DILocation(line: 676, column: 15, scope: !2546)
!2858 = !DILocation(line: 0, scope: !2809)
!2859 = !DILocation(line: 0, scope: !2545)
!2860 = !DILocation(line: 678, column: 40, scope: !2541)
!2861 = !DILocation(line: 680, column: 19, scope: !2575)
!2862 = !DILocation(line: 680, column: 45, scope: !2575)
!2863 = !DILocation(line: 680, column: 23, scope: !2575)
!2864 = !DILocation(line: 684, column: 33, scope: !2574)
!2865 = !DILocation(line: 684, column: 24, scope: !2574)
!2866 = !DILocation(line: 686, column: 17, scope: !2574)
!2867 = !DILocation(line: 0, scope: !2868)
!2868 = distinct !DILexicalBlock(scope: !2869, file: !239, line: 687, column: 19)
!2869 = distinct !DILexicalBlock(scope: !2870, file: !239, line: 686, column: 17)
!2870 = distinct !DILexicalBlock(scope: !2574, file: !239, line: 686, column: 17)
!2871 = !DILocation(line: 0, scope: !2872)
!2872 = distinct !DILexicalBlock(scope: !2868, file: !239, line: 703, column: 21)
!2873 = !DILocation(line: 0, scope: !2874)
!2874 = distinct !DILexicalBlock(scope: !2875, file: !239, line: 696, column: 23)
!2875 = distinct !DILexicalBlock(scope: !2876, file: !239, line: 695, column: 30)
!2876 = distinct !DILexicalBlock(scope: !2868, file: !239, line: 688, column: 25)
!2877 = !DILocation(line: 688, column: 43, scope: !2876)
!2878 = !DILocation(line: 690, column: 25, scope: !2879)
!2879 = distinct !DILexicalBlock(scope: !2880, file: !239, line: 690, column: 25)
!2880 = distinct !DILexicalBlock(scope: !2876, file: !239, line: 689, column: 23)
!2881 = !DILocation(line: 690, column: 25, scope: !2882)
!2882 = distinct !DILexicalBlock(scope: !2879, file: !239, line: 690, column: 25)
!2883 = !DILocation(line: 690, column: 25, scope: !2884)
!2884 = distinct !DILexicalBlock(scope: !2885, file: !239, line: 690, column: 25)
!2885 = distinct !DILexicalBlock(scope: !2886, file: !239, line: 690, column: 25)
!2886 = distinct !DILexicalBlock(scope: !2882, file: !239, line: 690, column: 25)
!2887 = !DILocation(line: 690, column: 25, scope: !2885)
!2888 = !DILocation(line: 690, column: 25, scope: !2889)
!2889 = distinct !DILexicalBlock(scope: !2890, file: !239, line: 690, column: 25)
!2890 = distinct !DILexicalBlock(scope: !2886, file: !239, line: 690, column: 25)
!2891 = !DILocation(line: 690, column: 25, scope: !2890)
!2892 = !DILocation(line: 690, column: 25, scope: !2893)
!2893 = distinct !DILexicalBlock(scope: !2894, file: !239, line: 690, column: 25)
!2894 = distinct !DILexicalBlock(scope: !2886, file: !239, line: 690, column: 25)
!2895 = !DILocation(line: 690, column: 25, scope: !2894)
!2896 = !DILocation(line: 690, column: 25, scope: !2886)
!2897 = !DILocation(line: 690, column: 25, scope: !2898)
!2898 = distinct !DILexicalBlock(scope: !2899, file: !239, line: 690, column: 25)
!2899 = distinct !DILexicalBlock(scope: !2879, file: !239, line: 690, column: 25)
!2900 = !DILocation(line: 690, column: 25, scope: !2899)
!2901 = !DILocation(line: 691, column: 25, scope: !2902)
!2902 = distinct !DILexicalBlock(scope: !2903, file: !239, line: 691, column: 25)
!2903 = distinct !DILexicalBlock(scope: !2880, file: !239, line: 691, column: 25)
!2904 = !DILocation(line: 691, column: 25, scope: !2903)
!2905 = !DILocation(line: 692, column: 25, scope: !2906)
!2906 = distinct !DILexicalBlock(scope: !2907, file: !239, line: 692, column: 25)
!2907 = distinct !DILexicalBlock(scope: !2880, file: !239, line: 692, column: 25)
!2908 = !DILocation(line: 692, column: 25, scope: !2907)
!2909 = !DILocation(line: 693, column: 38, scope: !2880)
!2910 = !DILocation(line: 693, column: 33, scope: !2880)
!2911 = !DILocation(line: 694, column: 23, scope: !2880)
!2912 = !DILocation(line: 695, column: 30, scope: !2875)
!2913 = !DILocation(line: 695, column: 30, scope: !2876)
!2914 = !DILocation(line: 697, column: 25, scope: !2915)
!2915 = distinct !DILexicalBlock(scope: !2916, file: !239, line: 697, column: 25)
!2916 = distinct !DILexicalBlock(scope: !2874, file: !239, line: 697, column: 25)
!2917 = !DILocation(line: 697, column: 25, scope: !2916)
!2918 = !DILocation(line: 699, column: 23, scope: !2874)
!2919 = !DILocation(line: 0, scope: !2907)
!2920 = !DILocation(line: 0, scope: !2880)
!2921 = !DILocation(line: 0, scope: !2922)
!2922 = distinct !DILexicalBlock(scope: !2658, file: !239, line: 418, column: 9)
!2923 = !DILocation(line: 0, scope: !2879)
!2924 = !DILocation(line: 700, column: 35, scope: !2925)
!2925 = distinct !DILexicalBlock(scope: !2868, file: !239, line: 700, column: 25)
!2926 = !DILocation(line: 700, column: 30, scope: !2925)
!2927 = !DILocation(line: 700, column: 25, scope: !2868)
!2928 = !DILocation(line: 702, column: 21, scope: !2929)
!2929 = distinct !DILexicalBlock(scope: !2930, file: !239, line: 702, column: 21)
!2930 = distinct !DILexicalBlock(scope: !2868, file: !239, line: 702, column: 21)
!2931 = !DILocation(line: 702, column: 21, scope: !2932)
!2932 = distinct !DILexicalBlock(scope: !2933, file: !239, line: 702, column: 21)
!2933 = distinct !DILexicalBlock(scope: !2934, file: !239, line: 702, column: 21)
!2934 = distinct !DILexicalBlock(scope: !2929, file: !239, line: 702, column: 21)
!2935 = !DILocation(line: 702, column: 21, scope: !2933)
!2936 = !DILocation(line: 702, column: 21, scope: !2937)
!2937 = distinct !DILexicalBlock(scope: !2938, file: !239, line: 702, column: 21)
!2938 = distinct !DILexicalBlock(scope: !2934, file: !239, line: 702, column: 21)
!2939 = !DILocation(line: 702, column: 21, scope: !2938)
!2940 = !DILocation(line: 702, column: 21, scope: !2934)
!2941 = !DILocation(line: 0, scope: !2916)
!2942 = !DILocation(line: 703, column: 21, scope: !2943)
!2943 = distinct !DILexicalBlock(scope: !2872, file: !239, line: 703, column: 21)
!2944 = !DILocation(line: 703, column: 21, scope: !2872)
!2945 = !DILocation(line: 704, column: 25, scope: !2868)
!2946 = !DILocation(line: 686, column: 17, scope: !2869)
!2947 = distinct !{!2947, !2948, !2949}
!2948 = !DILocation(line: 686, column: 17, scope: !2870)
!2949 = !DILocation(line: 705, column: 19, scope: !2870)
!2950 = !DILocation(line: 0, scope: !2535)
!2951 = !DILocation(line: 416, column: 30, scope: !2658)
!2952 = !DILocation(line: 712, column: 34, scope: !2953)
!2953 = distinct !DILexicalBlock(scope: !2533, file: !239, line: 712, column: 11)
!2954 = !DILocation(line: 714, column: 14, scope: !2953)
!2955 = !DILocation(line: 715, column: 14, scope: !2953)
!2956 = !DILocation(line: 715, column: 35, scope: !2953)
!2957 = !DILocation(line: 715, column: 17, scope: !2953)
!2958 = !DILocation(line: 715, column: 47, scope: !2953)
!2959 = !DILocation(line: 715, column: 65, scope: !2953)
!2960 = !DILocation(line: 716, column: 15, scope: !2953)
!2961 = !DILocation(line: 716, column: 11, scope: !2953)
!2962 = !DILocation(line: 712, column: 11, scope: !2533)
!2963 = !DILocation(line: 400, column: 10, scope: !2535)
!2964 = !DILocation(line: 0, scope: !2965)
!2965 = distinct !DILexicalBlock(scope: !2966, file: !239, line: 519, column: 13)
!2966 = distinct !DILexicalBlock(scope: !2542, file: !239, line: 518, column: 15)
!2967 = !DILocation(line: 720, column: 7, scope: !2968)
!2968 = distinct !DILexicalBlock(scope: !2533, file: !239, line: 720, column: 7)
!2969 = !DILocation(line: 720, column: 7, scope: !2970)
!2970 = distinct !DILexicalBlock(scope: !2968, file: !239, line: 720, column: 7)
!2971 = !DILocation(line: 720, column: 7, scope: !2972)
!2972 = distinct !DILexicalBlock(scope: !2973, file: !239, line: 720, column: 7)
!2973 = distinct !DILexicalBlock(scope: !2974, file: !239, line: 720, column: 7)
!2974 = distinct !DILexicalBlock(scope: !2970, file: !239, line: 720, column: 7)
!2975 = !DILocation(line: 720, column: 7, scope: !2973)
!2976 = !DILocation(line: 720, column: 7, scope: !2977)
!2977 = distinct !DILexicalBlock(scope: !2978, file: !239, line: 720, column: 7)
!2978 = distinct !DILexicalBlock(scope: !2974, file: !239, line: 720, column: 7)
!2979 = !DILocation(line: 720, column: 7, scope: !2978)
!2980 = !DILocation(line: 720, column: 7, scope: !2981)
!2981 = distinct !DILexicalBlock(scope: !2982, file: !239, line: 720, column: 7)
!2982 = distinct !DILexicalBlock(scope: !2974, file: !239, line: 720, column: 7)
!2983 = !DILocation(line: 720, column: 7, scope: !2982)
!2984 = !DILocation(line: 720, column: 7, scope: !2974)
!2985 = !DILocation(line: 720, column: 7, scope: !2986)
!2986 = distinct !DILexicalBlock(scope: !2987, file: !239, line: 720, column: 7)
!2987 = distinct !DILexicalBlock(scope: !2968, file: !239, line: 720, column: 7)
!2988 = !DILocation(line: 720, column: 7, scope: !2987)
!2989 = !DILocation(line: 723, column: 7, scope: !2990)
!2990 = distinct !DILexicalBlock(scope: !2991, file: !239, line: 723, column: 7)
!2991 = distinct !DILexicalBlock(scope: !2533, file: !239, line: 723, column: 7)
!2992 = !DILocation(line: 424, column: 9, scope: !2533)
!2993 = !DILocation(line: 723, column: 7, scope: !2994)
!2994 = distinct !DILexicalBlock(scope: !2995, file: !239, line: 723, column: 7)
!2995 = distinct !DILexicalBlock(scope: !2996, file: !239, line: 723, column: 7)
!2996 = distinct !DILexicalBlock(scope: !2990, file: !239, line: 723, column: 7)
!2997 = !DILocation(line: 723, column: 7, scope: !2995)
!2998 = !DILocation(line: 723, column: 7, scope: !2999)
!2999 = distinct !DILexicalBlock(scope: !3000, file: !239, line: 723, column: 7)
!3000 = distinct !DILexicalBlock(scope: !2996, file: !239, line: 723, column: 7)
!3001 = !DILocation(line: 723, column: 7, scope: !3000)
!3002 = !DILocation(line: 723, column: 7, scope: !2996)
!3003 = !DILocation(line: 724, column: 7, scope: !3004)
!3004 = distinct !DILexicalBlock(scope: !3005, file: !239, line: 724, column: 7)
!3005 = distinct !DILexicalBlock(scope: !2533, file: !239, line: 724, column: 7)
!3006 = !DILocation(line: 724, column: 7, scope: !3005)
!3007 = !DILocation(line: 726, column: 13, scope: !3008)
!3008 = distinct !DILexicalBlock(scope: !2533, file: !239, line: 726, column: 11)
!3009 = !DILocation(line: 726, column: 11, scope: !2533)
!3010 = !DILocation(line: 728, column: 5, scope: !2534)
!3011 = !DILocation(line: 400, column: 75, scope: !2534)
!3012 = !DILocation(line: 400, column: 3, scope: !2534)
!3013 = distinct !{!3013, !2652, !3014}
!3014 = !DILocation(line: 728, column: 5, scope: !2535)
!3015 = !DILocation(line: 730, column: 11, scope: !3016)
!3016 = distinct !DILexicalBlock(scope: !2506, file: !239, line: 730, column: 7)
!3017 = !DILocation(line: 730, column: 16, scope: !3016)
!3018 = !DILocation(line: 738, column: 51, scope: !3019)
!3019 = distinct !DILexicalBlock(scope: !2506, file: !239, line: 738, column: 7)
!3020 = !DILocation(line: 739, column: 10, scope: !3019)
!3021 = !DILocation(line: 741, column: 11, scope: !3022)
!3022 = distinct !DILexicalBlock(scope: !3023, file: !239, line: 741, column: 11)
!3023 = distinct !DILexicalBlock(scope: !3019, file: !239, line: 740, column: 5)
!3024 = !DILocation(line: 741, column: 11, scope: !3023)
!3025 = !DILocation(line: 742, column: 16, scope: !3022)
!3026 = !DILocation(line: 742, column: 9, scope: !3022)
!3027 = !DILocation(line: 746, column: 18, scope: !3028)
!3028 = distinct !DILexicalBlock(scope: !3022, file: !239, line: 746, column: 16)
!3029 = !DILocation(line: 746, column: 32, scope: !3028)
!3030 = !DILocation(line: 746, column: 29, scope: !3028)
!3031 = !DILocation(line: 755, column: 7, scope: !3032)
!3032 = distinct !DILexicalBlock(scope: !2506, file: !239, line: 755, column: 7)
!3033 = !DILocation(line: 755, column: 20, scope: !3032)
!3034 = !DILocation(line: 756, column: 12, scope: !3035)
!3035 = distinct !DILexicalBlock(scope: !3036, file: !239, line: 756, column: 5)
!3036 = distinct !DILexicalBlock(scope: !3032, file: !239, line: 756, column: 5)
!3037 = !DILocation(line: 756, column: 5, scope: !3036)
!3038 = !DILocation(line: 757, column: 7, scope: !3039)
!3039 = distinct !DILexicalBlock(scope: !3040, file: !239, line: 757, column: 7)
!3040 = distinct !DILexicalBlock(scope: !3035, file: !239, line: 757, column: 7)
!3041 = !DILocation(line: 757, column: 7, scope: !3040)
!3042 = !DILocation(line: 756, column: 39, scope: !3035)
!3043 = distinct !{!3043, !3037, !3044}
!3044 = !DILocation(line: 757, column: 7, scope: !3036)
!3045 = !DILocation(line: 759, column: 11, scope: !3046)
!3046 = distinct !DILexicalBlock(scope: !2506, file: !239, line: 759, column: 7)
!3047 = !DILocation(line: 759, column: 7, scope: !2506)
!3048 = !DILocation(line: 760, column: 5, scope: !3046)
!3049 = !DILocation(line: 760, column: 17, scope: !3046)
!3050 = !DILocation(line: 766, column: 21, scope: !3051)
!3051 = distinct !DILexicalBlock(scope: !2506, file: !239, line: 766, column: 7)
!3052 = !DILocation(line: 766, column: 54, scope: !3051)
!3053 = !DILocation(line: 766, column: 51, scope: !3051)
!3054 = !DILocation(line: 770, column: 42, scope: !2506)
!3055 = !DILocation(line: 768, column: 10, scope: !2506)
!3056 = !DILocation(line: 768, column: 3, scope: !2506)
!3057 = !DILocation(line: 772, column: 1, scope: !2506)
!3058 = distinct !DISubprogram(name: "gettext_quote", scope: !239, file: !239, line: 207, type: !3059, isLocal: true, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: true, unit: !227, retainedNodes: !3061)
!3059 = !DISubroutineType(types: !3060)
!3060 = !{!90, !90, !17}
!3061 = !{!3062, !3063, !3064, !3065}
!3062 = !DILocalVariable(name: "msgid", arg: 1, scope: !3058, file: !239, line: 207, type: !90)
!3063 = !DILocalVariable(name: "s", arg: 2, scope: !3058, file: !239, line: 207, type: !17)
!3064 = !DILocalVariable(name: "translation", scope: !3058, file: !239, line: 209, type: !90)
!3065 = !DILocalVariable(name: "locale_code", scope: !3058, file: !239, line: 210, type: !90)
!3066 = !DILocation(line: 207, column: 28, scope: !3058)
!3067 = !DILocation(line: 207, column: 54, scope: !3058)
!3068 = !DILocation(line: 209, column: 29, scope: !3058)
!3069 = !DILocation(line: 209, column: 15, scope: !3058)
!3070 = !DILocation(line: 212, column: 19, scope: !3071)
!3071 = distinct !DILexicalBlock(scope: !3058, file: !239, line: 212, column: 7)
!3072 = !DILocation(line: 212, column: 7, scope: !3058)
!3073 = !DILocation(line: 233, column: 17, scope: !3058)
!3074 = !DILocation(line: 210, column: 15, scope: !3058)
!3075 = !DILocalVariable(name: "s1", arg: 1, scope: !3076, file: !3077, line: 160, type: !90)
!3076 = distinct !DISubprogram(name: "strcaseeq0", scope: !3077, file: !3077, line: 160, type: !3078, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !227, retainedNodes: !3080)
!3077 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3078 = !DISubroutineType(types: !3079)
!3079 = !{!55, !90, !90, !42, !42, !42, !42, !42, !42, !42, !42, !42}
!3080 = !{!3075, !3081, !3082, !3083, !3084, !3085, !3086, !3087, !3088, !3089, !3090}
!3081 = !DILocalVariable(name: "s2", arg: 2, scope: !3076, file: !3077, line: 160, type: !90)
!3082 = !DILocalVariable(name: "s20", arg: 3, scope: !3076, file: !3077, line: 160, type: !42)
!3083 = !DILocalVariable(name: "s21", arg: 4, scope: !3076, file: !3077, line: 160, type: !42)
!3084 = !DILocalVariable(name: "s22", arg: 5, scope: !3076, file: !3077, line: 160, type: !42)
!3085 = !DILocalVariable(name: "s23", arg: 6, scope: !3076, file: !3077, line: 160, type: !42)
!3086 = !DILocalVariable(name: "s24", arg: 7, scope: !3076, file: !3077, line: 160, type: !42)
!3087 = !DILocalVariable(name: "s25", arg: 8, scope: !3076, file: !3077, line: 160, type: !42)
!3088 = !DILocalVariable(name: "s26", arg: 9, scope: !3076, file: !3077, line: 160, type: !42)
!3089 = !DILocalVariable(name: "s27", arg: 10, scope: !3076, file: !3077, line: 160, type: !42)
!3090 = !DILocalVariable(name: "s28", arg: 11, scope: !3076, file: !3077, line: 160, type: !42)
!3091 = !DILocation(line: 160, column: 25, scope: !3076, inlinedAt: !3092)
!3092 = distinct !DILocation(line: 234, column: 7, scope: !3093)
!3093 = distinct !DILexicalBlock(scope: !3058, file: !239, line: 234, column: 7)
!3094 = !DILocation(line: 160, column: 41, scope: !3076, inlinedAt: !3092)
!3095 = !DILocation(line: 160, column: 50, scope: !3076, inlinedAt: !3092)
!3096 = !DILocation(line: 160, column: 60, scope: !3076, inlinedAt: !3092)
!3097 = !DILocation(line: 160, column: 70, scope: !3076, inlinedAt: !3092)
!3098 = !DILocation(line: 160, column: 80, scope: !3076, inlinedAt: !3092)
!3099 = !DILocation(line: 160, column: 90, scope: !3076, inlinedAt: !3092)
!3100 = !DILocation(line: 160, column: 100, scope: !3076, inlinedAt: !3092)
!3101 = !DILocation(line: 160, column: 110, scope: !3076, inlinedAt: !3092)
!3102 = !DILocation(line: 160, column: 120, scope: !3076, inlinedAt: !3092)
!3103 = !DILocation(line: 160, column: 130, scope: !3076, inlinedAt: !3092)
!3104 = !DILocation(line: 162, column: 7, scope: !3105, inlinedAt: !3092)
!3105 = distinct !DILexicalBlock(scope: !3076, file: !3077, line: 162, column: 7)
!3106 = !DILocalVariable(name: "s1", arg: 1, scope: !3107, file: !3077, line: 146, type: !90)
!3107 = distinct !DISubprogram(name: "strcaseeq1", scope: !3077, file: !3077, line: 146, type: !3108, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !227, retainedNodes: !3110)
!3108 = !DISubroutineType(types: !3109)
!3109 = !{!55, !90, !90, !42, !42, !42, !42, !42, !42, !42, !42}
!3110 = !{!3106, !3111, !3112, !3113, !3114, !3115, !3116, !3117, !3118, !3119}
!3111 = !DILocalVariable(name: "s2", arg: 2, scope: !3107, file: !3077, line: 146, type: !90)
!3112 = !DILocalVariable(name: "s21", arg: 3, scope: !3107, file: !3077, line: 146, type: !42)
!3113 = !DILocalVariable(name: "s22", arg: 4, scope: !3107, file: !3077, line: 146, type: !42)
!3114 = !DILocalVariable(name: "s23", arg: 5, scope: !3107, file: !3077, line: 146, type: !42)
!3115 = !DILocalVariable(name: "s24", arg: 6, scope: !3107, file: !3077, line: 146, type: !42)
!3116 = !DILocalVariable(name: "s25", arg: 7, scope: !3107, file: !3077, line: 146, type: !42)
!3117 = !DILocalVariable(name: "s26", arg: 8, scope: !3107, file: !3077, line: 146, type: !42)
!3118 = !DILocalVariable(name: "s27", arg: 9, scope: !3107, file: !3077, line: 146, type: !42)
!3119 = !DILocalVariable(name: "s28", arg: 10, scope: !3107, file: !3077, line: 146, type: !42)
!3120 = !DILocation(line: 146, column: 25, scope: !3107, inlinedAt: !3121)
!3121 = distinct !DILocation(line: 167, column: 16, scope: !3122, inlinedAt: !3092)
!3122 = distinct !DILexicalBlock(scope: !3123, file: !3077, line: 164, column: 11)
!3123 = distinct !DILexicalBlock(scope: !3105, file: !3077, line: 163, column: 5)
!3124 = !DILocation(line: 146, column: 41, scope: !3107, inlinedAt: !3121)
!3125 = !DILocation(line: 146, column: 50, scope: !3107, inlinedAt: !3121)
!3126 = !DILocation(line: 146, column: 60, scope: !3107, inlinedAt: !3121)
!3127 = !DILocation(line: 146, column: 70, scope: !3107, inlinedAt: !3121)
!3128 = !DILocation(line: 146, column: 80, scope: !3107, inlinedAt: !3121)
!3129 = !DILocation(line: 146, column: 90, scope: !3107, inlinedAt: !3121)
!3130 = !DILocation(line: 146, column: 100, scope: !3107, inlinedAt: !3121)
!3131 = !DILocation(line: 146, column: 110, scope: !3107, inlinedAt: !3121)
!3132 = !DILocation(line: 146, column: 120, scope: !3107, inlinedAt: !3121)
!3133 = !DILocation(line: 148, column: 7, scope: !3134, inlinedAt: !3121)
!3134 = distinct !DILexicalBlock(scope: !3107, file: !3077, line: 148, column: 7)
!3135 = !DILocalVariable(name: "s1", arg: 1, scope: !3136, file: !3077, line: 132, type: !90)
!3136 = distinct !DISubprogram(name: "strcaseeq2", scope: !3077, file: !3077, line: 132, type: !3137, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !227, retainedNodes: !3139)
!3137 = !DISubroutineType(types: !3138)
!3138 = !{!55, !90, !90, !42, !42, !42, !42, !42, !42, !42}
!3139 = !{!3135, !3140, !3141, !3142, !3143, !3144, !3145, !3146, !3147}
!3140 = !DILocalVariable(name: "s2", arg: 2, scope: !3136, file: !3077, line: 132, type: !90)
!3141 = !DILocalVariable(name: "s22", arg: 3, scope: !3136, file: !3077, line: 132, type: !42)
!3142 = !DILocalVariable(name: "s23", arg: 4, scope: !3136, file: !3077, line: 132, type: !42)
!3143 = !DILocalVariable(name: "s24", arg: 5, scope: !3136, file: !3077, line: 132, type: !42)
!3144 = !DILocalVariable(name: "s25", arg: 6, scope: !3136, file: !3077, line: 132, type: !42)
!3145 = !DILocalVariable(name: "s26", arg: 7, scope: !3136, file: !3077, line: 132, type: !42)
!3146 = !DILocalVariable(name: "s27", arg: 8, scope: !3136, file: !3077, line: 132, type: !42)
!3147 = !DILocalVariable(name: "s28", arg: 9, scope: !3136, file: !3077, line: 132, type: !42)
!3148 = !DILocation(line: 132, column: 25, scope: !3136, inlinedAt: !3149)
!3149 = distinct !DILocation(line: 153, column: 16, scope: !3150, inlinedAt: !3121)
!3150 = distinct !DILexicalBlock(scope: !3151, file: !3077, line: 150, column: 11)
!3151 = distinct !DILexicalBlock(scope: !3134, file: !3077, line: 149, column: 5)
!3152 = !DILocation(line: 132, column: 41, scope: !3136, inlinedAt: !3149)
!3153 = !DILocation(line: 132, column: 50, scope: !3136, inlinedAt: !3149)
!3154 = !DILocation(line: 132, column: 60, scope: !3136, inlinedAt: !3149)
!3155 = !DILocation(line: 132, column: 70, scope: !3136, inlinedAt: !3149)
!3156 = !DILocation(line: 132, column: 80, scope: !3136, inlinedAt: !3149)
!3157 = !DILocation(line: 132, column: 90, scope: !3136, inlinedAt: !3149)
!3158 = !DILocation(line: 132, column: 100, scope: !3136, inlinedAt: !3149)
!3159 = !DILocation(line: 132, column: 110, scope: !3136, inlinedAt: !3149)
!3160 = !DILocation(line: 134, column: 7, scope: !3161, inlinedAt: !3149)
!3161 = distinct !DILexicalBlock(scope: !3136, file: !3077, line: 134, column: 7)
!3162 = !DILocalVariable(name: "s1", arg: 1, scope: !3163, file: !3077, line: 118, type: !90)
!3163 = distinct !DISubprogram(name: "strcaseeq3", scope: !3077, file: !3077, line: 118, type: !3164, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !227, retainedNodes: !3166)
!3164 = !DISubroutineType(types: !3165)
!3165 = !{!55, !90, !90, !42, !42, !42, !42, !42, !42}
!3166 = !{!3162, !3167, !3168, !3169, !3170, !3171, !3172, !3173}
!3167 = !DILocalVariable(name: "s2", arg: 2, scope: !3163, file: !3077, line: 118, type: !90)
!3168 = !DILocalVariable(name: "s23", arg: 3, scope: !3163, file: !3077, line: 118, type: !42)
!3169 = !DILocalVariable(name: "s24", arg: 4, scope: !3163, file: !3077, line: 118, type: !42)
!3170 = !DILocalVariable(name: "s25", arg: 5, scope: !3163, file: !3077, line: 118, type: !42)
!3171 = !DILocalVariable(name: "s26", arg: 6, scope: !3163, file: !3077, line: 118, type: !42)
!3172 = !DILocalVariable(name: "s27", arg: 7, scope: !3163, file: !3077, line: 118, type: !42)
!3173 = !DILocalVariable(name: "s28", arg: 8, scope: !3163, file: !3077, line: 118, type: !42)
!3174 = !DILocation(line: 118, column: 25, scope: !3163, inlinedAt: !3175)
!3175 = distinct !DILocation(line: 139, column: 16, scope: !3176, inlinedAt: !3149)
!3176 = distinct !DILexicalBlock(scope: !3177, file: !3077, line: 136, column: 11)
!3177 = distinct !DILexicalBlock(scope: !3161, file: !3077, line: 135, column: 5)
!3178 = !DILocation(line: 118, column: 41, scope: !3163, inlinedAt: !3175)
!3179 = !DILocation(line: 118, column: 50, scope: !3163, inlinedAt: !3175)
!3180 = !DILocation(line: 118, column: 60, scope: !3163, inlinedAt: !3175)
!3181 = !DILocation(line: 118, column: 70, scope: !3163, inlinedAt: !3175)
!3182 = !DILocation(line: 118, column: 80, scope: !3163, inlinedAt: !3175)
!3183 = !DILocation(line: 118, column: 90, scope: !3163, inlinedAt: !3175)
!3184 = !DILocation(line: 118, column: 100, scope: !3163, inlinedAt: !3175)
!3185 = !DILocation(line: 120, column: 7, scope: !3186, inlinedAt: !3175)
!3186 = distinct !DILexicalBlock(scope: !3163, file: !3077, line: 120, column: 7)
!3187 = !DILocation(line: 120, column: 7, scope: !3163, inlinedAt: !3175)
!3188 = !DILocalVariable(name: "s1", arg: 1, scope: !3189, file: !3077, line: 104, type: !90)
!3189 = distinct !DISubprogram(name: "strcaseeq4", scope: !3077, file: !3077, line: 104, type: !3190, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !227, retainedNodes: !3192)
!3190 = !DISubroutineType(types: !3191)
!3191 = !{!55, !90, !90, !42, !42, !42, !42, !42}
!3192 = !{!3188, !3193, !3194, !3195, !3196, !3197, !3198}
!3193 = !DILocalVariable(name: "s2", arg: 2, scope: !3189, file: !3077, line: 104, type: !90)
!3194 = !DILocalVariable(name: "s24", arg: 3, scope: !3189, file: !3077, line: 104, type: !42)
!3195 = !DILocalVariable(name: "s25", arg: 4, scope: !3189, file: !3077, line: 104, type: !42)
!3196 = !DILocalVariable(name: "s26", arg: 5, scope: !3189, file: !3077, line: 104, type: !42)
!3197 = !DILocalVariable(name: "s27", arg: 6, scope: !3189, file: !3077, line: 104, type: !42)
!3198 = !DILocalVariable(name: "s28", arg: 7, scope: !3189, file: !3077, line: 104, type: !42)
!3199 = !DILocation(line: 104, column: 25, scope: !3189, inlinedAt: !3200)
!3200 = distinct !DILocation(line: 125, column: 16, scope: !3201, inlinedAt: !3175)
!3201 = distinct !DILexicalBlock(scope: !3202, file: !3077, line: 122, column: 11)
!3202 = distinct !DILexicalBlock(scope: !3186, file: !3077, line: 121, column: 5)
!3203 = !DILocation(line: 104, column: 41, scope: !3189, inlinedAt: !3200)
!3204 = !DILocation(line: 104, column: 50, scope: !3189, inlinedAt: !3200)
!3205 = !DILocation(line: 104, column: 60, scope: !3189, inlinedAt: !3200)
!3206 = !DILocation(line: 104, column: 70, scope: !3189, inlinedAt: !3200)
!3207 = !DILocation(line: 104, column: 80, scope: !3189, inlinedAt: !3200)
!3208 = !DILocation(line: 104, column: 90, scope: !3189, inlinedAt: !3200)
!3209 = !DILocation(line: 106, column: 7, scope: !3210, inlinedAt: !3200)
!3210 = distinct !DILexicalBlock(scope: !3189, file: !3077, line: 106, column: 7)
!3211 = !DILocation(line: 106, column: 7, scope: !3189, inlinedAt: !3200)
!3212 = !DILocalVariable(name: "s1", arg: 1, scope: !3213, file: !3077, line: 90, type: !90)
!3213 = distinct !DISubprogram(name: "strcaseeq5", scope: !3077, file: !3077, line: 90, type: !3214, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !227, retainedNodes: !3216)
!3214 = !DISubroutineType(types: !3215)
!3215 = !{!55, !90, !90, !42, !42, !42, !42}
!3216 = !{!3212, !3217, !3218, !3219, !3220, !3221}
!3217 = !DILocalVariable(name: "s2", arg: 2, scope: !3213, file: !3077, line: 90, type: !90)
!3218 = !DILocalVariable(name: "s25", arg: 3, scope: !3213, file: !3077, line: 90, type: !42)
!3219 = !DILocalVariable(name: "s26", arg: 4, scope: !3213, file: !3077, line: 90, type: !42)
!3220 = !DILocalVariable(name: "s27", arg: 5, scope: !3213, file: !3077, line: 90, type: !42)
!3221 = !DILocalVariable(name: "s28", arg: 6, scope: !3213, file: !3077, line: 90, type: !42)
!3222 = !DILocation(line: 90, column: 25, scope: !3213, inlinedAt: !3223)
!3223 = distinct !DILocation(line: 111, column: 16, scope: !3224, inlinedAt: !3200)
!3224 = distinct !DILexicalBlock(scope: !3225, file: !3077, line: 108, column: 11)
!3225 = distinct !DILexicalBlock(scope: !3210, file: !3077, line: 107, column: 5)
!3226 = !DILocation(line: 90, column: 41, scope: !3213, inlinedAt: !3223)
!3227 = !DILocation(line: 90, column: 50, scope: !3213, inlinedAt: !3223)
!3228 = !DILocation(line: 90, column: 60, scope: !3213, inlinedAt: !3223)
!3229 = !DILocation(line: 90, column: 70, scope: !3213, inlinedAt: !3223)
!3230 = !DILocation(line: 90, column: 80, scope: !3213, inlinedAt: !3223)
!3231 = !DILocation(line: 92, column: 7, scope: !3232, inlinedAt: !3223)
!3232 = distinct !DILexicalBlock(scope: !3213, file: !3077, line: 92, column: 7)
!3233 = !DILocation(line: 92, column: 7, scope: !3213, inlinedAt: !3223)
!3234 = !DILocation(line: 235, column: 12, scope: !3093)
!3235 = !DILocation(line: 235, column: 21, scope: !3093)
!3236 = !DILocation(line: 235, column: 5, scope: !3093)
!3237 = !DILocation(line: 146, column: 25, scope: !3107, inlinedAt: !3238)
!3238 = distinct !DILocation(line: 167, column: 16, scope: !3122, inlinedAt: !3239)
!3239 = distinct !DILocation(line: 236, column: 7, scope: !3240)
!3240 = distinct !DILexicalBlock(scope: !3058, file: !239, line: 236, column: 7)
!3241 = !DILocation(line: 146, column: 41, scope: !3107, inlinedAt: !3238)
!3242 = !DILocation(line: 146, column: 50, scope: !3107, inlinedAt: !3238)
!3243 = !DILocation(line: 146, column: 60, scope: !3107, inlinedAt: !3238)
!3244 = !DILocation(line: 146, column: 70, scope: !3107, inlinedAt: !3238)
!3245 = !DILocation(line: 146, column: 80, scope: !3107, inlinedAt: !3238)
!3246 = !DILocation(line: 146, column: 90, scope: !3107, inlinedAt: !3238)
!3247 = !DILocation(line: 146, column: 100, scope: !3107, inlinedAt: !3238)
!3248 = !DILocation(line: 146, column: 110, scope: !3107, inlinedAt: !3238)
!3249 = !DILocation(line: 146, column: 120, scope: !3107, inlinedAt: !3238)
!3250 = !DILocation(line: 148, column: 7, scope: !3134, inlinedAt: !3238)
!3251 = !DILocation(line: 132, column: 25, scope: !3136, inlinedAt: !3252)
!3252 = distinct !DILocation(line: 153, column: 16, scope: !3150, inlinedAt: !3238)
!3253 = !DILocation(line: 132, column: 41, scope: !3136, inlinedAt: !3252)
!3254 = !DILocation(line: 132, column: 50, scope: !3136, inlinedAt: !3252)
!3255 = !DILocation(line: 132, column: 60, scope: !3136, inlinedAt: !3252)
!3256 = !DILocation(line: 132, column: 70, scope: !3136, inlinedAt: !3252)
!3257 = !DILocation(line: 132, column: 80, scope: !3136, inlinedAt: !3252)
!3258 = !DILocation(line: 132, column: 90, scope: !3136, inlinedAt: !3252)
!3259 = !DILocation(line: 132, column: 100, scope: !3136, inlinedAt: !3252)
!3260 = !DILocation(line: 132, column: 110, scope: !3136, inlinedAt: !3252)
!3261 = !DILocation(line: 134, column: 7, scope: !3161, inlinedAt: !3252)
!3262 = !DILocation(line: 134, column: 7, scope: !3136, inlinedAt: !3252)
!3263 = !DILocation(line: 118, column: 25, scope: !3163, inlinedAt: !3264)
!3264 = distinct !DILocation(line: 139, column: 16, scope: !3176, inlinedAt: !3252)
!3265 = !DILocation(line: 118, column: 41, scope: !3163, inlinedAt: !3264)
!3266 = !DILocation(line: 118, column: 50, scope: !3163, inlinedAt: !3264)
!3267 = !DILocation(line: 118, column: 60, scope: !3163, inlinedAt: !3264)
!3268 = !DILocation(line: 118, column: 70, scope: !3163, inlinedAt: !3264)
!3269 = !DILocation(line: 118, column: 80, scope: !3163, inlinedAt: !3264)
!3270 = !DILocation(line: 118, column: 90, scope: !3163, inlinedAt: !3264)
!3271 = !DILocation(line: 118, column: 100, scope: !3163, inlinedAt: !3264)
!3272 = !DILocation(line: 120, column: 7, scope: !3186, inlinedAt: !3264)
!3273 = !DILocation(line: 120, column: 7, scope: !3163, inlinedAt: !3264)
!3274 = !DILocation(line: 104, column: 25, scope: !3189, inlinedAt: !3275)
!3275 = distinct !DILocation(line: 125, column: 16, scope: !3201, inlinedAt: !3264)
!3276 = !DILocation(line: 104, column: 41, scope: !3189, inlinedAt: !3275)
!3277 = !DILocation(line: 104, column: 50, scope: !3189, inlinedAt: !3275)
!3278 = !DILocation(line: 104, column: 60, scope: !3189, inlinedAt: !3275)
!3279 = !DILocation(line: 104, column: 70, scope: !3189, inlinedAt: !3275)
!3280 = !DILocation(line: 104, column: 80, scope: !3189, inlinedAt: !3275)
!3281 = !DILocation(line: 104, column: 90, scope: !3189, inlinedAt: !3275)
!3282 = !DILocation(line: 106, column: 7, scope: !3210, inlinedAt: !3275)
!3283 = !DILocation(line: 106, column: 7, scope: !3189, inlinedAt: !3275)
!3284 = !DILocation(line: 90, column: 25, scope: !3213, inlinedAt: !3285)
!3285 = distinct !DILocation(line: 111, column: 16, scope: !3224, inlinedAt: !3275)
!3286 = !DILocation(line: 90, column: 41, scope: !3213, inlinedAt: !3285)
!3287 = !DILocation(line: 90, column: 50, scope: !3213, inlinedAt: !3285)
!3288 = !DILocation(line: 90, column: 60, scope: !3213, inlinedAt: !3285)
!3289 = !DILocation(line: 90, column: 70, scope: !3213, inlinedAt: !3285)
!3290 = !DILocation(line: 90, column: 80, scope: !3213, inlinedAt: !3285)
!3291 = !DILocation(line: 92, column: 7, scope: !3232, inlinedAt: !3285)
!3292 = !DILocation(line: 92, column: 7, scope: !3213, inlinedAt: !3285)
!3293 = !DILocalVariable(name: "s1", arg: 1, scope: !3294, file: !3077, line: 76, type: !90)
!3294 = distinct !DISubprogram(name: "strcaseeq6", scope: !3077, file: !3077, line: 76, type: !3295, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !227, retainedNodes: !3297)
!3295 = !DISubroutineType(types: !3296)
!3296 = !{!55, !90, !90, !42, !42, !42}
!3297 = !{!3293, !3298, !3299, !3300, !3301}
!3298 = !DILocalVariable(name: "s2", arg: 2, scope: !3294, file: !3077, line: 76, type: !90)
!3299 = !DILocalVariable(name: "s26", arg: 3, scope: !3294, file: !3077, line: 76, type: !42)
!3300 = !DILocalVariable(name: "s27", arg: 4, scope: !3294, file: !3077, line: 76, type: !42)
!3301 = !DILocalVariable(name: "s28", arg: 5, scope: !3294, file: !3077, line: 76, type: !42)
!3302 = !DILocation(line: 76, column: 25, scope: !3294, inlinedAt: !3303)
!3303 = distinct !DILocation(line: 97, column: 16, scope: !3304, inlinedAt: !3285)
!3304 = distinct !DILexicalBlock(scope: !3305, file: !3077, line: 94, column: 11)
!3305 = distinct !DILexicalBlock(scope: !3232, file: !3077, line: 93, column: 5)
!3306 = !DILocation(line: 76, column: 41, scope: !3294, inlinedAt: !3303)
!3307 = !DILocation(line: 76, column: 50, scope: !3294, inlinedAt: !3303)
!3308 = !DILocation(line: 76, column: 60, scope: !3294, inlinedAt: !3303)
!3309 = !DILocation(line: 76, column: 70, scope: !3294, inlinedAt: !3303)
!3310 = !DILocation(line: 78, column: 7, scope: !3311, inlinedAt: !3303)
!3311 = distinct !DILexicalBlock(scope: !3294, file: !3077, line: 78, column: 7)
!3312 = !DILocation(line: 78, column: 7, scope: !3294, inlinedAt: !3303)
!3313 = !DILocalVariable(name: "s1", arg: 1, scope: !3314, file: !3077, line: 62, type: !90)
!3314 = distinct !DISubprogram(name: "strcaseeq7", scope: !3077, file: !3077, line: 62, type: !3315, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !227, retainedNodes: !3317)
!3315 = !DISubroutineType(types: !3316)
!3316 = !{!55, !90, !90, !42, !42}
!3317 = !{!3313, !3318, !3319, !3320}
!3318 = !DILocalVariable(name: "s2", arg: 2, scope: !3314, file: !3077, line: 62, type: !90)
!3319 = !DILocalVariable(name: "s27", arg: 3, scope: !3314, file: !3077, line: 62, type: !42)
!3320 = !DILocalVariable(name: "s28", arg: 4, scope: !3314, file: !3077, line: 62, type: !42)
!3321 = !DILocation(line: 62, column: 25, scope: !3314, inlinedAt: !3322)
!3322 = distinct !DILocation(line: 83, column: 16, scope: !3323, inlinedAt: !3303)
!3323 = distinct !DILexicalBlock(scope: !3324, file: !3077, line: 80, column: 11)
!3324 = distinct !DILexicalBlock(scope: !3311, file: !3077, line: 79, column: 5)
!3325 = !DILocation(line: 62, column: 41, scope: !3314, inlinedAt: !3322)
!3326 = !DILocation(line: 62, column: 50, scope: !3314, inlinedAt: !3322)
!3327 = !DILocation(line: 62, column: 60, scope: !3314, inlinedAt: !3322)
!3328 = !DILocation(line: 64, column: 7, scope: !3329, inlinedAt: !3322)
!3329 = distinct !DILexicalBlock(scope: !3314, file: !3077, line: 64, column: 7)
!3330 = !DILocation(line: 236, column: 7, scope: !3058)
!3331 = !DILocation(line: 237, column: 12, scope: !3240)
!3332 = !DILocation(line: 237, column: 21, scope: !3240)
!3333 = !DILocation(line: 237, column: 5, scope: !3240)
!3334 = !DILocation(line: 239, column: 13, scope: !3058)
!3335 = !DILocation(line: 239, column: 11, scope: !3058)
!3336 = !DILocation(line: 239, column: 3, scope: !3058)
!3337 = !DILocation(line: 0, scope: !3058)
!3338 = !DILocation(line: 240, column: 1, scope: !3058)
!3339 = distinct !DISubprogram(name: "quotearg_alloc", scope: !239, file: !239, line: 799, type: !3340, isLocal: false, isDefinition: true, scopeLine: 801, flags: DIFlagPrototyped, isOptimized: true, unit: !227, retainedNodes: !3342)
!3340 = !DISubroutineType(types: !3341)
!3341 = !{!41, !90, !46, !2379}
!3342 = !{!3343, !3344, !3345}
!3343 = !DILocalVariable(name: "arg", arg: 1, scope: !3339, file: !239, line: 799, type: !90)
!3344 = !DILocalVariable(name: "argsize", arg: 2, scope: !3339, file: !239, line: 799, type: !46)
!3345 = !DILocalVariable(name: "o", arg: 3, scope: !3339, file: !239, line: 800, type: !2379)
!3346 = !DILocation(line: 799, column: 29, scope: !3339)
!3347 = !DILocation(line: 799, column: 41, scope: !3339)
!3348 = !DILocation(line: 800, column: 47, scope: !3339)
!3349 = !DILocalVariable(name: "arg", arg: 1, scope: !3350, file: !239, line: 812, type: !90)
!3350 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !239, file: !239, line: 812, type: !3351, isLocal: false, isDefinition: true, scopeLine: 814, flags: DIFlagPrototyped, isOptimized: true, unit: !227, retainedNodes: !3353)
!3351 = !DISubroutineType(types: !3352)
!3352 = !{!41, !90, !46, !145, !2379}
!3353 = !{!3349, !3354, !3355, !3356, !3357, !3358, !3359, !3360, !3361}
!3354 = !DILocalVariable(name: "argsize", arg: 2, scope: !3350, file: !239, line: 812, type: !46)
!3355 = !DILocalVariable(name: "size", arg: 3, scope: !3350, file: !239, line: 812, type: !145)
!3356 = !DILocalVariable(name: "o", arg: 4, scope: !3350, file: !239, line: 813, type: !2379)
!3357 = !DILocalVariable(name: "p", scope: !3350, file: !239, line: 815, type: !2379)
!3358 = !DILocalVariable(name: "e", scope: !3350, file: !239, line: 816, type: !55)
!3359 = !DILocalVariable(name: "flags", scope: !3350, file: !239, line: 818, type: !55)
!3360 = !DILocalVariable(name: "bufsize", scope: !3350, file: !239, line: 819, type: !46)
!3361 = !DILocalVariable(name: "buf", scope: !3350, file: !239, line: 823, type: !41)
!3362 = !DILocation(line: 812, column: 33, scope: !3350, inlinedAt: !3363)
!3363 = distinct !DILocation(line: 802, column: 10, scope: !3339)
!3364 = !DILocation(line: 812, column: 45, scope: !3350, inlinedAt: !3363)
!3365 = !DILocation(line: 812, column: 62, scope: !3350, inlinedAt: !3363)
!3366 = !DILocation(line: 813, column: 51, scope: !3350, inlinedAt: !3363)
!3367 = !DILocation(line: 815, column: 37, scope: !3350, inlinedAt: !3363)
!3368 = !DILocation(line: 815, column: 33, scope: !3350, inlinedAt: !3363)
!3369 = !DILocation(line: 816, column: 11, scope: !3350, inlinedAt: !3363)
!3370 = !DILocation(line: 816, column: 7, scope: !3350, inlinedAt: !3363)
!3371 = !DILocation(line: 818, column: 18, scope: !3350, inlinedAt: !3363)
!3372 = !DILocation(line: 818, column: 24, scope: !3350, inlinedAt: !3363)
!3373 = !DILocation(line: 818, column: 7, scope: !3350, inlinedAt: !3363)
!3374 = !DILocation(line: 819, column: 69, scope: !3350, inlinedAt: !3363)
!3375 = !DILocation(line: 820, column: 53, scope: !3350, inlinedAt: !3363)
!3376 = !DILocation(line: 821, column: 49, scope: !3350, inlinedAt: !3363)
!3377 = !DILocation(line: 822, column: 49, scope: !3350, inlinedAt: !3363)
!3378 = !DILocation(line: 819, column: 20, scope: !3350, inlinedAt: !3363)
!3379 = !DILocation(line: 822, column: 62, scope: !3350, inlinedAt: !3363)
!3380 = !DILocation(line: 819, column: 10, scope: !3350, inlinedAt: !3363)
!3381 = !DILocalVariable(name: "n", arg: 1, scope: !3382, file: !141, line: 216, type: !46)
!3382 = distinct !DISubprogram(name: "xcharalloc", scope: !141, file: !141, line: 216, type: !3383, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !227, retainedNodes: !3385)
!3383 = !DISubroutineType(types: !3384)
!3384 = !{!41, !46}
!3385 = !{!3381}
!3386 = !DILocation(line: 216, column: 20, scope: !3382, inlinedAt: !3387)
!3387 = distinct !DILocation(line: 823, column: 15, scope: !3350, inlinedAt: !3363)
!3388 = !DILocation(line: 218, column: 10, scope: !3382, inlinedAt: !3387)
!3389 = !DILocation(line: 823, column: 9, scope: !3350, inlinedAt: !3363)
!3390 = !DILocation(line: 824, column: 60, scope: !3350, inlinedAt: !3363)
!3391 = !DILocation(line: 826, column: 32, scope: !3350, inlinedAt: !3363)
!3392 = !DILocation(line: 826, column: 47, scope: !3350, inlinedAt: !3363)
!3393 = !DILocation(line: 824, column: 3, scope: !3350, inlinedAt: !3363)
!3394 = !DILocation(line: 827, column: 9, scope: !3350, inlinedAt: !3363)
!3395 = !DILocation(line: 802, column: 3, scope: !3339)
!3396 = !DILocation(line: 812, column: 33, scope: !3350)
!3397 = !DILocation(line: 812, column: 45, scope: !3350)
!3398 = !DILocation(line: 812, column: 62, scope: !3350)
!3399 = !DILocation(line: 813, column: 51, scope: !3350)
!3400 = !DILocation(line: 815, column: 37, scope: !3350)
!3401 = !DILocation(line: 815, column: 33, scope: !3350)
!3402 = !DILocation(line: 816, column: 11, scope: !3350)
!3403 = !DILocation(line: 816, column: 7, scope: !3350)
!3404 = !DILocation(line: 818, column: 18, scope: !3350)
!3405 = !DILocation(line: 818, column: 27, scope: !3350)
!3406 = !DILocation(line: 818, column: 24, scope: !3350)
!3407 = !DILocation(line: 818, column: 7, scope: !3350)
!3408 = !DILocation(line: 819, column: 69, scope: !3350)
!3409 = !DILocation(line: 820, column: 53, scope: !3350)
!3410 = !DILocation(line: 821, column: 49, scope: !3350)
!3411 = !DILocation(line: 822, column: 49, scope: !3350)
!3412 = !DILocation(line: 819, column: 20, scope: !3350)
!3413 = !DILocation(line: 822, column: 62, scope: !3350)
!3414 = !DILocation(line: 819, column: 10, scope: !3350)
!3415 = !DILocation(line: 216, column: 20, scope: !3382, inlinedAt: !3416)
!3416 = distinct !DILocation(line: 823, column: 15, scope: !3350)
!3417 = !DILocation(line: 218, column: 10, scope: !3382, inlinedAt: !3416)
!3418 = !DILocation(line: 823, column: 9, scope: !3350)
!3419 = !DILocation(line: 824, column: 60, scope: !3350)
!3420 = !DILocation(line: 826, column: 32, scope: !3350)
!3421 = !DILocation(line: 826, column: 47, scope: !3350)
!3422 = !DILocation(line: 824, column: 3, scope: !3350)
!3423 = !DILocation(line: 827, column: 9, scope: !3350)
!3424 = !DILocation(line: 828, column: 7, scope: !3350)
!3425 = !DILocation(line: 829, column: 11, scope: !3426)
!3426 = distinct !DILexicalBlock(scope: !3350, file: !239, line: 828, column: 7)
!3427 = !DILocation(line: 829, column: 5, scope: !3426)
!3428 = !DILocation(line: 830, column: 3, scope: !3350)
!3429 = distinct !DISubprogram(name: "quotearg_free", scope: !239, file: !239, line: 848, type: !778, isLocal: false, isDefinition: true, scopeLine: 849, flags: DIFlagPrototyped, isOptimized: true, unit: !227, retainedNodes: !3430)
!3430 = !{!3431, !3432}
!3431 = !DILocalVariable(name: "sv", scope: !3429, file: !239, line: 850, type: !265)
!3432 = !DILocalVariable(name: "i", scope: !3429, file: !239, line: 851, type: !55)
!3433 = !DILocation(line: 850, column: 24, scope: !3429)
!3434 = !DILocation(line: 850, column: 19, scope: !3429)
!3435 = !DILocation(line: 851, column: 7, scope: !3429)
!3436 = !DILocation(line: 852, column: 19, scope: !3437)
!3437 = distinct !DILexicalBlock(scope: !3438, file: !239, line: 852, column: 3)
!3438 = distinct !DILexicalBlock(scope: !3429, file: !239, line: 852, column: 3)
!3439 = !DILocation(line: 852, column: 17, scope: !3437)
!3440 = !DILocation(line: 852, column: 3, scope: !3438)
!3441 = !DILocation(line: 853, column: 17, scope: !3437)
!3442 = !{!3443, !771, i64 8}
!3443 = !{!"slotvec", !882, i64 0, !771, i64 8}
!3444 = !DILocation(line: 853, column: 5, scope: !3437)
!3445 = !DILocation(line: 852, column: 28, scope: !3437)
!3446 = distinct !{!3446, !3440, !3447}
!3447 = !DILocation(line: 853, column: 20, scope: !3438)
!3448 = !DILocation(line: 854, column: 13, scope: !3449)
!3449 = distinct !DILexicalBlock(scope: !3429, file: !239, line: 854, column: 7)
!3450 = !DILocation(line: 854, column: 17, scope: !3449)
!3451 = !DILocation(line: 854, column: 7, scope: !3429)
!3452 = !DILocation(line: 856, column: 7, scope: !3453)
!3453 = distinct !DILexicalBlock(scope: !3449, file: !239, line: 855, column: 5)
!3454 = !DILocation(line: 857, column: 21, scope: !3453)
!3455 = !{!3443, !882, i64 0}
!3456 = !DILocation(line: 858, column: 20, scope: !3453)
!3457 = !DILocation(line: 859, column: 5, scope: !3453)
!3458 = !DILocation(line: 860, column: 10, scope: !3459)
!3459 = distinct !DILexicalBlock(scope: !3429, file: !239, line: 860, column: 7)
!3460 = !DILocation(line: 860, column: 7, scope: !3429)
!3461 = !DILocation(line: 862, column: 13, scope: !3462)
!3462 = distinct !DILexicalBlock(scope: !3459, file: !239, line: 861, column: 5)
!3463 = !DILocation(line: 862, column: 7, scope: !3462)
!3464 = !DILocation(line: 863, column: 15, scope: !3462)
!3465 = !DILocation(line: 864, column: 5, scope: !3462)
!3466 = !DILocation(line: 865, column: 10, scope: !3429)
!3467 = !DILocation(line: 866, column: 1, scope: !3429)
!3468 = distinct !DISubprogram(name: "quotearg_n", scope: !239, file: !239, line: 931, type: !3469, isLocal: false, isDefinition: true, scopeLine: 932, flags: DIFlagPrototyped, isOptimized: true, unit: !227, retainedNodes: !3471)
!3469 = !DISubroutineType(types: !3470)
!3470 = !{!41, !55, !90}
!3471 = !{!3472, !3473}
!3472 = !DILocalVariable(name: "n", arg: 1, scope: !3468, file: !239, line: 931, type: !55)
!3473 = !DILocalVariable(name: "arg", arg: 2, scope: !3468, file: !239, line: 931, type: !90)
!3474 = !DILocation(line: 931, column: 17, scope: !3468)
!3475 = !DILocation(line: 931, column: 32, scope: !3468)
!3476 = !DILocation(line: 933, column: 10, scope: !3468)
!3477 = !DILocation(line: 933, column: 3, scope: !3468)
!3478 = distinct !DISubprogram(name: "quotearg_n_options", scope: !239, file: !239, line: 877, type: !3479, isLocal: true, isDefinition: true, scopeLine: 879, flags: DIFlagPrototyped, isOptimized: true, unit: !227, retainedNodes: !3481)
!3479 = !DISubroutineType(types: !3480)
!3480 = !{!41, !55, !90, !46, !2379}
!3481 = !{!3482, !3483, !3484, !3485, !3486, !3487, !3488, !3491, !3492, !3494, !3495, !3496}
!3482 = !DILocalVariable(name: "n", arg: 1, scope: !3478, file: !239, line: 877, type: !55)
!3483 = !DILocalVariable(name: "arg", arg: 2, scope: !3478, file: !239, line: 877, type: !90)
!3484 = !DILocalVariable(name: "argsize", arg: 3, scope: !3478, file: !239, line: 877, type: !46)
!3485 = !DILocalVariable(name: "options", arg: 4, scope: !3478, file: !239, line: 878, type: !2379)
!3486 = !DILocalVariable(name: "e", scope: !3478, file: !239, line: 880, type: !55)
!3487 = !DILocalVariable(name: "sv", scope: !3478, file: !239, line: 882, type: !265)
!3488 = !DILocalVariable(name: "preallocated", scope: !3489, file: !239, line: 889, type: !62)
!3489 = distinct !DILexicalBlock(scope: !3490, file: !239, line: 888, column: 5)
!3490 = distinct !DILexicalBlock(scope: !3478, file: !239, line: 887, column: 7)
!3491 = !DILocalVariable(name: "nmax", scope: !3489, file: !239, line: 890, type: !55)
!3492 = !DILocalVariable(name: "size", scope: !3493, file: !239, line: 903, type: !46)
!3493 = distinct !DILexicalBlock(scope: !3478, file: !239, line: 902, column: 3)
!3494 = !DILocalVariable(name: "val", scope: !3493, file: !239, line: 904, type: !41)
!3495 = !DILocalVariable(name: "flags", scope: !3493, file: !239, line: 906, type: !55)
!3496 = !DILocalVariable(name: "qsize", scope: !3493, file: !239, line: 907, type: !46)
!3497 = !DILocation(line: 877, column: 25, scope: !3478)
!3498 = !DILocation(line: 877, column: 40, scope: !3478)
!3499 = !DILocation(line: 877, column: 52, scope: !3478)
!3500 = !DILocation(line: 878, column: 51, scope: !3478)
!3501 = !DILocation(line: 880, column: 11, scope: !3478)
!3502 = !DILocation(line: 880, column: 7, scope: !3478)
!3503 = !DILocation(line: 882, column: 24, scope: !3478)
!3504 = !DILocation(line: 882, column: 19, scope: !3478)
!3505 = !DILocation(line: 884, column: 9, scope: !3506)
!3506 = distinct !DILexicalBlock(scope: !3478, file: !239, line: 884, column: 7)
!3507 = !DILocation(line: 884, column: 7, scope: !3478)
!3508 = !DILocation(line: 885, column: 5, scope: !3506)
!3509 = !DILocation(line: 887, column: 7, scope: !3490)
!3510 = !DILocation(line: 887, column: 14, scope: !3490)
!3511 = !DILocation(line: 887, column: 7, scope: !3478)
!3512 = !DILocation(line: 889, column: 31, scope: !3489)
!3513 = !DILocation(line: 890, column: 11, scope: !3489)
!3514 = !DILocation(line: 892, column: 16, scope: !3515)
!3515 = distinct !DILexicalBlock(scope: !3489, file: !239, line: 892, column: 11)
!3516 = !DILocation(line: 892, column: 11, scope: !3489)
!3517 = !DILocation(line: 893, column: 9, scope: !3515)
!3518 = !DILocation(line: 895, column: 32, scope: !3489)
!3519 = !DILocation(line: 895, column: 61, scope: !3489)
!3520 = !DILocation(line: 895, column: 58, scope: !3489)
!3521 = !DILocation(line: 895, column: 66, scope: !3489)
!3522 = !DILocation(line: 895, column: 22, scope: !3489)
!3523 = !DILocation(line: 895, column: 15, scope: !3489)
!3524 = !DILocation(line: 896, column: 11, scope: !3489)
!3525 = !DILocation(line: 897, column: 15, scope: !3526)
!3526 = distinct !DILexicalBlock(scope: !3489, file: !239, line: 896, column: 11)
!3527 = !{i64 0, i64 8, !881, i64 8, i64 8, !770}
!3528 = !DILocation(line: 897, column: 9, scope: !3526)
!3529 = !DILocation(line: 898, column: 20, scope: !3489)
!3530 = !DILocation(line: 898, column: 18, scope: !3489)
!3531 = !DILocation(line: 898, column: 7, scope: !3489)
!3532 = !DILocation(line: 898, column: 38, scope: !3489)
!3533 = !DILocation(line: 898, column: 31, scope: !3489)
!3534 = !DILocation(line: 898, column: 48, scope: !3489)
!3535 = !DILocation(line: 899, column: 14, scope: !3489)
!3536 = !DILocation(line: 900, column: 5, scope: !3489)
!3537 = !DILocation(line: 0, scope: !3478)
!3538 = !DILocation(line: 903, column: 19, scope: !3493)
!3539 = !DILocation(line: 903, column: 25, scope: !3493)
!3540 = !DILocation(line: 903, column: 12, scope: !3493)
!3541 = !DILocation(line: 904, column: 23, scope: !3493)
!3542 = !DILocation(line: 904, column: 11, scope: !3493)
!3543 = !DILocation(line: 906, column: 26, scope: !3493)
!3544 = !DILocation(line: 906, column: 32, scope: !3493)
!3545 = !DILocation(line: 906, column: 9, scope: !3493)
!3546 = !DILocation(line: 908, column: 55, scope: !3493)
!3547 = !DILocation(line: 909, column: 46, scope: !3493)
!3548 = !DILocation(line: 910, column: 55, scope: !3493)
!3549 = !DILocation(line: 911, column: 55, scope: !3493)
!3550 = !DILocation(line: 907, column: 20, scope: !3493)
!3551 = !DILocation(line: 907, column: 12, scope: !3493)
!3552 = !DILocation(line: 913, column: 14, scope: !3553)
!3553 = distinct !DILexicalBlock(scope: !3493, file: !239, line: 913, column: 9)
!3554 = !DILocation(line: 913, column: 9, scope: !3493)
!3555 = !DILocation(line: 915, column: 35, scope: !3556)
!3556 = distinct !DILexicalBlock(scope: !3553, file: !239, line: 914, column: 7)
!3557 = !DILocation(line: 915, column: 20, scope: !3556)
!3558 = !DILocation(line: 916, column: 17, scope: !3559)
!3559 = distinct !DILexicalBlock(scope: !3556, file: !239, line: 916, column: 13)
!3560 = !DILocation(line: 916, column: 13, scope: !3556)
!3561 = !DILocation(line: 917, column: 11, scope: !3559)
!3562 = !DILocation(line: 216, column: 20, scope: !3382, inlinedAt: !3563)
!3563 = distinct !DILocation(line: 918, column: 27, scope: !3556)
!3564 = !DILocation(line: 218, column: 10, scope: !3382, inlinedAt: !3563)
!3565 = !DILocation(line: 918, column: 19, scope: !3556)
!3566 = !DILocation(line: 919, column: 69, scope: !3556)
!3567 = !DILocation(line: 921, column: 44, scope: !3556)
!3568 = !DILocation(line: 922, column: 44, scope: !3556)
!3569 = !DILocation(line: 919, column: 9, scope: !3556)
!3570 = !DILocation(line: 923, column: 7, scope: !3556)
!3571 = !DILocation(line: 0, scope: !3493)
!3572 = !DILocation(line: 925, column: 11, scope: !3493)
!3573 = !DILocation(line: 926, column: 5, scope: !3493)
!3574 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !239, file: !239, line: 937, type: !3575, isLocal: false, isDefinition: true, scopeLine: 938, flags: DIFlagPrototyped, isOptimized: true, unit: !227, retainedNodes: !3577)
!3575 = !DISubroutineType(types: !3576)
!3576 = !{!41, !55, !90, !46}
!3577 = !{!3578, !3579, !3580}
!3578 = !DILocalVariable(name: "n", arg: 1, scope: !3574, file: !239, line: 937, type: !55)
!3579 = !DILocalVariable(name: "arg", arg: 2, scope: !3574, file: !239, line: 937, type: !90)
!3580 = !DILocalVariable(name: "argsize", arg: 3, scope: !3574, file: !239, line: 937, type: !46)
!3581 = !DILocation(line: 937, column: 21, scope: !3574)
!3582 = !DILocation(line: 937, column: 36, scope: !3574)
!3583 = !DILocation(line: 937, column: 48, scope: !3574)
!3584 = !DILocation(line: 939, column: 10, scope: !3574)
!3585 = !DILocation(line: 939, column: 3, scope: !3574)
!3586 = distinct !DISubprogram(name: "quotearg", scope: !239, file: !239, line: 943, type: !3587, isLocal: false, isDefinition: true, scopeLine: 944, flags: DIFlagPrototyped, isOptimized: true, unit: !227, retainedNodes: !3589)
!3587 = !DISubroutineType(types: !3588)
!3588 = !{!41, !90}
!3589 = !{!3590}
!3590 = !DILocalVariable(name: "arg", arg: 1, scope: !3586, file: !239, line: 943, type: !90)
!3591 = !DILocation(line: 943, column: 23, scope: !3586)
!3592 = !DILocation(line: 931, column: 17, scope: !3468, inlinedAt: !3593)
!3593 = distinct !DILocation(line: 945, column: 10, scope: !3586)
!3594 = !DILocation(line: 931, column: 32, scope: !3468, inlinedAt: !3593)
!3595 = !DILocation(line: 933, column: 10, scope: !3468, inlinedAt: !3593)
!3596 = !DILocation(line: 945, column: 3, scope: !3586)
!3597 = distinct !DISubprogram(name: "quotearg_mem", scope: !239, file: !239, line: 949, type: !3598, isLocal: false, isDefinition: true, scopeLine: 950, flags: DIFlagPrototyped, isOptimized: true, unit: !227, retainedNodes: !3600)
!3598 = !DISubroutineType(types: !3599)
!3599 = !{!41, !90, !46}
!3600 = !{!3601, !3602}
!3601 = !DILocalVariable(name: "arg", arg: 1, scope: !3597, file: !239, line: 949, type: !90)
!3602 = !DILocalVariable(name: "argsize", arg: 2, scope: !3597, file: !239, line: 949, type: !46)
!3603 = !DILocation(line: 949, column: 27, scope: !3597)
!3604 = !DILocation(line: 949, column: 39, scope: !3597)
!3605 = !DILocation(line: 937, column: 21, scope: !3574, inlinedAt: !3606)
!3606 = distinct !DILocation(line: 951, column: 10, scope: !3597)
!3607 = !DILocation(line: 937, column: 36, scope: !3574, inlinedAt: !3606)
!3608 = !DILocation(line: 937, column: 48, scope: !3574, inlinedAt: !3606)
!3609 = !DILocation(line: 939, column: 10, scope: !3574, inlinedAt: !3606)
!3610 = !DILocation(line: 951, column: 3, scope: !3597)
!3611 = distinct !DISubprogram(name: "quotearg_n_style", scope: !239, file: !239, line: 955, type: !3612, isLocal: false, isDefinition: true, scopeLine: 956, flags: DIFlagPrototyped, isOptimized: true, unit: !227, retainedNodes: !3614)
!3612 = !DISubroutineType(types: !3613)
!3613 = !{!41, !55, !17, !90}
!3614 = !{!3615, !3616, !3617, !3618}
!3615 = !DILocalVariable(name: "n", arg: 1, scope: !3611, file: !239, line: 955, type: !55)
!3616 = !DILocalVariable(name: "s", arg: 2, scope: !3611, file: !239, line: 955, type: !17)
!3617 = !DILocalVariable(name: "arg", arg: 3, scope: !3611, file: !239, line: 955, type: !90)
!3618 = !DILocalVariable(name: "o", scope: !3611, file: !239, line: 957, type: !2380)
!3619 = !DILocation(line: 955, column: 23, scope: !3611)
!3620 = !DILocation(line: 955, column: 45, scope: !3611)
!3621 = !DILocation(line: 955, column: 60, scope: !3611)
!3622 = !DILocation(line: 957, column: 3, scope: !3611)
!3623 = !DILocation(line: 957, column: 32, scope: !3611)
!3624 = !DILocalVariable(name: "style", arg: 1, scope: !3625, file: !239, line: 193, type: !17)
!3625 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !239, file: !239, line: 193, type: !3626, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !227, retainedNodes: !3628)
!3626 = !DISubroutineType(types: !3627)
!3627 = !{!246, !17}
!3628 = !{!3624, !3629}
!3629 = !DILocalVariable(name: "o", scope: !3625, file: !239, line: 195, type: !246)
!3630 = !DILocation(line: 193, column: 48, scope: !3625, inlinedAt: !3631)
!3631 = distinct !DILocation(line: 957, column: 36, scope: !3611)
!3632 = !DILocation(line: 195, column: 26, scope: !3625, inlinedAt: !3631)
!3633 = !{!3634}
!3634 = distinct !{!3634, !3635, !"quoting_options_from_style: argument 0"}
!3635 = distinct !{!3635, !"quoting_options_from_style"}
!3636 = !DILocation(line: 196, column: 13, scope: !3637, inlinedAt: !3631)
!3637 = distinct !DILexicalBlock(scope: !3625, file: !239, line: 196, column: 7)
!3638 = !DILocation(line: 196, column: 7, scope: !3625, inlinedAt: !3631)
!3639 = !DILocation(line: 197, column: 5, scope: !3637, inlinedAt: !3631)
!3640 = !DILocation(line: 198, column: 5, scope: !3625, inlinedAt: !3631)
!3641 = !DILocation(line: 198, column: 11, scope: !3625, inlinedAt: !3631)
!3642 = !DILocation(line: 958, column: 10, scope: !3611)
!3643 = !DILocation(line: 959, column: 1, scope: !3611)
!3644 = !DILocation(line: 958, column: 3, scope: !3611)
!3645 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !239, file: !239, line: 962, type: !3646, isLocal: false, isDefinition: true, scopeLine: 964, flags: DIFlagPrototyped, isOptimized: true, unit: !227, retainedNodes: !3648)
!3646 = !DISubroutineType(types: !3647)
!3647 = !{!41, !55, !17, !90, !46}
!3648 = !{!3649, !3650, !3651, !3652, !3653}
!3649 = !DILocalVariable(name: "n", arg: 1, scope: !3645, file: !239, line: 962, type: !55)
!3650 = !DILocalVariable(name: "s", arg: 2, scope: !3645, file: !239, line: 962, type: !17)
!3651 = !DILocalVariable(name: "arg", arg: 3, scope: !3645, file: !239, line: 963, type: !90)
!3652 = !DILocalVariable(name: "argsize", arg: 4, scope: !3645, file: !239, line: 963, type: !46)
!3653 = !DILocalVariable(name: "o", scope: !3645, file: !239, line: 965, type: !2380)
!3654 = !DILocation(line: 962, column: 27, scope: !3645)
!3655 = !DILocation(line: 962, column: 49, scope: !3645)
!3656 = !DILocation(line: 963, column: 35, scope: !3645)
!3657 = !DILocation(line: 963, column: 47, scope: !3645)
!3658 = !DILocation(line: 965, column: 3, scope: !3645)
!3659 = !DILocation(line: 965, column: 32, scope: !3645)
!3660 = !DILocation(line: 193, column: 48, scope: !3625, inlinedAt: !3661)
!3661 = distinct !DILocation(line: 965, column: 36, scope: !3645)
!3662 = !DILocation(line: 195, column: 26, scope: !3625, inlinedAt: !3661)
!3663 = !{!3664}
!3664 = distinct !{!3664, !3665, !"quoting_options_from_style: argument 0"}
!3665 = distinct !{!3665, !"quoting_options_from_style"}
!3666 = !DILocation(line: 196, column: 13, scope: !3637, inlinedAt: !3661)
!3667 = !DILocation(line: 196, column: 7, scope: !3625, inlinedAt: !3661)
!3668 = !DILocation(line: 197, column: 5, scope: !3637, inlinedAt: !3661)
!3669 = !DILocation(line: 198, column: 5, scope: !3625, inlinedAt: !3661)
!3670 = !DILocation(line: 198, column: 11, scope: !3625, inlinedAt: !3661)
!3671 = !DILocation(line: 966, column: 10, scope: !3645)
!3672 = !DILocation(line: 967, column: 1, scope: !3645)
!3673 = !DILocation(line: 966, column: 3, scope: !3645)
!3674 = distinct !DISubprogram(name: "quotearg_style", scope: !239, file: !239, line: 970, type: !3675, isLocal: false, isDefinition: true, scopeLine: 971, flags: DIFlagPrototyped, isOptimized: true, unit: !227, retainedNodes: !3677)
!3675 = !DISubroutineType(types: !3676)
!3676 = !{!41, !17, !90}
!3677 = !{!3678, !3679}
!3678 = !DILocalVariable(name: "s", arg: 1, scope: !3674, file: !239, line: 970, type: !17)
!3679 = !DILocalVariable(name: "arg", arg: 2, scope: !3674, file: !239, line: 970, type: !90)
!3680 = !DILocation(line: 970, column: 36, scope: !3674)
!3681 = !DILocation(line: 970, column: 51, scope: !3674)
!3682 = !DILocation(line: 955, column: 23, scope: !3611, inlinedAt: !3683)
!3683 = distinct !DILocation(line: 972, column: 10, scope: !3674)
!3684 = !DILocation(line: 955, column: 45, scope: !3611, inlinedAt: !3683)
!3685 = !DILocation(line: 955, column: 60, scope: !3611, inlinedAt: !3683)
!3686 = !DILocation(line: 957, column: 3, scope: !3611, inlinedAt: !3683)
!3687 = !DILocation(line: 957, column: 32, scope: !3611, inlinedAt: !3683)
!3688 = !DILocation(line: 193, column: 48, scope: !3625, inlinedAt: !3689)
!3689 = distinct !DILocation(line: 957, column: 36, scope: !3611, inlinedAt: !3683)
!3690 = !DILocation(line: 195, column: 26, scope: !3625, inlinedAt: !3689)
!3691 = !{!3692}
!3692 = distinct !{!3692, !3693, !"quoting_options_from_style: argument 0"}
!3693 = distinct !{!3693, !"quoting_options_from_style"}
!3694 = !DILocation(line: 196, column: 13, scope: !3637, inlinedAt: !3689)
!3695 = !DILocation(line: 196, column: 7, scope: !3625, inlinedAt: !3689)
!3696 = !DILocation(line: 197, column: 5, scope: !3637, inlinedAt: !3689)
!3697 = !DILocation(line: 198, column: 5, scope: !3625, inlinedAt: !3689)
!3698 = !DILocation(line: 198, column: 11, scope: !3625, inlinedAt: !3689)
!3699 = !DILocation(line: 958, column: 10, scope: !3611, inlinedAt: !3683)
!3700 = !DILocation(line: 959, column: 1, scope: !3611, inlinedAt: !3683)
!3701 = !DILocation(line: 972, column: 3, scope: !3674)
!3702 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !239, file: !239, line: 976, type: !3703, isLocal: false, isDefinition: true, scopeLine: 977, flags: DIFlagPrototyped, isOptimized: true, unit: !227, retainedNodes: !3705)
!3703 = !DISubroutineType(types: !3704)
!3704 = !{!41, !17, !90, !46}
!3705 = !{!3706, !3707, !3708}
!3706 = !DILocalVariable(name: "s", arg: 1, scope: !3702, file: !239, line: 976, type: !17)
!3707 = !DILocalVariable(name: "arg", arg: 2, scope: !3702, file: !239, line: 976, type: !90)
!3708 = !DILocalVariable(name: "argsize", arg: 3, scope: !3702, file: !239, line: 976, type: !46)
!3709 = !DILocation(line: 976, column: 40, scope: !3702)
!3710 = !DILocation(line: 976, column: 55, scope: !3702)
!3711 = !DILocation(line: 976, column: 67, scope: !3702)
!3712 = !DILocation(line: 962, column: 27, scope: !3645, inlinedAt: !3713)
!3713 = distinct !DILocation(line: 978, column: 10, scope: !3702)
!3714 = !DILocation(line: 962, column: 49, scope: !3645, inlinedAt: !3713)
!3715 = !DILocation(line: 963, column: 35, scope: !3645, inlinedAt: !3713)
!3716 = !DILocation(line: 963, column: 47, scope: !3645, inlinedAt: !3713)
!3717 = !DILocation(line: 965, column: 3, scope: !3645, inlinedAt: !3713)
!3718 = !DILocation(line: 965, column: 32, scope: !3645, inlinedAt: !3713)
!3719 = !DILocation(line: 193, column: 48, scope: !3625, inlinedAt: !3720)
!3720 = distinct !DILocation(line: 965, column: 36, scope: !3645, inlinedAt: !3713)
!3721 = !DILocation(line: 195, column: 26, scope: !3625, inlinedAt: !3720)
!3722 = !{!3723}
!3723 = distinct !{!3723, !3724, !"quoting_options_from_style: argument 0"}
!3724 = distinct !{!3724, !"quoting_options_from_style"}
!3725 = !DILocation(line: 196, column: 13, scope: !3637, inlinedAt: !3720)
!3726 = !DILocation(line: 196, column: 7, scope: !3625, inlinedAt: !3720)
!3727 = !DILocation(line: 197, column: 5, scope: !3637, inlinedAt: !3720)
!3728 = !DILocation(line: 198, column: 5, scope: !3625, inlinedAt: !3720)
!3729 = !DILocation(line: 198, column: 11, scope: !3625, inlinedAt: !3720)
!3730 = !DILocation(line: 966, column: 10, scope: !3645, inlinedAt: !3713)
!3731 = !DILocation(line: 967, column: 1, scope: !3645, inlinedAt: !3713)
!3732 = !DILocation(line: 978, column: 3, scope: !3702)
!3733 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !239, file: !239, line: 982, type: !3734, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !227, retainedNodes: !3736)
!3734 = !DISubroutineType(types: !3735)
!3735 = !{!41, !90, !46, !42}
!3736 = !{!3737, !3738, !3739, !3740}
!3737 = !DILocalVariable(name: "arg", arg: 1, scope: !3733, file: !239, line: 982, type: !90)
!3738 = !DILocalVariable(name: "argsize", arg: 2, scope: !3733, file: !239, line: 982, type: !46)
!3739 = !DILocalVariable(name: "ch", arg: 3, scope: !3733, file: !239, line: 982, type: !42)
!3740 = !DILocalVariable(name: "options", scope: !3733, file: !239, line: 984, type: !246)
!3741 = !DILocation(line: 982, column: 32, scope: !3733)
!3742 = !DILocation(line: 982, column: 44, scope: !3733)
!3743 = !DILocation(line: 982, column: 58, scope: !3733)
!3744 = !DILocation(line: 984, column: 3, scope: !3733)
!3745 = !DILocation(line: 985, column: 13, scope: !3733)
!3746 = !{i64 0, i64 4, !838, i64 4, i64 4, !930, i64 8, i64 32, !838, i64 40, i64 8, !770, i64 48, i64 8, !770}
!3747 = !DILocation(line: 984, column: 26, scope: !3733)
!3748 = !DILocation(line: 152, column: 43, scope: !2401, inlinedAt: !3749)
!3749 = distinct !DILocation(line: 986, column: 3, scope: !3733)
!3750 = !DILocation(line: 152, column: 51, scope: !2401, inlinedAt: !3749)
!3751 = !DILocation(line: 152, column: 58, scope: !2401, inlinedAt: !3749)
!3752 = !DILocation(line: 154, column: 17, scope: !2401, inlinedAt: !3749)
!3753 = !DILocation(line: 156, column: 62, scope: !2401, inlinedAt: !3749)
!3754 = !DILocation(line: 156, column: 57, scope: !2401, inlinedAt: !3749)
!3755 = !DILocation(line: 155, column: 17, scope: !2401, inlinedAt: !3749)
!3756 = !DILocation(line: 157, column: 15, scope: !2401, inlinedAt: !3749)
!3757 = !DILocation(line: 157, column: 7, scope: !2401, inlinedAt: !3749)
!3758 = !DILocation(line: 158, column: 12, scope: !2401, inlinedAt: !3749)
!3759 = !DILocation(line: 158, column: 15, scope: !2401, inlinedAt: !3749)
!3760 = !DILocation(line: 158, column: 25, scope: !2401, inlinedAt: !3749)
!3761 = !DILocation(line: 158, column: 7, scope: !2401, inlinedAt: !3749)
!3762 = !DILocation(line: 159, column: 18, scope: !2401, inlinedAt: !3749)
!3763 = !DILocation(line: 159, column: 23, scope: !2401, inlinedAt: !3749)
!3764 = !DILocation(line: 159, column: 6, scope: !2401, inlinedAt: !3749)
!3765 = !DILocation(line: 987, column: 10, scope: !3733)
!3766 = !DILocation(line: 988, column: 1, scope: !3733)
!3767 = !DILocation(line: 987, column: 3, scope: !3733)
!3768 = distinct !DISubprogram(name: "quotearg_char", scope: !239, file: !239, line: 991, type: !3769, isLocal: false, isDefinition: true, scopeLine: 992, flags: DIFlagPrototyped, isOptimized: true, unit: !227, retainedNodes: !3771)
!3769 = !DISubroutineType(types: !3770)
!3770 = !{!41, !90, !42}
!3771 = !{!3772, !3773}
!3772 = !DILocalVariable(name: "arg", arg: 1, scope: !3768, file: !239, line: 991, type: !90)
!3773 = !DILocalVariable(name: "ch", arg: 2, scope: !3768, file: !239, line: 991, type: !42)
!3774 = !DILocation(line: 991, column: 28, scope: !3768)
!3775 = !DILocation(line: 991, column: 38, scope: !3768)
!3776 = !DILocation(line: 982, column: 32, scope: !3733, inlinedAt: !3777)
!3777 = distinct !DILocation(line: 993, column: 10, scope: !3768)
!3778 = !DILocation(line: 982, column: 44, scope: !3733, inlinedAt: !3777)
!3779 = !DILocation(line: 982, column: 58, scope: !3733, inlinedAt: !3777)
!3780 = !DILocation(line: 984, column: 3, scope: !3733, inlinedAt: !3777)
!3781 = !DILocation(line: 985, column: 13, scope: !3733, inlinedAt: !3777)
!3782 = !DILocation(line: 984, column: 26, scope: !3733, inlinedAt: !3777)
!3783 = !DILocation(line: 152, column: 43, scope: !2401, inlinedAt: !3784)
!3784 = distinct !DILocation(line: 986, column: 3, scope: !3733, inlinedAt: !3777)
!3785 = !DILocation(line: 152, column: 51, scope: !2401, inlinedAt: !3784)
!3786 = !DILocation(line: 152, column: 58, scope: !2401, inlinedAt: !3784)
!3787 = !DILocation(line: 154, column: 17, scope: !2401, inlinedAt: !3784)
!3788 = !DILocation(line: 156, column: 62, scope: !2401, inlinedAt: !3784)
!3789 = !DILocation(line: 156, column: 57, scope: !2401, inlinedAt: !3784)
!3790 = !DILocation(line: 155, column: 17, scope: !2401, inlinedAt: !3784)
!3791 = !DILocation(line: 157, column: 15, scope: !2401, inlinedAt: !3784)
!3792 = !DILocation(line: 157, column: 7, scope: !2401, inlinedAt: !3784)
!3793 = !DILocation(line: 158, column: 12, scope: !2401, inlinedAt: !3784)
!3794 = !DILocation(line: 158, column: 15, scope: !2401, inlinedAt: !3784)
!3795 = !DILocation(line: 158, column: 25, scope: !2401, inlinedAt: !3784)
!3796 = !DILocation(line: 158, column: 7, scope: !2401, inlinedAt: !3784)
!3797 = !DILocation(line: 159, column: 18, scope: !2401, inlinedAt: !3784)
!3798 = !DILocation(line: 159, column: 23, scope: !2401, inlinedAt: !3784)
!3799 = !DILocation(line: 159, column: 6, scope: !2401, inlinedAt: !3784)
!3800 = !DILocation(line: 987, column: 10, scope: !3733, inlinedAt: !3777)
!3801 = !DILocation(line: 988, column: 1, scope: !3733, inlinedAt: !3777)
!3802 = !DILocation(line: 993, column: 3, scope: !3768)
!3803 = distinct !DISubprogram(name: "quotearg_colon", scope: !239, file: !239, line: 997, type: !3587, isLocal: false, isDefinition: true, scopeLine: 998, flags: DIFlagPrototyped, isOptimized: true, unit: !227, retainedNodes: !3804)
!3804 = !{!3805}
!3805 = !DILocalVariable(name: "arg", arg: 1, scope: !3803, file: !239, line: 997, type: !90)
!3806 = !DILocation(line: 997, column: 29, scope: !3803)
!3807 = !DILocation(line: 991, column: 28, scope: !3768, inlinedAt: !3808)
!3808 = distinct !DILocation(line: 999, column: 10, scope: !3803)
!3809 = !DILocation(line: 991, column: 38, scope: !3768, inlinedAt: !3808)
!3810 = !DILocation(line: 982, column: 32, scope: !3733, inlinedAt: !3811)
!3811 = distinct !DILocation(line: 993, column: 10, scope: !3768, inlinedAt: !3808)
!3812 = !DILocation(line: 982, column: 44, scope: !3733, inlinedAt: !3811)
!3813 = !DILocation(line: 982, column: 58, scope: !3733, inlinedAt: !3811)
!3814 = !DILocation(line: 984, column: 3, scope: !3733, inlinedAt: !3811)
!3815 = !DILocation(line: 985, column: 13, scope: !3733, inlinedAt: !3811)
!3816 = !DILocation(line: 984, column: 26, scope: !3733, inlinedAt: !3811)
!3817 = !DILocation(line: 152, column: 43, scope: !2401, inlinedAt: !3818)
!3818 = distinct !DILocation(line: 986, column: 3, scope: !3733, inlinedAt: !3811)
!3819 = !DILocation(line: 152, column: 51, scope: !2401, inlinedAt: !3818)
!3820 = !DILocation(line: 152, column: 58, scope: !2401, inlinedAt: !3818)
!3821 = !DILocation(line: 154, column: 17, scope: !2401, inlinedAt: !3818)
!3822 = !DILocation(line: 156, column: 57, scope: !2401, inlinedAt: !3818)
!3823 = !DILocation(line: 155, column: 17, scope: !2401, inlinedAt: !3818)
!3824 = !DILocation(line: 157, column: 7, scope: !2401, inlinedAt: !3818)
!3825 = !DILocation(line: 158, column: 12, scope: !2401, inlinedAt: !3818)
!3826 = !DILocation(line: 159, column: 6, scope: !2401, inlinedAt: !3818)
!3827 = !DILocation(line: 987, column: 10, scope: !3733, inlinedAt: !3811)
!3828 = !DILocation(line: 988, column: 1, scope: !3733, inlinedAt: !3811)
!3829 = !DILocation(line: 999, column: 3, scope: !3803)
!3830 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !239, file: !239, line: 1003, type: !3598, isLocal: false, isDefinition: true, scopeLine: 1004, flags: DIFlagPrototyped, isOptimized: true, unit: !227, retainedNodes: !3831)
!3831 = !{!3832, !3833}
!3832 = !DILocalVariable(name: "arg", arg: 1, scope: !3830, file: !239, line: 1003, type: !90)
!3833 = !DILocalVariable(name: "argsize", arg: 2, scope: !3830, file: !239, line: 1003, type: !46)
!3834 = !DILocation(line: 1003, column: 33, scope: !3830)
!3835 = !DILocation(line: 1003, column: 45, scope: !3830)
!3836 = !DILocation(line: 982, column: 32, scope: !3733, inlinedAt: !3837)
!3837 = distinct !DILocation(line: 1005, column: 10, scope: !3830)
!3838 = !DILocation(line: 982, column: 44, scope: !3733, inlinedAt: !3837)
!3839 = !DILocation(line: 982, column: 58, scope: !3733, inlinedAt: !3837)
!3840 = !DILocation(line: 984, column: 3, scope: !3733, inlinedAt: !3837)
!3841 = !DILocation(line: 985, column: 13, scope: !3733, inlinedAt: !3837)
!3842 = !DILocation(line: 984, column: 26, scope: !3733, inlinedAt: !3837)
!3843 = !DILocation(line: 152, column: 43, scope: !2401, inlinedAt: !3844)
!3844 = distinct !DILocation(line: 986, column: 3, scope: !3733, inlinedAt: !3837)
!3845 = !DILocation(line: 152, column: 51, scope: !2401, inlinedAt: !3844)
!3846 = !DILocation(line: 152, column: 58, scope: !2401, inlinedAt: !3844)
!3847 = !DILocation(line: 154, column: 17, scope: !2401, inlinedAt: !3844)
!3848 = !DILocation(line: 156, column: 57, scope: !2401, inlinedAt: !3844)
!3849 = !DILocation(line: 155, column: 17, scope: !2401, inlinedAt: !3844)
!3850 = !DILocation(line: 157, column: 7, scope: !2401, inlinedAt: !3844)
!3851 = !DILocation(line: 158, column: 12, scope: !2401, inlinedAt: !3844)
!3852 = !DILocation(line: 159, column: 6, scope: !2401, inlinedAt: !3844)
!3853 = !DILocation(line: 987, column: 10, scope: !3733, inlinedAt: !3837)
!3854 = !DILocation(line: 988, column: 1, scope: !3733, inlinedAt: !3837)
!3855 = !DILocation(line: 1005, column: 3, scope: !3830)
!3856 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !239, file: !239, line: 1009, type: !3612, isLocal: false, isDefinition: true, scopeLine: 1010, flags: DIFlagPrototyped, isOptimized: true, unit: !227, retainedNodes: !3857)
!3857 = !{!3858, !3859, !3860, !3861}
!3858 = !DILocalVariable(name: "n", arg: 1, scope: !3856, file: !239, line: 1009, type: !55)
!3859 = !DILocalVariable(name: "s", arg: 2, scope: !3856, file: !239, line: 1009, type: !17)
!3860 = !DILocalVariable(name: "arg", arg: 3, scope: !3856, file: !239, line: 1009, type: !90)
!3861 = !DILocalVariable(name: "options", scope: !3856, file: !239, line: 1011, type: !246)
!3862 = !DILocation(line: 195, column: 26, scope: !3625, inlinedAt: !3863)
!3863 = distinct !DILocation(line: 1012, column: 13, scope: !3856)
!3864 = !DILocation(line: 1009, column: 29, scope: !3856)
!3865 = !DILocation(line: 1009, column: 51, scope: !3856)
!3866 = !DILocation(line: 1009, column: 66, scope: !3856)
!3867 = !DILocation(line: 1011, column: 3, scope: !3856)
!3868 = !DILocation(line: 1012, column: 13, scope: !3856)
!3869 = !DILocation(line: 193, column: 48, scope: !3625, inlinedAt: !3863)
!3870 = !{!3871}
!3871 = distinct !{!3871, !3872, !"quoting_options_from_style: argument 0"}
!3872 = distinct !{!3872, !"quoting_options_from_style"}
!3873 = !DILocation(line: 196, column: 13, scope: !3637, inlinedAt: !3863)
!3874 = !DILocation(line: 196, column: 7, scope: !3625, inlinedAt: !3863)
!3875 = !DILocation(line: 197, column: 5, scope: !3637, inlinedAt: !3863)
!3876 = !DILocation(line: 1011, column: 26, scope: !3856)
!3877 = !DILocation(line: 152, column: 43, scope: !2401, inlinedAt: !3878)
!3878 = distinct !DILocation(line: 1013, column: 3, scope: !3856)
!3879 = !DILocation(line: 152, column: 51, scope: !2401, inlinedAt: !3878)
!3880 = !DILocation(line: 152, column: 58, scope: !2401, inlinedAt: !3878)
!3881 = !DILocation(line: 154, column: 17, scope: !2401, inlinedAt: !3878)
!3882 = !DILocation(line: 156, column: 57, scope: !2401, inlinedAt: !3878)
!3883 = !DILocation(line: 155, column: 17, scope: !2401, inlinedAt: !3878)
!3884 = !DILocation(line: 157, column: 7, scope: !2401, inlinedAt: !3878)
!3885 = !DILocation(line: 158, column: 12, scope: !2401, inlinedAt: !3878)
!3886 = !DILocation(line: 159, column: 6, scope: !2401, inlinedAt: !3878)
!3887 = !DILocation(line: 1014, column: 10, scope: !3856)
!3888 = !DILocation(line: 1015, column: 1, scope: !3856)
!3889 = !DILocation(line: 1014, column: 3, scope: !3856)
!3890 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !239, file: !239, line: 1018, type: !3891, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !227, retainedNodes: !3893)
!3891 = !DISubroutineType(types: !3892)
!3892 = !{!41, !55, !90, !90, !90}
!3893 = !{!3894, !3895, !3896, !3897}
!3894 = !DILocalVariable(name: "n", arg: 1, scope: !3890, file: !239, line: 1018, type: !55)
!3895 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3890, file: !239, line: 1018, type: !90)
!3896 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3890, file: !239, line: 1019, type: !90)
!3897 = !DILocalVariable(name: "arg", arg: 4, scope: !3890, file: !239, line: 1019, type: !90)
!3898 = !DILocation(line: 1018, column: 24, scope: !3890)
!3899 = !DILocation(line: 1018, column: 39, scope: !3890)
!3900 = !DILocation(line: 1019, column: 32, scope: !3890)
!3901 = !DILocation(line: 1019, column: 57, scope: !3890)
!3902 = !DILocalVariable(name: "n", arg: 1, scope: !3903, file: !239, line: 1026, type: !55)
!3903 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !239, file: !239, line: 1026, type: !3904, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !227, retainedNodes: !3906)
!3904 = !DISubroutineType(types: !3905)
!3905 = !{!41, !55, !90, !90, !90, !46}
!3906 = !{!3902, !3907, !3908, !3909, !3910, !3911}
!3907 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3903, file: !239, line: 1026, type: !90)
!3908 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3903, file: !239, line: 1027, type: !90)
!3909 = !DILocalVariable(name: "arg", arg: 4, scope: !3903, file: !239, line: 1028, type: !90)
!3910 = !DILocalVariable(name: "argsize", arg: 5, scope: !3903, file: !239, line: 1028, type: !46)
!3911 = !DILocalVariable(name: "o", scope: !3903, file: !239, line: 1030, type: !246)
!3912 = !DILocation(line: 1026, column: 28, scope: !3903, inlinedAt: !3913)
!3913 = distinct !DILocation(line: 1021, column: 10, scope: !3890)
!3914 = !DILocation(line: 1026, column: 43, scope: !3903, inlinedAt: !3913)
!3915 = !DILocation(line: 1027, column: 36, scope: !3903, inlinedAt: !3913)
!3916 = !DILocation(line: 1028, column: 36, scope: !3903, inlinedAt: !3913)
!3917 = !DILocation(line: 1028, column: 48, scope: !3903, inlinedAt: !3913)
!3918 = !DILocation(line: 1030, column: 3, scope: !3903, inlinedAt: !3913)
!3919 = !DILocation(line: 1030, column: 30, scope: !3903, inlinedAt: !3913)
!3920 = !DILocation(line: 1030, column: 26, scope: !3903, inlinedAt: !3913)
!3921 = !DILocation(line: 179, column: 45, scope: !2449, inlinedAt: !3922)
!3922 = distinct !DILocation(line: 1031, column: 3, scope: !3903, inlinedAt: !3913)
!3923 = !DILocation(line: 180, column: 33, scope: !2449, inlinedAt: !3922)
!3924 = !DILocation(line: 180, column: 57, scope: !2449, inlinedAt: !3922)
!3925 = !DILocation(line: 184, column: 6, scope: !2449, inlinedAt: !3922)
!3926 = !DILocation(line: 184, column: 12, scope: !2449, inlinedAt: !3922)
!3927 = !DILocation(line: 185, column: 8, scope: !2465, inlinedAt: !3922)
!3928 = !DILocation(line: 185, column: 23, scope: !2465, inlinedAt: !3922)
!3929 = !DILocation(line: 185, column: 19, scope: !2465, inlinedAt: !3922)
!3930 = !DILocation(line: 186, column: 5, scope: !2465, inlinedAt: !3922)
!3931 = !DILocation(line: 187, column: 6, scope: !2449, inlinedAt: !3922)
!3932 = !DILocation(line: 187, column: 17, scope: !2449, inlinedAt: !3922)
!3933 = !DILocation(line: 188, column: 6, scope: !2449, inlinedAt: !3922)
!3934 = !DILocation(line: 188, column: 18, scope: !2449, inlinedAt: !3922)
!3935 = !DILocation(line: 1032, column: 10, scope: !3903, inlinedAt: !3913)
!3936 = !DILocation(line: 1033, column: 1, scope: !3903, inlinedAt: !3913)
!3937 = !DILocation(line: 1021, column: 3, scope: !3890)
!3938 = !DILocation(line: 1026, column: 28, scope: !3903)
!3939 = !DILocation(line: 1026, column: 43, scope: !3903)
!3940 = !DILocation(line: 1027, column: 36, scope: !3903)
!3941 = !DILocation(line: 1028, column: 36, scope: !3903)
!3942 = !DILocation(line: 1028, column: 48, scope: !3903)
!3943 = !DILocation(line: 1030, column: 3, scope: !3903)
!3944 = !DILocation(line: 1030, column: 30, scope: !3903)
!3945 = !DILocation(line: 1030, column: 26, scope: !3903)
!3946 = !DILocation(line: 179, column: 45, scope: !2449, inlinedAt: !3947)
!3947 = distinct !DILocation(line: 1031, column: 3, scope: !3903)
!3948 = !DILocation(line: 180, column: 33, scope: !2449, inlinedAt: !3947)
!3949 = !DILocation(line: 180, column: 57, scope: !2449, inlinedAt: !3947)
!3950 = !DILocation(line: 184, column: 6, scope: !2449, inlinedAt: !3947)
!3951 = !DILocation(line: 184, column: 12, scope: !2449, inlinedAt: !3947)
!3952 = !DILocation(line: 185, column: 8, scope: !2465, inlinedAt: !3947)
!3953 = !DILocation(line: 185, column: 23, scope: !2465, inlinedAt: !3947)
!3954 = !DILocation(line: 185, column: 19, scope: !2465, inlinedAt: !3947)
!3955 = !DILocation(line: 186, column: 5, scope: !2465, inlinedAt: !3947)
!3956 = !DILocation(line: 187, column: 6, scope: !2449, inlinedAt: !3947)
!3957 = !DILocation(line: 187, column: 17, scope: !2449, inlinedAt: !3947)
!3958 = !DILocation(line: 188, column: 6, scope: !2449, inlinedAt: !3947)
!3959 = !DILocation(line: 188, column: 18, scope: !2449, inlinedAt: !3947)
!3960 = !DILocation(line: 1032, column: 10, scope: !3903)
!3961 = !DILocation(line: 1033, column: 1, scope: !3903)
!3962 = !DILocation(line: 1032, column: 3, scope: !3903)
!3963 = distinct !DISubprogram(name: "quotearg_custom", scope: !239, file: !239, line: 1036, type: !3964, isLocal: false, isDefinition: true, scopeLine: 1038, flags: DIFlagPrototyped, isOptimized: true, unit: !227, retainedNodes: !3966)
!3964 = !DISubroutineType(types: !3965)
!3965 = !{!41, !90, !90, !90}
!3966 = !{!3967, !3968, !3969}
!3967 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3963, file: !239, line: 1036, type: !90)
!3968 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3963, file: !239, line: 1036, type: !90)
!3969 = !DILocalVariable(name: "arg", arg: 3, scope: !3963, file: !239, line: 1037, type: !90)
!3970 = !DILocation(line: 1036, column: 30, scope: !3963)
!3971 = !DILocation(line: 1036, column: 54, scope: !3963)
!3972 = !DILocation(line: 1037, column: 30, scope: !3963)
!3973 = !DILocation(line: 1018, column: 24, scope: !3890, inlinedAt: !3974)
!3974 = distinct !DILocation(line: 1039, column: 10, scope: !3963)
!3975 = !DILocation(line: 1018, column: 39, scope: !3890, inlinedAt: !3974)
!3976 = !DILocation(line: 1019, column: 32, scope: !3890, inlinedAt: !3974)
!3977 = !DILocation(line: 1019, column: 57, scope: !3890, inlinedAt: !3974)
!3978 = !DILocation(line: 1026, column: 28, scope: !3903, inlinedAt: !3979)
!3979 = distinct !DILocation(line: 1021, column: 10, scope: !3890, inlinedAt: !3974)
!3980 = !DILocation(line: 1026, column: 43, scope: !3903, inlinedAt: !3979)
!3981 = !DILocation(line: 1027, column: 36, scope: !3903, inlinedAt: !3979)
!3982 = !DILocation(line: 1028, column: 36, scope: !3903, inlinedAt: !3979)
!3983 = !DILocation(line: 1028, column: 48, scope: !3903, inlinedAt: !3979)
!3984 = !DILocation(line: 1030, column: 3, scope: !3903, inlinedAt: !3979)
!3985 = !DILocation(line: 1030, column: 30, scope: !3903, inlinedAt: !3979)
!3986 = !DILocation(line: 1030, column: 26, scope: !3903, inlinedAt: !3979)
!3987 = !DILocation(line: 179, column: 45, scope: !2449, inlinedAt: !3988)
!3988 = distinct !DILocation(line: 1031, column: 3, scope: !3903, inlinedAt: !3979)
!3989 = !DILocation(line: 180, column: 33, scope: !2449, inlinedAt: !3988)
!3990 = !DILocation(line: 180, column: 57, scope: !2449, inlinedAt: !3988)
!3991 = !DILocation(line: 184, column: 6, scope: !2449, inlinedAt: !3988)
!3992 = !DILocation(line: 184, column: 12, scope: !2449, inlinedAt: !3988)
!3993 = !DILocation(line: 185, column: 8, scope: !2465, inlinedAt: !3988)
!3994 = !DILocation(line: 185, column: 23, scope: !2465, inlinedAt: !3988)
!3995 = !DILocation(line: 185, column: 19, scope: !2465, inlinedAt: !3988)
!3996 = !DILocation(line: 186, column: 5, scope: !2465, inlinedAt: !3988)
!3997 = !DILocation(line: 187, column: 6, scope: !2449, inlinedAt: !3988)
!3998 = !DILocation(line: 187, column: 17, scope: !2449, inlinedAt: !3988)
!3999 = !DILocation(line: 188, column: 6, scope: !2449, inlinedAt: !3988)
!4000 = !DILocation(line: 188, column: 18, scope: !2449, inlinedAt: !3988)
!4001 = !DILocation(line: 1032, column: 10, scope: !3903, inlinedAt: !3979)
!4002 = !DILocation(line: 1033, column: 1, scope: !3903, inlinedAt: !3979)
!4003 = !DILocation(line: 1039, column: 3, scope: !3963)
!4004 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !239, file: !239, line: 1043, type: !4005, isLocal: false, isDefinition: true, scopeLine: 1045, flags: DIFlagPrototyped, isOptimized: true, unit: !227, retainedNodes: !4007)
!4005 = !DISubroutineType(types: !4006)
!4006 = !{!41, !90, !90, !90, !46}
!4007 = !{!4008, !4009, !4010, !4011}
!4008 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4004, file: !239, line: 1043, type: !90)
!4009 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4004, file: !239, line: 1043, type: !90)
!4010 = !DILocalVariable(name: "arg", arg: 3, scope: !4004, file: !239, line: 1044, type: !90)
!4011 = !DILocalVariable(name: "argsize", arg: 4, scope: !4004, file: !239, line: 1044, type: !46)
!4012 = !DILocation(line: 1043, column: 34, scope: !4004)
!4013 = !DILocation(line: 1043, column: 58, scope: !4004)
!4014 = !DILocation(line: 1044, column: 34, scope: !4004)
!4015 = !DILocation(line: 1044, column: 46, scope: !4004)
!4016 = !DILocation(line: 1026, column: 28, scope: !3903, inlinedAt: !4017)
!4017 = distinct !DILocation(line: 1046, column: 10, scope: !4004)
!4018 = !DILocation(line: 1026, column: 43, scope: !3903, inlinedAt: !4017)
!4019 = !DILocation(line: 1027, column: 36, scope: !3903, inlinedAt: !4017)
!4020 = !DILocation(line: 1028, column: 36, scope: !3903, inlinedAt: !4017)
!4021 = !DILocation(line: 1028, column: 48, scope: !3903, inlinedAt: !4017)
!4022 = !DILocation(line: 1030, column: 3, scope: !3903, inlinedAt: !4017)
!4023 = !DILocation(line: 1030, column: 30, scope: !3903, inlinedAt: !4017)
!4024 = !DILocation(line: 1030, column: 26, scope: !3903, inlinedAt: !4017)
!4025 = !DILocation(line: 179, column: 45, scope: !2449, inlinedAt: !4026)
!4026 = distinct !DILocation(line: 1031, column: 3, scope: !3903, inlinedAt: !4017)
!4027 = !DILocation(line: 180, column: 33, scope: !2449, inlinedAt: !4026)
!4028 = !DILocation(line: 180, column: 57, scope: !2449, inlinedAt: !4026)
!4029 = !DILocation(line: 184, column: 6, scope: !2449, inlinedAt: !4026)
!4030 = !DILocation(line: 184, column: 12, scope: !2449, inlinedAt: !4026)
!4031 = !DILocation(line: 185, column: 8, scope: !2465, inlinedAt: !4026)
!4032 = !DILocation(line: 185, column: 23, scope: !2465, inlinedAt: !4026)
!4033 = !DILocation(line: 185, column: 19, scope: !2465, inlinedAt: !4026)
!4034 = !DILocation(line: 186, column: 5, scope: !2465, inlinedAt: !4026)
!4035 = !DILocation(line: 187, column: 6, scope: !2449, inlinedAt: !4026)
!4036 = !DILocation(line: 187, column: 17, scope: !2449, inlinedAt: !4026)
!4037 = !DILocation(line: 188, column: 6, scope: !2449, inlinedAt: !4026)
!4038 = !DILocation(line: 188, column: 18, scope: !2449, inlinedAt: !4026)
!4039 = !DILocation(line: 1032, column: 10, scope: !3903, inlinedAt: !4017)
!4040 = !DILocation(line: 1033, column: 1, scope: !3903, inlinedAt: !4017)
!4041 = !DILocation(line: 1046, column: 3, scope: !4004)
!4042 = distinct !DISubprogram(name: "quote_n_mem", scope: !239, file: !239, line: 1061, type: !4043, isLocal: false, isDefinition: true, scopeLine: 1062, flags: DIFlagPrototyped, isOptimized: true, unit: !227, retainedNodes: !4045)
!4043 = !DISubroutineType(types: !4044)
!4044 = !{!90, !55, !90, !46}
!4045 = !{!4046, !4047, !4048}
!4046 = !DILocalVariable(name: "n", arg: 1, scope: !4042, file: !239, line: 1061, type: !55)
!4047 = !DILocalVariable(name: "arg", arg: 2, scope: !4042, file: !239, line: 1061, type: !90)
!4048 = !DILocalVariable(name: "argsize", arg: 3, scope: !4042, file: !239, line: 1061, type: !46)
!4049 = !DILocation(line: 1061, column: 18, scope: !4042)
!4050 = !DILocation(line: 1061, column: 33, scope: !4042)
!4051 = !DILocation(line: 1061, column: 45, scope: !4042)
!4052 = !DILocation(line: 1063, column: 10, scope: !4042)
!4053 = !DILocation(line: 1063, column: 3, scope: !4042)
!4054 = distinct !DISubprogram(name: "quote_mem", scope: !239, file: !239, line: 1067, type: !4055, isLocal: false, isDefinition: true, scopeLine: 1068, flags: DIFlagPrototyped, isOptimized: true, unit: !227, retainedNodes: !4057)
!4055 = !DISubroutineType(types: !4056)
!4056 = !{!90, !90, !46}
!4057 = !{!4058, !4059}
!4058 = !DILocalVariable(name: "arg", arg: 1, scope: !4054, file: !239, line: 1067, type: !90)
!4059 = !DILocalVariable(name: "argsize", arg: 2, scope: !4054, file: !239, line: 1067, type: !46)
!4060 = !DILocation(line: 1067, column: 24, scope: !4054)
!4061 = !DILocation(line: 1067, column: 36, scope: !4054)
!4062 = !DILocation(line: 1061, column: 18, scope: !4042, inlinedAt: !4063)
!4063 = distinct !DILocation(line: 1069, column: 10, scope: !4054)
!4064 = !DILocation(line: 1061, column: 33, scope: !4042, inlinedAt: !4063)
!4065 = !DILocation(line: 1061, column: 45, scope: !4042, inlinedAt: !4063)
!4066 = !DILocation(line: 1063, column: 10, scope: !4042, inlinedAt: !4063)
!4067 = !DILocation(line: 1069, column: 3, scope: !4054)
!4068 = distinct !DISubprogram(name: "quote_n", scope: !239, file: !239, line: 1073, type: !4069, isLocal: false, isDefinition: true, scopeLine: 1074, flags: DIFlagPrototyped, isOptimized: true, unit: !227, retainedNodes: !4071)
!4069 = !DISubroutineType(types: !4070)
!4070 = !{!90, !55, !90}
!4071 = !{!4072, !4073}
!4072 = !DILocalVariable(name: "n", arg: 1, scope: !4068, file: !239, line: 1073, type: !55)
!4073 = !DILocalVariable(name: "arg", arg: 2, scope: !4068, file: !239, line: 1073, type: !90)
!4074 = !DILocation(line: 1073, column: 14, scope: !4068)
!4075 = !DILocation(line: 1073, column: 29, scope: !4068)
!4076 = !DILocation(line: 1061, column: 18, scope: !4042, inlinedAt: !4077)
!4077 = distinct !DILocation(line: 1075, column: 10, scope: !4068)
!4078 = !DILocation(line: 1061, column: 33, scope: !4042, inlinedAt: !4077)
!4079 = !DILocation(line: 1061, column: 45, scope: !4042, inlinedAt: !4077)
!4080 = !DILocation(line: 1063, column: 10, scope: !4042, inlinedAt: !4077)
!4081 = !DILocation(line: 1075, column: 3, scope: !4068)
!4082 = distinct !DISubprogram(name: "quote", scope: !239, file: !239, line: 1079, type: !4083, isLocal: false, isDefinition: true, scopeLine: 1080, flags: DIFlagPrototyped, isOptimized: true, unit: !227, retainedNodes: !4085)
!4083 = !DISubroutineType(types: !4084)
!4084 = !{!90, !90}
!4085 = !{!4086}
!4086 = !DILocalVariable(name: "arg", arg: 1, scope: !4082, file: !239, line: 1079, type: !90)
!4087 = !DILocation(line: 1079, column: 20, scope: !4082)
!4088 = !DILocation(line: 1073, column: 14, scope: !4068, inlinedAt: !4089)
!4089 = distinct !DILocation(line: 1081, column: 10, scope: !4082)
!4090 = !DILocation(line: 1073, column: 29, scope: !4068, inlinedAt: !4089)
!4091 = !DILocation(line: 1061, column: 18, scope: !4042, inlinedAt: !4092)
!4092 = distinct !DILocation(line: 1075, column: 10, scope: !4068, inlinedAt: !4089)
!4093 = !DILocation(line: 1061, column: 33, scope: !4042, inlinedAt: !4092)
!4094 = !DILocation(line: 1061, column: 45, scope: !4042, inlinedAt: !4092)
!4095 = !DILocation(line: 1063, column: 10, scope: !4042, inlinedAt: !4092)
!4096 = !DILocation(line: 1081, column: 3, scope: !4082)
!4097 = distinct !DISubprogram(name: "version_etc_arn", scope: !301, file: !301, line: 62, type: !4098, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !297, retainedNodes: !4135)
!4098 = !DISubroutineType(types: !4099)
!4099 = !{null, !4100, !90, !90, !90, !4134, !46}
!4100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4101, size: 64)
!4101 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !970, line: 7, baseType: !4102)
!4102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !972, line: 49, size: 1728, elements: !4103)
!4103 = !{!4104, !4105, !4106, !4107, !4108, !4109, !4110, !4111, !4112, !4113, !4114, !4115, !4116, !4117, !4119, !4120, !4121, !4122, !4123, !4124, !4125, !4126, !4127, !4128, !4129, !4130, !4131, !4132, !4133}
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4102, file: !972, line: 51, baseType: !55, size: 32)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4102, file: !972, line: 54, baseType: !41, size: 64, offset: 64)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4102, file: !972, line: 55, baseType: !41, size: 64, offset: 128)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4102, file: !972, line: 56, baseType: !41, size: 64, offset: 192)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4102, file: !972, line: 57, baseType: !41, size: 64, offset: 256)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4102, file: !972, line: 58, baseType: !41, size: 64, offset: 320)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4102, file: !972, line: 59, baseType: !41, size: 64, offset: 384)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4102, file: !972, line: 60, baseType: !41, size: 64, offset: 448)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4102, file: !972, line: 61, baseType: !41, size: 64, offset: 512)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4102, file: !972, line: 64, baseType: !41, size: 64, offset: 576)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4102, file: !972, line: 65, baseType: !41, size: 64, offset: 640)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4102, file: !972, line: 66, baseType: !41, size: 64, offset: 704)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4102, file: !972, line: 68, baseType: !987, size: 64, offset: 768)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4102, file: !972, line: 70, baseType: !4118, size: 64, offset: 832)
!4118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4102, size: 64)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4102, file: !972, line: 72, baseType: !55, size: 32, offset: 896)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4102, file: !972, line: 73, baseType: !55, size: 32, offset: 928)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4102, file: !972, line: 74, baseType: !994, size: 64, offset: 960)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4102, file: !972, line: 77, baseType: !154, size: 16, offset: 1024)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4102, file: !972, line: 78, baseType: !998, size: 8, offset: 1040)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4102, file: !972, line: 79, baseType: !1000, size: 8, offset: 1048)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4102, file: !972, line: 81, baseType: !1004, size: 64, offset: 1088)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4102, file: !972, line: 89, baseType: !1007, size: 64, offset: 1152)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4102, file: !972, line: 91, baseType: !1009, size: 64, offset: 1216)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4102, file: !972, line: 92, baseType: !1012, size: 64, offset: 1280)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4102, file: !972, line: 93, baseType: !4118, size: 64, offset: 1344)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4102, file: !972, line: 94, baseType: !43, size: 64, offset: 1408)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4102, file: !972, line: 95, baseType: !46, size: 64, offset: 1472)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4102, file: !972, line: 96, baseType: !55, size: 32, offset: 1536)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4102, file: !972, line: 98, baseType: !1019, size: 160, offset: 1568)
!4134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!4135 = !{!4136, !4137, !4138, !4139, !4140, !4141}
!4136 = !DILocalVariable(name: "stream", arg: 1, scope: !4097, file: !301, line: 62, type: !4100)
!4137 = !DILocalVariable(name: "command_name", arg: 2, scope: !4097, file: !301, line: 63, type: !90)
!4138 = !DILocalVariable(name: "package", arg: 3, scope: !4097, file: !301, line: 63, type: !90)
!4139 = !DILocalVariable(name: "version", arg: 4, scope: !4097, file: !301, line: 64, type: !90)
!4140 = !DILocalVariable(name: "authors", arg: 5, scope: !4097, file: !301, line: 65, type: !4134)
!4141 = !DILocalVariable(name: "n_authors", arg: 6, scope: !4097, file: !301, line: 65, type: !46)
!4142 = !DILocation(line: 62, column: 24, scope: !4097)
!4143 = !DILocation(line: 63, column: 30, scope: !4097)
!4144 = !DILocation(line: 63, column: 56, scope: !4097)
!4145 = !DILocation(line: 64, column: 30, scope: !4097)
!4146 = !DILocation(line: 65, column: 39, scope: !4097)
!4147 = !DILocation(line: 65, column: 55, scope: !4097)
!4148 = !DILocation(line: 67, column: 7, scope: !4149)
!4149 = distinct !DILexicalBlock(scope: !4097, file: !301, line: 67, column: 7)
!4150 = !DILocation(line: 67, column: 7, scope: !4097)
!4151 = !DILocation(line: 68, column: 5, scope: !4149)
!4152 = !DILocation(line: 70, column: 5, scope: !4149)
!4153 = !DILocation(line: 84, column: 3, scope: !4097)
!4154 = !DILocation(line: 86, column: 3, scope: !4097)
!4155 = !DILocation(line: 95, column: 3, scope: !4097)
!4156 = !DILocation(line: 99, column: 7, scope: !4157)
!4157 = distinct !DILexicalBlock(scope: !4097, file: !301, line: 96, column: 5)
!4158 = !DILocation(line: 102, column: 7, scope: !4157)
!4159 = !DILocation(line: 103, column: 7, scope: !4157)
!4160 = !DILocation(line: 106, column: 7, scope: !4157)
!4161 = !DILocation(line: 107, column: 7, scope: !4157)
!4162 = !DILocation(line: 110, column: 7, scope: !4157)
!4163 = !DILocation(line: 112, column: 7, scope: !4157)
!4164 = !DILocation(line: 117, column: 7, scope: !4157)
!4165 = !DILocation(line: 119, column: 7, scope: !4157)
!4166 = !DILocation(line: 124, column: 7, scope: !4157)
!4167 = !DILocation(line: 126, column: 7, scope: !4157)
!4168 = !DILocation(line: 131, column: 7, scope: !4157)
!4169 = !DILocation(line: 134, column: 7, scope: !4157)
!4170 = !DILocation(line: 139, column: 7, scope: !4157)
!4171 = !DILocation(line: 142, column: 7, scope: !4157)
!4172 = !DILocation(line: 147, column: 7, scope: !4157)
!4173 = !DILocation(line: 151, column: 7, scope: !4157)
!4174 = !DILocation(line: 156, column: 7, scope: !4157)
!4175 = !DILocation(line: 160, column: 7, scope: !4157)
!4176 = !DILocation(line: 167, column: 7, scope: !4157)
!4177 = !DILocation(line: 171, column: 7, scope: !4157)
!4178 = !DILocation(line: 173, column: 1, scope: !4097)
!4179 = distinct !DISubprogram(name: "version_etc_ar", scope: !301, file: !301, line: 180, type: !4180, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !297, retainedNodes: !4182)
!4180 = !DISubroutineType(types: !4181)
!4181 = !{null, !4100, !90, !90, !90, !4134}
!4182 = !{!4183, !4184, !4185, !4186, !4187, !4188}
!4183 = !DILocalVariable(name: "stream", arg: 1, scope: !4179, file: !301, line: 180, type: !4100)
!4184 = !DILocalVariable(name: "command_name", arg: 2, scope: !4179, file: !301, line: 181, type: !90)
!4185 = !DILocalVariable(name: "package", arg: 3, scope: !4179, file: !301, line: 181, type: !90)
!4186 = !DILocalVariable(name: "version", arg: 4, scope: !4179, file: !301, line: 182, type: !90)
!4187 = !DILocalVariable(name: "authors", arg: 5, scope: !4179, file: !301, line: 182, type: !4134)
!4188 = !DILocalVariable(name: "n_authors", scope: !4179, file: !301, line: 184, type: !46)
!4189 = !DILocation(line: 180, column: 23, scope: !4179)
!4190 = !DILocation(line: 181, column: 29, scope: !4179)
!4191 = !DILocation(line: 181, column: 55, scope: !4179)
!4192 = !DILocation(line: 182, column: 29, scope: !4179)
!4193 = !DILocation(line: 182, column: 59, scope: !4179)
!4194 = !DILocation(line: 184, column: 10, scope: !4179)
!4195 = !DILocation(line: 186, column: 8, scope: !4196)
!4196 = distinct !DILexicalBlock(scope: !4179, file: !301, line: 186, column: 3)
!4197 = !DILocation(line: 0, scope: !4198)
!4198 = distinct !DILexicalBlock(scope: !4196, file: !301, line: 186, column: 3)
!4199 = !DILocation(line: 186, column: 23, scope: !4198)
!4200 = !DILocation(line: 186, column: 3, scope: !4196)
!4201 = !DILocation(line: 186, column: 52, scope: !4198)
!4202 = distinct !{!4202, !4200, !4203}
!4203 = !DILocation(line: 187, column: 5, scope: !4196)
!4204 = !DILocation(line: 188, column: 3, scope: !4179)
!4205 = !DILocation(line: 189, column: 1, scope: !4179)
!4206 = distinct !DISubprogram(name: "version_etc_va", scope: !301, file: !301, line: 196, type: !4207, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !297, retainedNodes: !4216)
!4207 = !DISubroutineType(types: !4208)
!4208 = !{null, !4100, !90, !90, !90, !4209}
!4209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4210, size: 64)
!4210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !298, line: 189, size: 192, elements: !4211)
!4211 = !{!4212, !4213, !4214, !4215}
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4210, file: !298, line: 189, baseType: !6, size: 32)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4210, file: !298, line: 189, baseType: !6, size: 32, offset: 32)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4210, file: !298, line: 189, baseType: !43, size: 64, offset: 64)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4210, file: !298, line: 189, baseType: !43, size: 64, offset: 128)
!4216 = !{!4217, !4218, !4219, !4220, !4221, !4222, !4223}
!4217 = !DILocalVariable(name: "stream", arg: 1, scope: !4206, file: !301, line: 196, type: !4100)
!4218 = !DILocalVariable(name: "command_name", arg: 2, scope: !4206, file: !301, line: 197, type: !90)
!4219 = !DILocalVariable(name: "package", arg: 3, scope: !4206, file: !301, line: 197, type: !90)
!4220 = !DILocalVariable(name: "version", arg: 4, scope: !4206, file: !301, line: 198, type: !90)
!4221 = !DILocalVariable(name: "authors", arg: 5, scope: !4206, file: !301, line: 198, type: !4209)
!4222 = !DILocalVariable(name: "n_authors", scope: !4206, file: !301, line: 200, type: !46)
!4223 = !DILocalVariable(name: "authtab", scope: !4206, file: !301, line: 201, type: !4224)
!4224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 640, elements: !242)
!4225 = !DILocation(line: 196, column: 23, scope: !4206)
!4226 = !DILocation(line: 197, column: 29, scope: !4206)
!4227 = !DILocation(line: 197, column: 55, scope: !4206)
!4228 = !DILocation(line: 198, column: 29, scope: !4206)
!4229 = !DILocation(line: 198, column: 46, scope: !4206)
!4230 = !DILocation(line: 201, column: 3, scope: !4206)
!4231 = !DILocation(line: 201, column: 15, scope: !4206)
!4232 = !DILocation(line: 200, column: 10, scope: !4206)
!4233 = !DILocation(line: 205, column: 35, scope: !4234)
!4234 = distinct !DILexicalBlock(scope: !4235, file: !301, line: 203, column: 3)
!4235 = distinct !DILexicalBlock(scope: !4206, file: !301, line: 203, column: 3)
!4236 = !DILocation(line: 205, column: 14, scope: !4234)
!4237 = !DILocation(line: 205, column: 33, scope: !4234)
!4238 = !DILocation(line: 205, column: 67, scope: !4234)
!4239 = !DILocation(line: 203, column: 3, scope: !4235)
!4240 = !DILocation(line: 0, scope: !4234)
!4241 = !DILocation(line: 208, column: 3, scope: !4206)
!4242 = !DILocation(line: 210, column: 1, scope: !4206)
!4243 = distinct !DISubprogram(name: "version_etc", scope: !301, file: !301, line: 227, type: !4244, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !297, retainedNodes: !4246)
!4244 = !DISubroutineType(types: !4245)
!4245 = !{null, !4100, !90, !90, !90, null}
!4246 = !{!4247, !4248, !4249, !4250, !4251}
!4247 = !DILocalVariable(name: "stream", arg: 1, scope: !4243, file: !301, line: 227, type: !4100)
!4248 = !DILocalVariable(name: "command_name", arg: 2, scope: !4243, file: !301, line: 228, type: !90)
!4249 = !DILocalVariable(name: "package", arg: 3, scope: !4243, file: !301, line: 228, type: !90)
!4250 = !DILocalVariable(name: "version", arg: 4, scope: !4243, file: !301, line: 229, type: !90)
!4251 = !DILocalVariable(name: "authors", scope: !4243, file: !301, line: 231, type: !4252)
!4252 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1172, line: 52, baseType: !4253)
!4253 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !4254, line: 48, baseType: !4255)
!4254 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4255 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !298, line: 231, baseType: !4256)
!4256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4210, size: 192, elements: !1001)
!4257 = !DILocation(line: 227, column: 20, scope: !4243)
!4258 = !DILocation(line: 228, column: 26, scope: !4243)
!4259 = !DILocation(line: 228, column: 52, scope: !4243)
!4260 = !DILocation(line: 229, column: 26, scope: !4243)
!4261 = !DILocation(line: 231, column: 3, scope: !4243)
!4262 = !DILocation(line: 231, column: 11, scope: !4243)
!4263 = !DILocation(line: 233, column: 3, scope: !4243)
!4264 = !DILocation(line: 234, column: 3, scope: !4243)
!4265 = !DILocation(line: 235, column: 3, scope: !4243)
!4266 = !DILocation(line: 236, column: 1, scope: !4243)
!4267 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !301, file: !301, line: 239, type: !778, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !297, retainedNodes: !201)
!4268 = !DILocation(line: 245, column: 3, scope: !4267)
!4269 = !DILocation(line: 251, column: 3, scope: !4267)
!4270 = !DILocation(line: 256, column: 3, scope: !4267)
!4271 = !DILocation(line: 258, column: 1, scope: !4267)
!4272 = distinct !DISubprogram(name: "xnmalloc", scope: !141, file: !141, line: 99, type: !4273, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !305, retainedNodes: !4275)
!4273 = !DISubroutineType(types: !4274)
!4274 = !{!43, !46, !46}
!4275 = !{!4276, !4277}
!4276 = !DILocalVariable(name: "n", arg: 1, scope: !4272, file: !141, line: 99, type: !46)
!4277 = !DILocalVariable(name: "s", arg: 2, scope: !4272, file: !141, line: 99, type: !46)
!4278 = !DILocation(line: 99, column: 18, scope: !4272)
!4279 = !DILocation(line: 99, column: 28, scope: !4272)
!4280 = !DILocation(line: 101, column: 7, scope: !4281)
!4281 = distinct !DILexicalBlock(scope: !4272, file: !141, line: 101, column: 7)
!4282 = !DILocation(line: 101, column: 7, scope: !4272)
!4283 = !DILocation(line: 102, column: 5, scope: !4281)
!4284 = !DILocation(line: 103, column: 21, scope: !4272)
!4285 = !DILocalVariable(name: "n", arg: 1, scope: !4286, file: !4287, line: 39, type: !46)
!4286 = distinct !DISubprogram(name: "xmalloc", scope: !4287, file: !4287, line: 39, type: !4288, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !305, retainedNodes: !4290)
!4287 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4288 = !DISubroutineType(types: !4289)
!4289 = !{!43, !46}
!4290 = !{!4285, !4291}
!4291 = !DILocalVariable(name: "p", scope: !4286, file: !4287, line: 41, type: !43)
!4292 = !DILocation(line: 39, column: 17, scope: !4286, inlinedAt: !4293)
!4293 = distinct !DILocation(line: 103, column: 10, scope: !4272)
!4294 = !DILocation(line: 41, column: 13, scope: !4286, inlinedAt: !4293)
!4295 = !DILocation(line: 41, column: 9, scope: !4286, inlinedAt: !4293)
!4296 = !DILocation(line: 42, column: 8, scope: !4297, inlinedAt: !4293)
!4297 = distinct !DILexicalBlock(scope: !4286, file: !4287, line: 42, column: 7)
!4298 = !DILocation(line: 42, column: 15, scope: !4297, inlinedAt: !4293)
!4299 = !DILocation(line: 42, column: 10, scope: !4297, inlinedAt: !4293)
!4300 = !DILocation(line: 43, column: 5, scope: !4297, inlinedAt: !4293)
!4301 = !DILocation(line: 103, column: 3, scope: !4272)
!4302 = !DILocation(line: 39, column: 17, scope: !4286)
!4303 = !DILocation(line: 41, column: 13, scope: !4286)
!4304 = !DILocation(line: 41, column: 9, scope: !4286)
!4305 = !DILocation(line: 42, column: 8, scope: !4297)
!4306 = !DILocation(line: 42, column: 15, scope: !4297)
!4307 = !DILocation(line: 42, column: 10, scope: !4297)
!4308 = !DILocation(line: 43, column: 5, scope: !4297)
!4309 = !DILocation(line: 44, column: 3, scope: !4286)
!4310 = distinct !DISubprogram(name: "xnrealloc", scope: !141, file: !141, line: 112, type: !4311, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: true, unit: !305, retainedNodes: !4313)
!4311 = !DISubroutineType(types: !4312)
!4312 = !{!43, !43, !46, !46}
!4313 = !{!4314, !4315, !4316}
!4314 = !DILocalVariable(name: "p", arg: 1, scope: !4310, file: !141, line: 112, type: !43)
!4315 = !DILocalVariable(name: "n", arg: 2, scope: !4310, file: !141, line: 112, type: !46)
!4316 = !DILocalVariable(name: "s", arg: 3, scope: !4310, file: !141, line: 112, type: !46)
!4317 = !DILocation(line: 112, column: 18, scope: !4310)
!4318 = !DILocation(line: 112, column: 28, scope: !4310)
!4319 = !DILocation(line: 112, column: 38, scope: !4310)
!4320 = !DILocation(line: 114, column: 7, scope: !4321)
!4321 = distinct !DILexicalBlock(scope: !4310, file: !141, line: 114, column: 7)
!4322 = !DILocation(line: 114, column: 7, scope: !4310)
!4323 = !DILocation(line: 115, column: 5, scope: !4321)
!4324 = !DILocation(line: 116, column: 25, scope: !4310)
!4325 = !DILocalVariable(name: "p", arg: 1, scope: !4326, file: !4287, line: 51, type: !43)
!4326 = distinct !DISubprogram(name: "xrealloc", scope: !4287, file: !4287, line: 51, type: !4327, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !305, retainedNodes: !4329)
!4327 = !DISubroutineType(types: !4328)
!4328 = !{!43, !43, !46}
!4329 = !{!4325, !4330}
!4330 = !DILocalVariable(name: "n", arg: 2, scope: !4326, file: !4287, line: 51, type: !46)
!4331 = !DILocation(line: 51, column: 17, scope: !4326, inlinedAt: !4332)
!4332 = distinct !DILocation(line: 116, column: 10, scope: !4310)
!4333 = !DILocation(line: 51, column: 27, scope: !4326, inlinedAt: !4332)
!4334 = !DILocation(line: 53, column: 8, scope: !4335, inlinedAt: !4332)
!4335 = distinct !DILexicalBlock(scope: !4326, file: !4287, line: 53, column: 7)
!4336 = !DILocation(line: 53, column: 13, scope: !4335, inlinedAt: !4332)
!4337 = !DILocation(line: 53, column: 10, scope: !4335, inlinedAt: !4332)
!4338 = !DILocation(line: 57, column: 7, scope: !4339, inlinedAt: !4332)
!4339 = distinct !DILexicalBlock(scope: !4335, file: !4287, line: 54, column: 5)
!4340 = !DILocation(line: 58, column: 7, scope: !4339, inlinedAt: !4332)
!4341 = !DILocation(line: 61, column: 7, scope: !4326, inlinedAt: !4332)
!4342 = !DILocation(line: 62, column: 8, scope: !4343, inlinedAt: !4332)
!4343 = distinct !DILexicalBlock(scope: !4326, file: !4287, line: 62, column: 7)
!4344 = !DILocation(line: 62, column: 13, scope: !4343, inlinedAt: !4332)
!4345 = !DILocation(line: 62, column: 10, scope: !4343, inlinedAt: !4332)
!4346 = !DILocation(line: 63, column: 5, scope: !4343, inlinedAt: !4332)
!4347 = !DILocation(line: 0, scope: !4326, inlinedAt: !4332)
!4348 = !DILocation(line: 116, column: 3, scope: !4310)
!4349 = !DILocation(line: 51, column: 17, scope: !4326)
!4350 = !DILocation(line: 51, column: 27, scope: !4326)
!4351 = !DILocation(line: 53, column: 8, scope: !4335)
!4352 = !DILocation(line: 53, column: 13, scope: !4335)
!4353 = !DILocation(line: 53, column: 10, scope: !4335)
!4354 = !DILocation(line: 57, column: 7, scope: !4339)
!4355 = !DILocation(line: 58, column: 7, scope: !4339)
!4356 = !DILocation(line: 61, column: 7, scope: !4326)
!4357 = !DILocation(line: 62, column: 8, scope: !4343)
!4358 = !DILocation(line: 62, column: 13, scope: !4343)
!4359 = !DILocation(line: 62, column: 10, scope: !4343)
!4360 = !DILocation(line: 63, column: 5, scope: !4343)
!4361 = !DILocation(line: 0, scope: !4326)
!4362 = !DILocation(line: 65, column: 1, scope: !4326)
!4363 = !DILocation(line: 174, column: 19, scope: !309)
!4364 = !DILocation(line: 174, column: 30, scope: !309)
!4365 = !DILocation(line: 174, column: 41, scope: !309)
!4366 = !DILocation(line: 176, column: 14, scope: !309)
!4367 = !DILocation(line: 176, column: 10, scope: !309)
!4368 = !DILocation(line: 178, column: 9, scope: !4369)
!4369 = distinct !DILexicalBlock(scope: !309, file: !141, line: 178, column: 7)
!4370 = !DILocation(line: 178, column: 7, scope: !309)
!4371 = !DILocation(line: 180, column: 13, scope: !4372)
!4372 = distinct !DILexicalBlock(scope: !4373, file: !141, line: 180, column: 11)
!4373 = distinct !DILexicalBlock(scope: !4369, file: !141, line: 179, column: 5)
!4374 = !DILocation(line: 180, column: 11, scope: !4373)
!4375 = !DILocation(line: 188, column: 30, scope: !4376)
!4376 = distinct !DILexicalBlock(scope: !4372, file: !141, line: 181, column: 9)
!4377 = !DILocation(line: 189, column: 16, scope: !4376)
!4378 = !DILocation(line: 189, column: 13, scope: !4376)
!4379 = !DILocation(line: 190, column: 9, scope: !4376)
!4380 = !DILocation(line: 0, scope: !4376)
!4381 = !DILocation(line: 191, column: 11, scope: !4382)
!4382 = distinct !DILexicalBlock(scope: !4373, file: !141, line: 191, column: 11)
!4383 = !DILocation(line: 191, column: 11, scope: !4373)
!4384 = !DILocation(line: 206, column: 7, scope: !309)
!4385 = !DILocation(line: 207, column: 25, scope: !309)
!4386 = !DILocation(line: 51, column: 17, scope: !4326, inlinedAt: !4387)
!4387 = distinct !DILocation(line: 207, column: 10, scope: !309)
!4388 = !DILocation(line: 51, column: 27, scope: !4326, inlinedAt: !4387)
!4389 = !DILocation(line: 53, column: 10, scope: !4335, inlinedAt: !4387)
!4390 = !DILocation(line: 192, column: 9, scope: !4382)
!4391 = !DILocation(line: 200, column: 69, scope: !4392)
!4392 = distinct !DILexicalBlock(scope: !4393, file: !141, line: 200, column: 11)
!4393 = distinct !DILexicalBlock(scope: !4369, file: !141, line: 195, column: 5)
!4394 = !DILocation(line: 201, column: 11, scope: !4392)
!4395 = !DILocation(line: 200, column: 11, scope: !4393)
!4396 = !DILocation(line: 202, column: 9, scope: !4392)
!4397 = !DILocation(line: 203, column: 14, scope: !4393)
!4398 = !DILocation(line: 203, column: 18, scope: !4393)
!4399 = !DILocation(line: 203, column: 9, scope: !4393)
!4400 = !DILocation(line: 53, column: 8, scope: !4335, inlinedAt: !4387)
!4401 = !DILocation(line: 57, column: 7, scope: !4339, inlinedAt: !4387)
!4402 = !DILocation(line: 58, column: 7, scope: !4339, inlinedAt: !4387)
!4403 = !DILocation(line: 61, column: 7, scope: !4326, inlinedAt: !4387)
!4404 = !DILocation(line: 62, column: 8, scope: !4343, inlinedAt: !4387)
!4405 = !DILocation(line: 62, column: 13, scope: !4343, inlinedAt: !4387)
!4406 = !DILocation(line: 62, column: 10, scope: !4343, inlinedAt: !4387)
!4407 = !DILocation(line: 63, column: 5, scope: !4343, inlinedAt: !4387)
!4408 = !DILocation(line: 0, scope: !4326, inlinedAt: !4387)
!4409 = !DILocation(line: 207, column: 3, scope: !309)
!4410 = distinct !DISubprogram(name: "xcharalloc", scope: !141, file: !141, line: 216, type: !3383, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !305, retainedNodes: !4411)
!4411 = !{!4412}
!4412 = !DILocalVariable(name: "n", arg: 1, scope: !4410, file: !141, line: 216, type: !46)
!4413 = !DILocation(line: 216, column: 20, scope: !4410)
!4414 = !DILocation(line: 39, column: 17, scope: !4286, inlinedAt: !4415)
!4415 = distinct !DILocation(line: 218, column: 10, scope: !4410)
!4416 = !DILocation(line: 41, column: 13, scope: !4286, inlinedAt: !4415)
!4417 = !DILocation(line: 41, column: 9, scope: !4286, inlinedAt: !4415)
!4418 = !DILocation(line: 42, column: 8, scope: !4297, inlinedAt: !4415)
!4419 = !DILocation(line: 42, column: 15, scope: !4297, inlinedAt: !4415)
!4420 = !DILocation(line: 42, column: 10, scope: !4297, inlinedAt: !4415)
!4421 = !DILocation(line: 43, column: 5, scope: !4297, inlinedAt: !4415)
!4422 = !DILocation(line: 218, column: 3, scope: !4410)
!4423 = distinct !DISubprogram(name: "x2realloc", scope: !4287, file: !4287, line: 74, type: !4424, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !305, retainedNodes: !4426)
!4424 = !DISubroutineType(types: !4425)
!4425 = !{!43, !43, !145}
!4426 = !{!4427, !4428}
!4427 = !DILocalVariable(name: "p", arg: 1, scope: !4423, file: !4287, line: 74, type: !43)
!4428 = !DILocalVariable(name: "pn", arg: 2, scope: !4423, file: !4287, line: 74, type: !145)
!4429 = !DILocation(line: 74, column: 18, scope: !4423)
!4430 = !DILocation(line: 74, column: 29, scope: !4423)
!4431 = !DILocation(line: 174, column: 19, scope: !309, inlinedAt: !4432)
!4432 = distinct !DILocation(line: 76, column: 10, scope: !4423)
!4433 = !DILocation(line: 174, column: 30, scope: !309, inlinedAt: !4432)
!4434 = !DILocation(line: 174, column: 41, scope: !309, inlinedAt: !4432)
!4435 = !DILocation(line: 176, column: 14, scope: !309, inlinedAt: !4432)
!4436 = !DILocation(line: 176, column: 10, scope: !309, inlinedAt: !4432)
!4437 = !DILocation(line: 178, column: 9, scope: !4369, inlinedAt: !4432)
!4438 = !DILocation(line: 178, column: 7, scope: !309, inlinedAt: !4432)
!4439 = !DILocation(line: 180, column: 13, scope: !4372, inlinedAt: !4432)
!4440 = !DILocation(line: 180, column: 11, scope: !4373, inlinedAt: !4432)
!4441 = !DILocation(line: 191, column: 11, scope: !4382, inlinedAt: !4432)
!4442 = !DILocation(line: 191, column: 11, scope: !4373, inlinedAt: !4432)
!4443 = !DILocation(line: 206, column: 7, scope: !309, inlinedAt: !4432)
!4444 = !DILocation(line: 51, column: 17, scope: !4326, inlinedAt: !4445)
!4445 = distinct !DILocation(line: 207, column: 10, scope: !309, inlinedAt: !4432)
!4446 = !DILocation(line: 51, column: 27, scope: !4326, inlinedAt: !4445)
!4447 = !DILocation(line: 53, column: 10, scope: !4335, inlinedAt: !4445)
!4448 = !DILocation(line: 192, column: 9, scope: !4382, inlinedAt: !4432)
!4449 = !DILocation(line: 201, column: 11, scope: !4392, inlinedAt: !4432)
!4450 = !DILocation(line: 200, column: 11, scope: !4393, inlinedAt: !4432)
!4451 = !DILocation(line: 202, column: 9, scope: !4392, inlinedAt: !4432)
!4452 = !DILocation(line: 203, column: 14, scope: !4393, inlinedAt: !4432)
!4453 = !DILocation(line: 203, column: 18, scope: !4393, inlinedAt: !4432)
!4454 = !DILocation(line: 203, column: 9, scope: !4393, inlinedAt: !4432)
!4455 = !DILocation(line: 53, column: 8, scope: !4335, inlinedAt: !4445)
!4456 = !DILocation(line: 57, column: 7, scope: !4339, inlinedAt: !4445)
!4457 = !DILocation(line: 58, column: 7, scope: !4339, inlinedAt: !4445)
!4458 = !DILocation(line: 61, column: 7, scope: !4326, inlinedAt: !4445)
!4459 = !DILocation(line: 62, column: 8, scope: !4343, inlinedAt: !4445)
!4460 = !DILocation(line: 62, column: 13, scope: !4343, inlinedAt: !4445)
!4461 = !DILocation(line: 62, column: 10, scope: !4343, inlinedAt: !4445)
!4462 = !DILocation(line: 63, column: 5, scope: !4343, inlinedAt: !4445)
!4463 = !DILocation(line: 0, scope: !4326, inlinedAt: !4445)
!4464 = !DILocation(line: 76, column: 3, scope: !4423)
!4465 = distinct !DISubprogram(name: "xzalloc", scope: !4287, file: !4287, line: 84, type: !4288, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !305, retainedNodes: !4466)
!4466 = !{!4467}
!4467 = !DILocalVariable(name: "s", arg: 1, scope: !4465, file: !4287, line: 84, type: !46)
!4468 = !DILocation(line: 84, column: 17, scope: !4465)
!4469 = !DILocation(line: 39, column: 17, scope: !4286, inlinedAt: !4470)
!4470 = distinct !DILocation(line: 86, column: 18, scope: !4465)
!4471 = !DILocation(line: 41, column: 13, scope: !4286, inlinedAt: !4470)
!4472 = !DILocation(line: 41, column: 9, scope: !4286, inlinedAt: !4470)
!4473 = !DILocation(line: 42, column: 8, scope: !4297, inlinedAt: !4470)
!4474 = !DILocation(line: 42, column: 15, scope: !4297, inlinedAt: !4470)
!4475 = !DILocation(line: 42, column: 10, scope: !4297, inlinedAt: !4470)
!4476 = !DILocation(line: 43, column: 5, scope: !4297, inlinedAt: !4470)
!4477 = !DILocation(line: 86, column: 10, scope: !4465)
!4478 = !DILocation(line: 86, column: 3, scope: !4465)
!4479 = distinct !DISubprogram(name: "xcalloc", scope: !4287, file: !4287, line: 93, type: !4273, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !305, retainedNodes: !4480)
!4480 = !{!4481, !4482, !4483}
!4481 = !DILocalVariable(name: "n", arg: 1, scope: !4479, file: !4287, line: 93, type: !46)
!4482 = !DILocalVariable(name: "s", arg: 2, scope: !4479, file: !4287, line: 93, type: !46)
!4483 = !DILocalVariable(name: "p", scope: !4479, file: !4287, line: 95, type: !43)
!4484 = !DILocation(line: 93, column: 17, scope: !4479)
!4485 = !DILocation(line: 93, column: 27, scope: !4479)
!4486 = !DILocation(line: 100, column: 7, scope: !4487)
!4487 = distinct !DILexicalBlock(scope: !4479, file: !4287, line: 100, column: 7)
!4488 = !DILocation(line: 101, column: 7, scope: !4487)
!4489 = !DILocation(line: 101, column: 18, scope: !4487)
!4490 = !DILocation(line: 95, column: 9, scope: !4479)
!4491 = !DILocation(line: 101, column: 16, scope: !4487)
!4492 = !DILocation(line: 100, column: 7, scope: !4479)
!4493 = !DILocation(line: 102, column: 5, scope: !4487)
!4494 = !DILocation(line: 103, column: 3, scope: !4479)
!4495 = distinct !DISubprogram(name: "xmemdup", scope: !4287, file: !4287, line: 111, type: !4496, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !305, retainedNodes: !4498)
!4496 = !DISubroutineType(types: !4497)
!4497 = !{!43, !1844, !46}
!4498 = !{!4499, !4500}
!4499 = !DILocalVariable(name: "p", arg: 1, scope: !4495, file: !4287, line: 111, type: !1844)
!4500 = !DILocalVariable(name: "s", arg: 2, scope: !4495, file: !4287, line: 111, type: !46)
!4501 = !DILocation(line: 111, column: 22, scope: !4495)
!4502 = !DILocation(line: 111, column: 32, scope: !4495)
!4503 = !DILocation(line: 39, column: 17, scope: !4286, inlinedAt: !4504)
!4504 = distinct !DILocation(line: 113, column: 18, scope: !4495)
!4505 = !DILocation(line: 41, column: 13, scope: !4286, inlinedAt: !4504)
!4506 = !DILocation(line: 41, column: 9, scope: !4286, inlinedAt: !4504)
!4507 = !DILocation(line: 42, column: 8, scope: !4297, inlinedAt: !4504)
!4508 = !DILocation(line: 42, column: 15, scope: !4297, inlinedAt: !4504)
!4509 = !DILocation(line: 42, column: 10, scope: !4297, inlinedAt: !4504)
!4510 = !DILocation(line: 43, column: 5, scope: !4297, inlinedAt: !4504)
!4511 = !DILocation(line: 113, column: 10, scope: !4495)
!4512 = !DILocation(line: 113, column: 3, scope: !4495)
!4513 = distinct !DISubprogram(name: "xstrdup", scope: !4287, file: !4287, line: 119, type: !3587, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !305, retainedNodes: !4514)
!4514 = !{!4515}
!4515 = !DILocalVariable(name: "string", arg: 1, scope: !4513, file: !4287, line: 119, type: !90)
!4516 = !DILocation(line: 119, column: 22, scope: !4513)
!4517 = !DILocation(line: 121, column: 27, scope: !4513)
!4518 = !DILocation(line: 121, column: 43, scope: !4513)
!4519 = !DILocation(line: 111, column: 22, scope: !4495, inlinedAt: !4520)
!4520 = distinct !DILocation(line: 121, column: 10, scope: !4513)
!4521 = !DILocation(line: 111, column: 32, scope: !4495, inlinedAt: !4520)
!4522 = !DILocation(line: 39, column: 17, scope: !4286, inlinedAt: !4523)
!4523 = distinct !DILocation(line: 113, column: 18, scope: !4495, inlinedAt: !4520)
!4524 = !DILocation(line: 41, column: 13, scope: !4286, inlinedAt: !4523)
!4525 = !DILocation(line: 41, column: 9, scope: !4286, inlinedAt: !4523)
!4526 = !DILocation(line: 42, column: 8, scope: !4297, inlinedAt: !4523)
!4527 = !DILocation(line: 42, column: 15, scope: !4297, inlinedAt: !4523)
!4528 = !DILocation(line: 42, column: 10, scope: !4297, inlinedAt: !4523)
!4529 = !DILocation(line: 43, column: 5, scope: !4297, inlinedAt: !4523)
!4530 = !DILocation(line: 113, column: 10, scope: !4495, inlinedAt: !4520)
!4531 = !DILocation(line: 121, column: 3, scope: !4513)
!4532 = distinct !DISubprogram(name: "xalloc_die", scope: !4533, file: !4533, line: 32, type: !778, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !316, retainedNodes: !201)
!4533 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4534 = !DILocation(line: 34, column: 10, scope: !4532)
!4535 = !DILocation(line: 34, column: 33, scope: !4532)
!4536 = !DILocation(line: 34, column: 3, scope: !4532)
!4537 = !DILocation(line: 40, column: 3, scope: !4532)
!4538 = distinct !DISubprogram(name: "xstrndup", scope: !4539, file: !4539, line: 30, type: !3598, isLocal: false, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: true, unit: !318, retainedNodes: !4540)
!4539 = !DIFile(filename: "lib/xstrndup.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4540 = !{!4541, !4542, !4543}
!4541 = !DILocalVariable(name: "string", arg: 1, scope: !4538, file: !4539, line: 30, type: !90)
!4542 = !DILocalVariable(name: "n", arg: 2, scope: !4538, file: !4539, line: 30, type: !46)
!4543 = !DILocalVariable(name: "s", scope: !4538, file: !4539, line: 32, type: !41)
!4544 = !DILocation(line: 30, column: 23, scope: !4538)
!4545 = !DILocation(line: 30, column: 38, scope: !4538)
!4546 = !DILocation(line: 32, column: 13, scope: !4538)
!4547 = !DILocation(line: 32, column: 9, scope: !4538)
!4548 = !DILocation(line: 33, column: 9, scope: !4549)
!4549 = distinct !DILexicalBlock(scope: !4538, file: !4539, line: 33, column: 7)
!4550 = !DILocation(line: 33, column: 7, scope: !4538)
!4551 = !DILocation(line: 34, column: 5, scope: !4549)
!4552 = !DILocation(line: 35, column: 3, scope: !4538)
!4553 = distinct !DISubprogram(name: "rpl_calloc", scope: !4554, file: !4554, line: 42, type: !4273, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !320, retainedNodes: !4555)
!4554 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4555 = !{!4556, !4557, !4558, !4559}
!4556 = !DILocalVariable(name: "n", arg: 1, scope: !4553, file: !4554, line: 42, type: !46)
!4557 = !DILocalVariable(name: "s", arg: 2, scope: !4553, file: !4554, line: 42, type: !46)
!4558 = !DILocalVariable(name: "result", scope: !4553, file: !4554, line: 44, type: !43)
!4559 = !DILocalVariable(name: "bytes", scope: !4560, file: !4554, line: 56, type: !46)
!4560 = distinct !DILexicalBlock(scope: !4561, file: !4554, line: 53, column: 5)
!4561 = distinct !DILexicalBlock(scope: !4553, file: !4554, line: 47, column: 7)
!4562 = !DILocation(line: 42, column: 20, scope: !4553)
!4563 = !DILocation(line: 42, column: 30, scope: !4553)
!4564 = !DILocation(line: 47, column: 9, scope: !4561)
!4565 = !DILocation(line: 47, column: 19, scope: !4561)
!4566 = !DILocation(line: 47, column: 14, scope: !4561)
!4567 = !DILocation(line: 56, column: 24, scope: !4560)
!4568 = !DILocation(line: 56, column: 14, scope: !4560)
!4569 = !DILocation(line: 57, column: 17, scope: !4570)
!4570 = distinct !DILexicalBlock(scope: !4560, file: !4554, line: 57, column: 11)
!4571 = !DILocation(line: 57, column: 21, scope: !4570)
!4572 = !DILocation(line: 57, column: 11, scope: !4560)
!4573 = !DILocation(line: 59, column: 11, scope: !4574)
!4574 = distinct !DILexicalBlock(scope: !4570, file: !4554, line: 58, column: 9)
!4575 = !DILocation(line: 59, column: 17, scope: !4574)
!4576 = !DILocation(line: 65, column: 12, scope: !4553)
!4577 = !DILocation(line: 44, column: 9, scope: !4553)
!4578 = !DILocation(line: 72, column: 3, scope: !4553)
!4579 = !DILocation(line: 0, scope: !4574)
!4580 = !DILocation(line: 73, column: 1, scope: !4553)
!4581 = distinct !DISubprogram(name: "rpl_fclose", scope: !4582, file: !4582, line: 58, type: !4583, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !322, retainedNodes: !4619)
!4582 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4583 = !DISubroutineType(types: !4584)
!4584 = !{!55, !4585}
!4585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4586, size: 64)
!4586 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !970, line: 7, baseType: !4587)
!4587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !972, line: 49, size: 1728, elements: !4588)
!4588 = !{!4589, !4590, !4591, !4592, !4593, !4594, !4595, !4596, !4597, !4598, !4599, !4600, !4601, !4602, !4604, !4605, !4606, !4607, !4608, !4609, !4610, !4611, !4612, !4613, !4614, !4615, !4616, !4617, !4618}
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4587, file: !972, line: 51, baseType: !55, size: 32)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4587, file: !972, line: 54, baseType: !41, size: 64, offset: 64)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4587, file: !972, line: 55, baseType: !41, size: 64, offset: 128)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4587, file: !972, line: 56, baseType: !41, size: 64, offset: 192)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4587, file: !972, line: 57, baseType: !41, size: 64, offset: 256)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4587, file: !972, line: 58, baseType: !41, size: 64, offset: 320)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4587, file: !972, line: 59, baseType: !41, size: 64, offset: 384)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4587, file: !972, line: 60, baseType: !41, size: 64, offset: 448)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4587, file: !972, line: 61, baseType: !41, size: 64, offset: 512)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4587, file: !972, line: 64, baseType: !41, size: 64, offset: 576)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4587, file: !972, line: 65, baseType: !41, size: 64, offset: 640)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4587, file: !972, line: 66, baseType: !41, size: 64, offset: 704)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4587, file: !972, line: 68, baseType: !987, size: 64, offset: 768)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4587, file: !972, line: 70, baseType: !4603, size: 64, offset: 832)
!4603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4587, size: 64)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4587, file: !972, line: 72, baseType: !55, size: 32, offset: 896)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4587, file: !972, line: 73, baseType: !55, size: 32, offset: 928)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4587, file: !972, line: 74, baseType: !994, size: 64, offset: 960)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4587, file: !972, line: 77, baseType: !154, size: 16, offset: 1024)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4587, file: !972, line: 78, baseType: !998, size: 8, offset: 1040)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4587, file: !972, line: 79, baseType: !1000, size: 8, offset: 1048)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4587, file: !972, line: 81, baseType: !1004, size: 64, offset: 1088)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4587, file: !972, line: 89, baseType: !1007, size: 64, offset: 1152)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4587, file: !972, line: 91, baseType: !1009, size: 64, offset: 1216)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4587, file: !972, line: 92, baseType: !1012, size: 64, offset: 1280)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4587, file: !972, line: 93, baseType: !4603, size: 64, offset: 1344)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4587, file: !972, line: 94, baseType: !43, size: 64, offset: 1408)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4587, file: !972, line: 95, baseType: !46, size: 64, offset: 1472)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4587, file: !972, line: 96, baseType: !55, size: 32, offset: 1536)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4587, file: !972, line: 98, baseType: !1019, size: 160, offset: 1568)
!4619 = !{!4620, !4621, !4622, !4623}
!4620 = !DILocalVariable(name: "fp", arg: 1, scope: !4581, file: !4582, line: 58, type: !4585)
!4621 = !DILocalVariable(name: "saved_errno", scope: !4581, file: !4582, line: 60, type: !55)
!4622 = !DILocalVariable(name: "fd", scope: !4581, file: !4582, line: 61, type: !55)
!4623 = !DILocalVariable(name: "result", scope: !4581, file: !4582, line: 62, type: !55)
!4624 = !DILocation(line: 58, column: 19, scope: !4581)
!4625 = !DILocation(line: 60, column: 7, scope: !4581)
!4626 = !DILocation(line: 62, column: 7, scope: !4581)
!4627 = !DILocation(line: 65, column: 8, scope: !4581)
!4628 = !DILocation(line: 61, column: 7, scope: !4581)
!4629 = !DILocation(line: 66, column: 10, scope: !4630)
!4630 = distinct !DILexicalBlock(scope: !4581, file: !4582, line: 66, column: 7)
!4631 = !DILocation(line: 66, column: 7, scope: !4581)
!4632 = !DILocation(line: 67, column: 12, scope: !4630)
!4633 = !DILocation(line: 67, column: 5, scope: !4630)
!4634 = !DILocation(line: 72, column: 9, scope: !4635)
!4635 = distinct !DILexicalBlock(scope: !4581, file: !4582, line: 72, column: 7)
!4636 = !DILocation(line: 72, column: 23, scope: !4635)
!4637 = !DILocation(line: 72, column: 33, scope: !4635)
!4638 = !DILocation(line: 72, column: 26, scope: !4635)
!4639 = !DILocation(line: 72, column: 59, scope: !4635)
!4640 = !DILocation(line: 73, column: 7, scope: !4635)
!4641 = !DILocation(line: 73, column: 10, scope: !4635)
!4642 = !DILocation(line: 72, column: 7, scope: !4581)
!4643 = !DILocation(line: 100, column: 12, scope: !4581)
!4644 = !DILocation(line: 105, column: 7, scope: !4581)
!4645 = !DILocation(line: 74, column: 19, scope: !4635)
!4646 = !DILocation(line: 105, column: 19, scope: !4647)
!4647 = distinct !DILexicalBlock(scope: !4581, file: !4582, line: 105, column: 7)
!4648 = !DILocation(line: 107, column: 13, scope: !4649)
!4649 = distinct !DILexicalBlock(scope: !4647, file: !4582, line: 106, column: 5)
!4650 = !DILocation(line: 109, column: 5, scope: !4649)
!4651 = !DILocation(line: 0, scope: !4581)
!4652 = !DILocation(line: 112, column: 1, scope: !4581)
!4653 = distinct !DISubprogram(name: "rpl_fflush", scope: !4654, file: !4654, line: 129, type: !4655, isLocal: false, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, unit: !324, retainedNodes: !4691)
!4654 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4655 = !DISubroutineType(types: !4656)
!4656 = !{!55, !4657}
!4657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4658, size: 64)
!4658 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !970, line: 7, baseType: !4659)
!4659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !972, line: 49, size: 1728, elements: !4660)
!4660 = !{!4661, !4662, !4663, !4664, !4665, !4666, !4667, !4668, !4669, !4670, !4671, !4672, !4673, !4674, !4676, !4677, !4678, !4679, !4680, !4681, !4682, !4683, !4684, !4685, !4686, !4687, !4688, !4689, !4690}
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4659, file: !972, line: 51, baseType: !55, size: 32)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4659, file: !972, line: 54, baseType: !41, size: 64, offset: 64)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4659, file: !972, line: 55, baseType: !41, size: 64, offset: 128)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4659, file: !972, line: 56, baseType: !41, size: 64, offset: 192)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4659, file: !972, line: 57, baseType: !41, size: 64, offset: 256)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4659, file: !972, line: 58, baseType: !41, size: 64, offset: 320)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4659, file: !972, line: 59, baseType: !41, size: 64, offset: 384)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4659, file: !972, line: 60, baseType: !41, size: 64, offset: 448)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4659, file: !972, line: 61, baseType: !41, size: 64, offset: 512)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4659, file: !972, line: 64, baseType: !41, size: 64, offset: 576)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4659, file: !972, line: 65, baseType: !41, size: 64, offset: 640)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4659, file: !972, line: 66, baseType: !41, size: 64, offset: 704)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4659, file: !972, line: 68, baseType: !987, size: 64, offset: 768)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4659, file: !972, line: 70, baseType: !4675, size: 64, offset: 832)
!4675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4659, size: 64)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4659, file: !972, line: 72, baseType: !55, size: 32, offset: 896)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4659, file: !972, line: 73, baseType: !55, size: 32, offset: 928)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4659, file: !972, line: 74, baseType: !994, size: 64, offset: 960)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4659, file: !972, line: 77, baseType: !154, size: 16, offset: 1024)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4659, file: !972, line: 78, baseType: !998, size: 8, offset: 1040)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4659, file: !972, line: 79, baseType: !1000, size: 8, offset: 1048)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4659, file: !972, line: 81, baseType: !1004, size: 64, offset: 1088)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4659, file: !972, line: 89, baseType: !1007, size: 64, offset: 1152)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4659, file: !972, line: 91, baseType: !1009, size: 64, offset: 1216)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4659, file: !972, line: 92, baseType: !1012, size: 64, offset: 1280)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4659, file: !972, line: 93, baseType: !4675, size: 64, offset: 1344)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4659, file: !972, line: 94, baseType: !43, size: 64, offset: 1408)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4659, file: !972, line: 95, baseType: !46, size: 64, offset: 1472)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4659, file: !972, line: 96, baseType: !55, size: 32, offset: 1536)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4659, file: !972, line: 98, baseType: !1019, size: 160, offset: 1568)
!4691 = !{!4692}
!4692 = !DILocalVariable(name: "stream", arg: 1, scope: !4653, file: !4654, line: 129, type: !4657)
!4693 = !DILocation(line: 129, column: 19, scope: !4653)
!4694 = !DILocation(line: 150, column: 14, scope: !4695)
!4695 = distinct !DILexicalBlock(scope: !4653, file: !4654, line: 150, column: 7)
!4696 = !DILocation(line: 150, column: 22, scope: !4695)
!4697 = !DILocation(line: 150, column: 27, scope: !4695)
!4698 = !DILocation(line: 150, column: 7, scope: !4653)
!4699 = !DILocation(line: 151, column: 12, scope: !4695)
!4700 = !DILocation(line: 151, column: 5, scope: !4695)
!4701 = !DILocalVariable(name: "fp", arg: 1, scope: !4702, file: !4654, line: 41, type: !4657)
!4702 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !4654, file: !4654, line: 41, type: !4703, isLocal: true, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !324, retainedNodes: !4705)
!4703 = !DISubroutineType(types: !4704)
!4704 = !{null, !4657}
!4705 = !{!4701}
!4706 = !DILocation(line: 41, column: 48, scope: !4702, inlinedAt: !4707)
!4707 = distinct !DILocation(line: 156, column: 3, scope: !4653)
!4708 = !DILocation(line: 43, column: 11, scope: !4709, inlinedAt: !4707)
!4709 = distinct !DILexicalBlock(scope: !4702, file: !4654, line: 43, column: 7)
!4710 = !DILocation(line: 43, column: 18, scope: !4709, inlinedAt: !4707)
!4711 = !DILocation(line: 43, column: 7, scope: !4702, inlinedAt: !4707)
!4712 = !DILocation(line: 45, column: 5, scope: !4709, inlinedAt: !4707)
!4713 = !DILocation(line: 158, column: 10, scope: !4653)
!4714 = !DILocation(line: 158, column: 3, scope: !4653)
!4715 = !DILocation(line: 0, scope: !4653)
!4716 = !DILocation(line: 232, column: 1, scope: !4653)
!4717 = distinct !DISubprogram(name: "freadptr", scope: !4718, file: !4718, line: 30, type: !4719, isLocal: false, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: true, unit: !326, retainedNodes: !4755)
!4718 = !DIFile(filename: "lib/freadptr.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4719 = !DISubroutineType(types: !4720)
!4720 = !{!90, !4721, !145}
!4721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4722, size: 64)
!4722 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !970, line: 7, baseType: !4723)
!4723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !972, line: 49, size: 1728, elements: !4724)
!4724 = !{!4725, !4726, !4727, !4728, !4729, !4730, !4731, !4732, !4733, !4734, !4735, !4736, !4737, !4738, !4740, !4741, !4742, !4743, !4744, !4745, !4746, !4747, !4748, !4749, !4750, !4751, !4752, !4753, !4754}
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4723, file: !972, line: 51, baseType: !55, size: 32)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4723, file: !972, line: 54, baseType: !41, size: 64, offset: 64)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4723, file: !972, line: 55, baseType: !41, size: 64, offset: 128)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4723, file: !972, line: 56, baseType: !41, size: 64, offset: 192)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4723, file: !972, line: 57, baseType: !41, size: 64, offset: 256)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4723, file: !972, line: 58, baseType: !41, size: 64, offset: 320)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4723, file: !972, line: 59, baseType: !41, size: 64, offset: 384)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4723, file: !972, line: 60, baseType: !41, size: 64, offset: 448)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4723, file: !972, line: 61, baseType: !41, size: 64, offset: 512)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4723, file: !972, line: 64, baseType: !41, size: 64, offset: 576)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4723, file: !972, line: 65, baseType: !41, size: 64, offset: 640)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4723, file: !972, line: 66, baseType: !41, size: 64, offset: 704)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4723, file: !972, line: 68, baseType: !987, size: 64, offset: 768)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4723, file: !972, line: 70, baseType: !4739, size: 64, offset: 832)
!4739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4723, size: 64)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4723, file: !972, line: 72, baseType: !55, size: 32, offset: 896)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4723, file: !972, line: 73, baseType: !55, size: 32, offset: 928)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4723, file: !972, line: 74, baseType: !994, size: 64, offset: 960)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4723, file: !972, line: 77, baseType: !154, size: 16, offset: 1024)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4723, file: !972, line: 78, baseType: !998, size: 8, offset: 1040)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4723, file: !972, line: 79, baseType: !1000, size: 8, offset: 1048)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4723, file: !972, line: 81, baseType: !1004, size: 64, offset: 1088)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4723, file: !972, line: 89, baseType: !1007, size: 64, offset: 1152)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4723, file: !972, line: 91, baseType: !1009, size: 64, offset: 1216)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4723, file: !972, line: 92, baseType: !1012, size: 64, offset: 1280)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4723, file: !972, line: 93, baseType: !4739, size: 64, offset: 1344)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4723, file: !972, line: 94, baseType: !43, size: 64, offset: 1408)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4723, file: !972, line: 95, baseType: !46, size: 64, offset: 1472)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4723, file: !972, line: 96, baseType: !55, size: 32, offset: 1536)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4723, file: !972, line: 98, baseType: !1019, size: 160, offset: 1568)
!4755 = !{!4756, !4757, !4758}
!4756 = !DILocalVariable(name: "fp", arg: 1, scope: !4717, file: !4718, line: 30, type: !4721)
!4757 = !DILocalVariable(name: "sizep", arg: 2, scope: !4717, file: !4718, line: 30, type: !145)
!4758 = !DILocalVariable(name: "size", scope: !4717, file: !4718, line: 32, type: !46)
!4759 = !DILocation(line: 30, column: 17, scope: !4717)
!4760 = !DILocation(line: 30, column: 29, scope: !4717)
!4761 = !DILocation(line: 37, column: 11, scope: !4762)
!4762 = distinct !DILexicalBlock(scope: !4717, file: !4718, line: 37, column: 7)
!4763 = !DILocation(line: 37, column: 31, scope: !4762)
!4764 = !{!1079, !771, i64 32}
!4765 = !DILocation(line: 37, column: 25, scope: !4762)
!4766 = !DILocation(line: 37, column: 7, scope: !4717)
!4767 = !DILocation(line: 39, column: 14, scope: !4717)
!4768 = !DILocation(line: 39, column: 33, scope: !4717)
!4769 = !DILocation(line: 39, column: 27, scope: !4717)
!4770 = !DILocation(line: 32, column: 10, scope: !4717)
!4771 = !DILocation(line: 40, column: 12, scope: !4772)
!4772 = distinct !DILexicalBlock(scope: !4717, file: !4718, line: 40, column: 7)
!4773 = !DILocation(line: 40, column: 7, scope: !4717)
!4774 = !DILocation(line: 42, column: 10, scope: !4717)
!4775 = !DILocation(line: 43, column: 3, scope: !4717)
!4776 = !DILocation(line: 0, scope: !4717)
!4777 = !DILocation(line: 125, column: 1, scope: !4717)
!4778 = distinct !DISubprogram(name: "rpl_fseeko", scope: !4779, file: !4779, line: 28, type: !4780, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !329, retainedNodes: !4816)
!4779 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4780 = !DISubroutineType(types: !4781)
!4781 = !{!55, !4782, !1924, !55}
!4782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4783, size: 64)
!4783 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !970, line: 7, baseType: !4784)
!4784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !972, line: 49, size: 1728, elements: !4785)
!4785 = !{!4786, !4787, !4788, !4789, !4790, !4791, !4792, !4793, !4794, !4795, !4796, !4797, !4798, !4799, !4801, !4802, !4803, !4804, !4805, !4806, !4807, !4808, !4809, !4810, !4811, !4812, !4813, !4814, !4815}
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4784, file: !972, line: 51, baseType: !55, size: 32)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4784, file: !972, line: 54, baseType: !41, size: 64, offset: 64)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4784, file: !972, line: 55, baseType: !41, size: 64, offset: 128)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4784, file: !972, line: 56, baseType: !41, size: 64, offset: 192)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4784, file: !972, line: 57, baseType: !41, size: 64, offset: 256)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4784, file: !972, line: 58, baseType: !41, size: 64, offset: 320)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4784, file: !972, line: 59, baseType: !41, size: 64, offset: 384)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4784, file: !972, line: 60, baseType: !41, size: 64, offset: 448)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4784, file: !972, line: 61, baseType: !41, size: 64, offset: 512)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4784, file: !972, line: 64, baseType: !41, size: 64, offset: 576)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4784, file: !972, line: 65, baseType: !41, size: 64, offset: 640)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4784, file: !972, line: 66, baseType: !41, size: 64, offset: 704)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4784, file: !972, line: 68, baseType: !987, size: 64, offset: 768)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4784, file: !972, line: 70, baseType: !4800, size: 64, offset: 832)
!4800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4784, size: 64)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4784, file: !972, line: 72, baseType: !55, size: 32, offset: 896)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4784, file: !972, line: 73, baseType: !55, size: 32, offset: 928)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4784, file: !972, line: 74, baseType: !994, size: 64, offset: 960)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4784, file: !972, line: 77, baseType: !154, size: 16, offset: 1024)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4784, file: !972, line: 78, baseType: !998, size: 8, offset: 1040)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4784, file: !972, line: 79, baseType: !1000, size: 8, offset: 1048)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4784, file: !972, line: 81, baseType: !1004, size: 64, offset: 1088)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4784, file: !972, line: 89, baseType: !1007, size: 64, offset: 1152)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4784, file: !972, line: 91, baseType: !1009, size: 64, offset: 1216)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4784, file: !972, line: 92, baseType: !1012, size: 64, offset: 1280)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4784, file: !972, line: 93, baseType: !4800, size: 64, offset: 1344)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4784, file: !972, line: 94, baseType: !43, size: 64, offset: 1408)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4784, file: !972, line: 95, baseType: !46, size: 64, offset: 1472)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4784, file: !972, line: 96, baseType: !55, size: 32, offset: 1536)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4784, file: !972, line: 98, baseType: !1019, size: 160, offset: 1568)
!4816 = !{!4817, !4818, !4819, !4820}
!4817 = !DILocalVariable(name: "fp", arg: 1, scope: !4778, file: !4779, line: 28, type: !4782)
!4818 = !DILocalVariable(name: "offset", arg: 2, scope: !4778, file: !4779, line: 28, type: !1924)
!4819 = !DILocalVariable(name: "whence", arg: 3, scope: !4778, file: !4779, line: 28, type: !55)
!4820 = !DILocalVariable(name: "pos", scope: !4821, file: !4779, line: 117, type: !1924)
!4821 = distinct !DILexicalBlock(scope: !4822, file: !4779, line: 113, column: 5)
!4822 = distinct !DILexicalBlock(scope: !4778, file: !4779, line: 52, column: 7)
!4823 = !DILocation(line: 28, column: 15, scope: !4778)
!4824 = !DILocation(line: 28, column: 25, scope: !4778)
!4825 = !DILocation(line: 28, column: 37, scope: !4778)
!4826 = !DILocation(line: 52, column: 11, scope: !4822)
!4827 = !DILocation(line: 52, column: 31, scope: !4822)
!4828 = !DILocation(line: 52, column: 24, scope: !4822)
!4829 = !DILocation(line: 53, column: 7, scope: !4822)
!4830 = !DILocation(line: 53, column: 14, scope: !4822)
!4831 = !DILocation(line: 53, column: 35, scope: !4822)
!4832 = !DILocation(line: 53, column: 28, scope: !4822)
!4833 = !DILocation(line: 54, column: 7, scope: !4822)
!4834 = !DILocation(line: 54, column: 14, scope: !4822)
!4835 = !{!1079, !771, i64 72}
!4836 = !DILocation(line: 54, column: 28, scope: !4822)
!4837 = !DILocation(line: 52, column: 7, scope: !4778)
!4838 = !DILocation(line: 117, column: 26, scope: !4821)
!4839 = !DILocation(line: 117, column: 19, scope: !4821)
!4840 = !DILocation(line: 117, column: 13, scope: !4821)
!4841 = !DILocation(line: 118, column: 15, scope: !4842)
!4842 = distinct !DILexicalBlock(scope: !4821, file: !4779, line: 118, column: 11)
!4843 = !DILocation(line: 118, column: 11, scope: !4821)
!4844 = !DILocation(line: 129, column: 11, scope: !4821)
!4845 = !DILocation(line: 129, column: 18, scope: !4821)
!4846 = !DILocation(line: 130, column: 11, scope: !4821)
!4847 = !DILocation(line: 130, column: 19, scope: !4821)
!4848 = !{!1079, !882, i64 144}
!4849 = !DILocation(line: 161, column: 7, scope: !4821)
!4850 = !DILocation(line: 163, column: 10, scope: !4778)
!4851 = !DILocation(line: 163, column: 3, scope: !4778)
!4852 = !DILocation(line: 0, scope: !4778)
!4853 = !DILocation(line: 164, column: 1, scope: !4778)
!4854 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !4855, file: !4855, line: 385, type: !4856, isLocal: false, isDefinition: true, scopeLine: 386, flags: DIFlagPrototyped, isOptimized: true, unit: !331, retainedNodes: !4870)
!4855 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4856 = !DISubroutineType(types: !4857)
!4857 = !{!46, !4858, !90, !46, !4859}
!4858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2564, size: 64)
!4859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4860, size: 64)
!4860 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !2548, line: 6, baseType: !4861)
!4861 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !2550, line: 21, baseType: !4862)
!4862 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2550, line: 13, size: 64, elements: !4863)
!4863 = !{!4864, !4865}
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !4862, file: !2550, line: 15, baseType: !55, size: 32)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !4862, file: !2550, line: 20, baseType: !4866, size: 32, offset: 32)
!4866 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4862, file: !2550, line: 16, size: 32, elements: !4867)
!4867 = !{!4868, !4869}
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !4866, file: !2550, line: 18, baseType: !6, size: 32)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !4866, file: !2550, line: 19, baseType: !2559, size: 32)
!4870 = !{!4871, !4872, !4873, !4874, !4875, !4876, !4877}
!4871 = !DILocalVariable(name: "pwc", arg: 1, scope: !4854, file: !4855, line: 385, type: !4858)
!4872 = !DILocalVariable(name: "s", arg: 2, scope: !4854, file: !4855, line: 385, type: !90)
!4873 = !DILocalVariable(name: "n", arg: 3, scope: !4854, file: !4855, line: 385, type: !46)
!4874 = !DILocalVariable(name: "ps", arg: 4, scope: !4854, file: !4855, line: 385, type: !4859)
!4875 = !DILocalVariable(name: "ret", scope: !4854, file: !4855, line: 387, type: !46)
!4876 = !DILocalVariable(name: "wc", scope: !4854, file: !4855, line: 388, type: !2564)
!4877 = !DILocalVariable(name: "uc", scope: !4878, file: !4855, line: 449, type: !45)
!4878 = distinct !DILexicalBlock(scope: !4879, file: !4855, line: 448, column: 5)
!4879 = distinct !DILexicalBlock(scope: !4854, file: !4855, line: 447, column: 7)
!4880 = !DILocation(line: 385, column: 23, scope: !4854)
!4881 = !DILocation(line: 385, column: 40, scope: !4854)
!4882 = !DILocation(line: 385, column: 50, scope: !4854)
!4883 = !DILocation(line: 385, column: 64, scope: !4854)
!4884 = !DILocation(line: 388, column: 3, scope: !4854)
!4885 = !DILocation(line: 404, column: 9, scope: !4886)
!4886 = distinct !DILexicalBlock(scope: !4854, file: !4855, line: 404, column: 7)
!4887 = !DILocation(line: 404, column: 7, scope: !4854)
!4888 = !DILocation(line: 439, column: 9, scope: !4854)
!4889 = !DILocation(line: 387, column: 10, scope: !4854)
!4890 = !DILocation(line: 447, column: 19, scope: !4879)
!4891 = !DILocation(line: 447, column: 31, scope: !4879)
!4892 = !DILocation(line: 447, column: 26, scope: !4879)
!4893 = !DILocation(line: 447, column: 41, scope: !4879)
!4894 = !DILocation(line: 447, column: 7, scope: !4854)
!4895 = !DILocation(line: 449, column: 26, scope: !4878)
!4896 = !DILocation(line: 449, column: 21, scope: !4878)
!4897 = !DILocation(line: 450, column: 14, scope: !4878)
!4898 = !DILocation(line: 450, column: 12, scope: !4878)
!4899 = !DILocation(line: 0, scope: !4878)
!4900 = !DILocation(line: 456, column: 1, scope: !4854)
!4901 = distinct !DISubprogram(name: "close_stream", scope: !4902, file: !4902, line: 56, type: !4903, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !334, retainedNodes: !4939)
!4902 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4903 = !DISubroutineType(types: !4904)
!4904 = !{!55, !4905}
!4905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4906, size: 64)
!4906 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !970, line: 7, baseType: !4907)
!4907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !972, line: 49, size: 1728, elements: !4908)
!4908 = !{!4909, !4910, !4911, !4912, !4913, !4914, !4915, !4916, !4917, !4918, !4919, !4920, !4921, !4922, !4924, !4925, !4926, !4927, !4928, !4929, !4930, !4931, !4932, !4933, !4934, !4935, !4936, !4937, !4938}
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4907, file: !972, line: 51, baseType: !55, size: 32)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4907, file: !972, line: 54, baseType: !41, size: 64, offset: 64)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4907, file: !972, line: 55, baseType: !41, size: 64, offset: 128)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4907, file: !972, line: 56, baseType: !41, size: 64, offset: 192)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4907, file: !972, line: 57, baseType: !41, size: 64, offset: 256)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4907, file: !972, line: 58, baseType: !41, size: 64, offset: 320)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4907, file: !972, line: 59, baseType: !41, size: 64, offset: 384)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4907, file: !972, line: 60, baseType: !41, size: 64, offset: 448)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4907, file: !972, line: 61, baseType: !41, size: 64, offset: 512)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4907, file: !972, line: 64, baseType: !41, size: 64, offset: 576)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4907, file: !972, line: 65, baseType: !41, size: 64, offset: 640)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4907, file: !972, line: 66, baseType: !41, size: 64, offset: 704)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4907, file: !972, line: 68, baseType: !987, size: 64, offset: 768)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4907, file: !972, line: 70, baseType: !4923, size: 64, offset: 832)
!4923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4907, size: 64)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4907, file: !972, line: 72, baseType: !55, size: 32, offset: 896)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4907, file: !972, line: 73, baseType: !55, size: 32, offset: 928)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4907, file: !972, line: 74, baseType: !994, size: 64, offset: 960)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4907, file: !972, line: 77, baseType: !154, size: 16, offset: 1024)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4907, file: !972, line: 78, baseType: !998, size: 8, offset: 1040)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4907, file: !972, line: 79, baseType: !1000, size: 8, offset: 1048)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4907, file: !972, line: 81, baseType: !1004, size: 64, offset: 1088)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4907, file: !972, line: 89, baseType: !1007, size: 64, offset: 1152)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4907, file: !972, line: 91, baseType: !1009, size: 64, offset: 1216)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4907, file: !972, line: 92, baseType: !1012, size: 64, offset: 1280)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4907, file: !972, line: 93, baseType: !4923, size: 64, offset: 1344)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4907, file: !972, line: 94, baseType: !43, size: 64, offset: 1408)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4907, file: !972, line: 95, baseType: !46, size: 64, offset: 1472)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4907, file: !972, line: 96, baseType: !55, size: 32, offset: 1536)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4907, file: !972, line: 98, baseType: !1019, size: 160, offset: 1568)
!4939 = !{!4940, !4941, !4943, !4944}
!4940 = !DILocalVariable(name: "stream", arg: 1, scope: !4901, file: !4902, line: 56, type: !4905)
!4941 = !DILocalVariable(name: "some_pending", scope: !4901, file: !4902, line: 58, type: !4942)
!4942 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !62)
!4943 = !DILocalVariable(name: "prev_fail", scope: !4901, file: !4902, line: 59, type: !4942)
!4944 = !DILocalVariable(name: "fclose_fail", scope: !4901, file: !4902, line: 60, type: !4942)
!4945 = !DILocation(line: 56, column: 21, scope: !4901)
!4946 = !DILocation(line: 58, column: 30, scope: !4901)
!4947 = !DILocalVariable(name: "__stream", arg: 1, scope: !4948, file: !1068, line: 135, type: !4905)
!4948 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1068, file: !1068, line: 135, type: !4903, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !334, retainedNodes: !4949)
!4949 = !{!4947}
!4950 = !DILocation(line: 135, column: 1, scope: !4948, inlinedAt: !4951)
!4951 = distinct !DILocation(line: 59, column: 27, scope: !4901)
!4952 = !DILocation(line: 137, column: 10, scope: !4948, inlinedAt: !4951)
!4953 = !DILocation(line: 59, column: 43, scope: !4901)
!4954 = !DILocation(line: 60, column: 29, scope: !4901)
!4955 = !DILocation(line: 60, column: 45, scope: !4901)
!4956 = !DILocation(line: 70, column: 17, scope: !4957)
!4957 = distinct !DILexicalBlock(scope: !4901, file: !4902, line: 70, column: 7)
!4958 = !DILocation(line: 58, column: 50, scope: !4901)
!4959 = !DILocation(line: 70, column: 33, scope: !4957)
!4960 = !DILocation(line: 70, column: 53, scope: !4957)
!4961 = !DILocation(line: 70, column: 59, scope: !4957)
!4962 = !DILocation(line: 70, column: 7, scope: !4901)
!4963 = !DILocation(line: 72, column: 11, scope: !4964)
!4964 = distinct !DILexicalBlock(scope: !4957, file: !4902, line: 71, column: 5)
!4965 = !DILocation(line: 73, column: 9, scope: !4966)
!4966 = distinct !DILexicalBlock(scope: !4964, file: !4902, line: 72, column: 11)
!4967 = !DILocation(line: 73, column: 15, scope: !4966)
!4968 = !DILocation(line: 0, scope: !4901)
!4969 = !DILocation(line: 78, column: 1, scope: !4901)
!4970 = distinct !DISubprogram(name: "freadseek", scope: !4971, file: !4971, line: 74, type: !4972, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !336, retainedNodes: !5008)
!4971 = !DIFile(filename: "lib/freadseek.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4972 = !DISubroutineType(types: !4973)
!4973 = !{!55, !4974, !46}
!4974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4975, size: 64)
!4975 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !970, line: 7, baseType: !4976)
!4976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !972, line: 49, size: 1728, elements: !4977)
!4977 = !{!4978, !4979, !4980, !4981, !4982, !4983, !4984, !4985, !4986, !4987, !4988, !4989, !4990, !4991, !4993, !4994, !4995, !4996, !4997, !4998, !4999, !5000, !5001, !5002, !5003, !5004, !5005, !5006, !5007}
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4976, file: !972, line: 51, baseType: !55, size: 32)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4976, file: !972, line: 54, baseType: !41, size: 64, offset: 64)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4976, file: !972, line: 55, baseType: !41, size: 64, offset: 128)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4976, file: !972, line: 56, baseType: !41, size: 64, offset: 192)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4976, file: !972, line: 57, baseType: !41, size: 64, offset: 256)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4976, file: !972, line: 58, baseType: !41, size: 64, offset: 320)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4976, file: !972, line: 59, baseType: !41, size: 64, offset: 384)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4976, file: !972, line: 60, baseType: !41, size: 64, offset: 448)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4976, file: !972, line: 61, baseType: !41, size: 64, offset: 512)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4976, file: !972, line: 64, baseType: !41, size: 64, offset: 576)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4976, file: !972, line: 65, baseType: !41, size: 64, offset: 640)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4976, file: !972, line: 66, baseType: !41, size: 64, offset: 704)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4976, file: !972, line: 68, baseType: !987, size: 64, offset: 768)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4976, file: !972, line: 70, baseType: !4992, size: 64, offset: 832)
!4992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4976, size: 64)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4976, file: !972, line: 72, baseType: !55, size: 32, offset: 896)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4976, file: !972, line: 73, baseType: !55, size: 32, offset: 928)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4976, file: !972, line: 74, baseType: !994, size: 64, offset: 960)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4976, file: !972, line: 77, baseType: !154, size: 16, offset: 1024)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4976, file: !972, line: 78, baseType: !998, size: 8, offset: 1040)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4976, file: !972, line: 79, baseType: !1000, size: 8, offset: 1048)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4976, file: !972, line: 81, baseType: !1004, size: 64, offset: 1088)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4976, file: !972, line: 89, baseType: !1007, size: 64, offset: 1152)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4976, file: !972, line: 91, baseType: !1009, size: 64, offset: 1216)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4976, file: !972, line: 92, baseType: !1012, size: 64, offset: 1280)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4976, file: !972, line: 93, baseType: !4992, size: 64, offset: 1344)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4976, file: !972, line: 94, baseType: !43, size: 64, offset: 1408)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4976, file: !972, line: 95, baseType: !46, size: 64, offset: 1472)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4976, file: !972, line: 96, baseType: !55, size: 32, offset: 1536)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4976, file: !972, line: 98, baseType: !1019, size: 160, offset: 1568)
!5008 = !{!5009, !5010, !5011, !5012, !5013, !5015, !5018, !5024}
!5009 = !DILocalVariable(name: "fp", arg: 1, scope: !4970, file: !4971, line: 74, type: !4974)
!5010 = !DILocalVariable(name: "offset", arg: 2, scope: !4970, file: !4971, line: 74, type: !46)
!5011 = !DILocalVariable(name: "total_buffered", scope: !4970, file: !4971, line: 76, type: !46)
!5012 = !DILocalVariable(name: "fd", scope: !4970, file: !4971, line: 77, type: !55)
!5013 = !DILocalVariable(name: "buffered", scope: !5014, file: !4971, line: 89, type: !46)
!5014 = distinct !DILexicalBlock(scope: !4970, file: !4971, line: 88, column: 5)
!5015 = !DILocalVariable(name: "increment", scope: !5016, file: !4971, line: 93, type: !46)
!5016 = distinct !DILexicalBlock(scope: !5017, file: !4971, line: 92, column: 9)
!5017 = distinct !DILexicalBlock(scope: !5014, file: !4971, line: 91, column: 11)
!5018 = !DILocalVariable(name: "buf", scope: !5019, file: !4971, line: 124, type: !5021)
!5019 = distinct !DILexicalBlock(scope: !5020, file: !4971, line: 121, column: 5)
!5020 = distinct !DILexicalBlock(scope: !4970, file: !4971, line: 115, column: 7)
!5021 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 32768, elements: !5022)
!5022 = !{!5023}
!5023 = !DISubrange(count: 4096)
!5024 = !DILocalVariable(name: "count", scope: !5025, file: !4971, line: 128, type: !46)
!5025 = distinct !DILexicalBlock(scope: !5019, file: !4971, line: 127, column: 9)
!5026 = !DILocation(line: 74, column: 18, scope: !4970)
!5027 = !DILocation(line: 74, column: 29, scope: !4970)
!5028 = !DILocation(line: 79, column: 14, scope: !5029)
!5029 = distinct !DILexicalBlock(scope: !4970, file: !4971, line: 79, column: 7)
!5030 = !DILocation(line: 79, column: 7, scope: !4970)
!5031 = !DILocation(line: 84, column: 20, scope: !4970)
!5032 = !DILocation(line: 76, column: 10, scope: !4970)
!5033 = !DILocation(line: 87, column: 3, scope: !4970)
!5034 = !DILocation(line: 84, column: 18, scope: !4970)
!5035 = !DILocation(line: 87, column: 25, scope: !4970)
!5036 = !DILocation(line: 89, column: 7, scope: !5014)
!5037 = !DILocation(line: 89, column: 14, scope: !5014)
!5038 = !DILocation(line: 91, column: 11, scope: !5017)
!5039 = !DILocation(line: 91, column: 36, scope: !5017)
!5040 = !DILocation(line: 91, column: 47, scope: !5017)
!5041 = !DILocation(line: 91, column: 56, scope: !5017)
!5042 = !DILocation(line: 91, column: 44, scope: !5017)
!5043 = !DILocation(line: 93, column: 40, scope: !5016)
!5044 = !DILocation(line: 93, column: 31, scope: !5016)
!5045 = !DILocation(line: 93, column: 18, scope: !5016)
!5046 = !DILocalVariable(name: "fp", arg: 1, scope: !5047, file: !4971, line: 34, type: !4974)
!5047 = distinct !DISubprogram(name: "freadptrinc", scope: !4971, file: !4971, line: 34, type: !5048, isLocal: true, isDefinition: true, scopeLine: 35, flags: DIFlagPrototyped, isOptimized: true, unit: !336, retainedNodes: !5050)
!5048 = !DISubroutineType(types: !5049)
!5049 = !{null, !4974, !46}
!5050 = !{!5046, !5051}
!5051 = !DILocalVariable(name: "increment", arg: 2, scope: !5047, file: !4971, line: 34, type: !46)
!5052 = !DILocation(line: 34, column: 20, scope: !5047, inlinedAt: !5053)
!5053 = distinct !DILocation(line: 95, column: 11, scope: !5016)
!5054 = !DILocation(line: 34, column: 31, scope: !5047, inlinedAt: !5053)
!5055 = !DILocation(line: 41, column: 20, scope: !5047, inlinedAt: !5053)
!5056 = !DILocation(line: 96, column: 18, scope: !5016)
!5057 = !DILocation(line: 97, column: 22, scope: !5058)
!5058 = distinct !DILexicalBlock(scope: !5016, file: !4971, line: 97, column: 15)
!5059 = !DILocation(line: 97, column: 15, scope: !5016)
!5060 = !DILocation(line: 111, column: 5, scope: !4970)
!5061 = !DILocation(line: 99, column: 26, scope: !5016)
!5062 = !DILocation(line: 100, column: 30, scope: !5063)
!5063 = distinct !DILexicalBlock(scope: !5016, file: !4971, line: 100, column: 15)
!5064 = !DILocation(line: 105, column: 11, scope: !5065)
!5065 = distinct !DILexicalBlock(scope: !5014, file: !4971, line: 105, column: 11)
!5066 = !DILocation(line: 105, column: 22, scope: !5065)
!5067 = !DILocation(line: 105, column: 11, scope: !5014)
!5068 = !DILocation(line: 107, column: 13, scope: !5014)
!5069 = !DILocation(line: 108, column: 18, scope: !5070)
!5070 = distinct !DILexicalBlock(scope: !5014, file: !4971, line: 108, column: 11)
!5071 = !DILocation(line: 108, column: 11, scope: !5014)
!5072 = !DILocation(line: 114, column: 8, scope: !4970)
!5073 = !DILocation(line: 77, column: 7, scope: !4970)
!5074 = !DILocation(line: 115, column: 10, scope: !5020)
!5075 = !DILocation(line: 115, column: 15, scope: !5020)
!5076 = !DILocation(line: 115, column: 18, scope: !5020)
!5077 = !DILocation(line: 115, column: 42, scope: !5020)
!5078 = !DILocation(line: 115, column: 7, scope: !4970)
!5079 = !DILocation(line: 118, column: 14, scope: !5080)
!5080 = distinct !DILexicalBlock(scope: !5020, file: !4971, line: 116, column: 5)
!5081 = !DILocation(line: 118, column: 7, scope: !5080)
!5082 = !DILocation(line: 124, column: 7, scope: !5019)
!5083 = !DILocation(line: 124, column: 12, scope: !5019)
!5084 = !DILocation(line: 126, column: 7, scope: !5019)
!5085 = !DILocation(line: 128, column: 27, scope: !5025)
!5086 = !DILocation(line: 128, column: 18, scope: !5025)
!5087 = !DILocation(line: 129, column: 15, scope: !5088)
!5088 = distinct !DILexicalBlock(scope: !5025, file: !4971, line: 129, column: 15)
!5089 = !DILocation(line: 129, column: 41, scope: !5088)
!5090 = !DILocation(line: 129, column: 15, scope: !5025)
!5091 = !DILocation(line: 133, column: 21, scope: !5019)
!5092 = !DILocation(line: 132, column: 9, scope: !5025)
!5093 = distinct !{!5093, !5084, !5094}
!5094 = !DILocation(line: 133, column: 24, scope: !5019)
!5095 = !DILocation(line: 136, column: 4, scope: !5020)
!5096 = !DILocation(line: 140, column: 7, scope: !5097)
!5097 = distinct !DILexicalBlock(scope: !4970, file: !4971, line: 140, column: 7)
!5098 = !DILocation(line: 144, column: 5, scope: !5097)
!5099 = !DILocation(line: 0, scope: !5019)
!5100 = !DILocation(line: 145, column: 1, scope: !4970)
!5101 = distinct !DISubprogram(name: "hard_locale", scope: !5102, file: !5102, line: 38, type: !5103, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !338, retainedNodes: !5105)
!5102 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!5103 = !DISubroutineType(types: !5104)
!5104 = !{!62, !55}
!5105 = !{!5106, !5107, !5108}
!5106 = !DILocalVariable(name: "category", arg: 1, scope: !5101, file: !5102, line: 38, type: !55)
!5107 = !DILocalVariable(name: "hard", scope: !5101, file: !5102, line: 40, type: !62)
!5108 = !DILocalVariable(name: "p", scope: !5101, file: !5102, line: 41, type: !90)
!5109 = !DILocation(line: 38, column: 18, scope: !5101)
!5110 = !DILocation(line: 40, column: 8, scope: !5101)
!5111 = !DILocation(line: 41, column: 19, scope: !5101)
!5112 = !DILocation(line: 41, column: 15, scope: !5101)
!5113 = !DILocation(line: 43, column: 7, scope: !5114)
!5114 = distinct !DILexicalBlock(scope: !5101, file: !5102, line: 43, column: 7)
!5115 = !DILocation(line: 43, column: 7, scope: !5101)
!5116 = !DILocation(line: 47, column: 15, scope: !5117)
!5117 = distinct !DILexicalBlock(scope: !5118, file: !5102, line: 47, column: 15)
!5118 = distinct !DILexicalBlock(scope: !5119, file: !5102, line: 46, column: 9)
!5119 = distinct !DILexicalBlock(scope: !5120, file: !5102, line: 45, column: 11)
!5120 = distinct !DILexicalBlock(scope: !5114, file: !5102, line: 44, column: 5)
!5121 = !DILocation(line: 47, column: 31, scope: !5117)
!5122 = !DILocation(line: 47, column: 36, scope: !5117)
!5123 = !DILocation(line: 47, column: 39, scope: !5117)
!5124 = !DILocation(line: 47, column: 59, scope: !5117)
!5125 = !DILocation(line: 47, column: 15, scope: !5118)
!5126 = !DILocation(line: 48, column: 13, scope: !5117)
!5127 = !DILocation(line: 71, column: 3, scope: !5101)
!5128 = distinct !DISubprogram(name: "locale_charset", scope: !5129, file: !5129, line: 687, type: !5130, isLocal: false, isDefinition: true, scopeLine: 688, flags: DIFlagPrototyped, isOptimized: true, unit: !340, retainedNodes: !5131)
!5129 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!5130 = !DISubroutineType(types: !328)
!5131 = !{!5132}
!5132 = !DILocalVariable(name: "codeset", scope: !5128, file: !5129, line: 689, type: !90)
!5133 = !DILocation(line: 696, column: 13, scope: !5128)
!5134 = !DILocation(line: 689, column: 15, scope: !5128)
!5135 = !DILocation(line: 754, column: 15, scope: !5136)
!5136 = distinct !DILexicalBlock(scope: !5128, file: !5129, line: 754, column: 7)
!5137 = !DILocation(line: 754, column: 7, scope: !5128)
!5138 = !DILocation(line: 907, column: 13, scope: !5139)
!5139 = distinct !DILexicalBlock(scope: !5140, file: !5129, line: 907, column: 13)
!5140 = distinct !DILexicalBlock(scope: !5141, file: !5129, line: 897, column: 7)
!5141 = distinct !DILexicalBlock(scope: !5128, file: !5129, line: 856, column: 3)
!5142 = !DILocation(line: 907, column: 24, scope: !5139)
!5143 = !DILocation(line: 907, column: 13, scope: !5140)
!5144 = !DILocation(line: 995, column: 3, scope: !5128)
!5145 = distinct !DISubprogram(name: "freadahead", scope: !5146, file: !5146, line: 34, type: !5147, isLocal: false, isDefinition: true, scopeLine: 35, flags: DIFlagPrototyped, isOptimized: true, unit: !729, retainedNodes: !5183)
!5146 = !DIFile(filename: "lib/freadahead.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!5147 = !DISubroutineType(types: !5148)
!5148 = !{!46, !5149}
!5149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5150, size: 64)
!5150 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !970, line: 7, baseType: !5151)
!5151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !972, line: 49, size: 1728, elements: !5152)
!5152 = !{!5153, !5154, !5155, !5156, !5157, !5158, !5159, !5160, !5161, !5162, !5163, !5164, !5165, !5166, !5168, !5169, !5170, !5171, !5172, !5173, !5174, !5175, !5176, !5177, !5178, !5179, !5180, !5181, !5182}
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5151, file: !972, line: 51, baseType: !55, size: 32)
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5151, file: !972, line: 54, baseType: !41, size: 64, offset: 64)
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5151, file: !972, line: 55, baseType: !41, size: 64, offset: 128)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5151, file: !972, line: 56, baseType: !41, size: 64, offset: 192)
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5151, file: !972, line: 57, baseType: !41, size: 64, offset: 256)
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5151, file: !972, line: 58, baseType: !41, size: 64, offset: 320)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5151, file: !972, line: 59, baseType: !41, size: 64, offset: 384)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5151, file: !972, line: 60, baseType: !41, size: 64, offset: 448)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5151, file: !972, line: 61, baseType: !41, size: 64, offset: 512)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5151, file: !972, line: 64, baseType: !41, size: 64, offset: 576)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5151, file: !972, line: 65, baseType: !41, size: 64, offset: 640)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5151, file: !972, line: 66, baseType: !41, size: 64, offset: 704)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5151, file: !972, line: 68, baseType: !987, size: 64, offset: 768)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5151, file: !972, line: 70, baseType: !5167, size: 64, offset: 832)
!5167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5151, size: 64)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5151, file: !972, line: 72, baseType: !55, size: 32, offset: 896)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5151, file: !972, line: 73, baseType: !55, size: 32, offset: 928)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5151, file: !972, line: 74, baseType: !994, size: 64, offset: 960)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5151, file: !972, line: 77, baseType: !154, size: 16, offset: 1024)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5151, file: !972, line: 78, baseType: !998, size: 8, offset: 1040)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5151, file: !972, line: 79, baseType: !1000, size: 8, offset: 1048)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5151, file: !972, line: 81, baseType: !1004, size: 64, offset: 1088)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5151, file: !972, line: 89, baseType: !1007, size: 64, offset: 1152)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5151, file: !972, line: 91, baseType: !1009, size: 64, offset: 1216)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5151, file: !972, line: 92, baseType: !1012, size: 64, offset: 1280)
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5151, file: !972, line: 93, baseType: !5167, size: 64, offset: 1344)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5151, file: !972, line: 94, baseType: !43, size: 64, offset: 1408)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5151, file: !972, line: 95, baseType: !46, size: 64, offset: 1472)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5151, file: !972, line: 96, baseType: !55, size: 32, offset: 1536)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5151, file: !972, line: 98, baseType: !1019, size: 160, offset: 1568)
!5183 = !{!5184}
!5184 = !DILocalVariable(name: "fp", arg: 1, scope: !5145, file: !5146, line: 34, type: !5149)
!5185 = !DILocation(line: 34, column: 19, scope: !5145)
!5186 = !DILocation(line: 38, column: 11, scope: !5187)
!5187 = distinct !DILexicalBlock(scope: !5145, file: !5146, line: 38, column: 7)
!5188 = !DILocation(line: 38, column: 31, scope: !5187)
!5189 = !DILocation(line: 38, column: 25, scope: !5187)
!5190 = !DILocation(line: 38, column: 7, scope: !5145)
!5191 = !DILocation(line: 40, column: 15, scope: !5145)
!5192 = !DILocation(line: 40, column: 34, scope: !5145)
!5193 = !DILocation(line: 40, column: 28, scope: !5145)
!5194 = !DILocation(line: 41, column: 17, scope: !5145)
!5195 = !DILocation(line: 41, column: 24, scope: !5145)
!5196 = !DILocation(line: 41, column: 13, scope: !5145)
!5197 = !DILocation(line: 41, column: 46, scope: !5145)
!5198 = !{!1079, !771, i64 88}
!5199 = !DILocation(line: 41, column: 65, scope: !5145)
!5200 = !DILocation(line: 41, column: 59, scope: !5145)
!5201 = !DILocation(line: 41, column: 10, scope: !5145)
!5202 = !DILocation(line: 40, column: 3, scope: !5145)
!5203 = !DILocation(line: 0, scope: !5145)
!5204 = !DILocation(line: 103, column: 1, scope: !5145)
