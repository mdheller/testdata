; ModuleID = 'coreutils-8.30/src/cksum.bc'
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
@.str.1 = private unnamed_addr constant [40 x i8] c"Usage: %s [FILE]...\0A  or:  %s [OPTION]\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"Print CRC checksum and byte counts of each FILE.\0A\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.11 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"cksum\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.21 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.23 = private unnamed_addr constant [70 x i8] c"Report %s translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.24 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.25 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"Q. Frank Xia\00", align 1
@long_options = internal constant [1 x %struct.option] zeroinitializer, align 16, !dbg !0
@have_read_stdin = internal unnamed_addr global i1 false, align 1, !dbg !60
@optind = external local_unnamed_addr global i32, align 4
@.str.10 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.27 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@crctab = internal unnamed_addr constant [256 x i64] [i64 0, i64 79764919, i64 159529838, i64 222504665, i64 319059676, i64 398814059, i64 445009330, i64 507990021, i64 638119352, i64 583659535, i64 797628118, i64 726387553, i64 890018660, i64 835552979, i64 1015980042, i64 944750013, i64 1276238704, i64 1221641927, i64 1167319070, i64 1095957929, i64 1595256236, i64 1540665371, i64 1452775106, i64 1381403509, i64 1780037320, i64 1859660671, i64 1671105958, i64 1733955601, i64 2031960084, i64 2111593891, i64 1889500026, i64 1952343757, i64 2552477408, i64 2632100695, i64 2443283854, i64 2506133561, i64 2334638140, i64 2414271883, i64 2191915858, i64 2254759653, i64 3190512472, i64 3135915759, i64 3081330742, i64 3009969537, i64 2905550212, i64 2850959411, i64 2762807018, i64 2691435357, i64 3560074640, i64 3505614887, i64 3719321342, i64 3648080713, i64 3342211916, i64 3287746299, i64 3467911202, i64 3396681109, i64 4063920168, i64 4143685023, i64 4223187782, i64 4286162673, i64 3779000052, i64 3858754371, i64 3904687514, i64 3967668269, i64 881225847, i64 809987520, i64 1023691545, i64 969234094, i64 662832811, i64 591600412, i64 771767749, i64 717299826, i64 311336399, i64 374308984, i64 453813921, i64 533576470, i64 25881363, i64 88864420, i64 134795389, i64 214552010, i64 2023205639, i64 2086057648, i64 1897238633, i64 1976864222, i64 1804852699, i64 1867694188, i64 1645340341, i64 1724971778, i64 1587496639, i64 1516133128, i64 1461550545, i64 1406951526, i64 1302016099, i64 1230646740, i64 1142491917, i64 1087903418, i64 2896545431, i64 2825181984, i64 2770861561, i64 2716262478, i64 3215044683, i64 3143675388, i64 3055782693, i64 3001194130, i64 2326604591, i64 2389456536, i64 2200899649, i64 2280525302, i64 2578013683, i64 2640855108, i64 2418763421, i64 2498394922, i64 3769900519, i64 3832873040, i64 3912640137, i64 3992402750, i64 4088425275, i64 4151408268, i64 4197601365, i64 4277358050, i64 3334271071, i64 3263032808, i64 3476998961, i64 3422541446, i64 3585640067, i64 3514407732, i64 3694837229, i64 3640369242, i64 1762451694, i64 1842216281, i64 1619975040, i64 1682949687, i64 2047383090, i64 2127137669, i64 1938468188, i64 2001449195, i64 1325665622, i64 1271206113, i64 1183200824, i64 1111960463, i64 1543535498, i64 1489069629, i64 1434599652, i64 1363369299, i64 622672798, i64 568075817, i64 748617968, i64 677256519, i64 907627842, i64 853037301, i64 1067152940, i64 995781531, i64 51762726, i64 131386257, i64 177728840, i64 240578815, i64 269590778, i64 349224269, i64 429104020, i64 491947555, i64 4046411278, i64 4126034873, i64 4172115296, i64 4234965207, i64 3794477266, i64 3874110821, i64 3953728444, i64 4016571915, i64 3609705398, i64 3555108353, i64 3735388376, i64 3664026991, i64 3290680682, i64 3236090077, i64 3449943556, i64 3378572211, i64 3174993278, i64 3120533705, i64 3032266256, i64 2961025959, i64 2923101090, i64 2868635157, i64 2813903052, i64 2742672763, i64 2604032198, i64 2683796849, i64 2461293480, i64 2524268063, i64 2284983834, i64 2364738477, i64 2175806836, i64 2238787779, i64 1569362073, i64 1498123566, i64 1409854455, i64 1355396672, i64 1317987909, i64 1246755826, i64 1192025387, i64 1137557660, i64 2072149281, i64 2135122070, i64 1912620623, i64 1992383480, i64 1753615357, i64 1816598090, i64 1627664531, i64 1707420964, i64 295390185, i64 358241886, i64 404320391, i64 483945776, i64 43990325, i64 106832002, i64 186451547, i64 266083308, i64 932423249, i64 861060070, i64 1041341759, i64 986742920, i64 613929101, i64 542559546, i64 756411363, i64 701822548, i64 3316196985, i64 3244833742, i64 3425377559, i64 3370778784, i64 3601682597, i64 3530312978, i64 3744426955, i64 3689838204, i64 3819031489, i64 3881883254, i64 3928223919, i64 4007849240, i64 4037393693, i64 4100235434, i64 4180117107, i64 4259748804, i64 2310601993, i64 2373574846, i64 2151335527, i64 2231098320, i64 2596047829, i64 2659030626, i64 2470359227, i64 2550115596, i64 2947551409, i64 2876312838, i64 2788305887, i64 2733848168, i64 3165939309, i64 3094707162, i64 3040238851, i64 2985771188], align 16, !dbg !38
@.str.29 = private unnamed_addr constant [18 x i8] c"%s: file too long\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"%u %s %s\0A\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"%u %s\0A\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"-: %s\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0), align 8, !dbg !61
@.str.34 = private unnamed_addr constant [5 x i8] c"8.30\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !67
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !72
@.str.37 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.38 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.39 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !75
@opterr = external local_unnamed_addr global i32, align 4
@.str.48 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@long_options.49 = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1.50, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.51, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option zeroinitializer], align 16, !dbg !82
@.str.1.50 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.2.51 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !98
@.str.56 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.57 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.58 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.60, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.61, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.62, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.63, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.64, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.65, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.66, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.67, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.68, i32 0, i32 0), i8* null], align 16, !dbg !106
@.str.59 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.60 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.61 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.62 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.63 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.64 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.65 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.66 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.67 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.68 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !136
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !143
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !155
@.str.11.69 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.70 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.71 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.72 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.73 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.74 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.75 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !160
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !167
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !157
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !169
@.str.80 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.81 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.82 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.83 = private unnamed_addr constant [204 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.84 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.85 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.86 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.87 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.88 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.89 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.90 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.91 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.92 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.93 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.96 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.97 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.98 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.99 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.100 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.19.101 = private unnamed_addr constant [65 x i8] c"General help using GNU software: <https://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !175
@.str.1.112 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.113 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.128 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.129 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.132 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.133 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32) #0 !dbg !630 {
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
  br label %57, !dbg !661

; <label>:9:                                      ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 5) #10, !dbg !667
  %11 = load i8*, i8** @program_name, align 8, !dbg !667, !tbaa !663
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11, i8* %11) #10, !dbg !667
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 5) #10, !dbg !668
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !668, !tbaa !663
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !668
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #10, !dbg !669
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !669, !tbaa !663
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17), !dbg !669
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 5) #10, !dbg !670
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !670, !tbaa !663
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !670
  %22 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !671
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %22) #10, !dbg !671
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %22, i8* align 16 bitcast ([7 x %struct.infomap]* @emit_ancillary_info.infomap to i8*), i64 112, i1 false) #10, !dbg !654
  %23 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !672
  call void @llvm.dbg.value(metadata %struct.infomap* %23, metadata !643, metadata !DIExpression()) #10, !dbg !673
  br label %24, !dbg !674

; <label>:24:                                     ; preds = %29, %9
  %25 = phi i8* [ %32, %29 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), %9 ]
  %26 = phi %struct.infomap* [ %30, %29 ], [ %23, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %26, metadata !643, metadata !DIExpression()) #10, !dbg !673
  %27 = tail call i32 @strcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* nonnull %25) #14, !dbg !674
  %28 = icmp eq i32 %27, 0, !dbg !674
  br i1 %28, label %34, label %29, !dbg !675

; <label>:29:                                     ; preds = %24
  %30 = getelementptr inbounds %struct.infomap, %struct.infomap* %26, i64 1, !dbg !676
  call void @llvm.dbg.value(metadata %struct.infomap* %30, metadata !643, metadata !DIExpression()) #10, !dbg !673
  %31 = getelementptr inbounds %struct.infomap, %struct.infomap* %30, i64 0, i32 0, !dbg !677
  %32 = load i8*, i8** %31, align 8, !dbg !677, !tbaa !678
  %33 = icmp eq i8* %32, null, !dbg !680
  br i1 %33, label %34, label %24, !dbg !681, !llvm.loop !682

; <label>:34:                                     ; preds = %29, %24
  %35 = phi %struct.infomap* [ %30, %29 ], [ %26, %24 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %35, metadata !643, metadata !DIExpression()) #10, !dbg !673
  call void @llvm.dbg.value(metadata %struct.infomap* %35, metadata !643, metadata !DIExpression()) #10, !dbg !673
  %36 = getelementptr inbounds %struct.infomap, %struct.infomap* %35, i64 0, i32 1, !dbg !685
  %37 = load i8*, i8** %36, align 8, !dbg !685, !tbaa !687
  %38 = icmp eq i8* %37, null, !dbg !688
  %39 = select i1 %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %37, !dbg !689
  call void @llvm.dbg.value(metadata i8* %39, metadata !642, metadata !DIExpression()) #10, !dbg !690
  %40 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i64 0, i64 0), i32 5) #10, !dbg !691
  %41 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21, i64 0, i64 0)) #10, !dbg !691
  %42 = tail call i8* @setlocale(i32 5, i8* null) #10, !dbg !692
  call void @llvm.dbg.value(metadata i8* %42, metadata !650, metadata !DIExpression()) #10, !dbg !693
  %43 = icmp eq i8* %42, null, !dbg !694
  br i1 %43, label %50, label %44, !dbg !696

; <label>:44:                                     ; preds = %34
  %45 = tail call i32 @strncmp(i8* nonnull %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), i64 3) #14, !dbg !697
  %46 = icmp eq i32 %45, 0, !dbg !697
  br i1 %46, label %50, label %47, !dbg !698

; <label>:47:                                     ; preds = %44
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.23, i64 0, i64 0), i32 5) #10, !dbg !699
  %49 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #10, !dbg !699
  br label %50, !dbg !701

; <label>:50:                                     ; preds = %34, %44, %47
  %51 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.24, i64 0, i64 0), i32 5) #10, !dbg !702
  %52 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %51, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #10, !dbg !702
  %53 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.25, i64 0, i64 0), i32 5) #10, !dbg !703
  %54 = icmp eq i8* %39, getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), !dbg !703
  %55 = select i1 %54, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), !dbg !703
  %56 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %53, i8* %39, i8* %55) #10, !dbg !703
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %22) #10, !dbg !704
  br label %57

; <label>:57:                                     ; preds = %50, %4
  tail call void @exit(i32 %0) #15, !dbg !705
  unreachable, !dbg !705
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
define dso_local i32 @main(i32, i8**) local_unnamed_addr #7 !dbg !706 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !711, metadata !DIExpression()), !dbg !715
  call void @llvm.dbg.value(metadata i8** %1, metadata !712, metadata !DIExpression()), !dbg !716
  %3 = load i8*, i8** %1, align 8, !dbg !717, !tbaa !663
  tail call void @set_program_name(i8* %3) #10, !dbg !718
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)) #10, !dbg !719
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !720
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)) #10, !dbg !721
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #10, !dbg !722
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !723, !tbaa !663
  %9 = tail call i32 @setvbuf(%struct._IO_FILE* %8, i8* null, i32 1, i64 0) #10, !dbg !724
  %10 = load i8*, i8** @Version, align 8, !dbg !725, !tbaa !663
  tail call void (i32, i8**, i8*, i8*, i8*, void (i32)*, ...) @parse_long_options(i32 %0, i8** %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* %10, void (i32)* nonnull @usage, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i8* null) #10, !dbg !726
  %11 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), %struct.option* getelementptr inbounds ([1 x %struct.option], [1 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #10, !dbg !727
  %12 = icmp eq i32 %11, -1, !dbg !729
  br i1 %12, label %14, label %13, !dbg !730

; <label>:13:                                     ; preds = %2
  tail call void @usage(i32 1) #16, !dbg !731
  unreachable, !dbg !731

; <label>:14:                                     ; preds = %2
  store i1 false, i1* @have_read_stdin, align 1
  %15 = load i32, i32* @optind, align 4, !dbg !732, !tbaa !734
  %16 = icmp eq i32 %15, %0, !dbg !736
  br i1 %16, label %21, label %17, !dbg !737

; <label>:17:                                     ; preds = %14
  call void @llvm.dbg.value(metadata i8 1, metadata !714, metadata !DIExpression()), !dbg !738
  call void @llvm.dbg.value(metadata i32 %15, metadata !713, metadata !DIExpression()), !dbg !739
  %18 = icmp slt i32 %15, %0, !dbg !740
  br i1 %18, label %19, label %45, !dbg !744

; <label>:19:                                     ; preds = %17
  %20 = sext i32 %15 to i64, !dbg !745
  br label %24, !dbg !745

; <label>:21:                                     ; preds = %14
  %22 = tail call fastcc zeroext i1 @cksum(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i1 zeroext false), !dbg !746
  %23 = zext i1 %22 to i8, !dbg !747
  call void @llvm.dbg.value(metadata i8 %23, metadata !714, metadata !DIExpression()), !dbg !738
  br label %35, !dbg !748

; <label>:24:                                     ; preds = %24, %19
  %25 = phi i64 [ %20, %19 ], [ %32, %24 ]
  %26 = phi i8 [ 1, %19 ], [ %31, %24 ]
  call void @llvm.dbg.value(metadata i8 %26, metadata !714, metadata !DIExpression()), !dbg !738
  call void @llvm.dbg.value(metadata i64 %25, metadata !713, metadata !DIExpression()), !dbg !739
  %27 = getelementptr inbounds i8*, i8** %1, i64 %25, !dbg !745
  %28 = load i8*, i8** %27, align 8, !dbg !745, !tbaa !663
  %29 = tail call fastcc zeroext i1 @cksum(i8* %28, i1 zeroext true), !dbg !749
  %30 = zext i1 %29 to i8, !dbg !749
  %31 = and i8 %26, %30, !dbg !750
  %32 = add nsw i64 %25, 1, !dbg !751
  call void @llvm.dbg.value(metadata i8 %31, metadata !714, metadata !DIExpression()), !dbg !738
  call void @llvm.dbg.value(metadata i32 undef, metadata !713, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !739
  %33 = trunc i64 %32 to i32, !dbg !740
  %34 = icmp eq i32 %33, %0, !dbg !740
  br i1 %34, label %35, label %24, !dbg !744, !llvm.loop !752

; <label>:35:                                     ; preds = %24, %21
  %36 = phi i8 [ %23, %21 ], [ %31, %24 ]
  %37 = load i1, i1* @have_read_stdin, align 1
  call void @llvm.dbg.value(metadata i8 %36, metadata !714, metadata !DIExpression()), !dbg !738
  br i1 %37, label %38, label %45, !dbg !754

; <label>:38:                                     ; preds = %35
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !756, !tbaa !663
  %40 = tail call i32 @rpl_fclose(%struct._IO_FILE* %39) #10, !dbg !757
  %41 = icmp eq i32 %40, -1, !dbg !758
  br i1 %41, label %42, label %45, !dbg !759

; <label>:42:                                     ; preds = %38
  %43 = tail call i32* @__errno_location() #17, !dbg !760
  %44 = load i32, i32* %43, align 4, !dbg !760, !tbaa !734
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0)) #10, !dbg !760
  unreachable, !dbg !760

; <label>:45:                                     ; preds = %17, %38, %35
  %46 = phi i8 [ %36, %38 ], [ %36, %35 ], [ 1, %17 ]
  %47 = and i8 %46, 1, !dbg !761
  %48 = xor i8 %47, 1, !dbg !761
  %49 = zext i8 %48 to i32, !dbg !761
  ret i32 %49, !dbg !762
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @setvbuf(%struct._IO_FILE* nocapture, i8*, i32, i64) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @cksum(i8*, i1 zeroext) unnamed_addr #7 !dbg !763 {
  %3 = alloca [65536 x i8], align 16
  %4 = alloca [21 x i8], align 16
  call void @llvm.dbg.value(metadata i8* %0, metadata !767, metadata !DIExpression()), !dbg !838
  call void @llvm.dbg.value(metadata i1 %1, metadata !768, metadata !DIExpression()), !dbg !839
  %5 = getelementptr inbounds [65536 x i8], [65536 x i8]* %3, i64 0, i64 0, !dbg !840
  call void @llvm.lifetime.start.p0i8(i64 65536, i8* nonnull %5) #10, !dbg !840
  call void @llvm.dbg.declare(metadata [65536 x i8]* %3, metadata !769, metadata !DIExpression()), !dbg !841
  call void @llvm.dbg.value(metadata i64 0, metadata !774, metadata !DIExpression()), !dbg !842
  call void @llvm.dbg.value(metadata i64 0, metadata !775, metadata !DIExpression()), !dbg !843
  %6 = getelementptr inbounds [21 x i8], [21 x i8]* %4, i64 0, i64 0, !dbg !844
  call void @llvm.lifetime.start.p0i8(i64 21, i8* nonnull %6) #10, !dbg !844
  call void @llvm.dbg.declare(metadata [21 x i8]* %4, metadata !830, metadata !DIExpression()), !dbg !845
  %7 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0)) #14, !dbg !846
  %8 = icmp eq i32 %7, 0, !dbg !846
  br i1 %8, label %9, label %11, !dbg !848

; <label>:9:                                      ; preds = %2
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !849, !tbaa !663
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %10, metadata !777, metadata !DIExpression()), !dbg !851
  store i1 true, i1* @have_read_stdin, align 1
  br label %18, !dbg !852

; <label>:11:                                     ; preds = %2
  %12 = tail call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0)), !dbg !853
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %12, metadata !777, metadata !DIExpression()), !dbg !851
  %13 = icmp eq %struct._IO_FILE* %12, null, !dbg !855
  br i1 %13, label %14, label %18, !dbg !857

; <label>:14:                                     ; preds = %11
  %15 = tail call i32* @__errno_location() #17, !dbg !858
  %16 = load i32, i32* %15, align 4, !dbg !858, !tbaa !734
  %17 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #10, !dbg !860
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0), i8* %17) #10, !dbg !861
  br label %143, !dbg !862

; <label>:18:                                     ; preds = %11, %9
  %19 = phi %struct._IO_FILE* [ %10, %9 ], [ %12, %11 ], !dbg !863
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %19, metadata !777, metadata !DIExpression()), !dbg !851
  tail call void @fadvise(%struct._IO_FILE* %19, i32 2) #10, !dbg !864
  %20 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %19, i64 0, i32 0
  %21 = getelementptr inbounds [65536 x i8], [65536 x i8]* %3, i64 0, i64 1
  br label %22, !dbg !865

; <label>:22:                                     ; preds = %81, %18
  %23 = phi i64 [ 0, %18 ], [ %82, %81 ], !dbg !842
  %24 = phi i64 [ 0, %18 ], [ %30, %81 ], !dbg !866
  call void @llvm.dbg.value(metadata i64 %24, metadata !775, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata i64 %23, metadata !774, metadata !DIExpression()), !dbg !842
  %25 = call i64 @fread_unlocked(i8* nonnull %5, i64 1, i64 65536, %struct._IO_FILE* %19), !dbg !867
  call void @llvm.dbg.value(metadata i64 %25, metadata !776, metadata !DIExpression()), !dbg !868
  %26 = icmp eq i64 %25, 0, !dbg !869
  br i1 %26, label %27, label %29, !dbg !865

; <label>:27:                                     ; preds = %22
  call void @llvm.dbg.value(metadata i64 %23, metadata !774, metadata !DIExpression()), !dbg !842
  call void @llvm.dbg.value(metadata i64 %24, metadata !775, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata i64 %23, metadata !774, metadata !DIExpression()), !dbg !842
  call void @llvm.dbg.value(metadata i64 %24, metadata !775, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata i64 %23, metadata !774, metadata !DIExpression()), !dbg !842
  call void @llvm.dbg.value(metadata i64 %24, metadata !775, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata i64 %23, metadata !774, metadata !DIExpression()), !dbg !842
  call void @llvm.dbg.value(metadata i64 %24, metadata !775, metadata !DIExpression()), !dbg !843
  %28 = load i32, i32* %20, align 8, !dbg !870, !tbaa !879
  br label %86, !dbg !865

; <label>:29:                                     ; preds = %22
  call void @llvm.dbg.value(metadata i8* %5, metadata !835, metadata !DIExpression()), !dbg !883
  %30 = add i64 %25, %24, !dbg !884
  %31 = icmp ult i64 %30, %24, !dbg !886
  br i1 %31, label %52, label %32, !dbg !887

; <label>:32:                                     ; preds = %29
  %33 = and i64 %25, 1, !dbg !888
  %34 = icmp eq i64 %33, 0, !dbg !888
  br i1 %34, label %46, label %35, !dbg !888

; <label>:35:                                     ; preds = %32
  call void @llvm.dbg.value(metadata i8* %5, metadata !835, metadata !DIExpression()), !dbg !883
  call void @llvm.dbg.value(metadata i64 %25, metadata !776, metadata !DIExpression()), !dbg !868
  call void @llvm.dbg.value(metadata i64 %23, metadata !774, metadata !DIExpression()), !dbg !842
  %36 = add i64 %25, -1, !dbg !888
  %37 = shl i64 %23, 8, !dbg !889
  %38 = lshr i64 %23, 24, !dbg !890
  %39 = load i8, i8* %5, align 16, !dbg !891, !tbaa !892
  %40 = zext i8 %39 to i64, !dbg !891
  %41 = and i64 %38, 255, !dbg !893
  %42 = xor i64 %41, %40, !dbg !893
  %43 = getelementptr inbounds [256 x i64], [256 x i64]* @crctab, i64 0, i64 %42, !dbg !894
  %44 = load i64, i64* %43, align 8, !dbg !894, !tbaa !895
  %45 = xor i64 %44, %37, !dbg !896
  call void @llvm.dbg.value(metadata i8* %21, metadata !835, metadata !DIExpression()), !dbg !883
  call void @llvm.dbg.value(metadata i64 %36, metadata !776, metadata !DIExpression()), !dbg !868
  call void @llvm.dbg.value(metadata i64 %45, metadata !774, metadata !DIExpression()), !dbg !842
  br label %46, !dbg !897

; <label>:46:                                     ; preds = %35, %32
  %47 = phi i64 [ %45, %35 ], [ undef, %32 ]
  %48 = phi i8* [ %21, %35 ], [ %5, %32 ]
  %49 = phi i64 [ %36, %35 ], [ %25, %32 ]
  %50 = phi i64 [ %45, %35 ], [ %23, %32 ]
  %51 = icmp eq i64 %25, 1, !dbg !888
  br i1 %51, label %81, label %55, !dbg !888

; <label>:52:                                     ; preds = %29
  %53 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i64 0, i64 0), i32 5) #10, !dbg !898
  %54 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #10, !dbg !898
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %53, i8* %54) #10, !dbg !898
  unreachable, !dbg !898

; <label>:55:                                     ; preds = %46, %55
  %56 = phi i8* [ %72, %55 ], [ %48, %46 ]
  %57 = phi i64 [ %69, %55 ], [ %49, %46 ]
  %58 = phi i64 [ %79, %55 ], [ %50, %46 ]
  call void @llvm.dbg.value(metadata i8* %56, metadata !835, metadata !DIExpression()), !dbg !883
  call void @llvm.dbg.value(metadata i64 %57, metadata !776, metadata !DIExpression()), !dbg !868
  call void @llvm.dbg.value(metadata i64 %58, metadata !774, metadata !DIExpression()), !dbg !842
  %59 = shl i64 %58, 8, !dbg !889
  %60 = lshr i64 %58, 24, !dbg !890
  %61 = getelementptr inbounds i8, i8* %56, i64 1, !dbg !899
  %62 = load i8, i8* %56, align 1, !dbg !891, !tbaa !892
  %63 = zext i8 %62 to i64, !dbg !891
  %64 = and i64 %60, 255, !dbg !893
  %65 = xor i64 %64, %63, !dbg !893
  %66 = getelementptr inbounds [256 x i64], [256 x i64]* @crctab, i64 0, i64 %65, !dbg !894
  %67 = load i64, i64* %66, align 8, !dbg !894, !tbaa !895
  %68 = xor i64 %67, %59, !dbg !896
  call void @llvm.dbg.value(metadata i8* %61, metadata !835, metadata !DIExpression()), !dbg !883
  call void @llvm.dbg.value(metadata i64 %57, metadata !776, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !868
  call void @llvm.dbg.value(metadata i64 %68, metadata !774, metadata !DIExpression()), !dbg !842
  call void @llvm.dbg.value(metadata i8* %61, metadata !835, metadata !DIExpression()), !dbg !883
  call void @llvm.dbg.value(metadata i64 %57, metadata !776, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !868
  call void @llvm.dbg.value(metadata i64 %68, metadata !774, metadata !DIExpression()), !dbg !842
  %69 = add i64 %57, -2, !dbg !888
  %70 = shl i64 %68, 8, !dbg !889
  %71 = lshr i64 %68, 24, !dbg !890
  %72 = getelementptr inbounds i8, i8* %56, i64 2, !dbg !899
  %73 = load i8, i8* %61, align 1, !dbg !891, !tbaa !892
  %74 = zext i8 %73 to i64, !dbg !891
  %75 = and i64 %71, 255, !dbg !893
  %76 = xor i64 %75, %74, !dbg !893
  %77 = getelementptr inbounds [256 x i64], [256 x i64]* @crctab, i64 0, i64 %76, !dbg !894
  %78 = load i64, i64* %77, align 8, !dbg !894, !tbaa !895
  %79 = xor i64 %78, %70, !dbg !896
  call void @llvm.dbg.value(metadata i8* %72, metadata !835, metadata !DIExpression()), !dbg !883
  call void @llvm.dbg.value(metadata i64 %69, metadata !776, metadata !DIExpression()), !dbg !868
  call void @llvm.dbg.value(metadata i64 %79, metadata !774, metadata !DIExpression()), !dbg !842
  %80 = icmp eq i64 %69, 0, !dbg !897
  br i1 %80, label %81, label %55, !dbg !897, !llvm.loop !900

; <label>:81:                                     ; preds = %55, %46
  %82 = phi i64 [ %47, %46 ], [ %79, %55 ], !dbg !896
  call void @llvm.dbg.value(metadata i64 %68, metadata !774, metadata !DIExpression()), !dbg !842
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %19, metadata !902, metadata !DIExpression()), !dbg !905
  %83 = load i32, i32* %20, align 8, !dbg !908, !tbaa !879
  %84 = and i32 %83, 16, !dbg !908
  %85 = icmp eq i32 %84, 0, !dbg !909
  br i1 %85, label %22, label %86, !llvm.loop !910

; <label>:86:                                     ; preds = %81, %27
  %87 = phi i32 [ %28, %27 ], [ %83, %81 ], !dbg !870
  %88 = phi i64 [ %23, %27 ], [ %82, %81 ], !dbg !842
  %89 = phi i64 [ %24, %27 ], [ %30, %81 ], !dbg !912
  call void @llvm.dbg.value(metadata i64 %89, metadata !775, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata i64 %88, metadata !774, metadata !DIExpression()), !dbg !842
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %19, metadata !876, metadata !DIExpression()), !dbg !913
  %90 = and i32 %87, 32, !dbg !870
  %91 = icmp eq i32 %90, 0, !dbg !914
  br i1 %91, label %100, label %92, !dbg !915

; <label>:92:                                     ; preds = %86
  %93 = tail call i32* @__errno_location() #17, !dbg !916
  %94 = load i32, i32* %93, align 4, !dbg !916, !tbaa !734
  %95 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #10, !dbg !918
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %94, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0), i8* %95) #10, !dbg !919
  %96 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0)) #14, !dbg !920
  %97 = icmp eq i32 %96, 0, !dbg !920
  br i1 %97, label %143, label %98, !dbg !922

; <label>:98:                                     ; preds = %92
  %99 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %19) #10, !dbg !923
  br label %143, !dbg !923

; <label>:100:                                    ; preds = %86
  %101 = tail call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0)) #14, !dbg !924
  %102 = icmp eq i32 %101, 0, !dbg !924
  br i1 %102, label %110, label %103, !dbg !926

; <label>:103:                                    ; preds = %100
  %104 = tail call i32 @rpl_fclose(%struct._IO_FILE* nonnull %19) #10, !dbg !927
  %105 = icmp eq i32 %104, -1, !dbg !928
  br i1 %105, label %106, label %110, !dbg !929

; <label>:106:                                    ; preds = %103
  %107 = tail call i32* @__errno_location() #17, !dbg !930
  %108 = load i32, i32* %107, align 4, !dbg !930, !tbaa !734
  %109 = tail call i8* @quotearg_n_style_colon(i32 0, i32 3, i8* %0) #10, !dbg !932
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %108, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0), i8* %109) #10, !dbg !933
  br label %143, !dbg !934

; <label>:110:                                    ; preds = %103, %100
  %111 = call i8* @umaxtostr(i64 %89, i8* nonnull %6) #10, !dbg !935
  call void @llvm.dbg.value(metadata i8* %111, metadata !834, metadata !DIExpression()), !dbg !936
  call void @llvm.dbg.value(metadata i64 %89, metadata !775, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata i64 %88, metadata !774, metadata !DIExpression()), !dbg !842
  %112 = icmp eq i64 %89, 0, !dbg !937
  br i1 %112, label %125, label %113, !dbg !937

; <label>:113:                                    ; preds = %110, %113
  %114 = phi i64 [ %123, %113 ], [ %89, %110 ]
  %115 = phi i64 [ %122, %113 ], [ %88, %110 ]
  call void @llvm.dbg.value(metadata i64 %114, metadata !775, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata i64 %115, metadata !774, metadata !DIExpression()), !dbg !842
  %116 = shl i64 %115, 8, !dbg !939
  %117 = lshr i64 %115, 24, !dbg !941
  %118 = xor i64 %117, %114, !dbg !942
  %119 = and i64 %118, 255, !dbg !943
  %120 = getelementptr inbounds [256 x i64], [256 x i64]* @crctab, i64 0, i64 %119, !dbg !944
  %121 = load i64, i64* %120, align 8, !dbg !944, !tbaa !895
  %122 = xor i64 %121, %116, !dbg !945
  %123 = lshr i64 %114, 8, !dbg !946
  call void @llvm.dbg.value(metadata i64 %123, metadata !775, metadata !DIExpression()), !dbg !843
  call void @llvm.dbg.value(metadata i64 %122, metadata !774, metadata !DIExpression()), !dbg !842
  %124 = icmp eq i64 %123, 0, !dbg !937
  br i1 %124, label %125, label %113, !dbg !937, !llvm.loop !947

; <label>:125:                                    ; preds = %113, %110
  %126 = phi i64 [ %88, %110 ], [ %122, %113 ], !dbg !949
  call void @llvm.dbg.value(metadata i64 %126, metadata !774, metadata !DIExpression()), !dbg !842
  call void @llvm.dbg.value(metadata i64 undef, metadata !774, metadata !DIExpression(DW_OP_constu, 4294967295, DW_OP_xor, DW_OP_stack_value)), !dbg !842
  %127 = trunc i64 %126 to i32, !dbg !950
  %128 = xor i32 %127, -1, !dbg !950
  br i1 %1, label %129, label %131, !dbg !952

; <label>:129:                                    ; preds = %125
  %130 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i64 0, i64 0), i32 %128, i8* %111, i8* %0) #10, !dbg !953
  br label %133, !dbg !953

; <label>:131:                                    ; preds = %125
  %132 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i64 0, i64 0), i32 %128, i8* %111) #10, !dbg !954
  br label %133

; <label>:133:                                    ; preds = %131, %129
  %134 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !955, !tbaa !663
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %134, metadata !876, metadata !DIExpression()), !dbg !957
  %135 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %134, i64 0, i32 0, !dbg !959
  %136 = load i32, i32* %135, align 8, !dbg !959, !tbaa !879
  %137 = and i32 %136, 32, !dbg !959
  %138 = icmp eq i32 %137, 0, !dbg !955
  br i1 %138, label %143, label %139, !dbg !960

; <label>:139:                                    ; preds = %133
  %140 = tail call i32* @__errno_location() #17, !dbg !961
  %141 = load i32, i32* %140, align 4, !dbg !961, !tbaa !734
  %142 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i64 0, i64 0), i32 5) #10, !dbg !961
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %141, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i64 0, i64 0), i8* %142) #10, !dbg !961
  unreachable, !dbg !961

; <label>:143:                                    ; preds = %133, %92, %98, %106, %14
  %144 = phi i1 [ false, %106 ], [ false, %14 ], [ false, %98 ], [ false, %92 ], [ true, %133 ], !dbg !962
  call void @llvm.lifetime.end.p0i8(i64 21, i8* nonnull %6) #10, !dbg !963
  call void @llvm.lifetime.end.p0i8(i64 65536, i8* nonnull %5) #10, !dbg !963
  ret i1 %144, !dbg !963
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @fread_unlocked(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_file_name(i8*) local_unnamed_addr #7 !dbg !964 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !966, metadata !DIExpression()), !dbg !967
  store i8* %0, i8** @file_name, align 8, !dbg !968, !tbaa !663
  ret void, !dbg !969
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #7 !dbg !970 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i1 %0, metadata !974, metadata !DIExpression()), !dbg !975
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !976, !tbaa !977
  ret void, !dbg !979
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #7 !dbg !980 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !987, !tbaa !663
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #10, !dbg !988
  %3 = icmp eq i32 %2, 0, !dbg !989
  br i1 %3, label %22, label %4, !dbg !990

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !991, !tbaa !977, !range !992
  %6 = icmp eq i8 %5, 0, !dbg !991
  br i1 %6, label %11, label %7, !dbg !993

; <label>:7:                                      ; preds = %4
  %8 = tail call i32* @__errno_location() #17, !dbg !994
  %9 = load i32, i32* %8, align 4, !dbg !994, !tbaa !734
  %10 = icmp eq i32 %9, 32, !dbg !995
  br i1 %10, label %22, label %11, !dbg !996

; <label>:11:                                     ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i64 0, i64 0), i32 5) #10, !dbg !997
  call void @llvm.dbg.value(metadata i8* %12, metadata !984, metadata !DIExpression()), !dbg !998
  %13 = load i8*, i8** @file_name, align 8, !dbg !999, !tbaa !663
  %14 = icmp eq i8* %13, null, !dbg !999
  %15 = tail call i32* @__errno_location() #17, !dbg !1001
  %16 = load i32, i32* %15, align 4, !dbg !1001, !tbaa !734
  br i1 %14, label %19, label %17, !dbg !1002

; <label>:17:                                     ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #10, !dbg !1003
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.38, i64 0, i64 0), i8* %18, i8* %12) #10, !dbg !1004
  br label %20, !dbg !1004

; <label>:19:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.39, i64 0, i64 0), i8* %12) #10, !dbg !1005
  br label %20

; <label>:20:                                     ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1006, !tbaa !734
  tail call void @_exit(i32 %21) #15, !dbg !1007
  unreachable, !dbg !1007

; <label>:22:                                     ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1008, !tbaa !663
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #10, !dbg !1010
  %25 = icmp eq i32 %24, 0, !dbg !1011
  br i1 %25, label %28, label %26, !dbg !1012

; <label>:26:                                     ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1013, !tbaa !734
  tail call void @_exit(i32 %27) #15, !dbg !1014
  unreachable, !dbg !1014

; <label>:28:                                     ; preds = %22
  ret void, !dbg !1015
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fdadvise(i32, i64, i64, i32) local_unnamed_addr #7 !dbg !1016 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1024, metadata !DIExpression()), !dbg !1030
  call void @llvm.dbg.value(metadata i64 %1, metadata !1025, metadata !DIExpression()), !dbg !1031
  call void @llvm.dbg.value(metadata i64 %2, metadata !1026, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata i32 %3, metadata !1027, metadata !DIExpression()), !dbg !1033
  %5 = tail call i32 @posix_fadvise(i32 %0, i64 %1, i64 %2, i32 %3) #10, !dbg !1034
  call void @llvm.dbg.value(metadata i32 %5, metadata !1028, metadata !DIExpression()), !dbg !1034
  ret void, !dbg !1035
}

; Function Attrs: nounwind
declare i32 @posix_fadvise(i32, i64, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @fadvise(%struct._IO_FILE*, i32) local_unnamed_addr #7 !dbg !1036 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1074, metadata !DIExpression()), !dbg !1076
  call void @llvm.dbg.value(metadata i32 %1, metadata !1075, metadata !DIExpression()), !dbg !1077
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !1078
  br i1 %3, label %7, label %4, !dbg !1080

; <label>:4:                                      ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !1081
  call void @llvm.dbg.value(metadata i32 %5, metadata !1024, metadata !DIExpression()) #10, !dbg !1082
  call void @llvm.dbg.value(metadata i64 0, metadata !1025, metadata !DIExpression()) #10, !dbg !1084
  call void @llvm.dbg.value(metadata i64 0, metadata !1026, metadata !DIExpression()) #10, !dbg !1085
  call void @llvm.dbg.value(metadata i32 %1, metadata !1027, metadata !DIExpression()) #10, !dbg !1086
  %6 = tail call i32 @posix_fadvise(i32 %5, i64 0, i64 0, i32 %1) #10, !dbg !1087
  call void @llvm.dbg.value(metadata i32 %6, metadata !1028, metadata !DIExpression()) #10, !dbg !1087
  br label %7, !dbg !1088

; <label>:7:                                      ; preds = %2, %4
  ret void, !dbg !1089
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local nonnull i8* @umaxtostr(i64, i8*) local_unnamed_addr #7 !dbg !1090 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !1095, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i8* %1, metadata !1096, metadata !DIExpression()), !dbg !1099
  %3 = getelementptr inbounds i8, i8* %1, i64 20, !dbg !1100
  call void @llvm.dbg.value(metadata i8* %3, metadata !1097, metadata !DIExpression()), !dbg !1101
  store i8 0, i8* %3, align 1, !dbg !1102, !tbaa !892
  br label %4, !dbg !1103

; <label>:4:                                      ; preds = %2, %4
  %5 = phi i64 [ %0, %2 ], [ %11, %4 ]
  %6 = phi i8* [ %3, %2 ], [ %10, %4 ], !dbg !1104
  call void @llvm.dbg.value(metadata i8* %6, metadata !1097, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i64 %5, metadata !1095, metadata !DIExpression()), !dbg !1098
  %7 = urem i64 %5, 10, !dbg !1107
  %8 = trunc i64 %7 to i8, !dbg !1108
  %9 = or i8 %8, 48, !dbg !1108
  %10 = getelementptr inbounds i8, i8* %6, i64 -1, !dbg !1109
  call void @llvm.dbg.value(metadata i8* %10, metadata !1097, metadata !DIExpression()), !dbg !1101
  store i8 %9, i8* %10, align 1, !dbg !1110, !tbaa !892
  %11 = udiv i64 %5, 10, !dbg !1111
  call void @llvm.dbg.value(metadata i64 %11, metadata !1095, metadata !DIExpression()), !dbg !1098
  %12 = icmp ugt i64 %5, 9, !dbg !1112
  br i1 %12, label %4, label %13, !dbg !1113, !llvm.loop !1114

; <label>:13:                                     ; preds = %4
  call void @llvm.dbg.value(metadata i8* %10, metadata !1097, metadata !DIExpression()), !dbg !1101
  ret i8* %10, !dbg !1117
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @parse_long_options(i32, i8**, i8*, i8*, i8*, void (i32)* nocapture, ...) local_unnamed_addr #7 !dbg !1118 {
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1123, metadata !DIExpression()), !dbg !1147
  call void @llvm.dbg.value(metadata i8** %1, metadata !1124, metadata !DIExpression()), !dbg !1148
  call void @llvm.dbg.value(metadata i8* %2, metadata !1125, metadata !DIExpression()), !dbg !1149
  call void @llvm.dbg.value(metadata i8* %3, metadata !1126, metadata !DIExpression()), !dbg !1150
  call void @llvm.dbg.value(metadata i8* %4, metadata !1127, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.value(metadata void (i32)* %5, metadata !1128, metadata !DIExpression()), !dbg !1152
  %8 = load i32, i32* @opterr, align 4, !dbg !1153, !tbaa !734
  call void @llvm.dbg.value(metadata i32 %8, metadata !1130, metadata !DIExpression()), !dbg !1154
  store i32 0, i32* @opterr, align 4, !dbg !1155, !tbaa !734
  %9 = icmp eq i32 %0, 2, !dbg !1156
  br i1 %9, label %10, label %17, !dbg !1157

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 @getopt_long(i32 2, i8** %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i64 0, i64 0), %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options.49, i64 0, i64 0), i32* null) #10, !dbg !1158
  call void @llvm.dbg.value(metadata i32 %11, metadata !1129, metadata !DIExpression()), !dbg !1159
  switch i32 %11, label %17 [
    i32 118, label %13
    i32 104, label %12
  ], !dbg !1160

; <label>:12:                                     ; preds = %10
  tail call void %5(i32 0) #10, !dbg !1161
  br label %17, !dbg !1162

; <label>:13:                                     ; preds = %10
  %14 = bitcast [1 x %struct.__va_list_tag]* %7 to i8*, !dbg !1163
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %14) #10, !dbg !1163
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %7, metadata !1131, metadata !DIExpression()), !dbg !1164
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0, !dbg !1165
  call void @llvm.va_start(i8* nonnull %14), !dbg !1165
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1166, !tbaa !663
  call void @version_etc_va(%struct._IO_FILE* %16, i8* %2, i8* %3, i8* %4, %struct.__va_list_tag* nonnull %15) #10, !dbg !1167
  call void @exit(i32 0) #15, !dbg !1168
  unreachable, !dbg !1168

; <label>:17:                                     ; preds = %10, %12, %6
  store i32 %8, i32* @opterr, align 4, !dbg !1169, !tbaa !734
  store i32 0, i32* @optind, align 4, !dbg !1170, !tbaa !734
  ret void, !dbg !1171
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8*) local_unnamed_addr #7 !dbg !1172 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1174, metadata !DIExpression()), !dbg !1177
  %2 = icmp eq i8* %0, null, !dbg !1178
  br i1 %2, label %3, label %6, !dbg !1180

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1181, !tbaa !663
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.56, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !1183
  tail call void @abort() #15, !dbg !1184
  unreachable, !dbg !1184

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !1185
  call void @llvm.dbg.value(metadata i8* %7, metadata !1175, metadata !DIExpression()), !dbg !1186
  %8 = icmp eq i8* %7, null, !dbg !1187
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1188
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1189
  call void @llvm.dbg.value(metadata i8* %10, metadata !1176, metadata !DIExpression()), !dbg !1190
  %11 = ptrtoint i8* %10 to i64, !dbg !1191
  %12 = ptrtoint i8* %0 to i64, !dbg !1191
  %13 = sub i64 %11, %12, !dbg !1191
  %14 = icmp sgt i64 %13, 6, !dbg !1193
  br i1 %14, label %15, label %24, !dbg !1194

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1195
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.57, i64 0, i64 0), i64 7) #14, !dbg !1196
  %18 = icmp eq i32 %17, 0, !dbg !1197
  br i1 %18, label %19, label %24, !dbg !1198

; <label>:19:                                     ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1174, metadata !DIExpression()), !dbg !1177
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.58, i64 0, i64 0), i64 3) #14, !dbg !1199
  %21 = icmp eq i32 %20, 0, !dbg !1202
  br i1 %21, label %22, label %24, !dbg !1203

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1204
  call void @llvm.dbg.value(metadata i8* %23, metadata !1174, metadata !DIExpression()), !dbg !1177
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1206, !tbaa !663
  br label %24, !dbg !1207

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1174, metadata !DIExpression()), !dbg !1177
  store i8* %25, i8** @program_name, align 8, !dbg !1208, !tbaa !663
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1209, !tbaa !663
  ret void, !dbg !1210
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #10

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #7 !dbg !1211 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1216, metadata !DIExpression()), !dbg !1219
  %2 = tail call i32* @__errno_location() #17, !dbg !1220
  %3 = load i32, i32* %2, align 4, !dbg !1220, !tbaa !734
  call void @llvm.dbg.value(metadata i32 %3, metadata !1217, metadata !DIExpression()), !dbg !1221
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1222
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1222
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1222
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #10, !dbg !1223
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1223
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1218, metadata !DIExpression()), !dbg !1224
  store i32 %3, i32* %2, align 4, !dbg !1225, !tbaa !734
  ret %struct.quoting_options* %8, !dbg !1226
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !1227 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1233, metadata !DIExpression()), !dbg !1234
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1235
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1235
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1236
  %5 = load i32, i32* %4, align 8, !dbg !1236, !tbaa !1237
  ret i32 %5, !dbg !1239
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !1240 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1244, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i32 %1, metadata !1245, metadata !DIExpression()), !dbg !1247
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1248
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1248
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1249
  store i32 %1, i32* %5, align 8, !dbg !1250, !tbaa !1237
  ret void, !dbg !1251
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #7 !dbg !1252 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1256, metadata !DIExpression()), !dbg !1264
  call void @llvm.dbg.value(metadata i8 %1, metadata !1257, metadata !DIExpression()), !dbg !1265
  call void @llvm.dbg.value(metadata i32 %2, metadata !1258, metadata !DIExpression()), !dbg !1266
  call void @llvm.dbg.value(metadata i8 %1, metadata !1259, metadata !DIExpression()), !dbg !1267
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1268
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1268
  %6 = lshr i8 %1, 5, !dbg !1269
  %7 = zext i8 %6 to i64, !dbg !1269
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1270
  call void @llvm.dbg.value(metadata i32* %8, metadata !1260, metadata !DIExpression()), !dbg !1271
  %9 = and i8 %1, 31, !dbg !1272
  %10 = zext i8 %9 to i32, !dbg !1272
  call void @llvm.dbg.value(metadata i32 %10, metadata !1262, metadata !DIExpression()), !dbg !1273
  %11 = load i32, i32* %8, align 4, !dbg !1274, !tbaa !734
  %12 = lshr i32 %11, %10, !dbg !1275
  %13 = and i32 %12, 1, !dbg !1276
  call void @llvm.dbg.value(metadata i32 %13, metadata !1263, metadata !DIExpression()), !dbg !1277
  %14 = and i32 %2, 1, !dbg !1278
  %15 = xor i32 %13, %14, !dbg !1279
  %16 = shl i32 %15, %10, !dbg !1280
  %17 = xor i32 %16, %11, !dbg !1281
  store i32 %17, i32* %8, align 4, !dbg !1281, !tbaa !734
  ret i32 %13, !dbg !1282
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !1283 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1287, metadata !DIExpression()), !dbg !1290
  call void @llvm.dbg.value(metadata i32 %1, metadata !1288, metadata !DIExpression()), !dbg !1291
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1292
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1294
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1287, metadata !DIExpression()), !dbg !1290
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1295
  %6 = load i32, i32* %5, align 4, !dbg !1295, !tbaa !1296
  call void @llvm.dbg.value(metadata i32 %6, metadata !1289, metadata !DIExpression()), !dbg !1297
  store i32 %1, i32* %5, align 4, !dbg !1298, !tbaa !1296
  ret i32 %6, !dbg !1299
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #7 !dbg !1300 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1304, metadata !DIExpression()), !dbg !1307
  call void @llvm.dbg.value(metadata i8* %1, metadata !1305, metadata !DIExpression()), !dbg !1308
  call void @llvm.dbg.value(metadata i8* %2, metadata !1306, metadata !DIExpression()), !dbg !1309
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1310
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1312
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1304, metadata !DIExpression()), !dbg !1307
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1313
  store i32 10, i32* %6, align 8, !dbg !1314, !tbaa !1237
  %7 = icmp ne i8* %1, null, !dbg !1315
  %8 = icmp ne i8* %2, null, !dbg !1317
  %9 = and i1 %7, %8, !dbg !1318
  br i1 %9, label %11, label %10, !dbg !1318

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !1319
  unreachable, !dbg !1319

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1320
  store i8* %1, i8** %12, align 8, !dbg !1321, !tbaa !1322
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1323
  store i8* %2, i8** %13, align 8, !dbg !1324, !tbaa !1325
  ret void, !dbg !1326
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #7 !dbg !1327 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1331, metadata !DIExpression()), !dbg !1339
  call void @llvm.dbg.value(metadata i64 %1, metadata !1332, metadata !DIExpression()), !dbg !1340
  call void @llvm.dbg.value(metadata i8* %2, metadata !1333, metadata !DIExpression()), !dbg !1341
  call void @llvm.dbg.value(metadata i64 %3, metadata !1334, metadata !DIExpression()), !dbg !1342
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1335, metadata !DIExpression()), !dbg !1343
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1344
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1344
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1336, metadata !DIExpression()), !dbg !1345
  %8 = tail call i32* @__errno_location() #17, !dbg !1346
  %9 = load i32, i32* %8, align 4, !dbg !1346, !tbaa !734
  call void @llvm.dbg.value(metadata i32 %9, metadata !1337, metadata !DIExpression()), !dbg !1347
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1348
  %11 = load i32, i32* %10, align 8, !dbg !1348, !tbaa !1237
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1349
  %13 = load i32, i32* %12, align 4, !dbg !1349, !tbaa !1296
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1350
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1351
  %16 = load i8*, i8** %15, align 8, !dbg !1351, !tbaa !1322
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1352
  %18 = load i8*, i8** %17, align 8, !dbg !1352, !tbaa !1325
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1353
  call void @llvm.dbg.value(metadata i64 %19, metadata !1338, metadata !DIExpression()), !dbg !1354
  store i32 %9, i32* %8, align 4, !dbg !1355, !tbaa !734
  ret i64 %19, !dbg !1356
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #7 !dbg !1357 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1363, metadata !DIExpression()), !dbg !1427
  call void @llvm.dbg.value(metadata i64 %1, metadata !1364, metadata !DIExpression()), !dbg !1428
  call void @llvm.dbg.value(metadata i8* %2, metadata !1365, metadata !DIExpression()), !dbg !1429
  call void @llvm.dbg.value(metadata i64 %3, metadata !1366, metadata !DIExpression()), !dbg !1430
  call void @llvm.dbg.value(metadata i32 %4, metadata !1367, metadata !DIExpression()), !dbg !1431
  call void @llvm.dbg.value(metadata i32 %5, metadata !1368, metadata !DIExpression()), !dbg !1432
  call void @llvm.dbg.value(metadata i32* %6, metadata !1369, metadata !DIExpression()), !dbg !1433
  call void @llvm.dbg.value(metadata i8* %7, metadata !1370, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata i8* %8, metadata !1371, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i64 0, metadata !1373, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.value(metadata i64 0, metadata !1374, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i8* null, metadata !1375, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 0, metadata !1376, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i8 0, metadata !1377, metadata !DIExpression()), !dbg !1440
  %13 = tail call i64 @__ctype_get_mb_cur_max() #10, !dbg !1441
  %14 = icmp eq i64 %13, 1, !dbg !1442
  %15 = lshr i32 %5, 1, !dbg !1443
  %16 = trunc i32 %15 to i8, !dbg !1443
  %17 = and i8 %16, 1, !dbg !1443
  call void @llvm.dbg.value(metadata i8 %17, metadata !1379, metadata !DIExpression()), !dbg !1443
  call void @llvm.dbg.value(metadata i8 0, metadata !1380, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i8 0, metadata !1381, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata i8 1, metadata !1382, metadata !DIExpression()), !dbg !1446
  %18 = icmp ne i32* %6, null
  %19 = bitcast i64* %10 to i8*
  %20 = icmp eq i32* %6, null
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 4
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr inbounds i8, i8* %2, i64 1
  %26 = bitcast i32* %12 to i8*
  br label %27, !dbg !1447

; <label>:27:                                     ; preds = %634, %9
  %28 = phi i32 [ %4, %9 ], [ %94, %634 ]
  %29 = phi i8* [ %7, %9 ], [ %95, %634 ]
  %30 = phi i8* [ %8, %9 ], [ %96, %634 ]
  %31 = phi i64 [ 0, %9 ], [ %124, %634 ], !dbg !1437
  %32 = phi i8* [ null, %9 ], [ %98, %634 ], !dbg !1438
  %33 = phi i64 [ 0, %9 ], [ %99, %634 ], !dbg !1439
  %34 = phi i8 [ 0, %9 ], [ %100, %634 ], !dbg !1440
  %35 = phi i64 [ %3, %9 ], [ %618, %634 ]
  %36 = phi i8 [ %17, %9 ], [ %101, %634 ], !dbg !1448
  %37 = phi i8 [ 0, %9 ], [ %126, %634 ], !dbg !1444
  %38 = phi i8 [ 0, %9 ], [ %127, %634 ], !dbg !1445
  %39 = phi i8 [ 1, %9 ], [ %128, %634 ], !dbg !1446
  %40 = phi i64 [ %1, %9 ], [ %124, %634 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !1364, metadata !DIExpression()), !dbg !1428
  call void @llvm.dbg.value(metadata i8 %39, metadata !1382, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i8 %38, metadata !1381, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata i8 %37, metadata !1380, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i8 %36, metadata !1379, metadata !DIExpression()), !dbg !1443
  call void @llvm.dbg.value(metadata i64 %35, metadata !1366, metadata !DIExpression()), !dbg !1430
  call void @llvm.dbg.value(metadata i8 %34, metadata !1377, metadata !DIExpression()), !dbg !1440
  call void @llvm.dbg.value(metadata i64 %33, metadata !1376, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i8* %32, metadata !1375, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %31, metadata !1374, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 0, metadata !1373, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.value(metadata i8* %30, metadata !1371, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i8* %29, metadata !1370, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata i32 %28, metadata !1367, metadata !DIExpression()), !dbg !1431
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
  ], !dbg !1450

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, metadata !1367, metadata !DIExpression()), !dbg !1431
  call void @llvm.dbg.value(metadata i8 1, metadata !1379, metadata !DIExpression()), !dbg !1443
  call void @llvm.dbg.value(metadata i8 %36, metadata !1379, metadata !DIExpression()), !dbg !1443
  call void @llvm.dbg.value(metadata i32 5, metadata !1367, metadata !DIExpression()), !dbg !1431
  br label %93, !dbg !1451

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, metadata !1379, metadata !DIExpression()), !dbg !1443
  call void @llvm.dbg.value(metadata i32 5, metadata !1367, metadata !DIExpression()), !dbg !1431
  %43 = and i8 %36, 1, !dbg !1452
  %44 = icmp eq i8 %43, 0, !dbg !1452
  br i1 %44, label %45, label %93, !dbg !1451

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1454
  br i1 %46, label %93, label %47, !dbg !1457

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1454, !tbaa !892
  br label %93, !dbg !1454

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.69, i64 0, i64 0), i32 %28), !dbg !1458
  call void @llvm.dbg.value(metadata i8* %49, metadata !1370, metadata !DIExpression()), !dbg !1434
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.70, i64 0, i64 0), i32 %28), !dbg !1462
  call void @llvm.dbg.value(metadata i8* %50, metadata !1371, metadata !DIExpression()), !dbg !1435
  br label %51, !dbg !1463

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, metadata !1371, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i8* %52, metadata !1370, metadata !DIExpression()), !dbg !1434
  %54 = and i8 %36, 1, !dbg !1464
  %55 = icmp eq i8 %54, 0, !dbg !1464
  br i1 %55, label %56, label %71, !dbg !1466

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, metadata !1375, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 0, metadata !1373, metadata !DIExpression()), !dbg !1436
  %57 = load i8, i8* %52, align 1, !dbg !1467, !tbaa !892
  %58 = icmp eq i8 %57, 0, !dbg !1470
  br i1 %58, label %71, label %59, !dbg !1470

; <label>:59:                                     ; preds = %56, %66
  %60 = phi i8 [ %69, %66 ], [ %57, %56 ]
  %61 = phi i8* [ %68, %66 ], [ %52, %56 ]
  %62 = phi i64 [ %67, %66 ], [ 0, %56 ]
  call void @llvm.dbg.value(metadata i8* %61, metadata !1375, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %62, metadata !1373, metadata !DIExpression()), !dbg !1436
  %63 = icmp ult i64 %62, %40, !dbg !1471
  br i1 %63, label %64, label %66, !dbg !1474

; <label>:64:                                     ; preds = %59
  %65 = getelementptr inbounds i8, i8* %0, i64 %62, !dbg !1471
  store i8 %60, i8* %65, align 1, !dbg !1471, !tbaa !892
  br label %66, !dbg !1471

; <label>:66:                                     ; preds = %64, %59
  %67 = add i64 %62, 1, !dbg !1474
  %68 = getelementptr inbounds i8, i8* %61, i64 1, !dbg !1475
  call void @llvm.dbg.value(metadata i8* %68, metadata !1375, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %67, metadata !1373, metadata !DIExpression()), !dbg !1436
  %69 = load i8, i8* %68, align 1, !dbg !1467, !tbaa !892
  %70 = icmp eq i8 %69, 0, !dbg !1470
  br i1 %70, label %71, label %59, !dbg !1470, !llvm.loop !1476

; <label>:71:                                     ; preds = %66, %56, %51
  %72 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %67, %66 ], !dbg !1436
  call void @llvm.dbg.value(metadata i64 %72, metadata !1373, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.value(metadata i8 1, metadata !1377, metadata !DIExpression()), !dbg !1440
  call void @llvm.dbg.value(metadata i8* %53, metadata !1375, metadata !DIExpression()), !dbg !1438
  %73 = call i64 @strlen(i8* %53) #14, !dbg !1478
  call void @llvm.dbg.value(metadata i64 %73, metadata !1376, metadata !DIExpression()), !dbg !1439
  br label %93, !dbg !1479

; <label>:74:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !1377, metadata !DIExpression()), !dbg !1440
  br label %75, !dbg !1480

; <label>:75:                                     ; preds = %27, %74
  %76 = phi i8 [ %34, %27 ], [ 1, %74 ], !dbg !1448
  call void @llvm.dbg.value(metadata i8 %76, metadata !1377, metadata !DIExpression()), !dbg !1440
  call void @llvm.dbg.value(metadata i8 1, metadata !1379, metadata !DIExpression()), !dbg !1443
  br label %77, !dbg !1481

; <label>:77:                                     ; preds = %27, %75
  %78 = phi i8 [ %34, %27 ], [ %76, %75 ], !dbg !1440
  %79 = phi i8 [ %36, %27 ], [ 1, %75 ], !dbg !1448
  call void @llvm.dbg.value(metadata i8 %79, metadata !1379, metadata !DIExpression()), !dbg !1443
  call void @llvm.dbg.value(metadata i8 %78, metadata !1377, metadata !DIExpression()), !dbg !1440
  %80 = and i8 %79, 1, !dbg !1482
  %81 = icmp eq i8 %80, 0, !dbg !1482
  %82 = select i1 %81, i8 1, i8 %78, !dbg !1484
  br label %83, !dbg !1484

; <label>:83:                                     ; preds = %77, %27
  %84 = phi i8 [ %34, %27 ], [ %82, %77 ], !dbg !1485
  %85 = phi i8 [ %36, %27 ], [ %79, %77 ], !dbg !1443
  call void @llvm.dbg.value(metadata i8 %85, metadata !1379, metadata !DIExpression()), !dbg !1443
  call void @llvm.dbg.value(metadata i8 %84, metadata !1377, metadata !DIExpression()), !dbg !1440
  call void @llvm.dbg.value(metadata i32 2, metadata !1367, metadata !DIExpression()), !dbg !1431
  %86 = and i8 %85, 1, !dbg !1486
  %87 = icmp eq i8 %86, 0, !dbg !1486
  br i1 %87, label %88, label %93, !dbg !1488

; <label>:88:                                     ; preds = %83
  %89 = icmp eq i64 %40, 0, !dbg !1489
  br i1 %89, label %93, label %90, !dbg !1492

; <label>:90:                                     ; preds = %88
  store i8 39, i8* %0, align 1, !dbg !1489, !tbaa !892
  br label %93, !dbg !1489

; <label>:91:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !1379, metadata !DIExpression()), !dbg !1443
  br label %93, !dbg !1493

; <label>:92:                                     ; preds = %27
  call void @abort() #15, !dbg !1494
  unreachable, !dbg !1494

; <label>:93:                                     ; preds = %41, %83, %88, %90, %27, %42, %45, %47, %91, %71
  %94 = phi i32 [ 0, %91 ], [ %28, %71 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ %28, %27 ], [ 2, %90 ], [ 2, %88 ], [ 2, %83 ], [ 5, %41 ]
  %95 = phi i8* [ %29, %91 ], [ %52, %71 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %90 ], [ %29, %88 ], [ %29, %83 ], [ %29, %41 ]
  %96 = phi i8* [ %30, %91 ], [ %53, %71 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %90 ], [ %30, %88 ], [ %30, %83 ], [ %30, %41 ]
  %97 = phi i64 [ 0, %91 ], [ %72, %71 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %90 ], [ 1, %88 ], [ 0, %83 ], [ 0, %41 ], !dbg !1436
  %98 = phi i8* [ %32, %91 ], [ %53, %71 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.71, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.71, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.71, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.70, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.70, i64 0, i64 0), %88 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.70, i64 0, i64 0), %83 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.71, i64 0, i64 0), %41 ], !dbg !1448
  %99 = phi i64 [ %33, %91 ], [ %73, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %90 ], [ 1, %88 ], [ 1, %83 ], [ 1, %41 ], !dbg !1448
  %100 = phi i8 [ %34, %91 ], [ 1, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %84, %90 ], [ %84, %88 ], [ %84, %83 ], [ 1, %41 ], !dbg !1448
  %101 = phi i8 [ 0, %91 ], [ %36, %71 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %85, %90 ], [ %85, %88 ], [ %85, %83 ], [ 1, %41 ], !dbg !1495
  call void @llvm.dbg.value(metadata i8 %101, metadata !1379, metadata !DIExpression()), !dbg !1443
  call void @llvm.dbg.value(metadata i8 %100, metadata !1377, metadata !DIExpression()), !dbg !1440
  call void @llvm.dbg.value(metadata i64 %99, metadata !1376, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i8* %98, metadata !1375, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %97, metadata !1373, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.value(metadata i8* %96, metadata !1371, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i8* %95, metadata !1370, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata i32 %94, metadata !1367, metadata !DIExpression()), !dbg !1431
  call void @llvm.dbg.value(metadata i64 0, metadata !1372, metadata !DIExpression()), !dbg !1496
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
  br label %121, !dbg !1497

; <label>:121:                                    ; preds = %607, %93
  %122 = phi i64 [ 0, %93 ], [ %616, %607 ], !dbg !1498
  %123 = phi i64 [ %97, %93 ], [ %609, %607 ], !dbg !1436
  %124 = phi i64 [ %31, %93 ], [ %610, %607 ], !dbg !1437
  %125 = phi i64 [ %35, %93 ], [ %611, %607 ]
  %126 = phi i8 [ %37, %93 ], [ %612, %607 ], !dbg !1444
  %127 = phi i8 [ %38, %93 ], [ %613, %607 ], !dbg !1445
  %128 = phi i8 [ %39, %93 ], [ %614, %607 ], !dbg !1446
  %129 = phi i64 [ %40, %93 ], [ %615, %607 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !1364, metadata !DIExpression()), !dbg !1428
  call void @llvm.dbg.value(metadata i8 %128, metadata !1382, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i8 %127, metadata !1381, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata i8 %126, metadata !1380, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i64 %125, metadata !1366, metadata !DIExpression()), !dbg !1430
  call void @llvm.dbg.value(metadata i64 %124, metadata !1374, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %123, metadata !1373, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.value(metadata i64 %122, metadata !1372, metadata !DIExpression()), !dbg !1496
  %130 = icmp eq i64 %125, -1, !dbg !1499
  br i1 %130, label %131, label %135, !dbg !1500

; <label>:131:                                    ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1501
  %133 = load i8, i8* %132, align 1, !dbg !1501, !tbaa !892
  %134 = icmp eq i8 %133, 0, !dbg !1502
  br i1 %134, label %617, label %137, !dbg !1503

; <label>:135:                                    ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !1504
  br i1 %136, label %617, label %137, !dbg !1503

; <label>:137:                                    ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !1388, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i8 0, metadata !1389, metadata !DIExpression()), !dbg !1506
  call void @llvm.dbg.value(metadata i8 0, metadata !1390, metadata !DIExpression()), !dbg !1507
  br i1 %107, label %138, label %153, !dbg !1508

; <label>:138:                                    ; preds = %137
  %139 = add i64 %122, %99, !dbg !1510
  %140 = and i1 %108, %130, !dbg !1511
  br i1 %140, label %141, label %143, !dbg !1511

; <label>:141:                                    ; preds = %138
  %142 = call i64 @strlen(i8* %2) #14, !dbg !1512
  call void @llvm.dbg.value(metadata i64 %142, metadata !1366, metadata !DIExpression()), !dbg !1430
  br label %143, !dbg !1513

; <label>:143:                                    ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ]
  call void @llvm.dbg.value(metadata i64 %144, metadata !1366, metadata !DIExpression()), !dbg !1430
  %145 = icmp ugt i64 %139, %144, !dbg !1514
  br i1 %145, label %153, label %146, !dbg !1515

; <label>:146:                                    ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1516
  %148 = call i32 @memcmp(i8* %147, i8* %98, i64 %99) #14, !dbg !1517
  %149 = icmp ne i32 %148, 0, !dbg !1518
  %150 = or i1 %149, %110, !dbg !1519
  %151 = xor i1 %149, true, !dbg !1519
  %152 = zext i1 %151 to i8, !dbg !1519
  br i1 %150, label %153, label %661, !dbg !1519

; <label>:153:                                    ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !1520
  call void @llvm.dbg.value(metadata i8 %155, metadata !1388, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i64 %154, metadata !1366, metadata !DIExpression()), !dbg !1430
  %156 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1521
  %157 = load i8, i8* %156, align 1, !dbg !1521, !tbaa !892
  call void @llvm.dbg.value(metadata i8 %157, metadata !1383, metadata !DIExpression()), !dbg !1522
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
  ], !dbg !1523

; <label>:158:                                    ; preds = %153
  br i1 %103, label %159, label %207, !dbg !1524

; <label>:159:                                    ; preds = %158
  br i1 %110, label %160, label %661, !dbg !1525

; <label>:160:                                    ; preds = %159
  call void @llvm.dbg.value(metadata i8 1, metadata !1389, metadata !DIExpression()), !dbg !1506
  %161 = and i8 %126, 1, !dbg !1529
  %162 = icmp eq i8 %161, 0, !dbg !1529
  %163 = and i1 %114, %162, !dbg !1529
  br i1 %163, label %164, label %180, !dbg !1529

; <label>:164:                                    ; preds = %160
  %165 = icmp ult i64 %123, %129, !dbg !1531
  br i1 %165, label %166, label %168, !dbg !1535

; <label>:166:                                    ; preds = %164
  %167 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1531
  store i8 39, i8* %167, align 1, !dbg !1531, !tbaa !892
  br label %168, !dbg !1531

; <label>:168:                                    ; preds = %166, %164
  %169 = add i64 %123, 1, !dbg !1535
  call void @llvm.dbg.value(metadata i64 %169, metadata !1373, metadata !DIExpression()), !dbg !1436
  %170 = icmp ult i64 %169, %129, !dbg !1536
  br i1 %170, label %171, label %173, !dbg !1539

; <label>:171:                                    ; preds = %168
  %172 = getelementptr inbounds i8, i8* %0, i64 %169, !dbg !1536
  store i8 36, i8* %172, align 1, !dbg !1536, !tbaa !892
  br label %173, !dbg !1536

; <label>:173:                                    ; preds = %171, %168
  %174 = add i64 %123, 2, !dbg !1539
  call void @llvm.dbg.value(metadata i64 %174, metadata !1373, metadata !DIExpression()), !dbg !1436
  %175 = icmp ult i64 %174, %129, !dbg !1540
  br i1 %175, label %176, label %178, !dbg !1543

; <label>:176:                                    ; preds = %173
  %177 = getelementptr inbounds i8, i8* %0, i64 %174, !dbg !1540
  store i8 39, i8* %177, align 1, !dbg !1540, !tbaa !892
  br label %178, !dbg !1540

; <label>:178:                                    ; preds = %176, %173
  %179 = add i64 %123, 3, !dbg !1543
  call void @llvm.dbg.value(metadata i64 %179, metadata !1373, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.value(metadata i8 1, metadata !1380, metadata !DIExpression()), !dbg !1444
  br label %180, !dbg !1544

; <label>:180:                                    ; preds = %160, %178
  %181 = phi i64 [ %179, %178 ], [ %123, %160 ], !dbg !1495
  %182 = phi i8 [ 1, %178 ], [ %126, %160 ], !dbg !1495
  call void @llvm.dbg.value(metadata i8 %182, metadata !1380, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i64 %181, metadata !1373, metadata !DIExpression()), !dbg !1436
  %183 = icmp ult i64 %181, %129, !dbg !1545
  br i1 %183, label %184, label %186, !dbg !1548

; <label>:184:                                    ; preds = %180
  %185 = getelementptr inbounds i8, i8* %0, i64 %181, !dbg !1545
  store i8 92, i8* %185, align 1, !dbg !1545, !tbaa !892
  br label %186, !dbg !1545

; <label>:186:                                    ; preds = %184, %180
  %187 = add i64 %181, 1, !dbg !1548
  call void @llvm.dbg.value(metadata i64 %187, metadata !1373, metadata !DIExpression()), !dbg !1436
  br i1 %104, label %188, label %478, !dbg !1549

; <label>:188:                                    ; preds = %186
  %189 = add i64 %122, 1, !dbg !1551
  %190 = icmp ult i64 %189, %154, !dbg !1552
  br i1 %190, label %191, label %467, !dbg !1553

; <label>:191:                                    ; preds = %188
  %192 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !1554
  %193 = load i8, i8* %192, align 1, !dbg !1554, !tbaa !892
  %194 = add i8 %193, -48, !dbg !1555
  %195 = icmp ult i8 %194, 10, !dbg !1555
  br i1 %195, label %196, label %467, !dbg !1555

; <label>:196:                                    ; preds = %191
  %197 = icmp ult i64 %187, %129, !dbg !1556
  br i1 %197, label %198, label %200, !dbg !1560

; <label>:198:                                    ; preds = %196
  %199 = getelementptr inbounds i8, i8* %0, i64 %187, !dbg !1556
  store i8 48, i8* %199, align 1, !dbg !1556, !tbaa !892
  br label %200, !dbg !1556

; <label>:200:                                    ; preds = %198, %196
  %201 = add i64 %181, 2, !dbg !1560
  call void @llvm.dbg.value(metadata i64 %201, metadata !1373, metadata !DIExpression()), !dbg !1436
  %202 = icmp ult i64 %201, %129, !dbg !1561
  br i1 %202, label %203, label %205, !dbg !1564

; <label>:203:                                    ; preds = %200
  %204 = getelementptr inbounds i8, i8* %0, i64 %201, !dbg !1561
  store i8 48, i8* %204, align 1, !dbg !1561, !tbaa !892
  br label %205, !dbg !1561

; <label>:205:                                    ; preds = %203, %200
  %206 = add i64 %181, 3, !dbg !1564
  call void @llvm.dbg.value(metadata i64 %206, metadata !1373, metadata !DIExpression()), !dbg !1436
  br label %467, !dbg !1565

; <label>:207:                                    ; preds = %158
  br i1 %22, label %478, label %607, !dbg !1566

; <label>:208:                                    ; preds = %153
  switch i32 %94, label %467 [
    i32 2, label %209
    i32 5, label %210
  ], !dbg !1567

; <label>:209:                                    ; preds = %208
  br i1 %110, label %467, label %661, !dbg !1568

; <label>:210:                                    ; preds = %208
  br i1 %24, label %467, label %211, !dbg !1570

; <label>:211:                                    ; preds = %210
  %212 = add i64 %122, 2, !dbg !1572
  %213 = icmp ult i64 %212, %154, !dbg !1573
  br i1 %213, label %214, label %467, !dbg !1574

; <label>:214:                                    ; preds = %211
  %215 = add i64 %122, 1, !dbg !1575
  %216 = getelementptr inbounds i8, i8* %2, i64 %215, !dbg !1576
  %217 = load i8, i8* %216, align 1, !dbg !1576, !tbaa !892
  %218 = icmp eq i8 %217, 63, !dbg !1577
  br i1 %218, label %219, label %467, !dbg !1578

; <label>:219:                                    ; preds = %214
  %220 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !1579
  %221 = load i8, i8* %220, align 1, !dbg !1579, !tbaa !892
  %222 = sext i8 %221 to i32, !dbg !1579
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
  ], !dbg !1580

; <label>:223:                                    ; preds = %219, %219, %219, %219, %219, %219, %219, %219, %219
  br i1 %110, label %224, label %661, !dbg !1581

; <label>:224:                                    ; preds = %223
  call void @llvm.dbg.value(metadata i8 %221, metadata !1383, metadata !DIExpression()), !dbg !1522
  call void @llvm.dbg.value(metadata i64 %212, metadata !1372, metadata !DIExpression()), !dbg !1496
  %225 = icmp ult i64 %123, %129, !dbg !1583
  br i1 %225, label %226, label %228, !dbg !1586

; <label>:226:                                    ; preds = %224
  %227 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1583
  store i8 63, i8* %227, align 1, !dbg !1583, !tbaa !892
  br label %228, !dbg !1583

; <label>:228:                                    ; preds = %226, %224
  %229 = add i64 %123, 1, !dbg !1586
  call void @llvm.dbg.value(metadata i64 %229, metadata !1373, metadata !DIExpression()), !dbg !1436
  %230 = icmp ult i64 %229, %129, !dbg !1587
  br i1 %230, label %231, label %233, !dbg !1590

; <label>:231:                                    ; preds = %228
  %232 = getelementptr inbounds i8, i8* %0, i64 %229, !dbg !1587
  store i8 34, i8* %232, align 1, !dbg !1587, !tbaa !892
  br label %233, !dbg !1587

; <label>:233:                                    ; preds = %231, %228
  %234 = add i64 %123, 2, !dbg !1590
  call void @llvm.dbg.value(metadata i64 %234, metadata !1373, metadata !DIExpression()), !dbg !1436
  %235 = icmp ult i64 %234, %129, !dbg !1591
  br i1 %235, label %236, label %238, !dbg !1594

; <label>:236:                                    ; preds = %233
  %237 = getelementptr inbounds i8, i8* %0, i64 %234, !dbg !1591
  store i8 34, i8* %237, align 1, !dbg !1591, !tbaa !892
  br label %238, !dbg !1591

; <label>:238:                                    ; preds = %236, %233
  %239 = add i64 %123, 3, !dbg !1594
  call void @llvm.dbg.value(metadata i64 %239, metadata !1373, metadata !DIExpression()), !dbg !1436
  %240 = icmp ult i64 %239, %129, !dbg !1595
  br i1 %240, label %241, label %243, !dbg !1598

; <label>:241:                                    ; preds = %238
  %242 = getelementptr inbounds i8, i8* %0, i64 %239, !dbg !1595
  store i8 63, i8* %242, align 1, !dbg !1595, !tbaa !892
  br label %243, !dbg !1595

; <label>:243:                                    ; preds = %241, %238
  %244 = add i64 %123, 4, !dbg !1598
  call void @llvm.dbg.value(metadata i64 %244, metadata !1373, metadata !DIExpression()), !dbg !1436
  br label %467, !dbg !1599

; <label>:245:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !1387, metadata !DIExpression()), !dbg !1600
  br label %255, !dbg !1601

; <label>:246:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !1387, metadata !DIExpression()), !dbg !1600
  br label %255, !dbg !1602

; <label>:247:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !1387, metadata !DIExpression()), !dbg !1600
  br label %253, !dbg !1603

; <label>:248:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !1387, metadata !DIExpression()), !dbg !1600
  br label %253, !dbg !1604

; <label>:249:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !1387, metadata !DIExpression()), !dbg !1600
  br label %255, !dbg !1605

; <label>:250:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 %157, metadata !1387, metadata !DIExpression()), !dbg !1600
  br i1 %114, label %251, label %252, !dbg !1606

; <label>:251:                                    ; preds = %250
  br i1 %110, label %562, label %661, !dbg !1607

; <label>:252:                                    ; preds = %250
  br i1 %120, label %562, label %253, !dbg !1610

; <label>:253:                                    ; preds = %252, %153, %248, %247
  %254 = phi i8 [ 92, %252 ], [ 116, %248 ], [ 114, %247 ], [ 110, %153 ], !dbg !1612
  call void @llvm.dbg.value(metadata i8 %254, metadata !1387, metadata !DIExpression()), !dbg !1600
  br i1 %113, label %255, label %661, !dbg !1613

; <label>:255:                                    ; preds = %253, %153, %249, %246, %245
  %256 = phi i8 [ %254, %253 ], [ 118, %249 ], [ 102, %246 ], [ 98, %245 ], [ 97, %153 ], !dbg !1612
  call void @llvm.dbg.value(metadata i8 %256, metadata !1387, metadata !DIExpression()), !dbg !1600
  br i1 %103, label %524, label %478, !dbg !1615

; <label>:257:                                    ; preds = %153, %153
  %258 = icmp eq i64 %154, -1, !dbg !1616
  br i1 %258, label %259, label %264, !dbg !1618

; <label>:259:                                    ; preds = %257
  %260 = load i8, i8* %25, align 1, !dbg !1619, !tbaa !892
  %261 = icmp ne i8 %260, 0, !dbg !1620
  %262 = icmp ne i64 %122, 0, !dbg !1621
  %263 = or i1 %262, %261, !dbg !1623
  br i1 %263, label %467, label %270, !dbg !1623

; <label>:264:                                    ; preds = %257
  %265 = icmp ne i64 %154, 1, !dbg !1624
  %266 = icmp ne i64 %122, 0, !dbg !1621
  %267 = or i1 %266, %265, !dbg !1618
  br i1 %267, label %467, label %270, !dbg !1618

; <label>:268:                                    ; preds = %153, %153
  %269 = icmp eq i64 %122, 0, !dbg !1621
  br i1 %269, label %270, label %467, !dbg !1625

; <label>:270:                                    ; preds = %268, %264, %259, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1390, metadata !DIExpression()), !dbg !1507
  br label %271, !dbg !1626

; <label>:271:                                    ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %270
  %272 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %270 ], !dbg !1612
  call void @llvm.dbg.value(metadata i8 %272, metadata !1390, metadata !DIExpression()), !dbg !1507
  br i1 %113, label %467, label %661, !dbg !1627

; <label>:273:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1381, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata i8 1, metadata !1390, metadata !DIExpression()), !dbg !1507
  br i1 %114, label %274, label %467, !dbg !1629

; <label>:274:                                    ; preds = %273
  br i1 %110, label %275, label %661, !dbg !1630

; <label>:275:                                    ; preds = %274
  %276 = icmp eq i64 %129, 0, !dbg !1633
  %277 = icmp ne i64 %124, 0, !dbg !1635
  %278 = or i1 %277, %276, !dbg !1636
  %279 = select i1 %278, i64 %124, i64 %129, !dbg !1636
  %280 = select i1 %278, i64 %129, i64 0, !dbg !1636
  call void @llvm.dbg.value(metadata i64 %280, metadata !1364, metadata !DIExpression()), !dbg !1428
  call void @llvm.dbg.value(metadata i64 %279, metadata !1374, metadata !DIExpression()), !dbg !1437
  %281 = icmp ult i64 %123, %280, !dbg !1637
  br i1 %281, label %282, label %284, !dbg !1640

; <label>:282:                                    ; preds = %275
  %283 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1637
  store i8 39, i8* %283, align 1, !dbg !1637, !tbaa !892
  br label %284, !dbg !1637

; <label>:284:                                    ; preds = %282, %275
  %285 = add i64 %123, 1, !dbg !1640
  call void @llvm.dbg.value(metadata i64 %285, metadata !1373, metadata !DIExpression()), !dbg !1436
  %286 = icmp ult i64 %285, %280, !dbg !1641
  br i1 %286, label %287, label %289, !dbg !1644

; <label>:287:                                    ; preds = %284
  %288 = getelementptr inbounds i8, i8* %0, i64 %285, !dbg !1641
  store i8 92, i8* %288, align 1, !dbg !1641, !tbaa !892
  br label %289, !dbg !1641

; <label>:289:                                    ; preds = %287, %284
  %290 = add i64 %123, 2, !dbg !1644
  call void @llvm.dbg.value(metadata i64 %290, metadata !1373, metadata !DIExpression()), !dbg !1436
  %291 = icmp ult i64 %290, %280, !dbg !1645
  br i1 %291, label %292, label %294, !dbg !1648

; <label>:292:                                    ; preds = %289
  %293 = getelementptr inbounds i8, i8* %0, i64 %290, !dbg !1645
  store i8 39, i8* %293, align 1, !dbg !1645, !tbaa !892
  br label %294, !dbg !1645

; <label>:294:                                    ; preds = %292, %289
  %295 = add i64 %123, 3, !dbg !1648
  call void @llvm.dbg.value(metadata i64 %295, metadata !1373, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.value(metadata i8 0, metadata !1380, metadata !DIExpression()), !dbg !1444
  br label %467, !dbg !1649

; <label>:296:                                    ; preds = %153
  br i1 %14, label %297, label %306, !dbg !1650

; <label>:297:                                    ; preds = %296
  call void @llvm.dbg.value(metadata i64 1, metadata !1391, metadata !DIExpression()), !dbg !1651
  %298 = tail call i16** @__ctype_b_loc() #17, !dbg !1652
  %299 = load i16*, i16** %298, align 8, !dbg !1652, !tbaa !663
  %300 = zext i8 %157 to i64, !dbg !1652
  %301 = getelementptr inbounds i16, i16* %299, i64 %300, !dbg !1652
  %302 = load i16, i16* %301, align 2, !dbg !1652, !tbaa !1654
  %303 = lshr i16 %302, 14, !dbg !1655
  %304 = trunc i16 %303 to i8, !dbg !1655
  %305 = and i8 %304, 1, !dbg !1655
  call void @llvm.dbg.value(metadata i8 %305, metadata !1394, metadata !DIExpression()), !dbg !1656
  br label %359, !dbg !1657

; <label>:306:                                    ; preds = %296
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %19) #10, !dbg !1658
  store i64 0, i64* %10, align 8, !dbg !1659
  call void @llvm.dbg.value(metadata i64 0, metadata !1391, metadata !DIExpression()), !dbg !1651
  call void @llvm.dbg.value(metadata i8 1, metadata !1394, metadata !DIExpression()), !dbg !1656
  %307 = icmp eq i64 %154, -1, !dbg !1660
  br i1 %307, label %308, label %310, !dbg !1662

; <label>:308:                                    ; preds = %306
  %309 = call i64 @strlen(i8* nonnull %2) #14, !dbg !1663
  call void @llvm.dbg.value(metadata i64 %309, metadata !1366, metadata !DIExpression()), !dbg !1430
  br label %310, !dbg !1664

; <label>:310:                                    ; preds = %308, %306
  %311 = phi i64 [ %309, %308 ], [ %154, %306 ], !dbg !1665
  call void @llvm.dbg.value(metadata i64 %311, metadata !1366, metadata !DIExpression()), !dbg !1430
  br label %312, !dbg !1666

; <label>:312:                                    ; preds = %347, %310
  %313 = phi i64 [ 0, %310 ], [ %352, %347 ], !dbg !1667
  %314 = phi i8 [ 1, %310 ], [ %351, %347 ], !dbg !1668
  call void @llvm.dbg.value(metadata i8 %314, metadata !1394, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i64 %313, metadata !1391, metadata !DIExpression()), !dbg !1651
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #10, !dbg !1669
  %315 = add i64 %313, %122, !dbg !1670
  %316 = getelementptr inbounds i8, i8* %2, i64 %315, !dbg !1671
  %317 = sub i64 %311, %315, !dbg !1672
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !1395, metadata !DIExpression(DW_OP_deref)), !dbg !1673
  call void @llvm.dbg.value(metadata i32* %12, metadata !1413, metadata !DIExpression(DW_OP_deref)), !dbg !1674
  %318 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %316, i64 %317, %struct.__mbstate_t* nonnull %11) #10, !dbg !1675
  call void @llvm.dbg.value(metadata i64 %318, metadata !1416, metadata !DIExpression()), !dbg !1676
  switch i64 %318, label %331 [
    i64 0, label %343
    i64 -1, label %344
    i64 -2, label %319
  ], !dbg !1677

; <label>:319:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !1391, metadata !DIExpression()), !dbg !1651
  call void @llvm.dbg.value(metadata i64 %313, metadata !1391, metadata !DIExpression()), !dbg !1651
  call void @llvm.dbg.value(metadata i64 %313, metadata !1391, metadata !DIExpression()), !dbg !1651
  call void @llvm.dbg.value(metadata i64 %313, metadata !1391, metadata !DIExpression()), !dbg !1651
  call void @llvm.dbg.value(metadata i64 %313, metadata !1391, metadata !DIExpression()), !dbg !1651
  call void @llvm.dbg.value(metadata i64 %313, metadata !1391, metadata !DIExpression()), !dbg !1651
  %320 = icmp ugt i64 %311, %315, !dbg !1678
  br i1 %320, label %321, label %344, !dbg !1680

; <label>:321:                                    ; preds = %319, %327
  %322 = phi i64 [ %329, %327 ], [ %315, %319 ]
  %323 = phi i64 [ %328, %327 ], [ %313, %319 ]
  call void @llvm.dbg.value(metadata i64 %323, metadata !1391, metadata !DIExpression()), !dbg !1651
  %324 = getelementptr inbounds i8, i8* %2, i64 %322, !dbg !1681
  %325 = load i8, i8* %324, align 1, !dbg !1681, !tbaa !892
  %326 = icmp eq i8 %325, 0, !dbg !1680
  br i1 %326, label %344, label %327, !dbg !1682

; <label>:327:                                    ; preds = %321
  %328 = add i64 %323, 1, !dbg !1683
  call void @llvm.dbg.value(metadata i64 %328, metadata !1391, metadata !DIExpression()), !dbg !1651
  %329 = add i64 %328, %122, !dbg !1684
  %330 = icmp ult i64 %329, %311, !dbg !1678
  br i1 %330, label %321, label %344, !dbg !1680, !llvm.loop !1685

; <label>:331:                                    ; preds = %312
  %332 = icmp ugt i64 %318, 1, !dbg !1686
  %333 = and i1 %116, %332, !dbg !1689
  call void @llvm.dbg.value(metadata i64 1, metadata !1417, metadata !DIExpression()), !dbg !1690
  br i1 %333, label %334, label %347, !dbg !1689

; <label>:334:                                    ; preds = %331, %340
  %335 = phi i64 [ %341, %340 ], [ 1, %331 ]
  call void @llvm.dbg.value(metadata i64 %335, metadata !1417, metadata !DIExpression()), !dbg !1690
  %336 = add i64 %335, %315, !dbg !1691
  %337 = getelementptr inbounds i8, i8* %2, i64 %336, !dbg !1692
  %338 = load i8, i8* %337, align 1, !dbg !1692, !tbaa !892
  %339 = sext i8 %338 to i32, !dbg !1692
  switch i32 %339, label %340 [
    i32 91, label %358
    i32 92, label %358
    i32 94, label %358
    i32 96, label %358
    i32 124, label %358
  ], !dbg !1693

; <label>:340:                                    ; preds = %334
  %341 = add nuw i64 %335, 1, !dbg !1694
  call void @llvm.dbg.value(metadata i64 %341, metadata !1417, metadata !DIExpression()), !dbg !1690
  %342 = icmp ult i64 %341, %318, !dbg !1686
  br i1 %342, label %334, label %347, !dbg !1695, !llvm.loop !1696

; <label>:343:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !1391, metadata !DIExpression()), !dbg !1651
  call void @llvm.dbg.value(metadata i8 %314, metadata !1394, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i64 %313, metadata !1391, metadata !DIExpression()), !dbg !1651
  call void @llvm.dbg.value(metadata i8 %314, metadata !1394, metadata !DIExpression()), !dbg !1656
  br label %344, !dbg !1698

; <label>:344:                                    ; preds = %327, %321, %312, %343, %319
  %345 = phi i64 [ %313, %319 ], [ %313, %343 ], [ %313, %312 ], [ %323, %321 ], [ %328, %327 ]
  %346 = phi i8 [ 0, %319 ], [ %314, %343 ], [ 0, %312 ], [ 0, %321 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i8 %351, metadata !1394, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i64 %352, metadata !1391, metadata !DIExpression()), !dbg !1651
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #10, !dbg !1698
  br label %355

; <label>:347:                                    ; preds = %340, %331
  %348 = load i32, i32* %12, align 4, !dbg !1699, !tbaa !734
  call void @llvm.dbg.value(metadata i32 %348, metadata !1413, metadata !DIExpression()), !dbg !1674
  %349 = call i32 @iswprint(i32 %348) #10, !dbg !1701
  %350 = icmp eq i32 %349, 0, !dbg !1701
  %351 = select i1 %350, i8 0, i8 %314, !dbg !1702
  call void @llvm.dbg.value(metadata i8 %351, metadata !1394, metadata !DIExpression()), !dbg !1656
  %352 = add i64 %318, %313, !dbg !1703
  call void @llvm.dbg.value(metadata i64 %352, metadata !1391, metadata !DIExpression()), !dbg !1651
  call void @llvm.dbg.value(metadata i8 %351, metadata !1394, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i64 %352, metadata !1391, metadata !DIExpression()), !dbg !1651
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #10, !dbg !1698
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !1395, metadata !DIExpression(DW_OP_deref)), !dbg !1673
  %353 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !1704
  %354 = icmp eq i32 %353, 0, !dbg !1705
  br i1 %354, label %312, label %355, !dbg !1706, !llvm.loop !1707

; <label>:355:                                    ; preds = %347, %344
  %356 = phi i8 [ %346, %344 ], [ %351, %347 ]
  %357 = phi i64 [ %345, %344 ], [ %352, %347 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #10, !dbg !1709
  br label %359

; <label>:358:                                    ; preds = %334, %334, %334, %334, %334
  call void @llvm.dbg.value(metadata i8* %95, metadata !1370, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata i8* %95, metadata !1370, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata i8* %95, metadata !1370, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata i8* %95, metadata !1370, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata i8* %95, metadata !1370, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata i8* %96, metadata !1371, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i8* %96, metadata !1371, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i8* %96, metadata !1371, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i8* %96, metadata !1371, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i8* %96, metadata !1371, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i64 %129, metadata !1364, metadata !DIExpression()), !dbg !1428
  call void @llvm.dbg.value(metadata i64 %129, metadata !1364, metadata !DIExpression()), !dbg !1428
  call void @llvm.dbg.value(metadata i64 %129, metadata !1364, metadata !DIExpression()), !dbg !1428
  call void @llvm.dbg.value(metadata i64 %129, metadata !1364, metadata !DIExpression()), !dbg !1428
  call void @llvm.dbg.value(metadata i64 %129, metadata !1364, metadata !DIExpression()), !dbg !1428
  call void @llvm.dbg.value(metadata i64 %311, metadata !1366, metadata !DIExpression()), !dbg !1430
  call void @llvm.dbg.value(metadata i64 %311, metadata !1366, metadata !DIExpression()), !dbg !1430
  call void @llvm.dbg.value(metadata i64 %311, metadata !1366, metadata !DIExpression()), !dbg !1430
  call void @llvm.dbg.value(metadata i64 %311, metadata !1366, metadata !DIExpression()), !dbg !1430
  call void @llvm.dbg.value(metadata i64 %311, metadata !1366, metadata !DIExpression()), !dbg !1430
  call void @llvm.dbg.value(metadata i8* %95, metadata !1370, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata i8* %95, metadata !1370, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata i8* %95, metadata !1370, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata i8* %95, metadata !1370, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata i8* %95, metadata !1370, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata i8* %96, metadata !1371, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i8* %96, metadata !1371, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i8* %96, metadata !1371, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i8* %96, metadata !1371, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i8* %96, metadata !1371, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i64 %129, metadata !1364, metadata !DIExpression()), !dbg !1428
  call void @llvm.dbg.value(metadata i64 %129, metadata !1364, metadata !DIExpression()), !dbg !1428
  call void @llvm.dbg.value(metadata i64 %129, metadata !1364, metadata !DIExpression()), !dbg !1428
  call void @llvm.dbg.value(metadata i64 %129, metadata !1364, metadata !DIExpression()), !dbg !1428
  call void @llvm.dbg.value(metadata i64 %129, metadata !1364, metadata !DIExpression()), !dbg !1428
  call void @llvm.dbg.value(metadata i64 %311, metadata !1366, metadata !DIExpression()), !dbg !1430
  call void @llvm.dbg.value(metadata i64 %311, metadata !1366, metadata !DIExpression()), !dbg !1430
  call void @llvm.dbg.value(metadata i64 %311, metadata !1366, metadata !DIExpression()), !dbg !1430
  call void @llvm.dbg.value(metadata i64 %311, metadata !1366, metadata !DIExpression()), !dbg !1430
  call void @llvm.dbg.value(metadata i64 %311, metadata !1366, metadata !DIExpression()), !dbg !1430
  call void @llvm.dbg.value(metadata i8* %95, metadata !1370, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata i8* %95, metadata !1370, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata i8* %95, metadata !1370, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata i8* %95, metadata !1370, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata i8* %95, metadata !1370, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata i8* %96, metadata !1371, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i8* %96, metadata !1371, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i8* %96, metadata !1371, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i8* %96, metadata !1371, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i8* %96, metadata !1371, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i64 %129, metadata !1364, metadata !DIExpression()), !dbg !1428
  call void @llvm.dbg.value(metadata i64 %129, metadata !1364, metadata !DIExpression()), !dbg !1428
  call void @llvm.dbg.value(metadata i64 %129, metadata !1364, metadata !DIExpression()), !dbg !1428
  call void @llvm.dbg.value(metadata i64 %129, metadata !1364, metadata !DIExpression()), !dbg !1428
  call void @llvm.dbg.value(metadata i64 %129, metadata !1364, metadata !DIExpression()), !dbg !1428
  call void @llvm.dbg.value(metadata i64 %311, metadata !1366, metadata !DIExpression()), !dbg !1430
  call void @llvm.dbg.value(metadata i64 %311, metadata !1366, metadata !DIExpression()), !dbg !1430
  call void @llvm.dbg.value(metadata i64 %311, metadata !1366, metadata !DIExpression()), !dbg !1430
  call void @llvm.dbg.value(metadata i64 %311, metadata !1366, metadata !DIExpression()), !dbg !1430
  call void @llvm.dbg.value(metadata i64 %311, metadata !1366, metadata !DIExpression()), !dbg !1430
  call void @llvm.dbg.value(metadata i8* %95, metadata !1370, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata i8* %95, metadata !1370, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata i8* %95, metadata !1370, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata i8* %95, metadata !1370, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata i8* %95, metadata !1370, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata i8* %96, metadata !1371, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i8* %96, metadata !1371, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i8* %96, metadata !1371, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i8* %96, metadata !1371, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i8* %96, metadata !1371, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i64 %129, metadata !1364, metadata !DIExpression()), !dbg !1428
  call void @llvm.dbg.value(metadata i64 %129, metadata !1364, metadata !DIExpression()), !dbg !1428
  call void @llvm.dbg.value(metadata i64 %129, metadata !1364, metadata !DIExpression()), !dbg !1428
  call void @llvm.dbg.value(metadata i64 %129, metadata !1364, metadata !DIExpression()), !dbg !1428
  call void @llvm.dbg.value(metadata i64 %129, metadata !1364, metadata !DIExpression()), !dbg !1428
  call void @llvm.dbg.value(metadata i64 %311, metadata !1366, metadata !DIExpression()), !dbg !1430
  call void @llvm.dbg.value(metadata i64 %311, metadata !1366, metadata !DIExpression()), !dbg !1430
  call void @llvm.dbg.value(metadata i64 %311, metadata !1366, metadata !DIExpression()), !dbg !1430
  call void @llvm.dbg.value(metadata i64 %311, metadata !1366, metadata !DIExpression()), !dbg !1430
  call void @llvm.dbg.value(metadata i64 %311, metadata !1366, metadata !DIExpression()), !dbg !1430
  call void @llvm.dbg.value(metadata i32 2, metadata !1367, metadata !DIExpression()), !dbg !1431
  call void @llvm.dbg.value(metadata i32 2, metadata !1367, metadata !DIExpression()), !dbg !1431
  call void @llvm.dbg.value(metadata i32 2, metadata !1367, metadata !DIExpression()), !dbg !1431
  call void @llvm.dbg.value(metadata i32 2, metadata !1367, metadata !DIExpression()), !dbg !1431
  call void @llvm.dbg.value(metadata i32 2, metadata !1367, metadata !DIExpression()), !dbg !1431
  call void @llvm.dbg.value(metadata i8* %95, metadata !1370, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata i8* %95, metadata !1370, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata i8* %95, metadata !1370, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata i8* %95, metadata !1370, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata i8* %95, metadata !1370, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata i8* %96, metadata !1371, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i8* %96, metadata !1371, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i8* %96, metadata !1371, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i8* %96, metadata !1371, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i8* %96, metadata !1371, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i8 %100, metadata !1377, metadata !DIExpression()), !dbg !1440
  call void @llvm.dbg.value(metadata i8 %100, metadata !1377, metadata !DIExpression()), !dbg !1440
  call void @llvm.dbg.value(metadata i8 %100, metadata !1377, metadata !DIExpression()), !dbg !1440
  call void @llvm.dbg.value(metadata i8 %100, metadata !1377, metadata !DIExpression()), !dbg !1440
  call void @llvm.dbg.value(metadata i8 %100, metadata !1377, metadata !DIExpression()), !dbg !1440
  call void @llvm.dbg.value(metadata i64 %129, metadata !1364, metadata !DIExpression()), !dbg !1428
  call void @llvm.dbg.value(metadata i64 %129, metadata !1364, metadata !DIExpression()), !dbg !1428
  call void @llvm.dbg.value(metadata i64 %129, metadata !1364, metadata !DIExpression()), !dbg !1428
  call void @llvm.dbg.value(metadata i64 %129, metadata !1364, metadata !DIExpression()), !dbg !1428
  call void @llvm.dbg.value(metadata i64 %129, metadata !1364, metadata !DIExpression()), !dbg !1428
  call void @llvm.dbg.value(metadata i64 %311, metadata !1366, metadata !DIExpression()), !dbg !1430
  call void @llvm.dbg.value(metadata i64 %311, metadata !1366, metadata !DIExpression()), !dbg !1430
  call void @llvm.dbg.value(metadata i64 %311, metadata !1366, metadata !DIExpression()), !dbg !1430
  call void @llvm.dbg.value(metadata i64 %311, metadata !1366, metadata !DIExpression()), !dbg !1430
  call void @llvm.dbg.value(metadata i64 %311, metadata !1366, metadata !DIExpression()), !dbg !1430
  call void @llvm.dbg.value(metadata i32 %94, metadata !1367, metadata !DIExpression()), !dbg !1431
  call void @llvm.dbg.value(metadata i32 %94, metadata !1367, metadata !DIExpression()), !dbg !1431
  call void @llvm.dbg.value(metadata i32 %94, metadata !1367, metadata !DIExpression()), !dbg !1431
  call void @llvm.dbg.value(metadata i32 %94, metadata !1367, metadata !DIExpression()), !dbg !1431
  call void @llvm.dbg.value(metadata i32 %94, metadata !1367, metadata !DIExpression()), !dbg !1431
  call void @llvm.dbg.value(metadata i8* %95, metadata !1370, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata i8* %95, metadata !1370, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata i8* %95, metadata !1370, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata i8* %95, metadata !1370, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata i8* %95, metadata !1370, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata i8* %96, metadata !1371, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i8* %96, metadata !1371, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i8* %96, metadata !1371, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i8* %96, metadata !1371, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i8* %96, metadata !1371, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i8 %100, metadata !1377, metadata !DIExpression()), !dbg !1440
  call void @llvm.dbg.value(metadata i8 %100, metadata !1377, metadata !DIExpression()), !dbg !1440
  call void @llvm.dbg.value(metadata i8 %100, metadata !1377, metadata !DIExpression()), !dbg !1440
  call void @llvm.dbg.value(metadata i8 %100, metadata !1377, metadata !DIExpression()), !dbg !1440
  call void @llvm.dbg.value(metadata i8 %100, metadata !1377, metadata !DIExpression()), !dbg !1440
  call void @llvm.dbg.value(metadata i64 %129, metadata !1364, metadata !DIExpression()), !dbg !1428
  call void @llvm.dbg.value(metadata i64 %129, metadata !1364, metadata !DIExpression()), !dbg !1428
  call void @llvm.dbg.value(metadata i64 %129, metadata !1364, metadata !DIExpression()), !dbg !1428
  call void @llvm.dbg.value(metadata i64 %129, metadata !1364, metadata !DIExpression()), !dbg !1428
  call void @llvm.dbg.value(metadata i64 %129, metadata !1364, metadata !DIExpression()), !dbg !1428
  call void @llvm.dbg.value(metadata i64 %311, metadata !1366, metadata !DIExpression()), !dbg !1430
  call void @llvm.dbg.value(metadata i64 %311, metadata !1366, metadata !DIExpression()), !dbg !1430
  call void @llvm.dbg.value(metadata i64 %311, metadata !1366, metadata !DIExpression()), !dbg !1430
  call void @llvm.dbg.value(metadata i64 %311, metadata !1366, metadata !DIExpression()), !dbg !1430
  call void @llvm.dbg.value(metadata i64 %311, metadata !1366, metadata !DIExpression()), !dbg !1430
  call void @llvm.dbg.value(metadata i8 %351, metadata !1394, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i64 %352, metadata !1391, metadata !DIExpression()), !dbg !1651
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #10, !dbg !1698
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #10, !dbg !1709
  br label %661

; <label>:359:                                    ; preds = %355, %297
  %360 = phi i64 [ %154, %297 ], [ %311, %355 ], !dbg !1710
  %361 = phi i64 [ 1, %297 ], [ %357, %355 ], !dbg !1711
  %362 = phi i8 [ %305, %297 ], [ %356, %355 ], !dbg !1711
  call void @llvm.dbg.value(metadata i8 %362, metadata !1394, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i64 %361, metadata !1391, metadata !DIExpression()), !dbg !1651
  call void @llvm.dbg.value(metadata i64 %360, metadata !1366, metadata !DIExpression()), !dbg !1430
  %363 = and i8 %362, 1, !dbg !1712
  %364 = icmp ne i8 %363, 0, !dbg !1712
  call void @llvm.dbg.value(metadata i8 %363, metadata !1390, metadata !DIExpression()), !dbg !1507
  %365 = icmp ult i64 %361, 2, !dbg !1713
  %366 = or i1 %364, %115, !dbg !1714
  %367 = and i1 %365, %366, !dbg !1715
  br i1 %367, label %467, label %368, !dbg !1715

; <label>:368:                                    ; preds = %359
  %369 = add i64 %361, %122, !dbg !1716
  call void @llvm.dbg.value(metadata i64 %369, metadata !1424, metadata !DIExpression()), !dbg !1717
  br label %370, !dbg !1718

; <label>:370:                                    ; preds = %463, %368
  %371 = phi i64 [ %122, %368 ], [ %438, %463 ], !dbg !1719
  %372 = phi i64 [ %123, %368 ], [ %464, %463 ], !dbg !1723
  %373 = phi i8 [ %126, %368 ], [ %459, %463 ], !dbg !1444
  %374 = phi i8 [ %157, %368 ], [ %466, %463 ], !dbg !1719
  %375 = phi i8 [ %155, %368 ], [ %436, %463 ], !dbg !1725
  %376 = phi i8 [ 0, %368 ], [ %437, %463 ], !dbg !1506
  call void @llvm.dbg.value(metadata i8 %376, metadata !1389, metadata !DIExpression()), !dbg !1506
  call void @llvm.dbg.value(metadata i8 %375, metadata !1388, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i8 %374, metadata !1383, metadata !DIExpression()), !dbg !1522
  call void @llvm.dbg.value(metadata i8 %373, metadata !1380, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i64 %372, metadata !1373, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.value(metadata i64 %371, metadata !1372, metadata !DIExpression()), !dbg !1496
  br i1 %366, label %423, label %377, !dbg !1729

; <label>:377:                                    ; preds = %370
  br i1 %110, label %378, label %661, !dbg !1730

; <label>:378:                                    ; preds = %377
  call void @llvm.dbg.value(metadata i8 1, metadata !1389, metadata !DIExpression()), !dbg !1506
  %379 = and i8 %373, 1, !dbg !1733
  %380 = icmp eq i8 %379, 0, !dbg !1733
  %381 = and i1 %114, %380, !dbg !1733
  br i1 %381, label %382, label %398, !dbg !1733

; <label>:382:                                    ; preds = %378
  %383 = icmp ult i64 %372, %129, !dbg !1735
  br i1 %383, label %384, label %386, !dbg !1739

; <label>:384:                                    ; preds = %382
  %385 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !1735
  store i8 39, i8* %385, align 1, !dbg !1735, !tbaa !892
  br label %386, !dbg !1735

; <label>:386:                                    ; preds = %384, %382
  %387 = add i64 %372, 1, !dbg !1739
  call void @llvm.dbg.value(metadata i64 %387, metadata !1373, metadata !DIExpression()), !dbg !1436
  %388 = icmp ult i64 %387, %129, !dbg !1740
  br i1 %388, label %389, label %391, !dbg !1743

; <label>:389:                                    ; preds = %386
  %390 = getelementptr inbounds i8, i8* %0, i64 %387, !dbg !1740
  store i8 36, i8* %390, align 1, !dbg !1740, !tbaa !892
  br label %391, !dbg !1740

; <label>:391:                                    ; preds = %389, %386
  %392 = add i64 %372, 2, !dbg !1743
  call void @llvm.dbg.value(metadata i64 %392, metadata !1373, metadata !DIExpression()), !dbg !1436
  %393 = icmp ult i64 %392, %129, !dbg !1744
  br i1 %393, label %394, label %396, !dbg !1747

; <label>:394:                                    ; preds = %391
  %395 = getelementptr inbounds i8, i8* %0, i64 %392, !dbg !1744
  store i8 39, i8* %395, align 1, !dbg !1744, !tbaa !892
  br label %396, !dbg !1744

; <label>:396:                                    ; preds = %394, %391
  %397 = add i64 %372, 3, !dbg !1747
  call void @llvm.dbg.value(metadata i64 %397, metadata !1373, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.value(metadata i8 1, metadata !1380, metadata !DIExpression()), !dbg !1444
  br label %398, !dbg !1748

; <label>:398:                                    ; preds = %378, %396
  %399 = phi i64 [ %397, %396 ], [ %372, %378 ], !dbg !1495
  %400 = phi i8 [ 1, %396 ], [ %373, %378 ], !dbg !1495
  call void @llvm.dbg.value(metadata i8 %400, metadata !1380, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i64 %399, metadata !1373, metadata !DIExpression()), !dbg !1436
  %401 = icmp ult i64 %399, %129, !dbg !1749
  br i1 %401, label %402, label %404, !dbg !1752

; <label>:402:                                    ; preds = %398
  %403 = getelementptr inbounds i8, i8* %0, i64 %399, !dbg !1749
  store i8 92, i8* %403, align 1, !dbg !1749, !tbaa !892
  br label %404, !dbg !1749

; <label>:404:                                    ; preds = %402, %398
  %405 = add i64 %399, 1, !dbg !1752
  call void @llvm.dbg.value(metadata i64 %405, metadata !1373, metadata !DIExpression()), !dbg !1436
  %406 = icmp ult i64 %405, %129, !dbg !1753
  br i1 %406, label %407, label %411, !dbg !1756

; <label>:407:                                    ; preds = %404
  %408 = lshr i8 %374, 6, !dbg !1753
  %409 = or i8 %408, 48, !dbg !1753
  %410 = getelementptr inbounds i8, i8* %0, i64 %405, !dbg !1753
  store i8 %409, i8* %410, align 1, !dbg !1753, !tbaa !892
  br label %411, !dbg !1753

; <label>:411:                                    ; preds = %407, %404
  %412 = add i64 %399, 2, !dbg !1756
  call void @llvm.dbg.value(metadata i64 %412, metadata !1373, metadata !DIExpression()), !dbg !1436
  %413 = icmp ult i64 %412, %129, !dbg !1757
  br i1 %413, label %414, label %419, !dbg !1760

; <label>:414:                                    ; preds = %411
  %415 = lshr i8 %374, 3, !dbg !1757
  %416 = and i8 %415, 7, !dbg !1757
  %417 = or i8 %416, 48, !dbg !1757
  %418 = getelementptr inbounds i8, i8* %0, i64 %412, !dbg !1757
  store i8 %417, i8* %418, align 1, !dbg !1757, !tbaa !892
  br label %419, !dbg !1757

; <label>:419:                                    ; preds = %414, %411
  %420 = add i64 %399, 3, !dbg !1760
  call void @llvm.dbg.value(metadata i64 %420, metadata !1373, metadata !DIExpression()), !dbg !1436
  %421 = and i8 %374, 7, !dbg !1761
  %422 = or i8 %421, 48, !dbg !1762
  call void @llvm.dbg.value(metadata i8 %422, metadata !1383, metadata !DIExpression()), !dbg !1522
  br label %432, !dbg !1763

; <label>:423:                                    ; preds = %370
  %424 = and i8 %375, 1, !dbg !1764
  %425 = icmp eq i8 %424, 0, !dbg !1764
  br i1 %425, label %432, label %426, !dbg !1765

; <label>:426:                                    ; preds = %423
  %427 = icmp ult i64 %372, %129, !dbg !1766
  br i1 %427, label %428, label %430, !dbg !1769

; <label>:428:                                    ; preds = %426
  %429 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !1766
  store i8 92, i8* %429, align 1, !dbg !1766, !tbaa !892
  br label %430, !dbg !1766

; <label>:430:                                    ; preds = %428, %426
  %431 = add i64 %372, 1, !dbg !1769
  call void @llvm.dbg.value(metadata i64 %431, metadata !1373, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.value(metadata i8 0, metadata !1388, metadata !DIExpression()), !dbg !1505
  br label %432, !dbg !1770

; <label>:432:                                    ; preds = %423, %430, %419
  %433 = phi i64 [ %431, %430 ], [ %372, %423 ], [ %420, %419 ], !dbg !1771
  %434 = phi i8 [ %373, %430 ], [ %373, %423 ], [ %400, %419 ], !dbg !1444
  %435 = phi i8 [ %374, %430 ], [ %374, %423 ], [ %422, %419 ], !dbg !1772
  %436 = phi i8 [ 0, %430 ], [ %375, %423 ], [ %375, %419 ], !dbg !1773
  %437 = phi i8 [ %376, %430 ], [ %376, %423 ], [ 1, %419 ], !dbg !1775
  call void @llvm.dbg.value(metadata i8 %437, metadata !1389, metadata !DIExpression()), !dbg !1506
  call void @llvm.dbg.value(metadata i8 %436, metadata !1388, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i8 %435, metadata !1383, metadata !DIExpression()), !dbg !1522
  call void @llvm.dbg.value(metadata i8 %434, metadata !1380, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i64 %433, metadata !1373, metadata !DIExpression()), !dbg !1436
  %438 = add i64 %371, 1, !dbg !1776
  %439 = icmp ugt i64 %369, %438, !dbg !1778
  br i1 %439, label %440, label %562, !dbg !1779

; <label>:440:                                    ; preds = %432
  %441 = and i8 %434, 1, !dbg !1780
  %442 = icmp ne i8 %441, 0, !dbg !1780
  %443 = and i8 %437, 1, !dbg !1780
  %444 = icmp eq i8 %443, 0, !dbg !1780
  %445 = and i1 %442, %444, !dbg !1780
  br i1 %445, label %446, label %457, !dbg !1780

; <label>:446:                                    ; preds = %440
  %447 = icmp ult i64 %433, %129, !dbg !1783
  br i1 %447, label %448, label %450, !dbg !1787

; <label>:448:                                    ; preds = %446
  %449 = getelementptr inbounds i8, i8* %0, i64 %433, !dbg !1783
  store i8 39, i8* %449, align 1, !dbg !1783, !tbaa !892
  br label %450, !dbg !1783

; <label>:450:                                    ; preds = %448, %446
  %451 = add i64 %433, 1, !dbg !1787
  call void @llvm.dbg.value(metadata i64 %451, metadata !1373, metadata !DIExpression()), !dbg !1436
  %452 = icmp ult i64 %451, %129, !dbg !1788
  br i1 %452, label %453, label %455, !dbg !1791

; <label>:453:                                    ; preds = %450
  %454 = getelementptr inbounds i8, i8* %0, i64 %451, !dbg !1788
  store i8 39, i8* %454, align 1, !dbg !1788, !tbaa !892
  br label %455, !dbg !1788

; <label>:455:                                    ; preds = %453, %450
  %456 = add i64 %433, 2, !dbg !1791
  call void @llvm.dbg.value(metadata i64 %456, metadata !1373, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.value(metadata i8 0, metadata !1380, metadata !DIExpression()), !dbg !1444
  br label %457, !dbg !1792

; <label>:457:                                    ; preds = %440, %455
  %458 = phi i64 [ %456, %455 ], [ %433, %440 ], !dbg !1793
  %459 = phi i8 [ 0, %455 ], [ %434, %440 ], !dbg !1495
  call void @llvm.dbg.value(metadata i8 %459, metadata !1380, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i64 %458, metadata !1373, metadata !DIExpression()), !dbg !1436
  %460 = icmp ult i64 %458, %129, !dbg !1794
  br i1 %460, label %461, label %463, !dbg !1796

; <label>:461:                                    ; preds = %457
  %462 = getelementptr inbounds i8, i8* %0, i64 %458, !dbg !1794
  store i8 %435, i8* %462, align 1, !dbg !1794, !tbaa !892
  br label %463, !dbg !1794

; <label>:463:                                    ; preds = %461, %457
  %464 = add i64 %458, 1, !dbg !1796
  call void @llvm.dbg.value(metadata i64 %464, metadata !1373, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.value(metadata i64 %438, metadata !1372, metadata !DIExpression()), !dbg !1496
  %465 = getelementptr inbounds i8, i8* %2, i64 %438, !dbg !1797
  %466 = load i8, i8* %465, align 1, !dbg !1797, !tbaa !892
  call void @llvm.dbg.value(metadata i8 %466, metadata !1383, metadata !DIExpression()), !dbg !1522
  br label %370, !dbg !1798, !llvm.loop !1799

; <label>:467:                                    ; preds = %359, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %271, %188, %191, %205, %209, %210, %268, %264, %259, %273, %294, %243, %219, %214, %211, %208
  %468 = phi i64 [ %122, %294 ], [ %122, %273 ], [ %122, %271 ], [ %122, %268 ], [ %122, %259 ], [ %122, %264 ], [ %122, %208 ], [ %122, %219 ], [ %212, %243 ], [ %122, %214 ], [ %122, %211 ], [ %122, %210 ], [ %122, %209 ], [ %122, %205 ], [ %122, %191 ], [ %122, %188 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %359 ], !dbg !1802
  %469 = phi i64 [ %295, %294 ], [ %123, %273 ], [ %123, %271 ], [ %123, %268 ], [ %123, %259 ], [ %123, %264 ], [ %123, %208 ], [ %123, %219 ], [ %244, %243 ], [ %123, %214 ], [ %123, %211 ], [ %123, %210 ], [ %123, %209 ], [ %206, %205 ], [ %187, %191 ], [ %187, %188 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %359 ], !dbg !1495
  %470 = phi i64 [ %279, %294 ], [ %124, %273 ], [ %124, %271 ], [ %124, %268 ], [ %124, %259 ], [ %124, %264 ], [ %124, %208 ], [ %124, %219 ], [ %124, %243 ], [ %124, %214 ], [ %124, %211 ], [ %124, %210 ], [ %124, %209 ], [ %124, %205 ], [ %124, %191 ], [ %124, %188 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %359 ], !dbg !1437
  %471 = phi i64 [ %154, %294 ], [ %154, %273 ], [ %154, %271 ], [ %154, %268 ], [ -1, %259 ], [ %154, %264 ], [ %154, %208 ], [ %154, %219 ], [ %154, %243 ], [ %154, %214 ], [ %154, %211 ], [ %154, %210 ], [ %154, %209 ], [ %154, %205 ], [ %154, %191 ], [ %154, %188 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %360, %359 ], !dbg !1803
  %472 = phi i8 [ 0, %294 ], [ %126, %273 ], [ %126, %271 ], [ %126, %268 ], [ %126, %259 ], [ %126, %264 ], [ %126, %208 ], [ %126, %219 ], [ %126, %243 ], [ %126, %214 ], [ %126, %211 ], [ %126, %210 ], [ %126, %209 ], [ %182, %205 ], [ %182, %191 ], [ %182, %188 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %359 ], !dbg !1495
  %473 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %127, %271 ], [ %127, %268 ], [ %127, %259 ], [ %127, %264 ], [ %127, %208 ], [ %127, %219 ], [ %127, %243 ], [ %127, %214 ], [ %127, %211 ], [ %127, %210 ], [ %127, %209 ], [ %127, %205 ], [ %127, %191 ], [ %127, %188 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %359 ], !dbg !1495
  %474 = phi i8 [ 39, %294 ], [ 39, %273 ], [ %157, %271 ], [ %157, %268 ], [ %157, %259 ], [ %157, %264 ], [ 63, %208 ], [ 63, %219 ], [ %221, %243 ], [ 63, %214 ], [ 63, %211 ], [ 63, %210 ], [ 63, %209 ], [ 48, %205 ], [ 48, %191 ], [ 48, %188 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %359 ], !dbg !1520
  %475 = phi i8 [ 0, %294 ], [ 0, %273 ], [ 0, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 1, %205 ], [ 1, %191 ], [ 1, %188 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %359 ], !dbg !1520
  %476 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %272, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 0, %205 ], [ 0, %191 ], [ 0, %188 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %363, %359 ], !dbg !1520
  %477 = phi i64 [ %280, %294 ], [ %129, %273 ], [ %129, %271 ], [ %129, %268 ], [ %129, %259 ], [ %129, %264 ], [ %129, %208 ], [ %129, %219 ], [ %129, %243 ], [ %129, %214 ], [ %129, %211 ], [ %129, %210 ], [ %129, %209 ], [ %129, %205 ], [ %129, %191 ], [ %129, %188 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %359 ]
  call void @llvm.dbg.value(metadata i64 %477, metadata !1364, metadata !DIExpression()), !dbg !1428
  call void @llvm.dbg.value(metadata i8 %476, metadata !1390, metadata !DIExpression()), !dbg !1507
  call void @llvm.dbg.value(metadata i8 %475, metadata !1389, metadata !DIExpression()), !dbg !1506
  call void @llvm.dbg.value(metadata i8 %155, metadata !1388, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i8 %474, metadata !1383, metadata !DIExpression()), !dbg !1522
  call void @llvm.dbg.value(metadata i8 %473, metadata !1381, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata i8 %472, metadata !1380, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i64 %471, metadata !1366, metadata !DIExpression()), !dbg !1430
  call void @llvm.dbg.value(metadata i64 %470, metadata !1374, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %469, metadata !1373, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.value(metadata i64 %468, metadata !1372, metadata !DIExpression()), !dbg !1496
  br i1 %105, label %489, label %478, !dbg !1804

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
  br i1 %112, label %490, label %512, !dbg !1806

; <label>:489:                                    ; preds = %467
  br i1 %20, label %512, label %490, !dbg !1807

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
  %501 = lshr i8 %494, 5, !dbg !1808
  %502 = zext i8 %501 to i64, !dbg !1808
  %503 = getelementptr inbounds i32, i32* %6, i64 %502, !dbg !1809
  %504 = load i32, i32* %503, align 4, !dbg !1809, !tbaa !734
  %505 = and i8 %494, 31, !dbg !1810
  %506 = zext i8 %505 to i32, !dbg !1810
  %507 = shl i32 1, %506, !dbg !1811
  %508 = and i32 %504, %507, !dbg !1811
  %509 = icmp eq i32 %508, 0, !dbg !1811
  %510 = icmp eq i8 %155, 0, !dbg !1812
  %511 = and i1 %510, %509, !dbg !1813
  br i1 %511, label %562, label %524, !dbg !1813

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
  %523 = icmp eq i8 %155, 0, !dbg !1812
  br i1 %523, label %562, label %524, !dbg !1814

; <label>:524:                                    ; preds = %255, %490, %512
  %525 = phi i64 [ %500, %490 ], [ %522, %512 ], [ %122, %255 ], !dbg !1815
  %526 = phi i64 [ %499, %490 ], [ %521, %512 ], [ %123, %255 ], !dbg !1495
  %527 = phi i64 [ %498, %490 ], [ %520, %512 ], [ %124, %255 ], !dbg !1437
  %528 = phi i64 [ %497, %490 ], [ %519, %512 ], [ %154, %255 ], !dbg !1803
  %529 = phi i8 [ %496, %490 ], [ %518, %512 ], [ %126, %255 ], !dbg !1444
  %530 = phi i8 [ %495, %490 ], [ %517, %512 ], [ %127, %255 ], !dbg !1445
  %531 = phi i8 [ %494, %490 ], [ %516, %512 ], [ %256, %255 ], !dbg !1816
  %532 = phi i8 [ %492, %490 ], [ %514, %512 ], [ 0, %255 ], !dbg !1520
  %533 = phi i64 [ %491, %490 ], [ %513, %512 ], [ %129, %255 ]
  call void @llvm.dbg.value(metadata i64 %533, metadata !1364, metadata !DIExpression()), !dbg !1428
  call void @llvm.dbg.value(metadata i8 %532, metadata !1390, metadata !DIExpression()), !dbg !1507
  call void @llvm.dbg.value(metadata i8 %531, metadata !1383, metadata !DIExpression()), !dbg !1522
  call void @llvm.dbg.value(metadata i8 %530, metadata !1381, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata i8 %529, metadata !1380, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i64 %528, metadata !1366, metadata !DIExpression()), !dbg !1430
  call void @llvm.dbg.value(metadata i64 %527, metadata !1374, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %526, metadata !1373, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.value(metadata i64 %525, metadata !1372, metadata !DIExpression()), !dbg !1496
  br i1 %110, label %534, label %661, !dbg !1819

; <label>:534:                                    ; preds = %524
  call void @llvm.dbg.value(metadata i8 1, metadata !1389, metadata !DIExpression()), !dbg !1506
  %535 = and i8 %529, 1, !dbg !1821
  %536 = icmp eq i8 %535, 0, !dbg !1821
  %537 = and i1 %114, %536, !dbg !1821
  br i1 %537, label %538, label %554, !dbg !1821

; <label>:538:                                    ; preds = %534
  %539 = icmp ult i64 %526, %533, !dbg !1823
  br i1 %539, label %540, label %542, !dbg !1827

; <label>:540:                                    ; preds = %538
  %541 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !1823
  store i8 39, i8* %541, align 1, !dbg !1823, !tbaa !892
  br label %542, !dbg !1823

; <label>:542:                                    ; preds = %540, %538
  %543 = add i64 %526, 1, !dbg !1827
  call void @llvm.dbg.value(metadata i64 %543, metadata !1373, metadata !DIExpression()), !dbg !1436
  %544 = icmp ult i64 %543, %533, !dbg !1828
  br i1 %544, label %545, label %547, !dbg !1831

; <label>:545:                                    ; preds = %542
  %546 = getelementptr inbounds i8, i8* %0, i64 %543, !dbg !1828
  store i8 36, i8* %546, align 1, !dbg !1828, !tbaa !892
  br label %547, !dbg !1828

; <label>:547:                                    ; preds = %545, %542
  %548 = add i64 %526, 2, !dbg !1831
  call void @llvm.dbg.value(metadata i64 %548, metadata !1373, metadata !DIExpression()), !dbg !1436
  %549 = icmp ult i64 %548, %533, !dbg !1832
  br i1 %549, label %550, label %552, !dbg !1835

; <label>:550:                                    ; preds = %547
  %551 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !1832
  store i8 39, i8* %551, align 1, !dbg !1832, !tbaa !892
  br label %552, !dbg !1832

; <label>:552:                                    ; preds = %550, %547
  %553 = add i64 %526, 3, !dbg !1835
  call void @llvm.dbg.value(metadata i64 %553, metadata !1373, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.value(metadata i8 1, metadata !1380, metadata !DIExpression()), !dbg !1444
  br label %554, !dbg !1836

; <label>:554:                                    ; preds = %534, %552
  %555 = phi i64 [ %553, %552 ], [ %526, %534 ], !dbg !1793
  %556 = phi i8 [ 1, %552 ], [ %529, %534 ], !dbg !1495
  call void @llvm.dbg.value(metadata i8 %556, metadata !1380, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i64 %555, metadata !1373, metadata !DIExpression()), !dbg !1436
  %557 = icmp ult i64 %555, %533, !dbg !1837
  br i1 %557, label %558, label %560, !dbg !1840

; <label>:558:                                    ; preds = %554
  %559 = getelementptr inbounds i8, i8* %0, i64 %555, !dbg !1837
  store i8 92, i8* %559, align 1, !dbg !1837, !tbaa !892
  br label %560, !dbg !1837

; <label>:560:                                    ; preds = %554, %558
  %561 = add i64 %555, 1, !dbg !1840
  call void @llvm.dbg.value(metadata i64 %561, metadata !1373, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.value(metadata i64 %572, metadata !1364, metadata !DIExpression()), !dbg !1428
  call void @llvm.dbg.value(metadata i8 %571, metadata !1390, metadata !DIExpression()), !dbg !1507
  call void @llvm.dbg.value(metadata i8 %570, metadata !1389, metadata !DIExpression()), !dbg !1506
  call void @llvm.dbg.value(metadata i8 %569, metadata !1383, metadata !DIExpression()), !dbg !1522
  call void @llvm.dbg.value(metadata i8 %568, metadata !1381, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata i8 %567, metadata !1380, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i64 %566, metadata !1366, metadata !DIExpression()), !dbg !1430
  call void @llvm.dbg.value(metadata i64 %565, metadata !1374, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %564, metadata !1373, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.value(metadata i64 %563, metadata !1372, metadata !DIExpression()), !dbg !1496
  br label %589, !dbg !1841

; <label>:562:                                    ; preds = %432, %252, %490, %251, %512
  %563 = phi i64 [ %522, %512 ], [ %122, %251 ], [ %500, %490 ], [ %122, %252 ], [ %371, %432 ], !dbg !1815
  %564 = phi i64 [ %521, %512 ], [ %123, %251 ], [ %499, %490 ], [ %123, %252 ], [ %433, %432 ], !dbg !1495
  %565 = phi i64 [ %520, %512 ], [ %124, %251 ], [ %498, %490 ], [ %124, %252 ], [ %124, %432 ], !dbg !1437
  %566 = phi i64 [ %519, %512 ], [ %154, %251 ], [ %497, %490 ], [ %154, %252 ], [ %360, %432 ], !dbg !1803
  %567 = phi i8 [ %518, %512 ], [ %126, %251 ], [ %496, %490 ], [ %126, %252 ], [ %434, %432 ], !dbg !1444
  %568 = phi i8 [ %517, %512 ], [ %127, %251 ], [ %495, %490 ], [ %127, %252 ], [ %127, %432 ], !dbg !1445
  %569 = phi i8 [ %516, %512 ], [ 92, %251 ], [ %494, %490 ], [ 92, %252 ], [ %435, %432 ], !dbg !1844
  %570 = phi i8 [ %515, %512 ], [ 0, %251 ], [ %493, %490 ], [ 0, %252 ], [ %437, %432 ], !dbg !1520
  %571 = phi i8 [ %514, %512 ], [ 0, %251 ], [ %492, %490 ], [ 0, %252 ], [ %363, %432 ], !dbg !1520
  %572 = phi i64 [ %513, %512 ], [ %129, %251 ], [ %491, %490 ], [ %129, %252 ], [ %129, %432 ]
  call void @llvm.dbg.value(metadata i64 %572, metadata !1364, metadata !DIExpression()), !dbg !1428
  call void @llvm.dbg.value(metadata i8 %571, metadata !1390, metadata !DIExpression()), !dbg !1507
  call void @llvm.dbg.value(metadata i8 %570, metadata !1389, metadata !DIExpression()), !dbg !1506
  call void @llvm.dbg.value(metadata i8 %569, metadata !1383, metadata !DIExpression()), !dbg !1522
  call void @llvm.dbg.value(metadata i8 %568, metadata !1381, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata i8 %567, metadata !1380, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i64 %566, metadata !1366, metadata !DIExpression()), !dbg !1430
  call void @llvm.dbg.value(metadata i64 %565, metadata !1374, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %564, metadata !1373, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.value(metadata i64 %563, metadata !1372, metadata !DIExpression()), !dbg !1496
  %573 = and i8 %567, 1, !dbg !1841
  %574 = icmp ne i8 %573, 0, !dbg !1841
  %575 = and i8 %570, 1, !dbg !1841
  %576 = icmp eq i8 %575, 0, !dbg !1841
  %577 = and i1 %574, %576, !dbg !1841
  br i1 %577, label %578, label %589, !dbg !1841

; <label>:578:                                    ; preds = %562
  %579 = icmp ult i64 %564, %572, !dbg !1845
  br i1 %579, label %580, label %582, !dbg !1849

; <label>:580:                                    ; preds = %578
  %581 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !1845
  store i8 39, i8* %581, align 1, !dbg !1845, !tbaa !892
  br label %582, !dbg !1845

; <label>:582:                                    ; preds = %580, %578
  %583 = add i64 %564, 1, !dbg !1849
  call void @llvm.dbg.value(metadata i64 %583, metadata !1373, metadata !DIExpression()), !dbg !1436
  %584 = icmp ult i64 %583, %572, !dbg !1850
  br i1 %584, label %585, label %587, !dbg !1853

; <label>:585:                                    ; preds = %582
  %586 = getelementptr inbounds i8, i8* %0, i64 %583, !dbg !1850
  store i8 39, i8* %586, align 1, !dbg !1850, !tbaa !892
  br label %587, !dbg !1850

; <label>:587:                                    ; preds = %585, %582
  %588 = add i64 %564, 2, !dbg !1853
  call void @llvm.dbg.value(metadata i64 %588, metadata !1373, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.value(metadata i8 0, metadata !1380, metadata !DIExpression()), !dbg !1444
  br label %589, !dbg !1854

; <label>:589:                                    ; preds = %560, %562, %587
  %590 = phi i64 [ %572, %587 ], [ %572, %562 ], [ %533, %560 ]
  %591 = phi i8 [ %571, %587 ], [ %571, %562 ], [ %532, %560 ]
  %592 = phi i8 [ %569, %587 ], [ %569, %562 ], [ %531, %560 ]
  %593 = phi i8 [ %568, %587 ], [ %568, %562 ], [ %530, %560 ]
  %594 = phi i64 [ %566, %587 ], [ %566, %562 ], [ %528, %560 ]
  %595 = phi i64 [ %565, %587 ], [ %565, %562 ], [ %527, %560 ]
  %596 = phi i64 [ %563, %587 ], [ %563, %562 ], [ %525, %560 ]
  %597 = phi i64 [ %588, %587 ], [ %564, %562 ], [ %561, %560 ], !dbg !1793
  %598 = phi i8 [ 0, %587 ], [ %567, %562 ], [ %556, %560 ], !dbg !1495
  call void @llvm.dbg.value(metadata i8 %598, metadata !1380, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i64 %597, metadata !1373, metadata !DIExpression()), !dbg !1436
  %599 = icmp ult i64 %597, %590, !dbg !1855
  br i1 %599, label %600, label %602, !dbg !1858

; <label>:600:                                    ; preds = %589
  %601 = getelementptr inbounds i8, i8* %0, i64 %597, !dbg !1855
  store i8 %592, i8* %601, align 1, !dbg !1855, !tbaa !892
  br label %602, !dbg !1855

; <label>:602:                                    ; preds = %600, %589
  %603 = add i64 %597, 1, !dbg !1858
  call void @llvm.dbg.value(metadata i64 %603, metadata !1373, metadata !DIExpression()), !dbg !1436
  %604 = and i8 %591, 1, !dbg !1859
  %605 = icmp eq i8 %604, 0, !dbg !1859
  %606 = select i1 %605, i8 0, i8 %128, !dbg !1861
  call void @llvm.dbg.value(metadata i8 %606, metadata !1382, metadata !DIExpression()), !dbg !1446
  br label %607, !dbg !1862

; <label>:607:                                    ; preds = %602, %207
  %608 = phi i64 [ %596, %602 ], [ %122, %207 ], !dbg !1815
  %609 = phi i64 [ %603, %602 ], [ %123, %207 ], !dbg !1495
  %610 = phi i64 [ %595, %602 ], [ %124, %207 ], !dbg !1437
  %611 = phi i64 [ %594, %602 ], [ %154, %207 ], !dbg !1803
  %612 = phi i8 [ %598, %602 ], [ %126, %207 ], !dbg !1444
  %613 = phi i8 [ %593, %602 ], [ %127, %207 ], !dbg !1495
  %614 = phi i8 [ %606, %602 ], [ %128, %207 ], !dbg !1446
  %615 = phi i64 [ %590, %602 ], [ %129, %207 ]
  call void @llvm.dbg.value(metadata i64 %615, metadata !1364, metadata !DIExpression()), !dbg !1428
  call void @llvm.dbg.value(metadata i8 %614, metadata !1382, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i8 %613, metadata !1381, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata i8 %612, metadata !1380, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i64 %611, metadata !1366, metadata !DIExpression()), !dbg !1430
  call void @llvm.dbg.value(metadata i64 %610, metadata !1374, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %609, metadata !1373, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.value(metadata i64 %608, metadata !1372, metadata !DIExpression()), !dbg !1496
  %616 = add i64 %608, 1, !dbg !1863
  call void @llvm.dbg.value(metadata i64 %616, metadata !1372, metadata !DIExpression()), !dbg !1496
  br label %121, !dbg !1864, !llvm.loop !1865

; <label>:617:                                    ; preds = %131, %135
  %618 = phi i64 [ -1, %131 ], [ %122, %135 ]
  call void @llvm.dbg.value(metadata i64 %123, metadata !1373, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.value(metadata i64 %123, metadata !1373, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.value(metadata i64 %124, metadata !1374, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %124, metadata !1374, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i8 %126, metadata !1380, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i8 %126, metadata !1380, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i8 %127, metadata !1381, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata i8 %127, metadata !1381, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata i8 %128, metadata !1382, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i8 %128, metadata !1382, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i64 %129, metadata !1364, metadata !DIExpression()), !dbg !1428
  call void @llvm.dbg.value(metadata i64 %129, metadata !1364, metadata !DIExpression()), !dbg !1428
  call void @llvm.dbg.value(metadata i64 %123, metadata !1373, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.value(metadata i64 %123, metadata !1373, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.value(metadata i64 %124, metadata !1374, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %124, metadata !1374, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i8 %126, metadata !1380, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i8 %126, metadata !1380, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i8 %127, metadata !1381, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata i8 %127, metadata !1381, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata i8 %128, metadata !1382, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i8 %128, metadata !1382, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i64 %129, metadata !1364, metadata !DIExpression()), !dbg !1428
  call void @llvm.dbg.value(metadata i64 %129, metadata !1364, metadata !DIExpression()), !dbg !1428
  call void @llvm.dbg.value(metadata i64 %123, metadata !1373, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.value(metadata i64 %123, metadata !1373, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.value(metadata i64 %124, metadata !1374, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %124, metadata !1374, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i8 %126, metadata !1380, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i8 %126, metadata !1380, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i8 %127, metadata !1381, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata i8 %127, metadata !1381, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata i8 %128, metadata !1382, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i8 %128, metadata !1382, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i64 %129, metadata !1364, metadata !DIExpression()), !dbg !1428
  call void @llvm.dbg.value(metadata i64 %129, metadata !1364, metadata !DIExpression()), !dbg !1428
  call void @llvm.dbg.value(metadata i64 %123, metadata !1373, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.value(metadata i64 %123, metadata !1373, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.value(metadata i64 %124, metadata !1374, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %124, metadata !1374, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i8 %126, metadata !1380, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i8 %126, metadata !1380, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i8 %127, metadata !1381, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata i8 %127, metadata !1381, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata i8 %128, metadata !1382, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i8 %128, metadata !1382, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i64 %129, metadata !1364, metadata !DIExpression()), !dbg !1428
  call void @llvm.dbg.value(metadata i64 %129, metadata !1364, metadata !DIExpression()), !dbg !1428
  call void @llvm.dbg.value(metadata i64 %123, metadata !1373, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.value(metadata i64 %123, metadata !1373, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.value(metadata i64 %124, metadata !1374, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %124, metadata !1374, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %618, metadata !1366, metadata !DIExpression()), !dbg !1430
  call void @llvm.dbg.value(metadata i64 %618, metadata !1366, metadata !DIExpression()), !dbg !1430
  call void @llvm.dbg.value(metadata i8 %126, metadata !1380, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i8 %126, metadata !1380, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i8 %127, metadata !1381, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata i8 %127, metadata !1381, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata i8 %128, metadata !1382, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i8 %128, metadata !1382, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i64 %129, metadata !1364, metadata !DIExpression()), !dbg !1428
  call void @llvm.dbg.value(metadata i64 %129, metadata !1364, metadata !DIExpression()), !dbg !1428
  call void @llvm.dbg.value(metadata i64 %123, metadata !1373, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.value(metadata i64 %123, metadata !1373, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.value(metadata i64 %124, metadata !1374, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %124, metadata !1374, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %125, metadata !1366, metadata !DIExpression()), !dbg !1430
  call void @llvm.dbg.value(metadata i64 %125, metadata !1366, metadata !DIExpression()), !dbg !1430
  call void @llvm.dbg.value(metadata i8 %126, metadata !1380, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i8 %126, metadata !1380, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i8 %127, metadata !1381, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata i8 %127, metadata !1381, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata i8 %128, metadata !1382, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i8 %128, metadata !1382, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.value(metadata i64 %129, metadata !1364, metadata !DIExpression()), !dbg !1428
  call void @llvm.dbg.value(metadata i64 %129, metadata !1364, metadata !DIExpression()), !dbg !1428
  %619 = icmp eq i64 %123, 0, !dbg !1867
  %620 = and i1 %114, %619, !dbg !1869
  %621 = xor i1 %620, true, !dbg !1869
  %622 = or i1 %110, %621, !dbg !1869
  br i1 %622, label %623, label %661, !dbg !1869

; <label>:623:                                    ; preds = %617
  %624 = and i1 %114, %110, !dbg !1870
  %625 = xor i1 %624, true, !dbg !1870
  %626 = and i8 %127, 1, !dbg !1872
  %627 = icmp eq i8 %626, 0, !dbg !1872
  %628 = or i1 %627, %625, !dbg !1870
  br i1 %628, label %638, label %629, !dbg !1870

; <label>:629:                                    ; preds = %623
  %630 = and i8 %128, 1, !dbg !1873
  %631 = icmp eq i8 %630, 0, !dbg !1873
  br i1 %631, label %634, label %632, !dbg !1876

; <label>:632:                                    ; preds = %629
  call void @llvm.dbg.value(metadata i64 %618, metadata !1366, metadata !DIExpression()), !dbg !1430
  call void @llvm.dbg.value(metadata i8* %95, metadata !1370, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata i8* %96, metadata !1371, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i64 %124, metadata !1374, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %618, metadata !1366, metadata !DIExpression()), !dbg !1430
  call void @llvm.dbg.value(metadata i8* %95, metadata !1370, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata i8* %96, metadata !1371, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i64 %124, metadata !1374, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %618, metadata !1366, metadata !DIExpression()), !dbg !1430
  call void @llvm.dbg.value(metadata i8* %95, metadata !1370, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata i8* %96, metadata !1371, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i64 %124, metadata !1374, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %618, metadata !1366, metadata !DIExpression()), !dbg !1430
  call void @llvm.dbg.value(metadata i8* %95, metadata !1370, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata i8* %96, metadata !1371, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i64 %124, metadata !1374, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i8* %95, metadata !1370, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata i8* %96, metadata !1371, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i64 %124, metadata !1374, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %618, metadata !1366, metadata !DIExpression()), !dbg !1430
  call void @llvm.dbg.value(metadata i8* %95, metadata !1370, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata i8* %96, metadata !1371, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata i64 %124, metadata !1374, metadata !DIExpression()), !dbg !1437
  call void @llvm.dbg.value(metadata i64 %125, metadata !1366, metadata !DIExpression()), !dbg !1430
  %633 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %618, i32 5, i32 %5, i32* %6, i8* %95, i8* %96), !dbg !1877
  br label %671, !dbg !1878

; <label>:634:                                    ; preds = %629
  %635 = icmp eq i64 %129, 0, !dbg !1879
  %636 = icmp ne i64 %124, 0, !dbg !1881
  %637 = and i1 %636, %635, !dbg !1882
  br i1 %637, label %27, label %638, !dbg !1882

; <label>:638:                                    ; preds = %623, %634
  call void @llvm.dbg.value(metadata i8* %98, metadata !1375, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8* %98, metadata !1375, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %123, metadata !1373, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.value(metadata i64 %123, metadata !1373, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.value(metadata i64 %129, metadata !1364, metadata !DIExpression()), !dbg !1428
  call void @llvm.dbg.value(metadata i64 %129, metadata !1364, metadata !DIExpression()), !dbg !1428
  call void @llvm.dbg.value(metadata i8* %98, metadata !1375, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8* %98, metadata !1375, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %123, metadata !1373, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.value(metadata i64 %123, metadata !1373, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.value(metadata i64 %129, metadata !1364, metadata !DIExpression()), !dbg !1428
  call void @llvm.dbg.value(metadata i64 %129, metadata !1364, metadata !DIExpression()), !dbg !1428
  call void @llvm.dbg.value(metadata i8* %98, metadata !1375, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8* %98, metadata !1375, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %123, metadata !1373, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.value(metadata i64 %123, metadata !1373, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.value(metadata i64 %129, metadata !1364, metadata !DIExpression()), !dbg !1428
  call void @llvm.dbg.value(metadata i64 %129, metadata !1364, metadata !DIExpression()), !dbg !1428
  call void @llvm.dbg.value(metadata i8* %98, metadata !1375, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8* %98, metadata !1375, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %123, metadata !1373, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.value(metadata i64 %123, metadata !1373, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.value(metadata i64 %129, metadata !1364, metadata !DIExpression()), !dbg !1428
  call void @llvm.dbg.value(metadata i64 %129, metadata !1364, metadata !DIExpression()), !dbg !1428
  call void @llvm.dbg.value(metadata i8* %98, metadata !1375, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8* %98, metadata !1375, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %123, metadata !1373, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.value(metadata i64 %123, metadata !1373, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.value(metadata i64 %129, metadata !1364, metadata !DIExpression()), !dbg !1428
  call void @llvm.dbg.value(metadata i64 %129, metadata !1364, metadata !DIExpression()), !dbg !1428
  call void @llvm.dbg.value(metadata i8* %98, metadata !1375, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8* %98, metadata !1375, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %123, metadata !1373, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.value(metadata i64 %123, metadata !1373, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.value(metadata i64 %129, metadata !1364, metadata !DIExpression()), !dbg !1428
  call void @llvm.dbg.value(metadata i64 %129, metadata !1364, metadata !DIExpression()), !dbg !1428
  %639 = icmp ne i8* %98, null, !dbg !1883
  %640 = and i1 %639, %110, !dbg !1885
  br i1 %640, label %641, label %656, !dbg !1885

; <label>:641:                                    ; preds = %638
  call void @llvm.dbg.value(metadata i8* %98, metadata !1375, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %123, metadata !1373, metadata !DIExpression()), !dbg !1436
  %642 = load i8, i8* %98, align 1, !dbg !1886, !tbaa !892
  %643 = icmp eq i8 %642, 0, !dbg !1889
  br i1 %643, label %656, label %644, !dbg !1889

; <label>:644:                                    ; preds = %641, %651
  %645 = phi i8 [ %654, %651 ], [ %642, %641 ]
  %646 = phi i8* [ %653, %651 ], [ %98, %641 ]
  %647 = phi i64 [ %652, %651 ], [ %123, %641 ]
  call void @llvm.dbg.value(metadata i8* %646, metadata !1375, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %647, metadata !1373, metadata !DIExpression()), !dbg !1436
  %648 = icmp ult i64 %647, %129, !dbg !1890
  br i1 %648, label %649, label %651, !dbg !1893

; <label>:649:                                    ; preds = %644
  %650 = getelementptr inbounds i8, i8* %0, i64 %647, !dbg !1890
  store i8 %645, i8* %650, align 1, !dbg !1890, !tbaa !892
  br label %651, !dbg !1890

; <label>:651:                                    ; preds = %649, %644
  %652 = add i64 %647, 1, !dbg !1893
  %653 = getelementptr inbounds i8, i8* %646, i64 1, !dbg !1894
  call void @llvm.dbg.value(metadata i8* %653, metadata !1375, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %652, metadata !1373, metadata !DIExpression()), !dbg !1436
  %654 = load i8, i8* %653, align 1, !dbg !1886, !tbaa !892
  %655 = icmp eq i8 %654, 0, !dbg !1889
  br i1 %655, label %656, label %644, !dbg !1889, !llvm.loop !1895

; <label>:656:                                    ; preds = %651, %641, %638
  %657 = phi i64 [ %123, %638 ], [ %123, %641 ], [ %652, %651 ], !dbg !1436
  call void @llvm.dbg.value(metadata i64 %657, metadata !1373, metadata !DIExpression()), !dbg !1436
  %658 = icmp ult i64 %657, %129, !dbg !1897
  br i1 %658, label %659, label %671, !dbg !1899

; <label>:659:                                    ; preds = %656
  %660 = getelementptr inbounds i8, i8* %0, i64 %657, !dbg !1900
  store i8 0, i8* %660, align 1, !dbg !1901, !tbaa !892
  br label %671, !dbg !1900

; <label>:661:                                    ; preds = %617, %524, %274, %271, %253, %251, %223, %209, %159, %146, %377, %358
  %662 = phi i32 [ 2, %358 ], [ %94, %377 ], [ %94, %146 ], [ %94, %159 ], [ 2, %209 ], [ 5, %223 ], [ 2, %251 ], [ 2, %253 ], [ 2, %271 ], [ 2, %274 ], [ %94, %524 ], [ %94, %617 ]
  %663 = phi i64 [ %311, %358 ], [ %360, %377 ], [ %144, %146 ], [ %154, %159 ], [ %154, %209 ], [ %154, %223 ], [ %154, %251 ], [ %154, %253 ], [ %154, %271 ], [ %154, %274 ], [ %528, %524 ], [ %618, %617 ]
  %664 = phi i64 [ %129, %358 ], [ %129, %377 ], [ %129, %146 ], [ %129, %159 ], [ %129, %209 ], [ %129, %223 ], [ %129, %251 ], [ %129, %253 ], [ %129, %271 ], [ %129, %274 ], [ %533, %524 ], [ %129, %617 ]
  call void @llvm.dbg.value(metadata i64 %664, metadata !1364, metadata !DIExpression()), !dbg !1428
  call void @llvm.dbg.value(metadata i64 %663, metadata !1366, metadata !DIExpression()), !dbg !1430
  %665 = icmp ne i32 %662, 2, !dbg !1902
  %666 = icmp eq i8 %102, 0, !dbg !1904
  %667 = or i1 %665, %666, !dbg !1905
  call void @llvm.dbg.value(metadata i32 4, metadata !1367, metadata !DIExpression()), !dbg !1431
  %668 = select i1 %667, i32 %662, i32 4, !dbg !1905
  call void @llvm.dbg.value(metadata i32 %668, metadata !1367, metadata !DIExpression()), !dbg !1431
  %669 = and i32 %5, -3, !dbg !1906
  %670 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %664, i8* %2, i64 %663, i32 %668, i32 %669, i32* null, i8* %95, i8* %96), !dbg !1907
  br label %671, !dbg !1908

; <label>:671:                                    ; preds = %656, %659, %661, %632
  %672 = phi i64 [ %670, %661 ], [ %633, %632 ], [ %657, %659 ], [ %657, %656 ]
  ret i64 %672, !dbg !1909
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #7 !dbg !1910 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1914, metadata !DIExpression()), !dbg !1918
  call void @llvm.dbg.value(metadata i32 %1, metadata !1915, metadata !DIExpression()), !dbg !1919
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #10, !dbg !1920
  call void @llvm.dbg.value(metadata i8* %3, metadata !1916, metadata !DIExpression()), !dbg !1921
  %4 = icmp eq i8* %3, %0, !dbg !1922
  br i1 %4, label %5, label %71, !dbg !1924

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #10, !dbg !1925
  call void @llvm.dbg.value(metadata i8* %6, metadata !1917, metadata !DIExpression()), !dbg !1926
  call void @llvm.dbg.value(metadata i8* %6, metadata !1927, metadata !DIExpression()), !dbg !1943
  call void @llvm.dbg.value(metadata i8* null, metadata !1933, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i8 85, metadata !1934, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i8 84, metadata !1935, metadata !DIExpression()), !dbg !1948
  call void @llvm.dbg.value(metadata i8 70, metadata !1936, metadata !DIExpression()), !dbg !1949
  call void @llvm.dbg.value(metadata i8 45, metadata !1937, metadata !DIExpression()), !dbg !1950
  call void @llvm.dbg.value(metadata i8 56, metadata !1938, metadata !DIExpression()), !dbg !1951
  call void @llvm.dbg.value(metadata i8 0, metadata !1939, metadata !DIExpression()), !dbg !1952
  call void @llvm.dbg.value(metadata i8 0, metadata !1940, metadata !DIExpression()), !dbg !1953
  call void @llvm.dbg.value(metadata i8 0, metadata !1941, metadata !DIExpression()), !dbg !1954
  call void @llvm.dbg.value(metadata i8 0, metadata !1942, metadata !DIExpression()), !dbg !1955
  %7 = load i8, i8* %6, align 1, !dbg !1956, !tbaa !892
  %8 = and i8 %7, -33, !dbg !1956
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !1956

; <label>:9:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1958, metadata !DIExpression()), !dbg !1972
  call void @llvm.dbg.value(metadata i8* null, metadata !1963, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.value(metadata i8 84, metadata !1964, metadata !DIExpression()), !dbg !1977
  call void @llvm.dbg.value(metadata i8 70, metadata !1965, metadata !DIExpression()), !dbg !1978
  call void @llvm.dbg.value(metadata i8 45, metadata !1966, metadata !DIExpression()), !dbg !1979
  call void @llvm.dbg.value(metadata i8 56, metadata !1967, metadata !DIExpression()), !dbg !1980
  call void @llvm.dbg.value(metadata i8 0, metadata !1968, metadata !DIExpression()), !dbg !1981
  call void @llvm.dbg.value(metadata i8 0, metadata !1969, metadata !DIExpression()), !dbg !1982
  call void @llvm.dbg.value(metadata i8 0, metadata !1970, metadata !DIExpression()), !dbg !1983
  call void @llvm.dbg.value(metadata i8 0, metadata !1971, metadata !DIExpression()), !dbg !1984
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1985
  %11 = load i8, i8* %10, align 1, !dbg !1985, !tbaa !892
  %12 = and i8 %11, -33, !dbg !1985
  %13 = icmp eq i8 %12, 84, !dbg !1985
  br i1 %13, label %14, label %68, !dbg !1985

; <label>:14:                                     ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !1987, metadata !DIExpression()), !dbg !2000
  call void @llvm.dbg.value(metadata i8* null, metadata !1992, metadata !DIExpression()), !dbg !2004
  call void @llvm.dbg.value(metadata i8 70, metadata !1993, metadata !DIExpression()), !dbg !2005
  call void @llvm.dbg.value(metadata i8 45, metadata !1994, metadata !DIExpression()), !dbg !2006
  call void @llvm.dbg.value(metadata i8 56, metadata !1995, metadata !DIExpression()), !dbg !2007
  call void @llvm.dbg.value(metadata i8 0, metadata !1996, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata i8 0, metadata !1997, metadata !DIExpression()), !dbg !2009
  call void @llvm.dbg.value(metadata i8 0, metadata !1998, metadata !DIExpression()), !dbg !2010
  call void @llvm.dbg.value(metadata i8 0, metadata !1999, metadata !DIExpression()), !dbg !2011
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2012
  %16 = load i8, i8* %15, align 1, !dbg !2012, !tbaa !892
  %17 = and i8 %16, -33, !dbg !2012
  %18 = icmp eq i8 %17, 70, !dbg !2012
  br i1 %18, label %19, label %68, !dbg !2012

; <label>:19:                                     ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !2014, metadata !DIExpression()), !dbg !2026
  call void @llvm.dbg.value(metadata i8* null, metadata !2019, metadata !DIExpression()), !dbg !2030
  call void @llvm.dbg.value(metadata i8 45, metadata !2020, metadata !DIExpression()), !dbg !2031
  call void @llvm.dbg.value(metadata i8 56, metadata !2021, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i8 0, metadata !2022, metadata !DIExpression()), !dbg !2033
  call void @llvm.dbg.value(metadata i8 0, metadata !2023, metadata !DIExpression()), !dbg !2034
  call void @llvm.dbg.value(metadata i8 0, metadata !2024, metadata !DIExpression()), !dbg !2035
  call void @llvm.dbg.value(metadata i8 0, metadata !2025, metadata !DIExpression()), !dbg !2036
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2037
  %21 = load i8, i8* %20, align 1, !dbg !2037, !tbaa !892
  %22 = icmp eq i8 %21, 45, !dbg !2037
  br i1 %22, label %23, label %68, !dbg !2039

; <label>:23:                                     ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !2040, metadata !DIExpression()), !dbg !2051
  call void @llvm.dbg.value(metadata i8* null, metadata !2045, metadata !DIExpression()), !dbg !2055
  call void @llvm.dbg.value(metadata i8 56, metadata !2046, metadata !DIExpression()), !dbg !2056
  call void @llvm.dbg.value(metadata i8 0, metadata !2047, metadata !DIExpression()), !dbg !2057
  call void @llvm.dbg.value(metadata i8 0, metadata !2048, metadata !DIExpression()), !dbg !2058
  call void @llvm.dbg.value(metadata i8 0, metadata !2049, metadata !DIExpression()), !dbg !2059
  call void @llvm.dbg.value(metadata i8 0, metadata !2050, metadata !DIExpression()), !dbg !2060
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2061
  %25 = load i8, i8* %24, align 1, !dbg !2061, !tbaa !892
  %26 = icmp eq i8 %25, 56, !dbg !2061
  br i1 %26, label %27, label %68, !dbg !2063

; <label>:27:                                     ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !2064, metadata !DIExpression()), !dbg !2074
  call void @llvm.dbg.value(metadata i8* null, metadata !2069, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i8 0, metadata !2070, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i8 0, metadata !2071, metadata !DIExpression()), !dbg !2080
  call void @llvm.dbg.value(metadata i8 0, metadata !2072, metadata !DIExpression()), !dbg !2081
  call void @llvm.dbg.value(metadata i8 0, metadata !2073, metadata !DIExpression()), !dbg !2082
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2083
  %29 = load i8, i8* %28, align 1, !dbg !2083, !tbaa !892
  %30 = icmp eq i8 %29, 0, !dbg !2083
  br i1 %30, label %31, label %68, !dbg !2085

; <label>:31:                                     ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !2086, !tbaa !892
  %33 = icmp eq i8 %32, 96, !dbg !2087
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.72, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.73, i64 0, i64 0), !dbg !2086
  br label %71, !dbg !2088

; <label>:35:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1958, metadata !DIExpression()), !dbg !2089
  call void @llvm.dbg.value(metadata i8* null, metadata !1963, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i8 66, metadata !1964, metadata !DIExpression()), !dbg !2094
  call void @llvm.dbg.value(metadata i8 49, metadata !1965, metadata !DIExpression()), !dbg !2095
  call void @llvm.dbg.value(metadata i8 56, metadata !1966, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.value(metadata i8 48, metadata !1967, metadata !DIExpression()), !dbg !2097
  call void @llvm.dbg.value(metadata i8 51, metadata !1968, metadata !DIExpression()), !dbg !2098
  call void @llvm.dbg.value(metadata i8 48, metadata !1969, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata i8 0, metadata !1970, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i8 0, metadata !1971, metadata !DIExpression()), !dbg !2101
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2102
  %37 = load i8, i8* %36, align 1, !dbg !2102, !tbaa !892
  %38 = and i8 %37, -33, !dbg !2102
  %39 = icmp eq i8 %38, 66, !dbg !2102
  br i1 %39, label %40, label %68, !dbg !2102

; <label>:40:                                     ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !1987, metadata !DIExpression()), !dbg !2103
  call void @llvm.dbg.value(metadata i8* null, metadata !1992, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i8 49, metadata !1993, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i8 56, metadata !1994, metadata !DIExpression()), !dbg !2107
  call void @llvm.dbg.value(metadata i8 48, metadata !1995, metadata !DIExpression()), !dbg !2108
  call void @llvm.dbg.value(metadata i8 51, metadata !1996, metadata !DIExpression()), !dbg !2109
  call void @llvm.dbg.value(metadata i8 48, metadata !1997, metadata !DIExpression()), !dbg !2110
  call void @llvm.dbg.value(metadata i8 0, metadata !1998, metadata !DIExpression()), !dbg !2111
  call void @llvm.dbg.value(metadata i8 0, metadata !1999, metadata !DIExpression()), !dbg !2112
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2113
  %42 = load i8, i8* %41, align 1, !dbg !2113, !tbaa !892
  %43 = icmp eq i8 %42, 49, !dbg !2113
  br i1 %43, label %44, label %68, !dbg !2114

; <label>:44:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !2014, metadata !DIExpression()), !dbg !2115
  call void @llvm.dbg.value(metadata i8* null, metadata !2019, metadata !DIExpression()), !dbg !2117
  call void @llvm.dbg.value(metadata i8 56, metadata !2020, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8 48, metadata !2021, metadata !DIExpression()), !dbg !2119
  call void @llvm.dbg.value(metadata i8 51, metadata !2022, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.value(metadata i8 48, metadata !2023, metadata !DIExpression()), !dbg !2121
  call void @llvm.dbg.value(metadata i8 0, metadata !2024, metadata !DIExpression()), !dbg !2122
  call void @llvm.dbg.value(metadata i8 0, metadata !2025, metadata !DIExpression()), !dbg !2123
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2124
  %46 = load i8, i8* %45, align 1, !dbg !2124, !tbaa !892
  %47 = icmp eq i8 %46, 56, !dbg !2124
  br i1 %47, label %48, label %68, !dbg !2125

; <label>:48:                                     ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !2040, metadata !DIExpression()), !dbg !2126
  call void @llvm.dbg.value(metadata i8* null, metadata !2045, metadata !DIExpression()), !dbg !2128
  call void @llvm.dbg.value(metadata i8 48, metadata !2046, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i8 51, metadata !2047, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i8 48, metadata !2048, metadata !DIExpression()), !dbg !2131
  call void @llvm.dbg.value(metadata i8 0, metadata !2049, metadata !DIExpression()), !dbg !2132
  call void @llvm.dbg.value(metadata i8 0, metadata !2050, metadata !DIExpression()), !dbg !2133
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2134
  %50 = load i8, i8* %49, align 1, !dbg !2134, !tbaa !892
  %51 = icmp eq i8 %50, 48, !dbg !2134
  br i1 %51, label %52, label %68, !dbg !2135

; <label>:52:                                     ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !2064, metadata !DIExpression()), !dbg !2136
  call void @llvm.dbg.value(metadata i8* null, metadata !2069, metadata !DIExpression()), !dbg !2138
  call void @llvm.dbg.value(metadata i8 51, metadata !2070, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i8 48, metadata !2071, metadata !DIExpression()), !dbg !2140
  call void @llvm.dbg.value(metadata i8 0, metadata !2072, metadata !DIExpression()), !dbg !2141
  call void @llvm.dbg.value(metadata i8 0, metadata !2073, metadata !DIExpression()), !dbg !2142
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2143
  %54 = load i8, i8* %53, align 1, !dbg !2143, !tbaa !892
  %55 = icmp eq i8 %54, 51, !dbg !2143
  br i1 %55, label %56, label %68, !dbg !2144

; <label>:56:                                     ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !2145, metadata !DIExpression()), !dbg !2154
  call void @llvm.dbg.value(metadata i8* null, metadata !2150, metadata !DIExpression()), !dbg !2158
  call void @llvm.dbg.value(metadata i8 48, metadata !2151, metadata !DIExpression()), !dbg !2159
  call void @llvm.dbg.value(metadata i8 0, metadata !2152, metadata !DIExpression()), !dbg !2160
  call void @llvm.dbg.value(metadata i8 0, metadata !2153, metadata !DIExpression()), !dbg !2161
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2162
  %58 = load i8, i8* %57, align 1, !dbg !2162, !tbaa !892
  %59 = icmp eq i8 %58, 48, !dbg !2162
  br i1 %59, label %60, label %68, !dbg !2164

; <label>:60:                                     ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !2165, metadata !DIExpression()), !dbg !2173
  call void @llvm.dbg.value(metadata i8* null, metadata !2170, metadata !DIExpression()), !dbg !2177
  call void @llvm.dbg.value(metadata i8 0, metadata !2171, metadata !DIExpression()), !dbg !2178
  call void @llvm.dbg.value(metadata i8 0, metadata !2172, metadata !DIExpression()), !dbg !2179
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2180
  %62 = load i8, i8* %61, align 1, !dbg !2180, !tbaa !892
  %63 = icmp eq i8 %62, 0, !dbg !2180
  br i1 %63, label %64, label %68, !dbg !2182

; <label>:64:                                     ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !2183, !tbaa !892
  %66 = icmp eq i8 %65, 96, !dbg !2184
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.74, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.75, i64 0, i64 0), !dbg !2183
  br label %71, !dbg !2185

; <label>:68:                                     ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !2186
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.71, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.70, i64 0, i64 0), !dbg !2187
  br label %71, !dbg !2188

; <label>:71:                                     ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !2189
  ret i8* %72, !dbg !2190
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
define dso_local i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #7 !dbg !2191 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2195, metadata !DIExpression()), !dbg !2198
  call void @llvm.dbg.value(metadata i64 %1, metadata !2196, metadata !DIExpression()), !dbg !2199
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2197, metadata !DIExpression()), !dbg !2200
  call void @llvm.dbg.value(metadata i8* %0, metadata !2201, metadata !DIExpression()) #10, !dbg !2214
  call void @llvm.dbg.value(metadata i64 %1, metadata !2206, metadata !DIExpression()) #10, !dbg !2216
  call void @llvm.dbg.value(metadata i64* null, metadata !2207, metadata !DIExpression()) #10, !dbg !2217
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2208, metadata !DIExpression()) #10, !dbg !2218
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2219
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2219
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2209, metadata !DIExpression()) #10, !dbg !2220
  %6 = tail call i32* @__errno_location() #17, !dbg !2221
  %7 = load i32, i32* %6, align 4, !dbg !2221, !tbaa !734
  call void @llvm.dbg.value(metadata i32 %7, metadata !2210, metadata !DIExpression()) #10, !dbg !2222
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2223
  %9 = load i32, i32* %8, align 4, !dbg !2223, !tbaa !1296
  %10 = or i32 %9, 1, !dbg !2224
  call void @llvm.dbg.value(metadata i32 %10, metadata !2211, metadata !DIExpression()) #10, !dbg !2225
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2226
  %12 = load i32, i32* %11, align 8, !dbg !2226, !tbaa !1237
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2227
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2228
  %15 = load i8*, i8** %14, align 8, !dbg !2228, !tbaa !1322
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2229
  %17 = load i8*, i8** %16, align 8, !dbg !2229, !tbaa !1325
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #10, !dbg !2230
  %19 = add i64 %18, 1, !dbg !2231
  call void @llvm.dbg.value(metadata i64 %19, metadata !2212, metadata !DIExpression()) #10, !dbg !2232
  call void @llvm.dbg.value(metadata i64 %19, metadata !2233, metadata !DIExpression()) #10, !dbg !2238
  %20 = tail call noalias i8* @xmalloc(i64 %19) #10, !dbg !2240
  call void @llvm.dbg.value(metadata i8* %20, metadata !2213, metadata !DIExpression()) #10, !dbg !2241
  %21 = load i32, i32* %11, align 8, !dbg !2242, !tbaa !1237
  %22 = load i8*, i8** %14, align 8, !dbg !2243, !tbaa !1322
  %23 = load i8*, i8** %16, align 8, !dbg !2244, !tbaa !1325
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #10, !dbg !2245
  store i32 %7, i32* %6, align 4, !dbg !2246, !tbaa !734
  ret i8* %20, !dbg !2247
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #7 !dbg !2202 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2201, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %1, metadata !2206, metadata !DIExpression()), !dbg !2249
  call void @llvm.dbg.value(metadata i64* %2, metadata !2207, metadata !DIExpression()), !dbg !2250
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2208, metadata !DIExpression()), !dbg !2251
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2252
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2252
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2209, metadata !DIExpression()), !dbg !2253
  %7 = tail call i32* @__errno_location() #17, !dbg !2254
  %8 = load i32, i32* %7, align 4, !dbg !2254, !tbaa !734
  call void @llvm.dbg.value(metadata i32 %8, metadata !2210, metadata !DIExpression()), !dbg !2255
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2256
  %10 = load i32, i32* %9, align 4, !dbg !2256, !tbaa !1296
  %11 = icmp ne i64* %2, null, !dbg !2257
  %12 = xor i1 %11, true, !dbg !2257
  %13 = zext i1 %12 to i32, !dbg !2257
  %14 = or i32 %10, %13, !dbg !2258
  call void @llvm.dbg.value(metadata i32 %14, metadata !2211, metadata !DIExpression()), !dbg !2259
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2260
  %16 = load i32, i32* %15, align 8, !dbg !2260, !tbaa !1237
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2261
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2262
  %19 = load i8*, i8** %18, align 8, !dbg !2262, !tbaa !1322
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2263
  %21 = load i8*, i8** %20, align 8, !dbg !2263, !tbaa !1325
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !2264
  %23 = add i64 %22, 1, !dbg !2265
  call void @llvm.dbg.value(metadata i64 %23, metadata !2212, metadata !DIExpression()), !dbg !2266
  call void @llvm.dbg.value(metadata i64 %23, metadata !2233, metadata !DIExpression()) #10, !dbg !2267
  %24 = tail call noalias i8* @xmalloc(i64 %23) #10, !dbg !2269
  call void @llvm.dbg.value(metadata i8* %24, metadata !2213, metadata !DIExpression()), !dbg !2270
  %25 = load i32, i32* %15, align 8, !dbg !2271, !tbaa !1237
  %26 = load i8*, i8** %18, align 8, !dbg !2272, !tbaa !1322
  %27 = load i8*, i8** %20, align 8, !dbg !2273, !tbaa !1325
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !2274
  store i32 %8, i32* %7, align 4, !dbg !2275, !tbaa !734
  br i1 %11, label %29, label %30, !dbg !2276

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2277, !tbaa !895
  br label %30, !dbg !2279

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2280
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #7 !dbg !2281 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2285, !tbaa !663
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2283, metadata !DIExpression()), !dbg !2286
  call void @llvm.dbg.value(metadata i32 1, metadata !2284, metadata !DIExpression()), !dbg !2287
  %2 = load i32, i32* @nslots, align 4, !dbg !2288, !tbaa !734
  %3 = icmp sgt i32 %2, 1, !dbg !2291
  br i1 %3, label %4, label %12, !dbg !2292

; <label>:4:                                      ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !2284, metadata !DIExpression()), !dbg !2287
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !2293
  %7 = load i8*, i8** %6, align 8, !dbg !2293, !tbaa !2294
  tail call void @free(i8* %7) #10, !dbg !2296
  %8 = add nuw nsw i64 %5, 1, !dbg !2297
  call void @llvm.dbg.value(metadata i32 undef, metadata !2284, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2287
  %9 = load i32, i32* @nslots, align 4, !dbg !2288, !tbaa !734
  %10 = sext i32 %9 to i64, !dbg !2291
  %11 = icmp slt i64 %8, %10, !dbg !2291
  br i1 %11, label %4, label %12, !dbg !2292, !llvm.loop !2298

; <label>:12:                                     ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2300
  %14 = load i8*, i8** %13, align 8, !dbg !2300, !tbaa !2294
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2302
  br i1 %15, label %17, label %16, !dbg !2303

; <label>:16:                                     ; preds = %12
  tail call void @free(i8* %14) #10, !dbg !2304
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2306, !tbaa !2307
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2308, !tbaa !2294
  br label %17, !dbg !2309

; <label>:17:                                     ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2310
  br i1 %18, label %21, label %19, !dbg !2312

; <label>:19:                                     ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2313
  tail call void @free(i8* %20) #10, !dbg !2315
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2316, !tbaa !663
  br label %21, !dbg !2317

; <label>:21:                                     ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !2318, !tbaa !734
  ret void, !dbg !2319
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32, i8*) local_unnamed_addr #7 !dbg !2320 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2324, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata i8* %1, metadata !2325, metadata !DIExpression()), !dbg !2327
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2328
  ret i8* %3, !dbg !2329
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #7 !dbg !2330 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2334, metadata !DIExpression()), !dbg !2349
  call void @llvm.dbg.value(metadata i8* %1, metadata !2335, metadata !DIExpression()), !dbg !2350
  call void @llvm.dbg.value(metadata i64 %2, metadata !2336, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2337, metadata !DIExpression()), !dbg !2352
  %5 = tail call i32* @__errno_location() #17, !dbg !2353
  %6 = load i32, i32* %5, align 4, !dbg !2353, !tbaa !734
  call void @llvm.dbg.value(metadata i32 %6, metadata !2338, metadata !DIExpression()), !dbg !2354
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2355, !tbaa !663
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2339, metadata !DIExpression()), !dbg !2356
  %8 = icmp slt i32 %0, 0, !dbg !2357
  br i1 %8, label %9, label %10, !dbg !2359

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2360
  unreachable, !dbg !2360

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2361, !tbaa !734
  %12 = icmp sgt i32 %11, %0, !dbg !2362
  br i1 %12, label %34, label %13, !dbg !2363

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2364
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2343, metadata !DIExpression()), !dbg !2365
  %15 = icmp eq i32 %0, 2147483647, !dbg !2366
  br i1 %15, label %16, label %17, !dbg !2368

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2369
  unreachable, !dbg !2369

; <label>:17:                                     ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2370
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2370
  %20 = add nsw i32 %0, 1, !dbg !2371
  %21 = sext i32 %20 to i64, !dbg !2372
  %22 = shl nsw i64 %21, 4, !dbg !2373
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #10, !dbg !2374
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2374
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2339, metadata !DIExpression()), !dbg !2356
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2375, !tbaa !663
  br i1 %14, label %25, label %26, !dbg !2376

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2377, !tbaa.struct !2379
  br label %26, !dbg !2380

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2381, !tbaa !734
  %28 = sext i32 %27 to i64, !dbg !2382
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2382
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2383
  %31 = sub nsw i32 %20, %27, !dbg !2384
  %32 = sext i32 %31 to i64, !dbg !2385
  %33 = shl nsw i64 %32, 4, !dbg !2386
  tail call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 %33, i1 false), !dbg !2383
  store i32 %20, i32* @nslots, align 4, !dbg !2387, !tbaa !734
  br label %34, !dbg !2388

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2389
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2339, metadata !DIExpression()), !dbg !2356
  %36 = sext i32 %0 to i64, !dbg !2390
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2391
  %38 = load i64, i64* %37, align 8, !dbg !2391, !tbaa !2307
  call void @llvm.dbg.value(metadata i64 %38, metadata !2344, metadata !DIExpression()), !dbg !2392
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2393
  %40 = load i8*, i8** %39, align 8, !dbg !2393, !tbaa !2294
  call void @llvm.dbg.value(metadata i8* %40, metadata !2346, metadata !DIExpression()), !dbg !2394
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2395
  %42 = load i32, i32* %41, align 4, !dbg !2395, !tbaa !1296
  %43 = or i32 %42, 1, !dbg !2396
  call void @llvm.dbg.value(metadata i32 %43, metadata !2347, metadata !DIExpression()), !dbg !2397
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2398
  %45 = load i32, i32* %44, align 8, !dbg !2398, !tbaa !1237
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2399
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2400
  %48 = load i8*, i8** %47, align 8, !dbg !2400, !tbaa !1322
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2401
  %50 = load i8*, i8** %49, align 8, !dbg !2401, !tbaa !1325
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2402
  call void @llvm.dbg.value(metadata i64 %51, metadata !2348, metadata !DIExpression()), !dbg !2403
  %52 = icmp ugt i64 %38, %51, !dbg !2404
  br i1 %52, label %63, label %53, !dbg !2406

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2407
  call void @llvm.dbg.value(metadata i64 %54, metadata !2344, metadata !DIExpression()), !dbg !2392
  store i64 %54, i64* %37, align 8, !dbg !2409, !tbaa !2307
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2410
  br i1 %55, label %57, label %56, !dbg !2412

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #10, !dbg !2413
  br label %57, !dbg !2413

; <label>:57:                                     ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !2233, metadata !DIExpression()) #10, !dbg !2414
  %58 = tail call noalias i8* @xmalloc(i64 %54) #10, !dbg !2416
  call void @llvm.dbg.value(metadata i8* %58, metadata !2346, metadata !DIExpression()), !dbg !2394
  store i8* %58, i8** %39, align 8, !dbg !2417, !tbaa !2294
  %59 = load i32, i32* %44, align 8, !dbg !2418, !tbaa !1237
  %60 = load i8*, i8** %47, align 8, !dbg !2419, !tbaa !1322
  %61 = load i8*, i8** %49, align 8, !dbg !2420, !tbaa !1325
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2421
  br label %63, !dbg !2422

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2423
  call void @llvm.dbg.value(metadata i8* %64, metadata !2346, metadata !DIExpression()), !dbg !2394
  store i32 %6, i32* %5, align 4, !dbg !2424, !tbaa !734
  ret i8* %64, !dbg !2425
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2426 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2430, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata i8* %1, metadata !2431, metadata !DIExpression()), !dbg !2434
  call void @llvm.dbg.value(metadata i64 %2, metadata !2432, metadata !DIExpression()), !dbg !2435
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2436
  ret i8* %4, !dbg !2437
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8*) local_unnamed_addr #7 !dbg !2438 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2442, metadata !DIExpression()), !dbg !2443
  call void @llvm.dbg.value(metadata i32 0, metadata !2324, metadata !DIExpression()) #10, !dbg !2444
  call void @llvm.dbg.value(metadata i8* %0, metadata !2325, metadata !DIExpression()) #10, !dbg !2446
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2447
  ret i8* %2, !dbg !2448
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8*, i64) local_unnamed_addr #7 !dbg !2449 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2453, metadata !DIExpression()), !dbg !2455
  call void @llvm.dbg.value(metadata i64 %1, metadata !2454, metadata !DIExpression()), !dbg !2456
  call void @llvm.dbg.value(metadata i32 0, metadata !2430, metadata !DIExpression()) #10, !dbg !2457
  call void @llvm.dbg.value(metadata i8* %0, metadata !2431, metadata !DIExpression()) #10, !dbg !2459
  call void @llvm.dbg.value(metadata i64 %1, metadata !2432, metadata !DIExpression()) #10, !dbg !2460
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2461
  ret i8* %3, !dbg !2462
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #7 !dbg !2463 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2467, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i32 %1, metadata !2468, metadata !DIExpression()), !dbg !2472
  call void @llvm.dbg.value(metadata i8* %2, metadata !2469, metadata !DIExpression()), !dbg !2473
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2474
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2474
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2470, metadata !DIExpression(DW_OP_deref)), !dbg !2475
  call void @llvm.dbg.value(metadata i32 %1, metadata !2476, metadata !DIExpression()) #10, !dbg !2482
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #10, !dbg !2484, !alias.scope !2485
  %6 = icmp eq i32 %1, 10, !dbg !2488
  br i1 %6, label %7, label %8, !dbg !2490

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2491, !noalias !2485
  unreachable, !dbg !2491

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2492
  store i32 %1, i32* %9, align 8, !dbg !2493, !tbaa !1237, !alias.scope !2485
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2470, metadata !DIExpression(DW_OP_deref)), !dbg !2475
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2481, metadata !DIExpression(DW_OP_deref)), !dbg !2484
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2494
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2495
  ret i8* %10, !dbg !2496
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #7 !dbg !2497 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2501, metadata !DIExpression()), !dbg !2506
  call void @llvm.dbg.value(metadata i32 %1, metadata !2502, metadata !DIExpression()), !dbg !2507
  call void @llvm.dbg.value(metadata i8* %2, metadata !2503, metadata !DIExpression()), !dbg !2508
  call void @llvm.dbg.value(metadata i64 %3, metadata !2504, metadata !DIExpression()), !dbg !2509
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2510
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2510
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2505, metadata !DIExpression(DW_OP_deref)), !dbg !2511
  call void @llvm.dbg.value(metadata i32 %1, metadata !2476, metadata !DIExpression()) #10, !dbg !2512
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %6, i8 0, i64 56, i1 false) #10, !dbg !2514, !alias.scope !2515
  %7 = icmp eq i32 %1, 10, !dbg !2518
  br i1 %7, label %8, label %9, !dbg !2519

; <label>:8:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2520, !noalias !2515
  unreachable, !dbg !2520

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2521
  store i32 %1, i32* %10, align 8, !dbg !2522, !tbaa !1237, !alias.scope !2515
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2505, metadata !DIExpression(DW_OP_deref)), !dbg !2511
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2481, metadata !DIExpression(DW_OP_deref)), !dbg !2514
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2523
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2524
  ret i8* %11, !dbg !2525
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32, i8*) local_unnamed_addr #7 !dbg !2526 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2530, metadata !DIExpression()), !dbg !2532
  call void @llvm.dbg.value(metadata i8* %1, metadata !2531, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i32 0, metadata !2467, metadata !DIExpression()) #10, !dbg !2534
  call void @llvm.dbg.value(metadata i32 %0, metadata !2468, metadata !DIExpression()) #10, !dbg !2536
  call void @llvm.dbg.value(metadata i8* %1, metadata !2469, metadata !DIExpression()) #10, !dbg !2537
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2538
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2538
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2470, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2539
  call void @llvm.dbg.value(metadata i32 %0, metadata !2476, metadata !DIExpression()) #10, !dbg !2540
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %4, i8 0, i64 56, i1 false) #10, !dbg !2542, !alias.scope !2543
  %5 = icmp eq i32 %0, 10, !dbg !2546
  br i1 %5, label %6, label %7, !dbg !2547

; <label>:6:                                      ; preds = %2
  tail call void @abort() #15, !dbg !2548, !noalias !2543
  unreachable, !dbg !2548

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2549
  store i32 %0, i32* %8, align 8, !dbg !2550, !tbaa !1237, !alias.scope !2543
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2470, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2539
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2481, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2542
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !2551
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2552
  ret i8* %9, !dbg !2553
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2554 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2558, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata i8* %1, metadata !2559, metadata !DIExpression()), !dbg !2562
  call void @llvm.dbg.value(metadata i64 %2, metadata !2560, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata i32 0, metadata !2501, metadata !DIExpression()) #10, !dbg !2564
  call void @llvm.dbg.value(metadata i32 %0, metadata !2502, metadata !DIExpression()) #10, !dbg !2566
  call void @llvm.dbg.value(metadata i8* %1, metadata !2503, metadata !DIExpression()) #10, !dbg !2567
  call void @llvm.dbg.value(metadata i64 %2, metadata !2504, metadata !DIExpression()) #10, !dbg !2568
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2569
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2569
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2505, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2570
  call void @llvm.dbg.value(metadata i32 %0, metadata !2476, metadata !DIExpression()) #10, !dbg !2571
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #10, !dbg !2573, !alias.scope !2574
  %6 = icmp eq i32 %0, 10, !dbg !2577
  br i1 %6, label %7, label %8, !dbg !2578

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2579, !noalias !2574
  unreachable, !dbg !2579

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2580
  store i32 %0, i32* %9, align 8, !dbg !2581, !tbaa !1237, !alias.scope !2574
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2505, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2570
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2481, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2573
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #10, !dbg !2582
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2583
  ret i8* %10, !dbg !2584
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #7 !dbg !2585 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2589, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i64 %1, metadata !2590, metadata !DIExpression()), !dbg !2594
  call void @llvm.dbg.value(metadata i8 %2, metadata !2591, metadata !DIExpression()), !dbg !2595
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2596
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2596
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2597, !tbaa.struct !2598
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2592, metadata !DIExpression(DW_OP_deref)), !dbg !2599
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1256, metadata !DIExpression()), !dbg !2600
  call void @llvm.dbg.value(metadata i8 %2, metadata !1257, metadata !DIExpression()), !dbg !2602
  call void @llvm.dbg.value(metadata i32 1, metadata !1258, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i8 %2, metadata !1259, metadata !DIExpression()), !dbg !2604
  %6 = lshr i8 %2, 5, !dbg !2605
  %7 = zext i8 %6 to i64, !dbg !2605
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2606
  call void @llvm.dbg.value(metadata i32* %8, metadata !1260, metadata !DIExpression()), !dbg !2607
  %9 = and i8 %2, 31, !dbg !2608
  %10 = zext i8 %9 to i32, !dbg !2608
  call void @llvm.dbg.value(metadata i32 %10, metadata !1262, metadata !DIExpression()), !dbg !2609
  %11 = load i32, i32* %8, align 4, !dbg !2610, !tbaa !734
  %12 = lshr i32 %11, %10, !dbg !2611
  %13 = and i32 %12, 1, !dbg !2612
  call void @llvm.dbg.value(metadata i32 %13, metadata !1263, metadata !DIExpression()), !dbg !2613
  %14 = xor i32 %13, 1, !dbg !2614
  %15 = shl i32 %14, %10, !dbg !2615
  %16 = xor i32 %15, %11, !dbg !2616
  store i32 %16, i32* %8, align 4, !dbg !2616, !tbaa !734
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2592, metadata !DIExpression(DW_OP_deref)), !dbg !2599
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2617
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2618
  ret i8* %17, !dbg !2619
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #7 !dbg !2620 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2624, metadata !DIExpression()), !dbg !2626
  call void @llvm.dbg.value(metadata i8 %1, metadata !2625, metadata !DIExpression()), !dbg !2627
  call void @llvm.dbg.value(metadata i8* %0, metadata !2589, metadata !DIExpression()) #10, !dbg !2628
  call void @llvm.dbg.value(metadata i64 -1, metadata !2590, metadata !DIExpression()) #10, !dbg !2630
  call void @llvm.dbg.value(metadata i8 %1, metadata !2591, metadata !DIExpression()) #10, !dbg !2631
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2632
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2632
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2633, !tbaa.struct !2598
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2592, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2634
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1256, metadata !DIExpression()) #10, !dbg !2635
  call void @llvm.dbg.value(metadata i8 %1, metadata !1257, metadata !DIExpression()) #10, !dbg !2637
  call void @llvm.dbg.value(metadata i32 1, metadata !1258, metadata !DIExpression()) #10, !dbg !2638
  call void @llvm.dbg.value(metadata i8 %1, metadata !1259, metadata !DIExpression()) #10, !dbg !2639
  %5 = lshr i8 %1, 5, !dbg !2640
  %6 = zext i8 %5 to i64, !dbg !2640
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2641
  call void @llvm.dbg.value(metadata i32* %7, metadata !1260, metadata !DIExpression()) #10, !dbg !2642
  %8 = and i8 %1, 31, !dbg !2643
  %9 = zext i8 %8 to i32, !dbg !2643
  call void @llvm.dbg.value(metadata i32 %9, metadata !1262, metadata !DIExpression()) #10, !dbg !2644
  %10 = load i32, i32* %7, align 4, !dbg !2645, !tbaa !734
  %11 = lshr i32 %10, %9, !dbg !2646
  %12 = and i32 %11, 1, !dbg !2647
  call void @llvm.dbg.value(metadata i32 %12, metadata !1263, metadata !DIExpression()) #10, !dbg !2648
  %13 = xor i32 %12, 1, !dbg !2649
  %14 = shl i32 %13, %9, !dbg !2650
  %15 = xor i32 %14, %10, !dbg !2651
  store i32 %15, i32* %7, align 4, !dbg !2651, !tbaa !734
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2592, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2634
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !2652
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2653
  ret i8* %16, !dbg !2654
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8*) local_unnamed_addr #7 !dbg !2655 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2657, metadata !DIExpression()), !dbg !2658
  call void @llvm.dbg.value(metadata i8* %0, metadata !2624, metadata !DIExpression()) #10, !dbg !2659
  call void @llvm.dbg.value(metadata i8 58, metadata !2625, metadata !DIExpression()) #10, !dbg !2661
  call void @llvm.dbg.value(metadata i8* %0, metadata !2589, metadata !DIExpression()) #10, !dbg !2662
  call void @llvm.dbg.value(metadata i64 -1, metadata !2590, metadata !DIExpression()) #10, !dbg !2664
  call void @llvm.dbg.value(metadata i8 58, metadata !2591, metadata !DIExpression()) #10, !dbg !2665
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2666
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #10, !dbg !2666
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2667, !tbaa.struct !2598
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2592, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2668
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1256, metadata !DIExpression()) #10, !dbg !2669
  call void @llvm.dbg.value(metadata i8 58, metadata !1257, metadata !DIExpression()) #10, !dbg !2671
  call void @llvm.dbg.value(metadata i32 1, metadata !1258, metadata !DIExpression()) #10, !dbg !2672
  call void @llvm.dbg.value(metadata i8 58, metadata !1259, metadata !DIExpression()) #10, !dbg !2673
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2674
  call void @llvm.dbg.value(metadata i32* %4, metadata !1260, metadata !DIExpression()) #10, !dbg !2675
  call void @llvm.dbg.value(metadata i32 26, metadata !1262, metadata !DIExpression()) #10, !dbg !2676
  %5 = load i32, i32* %4, align 4, !dbg !2677, !tbaa !734
  %6 = or i32 %5, 67108864, !dbg !2678
  store i32 %6, i32* %4, align 4, !dbg !2678, !tbaa !734
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2592, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2668
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #10, !dbg !2679
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #10, !dbg !2680
  ret i8* %7, !dbg !2681
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #7 !dbg !2682 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2684, metadata !DIExpression()), !dbg !2686
  call void @llvm.dbg.value(metadata i64 %1, metadata !2685, metadata !DIExpression()), !dbg !2687
  call void @llvm.dbg.value(metadata i8* %0, metadata !2589, metadata !DIExpression()) #10, !dbg !2688
  call void @llvm.dbg.value(metadata i64 %1, metadata !2590, metadata !DIExpression()) #10, !dbg !2690
  call void @llvm.dbg.value(metadata i8 58, metadata !2591, metadata !DIExpression()) #10, !dbg !2691
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2692
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2692
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2693, !tbaa.struct !2598
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2592, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2694
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1256, metadata !DIExpression()) #10, !dbg !2695
  call void @llvm.dbg.value(metadata i8 58, metadata !1257, metadata !DIExpression()) #10, !dbg !2697
  call void @llvm.dbg.value(metadata i32 1, metadata !1258, metadata !DIExpression()) #10, !dbg !2698
  call void @llvm.dbg.value(metadata i8 58, metadata !1259, metadata !DIExpression()) #10, !dbg !2699
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2700
  call void @llvm.dbg.value(metadata i32* %5, metadata !1260, metadata !DIExpression()) #10, !dbg !2701
  call void @llvm.dbg.value(metadata i32 26, metadata !1262, metadata !DIExpression()) #10, !dbg !2702
  %6 = load i32, i32* %5, align 4, !dbg !2703, !tbaa !734
  %7 = or i32 %6, 67108864, !dbg !2704
  store i32 %7, i32* %5, align 4, !dbg !2704, !tbaa !734
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2592, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2694
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #10, !dbg !2705
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2706
  ret i8* %8, !dbg !2707
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #7 !dbg !2708 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2481, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2714
  call void @llvm.dbg.value(metadata i32 %0, metadata !2710, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.value(metadata i32 %1, metadata !2711, metadata !DIExpression()), !dbg !2717
  call void @llvm.dbg.value(metadata i8* %2, metadata !2712, metadata !DIExpression()), !dbg !2718
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2719
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2719
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2720
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2720
  call void @llvm.dbg.value(metadata i32 %1, metadata !2476, metadata !DIExpression()) #10, !dbg !2721
  call void @llvm.dbg.value(metadata i32 0, metadata !2481, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2714
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 %7, i8 0, i64 52, i1 false), !dbg !2714, !alias.scope !2722
  %8 = icmp eq i32 %1, 10, !dbg !2725
  br i1 %8, label %9, label %10, !dbg !2726

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2727, !noalias !2722
  unreachable, !dbg !2727

; <label>:10:                                     ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2481, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2714
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2720
  store i32 %1, i32* %11, align 8, !dbg !2720
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2720
  %13 = bitcast i32* %12 to i8*, !dbg !2720
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %13, i8* nonnull align 4 %7, i64 52, i1 false), !dbg !2720
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2720
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2713, metadata !DIExpression(DW_OP_deref)), !dbg !2728
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1256, metadata !DIExpression()), !dbg !2729
  call void @llvm.dbg.value(metadata i8 58, metadata !1257, metadata !DIExpression()), !dbg !2731
  call void @llvm.dbg.value(metadata i32 1, metadata !1258, metadata !DIExpression()), !dbg !2732
  call void @llvm.dbg.value(metadata i8 58, metadata !1259, metadata !DIExpression()), !dbg !2733
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2734
  call void @llvm.dbg.value(metadata i32* %14, metadata !1260, metadata !DIExpression()), !dbg !2735
  call void @llvm.dbg.value(metadata i32 26, metadata !1262, metadata !DIExpression()), !dbg !2736
  %15 = load i32, i32* %14, align 4, !dbg !2737, !tbaa !734
  %16 = or i32 %15, 67108864, !dbg !2738
  store i32 %16, i32* %14, align 4, !dbg !2738, !tbaa !734
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2713, metadata !DIExpression(DW_OP_deref)), !dbg !2728
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2739
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2740
  ret i8* %17, !dbg !2741
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #7 !dbg !2742 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2746, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.value(metadata i8* %1, metadata !2747, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i8* %2, metadata !2748, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.value(metadata i8* %3, metadata !2749, metadata !DIExpression()), !dbg !2753
  call void @llvm.dbg.value(metadata i32 %0, metadata !2754, metadata !DIExpression()) #10, !dbg !2764
  call void @llvm.dbg.value(metadata i8* %1, metadata !2759, metadata !DIExpression()) #10, !dbg !2766
  call void @llvm.dbg.value(metadata i8* %2, metadata !2760, metadata !DIExpression()) #10, !dbg !2767
  call void @llvm.dbg.value(metadata i8* %3, metadata !2761, metadata !DIExpression()) #10, !dbg !2768
  call void @llvm.dbg.value(metadata i64 -1, metadata !2762, metadata !DIExpression()) #10, !dbg !2769
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2770
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2770
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2771, !tbaa.struct !2598
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2763, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2772
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1304, metadata !DIExpression()) #10, !dbg !2773
  call void @llvm.dbg.value(metadata i8* %1, metadata !1305, metadata !DIExpression()) #10, !dbg !2775
  call void @llvm.dbg.value(metadata i8* %2, metadata !1306, metadata !DIExpression()) #10, !dbg !2776
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1304, metadata !DIExpression()) #10, !dbg !2773
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2777
  store i32 10, i32* %7, align 8, !dbg !2778, !tbaa !1237
  %8 = icmp ne i8* %1, null, !dbg !2779
  %9 = icmp ne i8* %2, null, !dbg !2780
  %10 = and i1 %8, %9, !dbg !2781
  br i1 %10, label %12, label %11, !dbg !2781

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2782
  unreachable, !dbg !2782

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2783
  store i8* %1, i8** %13, align 8, !dbg !2784, !tbaa !1322
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2785
  store i8* %2, i8** %14, align 8, !dbg !2786, !tbaa !1325
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2763, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2772
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #10, !dbg !2787
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2788
  ret i8* %15, !dbg !2789
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !2755 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2754, metadata !DIExpression()), !dbg !2790
  call void @llvm.dbg.value(metadata i8* %1, metadata !2759, metadata !DIExpression()), !dbg !2791
  call void @llvm.dbg.value(metadata i8* %2, metadata !2760, metadata !DIExpression()), !dbg !2792
  call void @llvm.dbg.value(metadata i8* %3, metadata !2761, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata i64 %4, metadata !2762, metadata !DIExpression()), !dbg !2794
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2795
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2795
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %7, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2796, !tbaa.struct !2598
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2763, metadata !DIExpression(DW_OP_deref)), !dbg !2797
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1304, metadata !DIExpression()) #10, !dbg !2798
  call void @llvm.dbg.value(metadata i8* %1, metadata !1305, metadata !DIExpression()) #10, !dbg !2800
  call void @llvm.dbg.value(metadata i8* %2, metadata !1306, metadata !DIExpression()) #10, !dbg !2801
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1304, metadata !DIExpression()) #10, !dbg !2798
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2802
  store i32 10, i32* %8, align 8, !dbg !2803, !tbaa !1237
  %9 = icmp ne i8* %1, null, !dbg !2804
  %10 = icmp ne i8* %2, null, !dbg !2805
  %11 = and i1 %9, %10, !dbg !2806
  br i1 %11, label %13, label %12, !dbg !2806

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !2807
  unreachable, !dbg !2807

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2808
  store i8* %1, i8** %14, align 8, !dbg !2809, !tbaa !1322
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2810
  store i8* %2, i8** %15, align 8, !dbg !2811, !tbaa !1325
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2763, metadata !DIExpression(DW_OP_deref)), !dbg !2797
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2812
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2813
  ret i8* %16, !dbg !2814
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #7 !dbg !2815 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2819, metadata !DIExpression()), !dbg !2822
  call void @llvm.dbg.value(metadata i8* %1, metadata !2820, metadata !DIExpression()), !dbg !2823
  call void @llvm.dbg.value(metadata i8* %2, metadata !2821, metadata !DIExpression()), !dbg !2824
  call void @llvm.dbg.value(metadata i32 0, metadata !2746, metadata !DIExpression()) #10, !dbg !2825
  call void @llvm.dbg.value(metadata i8* %0, metadata !2747, metadata !DIExpression()) #10, !dbg !2827
  call void @llvm.dbg.value(metadata i8* %1, metadata !2748, metadata !DIExpression()) #10, !dbg !2828
  call void @llvm.dbg.value(metadata i8* %2, metadata !2749, metadata !DIExpression()) #10, !dbg !2829
  call void @llvm.dbg.value(metadata i32 0, metadata !2754, metadata !DIExpression()) #10, !dbg !2830
  call void @llvm.dbg.value(metadata i8* %0, metadata !2759, metadata !DIExpression()) #10, !dbg !2832
  call void @llvm.dbg.value(metadata i8* %1, metadata !2760, metadata !DIExpression()) #10, !dbg !2833
  call void @llvm.dbg.value(metadata i8* %2, metadata !2761, metadata !DIExpression()) #10, !dbg !2834
  call void @llvm.dbg.value(metadata i64 -1, metadata !2762, metadata !DIExpression()) #10, !dbg !2835
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2836
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2836
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2837, !tbaa.struct !2598
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2763, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2838
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1304, metadata !DIExpression()) #10, !dbg !2839
  call void @llvm.dbg.value(metadata i8* %0, metadata !1305, metadata !DIExpression()) #10, !dbg !2841
  call void @llvm.dbg.value(metadata i8* %1, metadata !1306, metadata !DIExpression()) #10, !dbg !2842
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1304, metadata !DIExpression()) #10, !dbg !2839
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2843
  store i32 10, i32* %6, align 8, !dbg !2844, !tbaa !1237
  %7 = icmp ne i8* %0, null, !dbg !2845
  %8 = icmp ne i8* %1, null, !dbg !2846
  %9 = and i1 %7, %8, !dbg !2847
  br i1 %9, label %11, label %10, !dbg !2847

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2848
  unreachable, !dbg !2848

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2849
  store i8* %0, i8** %12, align 8, !dbg !2850, !tbaa !1322
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2851
  store i8* %1, i8** %13, align 8, !dbg !2852, !tbaa !1325
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2763, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2838
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !2853
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2854
  ret i8* %14, !dbg !2855
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !2856 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2860, metadata !DIExpression()), !dbg !2864
  call void @llvm.dbg.value(metadata i8* %1, metadata !2861, metadata !DIExpression()), !dbg !2865
  call void @llvm.dbg.value(metadata i8* %2, metadata !2862, metadata !DIExpression()), !dbg !2866
  call void @llvm.dbg.value(metadata i64 %3, metadata !2863, metadata !DIExpression()), !dbg !2867
  call void @llvm.dbg.value(metadata i32 0, metadata !2754, metadata !DIExpression()) #10, !dbg !2868
  call void @llvm.dbg.value(metadata i8* %0, metadata !2759, metadata !DIExpression()) #10, !dbg !2870
  call void @llvm.dbg.value(metadata i8* %1, metadata !2760, metadata !DIExpression()) #10, !dbg !2871
  call void @llvm.dbg.value(metadata i8* %2, metadata !2761, metadata !DIExpression()) #10, !dbg !2872
  call void @llvm.dbg.value(metadata i64 %3, metadata !2762, metadata !DIExpression()) #10, !dbg !2873
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2874
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2874
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2875, !tbaa.struct !2598
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2763, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2876
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1304, metadata !DIExpression()) #10, !dbg !2877
  call void @llvm.dbg.value(metadata i8* %0, metadata !1305, metadata !DIExpression()) #10, !dbg !2879
  call void @llvm.dbg.value(metadata i8* %1, metadata !1306, metadata !DIExpression()) #10, !dbg !2880
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1304, metadata !DIExpression()) #10, !dbg !2877
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2881
  store i32 10, i32* %7, align 8, !dbg !2882, !tbaa !1237
  %8 = icmp ne i8* %0, null, !dbg !2883
  %9 = icmp ne i8* %1, null, !dbg !2884
  %10 = and i1 %8, %9, !dbg !2885
  br i1 %10, label %12, label %11, !dbg !2885

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2886
  unreachable, !dbg !2886

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2887
  store i8* %0, i8** %13, align 8, !dbg !2888, !tbaa !1322
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2889
  store i8* %1, i8** %14, align 8, !dbg !2890, !tbaa !1325
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2763, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2876
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #10, !dbg !2891
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2892
  ret i8* %15, !dbg !2893
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2894 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2898, metadata !DIExpression()), !dbg !2901
  call void @llvm.dbg.value(metadata i8* %1, metadata !2899, metadata !DIExpression()), !dbg !2902
  call void @llvm.dbg.value(metadata i64 %2, metadata !2900, metadata !DIExpression()), !dbg !2903
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2904
  ret i8* %4, !dbg !2905
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8*, i64) local_unnamed_addr #7 !dbg !2906 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2910, metadata !DIExpression()), !dbg !2912
  call void @llvm.dbg.value(metadata i64 %1, metadata !2911, metadata !DIExpression()), !dbg !2913
  call void @llvm.dbg.value(metadata i32 0, metadata !2898, metadata !DIExpression()) #10, !dbg !2914
  call void @llvm.dbg.value(metadata i8* %0, metadata !2899, metadata !DIExpression()) #10, !dbg !2916
  call void @llvm.dbg.value(metadata i64 %1, metadata !2900, metadata !DIExpression()) #10, !dbg !2917
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2918
  ret i8* %3, !dbg !2919
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32, i8*) local_unnamed_addr #7 !dbg !2920 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2924, metadata !DIExpression()), !dbg !2926
  call void @llvm.dbg.value(metadata i8* %1, metadata !2925, metadata !DIExpression()), !dbg !2927
  call void @llvm.dbg.value(metadata i32 %0, metadata !2898, metadata !DIExpression()) #10, !dbg !2928
  call void @llvm.dbg.value(metadata i8* %1, metadata !2899, metadata !DIExpression()) #10, !dbg !2930
  call void @llvm.dbg.value(metadata i64 -1, metadata !2900, metadata !DIExpression()) #10, !dbg !2931
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2932
  ret i8* %3, !dbg !2933
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8*) local_unnamed_addr #7 !dbg !2934 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2938, metadata !DIExpression()), !dbg !2939
  call void @llvm.dbg.value(metadata i32 0, metadata !2924, metadata !DIExpression()) #10, !dbg !2940
  call void @llvm.dbg.value(metadata i8* %0, metadata !2925, metadata !DIExpression()) #10, !dbg !2942
  call void @llvm.dbg.value(metadata i32 0, metadata !2898, metadata !DIExpression()) #10, !dbg !2943
  call void @llvm.dbg.value(metadata i8* %0, metadata !2899, metadata !DIExpression()) #10, !dbg !2945
  call void @llvm.dbg.value(metadata i64 -1, metadata !2900, metadata !DIExpression()) #10, !dbg !2946
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2947
  ret i8* %2, !dbg !2948
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #7 !dbg !2949 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2988, metadata !DIExpression()), !dbg !2994
  call void @llvm.dbg.value(metadata i8* %1, metadata !2989, metadata !DIExpression()), !dbg !2995
  call void @llvm.dbg.value(metadata i8* %2, metadata !2990, metadata !DIExpression()), !dbg !2996
  call void @llvm.dbg.value(metadata i8* %3, metadata !2991, metadata !DIExpression()), !dbg !2997
  call void @llvm.dbg.value(metadata i8** %4, metadata !2992, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i64 %5, metadata !2993, metadata !DIExpression()), !dbg !2999
  %7 = icmp eq i8* %1, null, !dbg !3000
  br i1 %7, label %10, label %8, !dbg !3002

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.80, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10, !dbg !3003
  br label %12, !dbg !3003

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.81, i64 0, i64 0), i8* %2, i8* %3) #10, !dbg !3004
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.82, i64 0, i64 0), i32 5) #10, !dbg !3005
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2018) #10, !dbg !3005
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([204 x i8], [204 x i8]* @.str.3.83, i64 0, i64 0), i32 5) #10, !dbg !3006
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0), !dbg !3006
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
  ], !dbg !3007

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !3008
  unreachable, !dbg !3008

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.84, i64 0, i64 0), i32 5) #10, !dbg !3010
  %20 = load i8*, i8** %4, align 8, !dbg !3010, !tbaa !663
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #10, !dbg !3010
  br label %146, !dbg !3011

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.85, i64 0, i64 0), i32 5) #10, !dbg !3012
  %24 = load i8*, i8** %4, align 8, !dbg !3012, !tbaa !663
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3012
  %26 = load i8*, i8** %25, align 8, !dbg !3012, !tbaa !663
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #10, !dbg !3012
  br label %146, !dbg !3013

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.86, i64 0, i64 0), i32 5) #10, !dbg !3014
  %30 = load i8*, i8** %4, align 8, !dbg !3014, !tbaa !663
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3014
  %32 = load i8*, i8** %31, align 8, !dbg !3014, !tbaa !663
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3014
  %34 = load i8*, i8** %33, align 8, !dbg !3014, !tbaa !663
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #10, !dbg !3014
  br label %146, !dbg !3015

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.87, i64 0, i64 0), i32 5) #10, !dbg !3016
  %38 = load i8*, i8** %4, align 8, !dbg !3016, !tbaa !663
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3016
  %40 = load i8*, i8** %39, align 8, !dbg !3016, !tbaa !663
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3016
  %42 = load i8*, i8** %41, align 8, !dbg !3016, !tbaa !663
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3016
  %44 = load i8*, i8** %43, align 8, !dbg !3016, !tbaa !663
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #10, !dbg !3016
  br label %146, !dbg !3017

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.88, i64 0, i64 0), i32 5) #10, !dbg !3018
  %48 = load i8*, i8** %4, align 8, !dbg !3018, !tbaa !663
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3018
  %50 = load i8*, i8** %49, align 8, !dbg !3018, !tbaa !663
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3018
  %52 = load i8*, i8** %51, align 8, !dbg !3018, !tbaa !663
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3018
  %54 = load i8*, i8** %53, align 8, !dbg !3018, !tbaa !663
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3018
  %56 = load i8*, i8** %55, align 8, !dbg !3018, !tbaa !663
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #10, !dbg !3018
  br label %146, !dbg !3019

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.89, i64 0, i64 0), i32 5) #10, !dbg !3020
  %60 = load i8*, i8** %4, align 8, !dbg !3020, !tbaa !663
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3020
  %62 = load i8*, i8** %61, align 8, !dbg !3020, !tbaa !663
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3020
  %64 = load i8*, i8** %63, align 8, !dbg !3020, !tbaa !663
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3020
  %66 = load i8*, i8** %65, align 8, !dbg !3020, !tbaa !663
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3020
  %68 = load i8*, i8** %67, align 8, !dbg !3020, !tbaa !663
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3020
  %70 = load i8*, i8** %69, align 8, !dbg !3020, !tbaa !663
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #10, !dbg !3020
  br label %146, !dbg !3021

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.90, i64 0, i64 0), i32 5) #10, !dbg !3022
  %74 = load i8*, i8** %4, align 8, !dbg !3022, !tbaa !663
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3022
  %76 = load i8*, i8** %75, align 8, !dbg !3022, !tbaa !663
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3022
  %78 = load i8*, i8** %77, align 8, !dbg !3022, !tbaa !663
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3022
  %80 = load i8*, i8** %79, align 8, !dbg !3022, !tbaa !663
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3022
  %82 = load i8*, i8** %81, align 8, !dbg !3022, !tbaa !663
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3022
  %84 = load i8*, i8** %83, align 8, !dbg !3022, !tbaa !663
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3022
  %86 = load i8*, i8** %85, align 8, !dbg !3022, !tbaa !663
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #10, !dbg !3022
  br label %146, !dbg !3023

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.91, i64 0, i64 0), i32 5) #10, !dbg !3024
  %90 = load i8*, i8** %4, align 8, !dbg !3024, !tbaa !663
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3024
  %92 = load i8*, i8** %91, align 8, !dbg !3024, !tbaa !663
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3024
  %94 = load i8*, i8** %93, align 8, !dbg !3024, !tbaa !663
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3024
  %96 = load i8*, i8** %95, align 8, !dbg !3024, !tbaa !663
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3024
  %98 = load i8*, i8** %97, align 8, !dbg !3024, !tbaa !663
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3024
  %100 = load i8*, i8** %99, align 8, !dbg !3024, !tbaa !663
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3024
  %102 = load i8*, i8** %101, align 8, !dbg !3024, !tbaa !663
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3024
  %104 = load i8*, i8** %103, align 8, !dbg !3024, !tbaa !663
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #10, !dbg !3024
  br label %146, !dbg !3025

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.92, i64 0, i64 0), i32 5) #10, !dbg !3026
  %108 = load i8*, i8** %4, align 8, !dbg !3026, !tbaa !663
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3026
  %110 = load i8*, i8** %109, align 8, !dbg !3026, !tbaa !663
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3026
  %112 = load i8*, i8** %111, align 8, !dbg !3026, !tbaa !663
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3026
  %114 = load i8*, i8** %113, align 8, !dbg !3026, !tbaa !663
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3026
  %116 = load i8*, i8** %115, align 8, !dbg !3026, !tbaa !663
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3026
  %118 = load i8*, i8** %117, align 8, !dbg !3026, !tbaa !663
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3026
  %120 = load i8*, i8** %119, align 8, !dbg !3026, !tbaa !663
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3026
  %122 = load i8*, i8** %121, align 8, !dbg !3026, !tbaa !663
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3026
  %124 = load i8*, i8** %123, align 8, !dbg !3026, !tbaa !663
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #10, !dbg !3026
  br label %146, !dbg !3027

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.93, i64 0, i64 0), i32 5) #10, !dbg !3028
  %128 = load i8*, i8** %4, align 8, !dbg !3028, !tbaa !663
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3028
  %130 = load i8*, i8** %129, align 8, !dbg !3028, !tbaa !663
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3028
  %132 = load i8*, i8** %131, align 8, !dbg !3028, !tbaa !663
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3028
  %134 = load i8*, i8** %133, align 8, !dbg !3028, !tbaa !663
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3028
  %136 = load i8*, i8** %135, align 8, !dbg !3028, !tbaa !663
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3028
  %138 = load i8*, i8** %137, align 8, !dbg !3028, !tbaa !663
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3028
  %140 = load i8*, i8** %139, align 8, !dbg !3028, !tbaa !663
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3028
  %142 = load i8*, i8** %141, align 8, !dbg !3028, !tbaa !663
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3028
  %144 = load i8*, i8** %143, align 8, !dbg !3028, !tbaa !663
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #10, !dbg !3028
  br label %146, !dbg !3029

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3030
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #7 !dbg !3031 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3035, metadata !DIExpression()), !dbg !3041
  call void @llvm.dbg.value(metadata i8* %1, metadata !3036, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata i8* %2, metadata !3037, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.value(metadata i8* %3, metadata !3038, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata i8** %4, metadata !3039, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.value(metadata i64 0, metadata !3040, metadata !DIExpression()), !dbg !3046
  br label %6, !dbg !3047

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3049
  call void @llvm.dbg.value(metadata i64 %7, metadata !3040, metadata !DIExpression()), !dbg !3046
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3051
  %9 = load i8*, i8** %8, align 8, !dbg !3051, !tbaa !663
  %10 = icmp eq i8* %9, null, !dbg !3052
  %11 = add i64 %7, 1, !dbg !3053
  call void @llvm.dbg.value(metadata i64 %11, metadata !3040, metadata !DIExpression()), !dbg !3046
  br i1 %10, label %12, label %6, !dbg !3052, !llvm.loop !3054

; <label>:12:                                     ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !3040, metadata !DIExpression()), !dbg !3046
  call void @llvm.dbg.value(metadata i64 %7, metadata !3040, metadata !DIExpression()), !dbg !3046
  call void @llvm.dbg.value(metadata i64 %7, metadata !3040, metadata !DIExpression()), !dbg !3046
  call void @llvm.dbg.value(metadata i64 %7, metadata !3040, metadata !DIExpression()), !dbg !3046
  call void @llvm.dbg.value(metadata i64 %7, metadata !3040, metadata !DIExpression()), !dbg !3046
  call void @llvm.dbg.value(metadata i64 %7, metadata !3040, metadata !DIExpression()), !dbg !3046
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3056
  ret void, !dbg !3057
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #7 !dbg !3058 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3069, metadata !DIExpression()), !dbg !3077
  call void @llvm.dbg.value(metadata i8* %1, metadata !3070, metadata !DIExpression()), !dbg !3078
  call void @llvm.dbg.value(metadata i8* %2, metadata !3071, metadata !DIExpression()), !dbg !3079
  call void @llvm.dbg.value(metadata i8* %3, metadata !3072, metadata !DIExpression()), !dbg !3080
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3073, metadata !DIExpression()), !dbg !3081
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3082
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #10, !dbg !3082
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3075, metadata !DIExpression()), !dbg !3083
  call void @llvm.dbg.value(metadata i64 0, metadata !3074, metadata !DIExpression()), !dbg !3084
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  call void @llvm.dbg.value(metadata i64 0, metadata !3074, metadata !DIExpression()), !dbg !3084
  %11 = load i32, i32* %8, align 8, !dbg !3085
  %12 = icmp ult i32 %11, 41, !dbg !3085
  br i1 %12, label %13, label %18, !dbg !3085

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3085
  %15 = sext i32 %11 to i64, !dbg !3085
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3085
  %17 = add i32 %11, 8, !dbg !3085
  store i32 %17, i32* %8, align 8, !dbg !3085
  br label %21, !dbg !3085

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3085
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3085
  store i8* %20, i8** %10, align 8, !dbg !3085
  br label %21, !dbg !3085

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3085
  %25 = load i8*, i8** %24, align 8, !dbg !3085
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3088
  store i8* %25, i8** %26, align 16, !dbg !3089, !tbaa !663
  %27 = icmp eq i8* %25, null, !dbg !3090
  br i1 %27, label %30, label %28, !dbg !3091

; <label>:28:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !3074, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.value(metadata i64 1, metadata !3074, metadata !DIExpression()), !dbg !3084
  %29 = icmp ult i32 %22, 41, !dbg !3085
  br i1 %29, label %35, label %32, !dbg !3085

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !3092
  call void @llvm.dbg.value(metadata i64 %31, metadata !3074, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.value(metadata i64 %31, metadata !3074, metadata !DIExpression()), !dbg !3084
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3093
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #10, !dbg !3094
  ret void, !dbg !3094

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3085
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3085
  store i8* %34, i8** %10, align 8, !dbg !3085
  br label %40, !dbg !3085

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3085
  %37 = sext i32 %22 to i64, !dbg !3085
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3085
  %39 = add i32 %22, 8, !dbg !3085
  store i32 %39, i32* %8, align 8, !dbg !3085
  br label %40, !dbg !3085

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3085
  %44 = load i8*, i8** %43, align 8, !dbg !3085
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3088
  store i8* %44, i8** %45, align 8, !dbg !3089, !tbaa !663
  %46 = icmp eq i8* %44, null, !dbg !3090
  br i1 %46, label %30, label %47, !dbg !3091

; <label>:47:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3074, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.value(metadata i64 2, metadata !3074, metadata !DIExpression()), !dbg !3084
  %48 = icmp ult i32 %41, 41, !dbg !3085
  br i1 %48, label %52, label %49, !dbg !3085

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3085
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3085
  store i8* %51, i8** %10, align 8, !dbg !3085
  br label %57, !dbg !3085

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3085
  %54 = sext i32 %41 to i64, !dbg !3085
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3085
  %56 = add i32 %41, 8, !dbg !3085
  store i32 %56, i32* %8, align 8, !dbg !3085
  br label %57, !dbg !3085

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3085
  %61 = load i8*, i8** %60, align 8, !dbg !3085
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3088
  store i8* %61, i8** %62, align 16, !dbg !3089, !tbaa !663
  %63 = icmp eq i8* %61, null, !dbg !3090
  br i1 %63, label %30, label %64, !dbg !3091

; <label>:64:                                     ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !3074, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.value(metadata i64 3, metadata !3074, metadata !DIExpression()), !dbg !3084
  %65 = icmp ult i32 %58, 41, !dbg !3085
  br i1 %65, label %69, label %66, !dbg !3085

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3085
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3085
  store i8* %68, i8** %10, align 8, !dbg !3085
  br label %74, !dbg !3085

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3085
  %71 = sext i32 %58 to i64, !dbg !3085
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3085
  %73 = add i32 %58, 8, !dbg !3085
  store i32 %73, i32* %8, align 8, !dbg !3085
  br label %74, !dbg !3085

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3085
  %78 = load i8*, i8** %77, align 8, !dbg !3085
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3088
  store i8* %78, i8** %79, align 8, !dbg !3089, !tbaa !663
  %80 = icmp eq i8* %78, null, !dbg !3090
  br i1 %80, label %30, label %81, !dbg !3091

; <label>:81:                                     ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !3074, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.value(metadata i64 4, metadata !3074, metadata !DIExpression()), !dbg !3084
  %82 = icmp ult i32 %75, 41, !dbg !3085
  br i1 %82, label %86, label %83, !dbg !3085

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3085
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3085
  store i8* %85, i8** %10, align 8, !dbg !3085
  br label %91, !dbg !3085

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3085
  %88 = sext i32 %75 to i64, !dbg !3085
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3085
  %90 = add i32 %75, 8, !dbg !3085
  store i32 %90, i32* %8, align 8, !dbg !3085
  br label %91, !dbg !3085

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3085
  %95 = load i8*, i8** %94, align 8, !dbg !3085
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3088
  store i8* %95, i8** %96, align 16, !dbg !3089, !tbaa !663
  %97 = icmp eq i8* %95, null, !dbg !3090
  br i1 %97, label %30, label %98, !dbg !3091

; <label>:98:                                     ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !3074, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.value(metadata i64 5, metadata !3074, metadata !DIExpression()), !dbg !3084
  %99 = icmp ult i32 %92, 41, !dbg !3085
  br i1 %99, label %103, label %100, !dbg !3085

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3085
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3085
  store i8* %102, i8** %10, align 8, !dbg !3085
  br label %108, !dbg !3085

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3085
  %105 = sext i32 %92 to i64, !dbg !3085
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3085
  %107 = add i32 %92, 8, !dbg !3085
  store i32 %107, i32* %8, align 8, !dbg !3085
  br label %108, !dbg !3085

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3085
  %111 = load i8*, i8** %110, align 8, !dbg !3085
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3088
  store i8* %111, i8** %112, align 8, !dbg !3089, !tbaa !663
  %113 = icmp eq i8* %111, null, !dbg !3090
  br i1 %113, label %30, label %114, !dbg !3091

; <label>:114:                                    ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !3074, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.value(metadata i64 6, metadata !3074, metadata !DIExpression()), !dbg !3084
  %115 = load i8*, i8** %10, align 8, !dbg !3085
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3085
  store i8* %116, i8** %10, align 8, !dbg !3085
  %117 = bitcast i8* %115 to i8**, !dbg !3085
  %118 = load i8*, i8** %117, align 8, !dbg !3085
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3088
  store i8* %118, i8** %119, align 16, !dbg !3089, !tbaa !663
  %120 = icmp eq i8* %118, null, !dbg !3090
  br i1 %120, label %30, label %121, !dbg !3091

; <label>:121:                                    ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !3074, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.value(metadata i64 7, metadata !3074, metadata !DIExpression()), !dbg !3084
  %122 = load i8*, i8** %10, align 8, !dbg !3085
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3085
  store i8* %123, i8** %10, align 8, !dbg !3085
  %124 = bitcast i8* %122 to i8**, !dbg !3085
  %125 = load i8*, i8** %124, align 8, !dbg !3085
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3088
  store i8* %125, i8** %126, align 8, !dbg !3089, !tbaa !663
  %127 = icmp eq i8* %125, null, !dbg !3090
  br i1 %127, label %30, label %128, !dbg !3091

; <label>:128:                                    ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !3074, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.value(metadata i64 8, metadata !3074, metadata !DIExpression()), !dbg !3084
  %129 = load i8*, i8** %10, align 8, !dbg !3085
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3085
  store i8* %130, i8** %10, align 8, !dbg !3085
  %131 = bitcast i8* %129 to i8**, !dbg !3085
  %132 = load i8*, i8** %131, align 8, !dbg !3085
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3088
  store i8* %132, i8** %133, align 16, !dbg !3089, !tbaa !663
  %134 = icmp eq i8* %132, null, !dbg !3090
  br i1 %134, label %30, label %135, !dbg !3091

; <label>:135:                                    ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !3074, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.value(metadata i64 9, metadata !3074, metadata !DIExpression()), !dbg !3084
  %136 = load i8*, i8** %10, align 8, !dbg !3085
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3085
  store i8* %137, i8** %10, align 8, !dbg !3085
  %138 = bitcast i8* %136 to i8**, !dbg !3085
  %139 = load i8*, i8** %138, align 8, !dbg !3085
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3088
  store i8* %139, i8** %140, align 8, !dbg !3089, !tbaa !663
  %141 = icmp eq i8* %139, null, !dbg !3090
  %142 = select i1 %141, i64 9, i64 10, !dbg !3091
  br label %30, !dbg !3091
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #7 !dbg !3095 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3099, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata i8* %1, metadata !3100, metadata !DIExpression()), !dbg !3109
  call void @llvm.dbg.value(metadata i8* %2, metadata !3101, metadata !DIExpression()), !dbg !3110
  call void @llvm.dbg.value(metadata i8* %3, metadata !3102, metadata !DIExpression()), !dbg !3111
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3112
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #10, !dbg !3112
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3103, metadata !DIExpression()), !dbg !3113
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3114
  call void @llvm.va_start(i8* nonnull %6), !dbg !3114
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3115
  call void @llvm.va_end(i8* nonnull %6), !dbg !3116
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #10, !dbg !3117
  ret void, !dbg !3117
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #7 !dbg !3118 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.96, i64 0, i64 0), i32 5) #10, !dbg !3119
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.97, i64 0, i64 0)) #10, !dbg !3119
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.98, i64 0, i64 0), i32 5) #10, !dbg !3120
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.99, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18.100, i64 0, i64 0)) #10, !dbg !3120
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.19.101, i64 0, i64 0), i32 5) #10, !dbg !3121
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3121, !tbaa !663
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6), !dbg !3121
  ret void, !dbg !3122
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !3123 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3127, metadata !DIExpression()), !dbg !3129
  call void @llvm.dbg.value(metadata i64 %1, metadata !3128, metadata !DIExpression()), !dbg !3130
  %3 = udiv i64 9223372036854775807, %1, !dbg !3131
  %4 = icmp ult i64 %3, %0, !dbg !3131
  br i1 %4, label %5, label %6, !dbg !3133

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3134
  unreachable, !dbg !3134

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3135
  call void @llvm.dbg.value(metadata i64 %7, metadata !3136, metadata !DIExpression()) #10, !dbg !3143
  %8 = tail call noalias i8* @malloc(i64 %7) #10, !dbg !3145
  call void @llvm.dbg.value(metadata i8* %8, metadata !3142, metadata !DIExpression()) #10, !dbg !3146
  %9 = icmp eq i8* %8, null, !dbg !3147
  %10 = icmp ne i64 %7, 0, !dbg !3149
  %11 = and i1 %10, %9, !dbg !3150
  br i1 %11, label %12, label %13, !dbg !3150

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !3151
  unreachable, !dbg !3151

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3152
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64) local_unnamed_addr #7 !dbg !3137 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3136, metadata !DIExpression()), !dbg !3153
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3154
  call void @llvm.dbg.value(metadata i8* %2, metadata !3142, metadata !DIExpression()), !dbg !3155
  %3 = icmp eq i8* %2, null, !dbg !3156
  %4 = icmp ne i64 %0, 0, !dbg !3157
  %5 = and i1 %4, %3, !dbg !3158
  br i1 %5, label %6, label %7, !dbg !3158

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3159
  unreachable, !dbg !3159

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3160
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !3161 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3165, metadata !DIExpression()), !dbg !3168
  call void @llvm.dbg.value(metadata i64 %1, metadata !3166, metadata !DIExpression()), !dbg !3169
  call void @llvm.dbg.value(metadata i64 %2, metadata !3167, metadata !DIExpression()), !dbg !3170
  %4 = udiv i64 9223372036854775807, %2, !dbg !3171
  %5 = icmp ult i64 %4, %1, !dbg !3171
  br i1 %5, label %6, label %7, !dbg !3173

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !3174
  unreachable, !dbg !3174

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3175
  call void @llvm.dbg.value(metadata i8* %0, metadata !3176, metadata !DIExpression()) #10, !dbg !3182
  call void @llvm.dbg.value(metadata i64 %8, metadata !3181, metadata !DIExpression()) #10, !dbg !3184
  %9 = icmp eq i64 %8, 0, !dbg !3185
  %10 = icmp ne i8* %0, null, !dbg !3187
  %11 = and i1 %10, %9, !dbg !3188
  br i1 %11, label %12, label %13, !dbg !3188

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #10, !dbg !3189
  br label %19, !dbg !3191

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #10, !dbg !3192
  call void @llvm.dbg.value(metadata i8* %14, metadata !3176, metadata !DIExpression()) #10, !dbg !3182
  %15 = icmp eq i8* %14, null, !dbg !3193
  %16 = icmp ne i64 %8, 0, !dbg !3195
  %17 = and i1 %16, %15, !dbg !3196
  br i1 %17, label %18, label %19, !dbg !3196

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3197
  unreachable, !dbg !3197

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3198
  ret i8* %20, !dbg !3199
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #7 !dbg !3177 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3176, metadata !DIExpression()), !dbg !3200
  call void @llvm.dbg.value(metadata i64 %1, metadata !3181, metadata !DIExpression()), !dbg !3201
  %3 = icmp eq i64 %1, 0, !dbg !3202
  %4 = icmp ne i8* %0, null, !dbg !3203
  %5 = and i1 %4, %3, !dbg !3204
  br i1 %5, label %6, label %7, !dbg !3204

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #10, !dbg !3205
  br label %13, !dbg !3206

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #10, !dbg !3207
  call void @llvm.dbg.value(metadata i8* %8, metadata !3176, metadata !DIExpression()), !dbg !3200
  %9 = icmp eq i8* %8, null, !dbg !3208
  %10 = icmp ne i64 %1, 0, !dbg !3209
  %11 = and i1 %10, %9, !dbg !3210
  br i1 %11, label %12, label %13, !dbg !3210

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3211
  unreachable, !dbg !3211

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3212
  ret i8* %14, !dbg !3213
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !206 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !211, metadata !DIExpression()), !dbg !3214
  call void @llvm.dbg.value(metadata i64* %1, metadata !212, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %2, metadata !213, metadata !DIExpression()), !dbg !3216
  %4 = load i64, i64* %1, align 8, !dbg !3217, !tbaa !895
  call void @llvm.dbg.value(metadata i64 %4, metadata !214, metadata !DIExpression()), !dbg !3218
  %5 = icmp eq i8* %0, null, !dbg !3219
  br i1 %5, label %6, label %20, !dbg !3221

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3222
  br i1 %7, label %8, label %13, !dbg !3225

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3226
  call void @llvm.dbg.value(metadata i64 %9, metadata !214, metadata !DIExpression()), !dbg !3218
  %10 = icmp ugt i64 %2, 128, !dbg !3228
  %11 = zext i1 %10 to i64, !dbg !3228
  %12 = add nuw nsw i64 %9, %11, !dbg !3229
  call void @llvm.dbg.value(metadata i64 %12, metadata !214, metadata !DIExpression()), !dbg !3218
  br label %13, !dbg !3230

; <label>:13:                                     ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3231
  call void @llvm.dbg.value(metadata i64 %14, metadata !214, metadata !DIExpression()), !dbg !3218
  %15 = udiv i64 9223372036854775807, %2, !dbg !3232
  %16 = icmp ult i64 %15, %14, !dbg !3232
  br i1 %16, label %19, label %17, !dbg !3234

; <label>:17:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !214, metadata !DIExpression()), !dbg !3218
  store i64 %14, i64* %1, align 8, !dbg !3235, !tbaa !895
  %18 = mul i64 %14, %2, !dbg !3236
  call void @llvm.dbg.value(metadata i8* %0, metadata !3176, metadata !DIExpression()) #10, !dbg !3237
  call void @llvm.dbg.value(metadata i64 %28, metadata !3181, metadata !DIExpression()) #10, !dbg !3239
  br label %31, !dbg !3240

; <label>:19:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3241
  unreachable, !dbg !3241

; <label>:20:                                     ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3242
  %22 = icmp ugt i64 %21, %4, !dbg !3245
  br i1 %22, label %24, label %23, !dbg !3246

; <label>:23:                                     ; preds = %20
  tail call void @xalloc_die() #15, !dbg !3247
  unreachable, !dbg !3247

; <label>:24:                                     ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3248
  %26 = add i64 %4, 1, !dbg !3249
  %27 = add i64 %26, %25, !dbg !3250
  call void @llvm.dbg.value(metadata i64 %27, metadata !214, metadata !DIExpression()), !dbg !3218
  call void @llvm.dbg.value(metadata i64 %27, metadata !214, metadata !DIExpression()), !dbg !3218
  store i64 %27, i64* %1, align 8, !dbg !3235, !tbaa !895
  %28 = mul i64 %27, %2, !dbg !3236
  call void @llvm.dbg.value(metadata i8* %0, metadata !3176, metadata !DIExpression()) #10, !dbg !3237
  call void @llvm.dbg.value(metadata i64 %28, metadata !3181, metadata !DIExpression()) #10, !dbg !3239
  %29 = icmp eq i64 %28, 0, !dbg !3251
  br i1 %29, label %30, label %31, !dbg !3240

; <label>:30:                                     ; preds = %24
  tail call void @free(i8* nonnull %0) #10, !dbg !3252
  br label %38, !dbg !3253

; <label>:31:                                     ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #10, !dbg !3254
  call void @llvm.dbg.value(metadata i8* %33, metadata !3176, metadata !DIExpression()) #10, !dbg !3237
  %34 = icmp eq i8* %33, null, !dbg !3255
  %35 = icmp ne i64 %32, 0, !dbg !3256
  %36 = and i1 %35, %34, !dbg !3257
  br i1 %36, label %37, label %38, !dbg !3257

; <label>:37:                                     ; preds = %31
  tail call void @xalloc_die() #15, !dbg !3258
  unreachable, !dbg !3258

; <label>:38:                                     ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3259
  ret i8* %39, !dbg !3260
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !3261 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3263, metadata !DIExpression()), !dbg !3264
  call void @llvm.dbg.value(metadata i64 %0, metadata !3136, metadata !DIExpression()) #10, !dbg !3265
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3267
  call void @llvm.dbg.value(metadata i8* %2, metadata !3142, metadata !DIExpression()) #10, !dbg !3268
  %3 = icmp eq i8* %2, null, !dbg !3269
  %4 = icmp ne i64 %0, 0, !dbg !3270
  %5 = and i1 %4, %3, !dbg !3271
  br i1 %5, label %6, label %7, !dbg !3271

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3272
  unreachable, !dbg !3272

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3273
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #7 !dbg !3274 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3278, metadata !DIExpression()), !dbg !3280
  call void @llvm.dbg.value(metadata i64* %1, metadata !3279, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.value(metadata i8* %0, metadata !211, metadata !DIExpression()) #10, !dbg !3282
  call void @llvm.dbg.value(metadata i64* %1, metadata !212, metadata !DIExpression()) #10, !dbg !3284
  call void @llvm.dbg.value(metadata i64 1, metadata !213, metadata !DIExpression()) #10, !dbg !3285
  %3 = load i64, i64* %1, align 8, !dbg !3286, !tbaa !895
  call void @llvm.dbg.value(metadata i64 %3, metadata !214, metadata !DIExpression()) #10, !dbg !3287
  %4 = icmp eq i8* %0, null, !dbg !3288
  br i1 %4, label %5, label %12, !dbg !3289

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3290
  br i1 %6, label %9, label %7, !dbg !3291

; <label>:7:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !214, metadata !DIExpression()) #10, !dbg !3287
  %8 = icmp slt i64 %3, 0, !dbg !3292
  br i1 %8, label %11, label %9, !dbg !3293

; <label>:9:                                      ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !214, metadata !DIExpression()) #10, !dbg !3287
  store i64 %10, i64* %1, align 8, !dbg !3294, !tbaa !895
  call void @llvm.dbg.value(metadata i8* %0, metadata !3176, metadata !DIExpression()) #10, !dbg !3295
  call void @llvm.dbg.value(metadata i64 %18, metadata !3181, metadata !DIExpression()) #10, !dbg !3297
  br label %21, !dbg !3298

; <label>:11:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3299
  unreachable, !dbg !3299

; <label>:12:                                     ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !3300
  br i1 %13, label %15, label %14, !dbg !3301

; <label>:14:                                     ; preds = %12
  tail call void @xalloc_die() #15, !dbg !3302
  unreachable, !dbg !3302

; <label>:15:                                     ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !3303
  %17 = add i64 %3, 1, !dbg !3304
  %18 = add i64 %17, %16, !dbg !3305
  call void @llvm.dbg.value(metadata i64 %18, metadata !214, metadata !DIExpression()) #10, !dbg !3287
  call void @llvm.dbg.value(metadata i64 %18, metadata !214, metadata !DIExpression()) #10, !dbg !3287
  store i64 %18, i64* %1, align 8, !dbg !3294, !tbaa !895
  call void @llvm.dbg.value(metadata i8* %0, metadata !3176, metadata !DIExpression()) #10, !dbg !3295
  call void @llvm.dbg.value(metadata i64 %18, metadata !3181, metadata !DIExpression()) #10, !dbg !3297
  %19 = icmp eq i64 %18, 0, !dbg !3306
  br i1 %19, label %20, label %21, !dbg !3298

; <label>:20:                                     ; preds = %15
  tail call void @free(i8* nonnull %0) #10, !dbg !3307
  br label %28, !dbg !3308

; <label>:21:                                     ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #10, !dbg !3309
  call void @llvm.dbg.value(metadata i8* %23, metadata !3176, metadata !DIExpression()) #10, !dbg !3295
  %24 = icmp eq i8* %23, null, !dbg !3310
  %25 = icmp ne i64 %22, 0, !dbg !3311
  %26 = and i1 %25, %24, !dbg !3312
  br i1 %26, label %27, label %28, !dbg !3312

; <label>:27:                                     ; preds = %21
  tail call void @xalloc_die() #15, !dbg !3313
  unreachable, !dbg !3313

; <label>:28:                                     ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !3314
  ret i8* %29, !dbg !3315
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64) local_unnamed_addr #7 !dbg !3316 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3318, metadata !DIExpression()), !dbg !3319
  call void @llvm.dbg.value(metadata i64 %0, metadata !3136, metadata !DIExpression()) #10, !dbg !3320
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3322
  call void @llvm.dbg.value(metadata i8* %2, metadata !3142, metadata !DIExpression()) #10, !dbg !3323
  %3 = icmp eq i8* %2, null, !dbg !3324
  %4 = icmp ne i64 %0, 0, !dbg !3325
  %5 = and i1 %4, %3, !dbg !3326
  br i1 %5, label %6, label %7, !dbg !3326

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3327
  unreachable, !dbg !3327

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* align 1 %2, i8 0, i64 %0, i1 false), !dbg !3328
  ret i8* %2, !dbg !3329
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64, i64) local_unnamed_addr #7 !dbg !3330 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3332, metadata !DIExpression()), !dbg !3335
  call void @llvm.dbg.value(metadata i64 %1, metadata !3333, metadata !DIExpression()), !dbg !3336
  %3 = udiv i64 9223372036854775807, %1, !dbg !3337
  %4 = icmp ult i64 %3, %0, !dbg !3337
  br i1 %4, label %8, label %5, !dbg !3339

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #10, !dbg !3340
  call void @llvm.dbg.value(metadata i8* %6, metadata !3334, metadata !DIExpression()), !dbg !3341
  %7 = icmp eq i8* %6, null, !dbg !3342
  br i1 %7, label %8, label %9, !dbg !3343

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !3344
  unreachable, !dbg !3344

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3345
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #7 !dbg !3346 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3352, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata i64 %1, metadata !3353, metadata !DIExpression()), !dbg !3355
  call void @llvm.dbg.value(metadata i64 %1, metadata !3136, metadata !DIExpression()) #10, !dbg !3356
  %3 = tail call noalias i8* @malloc(i64 %1) #10, !dbg !3358
  call void @llvm.dbg.value(metadata i8* %3, metadata !3142, metadata !DIExpression()) #10, !dbg !3359
  %4 = icmp eq i8* %3, null, !dbg !3360
  %5 = icmp ne i64 %1, 0, !dbg !3361
  %6 = and i1 %5, %4, !dbg !3362
  br i1 %6, label %7, label %8, !dbg !3362

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3363
  unreachable, !dbg !3363

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 %0, i64 %1, i1 false), !dbg !3364
  ret i8* %3, !dbg !3365
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #7 !dbg !3366 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3368, metadata !DIExpression()), !dbg !3369
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !3370
  %3 = add i64 %2, 1, !dbg !3371
  call void @llvm.dbg.value(metadata i8* %0, metadata !3352, metadata !DIExpression()) #10, !dbg !3372
  call void @llvm.dbg.value(metadata i64 %3, metadata !3353, metadata !DIExpression()) #10, !dbg !3374
  call void @llvm.dbg.value(metadata i64 %3, metadata !3136, metadata !DIExpression()) #10, !dbg !3375
  %4 = tail call noalias i8* @malloc(i64 %3) #10, !dbg !3377
  call void @llvm.dbg.value(metadata i8* %4, metadata !3142, metadata !DIExpression()) #10, !dbg !3378
  %5 = icmp eq i8* %4, null, !dbg !3379
  %6 = icmp ne i64 %3, 0, !dbg !3380
  %7 = and i1 %6, %5, !dbg !3381
  br i1 %7, label %8, label %9, !dbg !3381

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3382
  unreachable, !dbg !3382

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %0, i64 %3, i1 false) #10, !dbg !3383
  ret i8* %4, !dbg !3384
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3385 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3387, !tbaa !734
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.112, i64 0, i64 0), i32 5) #10, !dbg !3388
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.113, i64 0, i64 0), i8* %2) #10, !dbg !3389
  tail call void @abort() #15, !dbg !3390
  unreachable, !dbg !3390
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #7 !dbg !3391 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3394, metadata !DIExpression()), !dbg !3400
  call void @llvm.dbg.value(metadata i64 %1, metadata !3395, metadata !DIExpression()), !dbg !3401
  %3 = icmp eq i64 %0, 0, !dbg !3402
  %4 = icmp eq i64 %1, 0, !dbg !3403
  %5 = or i1 %3, %4, !dbg !3404
  br i1 %5, label %12, label %6, !dbg !3404

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3405
  call void @llvm.dbg.value(metadata i64 %7, metadata !3397, metadata !DIExpression()), !dbg !3406
  %8 = udiv i64 %7, %1, !dbg !3407
  %9 = icmp eq i64 %8, %0, !dbg !3409
  br i1 %9, label %12, label %10, !dbg !3410

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !3411
  store i32 12, i32* %11, align 4, !dbg !3413, !tbaa !734
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %14, metadata !3394, metadata !DIExpression()), !dbg !3400
  call void @llvm.dbg.value(metadata i64 %13, metadata !3395, metadata !DIExpression()), !dbg !3401
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #10, !dbg !3414
  call void @llvm.dbg.value(metadata i8* %15, metadata !3396, metadata !DIExpression()), !dbg !3415
  br label %16, !dbg !3416

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ], !dbg !3417
  ret i8* %17, !dbg !3418
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #7 !dbg !3419 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3458, metadata !DIExpression()), !dbg !3462
  call void @llvm.dbg.value(metadata i32 0, metadata !3459, metadata !DIExpression()), !dbg !3463
  call void @llvm.dbg.value(metadata i32 0, metadata !3461, metadata !DIExpression()), !dbg !3464
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3465
  call void @llvm.dbg.value(metadata i32 %2, metadata !3460, metadata !DIExpression()), !dbg !3466
  %3 = icmp slt i32 %2, 0, !dbg !3467
  br i1 %3, label %4, label %6, !dbg !3469

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3470
  br label %24, !dbg !3471

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !3472
  %8 = icmp eq i32 %7, 0, !dbg !3472
  br i1 %8, label %13, label %9, !dbg !3474

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3475
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #10, !dbg !3476
  %12 = icmp eq i64 %11, -1, !dbg !3477
  br i1 %12, label %16, label %13, !dbg !3478

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #10, !dbg !3479
  %15 = icmp eq i32 %14, 0, !dbg !3479
  br i1 %15, label %16, label %18, !dbg !3480

; <label>:16:                                     ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3459, metadata !DIExpression()), !dbg !3463
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3481
  call void @llvm.dbg.value(metadata i32 %21, metadata !3461, metadata !DIExpression()), !dbg !3464
  br label %24, !dbg !3482

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !3483
  %20 = load i32, i32* %19, align 4, !dbg !3483, !tbaa !734
  call void @llvm.dbg.value(metadata i32 %20, metadata !3459, metadata !DIExpression()), !dbg !3463
  call void @llvm.dbg.value(metadata i32 %20, metadata !3459, metadata !DIExpression()), !dbg !3463
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3481
  call void @llvm.dbg.value(metadata i32 %21, metadata !3461, metadata !DIExpression()), !dbg !3464
  %22 = icmp eq i32 %20, 0, !dbg !3484
  br i1 %22, label %24, label %23, !dbg !3482

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3486, !tbaa !734
  call void @llvm.dbg.value(metadata i32 -1, metadata !3461, metadata !DIExpression()), !dbg !3464
  br label %24, !dbg !3488

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3489
  ret i32 %25, !dbg !3490
}

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !3491 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3530, metadata !DIExpression()), !dbg !3531
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3532
  br i1 %2, label %6, label %3, !dbg !3534

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !3535
  %5 = icmp eq i32 %4, 0, !dbg !3535
  br i1 %5, label %6, label %8, !dbg !3536

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3537
  br label %17, !dbg !3538

; <label>:8:                                      ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3539, metadata !DIExpression()) #10, !dbg !3544
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3546
  %10 = load i32, i32* %9, align 8, !dbg !3546, !tbaa !879
  %11 = and i32 %10, 256, !dbg !3548
  %12 = icmp eq i32 %11, 0, !dbg !3548
  br i1 %12, label %15, label %13, !dbg !3549

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #10, !dbg !3550
  br label %15, !dbg !3550

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3551
  br label %17, !dbg !3552

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3553
  ret i32 %18, !dbg !3554
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #7 !dbg !3555 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3594, metadata !DIExpression()), !dbg !3600
  call void @llvm.dbg.value(metadata i64 %1, metadata !3595, metadata !DIExpression()), !dbg !3601
  call void @llvm.dbg.value(metadata i32 %2, metadata !3596, metadata !DIExpression()), !dbg !3602
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3603
  %5 = load i8*, i8** %4, align 8, !dbg !3603, !tbaa !3604
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3605
  %7 = load i8*, i8** %6, align 8, !dbg !3605, !tbaa !3606
  %8 = icmp eq i8* %5, %7, !dbg !3607
  br i1 %8, label %9, label %28, !dbg !3608

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3609
  %11 = load i8*, i8** %10, align 8, !dbg !3609, !tbaa !3610
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3611
  %13 = load i8*, i8** %12, align 8, !dbg !3611, !tbaa !3612
  %14 = icmp eq i8* %11, %13, !dbg !3613
  br i1 %14, label %15, label %28, !dbg !3614

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3615
  %17 = load i8*, i8** %16, align 8, !dbg !3615, !tbaa !3616
  %18 = icmp eq i8* %17, null, !dbg !3617
  br i1 %18, label %19, label %28, !dbg !3618

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3619
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #10, !dbg !3620
  call void @llvm.dbg.value(metadata i64 %21, metadata !3597, metadata !DIExpression()), !dbg !3621
  %22 = icmp eq i64 %21, -1, !dbg !3622
  br i1 %22, label %30, label %23, !dbg !3624

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3625
  %25 = load i32, i32* %24, align 8, !dbg !3626, !tbaa !879
  %26 = and i32 %25, -17, !dbg !3626
  store i32 %26, i32* %24, align 8, !dbg !3626, !tbaa !879
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3627
  store i64 %21, i64* %27, align 8, !dbg !3628, !tbaa !3629
  br label %30, !dbg !3630

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3631
  br label %30, !dbg !3632

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3633
  ret i32 %31, !dbg !3634
}

; Function Attrs: nounwind
declare i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #7 !dbg !3635 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !3652, metadata !DIExpression()), !dbg !3661
  call void @llvm.dbg.value(metadata i8* %1, metadata !3653, metadata !DIExpression()), !dbg !3662
  call void @llvm.dbg.value(metadata i64 %2, metadata !3654, metadata !DIExpression()), !dbg !3663
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3655, metadata !DIExpression()), !dbg !3664
  %6 = bitcast i32* %5 to i8*, !dbg !3665
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #10, !dbg !3665
  %7 = icmp eq i32* %0, null, !dbg !3666
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3668
  call void @llvm.dbg.value(metadata i32* %8, metadata !3652, metadata !DIExpression()), !dbg !3661
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #10, !dbg !3669
  call void @llvm.dbg.value(metadata i64 %9, metadata !3656, metadata !DIExpression()), !dbg !3670
  %10 = icmp ugt i64 %9, -3, !dbg !3671
  %11 = icmp ne i64 %2, 0, !dbg !3672
  %12 = and i1 %11, %10, !dbg !3673
  br i1 %12, label %13, label %18, !dbg !3673

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #10, !dbg !3674
  br i1 %14, label %18, label %15, !dbg !3675

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3676, !tbaa !892
  call void @llvm.dbg.value(metadata i8 %16, metadata !3658, metadata !DIExpression()), !dbg !3677
  %17 = zext i8 %16 to i32, !dbg !3678
  store i32 %17, i32* %8, align 4, !dbg !3679, !tbaa !734
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !3680
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #10, !dbg !3681
  ret i64 %19, !dbg !3681
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !3682 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3721, metadata !DIExpression()), !dbg !3726
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #10, !dbg !3727
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3728, metadata !DIExpression()), !dbg !3731
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3733
  %4 = load i32, i32* %3, align 8, !dbg !3733, !tbaa !879
  %5 = and i32 %4, 32, !dbg !3733
  %6 = icmp eq i32 %5, 0, !dbg !3734
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #10, !dbg !3735
  %8 = icmp ne i32 %7, 0, !dbg !3736
  br i1 %6, label %9, label %19, !dbg !3737

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3739
  %11 = xor i1 %8, true, !dbg !3740
  %12 = or i1 %10, %11, !dbg !3740
  %13 = sext i1 %8 to i32, !dbg !3740
  br i1 %12, label %22, label %14, !dbg !3740

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !3741
  %16 = load i32, i32* %15, align 4, !dbg !3741, !tbaa !734
  %17 = icmp ne i32 %16, 9, !dbg !3742
  %18 = sext i1 %17 to i32, !dbg !3743
  br label %22, !dbg !3743

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3744

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !3746
  store i32 0, i32* %21, align 4, !dbg !3748, !tbaa !734
  br label %22, !dbg !3746

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3749
  ret i32 %23, !dbg !3750
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32) local_unnamed_addr #7 !dbg !3751 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3756, metadata !DIExpression()), !dbg !3759
  call void @llvm.dbg.value(metadata i8 1, metadata !3757, metadata !DIExpression()), !dbg !3760
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #10, !dbg !3761
  call void @llvm.dbg.value(metadata i8* %2, metadata !3758, metadata !DIExpression()), !dbg !3762
  %3 = icmp eq i8* %2, null, !dbg !3763
  br i1 %3, label %11, label %4, !dbg !3765

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.128, i64 0, i64 0)) #14, !dbg !3766
  %6 = icmp eq i32 %5, 0, !dbg !3771
  br i1 %6, label %10, label %7, !dbg !3772

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.129, i64 0, i64 0)) #14, !dbg !3773
  %9 = icmp eq i32 %8, 0, !dbg !3774
  br i1 %9, label %10, label %11, !dbg !3775

; <label>:10:                                     ; preds = %7, %4
  call void @llvm.dbg.value(metadata i8 0, metadata !3757, metadata !DIExpression()), !dbg !3760
  br label %11, !dbg !3776

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !3777
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #7 !dbg !3778 {
  %1 = tail call i8* @nl_langinfo(i32 14) #10, !dbg !3784
  call void @llvm.dbg.value(metadata i8* %1, metadata !3783, metadata !DIExpression()), !dbg !3785
  %2 = icmp eq i8* %1, null, !dbg !3786
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.132, i64 0, i64 0), i8* %1, !dbg !3788
  call void @llvm.dbg.value(metadata i8* %3, metadata !3783, metadata !DIExpression()), !dbg !3785
  %4 = load i8, i8* %3, align 1, !dbg !3789, !tbaa !892
  %5 = icmp eq i8 %4, 0, !dbg !3793
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.133, i64 0, i64 0), i8* %3, !dbg !3794
  call void @llvm.dbg.value(metadata i8* %6, metadata !3783, metadata !DIExpression()), !dbg !3785
  ret i8* %6, !dbg !3795
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

!llvm.dbg.cu = !{!2, !63, !69, !77, !184, !187, !84, !100, !108, !193, !177, !201, !218, !220, !222, !224, !226, !228, !231, !233, !235}
!llvm.ident = !{!624, !624, !624, !624, !624, !624, !624, !624, !624, !624, !624, !624, !624, !624, !624, !624, !624, !624, !624, !624, !624}
!llvm.module.flags = !{!625, !626, !627, !628, !629}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !3, line: 110, type: !47, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !29, globals: !34)
!3 = !DIFile(filename: "src/cksum.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
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
!29 = !{!30, !33, !7}
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!32 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!34 = !{!35, !0, !38}
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(name: "have_read_stdin", scope: !2, file: !3, line: 175, type: !37, isLocal: true, isDefinition: true)
!37 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(name: "crctab", scope: !2, file: !3, line: 118, type: !40, isLocal: true, isDefinition: true)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 16384, elements: !45)
!41 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast32_t", file: !43, line: 74, baseType: !44)
!43 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!44 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!45 = !{!46}
!46 = !DISubrange(count: 256)
!47 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 256, elements: !58)
!48 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !50, line: 50, size: 256, elements: !51)
!50 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!51 = !{!52, !53, !55, !57}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !49, file: !50, line: 52, baseType: !30, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !49, file: !50, line: 55, baseType: !54, size: 32, offset: 64)
!54 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !49, file: !50, line: 56, baseType: !56, size: 64, offset: 128)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !49, file: !50, line: 57, baseType: !54, size: 32, offset: 192)
!58 = !{!59}
!59 = !DISubrange(count: 1)
!60 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression(DW_OP_deref, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(name: "Version", scope: !63, file: !64, line: 2, type: !30, isLocal: false, isDefinition: true)
!63 = distinct !DICompileUnit(language: DW_LANG_C99, file: !64, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !65, globals: !66)
!64 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!65 = !{}
!66 = !{!61}
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(name: "file_name", scope: !69, file: !74, line: 46, type: !30, isLocal: true, isDefinition: true)
!69 = distinct !DICompileUnit(language: DW_LANG_C99, file: !70, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !65, globals: !71)
!70 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!71 = !{!67, !72}
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !69, file: !74, line: 56, type: !37, isLocal: true, isDefinition: true)
!74 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!75 = !DIGlobalVariableExpression(var: !76, expr: !DIExpression())
!76 = distinct !DIGlobalVariable(name: "exit_failure", scope: !77, file: !80, line: 24, type: !81, isLocal: false, isDefinition: true)
!77 = distinct !DICompileUnit(language: DW_LANG_C99, file: !78, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !65, globals: !79)
!78 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!79 = !{!75}
!80 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!81 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !54)
!82 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression())
!83 = distinct !DIGlobalVariable(name: "long_options", scope: !84, file: !87, line: 33, type: !88, isLocal: true, isDefinition: true)
!84 = distinct !DICompileUnit(language: DW_LANG_C99, file: !85, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !65, globals: !86)
!85 = !DIFile(filename: "./lib/long-options.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!86 = !{!82}
!87 = !DIFile(filename: "lib/long-options.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!88 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 768, elements: !96)
!89 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !90)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !50, line: 50, size: 256, elements: !91)
!91 = !{!92, !93, !94, !95}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !90, file: !50, line: 52, baseType: !30, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !90, file: !50, line: 55, baseType: !54, size: 32, offset: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !90, file: !50, line: 56, baseType: !56, size: 64, offset: 128)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !90, file: !50, line: 57, baseType: !54, size: 32, offset: 192)
!96 = !{!97}
!97 = !DISubrange(count: 3)
!98 = !DIGlobalVariableExpression(var: !99, expr: !DIExpression())
!99 = distinct !DIGlobalVariable(name: "program_name", scope: !100, file: !105, line: 33, type: !30, isLocal: false, isDefinition: true)
!100 = distinct !DICompileUnit(language: DW_LANG_C99, file: !101, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !65, retainedTypes: !102, globals: !104)
!101 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!102 = !{!33, !103}
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!104 = !{!98}
!105 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!106 = !DIGlobalVariableExpression(var: !107, expr: !DIExpression())
!107 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !108, file: !138, line: 85, type: !171, isLocal: false, isDefinition: true)
!108 = distinct !DICompileUnit(language: DW_LANG_C99, file: !109, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !110, retainedTypes: !131, globals: !135)
!109 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!110 = !{!5, !111, !116}
!111 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 242, baseType: !7, size: 32, elements: !112)
!112 = !{!113, !114, !115}
!113 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!114 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!115 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!116 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !117, line: 46, baseType: !7, size: 32, elements: !118)
!117 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!118 = !{!119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130}
!119 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!120 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!121 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!122 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!123 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!124 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!125 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!126 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!127 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!128 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!129 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!130 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!131 = !{!54, !132, !133, !103}
!132 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !134, line: 62, baseType: !44)
!134 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!135 = !{!106, !136, !143, !155, !157, !160, !167, !169}
!136 = !DIGlobalVariableExpression(var: !137, expr: !DIExpression())
!137 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !108, file: !138, line: 101, type: !139, isLocal: false, isDefinition: true)
!138 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 320, elements: !141)
!140 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!141 = !{!142}
!142 = !DISubrange(count: 10)
!143 = !DIGlobalVariableExpression(var: !144, expr: !DIExpression())
!144 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !108, file: !138, line: 1052, type: !145, isLocal: false, isDefinition: true)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !138, line: 65, size: 448, elements: !146)
!146 = !{!147, !148, !149, !153, !154}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !145, file: !138, line: 68, baseType: !5, size: 32)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !145, file: !138, line: 71, baseType: !54, size: 32, offset: 32)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !145, file: !138, line: 75, baseType: !150, size: 256, offset: 64)
!150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !151)
!151 = !{!152}
!152 = !DISubrange(count: 8)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !145, file: !138, line: 78, baseType: !30, size: 64, offset: 320)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !145, file: !138, line: 81, baseType: !30, size: 64, offset: 384)
!155 = !DIGlobalVariableExpression(var: !156, expr: !DIExpression())
!156 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !108, file: !138, line: 116, type: !145, isLocal: true, isDefinition: true)
!157 = !DIGlobalVariableExpression(var: !158, expr: !DIExpression())
!158 = distinct !DIGlobalVariable(name: "slot0", scope: !108, file: !138, line: 842, type: !159, isLocal: true, isDefinition: true)
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 2048, elements: !45)
!160 = !DIGlobalVariableExpression(var: !161, expr: !DIExpression())
!161 = distinct !DIGlobalVariable(name: "slotvec", scope: !108, file: !138, line: 845, type: !162, isLocal: true, isDefinition: true)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !138, line: 834, size: 128, elements: !164)
!164 = !{!165, !166}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !163, file: !138, line: 836, baseType: !133, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !163, file: !138, line: 837, baseType: !103, size: 64, offset: 64)
!167 = !DIGlobalVariableExpression(var: !168, expr: !DIExpression())
!168 = distinct !DIGlobalVariable(name: "nslots", scope: !108, file: !138, line: 843, type: !54, isLocal: true, isDefinition: true)
!169 = !DIGlobalVariableExpression(var: !170, expr: !DIExpression())
!170 = distinct !DIGlobalVariable(name: "slotvec0", scope: !108, file: !138, line: 844, type: !163, isLocal: true, isDefinition: true)
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 704, elements: !173)
!172 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!173 = !{!174}
!174 = !DISubrange(count: 11)
!175 = !DIGlobalVariableExpression(var: !176, expr: !DIExpression())
!176 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !177, file: !180, line: 26, type: !181, isLocal: false, isDefinition: true)
!177 = distinct !DICompileUnit(language: DW_LANG_C99, file: !178, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !65, globals: !179)
!178 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!179 = !{!175}
!180 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 376, elements: !182)
!182 = !{!183}
!183 = !DISubrange(count: 47)
!184 = distinct !DICompileUnit(language: DW_LANG_C99, file: !185, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !186)
!185 = !DIFile(filename: "./lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!186 = !{!20}
!187 = distinct !DICompileUnit(language: DW_LANG_C99, file: !188, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !65, retainedTypes: !189)
!188 = !DIFile(filename: "./lib/umaxtostr.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!189 = !{!190}
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !43, line: 102, baseType: !191)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !192, line: 72, baseType: !44)
!192 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!193 = distinct !DICompileUnit(language: DW_LANG_C99, file: !194, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !195, retainedTypes: !200)
!194 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!195 = !{!196}
!196 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !197, line: 41, baseType: !7, size: 32, elements: !198)
!197 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!198 = !{!199}
!199 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2018, isUnsigned: true)
!200 = !{!33}
!201 = distinct !DICompileUnit(language: DW_LANG_C99, file: !202, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !203, retainedTypes: !217)
!202 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!203 = !{!204}
!204 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !206, file: !205, line: 186, baseType: !7, size: 32, elements: !215)
!205 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!206 = distinct !DISubprogram(name: "x2nrealloc", scope: !205, file: !205, line: 174, type: !207, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !201, retainedNodes: !210)
!207 = !DISubroutineType(types: !208)
!208 = !{!33, !33, !209, !133}
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!210 = !{!211, !212, !213, !214}
!211 = !DILocalVariable(name: "p", arg: 1, scope: !206, file: !205, line: 174, type: !33)
!212 = !DILocalVariable(name: "pn", arg: 2, scope: !206, file: !205, line: 174, type: !209)
!213 = !DILocalVariable(name: "s", arg: 3, scope: !206, file: !205, line: 174, type: !133)
!214 = !DILocalVariable(name: "n", scope: !206, file: !205, line: 176, type: !133)
!215 = !{!216}
!216 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!217 = !{!133, !103, !33}
!218 = distinct !DICompileUnit(language: DW_LANG_C99, file: !219, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !65)
!219 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!220 = distinct !DICompileUnit(language: DW_LANG_C99, file: !221, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !65, retainedTypes: !200)
!221 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!222 = distinct !DICompileUnit(language: DW_LANG_C99, file: !223, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !65)
!223 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!224 = distinct !DICompileUnit(language: DW_LANG_C99, file: !225, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !65, retainedTypes: !200)
!225 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!226 = distinct !DICompileUnit(language: DW_LANG_C99, file: !227, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !65, retainedTypes: !200)
!227 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!228 = distinct !DICompileUnit(language: DW_LANG_C99, file: !229, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !65, retainedTypes: !230)
!229 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!230 = !{!133}
!231 = distinct !DICompileUnit(language: DW_LANG_C99, file: !232, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !65)
!232 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!233 = distinct !DICompileUnit(language: DW_LANG_C99, file: !234, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !65)
!234 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!235 = distinct !DICompileUnit(language: DW_LANG_C99, file: !236, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !237, retainedTypes: !200)
!236 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!237 = !{!238}
!238 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !239, line: 41, baseType: !7, size: 32, elements: !240)
!239 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!240 = !{!241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623}
!241 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!242 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!243 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!244 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!245 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!246 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!247 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!248 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!249 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!250 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!251 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!252 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!253 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!254 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!255 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!256 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!257 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!258 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!259 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!260 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!261 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!262 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!263 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!264 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!265 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!266 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!267 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!268 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!269 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!270 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!271 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!272 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!273 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!274 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!275 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!276 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!277 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!278 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!279 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!280 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!281 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!282 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!283 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!284 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!285 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!286 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!287 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!288 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!289 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!290 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!291 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!292 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!293 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!294 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!295 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!296 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!297 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!298 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!299 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!300 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!301 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!302 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!303 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!304 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!305 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!306 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!307 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!308 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!309 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!310 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!311 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!312 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!313 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!314 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!315 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!316 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!317 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!318 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!319 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!320 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!321 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!322 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!323 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!324 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!325 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!326 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!327 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!328 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!329 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!330 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!331 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!332 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!333 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!334 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!335 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!336 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!337 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!338 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!339 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!340 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!341 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!342 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!343 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!344 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!345 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!346 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!347 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!348 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!349 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!350 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!351 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!352 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!353 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!354 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!355 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!356 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!357 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!358 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!359 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!360 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!361 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!362 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!363 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!364 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!365 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!366 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!367 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!368 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!369 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!370 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!371 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!372 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!373 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!374 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!375 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!376 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!377 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!378 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!379 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!380 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!381 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!382 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!383 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!384 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!385 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!386 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!387 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!388 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!389 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!390 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!391 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!392 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!393 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!394 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!395 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!396 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!400 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!405 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!406 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!408 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!409 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!410 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!411 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!412 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!413 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!414 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!415 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!416 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!417 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!418 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!419 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!420 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!421 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!435 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!436 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!456 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!457 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!458 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!459 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!460 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!461 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!462 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!463 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!465 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!466 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!468 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!469 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!473 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!474 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!475 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!476 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!477 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!478 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!479 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!481 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!482 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!483 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!484 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!485 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!486 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!487 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!488 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!489 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!490 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!491 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!492 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!493 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!494 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!495 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!496 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!497 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!498 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!499 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!500 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!501 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!502 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!503 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!504 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!505 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!506 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!507 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!508 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!509 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!510 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!511 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!512 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!513 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!514 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!515 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!516 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!517 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!518 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!519 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!520 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!521 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!522 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!523 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!524 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!525 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!526 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!527 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!528 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!529 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!530 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!531 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!532 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!535 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!536 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!537 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!540 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!541 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!542 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!543 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!544 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!545 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!546 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!547 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!549 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!550 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!551 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!552 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!553 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!556 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!557 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!558 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!559 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!560 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!565 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!566 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!567 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!568 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!571 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!572 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!573 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!574 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!575 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!576 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!577 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!578 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!579 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!580 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!581 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!582 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!583 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!584 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!585 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!586 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!587 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!588 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!589 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!590 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!591 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!592 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!593 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!594 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!595 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!596 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!597 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!598 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!599 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!600 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!601 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!602 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!603 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!604 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!605 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!606 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!607 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!608 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!609 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!610 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!611 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!612 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!613 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!614 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!615 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!616 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!617 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!618 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!619 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!620 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!621 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!622 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!623 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!624 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!625 = !{i32 2, !"Dwarf Version", i32 4}
!626 = !{i32 2, !"Debug Info Version", i32 3}
!627 = !{i32 1, !"wchar_size", i32 4}
!628 = !{i32 7, !"PIC Level", i32 2}
!629 = !{i32 7, !"PIE Level", i32 2}
!630 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 257, type: !631, isLocal: false, isDefinition: true, scopeLine: 258, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, retainedNodes: !633)
!631 = !DISubroutineType(types: !632)
!632 = !{null, !54}
!633 = !{!634}
!634 = !DILocalVariable(name: "status", arg: 1, scope: !630, file: !3, line: 257, type: !54)
!635 = !DILocalVariable(name: "infomap", scope: !636, file: !637, line: 632, type: !651)
!636 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !637, file: !637, line: 630, type: !638, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !640)
!637 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!638 = !DISubroutineType(types: !639)
!639 = !{null, !30}
!640 = !{!641, !635, !642, !643, !650}
!641 = !DILocalVariable(name: "program", arg: 1, scope: !636, file: !637, line: 630, type: !30)
!642 = !DILocalVariable(name: "node", scope: !636, file: !637, line: 642, type: !30)
!643 = !DILocalVariable(name: "map_prog", scope: !636, file: !637, line: 643, type: !644)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !646)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !636, file: !637, line: 632, size: 128, elements: !647)
!647 = !{!648, !649}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !646, file: !637, line: 632, baseType: !30, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !646, file: !637, line: 632, baseType: !30, size: 64, offset: 64)
!650 = !DILocalVariable(name: "lc_messages", scope: !636, file: !637, line: 655, type: !30)
!651 = !DICompositeType(tag: DW_TAG_array_type, baseType: !645, size: 896, elements: !652)
!652 = !{!653}
!653 = !DISubrange(count: 7)
!654 = !DILocation(line: 632, column: 67, scope: !636, inlinedAt: !655)
!655 = distinct !DILocation(line: 274, column: 7, scope: !656)
!656 = distinct !DILexicalBlock(scope: !657, file: !3, line: 262, column: 5)
!657 = distinct !DILexicalBlock(scope: !630, file: !3, line: 259, column: 7)
!658 = !DILocation(line: 257, column: 12, scope: !630)
!659 = !DILocation(line: 259, column: 14, scope: !657)
!660 = !DILocation(line: 259, column: 7, scope: !630)
!661 = !DILocation(line: 260, column: 5, scope: !662)
!662 = distinct !DILexicalBlock(scope: !657, file: !3, line: 260, column: 5)
!663 = !{!664, !664, i64 0}
!664 = !{!"any pointer", !665, i64 0}
!665 = !{!"omnipotent char", !666, i64 0}
!666 = !{!"Simple C/C++ TBAA"}
!667 = !DILocation(line: 263, column: 7, scope: !656)
!668 = !DILocation(line: 268, column: 7, scope: !656)
!669 = !DILocation(line: 272, column: 7, scope: !656)
!670 = !DILocation(line: 273, column: 7, scope: !656)
!671 = !DILocation(line: 632, column: 3, scope: !636, inlinedAt: !655)
!672 = !DILocation(line: 643, column: 36, scope: !636, inlinedAt: !655)
!673 = !DILocation(line: 643, column: 25, scope: !636, inlinedAt: !655)
!674 = !DILocation(line: 645, column: 33, scope: !636, inlinedAt: !655)
!675 = !DILocation(line: 645, column: 3, scope: !636, inlinedAt: !655)
!676 = !DILocation(line: 646, column: 13, scope: !636, inlinedAt: !655)
!677 = !DILocation(line: 645, column: 20, scope: !636, inlinedAt: !655)
!678 = !{!679, !664, i64 0}
!679 = !{!"infomap", !664, i64 0, !664, i64 8}
!680 = !DILocation(line: 645, column: 10, scope: !636, inlinedAt: !655)
!681 = !DILocation(line: 645, column: 28, scope: !636, inlinedAt: !655)
!682 = distinct !{!682, !683, !684}
!683 = !DILocation(line: 645, column: 3, scope: !636)
!684 = !DILocation(line: 646, column: 13, scope: !636)
!685 = !DILocation(line: 648, column: 17, scope: !686, inlinedAt: !655)
!686 = distinct !DILexicalBlock(scope: !636, file: !637, line: 648, column: 7)
!687 = !{!679, !664, i64 8}
!688 = !DILocation(line: 648, column: 7, scope: !686, inlinedAt: !655)
!689 = !DILocation(line: 648, column: 7, scope: !636, inlinedAt: !655)
!690 = !DILocation(line: 642, column: 15, scope: !636, inlinedAt: !655)
!691 = !DILocation(line: 651, column: 3, scope: !636, inlinedAt: !655)
!692 = !DILocation(line: 655, column: 29, scope: !636, inlinedAt: !655)
!693 = !DILocation(line: 655, column: 15, scope: !636, inlinedAt: !655)
!694 = !DILocation(line: 656, column: 7, scope: !695, inlinedAt: !655)
!695 = distinct !DILexicalBlock(scope: !636, file: !637, line: 656, column: 7)
!696 = !DILocation(line: 656, column: 19, scope: !695, inlinedAt: !655)
!697 = !DILocation(line: 656, column: 22, scope: !695, inlinedAt: !655)
!698 = !DILocation(line: 656, column: 7, scope: !636, inlinedAt: !655)
!699 = !DILocation(line: 662, column: 7, scope: !700, inlinedAt: !655)
!700 = distinct !DILexicalBlock(scope: !695, file: !637, line: 657, column: 5)
!701 = !DILocation(line: 664, column: 5, scope: !700, inlinedAt: !655)
!702 = !DILocation(line: 665, column: 3, scope: !636, inlinedAt: !655)
!703 = !DILocation(line: 667, column: 3, scope: !636, inlinedAt: !655)
!704 = !DILocation(line: 669, column: 1, scope: !636, inlinedAt: !655)
!705 = !DILocation(line: 276, column: 3, scope: !630)
!706 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 280, type: !707, isLocal: false, isDefinition: true, scopeLine: 281, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !710)
!707 = !DISubroutineType(types: !708)
!708 = !{!54, !54, !709}
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!710 = !{!711, !712, !713, !714}
!711 = !DILocalVariable(name: "argc", arg: 1, scope: !706, file: !3, line: 280, type: !54)
!712 = !DILocalVariable(name: "argv", arg: 2, scope: !706, file: !3, line: 280, type: !709)
!713 = !DILocalVariable(name: "i", scope: !706, file: !3, line: 282, type: !54)
!714 = !DILocalVariable(name: "ok", scope: !706, file: !3, line: 283, type: !37)
!715 = !DILocation(line: 280, column: 11, scope: !706)
!716 = !DILocation(line: 280, column: 24, scope: !706)
!717 = !DILocation(line: 286, column: 21, scope: !706)
!718 = !DILocation(line: 286, column: 3, scope: !706)
!719 = !DILocation(line: 287, column: 3, scope: !706)
!720 = !DILocation(line: 288, column: 3, scope: !706)
!721 = !DILocation(line: 289, column: 3, scope: !706)
!722 = !DILocation(line: 291, column: 3, scope: !706)
!723 = !DILocation(line: 295, column: 12, scope: !706)
!724 = !DILocation(line: 295, column: 3, scope: !706)
!725 = !DILocation(line: 297, column: 58, scope: !706)
!726 = !DILocation(line: 297, column: 3, scope: !706)
!727 = !DILocation(line: 299, column: 7, scope: !728)
!728 = distinct !DILexicalBlock(scope: !706, file: !3, line: 299, column: 7)
!729 = !DILocation(line: 299, column: 56, scope: !728)
!730 = !DILocation(line: 299, column: 7, scope: !706)
!731 = !DILocation(line: 300, column: 5, scope: !728)
!732 = !DILocation(line: 304, column: 7, scope: !733)
!733 = distinct !DILexicalBlock(scope: !706, file: !3, line: 304, column: 7)
!734 = !{!735, !735, i64 0}
!735 = !{!"int", !665, i64 0}
!736 = !DILocation(line: 304, column: 14, scope: !733)
!737 = !DILocation(line: 304, column: 7, scope: !706)
!738 = !DILocation(line: 283, column: 8, scope: !706)
!739 = !DILocation(line: 282, column: 7, scope: !706)
!740 = !DILocation(line: 309, column: 26, scope: !741)
!741 = distinct !DILexicalBlock(scope: !742, file: !3, line: 309, column: 7)
!742 = distinct !DILexicalBlock(scope: !743, file: !3, line: 309, column: 7)
!743 = distinct !DILexicalBlock(scope: !733, file: !3, line: 307, column: 5)
!744 = !DILocation(line: 309, column: 7, scope: !742)
!745 = !DILocation(line: 310, column: 22, scope: !741)
!746 = !DILocation(line: 305, column: 10, scope: !733)
!747 = !DILocation(line: 305, column: 8, scope: !733)
!748 = !DILocation(line: 305, column: 5, scope: !733)
!749 = !DILocation(line: 310, column: 15, scope: !741)
!750 = !DILocation(line: 310, column: 12, scope: !741)
!751 = !DILocation(line: 309, column: 35, scope: !741)
!752 = distinct !{!752, !744, !753}
!753 = !DILocation(line: 310, column: 35, scope: !742)
!754 = !DILocation(line: 313, column: 23, scope: !755)
!755 = distinct !DILexicalBlock(scope: !706, file: !3, line: 313, column: 7)
!756 = !DILocation(line: 313, column: 34, scope: !755)
!757 = !DILocation(line: 313, column: 26, scope: !755)
!758 = !DILocation(line: 313, column: 41, scope: !755)
!759 = !DILocation(line: 313, column: 7, scope: !706)
!760 = !DILocation(line: 314, column: 5, scope: !755)
!761 = !DILocation(line: 315, column: 10, scope: !706)
!762 = !DILocation(line: 315, column: 3, scope: !706)
!763 = distinct !DISubprogram(name: "cksum", scope: !3, file: !3, line: 183, type: !764, isLocal: true, isDefinition: true, scopeLine: 184, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !766)
!764 = !DISubroutineType(types: !765)
!765 = !{!37, !30, !37}
!766 = !{!767, !768, !769, !774, !775, !776, !777, !830, !834, !835}
!767 = !DILocalVariable(name: "file", arg: 1, scope: !763, file: !3, line: 183, type: !30)
!768 = !DILocalVariable(name: "print_name", arg: 2, scope: !763, file: !3, line: 183, type: !37)
!769 = !DILocalVariable(name: "buf", scope: !763, file: !3, line: 185, type: !770)
!770 = !DICompositeType(tag: DW_TAG_array_type, baseType: !771, size: 524288, elements: !772)
!771 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!772 = !{!773}
!773 = !DISubrange(count: 65536)
!774 = !DILocalVariable(name: "crc", scope: !763, file: !3, line: 186, type: !42)
!775 = !DILocalVariable(name: "length", scope: !763, file: !3, line: 187, type: !190)
!776 = !DILocalVariable(name: "bytes_read", scope: !763, file: !3, line: 188, type: !133)
!777 = !DILocalVariable(name: "fp", scope: !763, file: !3, line: 189, type: !778)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !780, line: 7, baseType: !781)
!780 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !782, line: 49, size: 1728, elements: !783)
!782 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!783 = !{!784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !799, !801, !802, !803, !806, !807, !809, !811, !814, !816, !819, !822, !823, !824, !825, !826}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !781, file: !782, line: 51, baseType: !54, size: 32)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !781, file: !782, line: 54, baseType: !103, size: 64, offset: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !781, file: !782, line: 55, baseType: !103, size: 64, offset: 128)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !781, file: !782, line: 56, baseType: !103, size: 64, offset: 192)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !781, file: !782, line: 57, baseType: !103, size: 64, offset: 256)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !781, file: !782, line: 58, baseType: !103, size: 64, offset: 320)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !781, file: !782, line: 59, baseType: !103, size: 64, offset: 384)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !781, file: !782, line: 60, baseType: !103, size: 64, offset: 448)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !781, file: !782, line: 61, baseType: !103, size: 64, offset: 512)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !781, file: !782, line: 64, baseType: !103, size: 64, offset: 576)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !781, file: !782, line: 65, baseType: !103, size: 64, offset: 640)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !781, file: !782, line: 66, baseType: !103, size: 64, offset: 704)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !781, file: !782, line: 68, baseType: !797, size: 64, offset: 768)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !782, line: 36, flags: DIFlagFwdDecl)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !781, file: !782, line: 70, baseType: !800, size: 64, offset: 832)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !781, file: !782, line: 72, baseType: !54, size: 32, offset: 896)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !781, file: !782, line: 73, baseType: !54, size: 32, offset: 928)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !781, file: !782, line: 74, baseType: !804, size: 64, offset: 960)
!804 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !192, line: 150, baseType: !805)
!805 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !781, file: !782, line: 77, baseType: !132, size: 16, offset: 1024)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !781, file: !782, line: 78, baseType: !808, size: 8, offset: 1040)
!808 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !781, file: !782, line: 79, baseType: !810, size: 8, offset: 1048)
!810 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 8, elements: !58)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !781, file: !782, line: 81, baseType: !812, size: 64, offset: 1088)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !782, line: 43, baseType: null)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !781, file: !782, line: 89, baseType: !815, size: 64, offset: 1152)
!815 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !192, line: 151, baseType: !805)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !781, file: !782, line: 91, baseType: !817, size: 64, offset: 1216)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !782, line: 37, flags: DIFlagFwdDecl)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !781, file: !782, line: 92, baseType: !820, size: 64, offset: 1280)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !782, line: 38, flags: DIFlagFwdDecl)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !781, file: !782, line: 93, baseType: !800, size: 64, offset: 1344)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !781, file: !782, line: 94, baseType: !33, size: 64, offset: 1408)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !781, file: !782, line: 95, baseType: !133, size: 64, offset: 1472)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !781, file: !782, line: 96, baseType: !54, size: 32, offset: 1536)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !781, file: !782, line: 98, baseType: !827, size: 160, offset: 1568)
!827 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 160, elements: !828)
!828 = !{!829}
!829 = !DISubrange(count: 20)
!830 = !DILocalVariable(name: "length_buf", scope: !763, file: !3, line: 190, type: !831)
!831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 168, elements: !832)
!832 = !{!833}
!833 = !DISubrange(count: 21)
!834 = !DILocalVariable(name: "hp", scope: !763, file: !3, line: 191, type: !30)
!835 = !DILocalVariable(name: "cp", scope: !836, file: !3, line: 213, type: !837)
!836 = distinct !DILexicalBlock(scope: !763, file: !3, line: 212, column: 5)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!838 = !DILocation(line: 183, column: 20, scope: !763)
!839 = !DILocation(line: 183, column: 31, scope: !763)
!840 = !DILocation(line: 185, column: 3, scope: !763)
!841 = !DILocation(line: 185, column: 17, scope: !763)
!842 = !DILocation(line: 186, column: 17, scope: !763)
!843 = !DILocation(line: 187, column: 13, scope: !763)
!844 = !DILocation(line: 190, column: 3, scope: !763)
!845 = !DILocation(line: 190, column: 8, scope: !763)
!846 = !DILocation(line: 193, column: 7, scope: !847)
!847 = distinct !DILexicalBlock(scope: !763, file: !3, line: 193, column: 7)
!848 = !DILocation(line: 193, column: 7, scope: !763)
!849 = !DILocation(line: 195, column: 12, scope: !850)
!850 = distinct !DILexicalBlock(scope: !847, file: !3, line: 194, column: 5)
!851 = !DILocation(line: 189, column: 9, scope: !763)
!852 = !DILocation(line: 198, column: 5, scope: !850)
!853 = !DILocation(line: 201, column: 12, scope: !854)
!854 = distinct !DILexicalBlock(scope: !847, file: !3, line: 200, column: 5)
!855 = !DILocation(line: 202, column: 14, scope: !856)
!856 = distinct !DILexicalBlock(scope: !854, file: !3, line: 202, column: 11)
!857 = !DILocation(line: 202, column: 11, scope: !854)
!858 = !DILocation(line: 204, column: 21, scope: !859)
!859 = distinct !DILexicalBlock(scope: !856, file: !3, line: 203, column: 9)
!860 = !DILocation(line: 204, column: 34, scope: !859)
!861 = !DILocation(line: 204, column: 11, scope: !859)
!862 = !DILocation(line: 205, column: 11, scope: !859)
!863 = !DILocation(line: 0, scope: !854)
!864 = !DILocation(line: 209, column: 3, scope: !763)
!865 = !DILocation(line: 211, column: 3, scope: !763)
!866 = !DILocation(line: 0, scope: !836)
!867 = !DILocation(line: 211, column: 24, scope: !763)
!868 = !DILocation(line: 188, column: 10, scope: !763)
!869 = !DILocation(line: 211, column: 52, scope: !763)
!870 = !DILocation(line: 137, column: 10, scope: !871, inlinedAt: !877)
!871 = distinct !DISubprogram(name: "ferror_unlocked", scope: !872, file: !872, line: 135, type: !873, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !875)
!872 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!873 = !DISubroutineType(types: !874)
!874 = !{!54, !778}
!875 = !{!876}
!876 = !DILocalVariable(name: "__stream", arg: 1, scope: !871, file: !872, line: 135, type: !778)
!877 = distinct !DILocation(line: 224, column: 7, scope: !878)
!878 = distinct !DILexicalBlock(scope: !763, file: !3, line: 224, column: 7)
!879 = !{!880, !735, i64 0}
!880 = !{!"_IO_FILE", !735, i64 0, !664, i64 8, !664, i64 16, !664, i64 24, !664, i64 32, !664, i64 40, !664, i64 48, !664, i64 56, !664, i64 64, !664, i64 72, !664, i64 80, !664, i64 88, !664, i64 96, !664, i64 104, !735, i64 112, !735, i64 116, !881, i64 120, !882, i64 128, !665, i64 130, !665, i64 131, !664, i64 136, !881, i64 144, !664, i64 152, !664, i64 160, !664, i64 168, !664, i64 176, !881, i64 184, !735, i64 192, !665, i64 196}
!881 = !{!"long", !665, i64 0}
!882 = !{!"short", !665, i64 0}
!883 = !DILocation(line: 213, column: 22, scope: !836)
!884 = !DILocation(line: 215, column: 18, scope: !885)
!885 = distinct !DILexicalBlock(scope: !836, file: !3, line: 215, column: 11)
!886 = !DILocation(line: 215, column: 31, scope: !885)
!887 = !DILocation(line: 215, column: 11, scope: !836)
!888 = !DILocation(line: 218, column: 24, scope: !836)
!889 = !DILocation(line: 219, column: 20, scope: !836)
!890 = !DILocation(line: 219, column: 41, scope: !836)
!891 = !DILocation(line: 219, column: 50, scope: !836)
!892 = !{!665, !665, i64 0}
!893 = !DILocation(line: 219, column: 57, scope: !836)
!894 = !DILocation(line: 219, column: 28, scope: !836)
!895 = !{!881, !881, i64 0}
!896 = !DILocation(line: 219, column: 26, scope: !836)
!897 = !DILocation(line: 218, column: 7, scope: !836)
!898 = !DILocation(line: 216, column: 9, scope: !885)
!899 = !DILocation(line: 219, column: 53, scope: !836)
!900 = distinct !{!900, !897, !901}
!901 = !DILocation(line: 219, column: 63, scope: !836)
!902 = !DILocalVariable(name: "__stream", arg: 1, scope: !903, file: !872, line: 128, type: !778)
!903 = distinct !DISubprogram(name: "feof_unlocked", scope: !872, file: !872, line: 128, type: !873, isLocal: false, isDefinition: true, scopeLine: 129, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !904)
!904 = !{!902}
!905 = !DILocation(line: 128, column: 1, scope: !903, inlinedAt: !906)
!906 = distinct !DILocation(line: 220, column: 11, scope: !907)
!907 = distinct !DILexicalBlock(scope: !836, file: !3, line: 220, column: 11)
!908 = !DILocation(line: 130, column: 10, scope: !903, inlinedAt: !906)
!909 = !DILocation(line: 220, column: 11, scope: !907)
!910 = distinct !{!910, !865, !911}
!911 = !DILocation(line: 222, column: 5, scope: !763)
!912 = !DILocation(line: 0, scope: !763)
!913 = !DILocation(line: 135, column: 1, scope: !871, inlinedAt: !877)
!914 = !DILocation(line: 224, column: 7, scope: !878)
!915 = !DILocation(line: 224, column: 7, scope: !763)
!916 = !DILocation(line: 226, column: 17, scope: !917)
!917 = distinct !DILexicalBlock(scope: !878, file: !3, line: 225, column: 5)
!918 = !DILocation(line: 226, column: 30, scope: !917)
!919 = !DILocation(line: 226, column: 7, scope: !917)
!920 = !DILocation(line: 227, column: 12, scope: !921)
!921 = distinct !DILexicalBlock(scope: !917, file: !3, line: 227, column: 11)
!922 = !DILocation(line: 227, column: 11, scope: !917)
!923 = !DILocation(line: 228, column: 9, scope: !921)
!924 = !DILocation(line: 232, column: 8, scope: !925)
!925 = distinct !DILexicalBlock(scope: !763, file: !3, line: 232, column: 7)
!926 = !DILocation(line: 232, column: 26, scope: !925)
!927 = !DILocation(line: 232, column: 29, scope: !925)
!928 = !DILocation(line: 232, column: 41, scope: !925)
!929 = !DILocation(line: 232, column: 7, scope: !763)
!930 = !DILocation(line: 234, column: 17, scope: !931)
!931 = distinct !DILexicalBlock(scope: !925, file: !3, line: 233, column: 5)
!932 = !DILocation(line: 234, column: 30, scope: !931)
!933 = !DILocation(line: 234, column: 7, scope: !931)
!934 = !DILocation(line: 235, column: 7, scope: !931)
!935 = !DILocation(line: 238, column: 8, scope: !763)
!936 = !DILocation(line: 191, column: 15, scope: !763)
!937 = !DILocation(line: 240, column: 3, scope: !938)
!938 = distinct !DILexicalBlock(scope: !763, file: !3, line: 240, column: 3)
!939 = !DILocation(line: 241, column: 16, scope: !940)
!940 = distinct !DILexicalBlock(scope: !938, file: !3, line: 240, column: 3)
!941 = !DILocation(line: 241, column: 37, scope: !940)
!942 = !DILocation(line: 241, column: 44, scope: !940)
!943 = !DILocation(line: 241, column: 54, scope: !940)
!944 = !DILocation(line: 241, column: 24, scope: !940)
!945 = !DILocation(line: 241, column: 22, scope: !940)
!946 = !DILocation(line: 240, column: 25, scope: !940)
!947 = distinct !{!947, !937, !948}
!948 = !DILocation(line: 241, column: 60, scope: !938)
!949 = !DILocation(line: 0, scope: !940)
!950 = !DILocation(line: 0, scope: !951)
!951 = distinct !DILexicalBlock(scope: !763, file: !3, line: 245, column: 7)
!952 = !DILocation(line: 245, column: 7, scope: !763)
!953 = !DILocation(line: 246, column: 5, scope: !951)
!954 = !DILocation(line: 248, column: 5, scope: !951)
!955 = !DILocation(line: 250, column: 7, scope: !956)
!956 = distinct !DILexicalBlock(scope: !763, file: !3, line: 250, column: 7)
!957 = !DILocation(line: 135, column: 1, scope: !871, inlinedAt: !958)
!958 = distinct !DILocation(line: 250, column: 7, scope: !956)
!959 = !DILocation(line: 137, column: 10, scope: !871, inlinedAt: !958)
!960 = !DILocation(line: 250, column: 7, scope: !763)
!961 = !DILocation(line: 251, column: 5, scope: !956)
!962 = !DILocation(line: 0, scope: !859)
!963 = !DILocation(line: 254, column: 1, scope: !763)
!964 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !74, file: !74, line: 51, type: !638, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !69, retainedNodes: !965)
!965 = !{!966}
!966 = !DILocalVariable(name: "file", arg: 1, scope: !964, file: !74, line: 51, type: !30)
!967 = !DILocation(line: 51, column: 41, scope: !964)
!968 = !DILocation(line: 53, column: 13, scope: !964)
!969 = !DILocation(line: 54, column: 1, scope: !964)
!970 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !74, file: !74, line: 88, type: !971, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !69, retainedNodes: !973)
!971 = !DISubroutineType(types: !972)
!972 = !{null, !37}
!973 = !{!974}
!974 = !DILocalVariable(name: "ignore", arg: 1, scope: !970, file: !74, line: 88, type: !37)
!975 = !DILocation(line: 88, column: 37, scope: !970)
!976 = !DILocation(line: 90, column: 16, scope: !970)
!977 = !{!978, !978, i64 0}
!978 = !{!"_Bool", !665, i64 0}
!979 = !DILocation(line: 91, column: 1, scope: !970)
!980 = distinct !DISubprogram(name: "close_stdout", scope: !74, file: !74, line: 117, type: !981, isLocal: false, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: true, unit: !69, retainedNodes: !983)
!981 = !DISubroutineType(types: !982)
!982 = !{null}
!983 = !{!984}
!984 = !DILocalVariable(name: "write_error", scope: !985, file: !74, line: 122, type: !30)
!985 = distinct !DILexicalBlock(scope: !986, file: !74, line: 121, column: 5)
!986 = distinct !DILexicalBlock(scope: !980, file: !74, line: 119, column: 7)
!987 = !DILocation(line: 119, column: 21, scope: !986)
!988 = !DILocation(line: 119, column: 7, scope: !986)
!989 = !DILocation(line: 119, column: 29, scope: !986)
!990 = !DILocation(line: 120, column: 7, scope: !986)
!991 = !DILocation(line: 120, column: 12, scope: !986)
!992 = !{i8 0, i8 2}
!993 = !DILocation(line: 120, column: 25, scope: !986)
!994 = !DILocation(line: 120, column: 28, scope: !986)
!995 = !DILocation(line: 120, column: 34, scope: !986)
!996 = !DILocation(line: 119, column: 7, scope: !980)
!997 = !DILocation(line: 122, column: 33, scope: !985)
!998 = !DILocation(line: 122, column: 19, scope: !985)
!999 = !DILocation(line: 123, column: 11, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !985, file: !74, line: 123, column: 11)
!1001 = !DILocation(line: 0, scope: !1000)
!1002 = !DILocation(line: 123, column: 11, scope: !985)
!1003 = !DILocation(line: 124, column: 36, scope: !1000)
!1004 = !DILocation(line: 124, column: 9, scope: !1000)
!1005 = !DILocation(line: 127, column: 9, scope: !1000)
!1006 = !DILocation(line: 129, column: 14, scope: !985)
!1007 = !DILocation(line: 129, column: 7, scope: !985)
!1008 = !DILocation(line: 134, column: 42, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !980, file: !74, line: 134, column: 7)
!1010 = !DILocation(line: 134, column: 28, scope: !1009)
!1011 = !DILocation(line: 134, column: 50, scope: !1009)
!1012 = !DILocation(line: 134, column: 7, scope: !980)
!1013 = !DILocation(line: 135, column: 12, scope: !1009)
!1014 = !DILocation(line: 135, column: 5, scope: !1009)
!1015 = !DILocation(line: 136, column: 1, scope: !980)
!1016 = distinct !DISubprogram(name: "fdadvise", scope: !1017, file: !1017, line: 31, type: !1018, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, unit: !184, retainedNodes: !1023)
!1017 = !DIFile(filename: "lib/fadvise.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1018 = !DISubroutineType(types: !1019)
!1019 = !{null, !54, !1020, !1020, !1022}
!1020 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !1021, line: 63, baseType: !804)
!1021 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1022 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !21, line: 52, baseType: !20)
!1023 = !{!1024, !1025, !1026, !1027, !1028}
!1024 = !DILocalVariable(name: "fd", arg: 1, scope: !1016, file: !1017, line: 31, type: !54)
!1025 = !DILocalVariable(name: "offset", arg: 2, scope: !1016, file: !1017, line: 31, type: !1020)
!1026 = !DILocalVariable(name: "len", arg: 3, scope: !1016, file: !1017, line: 31, type: !1020)
!1027 = !DILocalVariable(name: "advice", arg: 4, scope: !1016, file: !1017, line: 31, type: !1022)
!1028 = !DILocalVariable(name: "__x", scope: !1029, file: !1017, line: 34, type: !54)
!1029 = distinct !DILexicalBlock(scope: !1016, file: !1017, line: 34, column: 3)
!1030 = !DILocation(line: 31, column: 15, scope: !1016)
!1031 = !DILocation(line: 31, column: 25, scope: !1016)
!1032 = !DILocation(line: 31, column: 39, scope: !1016)
!1033 = !DILocation(line: 31, column: 54, scope: !1016)
!1034 = !DILocation(line: 34, column: 3, scope: !1029)
!1035 = !DILocation(line: 36, column: 1, scope: !1016)
!1036 = distinct !DISubprogram(name: "fadvise", scope: !1017, file: !1017, line: 39, type: !1037, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !184, retainedNodes: !1073)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{null, !1039, !1022}
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !780, line: 7, baseType: !1041)
!1041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !782, line: 49, size: 1728, elements: !1042)
!1042 = !{!1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1041, file: !782, line: 51, baseType: !54, size: 32)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1041, file: !782, line: 54, baseType: !103, size: 64, offset: 64)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1041, file: !782, line: 55, baseType: !103, size: 64, offset: 128)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1041, file: !782, line: 56, baseType: !103, size: 64, offset: 192)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1041, file: !782, line: 57, baseType: !103, size: 64, offset: 256)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1041, file: !782, line: 58, baseType: !103, size: 64, offset: 320)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1041, file: !782, line: 59, baseType: !103, size: 64, offset: 384)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1041, file: !782, line: 60, baseType: !103, size: 64, offset: 448)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1041, file: !782, line: 61, baseType: !103, size: 64, offset: 512)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1041, file: !782, line: 64, baseType: !103, size: 64, offset: 576)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1041, file: !782, line: 65, baseType: !103, size: 64, offset: 640)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1041, file: !782, line: 66, baseType: !103, size: 64, offset: 704)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1041, file: !782, line: 68, baseType: !797, size: 64, offset: 768)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1041, file: !782, line: 70, baseType: !1057, size: 64, offset: 832)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1041, file: !782, line: 72, baseType: !54, size: 32, offset: 896)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1041, file: !782, line: 73, baseType: !54, size: 32, offset: 928)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1041, file: !782, line: 74, baseType: !804, size: 64, offset: 960)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1041, file: !782, line: 77, baseType: !132, size: 16, offset: 1024)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1041, file: !782, line: 78, baseType: !808, size: 8, offset: 1040)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1041, file: !782, line: 79, baseType: !810, size: 8, offset: 1048)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1041, file: !782, line: 81, baseType: !812, size: 64, offset: 1088)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1041, file: !782, line: 89, baseType: !815, size: 64, offset: 1152)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1041, file: !782, line: 91, baseType: !817, size: 64, offset: 1216)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1041, file: !782, line: 92, baseType: !820, size: 64, offset: 1280)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1041, file: !782, line: 93, baseType: !1057, size: 64, offset: 1344)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1041, file: !782, line: 94, baseType: !33, size: 64, offset: 1408)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1041, file: !782, line: 95, baseType: !133, size: 64, offset: 1472)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1041, file: !782, line: 96, baseType: !54, size: 32, offset: 1536)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1041, file: !782, line: 98, baseType: !827, size: 160, offset: 1568)
!1073 = !{!1074, !1075}
!1074 = !DILocalVariable(name: "fp", arg: 1, scope: !1036, file: !1017, line: 39, type: !1039)
!1075 = !DILocalVariable(name: "advice", arg: 2, scope: !1036, file: !1017, line: 39, type: !1022)
!1076 = !DILocation(line: 39, column: 16, scope: !1036)
!1077 = !DILocation(line: 39, column: 30, scope: !1036)
!1078 = !DILocation(line: 41, column: 7, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1036, file: !1017, line: 41, column: 7)
!1080 = !DILocation(line: 41, column: 7, scope: !1036)
!1081 = !DILocation(line: 42, column: 15, scope: !1079)
!1082 = !DILocation(line: 31, column: 15, scope: !1016, inlinedAt: !1083)
!1083 = distinct !DILocation(line: 42, column: 5, scope: !1079)
!1084 = !DILocation(line: 31, column: 25, scope: !1016, inlinedAt: !1083)
!1085 = !DILocation(line: 31, column: 39, scope: !1016, inlinedAt: !1083)
!1086 = !DILocation(line: 31, column: 54, scope: !1016, inlinedAt: !1083)
!1087 = !DILocation(line: 34, column: 3, scope: !1029, inlinedAt: !1083)
!1088 = !DILocation(line: 42, column: 5, scope: !1079)
!1089 = !DILocation(line: 43, column: 1, scope: !1036)
!1090 = distinct !DISubprogram(name: "umaxtostr", scope: !1091, file: !1091, line: 36, type: !1092, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: true, unit: !187, retainedNodes: !1094)
!1091 = !DIFile(filename: "./lib/anytostr.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1092 = !DISubroutineType(types: !1093)
!1093 = !{!103, !190, !103}
!1094 = !{!1095, !1096, !1097}
!1095 = !DILocalVariable(name: "i", arg: 1, scope: !1090, file: !1091, line: 36, type: !190)
!1096 = !DILocalVariable(name: "buf", arg: 2, scope: !1090, file: !1091, line: 36, type: !103)
!1097 = !DILocalVariable(name: "p", scope: !1090, file: !1091, line: 38, type: !103)
!1098 = !DILocation(line: 36, column: 19, scope: !1090)
!1099 = !DILocation(line: 36, column: 28, scope: !1090)
!1100 = !DILocation(line: 38, column: 17, scope: !1090)
!1101 = !DILocation(line: 38, column: 9, scope: !1090)
!1102 = !DILocation(line: 39, column: 6, scope: !1090)
!1103 = !DILocation(line: 41, column: 7, scope: !1090)
!1104 = !DILocation(line: 0, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1106, file: !1091, line: 50, column: 5)
!1106 = distinct !DILexicalBlock(scope: !1090, file: !1091, line: 41, column: 7)
!1107 = !DILocation(line: 52, column: 24, scope: !1105)
!1108 = !DILocation(line: 52, column: 16, scope: !1105)
!1109 = !DILocation(line: 52, column: 10, scope: !1105)
!1110 = !DILocation(line: 52, column: 14, scope: !1105)
!1111 = !DILocation(line: 53, column: 17, scope: !1105)
!1112 = !DILocation(line: 53, column: 24, scope: !1105)
!1113 = !DILocation(line: 52, column: 9, scope: !1105)
!1114 = distinct !{!1114, !1115, !1116}
!1115 = !DILocation(line: 51, column: 7, scope: !1105)
!1116 = !DILocation(line: 53, column: 28, scope: !1105)
!1117 = !DILocation(line: 56, column: 3, scope: !1090)
!1118 = distinct !DISubprogram(name: "parse_long_options", scope: !87, file: !87, line: 44, type: !1119, isLocal: false, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: true, unit: !84, retainedNodes: !1122)
!1119 = !DISubroutineType(types: !1120)
!1120 = !{null, !54, !709, !30, !30, !30, !1121, null}
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!1122 = !{!1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131}
!1123 = !DILocalVariable(name: "argc", arg: 1, scope: !1118, file: !87, line: 44, type: !54)
!1124 = !DILocalVariable(name: "argv", arg: 2, scope: !1118, file: !87, line: 45, type: !709)
!1125 = !DILocalVariable(name: "command_name", arg: 3, scope: !1118, file: !87, line: 46, type: !30)
!1126 = !DILocalVariable(name: "package", arg: 4, scope: !1118, file: !87, line: 47, type: !30)
!1127 = !DILocalVariable(name: "version", arg: 5, scope: !1118, file: !87, line: 48, type: !30)
!1128 = !DILocalVariable(name: "usage_func", arg: 6, scope: !1118, file: !87, line: 49, type: !1121)
!1129 = !DILocalVariable(name: "c", scope: !1118, file: !87, line: 52, type: !54)
!1130 = !DILocalVariable(name: "saved_opterr", scope: !1118, file: !87, line: 53, type: !54)
!1131 = !DILocalVariable(name: "authors", scope: !1132, file: !87, line: 71, type: !1136)
!1132 = distinct !DILexicalBlock(scope: !1133, file: !87, line: 70, column: 11)
!1133 = distinct !DILexicalBlock(scope: !1134, file: !87, line: 64, column: 9)
!1134 = distinct !DILexicalBlock(scope: !1135, file: !87, line: 62, column: 5)
!1135 = distinct !DILexicalBlock(scope: !1118, file: !87, line: 60, column: 7)
!1136 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1021, line: 52, baseType: !1137)
!1137 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1138, line: 48, baseType: !1139)
!1138 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1139 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !85, line: 71, baseType: !1140)
!1140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1141, size: 192, elements: !58)
!1141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !85, line: 71, size: 192, elements: !1142)
!1142 = !{!1143, !1144, !1145, !1146}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1141, file: !85, line: 71, baseType: !7, size: 32)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1141, file: !85, line: 71, baseType: !7, size: 32, offset: 32)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1141, file: !85, line: 71, baseType: !33, size: 64, offset: 64)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1141, file: !85, line: 71, baseType: !33, size: 64, offset: 128)
!1147 = !DILocation(line: 44, column: 25, scope: !1118)
!1148 = !DILocation(line: 45, column: 28, scope: !1118)
!1149 = !DILocation(line: 46, column: 33, scope: !1118)
!1150 = !DILocation(line: 47, column: 33, scope: !1118)
!1151 = !DILocation(line: 48, column: 33, scope: !1118)
!1152 = !DILocation(line: 49, column: 28, scope: !1118)
!1153 = !DILocation(line: 55, column: 18, scope: !1118)
!1154 = !DILocation(line: 53, column: 7, scope: !1118)
!1155 = !DILocation(line: 58, column: 10, scope: !1118)
!1156 = !DILocation(line: 60, column: 12, scope: !1135)
!1157 = !DILocation(line: 61, column: 7, scope: !1135)
!1158 = !DILocation(line: 61, column: 15, scope: !1135)
!1159 = !DILocation(line: 52, column: 7, scope: !1118)
!1160 = !DILocation(line: 60, column: 7, scope: !1118)
!1161 = !DILocation(line: 66, column: 11, scope: !1133)
!1162 = !DILocation(line: 67, column: 11, scope: !1133)
!1163 = !DILocation(line: 71, column: 13, scope: !1132)
!1164 = !DILocation(line: 71, column: 21, scope: !1132)
!1165 = !DILocation(line: 72, column: 13, scope: !1132)
!1166 = !DILocation(line: 73, column: 29, scope: !1132)
!1167 = !DILocation(line: 73, column: 13, scope: !1132)
!1168 = !DILocation(line: 74, column: 13, scope: !1132)
!1169 = !DILocation(line: 84, column: 10, scope: !1118)
!1170 = !DILocation(line: 88, column: 10, scope: !1118)
!1171 = !DILocation(line: 89, column: 1, scope: !1118)
!1172 = distinct !DISubprogram(name: "set_program_name", scope: !105, file: !105, line: 39, type: !638, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !100, retainedNodes: !1173)
!1173 = !{!1174, !1175, !1176}
!1174 = !DILocalVariable(name: "argv0", arg: 1, scope: !1172, file: !105, line: 39, type: !30)
!1175 = !DILocalVariable(name: "slash", scope: !1172, file: !105, line: 46, type: !30)
!1176 = !DILocalVariable(name: "base", scope: !1172, file: !105, line: 47, type: !30)
!1177 = !DILocation(line: 39, column: 31, scope: !1172)
!1178 = !DILocation(line: 51, column: 13, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1172, file: !105, line: 51, column: 7)
!1180 = !DILocation(line: 51, column: 7, scope: !1172)
!1181 = !DILocation(line: 55, column: 14, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1179, file: !105, line: 52, column: 5)
!1183 = !DILocation(line: 54, column: 7, scope: !1182)
!1184 = !DILocation(line: 56, column: 7, scope: !1182)
!1185 = !DILocation(line: 59, column: 11, scope: !1172)
!1186 = !DILocation(line: 46, column: 15, scope: !1172)
!1187 = !DILocation(line: 60, column: 17, scope: !1172)
!1188 = !DILocation(line: 60, column: 33, scope: !1172)
!1189 = !DILocation(line: 60, column: 11, scope: !1172)
!1190 = !DILocation(line: 47, column: 15, scope: !1172)
!1191 = !DILocation(line: 61, column: 12, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1172, file: !105, line: 61, column: 7)
!1193 = !DILocation(line: 61, column: 20, scope: !1192)
!1194 = !DILocation(line: 61, column: 25, scope: !1192)
!1195 = !DILocation(line: 61, column: 42, scope: !1192)
!1196 = !DILocation(line: 61, column: 28, scope: !1192)
!1197 = !DILocation(line: 61, column: 61, scope: !1192)
!1198 = !DILocation(line: 61, column: 7, scope: !1172)
!1199 = !DILocation(line: 64, column: 11, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1201, file: !105, line: 64, column: 11)
!1201 = distinct !DILexicalBlock(scope: !1192, file: !105, line: 62, column: 5)
!1202 = !DILocation(line: 64, column: 36, scope: !1200)
!1203 = !DILocation(line: 64, column: 11, scope: !1201)
!1204 = !DILocation(line: 66, column: 24, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1200, file: !105, line: 65, column: 9)
!1206 = !DILocation(line: 70, column: 41, scope: !1205)
!1207 = !DILocation(line: 72, column: 9, scope: !1205)
!1208 = !DILocation(line: 84, column: 16, scope: !1172)
!1209 = !DILocation(line: 90, column: 27, scope: !1172)
!1210 = !DILocation(line: 92, column: 1, scope: !1172)
!1211 = distinct !DISubprogram(name: "clone_quoting_options", scope: !138, file: !138, line: 122, type: !1212, isLocal: false, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, unit: !108, retainedNodes: !1215)
!1212 = !DISubroutineType(types: !1213)
!1213 = !{!1214, !1214}
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!1215 = !{!1216, !1217, !1218}
!1216 = !DILocalVariable(name: "o", arg: 1, scope: !1211, file: !138, line: 122, type: !1214)
!1217 = !DILocalVariable(name: "e", scope: !1211, file: !138, line: 124, type: !54)
!1218 = !DILocalVariable(name: "p", scope: !1211, file: !138, line: 125, type: !1214)
!1219 = !DILocation(line: 122, column: 48, scope: !1211)
!1220 = !DILocation(line: 124, column: 11, scope: !1211)
!1221 = !DILocation(line: 124, column: 7, scope: !1211)
!1222 = !DILocation(line: 125, column: 40, scope: !1211)
!1223 = !DILocation(line: 125, column: 31, scope: !1211)
!1224 = !DILocation(line: 125, column: 27, scope: !1211)
!1225 = !DILocation(line: 127, column: 9, scope: !1211)
!1226 = !DILocation(line: 128, column: 3, scope: !1211)
!1227 = distinct !DISubprogram(name: "get_quoting_style", scope: !138, file: !138, line: 133, type: !1228, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !108, retainedNodes: !1232)
!1228 = !DISubroutineType(types: !1229)
!1229 = !{!5, !1230}
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1231 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !145)
!1232 = !{!1233}
!1233 = !DILocalVariable(name: "o", arg: 1, scope: !1227, file: !138, line: 133, type: !1230)
!1234 = !DILocation(line: 133, column: 50, scope: !1227)
!1235 = !DILocation(line: 135, column: 11, scope: !1227)
!1236 = !DILocation(line: 135, column: 46, scope: !1227)
!1237 = !{!1238, !665, i64 0}
!1238 = !{!"quoting_options", !665, i64 0, !735, i64 4, !665, i64 8, !664, i64 40, !664, i64 48}
!1239 = !DILocation(line: 135, column: 3, scope: !1227)
!1240 = distinct !DISubprogram(name: "set_quoting_style", scope: !138, file: !138, line: 141, type: !1241, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: true, unit: !108, retainedNodes: !1243)
!1241 = !DISubroutineType(types: !1242)
!1242 = !{null, !1214, !5}
!1243 = !{!1244, !1245}
!1244 = !DILocalVariable(name: "o", arg: 1, scope: !1240, file: !138, line: 141, type: !1214)
!1245 = !DILocalVariable(name: "s", arg: 2, scope: !1240, file: !138, line: 141, type: !5)
!1246 = !DILocation(line: 141, column: 44, scope: !1240)
!1247 = !DILocation(line: 141, column: 66, scope: !1240)
!1248 = !DILocation(line: 143, column: 4, scope: !1240)
!1249 = !DILocation(line: 143, column: 39, scope: !1240)
!1250 = !DILocation(line: 143, column: 45, scope: !1240)
!1251 = !DILocation(line: 144, column: 1, scope: !1240)
!1252 = distinct !DISubprogram(name: "set_char_quoting", scope: !138, file: !138, line: 152, type: !1253, isLocal: false, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, unit: !108, retainedNodes: !1255)
!1253 = !DISubroutineType(types: !1254)
!1254 = !{!54, !1214, !32, !54}
!1255 = !{!1256, !1257, !1258, !1259, !1260, !1262, !1263}
!1256 = !DILocalVariable(name: "o", arg: 1, scope: !1252, file: !138, line: 152, type: !1214)
!1257 = !DILocalVariable(name: "c", arg: 2, scope: !1252, file: !138, line: 152, type: !32)
!1258 = !DILocalVariable(name: "i", arg: 3, scope: !1252, file: !138, line: 152, type: !54)
!1259 = !DILocalVariable(name: "uc", scope: !1252, file: !138, line: 154, type: !771)
!1260 = !DILocalVariable(name: "p", scope: !1252, file: !138, line: 155, type: !1261)
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1262 = !DILocalVariable(name: "shift", scope: !1252, file: !138, line: 157, type: !54)
!1263 = !DILocalVariable(name: "r", scope: !1252, file: !138, line: 158, type: !54)
!1264 = !DILocation(line: 152, column: 43, scope: !1252)
!1265 = !DILocation(line: 152, column: 51, scope: !1252)
!1266 = !DILocation(line: 152, column: 58, scope: !1252)
!1267 = !DILocation(line: 154, column: 17, scope: !1252)
!1268 = !DILocation(line: 156, column: 6, scope: !1252)
!1269 = !DILocation(line: 156, column: 62, scope: !1252)
!1270 = !DILocation(line: 156, column: 57, scope: !1252)
!1271 = !DILocation(line: 155, column: 17, scope: !1252)
!1272 = !DILocation(line: 157, column: 15, scope: !1252)
!1273 = !DILocation(line: 157, column: 7, scope: !1252)
!1274 = !DILocation(line: 158, column: 12, scope: !1252)
!1275 = !DILocation(line: 158, column: 15, scope: !1252)
!1276 = !DILocation(line: 158, column: 25, scope: !1252)
!1277 = !DILocation(line: 158, column: 7, scope: !1252)
!1278 = !DILocation(line: 159, column: 13, scope: !1252)
!1279 = !DILocation(line: 159, column: 18, scope: !1252)
!1280 = !DILocation(line: 159, column: 23, scope: !1252)
!1281 = !DILocation(line: 159, column: 6, scope: !1252)
!1282 = !DILocation(line: 160, column: 3, scope: !1252)
!1283 = distinct !DISubprogram(name: "set_quoting_flags", scope: !138, file: !138, line: 168, type: !1284, isLocal: false, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true, unit: !108, retainedNodes: !1286)
!1284 = !DISubroutineType(types: !1285)
!1285 = !{!54, !1214, !54}
!1286 = !{!1287, !1288, !1289}
!1287 = !DILocalVariable(name: "o", arg: 1, scope: !1283, file: !138, line: 168, type: !1214)
!1288 = !DILocalVariable(name: "i", arg: 2, scope: !1283, file: !138, line: 168, type: !54)
!1289 = !DILocalVariable(name: "r", scope: !1283, file: !138, line: 170, type: !54)
!1290 = !DILocation(line: 168, column: 44, scope: !1283)
!1291 = !DILocation(line: 168, column: 51, scope: !1283)
!1292 = !DILocation(line: 171, column: 8, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1283, file: !138, line: 171, column: 7)
!1294 = !DILocation(line: 171, column: 7, scope: !1283)
!1295 = !DILocation(line: 173, column: 10, scope: !1283)
!1296 = !{!1238, !735, i64 4}
!1297 = !DILocation(line: 170, column: 7, scope: !1283)
!1298 = !DILocation(line: 174, column: 12, scope: !1283)
!1299 = !DILocation(line: 175, column: 3, scope: !1283)
!1300 = distinct !DISubprogram(name: "set_custom_quoting", scope: !138, file: !138, line: 179, type: !1301, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !108, retainedNodes: !1303)
!1301 = !DISubroutineType(types: !1302)
!1302 = !{null, !1214, !30, !30}
!1303 = !{!1304, !1305, !1306}
!1304 = !DILocalVariable(name: "o", arg: 1, scope: !1300, file: !138, line: 179, type: !1214)
!1305 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1300, file: !138, line: 180, type: !30)
!1306 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1300, file: !138, line: 180, type: !30)
!1307 = !DILocation(line: 179, column: 45, scope: !1300)
!1308 = !DILocation(line: 180, column: 33, scope: !1300)
!1309 = !DILocation(line: 180, column: 57, scope: !1300)
!1310 = !DILocation(line: 182, column: 8, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1300, file: !138, line: 182, column: 7)
!1312 = !DILocation(line: 182, column: 7, scope: !1300)
!1313 = !DILocation(line: 184, column: 6, scope: !1300)
!1314 = !DILocation(line: 184, column: 12, scope: !1300)
!1315 = !DILocation(line: 185, column: 8, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1300, file: !138, line: 185, column: 7)
!1317 = !DILocation(line: 185, column: 23, scope: !1316)
!1318 = !DILocation(line: 185, column: 19, scope: !1316)
!1319 = !DILocation(line: 186, column: 5, scope: !1316)
!1320 = !DILocation(line: 187, column: 6, scope: !1300)
!1321 = !DILocation(line: 187, column: 17, scope: !1300)
!1322 = !{!1238, !664, i64 40}
!1323 = !DILocation(line: 188, column: 6, scope: !1300)
!1324 = !DILocation(line: 188, column: 18, scope: !1300)
!1325 = !{!1238, !664, i64 48}
!1326 = !DILocation(line: 189, column: 1, scope: !1300)
!1327 = distinct !DISubprogram(name: "quotearg_buffer", scope: !138, file: !138, line: 784, type: !1328, isLocal: false, isDefinition: true, scopeLine: 787, flags: DIFlagPrototyped, isOptimized: true, unit: !108, retainedNodes: !1330)
!1328 = !DISubroutineType(types: !1329)
!1329 = !{!133, !103, !133, !30, !133, !1230}
!1330 = !{!1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338}
!1331 = !DILocalVariable(name: "buffer", arg: 1, scope: !1327, file: !138, line: 784, type: !103)
!1332 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1327, file: !138, line: 784, type: !133)
!1333 = !DILocalVariable(name: "arg", arg: 3, scope: !1327, file: !138, line: 785, type: !30)
!1334 = !DILocalVariable(name: "argsize", arg: 4, scope: !1327, file: !138, line: 785, type: !133)
!1335 = !DILocalVariable(name: "o", arg: 5, scope: !1327, file: !138, line: 786, type: !1230)
!1336 = !DILocalVariable(name: "p", scope: !1327, file: !138, line: 788, type: !1230)
!1337 = !DILocalVariable(name: "e", scope: !1327, file: !138, line: 789, type: !54)
!1338 = !DILocalVariable(name: "r", scope: !1327, file: !138, line: 790, type: !133)
!1339 = !DILocation(line: 784, column: 24, scope: !1327)
!1340 = !DILocation(line: 784, column: 39, scope: !1327)
!1341 = !DILocation(line: 785, column: 30, scope: !1327)
!1342 = !DILocation(line: 785, column: 42, scope: !1327)
!1343 = !DILocation(line: 786, column: 48, scope: !1327)
!1344 = !DILocation(line: 788, column: 37, scope: !1327)
!1345 = !DILocation(line: 788, column: 33, scope: !1327)
!1346 = !DILocation(line: 789, column: 11, scope: !1327)
!1347 = !DILocation(line: 789, column: 7, scope: !1327)
!1348 = !DILocation(line: 791, column: 43, scope: !1327)
!1349 = !DILocation(line: 791, column: 53, scope: !1327)
!1350 = !DILocation(line: 791, column: 60, scope: !1327)
!1351 = !DILocation(line: 792, column: 43, scope: !1327)
!1352 = !DILocation(line: 792, column: 58, scope: !1327)
!1353 = !DILocation(line: 790, column: 14, scope: !1327)
!1354 = !DILocation(line: 790, column: 10, scope: !1327)
!1355 = !DILocation(line: 793, column: 9, scope: !1327)
!1356 = !DILocation(line: 794, column: 3, scope: !1327)
!1357 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !138, file: !138, line: 256, type: !1358, isLocal: true, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: true, unit: !108, retainedNodes: !1362)
!1358 = !DISubroutineType(types: !1359)
!1359 = !{!133, !103, !133, !30, !133, !5, !54, !1360, !30, !30}
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1361 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1362 = !{!1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1387, !1388, !1389, !1390, !1391, !1394, !1395, !1413, !1416, !1417, !1424}
!1363 = !DILocalVariable(name: "buffer", arg: 1, scope: !1357, file: !138, line: 256, type: !103)
!1364 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1357, file: !138, line: 256, type: !133)
!1365 = !DILocalVariable(name: "arg", arg: 3, scope: !1357, file: !138, line: 257, type: !30)
!1366 = !DILocalVariable(name: "argsize", arg: 4, scope: !1357, file: !138, line: 257, type: !133)
!1367 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1357, file: !138, line: 258, type: !5)
!1368 = !DILocalVariable(name: "flags", arg: 6, scope: !1357, file: !138, line: 258, type: !54)
!1369 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1357, file: !138, line: 259, type: !1360)
!1370 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1357, file: !138, line: 260, type: !30)
!1371 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1357, file: !138, line: 261, type: !30)
!1372 = !DILocalVariable(name: "i", scope: !1357, file: !138, line: 263, type: !133)
!1373 = !DILocalVariable(name: "len", scope: !1357, file: !138, line: 264, type: !133)
!1374 = !DILocalVariable(name: "orig_buffersize", scope: !1357, file: !138, line: 265, type: !133)
!1375 = !DILocalVariable(name: "quote_string", scope: !1357, file: !138, line: 266, type: !30)
!1376 = !DILocalVariable(name: "quote_string_len", scope: !1357, file: !138, line: 267, type: !133)
!1377 = !DILocalVariable(name: "backslash_escapes", scope: !1357, file: !138, line: 268, type: !37)
!1378 = !DILocalVariable(name: "unibyte_locale", scope: !1357, file: !138, line: 269, type: !37)
!1379 = !DILocalVariable(name: "elide_outer_quotes", scope: !1357, file: !138, line: 270, type: !37)
!1380 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1357, file: !138, line: 271, type: !37)
!1381 = !DILocalVariable(name: "encountered_single_quote", scope: !1357, file: !138, line: 272, type: !37)
!1382 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1357, file: !138, line: 273, type: !37)
!1383 = !DILocalVariable(name: "c", scope: !1384, file: !138, line: 402, type: !771)
!1384 = distinct !DILexicalBlock(scope: !1385, file: !138, line: 401, column: 5)
!1385 = distinct !DILexicalBlock(scope: !1386, file: !138, line: 400, column: 3)
!1386 = distinct !DILexicalBlock(scope: !1357, file: !138, line: 400, column: 3)
!1387 = !DILocalVariable(name: "esc", scope: !1384, file: !138, line: 403, type: !771)
!1388 = !DILocalVariable(name: "is_right_quote", scope: !1384, file: !138, line: 404, type: !37)
!1389 = !DILocalVariable(name: "escaping", scope: !1384, file: !138, line: 405, type: !37)
!1390 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1384, file: !138, line: 406, type: !37)
!1391 = !DILocalVariable(name: "m", scope: !1392, file: !138, line: 610, type: !133)
!1392 = distinct !DILexicalBlock(scope: !1393, file: !138, line: 608, column: 11)
!1393 = distinct !DILexicalBlock(scope: !1384, file: !138, line: 426, column: 9)
!1394 = !DILocalVariable(name: "printable", scope: !1392, file: !138, line: 612, type: !37)
!1395 = !DILocalVariable(name: "mbstate", scope: !1396, file: !138, line: 621, type: !1398)
!1396 = distinct !DILexicalBlock(scope: !1397, file: !138, line: 620, column: 15)
!1397 = distinct !DILexicalBlock(scope: !1392, file: !138, line: 614, column: 17)
!1398 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1399, line: 6, baseType: !1400)
!1399 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1400 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1401, line: 21, baseType: !1402)
!1401 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1402 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1401, line: 13, size: 64, elements: !1403)
!1403 = !{!1404, !1405}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1402, file: !1401, line: 15, baseType: !54, size: 32)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1402, file: !1401, line: 20, baseType: !1406, size: 32, offset: 32)
!1406 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1402, file: !1401, line: 16, size: 32, elements: !1407)
!1407 = !{!1408, !1409}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1406, file: !1401, line: 18, baseType: !7, size: 32)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1406, file: !1401, line: 19, baseType: !1410, size: 32)
!1410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 32, elements: !1411)
!1411 = !{!1412}
!1412 = !DISubrange(count: 4)
!1413 = !DILocalVariable(name: "w", scope: !1414, file: !138, line: 631, type: !1415)
!1414 = distinct !DILexicalBlock(scope: !1396, file: !138, line: 630, column: 19)
!1415 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !134, line: 90, baseType: !54)
!1416 = !DILocalVariable(name: "bytes", scope: !1414, file: !138, line: 632, type: !133)
!1417 = !DILocalVariable(name: "j", scope: !1418, file: !138, line: 657, type: !133)
!1418 = distinct !DILexicalBlock(scope: !1419, file: !138, line: 656, column: 27)
!1419 = distinct !DILexicalBlock(scope: !1420, file: !138, line: 654, column: 29)
!1420 = distinct !DILexicalBlock(scope: !1421, file: !138, line: 649, column: 23)
!1421 = distinct !DILexicalBlock(scope: !1422, file: !138, line: 641, column: 30)
!1422 = distinct !DILexicalBlock(scope: !1423, file: !138, line: 636, column: 30)
!1423 = distinct !DILexicalBlock(scope: !1414, file: !138, line: 634, column: 25)
!1424 = !DILocalVariable(name: "ilim", scope: !1425, file: !138, line: 684, type: !133)
!1425 = distinct !DILexicalBlock(scope: !1426, file: !138, line: 681, column: 15)
!1426 = distinct !DILexicalBlock(scope: !1392, file: !138, line: 680, column: 17)
!1427 = !DILocation(line: 256, column: 33, scope: !1357)
!1428 = !DILocation(line: 256, column: 48, scope: !1357)
!1429 = !DILocation(line: 257, column: 39, scope: !1357)
!1430 = !DILocation(line: 257, column: 51, scope: !1357)
!1431 = !DILocation(line: 258, column: 46, scope: !1357)
!1432 = !DILocation(line: 258, column: 65, scope: !1357)
!1433 = !DILocation(line: 259, column: 47, scope: !1357)
!1434 = !DILocation(line: 260, column: 39, scope: !1357)
!1435 = !DILocation(line: 261, column: 39, scope: !1357)
!1436 = !DILocation(line: 264, column: 10, scope: !1357)
!1437 = !DILocation(line: 265, column: 10, scope: !1357)
!1438 = !DILocation(line: 266, column: 15, scope: !1357)
!1439 = !DILocation(line: 267, column: 10, scope: !1357)
!1440 = !DILocation(line: 268, column: 8, scope: !1357)
!1441 = !DILocation(line: 269, column: 25, scope: !1357)
!1442 = !DILocation(line: 269, column: 36, scope: !1357)
!1443 = !DILocation(line: 270, column: 8, scope: !1357)
!1444 = !DILocation(line: 271, column: 8, scope: !1357)
!1445 = !DILocation(line: 272, column: 8, scope: !1357)
!1446 = !DILocation(line: 273, column: 8, scope: !1357)
!1447 = !DILocation(line: 273, column: 3, scope: !1357)
!1448 = !DILocation(line: 0, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1357, file: !138, line: 317, column: 5)
!1450 = !DILocation(line: 316, column: 3, scope: !1357)
!1451 = !DILocation(line: 323, column: 11, scope: !1449)
!1452 = !DILocation(line: 323, column: 12, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1449, file: !138, line: 323, column: 11)
!1454 = !DILocation(line: 324, column: 9, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1456, file: !138, line: 324, column: 9)
!1456 = distinct !DILexicalBlock(scope: !1453, file: !138, line: 324, column: 9)
!1457 = !DILocation(line: 324, column: 9, scope: !1456)
!1458 = !DILocation(line: 362, column: 26, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1460, file: !138, line: 340, column: 11)
!1460 = distinct !DILexicalBlock(scope: !1461, file: !138, line: 339, column: 13)
!1461 = distinct !DILexicalBlock(scope: !1449, file: !138, line: 338, column: 7)
!1462 = !DILocation(line: 363, column: 27, scope: !1459)
!1463 = !DILocation(line: 364, column: 11, scope: !1459)
!1464 = !DILocation(line: 365, column: 14, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1461, file: !138, line: 365, column: 13)
!1466 = !DILocation(line: 365, column: 13, scope: !1461)
!1467 = !DILocation(line: 366, column: 43, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1469, file: !138, line: 366, column: 11)
!1469 = distinct !DILexicalBlock(scope: !1465, file: !138, line: 366, column: 11)
!1470 = !DILocation(line: 366, column: 11, scope: !1469)
!1471 = !DILocation(line: 367, column: 13, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1473, file: !138, line: 367, column: 13)
!1473 = distinct !DILexicalBlock(scope: !1468, file: !138, line: 367, column: 13)
!1474 = !DILocation(line: 367, column: 13, scope: !1473)
!1475 = !DILocation(line: 366, column: 70, scope: !1468)
!1476 = distinct !{!1476, !1470, !1477}
!1477 = !DILocation(line: 367, column: 13, scope: !1469)
!1478 = !DILocation(line: 370, column: 28, scope: !1461)
!1479 = !DILocation(line: 372, column: 7, scope: !1449)
!1480 = !DILocation(line: 376, column: 7, scope: !1449)
!1481 = !DILocation(line: 379, column: 7, scope: !1449)
!1482 = !DILocation(line: 381, column: 12, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1449, file: !138, line: 381, column: 11)
!1484 = !DILocation(line: 381, column: 11, scope: !1449)
!1485 = !DILocation(line: 0, scope: !1483)
!1486 = !DILocation(line: 386, column: 12, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !1449, file: !138, line: 386, column: 11)
!1488 = !DILocation(line: 386, column: 11, scope: !1449)
!1489 = !DILocation(line: 387, column: 9, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !1491, file: !138, line: 387, column: 9)
!1491 = distinct !DILexicalBlock(scope: !1487, file: !138, line: 387, column: 9)
!1492 = !DILocation(line: 387, column: 9, scope: !1491)
!1493 = !DILocation(line: 394, column: 7, scope: !1449)
!1494 = !DILocation(line: 397, column: 7, scope: !1449)
!1495 = !DILocation(line: 0, scope: !1357)
!1496 = !DILocation(line: 263, column: 10, scope: !1357)
!1497 = !DILocation(line: 400, column: 8, scope: !1386)
!1498 = !DILocation(line: 0, scope: !1385)
!1499 = !DILocation(line: 400, column: 27, scope: !1385)
!1500 = !DILocation(line: 400, column: 19, scope: !1385)
!1501 = !DILocation(line: 400, column: 41, scope: !1385)
!1502 = !DILocation(line: 400, column: 48, scope: !1385)
!1503 = !DILocation(line: 400, column: 3, scope: !1386)
!1504 = !DILocation(line: 400, column: 60, scope: !1385)
!1505 = !DILocation(line: 404, column: 12, scope: !1384)
!1506 = !DILocation(line: 405, column: 12, scope: !1384)
!1507 = !DILocation(line: 406, column: 12, scope: !1384)
!1508 = !DILocation(line: 409, column: 11, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1384, file: !138, line: 408, column: 11)
!1510 = !DILocation(line: 411, column: 17, scope: !1509)
!1511 = !DILocation(line: 412, column: 39, scope: !1509)
!1512 = !DILocation(line: 416, column: 32, scope: !1509)
!1513 = !DILocation(line: 412, column: 19, scope: !1509)
!1514 = !DILocation(line: 412, column: 15, scope: !1509)
!1515 = !DILocation(line: 417, column: 11, scope: !1509)
!1516 = !DILocation(line: 417, column: 26, scope: !1509)
!1517 = !DILocation(line: 417, column: 14, scope: !1509)
!1518 = !DILocation(line: 417, column: 63, scope: !1509)
!1519 = !DILocation(line: 408, column: 11, scope: !1384)
!1520 = !DILocation(line: 0, scope: !1384)
!1521 = !DILocation(line: 424, column: 11, scope: !1384)
!1522 = !DILocation(line: 402, column: 21, scope: !1384)
!1523 = !DILocation(line: 425, column: 7, scope: !1384)
!1524 = !DILocation(line: 428, column: 15, scope: !1393)
!1525 = !DILocation(line: 430, column: 15, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1527, file: !138, line: 430, column: 15)
!1527 = distinct !DILexicalBlock(scope: !1528, file: !138, line: 429, column: 13)
!1528 = distinct !DILexicalBlock(scope: !1393, file: !138, line: 428, column: 15)
!1529 = !DILocation(line: 430, column: 15, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1526, file: !138, line: 430, column: 15)
!1531 = !DILocation(line: 430, column: 15, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1533, file: !138, line: 430, column: 15)
!1533 = distinct !DILexicalBlock(scope: !1534, file: !138, line: 430, column: 15)
!1534 = distinct !DILexicalBlock(scope: !1530, file: !138, line: 430, column: 15)
!1535 = !DILocation(line: 430, column: 15, scope: !1533)
!1536 = !DILocation(line: 430, column: 15, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1538, file: !138, line: 430, column: 15)
!1538 = distinct !DILexicalBlock(scope: !1534, file: !138, line: 430, column: 15)
!1539 = !DILocation(line: 430, column: 15, scope: !1538)
!1540 = !DILocation(line: 430, column: 15, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1542, file: !138, line: 430, column: 15)
!1542 = distinct !DILexicalBlock(scope: !1534, file: !138, line: 430, column: 15)
!1543 = !DILocation(line: 430, column: 15, scope: !1542)
!1544 = !DILocation(line: 430, column: 15, scope: !1534)
!1545 = !DILocation(line: 430, column: 15, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1547, file: !138, line: 430, column: 15)
!1547 = distinct !DILexicalBlock(scope: !1526, file: !138, line: 430, column: 15)
!1548 = !DILocation(line: 430, column: 15, scope: !1547)
!1549 = !DILocation(line: 438, column: 19, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1527, file: !138, line: 437, column: 19)
!1551 = !DILocation(line: 438, column: 24, scope: !1550)
!1552 = !DILocation(line: 438, column: 28, scope: !1550)
!1553 = !DILocation(line: 438, column: 38, scope: !1550)
!1554 = !DILocation(line: 438, column: 48, scope: !1550)
!1555 = !DILocation(line: 438, column: 59, scope: !1550)
!1556 = !DILocation(line: 440, column: 19, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1558, file: !138, line: 440, column: 19)
!1558 = distinct !DILexicalBlock(scope: !1559, file: !138, line: 440, column: 19)
!1559 = distinct !DILexicalBlock(scope: !1550, file: !138, line: 439, column: 17)
!1560 = !DILocation(line: 440, column: 19, scope: !1558)
!1561 = !DILocation(line: 441, column: 19, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1563, file: !138, line: 441, column: 19)
!1563 = distinct !DILexicalBlock(scope: !1559, file: !138, line: 441, column: 19)
!1564 = !DILocation(line: 441, column: 19, scope: !1563)
!1565 = !DILocation(line: 442, column: 17, scope: !1559)
!1566 = !DILocation(line: 449, column: 20, scope: !1528)
!1567 = !DILocation(line: 454, column: 11, scope: !1393)
!1568 = !DILocation(line: 457, column: 19, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1393, file: !138, line: 455, column: 13)
!1570 = !DILocation(line: 463, column: 19, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1569, file: !138, line: 462, column: 19)
!1572 = !DILocation(line: 463, column: 24, scope: !1571)
!1573 = !DILocation(line: 463, column: 28, scope: !1571)
!1574 = !DILocation(line: 463, column: 38, scope: !1571)
!1575 = !DILocation(line: 463, column: 47, scope: !1571)
!1576 = !DILocation(line: 463, column: 41, scope: !1571)
!1577 = !DILocation(line: 463, column: 52, scope: !1571)
!1578 = !DILocation(line: 462, column: 19, scope: !1569)
!1579 = !DILocation(line: 464, column: 25, scope: !1571)
!1580 = !DILocation(line: 464, column: 17, scope: !1571)
!1581 = !DILocation(line: 471, column: 25, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1571, file: !138, line: 465, column: 19)
!1583 = !DILocation(line: 475, column: 21, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1585, file: !138, line: 475, column: 21)
!1585 = distinct !DILexicalBlock(scope: !1582, file: !138, line: 475, column: 21)
!1586 = !DILocation(line: 475, column: 21, scope: !1585)
!1587 = !DILocation(line: 476, column: 21, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1589, file: !138, line: 476, column: 21)
!1589 = distinct !DILexicalBlock(scope: !1582, file: !138, line: 476, column: 21)
!1590 = !DILocation(line: 476, column: 21, scope: !1589)
!1591 = !DILocation(line: 477, column: 21, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1593, file: !138, line: 477, column: 21)
!1593 = distinct !DILexicalBlock(scope: !1582, file: !138, line: 477, column: 21)
!1594 = !DILocation(line: 477, column: 21, scope: !1593)
!1595 = !DILocation(line: 478, column: 21, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1597, file: !138, line: 478, column: 21)
!1597 = distinct !DILexicalBlock(scope: !1582, file: !138, line: 478, column: 21)
!1598 = !DILocation(line: 478, column: 21, scope: !1597)
!1599 = !DILocation(line: 479, column: 21, scope: !1582)
!1600 = !DILocation(line: 403, column: 21, scope: !1384)
!1601 = !DILocation(line: 492, column: 31, scope: !1393)
!1602 = !DILocation(line: 493, column: 31, scope: !1393)
!1603 = !DILocation(line: 495, column: 31, scope: !1393)
!1604 = !DILocation(line: 496, column: 31, scope: !1393)
!1605 = !DILocation(line: 497, column: 31, scope: !1393)
!1606 = !DILocation(line: 500, column: 15, scope: !1393)
!1607 = !DILocation(line: 502, column: 19, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1609, file: !138, line: 501, column: 13)
!1609 = distinct !DILexicalBlock(scope: !1393, file: !138, line: 500, column: 15)
!1610 = !DILocation(line: 509, column: 33, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1393, file: !138, line: 509, column: 15)
!1612 = !DILocation(line: 0, scope: !1393)
!1613 = !DILocation(line: 514, column: 15, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1393, file: !138, line: 513, column: 15)
!1615 = !DILocation(line: 518, column: 15, scope: !1393)
!1616 = !DILocation(line: 526, column: 26, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1393, file: !138, line: 526, column: 15)
!1618 = !DILocation(line: 526, column: 15, scope: !1393)
!1619 = !DILocation(line: 526, column: 40, scope: !1617)
!1620 = !DILocation(line: 526, column: 47, scope: !1617)
!1621 = !DILocation(line: 530, column: 17, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1393, file: !138, line: 530, column: 15)
!1623 = !DILocation(line: 526, column: 18, scope: !1617)
!1624 = !DILocation(line: 526, column: 65, scope: !1617)
!1625 = !DILocation(line: 530, column: 15, scope: !1393)
!1626 = !DILocation(line: 535, column: 11, scope: !1393)
!1627 = !DILocation(line: 549, column: 15, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1393, file: !138, line: 548, column: 15)
!1629 = !DILocation(line: 556, column: 15, scope: !1393)
!1630 = !DILocation(line: 558, column: 19, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1632, file: !138, line: 557, column: 13)
!1632 = distinct !DILexicalBlock(scope: !1393, file: !138, line: 556, column: 15)
!1633 = !DILocation(line: 561, column: 19, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !1631, file: !138, line: 561, column: 19)
!1635 = !DILocation(line: 561, column: 35, scope: !1634)
!1636 = !DILocation(line: 561, column: 30, scope: !1634)
!1637 = !DILocation(line: 570, column: 15, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1639, file: !138, line: 570, column: 15)
!1639 = distinct !DILexicalBlock(scope: !1631, file: !138, line: 570, column: 15)
!1640 = !DILocation(line: 570, column: 15, scope: !1639)
!1641 = !DILocation(line: 571, column: 15, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1643, file: !138, line: 571, column: 15)
!1643 = distinct !DILexicalBlock(scope: !1631, file: !138, line: 571, column: 15)
!1644 = !DILocation(line: 571, column: 15, scope: !1643)
!1645 = !DILocation(line: 572, column: 15, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1647, file: !138, line: 572, column: 15)
!1647 = distinct !DILexicalBlock(scope: !1631, file: !138, line: 572, column: 15)
!1648 = !DILocation(line: 572, column: 15, scope: !1647)
!1649 = !DILocation(line: 574, column: 13, scope: !1631)
!1650 = !DILocation(line: 614, column: 17, scope: !1392)
!1651 = !DILocation(line: 610, column: 20, scope: !1392)
!1652 = !DILocation(line: 617, column: 29, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1397, file: !138, line: 615, column: 15)
!1654 = !{!882, !882, i64 0}
!1655 = !DILocation(line: 617, column: 27, scope: !1653)
!1656 = !DILocation(line: 612, column: 18, scope: !1392)
!1657 = !DILocation(line: 618, column: 15, scope: !1653)
!1658 = !DILocation(line: 621, column: 17, scope: !1396)
!1659 = !DILocation(line: 622, column: 17, scope: !1396)
!1660 = !DILocation(line: 626, column: 29, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1396, file: !138, line: 626, column: 21)
!1662 = !DILocation(line: 626, column: 21, scope: !1396)
!1663 = !DILocation(line: 627, column: 29, scope: !1661)
!1664 = !DILocation(line: 627, column: 19, scope: !1661)
!1665 = !DILocation(line: 0, scope: !1509)
!1666 = !DILocation(line: 629, column: 17, scope: !1396)
!1667 = !DILocation(line: 624, column: 19, scope: !1396)
!1668 = !DILocation(line: 625, column: 27, scope: !1396)
!1669 = !DILocation(line: 631, column: 21, scope: !1414)
!1670 = !DILocation(line: 632, column: 56, scope: !1414)
!1671 = !DILocation(line: 632, column: 50, scope: !1414)
!1672 = !DILocation(line: 633, column: 53, scope: !1414)
!1673 = !DILocation(line: 621, column: 27, scope: !1396)
!1674 = !DILocation(line: 631, column: 29, scope: !1414)
!1675 = !DILocation(line: 632, column: 36, scope: !1414)
!1676 = !DILocation(line: 632, column: 28, scope: !1414)
!1677 = !DILocation(line: 634, column: 25, scope: !1414)
!1678 = !DILocation(line: 644, column: 38, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1421, file: !138, line: 642, column: 23)
!1680 = !DILocation(line: 644, column: 48, scope: !1679)
!1681 = !DILocation(line: 644, column: 51, scope: !1679)
!1682 = !DILocation(line: 644, column: 25, scope: !1679)
!1683 = !DILocation(line: 645, column: 28, scope: !1679)
!1684 = !DILocation(line: 644, column: 34, scope: !1679)
!1685 = distinct !{!1685, !1682, !1683}
!1686 = !DILocation(line: 658, column: 43, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !1688, file: !138, line: 658, column: 29)
!1688 = distinct !DILexicalBlock(scope: !1418, file: !138, line: 658, column: 29)
!1689 = !DILocation(line: 655, column: 29, scope: !1419)
!1690 = !DILocation(line: 657, column: 36, scope: !1418)
!1691 = !DILocation(line: 659, column: 49, scope: !1687)
!1692 = !DILocation(line: 659, column: 39, scope: !1687)
!1693 = !DILocation(line: 659, column: 31, scope: !1687)
!1694 = !DILocation(line: 658, column: 53, scope: !1687)
!1695 = !DILocation(line: 658, column: 29, scope: !1688)
!1696 = distinct !{!1696, !1695, !1697}
!1697 = !DILocation(line: 667, column: 33, scope: !1688)
!1698 = !DILocation(line: 674, column: 19, scope: !1396)
!1699 = !DILocation(line: 670, column: 41, scope: !1700)
!1700 = distinct !DILexicalBlock(scope: !1420, file: !138, line: 670, column: 29)
!1701 = !DILocation(line: 670, column: 31, scope: !1700)
!1702 = !DILocation(line: 670, column: 29, scope: !1420)
!1703 = !DILocation(line: 672, column: 27, scope: !1420)
!1704 = !DILocation(line: 675, column: 26, scope: !1396)
!1705 = !DILocation(line: 675, column: 24, scope: !1396)
!1706 = !DILocation(line: 674, column: 19, scope: !1414)
!1707 = distinct !{!1707, !1666, !1708}
!1708 = !DILocation(line: 675, column: 44, scope: !1396)
!1709 = !DILocation(line: 676, column: 15, scope: !1397)
!1710 = !DILocation(line: 0, scope: !1661)
!1711 = !DILocation(line: 0, scope: !1396)
!1712 = !DILocation(line: 678, column: 40, scope: !1392)
!1713 = !DILocation(line: 680, column: 19, scope: !1426)
!1714 = !DILocation(line: 680, column: 45, scope: !1426)
!1715 = !DILocation(line: 680, column: 23, scope: !1426)
!1716 = !DILocation(line: 684, column: 33, scope: !1425)
!1717 = !DILocation(line: 684, column: 24, scope: !1425)
!1718 = !DILocation(line: 686, column: 17, scope: !1425)
!1719 = !DILocation(line: 0, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1721, file: !138, line: 687, column: 19)
!1721 = distinct !DILexicalBlock(scope: !1722, file: !138, line: 686, column: 17)
!1722 = distinct !DILexicalBlock(scope: !1425, file: !138, line: 686, column: 17)
!1723 = !DILocation(line: 0, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !1720, file: !138, line: 703, column: 21)
!1725 = !DILocation(line: 0, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1727, file: !138, line: 696, column: 23)
!1727 = distinct !DILexicalBlock(scope: !1728, file: !138, line: 695, column: 30)
!1728 = distinct !DILexicalBlock(scope: !1720, file: !138, line: 688, column: 25)
!1729 = !DILocation(line: 688, column: 43, scope: !1728)
!1730 = !DILocation(line: 690, column: 25, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !1732, file: !138, line: 690, column: 25)
!1732 = distinct !DILexicalBlock(scope: !1728, file: !138, line: 689, column: 23)
!1733 = !DILocation(line: 690, column: 25, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1731, file: !138, line: 690, column: 25)
!1735 = !DILocation(line: 690, column: 25, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1737, file: !138, line: 690, column: 25)
!1737 = distinct !DILexicalBlock(scope: !1738, file: !138, line: 690, column: 25)
!1738 = distinct !DILexicalBlock(scope: !1734, file: !138, line: 690, column: 25)
!1739 = !DILocation(line: 690, column: 25, scope: !1737)
!1740 = !DILocation(line: 690, column: 25, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1742, file: !138, line: 690, column: 25)
!1742 = distinct !DILexicalBlock(scope: !1738, file: !138, line: 690, column: 25)
!1743 = !DILocation(line: 690, column: 25, scope: !1742)
!1744 = !DILocation(line: 690, column: 25, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1746, file: !138, line: 690, column: 25)
!1746 = distinct !DILexicalBlock(scope: !1738, file: !138, line: 690, column: 25)
!1747 = !DILocation(line: 690, column: 25, scope: !1746)
!1748 = !DILocation(line: 690, column: 25, scope: !1738)
!1749 = !DILocation(line: 690, column: 25, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1751, file: !138, line: 690, column: 25)
!1751 = distinct !DILexicalBlock(scope: !1731, file: !138, line: 690, column: 25)
!1752 = !DILocation(line: 690, column: 25, scope: !1751)
!1753 = !DILocation(line: 691, column: 25, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1755, file: !138, line: 691, column: 25)
!1755 = distinct !DILexicalBlock(scope: !1732, file: !138, line: 691, column: 25)
!1756 = !DILocation(line: 691, column: 25, scope: !1755)
!1757 = !DILocation(line: 692, column: 25, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1759, file: !138, line: 692, column: 25)
!1759 = distinct !DILexicalBlock(scope: !1732, file: !138, line: 692, column: 25)
!1760 = !DILocation(line: 692, column: 25, scope: !1759)
!1761 = !DILocation(line: 693, column: 38, scope: !1732)
!1762 = !DILocation(line: 693, column: 33, scope: !1732)
!1763 = !DILocation(line: 694, column: 23, scope: !1732)
!1764 = !DILocation(line: 695, column: 30, scope: !1727)
!1765 = !DILocation(line: 695, column: 30, scope: !1728)
!1766 = !DILocation(line: 697, column: 25, scope: !1767)
!1767 = distinct !DILexicalBlock(scope: !1768, file: !138, line: 697, column: 25)
!1768 = distinct !DILexicalBlock(scope: !1726, file: !138, line: 697, column: 25)
!1769 = !DILocation(line: 697, column: 25, scope: !1768)
!1770 = !DILocation(line: 699, column: 23, scope: !1726)
!1771 = !DILocation(line: 0, scope: !1759)
!1772 = !DILocation(line: 0, scope: !1732)
!1773 = !DILocation(line: 0, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1509, file: !138, line: 418, column: 9)
!1775 = !DILocation(line: 0, scope: !1731)
!1776 = !DILocation(line: 700, column: 35, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1720, file: !138, line: 700, column: 25)
!1778 = !DILocation(line: 700, column: 30, scope: !1777)
!1779 = !DILocation(line: 700, column: 25, scope: !1720)
!1780 = !DILocation(line: 702, column: 21, scope: !1781)
!1781 = distinct !DILexicalBlock(scope: !1782, file: !138, line: 702, column: 21)
!1782 = distinct !DILexicalBlock(scope: !1720, file: !138, line: 702, column: 21)
!1783 = !DILocation(line: 702, column: 21, scope: !1784)
!1784 = distinct !DILexicalBlock(scope: !1785, file: !138, line: 702, column: 21)
!1785 = distinct !DILexicalBlock(scope: !1786, file: !138, line: 702, column: 21)
!1786 = distinct !DILexicalBlock(scope: !1781, file: !138, line: 702, column: 21)
!1787 = !DILocation(line: 702, column: 21, scope: !1785)
!1788 = !DILocation(line: 702, column: 21, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1790, file: !138, line: 702, column: 21)
!1790 = distinct !DILexicalBlock(scope: !1786, file: !138, line: 702, column: 21)
!1791 = !DILocation(line: 702, column: 21, scope: !1790)
!1792 = !DILocation(line: 702, column: 21, scope: !1786)
!1793 = !DILocation(line: 0, scope: !1768)
!1794 = !DILocation(line: 703, column: 21, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1724, file: !138, line: 703, column: 21)
!1796 = !DILocation(line: 703, column: 21, scope: !1724)
!1797 = !DILocation(line: 704, column: 25, scope: !1720)
!1798 = !DILocation(line: 686, column: 17, scope: !1721)
!1799 = distinct !{!1799, !1800, !1801}
!1800 = !DILocation(line: 686, column: 17, scope: !1722)
!1801 = !DILocation(line: 705, column: 19, scope: !1722)
!1802 = !DILocation(line: 0, scope: !1386)
!1803 = !DILocation(line: 416, column: 30, scope: !1509)
!1804 = !DILocation(line: 712, column: 34, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1384, file: !138, line: 712, column: 11)
!1806 = !DILocation(line: 714, column: 14, scope: !1805)
!1807 = !DILocation(line: 715, column: 14, scope: !1805)
!1808 = !DILocation(line: 715, column: 35, scope: !1805)
!1809 = !DILocation(line: 715, column: 17, scope: !1805)
!1810 = !DILocation(line: 715, column: 47, scope: !1805)
!1811 = !DILocation(line: 715, column: 65, scope: !1805)
!1812 = !DILocation(line: 716, column: 15, scope: !1805)
!1813 = !DILocation(line: 716, column: 11, scope: !1805)
!1814 = !DILocation(line: 712, column: 11, scope: !1384)
!1815 = !DILocation(line: 400, column: 10, scope: !1386)
!1816 = !DILocation(line: 0, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1818, file: !138, line: 519, column: 13)
!1818 = distinct !DILexicalBlock(scope: !1393, file: !138, line: 518, column: 15)
!1819 = !DILocation(line: 720, column: 7, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1384, file: !138, line: 720, column: 7)
!1821 = !DILocation(line: 720, column: 7, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1820, file: !138, line: 720, column: 7)
!1823 = !DILocation(line: 720, column: 7, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !1825, file: !138, line: 720, column: 7)
!1825 = distinct !DILexicalBlock(scope: !1826, file: !138, line: 720, column: 7)
!1826 = distinct !DILexicalBlock(scope: !1822, file: !138, line: 720, column: 7)
!1827 = !DILocation(line: 720, column: 7, scope: !1825)
!1828 = !DILocation(line: 720, column: 7, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1830, file: !138, line: 720, column: 7)
!1830 = distinct !DILexicalBlock(scope: !1826, file: !138, line: 720, column: 7)
!1831 = !DILocation(line: 720, column: 7, scope: !1830)
!1832 = !DILocation(line: 720, column: 7, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1834, file: !138, line: 720, column: 7)
!1834 = distinct !DILexicalBlock(scope: !1826, file: !138, line: 720, column: 7)
!1835 = !DILocation(line: 720, column: 7, scope: !1834)
!1836 = !DILocation(line: 720, column: 7, scope: !1826)
!1837 = !DILocation(line: 720, column: 7, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1839, file: !138, line: 720, column: 7)
!1839 = distinct !DILexicalBlock(scope: !1820, file: !138, line: 720, column: 7)
!1840 = !DILocation(line: 720, column: 7, scope: !1839)
!1841 = !DILocation(line: 723, column: 7, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1843, file: !138, line: 723, column: 7)
!1843 = distinct !DILexicalBlock(scope: !1384, file: !138, line: 723, column: 7)
!1844 = !DILocation(line: 424, column: 9, scope: !1384)
!1845 = !DILocation(line: 723, column: 7, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1847, file: !138, line: 723, column: 7)
!1847 = distinct !DILexicalBlock(scope: !1848, file: !138, line: 723, column: 7)
!1848 = distinct !DILexicalBlock(scope: !1842, file: !138, line: 723, column: 7)
!1849 = !DILocation(line: 723, column: 7, scope: !1847)
!1850 = !DILocation(line: 723, column: 7, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1852, file: !138, line: 723, column: 7)
!1852 = distinct !DILexicalBlock(scope: !1848, file: !138, line: 723, column: 7)
!1853 = !DILocation(line: 723, column: 7, scope: !1852)
!1854 = !DILocation(line: 723, column: 7, scope: !1848)
!1855 = !DILocation(line: 724, column: 7, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !1857, file: !138, line: 724, column: 7)
!1857 = distinct !DILexicalBlock(scope: !1384, file: !138, line: 724, column: 7)
!1858 = !DILocation(line: 724, column: 7, scope: !1857)
!1859 = !DILocation(line: 726, column: 13, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1384, file: !138, line: 726, column: 11)
!1861 = !DILocation(line: 726, column: 11, scope: !1384)
!1862 = !DILocation(line: 728, column: 5, scope: !1385)
!1863 = !DILocation(line: 400, column: 75, scope: !1385)
!1864 = !DILocation(line: 400, column: 3, scope: !1385)
!1865 = distinct !{!1865, !1503, !1866}
!1866 = !DILocation(line: 728, column: 5, scope: !1386)
!1867 = !DILocation(line: 730, column: 11, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !1357, file: !138, line: 730, column: 7)
!1869 = !DILocation(line: 730, column: 16, scope: !1868)
!1870 = !DILocation(line: 738, column: 51, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1357, file: !138, line: 738, column: 7)
!1872 = !DILocation(line: 739, column: 10, scope: !1871)
!1873 = !DILocation(line: 741, column: 11, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1875, file: !138, line: 741, column: 11)
!1875 = distinct !DILexicalBlock(scope: !1871, file: !138, line: 740, column: 5)
!1876 = !DILocation(line: 741, column: 11, scope: !1875)
!1877 = !DILocation(line: 742, column: 16, scope: !1874)
!1878 = !DILocation(line: 742, column: 9, scope: !1874)
!1879 = !DILocation(line: 746, column: 18, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1874, file: !138, line: 746, column: 16)
!1881 = !DILocation(line: 746, column: 32, scope: !1880)
!1882 = !DILocation(line: 746, column: 29, scope: !1880)
!1883 = !DILocation(line: 755, column: 7, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1357, file: !138, line: 755, column: 7)
!1885 = !DILocation(line: 755, column: 20, scope: !1884)
!1886 = !DILocation(line: 756, column: 12, scope: !1887)
!1887 = distinct !DILexicalBlock(scope: !1888, file: !138, line: 756, column: 5)
!1888 = distinct !DILexicalBlock(scope: !1884, file: !138, line: 756, column: 5)
!1889 = !DILocation(line: 756, column: 5, scope: !1888)
!1890 = !DILocation(line: 757, column: 7, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1892, file: !138, line: 757, column: 7)
!1892 = distinct !DILexicalBlock(scope: !1887, file: !138, line: 757, column: 7)
!1893 = !DILocation(line: 757, column: 7, scope: !1892)
!1894 = !DILocation(line: 756, column: 39, scope: !1887)
!1895 = distinct !{!1895, !1889, !1896}
!1896 = !DILocation(line: 757, column: 7, scope: !1888)
!1897 = !DILocation(line: 759, column: 11, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1357, file: !138, line: 759, column: 7)
!1899 = !DILocation(line: 759, column: 7, scope: !1357)
!1900 = !DILocation(line: 760, column: 5, scope: !1898)
!1901 = !DILocation(line: 760, column: 17, scope: !1898)
!1902 = !DILocation(line: 766, column: 21, scope: !1903)
!1903 = distinct !DILexicalBlock(scope: !1357, file: !138, line: 766, column: 7)
!1904 = !DILocation(line: 766, column: 54, scope: !1903)
!1905 = !DILocation(line: 766, column: 51, scope: !1903)
!1906 = !DILocation(line: 770, column: 42, scope: !1357)
!1907 = !DILocation(line: 768, column: 10, scope: !1357)
!1908 = !DILocation(line: 768, column: 3, scope: !1357)
!1909 = !DILocation(line: 772, column: 1, scope: !1357)
!1910 = distinct !DISubprogram(name: "gettext_quote", scope: !138, file: !138, line: 207, type: !1911, isLocal: true, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: true, unit: !108, retainedNodes: !1913)
!1911 = !DISubroutineType(types: !1912)
!1912 = !{!30, !30, !5}
!1913 = !{!1914, !1915, !1916, !1917}
!1914 = !DILocalVariable(name: "msgid", arg: 1, scope: !1910, file: !138, line: 207, type: !30)
!1915 = !DILocalVariable(name: "s", arg: 2, scope: !1910, file: !138, line: 207, type: !5)
!1916 = !DILocalVariable(name: "translation", scope: !1910, file: !138, line: 209, type: !30)
!1917 = !DILocalVariable(name: "locale_code", scope: !1910, file: !138, line: 210, type: !30)
!1918 = !DILocation(line: 207, column: 28, scope: !1910)
!1919 = !DILocation(line: 207, column: 54, scope: !1910)
!1920 = !DILocation(line: 209, column: 29, scope: !1910)
!1921 = !DILocation(line: 209, column: 15, scope: !1910)
!1922 = !DILocation(line: 212, column: 19, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1910, file: !138, line: 212, column: 7)
!1924 = !DILocation(line: 212, column: 7, scope: !1910)
!1925 = !DILocation(line: 233, column: 17, scope: !1910)
!1926 = !DILocation(line: 210, column: 15, scope: !1910)
!1927 = !DILocalVariable(name: "s1", arg: 1, scope: !1928, file: !1929, line: 160, type: !30)
!1928 = distinct !DISubprogram(name: "strcaseeq0", scope: !1929, file: !1929, line: 160, type: !1930, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !108, retainedNodes: !1932)
!1929 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1930 = !DISubroutineType(types: !1931)
!1931 = !{!54, !30, !30, !32, !32, !32, !32, !32, !32, !32, !32, !32}
!1932 = !{!1927, !1933, !1934, !1935, !1936, !1937, !1938, !1939, !1940, !1941, !1942}
!1933 = !DILocalVariable(name: "s2", arg: 2, scope: !1928, file: !1929, line: 160, type: !30)
!1934 = !DILocalVariable(name: "s20", arg: 3, scope: !1928, file: !1929, line: 160, type: !32)
!1935 = !DILocalVariable(name: "s21", arg: 4, scope: !1928, file: !1929, line: 160, type: !32)
!1936 = !DILocalVariable(name: "s22", arg: 5, scope: !1928, file: !1929, line: 160, type: !32)
!1937 = !DILocalVariable(name: "s23", arg: 6, scope: !1928, file: !1929, line: 160, type: !32)
!1938 = !DILocalVariable(name: "s24", arg: 7, scope: !1928, file: !1929, line: 160, type: !32)
!1939 = !DILocalVariable(name: "s25", arg: 8, scope: !1928, file: !1929, line: 160, type: !32)
!1940 = !DILocalVariable(name: "s26", arg: 9, scope: !1928, file: !1929, line: 160, type: !32)
!1941 = !DILocalVariable(name: "s27", arg: 10, scope: !1928, file: !1929, line: 160, type: !32)
!1942 = !DILocalVariable(name: "s28", arg: 11, scope: !1928, file: !1929, line: 160, type: !32)
!1943 = !DILocation(line: 160, column: 25, scope: !1928, inlinedAt: !1944)
!1944 = distinct !DILocation(line: 234, column: 7, scope: !1945)
!1945 = distinct !DILexicalBlock(scope: !1910, file: !138, line: 234, column: 7)
!1946 = !DILocation(line: 160, column: 41, scope: !1928, inlinedAt: !1944)
!1947 = !DILocation(line: 160, column: 50, scope: !1928, inlinedAt: !1944)
!1948 = !DILocation(line: 160, column: 60, scope: !1928, inlinedAt: !1944)
!1949 = !DILocation(line: 160, column: 70, scope: !1928, inlinedAt: !1944)
!1950 = !DILocation(line: 160, column: 80, scope: !1928, inlinedAt: !1944)
!1951 = !DILocation(line: 160, column: 90, scope: !1928, inlinedAt: !1944)
!1952 = !DILocation(line: 160, column: 100, scope: !1928, inlinedAt: !1944)
!1953 = !DILocation(line: 160, column: 110, scope: !1928, inlinedAt: !1944)
!1954 = !DILocation(line: 160, column: 120, scope: !1928, inlinedAt: !1944)
!1955 = !DILocation(line: 160, column: 130, scope: !1928, inlinedAt: !1944)
!1956 = !DILocation(line: 162, column: 7, scope: !1957, inlinedAt: !1944)
!1957 = distinct !DILexicalBlock(scope: !1928, file: !1929, line: 162, column: 7)
!1958 = !DILocalVariable(name: "s1", arg: 1, scope: !1959, file: !1929, line: 146, type: !30)
!1959 = distinct !DISubprogram(name: "strcaseeq1", scope: !1929, file: !1929, line: 146, type: !1960, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !108, retainedNodes: !1962)
!1960 = !DISubroutineType(types: !1961)
!1961 = !{!54, !30, !30, !32, !32, !32, !32, !32, !32, !32, !32}
!1962 = !{!1958, !1963, !1964, !1965, !1966, !1967, !1968, !1969, !1970, !1971}
!1963 = !DILocalVariable(name: "s2", arg: 2, scope: !1959, file: !1929, line: 146, type: !30)
!1964 = !DILocalVariable(name: "s21", arg: 3, scope: !1959, file: !1929, line: 146, type: !32)
!1965 = !DILocalVariable(name: "s22", arg: 4, scope: !1959, file: !1929, line: 146, type: !32)
!1966 = !DILocalVariable(name: "s23", arg: 5, scope: !1959, file: !1929, line: 146, type: !32)
!1967 = !DILocalVariable(name: "s24", arg: 6, scope: !1959, file: !1929, line: 146, type: !32)
!1968 = !DILocalVariable(name: "s25", arg: 7, scope: !1959, file: !1929, line: 146, type: !32)
!1969 = !DILocalVariable(name: "s26", arg: 8, scope: !1959, file: !1929, line: 146, type: !32)
!1970 = !DILocalVariable(name: "s27", arg: 9, scope: !1959, file: !1929, line: 146, type: !32)
!1971 = !DILocalVariable(name: "s28", arg: 10, scope: !1959, file: !1929, line: 146, type: !32)
!1972 = !DILocation(line: 146, column: 25, scope: !1959, inlinedAt: !1973)
!1973 = distinct !DILocation(line: 167, column: 16, scope: !1974, inlinedAt: !1944)
!1974 = distinct !DILexicalBlock(scope: !1975, file: !1929, line: 164, column: 11)
!1975 = distinct !DILexicalBlock(scope: !1957, file: !1929, line: 163, column: 5)
!1976 = !DILocation(line: 146, column: 41, scope: !1959, inlinedAt: !1973)
!1977 = !DILocation(line: 146, column: 50, scope: !1959, inlinedAt: !1973)
!1978 = !DILocation(line: 146, column: 60, scope: !1959, inlinedAt: !1973)
!1979 = !DILocation(line: 146, column: 70, scope: !1959, inlinedAt: !1973)
!1980 = !DILocation(line: 146, column: 80, scope: !1959, inlinedAt: !1973)
!1981 = !DILocation(line: 146, column: 90, scope: !1959, inlinedAt: !1973)
!1982 = !DILocation(line: 146, column: 100, scope: !1959, inlinedAt: !1973)
!1983 = !DILocation(line: 146, column: 110, scope: !1959, inlinedAt: !1973)
!1984 = !DILocation(line: 146, column: 120, scope: !1959, inlinedAt: !1973)
!1985 = !DILocation(line: 148, column: 7, scope: !1986, inlinedAt: !1973)
!1986 = distinct !DILexicalBlock(scope: !1959, file: !1929, line: 148, column: 7)
!1987 = !DILocalVariable(name: "s1", arg: 1, scope: !1988, file: !1929, line: 132, type: !30)
!1988 = distinct !DISubprogram(name: "strcaseeq2", scope: !1929, file: !1929, line: 132, type: !1989, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !108, retainedNodes: !1991)
!1989 = !DISubroutineType(types: !1990)
!1990 = !{!54, !30, !30, !32, !32, !32, !32, !32, !32, !32}
!1991 = !{!1987, !1992, !1993, !1994, !1995, !1996, !1997, !1998, !1999}
!1992 = !DILocalVariable(name: "s2", arg: 2, scope: !1988, file: !1929, line: 132, type: !30)
!1993 = !DILocalVariable(name: "s22", arg: 3, scope: !1988, file: !1929, line: 132, type: !32)
!1994 = !DILocalVariable(name: "s23", arg: 4, scope: !1988, file: !1929, line: 132, type: !32)
!1995 = !DILocalVariable(name: "s24", arg: 5, scope: !1988, file: !1929, line: 132, type: !32)
!1996 = !DILocalVariable(name: "s25", arg: 6, scope: !1988, file: !1929, line: 132, type: !32)
!1997 = !DILocalVariable(name: "s26", arg: 7, scope: !1988, file: !1929, line: 132, type: !32)
!1998 = !DILocalVariable(name: "s27", arg: 8, scope: !1988, file: !1929, line: 132, type: !32)
!1999 = !DILocalVariable(name: "s28", arg: 9, scope: !1988, file: !1929, line: 132, type: !32)
!2000 = !DILocation(line: 132, column: 25, scope: !1988, inlinedAt: !2001)
!2001 = distinct !DILocation(line: 153, column: 16, scope: !2002, inlinedAt: !1973)
!2002 = distinct !DILexicalBlock(scope: !2003, file: !1929, line: 150, column: 11)
!2003 = distinct !DILexicalBlock(scope: !1986, file: !1929, line: 149, column: 5)
!2004 = !DILocation(line: 132, column: 41, scope: !1988, inlinedAt: !2001)
!2005 = !DILocation(line: 132, column: 50, scope: !1988, inlinedAt: !2001)
!2006 = !DILocation(line: 132, column: 60, scope: !1988, inlinedAt: !2001)
!2007 = !DILocation(line: 132, column: 70, scope: !1988, inlinedAt: !2001)
!2008 = !DILocation(line: 132, column: 80, scope: !1988, inlinedAt: !2001)
!2009 = !DILocation(line: 132, column: 90, scope: !1988, inlinedAt: !2001)
!2010 = !DILocation(line: 132, column: 100, scope: !1988, inlinedAt: !2001)
!2011 = !DILocation(line: 132, column: 110, scope: !1988, inlinedAt: !2001)
!2012 = !DILocation(line: 134, column: 7, scope: !2013, inlinedAt: !2001)
!2013 = distinct !DILexicalBlock(scope: !1988, file: !1929, line: 134, column: 7)
!2014 = !DILocalVariable(name: "s1", arg: 1, scope: !2015, file: !1929, line: 118, type: !30)
!2015 = distinct !DISubprogram(name: "strcaseeq3", scope: !1929, file: !1929, line: 118, type: !2016, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !108, retainedNodes: !2018)
!2016 = !DISubroutineType(types: !2017)
!2017 = !{!54, !30, !30, !32, !32, !32, !32, !32, !32}
!2018 = !{!2014, !2019, !2020, !2021, !2022, !2023, !2024, !2025}
!2019 = !DILocalVariable(name: "s2", arg: 2, scope: !2015, file: !1929, line: 118, type: !30)
!2020 = !DILocalVariable(name: "s23", arg: 3, scope: !2015, file: !1929, line: 118, type: !32)
!2021 = !DILocalVariable(name: "s24", arg: 4, scope: !2015, file: !1929, line: 118, type: !32)
!2022 = !DILocalVariable(name: "s25", arg: 5, scope: !2015, file: !1929, line: 118, type: !32)
!2023 = !DILocalVariable(name: "s26", arg: 6, scope: !2015, file: !1929, line: 118, type: !32)
!2024 = !DILocalVariable(name: "s27", arg: 7, scope: !2015, file: !1929, line: 118, type: !32)
!2025 = !DILocalVariable(name: "s28", arg: 8, scope: !2015, file: !1929, line: 118, type: !32)
!2026 = !DILocation(line: 118, column: 25, scope: !2015, inlinedAt: !2027)
!2027 = distinct !DILocation(line: 139, column: 16, scope: !2028, inlinedAt: !2001)
!2028 = distinct !DILexicalBlock(scope: !2029, file: !1929, line: 136, column: 11)
!2029 = distinct !DILexicalBlock(scope: !2013, file: !1929, line: 135, column: 5)
!2030 = !DILocation(line: 118, column: 41, scope: !2015, inlinedAt: !2027)
!2031 = !DILocation(line: 118, column: 50, scope: !2015, inlinedAt: !2027)
!2032 = !DILocation(line: 118, column: 60, scope: !2015, inlinedAt: !2027)
!2033 = !DILocation(line: 118, column: 70, scope: !2015, inlinedAt: !2027)
!2034 = !DILocation(line: 118, column: 80, scope: !2015, inlinedAt: !2027)
!2035 = !DILocation(line: 118, column: 90, scope: !2015, inlinedAt: !2027)
!2036 = !DILocation(line: 118, column: 100, scope: !2015, inlinedAt: !2027)
!2037 = !DILocation(line: 120, column: 7, scope: !2038, inlinedAt: !2027)
!2038 = distinct !DILexicalBlock(scope: !2015, file: !1929, line: 120, column: 7)
!2039 = !DILocation(line: 120, column: 7, scope: !2015, inlinedAt: !2027)
!2040 = !DILocalVariable(name: "s1", arg: 1, scope: !2041, file: !1929, line: 104, type: !30)
!2041 = distinct !DISubprogram(name: "strcaseeq4", scope: !1929, file: !1929, line: 104, type: !2042, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !108, retainedNodes: !2044)
!2042 = !DISubroutineType(types: !2043)
!2043 = !{!54, !30, !30, !32, !32, !32, !32, !32}
!2044 = !{!2040, !2045, !2046, !2047, !2048, !2049, !2050}
!2045 = !DILocalVariable(name: "s2", arg: 2, scope: !2041, file: !1929, line: 104, type: !30)
!2046 = !DILocalVariable(name: "s24", arg: 3, scope: !2041, file: !1929, line: 104, type: !32)
!2047 = !DILocalVariable(name: "s25", arg: 4, scope: !2041, file: !1929, line: 104, type: !32)
!2048 = !DILocalVariable(name: "s26", arg: 5, scope: !2041, file: !1929, line: 104, type: !32)
!2049 = !DILocalVariable(name: "s27", arg: 6, scope: !2041, file: !1929, line: 104, type: !32)
!2050 = !DILocalVariable(name: "s28", arg: 7, scope: !2041, file: !1929, line: 104, type: !32)
!2051 = !DILocation(line: 104, column: 25, scope: !2041, inlinedAt: !2052)
!2052 = distinct !DILocation(line: 125, column: 16, scope: !2053, inlinedAt: !2027)
!2053 = distinct !DILexicalBlock(scope: !2054, file: !1929, line: 122, column: 11)
!2054 = distinct !DILexicalBlock(scope: !2038, file: !1929, line: 121, column: 5)
!2055 = !DILocation(line: 104, column: 41, scope: !2041, inlinedAt: !2052)
!2056 = !DILocation(line: 104, column: 50, scope: !2041, inlinedAt: !2052)
!2057 = !DILocation(line: 104, column: 60, scope: !2041, inlinedAt: !2052)
!2058 = !DILocation(line: 104, column: 70, scope: !2041, inlinedAt: !2052)
!2059 = !DILocation(line: 104, column: 80, scope: !2041, inlinedAt: !2052)
!2060 = !DILocation(line: 104, column: 90, scope: !2041, inlinedAt: !2052)
!2061 = !DILocation(line: 106, column: 7, scope: !2062, inlinedAt: !2052)
!2062 = distinct !DILexicalBlock(scope: !2041, file: !1929, line: 106, column: 7)
!2063 = !DILocation(line: 106, column: 7, scope: !2041, inlinedAt: !2052)
!2064 = !DILocalVariable(name: "s1", arg: 1, scope: !2065, file: !1929, line: 90, type: !30)
!2065 = distinct !DISubprogram(name: "strcaseeq5", scope: !1929, file: !1929, line: 90, type: !2066, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !108, retainedNodes: !2068)
!2066 = !DISubroutineType(types: !2067)
!2067 = !{!54, !30, !30, !32, !32, !32, !32}
!2068 = !{!2064, !2069, !2070, !2071, !2072, !2073}
!2069 = !DILocalVariable(name: "s2", arg: 2, scope: !2065, file: !1929, line: 90, type: !30)
!2070 = !DILocalVariable(name: "s25", arg: 3, scope: !2065, file: !1929, line: 90, type: !32)
!2071 = !DILocalVariable(name: "s26", arg: 4, scope: !2065, file: !1929, line: 90, type: !32)
!2072 = !DILocalVariable(name: "s27", arg: 5, scope: !2065, file: !1929, line: 90, type: !32)
!2073 = !DILocalVariable(name: "s28", arg: 6, scope: !2065, file: !1929, line: 90, type: !32)
!2074 = !DILocation(line: 90, column: 25, scope: !2065, inlinedAt: !2075)
!2075 = distinct !DILocation(line: 111, column: 16, scope: !2076, inlinedAt: !2052)
!2076 = distinct !DILexicalBlock(scope: !2077, file: !1929, line: 108, column: 11)
!2077 = distinct !DILexicalBlock(scope: !2062, file: !1929, line: 107, column: 5)
!2078 = !DILocation(line: 90, column: 41, scope: !2065, inlinedAt: !2075)
!2079 = !DILocation(line: 90, column: 50, scope: !2065, inlinedAt: !2075)
!2080 = !DILocation(line: 90, column: 60, scope: !2065, inlinedAt: !2075)
!2081 = !DILocation(line: 90, column: 70, scope: !2065, inlinedAt: !2075)
!2082 = !DILocation(line: 90, column: 80, scope: !2065, inlinedAt: !2075)
!2083 = !DILocation(line: 92, column: 7, scope: !2084, inlinedAt: !2075)
!2084 = distinct !DILexicalBlock(scope: !2065, file: !1929, line: 92, column: 7)
!2085 = !DILocation(line: 92, column: 7, scope: !2065, inlinedAt: !2075)
!2086 = !DILocation(line: 235, column: 12, scope: !1945)
!2087 = !DILocation(line: 235, column: 21, scope: !1945)
!2088 = !DILocation(line: 235, column: 5, scope: !1945)
!2089 = !DILocation(line: 146, column: 25, scope: !1959, inlinedAt: !2090)
!2090 = distinct !DILocation(line: 167, column: 16, scope: !1974, inlinedAt: !2091)
!2091 = distinct !DILocation(line: 236, column: 7, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !1910, file: !138, line: 236, column: 7)
!2093 = !DILocation(line: 146, column: 41, scope: !1959, inlinedAt: !2090)
!2094 = !DILocation(line: 146, column: 50, scope: !1959, inlinedAt: !2090)
!2095 = !DILocation(line: 146, column: 60, scope: !1959, inlinedAt: !2090)
!2096 = !DILocation(line: 146, column: 70, scope: !1959, inlinedAt: !2090)
!2097 = !DILocation(line: 146, column: 80, scope: !1959, inlinedAt: !2090)
!2098 = !DILocation(line: 146, column: 90, scope: !1959, inlinedAt: !2090)
!2099 = !DILocation(line: 146, column: 100, scope: !1959, inlinedAt: !2090)
!2100 = !DILocation(line: 146, column: 110, scope: !1959, inlinedAt: !2090)
!2101 = !DILocation(line: 146, column: 120, scope: !1959, inlinedAt: !2090)
!2102 = !DILocation(line: 148, column: 7, scope: !1986, inlinedAt: !2090)
!2103 = !DILocation(line: 132, column: 25, scope: !1988, inlinedAt: !2104)
!2104 = distinct !DILocation(line: 153, column: 16, scope: !2002, inlinedAt: !2090)
!2105 = !DILocation(line: 132, column: 41, scope: !1988, inlinedAt: !2104)
!2106 = !DILocation(line: 132, column: 50, scope: !1988, inlinedAt: !2104)
!2107 = !DILocation(line: 132, column: 60, scope: !1988, inlinedAt: !2104)
!2108 = !DILocation(line: 132, column: 70, scope: !1988, inlinedAt: !2104)
!2109 = !DILocation(line: 132, column: 80, scope: !1988, inlinedAt: !2104)
!2110 = !DILocation(line: 132, column: 90, scope: !1988, inlinedAt: !2104)
!2111 = !DILocation(line: 132, column: 100, scope: !1988, inlinedAt: !2104)
!2112 = !DILocation(line: 132, column: 110, scope: !1988, inlinedAt: !2104)
!2113 = !DILocation(line: 134, column: 7, scope: !2013, inlinedAt: !2104)
!2114 = !DILocation(line: 134, column: 7, scope: !1988, inlinedAt: !2104)
!2115 = !DILocation(line: 118, column: 25, scope: !2015, inlinedAt: !2116)
!2116 = distinct !DILocation(line: 139, column: 16, scope: !2028, inlinedAt: !2104)
!2117 = !DILocation(line: 118, column: 41, scope: !2015, inlinedAt: !2116)
!2118 = !DILocation(line: 118, column: 50, scope: !2015, inlinedAt: !2116)
!2119 = !DILocation(line: 118, column: 60, scope: !2015, inlinedAt: !2116)
!2120 = !DILocation(line: 118, column: 70, scope: !2015, inlinedAt: !2116)
!2121 = !DILocation(line: 118, column: 80, scope: !2015, inlinedAt: !2116)
!2122 = !DILocation(line: 118, column: 90, scope: !2015, inlinedAt: !2116)
!2123 = !DILocation(line: 118, column: 100, scope: !2015, inlinedAt: !2116)
!2124 = !DILocation(line: 120, column: 7, scope: !2038, inlinedAt: !2116)
!2125 = !DILocation(line: 120, column: 7, scope: !2015, inlinedAt: !2116)
!2126 = !DILocation(line: 104, column: 25, scope: !2041, inlinedAt: !2127)
!2127 = distinct !DILocation(line: 125, column: 16, scope: !2053, inlinedAt: !2116)
!2128 = !DILocation(line: 104, column: 41, scope: !2041, inlinedAt: !2127)
!2129 = !DILocation(line: 104, column: 50, scope: !2041, inlinedAt: !2127)
!2130 = !DILocation(line: 104, column: 60, scope: !2041, inlinedAt: !2127)
!2131 = !DILocation(line: 104, column: 70, scope: !2041, inlinedAt: !2127)
!2132 = !DILocation(line: 104, column: 80, scope: !2041, inlinedAt: !2127)
!2133 = !DILocation(line: 104, column: 90, scope: !2041, inlinedAt: !2127)
!2134 = !DILocation(line: 106, column: 7, scope: !2062, inlinedAt: !2127)
!2135 = !DILocation(line: 106, column: 7, scope: !2041, inlinedAt: !2127)
!2136 = !DILocation(line: 90, column: 25, scope: !2065, inlinedAt: !2137)
!2137 = distinct !DILocation(line: 111, column: 16, scope: !2076, inlinedAt: !2127)
!2138 = !DILocation(line: 90, column: 41, scope: !2065, inlinedAt: !2137)
!2139 = !DILocation(line: 90, column: 50, scope: !2065, inlinedAt: !2137)
!2140 = !DILocation(line: 90, column: 60, scope: !2065, inlinedAt: !2137)
!2141 = !DILocation(line: 90, column: 70, scope: !2065, inlinedAt: !2137)
!2142 = !DILocation(line: 90, column: 80, scope: !2065, inlinedAt: !2137)
!2143 = !DILocation(line: 92, column: 7, scope: !2084, inlinedAt: !2137)
!2144 = !DILocation(line: 92, column: 7, scope: !2065, inlinedAt: !2137)
!2145 = !DILocalVariable(name: "s1", arg: 1, scope: !2146, file: !1929, line: 76, type: !30)
!2146 = distinct !DISubprogram(name: "strcaseeq6", scope: !1929, file: !1929, line: 76, type: !2147, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !108, retainedNodes: !2149)
!2147 = !DISubroutineType(types: !2148)
!2148 = !{!54, !30, !30, !32, !32, !32}
!2149 = !{!2145, !2150, !2151, !2152, !2153}
!2150 = !DILocalVariable(name: "s2", arg: 2, scope: !2146, file: !1929, line: 76, type: !30)
!2151 = !DILocalVariable(name: "s26", arg: 3, scope: !2146, file: !1929, line: 76, type: !32)
!2152 = !DILocalVariable(name: "s27", arg: 4, scope: !2146, file: !1929, line: 76, type: !32)
!2153 = !DILocalVariable(name: "s28", arg: 5, scope: !2146, file: !1929, line: 76, type: !32)
!2154 = !DILocation(line: 76, column: 25, scope: !2146, inlinedAt: !2155)
!2155 = distinct !DILocation(line: 97, column: 16, scope: !2156, inlinedAt: !2137)
!2156 = distinct !DILexicalBlock(scope: !2157, file: !1929, line: 94, column: 11)
!2157 = distinct !DILexicalBlock(scope: !2084, file: !1929, line: 93, column: 5)
!2158 = !DILocation(line: 76, column: 41, scope: !2146, inlinedAt: !2155)
!2159 = !DILocation(line: 76, column: 50, scope: !2146, inlinedAt: !2155)
!2160 = !DILocation(line: 76, column: 60, scope: !2146, inlinedAt: !2155)
!2161 = !DILocation(line: 76, column: 70, scope: !2146, inlinedAt: !2155)
!2162 = !DILocation(line: 78, column: 7, scope: !2163, inlinedAt: !2155)
!2163 = distinct !DILexicalBlock(scope: !2146, file: !1929, line: 78, column: 7)
!2164 = !DILocation(line: 78, column: 7, scope: !2146, inlinedAt: !2155)
!2165 = !DILocalVariable(name: "s1", arg: 1, scope: !2166, file: !1929, line: 62, type: !30)
!2166 = distinct !DISubprogram(name: "strcaseeq7", scope: !1929, file: !1929, line: 62, type: !2167, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !108, retainedNodes: !2169)
!2167 = !DISubroutineType(types: !2168)
!2168 = !{!54, !30, !30, !32, !32}
!2169 = !{!2165, !2170, !2171, !2172}
!2170 = !DILocalVariable(name: "s2", arg: 2, scope: !2166, file: !1929, line: 62, type: !30)
!2171 = !DILocalVariable(name: "s27", arg: 3, scope: !2166, file: !1929, line: 62, type: !32)
!2172 = !DILocalVariable(name: "s28", arg: 4, scope: !2166, file: !1929, line: 62, type: !32)
!2173 = !DILocation(line: 62, column: 25, scope: !2166, inlinedAt: !2174)
!2174 = distinct !DILocation(line: 83, column: 16, scope: !2175, inlinedAt: !2155)
!2175 = distinct !DILexicalBlock(scope: !2176, file: !1929, line: 80, column: 11)
!2176 = distinct !DILexicalBlock(scope: !2163, file: !1929, line: 79, column: 5)
!2177 = !DILocation(line: 62, column: 41, scope: !2166, inlinedAt: !2174)
!2178 = !DILocation(line: 62, column: 50, scope: !2166, inlinedAt: !2174)
!2179 = !DILocation(line: 62, column: 60, scope: !2166, inlinedAt: !2174)
!2180 = !DILocation(line: 64, column: 7, scope: !2181, inlinedAt: !2174)
!2181 = distinct !DILexicalBlock(scope: !2166, file: !1929, line: 64, column: 7)
!2182 = !DILocation(line: 236, column: 7, scope: !1910)
!2183 = !DILocation(line: 237, column: 12, scope: !2092)
!2184 = !DILocation(line: 237, column: 21, scope: !2092)
!2185 = !DILocation(line: 237, column: 5, scope: !2092)
!2186 = !DILocation(line: 239, column: 13, scope: !1910)
!2187 = !DILocation(line: 239, column: 11, scope: !1910)
!2188 = !DILocation(line: 239, column: 3, scope: !1910)
!2189 = !DILocation(line: 0, scope: !1910)
!2190 = !DILocation(line: 240, column: 1, scope: !1910)
!2191 = distinct !DISubprogram(name: "quotearg_alloc", scope: !138, file: !138, line: 799, type: !2192, isLocal: false, isDefinition: true, scopeLine: 801, flags: DIFlagPrototyped, isOptimized: true, unit: !108, retainedNodes: !2194)
!2192 = !DISubroutineType(types: !2193)
!2193 = !{!103, !30, !133, !1230}
!2194 = !{!2195, !2196, !2197}
!2195 = !DILocalVariable(name: "arg", arg: 1, scope: !2191, file: !138, line: 799, type: !30)
!2196 = !DILocalVariable(name: "argsize", arg: 2, scope: !2191, file: !138, line: 799, type: !133)
!2197 = !DILocalVariable(name: "o", arg: 3, scope: !2191, file: !138, line: 800, type: !1230)
!2198 = !DILocation(line: 799, column: 29, scope: !2191)
!2199 = !DILocation(line: 799, column: 41, scope: !2191)
!2200 = !DILocation(line: 800, column: 47, scope: !2191)
!2201 = !DILocalVariable(name: "arg", arg: 1, scope: !2202, file: !138, line: 812, type: !30)
!2202 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !138, file: !138, line: 812, type: !2203, isLocal: false, isDefinition: true, scopeLine: 814, flags: DIFlagPrototyped, isOptimized: true, unit: !108, retainedNodes: !2205)
!2203 = !DISubroutineType(types: !2204)
!2204 = !{!103, !30, !133, !209, !1230}
!2205 = !{!2201, !2206, !2207, !2208, !2209, !2210, !2211, !2212, !2213}
!2206 = !DILocalVariable(name: "argsize", arg: 2, scope: !2202, file: !138, line: 812, type: !133)
!2207 = !DILocalVariable(name: "size", arg: 3, scope: !2202, file: !138, line: 812, type: !209)
!2208 = !DILocalVariable(name: "o", arg: 4, scope: !2202, file: !138, line: 813, type: !1230)
!2209 = !DILocalVariable(name: "p", scope: !2202, file: !138, line: 815, type: !1230)
!2210 = !DILocalVariable(name: "e", scope: !2202, file: !138, line: 816, type: !54)
!2211 = !DILocalVariable(name: "flags", scope: !2202, file: !138, line: 818, type: !54)
!2212 = !DILocalVariable(name: "bufsize", scope: !2202, file: !138, line: 819, type: !133)
!2213 = !DILocalVariable(name: "buf", scope: !2202, file: !138, line: 823, type: !103)
!2214 = !DILocation(line: 812, column: 33, scope: !2202, inlinedAt: !2215)
!2215 = distinct !DILocation(line: 802, column: 10, scope: !2191)
!2216 = !DILocation(line: 812, column: 45, scope: !2202, inlinedAt: !2215)
!2217 = !DILocation(line: 812, column: 62, scope: !2202, inlinedAt: !2215)
!2218 = !DILocation(line: 813, column: 51, scope: !2202, inlinedAt: !2215)
!2219 = !DILocation(line: 815, column: 37, scope: !2202, inlinedAt: !2215)
!2220 = !DILocation(line: 815, column: 33, scope: !2202, inlinedAt: !2215)
!2221 = !DILocation(line: 816, column: 11, scope: !2202, inlinedAt: !2215)
!2222 = !DILocation(line: 816, column: 7, scope: !2202, inlinedAt: !2215)
!2223 = !DILocation(line: 818, column: 18, scope: !2202, inlinedAt: !2215)
!2224 = !DILocation(line: 818, column: 24, scope: !2202, inlinedAt: !2215)
!2225 = !DILocation(line: 818, column: 7, scope: !2202, inlinedAt: !2215)
!2226 = !DILocation(line: 819, column: 69, scope: !2202, inlinedAt: !2215)
!2227 = !DILocation(line: 820, column: 53, scope: !2202, inlinedAt: !2215)
!2228 = !DILocation(line: 821, column: 49, scope: !2202, inlinedAt: !2215)
!2229 = !DILocation(line: 822, column: 49, scope: !2202, inlinedAt: !2215)
!2230 = !DILocation(line: 819, column: 20, scope: !2202, inlinedAt: !2215)
!2231 = !DILocation(line: 822, column: 62, scope: !2202, inlinedAt: !2215)
!2232 = !DILocation(line: 819, column: 10, scope: !2202, inlinedAt: !2215)
!2233 = !DILocalVariable(name: "n", arg: 1, scope: !2234, file: !205, line: 216, type: !133)
!2234 = distinct !DISubprogram(name: "xcharalloc", scope: !205, file: !205, line: 216, type: !2235, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !108, retainedNodes: !2237)
!2235 = !DISubroutineType(types: !2236)
!2236 = !{!103, !133}
!2237 = !{!2233}
!2238 = !DILocation(line: 216, column: 20, scope: !2234, inlinedAt: !2239)
!2239 = distinct !DILocation(line: 823, column: 15, scope: !2202, inlinedAt: !2215)
!2240 = !DILocation(line: 218, column: 10, scope: !2234, inlinedAt: !2239)
!2241 = !DILocation(line: 823, column: 9, scope: !2202, inlinedAt: !2215)
!2242 = !DILocation(line: 824, column: 60, scope: !2202, inlinedAt: !2215)
!2243 = !DILocation(line: 826, column: 32, scope: !2202, inlinedAt: !2215)
!2244 = !DILocation(line: 826, column: 47, scope: !2202, inlinedAt: !2215)
!2245 = !DILocation(line: 824, column: 3, scope: !2202, inlinedAt: !2215)
!2246 = !DILocation(line: 827, column: 9, scope: !2202, inlinedAt: !2215)
!2247 = !DILocation(line: 802, column: 3, scope: !2191)
!2248 = !DILocation(line: 812, column: 33, scope: !2202)
!2249 = !DILocation(line: 812, column: 45, scope: !2202)
!2250 = !DILocation(line: 812, column: 62, scope: !2202)
!2251 = !DILocation(line: 813, column: 51, scope: !2202)
!2252 = !DILocation(line: 815, column: 37, scope: !2202)
!2253 = !DILocation(line: 815, column: 33, scope: !2202)
!2254 = !DILocation(line: 816, column: 11, scope: !2202)
!2255 = !DILocation(line: 816, column: 7, scope: !2202)
!2256 = !DILocation(line: 818, column: 18, scope: !2202)
!2257 = !DILocation(line: 818, column: 27, scope: !2202)
!2258 = !DILocation(line: 818, column: 24, scope: !2202)
!2259 = !DILocation(line: 818, column: 7, scope: !2202)
!2260 = !DILocation(line: 819, column: 69, scope: !2202)
!2261 = !DILocation(line: 820, column: 53, scope: !2202)
!2262 = !DILocation(line: 821, column: 49, scope: !2202)
!2263 = !DILocation(line: 822, column: 49, scope: !2202)
!2264 = !DILocation(line: 819, column: 20, scope: !2202)
!2265 = !DILocation(line: 822, column: 62, scope: !2202)
!2266 = !DILocation(line: 819, column: 10, scope: !2202)
!2267 = !DILocation(line: 216, column: 20, scope: !2234, inlinedAt: !2268)
!2268 = distinct !DILocation(line: 823, column: 15, scope: !2202)
!2269 = !DILocation(line: 218, column: 10, scope: !2234, inlinedAt: !2268)
!2270 = !DILocation(line: 823, column: 9, scope: !2202)
!2271 = !DILocation(line: 824, column: 60, scope: !2202)
!2272 = !DILocation(line: 826, column: 32, scope: !2202)
!2273 = !DILocation(line: 826, column: 47, scope: !2202)
!2274 = !DILocation(line: 824, column: 3, scope: !2202)
!2275 = !DILocation(line: 827, column: 9, scope: !2202)
!2276 = !DILocation(line: 828, column: 7, scope: !2202)
!2277 = !DILocation(line: 829, column: 11, scope: !2278)
!2278 = distinct !DILexicalBlock(scope: !2202, file: !138, line: 828, column: 7)
!2279 = !DILocation(line: 829, column: 5, scope: !2278)
!2280 = !DILocation(line: 830, column: 3, scope: !2202)
!2281 = distinct !DISubprogram(name: "quotearg_free", scope: !138, file: !138, line: 848, type: !981, isLocal: false, isDefinition: true, scopeLine: 849, flags: DIFlagPrototyped, isOptimized: true, unit: !108, retainedNodes: !2282)
!2282 = !{!2283, !2284}
!2283 = !DILocalVariable(name: "sv", scope: !2281, file: !138, line: 850, type: !162)
!2284 = !DILocalVariable(name: "i", scope: !2281, file: !138, line: 851, type: !54)
!2285 = !DILocation(line: 850, column: 24, scope: !2281)
!2286 = !DILocation(line: 850, column: 19, scope: !2281)
!2287 = !DILocation(line: 851, column: 7, scope: !2281)
!2288 = !DILocation(line: 852, column: 19, scope: !2289)
!2289 = distinct !DILexicalBlock(scope: !2290, file: !138, line: 852, column: 3)
!2290 = distinct !DILexicalBlock(scope: !2281, file: !138, line: 852, column: 3)
!2291 = !DILocation(line: 852, column: 17, scope: !2289)
!2292 = !DILocation(line: 852, column: 3, scope: !2290)
!2293 = !DILocation(line: 853, column: 17, scope: !2289)
!2294 = !{!2295, !664, i64 8}
!2295 = !{!"slotvec", !881, i64 0, !664, i64 8}
!2296 = !DILocation(line: 853, column: 5, scope: !2289)
!2297 = !DILocation(line: 852, column: 28, scope: !2289)
!2298 = distinct !{!2298, !2292, !2299}
!2299 = !DILocation(line: 853, column: 20, scope: !2290)
!2300 = !DILocation(line: 854, column: 13, scope: !2301)
!2301 = distinct !DILexicalBlock(scope: !2281, file: !138, line: 854, column: 7)
!2302 = !DILocation(line: 854, column: 17, scope: !2301)
!2303 = !DILocation(line: 854, column: 7, scope: !2281)
!2304 = !DILocation(line: 856, column: 7, scope: !2305)
!2305 = distinct !DILexicalBlock(scope: !2301, file: !138, line: 855, column: 5)
!2306 = !DILocation(line: 857, column: 21, scope: !2305)
!2307 = !{!2295, !881, i64 0}
!2308 = !DILocation(line: 858, column: 20, scope: !2305)
!2309 = !DILocation(line: 859, column: 5, scope: !2305)
!2310 = !DILocation(line: 860, column: 10, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !2281, file: !138, line: 860, column: 7)
!2312 = !DILocation(line: 860, column: 7, scope: !2281)
!2313 = !DILocation(line: 862, column: 13, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !2311, file: !138, line: 861, column: 5)
!2315 = !DILocation(line: 862, column: 7, scope: !2314)
!2316 = !DILocation(line: 863, column: 15, scope: !2314)
!2317 = !DILocation(line: 864, column: 5, scope: !2314)
!2318 = !DILocation(line: 865, column: 10, scope: !2281)
!2319 = !DILocation(line: 866, column: 1, scope: !2281)
!2320 = distinct !DISubprogram(name: "quotearg_n", scope: !138, file: !138, line: 931, type: !2321, isLocal: false, isDefinition: true, scopeLine: 932, flags: DIFlagPrototyped, isOptimized: true, unit: !108, retainedNodes: !2323)
!2321 = !DISubroutineType(types: !2322)
!2322 = !{!103, !54, !30}
!2323 = !{!2324, !2325}
!2324 = !DILocalVariable(name: "n", arg: 1, scope: !2320, file: !138, line: 931, type: !54)
!2325 = !DILocalVariable(name: "arg", arg: 2, scope: !2320, file: !138, line: 931, type: !30)
!2326 = !DILocation(line: 931, column: 17, scope: !2320)
!2327 = !DILocation(line: 931, column: 32, scope: !2320)
!2328 = !DILocation(line: 933, column: 10, scope: !2320)
!2329 = !DILocation(line: 933, column: 3, scope: !2320)
!2330 = distinct !DISubprogram(name: "quotearg_n_options", scope: !138, file: !138, line: 877, type: !2331, isLocal: true, isDefinition: true, scopeLine: 879, flags: DIFlagPrototyped, isOptimized: true, unit: !108, retainedNodes: !2333)
!2331 = !DISubroutineType(types: !2332)
!2332 = !{!103, !54, !30, !133, !1230}
!2333 = !{!2334, !2335, !2336, !2337, !2338, !2339, !2340, !2343, !2344, !2346, !2347, !2348}
!2334 = !DILocalVariable(name: "n", arg: 1, scope: !2330, file: !138, line: 877, type: !54)
!2335 = !DILocalVariable(name: "arg", arg: 2, scope: !2330, file: !138, line: 877, type: !30)
!2336 = !DILocalVariable(name: "argsize", arg: 3, scope: !2330, file: !138, line: 877, type: !133)
!2337 = !DILocalVariable(name: "options", arg: 4, scope: !2330, file: !138, line: 878, type: !1230)
!2338 = !DILocalVariable(name: "e", scope: !2330, file: !138, line: 880, type: !54)
!2339 = !DILocalVariable(name: "sv", scope: !2330, file: !138, line: 882, type: !162)
!2340 = !DILocalVariable(name: "preallocated", scope: !2341, file: !138, line: 889, type: !37)
!2341 = distinct !DILexicalBlock(scope: !2342, file: !138, line: 888, column: 5)
!2342 = distinct !DILexicalBlock(scope: !2330, file: !138, line: 887, column: 7)
!2343 = !DILocalVariable(name: "nmax", scope: !2341, file: !138, line: 890, type: !54)
!2344 = !DILocalVariable(name: "size", scope: !2345, file: !138, line: 903, type: !133)
!2345 = distinct !DILexicalBlock(scope: !2330, file: !138, line: 902, column: 3)
!2346 = !DILocalVariable(name: "val", scope: !2345, file: !138, line: 904, type: !103)
!2347 = !DILocalVariable(name: "flags", scope: !2345, file: !138, line: 906, type: !54)
!2348 = !DILocalVariable(name: "qsize", scope: !2345, file: !138, line: 907, type: !133)
!2349 = !DILocation(line: 877, column: 25, scope: !2330)
!2350 = !DILocation(line: 877, column: 40, scope: !2330)
!2351 = !DILocation(line: 877, column: 52, scope: !2330)
!2352 = !DILocation(line: 878, column: 51, scope: !2330)
!2353 = !DILocation(line: 880, column: 11, scope: !2330)
!2354 = !DILocation(line: 880, column: 7, scope: !2330)
!2355 = !DILocation(line: 882, column: 24, scope: !2330)
!2356 = !DILocation(line: 882, column: 19, scope: !2330)
!2357 = !DILocation(line: 884, column: 9, scope: !2358)
!2358 = distinct !DILexicalBlock(scope: !2330, file: !138, line: 884, column: 7)
!2359 = !DILocation(line: 884, column: 7, scope: !2330)
!2360 = !DILocation(line: 885, column: 5, scope: !2358)
!2361 = !DILocation(line: 887, column: 7, scope: !2342)
!2362 = !DILocation(line: 887, column: 14, scope: !2342)
!2363 = !DILocation(line: 887, column: 7, scope: !2330)
!2364 = !DILocation(line: 889, column: 31, scope: !2341)
!2365 = !DILocation(line: 890, column: 11, scope: !2341)
!2366 = !DILocation(line: 892, column: 16, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2341, file: !138, line: 892, column: 11)
!2368 = !DILocation(line: 892, column: 11, scope: !2341)
!2369 = !DILocation(line: 893, column: 9, scope: !2367)
!2370 = !DILocation(line: 895, column: 32, scope: !2341)
!2371 = !DILocation(line: 895, column: 61, scope: !2341)
!2372 = !DILocation(line: 895, column: 58, scope: !2341)
!2373 = !DILocation(line: 895, column: 66, scope: !2341)
!2374 = !DILocation(line: 895, column: 22, scope: !2341)
!2375 = !DILocation(line: 895, column: 15, scope: !2341)
!2376 = !DILocation(line: 896, column: 11, scope: !2341)
!2377 = !DILocation(line: 897, column: 15, scope: !2378)
!2378 = distinct !DILexicalBlock(scope: !2341, file: !138, line: 896, column: 11)
!2379 = !{i64 0, i64 8, !895, i64 8, i64 8, !663}
!2380 = !DILocation(line: 897, column: 9, scope: !2378)
!2381 = !DILocation(line: 898, column: 20, scope: !2341)
!2382 = !DILocation(line: 898, column: 18, scope: !2341)
!2383 = !DILocation(line: 898, column: 7, scope: !2341)
!2384 = !DILocation(line: 898, column: 38, scope: !2341)
!2385 = !DILocation(line: 898, column: 31, scope: !2341)
!2386 = !DILocation(line: 898, column: 48, scope: !2341)
!2387 = !DILocation(line: 899, column: 14, scope: !2341)
!2388 = !DILocation(line: 900, column: 5, scope: !2341)
!2389 = !DILocation(line: 0, scope: !2330)
!2390 = !DILocation(line: 903, column: 19, scope: !2345)
!2391 = !DILocation(line: 903, column: 25, scope: !2345)
!2392 = !DILocation(line: 903, column: 12, scope: !2345)
!2393 = !DILocation(line: 904, column: 23, scope: !2345)
!2394 = !DILocation(line: 904, column: 11, scope: !2345)
!2395 = !DILocation(line: 906, column: 26, scope: !2345)
!2396 = !DILocation(line: 906, column: 32, scope: !2345)
!2397 = !DILocation(line: 906, column: 9, scope: !2345)
!2398 = !DILocation(line: 908, column: 55, scope: !2345)
!2399 = !DILocation(line: 909, column: 46, scope: !2345)
!2400 = !DILocation(line: 910, column: 55, scope: !2345)
!2401 = !DILocation(line: 911, column: 55, scope: !2345)
!2402 = !DILocation(line: 907, column: 20, scope: !2345)
!2403 = !DILocation(line: 907, column: 12, scope: !2345)
!2404 = !DILocation(line: 913, column: 14, scope: !2405)
!2405 = distinct !DILexicalBlock(scope: !2345, file: !138, line: 913, column: 9)
!2406 = !DILocation(line: 913, column: 9, scope: !2345)
!2407 = !DILocation(line: 915, column: 35, scope: !2408)
!2408 = distinct !DILexicalBlock(scope: !2405, file: !138, line: 914, column: 7)
!2409 = !DILocation(line: 915, column: 20, scope: !2408)
!2410 = !DILocation(line: 916, column: 17, scope: !2411)
!2411 = distinct !DILexicalBlock(scope: !2408, file: !138, line: 916, column: 13)
!2412 = !DILocation(line: 916, column: 13, scope: !2408)
!2413 = !DILocation(line: 917, column: 11, scope: !2411)
!2414 = !DILocation(line: 216, column: 20, scope: !2234, inlinedAt: !2415)
!2415 = distinct !DILocation(line: 918, column: 27, scope: !2408)
!2416 = !DILocation(line: 218, column: 10, scope: !2234, inlinedAt: !2415)
!2417 = !DILocation(line: 918, column: 19, scope: !2408)
!2418 = !DILocation(line: 919, column: 69, scope: !2408)
!2419 = !DILocation(line: 921, column: 44, scope: !2408)
!2420 = !DILocation(line: 922, column: 44, scope: !2408)
!2421 = !DILocation(line: 919, column: 9, scope: !2408)
!2422 = !DILocation(line: 923, column: 7, scope: !2408)
!2423 = !DILocation(line: 0, scope: !2345)
!2424 = !DILocation(line: 925, column: 11, scope: !2345)
!2425 = !DILocation(line: 926, column: 5, scope: !2345)
!2426 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !138, file: !138, line: 937, type: !2427, isLocal: false, isDefinition: true, scopeLine: 938, flags: DIFlagPrototyped, isOptimized: true, unit: !108, retainedNodes: !2429)
!2427 = !DISubroutineType(types: !2428)
!2428 = !{!103, !54, !30, !133}
!2429 = !{!2430, !2431, !2432}
!2430 = !DILocalVariable(name: "n", arg: 1, scope: !2426, file: !138, line: 937, type: !54)
!2431 = !DILocalVariable(name: "arg", arg: 2, scope: !2426, file: !138, line: 937, type: !30)
!2432 = !DILocalVariable(name: "argsize", arg: 3, scope: !2426, file: !138, line: 937, type: !133)
!2433 = !DILocation(line: 937, column: 21, scope: !2426)
!2434 = !DILocation(line: 937, column: 36, scope: !2426)
!2435 = !DILocation(line: 937, column: 48, scope: !2426)
!2436 = !DILocation(line: 939, column: 10, scope: !2426)
!2437 = !DILocation(line: 939, column: 3, scope: !2426)
!2438 = distinct !DISubprogram(name: "quotearg", scope: !138, file: !138, line: 943, type: !2439, isLocal: false, isDefinition: true, scopeLine: 944, flags: DIFlagPrototyped, isOptimized: true, unit: !108, retainedNodes: !2441)
!2439 = !DISubroutineType(types: !2440)
!2440 = !{!103, !30}
!2441 = !{!2442}
!2442 = !DILocalVariable(name: "arg", arg: 1, scope: !2438, file: !138, line: 943, type: !30)
!2443 = !DILocation(line: 943, column: 23, scope: !2438)
!2444 = !DILocation(line: 931, column: 17, scope: !2320, inlinedAt: !2445)
!2445 = distinct !DILocation(line: 945, column: 10, scope: !2438)
!2446 = !DILocation(line: 931, column: 32, scope: !2320, inlinedAt: !2445)
!2447 = !DILocation(line: 933, column: 10, scope: !2320, inlinedAt: !2445)
!2448 = !DILocation(line: 945, column: 3, scope: !2438)
!2449 = distinct !DISubprogram(name: "quotearg_mem", scope: !138, file: !138, line: 949, type: !2450, isLocal: false, isDefinition: true, scopeLine: 950, flags: DIFlagPrototyped, isOptimized: true, unit: !108, retainedNodes: !2452)
!2450 = !DISubroutineType(types: !2451)
!2451 = !{!103, !30, !133}
!2452 = !{!2453, !2454}
!2453 = !DILocalVariable(name: "arg", arg: 1, scope: !2449, file: !138, line: 949, type: !30)
!2454 = !DILocalVariable(name: "argsize", arg: 2, scope: !2449, file: !138, line: 949, type: !133)
!2455 = !DILocation(line: 949, column: 27, scope: !2449)
!2456 = !DILocation(line: 949, column: 39, scope: !2449)
!2457 = !DILocation(line: 937, column: 21, scope: !2426, inlinedAt: !2458)
!2458 = distinct !DILocation(line: 951, column: 10, scope: !2449)
!2459 = !DILocation(line: 937, column: 36, scope: !2426, inlinedAt: !2458)
!2460 = !DILocation(line: 937, column: 48, scope: !2426, inlinedAt: !2458)
!2461 = !DILocation(line: 939, column: 10, scope: !2426, inlinedAt: !2458)
!2462 = !DILocation(line: 951, column: 3, scope: !2449)
!2463 = distinct !DISubprogram(name: "quotearg_n_style", scope: !138, file: !138, line: 955, type: !2464, isLocal: false, isDefinition: true, scopeLine: 956, flags: DIFlagPrototyped, isOptimized: true, unit: !108, retainedNodes: !2466)
!2464 = !DISubroutineType(types: !2465)
!2465 = !{!103, !54, !5, !30}
!2466 = !{!2467, !2468, !2469, !2470}
!2467 = !DILocalVariable(name: "n", arg: 1, scope: !2463, file: !138, line: 955, type: !54)
!2468 = !DILocalVariable(name: "s", arg: 2, scope: !2463, file: !138, line: 955, type: !5)
!2469 = !DILocalVariable(name: "arg", arg: 3, scope: !2463, file: !138, line: 955, type: !30)
!2470 = !DILocalVariable(name: "o", scope: !2463, file: !138, line: 957, type: !1231)
!2471 = !DILocation(line: 955, column: 23, scope: !2463)
!2472 = !DILocation(line: 955, column: 45, scope: !2463)
!2473 = !DILocation(line: 955, column: 60, scope: !2463)
!2474 = !DILocation(line: 957, column: 3, scope: !2463)
!2475 = !DILocation(line: 957, column: 32, scope: !2463)
!2476 = !DILocalVariable(name: "style", arg: 1, scope: !2477, file: !138, line: 193, type: !5)
!2477 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !138, file: !138, line: 193, type: !2478, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !108, retainedNodes: !2480)
!2478 = !DISubroutineType(types: !2479)
!2479 = !{!145, !5}
!2480 = !{!2476, !2481}
!2481 = !DILocalVariable(name: "o", scope: !2477, file: !138, line: 195, type: !145)
!2482 = !DILocation(line: 193, column: 48, scope: !2477, inlinedAt: !2483)
!2483 = distinct !DILocation(line: 957, column: 36, scope: !2463)
!2484 = !DILocation(line: 195, column: 26, scope: !2477, inlinedAt: !2483)
!2485 = !{!2486}
!2486 = distinct !{!2486, !2487, !"quoting_options_from_style: argument 0"}
!2487 = distinct !{!2487, !"quoting_options_from_style"}
!2488 = !DILocation(line: 196, column: 13, scope: !2489, inlinedAt: !2483)
!2489 = distinct !DILexicalBlock(scope: !2477, file: !138, line: 196, column: 7)
!2490 = !DILocation(line: 196, column: 7, scope: !2477, inlinedAt: !2483)
!2491 = !DILocation(line: 197, column: 5, scope: !2489, inlinedAt: !2483)
!2492 = !DILocation(line: 198, column: 5, scope: !2477, inlinedAt: !2483)
!2493 = !DILocation(line: 198, column: 11, scope: !2477, inlinedAt: !2483)
!2494 = !DILocation(line: 958, column: 10, scope: !2463)
!2495 = !DILocation(line: 959, column: 1, scope: !2463)
!2496 = !DILocation(line: 958, column: 3, scope: !2463)
!2497 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !138, file: !138, line: 962, type: !2498, isLocal: false, isDefinition: true, scopeLine: 964, flags: DIFlagPrototyped, isOptimized: true, unit: !108, retainedNodes: !2500)
!2498 = !DISubroutineType(types: !2499)
!2499 = !{!103, !54, !5, !30, !133}
!2500 = !{!2501, !2502, !2503, !2504, !2505}
!2501 = !DILocalVariable(name: "n", arg: 1, scope: !2497, file: !138, line: 962, type: !54)
!2502 = !DILocalVariable(name: "s", arg: 2, scope: !2497, file: !138, line: 962, type: !5)
!2503 = !DILocalVariable(name: "arg", arg: 3, scope: !2497, file: !138, line: 963, type: !30)
!2504 = !DILocalVariable(name: "argsize", arg: 4, scope: !2497, file: !138, line: 963, type: !133)
!2505 = !DILocalVariable(name: "o", scope: !2497, file: !138, line: 965, type: !1231)
!2506 = !DILocation(line: 962, column: 27, scope: !2497)
!2507 = !DILocation(line: 962, column: 49, scope: !2497)
!2508 = !DILocation(line: 963, column: 35, scope: !2497)
!2509 = !DILocation(line: 963, column: 47, scope: !2497)
!2510 = !DILocation(line: 965, column: 3, scope: !2497)
!2511 = !DILocation(line: 965, column: 32, scope: !2497)
!2512 = !DILocation(line: 193, column: 48, scope: !2477, inlinedAt: !2513)
!2513 = distinct !DILocation(line: 965, column: 36, scope: !2497)
!2514 = !DILocation(line: 195, column: 26, scope: !2477, inlinedAt: !2513)
!2515 = !{!2516}
!2516 = distinct !{!2516, !2517, !"quoting_options_from_style: argument 0"}
!2517 = distinct !{!2517, !"quoting_options_from_style"}
!2518 = !DILocation(line: 196, column: 13, scope: !2489, inlinedAt: !2513)
!2519 = !DILocation(line: 196, column: 7, scope: !2477, inlinedAt: !2513)
!2520 = !DILocation(line: 197, column: 5, scope: !2489, inlinedAt: !2513)
!2521 = !DILocation(line: 198, column: 5, scope: !2477, inlinedAt: !2513)
!2522 = !DILocation(line: 198, column: 11, scope: !2477, inlinedAt: !2513)
!2523 = !DILocation(line: 966, column: 10, scope: !2497)
!2524 = !DILocation(line: 967, column: 1, scope: !2497)
!2525 = !DILocation(line: 966, column: 3, scope: !2497)
!2526 = distinct !DISubprogram(name: "quotearg_style", scope: !138, file: !138, line: 970, type: !2527, isLocal: false, isDefinition: true, scopeLine: 971, flags: DIFlagPrototyped, isOptimized: true, unit: !108, retainedNodes: !2529)
!2527 = !DISubroutineType(types: !2528)
!2528 = !{!103, !5, !30}
!2529 = !{!2530, !2531}
!2530 = !DILocalVariable(name: "s", arg: 1, scope: !2526, file: !138, line: 970, type: !5)
!2531 = !DILocalVariable(name: "arg", arg: 2, scope: !2526, file: !138, line: 970, type: !30)
!2532 = !DILocation(line: 970, column: 36, scope: !2526)
!2533 = !DILocation(line: 970, column: 51, scope: !2526)
!2534 = !DILocation(line: 955, column: 23, scope: !2463, inlinedAt: !2535)
!2535 = distinct !DILocation(line: 972, column: 10, scope: !2526)
!2536 = !DILocation(line: 955, column: 45, scope: !2463, inlinedAt: !2535)
!2537 = !DILocation(line: 955, column: 60, scope: !2463, inlinedAt: !2535)
!2538 = !DILocation(line: 957, column: 3, scope: !2463, inlinedAt: !2535)
!2539 = !DILocation(line: 957, column: 32, scope: !2463, inlinedAt: !2535)
!2540 = !DILocation(line: 193, column: 48, scope: !2477, inlinedAt: !2541)
!2541 = distinct !DILocation(line: 957, column: 36, scope: !2463, inlinedAt: !2535)
!2542 = !DILocation(line: 195, column: 26, scope: !2477, inlinedAt: !2541)
!2543 = !{!2544}
!2544 = distinct !{!2544, !2545, !"quoting_options_from_style: argument 0"}
!2545 = distinct !{!2545, !"quoting_options_from_style"}
!2546 = !DILocation(line: 196, column: 13, scope: !2489, inlinedAt: !2541)
!2547 = !DILocation(line: 196, column: 7, scope: !2477, inlinedAt: !2541)
!2548 = !DILocation(line: 197, column: 5, scope: !2489, inlinedAt: !2541)
!2549 = !DILocation(line: 198, column: 5, scope: !2477, inlinedAt: !2541)
!2550 = !DILocation(line: 198, column: 11, scope: !2477, inlinedAt: !2541)
!2551 = !DILocation(line: 958, column: 10, scope: !2463, inlinedAt: !2535)
!2552 = !DILocation(line: 959, column: 1, scope: !2463, inlinedAt: !2535)
!2553 = !DILocation(line: 972, column: 3, scope: !2526)
!2554 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !138, file: !138, line: 976, type: !2555, isLocal: false, isDefinition: true, scopeLine: 977, flags: DIFlagPrototyped, isOptimized: true, unit: !108, retainedNodes: !2557)
!2555 = !DISubroutineType(types: !2556)
!2556 = !{!103, !5, !30, !133}
!2557 = !{!2558, !2559, !2560}
!2558 = !DILocalVariable(name: "s", arg: 1, scope: !2554, file: !138, line: 976, type: !5)
!2559 = !DILocalVariable(name: "arg", arg: 2, scope: !2554, file: !138, line: 976, type: !30)
!2560 = !DILocalVariable(name: "argsize", arg: 3, scope: !2554, file: !138, line: 976, type: !133)
!2561 = !DILocation(line: 976, column: 40, scope: !2554)
!2562 = !DILocation(line: 976, column: 55, scope: !2554)
!2563 = !DILocation(line: 976, column: 67, scope: !2554)
!2564 = !DILocation(line: 962, column: 27, scope: !2497, inlinedAt: !2565)
!2565 = distinct !DILocation(line: 978, column: 10, scope: !2554)
!2566 = !DILocation(line: 962, column: 49, scope: !2497, inlinedAt: !2565)
!2567 = !DILocation(line: 963, column: 35, scope: !2497, inlinedAt: !2565)
!2568 = !DILocation(line: 963, column: 47, scope: !2497, inlinedAt: !2565)
!2569 = !DILocation(line: 965, column: 3, scope: !2497, inlinedAt: !2565)
!2570 = !DILocation(line: 965, column: 32, scope: !2497, inlinedAt: !2565)
!2571 = !DILocation(line: 193, column: 48, scope: !2477, inlinedAt: !2572)
!2572 = distinct !DILocation(line: 965, column: 36, scope: !2497, inlinedAt: !2565)
!2573 = !DILocation(line: 195, column: 26, scope: !2477, inlinedAt: !2572)
!2574 = !{!2575}
!2575 = distinct !{!2575, !2576, !"quoting_options_from_style: argument 0"}
!2576 = distinct !{!2576, !"quoting_options_from_style"}
!2577 = !DILocation(line: 196, column: 13, scope: !2489, inlinedAt: !2572)
!2578 = !DILocation(line: 196, column: 7, scope: !2477, inlinedAt: !2572)
!2579 = !DILocation(line: 197, column: 5, scope: !2489, inlinedAt: !2572)
!2580 = !DILocation(line: 198, column: 5, scope: !2477, inlinedAt: !2572)
!2581 = !DILocation(line: 198, column: 11, scope: !2477, inlinedAt: !2572)
!2582 = !DILocation(line: 966, column: 10, scope: !2497, inlinedAt: !2565)
!2583 = !DILocation(line: 967, column: 1, scope: !2497, inlinedAt: !2565)
!2584 = !DILocation(line: 978, column: 3, scope: !2554)
!2585 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !138, file: !138, line: 982, type: !2586, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !108, retainedNodes: !2588)
!2586 = !DISubroutineType(types: !2587)
!2587 = !{!103, !30, !133, !32}
!2588 = !{!2589, !2590, !2591, !2592}
!2589 = !DILocalVariable(name: "arg", arg: 1, scope: !2585, file: !138, line: 982, type: !30)
!2590 = !DILocalVariable(name: "argsize", arg: 2, scope: !2585, file: !138, line: 982, type: !133)
!2591 = !DILocalVariable(name: "ch", arg: 3, scope: !2585, file: !138, line: 982, type: !32)
!2592 = !DILocalVariable(name: "options", scope: !2585, file: !138, line: 984, type: !145)
!2593 = !DILocation(line: 982, column: 32, scope: !2585)
!2594 = !DILocation(line: 982, column: 44, scope: !2585)
!2595 = !DILocation(line: 982, column: 58, scope: !2585)
!2596 = !DILocation(line: 984, column: 3, scope: !2585)
!2597 = !DILocation(line: 985, column: 13, scope: !2585)
!2598 = !{i64 0, i64 4, !892, i64 4, i64 4, !734, i64 8, i64 32, !892, i64 40, i64 8, !663, i64 48, i64 8, !663}
!2599 = !DILocation(line: 984, column: 26, scope: !2585)
!2600 = !DILocation(line: 152, column: 43, scope: !1252, inlinedAt: !2601)
!2601 = distinct !DILocation(line: 986, column: 3, scope: !2585)
!2602 = !DILocation(line: 152, column: 51, scope: !1252, inlinedAt: !2601)
!2603 = !DILocation(line: 152, column: 58, scope: !1252, inlinedAt: !2601)
!2604 = !DILocation(line: 154, column: 17, scope: !1252, inlinedAt: !2601)
!2605 = !DILocation(line: 156, column: 62, scope: !1252, inlinedAt: !2601)
!2606 = !DILocation(line: 156, column: 57, scope: !1252, inlinedAt: !2601)
!2607 = !DILocation(line: 155, column: 17, scope: !1252, inlinedAt: !2601)
!2608 = !DILocation(line: 157, column: 15, scope: !1252, inlinedAt: !2601)
!2609 = !DILocation(line: 157, column: 7, scope: !1252, inlinedAt: !2601)
!2610 = !DILocation(line: 158, column: 12, scope: !1252, inlinedAt: !2601)
!2611 = !DILocation(line: 158, column: 15, scope: !1252, inlinedAt: !2601)
!2612 = !DILocation(line: 158, column: 25, scope: !1252, inlinedAt: !2601)
!2613 = !DILocation(line: 158, column: 7, scope: !1252, inlinedAt: !2601)
!2614 = !DILocation(line: 159, column: 18, scope: !1252, inlinedAt: !2601)
!2615 = !DILocation(line: 159, column: 23, scope: !1252, inlinedAt: !2601)
!2616 = !DILocation(line: 159, column: 6, scope: !1252, inlinedAt: !2601)
!2617 = !DILocation(line: 987, column: 10, scope: !2585)
!2618 = !DILocation(line: 988, column: 1, scope: !2585)
!2619 = !DILocation(line: 987, column: 3, scope: !2585)
!2620 = distinct !DISubprogram(name: "quotearg_char", scope: !138, file: !138, line: 991, type: !2621, isLocal: false, isDefinition: true, scopeLine: 992, flags: DIFlagPrototyped, isOptimized: true, unit: !108, retainedNodes: !2623)
!2621 = !DISubroutineType(types: !2622)
!2622 = !{!103, !30, !32}
!2623 = !{!2624, !2625}
!2624 = !DILocalVariable(name: "arg", arg: 1, scope: !2620, file: !138, line: 991, type: !30)
!2625 = !DILocalVariable(name: "ch", arg: 2, scope: !2620, file: !138, line: 991, type: !32)
!2626 = !DILocation(line: 991, column: 28, scope: !2620)
!2627 = !DILocation(line: 991, column: 38, scope: !2620)
!2628 = !DILocation(line: 982, column: 32, scope: !2585, inlinedAt: !2629)
!2629 = distinct !DILocation(line: 993, column: 10, scope: !2620)
!2630 = !DILocation(line: 982, column: 44, scope: !2585, inlinedAt: !2629)
!2631 = !DILocation(line: 982, column: 58, scope: !2585, inlinedAt: !2629)
!2632 = !DILocation(line: 984, column: 3, scope: !2585, inlinedAt: !2629)
!2633 = !DILocation(line: 985, column: 13, scope: !2585, inlinedAt: !2629)
!2634 = !DILocation(line: 984, column: 26, scope: !2585, inlinedAt: !2629)
!2635 = !DILocation(line: 152, column: 43, scope: !1252, inlinedAt: !2636)
!2636 = distinct !DILocation(line: 986, column: 3, scope: !2585, inlinedAt: !2629)
!2637 = !DILocation(line: 152, column: 51, scope: !1252, inlinedAt: !2636)
!2638 = !DILocation(line: 152, column: 58, scope: !1252, inlinedAt: !2636)
!2639 = !DILocation(line: 154, column: 17, scope: !1252, inlinedAt: !2636)
!2640 = !DILocation(line: 156, column: 62, scope: !1252, inlinedAt: !2636)
!2641 = !DILocation(line: 156, column: 57, scope: !1252, inlinedAt: !2636)
!2642 = !DILocation(line: 155, column: 17, scope: !1252, inlinedAt: !2636)
!2643 = !DILocation(line: 157, column: 15, scope: !1252, inlinedAt: !2636)
!2644 = !DILocation(line: 157, column: 7, scope: !1252, inlinedAt: !2636)
!2645 = !DILocation(line: 158, column: 12, scope: !1252, inlinedAt: !2636)
!2646 = !DILocation(line: 158, column: 15, scope: !1252, inlinedAt: !2636)
!2647 = !DILocation(line: 158, column: 25, scope: !1252, inlinedAt: !2636)
!2648 = !DILocation(line: 158, column: 7, scope: !1252, inlinedAt: !2636)
!2649 = !DILocation(line: 159, column: 18, scope: !1252, inlinedAt: !2636)
!2650 = !DILocation(line: 159, column: 23, scope: !1252, inlinedAt: !2636)
!2651 = !DILocation(line: 159, column: 6, scope: !1252, inlinedAt: !2636)
!2652 = !DILocation(line: 987, column: 10, scope: !2585, inlinedAt: !2629)
!2653 = !DILocation(line: 988, column: 1, scope: !2585, inlinedAt: !2629)
!2654 = !DILocation(line: 993, column: 3, scope: !2620)
!2655 = distinct !DISubprogram(name: "quotearg_colon", scope: !138, file: !138, line: 997, type: !2439, isLocal: false, isDefinition: true, scopeLine: 998, flags: DIFlagPrototyped, isOptimized: true, unit: !108, retainedNodes: !2656)
!2656 = !{!2657}
!2657 = !DILocalVariable(name: "arg", arg: 1, scope: !2655, file: !138, line: 997, type: !30)
!2658 = !DILocation(line: 997, column: 29, scope: !2655)
!2659 = !DILocation(line: 991, column: 28, scope: !2620, inlinedAt: !2660)
!2660 = distinct !DILocation(line: 999, column: 10, scope: !2655)
!2661 = !DILocation(line: 991, column: 38, scope: !2620, inlinedAt: !2660)
!2662 = !DILocation(line: 982, column: 32, scope: !2585, inlinedAt: !2663)
!2663 = distinct !DILocation(line: 993, column: 10, scope: !2620, inlinedAt: !2660)
!2664 = !DILocation(line: 982, column: 44, scope: !2585, inlinedAt: !2663)
!2665 = !DILocation(line: 982, column: 58, scope: !2585, inlinedAt: !2663)
!2666 = !DILocation(line: 984, column: 3, scope: !2585, inlinedAt: !2663)
!2667 = !DILocation(line: 985, column: 13, scope: !2585, inlinedAt: !2663)
!2668 = !DILocation(line: 984, column: 26, scope: !2585, inlinedAt: !2663)
!2669 = !DILocation(line: 152, column: 43, scope: !1252, inlinedAt: !2670)
!2670 = distinct !DILocation(line: 986, column: 3, scope: !2585, inlinedAt: !2663)
!2671 = !DILocation(line: 152, column: 51, scope: !1252, inlinedAt: !2670)
!2672 = !DILocation(line: 152, column: 58, scope: !1252, inlinedAt: !2670)
!2673 = !DILocation(line: 154, column: 17, scope: !1252, inlinedAt: !2670)
!2674 = !DILocation(line: 156, column: 57, scope: !1252, inlinedAt: !2670)
!2675 = !DILocation(line: 155, column: 17, scope: !1252, inlinedAt: !2670)
!2676 = !DILocation(line: 157, column: 7, scope: !1252, inlinedAt: !2670)
!2677 = !DILocation(line: 158, column: 12, scope: !1252, inlinedAt: !2670)
!2678 = !DILocation(line: 159, column: 6, scope: !1252, inlinedAt: !2670)
!2679 = !DILocation(line: 987, column: 10, scope: !2585, inlinedAt: !2663)
!2680 = !DILocation(line: 988, column: 1, scope: !2585, inlinedAt: !2663)
!2681 = !DILocation(line: 999, column: 3, scope: !2655)
!2682 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !138, file: !138, line: 1003, type: !2450, isLocal: false, isDefinition: true, scopeLine: 1004, flags: DIFlagPrototyped, isOptimized: true, unit: !108, retainedNodes: !2683)
!2683 = !{!2684, !2685}
!2684 = !DILocalVariable(name: "arg", arg: 1, scope: !2682, file: !138, line: 1003, type: !30)
!2685 = !DILocalVariable(name: "argsize", arg: 2, scope: !2682, file: !138, line: 1003, type: !133)
!2686 = !DILocation(line: 1003, column: 33, scope: !2682)
!2687 = !DILocation(line: 1003, column: 45, scope: !2682)
!2688 = !DILocation(line: 982, column: 32, scope: !2585, inlinedAt: !2689)
!2689 = distinct !DILocation(line: 1005, column: 10, scope: !2682)
!2690 = !DILocation(line: 982, column: 44, scope: !2585, inlinedAt: !2689)
!2691 = !DILocation(line: 982, column: 58, scope: !2585, inlinedAt: !2689)
!2692 = !DILocation(line: 984, column: 3, scope: !2585, inlinedAt: !2689)
!2693 = !DILocation(line: 985, column: 13, scope: !2585, inlinedAt: !2689)
!2694 = !DILocation(line: 984, column: 26, scope: !2585, inlinedAt: !2689)
!2695 = !DILocation(line: 152, column: 43, scope: !1252, inlinedAt: !2696)
!2696 = distinct !DILocation(line: 986, column: 3, scope: !2585, inlinedAt: !2689)
!2697 = !DILocation(line: 152, column: 51, scope: !1252, inlinedAt: !2696)
!2698 = !DILocation(line: 152, column: 58, scope: !1252, inlinedAt: !2696)
!2699 = !DILocation(line: 154, column: 17, scope: !1252, inlinedAt: !2696)
!2700 = !DILocation(line: 156, column: 57, scope: !1252, inlinedAt: !2696)
!2701 = !DILocation(line: 155, column: 17, scope: !1252, inlinedAt: !2696)
!2702 = !DILocation(line: 157, column: 7, scope: !1252, inlinedAt: !2696)
!2703 = !DILocation(line: 158, column: 12, scope: !1252, inlinedAt: !2696)
!2704 = !DILocation(line: 159, column: 6, scope: !1252, inlinedAt: !2696)
!2705 = !DILocation(line: 987, column: 10, scope: !2585, inlinedAt: !2689)
!2706 = !DILocation(line: 988, column: 1, scope: !2585, inlinedAt: !2689)
!2707 = !DILocation(line: 1005, column: 3, scope: !2682)
!2708 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !138, file: !138, line: 1009, type: !2464, isLocal: false, isDefinition: true, scopeLine: 1010, flags: DIFlagPrototyped, isOptimized: true, unit: !108, retainedNodes: !2709)
!2709 = !{!2710, !2711, !2712, !2713}
!2710 = !DILocalVariable(name: "n", arg: 1, scope: !2708, file: !138, line: 1009, type: !54)
!2711 = !DILocalVariable(name: "s", arg: 2, scope: !2708, file: !138, line: 1009, type: !5)
!2712 = !DILocalVariable(name: "arg", arg: 3, scope: !2708, file: !138, line: 1009, type: !30)
!2713 = !DILocalVariable(name: "options", scope: !2708, file: !138, line: 1011, type: !145)
!2714 = !DILocation(line: 195, column: 26, scope: !2477, inlinedAt: !2715)
!2715 = distinct !DILocation(line: 1012, column: 13, scope: !2708)
!2716 = !DILocation(line: 1009, column: 29, scope: !2708)
!2717 = !DILocation(line: 1009, column: 51, scope: !2708)
!2718 = !DILocation(line: 1009, column: 66, scope: !2708)
!2719 = !DILocation(line: 1011, column: 3, scope: !2708)
!2720 = !DILocation(line: 1012, column: 13, scope: !2708)
!2721 = !DILocation(line: 193, column: 48, scope: !2477, inlinedAt: !2715)
!2722 = !{!2723}
!2723 = distinct !{!2723, !2724, !"quoting_options_from_style: argument 0"}
!2724 = distinct !{!2724, !"quoting_options_from_style"}
!2725 = !DILocation(line: 196, column: 13, scope: !2489, inlinedAt: !2715)
!2726 = !DILocation(line: 196, column: 7, scope: !2477, inlinedAt: !2715)
!2727 = !DILocation(line: 197, column: 5, scope: !2489, inlinedAt: !2715)
!2728 = !DILocation(line: 1011, column: 26, scope: !2708)
!2729 = !DILocation(line: 152, column: 43, scope: !1252, inlinedAt: !2730)
!2730 = distinct !DILocation(line: 1013, column: 3, scope: !2708)
!2731 = !DILocation(line: 152, column: 51, scope: !1252, inlinedAt: !2730)
!2732 = !DILocation(line: 152, column: 58, scope: !1252, inlinedAt: !2730)
!2733 = !DILocation(line: 154, column: 17, scope: !1252, inlinedAt: !2730)
!2734 = !DILocation(line: 156, column: 57, scope: !1252, inlinedAt: !2730)
!2735 = !DILocation(line: 155, column: 17, scope: !1252, inlinedAt: !2730)
!2736 = !DILocation(line: 157, column: 7, scope: !1252, inlinedAt: !2730)
!2737 = !DILocation(line: 158, column: 12, scope: !1252, inlinedAt: !2730)
!2738 = !DILocation(line: 159, column: 6, scope: !1252, inlinedAt: !2730)
!2739 = !DILocation(line: 1014, column: 10, scope: !2708)
!2740 = !DILocation(line: 1015, column: 1, scope: !2708)
!2741 = !DILocation(line: 1014, column: 3, scope: !2708)
!2742 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !138, file: !138, line: 1018, type: !2743, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !108, retainedNodes: !2745)
!2743 = !DISubroutineType(types: !2744)
!2744 = !{!103, !54, !30, !30, !30}
!2745 = !{!2746, !2747, !2748, !2749}
!2746 = !DILocalVariable(name: "n", arg: 1, scope: !2742, file: !138, line: 1018, type: !54)
!2747 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2742, file: !138, line: 1018, type: !30)
!2748 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2742, file: !138, line: 1019, type: !30)
!2749 = !DILocalVariable(name: "arg", arg: 4, scope: !2742, file: !138, line: 1019, type: !30)
!2750 = !DILocation(line: 1018, column: 24, scope: !2742)
!2751 = !DILocation(line: 1018, column: 39, scope: !2742)
!2752 = !DILocation(line: 1019, column: 32, scope: !2742)
!2753 = !DILocation(line: 1019, column: 57, scope: !2742)
!2754 = !DILocalVariable(name: "n", arg: 1, scope: !2755, file: !138, line: 1026, type: !54)
!2755 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !138, file: !138, line: 1026, type: !2756, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !108, retainedNodes: !2758)
!2756 = !DISubroutineType(types: !2757)
!2757 = !{!103, !54, !30, !30, !30, !133}
!2758 = !{!2754, !2759, !2760, !2761, !2762, !2763}
!2759 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2755, file: !138, line: 1026, type: !30)
!2760 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2755, file: !138, line: 1027, type: !30)
!2761 = !DILocalVariable(name: "arg", arg: 4, scope: !2755, file: !138, line: 1028, type: !30)
!2762 = !DILocalVariable(name: "argsize", arg: 5, scope: !2755, file: !138, line: 1028, type: !133)
!2763 = !DILocalVariable(name: "o", scope: !2755, file: !138, line: 1030, type: !145)
!2764 = !DILocation(line: 1026, column: 28, scope: !2755, inlinedAt: !2765)
!2765 = distinct !DILocation(line: 1021, column: 10, scope: !2742)
!2766 = !DILocation(line: 1026, column: 43, scope: !2755, inlinedAt: !2765)
!2767 = !DILocation(line: 1027, column: 36, scope: !2755, inlinedAt: !2765)
!2768 = !DILocation(line: 1028, column: 36, scope: !2755, inlinedAt: !2765)
!2769 = !DILocation(line: 1028, column: 48, scope: !2755, inlinedAt: !2765)
!2770 = !DILocation(line: 1030, column: 3, scope: !2755, inlinedAt: !2765)
!2771 = !DILocation(line: 1030, column: 30, scope: !2755, inlinedAt: !2765)
!2772 = !DILocation(line: 1030, column: 26, scope: !2755, inlinedAt: !2765)
!2773 = !DILocation(line: 179, column: 45, scope: !1300, inlinedAt: !2774)
!2774 = distinct !DILocation(line: 1031, column: 3, scope: !2755, inlinedAt: !2765)
!2775 = !DILocation(line: 180, column: 33, scope: !1300, inlinedAt: !2774)
!2776 = !DILocation(line: 180, column: 57, scope: !1300, inlinedAt: !2774)
!2777 = !DILocation(line: 184, column: 6, scope: !1300, inlinedAt: !2774)
!2778 = !DILocation(line: 184, column: 12, scope: !1300, inlinedAt: !2774)
!2779 = !DILocation(line: 185, column: 8, scope: !1316, inlinedAt: !2774)
!2780 = !DILocation(line: 185, column: 23, scope: !1316, inlinedAt: !2774)
!2781 = !DILocation(line: 185, column: 19, scope: !1316, inlinedAt: !2774)
!2782 = !DILocation(line: 186, column: 5, scope: !1316, inlinedAt: !2774)
!2783 = !DILocation(line: 187, column: 6, scope: !1300, inlinedAt: !2774)
!2784 = !DILocation(line: 187, column: 17, scope: !1300, inlinedAt: !2774)
!2785 = !DILocation(line: 188, column: 6, scope: !1300, inlinedAt: !2774)
!2786 = !DILocation(line: 188, column: 18, scope: !1300, inlinedAt: !2774)
!2787 = !DILocation(line: 1032, column: 10, scope: !2755, inlinedAt: !2765)
!2788 = !DILocation(line: 1033, column: 1, scope: !2755, inlinedAt: !2765)
!2789 = !DILocation(line: 1021, column: 3, scope: !2742)
!2790 = !DILocation(line: 1026, column: 28, scope: !2755)
!2791 = !DILocation(line: 1026, column: 43, scope: !2755)
!2792 = !DILocation(line: 1027, column: 36, scope: !2755)
!2793 = !DILocation(line: 1028, column: 36, scope: !2755)
!2794 = !DILocation(line: 1028, column: 48, scope: !2755)
!2795 = !DILocation(line: 1030, column: 3, scope: !2755)
!2796 = !DILocation(line: 1030, column: 30, scope: !2755)
!2797 = !DILocation(line: 1030, column: 26, scope: !2755)
!2798 = !DILocation(line: 179, column: 45, scope: !1300, inlinedAt: !2799)
!2799 = distinct !DILocation(line: 1031, column: 3, scope: !2755)
!2800 = !DILocation(line: 180, column: 33, scope: !1300, inlinedAt: !2799)
!2801 = !DILocation(line: 180, column: 57, scope: !1300, inlinedAt: !2799)
!2802 = !DILocation(line: 184, column: 6, scope: !1300, inlinedAt: !2799)
!2803 = !DILocation(line: 184, column: 12, scope: !1300, inlinedAt: !2799)
!2804 = !DILocation(line: 185, column: 8, scope: !1316, inlinedAt: !2799)
!2805 = !DILocation(line: 185, column: 23, scope: !1316, inlinedAt: !2799)
!2806 = !DILocation(line: 185, column: 19, scope: !1316, inlinedAt: !2799)
!2807 = !DILocation(line: 186, column: 5, scope: !1316, inlinedAt: !2799)
!2808 = !DILocation(line: 187, column: 6, scope: !1300, inlinedAt: !2799)
!2809 = !DILocation(line: 187, column: 17, scope: !1300, inlinedAt: !2799)
!2810 = !DILocation(line: 188, column: 6, scope: !1300, inlinedAt: !2799)
!2811 = !DILocation(line: 188, column: 18, scope: !1300, inlinedAt: !2799)
!2812 = !DILocation(line: 1032, column: 10, scope: !2755)
!2813 = !DILocation(line: 1033, column: 1, scope: !2755)
!2814 = !DILocation(line: 1032, column: 3, scope: !2755)
!2815 = distinct !DISubprogram(name: "quotearg_custom", scope: !138, file: !138, line: 1036, type: !2816, isLocal: false, isDefinition: true, scopeLine: 1038, flags: DIFlagPrototyped, isOptimized: true, unit: !108, retainedNodes: !2818)
!2816 = !DISubroutineType(types: !2817)
!2817 = !{!103, !30, !30, !30}
!2818 = !{!2819, !2820, !2821}
!2819 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2815, file: !138, line: 1036, type: !30)
!2820 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2815, file: !138, line: 1036, type: !30)
!2821 = !DILocalVariable(name: "arg", arg: 3, scope: !2815, file: !138, line: 1037, type: !30)
!2822 = !DILocation(line: 1036, column: 30, scope: !2815)
!2823 = !DILocation(line: 1036, column: 54, scope: !2815)
!2824 = !DILocation(line: 1037, column: 30, scope: !2815)
!2825 = !DILocation(line: 1018, column: 24, scope: !2742, inlinedAt: !2826)
!2826 = distinct !DILocation(line: 1039, column: 10, scope: !2815)
!2827 = !DILocation(line: 1018, column: 39, scope: !2742, inlinedAt: !2826)
!2828 = !DILocation(line: 1019, column: 32, scope: !2742, inlinedAt: !2826)
!2829 = !DILocation(line: 1019, column: 57, scope: !2742, inlinedAt: !2826)
!2830 = !DILocation(line: 1026, column: 28, scope: !2755, inlinedAt: !2831)
!2831 = distinct !DILocation(line: 1021, column: 10, scope: !2742, inlinedAt: !2826)
!2832 = !DILocation(line: 1026, column: 43, scope: !2755, inlinedAt: !2831)
!2833 = !DILocation(line: 1027, column: 36, scope: !2755, inlinedAt: !2831)
!2834 = !DILocation(line: 1028, column: 36, scope: !2755, inlinedAt: !2831)
!2835 = !DILocation(line: 1028, column: 48, scope: !2755, inlinedAt: !2831)
!2836 = !DILocation(line: 1030, column: 3, scope: !2755, inlinedAt: !2831)
!2837 = !DILocation(line: 1030, column: 30, scope: !2755, inlinedAt: !2831)
!2838 = !DILocation(line: 1030, column: 26, scope: !2755, inlinedAt: !2831)
!2839 = !DILocation(line: 179, column: 45, scope: !1300, inlinedAt: !2840)
!2840 = distinct !DILocation(line: 1031, column: 3, scope: !2755, inlinedAt: !2831)
!2841 = !DILocation(line: 180, column: 33, scope: !1300, inlinedAt: !2840)
!2842 = !DILocation(line: 180, column: 57, scope: !1300, inlinedAt: !2840)
!2843 = !DILocation(line: 184, column: 6, scope: !1300, inlinedAt: !2840)
!2844 = !DILocation(line: 184, column: 12, scope: !1300, inlinedAt: !2840)
!2845 = !DILocation(line: 185, column: 8, scope: !1316, inlinedAt: !2840)
!2846 = !DILocation(line: 185, column: 23, scope: !1316, inlinedAt: !2840)
!2847 = !DILocation(line: 185, column: 19, scope: !1316, inlinedAt: !2840)
!2848 = !DILocation(line: 186, column: 5, scope: !1316, inlinedAt: !2840)
!2849 = !DILocation(line: 187, column: 6, scope: !1300, inlinedAt: !2840)
!2850 = !DILocation(line: 187, column: 17, scope: !1300, inlinedAt: !2840)
!2851 = !DILocation(line: 188, column: 6, scope: !1300, inlinedAt: !2840)
!2852 = !DILocation(line: 188, column: 18, scope: !1300, inlinedAt: !2840)
!2853 = !DILocation(line: 1032, column: 10, scope: !2755, inlinedAt: !2831)
!2854 = !DILocation(line: 1033, column: 1, scope: !2755, inlinedAt: !2831)
!2855 = !DILocation(line: 1039, column: 3, scope: !2815)
!2856 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !138, file: !138, line: 1043, type: !2857, isLocal: false, isDefinition: true, scopeLine: 1045, flags: DIFlagPrototyped, isOptimized: true, unit: !108, retainedNodes: !2859)
!2857 = !DISubroutineType(types: !2858)
!2858 = !{!103, !30, !30, !30, !133}
!2859 = !{!2860, !2861, !2862, !2863}
!2860 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2856, file: !138, line: 1043, type: !30)
!2861 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2856, file: !138, line: 1043, type: !30)
!2862 = !DILocalVariable(name: "arg", arg: 3, scope: !2856, file: !138, line: 1044, type: !30)
!2863 = !DILocalVariable(name: "argsize", arg: 4, scope: !2856, file: !138, line: 1044, type: !133)
!2864 = !DILocation(line: 1043, column: 34, scope: !2856)
!2865 = !DILocation(line: 1043, column: 58, scope: !2856)
!2866 = !DILocation(line: 1044, column: 34, scope: !2856)
!2867 = !DILocation(line: 1044, column: 46, scope: !2856)
!2868 = !DILocation(line: 1026, column: 28, scope: !2755, inlinedAt: !2869)
!2869 = distinct !DILocation(line: 1046, column: 10, scope: !2856)
!2870 = !DILocation(line: 1026, column: 43, scope: !2755, inlinedAt: !2869)
!2871 = !DILocation(line: 1027, column: 36, scope: !2755, inlinedAt: !2869)
!2872 = !DILocation(line: 1028, column: 36, scope: !2755, inlinedAt: !2869)
!2873 = !DILocation(line: 1028, column: 48, scope: !2755, inlinedAt: !2869)
!2874 = !DILocation(line: 1030, column: 3, scope: !2755, inlinedAt: !2869)
!2875 = !DILocation(line: 1030, column: 30, scope: !2755, inlinedAt: !2869)
!2876 = !DILocation(line: 1030, column: 26, scope: !2755, inlinedAt: !2869)
!2877 = !DILocation(line: 179, column: 45, scope: !1300, inlinedAt: !2878)
!2878 = distinct !DILocation(line: 1031, column: 3, scope: !2755, inlinedAt: !2869)
!2879 = !DILocation(line: 180, column: 33, scope: !1300, inlinedAt: !2878)
!2880 = !DILocation(line: 180, column: 57, scope: !1300, inlinedAt: !2878)
!2881 = !DILocation(line: 184, column: 6, scope: !1300, inlinedAt: !2878)
!2882 = !DILocation(line: 184, column: 12, scope: !1300, inlinedAt: !2878)
!2883 = !DILocation(line: 185, column: 8, scope: !1316, inlinedAt: !2878)
!2884 = !DILocation(line: 185, column: 23, scope: !1316, inlinedAt: !2878)
!2885 = !DILocation(line: 185, column: 19, scope: !1316, inlinedAt: !2878)
!2886 = !DILocation(line: 186, column: 5, scope: !1316, inlinedAt: !2878)
!2887 = !DILocation(line: 187, column: 6, scope: !1300, inlinedAt: !2878)
!2888 = !DILocation(line: 187, column: 17, scope: !1300, inlinedAt: !2878)
!2889 = !DILocation(line: 188, column: 6, scope: !1300, inlinedAt: !2878)
!2890 = !DILocation(line: 188, column: 18, scope: !1300, inlinedAt: !2878)
!2891 = !DILocation(line: 1032, column: 10, scope: !2755, inlinedAt: !2869)
!2892 = !DILocation(line: 1033, column: 1, scope: !2755, inlinedAt: !2869)
!2893 = !DILocation(line: 1046, column: 3, scope: !2856)
!2894 = distinct !DISubprogram(name: "quote_n_mem", scope: !138, file: !138, line: 1061, type: !2895, isLocal: false, isDefinition: true, scopeLine: 1062, flags: DIFlagPrototyped, isOptimized: true, unit: !108, retainedNodes: !2897)
!2895 = !DISubroutineType(types: !2896)
!2896 = !{!30, !54, !30, !133}
!2897 = !{!2898, !2899, !2900}
!2898 = !DILocalVariable(name: "n", arg: 1, scope: !2894, file: !138, line: 1061, type: !54)
!2899 = !DILocalVariable(name: "arg", arg: 2, scope: !2894, file: !138, line: 1061, type: !30)
!2900 = !DILocalVariable(name: "argsize", arg: 3, scope: !2894, file: !138, line: 1061, type: !133)
!2901 = !DILocation(line: 1061, column: 18, scope: !2894)
!2902 = !DILocation(line: 1061, column: 33, scope: !2894)
!2903 = !DILocation(line: 1061, column: 45, scope: !2894)
!2904 = !DILocation(line: 1063, column: 10, scope: !2894)
!2905 = !DILocation(line: 1063, column: 3, scope: !2894)
!2906 = distinct !DISubprogram(name: "quote_mem", scope: !138, file: !138, line: 1067, type: !2907, isLocal: false, isDefinition: true, scopeLine: 1068, flags: DIFlagPrototyped, isOptimized: true, unit: !108, retainedNodes: !2909)
!2907 = !DISubroutineType(types: !2908)
!2908 = !{!30, !30, !133}
!2909 = !{!2910, !2911}
!2910 = !DILocalVariable(name: "arg", arg: 1, scope: !2906, file: !138, line: 1067, type: !30)
!2911 = !DILocalVariable(name: "argsize", arg: 2, scope: !2906, file: !138, line: 1067, type: !133)
!2912 = !DILocation(line: 1067, column: 24, scope: !2906)
!2913 = !DILocation(line: 1067, column: 36, scope: !2906)
!2914 = !DILocation(line: 1061, column: 18, scope: !2894, inlinedAt: !2915)
!2915 = distinct !DILocation(line: 1069, column: 10, scope: !2906)
!2916 = !DILocation(line: 1061, column: 33, scope: !2894, inlinedAt: !2915)
!2917 = !DILocation(line: 1061, column: 45, scope: !2894, inlinedAt: !2915)
!2918 = !DILocation(line: 1063, column: 10, scope: !2894, inlinedAt: !2915)
!2919 = !DILocation(line: 1069, column: 3, scope: !2906)
!2920 = distinct !DISubprogram(name: "quote_n", scope: !138, file: !138, line: 1073, type: !2921, isLocal: false, isDefinition: true, scopeLine: 1074, flags: DIFlagPrototyped, isOptimized: true, unit: !108, retainedNodes: !2923)
!2921 = !DISubroutineType(types: !2922)
!2922 = !{!30, !54, !30}
!2923 = !{!2924, !2925}
!2924 = !DILocalVariable(name: "n", arg: 1, scope: !2920, file: !138, line: 1073, type: !54)
!2925 = !DILocalVariable(name: "arg", arg: 2, scope: !2920, file: !138, line: 1073, type: !30)
!2926 = !DILocation(line: 1073, column: 14, scope: !2920)
!2927 = !DILocation(line: 1073, column: 29, scope: !2920)
!2928 = !DILocation(line: 1061, column: 18, scope: !2894, inlinedAt: !2929)
!2929 = distinct !DILocation(line: 1075, column: 10, scope: !2920)
!2930 = !DILocation(line: 1061, column: 33, scope: !2894, inlinedAt: !2929)
!2931 = !DILocation(line: 1061, column: 45, scope: !2894, inlinedAt: !2929)
!2932 = !DILocation(line: 1063, column: 10, scope: !2894, inlinedAt: !2929)
!2933 = !DILocation(line: 1075, column: 3, scope: !2920)
!2934 = distinct !DISubprogram(name: "quote", scope: !138, file: !138, line: 1079, type: !2935, isLocal: false, isDefinition: true, scopeLine: 1080, flags: DIFlagPrototyped, isOptimized: true, unit: !108, retainedNodes: !2937)
!2935 = !DISubroutineType(types: !2936)
!2936 = !{!30, !30}
!2937 = !{!2938}
!2938 = !DILocalVariable(name: "arg", arg: 1, scope: !2934, file: !138, line: 1079, type: !30)
!2939 = !DILocation(line: 1079, column: 20, scope: !2934)
!2940 = !DILocation(line: 1073, column: 14, scope: !2920, inlinedAt: !2941)
!2941 = distinct !DILocation(line: 1081, column: 10, scope: !2934)
!2942 = !DILocation(line: 1073, column: 29, scope: !2920, inlinedAt: !2941)
!2943 = !DILocation(line: 1061, column: 18, scope: !2894, inlinedAt: !2944)
!2944 = distinct !DILocation(line: 1075, column: 10, scope: !2920, inlinedAt: !2941)
!2945 = !DILocation(line: 1061, column: 33, scope: !2894, inlinedAt: !2944)
!2946 = !DILocation(line: 1061, column: 45, scope: !2894, inlinedAt: !2944)
!2947 = !DILocation(line: 1063, column: 10, scope: !2894, inlinedAt: !2944)
!2948 = !DILocation(line: 1081, column: 3, scope: !2934)
!2949 = distinct !DISubprogram(name: "version_etc_arn", scope: !197, file: !197, line: 62, type: !2950, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !193, retainedNodes: !2987)
!2950 = !DISubroutineType(types: !2951)
!2951 = !{null, !2952, !30, !30, !30, !2986, !133}
!2952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2953, size: 64)
!2953 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !780, line: 7, baseType: !2954)
!2954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !782, line: 49, size: 1728, elements: !2955)
!2955 = !{!2956, !2957, !2958, !2959, !2960, !2961, !2962, !2963, !2964, !2965, !2966, !2967, !2968, !2969, !2971, !2972, !2973, !2974, !2975, !2976, !2977, !2978, !2979, !2980, !2981, !2982, !2983, !2984, !2985}
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2954, file: !782, line: 51, baseType: !54, size: 32)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2954, file: !782, line: 54, baseType: !103, size: 64, offset: 64)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2954, file: !782, line: 55, baseType: !103, size: 64, offset: 128)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2954, file: !782, line: 56, baseType: !103, size: 64, offset: 192)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2954, file: !782, line: 57, baseType: !103, size: 64, offset: 256)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2954, file: !782, line: 58, baseType: !103, size: 64, offset: 320)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2954, file: !782, line: 59, baseType: !103, size: 64, offset: 384)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2954, file: !782, line: 60, baseType: !103, size: 64, offset: 448)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2954, file: !782, line: 61, baseType: !103, size: 64, offset: 512)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2954, file: !782, line: 64, baseType: !103, size: 64, offset: 576)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2954, file: !782, line: 65, baseType: !103, size: 64, offset: 640)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2954, file: !782, line: 66, baseType: !103, size: 64, offset: 704)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2954, file: !782, line: 68, baseType: !797, size: 64, offset: 768)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2954, file: !782, line: 70, baseType: !2970, size: 64, offset: 832)
!2970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2954, size: 64)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2954, file: !782, line: 72, baseType: !54, size: 32, offset: 896)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2954, file: !782, line: 73, baseType: !54, size: 32, offset: 928)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2954, file: !782, line: 74, baseType: !804, size: 64, offset: 960)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2954, file: !782, line: 77, baseType: !132, size: 16, offset: 1024)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2954, file: !782, line: 78, baseType: !808, size: 8, offset: 1040)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2954, file: !782, line: 79, baseType: !810, size: 8, offset: 1048)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2954, file: !782, line: 81, baseType: !812, size: 64, offset: 1088)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2954, file: !782, line: 89, baseType: !815, size: 64, offset: 1152)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2954, file: !782, line: 91, baseType: !817, size: 64, offset: 1216)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2954, file: !782, line: 92, baseType: !820, size: 64, offset: 1280)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2954, file: !782, line: 93, baseType: !2970, size: 64, offset: 1344)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2954, file: !782, line: 94, baseType: !33, size: 64, offset: 1408)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2954, file: !782, line: 95, baseType: !133, size: 64, offset: 1472)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2954, file: !782, line: 96, baseType: !54, size: 32, offset: 1536)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2954, file: !782, line: 98, baseType: !827, size: 160, offset: 1568)
!2986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!2987 = !{!2988, !2989, !2990, !2991, !2992, !2993}
!2988 = !DILocalVariable(name: "stream", arg: 1, scope: !2949, file: !197, line: 62, type: !2952)
!2989 = !DILocalVariable(name: "command_name", arg: 2, scope: !2949, file: !197, line: 63, type: !30)
!2990 = !DILocalVariable(name: "package", arg: 3, scope: !2949, file: !197, line: 63, type: !30)
!2991 = !DILocalVariable(name: "version", arg: 4, scope: !2949, file: !197, line: 64, type: !30)
!2992 = !DILocalVariable(name: "authors", arg: 5, scope: !2949, file: !197, line: 65, type: !2986)
!2993 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2949, file: !197, line: 65, type: !133)
!2994 = !DILocation(line: 62, column: 24, scope: !2949)
!2995 = !DILocation(line: 63, column: 30, scope: !2949)
!2996 = !DILocation(line: 63, column: 56, scope: !2949)
!2997 = !DILocation(line: 64, column: 30, scope: !2949)
!2998 = !DILocation(line: 65, column: 39, scope: !2949)
!2999 = !DILocation(line: 65, column: 55, scope: !2949)
!3000 = !DILocation(line: 67, column: 7, scope: !3001)
!3001 = distinct !DILexicalBlock(scope: !2949, file: !197, line: 67, column: 7)
!3002 = !DILocation(line: 67, column: 7, scope: !2949)
!3003 = !DILocation(line: 68, column: 5, scope: !3001)
!3004 = !DILocation(line: 70, column: 5, scope: !3001)
!3005 = !DILocation(line: 84, column: 3, scope: !2949)
!3006 = !DILocation(line: 86, column: 3, scope: !2949)
!3007 = !DILocation(line: 95, column: 3, scope: !2949)
!3008 = !DILocation(line: 99, column: 7, scope: !3009)
!3009 = distinct !DILexicalBlock(scope: !2949, file: !197, line: 96, column: 5)
!3010 = !DILocation(line: 102, column: 7, scope: !3009)
!3011 = !DILocation(line: 103, column: 7, scope: !3009)
!3012 = !DILocation(line: 106, column: 7, scope: !3009)
!3013 = !DILocation(line: 107, column: 7, scope: !3009)
!3014 = !DILocation(line: 110, column: 7, scope: !3009)
!3015 = !DILocation(line: 112, column: 7, scope: !3009)
!3016 = !DILocation(line: 117, column: 7, scope: !3009)
!3017 = !DILocation(line: 119, column: 7, scope: !3009)
!3018 = !DILocation(line: 124, column: 7, scope: !3009)
!3019 = !DILocation(line: 126, column: 7, scope: !3009)
!3020 = !DILocation(line: 131, column: 7, scope: !3009)
!3021 = !DILocation(line: 134, column: 7, scope: !3009)
!3022 = !DILocation(line: 139, column: 7, scope: !3009)
!3023 = !DILocation(line: 142, column: 7, scope: !3009)
!3024 = !DILocation(line: 147, column: 7, scope: !3009)
!3025 = !DILocation(line: 151, column: 7, scope: !3009)
!3026 = !DILocation(line: 156, column: 7, scope: !3009)
!3027 = !DILocation(line: 160, column: 7, scope: !3009)
!3028 = !DILocation(line: 167, column: 7, scope: !3009)
!3029 = !DILocation(line: 171, column: 7, scope: !3009)
!3030 = !DILocation(line: 173, column: 1, scope: !2949)
!3031 = distinct !DISubprogram(name: "version_etc_ar", scope: !197, file: !197, line: 180, type: !3032, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !193, retainedNodes: !3034)
!3032 = !DISubroutineType(types: !3033)
!3033 = !{null, !2952, !30, !30, !30, !2986}
!3034 = !{!3035, !3036, !3037, !3038, !3039, !3040}
!3035 = !DILocalVariable(name: "stream", arg: 1, scope: !3031, file: !197, line: 180, type: !2952)
!3036 = !DILocalVariable(name: "command_name", arg: 2, scope: !3031, file: !197, line: 181, type: !30)
!3037 = !DILocalVariable(name: "package", arg: 3, scope: !3031, file: !197, line: 181, type: !30)
!3038 = !DILocalVariable(name: "version", arg: 4, scope: !3031, file: !197, line: 182, type: !30)
!3039 = !DILocalVariable(name: "authors", arg: 5, scope: !3031, file: !197, line: 182, type: !2986)
!3040 = !DILocalVariable(name: "n_authors", scope: !3031, file: !197, line: 184, type: !133)
!3041 = !DILocation(line: 180, column: 23, scope: !3031)
!3042 = !DILocation(line: 181, column: 29, scope: !3031)
!3043 = !DILocation(line: 181, column: 55, scope: !3031)
!3044 = !DILocation(line: 182, column: 29, scope: !3031)
!3045 = !DILocation(line: 182, column: 59, scope: !3031)
!3046 = !DILocation(line: 184, column: 10, scope: !3031)
!3047 = !DILocation(line: 186, column: 8, scope: !3048)
!3048 = distinct !DILexicalBlock(scope: !3031, file: !197, line: 186, column: 3)
!3049 = !DILocation(line: 0, scope: !3050)
!3050 = distinct !DILexicalBlock(scope: !3048, file: !197, line: 186, column: 3)
!3051 = !DILocation(line: 186, column: 23, scope: !3050)
!3052 = !DILocation(line: 186, column: 3, scope: !3048)
!3053 = !DILocation(line: 186, column: 52, scope: !3050)
!3054 = distinct !{!3054, !3052, !3055}
!3055 = !DILocation(line: 187, column: 5, scope: !3048)
!3056 = !DILocation(line: 188, column: 3, scope: !3031)
!3057 = !DILocation(line: 189, column: 1, scope: !3031)
!3058 = distinct !DISubprogram(name: "version_etc_va", scope: !197, file: !197, line: 196, type: !3059, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !193, retainedNodes: !3068)
!3059 = !DISubroutineType(types: !3060)
!3060 = !{null, !2952, !30, !30, !30, !3061}
!3061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3062, size: 64)
!3062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !194, line: 189, size: 192, elements: !3063)
!3063 = !{!3064, !3065, !3066, !3067}
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3062, file: !194, line: 189, baseType: !7, size: 32)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3062, file: !194, line: 189, baseType: !7, size: 32, offset: 32)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3062, file: !194, line: 189, baseType: !33, size: 64, offset: 64)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3062, file: !194, line: 189, baseType: !33, size: 64, offset: 128)
!3068 = !{!3069, !3070, !3071, !3072, !3073, !3074, !3075}
!3069 = !DILocalVariable(name: "stream", arg: 1, scope: !3058, file: !197, line: 196, type: !2952)
!3070 = !DILocalVariable(name: "command_name", arg: 2, scope: !3058, file: !197, line: 197, type: !30)
!3071 = !DILocalVariable(name: "package", arg: 3, scope: !3058, file: !197, line: 197, type: !30)
!3072 = !DILocalVariable(name: "version", arg: 4, scope: !3058, file: !197, line: 198, type: !30)
!3073 = !DILocalVariable(name: "authors", arg: 5, scope: !3058, file: !197, line: 198, type: !3061)
!3074 = !DILocalVariable(name: "n_authors", scope: !3058, file: !197, line: 200, type: !133)
!3075 = !DILocalVariable(name: "authtab", scope: !3058, file: !197, line: 201, type: !3076)
!3076 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 640, elements: !141)
!3077 = !DILocation(line: 196, column: 23, scope: !3058)
!3078 = !DILocation(line: 197, column: 29, scope: !3058)
!3079 = !DILocation(line: 197, column: 55, scope: !3058)
!3080 = !DILocation(line: 198, column: 29, scope: !3058)
!3081 = !DILocation(line: 198, column: 46, scope: !3058)
!3082 = !DILocation(line: 201, column: 3, scope: !3058)
!3083 = !DILocation(line: 201, column: 15, scope: !3058)
!3084 = !DILocation(line: 200, column: 10, scope: !3058)
!3085 = !DILocation(line: 205, column: 35, scope: !3086)
!3086 = distinct !DILexicalBlock(scope: !3087, file: !197, line: 203, column: 3)
!3087 = distinct !DILexicalBlock(scope: !3058, file: !197, line: 203, column: 3)
!3088 = !DILocation(line: 205, column: 14, scope: !3086)
!3089 = !DILocation(line: 205, column: 33, scope: !3086)
!3090 = !DILocation(line: 205, column: 67, scope: !3086)
!3091 = !DILocation(line: 203, column: 3, scope: !3087)
!3092 = !DILocation(line: 0, scope: !3086)
!3093 = !DILocation(line: 208, column: 3, scope: !3058)
!3094 = !DILocation(line: 210, column: 1, scope: !3058)
!3095 = distinct !DISubprogram(name: "version_etc", scope: !197, file: !197, line: 227, type: !3096, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !193, retainedNodes: !3098)
!3096 = !DISubroutineType(types: !3097)
!3097 = !{null, !2952, !30, !30, !30, null}
!3098 = !{!3099, !3100, !3101, !3102, !3103}
!3099 = !DILocalVariable(name: "stream", arg: 1, scope: !3095, file: !197, line: 227, type: !2952)
!3100 = !DILocalVariable(name: "command_name", arg: 2, scope: !3095, file: !197, line: 228, type: !30)
!3101 = !DILocalVariable(name: "package", arg: 3, scope: !3095, file: !197, line: 228, type: !30)
!3102 = !DILocalVariable(name: "version", arg: 4, scope: !3095, file: !197, line: 229, type: !30)
!3103 = !DILocalVariable(name: "authors", scope: !3095, file: !197, line: 231, type: !3104)
!3104 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1021, line: 52, baseType: !3105)
!3105 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1138, line: 48, baseType: !3106)
!3106 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !194, line: 231, baseType: !3107)
!3107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3062, size: 192, elements: !58)
!3108 = !DILocation(line: 227, column: 20, scope: !3095)
!3109 = !DILocation(line: 228, column: 26, scope: !3095)
!3110 = !DILocation(line: 228, column: 52, scope: !3095)
!3111 = !DILocation(line: 229, column: 26, scope: !3095)
!3112 = !DILocation(line: 231, column: 3, scope: !3095)
!3113 = !DILocation(line: 231, column: 11, scope: !3095)
!3114 = !DILocation(line: 233, column: 3, scope: !3095)
!3115 = !DILocation(line: 234, column: 3, scope: !3095)
!3116 = !DILocation(line: 235, column: 3, scope: !3095)
!3117 = !DILocation(line: 236, column: 1, scope: !3095)
!3118 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !197, file: !197, line: 239, type: !981, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !193, retainedNodes: !65)
!3119 = !DILocation(line: 245, column: 3, scope: !3118)
!3120 = !DILocation(line: 251, column: 3, scope: !3118)
!3121 = !DILocation(line: 256, column: 3, scope: !3118)
!3122 = !DILocation(line: 258, column: 1, scope: !3118)
!3123 = distinct !DISubprogram(name: "xnmalloc", scope: !205, file: !205, line: 99, type: !3124, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !201, retainedNodes: !3126)
!3124 = !DISubroutineType(types: !3125)
!3125 = !{!33, !133, !133}
!3126 = !{!3127, !3128}
!3127 = !DILocalVariable(name: "n", arg: 1, scope: !3123, file: !205, line: 99, type: !133)
!3128 = !DILocalVariable(name: "s", arg: 2, scope: !3123, file: !205, line: 99, type: !133)
!3129 = !DILocation(line: 99, column: 18, scope: !3123)
!3130 = !DILocation(line: 99, column: 28, scope: !3123)
!3131 = !DILocation(line: 101, column: 7, scope: !3132)
!3132 = distinct !DILexicalBlock(scope: !3123, file: !205, line: 101, column: 7)
!3133 = !DILocation(line: 101, column: 7, scope: !3123)
!3134 = !DILocation(line: 102, column: 5, scope: !3132)
!3135 = !DILocation(line: 103, column: 21, scope: !3123)
!3136 = !DILocalVariable(name: "n", arg: 1, scope: !3137, file: !3138, line: 39, type: !133)
!3137 = distinct !DISubprogram(name: "xmalloc", scope: !3138, file: !3138, line: 39, type: !3139, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !201, retainedNodes: !3141)
!3138 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3139 = !DISubroutineType(types: !3140)
!3140 = !{!33, !133}
!3141 = !{!3136, !3142}
!3142 = !DILocalVariable(name: "p", scope: !3137, file: !3138, line: 41, type: !33)
!3143 = !DILocation(line: 39, column: 17, scope: !3137, inlinedAt: !3144)
!3144 = distinct !DILocation(line: 103, column: 10, scope: !3123)
!3145 = !DILocation(line: 41, column: 13, scope: !3137, inlinedAt: !3144)
!3146 = !DILocation(line: 41, column: 9, scope: !3137, inlinedAt: !3144)
!3147 = !DILocation(line: 42, column: 8, scope: !3148, inlinedAt: !3144)
!3148 = distinct !DILexicalBlock(scope: !3137, file: !3138, line: 42, column: 7)
!3149 = !DILocation(line: 42, column: 15, scope: !3148, inlinedAt: !3144)
!3150 = !DILocation(line: 42, column: 10, scope: !3148, inlinedAt: !3144)
!3151 = !DILocation(line: 43, column: 5, scope: !3148, inlinedAt: !3144)
!3152 = !DILocation(line: 103, column: 3, scope: !3123)
!3153 = !DILocation(line: 39, column: 17, scope: !3137)
!3154 = !DILocation(line: 41, column: 13, scope: !3137)
!3155 = !DILocation(line: 41, column: 9, scope: !3137)
!3156 = !DILocation(line: 42, column: 8, scope: !3148)
!3157 = !DILocation(line: 42, column: 15, scope: !3148)
!3158 = !DILocation(line: 42, column: 10, scope: !3148)
!3159 = !DILocation(line: 43, column: 5, scope: !3148)
!3160 = !DILocation(line: 44, column: 3, scope: !3137)
!3161 = distinct !DISubprogram(name: "xnrealloc", scope: !205, file: !205, line: 112, type: !3162, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: true, unit: !201, retainedNodes: !3164)
!3162 = !DISubroutineType(types: !3163)
!3163 = !{!33, !33, !133, !133}
!3164 = !{!3165, !3166, !3167}
!3165 = !DILocalVariable(name: "p", arg: 1, scope: !3161, file: !205, line: 112, type: !33)
!3166 = !DILocalVariable(name: "n", arg: 2, scope: !3161, file: !205, line: 112, type: !133)
!3167 = !DILocalVariable(name: "s", arg: 3, scope: !3161, file: !205, line: 112, type: !133)
!3168 = !DILocation(line: 112, column: 18, scope: !3161)
!3169 = !DILocation(line: 112, column: 28, scope: !3161)
!3170 = !DILocation(line: 112, column: 38, scope: !3161)
!3171 = !DILocation(line: 114, column: 7, scope: !3172)
!3172 = distinct !DILexicalBlock(scope: !3161, file: !205, line: 114, column: 7)
!3173 = !DILocation(line: 114, column: 7, scope: !3161)
!3174 = !DILocation(line: 115, column: 5, scope: !3172)
!3175 = !DILocation(line: 116, column: 25, scope: !3161)
!3176 = !DILocalVariable(name: "p", arg: 1, scope: !3177, file: !3138, line: 51, type: !33)
!3177 = distinct !DISubprogram(name: "xrealloc", scope: !3138, file: !3138, line: 51, type: !3178, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !201, retainedNodes: !3180)
!3178 = !DISubroutineType(types: !3179)
!3179 = !{!33, !33, !133}
!3180 = !{!3176, !3181}
!3181 = !DILocalVariable(name: "n", arg: 2, scope: !3177, file: !3138, line: 51, type: !133)
!3182 = !DILocation(line: 51, column: 17, scope: !3177, inlinedAt: !3183)
!3183 = distinct !DILocation(line: 116, column: 10, scope: !3161)
!3184 = !DILocation(line: 51, column: 27, scope: !3177, inlinedAt: !3183)
!3185 = !DILocation(line: 53, column: 8, scope: !3186, inlinedAt: !3183)
!3186 = distinct !DILexicalBlock(scope: !3177, file: !3138, line: 53, column: 7)
!3187 = !DILocation(line: 53, column: 13, scope: !3186, inlinedAt: !3183)
!3188 = !DILocation(line: 53, column: 10, scope: !3186, inlinedAt: !3183)
!3189 = !DILocation(line: 57, column: 7, scope: !3190, inlinedAt: !3183)
!3190 = distinct !DILexicalBlock(scope: !3186, file: !3138, line: 54, column: 5)
!3191 = !DILocation(line: 58, column: 7, scope: !3190, inlinedAt: !3183)
!3192 = !DILocation(line: 61, column: 7, scope: !3177, inlinedAt: !3183)
!3193 = !DILocation(line: 62, column: 8, scope: !3194, inlinedAt: !3183)
!3194 = distinct !DILexicalBlock(scope: !3177, file: !3138, line: 62, column: 7)
!3195 = !DILocation(line: 62, column: 13, scope: !3194, inlinedAt: !3183)
!3196 = !DILocation(line: 62, column: 10, scope: !3194, inlinedAt: !3183)
!3197 = !DILocation(line: 63, column: 5, scope: !3194, inlinedAt: !3183)
!3198 = !DILocation(line: 0, scope: !3177, inlinedAt: !3183)
!3199 = !DILocation(line: 116, column: 3, scope: !3161)
!3200 = !DILocation(line: 51, column: 17, scope: !3177)
!3201 = !DILocation(line: 51, column: 27, scope: !3177)
!3202 = !DILocation(line: 53, column: 8, scope: !3186)
!3203 = !DILocation(line: 53, column: 13, scope: !3186)
!3204 = !DILocation(line: 53, column: 10, scope: !3186)
!3205 = !DILocation(line: 57, column: 7, scope: !3190)
!3206 = !DILocation(line: 58, column: 7, scope: !3190)
!3207 = !DILocation(line: 61, column: 7, scope: !3177)
!3208 = !DILocation(line: 62, column: 8, scope: !3194)
!3209 = !DILocation(line: 62, column: 13, scope: !3194)
!3210 = !DILocation(line: 62, column: 10, scope: !3194)
!3211 = !DILocation(line: 63, column: 5, scope: !3194)
!3212 = !DILocation(line: 0, scope: !3177)
!3213 = !DILocation(line: 65, column: 1, scope: !3177)
!3214 = !DILocation(line: 174, column: 19, scope: !206)
!3215 = !DILocation(line: 174, column: 30, scope: !206)
!3216 = !DILocation(line: 174, column: 41, scope: !206)
!3217 = !DILocation(line: 176, column: 14, scope: !206)
!3218 = !DILocation(line: 176, column: 10, scope: !206)
!3219 = !DILocation(line: 178, column: 9, scope: !3220)
!3220 = distinct !DILexicalBlock(scope: !206, file: !205, line: 178, column: 7)
!3221 = !DILocation(line: 178, column: 7, scope: !206)
!3222 = !DILocation(line: 180, column: 13, scope: !3223)
!3223 = distinct !DILexicalBlock(scope: !3224, file: !205, line: 180, column: 11)
!3224 = distinct !DILexicalBlock(scope: !3220, file: !205, line: 179, column: 5)
!3225 = !DILocation(line: 180, column: 11, scope: !3224)
!3226 = !DILocation(line: 188, column: 30, scope: !3227)
!3227 = distinct !DILexicalBlock(scope: !3223, file: !205, line: 181, column: 9)
!3228 = !DILocation(line: 189, column: 16, scope: !3227)
!3229 = !DILocation(line: 189, column: 13, scope: !3227)
!3230 = !DILocation(line: 190, column: 9, scope: !3227)
!3231 = !DILocation(line: 0, scope: !3227)
!3232 = !DILocation(line: 191, column: 11, scope: !3233)
!3233 = distinct !DILexicalBlock(scope: !3224, file: !205, line: 191, column: 11)
!3234 = !DILocation(line: 191, column: 11, scope: !3224)
!3235 = !DILocation(line: 206, column: 7, scope: !206)
!3236 = !DILocation(line: 207, column: 25, scope: !206)
!3237 = !DILocation(line: 51, column: 17, scope: !3177, inlinedAt: !3238)
!3238 = distinct !DILocation(line: 207, column: 10, scope: !206)
!3239 = !DILocation(line: 51, column: 27, scope: !3177, inlinedAt: !3238)
!3240 = !DILocation(line: 53, column: 10, scope: !3186, inlinedAt: !3238)
!3241 = !DILocation(line: 192, column: 9, scope: !3233)
!3242 = !DILocation(line: 200, column: 69, scope: !3243)
!3243 = distinct !DILexicalBlock(scope: !3244, file: !205, line: 200, column: 11)
!3244 = distinct !DILexicalBlock(scope: !3220, file: !205, line: 195, column: 5)
!3245 = !DILocation(line: 201, column: 11, scope: !3243)
!3246 = !DILocation(line: 200, column: 11, scope: !3244)
!3247 = !DILocation(line: 202, column: 9, scope: !3243)
!3248 = !DILocation(line: 203, column: 14, scope: !3244)
!3249 = !DILocation(line: 203, column: 18, scope: !3244)
!3250 = !DILocation(line: 203, column: 9, scope: !3244)
!3251 = !DILocation(line: 53, column: 8, scope: !3186, inlinedAt: !3238)
!3252 = !DILocation(line: 57, column: 7, scope: !3190, inlinedAt: !3238)
!3253 = !DILocation(line: 58, column: 7, scope: !3190, inlinedAt: !3238)
!3254 = !DILocation(line: 61, column: 7, scope: !3177, inlinedAt: !3238)
!3255 = !DILocation(line: 62, column: 8, scope: !3194, inlinedAt: !3238)
!3256 = !DILocation(line: 62, column: 13, scope: !3194, inlinedAt: !3238)
!3257 = !DILocation(line: 62, column: 10, scope: !3194, inlinedAt: !3238)
!3258 = !DILocation(line: 63, column: 5, scope: !3194, inlinedAt: !3238)
!3259 = !DILocation(line: 0, scope: !3177, inlinedAt: !3238)
!3260 = !DILocation(line: 207, column: 3, scope: !206)
!3261 = distinct !DISubprogram(name: "xcharalloc", scope: !205, file: !205, line: 216, type: !2235, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !201, retainedNodes: !3262)
!3262 = !{!3263}
!3263 = !DILocalVariable(name: "n", arg: 1, scope: !3261, file: !205, line: 216, type: !133)
!3264 = !DILocation(line: 216, column: 20, scope: !3261)
!3265 = !DILocation(line: 39, column: 17, scope: !3137, inlinedAt: !3266)
!3266 = distinct !DILocation(line: 218, column: 10, scope: !3261)
!3267 = !DILocation(line: 41, column: 13, scope: !3137, inlinedAt: !3266)
!3268 = !DILocation(line: 41, column: 9, scope: !3137, inlinedAt: !3266)
!3269 = !DILocation(line: 42, column: 8, scope: !3148, inlinedAt: !3266)
!3270 = !DILocation(line: 42, column: 15, scope: !3148, inlinedAt: !3266)
!3271 = !DILocation(line: 42, column: 10, scope: !3148, inlinedAt: !3266)
!3272 = !DILocation(line: 43, column: 5, scope: !3148, inlinedAt: !3266)
!3273 = !DILocation(line: 218, column: 3, scope: !3261)
!3274 = distinct !DISubprogram(name: "x2realloc", scope: !3138, file: !3138, line: 74, type: !3275, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !201, retainedNodes: !3277)
!3275 = !DISubroutineType(types: !3276)
!3276 = !{!33, !33, !209}
!3277 = !{!3278, !3279}
!3278 = !DILocalVariable(name: "p", arg: 1, scope: !3274, file: !3138, line: 74, type: !33)
!3279 = !DILocalVariable(name: "pn", arg: 2, scope: !3274, file: !3138, line: 74, type: !209)
!3280 = !DILocation(line: 74, column: 18, scope: !3274)
!3281 = !DILocation(line: 74, column: 29, scope: !3274)
!3282 = !DILocation(line: 174, column: 19, scope: !206, inlinedAt: !3283)
!3283 = distinct !DILocation(line: 76, column: 10, scope: !3274)
!3284 = !DILocation(line: 174, column: 30, scope: !206, inlinedAt: !3283)
!3285 = !DILocation(line: 174, column: 41, scope: !206, inlinedAt: !3283)
!3286 = !DILocation(line: 176, column: 14, scope: !206, inlinedAt: !3283)
!3287 = !DILocation(line: 176, column: 10, scope: !206, inlinedAt: !3283)
!3288 = !DILocation(line: 178, column: 9, scope: !3220, inlinedAt: !3283)
!3289 = !DILocation(line: 178, column: 7, scope: !206, inlinedAt: !3283)
!3290 = !DILocation(line: 180, column: 13, scope: !3223, inlinedAt: !3283)
!3291 = !DILocation(line: 180, column: 11, scope: !3224, inlinedAt: !3283)
!3292 = !DILocation(line: 191, column: 11, scope: !3233, inlinedAt: !3283)
!3293 = !DILocation(line: 191, column: 11, scope: !3224, inlinedAt: !3283)
!3294 = !DILocation(line: 206, column: 7, scope: !206, inlinedAt: !3283)
!3295 = !DILocation(line: 51, column: 17, scope: !3177, inlinedAt: !3296)
!3296 = distinct !DILocation(line: 207, column: 10, scope: !206, inlinedAt: !3283)
!3297 = !DILocation(line: 51, column: 27, scope: !3177, inlinedAt: !3296)
!3298 = !DILocation(line: 53, column: 10, scope: !3186, inlinedAt: !3296)
!3299 = !DILocation(line: 192, column: 9, scope: !3233, inlinedAt: !3283)
!3300 = !DILocation(line: 201, column: 11, scope: !3243, inlinedAt: !3283)
!3301 = !DILocation(line: 200, column: 11, scope: !3244, inlinedAt: !3283)
!3302 = !DILocation(line: 202, column: 9, scope: !3243, inlinedAt: !3283)
!3303 = !DILocation(line: 203, column: 14, scope: !3244, inlinedAt: !3283)
!3304 = !DILocation(line: 203, column: 18, scope: !3244, inlinedAt: !3283)
!3305 = !DILocation(line: 203, column: 9, scope: !3244, inlinedAt: !3283)
!3306 = !DILocation(line: 53, column: 8, scope: !3186, inlinedAt: !3296)
!3307 = !DILocation(line: 57, column: 7, scope: !3190, inlinedAt: !3296)
!3308 = !DILocation(line: 58, column: 7, scope: !3190, inlinedAt: !3296)
!3309 = !DILocation(line: 61, column: 7, scope: !3177, inlinedAt: !3296)
!3310 = !DILocation(line: 62, column: 8, scope: !3194, inlinedAt: !3296)
!3311 = !DILocation(line: 62, column: 13, scope: !3194, inlinedAt: !3296)
!3312 = !DILocation(line: 62, column: 10, scope: !3194, inlinedAt: !3296)
!3313 = !DILocation(line: 63, column: 5, scope: !3194, inlinedAt: !3296)
!3314 = !DILocation(line: 0, scope: !3177, inlinedAt: !3296)
!3315 = !DILocation(line: 76, column: 3, scope: !3274)
!3316 = distinct !DISubprogram(name: "xzalloc", scope: !3138, file: !3138, line: 84, type: !3139, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !201, retainedNodes: !3317)
!3317 = !{!3318}
!3318 = !DILocalVariable(name: "s", arg: 1, scope: !3316, file: !3138, line: 84, type: !133)
!3319 = !DILocation(line: 84, column: 17, scope: !3316)
!3320 = !DILocation(line: 39, column: 17, scope: !3137, inlinedAt: !3321)
!3321 = distinct !DILocation(line: 86, column: 18, scope: !3316)
!3322 = !DILocation(line: 41, column: 13, scope: !3137, inlinedAt: !3321)
!3323 = !DILocation(line: 41, column: 9, scope: !3137, inlinedAt: !3321)
!3324 = !DILocation(line: 42, column: 8, scope: !3148, inlinedAt: !3321)
!3325 = !DILocation(line: 42, column: 15, scope: !3148, inlinedAt: !3321)
!3326 = !DILocation(line: 42, column: 10, scope: !3148, inlinedAt: !3321)
!3327 = !DILocation(line: 43, column: 5, scope: !3148, inlinedAt: !3321)
!3328 = !DILocation(line: 86, column: 10, scope: !3316)
!3329 = !DILocation(line: 86, column: 3, scope: !3316)
!3330 = distinct !DISubprogram(name: "xcalloc", scope: !3138, file: !3138, line: 93, type: !3124, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !201, retainedNodes: !3331)
!3331 = !{!3332, !3333, !3334}
!3332 = !DILocalVariable(name: "n", arg: 1, scope: !3330, file: !3138, line: 93, type: !133)
!3333 = !DILocalVariable(name: "s", arg: 2, scope: !3330, file: !3138, line: 93, type: !133)
!3334 = !DILocalVariable(name: "p", scope: !3330, file: !3138, line: 95, type: !33)
!3335 = !DILocation(line: 93, column: 17, scope: !3330)
!3336 = !DILocation(line: 93, column: 27, scope: !3330)
!3337 = !DILocation(line: 100, column: 7, scope: !3338)
!3338 = distinct !DILexicalBlock(scope: !3330, file: !3138, line: 100, column: 7)
!3339 = !DILocation(line: 101, column: 7, scope: !3338)
!3340 = !DILocation(line: 101, column: 18, scope: !3338)
!3341 = !DILocation(line: 95, column: 9, scope: !3330)
!3342 = !DILocation(line: 101, column: 16, scope: !3338)
!3343 = !DILocation(line: 100, column: 7, scope: !3330)
!3344 = !DILocation(line: 102, column: 5, scope: !3338)
!3345 = !DILocation(line: 103, column: 3, scope: !3330)
!3346 = distinct !DISubprogram(name: "xmemdup", scope: !3138, file: !3138, line: 111, type: !3347, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !201, retainedNodes: !3351)
!3347 = !DISubroutineType(types: !3348)
!3348 = !{!33, !3349, !133}
!3349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3350, size: 64)
!3350 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3351 = !{!3352, !3353}
!3352 = !DILocalVariable(name: "p", arg: 1, scope: !3346, file: !3138, line: 111, type: !3349)
!3353 = !DILocalVariable(name: "s", arg: 2, scope: !3346, file: !3138, line: 111, type: !133)
!3354 = !DILocation(line: 111, column: 22, scope: !3346)
!3355 = !DILocation(line: 111, column: 32, scope: !3346)
!3356 = !DILocation(line: 39, column: 17, scope: !3137, inlinedAt: !3357)
!3357 = distinct !DILocation(line: 113, column: 18, scope: !3346)
!3358 = !DILocation(line: 41, column: 13, scope: !3137, inlinedAt: !3357)
!3359 = !DILocation(line: 41, column: 9, scope: !3137, inlinedAt: !3357)
!3360 = !DILocation(line: 42, column: 8, scope: !3148, inlinedAt: !3357)
!3361 = !DILocation(line: 42, column: 15, scope: !3148, inlinedAt: !3357)
!3362 = !DILocation(line: 42, column: 10, scope: !3148, inlinedAt: !3357)
!3363 = !DILocation(line: 43, column: 5, scope: !3148, inlinedAt: !3357)
!3364 = !DILocation(line: 113, column: 10, scope: !3346)
!3365 = !DILocation(line: 113, column: 3, scope: !3346)
!3366 = distinct !DISubprogram(name: "xstrdup", scope: !3138, file: !3138, line: 119, type: !2439, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !201, retainedNodes: !3367)
!3367 = !{!3368}
!3368 = !DILocalVariable(name: "string", arg: 1, scope: !3366, file: !3138, line: 119, type: !30)
!3369 = !DILocation(line: 119, column: 22, scope: !3366)
!3370 = !DILocation(line: 121, column: 27, scope: !3366)
!3371 = !DILocation(line: 121, column: 43, scope: !3366)
!3372 = !DILocation(line: 111, column: 22, scope: !3346, inlinedAt: !3373)
!3373 = distinct !DILocation(line: 121, column: 10, scope: !3366)
!3374 = !DILocation(line: 111, column: 32, scope: !3346, inlinedAt: !3373)
!3375 = !DILocation(line: 39, column: 17, scope: !3137, inlinedAt: !3376)
!3376 = distinct !DILocation(line: 113, column: 18, scope: !3346, inlinedAt: !3373)
!3377 = !DILocation(line: 41, column: 13, scope: !3137, inlinedAt: !3376)
!3378 = !DILocation(line: 41, column: 9, scope: !3137, inlinedAt: !3376)
!3379 = !DILocation(line: 42, column: 8, scope: !3148, inlinedAt: !3376)
!3380 = !DILocation(line: 42, column: 15, scope: !3148, inlinedAt: !3376)
!3381 = !DILocation(line: 42, column: 10, scope: !3148, inlinedAt: !3376)
!3382 = !DILocation(line: 43, column: 5, scope: !3148, inlinedAt: !3376)
!3383 = !DILocation(line: 113, column: 10, scope: !3346, inlinedAt: !3373)
!3384 = !DILocation(line: 121, column: 3, scope: !3366)
!3385 = distinct !DISubprogram(name: "xalloc_die", scope: !3386, file: !3386, line: 32, type: !981, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !218, retainedNodes: !65)
!3386 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3387 = !DILocation(line: 34, column: 10, scope: !3385)
!3388 = !DILocation(line: 34, column: 33, scope: !3385)
!3389 = !DILocation(line: 34, column: 3, scope: !3385)
!3390 = !DILocation(line: 40, column: 3, scope: !3385)
!3391 = distinct !DISubprogram(name: "rpl_calloc", scope: !3392, file: !3392, line: 42, type: !3124, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !220, retainedNodes: !3393)
!3392 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3393 = !{!3394, !3395, !3396, !3397}
!3394 = !DILocalVariable(name: "n", arg: 1, scope: !3391, file: !3392, line: 42, type: !133)
!3395 = !DILocalVariable(name: "s", arg: 2, scope: !3391, file: !3392, line: 42, type: !133)
!3396 = !DILocalVariable(name: "result", scope: !3391, file: !3392, line: 44, type: !33)
!3397 = !DILocalVariable(name: "bytes", scope: !3398, file: !3392, line: 56, type: !133)
!3398 = distinct !DILexicalBlock(scope: !3399, file: !3392, line: 53, column: 5)
!3399 = distinct !DILexicalBlock(scope: !3391, file: !3392, line: 47, column: 7)
!3400 = !DILocation(line: 42, column: 20, scope: !3391)
!3401 = !DILocation(line: 42, column: 30, scope: !3391)
!3402 = !DILocation(line: 47, column: 9, scope: !3399)
!3403 = !DILocation(line: 47, column: 19, scope: !3399)
!3404 = !DILocation(line: 47, column: 14, scope: !3399)
!3405 = !DILocation(line: 56, column: 24, scope: !3398)
!3406 = !DILocation(line: 56, column: 14, scope: !3398)
!3407 = !DILocation(line: 57, column: 17, scope: !3408)
!3408 = distinct !DILexicalBlock(scope: !3398, file: !3392, line: 57, column: 11)
!3409 = !DILocation(line: 57, column: 21, scope: !3408)
!3410 = !DILocation(line: 57, column: 11, scope: !3398)
!3411 = !DILocation(line: 59, column: 11, scope: !3412)
!3412 = distinct !DILexicalBlock(scope: !3408, file: !3392, line: 58, column: 9)
!3413 = !DILocation(line: 59, column: 17, scope: !3412)
!3414 = !DILocation(line: 65, column: 12, scope: !3391)
!3415 = !DILocation(line: 44, column: 9, scope: !3391)
!3416 = !DILocation(line: 72, column: 3, scope: !3391)
!3417 = !DILocation(line: 0, scope: !3412)
!3418 = !DILocation(line: 73, column: 1, scope: !3391)
!3419 = distinct !DISubprogram(name: "rpl_fclose", scope: !3420, file: !3420, line: 58, type: !3421, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !222, retainedNodes: !3457)
!3420 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3421 = !DISubroutineType(types: !3422)
!3422 = !{!54, !3423}
!3423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3424, size: 64)
!3424 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !780, line: 7, baseType: !3425)
!3425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !782, line: 49, size: 1728, elements: !3426)
!3426 = !{!3427, !3428, !3429, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3442, !3443, !3444, !3445, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456}
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3425, file: !782, line: 51, baseType: !54, size: 32)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3425, file: !782, line: 54, baseType: !103, size: 64, offset: 64)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3425, file: !782, line: 55, baseType: !103, size: 64, offset: 128)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3425, file: !782, line: 56, baseType: !103, size: 64, offset: 192)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3425, file: !782, line: 57, baseType: !103, size: 64, offset: 256)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3425, file: !782, line: 58, baseType: !103, size: 64, offset: 320)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3425, file: !782, line: 59, baseType: !103, size: 64, offset: 384)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3425, file: !782, line: 60, baseType: !103, size: 64, offset: 448)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3425, file: !782, line: 61, baseType: !103, size: 64, offset: 512)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3425, file: !782, line: 64, baseType: !103, size: 64, offset: 576)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3425, file: !782, line: 65, baseType: !103, size: 64, offset: 640)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3425, file: !782, line: 66, baseType: !103, size: 64, offset: 704)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3425, file: !782, line: 68, baseType: !797, size: 64, offset: 768)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3425, file: !782, line: 70, baseType: !3441, size: 64, offset: 832)
!3441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3425, size: 64)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3425, file: !782, line: 72, baseType: !54, size: 32, offset: 896)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3425, file: !782, line: 73, baseType: !54, size: 32, offset: 928)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3425, file: !782, line: 74, baseType: !804, size: 64, offset: 960)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3425, file: !782, line: 77, baseType: !132, size: 16, offset: 1024)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3425, file: !782, line: 78, baseType: !808, size: 8, offset: 1040)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3425, file: !782, line: 79, baseType: !810, size: 8, offset: 1048)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3425, file: !782, line: 81, baseType: !812, size: 64, offset: 1088)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3425, file: !782, line: 89, baseType: !815, size: 64, offset: 1152)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3425, file: !782, line: 91, baseType: !817, size: 64, offset: 1216)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3425, file: !782, line: 92, baseType: !820, size: 64, offset: 1280)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3425, file: !782, line: 93, baseType: !3441, size: 64, offset: 1344)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3425, file: !782, line: 94, baseType: !33, size: 64, offset: 1408)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3425, file: !782, line: 95, baseType: !133, size: 64, offset: 1472)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3425, file: !782, line: 96, baseType: !54, size: 32, offset: 1536)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3425, file: !782, line: 98, baseType: !827, size: 160, offset: 1568)
!3457 = !{!3458, !3459, !3460, !3461}
!3458 = !DILocalVariable(name: "fp", arg: 1, scope: !3419, file: !3420, line: 58, type: !3423)
!3459 = !DILocalVariable(name: "saved_errno", scope: !3419, file: !3420, line: 60, type: !54)
!3460 = !DILocalVariable(name: "fd", scope: !3419, file: !3420, line: 61, type: !54)
!3461 = !DILocalVariable(name: "result", scope: !3419, file: !3420, line: 62, type: !54)
!3462 = !DILocation(line: 58, column: 19, scope: !3419)
!3463 = !DILocation(line: 60, column: 7, scope: !3419)
!3464 = !DILocation(line: 62, column: 7, scope: !3419)
!3465 = !DILocation(line: 65, column: 8, scope: !3419)
!3466 = !DILocation(line: 61, column: 7, scope: !3419)
!3467 = !DILocation(line: 66, column: 10, scope: !3468)
!3468 = distinct !DILexicalBlock(scope: !3419, file: !3420, line: 66, column: 7)
!3469 = !DILocation(line: 66, column: 7, scope: !3419)
!3470 = !DILocation(line: 67, column: 12, scope: !3468)
!3471 = !DILocation(line: 67, column: 5, scope: !3468)
!3472 = !DILocation(line: 72, column: 9, scope: !3473)
!3473 = distinct !DILexicalBlock(scope: !3419, file: !3420, line: 72, column: 7)
!3474 = !DILocation(line: 72, column: 23, scope: !3473)
!3475 = !DILocation(line: 72, column: 33, scope: !3473)
!3476 = !DILocation(line: 72, column: 26, scope: !3473)
!3477 = !DILocation(line: 72, column: 59, scope: !3473)
!3478 = !DILocation(line: 73, column: 7, scope: !3473)
!3479 = !DILocation(line: 73, column: 10, scope: !3473)
!3480 = !DILocation(line: 72, column: 7, scope: !3419)
!3481 = !DILocation(line: 100, column: 12, scope: !3419)
!3482 = !DILocation(line: 105, column: 7, scope: !3419)
!3483 = !DILocation(line: 74, column: 19, scope: !3473)
!3484 = !DILocation(line: 105, column: 19, scope: !3485)
!3485 = distinct !DILexicalBlock(scope: !3419, file: !3420, line: 105, column: 7)
!3486 = !DILocation(line: 107, column: 13, scope: !3487)
!3487 = distinct !DILexicalBlock(scope: !3485, file: !3420, line: 106, column: 5)
!3488 = !DILocation(line: 109, column: 5, scope: !3487)
!3489 = !DILocation(line: 0, scope: !3419)
!3490 = !DILocation(line: 112, column: 1, scope: !3419)
!3491 = distinct !DISubprogram(name: "rpl_fflush", scope: !3492, file: !3492, line: 129, type: !3493, isLocal: false, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, unit: !224, retainedNodes: !3529)
!3492 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3493 = !DISubroutineType(types: !3494)
!3494 = !{!54, !3495}
!3495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3496, size: 64)
!3496 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !780, line: 7, baseType: !3497)
!3497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !782, line: 49, size: 1728, elements: !3498)
!3498 = !{!3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524, !3525, !3526, !3527, !3528}
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3497, file: !782, line: 51, baseType: !54, size: 32)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3497, file: !782, line: 54, baseType: !103, size: 64, offset: 64)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3497, file: !782, line: 55, baseType: !103, size: 64, offset: 128)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3497, file: !782, line: 56, baseType: !103, size: 64, offset: 192)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3497, file: !782, line: 57, baseType: !103, size: 64, offset: 256)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3497, file: !782, line: 58, baseType: !103, size: 64, offset: 320)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3497, file: !782, line: 59, baseType: !103, size: 64, offset: 384)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3497, file: !782, line: 60, baseType: !103, size: 64, offset: 448)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3497, file: !782, line: 61, baseType: !103, size: 64, offset: 512)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3497, file: !782, line: 64, baseType: !103, size: 64, offset: 576)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3497, file: !782, line: 65, baseType: !103, size: 64, offset: 640)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3497, file: !782, line: 66, baseType: !103, size: 64, offset: 704)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3497, file: !782, line: 68, baseType: !797, size: 64, offset: 768)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3497, file: !782, line: 70, baseType: !3513, size: 64, offset: 832)
!3513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3497, size: 64)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3497, file: !782, line: 72, baseType: !54, size: 32, offset: 896)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3497, file: !782, line: 73, baseType: !54, size: 32, offset: 928)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3497, file: !782, line: 74, baseType: !804, size: 64, offset: 960)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3497, file: !782, line: 77, baseType: !132, size: 16, offset: 1024)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3497, file: !782, line: 78, baseType: !808, size: 8, offset: 1040)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3497, file: !782, line: 79, baseType: !810, size: 8, offset: 1048)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3497, file: !782, line: 81, baseType: !812, size: 64, offset: 1088)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3497, file: !782, line: 89, baseType: !815, size: 64, offset: 1152)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3497, file: !782, line: 91, baseType: !817, size: 64, offset: 1216)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3497, file: !782, line: 92, baseType: !820, size: 64, offset: 1280)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3497, file: !782, line: 93, baseType: !3513, size: 64, offset: 1344)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3497, file: !782, line: 94, baseType: !33, size: 64, offset: 1408)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3497, file: !782, line: 95, baseType: !133, size: 64, offset: 1472)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3497, file: !782, line: 96, baseType: !54, size: 32, offset: 1536)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3497, file: !782, line: 98, baseType: !827, size: 160, offset: 1568)
!3529 = !{!3530}
!3530 = !DILocalVariable(name: "stream", arg: 1, scope: !3491, file: !3492, line: 129, type: !3495)
!3531 = !DILocation(line: 129, column: 19, scope: !3491)
!3532 = !DILocation(line: 150, column: 14, scope: !3533)
!3533 = distinct !DILexicalBlock(scope: !3491, file: !3492, line: 150, column: 7)
!3534 = !DILocation(line: 150, column: 22, scope: !3533)
!3535 = !DILocation(line: 150, column: 27, scope: !3533)
!3536 = !DILocation(line: 150, column: 7, scope: !3491)
!3537 = !DILocation(line: 151, column: 12, scope: !3533)
!3538 = !DILocation(line: 151, column: 5, scope: !3533)
!3539 = !DILocalVariable(name: "fp", arg: 1, scope: !3540, file: !3492, line: 41, type: !3495)
!3540 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !3492, file: !3492, line: 41, type: !3541, isLocal: true, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !224, retainedNodes: !3543)
!3541 = !DISubroutineType(types: !3542)
!3542 = !{null, !3495}
!3543 = !{!3539}
!3544 = !DILocation(line: 41, column: 48, scope: !3540, inlinedAt: !3545)
!3545 = distinct !DILocation(line: 156, column: 3, scope: !3491)
!3546 = !DILocation(line: 43, column: 11, scope: !3547, inlinedAt: !3545)
!3547 = distinct !DILexicalBlock(scope: !3540, file: !3492, line: 43, column: 7)
!3548 = !DILocation(line: 43, column: 18, scope: !3547, inlinedAt: !3545)
!3549 = !DILocation(line: 43, column: 7, scope: !3540, inlinedAt: !3545)
!3550 = !DILocation(line: 45, column: 5, scope: !3547, inlinedAt: !3545)
!3551 = !DILocation(line: 158, column: 10, scope: !3491)
!3552 = !DILocation(line: 158, column: 3, scope: !3491)
!3553 = !DILocation(line: 0, scope: !3491)
!3554 = !DILocation(line: 232, column: 1, scope: !3491)
!3555 = distinct !DISubprogram(name: "rpl_fseeko", scope: !3556, file: !3556, line: 28, type: !3557, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !226, retainedNodes: !3593)
!3556 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3557 = !DISubroutineType(types: !3558)
!3558 = !{!54, !3559, !1020, !54}
!3559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3560, size: 64)
!3560 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !780, line: 7, baseType: !3561)
!3561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !782, line: 49, size: 1728, elements: !3562)
!3562 = !{!3563, !3564, !3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3578, !3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592}
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3561, file: !782, line: 51, baseType: !54, size: 32)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3561, file: !782, line: 54, baseType: !103, size: 64, offset: 64)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3561, file: !782, line: 55, baseType: !103, size: 64, offset: 128)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3561, file: !782, line: 56, baseType: !103, size: 64, offset: 192)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3561, file: !782, line: 57, baseType: !103, size: 64, offset: 256)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3561, file: !782, line: 58, baseType: !103, size: 64, offset: 320)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3561, file: !782, line: 59, baseType: !103, size: 64, offset: 384)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3561, file: !782, line: 60, baseType: !103, size: 64, offset: 448)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3561, file: !782, line: 61, baseType: !103, size: 64, offset: 512)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3561, file: !782, line: 64, baseType: !103, size: 64, offset: 576)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3561, file: !782, line: 65, baseType: !103, size: 64, offset: 640)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3561, file: !782, line: 66, baseType: !103, size: 64, offset: 704)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3561, file: !782, line: 68, baseType: !797, size: 64, offset: 768)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3561, file: !782, line: 70, baseType: !3577, size: 64, offset: 832)
!3577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3561, size: 64)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3561, file: !782, line: 72, baseType: !54, size: 32, offset: 896)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3561, file: !782, line: 73, baseType: !54, size: 32, offset: 928)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3561, file: !782, line: 74, baseType: !804, size: 64, offset: 960)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3561, file: !782, line: 77, baseType: !132, size: 16, offset: 1024)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3561, file: !782, line: 78, baseType: !808, size: 8, offset: 1040)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3561, file: !782, line: 79, baseType: !810, size: 8, offset: 1048)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3561, file: !782, line: 81, baseType: !812, size: 64, offset: 1088)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3561, file: !782, line: 89, baseType: !815, size: 64, offset: 1152)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3561, file: !782, line: 91, baseType: !817, size: 64, offset: 1216)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3561, file: !782, line: 92, baseType: !820, size: 64, offset: 1280)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3561, file: !782, line: 93, baseType: !3577, size: 64, offset: 1344)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3561, file: !782, line: 94, baseType: !33, size: 64, offset: 1408)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3561, file: !782, line: 95, baseType: !133, size: 64, offset: 1472)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3561, file: !782, line: 96, baseType: !54, size: 32, offset: 1536)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3561, file: !782, line: 98, baseType: !827, size: 160, offset: 1568)
!3593 = !{!3594, !3595, !3596, !3597}
!3594 = !DILocalVariable(name: "fp", arg: 1, scope: !3555, file: !3556, line: 28, type: !3559)
!3595 = !DILocalVariable(name: "offset", arg: 2, scope: !3555, file: !3556, line: 28, type: !1020)
!3596 = !DILocalVariable(name: "whence", arg: 3, scope: !3555, file: !3556, line: 28, type: !54)
!3597 = !DILocalVariable(name: "pos", scope: !3598, file: !3556, line: 117, type: !1020)
!3598 = distinct !DILexicalBlock(scope: !3599, file: !3556, line: 113, column: 5)
!3599 = distinct !DILexicalBlock(scope: !3555, file: !3556, line: 52, column: 7)
!3600 = !DILocation(line: 28, column: 15, scope: !3555)
!3601 = !DILocation(line: 28, column: 25, scope: !3555)
!3602 = !DILocation(line: 28, column: 37, scope: !3555)
!3603 = !DILocation(line: 52, column: 11, scope: !3599)
!3604 = !{!880, !664, i64 16}
!3605 = !DILocation(line: 52, column: 31, scope: !3599)
!3606 = !{!880, !664, i64 8}
!3607 = !DILocation(line: 52, column: 24, scope: !3599)
!3608 = !DILocation(line: 53, column: 7, scope: !3599)
!3609 = !DILocation(line: 53, column: 14, scope: !3599)
!3610 = !{!880, !664, i64 40}
!3611 = !DILocation(line: 53, column: 35, scope: !3599)
!3612 = !{!880, !664, i64 32}
!3613 = !DILocation(line: 53, column: 28, scope: !3599)
!3614 = !DILocation(line: 54, column: 7, scope: !3599)
!3615 = !DILocation(line: 54, column: 14, scope: !3599)
!3616 = !{!880, !664, i64 72}
!3617 = !DILocation(line: 54, column: 28, scope: !3599)
!3618 = !DILocation(line: 52, column: 7, scope: !3555)
!3619 = !DILocation(line: 117, column: 26, scope: !3598)
!3620 = !DILocation(line: 117, column: 19, scope: !3598)
!3621 = !DILocation(line: 117, column: 13, scope: !3598)
!3622 = !DILocation(line: 118, column: 15, scope: !3623)
!3623 = distinct !DILexicalBlock(scope: !3598, file: !3556, line: 118, column: 11)
!3624 = !DILocation(line: 118, column: 11, scope: !3598)
!3625 = !DILocation(line: 129, column: 11, scope: !3598)
!3626 = !DILocation(line: 129, column: 18, scope: !3598)
!3627 = !DILocation(line: 130, column: 11, scope: !3598)
!3628 = !DILocation(line: 130, column: 19, scope: !3598)
!3629 = !{!880, !881, i64 144}
!3630 = !DILocation(line: 161, column: 7, scope: !3598)
!3631 = !DILocation(line: 163, column: 10, scope: !3555)
!3632 = !DILocation(line: 163, column: 3, scope: !3555)
!3633 = !DILocation(line: 0, scope: !3555)
!3634 = !DILocation(line: 164, column: 1, scope: !3555)
!3635 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !3636, file: !3636, line: 385, type: !3637, isLocal: false, isDefinition: true, scopeLine: 386, flags: DIFlagPrototyped, isOptimized: true, unit: !228, retainedNodes: !3651)
!3636 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3637 = !DISubroutineType(types: !3638)
!3638 = !{!133, !3639, !30, !133, !3640}
!3639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!3640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3641, size: 64)
!3641 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1399, line: 6, baseType: !3642)
!3642 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1401, line: 21, baseType: !3643)
!3643 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1401, line: 13, size: 64, elements: !3644)
!3644 = !{!3645, !3646}
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3643, file: !1401, line: 15, baseType: !54, size: 32)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3643, file: !1401, line: 20, baseType: !3647, size: 32, offset: 32)
!3647 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3643, file: !1401, line: 16, size: 32, elements: !3648)
!3648 = !{!3649, !3650}
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3647, file: !1401, line: 18, baseType: !7, size: 32)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3647, file: !1401, line: 19, baseType: !1410, size: 32)
!3651 = !{!3652, !3653, !3654, !3655, !3656, !3657, !3658}
!3652 = !DILocalVariable(name: "pwc", arg: 1, scope: !3635, file: !3636, line: 385, type: !3639)
!3653 = !DILocalVariable(name: "s", arg: 2, scope: !3635, file: !3636, line: 385, type: !30)
!3654 = !DILocalVariable(name: "n", arg: 3, scope: !3635, file: !3636, line: 385, type: !133)
!3655 = !DILocalVariable(name: "ps", arg: 4, scope: !3635, file: !3636, line: 385, type: !3640)
!3656 = !DILocalVariable(name: "ret", scope: !3635, file: !3636, line: 387, type: !133)
!3657 = !DILocalVariable(name: "wc", scope: !3635, file: !3636, line: 388, type: !1415)
!3658 = !DILocalVariable(name: "uc", scope: !3659, file: !3636, line: 449, type: !771)
!3659 = distinct !DILexicalBlock(scope: !3660, file: !3636, line: 448, column: 5)
!3660 = distinct !DILexicalBlock(scope: !3635, file: !3636, line: 447, column: 7)
!3661 = !DILocation(line: 385, column: 23, scope: !3635)
!3662 = !DILocation(line: 385, column: 40, scope: !3635)
!3663 = !DILocation(line: 385, column: 50, scope: !3635)
!3664 = !DILocation(line: 385, column: 64, scope: !3635)
!3665 = !DILocation(line: 388, column: 3, scope: !3635)
!3666 = !DILocation(line: 404, column: 9, scope: !3667)
!3667 = distinct !DILexicalBlock(scope: !3635, file: !3636, line: 404, column: 7)
!3668 = !DILocation(line: 404, column: 7, scope: !3635)
!3669 = !DILocation(line: 439, column: 9, scope: !3635)
!3670 = !DILocation(line: 387, column: 10, scope: !3635)
!3671 = !DILocation(line: 447, column: 19, scope: !3660)
!3672 = !DILocation(line: 447, column: 31, scope: !3660)
!3673 = !DILocation(line: 447, column: 26, scope: !3660)
!3674 = !DILocation(line: 447, column: 41, scope: !3660)
!3675 = !DILocation(line: 447, column: 7, scope: !3635)
!3676 = !DILocation(line: 449, column: 26, scope: !3659)
!3677 = !DILocation(line: 449, column: 21, scope: !3659)
!3678 = !DILocation(line: 450, column: 14, scope: !3659)
!3679 = !DILocation(line: 450, column: 12, scope: !3659)
!3680 = !DILocation(line: 0, scope: !3659)
!3681 = !DILocation(line: 456, column: 1, scope: !3635)
!3682 = distinct !DISubprogram(name: "close_stream", scope: !3683, file: !3683, line: 56, type: !3684, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !231, retainedNodes: !3720)
!3683 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3684 = !DISubroutineType(types: !3685)
!3685 = !{!54, !3686}
!3686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3687, size: 64)
!3687 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !780, line: 7, baseType: !3688)
!3688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !782, line: 49, size: 1728, elements: !3689)
!3689 = !{!3690, !3691, !3692, !3693, !3694, !3695, !3696, !3697, !3698, !3699, !3700, !3701, !3702, !3703, !3705, !3706, !3707, !3708, !3709, !3710, !3711, !3712, !3713, !3714, !3715, !3716, !3717, !3718, !3719}
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3688, file: !782, line: 51, baseType: !54, size: 32)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3688, file: !782, line: 54, baseType: !103, size: 64, offset: 64)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3688, file: !782, line: 55, baseType: !103, size: 64, offset: 128)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3688, file: !782, line: 56, baseType: !103, size: 64, offset: 192)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3688, file: !782, line: 57, baseType: !103, size: 64, offset: 256)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3688, file: !782, line: 58, baseType: !103, size: 64, offset: 320)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3688, file: !782, line: 59, baseType: !103, size: 64, offset: 384)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3688, file: !782, line: 60, baseType: !103, size: 64, offset: 448)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3688, file: !782, line: 61, baseType: !103, size: 64, offset: 512)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3688, file: !782, line: 64, baseType: !103, size: 64, offset: 576)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3688, file: !782, line: 65, baseType: !103, size: 64, offset: 640)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3688, file: !782, line: 66, baseType: !103, size: 64, offset: 704)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3688, file: !782, line: 68, baseType: !797, size: 64, offset: 768)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3688, file: !782, line: 70, baseType: !3704, size: 64, offset: 832)
!3704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3688, size: 64)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3688, file: !782, line: 72, baseType: !54, size: 32, offset: 896)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3688, file: !782, line: 73, baseType: !54, size: 32, offset: 928)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3688, file: !782, line: 74, baseType: !804, size: 64, offset: 960)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3688, file: !782, line: 77, baseType: !132, size: 16, offset: 1024)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3688, file: !782, line: 78, baseType: !808, size: 8, offset: 1040)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3688, file: !782, line: 79, baseType: !810, size: 8, offset: 1048)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3688, file: !782, line: 81, baseType: !812, size: 64, offset: 1088)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3688, file: !782, line: 89, baseType: !815, size: 64, offset: 1152)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3688, file: !782, line: 91, baseType: !817, size: 64, offset: 1216)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3688, file: !782, line: 92, baseType: !820, size: 64, offset: 1280)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3688, file: !782, line: 93, baseType: !3704, size: 64, offset: 1344)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3688, file: !782, line: 94, baseType: !33, size: 64, offset: 1408)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3688, file: !782, line: 95, baseType: !133, size: 64, offset: 1472)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3688, file: !782, line: 96, baseType: !54, size: 32, offset: 1536)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3688, file: !782, line: 98, baseType: !827, size: 160, offset: 1568)
!3720 = !{!3721, !3722, !3724, !3725}
!3721 = !DILocalVariable(name: "stream", arg: 1, scope: !3682, file: !3683, line: 56, type: !3686)
!3722 = !DILocalVariable(name: "some_pending", scope: !3682, file: !3683, line: 58, type: !3723)
!3723 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!3724 = !DILocalVariable(name: "prev_fail", scope: !3682, file: !3683, line: 59, type: !3723)
!3725 = !DILocalVariable(name: "fclose_fail", scope: !3682, file: !3683, line: 60, type: !3723)
!3726 = !DILocation(line: 56, column: 21, scope: !3682)
!3727 = !DILocation(line: 58, column: 30, scope: !3682)
!3728 = !DILocalVariable(name: "__stream", arg: 1, scope: !3729, file: !872, line: 135, type: !3686)
!3729 = distinct !DISubprogram(name: "ferror_unlocked", scope: !872, file: !872, line: 135, type: !3684, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !231, retainedNodes: !3730)
!3730 = !{!3728}
!3731 = !DILocation(line: 135, column: 1, scope: !3729, inlinedAt: !3732)
!3732 = distinct !DILocation(line: 59, column: 27, scope: !3682)
!3733 = !DILocation(line: 137, column: 10, scope: !3729, inlinedAt: !3732)
!3734 = !DILocation(line: 59, column: 43, scope: !3682)
!3735 = !DILocation(line: 60, column: 29, scope: !3682)
!3736 = !DILocation(line: 60, column: 45, scope: !3682)
!3737 = !DILocation(line: 70, column: 17, scope: !3738)
!3738 = distinct !DILexicalBlock(scope: !3682, file: !3683, line: 70, column: 7)
!3739 = !DILocation(line: 58, column: 50, scope: !3682)
!3740 = !DILocation(line: 70, column: 33, scope: !3738)
!3741 = !DILocation(line: 70, column: 53, scope: !3738)
!3742 = !DILocation(line: 70, column: 59, scope: !3738)
!3743 = !DILocation(line: 70, column: 7, scope: !3682)
!3744 = !DILocation(line: 72, column: 11, scope: !3745)
!3745 = distinct !DILexicalBlock(scope: !3738, file: !3683, line: 71, column: 5)
!3746 = !DILocation(line: 73, column: 9, scope: !3747)
!3747 = distinct !DILexicalBlock(scope: !3745, file: !3683, line: 72, column: 11)
!3748 = !DILocation(line: 73, column: 15, scope: !3747)
!3749 = !DILocation(line: 0, scope: !3682)
!3750 = !DILocation(line: 78, column: 1, scope: !3682)
!3751 = distinct !DISubprogram(name: "hard_locale", scope: !3752, file: !3752, line: 38, type: !3753, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !233, retainedNodes: !3755)
!3752 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3753 = !DISubroutineType(types: !3754)
!3754 = !{!37, !54}
!3755 = !{!3756, !3757, !3758}
!3756 = !DILocalVariable(name: "category", arg: 1, scope: !3751, file: !3752, line: 38, type: !54)
!3757 = !DILocalVariable(name: "hard", scope: !3751, file: !3752, line: 40, type: !37)
!3758 = !DILocalVariable(name: "p", scope: !3751, file: !3752, line: 41, type: !30)
!3759 = !DILocation(line: 38, column: 18, scope: !3751)
!3760 = !DILocation(line: 40, column: 8, scope: !3751)
!3761 = !DILocation(line: 41, column: 19, scope: !3751)
!3762 = !DILocation(line: 41, column: 15, scope: !3751)
!3763 = !DILocation(line: 43, column: 7, scope: !3764)
!3764 = distinct !DILexicalBlock(scope: !3751, file: !3752, line: 43, column: 7)
!3765 = !DILocation(line: 43, column: 7, scope: !3751)
!3766 = !DILocation(line: 47, column: 15, scope: !3767)
!3767 = distinct !DILexicalBlock(scope: !3768, file: !3752, line: 47, column: 15)
!3768 = distinct !DILexicalBlock(scope: !3769, file: !3752, line: 46, column: 9)
!3769 = distinct !DILexicalBlock(scope: !3770, file: !3752, line: 45, column: 11)
!3770 = distinct !DILexicalBlock(scope: !3764, file: !3752, line: 44, column: 5)
!3771 = !DILocation(line: 47, column: 31, scope: !3767)
!3772 = !DILocation(line: 47, column: 36, scope: !3767)
!3773 = !DILocation(line: 47, column: 39, scope: !3767)
!3774 = !DILocation(line: 47, column: 59, scope: !3767)
!3775 = !DILocation(line: 47, column: 15, scope: !3768)
!3776 = !DILocation(line: 48, column: 13, scope: !3767)
!3777 = !DILocation(line: 71, column: 3, scope: !3751)
!3778 = distinct !DISubprogram(name: "locale_charset", scope: !3779, file: !3779, line: 687, type: !3780, isLocal: false, isDefinition: true, scopeLine: 688, flags: DIFlagPrototyped, isOptimized: true, unit: !235, retainedNodes: !3782)
!3779 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3780 = !DISubroutineType(types: !3781)
!3781 = !{!30}
!3782 = !{!3783}
!3783 = !DILocalVariable(name: "codeset", scope: !3778, file: !3779, line: 689, type: !30)
!3784 = !DILocation(line: 696, column: 13, scope: !3778)
!3785 = !DILocation(line: 689, column: 15, scope: !3778)
!3786 = !DILocation(line: 754, column: 15, scope: !3787)
!3787 = distinct !DILexicalBlock(scope: !3778, file: !3779, line: 754, column: 7)
!3788 = !DILocation(line: 754, column: 7, scope: !3778)
!3789 = !DILocation(line: 907, column: 13, scope: !3790)
!3790 = distinct !DILexicalBlock(scope: !3791, file: !3779, line: 907, column: 13)
!3791 = distinct !DILexicalBlock(scope: !3792, file: !3779, line: 897, column: 7)
!3792 = distinct !DILexicalBlock(scope: !3778, file: !3779, line: 856, column: 3)
!3793 = !DILocation(line: 907, column: 24, scope: !3790)
!3794 = !DILocation(line: 907, column: 13, scope: !3791)
!3795 = !DILocation(line: 995, column: 3, scope: !3778)
